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
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C009
import Seq.B001.C010
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
import Seq.B003.C004
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C000
import Seq.B006.C001
import Seq.B006.C002
import Seq.B007.C000
import Seq.B007.C001
import Seq.B008.C000
import Seq.B008.C001
import Seq.B009.C000
import Seq.B010.C000
import Seq.B011.C000
import Seq.B012.C000
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
import Seq.Opaque.C020
import Seq.Opaque.C021
import Seq.Opaque.C022
import Seq.Opaque.C023
import Seq.Opaque.C024
import Seq.Opaque.C025
import Seq.Opaque.C026

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A104100: Expansion of g.f. x*(-20-37*x+3*x^2)/(-1+x+19*x^2+10*x^3+x^4).

The programs for A104100, the canonical program `A104100.P15958136123832929585` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A104100 has offset 0).

The definition of A104100 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A104100.P15958136123832929585

`a(n-1)+19*a(n-2)+10*a(n-3)+a(n-4)` with `a(0)=0, a(1)=20, a(2)=57, a(3)=434`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A104100

/-- `a(n-1)+19*a(n-2)+10*a(n-3)+a(n-4)` -/
def P15958136123832929585.Spec : Prop :=
  ∀ n, (P15958136123832929585.a n : ℤ) = A104100 n

theorem P15958136123832929585.correct : P15958136123832929585.Spec := by
  intro n
  simp only [A104100]

end A104100

/-!
# A104103: a(n) = ceiling(sqrt(prime(n))).

The programs for A104103, the canonical program `A104103.P17142170085833821437` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A104103 has offset 1).

The definition of A104103 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A104103.P17142170085833821437

`A000196(A000040(n+1))+1`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A104103

/-- `A000196(A000040(n+1))+1` -/
def P17142170085833821437.Spec : Prop :=
  ∀ n, P17142170085833821437.a n = A104103 (n + 1)

theorem P17142170085833821437.correct : P17142170085833821437.Spec := by
  intro n
  simp only [A104103, Nat.add_sub_cancel]

end A104103

/-! ## A104103.P12047919695912771477

`sqrt(A145445(n+1))`
-/

namespace A104103.P12047919695912771477
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A145445 (n + 1) : ℝ)

end

end A104103.P12047919695912771477

namespace A104103

/-- `sqrt(A145445(n+1))` -/
def P12047919695912771477.Spec : Prop :=
  ∀ n, P12047919695912771477.a n = (A104103 (n + 1) : ℝ)

end A104103

/-! ## A104103.P17437347026863937596

`ceil(sqrt(Δ[A007504(n)]))`
-/

namespace A104103.P17437347026863937596
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (f1 (n + 1) - f1 n : ℝ)⌉

end

end A104103.P17437347026863937596

namespace A104103

/-- `ceil(sqrt(Δ[A007504(n)]))` -/
def P17437347026863937596.Spec : Prop :=
  ∀ n, P17437347026863937596.a n = A104103 (n + 1)

end A104103

/-! ## A104103.P15576721638601626415

`A000006(n+1)+1`
-/

namespace A104103.P15576721638601626415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000006 (n + 1) + 1

end

end A104103.P15576721638601626415

namespace A104103

/-- `A000006(n+1)+1` -/
def P15576721638601626415.Spec : Prop :=
  ∀ n, P15576721638601626415.a n = A104103 (n + 1)

end A104103

/-! ## A104103.P2736269158166376619

`1-A103416(n)+n`
-/

namespace A104103.P2736269158166376619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A103416 n + (n : ℤ)

end

end A104103.P2736269158166376619

namespace A104103

/-- `1-A103416(n)+n` -/
def P2736269158166376619.Spec : Prop :=
  ∀ n, P2736269158166376619.a n = A104103 (n + 1)

end A104103

/-! ## A104103.P10944321425738926373

`A161188(n+1)-n`
-/

namespace A104103.P10944321425738926373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161188 (n + 1) - (n : ℤ)

end

end A104103.P10944321425738926373

namespace A104103

/-- `A161188(n+1)-n` -/
def P10944321425738926373.Spec : Prop :=
  ∀ n, P10944321425738926373.a n = A104103 (n + 1)

end A104103

/-! ## A104103.P4520702854979739994

`floor(sqrt(A145826(n+1)))`
-/

namespace A104103.P4520702854979739994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A145826 (n + 1))

end

end A104103.P4520702854979739994

namespace A104103

/-- `floor(sqrt(A145826(n+1)))` -/
def P4520702854979739994.Spec : Prop :=
  ∀ n, P4520702854979739994.a n = A104103 (n + 1)

end A104103

/-! ## A104103.P4464764543737538166

`ceil(sqrt(A000040(n+1)))`
-/

namespace A104103.P4464764543737538166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (A000040 (n + 1) : ℝ)⌉

end

end A104103.P4464764543737538166

namespace A104103

/-- `ceil(sqrt(A000040(n+1)))` -/
def P4464764543737538166.Spec : Prop :=
  ∀ n, P4464764543737538166.a n = A104103 (n + 1)

end A104103

/-! ## A104103.P8034375002666453099

`ceil(sqrt(A008864(n+1)))`
-/

namespace A104103.P8034375002666453099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (A008864 (n + 1) : ℝ)⌉

end

end A104103.P8034375002666453099

namespace A104103

/-- `ceil(sqrt(A008864(n+1)))` -/
def P8034375002666453099.Spec : Prop :=
  ∀ n, P8034375002666453099.a n = A104103 (n + 1)

end A104103

/-! ## A104103.P15691220034958546816

`ceil(sqrt(A028815(n+1)))`
-/

namespace A104103.P15691220034958546816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (A028815 (n + 1) : ℝ)⌉

end

end A104103.P15691220034958546816

namespace A104103

/-- `ceil(sqrt(A028815(n+1)))` -/
def P15691220034958546816.Spec : Prop :=
  ∀ n, P15691220034958546816.a n = A104103 (n + 1)

end A104103

/-! ## A104103.P15903350036502081486

`ceil(sqrt(A082542(n+1)))`
-/

namespace A104103.P15903350036502081486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (A082542 (n + 1) : ℝ)⌉

end

end A104103.P15903350036502081486

namespace A104103

/-- `ceil(sqrt(A082542(n+1)))` -/
def P15903350036502081486.Spec : Prop :=
  ∀ n, P15903350036502081486.a n = A104103 (n + 1)

end A104103

/-! ## A104103.P3063919353696803740

`ceil(sqrt(A175216(n+1)))`
-/

namespace A104103.P3063919353696803740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (A175216 (n + 1) : ℝ)⌉

end

end A104103.P3063919353696803740

namespace A104103

/-- `ceil(sqrt(A175216(n+1)))` -/
def P3063919353696803740.Spec : Prop :=
  ∀ n, P3063919353696803740.a n = A104103 (n + 1)

end A104103

/-! ## A104103.P4309831580056511190

`∑[char[A038107(n)]]+1`
-/

namespace A104103.P4309831580056511190
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038107 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A104103.P4309831580056511190

namespace A104103

/-- `∑[char[A038107(n)]]+1` -/
def P4309831580056511190.Spec : Prop :=
  ∀ n, (P4309831580056511190.a n : ℤ) = A104103 (n + 1)

end A104103

/-! ## A104103.P9170752228289828144

`sqrt(A065730(n+1))+1`
-/

namespace A104103.P9170752228289828144
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A065730 (n + 1) : ℝ) + 1

end

end A104103.P9170752228289828144

namespace A104103

/-- `sqrt(A065730(n+1))+1` -/
def P9170752228289828144.Spec : Prop :=
  ∀ n, P9170752228289828144.a n = (A104103 (n + 1) : ℝ)

end A104103

/-! ## A104103.P9196703133751790914

`ceil(sqrt(sqrt(A001248(n+1))))`
-/

namespace A104103.P9196703133751790914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (Real.sqrt (A001248 (n + 1) : ℝ))⌉

end

end A104103.P9196703133751790914

namespace A104103

/-- `ceil(sqrt(sqrt(A001248(n+1))))` -/
def P9196703133751790914.Spec : Prop :=
  ∀ n, P9196703133751790914.a n = A104103 (n + 1)

end A104103

/-! ## A104103.P16250017087338747318

`ceil(sqrt(sqrt(A036689(n+1))))`
-/

namespace A104103.P16250017087338747318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (Real.sqrt (A036689 (n + 1) : ℝ))⌉

end

end A104103.P16250017087338747318

namespace A104103

/-- `ceil(sqrt(sqrt(A036689(n+1))))` -/
def P16250017087338747318.Spec : Prop :=
  ∀ n, P16250017087338747318.a n = A104103 (n + 1)

end A104103

/-! ## A104103.P8058110395142684918

`ceil(sqrt(sqrt(A036690(n+1))))`
-/

namespace A104103.P8058110395142684918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (Real.sqrt (A036690 (n + 1) : ℝ))⌉

end

end A104103.P8058110395142684918

namespace A104103

/-- `ceil(sqrt(sqrt(A036690(n+1))))` -/
def P8058110395142684918.Spec : Prop :=
  ∀ n, P8058110395142684918.a n = A104103 (n + 1)

end A104103

/-! ## A104103.P8426601354884976450

`ceil(sqrt(sqrt(A049001(n+1))))`
-/

namespace A104103.P8426601354884976450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (Real.sqrt (A049001 (n + 1) : ℝ))⌉

end

end A104103.P8426601354884976450

namespace A104103

/-- `ceil(sqrt(sqrt(A049001(n+1))))` -/
def P8426601354884976450.Spec : Prop :=
  ∀ n, P8426601354884976450.a n = A104103 (n + 1)

end A104103

/-! ## A104103.P8923746066427591697

`ceil(sqrt(sqrt(A054270(n+1))))`
-/

namespace A104103.P8923746066427591697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (Real.sqrt (A054270 (n + 1) : ℝ))⌉

end

end A104103.P8923746066427591697

namespace A104103

/-- `ceil(sqrt(sqrt(A054270(n+1))))` -/
def P8923746066427591697.Spec : Prop :=
  ∀ n, P8923746066427591697.a n = A104103 (n + 1)

end A104103

/-! ## A104103.P6448624518975785311

`ceil(sqrt(sqrt(A084920(n+1))))`
-/

namespace A104103.P6448624518975785311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (Real.sqrt (A084920 (n + 1) : ℝ))⌉

end

end A104103.P6448624518975785311

namespace A104103

/-- `ceil(sqrt(sqrt(A084920(n+1))))` -/
def P6448624518975785311.Spec : Prop :=
  ∀ n, P6448624518975785311.a n = A104103 (n + 1)

end A104103

/-!
# A104104: a(1) = 1, if A(k) = sequence of first 2^(k-1) terms and if B(k) is A(k) with 0's and 1's exchanged, then A(k+1) = A(k)A(k) if a(k) = 0, A(k+1) = A(k)B(k) if a(k) = 1.

The programs for A104104, the canonical program `A104104.P9946615127034458137` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A104104 has offset 1).

The definition of A104104 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A104104.P9946615127034458137

`16%gcd(15, and(37, n))`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A104104

/-- `16%gcd(15, and(37, n))` -/
def P9946615127034458137.Spec : Prop :=
  ∀ n, (P9946615127034458137.a n : ℤ) = A104104 (n + 1)

theorem P9946615127034458137.correct : P9946615127034458137.Spec := by
  intro n
  simp only [A104104, Nat.add_sub_cancel]

end A104104

/-! ## A104104.P5110710439690974283

`ceil(sin((and(37, n)+3)²))`
-/

namespace A104104.P5110710439690974283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sin ((Nat.land 37 n + 3) ^ 2 : ℝ)⌉

end

end A104104.P5110710439690974283

namespace A104104

/-- `ceil(sin((and(37, n)+3)²))` -/
def P5110710439690974283.Spec : Prop :=
  ∀ n, P5110710439690974283.a n = A104104 (n + 1)

end A104104

/-! ## A104104.P18294966090261960676

`char[xor(n, n-xor(37, n))]`
-/

namespace A104104.P18294966090261960676
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) ((n : ℤ) - (Nat.xor 37 n : ℤ))

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A104104.P18294966090261960676

namespace A104104

/-- `char[xor(n, n-xor(37, n))]` -/
def P18294966090261960676.Spec : Prop :=
  ∀ n, (P18294966090261960676.a n : ℤ) = A104104 (n + 1)

end A104104

/-! ## A104104.P8478207404873204323

`char[xor(n, xor(90, n)+n)]`
-/

namespace A104104.P8478207404873204323
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor n (Nat.xor 90 n + n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A104104.P8478207404873204323

namespace A104104

/-- `char[xor(n, xor(90, n)+n)]` -/
def P8478207404873204323.Spec : Prop :=
  ∀ n, (P8478207404873204323.a n : ℤ) = A104104 (n + 1)

end A104104

/-! ## A104104.P11926770789298824318

`floor(sin((and(37, n)+3)²))+1`
-/

namespace A104104.P11926770789298824318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.sin ((Nat.land 37 n + 3) ^ 2 : ℝ)⌋ + 1

end

end A104104.P11926770789298824318

namespace A104104

/-- `floor(sin((and(37, n)+3)²))+1` -/
def P11926770789298824318.Spec : Prop :=
  ∀ n, P11926770789298824318.a n = A104104 (n + 1)

end A104104

/-! ## A104104.P8817861939023413200

`A116549(n)%2`
-/

namespace A104104.P8817861939023413200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A116549 n) 2

end

end A104104.P8817861939023413200

namespace A104104

/-- `A116549(n)%2` -/
def P8817861939023413200.Spec : Prop :=
  ∀ n, P8817861939023413200.a n = A104104 (n + 1)

end A104104

/-! ## A104104.P6965902671244001316

`and(1, A116510(n))`
-/

namespace A104104.P6965902671244001316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A116510 n)

end

end A104104.P6965902671244001316

namespace A104104

/-- `and(1, A116510(n))` -/
def P6965902671244001316.Spec : Prop :=
  ∀ n, P6965902671244001316.a n = A104104 (n + 1)

end A104104

/-! ## A104104.P14474557765844906342

`A286987(or(82, n))`
-/

namespace A104104.P14474557765844906342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286987 (Nat.lor 82 n)

end

end A104104.P14474557765844906342

namespace A104104

/-- `A286987(or(82, n))` -/
def P14474557765844906342.Spec : Prop :=
  ∀ n, P14474557765844906342.a n = A104104 (n + 1)

end A104104

/-! ## A104104.P2520662011025532128

`char[A372325(n+1)]`
-/

namespace A104104.P2520662011025532128
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372325 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A104104.P2520662011025532128

namespace A104104

/-- `char[A372325(n+1)]` -/
def P2520662011025532128.Spec : Prop :=
  ∀ n, (P2520662011025532128.a n : ℤ) = A104104 (n + 1)

end A104104

/-! ## A104104.P15579158644337833065

`A006042(2*n+1)%2`
-/

namespace A104104.P15579158644337833065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A006042 (2 * n + 1)) 2

end

end A104104.P15579158644337833065

namespace A104104

/-- `A006042(2*n+1)%2` -/
def P15579158644337833065.Spec : Prop :=
  ∀ n, P15579158644337833065.a n = A104104 (n + 1)

end A104104

/-! ## A104104.P13322175326996127780

`and(1, 1-A006042(2*n))`
-/

namespace A104104.P13322175326996127780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (1 - A006042 (2 * n))

end

end A104104.P13322175326996127780

namespace A104104

/-- `and(1, 1-A006042(2*n))` -/
def P13322175326996127780.Spec : Prop :=
  ∀ n, P13322175326996127780.a n = A104104 (n + 1)

end A104104

/-! ## A104104.P8332423290288854146

`and(1, A037477(2*n+1)+n)`
-/

namespace A104104.P8332423290288854146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A037477 (2 * n + 1) + (n : ℤ))

end

end A104104.P8332423290288854146

namespace A104104

/-- `and(1, A037477(2*n+1)+n)` -/
def P8332423290288854146.Spec : Prop :=
  ∀ n, P8332423290288854146.a n = A104104 (n + 1)

end A104104

/-! ## A104104.P3560485091474651683

`and(1, A053829(2*n+1)+n)`
-/

namespace A104104.P3560485091474651683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A053829 (2 * n + 1) + (n : ℤ))

end

end A104104.P3560485091474651683

namespace A104104

/-- `and(1, A053829(2*n+1)+n)` -/
def P3560485091474651683.Spec : Prop :=
  ∀ n, P3560485091474651683.a n = A104104 (n + 1)

end A104104

/-! ## A104104.P7236134821797047382

`floor(∑[A000040(and(n, -n)+1)]/2)%2`
-/

namespace A104104.P7236134821797047382
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (Int.land (n : ℤ) (-(n : ℤ)) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ⌊((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / 2⌋ 2

end

end A104104.P7236134821797047382

namespace A104104

/-- `floor(∑[A000040(and(n, -n)+1)]/2)%2` -/
def P7236134821797047382.Spec : Prop :=
  ∀ n, P7236134821797047382.a n = A104104 (n + 1)

end A104104

/-! ## A104104.P738783741079242813

`A000035(A116549(n))`
-/

namespace A104104.P738783741079242813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A116549 n).toNat

end

end A104104.P738783741079242813

namespace A104104

/-- `A000035(A116549(n))` -/
def P738783741079242813.Spec : Prop :=
  ∀ n, P738783741079242813.a n = A104104 (n + 1)

end A104104

/-! ## A104104.P17485120514493925518

`A059841(A273004(n))`
-/

namespace A104104.P17485120514493925518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059841 (A273004 n).toNat

end

end A104104.P17485120514493925518

namespace A104104

/-- `A059841(A273004(n))` -/
def P17485120514493925518.Spec : Prop :=
  ∀ n, P17485120514493925518.a n = A104104 (n + 1)

end A104104

/-! ## A104104.P6554162486251491596

`A391614(A143579(n))`
-/

namespace A104104.P6554162486251491596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391614 (A143579 n).toNat

end

end A104104.P6554162486251491596

namespace A104104

/-- `A391614(A143579(n))` -/
def P6554162486251491596.Spec : Prop :=
  ∀ n, P6554162486251491596.a n = A104104 (n + 1)

end A104104

/-! ## A104104.P6479993117356281640

`and(A016760(n), A116549(n))`
-/

namespace A104104.P6479993117356281640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A016760 n) (A116549 n)

end

end A104104.P6479993117356281640

namespace A104104

/-- `and(A016760(n), A116549(n))` -/
def P6479993117356281640.Spec : Prop :=
  ∀ n, P6479993117356281640.a n = A104104 (n + 1)

end A104104

/-! ## A104104.P6633128185564947359

`and(A016820(n), A116549(n))`
-/

namespace A104104.P6633128185564947359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A016820 n) (A116549 n)

end

end A104104.P6633128185564947359

namespace A104104

/-- `and(A016820(n), A116549(n))` -/
def P6633128185564947359.Spec : Prop :=
  ∀ n, P6633128185564947359.a n = A104104 (n + 1)

end A104104

/-! ## A104104.P12354813994582195690

`and(A017080(n), A116549(n))`
-/

namespace A104104.P12354813994582195690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A017080 n) (A116549 n)

end

end A104104.P12354813994582195690

namespace A104104

/-- `and(A017080(n), A116549(n))` -/
def P12354813994582195690.Spec : Prop :=
  ∀ n, P12354813994582195690.a n = A104104 (n + 1)

end A104104

/-!
# A104105: a(1) = 1, if A(k) = sequence of first 2^k -1 terms and if B(k) is A(k) with 0's and 1's exchanged, then A(k+1) = A(k),1,B(k) if a(k) = 0, A(k+1) = A(k),0,B(k) if a(k) = 1.

The programs for A104105, the canonical program `A104105.P2847982210101266645` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A104105 has offset 1).

The definition of A104105 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A104105.P6184823964889109373

`xor(Δ[floor(n/8)], char[xor(n, 2*n)])`
-/

namespace A104105.P6184823964889109373
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℚ) / 8⌋

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor n (2 * n)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (f1 (n + 1) - f1 n) ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ)

end

end A104105.P6184823964889109373

namespace A104105

/-- `xor(Δ[floor(n/8)], char[xor(n, 2*n)])` -/
def P6184823964889109373.Spec : Prop :=
  ∀ n, P6184823964889109373.a n = A104105 (n + 1)

end A104105

/-! ## A104105.P16232939954637125016

`(char[xor(n, Δ[n²])]+lcm(4, n+1)/4)%2`
-/

namespace A104105.P16232939954637125016
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) ((f2 (n + 1) : ℤ) - (f2 n : ℤ))

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway (((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℚ) + (Nat.lcm 4 (n + 1) : ℚ) / 4)) 2

end

end A104105.P16232939954637125016

namespace A104105

/-- `(char[xor(n, Δ[n²])]+lcm(4, n+1)/4)%2` -/
def P16232939954637125016.Spec : Prop :=
  ∀ n, P16232939954637125016.a n = A104105 (n + 1)

end A104105

/-! ## A104105.P2847982210101266645

`A010059(or(n, n+9))`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A104105

/-- `A010059(or(n, n+9))` -/
def P2847982210101266645.Spec : Prop :=
  ∀ n, P2847982210101266645.a n = A104105 (n + 1)

theorem P2847982210101266645.correct : P2847982210101266645.Spec := by
  intro n
  simp only [A104105, Nat.add_sub_cancel]

end A104105

/-! ## A104105.P15479960256334114331

`A095190(or(n, n+9))`
-/

namespace A104105.P15479960256334114331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095190 (Nat.lor n (n + 9))

end

end A104105.P15479960256334114331

namespace A104105

/-- `A095190(or(n, n+9))` -/
def P15479960256334114331.Spec : Prop :=
  ∀ n, P15479960256334114331.a n = A104105 (n + 1)

end A104105

/-! ## A104105.P6840885322160083895

`A254377(or(n, n+9))`
-/

namespace A104105.P6840885322160083895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254377 (Nat.lor n (n + 9))

end

end A104105.P6840885322160083895

namespace A104105

/-- `A254377(or(n, n+9))` -/
def P6840885322160083895.Spec : Prop :=
  ∀ n, P6840885322160083895.a n = A104105 (n + 1)

end A104105

/-! ## A104105.P11600249378798158771

`A010059(val(n+1, 2)+n)`
-/

namespace A104105.P11600249378798158771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010059 (SequenceMachineLib.valuation (n + 1) 2 + n)

end

end A104105.P11600249378798158771

namespace A104105

/-- `A010059(val(n+1, 2)+n)` -/
def P11600249378798158771.Spec : Prop :=
  ∀ n, P11600249378798158771.a n = A104105 (n + 1)

end A104105

/-! ## A104105.P5377648649323755964

`2-A001285(or(n, n+9))`
-/

namespace A104105.P5377648649323755964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A001285 (Nat.lor n (n + 9))

end

end A104105.P5377648649323755964

namespace A104105

/-- `2-A001285(or(n, n+9))` -/
def P5377648649323755964.Spec : Prop :=
  ∀ n, P5377648649323755964.a n = A104105 (n + 1)

end A104105

/-! ## A104105.P11609904942673178972

`A010060(or(n, gcd(4, n+1)))`
-/

namespace A104105.P11609904942673178972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010060 (Nat.lor n (Nat.gcd 4 (n + 1)))

end

end A104105.P11609904942673178972

namespace A104105

/-- `A010060(or(n, gcd(4, n+1)))` -/
def P11609904942673178972.Spec : Prop :=
  ∀ n, P11609904942673178972.a n = A104105 (n + 1)

end A104105

/-! ## A104105.P2622767406974574259

`A005836(or(n, n+9))%2`
-/

namespace A104105.P2622767406974574259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A005836 (Nat.lor n (n + 9))) 2

end

end A104105.P2622767406974574259

namespace A104105

/-- `A005836(or(n, n+9))%2` -/
def P2622767406974574259.Spec : Prop :=
  ∀ n, P2622767406974574259.a n = A104105 (n + 1)

end A104105

/-! ## A104105.P836508663764277779

`ceil(sin(Δ[A006068(2*n+1)]))`
-/

namespace A104105.P836508663764277779
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006068 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sin (f1 (n + 1) - f1 n : ℝ)⌉

end

end A104105.P836508663764277779

namespace A104105

/-- `ceil(sin(Δ[A006068(2*n+1)]))` -/
def P836508663764277779.Spec : Prop :=
  ∀ n, P836508663764277779.a n = A104105 (n + 1)

end A104105

/-! ## A104105.P2747565848688918469

`A000120(or(n, (n+1)%8))%2`
-/

namespace A104105.P2747565848688918469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000120 (Nat.lor n ((n + 1) % 8))) 2

end

end A104105.P2747565848688918469

namespace A104105

/-- `A000120(or(n, (n+1)%8))%2` -/
def P2747565848688918469.Spec : Prop :=
  ∀ n, P2747565848688918469.a n = A104105 (n + 1)

end A104105

/-! ## A104105.P3374751685374276476

`and(1, A000580(n+8)+comp[xor(n, 2*n)])`
-/

namespace A104105.P3374751685374276476
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor n (2 * n)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A000580 (n + 8) + (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ))

end

end A104105.P3374751685374276476

namespace A104105

/-- `and(1, A000580(n+8)+comp[xor(n, 2*n)])` -/
def P3374751685374276476.Spec : Prop :=
  ∀ n, P3374751685374276476.a n = A104105 (n + 1)

end A104105

/-! ## A104105.P3819375516326500715

`A308901(A103621(n+1))`
-/

namespace A104105.P3819375516326500715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308901 (A103621 (n + 1)).toNat

end

end A104105.P3819375516326500715

namespace A104105

/-- `A308901(A103621(n+1))` -/
def P3819375516326500715.Spec : Prop :=
  ∀ n, P3819375516326500715.a n = A104105 (n + 1)

end A104105

/-! ## A104105.P16379798174619909960

`A308901(A158938(n+1))`
-/

namespace A104105.P16379798174619909960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308901 (A158938 (n + 1)).toNat

end

end A104105.P16379798174619909960

namespace A104105

/-- `A308901(A158938(n+1))` -/
def P16379798174619909960.Spec : Prop :=
  ∀ n, P16379798174619909960.a n = A104105 (n + 1)

end A104105

/-! ## A104105.P6410291804266636388

`A010060(A000695(n)+11)`
-/

namespace A104105.P6410291804266636388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010060 (A000695 n + 11).toNat

end

end A104105.P6410291804266636388

namespace A104105

/-- `A010060(A000695(n)+11)` -/
def P6410291804266636388.Spec : Prop :=
  ∀ n, P6410291804266636388.a n = A104105 (n + 1)

end A104105

/-! ## A104105.P16502390770655125386

`A010059(Δ[A011371(n)]+n)`
-/

namespace A104105.P16502390770655125386
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011371 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010059 (f1 (n + 1) - f1 n + (n : ℤ)).toNat

end

end A104105.P16502390770655125386

namespace A104105

/-- `A010059(Δ[A011371(n)]+n)` -/
def P16502390770655125386.Spec : Prop :=
  ∀ n, P16502390770655125386.a n = A104105 (n + 1)

end A104105

/-! ## A104105.P6061104729237127718

`A010059(n-char[A004771(n)])`
-/

namespace A104105.P6061104729237127718
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004771 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010059 (n - (if ∃ j, f1 j = (n : ℤ) then 1 else 0))

end

end A104105.P6061104729237127718

namespace A104105

/-- `A010059(n-char[A004771(n)])` -/
def P6061104729237127718.Spec : Prop :=
  ∀ n, P6061104729237127718.a n = A104105 (n + 1)

end A104105

/-! ## A104105.P13391416877627586620

`A010059(xor(n, char[A004771(n)]))`
-/

namespace A104105.P13391416877627586620
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004771 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010059 (Nat.xor n (if ∃ j, f1 j = (n : ℤ) then 1 else 0))

end

end A104105.P13391416877627586620

namespace A104105

/-- `A010059(xor(n, char[A004771(n)]))` -/
def P13391416877627586620.Spec : Prop :=
  ∀ n, P13391416877627586620.a n = A104105 (n + 1)

end A104105

/-! ## A104105.P15740916390140613193

`and(1, A000120(A000695(n)+11))`
-/

namespace A104105.P15740916390140613193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A000120 (A000695 n + 11).toNat)

end

end A104105.P15740916390140613193

namespace A104105

/-- `and(1, A000120(A000695(n)+11))` -/
def P15740916390140613193.Spec : Prop :=
  ∀ n, P15740916390140613193.a n = A104105 (n + 1)

end A104105

/-! ## A104105.P9766931517613013813

`A010059(A007814(n+1)+n)`
-/

namespace A104105.P9766931517613013813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010059 (A007814 (n + 1) + (n : ℤ)).toNat

end

end A104105.P9766931517613013813

namespace A104105

/-- `A010059(A007814(n+1)+n)` -/
def P9766931517613013813.Spec : Prop :=
  ∀ n, P9766931517613013813.a n = A104105 (n + 1)

end A104105

/-!
# A104106: a(1) = 1; thereafter, if A(k) = sequence of first 2^k -1 terms, then A(k+1) = A(k),1,A(k) if a(k) = 0, and A(k+1) = A(k),0,A(k) if a(k) = 1.

The programs for A104106, the canonical program `A104106.P2878063889547859534` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A104106 has offset 1).

The definition of A104106 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A104106.P2878063889547859534

`and(1, A089242(n+1))`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A104106

/-- `and(1, A089242(n+1))` -/
def P2878063889547859534.Spec : Prop :=
  ∀ n, P2878063889547859534.a n = A104106 (n + 1)

theorem P2878063889547859534.correct : P2878063889547859534.Spec := by
  intro n
  simp only [A104106, Nat.add_sub_cancel]

end A104106

/-!
# A104107: a(1) = 1, c(1)=1, if A(k) = sequence of first c(k) terms and if B(k) is A(k) with 0's and 1's exchanged, then A(k+1) = A(k)B(k) and c(k+1)= 2*c(k) if a(k) = 0, A(k+1) = A(k),0,B(k) and c(k+1)= 2*c(k)+1 if a(k) = 1.

The programs for A104107, there is no canonical definition to state claims against.
-/

/-! ## A104107.P6582204121604769280

`A104105(eq[A089242(n+1), A260451(2*(n+1))])`
-/

namespace A104107.P6582204121604769280
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089242 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260451 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104105 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A104107.P6582204121604769280

/-! ## A104107.P5551424959680498273

`A010059(A004396(n))*A285518(A126791(n))`
-/

namespace A104107.P5551424959680498273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010059 (A004396 n).toNat * A285518 (A126791 n).toNat

end

end A104107.P5551424959680498273

/-! ## A104107.P10422339170138640923

`A136442(A001227(A035283(n+1))*A004396(n))`
-/

namespace A104107.P10422339170138640923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136442 (A001227 (A035283 (n + 1)).toNat * A004396 n).toNat

end

end A104107.P10422339170138640923

/-! ## A104107.P18390647612329609781

`A010060(A047440(n+1)%A227343(2*n+3))`
-/

namespace A104107.P18390647612329609781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010060 (Int.tmod (A047440 (n + 1)) (A227343 (2 * n + 3))).toNat

end

end A104107.P18390647612329609781

/-! ## A104107.P8181456324831652221

`A359464(A133464(n))`
-/

namespace A104107.P8181456324831652221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359464 (A133464 n).toNat

end

end A104107.P8181456324831652221

/-!
# A104108: a(1) = 1, c(1)=1, if A(k) = sequence of first c(k) terms and if B(k) is A(k) with 0's and 1's exchanged, then A(k+1) = A(k)B(k) and c(k+1)= 2*c(k) if a(k) = 1, A(k+1) = A(k),0,B(k) and c(k+1)= 2*c(k)+1 if a(k) = 0.

The programs for A104108, the canonical program `A104108.P4969692448280166789` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A104108 has offset 1).

The definition of A104108 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A104108.P4969692448280166789

`A010060(record[A092412(n+1)+A008619(n)])`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A104108

/-- `A010060(record[A092412(n+1)+A008619(n)])` -/
def P4969692448280166789.Spec : Prop :=
  ∀ n, P4969692448280166789.a n = A104108 (n + 1)

theorem P4969692448280166789.correct : P4969692448280166789.Spec := by
  intro n
  simp only [A104108, Nat.add_sub_cancel]

end A104108

/-! ## A104108.P11420183196265635312

`A010059(lt[A103583(n), A104378(n)])`
-/

namespace A104108.P11420183196265635312
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103583 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104378 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010059 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A104108.P11420183196265635312

namespace A104108

/-- `A010059(lt[A103583(n), A104378(n)])` -/
def P11420183196265635312.Spec : Prop :=
  ∀ n, P11420183196265635312.a n = A104108 (n + 1)

end A104108

/-! ## A104108.P10387996191341433438

`A010059(lt[A116510(n), A104378(n)])`
-/

namespace A104108.P10387996191341433438
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116510 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104378 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010059 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A104108.P10387996191341433438

namespace A104108

/-- `A010059(lt[A116510(n), A104378(n)])` -/
def P10387996191341433438.Spec : Prop :=
  ∀ n, P10387996191341433438.a n = A104108 (n + 1)

end A104108

/-! ## A104108.P15212636910328720629

`A010059(lt[A136442(n), A104378(n)])`
-/

namespace A104108.P15212636910328720629
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136442 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104378 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010059 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A104108.P15212636910328720629

namespace A104108

/-- `A010059(lt[A136442(n), A104378(n)])` -/
def P15212636910328720629.Spec : Prop :=
  ∀ n, P15212636910328720629.a n = A104108 (n + 1)

end A104108

/-! ## A104108.P12742656288368055467

`A010059(lt[A103842(n+1), A104378(n)])`
-/

namespace A104108.P12742656288368055467
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103842 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104378 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010059 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A104108.P12742656288368055467

namespace A104108

/-- `A010059(lt[A103842(n+1), A104378(n)])` -/
def P12742656288368055467.Spec : Prop :=
  ∀ n, P12742656288368055467.a n = A104108 (n + 1)

end A104108

/-!
# A104110: Nonnegative numbers k such that k^2 + 42 is prime.

The programs for A104110, there is no canonical definition to state claims against.
-/

/-! ## A104110.P17705522494211310125

`sqrt(A174812(n+1)-42)`
-/

namespace A104110.P17705522494211310125
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A174812 (n + 1) - 42 : ℝ)

end

end A104110.P17705522494211310125

/-! ## A104110.P13500620485246426632

`sqrt(p?[n²+42]-42)`
-/

namespace A104110.P13500620485246426632
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2 + 42

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt ((f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) : ℤ) - 42 : ℝ)

end

end A104110.P13500620485246426632

/-! ## A104110.P136563746167219399

`root(p?[n²+42]-42, 4)²`
-/

namespace A104110.P136563746167219399
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2 + 42

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (((f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) : ℤ) - 42 : ℝ) ^ (1 / (4 : ℝ))) ^ 2

end

end A104110.P136563746167219399

/-! ## A104110.P8745635637568791053

`(p?[n²+42]-42)^(1/2)`
-/

namespace A104110.P8745635637568791053
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2 + 42

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) : ℤ) - 42 : ℝ) ^ ((1 : ℚ) / 2 : ℝ)

end

end A104110.P8745635637568791053

/-! ## A104110.P13159561979575717525

`eq[1, A001222(n²+42)]`
-/

namespace A104110.P13159561979575717525
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n ^ 2 + 42)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A104110.P13159561979575717525

/-!
# A104113: Numbers which when chopped into one, two or more parts, added and squared result in the same number.

The programs for A104113, there is no canonical definition to state claims against.
-/

/-! ## A104113.P2142070253387447500

`A038206(n+1)²`
-/

namespace A104113.P2142070253387447500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038206 (n + 1) ^ 2

end

end A104113.P2142070253387447500

/-! ## A104113.P1932661216115154414

`A038206(n+1)^gcd(2, A000122(n))`
-/

namespace A104113.P1932661216115154414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038206 (n + 1) ^ Int.gcd 2 (A000122 n)

end

end A104113.P1932661216115154414

/-! ## A104113.P13818614610907720843

`A038206(A000027(n+1))*A038206(n+1)`
-/

namespace A104113.P13818614610907720843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038206 (A000027 (n + 1)).toNat * A038206 (n + 1)

end

end A104113.P13818614610907720843

/-! ## A104113.P2846016230829510713

`A038206(A000290(n+1)/(n+1))*A038206(n+1)`
-/

namespace A104113.P2846016230829510713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038206 (SequenceMachineLib.roundAway ((A000290 (n + 1) : ℚ) / (n + 1 : ℚ))).toNat * A038206 (n + 1)

end

end A104113.P2846016230829510713

/-! ## A104113.P12821000608412593108

`(A038206(n+1)*A038206(n+1))%A155509(n+1)`
-/

namespace A104113.P12821000608412593108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A038206 (n + 1) * A038206 (n + 1)) (A155509 (n + 1))

end

end A104113.P12821000608412593108

/-! ## A104113.P648358238434772146

`A038206(n+1)^(A014963(∑[n+1])+1)`
-/

namespace A104113.P648358238434772146
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038206 (n + 1) : ℚ) ^ (A014963 (∑ j ∈ Finset.range (n + 1), f1 j) + 1 : ℤ)

end

end A104113.P648358238434772146

/-! ## A104113.P14835444920858465895

`A038206(n+1)%A241977(n+1)*A038206(n+1)`
-/

namespace A104113.P14835444920858465895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A038206 (n + 1)) (A241977 (n + 1)) * A038206 (n + 1)

end

end A104113.P14835444920858465895

/-! ## A104113.P15156059502249918031

`A038206(A091873((n+1)*(n+1)))*A038206(n+1)`
-/

namespace A104113.P15156059502249918031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038206 (A091873 ((n + 1) * (n + 1))).toNat * A038206 (n + 1)

end

end A104113.P15156059502249918031

/-! ## A104113.P808154090448075863

`A000290(A038206(2*(n+1)-(n+1)))`
-/

namespace A104113.P808154090448075863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 (A038206 (2 * (n + 1) - (n + 1))).toNat

end

end A104113.P808154090448075863

/-! ## A104113.P1571067913590699974

`A000290(A038206(n+1)%A038206(n+2))`
-/

namespace A104113.P1571067913590699974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 (Int.tmod (A038206 (n + 1)) (A038206 (n + 2))).toNat

end

end A104113.P1571067913590699974

/-!
# A104114: The order of the smallest solvable group with derived length n.

The programs for A104114, there is no canonical definition to state claims against.
-/

/-! ## A104114.P11197368874226640138

`A347580(A050355(n+2))`
-/

namespace A104114.P11197368874226640138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347580 (A050355 (n + 2)).toNat

end

end A104114.P11197368874226640138

/-! ## A104114.P6067158520364500056

`record[A066086(record[A002421(n)])]`
-/

namespace A104114.P6067158520364500056
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002421 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066086 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A104114.P6067158520364500056

/-!
# A104115: Primes of the form 6^k+7.

The programs for A104115, there is no canonical definition to state claims against.
-/

/-! ## A104115.P1908789600341548864

`p?[6^n+7]`
-/

namespace A104115.P1908789600341548864
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6 ^ n + 7

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A104115.P1908789600341548864

/-!
# A104117: For n=2^k, a(n) = k+1, else 0.

The programs for A104117, the canonical program `A104117.P10781033887372314096` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A104117 has offset 1).

The definition of A104117 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A104117.P3091075879207490056

`Δ[C(1-floor(log2(acot(n))), 2)]`
-/

namespace A104117.P3091075879207490056
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (1 - ⌊Real.logb 2 (SequenceMachineLib.acot (n : ℝ))⌋).toNat 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A104117.P3091075879207490056

namespace A104117

/-- `Δ[C(1-floor(log2(acot(n))), 2)]` -/
def P3091075879207490056.Spec : Prop :=
  ∀ n, P3091075879207490056.a n = A104117 (n + 1)

end A104117

/-! ## A104117.P7132004347513522071

`Δ[C(2-ceil(log2(acot(n))), 2)]`
-/

namespace A104117.P7132004347513522071
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (2 - ⌈Real.logb 2 (SequenceMachineLib.acot (n : ℝ))⌉).toNat 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A104117.P7132004347513522071

namespace A104117

/-- `Δ[C(2-ceil(log2(acot(n))), 2)]` -/
def P7132004347513522071.Spec : Prop :=
  ∀ n, P7132004347513522071.a n = A104117 (n + 1)

end A104117

/-! ## A104117.P6826193728052145352

`Δ[C(floor(log2(4/acot(n))), 2)]`
-/

namespace A104117.P6826193728052145352
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose ⌊Real.logb 2 (4 / SequenceMachineLib.acot (n : ℝ))⌋.toNat 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A104117.P6826193728052145352

namespace A104117

/-- `Δ[C(floor(log2(4/acot(n))), 2)]` -/
def P6826193728052145352.Spec : Prop :=
  ∀ n, P6826193728052145352.a n = A104117 (n + 1)

end A104117

/-! ## A104117.P3422152505028429317

`Δ[C(ceil(log2(n+1))+1, 2)]`
-/

namespace A104117.P3422152505028429317
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (⌈Real.logb 2 (n + 1 : ℝ)⌉ + 1).toNat 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A104117.P3422152505028429317

namespace A104117

/-- `Δ[C(ceil(log2(n+1))+1, 2)]` -/
def P3422152505028429317.Spec : Prop :=
  ∀ n, P3422152505028429317.a n = A104117 (n + 1)

end A104117

/-! ## A104117.P8850039623798387462

`ceil(Δ[ceil(log2(n+1))²/2])`
-/

namespace A104117.P8850039623798387462
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (⌈Real.logb 2 (n + 1 : ℝ)⌉ ^ 2 : ℚ) / 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈f1 (n + 1) - f1 n⌉

end

end A104117.P8850039623798387462

namespace A104117

/-- `ceil(Δ[ceil(log2(n+1))²/2])` -/
def P8850039623798387462.Spec : Prop :=
  ∀ n, P8850039623798387462.a n = A104117 (n + 1)

end A104117

/-! ## A104117.P10781033887372314096

`∏{p}[n+1, val(2*n+#, 2)]`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A104117

/-- `∏{p}[n+1, val(2*n+#, 2)]` -/
def P10781033887372314096.Spec : Prop :=
  ∀ n, (P10781033887372314096.a n : ℤ) = A104117 (n + 1)

theorem P10781033887372314096.correct : P10781033887372314096.Spec := by
  intro n
  simp only [A104117, Nat.add_sub_cancel]

end A104117

/-! ## A104117.P12785398516586540598

`C(val(n+1, 2)+1, ∑[char[2^n]])`
-/

namespace A104117.P12785398516586540598
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (SequenceMachineLib.valuation (n + 1) 2 + 1) (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A104117.P12785398516586540598

namespace A104117

/-- `C(val(n+1, 2)+1, ∑[char[2^n]])` -/
def P12785398516586540598.Spec : Prop :=
  ∀ n, (P12785398516586540598.a n : ℤ) = A104117 (n + 1)

end A104117

/-! ## A104117.P853129148769213900

`(val(n+1, 2)+1)*char[2^n-1]`
-/

namespace A104117.P853129148769213900
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.valuation (n + 1) 2 + 1) * (if ∃ j, f1 j = (n : ℤ) then 1 else 0)

end

end A104117.P853129148769213900

namespace A104117

/-- `(val(n+1, 2)+1)*char[2^n-1]` -/
def P853129148769213900.Spec : Prop :=
  ∀ n, (P853129148769213900.a n : ℤ) = A104117 (n + 1)

end A104117

/-! ## A104117.P7834770077181647052

`(∑{e}[n+1, #]+1)*char[2^n-1]`
-/

namespace A104117.P7834770077181647052
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p + 1) * (if ∃ j, f2 j = (n : ℤ) then 1 else 0)

end

end A104117.P7834770077181647052

namespace A104117

/-- `(∑{e}[n+1, #]+1)*char[2^n-1]` -/
def P7834770077181647052.Spec : Prop :=
  ∀ n, (P7834770077181647052.a n : ℤ) = A104117 (n + 1)

end A104117

/-! ## A104117.P13307391453475300232

`char[2^n-1]*∏{e}[n+1, #+1]`
-/

namespace A104117.P13307391453475300232
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) - 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f1 j = (n : ℤ) then 1 else 0) * (∏ p ∈ Nat.primeFactors (f2 n), (Nat.factorization (f2 n) p + 1))

end

end A104117.P13307391453475300232

namespace A104117

/-- `char[2^n-1]*∏{e}[n+1, #+1]` -/
def P13307391453475300232.Spec : Prop :=
  ∀ n, (P13307391453475300232.a n : ℤ) = A104117 (n + 1)

end A104117

/-! ## A104117.P13229503836140640756

`and(val(n+1, 2)+1, -char[2^n-1])`
-/

namespace A104117.P13229503836140640756
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (SequenceMachineLib.valuation (n + 1) 2 + 1 : ℤ) (-((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ))

end

end A104117.P13229503836140640756

namespace A104117

/-- `and(val(n+1, 2)+1, -char[2^n-1])` -/
def P13229503836140640756.Spec : Prop :=
  ∀ n, P13229503836140640756.a n = A104117 (n + 1)

end A104117

/-! ## A104117.P1072101012538756967

`A100995(2*(n+1))`
-/

namespace A104117.P1072101012538756967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100995 (2 * (n + 1))

end

end A104117.P1072101012538756967

namespace A104117

/-- `A100995(2*(n+1))` -/
def P1072101012538756967.Spec : Prop :=
  ∀ n, P1072101012538756967.a n = A104117 (n + 1)

end A104117

/-! ## A104117.P2518528740274070033

`A182660(4*(n+1))`
-/

namespace A104117.P2518528740274070033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182660 (4 * (n + 1))

end

end A104117.P2518528740274070033

namespace A104117

/-- `A182660(4*(n+1))` -/
def P2518528740274070033.Spec : Prop :=
  ∀ n, P2518528740274070033.a n = A104117 (n + 1)

end A104117

/-! ## A104117.P14340510841957051322

`∑{d}[n+1, A209635(#)]`
-/

namespace A104117.P14340510841957051322
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A209635 d

end

end A104117.P14340510841957051322

namespace A104117

/-- `∑{d}[n+1, A209635(#)]` -/
def P14340510841957051322.Spec : Prop :=
  ∀ n, P14340510841957051322.a n = A104117 (n + 1)

end A104117

/-! ## A104117.P7098981821393161673

`val(A344878(n+1)+1, 2)`
-/

namespace A104117.P7098981821393161673
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A344878 (n + 1) + 1).toNat 2

end

end A104117.P7098981821393161673

namespace A104117

/-- `val(A344878(n+1)+1, 2)` -/
def P7098981821393161673.Spec : Prop :=
  ∀ n, (P7098981821393161673.a n : ℤ) = A104117 (n + 1)

end A104117

/-! ## A104117.P12412570509558350572

`val(A006530(2*(n+1))+2*n, 2)`
-/

namespace A104117.P12412570509558350572
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A006530 (2 * (n + 1)) + (2 * n : ℤ)).toNat 2

end

end A104117.P12412570509558350572

namespace A104117

/-- `val(A006530(2*(n+1))+2*n, 2)` -/
def P12412570509558350572.Spec : Prop :=
  ∀ n, (P12412570509558350572.a n : ℤ) = A104117 (n + 1)

end A104117

/-! ## A104117.P5266857187466454633

`C(A000005(n+1), and(n, n+1)+1)`
-/

namespace A104117.P5266857187466454633
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A000005 (n + 1)).toNat (Nat.land n (n + 1) + 1)

end

end A104117.P5266857187466454633

namespace A104117

/-- `C(A000005(n+1), and(n, n+1)+1)` -/
def P5266857187466454633.Spec : Prop :=
  ∀ n, (P5266857187466454633.a n : ℤ) = A104117 (n + 1)

end A104117

/-! ## A104117.P9797224262711105169

`A029931(A099894(n))`
-/

namespace A104117.P9797224262711105169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029931 (A099894 n).toNat

end

end A104117.P9797224262711105169

namespace A104117

/-- `A029931(A099894(n))` -/
def P9797224262711105169.Spec : Prop :=
  ∀ n, P9797224262711105169.a n = A104117 (n + 1)

end A104117

/-! ## A104117.P4852753470860686925

`A029931(A048298(n+1))`
-/

namespace A104117.P4852753470860686925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029931 (A048298 (n + 1)).toNat

end

end A104117.P4852753470860686925

namespace A104117

/-- `A029931(A048298(n+1))` -/
def P4852753470860686925.Spec : Prop :=
  ∀ n, P4852753470860686925.a n = A104117 (n + 1)

end A104117

/-! ## A104117.P18337818950476683866

`A029837(A099894(n)+1)`
-/

namespace A104117.P18337818950476683866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029837 (A099894 n + 1).toNat

end

end A104117.P18337818950476683866

namespace A104117

/-- `A029837(A099894(n)+1)` -/
def P18337818950476683866.Spec : Prop :=
  ∀ n, P18337818950476683866.a n = A104117 (n + 1)

end A104117

/-!
# A104118: Primes of the form 6^n+5.

The programs for A104118, there is no canonical definition to state claims against.
-/

/-! ## A104118.P117696233741773273

`6^A145106(n+1)+5`
-/

namespace A104118.P117696233741773273
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (6 : ℚ) ^ (A145106 (n + 1) : ℤ) + 5

end

end A104118.P117696233741773273

/-! ## A104118.P10532113080149749140

`A253209(A145106(n+1))`
-/

namespace A104118.P10532113080149749140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253209 (A145106 (n + 1)).toNat

end

end A104118.P10532113080149749140

/-! ## A104118.P1909120280164667671

`A062394(lt[A013600(n+1), 6]+1)+4`
-/

namespace A104118.P1909120280164667671
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013600 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062394 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1) + 4

end

end A104118.P1909120280164667671

/-! ## A104118.P5160471838480480595

`A000400(lt[A013600(n+1), 6]+1)+5`
-/

namespace A104118.P5160471838480480595
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013600 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000400 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1) + 5

end

end A104118.P5160471838480480595

/-!
# A104119: Primes of the form 6^k + 23.

The programs for A104119, there is no canonical definition to state claims against.
-/

/-! ## A104119.P14603510133425938126

`p?[6^n+23]`
-/

namespace A104119.P14603510133425938126
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6 ^ n + 23

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A104119.P14603510133425938126

/-!
# A104120: a(n) = (prime(n + 1) - prime(n))/2 (mod 2).

The programs for A104120, there is no canonical definition to state claims against.
-/

/-! ## A104120.P6680411910828833046

`((p?[2*n+5]-(p?[2*n+1]+1))%4)%3`
-/

namespace A104120.P6680411910828833046
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 5

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (Int.tmod ((f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) : ℤ) - (f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n) + 1 : ℤ)) 4) 3

end

end A104120.P6680411910828833046

/-! ## A104120.P8188197351218763282

`Δ[A330560(n+1)]`
-/

namespace A104120.P8188197351218763282
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330560 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A104120.P8188197351218763282

/-! ## A104120.P12151213159791779168

`Δ[A126995(n)]%2`
-/

namespace A104120.P12151213159791779168
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126995 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (n + 1) - f1 n) 2

end

end A104120.P12151213159791779168

/-! ## A104120.P7576021925074827489

`A080378(n+2)/2`
-/

namespace A104120.P7576021925074827489
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A080378 (n + 2) : ℚ) / 2

end

end A104120.P7576021925074827489

/-! ## A104120.P16684718065556502816

`A102770(n+1)%2`
-/

namespace A104120.P16684718065556502816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A102770 (n + 1)) 2

end

end A104120.P16684718065556502816

/-! ## A104120.P7926992354286530325

`A162153(n+1)%2`
-/

namespace A104120.P7926992354286530325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A162153 (n + 1)) 2

end

end A104120.P7926992354286530325

/-! ## A104120.P6873718546772458286

`A028334(n+2)%2`
-/

namespace A104120.P6873718546772458286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A028334 (n + 2)) 2

end

end A104120.P6873718546772458286

/-! ## A104120.P2534164451811310806

`A074927(n+2)%2`
-/

namespace A104120.P2534164451811310806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A074927 (n + 2)) 2

end

end A104120.P2534164451811310806

/-! ## A104120.P6065973726143942904

`A078444(n+2)%2`
-/

namespace A104120.P6065973726143942904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A078444 (n + 2)) 2

end

end A104120.P6065973726143942904

/-!
# A104121: a(n)=1 if there is a partition of n^3 into n primes such that n-1 are consecutive primes and the remaining prime is larger than the sum of the n-1 consecutive primes, otherwise a(0)=0 if no such partition exists.

The programs for A104121, there is no canonical definition to state claims against.
-/

/-! ## A104121.P2496489395334016769

`floor(atan(n)-char[8])`
-/

namespace A104121.P2496489395334016769
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.arctan (n : ℝ) - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℝ)⌋

end

end A104121.P2496489395334016769

/-!
# A104124: a(n) = number of ways to write n = (2m-1)^2 * k, m >= k, k and m = positive integers.

The programs for A104124, there is no canonical definition to state claims against.
-/

/-! ## A104124.P4412046714928658602

`A000035(A102448(n+1)²*A011264(n+1))`
-/

namespace A104124.P4412046714928658602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A102448 (n + 1) ^ 2 * A011264 (n + 1)).toNat

end

end A104124.P4412046714928658602

/-! ## A104124.P18043338510488757739

`A010877((A102448(n+1)*A326690(n+1))²)`
-/

namespace A104124.P18043338510488757739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010877 ((A102448 (n + 1) * A326690 (n + 1)) ^ 2).toNat

end

end A104124.P18043338510488757739

/-! ## A104124.P6556054361140378683

`A098108((A102448(n+1)*A326690(n+1))²)`
-/

namespace A104124.P6556054361140378683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098108 ((A102448 (n + 1) * A326690 (n + 1)) ^ 2).toNat

end

end A104124.P6556054361140378683

/-! ## A104124.P15366457720525714817

`and(A041109(n), A102448(n+1))`
-/

namespace A104124.P15366457720525714817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A041109 n) (A102448 (n + 1))

end

end A104124.P15366457720525714817

/-! ## A104124.P12526143997372220688

`and(A041465(n), A102448(n+1))`
-/

namespace A104124.P12526143997372220688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A041465 n) (A102448 (n + 1))

end

end A104124.P12526143997372220688

/-! ## A104124.P14674197042381491024

`and(A041595(n), A102448(n+1))`
-/

namespace A104124.P14674197042381491024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A041595 n) (A102448 (n + 1))

end

end A104124.P14674197042381491024

/-! ## A104124.P16708454992045506813

`and(A041059(n), A102448(n+1))`
-/

namespace A104124.P16708454992045506813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A041059 n) (A102448 (n + 1))

end

end A104124.P16708454992045506813

/-! ## A104124.P6831192684358234167

`and(A041741(n), A102448(n+1))`
-/

namespace A104124.P6831192684358234167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A041741 n) (A102448 (n + 1))

end

end A104124.P6831192684358234167

/-! ## A104124.P2987492328129483695

`and(A041783(n), A102448(n+1))`
-/

namespace A104124.P2987492328129483695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A041783 n) (A102448 (n + 1))

end

end A104124.P2987492328129483695

/-! ## A104124.P9282295371262314305

`and(A041259(n), A102448(n+1))`
-/

namespace A104124.P9282295371262314305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A041259 n) (A102448 (n + 1))

end

end A104124.P9282295371262314305

/-! ## A104124.P16224191589173959096

`A096271(A005232(n))*A102354(n+1)`
-/

namespace A104124.P16224191589173959096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096271 (A005232 n).toNat * A102354 (n + 1)

end

end A104124.P16224191589173959096

/-! ## A104124.P13406812586579091240

`and(A010877(A005232(n)), A102448(n+1))`
-/

namespace A104124.P13406812586579091240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A010877 (A005232 n).toNat) (A102448 (n + 1))

end

end A104124.P13406812586579091240

/-! ## A104124.P3850950685007082294

`and(A000217(A184533(n+1)), A102448(n+1))`
-/

namespace A104124.P3850950685007082294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A000217 (A184533 (n + 1)).toNat) (A102448 (n + 1))

end

end A104124.P3850950685007082294

/-! ## A104124.P8614855032017171067

`and(A000027(A103145(n)), A102448(n+1))`
-/

namespace A104124.P8614855032017171067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A000027 (A103145 n).toNat) (A102448 (n + 1))

end

end A104124.P8614855032017171067

/-! ## A104124.P3024194650267029454

`and(A103145(n), A217586(A241916(n+1)))`
-/

namespace A104124.P3024194650267029454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A103145 n) (A217586 (A241916 (n + 1)).toNat)

end

end A104124.P3024194650267029454

/-! ## A104124.P2424251404353931636

`char[A004773(n)]*A217586(A241916(n+1))`
-/

namespace A104124.P2424251404353931636
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004773 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A217586 (A241916 (n + 1)).toNat

end

end A104124.P2424251404353931636

/-! ## A104124.P5346319340229443313

`and(A003557(n+1), A217586(A241916(n+1)))`
-/

namespace A104124.P5346319340229443313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A003557 (n + 1)) (A217586 (A241916 (n + 1)).toNat)

end

end A104124.P5346319340229443313

/-! ## A104124.P2610442876905169050

`and(A004525(n+1), A217586(A241916(n+1)))`
-/

namespace A104124.P2610442876905169050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A004525 (n + 1)) (A217586 (A241916 (n + 1)).toNat)

end

end A104124.P2610442876905169050

/-! ## A104124.P7999992364604862037

`and(A011264(n+1), A217586(A241916(n+1)))`
-/

namespace A104124.P7999992364604862037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A011264 (n + 1)) (A217586 (A241916 (n + 1)).toNat)

end

end A104124.P7999992364604862037

/-! ## A104124.P7651034608855057270

`and(A217434(n+1), A217586(A241916(n+1)))`
-/

namespace A104124.P7651034608855057270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A217434 (n + 1)) (A217586 (A241916 (n + 1)).toNat)

end

end A104124.P7651034608855057270

/-!
# A104125: A064413^2, that is each term in the EKG sequence is squared.

The programs for A104125, there is no canonical definition to state claims against.
-/

/-! ## A104125.P14740778411768406973

`Δ[A065057(n)]²`
-/

namespace A104125.P14740778411768406973
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065057 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) ^ 2

end

end A104125.P14740778411768406973

/-! ## A104125.P5680485600120500240

`A064413(n+1)²`
-/

namespace A104125.P5680485600120500240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064413 (n + 1) ^ 2

end

end A104125.P5680485600120500240

/-! ## A104125.P14209848614590108052

`(A065519(n+1)+1+n)²`
-/

namespace A104125.P14209848614590108052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A065519 (n + 1) + 1 + (n : ℤ)) ^ 2

end

end A104125.P14209848614590108052

/-! ## A104125.P6166635585328349243

`∑[A064426(A028310(n))]²`
-/

namespace A104125.P6166635585328349243
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064426 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2

end

end A104125.P6166635585328349243

/-! ## A104125.P15480462161342214266

`A064413(A000027(n+1))^2`
-/

namespace A104125.P15480462161342214266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064413 (A000027 (n + 1)).toNat ^ 2

end

end A104125.P15480462161342214266

/-! ## A104125.P5131433218220152047

`∑[A064426(A000007(n)+n)]²`
-/

namespace A104125.P5131433218220152047
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064426 (A000007 n + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2

end

end A104125.P5131433218220152047

/-! ## A104125.P1299844352026954668

`(A065057(n+1)-A065057(n))²`
-/

namespace A104125.P1299844352026954668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A065057 (n + 1) - A065057 n) ^ 2

end

end A104125.P1299844352026954668

/-! ## A104125.P4050579032962681028

`Δ[A065057(n)]*A064413(n+1)`
-/

namespace A104125.P4050579032962681028
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065057 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A064413 (n + 1)

end

end A104125.P4050579032962681028

/-! ## A104125.P7143138597647444837

`A064413(n+1)^(2%A004767(n))`
-/

namespace A104125.P7143138597647444837
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A064413 (n + 1) : ℚ) ^ (Int.tmod 2 (A004767 n) : ℤ)

end

end A104125.P7143138597647444837

/-! ## A104125.P5646458687474606036

`A064413(n+1)^A247780(gcd(n, n+1))`
-/

namespace A104125.P5646458687474606036
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A064413 (n + 1) : ℚ) ^ (A247780 (Nat.gcd n (n + 1)) : ℤ)

end

end A104125.P5646458687474606036

/-! ## A104125.P7872314157740632025

`A064413(A000027(n+1))*A064413(n+1)`
-/

namespace A104125.P7872314157740632025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064413 (A000027 (n + 1)).toNat * A064413 (n + 1)

end

end A104125.P7872314157740632025

/-! ## A104125.P8733117632955246702

`A064413(n+1)*A064413((n+1)%A002808(n+1))`
-/

namespace A104125.P8733117632955246702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064413 (n + 1) * A064413 (Int.tmod (n + 1 : ℤ) (A002808 (n + 1))).toNat

end

end A104125.P8733117632955246702

/-! ## A104125.P4570528480937266077

`A000007(n+1)+A064413(n+1)*A064413(n+1)`
-/

namespace A104125.P4570528480937266077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (n + 1) + A064413 (n + 1) * A064413 (n + 1)

end

end A104125.P4570528480937266077

/-! ## A104125.P928343811494181598

`(A064413(n+2)-A064426(n+1))*A064413(n+1)`
-/

namespace A104125.P928343811494181598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A064413 (n + 2) - A064426 (n + 1)) * A064413 (n + 1)

end

end A104125.P928343811494181598

/-! ## A104125.P13951403094484970855

`A064413(A008619(2*n+1))*A064413(n+1)`
-/

namespace A104125.P13951403094484970855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064413 (A008619 (2 * n + 1)).toNat * A064413 (n + 1)

end

end A104125.P13951403094484970855

/-! ## A104125.P11544181296361705084

`A064413(n+1)^A020639(A176895(2*n)+1+n)`
-/

namespace A104125.P11544181296361705084
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A064413 (n + 1) : ℚ) ^ (A020639 (A176895 (2 * n) + 1 + (n : ℤ)).toNat : ℤ)

end

end A104125.P11544181296361705084

/-! ## A104125.P11126714381540571949

`A064413(A004526(2*(n+1)))*A064413(n+1)`
-/

namespace A104125.P11126714381540571949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064413 (A004526 (2 * (n + 1))).toNat * A064413 (n + 1)

end

end A104125.P11126714381540571949

/-! ## A104125.P12395748216472284604

`A064413(n+1)^A000005(A104272(n+1))`
-/

namespace A104125.P12395748216472284604
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A064413 (n + 1) : ℚ) ^ (A000005 (A104272 (n + 1)).toNat : ℤ)

end

end A104125.P12395748216472284604

/-! ## A104125.P7901421438000425311

`A064413(n+1)^A000005(A273773(n+1))`
-/

namespace A104125.P7901421438000425311
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A064413 (n + 1) : ℚ) ^ (A000005 (A273773 (n + 1)).toNat : ℤ)

end

end A104125.P7901421438000425311

/-!
# A104126: a(n) = prime(n)^(prime(n)+1).

The programs for A104126, there is no canonical definition to state claims against.
-/

/-! ## A104126.P15022541328596214947

`record[∑{p}[n+2, #^(#+1)]]`
-/

namespace A104126.P15022541328596214947
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n), p ^ (p + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A104126.P15022541328596214947

/-! ## A104126.P566568823656006863

`p?[comp[n²]]^(p?[comp[n²]]+1)`
-/

namespace A104126.P566568823656006863
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f4 j ≠ x) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) ^ (f3 (SequenceMachineLib.nth (fun j => (f3 j).Prime) n) + 1)

end

end A104126.P566568823656006863

/-! ## A104126.P16224246811055476292

`record[A020639(n+2)^(n+3)]`
-/

namespace A104126.P16224246811055476292
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2) ^ (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A104126.P16224246811055476292

/-! ## A104126.P7092541093595458871

`∏{d}[A000040(n+1), #^(#+1)]`
-/

namespace A104126.P7092541093595458871
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n).natAbs, d ^ (d + 1)

end

end A104126.P7092541093595458871

/-! ## A104126.P13171841088916543734

`A007778(A000040(n+1))`
-/

namespace A104126.P13171841088916543734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007778 (A000040 (n + 1)).toNat

end

end A104126.P13171841088916543734

/-!
# A104127: a(n) = (1+prime(n))^prime(n).

The programs for A104127, the canonical program `A104127.P11741976163939502003` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A104127 has offset 1).

The definition of A104127 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A104127.P11741976163939502003

`(1+A000040(n+1))^A000040(n+1)`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A104127

/-- `(1+A000040(n+1))^A000040(n+1)` -/
def P11741976163939502003.Spec : Prop :=
  ∀ n, P11741976163939502003.a n = (A104127 (n + 1) : ℚ)

end A104127

/-! ## A104127.P9702783779028703182

`record[∑{p}[n+2, (#+1)^#]]`
-/

namespace A104127.P9702783779028703182
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n), (p + 1) ^ p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A104127.P9702783779028703182

namespace A104127

/-- `record[∑{p}[n+2, (#+1)^#]]` -/
def P9702783779028703182.Spec : Prop :=
  ∀ n, (P9702783779028703182.a n : ℤ) = A104127 (n + 1)

end A104127

/-! ## A104127.P4844069857044887650

`(p?[comp[n²]]+1)^p?[comp[n²]]`
-/

namespace A104127.P4844069857044887650
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f4 j ≠ x) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) + 1) ^ f3 (SequenceMachineLib.nth (fun j => (f3 j).Prime) n)

end

end A104127.P4844069857044887650

namespace A104127

/-- `(p?[comp[n²]]+1)^p?[comp[n²]]` -/
def P4844069857044887650.Spec : Prop :=
  ∀ n, (P4844069857044887650.a n : ℤ) = A104127 (n + 1)

end A104127

/-! ## A104127.P8694079206288833528

`A137664(n+1)+1`
-/

namespace A104127.P8694079206288833528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137664 (n + 1) + 1

end

end A104127.P8694079206288833528

namespace A104127

/-- `A137664(n+1)+1` -/
def P8694079206288833528.Spec : Prop :=
  ∀ n, P8694079206288833528.a n = A104127 (n + 1)

end A104127

/-! ## A104127.P5594236996383486998

`A077385(A060800(n+1))`
-/

namespace A104127.P5594236996383486998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077385 (A060800 (n + 1)).toNat

end

end A104127.P5594236996383486998

namespace A104127

/-- `A077385(A060800(n+1))` -/
def P5594236996383486998.Spec : Prop :=
  ∀ n, P5594236996383486998.a n = A104127 (n + 1)

end A104127

/-!
# A104128: a(n) = p + p^(p+1), where p = prime(n).

The programs for A104128, there is no canonical definition to state claims against.
-/

/-! ## A104128.P7921980219623975117

`A000040(n+1)+A104126(n+1)`
-/

namespace A104128.P7921980219623975117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) + A104126 (n + 1)

end

end A104128.P7921980219623975117

/-! ## A104128.P7977341405727720138

`record[A351750(n+2)]`
-/

namespace A104128.P7977341405727720138
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351750 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A104128.P7977341405727720138

/-! ## A104128.P16209460907502521535

`record[A020639(n+2)^(n+3)+n+2]`
-/

namespace A104128.P16209460907502521535
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2) ^ (n + 3) + (n + 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A104128.P16209460907502521535

/-! ## A104128.P286887257061236980

`A321295(A000040(n+1))`
-/

namespace A104128.P286887257061236980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321295 (A000040 (n + 1)).toNat

end

end A104128.P286887257061236980

/-!
# A104129: Integers of the form p^(p-1)+p where p is prime.

The programs for A104129, there is no canonical definition to state claims against.
-/

/-! ## A104129.P7128061374637386579

`record[A014963(n+2)^(n+1)+n+2]`
-/

namespace A104129.P7128061374637386579
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2) ^ (n + 1) + (n + 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A104129.P7128061374637386579

/-! ## A104129.P4716562187048840203

`record[A020639(n+2)^(n+1)+n+2]`
-/

namespace A104129.P4716562187048840203
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2) ^ (n + 1) + (n + 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A104129.P4716562187048840203

/-! ## A104129.P8000182707586442767

`A172165(A000040(n+1))`
-/

namespace A104129.P8000182707586442767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172165 (A000040 (n + 1)).toNat

end

end A104129.P8000182707586442767

/-! ## A104129.P11251719268439007204

`A036878(n+1)+A000040(n+1)`
-/

namespace A104129.P11251719268439007204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036878 (n + 1) + A000040 (n + 1)

end

end A104129.P11251719268439007204

/-! ## A104129.P9272151400351796038

`(A130614(n+1)+1)*A000040(n+1)`
-/

namespace A104129.P9272151400351796038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A130614 (n + 1) + 1) * A000040 (n + 1)

end

end A104129.P9272151400351796038

/-!
# A104130: Numbers n such that n33 is prime and n is a multiple of ten.

The programs for A104130, the canonical program `A104130.P14073346175180825314` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A104130 has offset 1).

The definition of A104130 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 992 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A104130.P14073346175180825314

`∩[A101472(n+1), A008592(n)]`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A104130

/-- `∩[A101472(n+1), A008592(n)]` -/
def P14073346175180825314.Spec : Prop :=
  ∀ n, (P14073346175180825314.a n : ℤ) = A104130 (n + 1)

theorem P14073346175180825314.correct : P14073346175180825314.Spec := by
  intro n
  simp only [A104130, Nat.add_sub_cancel]

end A104130

/-! ## A104130.P10062572744816344879

`∩[A101472(n+1), A370532(n+1)]`
-/

namespace A104130.P10062572744816344879
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101472 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370532 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A104130.P10062572744816344879

namespace A104130

/-- `∩[A101472(n+1), A370532(n+1)]` -/
def P10062572744816344879.Spec : Prop :=
  ∀ n, (P10062572744816344879.a n : ℤ) = A104130 (n + 1)

end A104130

/-! ## A104130.P9099170928314399555

`∩[A101472(n+1), A396948(n+1)]`
-/

namespace A104130.P9099170928314399555
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101472 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A396948 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A104130.P9099170928314399555

namespace A104130

/-- `∩[A101472(n+1), A396948(n+1)]` -/
def P9099170928314399555.Spec : Prop :=
  ∀ n, (P9099170928314399555.a n : ℤ) = A104130 (n + 1)

end A104130

/-! ## A104130.P6036893082467895336

`∩[2*A184418(2*n), A101472(n+2)]`
-/

namespace A104130.P6036893082467895336
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A184418 (2 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101472 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A104130.P6036893082467895336

namespace A104130

/-- `∩[2*A184418(2*n), A101472(n+2)]` -/
def P6036893082467895336.Spec : Prop :=
  ∀ n, (P6036893082467895336.a n : ℤ) = A104130 (n + 1)

end A104130

/-! ## A104130.P4790084999017485363

`∩[A184418(4*n), A101472(n+1)]`
-/

namespace A104130.P4790084999017485363
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184418 (4 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101472 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A104130.P4790084999017485363

namespace A104130

/-- `∩[A184418(4*n), A101472(n+1)]` -/
def P4790084999017485363.Spec : Prop :=
  ∀ n, (P4790084999017485363.a n : ℤ) = A104130 (n + 1)

end A104130

/-! ## A104130.P11779168032974261698

`∩[A101472(n+1), A315257(n)]`
-/

namespace A104130.P11779168032974261698
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101472 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315257 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A104130.P11779168032974261698

namespace A104130

/-- `∩[A101472(n+1), A315257(n)]` -/
def P11779168032974261698.Spec : Prop :=
  ∀ n, (P11779168032974261698.a n : ℤ) = A104130 (n + 1)

end A104130

/-!
# A104131: 

The programs for A104131, there is no canonical definition to state claims against.
-/

/-! ## A104131.P12718247373681911077

`A006450(n+1)^A006450(n+1)`
-/

namespace A104131.P12718247373681911077
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A006450 (n + 1) : ℚ) ^ (A006450 (n + 1) : ℤ)

end

end A104131.P12718247373681911077

/-!
# A104132: 

The programs for A104132, there is no canonical definition to state claims against.
-/

/-! ## A104132.P9864570720141838796

`A006486(A000040(A000040(n+1)))`
-/

namespace A104132.P9864570720141838796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006486 (A000040 (A000040 (n + 1)).toNat).toNat

end

end A104132.P9864570720141838796

/-! ## A104132.P1785227636980035588

`A214812(abs(A011730(n)-A000040(n+1)))`
-/

namespace A104132.P1785227636980035588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214812 |A011730 n - A000040 (n + 1)|.toNat

end

end A104132.P1785227636980035588

/-! ## A104132.P3882205838951741520

`A214812(abs(A011731(n)-A000040(n+1)))`
-/

namespace A104132.P3882205838951741520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214812 |A011731 n - A000040 (n + 1)|.toNat

end

end A104132.P3882205838951741520

/-!
# A104133: Coefficient of x^(3n+1)/(3n+1)! in the Maclaurin expansion of the Dixon elliptic function sm(x,0).

The programs for A104133, there is no canonical definition to state claims against.
-/

/-! ## A104133.P1446876093431541321

`A033999(n)*A357540(∑[n])`
-/

namespace A104133.P1446876093431541321
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A357540 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A104133.P1446876093431541321

/-! ## A104133.P16600880116323992232

`A357540(round((2*n+1)²/8))/A009531(2*n+1)`
-/

namespace A104133.P16600880116323992232
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A357540 (SequenceMachineLib.roundAway (((2 * n + 1) ^ 2 : ℚ) / 8)).toNat : ℚ) / (A009531 (2 * n + 1) : ℚ)

end

end A104133.P16600880116323992232

/-!
# A104135: a(n) = floor(sqrt(2*Pi*n)).

The programs for A104135, the canonical program `A104135.P2069996629256495722` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A104135 has offset 1).

The definition of A104135 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A104135.P2069996629256495722

`floor(sqrt(2*π*(n+1)))`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A104135

/-- `floor(sqrt(2*π*(n+1)))` -/
def P2069996629256495722.Spec : Prop :=
  ∀ n, P2069996629256495722.a n = A104135 (n + 1)

theorem P2069996629256495722.correct : P2069996629256495722.Spec := by
  intro n
  simp only [A104135, Nat.add_sub_cancel]

end A104135

/-! ## A104135.P5228529389652755949

`A104136(n+1)-1`
-/

namespace A104135.P5228529389652755949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104136 (n + 1) - 1

end

end A104135.P5228529389652755949

namespace A104135

/-- `A104136(n+1)-1` -/
def P5228529389652755949.Spec : Prop :=
  ∀ n, P5228529389652755949.a n = A104135 (n + 1)

end A104135

/-! ## A104135.P15300216100448051410

`ceil(sqrt(A022844(2*(n+1))+1))-1`
-/

namespace A104135.P15300216100448051410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (A022844 (2 * (n + 1)) + 1 : ℝ)⌉ - 1

end

end A104135.P15300216100448051410

namespace A104135

/-- `ceil(sqrt(A022844(2*(n+1))+1))-1` -/
def P15300216100448051410.Spec : Prop :=
  ∀ n, P15300216100448051410.a n = A104135 (n + 1)

end A104135

/-! ## A104135.P539970178571949267

`ceil(sqrt(A121381(2*(n+1))))-1`
-/

namespace A104135.P539970178571949267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (A121381 (2 * (n + 1)) : ℝ)⌉ - 1

end

end A104135.P539970178571949267

namespace A104135

/-- `ceil(sqrt(A121381(2*(n+1))))-1` -/
def P539970178571949267.Spec : Prop :=
  ∀ n, P539970178571949267.a n = A104135 (n + 1)

end A104135

/-! ## A104135.P6802194834447627618

`A000196(A038130(n+1))`
-/

namespace A104135.P6802194834447627618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A038130 (n + 1)).toNat

end

end A104135.P6802194834447627618

namespace A104135

/-- `A000196(A038130(n+1))` -/
def P6802194834447627618.Spec : Prop :=
  ∀ n, P6802194834447627618.a n = A104135 (n + 1)

end A104135

/-! ## A104135.P5554077271102592509

`A000196(A246295(n+2))`
-/

namespace A104135.P5554077271102592509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A246295 (n + 2)).toNat

end

end A104135.P5554077271102592509

namespace A104135

/-- `A000196(A246295(n+2))` -/
def P5554077271102592509.Spec : Prop :=
  ∀ n, P5554077271102592509.a n = A104135 (n + 1)

end A104135

/-! ## A104135.P330534576709109160

`A000196(A246296(n+1)+1)`
-/

namespace A104135.P330534576709109160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A246296 (n + 1) + 1).toNat

end

end A104135.P330534576709109160

namespace A104135

/-- `A000196(A246296(n+1)+1)` -/
def P330534576709109160.Spec : Prop :=
  ∀ n, P330534576709109160.a n = A104135 (n + 1)

end A104135

/-! ## A104135.P5881431608988405951

`A000196(A004082(n+2)-1)`
-/

namespace A104135.P5881431608988405951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A004082 (n + 2) - 1).toNat

end

end A104135.P5881431608988405951

namespace A104135

/-- `A000196(A004082(n+2)-1)` -/
def P5881431608988405951.Spec : Prop :=
  ∀ n, P5881431608988405951.a n = A104135 (n + 1)

end A104135

/-! ## A104135.P4813868357904624505

`A000196(A246294(n+2)-1)`
-/

namespace A104135.P4813868357904624505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A246294 (n + 2) - 1).toNat

end

end A104135.P4813868357904624505

namespace A104135

/-- `A000196(A246294(n+2)-1)` -/
def P4813868357904624505.Spec : Prop :=
  ∀ n, P4813868357904624505.a n = A104135 (n + 1)

end A104135

/-! ## A104135.P5408151216510443968

`A000267(A292987(n+1))`
-/

namespace A104135.P5408151216510443968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000267 (A292987 (n + 1)).toNat

end

end A104135.P5408151216510443968

namespace A104135

/-- `A000267(A292987(n+1))` -/
def P5408151216510443968.Spec : Prop :=
  ∀ n, P5408151216510443968.a n = A104135 (n + 1)

end A104135

/-!
# A104136: a(n) = ceiling(sqrt(2*Pi*n)).

The programs for A104136, the canonical program `A104136.P7909773224878822051` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A104136 has offset 1).

The definition of A104136 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A104136.P1942627135217170267

`ceil(sqrt(2*π*(n+1)))`
-/

namespace A104136.P1942627135217170267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (2 * (Real.pi * (n + 1 : ℝ)))⌉

end

end A104136.P1942627135217170267

namespace A104136

/-- `ceil(sqrt(2*π*(n+1)))` -/
def P1942627135217170267.Spec : Prop :=
  ∀ n, P1942627135217170267.a n = A104136 (n + 1)

end A104136

/-! ## A104136.P7909773224878822051

`A104135(n+1)+1`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A104136

/-- `A104135(n+1)+1` -/
def P7909773224878822051.Spec : Prop :=
  ∀ n, P7909773224878822051.a n = A104136 (n + 1)

theorem P7909773224878822051.correct : P7909773224878822051.Spec := by
  intro n
  simp only [A104136, Nat.add_sub_cancel]

end A104136

/-! ## A104136.P2297033097604454723

`A020725(A104135(n+1))`
-/

namespace A104136.P2297033097604454723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (A104135 (n + 1)).toNat

end

end A104136.P2297033097604454723

namespace A104136

/-- `A020725(A104135(n+1))` -/
def P2297033097604454723.Spec : Prop :=
  ∀ n, P2297033097604454723.a n = A104136 (n + 1)

end A104136

/-! ## A104136.P18004056147120185580

`A288120(A007814(n+1))+floor(sqrt(2*π*(n+1)))`
-/

namespace A104136.P18004056147120185580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288120 (A007814 (n + 1)).toNat + ⌊Real.sqrt (2 * (Real.pi * (n + 1 : ℝ)))⌋

end

end A104136.P18004056147120185580

namespace A104136

/-- `A288120(A007814(n+1))+floor(sqrt(2*π*(n+1)))` -/
def P18004056147120185580.Spec : Prop :=
  ∀ n, P18004056147120185580.a n = A104136 (n + 1)

end A104136

/-! ## A104136.P12055220211750161253

`floor(sqrt(A038130(n+1)))+1`
-/

namespace A104136.P12055220211750161253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A038130 (n + 1)) + 1

end

end A104136.P12055220211750161253

namespace A104136

/-- `floor(sqrt(A038130(n+1)))+1` -/
def P12055220211750161253.Spec : Prop :=
  ∀ n, P12055220211750161253.a n = A104136 (n + 1)

end A104136

/-! ## A104136.P14287785046958578765

`A003059(A004082(n+2))`
-/

namespace A104136.P14287785046958578765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003059 (A004082 (n + 2)).toNat

end

end A104136.P14287785046958578765

namespace A104136

/-- `A003059(A004082(n+2))` -/
def P14287785046958578765.Spec : Prop :=
  ∀ n, P14287785046958578765.a n = A104136 (n + 1)

end A104136

/-! ## A104136.P14529099992710427122

`A003059(A246294(n+2))`
-/

namespace A104136.P14529099992710427122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003059 (A246294 (n + 2)).toNat

end

end A104136.P14529099992710427122

namespace A104136

/-- `A003059(A246294(n+2))` -/
def P14529099992710427122.Spec : Prop :=
  ∀ n, P14529099992710427122.a n = A104136 (n + 1)

end A104136

/-! ## A104136.P1251195736482929708

`A000196(A038130(n+1))+1`
-/

namespace A104136.P1251195736482929708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A038130 (n + 1)).toNat + 1

end

end A104136.P1251195736482929708

namespace A104136

/-- `A000196(A038130(n+1))+1` -/
def P1251195736482929708.Spec : Prop :=
  ∀ n, P1251195736482929708.a n = A104136 (n + 1)

end A104136

/-! ## A104136.P6013374955834507225

`A000196(A246295(n+2))+1`
-/

namespace A104136.P6013374955834507225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A246295 (n + 2)).toNat + 1

end

end A104136.P6013374955834507225

namespace A104136

/-- `A000196(A246295(n+2))+1` -/
def P6013374955834507225.Spec : Prop :=
  ∀ n, P6013374955834507225.a n = A104136 (n + 1)

end A104136

/-! ## A104136.P16634245210150947139

`A000196(A246296(n+1)+1)+1`
-/

namespace A104136.P16634245210150947139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A246296 (n + 1) + 1).toNat + 1

end

end A104136.P16634245210150947139

namespace A104136

/-- `A000196(A246296(n+1)+1)+1` -/
def P16634245210150947139.Spec : Prop :=
  ∀ n, P16634245210150947139.a n = A104136 (n + 1)

end A104136

/-! ## A104136.P10963255157075460607

`A000196(A004082(n+2)-1)+1`
-/

namespace A104136.P10963255157075460607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A004082 (n + 2) - 1).toNat + 1

end

end A104136.P10963255157075460607

namespace A104136

/-- `A000196(A004082(n+2)-1)+1` -/
def P10963255157075460607.Spec : Prop :=
  ∀ n, P10963255157075460607.a n = A104136 (n + 1)

end A104136

/-! ## A104136.P4561674153930975796

`A000267(A292987(n+1))+1`
-/

namespace A104136.P4561674153930975796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000267 (A292987 (n + 1)).toNat + 1

end

end A104136.P4561674153930975796

namespace A104136

/-- `A000267(A292987(n+1))+1` -/
def P4561674153930975796.Spec : Prop :=
  ∀ n, P4561674153930975796.a n = A104136 (n + 1)

end A104136

/-!
# A104137: Number of distinct necklaces with p beads of two possible colors, allowing turning over, p being a prime greater than 2.

The programs for A104137, there is no canonical definition to state claims against.
-/

/-! ## A104137.P5136487355684938973

`A007663(n+2)+A061285(n+2)+1`
-/

namespace A104137.P5136487355684938973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007663 (n + 2) + A061285 (n + 2) + 1

end

end A104137.P5136487355684938973

/-! ## A104137.P9649408896203355773

`A000029(p?[Δ[n²]])`
-/

namespace A104137.P9649408896203355773
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℤ) - (f2 n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000029 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A104137.P9649408896203355773

/-! ## A104137.P1477395160090456471

`A000029(A065091(n+1))`
-/

namespace A104137.P1477395160090456471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000029 (A065091 (n + 1)).toNat

end

end A104137.P1477395160090456471

/-! ## A104137.P18183781814406919046

`A000029(A000040(n+2))`
-/

namespace A104137.P18183781814406919046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000029 (A000040 (n + 2)).toNat

end

end A104137.P18183781814406919046

/-! ## A104137.P2524236392402488047

`A000029(A006005(n+2))`
-/

namespace A104137.P2524236392402488047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000029 (A006005 (n + 2)).toNat

end

end A104137.P2524236392402488047

/-!
# A104138: Smallest prime followed by n or more composites.

The programs for A104138, there is no canonical definition to state claims against.
-/

/-! ## A104138.P3656520934291125547

`A100964(A008619(n))-A000007(n)`
-/

namespace A104138.P3656520934291125547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100964 (A008619 n).toNat - A000007 n

end

end A104138.P3656520934291125547

/-! ## A104138.P12866371538390179707

`A030296(A109613(n))-A054977(n)`
-/

namespace A104138.P12866371538390179707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030296 (A109613 n).toNat - A054977 n

end

end A104138.P12866371538390179707

/-! ## A104138.P17498485671900746029

`A030296(A109613(n))-(A000007(n)+1)`
-/

namespace A104138.P17498485671900746029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030296 (A109613 n).toNat - (A000007 n + 1)

end

end A104138.P17498485671900746029

/-! ## A104138.P5558644192590888678

`A100964(A008621(2*n))-A000007(n)`
-/

namespace A104138.P5558644192590888678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100964 (A008621 (2 * n)).toNat - A000007 n

end

end A104138.P5558644192590888678

/-! ## A104138.P15722608791221256698

`A030296(A000007(n)+n)-(A000007(n)+1)`
-/

namespace A104138.P15722608791221256698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030296 (A000007 n + (n : ℤ)).toNat - (A000007 n + 1)

end

end A104138.P15722608791221256698

/-! ## A104138.P5917651916738279615

`A030296(A109613(n))-A014963(A100484(n+1))`
-/

namespace A104138.P5917651916738279615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030296 (A109613 n).toNat - A014963 (A100484 (n + 1)).toNat

end

end A104138.P5917651916738279615

/-! ## A104138.P17464215602506443139

`A075741(n+1)-(n+1)`
-/

namespace A104138.P17464215602506443139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075741 (n + 1) - (n + 1 : ℤ)

end

end A104138.P17464215602506443139

/-! ## A104138.P5749341805274355967

`A030296(A109613(n))-A014963(A014574(n+1))`
-/

namespace A104138.P5749341805274355967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030296 (A109613 n).toNat - A014963 (A014574 (n + 1)).toNat

end

end A104138.P5749341805274355967

/-! ## A104138.P15730570009386960056

`A030296(A109613(n))-A014963(A001359(n+1)+1)`
-/

namespace A104138.P15730570009386960056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030296 (A109613 n).toNat - A014963 (A001359 (n + 1) + 1).toNat

end

end A104138.P15730570009386960056

/-! ## A104138.P555384345460189772

`A001222(a(n-1))*A100964(A008619(n))` with `a(0)=2`
-/

namespace A104138.P555384345460189772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A001222 (a (n - 1)).toNat * A100964 (A008619 n).toNat

end

end A104138.P555384345460189772

/-!
# A104139: Decimal expansion of log_10(9).

The programs for A104139, there is no canonical definition to state claims against.
-/

/-! ## A104139.P15919255204703998783

`9-A104140(n)`
-/

namespace A104139.P15919255204703998783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 - A104140 n

end

end A104139.P15919255204703998783

/-!
# A104140: Decimal expansion of 1 - log_10(9).

The programs for A104140, there is no canonical definition to state claims against.
-/

/-! ## A104140.P9952497393385422709

`9-A104139(n)`
-/

namespace A104140.P9952497393385422709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 - A104139 n

end

end A104140.P9952497393385422709

/-!
# A104144: a(n) = Sum_{k=1..9} a(n-k); a(8) = 1, a(n) = 0 for n < 8.

The programs for A104144, the canonical program `A104144.P15865153976698881542` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A104144 has offset 0).

The definition of A104144 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 338 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A104144.P749802539781596590

`∑[A251746(abs(1-n))]`
-/

namespace A104144.P749802539781596590
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251746 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A104144.P749802539781596590

namespace A104144

/-- `∑[A251746(abs(1-n))]` -/
def P749802539781596590.Spec : Prop :=
  ∀ n, P749802539781596590.a n = A104144 n

end A104144

/-! ## A104144.P8804099809100943811

`A251752(n+1)-a(n-1)` with `a(0)=0`
-/

namespace A104144.P8804099809100943811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A251752 (n + 1) - a (n - 1)

end

end A104144.P8804099809100943811

namespace A104144

/-- `A251752(n+1)-a(n-1)` -/
def P8804099809100943811.Spec : Prop :=
  ∀ n, P8804099809100943811.a n = A104144 n

end A104144

/-! ## A104144.P14198683354436389870

`∑[A251746(n)]-A251746(n)`
-/

namespace A104144.P14198683354436389870
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251746 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A251746 n

end

end A104144.P14198683354436389870

namespace A104144

/-- `∑[A251746(n)]-A251746(n)` -/
def P14198683354436389870.Spec : Prop :=
  ∀ n, P14198683354436389870.a n = A104144 n

end A104144

/-! ## A104144.P13207885803406051854

`A251746(n+1)-A251747(n)`
-/

namespace A104144.P13207885803406051854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251746 (n + 1) - A251747 n

end

end A104144.P13207885803406051854

namespace A104144

/-- `A251746(n+1)-A251747(n)` -/
def P13207885803406051854.Spec : Prop :=
  ∀ n, P13207885803406051854.a n = A104144 n

end A104144

/-! ## A104144.P9135795929410724374

`A251747(n+1)-A251748(n)`
-/

namespace A104144.P9135795929410724374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251747 (n + 1) - A251748 n

end

end A104144.P9135795929410724374

namespace A104144

/-- `A251747(n+1)-A251748(n)` -/
def P9135795929410724374.Spec : Prop :=
  ∀ n, P9135795929410724374.a n = A104144 n

end A104144

/-! ## A104144.P10881217362617894712

`A251748(n+1)-A251749(n)`
-/

namespace A104144.P10881217362617894712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251748 (n + 1) - A251749 n

end

end A104144.P10881217362617894712

namespace A104144

/-- `A251748(n+1)-A251749(n)` -/
def P10881217362617894712.Spec : Prop :=
  ∀ n, P10881217362617894712.a n = A104144 n

end A104144

/-! ## A104144.P16563397796504151203

`A251749(n+1)-A251750(n)`
-/

namespace A104144.P16563397796504151203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251749 (n + 1) - A251750 n

end

end A104144.P16563397796504151203

namespace A104144

/-- `A251749(n+1)-A251750(n)` -/
def P16563397796504151203.Spec : Prop :=
  ∀ n, P16563397796504151203.a n = A104144 n

end A104144

/-! ## A104144.P1586172942683365206

`A251750(n+1)-A251751(n)`
-/

namespace A104144.P1586172942683365206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251750 (n + 1) - A251751 n

end

end A104144.P1586172942683365206

namespace A104144

/-- `A251750(n+1)-A251751(n)` -/
def P1586172942683365206.Spec : Prop :=
  ∀ n, P1586172942683365206.a n = A104144 n

end A104144

/-! ## A104144.P9809726780900940381

`A251751(n+1)-A251752(n)`
-/

namespace A104144.P9809726780900940381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251751 (n + 1) - A251752 n

end

end A104144.P9809726780900940381

namespace A104144

/-- `A251751(n+1)-A251752(n)` -/
def P9809726780900940381.Spec : Prop :=
  ∀ n, P9809726780900940381.a n = A104144 n

end A104144

/-! ## A104144.P15865153976698881542

`Δ[A127193(n+1)/8]`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A104144

/-- `Δ[A127193(n+1)/8]` -/
def P15865153976698881542.Spec : Prop :=
  ∀ n, P15865153976698881542.a n = (A104144 n : ℚ)

end A104144

/-!
# A104145: a(1) = 1; let A(k) = sequence of first 2^(k-1) terms; then A(k+1) is concatenation of A(k) and (A(k)-1) if a(k) is odd, or concatenation of A(k) and (A(k)+1) if a(k) is even.

The programs for A104145, the canonical program `A104145.P5989850272366258385` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A104145 has offset 1).

The definition of A104145 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A137412, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A104145.P5989850272366258385

`1-A137412(n+1)`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A104145

/-- `1-A137412(n+1)` -/
def P5989850272366258385.Spec : Prop :=
  ∀ n, P5989850272366258385.a n = A104145 (n + 1)

theorem P5989850272366258385.correct : P5989850272366258385.Spec := by
  intro n
  simp only [A104145, Nat.add_sub_cancel]

end A104145

/-! ## A104145.P15765992840986925419

`A325133(A094524(n+1))-A065359(xor(60, n))`
-/

namespace A104145.P15765992840986925419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325133 (A094524 (n + 1)).toNat - A065359 (Nat.xor 60 n)

end

end A104145.P15765992840986925419

namespace A104145

/-- `A325133(A094524(n+1))-A065359(xor(60, n))` -/
def P15765992840986925419.Spec : Prop :=
  ∀ n, P15765992840986925419.a n = A104145 (n + 1)

end A104145

/-! ## A104145.P6784541253438525695

`A131851(A000695(xor(67, n)))`
-/

namespace A104145.P6784541253438525695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131851 (A000695 (Nat.xor 67 n)).toNat

end

end A104145.P6784541253438525695

namespace A104145

/-- `A131851(A000695(xor(67, n)))` -/
def P6784541253438525695.Spec : Prop :=
  ∀ n, P6784541253438525695.a n = A104145 (n + 1)

end A104145

/-! ## A104145.P6492247555398236565

`A325133(A094524(2*(n+1)))-(A000120(xor(22, n))-3)`
-/

namespace A104145.P6492247555398236565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325133 (A094524 (2 * (n + 1))).toNat - (A000120 (Nat.xor 22 n) - 3)

end

end A104145.P6492247555398236565

namespace A104145

/-- `A325133(A094524(2*(n+1)))-(A000120(xor(22, n))-3)` -/
def P6492247555398236565.Spec : Prop :=
  ∀ n, P6492247555398236565.a n = A104145 (n + 1)

end A104145

/-! ## A104145.P796253824526383203

`A325133(A094524(2*(n+1)))-(A000120(A004463(n))-3)`
-/

namespace A104145.P796253824526383203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325133 (A094524 (2 * (n + 1))).toNat - (A000120 (A004463 n).toNat - 3)

end

end A104145.P796253824526383203

namespace A104145

/-- `A325133(A094524(2*(n+1)))-(A000120(A004463(n))-3)` -/
def P796253824526383203.Spec : Prop :=
  ∀ n, P796253824526383203.a n = A104145 (n + 1)

end A104145

/-! ## A104145.P11188920238343638138

`A066247(A363169(3*n+4))-A065359(xor(60, n))`
-/

namespace A104145.P11188920238343638138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066247 (A363169 (3 * n + 4)).toNat - A065359 (Nat.xor 60 n)

end

end A104145.P11188920238343638138

namespace A104145

/-- `A066247(A363169(3*n+4))-A065359(xor(60, n))` -/
def P11188920238343638138.Spec : Prop :=
  ∀ n, P11188920238343638138.a n = A104145 (n + 1)

end A104145

/-! ## A104145.P2039263843450162534

`A066247(A363169(3*n+4))-(A000120(xor(22, n))-3)`
-/

namespace A104145.P2039263843450162534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066247 (A363169 (3 * n + 4)).toNat - (A000120 (Nat.xor 22 n) - 3)

end

end A104145.P2039263843450162534

namespace A104145

/-- `A066247(A363169(3*n+4))-(A000120(xor(22, n))-3)` -/
def P2039263843450162534.Spec : Prop :=
  ∀ n, P2039263843450162534.a n = A104145 (n + 1)

end A104145

/-! ## A104145.P5888475574002740340

`A066247(A363169(3*n+4))-(A000120(A004463(n))-3)`
-/

namespace A104145.P5888475574002740340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066247 (A363169 (3 * n + 4)).toNat - (A000120 (A004463 n).toNat - 3)

end

end A104145.P5888475574002740340

namespace A104145

/-- `A066247(A363169(3*n+4))-(A000120(A004463(n))-3)` -/
def P5888475574002740340.Spec : Prop :=
  ∀ n, P5888475574002740340.a n = A104145 (n + 1)

end A104145

/-! ## A104145.P16495096947566622115

`1-A065359(A380009(n))`
-/

namespace A104145.P16495096947566622115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A065359 (A380009 n).toNat

end

end A104145.P16495096947566622115

namespace A104145

/-- `1-A065359(A380009(n))` -/
def P16495096947566622115.Spec : Prop :=
  ∀ n, P16495096947566622115.a n = A104145 (n + 1)

end A104145

/-! ## A104145.P8083878239564521256

`A067513(A254101(n+1))-A065359(xor(60, n))`
-/

namespace A104145.P8083878239564521256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067513 (A254101 (n + 1)).toNat - A065359 (Nat.xor 60 n)

end

end A104145.P8083878239564521256

namespace A104145

/-- `A067513(A254101(n+1))-A065359(xor(60, n))` -/
def P8083878239564521256.Spec : Prop :=
  ∀ n, P8083878239564521256.a n = A104145 (n + 1)

end A104145

/-!
# A104146: Smallest k>0 such that n*10^k + k is prime.

The programs for A104146, there is no canonical definition to state claims against.
-/

/-! ## A104146.P1673537034848000750

`A180172(A056598(n+1))`
-/

namespace A104146.P1673537034848000750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180172 (A056598 (n + 1)).toNat

end

end A104146.P1673537034848000750

/-! ## A104146.P14671137909164317706

`A355815(A183519(n+1))`
-/

namespace A104146.P14671137909164317706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355815 (A183519 (n + 1)).toNat

end

end A104146.P14671137909164317706

/-! ## A104146.P9520948433342911545

`A280489(A127983(n+2))`
-/

namespace A104146.P9520948433342911545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280489 (A127983 (n + 2)).toNat

end

end A104146.P9520948433342911545

/-! ## A104146.P2314491550051372169

`A324198(∑[∑[A200754(n)]])`
-/

namespace A104146.P2314491550051372169
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200754 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324198 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A104146.P2314491550051372169

/-!
# A104147: Number of cubes <= n-th prime.

The programs for A104147, the canonical program `A104147.P7291418644979591770` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A104147 has offset 0).

The definition of A104147 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1001 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A104147.P9640135234557043114

`floor(root(p?[xor(1, n)], 3))+1`
-/

namespace A104147.P9640135234557043114
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) : ℝ) ^ (1 / (3 : ℝ))⌋ + 1

end

end A104147.P9640135234557043114

namespace A104147

/-- `floor(root(p?[xor(1, n)], 3))+1` -/
def P9640135234557043114.Spec : Prop :=
  ∀ n, P9640135234557043114.a n = A104147 n

end A104147

/-! ## A104147.P7291418644979591770

`A263846(n+1)+1`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A104147

/-- `A263846(n+1)+1` -/
def P7291418644979591770.Spec : Prop :=
  ∀ n, P7291418644979591770.a n = A104147 n

theorem P7291418644979591770.correct : P7291418644979591770.Spec := by
  intro n
  simp only [A104147]

end A104147

/-! ## A104147.P58694007873308738

`ceil(root(Δ[A007504(n)], 3))`
-/

namespace A104147.P58694007873308738
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(f1 (n + 1) - f1 n : ℝ) ^ (1 / (3 : ℝ))⌉

end

end A104147.P58694007873308738

namespace A104147

/-- `ceil(root(Δ[A007504(n)], 3))` -/
def P58694007873308738.Spec : Prop :=
  ∀ n, P58694007873308738.a n = A104147 n

end A104147

/-! ## A104147.P1210973848557238088

`ceil(root(A000040(n+1), 3))`
-/

namespace A104147.P1210973848557238088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A000040 (n + 1) : ℝ) ^ (1 / (3 : ℝ))⌉

end

end A104147.P1210973848557238088

namespace A104147

/-- `ceil(root(A000040(n+1), 3))` -/
def P1210973848557238088.Spec : Prop :=
  ∀ n, P1210973848557238088.a n = A104147 n

end A104147

/-! ## A104147.P9171151295049350324

`ceil(root(A008864(n+1), 3))`
-/

namespace A104147.P9171151295049350324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A008864 (n + 1) : ℝ) ^ (1 / (3 : ℝ))⌉

end

end A104147.P9171151295049350324

namespace A104147

/-- `ceil(root(A008864(n+1), 3))` -/
def P9171151295049350324.Spec : Prop :=
  ∀ n, P9171151295049350324.a n = A104147 n

end A104147

/-! ## A104147.P2944868498391933705

`ceil(root(A039915(n+1), 3))`
-/

namespace A104147.P2944868498391933705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A039915 (n + 1) : ℝ) ^ (1 / (3 : ℝ))⌉

end

end A104147.P2944868498391933705

namespace A104147

/-- `ceil(root(A039915(n+1), 3))` -/
def P2944868498391933705.Spec : Prop :=
  ∀ n, P2944868498391933705.a n = A104147 n

end A104147

/-! ## A104147.P2213591902015519831

`ceil(root(sqrt(A001248(n+1)), 3))`
-/

namespace A104147.P2213591902015519831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (A001248 (n + 1) : ℝ) ^ (1 / (3 : ℝ))⌉

end

end A104147.P2213591902015519831

namespace A104147

/-- `ceil(root(sqrt(A001248(n+1)), 3))` -/
def P2213591902015519831.Spec : Prop :=
  ∀ n, P2213591902015519831.a n = A104147 n

end A104147

/-! ## A104147.P4950216193553994160

`ceil(root(∑[A054541(n+1)], 3))`
-/

namespace A104147.P4950216193553994160
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054541 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℝ) ^ (1 / (3 : ℝ))⌉

end

end A104147.P4950216193553994160

namespace A104147

/-- `ceil(root(∑[A054541(n+1)], 3))` -/
def P4950216193553994160.Spec : Prop :=
  ∀ n, P4950216193553994160.a n = A104147 n

end A104147

/-! ## A104147.P4844400834358221360

`∑[char[A038098(n+1)]]+1`
-/

namespace A104147.P4844400834358221360
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038098 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A104147.P4844400834358221360

namespace A104147

/-- `∑[char[A038098(n+1)]]+1` -/
def P4844400834358221360.Spec : Prop :=
  ∀ n, (P4844400834358221360.a n : ℤ) = A104147 n

end A104147

/-! ## A104147.P3803936234761404676

`ceil(record[root(A006530(n+2), 3)])`
-/

namespace A104147.P3803936234761404676
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A006530 (n + 2) : ℝ) ^ (1 / (3 : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)⌉

end

end A104147.P3803936234761404676

namespace A104147

/-- `ceil(record[root(A006530(n+2), 3)])` -/
def P3803936234761404676.Spec : Prop :=
  ∀ n, P3803936234761404676.a n = A104147 n

end A104147

/-! ## A104147.P2848694248814918647

`ceil(record[root(A014963(n+2), 3)])`
-/

namespace A104147.P2848694248814918647
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A014963 (n + 2) : ℝ) ^ (1 / (3 : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)⌉

end

end A104147.P2848694248814918647

namespace A104147

/-- `ceil(record[root(A014963(n+2), 3)])` -/
def P2848694248814918647.Spec : Prop :=
  ∀ n, P2848694248814918647.a n = A104147 n

end A104147

/-! ## A104147.P13902049951729296381

`ceil(record[root(A020639(n+2), 3)])`
-/

namespace A104147.P13902049951729296381
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A020639 (n + 2) : ℝ) ^ (1 / (3 : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)⌉

end

end A104147.P13902049951729296381

namespace A104147

/-- `ceil(record[root(A020639(n+2), 3)])` -/
def P13902049951729296381.Spec : Prop :=
  ∀ n, P13902049951729296381.a n = A104147 n

end A104147

/-! ## A104147.P14968037741852617900

`ceil(root(A040976(n+1)+2, 3))`
-/

namespace A104147.P14968037741852617900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A040976 (n + 1) + 2 : ℝ) ^ (1 / (3 : ℝ))⌉

end

end A104147.P14968037741852617900

namespace A104147

/-- `ceil(root(A040976(n+1)+2, 3))` -/
def P14968037741852617900.Spec : Prop :=
  ∀ n, P14968037741852617900.a n = A104147 n

end A104147

/-! ## A104147.P16201034167433398756

`A134914(A000040(n+1))`
-/

namespace A104147.P16201034167433398756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134914 (A000040 (n + 1)).toNat

end

end A104147.P16201034167433398756

namespace A104147

/-- `A134914(A000040(n+1))` -/
def P16201034167433398756.Spec : Prop :=
  ∀ n, P16201034167433398756.a n = A104147 n

end A104147

/-! ## A104147.P2316381290924199653

`A134914(A008864(n+1))`
-/

namespace A104147.P2316381290924199653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134914 (A008864 (n + 1)).toNat

end

end A104147.P2316381290924199653

namespace A104147

/-- `A134914(A008864(n+1))` -/
def P2316381290924199653.Spec : Prop :=
  ∀ n, P2316381290924199653.a n = A104147 n

end A104147

/-! ## A104147.P7065865226398899810

`A134914(A014193(n+1))`
-/

namespace A104147.P7065865226398899810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134914 (A014193 (n + 1)).toNat

end

end A104147.P7065865226398899810

namespace A104147

/-- `A134914(A014193(n+1))` -/
def P7065865226398899810.Spec : Prop :=
  ∀ n, P7065865226398899810.a n = A104147 n

end A104147

/-! ## A104147.P10712764622845835370

`A134914(A014686(n+1))`
-/

namespace A104147.P10712764622845835370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134914 (A014686 (n + 1)).toNat

end

end A104147.P10712764622845835370

namespace A104147

/-- `A134914(A014686(n+1))` -/
def P10712764622845835370.Spec : Prop :=
  ∀ n, P10712764622845835370.a n = A104147 n

end A104147

/-! ## A104147.P8970404600681609851

`A134914(A028815(n+1))`
-/

namespace A104147.P8970404600681609851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134914 (A028815 (n + 1)).toNat

end

end A104147.P8970404600681609851

namespace A104147

/-- `A134914(A028815(n+1))` -/
def P8970404600681609851.Spec : Prop :=
  ∀ n, P8970404600681609851.a n = A104147 n

end A104147

/-! ## A104147.P9188003871932705578

`A134914(A039915(n+1))`
-/

namespace A104147.P9188003871932705578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134914 (A039915 (n + 1)).toNat

end

end A104147.P9188003871932705578

namespace A104147

/-- `A134914(A039915(n+1))` -/
def P9188003871932705578.Spec : Prop :=
  ∀ n, P9188003871932705578.a n = A104147 n

end A104147

/-! ## A104147.P17165113275617547320

`A134914(A076342(n+1))`
-/

namespace A104147.P17165113275617547320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134914 (A076342 (n + 1)).toNat

end

end A104147.P17165113275617547320

namespace A104147

/-- `A134914(A076342(n+1))` -/
def P17165113275617547320.Spec : Prop :=
  ∀ n, P17165113275617547320.a n = A104147 n

end A104147

/-!
# A104148: Difference between n^3 and largest m less than n^3, where m > 0 is either a prime or a square.

The programs for A104148, there is no canonical definition to state claims against.
-/

/-! ## A104148.P6929431365928550688

`gcd(A121844(n+2), A146558(n+1))`
-/

namespace A104148.P6929431365928550688
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A121844 (n + 2)) (A146558 (n + 1))

end

end A104148.P6929431365928550688

/-! ## A104148.P14913259011063916733

`A121844(n+2)/A032741(A192582(n+1))`
-/

namespace A104148.P14913259011063916733
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A121844 (n + 2) : ℚ) / (A032741 (A192582 (n + 1)).toNat : ℚ)

end

end A104148.P14913259011063916733

/-! ## A104148.P12039656168065461667

`A121844(n+2)/gcd(A192582(n+1), A243373(n+1))`
-/

namespace A104148.P12039656168065461667
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A121844 (n + 2) : ℚ) / (Int.gcd (A192582 (n + 1)) (A243373 (n + 1)) : ℚ)

end

end A104148.P12039656168065461667

/-! ## A104148.P676173675781288876

`A121844(n+2)/A014963(A243373(n+1))`
-/

namespace A104148.P676173675781288876
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A121844 (n + 2) : ℚ) / (A014963 (A243373 (n + 1)).toNat : ℚ)

end

end A104148.P676173675781288876

/-! ## A104148.P6244810666185824455

`A121844(n+2)/A050603(A004394(n+1))`
-/

namespace A104148.P6244810666185824455
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A121844 (n + 2) : ℚ) / (A050603 (A004394 (n + 1)).toNat : ℚ)

end

end A104148.P6244810666185824455

/-!
# A104149: Numbers k such that sigma(k+2) = sigma(k+1) + sigma(k).

The programs for A104149, there is no canonical definition to state claims against.
-/

/-! ## A104149.P8053172099657380133

`A076530(n+1)-1`
-/

namespace A104149.P8053172099657380133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076530 (n + 1) - 1

end

end A104149.P8053172099657380133

/-! ## A104149.P16657633686556126368

`A065900(n+1)-2`
-/

namespace A104149.P16657633686556126368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065900 (n + 1) - 2

end

end A104149.P16657633686556126368

/-! ## A104149.P16298198618298599680

`abs(1-A076530(Δ[n²]-n))`
-/

namespace A104149.P16298198618298599680
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - A076530 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) - (n : ℤ)).toNat|

end

end A104149.P16298198618298599680

/-! ## A104149.P4152741229300180612

`record[A076530(A126759(n))-1]`
-/

namespace A104149.P4152741229300180612
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076530 (A126759 n).toNat - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A104149.P4152741229300180612

/-! ## A104149.P85326311729394140

`record[A076530(A152271(n))-1]`
-/

namespace A104149.P85326311729394140
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076530 (A152271 n).toNat - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A104149.P85326311729394140

/-! ## A104149.P10140108375814885928

`A153881(n+2)+A076530(n+1)`
-/

namespace A104149.P10140108375814885928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153881 (n + 2) + A076530 (n + 1)

end

end A104149.P10140108375814885928

/-! ## A104149.P16758122938388599644

`A260196(n+2)+A076530(n+1)`
-/

namespace A104149.P16758122938388599644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260196 (n + 2) + A076530 (n + 1)

end

end A104149.P16758122938388599644

/-! ## A104149.P13475897237106107108

`xor(1, A076530(n+1)*A178334(n))`
-/

namespace A104149.P13475897237106107108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A076530 (n + 1) * A178334 n)

end

end A104149.P13475897237106107108

/-! ## A104149.P4260315537403489596

`(2*A076530(n+1))%A065900(n+1)`
-/

namespace A104149.P4260315537403489596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (2 * A076530 (n + 1)) (A065900 (n + 1))

end

end A104149.P4260315537403489596

/-! ## A104149.P4182584874254495776

`xor(A076530(n+1), A132106(C(2, n+2)))`
-/

namespace A104149.P4182584874254495776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A076530 (n + 1)) (A132106 (Nat.choose 2 (n + 2)))

end

end A104149.P4182584874254495776

/-! ## A104149.P14107590902878700783

`A001478(n+1)+A076530(n+1)+n`
-/

namespace A104149.P14107590902878700783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001478 (n + 1) + (A076530 (n + 1) + (n : ℤ))

end

end A104149.P14107590902878700783

/-! ## A104149.P17402756036519215013

`abs(A076530(n+1)+A062157(2*(n+1)))`
-/

namespace A104149.P17402756036519215013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A076530 (n + 1) + A062157 (2 * (n + 1))|

end

end A104149.P17402756036519215013

/-! ## A104149.P9841780219531150828

`A092673(A076565(n+1))+A076530(n+1)`
-/

namespace A104149.P9841780219531150828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092673 (A076565 (n + 1)).toNat + A076530 (n + 1)

end

end A104149.P9841780219531150828

/-! ## A104149.P7394516906466278468

`A092673(A076566(n+1))+A076530(n+1)`
-/

namespace A104149.P7394516906466278468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092673 (A076566 (n + 1)).toNat + A076530 (n + 1)

end

end A104149.P7394516906466278468

/-! ## A104149.P14839664321654969936

`A107393(A020639(n+2))+A076530(n+1)`
-/

namespace A104149.P14839664321654969936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107393 (A020639 (n + 2)).toNat + A076530 (n + 1)

end

end A104149.P14839664321654969936

/-! ## A104149.P15135752792875982724

`abs(A076530(n+1)+A008683(A001097(n+1)))`
-/

namespace A104149.P15135752792875982724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A076530 (n + 1) + A008683 (A001097 (n + 1)).toNat|

end

end A104149.P15135752792875982724

/-! ## A104149.P4997707253802911878

`A126124(A020639(2*(n+1)))+A065900(n+1)`
-/

namespace A104149.P4997707253802911878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126124 (A020639 (2 * (n + 1))).toNat + A065900 (n + 1)

end

end A104149.P4997707253802911878

/-! ## A104149.P15491329653837015990

`A128130(A263027(n+1)²)+A076530(n+1)`
-/

namespace A104149.P15491329653837015990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128130 (A263027 (n + 1) ^ 2).toNat + A076530 (n + 1)

end

end A104149.P15491329653837015990

/-!
# A104150: Shifted factorial numbers: a(0)=0, a(n) = (n-1)!.

The programs for A104150, there is no canonical definition to state claims against.
-/

/-! ## A104150.P16887854441790387638

`abs(1-n)!-floor(acot(n))`
-/

namespace A104150.P16887854441790387638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial |1 - (n : ℤ)|.toNat : ℤ) - ⌊SequenceMachineLib.acot (n : ℝ)⌋

end

end A104150.P16887854441790387638

/-! ## A104150.P10688687727724596862

`C(abs(1-n)!, ceil(acot(n)))`
-/

namespace A104150.P10688687727724596862
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (Nat.factorial |1 - (n : ℤ)|.toNat) ⌈SequenceMachineLib.acot (n : ℝ)⌉.toNat

end

end A104150.P10688687727724596862

/-! ## A104150.P1694800772888404390

`(n-1)*a(n-1)` with `a(0)=0, a(1)=1`
-/

namespace A104150.P1694800772888404390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  ((n : ℤ) - 1) * a (n - 1)

end

end A104150.P1694800772888404390

/-! ## A104150.P10549253409599554862

`(n-a(2%n))!` with `a(0)=0, a(1)=1, a(2)=1`
-/

namespace A104150.P10549253409599554862
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 1] fun n a =>
  Nat.factorial ((n : ℤ) - (a (2 % n) : ℤ)).toNat

end

end A104150.P10549253409599554862

/-! ## A104150.P8816385411229360688

`∑{d}[n, (n-1)!*C(#, n)]`
-/

namespace A104150.P8816385411229360688
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), Nat.factorial ((n : ℤ) - 1).toNat * Nat.choose d n

end

end A104150.P8816385411229360688

/-! ## A104150.P4225719724392162268

`lcm((n-1)!, a(n-1))` with `a(0)=0, a(1)=1`
-/

namespace A104150.P4225719724392162268
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n a =>
  Nat.lcm (Nat.factorial ((n : ℤ) - 1).toNat) (a (n - 1))

end

end A104150.P4225719724392162268

/-! ## A104150.P16810486329558388182

`abs(1-n)!-C(2, n+2)`
-/

namespace A104150.P16810486329558388182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial |1 - (n : ℤ)|.toNat : ℤ) - (Nat.choose 2 (n + 2) : ℤ)

end

end A104150.P16810486329558388182

/-! ## A104150.P10028032393916266210

`(or(-1, a(n-1))+n)!` with `a(0)=0`
-/

namespace A104150.P10028032393916266210
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  Nat.factorial (Int.lor (-1) (a (n - 1) : ℤ) + (n : ℤ)).toNat

end

end A104150.P10028032393916266210

/-! ## A104150.P4335790581483346738

`(n-and(1, a(n-1))!)!` with `a(0)=0`
-/

namespace A104150.P4335790581483346738
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  Nat.factorial ((n : ℤ) - (Nat.factorial (Nat.land 1 (a (n - 1))) : ℤ)).toNat

end

end A104150.P4335790581483346738

/-! ## A104150.P3647061305973663132

`(a(C(2, n+2))+n-1)!` with `a(0)=0`
-/

namespace A104150.P3647061305973663132
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  Nat.factorial ((a (Nat.choose 2 (n + 2)) : ℤ) + ((n : ℤ) - 1)).toNat

end

end A104150.P3647061305973663132

/-!
# A104151: Primes of the form 6^n-4^n+11.

The programs for A104151, there is no canonical definition to state claims against.
-/

/-! ## A104151.P16885868494727969254

`p?[6^n-4^n+11]`
-/

namespace A104151.P16885868494727969254
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (6 ^ n : ℤ) - (4 ^ n : ℤ) + 11

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A104151.P16885868494727969254

/-! ## A104151.P16321437194534737150

`A006530(6^n-4^n+11)`
-/

namespace A104151.P16321437194534737150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 ((6 ^ n : ℤ) - (4 ^ n : ℤ) + 11).toNat

end

end A104151.P16321437194534737150

/-! ## A104151.P9326760895894737634

`A020639(6^n-4^n+11)`
-/

namespace A104151.P9326760895894737634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 ((6 ^ n : ℤ) - (4 ^ n : ℤ) + 11).toNat

end

end A104151.P9326760895894737634

/-!
# A104152: Numbers n such that n77 is prime and n is a multiple of ten.

The programs for A104152, the canonical program `A104152.P12944910986790038608` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A104152 has offset 1).

The definition of A104152 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 995 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A104152.P12944910986790038608

`∩[10*n, A102611(n+5)]`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A104152

/-- `∩[10*n, A102611(n+5)]` -/
def P12944910986790038608.Spec : Prop :=
  ∀ n, (P12944910986790038608.a n : ℤ) = A104152 (n + 1)

theorem P12944910986790038608.correct : P12944910986790038608.Spec := by
  intro n
  simp only [A104152, Nat.add_sub_cancel]

end A104152

/-! ## A104152.P9437322598893486731

`∩[A102611(n+1), A008592(n)]`
-/

namespace A104152.P9437322598893486731
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102611 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008592 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A104152.P9437322598893486731

namespace A104152

/-- `∩[A102611(n+1), A008592(n)]` -/
def P9437322598893486731.Spec : Prop :=
  ∀ n, (P9437322598893486731.a n : ℤ) = A104152 (n + 1)

end A104152

/-! ## A104152.P14450304473879140981

`∩[A102611(n+1), A017377(n)+1]`
-/

namespace A104152.P14450304473879140981
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102611 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017377 n + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A104152.P14450304473879140981

namespace A104152

/-- `∩[A102611(n+1), A017377(n)+1]` -/
def P14450304473879140981.Spec : Prop :=
  ∀ n, (P14450304473879140981.a n : ℤ) = A104152 (n + 1)

end A104152

/-! ## A104152.P6087558569001431904

`∩[A102611(n+1), A017353(n)+3]`
-/

namespace A104152.P6087558569001431904
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102611 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017353 n + 3

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A104152.P6087558569001431904

namespace A104152

/-- `∩[A102611(n+1), A017353(n)+3]` -/
def P6087558569001431904.Spec : Prop :=
  ∀ n, (P6087558569001431904.a n : ℤ) = A104152 (n + 1)

end A104152

/-!
# A104153: Numbers n such that n99 is prime and n is a multiple of ten.

The programs for A104153, there is no canonical definition to state claims against.
-/

/-! ## A104153.P11493190822531573366

`∩[10*n, A105043(n+1)-1]`
-/

namespace A104153.P11493190822531573366
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10 * n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105043 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A104153.P11493190822531573366

/-! ## A104153.P14211871354267615676

`∩[A102703(n+1), A008592(n)]`
-/

namespace A104153.P14211871354267615676
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102703 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008592 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A104153.P14211871354267615676

/-! ## A104153.P14077220156905112532

`∩[A102703(n+1), A396948(n+1)]`
-/

namespace A104153.P14077220156905112532
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102703 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A396948 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A104153.P14077220156905112532

/-! ## A104153.P4889379376950024033

`∩[A105043(n+1)-1, A008592(n)]`
-/

namespace A104153.P4889379376950024033
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105043 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008592 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A104153.P4889379376950024033

/-! ## A104153.P6045701432789103004

`∩[10*n, A095995(n+1)%A105043(n+1)]`
-/

namespace A104153.P6045701432789103004
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10 * n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A095995 (n + 1)) (A105043 (n + 1))

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A104153.P6045701432789103004

/-! ## A104153.P2844150110418178220

`∩[A023443(A105043(n+1)), A008592(n)]`
-/

namespace A104153.P2844150110418178220
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A105043 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008592 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A104153.P2844150110418178220

/-!
# A104154: For each natural number n: if the last digit of n is not zero and A004086(n) is prime, append A004086(n) to the sequence.

The programs for A104154, there is no canonical definition to state claims against.
-/

/-! ## A104154.P906675696045749541

`p?[A076641(n)]`
-/

namespace A104154.P906675696045749541
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076641 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A104154.P906675696045749541

/-! ## A104154.P2356729705749729750

`p?[A004086(comp[A008592(n)])]`
-/

namespace A104154.P2356729705749729750
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008592 n

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004086 (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A104154.P2356729705749729750

/-! ## A104154.P858272551410333886

`p?[A004086(A067251(n+1))]`
-/

namespace A104154.P858272551410333886
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004086 (A067251 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A104154.P858272551410333886

/-! ## A104154.P4073897041433905995

`p?[A004086(A342851(n+1))]`
-/

namespace A104154.P4073897041433905995
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004086 (A342851 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A104154.P4073897041433905995

/-! ## A104154.P7559191247082285970

`filter[A076641(n+1), A010051(#)]`
-/

namespace A104154.P7559191247082285970
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076641 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A104154.P7559191247082285970

/-! ## A104154.P5449546348768931674

`p?[A056964(A004086(n))-n]`
-/

namespace A104154.P5449546348768931674
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056964 (A004086 n).toNat - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A104154.P5449546348768931674

/-! ## A104154.P8180176550632163607

`p?[A004086(n*A168184(n))]`
-/

namespace A104154.P8180176550632163607
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004086 ((n : ℤ) * A168184 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A104154.P8180176550632163607

/-! ## A104154.P8908617876515471956

`filter[A076641(n+2), A080339(#)]`
-/

namespace A104154.P8908617876515471956
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076641 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A080339 (f1 j).toNat = 1) n)

end

end A104154.P8908617876515471956

/-! ## A104154.P7092113726060727439

`p?[A321474(n)]%A321488(n+1)`
-/

namespace A104154.P7092113726060727439
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321474 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) (A321488 (n + 1))

end

end A104154.P7092113726060727439

/-!
# A104155: The 64 codons of the genetic code, giving the value 1 to thymine (T), 3 to adenine (A), 2 to cytosine (C) and 4 to guanine (G).

The programs for A104155, there is no canonical definition to state claims against.
-/

/-! ## A104155.P17940664858925681500

`A084544(n+21)`
-/

namespace A104155.P17940664858925681500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084544 (n + 21)

end

end A104155.P17940664858925681500

/-! ## A104155.P8425030897195888313

`A001633(A007090(n)+22)`
-/

namespace A104155.P8425030897195888313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001633 (A007090 n + 22).toNat

end

end A104155.P8425030897195888313

/-! ## A104155.P8199066564093049257

`A007092(A037460(n)+43)`
-/

namespace A104155.P8199066564093049257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007092 (A037460 n + 43).toNat

end

end A104155.P8199066564093049257

/-! ## A104155.P6026375318660684906

`A007091(lt[2, A215884(n)])`
-/

namespace A104155.P6026375318660684906
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215884 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007091 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A104155.P6026375318660684906

/-! ## A104155.P15326238186012357967

`A007091(lt[2, A276134(n)])`
-/

namespace A104155.P15326238186012357967
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276134 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007091 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A104155.P15326238186012357967

/-! ## A104155.P16553061298869199496

`A007091(eq[3, A276134(n)])`
-/

namespace A104155.P16553061298869199496
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276134 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007091 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A104155.P16553061298869199496

/-! ## A104155.P1023715136217088174

`A345482(A007090(n)+54)`
-/

namespace A104155.P1023715136217088174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345482 (A007090 n + 54).toNat

end

end A104155.P1023715136217088174

/-! ## A104155.P5438180852832004947

`A007094(A037462(n)+73)`
-/

namespace A104155.P5438180852832004947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007094 (A037462 n + 73).toNat

end

end A104155.P5438180852832004947

/-! ## A104155.P13872526413461805889

`A007095(A037463(n)+91)`
-/

namespace A104155.P13872526413461805889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007095 (A037463 n + 91).toNat

end

end A104155.P13872526413461805889

/-! ## A104155.P9887599610259351432

`A007091(A020654(n+1)+31)`
-/

namespace A104155.P9887599610259351432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007091 (A020654 (n + 1) + 31).toNat

end

end A104155.P9887599610259351432

/-!
# A104156: a(1)=a(2)=0, a(n) = abs(2*a(n-1) - a(n-2)) - 1.

The programs for A104156, the canonical program `A104156.P17879167543277471078` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A104156 has offset 1).

The definition of A104156 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `abs(2*a(n-1)-a(n-2))-1` (program `A104156.P17879167543277471078`, by `A104156.P17879167543277471078.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A104156.P17879167543277471078

`abs(2*a(n-1)-a(n-2))-1` with `a(0)=0, a(1)=0`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A104156

/-- `abs(2*a(n-1)-a(n-2))-1` -/
def P17879167543277471078.Spec : Prop :=
  ∀ n, P17879167543277471078.a n = A104156 (n + 1)

theorem P17879167543277471078.correct : P17879167543277471078.Spec := by
  intro n
  simp only [A104156, Nat.add_sub_cancel]

end A104156

/-! ## A104156.P968460728357912977

`abs(∑[A255175(n)])-1`
-/

namespace A104156.P968460728357912977
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255175 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∑ j ∈ Finset.range (n + 1), f1 j| - 1

end

end A104156.P968460728357912977

namespace A104156

/-- `abs(∑[A255175(n)])-1` -/
def P968460728357912977.Spec : Prop :=
  ∀ n, P968460728357912977.a n = A104156 (n + 1)

end A104156

/-! ## A104156.P15212604240618176196

`∑[A381232(n+1)]-1`
-/

namespace A104156.P15212604240618176196
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381232 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A104156.P15212604240618176196

namespace A104156

/-- `∑[A381232(n+1)]-1` -/
def P15212604240618176196.Spec : Prop :=
  ∀ n, P15212604240618176196.a n = A104156 (n + 1)

end A104156

/-! ## A104156.P12717921265756294922

`abs(∑[∑[A339265(n)]])-1`
-/

namespace A104156.P12717921265756294922
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339265 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∑ j ∈ Finset.range (n + 1), f1 j| - 1

end

end A104156.P12717921265756294922

namespace A104156

/-- `abs(∑[∑[A339265(n)]])-1` -/
def P12717921265756294922.Spec : Prop :=
  ∀ n, P12717921265756294922.a n = A104156 (n + 1)

end A104156

/-! ## A104156.P15615802012094201676

`xor(∑[A196199(n+1)], -1)`
-/

namespace A104156.P15615802012094201676
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196199 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (∑ j ∈ Finset.range (n + 1), f1 j) (-1)

end

end A104156.P15615802012094201676

namespace A104156

/-- `xor(∑[A196199(n+1)], -1)` -/
def P15615802012094201676.Spec : Prop :=
  ∀ n, P15615802012094201676.a n = A104156 (n + 1)

end A104156

/-! ## A104156.P532066974243636622

`abs(∑[A329116(n+1)])-1`
-/

namespace A104156.P532066974243636622
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329116 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∑ j ∈ Finset.range (n + 1), f1 j| - 1

end

end A104156.P532066974243636622

namespace A104156

/-- `abs(∑[A329116(n+1)])-1` -/
def P532066974243636622.Spec : Prop :=
  ∀ n, P532066974243636622.a n = A104156 (n + 1)

end A104156

/-! ## A104156.P16834353156610560322

`A072690(n+2)/2-1`
-/

namespace A104156.P16834353156610560322
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A072690 (n + 2) : ℚ) / 2 - 1

end

end A104156.P16834353156610560322

namespace A104156

/-- `A072690(n+2)/2-1` -/
def P16834353156610560322.Spec : Prop :=
  ∀ n, P16834353156610560322.a n = (A104156 (n + 1) : ℚ)

end A104156

/-! ## A104156.P3671581271080171280

`(n-A255175(n+1)²)/2`
-/

namespace A104156.P3671581271080171280
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - A255175 (n + 1) ^ 2 : ℚ) / 2

end

end A104156.P3671581271080171280

namespace A104156

/-- `(n-A255175(n+1)²)/2` -/
def P3671581271080171280.Spec : Prop :=
  ∀ n, P3671581271080171280.a n = (A104156 (n + 1) : ℚ)

end A104156

/-! ## A104156.P16032969133076666070

`∑[A007606(n+2)]-(n+2)²`
-/

namespace A104156.P16032969133076666070
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007606 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - ((n + 2) ^ 2 : ℤ)

end

end A104156.P16032969133076666070

namespace A104156

/-- `∑[A007606(n+2)]-(n+2)²` -/
def P16032969133076666070.Spec : Prop :=
  ∀ n, P16032969133076666070.a n = A104156 (n + 1)

end A104156

/-! ## A104156.P5136183145231220002

`abs(A323186(n+1))-1`
-/

namespace A104156.P5136183145231220002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A323186 (n + 1)| - 1

end

end A104156.P5136183145231220002

namespace A104156

/-- `abs(A323186(n+1))-1` -/
def P5136183145231220002.Spec : Prop :=
  ∀ n, P5136183145231220002.a n = A104156 (n + 1)

end A104156

/-!
# A104158: Numbers on a standard, London, or clock dartboard read in a counterclockwise direction.

The programs for A104158, there is no canonical definition to state claims against.
-/

/-! ## A104158.P12554697374415658190

`A003833(20*n-(n-1))`
-/

namespace A104158.P12554697374415658190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003833 ((20 * n : ℤ) - ((n : ℤ) - 1)).toNat

end

end A104158.P12554697374415658190

/-!
# A104161: G.f.: x*(1 - x + x^2)/((1-x)^2 * (1 - x - x^2)).

The programs for A104161, the canonical program `A104161.P2963964495832265298` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A104161 has offset 0).

The definition of A104161 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A104161.P2963964495832265298

`a(n-1)+a(n-2)+n-1` with `a(0)=0, a(1)=1`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A104161

/-- `a(n-1)+a(n-2)+n-1` -/
def P2963964495832265298.Spec : Prop :=
  ∀ n, P2963964495832265298.a n = A104161 n

theorem P2963964495832265298.correct : P2963964495832265298.Spec := by
  intro n
  simp only [A104161]

end A104161

/-! ## A104161.P7346347458284676318

`∑[or(1, a(n-2)+a(n-1))]` with `a(0)=0, a(1)=1`
-/

namespace A104161.P7346347458284676318
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n f1 =>
  Nat.lor 1 (f1 (n - 2) + f1 (n - 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A104161.P7346347458284676318

namespace A104161

/-- `∑[or(1, a(n-2)+a(n-1))]` -/
def P7346347458284676318.Spec : Prop :=
  ∀ n, (P7346347458284676318.a n : ℤ) = A104161 n

end A104161

/-! ## A104161.P9992400104378689634

`∑[a(n-1)+a(n-2)]-n` with `a(0)=0, a(1)=2`
-/

namespace A104161.P9992400104378689634
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 2] fun n f1 =>
  f1 (n - 1) + f1 (n - 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - (n : ℤ)

end

end A104161.P9992400104378689634

namespace A104161

/-- `∑[a(n-1)+a(n-2)]-n` -/
def P9992400104378689634.Spec : Prop :=
  ∀ n, P9992400104378689634.a n = A104161 n

end A104161

/-! ## A104161.P17542730592205335641

`n-(1-a(n-1)-a(n-2))` with `a(0)=0, a(1)=1`
-/

namespace A104161.P17542730592205335641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  (n : ℤ) - (1 - a (n - 1) - a (n - 2))

end

end A104161.P17542730592205335641

namespace A104161

/-- `n-(1-a(n-1)-a(n-2))` -/
def P17542730592205335641.Spec : Prop :=
  ∀ n, P17542730592205335641.a n = A104161 n

end A104161

/-! ## A104161.P13631933643426670560

`A131269(n)-1`
-/

namespace A104161.P13631933643426670560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131269 n - 1

end

end A104161.P13631933643426670560

namespace A104161

/-- `A131269(n)-1` -/
def P13631933643426670560.Spec : Prop :=
  ∀ n, P13631933643426670560.a n = A104161 n

end A104161

/-! ## A104161.P11003409766988816707

`∑[A055389(n)-1]`
-/

namespace A104161.P11003409766988816707
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055389 n - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A104161.P11003409766988816707

namespace A104161

/-- `∑[A055389(n)-1]` -/
def P11003409766988816707.Spec : Prop :=
  ∀ n, P11003409766988816707.a n = A104161 n

end A104161

/-! ## A104161.P3473519333679606978

`A019274(n+2)-n`
-/

namespace A104161.P3473519333679606978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019274 (n + 2) - (n : ℤ)

end

end A104161.P3473519333679606978

namespace A104161

/-- `A019274(n+2)-n` -/
def P3473519333679606978.Spec : Prop :=
  ∀ n, P3473519333679606978.a n = A104161 n

end A104161

/-! ## A104161.P12492829658107919393

`A097280(n)-(n+5)`
-/

namespace A104161.P12492829658107919393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097280 n - (n + 5 : ℤ)

end

end A104161.P12492829658107919393

namespace A104161

/-- `A097280(n)-(n+5)` -/
def P12492829658107919393.Spec : Prop :=
  ∀ n, P12492829658107919393.a n = A104161 n

end A104161

/-! ## A104161.P531028572810601809

`A094707(Δ[n²])-n`
-/

namespace A104161.P531028572810601809
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094707 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat - (n : ℤ)

end

end A104161.P531028572810601809

namespace A104161

/-- `A094707(Δ[n²])-n` -/
def P531028572810601809.Spec : Prop :=
  ∀ n, P531028572810601809.a n = A104161 n

end A104161

/-! ## A104161.P15561237657652400406

`A355019(Δ[n²])-n`
-/

namespace A104161.P15561237657652400406
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355019 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat - (n : ℤ)

end

end A104161.P15561237657652400406

namespace A104161

/-- `A355019(Δ[n²])-n` -/
def P15561237657652400406.Spec : Prop :=
  ∀ n, P15561237657652400406.a n = A104161 n

end A104161

/-! ## A104161.P12402603620443677468

`∑[A001588(n)-2]+1`
-/

namespace A104161.P12402603620443677468
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001588 n - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A104161.P12402603620443677468

namespace A104161

/-- `∑[A001588(n)-2]+1` -/
def P12402603620443677468.Spec : Prop :=
  ∀ n, P12402603620443677468.a n = A104161 n

end A104161

/-! ## A104161.P11788772635965233455

`∑[A163733(n+2)-1]`
-/

namespace A104161.P11788772635965233455
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163733 (n + 2) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A104161.P11788772635965233455

namespace A104161

/-- `∑[A163733(n+2)-1]` -/
def P11788772635965233455.Spec : Prop :=
  ∀ n, P11788772635965233455.a n = A104161 n

end A104161

/-! ## A104161.P12084979551889349247

`∑[A006355(n+1)]-n`
-/

namespace A104161.P12084979551889349247
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006355 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ)

end

end A104161.P12084979551889349247

namespace A104161

/-- `∑[A006355(n+1)]-n` -/
def P12084979551889349247.Spec : Prop :=
  ∀ n, P12084979551889349247.a n = A104161 n

end A104161

/-! ## A104161.P11022194585158900810

`∑[A118658(n+1)]-n`
-/

namespace A104161.P11022194585158900810
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118658 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ)

end

end A104161.P11022194585158900810

namespace A104161

/-- `∑[A118658(n+1)]-n` -/
def P11022194585158900810.Spec : Prop :=
  ∀ n, P11022194585158900810.a n = A104161 n

end A104161

/-! ## A104161.P1007208090405487978

`∑[A198834(n+2)]-n`
-/

namespace A104161.P1007208090405487978
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198834 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ)

end

end A104161.P1007208090405487978

namespace A104161

/-- `∑[A198834(n+2)]-n` -/
def P1007208090405487978.Spec : Prop :=
  ∀ n, P1007208090405487978.a n = A104161 n

end A104161

/-! ## A104161.P1014527315831762044

`∑[2*A000045(n)]-n`
-/

namespace A104161.P1014527315831762044
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000045 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ)

end

end A104161.P1014527315831762044

namespace A104161

/-- `∑[2*A000045(n)]-n` -/
def P1014527315831762044.Spec : Prop :=
  ∀ n, P1014527315831762044.a n = A104161 n

end A104161

/-! ## A104161.P9099748909756232321

`A001595(n+1)-(n+1)`
-/

namespace A104161.P9099748909756232321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001595 (n + 1) - (n + 1 : ℤ)

end

end A104161.P9099748909756232321

namespace A104161

/-- `A001595(n+1)-(n+1)` -/
def P9099748909756232321.Spec : Prop :=
  ∀ n, P9099748909756232321.a n = A104161 n

end A104161

/-! ## A104161.P15624896744112959292

`A055389(n+2)-(n+2)`
-/

namespace A104161.P15624896744112959292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055389 (n + 2) - (n + 2 : ℤ)

end

end A104161.P15624896744112959292

namespace A104161

/-- `A055389(n+2)-(n+2)` -/
def P15624896744112959292.Spec : Prop :=
  ∀ n, P15624896744112959292.a n = A104161 n

end A104161

/-! ## A104161.P12996624784844933439

`A128588(n+2)-(n+2)`
-/

namespace A104161.P12996624784844933439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128588 (n + 2) - (n + 2 : ℤ)

end

end A104161.P12996624784844933439

namespace A104161

/-- `A128588(n+2)-(n+2)` -/
def P12996624784844933439.Spec : Prop :=
  ∀ n, P12996624784844933439.a n = A104161 n

end A104161

/-!
# A104162: Indicator sequence for the Fibonacci numbers.

The programs for A104162, the canonical program `A104162.P11515092191127984625` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A104162 has offset 0).

The definition of A104162 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A130234, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A104162.P14907404878571553653

`1+A130233(n)-A130234(n)`
-/

namespace A104162.P14907404878571553653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 + A130233 n - A130234 n

end

end A104162.P14907404878571553653

namespace A104162

/-- `1+A130233(n)-A130234(n)` -/
def P14907404878571553653.Spec : Prop :=
  ∀ n, P14907404878571553653.a n = A104162 n

end A104162

/-! ## A104162.P11515092191127984625

`A130234(n+1)-A130234(n)`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A104162

/-- `A130234(n+1)-A130234(n)` -/
def P11515092191127984625.Spec : Prop :=
  ∀ n, P11515092191127984625.a n = A104162 n

theorem P11515092191127984625.correct : P11515092191127984625.Spec := by
  intro n
  simp only [A104162]

end A104162

/-! ## A104162.P8540443636880191275

`char[1]+char[round(ϕ*a(n-2))]` with `a(0)=0, a(1)=1`
-/

namespace A104162.P8540443636880191275
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n f2 =>
  SequenceMachineLib.roundAway (Real.goldenRatio * (f2 (n - 2) : ℝ))

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f1 j = n then 1 else 0) + (if ∃ j, f2 j = (n : ℤ) then 1 else 0)

end

end A104162.P8540443636880191275

namespace A104162

/-- `char[1]+char[round(ϕ*a(n-2))]` -/
def P8540443636880191275.Spec : Prop :=
  ∀ n, (P8540443636880191275.a n : ℤ) = A104162 n

end A104162

/-! ## A104162.P8468950603143196463

`char[1]+char[a(n-2)+a(n-1)]` with `a(0)=0, a(1)=1`
-/

namespace A104162.P8468950603143196463
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n f2 =>
  f2 (n - 2) + f2 (n - 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f1 j = n then 1 else 0) + (if ∃ j, f2 j = n then 1 else 0)

end

end A104162.P8468950603143196463

namespace A104162

/-- `char[1]+char[a(n-2)+a(n-1)]` -/
def P8468950603143196463.Spec : Prop :=
  ∀ n, (P8468950603143196463.a n : ℤ) = A104162 n

end A104162

/-! ## A104162.P962186929464691131

`C(2, A104324(n))`
-/

namespace A104162.P962186929464691131
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 2 (A104324 n).toNat

end

end A104162.P962186929464691131

namespace A104162

/-- `C(2, A104324(n))` -/
def P962186929464691131.Spec : Prop :=
  ∀ n, (P962186929464691131.a n : ℤ) = A104162 n

end A104162

/-! ## A104162.P7384828372716737110

`A010056(n)+char[1]`
-/

namespace A104162.P7384828372716737110
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010056 n + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A104162.P7384828372716737110

namespace A104162

/-- `A010056(n)+char[1]` -/
def P7384828372716737110.Spec : Prop :=
  ∀ n, P7384828372716737110.a n = A104162 n

end A104162

/-! ## A104162.P9537629160894117845

`C(A082524(n+1), n)`
-/

namespace A104162.P9537629160894117845
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A082524 (n + 1)).toNat n

end

end A104162.P9537629160894117845

namespace A104162

/-- `C(A082524(n+1), n)` -/
def P9537629160894117845.Spec : Prop :=
  ∀ n, (P9537629160894117845.a n : ℤ) = A104162 n

end A104162

/-! ## A104162.P17097361951742628910

`char[1]+char[A000045(n)]`
-/

namespace A104162.P17097361951742628910
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f1 j = n then 1 else 0) + (if ∃ j, f2 j = (n : ℤ) then 1 else 0)

end

end A104162.P17097361951742628910

namespace A104162

/-- `char[1]+char[A000045(n)]` -/
def P17097361951742628910.Spec : Prop :=
  ∀ n, (P17097361951742628910.a n : ℤ) = A104162 n

end A104162

/-! ## A104162.P1577977212442807788

`A130713(A104324(n))`
-/

namespace A104162.P1577977212442807788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130713 (A104324 n).toNat

end

end A104162.P1577977212442807788

namespace A104162

/-- `A130713(A104324(n))` -/
def P1577977212442807788.Spec : Prop :=
  ∀ n, P1577977212442807788.a n = A104162 n

end A104162

/-! ## A104162.P8183326957302704778

`A063524(n)+A010056(n)`
-/

namespace A104162.P8183326957302704778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063524 n + A010056 n

end

end A104162.P8183326957302704778

namespace A104162

/-- `A063524(n)+A010056(n)` -/
def P8183326957302704778.Spec : Prop :=
  ∀ n, P8183326957302704778.a n = A104162 n

end A104162

/-! ## A104162.P13287602928800267298

`A108852(n)-A130234(n)`
-/

namespace A104162.P13287602928800267298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108852 n - A130234 n

end

end A104162.P13287602928800267298

namespace A104162

/-- `A108852(n)-A130234(n)` -/
def P13287602928800267298.Spec : Prop :=
  ∀ n, P13287602928800267298.a n = A104162 n

end A104162

/-! ## A104162.P9575827361940891307

`A003842(n)*A010056(n)`
-/

namespace A104162.P9575827361940891307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003842 n * A010056 n

end

end A104162.P9575827361940891307

namespace A104162

/-- `A003842(n)*A010056(n)` -/
def P9575827361940891307.Spec : Prop :=
  ∀ n, P9575827361940891307.a n = A104162 n

end A104162

/-! ## A104162.P10070657690529028861

`A010056(n)*A373565(n)`
-/

namespace A104162.P10070657690529028861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010056 n * A373565 n

end

end A104162.P10070657690529028861

namespace A104162

/-- `A010056(n)*A373565(n)` -/
def P10070657690529028861.Spec : Prop :=
  ∀ n, P10070657690529028861.a n = A104162 n

end A104162

/-! ## A104162.P8570746336447475635

`(A005378(n+1)-A005379(n))*A010056(n)`
-/

namespace A104162.P8570746336447475635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A005378 (n + 1) - A005379 n) * A010056 n

end

end A104162.P8570746336447475635

namespace A104162

/-- `(A005378(n+1)-A005379(n))*A010056(n)` -/
def P8570746336447475635.Spec : Prop :=
  ∀ n, P8570746336447475635.a n = A104162 n

end A104162

/-! ## A104162.P11919535306664100858

`Δ[A130234(n)]`
-/

namespace A104162.P11919535306664100858
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130234 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A104162.P11919535306664100858

namespace A104162

/-- `Δ[A130234(n)]` -/
def P11919535306664100858.Spec : Prop :=
  ∀ n, P11919535306664100858.a n = A104162 n

theorem P11919535306664100858.correct : P11919535306664100858.Spec := by
  intro n
  simp only [A104162, Nat.add_sub_cancel, A104162.P11919535306664100858.f1, A104162.P11919535306664100858.a, A104162.P11515092191127984625.a, SequenceMachineLib.memo_apply]

end A104162

/-! ## A104162.P13162958291842142842

`A319395(A026356(n+1))`
-/

namespace A104162.P13162958291842142842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319395 (A026356 (n + 1)).toNat

end

end A104162.P13162958291842142842

namespace A104162

/-- `A319395(A026356(n+1))` -/
def P13162958291842142842.Spec : Prop :=
  ∀ n, P13162958291842142842.a n = A104162 n

end A104162

/-! ## A104162.P12959380294907692637

`A319395(A184583(n+1))`
-/

namespace A104162.P12959380294907692637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319395 (A184583 (n + 1)).toNat

end

end A104162.P12959380294907692637

namespace A104162

/-- `A319395(A184583(n+1))` -/
def P12959380294907692637.Spec : Prop :=
  ∀ n, P12959380294907692637.a n = A104162 n

end A104162

/-! ## A104162.P14683883028386506189

`A319395(A184735(n+1))`
-/

namespace A104162.P14683883028386506189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319395 (A184735 (n + 1)).toNat

end

end A104162.P14683883028386506189

namespace A104162

/-- `A319395(A184735(n+1))` -/
def P14683883028386506189.Spec : Prop :=
  ∀ n, P14683883028386506189.a n = A104162 n

end A104162

/-! ## A104162.P12803022394371150138

`A319395(A189379(n+1))`
-/

namespace A104162.P12803022394371150138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319395 (A189379 (n + 1)).toNat

end

end A104162.P12803022394371150138

namespace A104162

/-- `A319395(A189379(n+1))` -/
def P12803022394371150138.Spec : Prop :=
  ∀ n, P12803022394371150138.a n = A104162 n

end A104162

/-! ## A104162.P11179673668317285469

`A319395(A047924(n))`
-/

namespace A104162.P11179673668317285469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319395 (A047924 n).toNat

end

end A104162.P11179673668317285469

namespace A104162

/-- `A319395(A047924(n))` -/
def P11179673668317285469.Spec : Prop :=
  ∀ n, P11179673668317285469.a n = A104162 n

end A104162

/-!
# A104163: Primes p such that (2p+1)/3 is prime.

The programs for A104163, the canonical program `A104163.P9304541644358022485` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A104163 has offset 1).

The definition of A104163 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A158708, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A104163.P9304541644358022485

`(3*A158708(n+2)-1)/2`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A104163

/-- `(3*A158708(n+2)-1)/2` -/
def P9304541644358022485.Spec : Prop :=
  ∀ n, P9304541644358022485.a n = (A104163 (n + 1) : ℚ)

end A104163

/-! ## A104163.P1612812107304106922

`3*A130800(n+1)+1`
-/

namespace A104163.P1612812107304106922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A130800 (n + 1) + 1

end

end A104163.P1612812107304106922

namespace A104163

/-- `3*A130800(n+1)+1` -/
def P1612812107304106922.Spec : Prop :=
  ∀ n, P1612812107304106922.a n = A104163 (n + 1)

end A104163

/-! ## A104163.P8673662503361425735

`p?[floor(A055131(n)/2)]`
-/

namespace A104163.P8673662503361425735
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A055131 n : ℚ) / 2⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A104163.P8673662503361425735

namespace A104163

/-- `p?[floor(A055131(n)/2)]` -/
def P8673662503361425735.Spec : Prop :=
  ∀ n, P8673662503361425735.a n = A104163 (n + 1)

end A104163

/-! ## A104163.P5662454273192848542

`p?[floor(A001748(n+2)/2)]`
-/

namespace A104163.P5662454273192848542
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A001748 (n + 2) : ℚ) / 2⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A104163.P5662454273192848542

namespace A104163

/-- `p?[floor(A001748(n+2)/2)]` -/
def P5662454273192848542.Spec : Prop :=
  ∀ n, P5662454273192848542.a n = A104163 (n + 1)

end A104163

/-! ## A104163.P1196351594163622805

`∩[A002476(n+1), A234095(n+1)]`
-/

namespace A104163.P1196351594163622805
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002476 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234095 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A104163.P1196351594163622805

namespace A104163

/-- `∩[A002476(n+1), A234095(n+1)]` -/
def P1196351594163622805.Spec : Prop :=
  ∀ n, (P1196351594163622805.a n : ℤ) = A104163 (n + 1)

end A104163

/-! ## A104163.P6390050441678861486

`∩[A007645(n+1), A234095(n+1)]`
-/

namespace A104163.P6390050441678861486
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007645 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234095 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A104163.P6390050441678861486

namespace A104163

/-- `∩[A007645(n+1), A234095(n+1)]` -/
def P6390050441678861486.Spec : Prop :=
  ∀ n, (P6390050441678861486.a n : ℤ) = A104163 (n + 1)

end A104163

/-! ## A104163.P6958418895476606107

`∩[A045331(n+1), A234095(n+1)]`
-/

namespace A104163.P6958418895476606107
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045331 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234095 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A104163.P6958418895476606107

namespace A104163

/-- `∩[A045331(n+1), A234095(n+1)]` -/
def P6958418895476606107.Spec : Prop :=
  ∀ n, (P6958418895476606107.a n : ℤ) = A104163 (n + 1)

end A104163

/-! ## A104163.P6355509914406522428

`∩[A045375(n+1), A234095(n+1)]`
-/

namespace A104163.P6355509914406522428
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045375 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234095 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A104163.P6355509914406522428

namespace A104163

/-- `∩[A045375(n+1), A234095(n+1)]` -/
def P6355509914406522428.Spec : Prop :=
  ∀ n, (P6355509914406522428.a n : ℤ) = A104163 (n + 1)

end A104163

/-! ## A104163.P14387469856607601887

`∩[A123365(n+1), A234095(n+1)]`
-/

namespace A104163.P14387469856607601887
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123365 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234095 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A104163.P14387469856607601887

namespace A104163

/-- `∩[A123365(n+1), A234095(n+1)]` -/
def P14387469856607601887.Spec : Prop :=
  ∀ n, (P14387469856607601887.a n : ℤ) = A104163 (n + 1)

end A104163

/-! ## A104163.P14620698322099350784

`∩[A234095(n+1), A279815(n+1)]`
-/

namespace A104163.P14620698322099350784
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234095 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279815 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A104163.P14620698322099350784

namespace A104163

/-- `∩[A234095(n+1), A279815(n+1)]` -/
def P14620698322099350784.Spec : Prop :=
  ∀ n, (P14620698322099350784.a n : ℤ) = A104163 (n + 1)

end A104163

/-! ## A104163.P12069457102317376837

`∩[A055664(n+1), A234095(n+1)]`
-/

namespace A104163.P12069457102317376837
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055664 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234095 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A104163.P12069457102317376837

namespace A104163

/-- `∩[A055664(n+1), A234095(n+1)]` -/
def P12069457102317376837.Spec : Prop :=
  ∀ n, (P12069457102317376837.a n : ℤ) = A104163 (n + 1)

end A104163

/-! ## A104163.P14864452465203590230

`∩[A133290(n+1), A234095(n+1)]`
-/

namespace A104163.P14864452465203590230
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133290 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234095 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A104163.P14864452465203590230

namespace A104163

/-- `∩[A133290(n+1), A234095(n+1)]` -/
def P14864452465203590230.Spec : Prop :=
  ∀ n, (P14864452465203590230.a n : ℤ) = A104163 (n + 1)

end A104163

/-! ## A104163.P13726717521862833761

`∩[A137827(n+1), A234095(n+1)]`
-/

namespace A104163.P13726717521862833761
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137827 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234095 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A104163.P13726717521862833761

namespace A104163

/-- `∩[A137827(n+1), A234095(n+1)]` -/
def P13726717521862833761.Spec : Prop :=
  ∀ n, (P13726717521862833761.a n : ℤ) = A104163 (n + 1)

end A104163

/-! ## A104163.P4164349313609304685

`p?[A168565(n+2)]`
-/

namespace A104163.P4164349313609304685
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168565 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A104163.P4164349313609304685

namespace A104163

/-- `p?[A168565(n+2)]` -/
def P4164349313609304685.Spec : Prop :=
  ∀ n, P4164349313609304685.a n = A104163 (n + 1)

end A104163

/-! ## A104163.P334278967482195471

`p?[A179893(n+2)+1]`
-/

namespace A104163.P334278967482195471
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179893 (n + 2) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A104163.P334278967482195471

namespace A104163

/-- `p?[A179893(n+2)+1]` -/
def P334278967482195471.Spec : Prop :=
  ∀ n, P334278967482195471.a n = A104163 (n + 1)

end A104163

/-! ## A104163.P5902439089857845268

`p?[3*A005097(n+1)+1]`
-/

namespace A104163.P5902439089857845268
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A005097 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A104163.P5902439089857845268

namespace A104163

/-- `p?[3*A005097(n+1)+1]` -/
def P5902439089857845268.Spec : Prop :=
  ∀ n, P5902439089857845268.a n = A104163 (n + 1)

end A104163

/-! ## A104163.P6590431237130891875

`p?[floor(3/2*A000040(n+2))]`
-/

namespace A104163.P6590431237130891875
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(3 : ℚ) / 2 * (A000040 (n + 2) : ℚ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A104163.P6590431237130891875

namespace A104163

/-- `p?[floor(3/2*A000040(n+2))]` -/
def P6590431237130891875.Spec : Prop :=
  ∀ n, P6590431237130891875.a n = A104163 (n + 1)

end A104163

/-! ## A104163.P5479544051808265952

`∩[A002476(n+1), A168565(n+2)]`
-/

namespace A104163.P5479544051808265952
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002476 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168565 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A104163.P5479544051808265952

namespace A104163

/-- `∩[A002476(n+1), A168565(n+2)]` -/
def P5479544051808265952.Spec : Prop :=
  ∀ n, (P5479544051808265952.a n : ℤ) = A104163 (n + 1)

end A104163

/-! ## A104163.P16797563547308154457

`∩[A007645(n+1), A168565(n+2)]`
-/

namespace A104163.P16797563547308154457
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007645 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168565 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A104163.P16797563547308154457

namespace A104163

/-- `∩[A007645(n+1), A168565(n+2)]` -/
def P16797563547308154457.Spec : Prop :=
  ∀ n, (P16797563547308154457.a n : ℤ) = A104163 (n + 1)

end A104163

/-! ## A104163.P4127126152449938860

`∩[A045331(n+1), A168565(n+2)]`
-/

namespace A104163.P4127126152449938860
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045331 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168565 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A104163.P4127126152449938860

namespace A104163

/-- `∩[A045331(n+1), A168565(n+2)]` -/
def P4127126152449938860.Spec : Prop :=
  ∀ n, (P4127126152449938860.a n : ℤ) = A104163 (n + 1)

end A104163

/-!
# A104164: Sophie Germain type primes where 5*Prime[n]=2*Prime[m]+1.

The programs for A104164, there is no canonical definition to state claims against.
-/

/-! ## A104164.P9977339591358653210

`p?[A047211(p?[2*n+1])]`
-/

namespace A104164.P9977339591358653210
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047211 (f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A104164.P9977339591358653210

/-! ## A104164.P2323537054192593680

`p?[A047215(p?[2*n+1])]`
-/

namespace A104164.P2323537054192593680
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047215 (f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A104164.P2323537054192593680

/-! ## A104164.P16905156441980141698

`p?[A047221(p?[2*n+1])]`
-/

namespace A104164.P16905156441980141698
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047221 (f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A104164.P16905156441980141698

/-! ## A104164.P9874280133523771703

`p?[A166539(p?[2*n+1])]`
-/

namespace A104164.P9874280133523771703
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166539 (f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A104164.P9874280133523771703

/-! ## A104164.P7118948059963196657

`p?[A168207(p?[2*n+1])]`
-/

namespace A104164.P7118948059963196657
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168207 (f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A104164.P7118948059963196657

/-!
# A104165: Sophie Germain type primes where 7*Prime[n]=2*Prime[m]+1.

The programs for A104165, there is no canonical definition to state claims against.
-/

/-! ## A104165.P5465591868330852924

`p?[floor(A340384(n+1)/4)]`
-/

namespace A104165.P5465591868330852924
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A340384 (n + 1) : ℚ) / 4⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A104165.P5465591868330852924

/-! ## A104165.P3134418979561159790

`p?[A030123(p?[2*n+1])]`
-/

namespace A104165.P3134418979561159790
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030123 (f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A104165.P3134418979561159790

/-! ## A104165.P3150399602992188969

`p?[A047280(p?[2*n+1])]`
-/

namespace A104165.P3150399602992188969
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047280 (f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A104165.P3150399602992188969

/-! ## A104165.P6683114557967496206

`p?[A047341(p?[2*n+1])]`
-/

namespace A104165.P6683114557967496206
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047341 (f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A104165.P6683114557967496206

/-! ## A104165.P7044690559610292704

`p?[A047389(p?[2*n+1])]`
-/

namespace A104165.P7044690559610292704
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047389 (f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A104165.P7044690559610292704

/-!
# A104166: Repdigit Smith numbers.

The programs for A104166, there is no canonical definition to state claims against.
-/

/-! ## A104166.P5063958696299935468

`∩[A098834(n+1), A064222(n)]`
-/

namespace A104166.P5063958696299935468
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098834 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064222 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A104166.P5063958696299935468

/-!
# A104169: Highly decomposable Smith numbers. A Smith number which sets a record for the number of prime factors (counting multiplicity) starting from first Smith number is called a highly decomposable Smith number.

The programs for A104169, there is no canonical definition to state claims against.
-/

/-! ## A104169.P497863736825917619

`filter[A104168(n+2), A071023(#)]`
-/

namespace A104169.P497863736825917619
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104168 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A071023 (f1 j).toNat = 1) n)

end

end A104169.P497863736825917619

/-!
# A104170: Number of Smith numbers below 10^n.

The programs for A104170, there is no canonical definition to state claims against.
-/

/-! ## A104170.P9884759481983639524

`A065033(A332094(n+2)+A001019(n))`
-/

namespace A104170.P9884759481983639524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (A332094 (n + 2) + A001019 n).toNat

end

end A104170.P9884759481983639524

/-!
# A104171: Reversible Smith numbers, i.e., Smith numbers whose reversal is also a Smith number.

The programs for A104171, there is no canonical definition to state claims against.
-/

/-! ## A104171.P1292847560930725424

`A006753(A026351(n)%A005343(n+1))`
-/

namespace A104171.P1292847560930725424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006753 (Int.tmod (A026351 n) (A005343 (n + 1))).toNat

end

end A104171.P1292847560930725424

/-! ## A104171.P12600636737983474161

`A006753(A026351(n))%A233371(n+1)`
-/

namespace A104171.P12600636737983474161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A006753 (A026351 n).toNat) (A233371 (n + 1))

end

end A104171.P12600636737983474161

/-! ## A104171.P18440521730507155771

`or(A006753(A026351(n)), A098841(2*n+3))`
-/

namespace A104171.P18440521730507155771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A006753 (A026351 n).toNat) (A098841 (2 * n + 3))

end

end A104171.P18440521730507155771

/-!
# A104172: Replace nonprimes in A005185 with zeros.

The programs for A104172, the canonical program `A104172.P15057019180774606762` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A104172 has offset 0).

The definition of A104172 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A104172.P15057019180774606762

`A061397(A005185(n+1))`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A104172

/-- `A061397(A005185(n+1))` -/
def P15057019180774606762.Spec : Prop :=
  ∀ n, P15057019180774606762.a n = A104172 n

theorem P15057019180774606762.correct : P15057019180774606762.Spec := by
  intro n
  simp only [A104172]

end A104172

/-! ## A104172.P18296782282092112809

`∑{d}[A005185(n+1), A137851(#)]`
-/

namespace A104172.P18296782282092112809
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005185 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A137851 d

end

end A104172.P18296782282092112809

namespace A104172

/-- `∑{d}[A005185(n+1), A137851(#)]` -/
def P18296782282092112809.Spec : Prop :=
  ∀ n, P18296782282092112809.a n = A104172 n

end A104172

/-! ## A104172.P791689337033710179

`A061397(A284478(n+1)+A055748(n+1))`
-/

namespace A104172.P791689337033710179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061397 (A284478 (n + 1) + A055748 (n + 1)).toNat

end

end A104172.P791689337033710179

namespace A104172

/-- `A061397(A284478(n+1)+A055748(n+1))` -/
def P791689337033710179.Spec : Prop :=
  ∀ n, P791689337033710179.a n = A104172 n

end A104172

/-! ## A104172.P16050983888763848946

`A061397(A004001(n+1)-A284019(n+1))`
-/

namespace A104172.P16050983888763848946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061397 (A004001 (n + 1) - A284019 (n + 1)).toNat

end

end A104172.P16050983888763848946

namespace A104172

/-- `A061397(A004001(n+1)-A284019(n+1))` -/
def P16050983888763848946.Spec : Prop :=
  ∀ n, P16050983888763848946.a n = A104172 n

end A104172

/-! ## A104172.P14888947800167880820

`∑{d}[A284478(n+1)+A055748(n+1), A137851(#)]`
-/

namespace A104172.P14888947800167880820
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284478 (n + 1) + A055748 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A137851 d

end

end A104172.P14888947800167880820

namespace A104172

/-- `∑{d}[A284478(n+1)+A055748(n+1), A137851(#)]` -/
def P14888947800167880820.Spec : Prop :=
  ∀ n, P14888947800167880820.a n = A104172 n

end A104172

/-! ## A104172.P17192780272169907266

`∑{d}[A004001(n+1)-A284019(n+1), A137851(#)]`
-/

namespace A104172.P17192780272169907266
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004001 (n + 1) - A284019 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A137851 d

end

end A104172.P17192780272169907266

namespace A104172

/-- `∑{d}[A004001(n+1)-A284019(n+1), A137851(#)]` -/
def P17192780272169907266.Spec : Prop :=
  ∀ n, P17192780272169907266.a n = A104172 n

end A104172

/-! ## A104172.P9262371929177772590

`A005185(n+1)*A010051(A284478(n+1)+A055748(n+1))`
-/

namespace A104172.P9262371929177772590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005185 (n + 1) * A010051 (A284478 (n + 1) + A055748 (n + 1)).toNat

end

end A104172.P9262371929177772590

namespace A104172

/-- `A005185(n+1)*A010051(A284478(n+1)+A055748(n+1))` -/
def P9262371929177772590.Spec : Prop :=
  ∀ n, P9262371929177772590.a n = A104172 n

end A104172

/-! ## A104172.P9743614708114180590

`(2-A080677(n+1)+n-A284019(n+1))*A010051(A005185(n+1))`
-/

namespace A104172.P9743614708114180590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - A080677 (n + 1) + (n : ℤ) - A284019 (n + 1)) * A010051 (A005185 (n + 1)).toNat

end

end A104172.P9743614708114180590

namespace A104172

/-- `(2-A080677(n+1)+n-A284019(n+1))*A010051(A005185(n+1))` -/
def P9743614708114180590.Spec : Prop :=
  ∀ n, P9743614708114180590.a n = A104172 n

end A104172

/-! ## A104172.P9175231665141077675

`A061397(Δ[A076268(n+1)]-A081827(n+1))`
-/

namespace A104172.P9175231665141077675
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076268 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061397 (f1 (n + 1) - f1 n - A081827 (n + 1)).toNat

end

end A104172.P9175231665141077675

namespace A104172

/-- `A061397(Δ[A076268(n+1)]-A081827(n+1))` -/
def P9175231665141077675.Spec : Prop :=
  ∀ n, P9175231665141077675.a n = A104172 n

end A104172

/-!
# A104174: Numerator of the fractional part of a harmonic number.

The programs for A104174, the canonical program `A104174.P256506782751078123` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A104174 has offset 1).

The definition of A104174 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 232 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A104174.P256506782751078123

`A001008(n+1)%A002805(n+1)`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A104174

/-- `A001008(n+1)%A002805(n+1)` -/
def P256506782751078123.Spec : Prop :=
  ∀ n, P256506782751078123.a n = A104174 (n + 1)

theorem P256506782751078123.correct : P256506782751078123.Spec := by
  intro n
  simp only [A104174, Nat.add_sub_cancel]

end A104174

/-! ## A104174.P12086635913733530029

`A064168(n+1)%A002805(n+1)`
-/

namespace A104174.P12086635913733530029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A064168 (n + 1)) (A002805 (n + 1))

end

end A104174.P12086635913733530029

namespace A104174

/-- `A064168(n+1)%A002805(n+1)` -/
def P12086635913733530029.Spec : Prop :=
  ∀ n, P12086635913733530029.a n = A104174 (n + 1)

end A104174

/-! ## A104174.P13219030288016475550

`A064169(n+1)%A002805(n+1)`
-/

namespace A104174.P13219030288016475550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A064169 (n + 1)) (A002805 (n + 1))

end

end A104174.P13219030288016475550

namespace A104174

/-- `A064169(n+1)%A002805(n+1)` -/
def P13219030288016475550.Spec : Prop :=
  ∀ n, P13219030288016475550.a n = A104174 (n + 1)

end A104174

/-! ## A104174.P3561082104825267112

`A001008(n+1)-A002805(n+1)*A055980(n+1)`
-/

namespace A104174.P3561082104825267112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001008 (n + 1) - A002805 (n + 1) * A055980 (n + 1)

end

end A104174.P3561082104825267112

namespace A104174

/-- `A001008(n+1)-A002805(n+1)*A055980(n+1)` -/
def P3561082104825267112.Spec : Prop :=
  ∀ n, P3561082104825267112.a n = A104174 (n + 1)

end A104174

/-! ## A104174.P5826549031789945556

`(A025529(n+1)/A110566(n+1))%A002805(n+1)`
-/

namespace A104174.P5826549031789945556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((A025529 (n + 1) : ℚ) / (A110566 (n + 1) : ℚ))) (A002805 (n + 1))

end

end A104174.P5826549031789945556

namespace A104174

/-- `(A025529(n+1)/A110566(n+1))%A002805(n+1)` -/
def P5826549031789945556.Spec : Prop :=
  ∀ n, P5826549031789945556.a n = A104174 (n + 1)

end A104174

/-! ## A104174.P2525191649662977061

`(A027457(n+1)/A110566(n+1))%A002805(n+1)`
-/

namespace A104174.P2525191649662977061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((A027457 (n + 1) : ℚ) / (A110566 (n + 1) : ℚ))) (A002805 (n + 1))

end

end A104174.P2525191649662977061

namespace A104174

/-- `(A027457(n+1)/A110566(n+1))%A002805(n+1)` -/
def P2525191649662977061.Spec : Prop :=
  ∀ n, P2525191649662977061.a n = A104174 (n + 1)

end A104174

/-! ## A104174.P7965650155843340302

`(A096617(n+1)/A120263(n+1))%A002805(n+1)`
-/

namespace A104174.P7965650155843340302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((A096617 (n + 1) : ℚ) / (A120263 (n + 1) : ℚ))) (A002805 (n + 1))

end

end A104174.P7965650155843340302

namespace A104174

/-- `(A096617(n+1)/A120263(n+1))%A002805(n+1)` -/
def P7965650155843340302.Spec : Prop :=
  ∀ n, P7965650155843340302.a n = A104174 (n + 1)

end A104174

/-!
# A104175: From the words to the song "867-5309/Jenny" by Tommy Tutone.

The programs for A104175, the canonical program `A104175.P7313783299351973655` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A104175 has offset 1).

The definition of A104175 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A104175.P7313783299351973655

`a(n-7)` with `a(0)=8, a(1)=6, a(2)=7, a(3)=5, a(4)=3, a(5)=0, a(6)=9`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A104175

/-- `a(n-7)` -/
def P7313783299351973655.Spec : Prop :=
  ∀ n, (P7313783299351973655.a n : ℤ) = A104175 (n + 1)

theorem P7313783299351973655.correct : P7313783299351973655.Spec := by
  intro n
  simp only [A104175, Nat.add_sub_cancel]

end A104175

/-!
# A104176: a(n) = bitwise OR of all terms of n-th row of Pascal's triangle.

The programs for A104176, there is no canonical definition to state claims against.
-/

/-! ## A104176.P1832381602570506403

`A218403(A030435(n))`
-/

namespace A104176.P1832381602570506403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218403 (A030435 n).toNat

end

end A104176.P1832381602570506403

/-! ## A104176.P17809548103098412474

`A218403(2*A030227(n+1))`
-/

namespace A104176.P17809548103098412474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218403 (2 * A030227 (n + 1)).toNat

end

end A104176.P17809548103098412474

/-! ## A104176.P3037729573781393218

`A283976(3*A148527(n))`
-/

namespace A104176.P3037729573781393218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283976 (3 * A148527 n).toNat

end

end A104176.P3037729573781393218

/-! ## A104176.P5688823989169042084

`or(n, A283976(A152808(n)))`
-/

namespace A104176.P5688823989169042084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (n : ℤ) (A283976 (A152808 n).toNat)

end

end A104176.P5688823989169042084

/-! ## A104176.P4101887444882918372

`A265705(A305302(n)+A213093(n))`
-/

namespace A104176.P4101887444882918372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265705 (A305302 n + A213093 n).toNat

end

end A104176.P4101887444882918372

/-!
# A104177: A variation on Flavius's sieve (A000960): Start with the natural numbers; at the k-th sieving step, remove every f-th term of the sequence remaining after the (k-1)-st sieving step, where f is the (k+2)-nd Fibonacci number, f=F(k+2); iterate.

The programs for A104177, there is no canonical definition to state claims against.
-/

/-! ## A104177.P16400483681166382369

`eq[A000035(n), A154402(A252493(n+1))]`
-/

namespace A104177.P16400483681166382369
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154402 (A252493 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A104177.P16400483681166382369

/-! ## A104177.P5427298605103218609

`lt[A001222(A328572(2*n)), A328614(n)]`
-/

namespace A104177.P5427298605103218609
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A328572 (2 * n)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328614 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A104177.P5427298605103218609

/-! ## A104177.P14793247654742529832

`lt[A175681(A206914(2*(n+1))), A028920(n+2)]`
-/

namespace A104177.P14793247654742529832
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175681 (A206914 (2 * (n + 1))).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028920 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A104177.P14793247654742529832

/-! ## A104177.P14338395985879226435

`record[or(1, A172038(3*n+1))]`
-/

namespace A104177.P14338395985879226435
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A172038 (3 * n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A104177.P14338395985879226435

/-! ## A104177.P3642954878396087473

`A004525(record[A155457(3*n+1)])`
-/

namespace A104177.P3642954878396087473
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155457 (3 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A104177.P3642954878396087473

/-!
# A104179: Primes that are either single-digit primes or a concatenation of two earlier terms.

The programs for A104179, there is no canonical definition to state claims against.
-/

/-! ## A104179.P1430366157457500486

`p?[A078239(A080608(n+1))]`
-/

namespace A104179.P1430366157457500486
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078239 (A080608 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A104179.P1430366157457500486

/-! ## A104179.P295357178423011600

`∩[A006530(A019546(n+1)), A080608(n+1)]`
-/

namespace A104179.P295357178423011600
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A019546 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080608 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A104179.P295357178423011600

/-! ## A104179.P6210276389374327615

`A059806(∩[A019546(n+1), A080608(n+1)])`
-/

namespace A104179.P6210276389374327615
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019546 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080608 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059806 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n)

end

end A104179.P6210276389374327615

/-!
# A104180: Let f[n]=Prime[n+1]-Prime[n]; a(n) = Binomial[Prime[12],f[n]].

The programs for A104180, there is no canonical definition to state claims against.
-/

/-! ## A104180.P16092339063679204908

`C(37, Δ[p?[xor(1, n)+1]])`
-/

namespace A104180.P16092339063679204908
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 37 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A104180.P16092339063679204908

/-! ## A104180.P15358184028168905958

`C(37, A001223(n+1))`
-/

namespace A104180.P15358184028168905958
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 37 (A001223 (n + 1)).toNat

end

end A104180.P15358184028168905958

/-! ## A104180.P444684816309381120

`C(37, Δ[A000040(n+1)])`
-/

namespace A104180.P444684816309381120
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 37 (f1 (n + 1) - f1 n).toNat

end

end A104180.P444684816309381120

/-! ## A104180.P8550274832731707397

`C(37, Δ[A006093(n+1)])`
-/

namespace A104180.P8550274832731707397
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006093 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 37 (f1 (n + 1) - f1 n).toNat

end

end A104180.P8550274832731707397

/-! ## A104180.P6198770881259665588

`C(37, Δ[A008864(n+1)])`
-/

namespace A104180.P6198770881259665588
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008864 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 37 (f1 (n + 1) - f1 n).toNat

end

end A104180.P6198770881259665588

/-!
# A104181: Let f(n)=mod(prime(n),12); then a(n) = binomial(prime(12),f(n)).

The programs for A104181, the canonical program `A104181.P5219235661978751105` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A104181 has offset 1).

The definition of A104181 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A104181.P5219235661978751105

`C(37, A039710(n+1))`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A104181

/-- `C(37, A039710(n+1))` -/
def P5219235661978751105.Spec : Prop :=
  ∀ n, (P5219235661978751105.a n : ℤ) = A104181 (n + 1)

theorem P5219235661978751105.correct : P5219235661978751105.Spec := by
  intro n
  simp only [A104181, Nat.add_sub_cancel]

end A104181

/-! ## A104181.P12662851097410627117

`A010953(A039710(n+1))`
-/

namespace A104181.P12662851097410627117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010953 (A039710 (n + 1)).toNat

end

end A104181.P12662851097410627117

namespace A104181

/-- `A010953(A039710(n+1))` -/
def P12662851097410627117.Spec : Prop :=
  ∀ n, P12662851097410627117.a n = A104181 (n + 1)

end A104181

/-!
# A104182: Palindromes in the order in which they appear in Pascal's triangle, without repetition.

The programs for A104182, there is no canonical definition to state claims against.
-/

/-! ## A104182.P1179102250849402046

`filter[A014631(n+1), A136522(#)]`
-/

namespace A104182.P1179102250849402046
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014631 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A136522 (f1 j).toNat = 1) n)

end

end A104182.P1179102250849402046

/-! ## A104182.P14649665299526012991

`A062567(A071661(a(n-1)+1))` with `a(0)=1`
-/

namespace A104182.P14649665299526012991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A062567 (A071661 (a (n - 1) + 1).toNat).toNat

end

end A104182.P14649665299526012991

/-! ## A104182.P13591854601036661842

`C(A072796(n+1), A000188(∏[n%2+2]-1))`
-/

namespace A104182.P13591854601036661842
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n % 2 + 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A072796 (n + 1)).toNat (A000188 (∏ j ∈ Finset.range (n + 1), f1 j - 1)).toNat

end

end A104182.P13591854601036661842

/-! ## A104182.P18290814055825287982

`A089871(A036597(n))+A089850(n)`
-/

namespace A104182.P18290814055825287982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089871 (A036597 n).toNat + A089850 n

end

end A104182.P18290814055825287982

/-! ## A104182.P14365180772713080143

`A122341(n)+A089871(A036597(n))`
-/

namespace A104182.P14365180772713080143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122341 n + A089871 (A036597 n).toNat

end

end A104182.P14365180772713080143

/-!
# A104184: a(n) is the number of paths from (0,0) to (n,0) using steps of the form (1,2),(1,1),(1,0),(1,-1) or (1,-2) and staying above the x-axis. Also, a(n) is the number of possible combinations of balls on the lawn after n turns, using a Motzkin variation of the (4,2)-case of the tennis ball problem considered by D. Merlini, R. Sprugnoli and M. C. Verri.

The programs for A104184, there is no canonical definition to state claims against.
-/

/-! ## A104184.P12410591080286472073

`A204213(A212342(n+1))`
-/

namespace A104184.P12410591080286472073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204213 (A212342 (n + 1)).toNat

end

end A104184.P12410591080286472073

/-! ## A104184.P3078880462355960828

`A204213(A347553(n+3))`
-/

namespace A104184.P3078880462355960828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204213 (A347553 (n + 3)).toNat

end

end A104184.P3078880462355960828

/-! ## A104184.P15277678508487535736

`A204213(A027379(n)-n)`
-/

namespace A104184.P15277678508487535736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204213 (A027379 n - (n : ℤ)).toNat

end

end A104184.P15277678508487535736

/-! ## A104184.P1141459195158047016

`A204213(A028310(∑[n]+n))`
-/

namespace A104184.P1141459195158047016
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204213 (A028310 (∑ j ∈ Finset.range (n + 1), f1 j + n)).toNat

end

end A104184.P1141459195158047016

/-! ## A104184.P13884280831230402149

`A204213(A038722(A133263(n)))`
-/

namespace A104184.P13884280831230402149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204213 (A038722 (A133263 n).toNat).toNat

end

end A104184.P13884280831230402149

/-! ## A104184.P1815645752296879800

`A204213(A000096(n)+A000038(n))`
-/

namespace A104184.P1815645752296879800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204213 (A000096 n + A000038 n).toNat

end

end A104184.P1815645752296879800

/-! ## A104184.P5144532071393873857

`A204213(A007318(A027379(n))+n)`
-/

namespace A104184.P5144532071393873857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204213 (A007318 (A027379 n).toNat + (n : ℤ)).toNat

end

end A104184.P5144532071393873857

/-! ## A104184.P9483788590854176051

`A204213(xor(A000038(n), A000096(n)))`
-/

namespace A104184.P9483788590854176051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204213 (Int.xor (A000038 n) (A000096 n)).toNat

end

end A104184.P9483788590854176051

/-! ## A104184.P3496576708950999293

`A204213(A034856(n+1)-(A057427(n)+n))`
-/

namespace A104184.P3496576708950999293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204213 (A034856 (n + 1) - (A057427 n + (n : ℤ))).toNat

end

end A104184.P3496576708950999293

/-! ## A104184.P7236499848506775377

`A204213(A128899(A253145(n))+A000096(n))`
-/

namespace A104184.P7236499848506775377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204213 (A128899 (A253145 n).toNat + A000096 n).toNat

end

end A104184.P7236499848506775377

/-!
# A104185: Number of partitions of the set {1, 2, 3, ..., 6n+3} into 2n+1 sets of 3 elements each, such that each 3-element set has the same sum (there are no such partitions unless there are 6n+3 elements).

The programs for A104185, there is no canonical definition to state claims against.
-/

/-! ## A104185.P10525627798380221544

`A287003(n!²)+n`
-/

namespace A104185.P10525627798380221544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287003 (Nat.factorial n ^ 2) + (n : ℤ)

end

end A104185.P10525627798380221544

/-!
# A104187: Expansion of g.f. -(1+x^2+x^4)/((x^3+x^2+x-1)*(x-1)^2).

The programs for A104187, the canonical program `A104187.P14996717429108708160` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A104187 has offset 0).

The definition of A104187 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A104187.P14996717429108708160

`3*a(n-1)-2*a(n-2)-a(n-4)+a(n-5)` with `a(0)=1, a(1)=3, a(2)=8, a(3)=18, a(4)=38`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A104187

/-- `3*a(n-1)-2*a(n-2)-a(n-4)+a(n-5)` -/
def P14996717429108708160.Spec : Prop :=
  ∀ n, P14996717429108708160.a n = A104187 n

theorem P14996717429108708160.correct : P14996717429108708160.Spec := by
  intro n
  simp only [A104187]

end A104187

/-! ## A104187.P16452491390743504975

`1/2*(A000073(n+3)+A000073(n+6)-3*n-6)`
-/

namespace A104187.P16452491390743504975
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 : ℚ) / 2 * (A000073 (n + 3) + A000073 (n + 6) - (3 * n : ℤ) - 6 : ℚ)

end

end A104187.P16452491390743504975

namespace A104187

/-- `1/2*(A000073(n+3)+A000073(n+6)-3*n-6)` -/
def P16452491390743504975.Spec : Prop :=
  ∀ n, P16452491390743504975.a n = (A104187 n : ℚ)

end A104187

/-! ## A104187.P10292914377921980162

`∑[A202012(n+1)]-n`
-/

namespace A104187.P10292914377921980162
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202012 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ)

end

end A104187.P10292914377921980162

namespace A104187

/-- `∑[A202012(n+1)]-n` -/
def P10292914377921980162.Spec : Prop :=
  ∀ n, P10292914377921980162.a n = A104187 n

end A104187

/-! ## A104187.P13346611119582842469

`∑[∑[record[A081172(n)]]]-n`
-/

namespace A104187.P13346611119582842469
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081172 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (SequenceMachineLib.nth (fun j => ∀ l < j, f3 l < f3 j) n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ)

end

end A104187.P13346611119582842469

namespace A104187

/-- `∑[∑[record[A081172(n)]]]-n` -/
def P13346611119582842469.Spec : Prop :=
  ∀ n, P13346611119582842469.a n = A104187 n

end A104187

/-! ## A104187.P9909394280283896012

`∑[∑[A081172(n+2)]]+1`
-/

namespace A104187.P9909394280283896012
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081172 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A104187.P9909394280283896012

namespace A104187

/-- `∑[∑[A081172(n+2)]]+1` -/
def P9909394280283896012.Spec : Prop :=
  ∀ n, P9909394280283896012.a n = A104187 n

end A104187

/-! ## A104187.P9303803765904503865

`∑[A325473(n)+A062544(n)]`
-/

namespace A104187.P9303803765904503865
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325473 n + A062544 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A104187.P9303803765904503865

namespace A104187

/-- `∑[A325473(n)+A062544(n)]` -/
def P9303803765904503865.Spec : Prop :=
  ∀ n, P9303803765904503865.a n = A104187 n

end A104187

/-! ## A104187.P6213399309158531312

`∑[record[A202012(n)-A057427(n)]]`
-/

namespace A104187.P6213399309158531312
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202012 n - A057427 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A104187.P6213399309158531312

namespace A104187

/-- `∑[record[A202012(n)-A057427(n)]]` -/
def P6213399309158531312.Spec : Prop :=
  ∀ n, P6213399309158531312.a n = A104187 n

end A104187

/-! ## A104187.P6998106444915645045

`A001489(n)+∑[A202012(n+1)]`
-/

namespace A104187.P6998106444915645045
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202012 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001489 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A104187.P6998106444915645045

namespace A104187

/-- `A001489(n)+∑[A202012(n+1)]` -/
def P6998106444915645045.Spec : Prop :=
  ∀ n, P6998106444915645045.a n = A104187 n

end A104187

/-! ## A104187.P6370707335083662473

`∑[A202012(n+1)+A057428(n)]`
-/

namespace A104187.P6370707335083662473
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202012 (n + 1) + A057428 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A104187.P6370707335083662473

namespace A104187

/-- `∑[A202012(n+1)+A057428(n)]` -/
def P6370707335083662473.Spec : Prop :=
  ∀ n, P6370707335083662473.a n = A104187 n

end A104187

/-! ## A104187.P8999139492346826921

`A062544(n+1)+A089068(n+1)-n`
-/

namespace A104187.P8999139492346826921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062544 (n + 1) + (A089068 (n + 1) - (n : ℤ))

end

end A104187.P8999139492346826921

namespace A104187

/-- `A062544(n+1)+A089068(n+1)-n` -/
def P8999139492346826921.Spec : Prop :=
  ∀ n, P8999139492346826921.a n = A104187 n

end A104187

/-! ## A104187.P6121147753839692514

`A007800(n+2)+A062544(n)-A325473(n+1)`
-/

namespace A104187.P6121147753839692514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007800 (n + 2) + (A062544 n - A325473 (n + 1))

end

end A104187.P6121147753839692514

namespace A104187

/-- `A007800(n+2)+A062544(n)-A325473(n+1)` -/
def P6121147753839692514.Spec : Prop :=
  ∀ n, P6121147753839692514.a n = A104187 n

end A104187

/-! ## A104187.P11856196618516837965

`A007800(n+1)+A356619(n+1)-A062544(n+1)`
-/

namespace A104187.P11856196618516837965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007800 (n + 1) + (A356619 (n + 1) - A062544 (n + 1))

end

end A104187.P11856196618516837965

namespace A104187

/-- `A007800(n+1)+A356619(n+1)-A062544(n+1)` -/
def P11856196618516837965.Spec : Prop :=
  ∀ n, P11856196618516837965.a n = A104187 n

end A104187

/-!
# A104188: a(n) = 4*n*(4*n - 1).

The programs for A104188, the canonical program `A104188.P1411453588239040986` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A104188 has offset 0).

The definition of A104188 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `4*n*(4*n-1)` (program `A104188.P1411453588239040986`, by `A104188.P1411453588239040986.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A104188.P1411453588239040986

`4*n*(4*n-1)`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A104188

/-- `4*n*(4*n-1)` -/
def P1411453588239040986.Spec : Prop :=
  ∀ n, P1411453588239040986.a n = A104188 n

theorem P1411453588239040986.correct : P1411453588239040986.Spec := by
  intro n
  simp only [A104188]

end A104188

/-! ## A104188.P2321550215430800801

`record[and(n, -4)²-n]`
-/

namespace A104188.P2321550215430800801
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) (-4) ^ 2 - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A104188.P2321550215430800801

namespace A104188

/-- `record[and(n, -4)²-n]` -/
def P2321550215430800801.Spec : Prop :=
  ∀ n, P2321550215430800801.a n = A104188 n

end A104188

/-! ## A104188.P4703650767255408902

`∑[a(n-1)+32]` with `a(0)=0, a(1)=12`
-/

namespace A104188.P4703650767255408902
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 12] fun n f1 =>
  f1 (n - 1) + 32

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A104188.P4703650767255408902

namespace A104188

/-- `∑[a(n-1)+32]` -/
def P4703650767255408902.Spec : Prop :=
  ∀ n, (P4703650767255408902.a n : ℤ) = A104188 n

end A104188

/-! ## A104188.P9282597444113167760

`record[(3-or(3, n))²-n]`
-/

namespace A104188.P9282597444113167760
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 - (Nat.lor 3 n : ℤ)) ^ 2 - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A104188.P9282597444113167760

namespace A104188

/-- `record[(3-or(3, n))²-n]` -/
def P9282597444113167760.Spec : Prop :=
  ∀ n, P9282597444113167760.a n = A104188 n

end A104188

/-! ## A104188.P1959322333098791008

`4*n+n*record[lcm(8, n)]`
-/

namespace A104188.P1959322333098791008
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 8 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n + n * f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A104188.P1959322333098791008

namespace A104188

/-- `4*n+n*record[lcm(8, n)]` -/
def P1959322333098791008.Spec : Prop :=
  ∀ n, (P1959322333098791008.a n : ℤ) = A104188 n

end A104188

/-! ## A104188.P10131884811052492123

`record[(2*n+1)*(n+1)*2*and(1, n)]`
-/

namespace A104188.P10131884811052492123
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (2 * n + 1) * ((n + 1) * (2 * Nat.land 1 n))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A104188.P10131884811052492123

namespace A104188

/-- `record[(2*n+1)*(n+1)*2*and(1, n)]` -/
def P10131884811052492123.Spec : Prop :=
  ∀ n, (P10131884811052492123.a n : ℤ) = A104188 n

end A104188

/-! ## A104188.P11553866092696732554

`A028994(n)+2*n`
-/

namespace A104188.P11553866092696732554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028994 n + (2 * n : ℤ)

end

end A104188.P11553866092696732554

namespace A104188

/-- `A028994(n)+2*n` -/
def P11553866092696732554.Spec : Prop :=
  ∀ n, P11553866092696732554.a n = A104188 n

end A104188

/-! ## A104188.P15979495924382505307

`A152750(n)+4*n`
-/

namespace A104188.P15979495924382505307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152750 n + (4 * n : ℤ)

end

end A104188.P15979495924382505307

namespace A104188

/-- `A152750(n)+4*n` -/
def P15979495924382505307.Spec : Prop :=
  ∀ n, P15979495924382505307.a n = A104188 n

end A104188

/-! ## A104188.P14812398158996995158

`A016802(n)-4*n`
-/

namespace A104188.P14812398158996995158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016802 n - (4 * n : ℤ)

end

end A104188.P14812398158996995158

namespace A104188

/-- `A016802(n)-4*n` -/
def P14812398158996995158.Spec : Prop :=
  ∀ n, P14812398158996995158.a n = A104188 n

end A104188

/-! ## A104188.P18149243522358430455

`record[A088440(n)²-n]`
-/

namespace A104188.P18149243522358430455
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088440 n ^ 2 - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A104188.P18149243522358430455

namespace A104188

/-- `record[A088440(n)²-n]` -/
def P18149243522358430455.Spec : Prop :=
  ∀ n, P18149243522358430455.a n = A104188 n

end A104188

/-! ## A104188.P14266505970321572105

`A014642(n)+(2*n)²`
-/

namespace A104188.P14266505970321572105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014642 n + ((2 * n) ^ 2 : ℤ)

end

end A104188.P14266505970321572105

namespace A104188

/-- `A014642(n)+(2*n)²` -/
def P14266505970321572105.Spec : Prop :=
  ∀ n, P14266505970321572105.a n = A104188 n

end A104188

/-! ## A104188.P11608844734270773016

`A195023(n)+2*n²`
-/

namespace A104188.P11608844734270773016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195023 n + (2 * n ^ 2 : ℤ)

end

end A104188.P11608844734270773016

namespace A104188

/-- `A195023(n)+2*n²` -/
def P11608844734270773016.Spec : Prop :=
  ∀ n, P11608844734270773016.a n = A104188 n

end A104188

/-! ## A104188.P3423061827473094483

`A153780(n)+∑[2*n]`
-/

namespace A104188.P3423061827473094483
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153780 n + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A104188.P3423061827473094483

namespace A104188

/-- `A153780(n)+∑[2*n]` -/
def P3423061827473094483.Spec : Prop :=
  ∀ n, P3423061827473094483.a n = A104188 n

end A104188

/-! ## A104188.P8561578630507393688

`A143856(n+1)-1+n`
-/

namespace A104188.P8561578630507393688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143856 (n + 1) - 1 + (n : ℤ)

end

end A104188.P8561578630507393688

namespace A104188

/-- `A143856(n+1)-1+n` -/
def P8561578630507393688.Spec : Prop :=
  ∀ n, P8561578630507393688.a n = A104188 n

end A104188

/-! ## A104188.P3137591256773672634

`A143861(n+1)-(n+1)`
-/

namespace A104188.P3137591256773672634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143861 (n + 1) - (n + 1 : ℤ)

end

end A104188.P3137591256773672634

namespace A104188

/-- `A143861(n+1)-(n+1)` -/
def P3137591256773672634.Spec : Prop :=
  ∀ n, P3137591256773672634.a n = A104188 n

end A104188

/-! ## A104188.P13502108644753566173

`A060785(n+2)+n²-n`
-/

namespace A104188.P13502108644753566173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060785 (n + 2) + ((n ^ 2 : ℤ) - (n : ℤ))

end

end A104188.P13502108644753566173

namespace A104188

/-- `A060785(n+2)+n²-n` -/
def P13502108644753566173.Spec : Prop :=
  ∀ n, P13502108644753566173.a n = A104188 n

end A104188

/-! ## A104188.P5127569539341131948

`A014635(n)+A014635(n)`
-/

namespace A104188.P5127569539341131948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014635 n + A014635 n

end

end A104188.P5127569539341131948

namespace A104188

/-- `A014635(n)+A014635(n)` -/
def P5127569539341131948.Spec : Prop :=
  ∀ n, P5127569539341131948.a n = A104188 n

end A104188

/-! ## A104188.P6842501020867882784

`A016742(n)+A014642(n)`
-/

namespace A104188.P6842501020867882784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016742 n + A014642 n

end

end A104188.P6842501020867882784

namespace A104188

/-- `A016742(n)+A014642(n)` -/
def P6842501020867882784.Spec : Prop :=
  ∀ n, P6842501020867882784.a n = A104188 n

end A104188

/-!
# A104189: Prime numbers arising from Schorn's proof that there are infinitely many primes.

The programs for A104189, there is no canonical definition to state claims against.
-/

/-! ## A104189.P2069883462099509089

`record[A362778(n+1)]`
-/

namespace A104189.P2069883462099509089
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362778 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A104189.P2069883462099509089

/-! ## A104189.P13307852340825861298

`p?[∑[round(sqrt(2*n))!]+1]`
-/

namespace A104189.P13307852340825861298
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (SequenceMachineLib.roundAway (Real.sqrt (2 * n : ℝ))).toNat

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A104189.P13307852340825861298

/-! ## A104189.P15998721606210356006

`p?[a(n-1)+round(sqrt(2*n))!]` with `a(0)=2`
-/

namespace A104189.P15998721606210356006
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [2] fun n f1 =>
  f1 (n - 1) + Nat.factorial (SequenceMachineLib.roundAway (Real.sqrt (2 * n : ℝ))).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A104189.P15998721606210356006

/-! ## A104189.P12547140896452967009

`p?[or((1-C(∑[char[∑[n]]], 2)+n)*∑[char[∑[n+1]]]!, char[comp[∑[n-1]]])]`
-/

namespace A104189.P12547140896452967009
noncomputable section

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = n then 1 else 0

def f7 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f6 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f7 j

open Classical in
def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f6 j = n then 1 else 0

def f10 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def f9 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f10 j

open Classical in
def f8 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f9 j ≠ (x : ℤ)) n

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((1 - (Nat.choose (∑ j ∈ Finset.range (n + 1), f2 j) 2 : ℤ) + (n : ℤ)) * (Nat.factorial (∑ j ∈ Finset.range (n + 1), f5 j) : ℤ)) ((if ∃ j, f8 j = n then 1 else 0 : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A104189.P12547140896452967009

/-! ## A104189.P11760679672686081178

`p?[A362777(n+1)]`
-/

namespace A104189.P11760679672686081178
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362777 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A104189.P11760679672686081178

/-!
# A104190: Sums of primes between successive powers of two.

The programs for A104190, there is no canonical definition to state claims against.
-/

/-! ## A104190.P13305366304182322296

`A099825(n+1)-A099825(n)-(A033844(n+1)-A033844(n))`
-/

namespace A104190.P13305366304182322296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099825 (n + 1) - A099825 n - (A033844 (n + 1) - A033844 n)

end

end A104190.P13305366304182322296

/-! ## A104190.P8527391081289954181

`Δ[A099825(n)-A018249(n)]`
-/

namespace A104190.P8527391081289954181
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099825 n - A018249 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A104190.P8527391081289954181

/-! ## A104190.P13999908810135522757

`Δ[A099825(n)-A033844(n)]`
-/

namespace A104190.P13999908810135522757
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099825 n - A033844 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A104190.P13999908810135522757

/-! ## A104190.P929762009655342250

`Δ[A074325(n)+A099825(n)-A051439(n)]`
-/

namespace A104190.P929762009655342250
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074325 n + (A099825 n - A051439 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A104190.P929762009655342250

/-! ## A104190.P8888120349086570602

`Δ[A099825(n)-A336321(A000040(n+1))]`
-/

namespace A104190.P8888120349086570602
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099825 n - A336321 (A000040 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A104190.P8888120349086570602

/-!
# A104191: Sum of Euler totient function between successive powers of two.

The programs for A104191, the canonical program `A104191.P16304961561341837722` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A104191 has offset 0).

The definition of A104191 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002088, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A104191.P16304961561341837722

`A002088(2^(n+1)-1)-A002088(2^n-1)`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A104191

/-- `A002088(2^(n+1)-1)-A002088(2^n-1)` -/
def P16304961561341837722.Spec : Prop :=
  ∀ n, P16304961561341837722.a n = A104191 n

theorem P16304961561341837722.correct : P16304961561341837722.Spec := by
  intro n
  simp only [A104191]

end A104191

/-! ## A104191.P18285024106896547706

`Δ[A255541(n)]`
-/

namespace A104191.P18285024106896547706
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255541 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A104191.P18285024106896547706

namespace A104191

/-- `Δ[A255541(n)]` -/
def P18285024106896547706.Spec : Prop :=
  ∀ n, P18285024106896547706.a n = A104191 n

end A104191

/-! ## A104191.P1486108705982418596

`A255541(n+1)-A255541(n)`
-/

namespace A104191.P1486108705982418596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255541 (n + 1) - A255541 n

end

end A104191.P1486108705982418596

namespace A104191

/-- `A255541(n+1)-A255541(n)` -/
def P1486108705982418596.Spec : Prop :=
  ∀ n, P1486108705982418596.a n = A104191 n

end A104191

/-! ## A104191.P15324910178666472291

`Δ[A002088(2^n-1)]`
-/

namespace A104191.P15324910178666472291
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002088 (2 ^ n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A104191.P15324910178666472291

namespace A104191

/-- `Δ[A002088(2^n-1)]` -/
def P15324910178666472291.Spec : Prop :=
  ∀ n, P15324910178666472291.a n = A104191 n

theorem P15324910178666472291.correct : P15324910178666472291.Spec := by
  intro n
  simp only [A104191, Nat.add_sub_cancel, A104191.P15324910178666472291.f1, A104191.P15324910178666472291.a, A104191.P16304961561341837722.a, SequenceMachineLib.memo_apply]

end A104191

/-! ## A104191.P5999320253809957191

`abs(Δ[A002088(A000225(n))])`
-/

namespace A104191.P5999320253809957191
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002088 (A000225 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A104191.P5999320253809957191

namespace A104191

/-- `abs(Δ[A002088(A000225(n))])` -/
def P5999320253809957191.Spec : Prop :=
  ∀ n, P5999320253809957191.a n = A104191 n

end A104191

/-!
# A104192: a(n) = prime(n) - phi(n).

The programs for A104192, the canonical program `A104192.P3970936077478306181` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A104192 has offset 1).

The definition of A104192 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A104192.P8753265180504561427

`Δ[A007504(n)-A002088(n)]`
-/

namespace A104192.P8753265180504561427
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n - A002088 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A104192.P8753265180504561427

namespace A104192

/-- `Δ[A007504(n)-A002088(n)]` -/
def P8753265180504561427.Spec : Prop :=
  ∀ n, P8753265180504561427.a n = A104192 (n + 1)

end A104192

/-! ## A104192.P5349094521470336788

`Δ[A007504(n)-A005728(n)]`
-/

namespace A104192.P5349094521470336788
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n - A005728 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A104192.P5349094521470336788

namespace A104192

/-- `Δ[A007504(n)-A005728(n)]` -/
def P5349094521470336788.Spec : Prop :=
  ∀ n, P5349094521470336788.a n = A104192 (n + 1)

end A104192

/-! ## A104192.P12199844723848108638

`A000040(n+1)-Δ[A002088(n)]`
-/

namespace A104192.P12199844723848108638
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002088 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) - (f1 (n + 1) - f1 n)

end

end A104192.P12199844723848108638

namespace A104192

/-- `A000040(n+1)-Δ[A002088(n)]` -/
def P12199844723848108638.Spec : Prop :=
  ∀ n, P12199844723848108638.a n = A104192 (n + 1)

end A104192

/-! ## A104192.P3535351692009192544

`A000040(n+1)-Δ[A005728(n)]`
-/

namespace A104192.P3535351692009192544
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005728 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) - (f1 (n + 1) - f1 n)

end

end A104192.P3535351692009192544

namespace A104192

/-- `A000040(n+1)-Δ[A005728(n)]` -/
def P3535351692009192544.Spec : Prop :=
  ∀ n, P3535351692009192544.a n = A104192 (n + 1)

end A104192

/-! ## A104192.P13499636611354562295

`Δ[A007504(n)]-A000010(n+1)`
-/

namespace A104192.P13499636611354562295
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A000010 (n + 1)

end

end A104192.P13499636611354562295

namespace A104192

/-- `Δ[A007504(n)]-A000010(n+1)` -/
def P13499636611354562295.Spec : Prop :=
  ∀ n, P13499636611354562295.a n = A104192 (n + 1)

end A104192

/-! ## A104192.P14681256597611191690

`A051953(n+1)+A014689(n+1)`
-/

namespace A104192.P14681256597611191690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051953 (n + 1) + A014689 (n + 1)

end

end A104192.P14681256597611191690

namespace A104192

/-- `A051953(n+1)+A014689(n+1)` -/
def P14681256597611191690.Spec : Prop :=
  ∀ n, P14681256597611191690.a n = A104192 (n + 1)

end A104192

/-! ## A104192.P10667445257838926204

`A104195(n+1)+A002322(n+1)`
-/

namespace A104192.P10667445257838926204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104195 (n + 1) + A002322 (n + 1)

end

end A104192.P10667445257838926204

namespace A104192

/-- `A104195(n+1)+A002322(n+1)` -/
def P10667445257838926204.Spec : Prop :=
  ∀ n, P10667445257838926204.a n = A104192 (n + 1)

end A104192

/-! ## A104192.P12289822665814821226

`A219428(n+1)+A014692(n+1)`
-/

namespace A104192.P12289822665814821226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219428 (n + 1) + A014692 (n + 1)

end

end A104192.P12289822665814821226

namespace A104192

/-- `A219428(n+1)+A014692(n+1)` -/
def P12289822665814821226.Spec : Prop :=
  ∀ n, P12289822665814821226.a n = A104192 (n + 1)

end A104192

/-! ## A104192.P13256349872724568781

`A000040(n+1)-A000010(n+1)`
-/

namespace A104192.P13256349872724568781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) - A000010 (n + 1)

end

end A104192.P13256349872724568781

namespace A104192

/-- `A000040(n+1)-A000010(n+1)` -/
def P13256349872724568781.Spec : Prop :=
  ∀ n, P13256349872724568781.a n = A104192 (n + 1)

end A104192

/-! ## A104192.P14078757198543058694

`A008864(n+1)-A039649(n+1)`
-/

namespace A104192.P14078757198543058694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008864 (n + 1) - A039649 (n + 1)

end

end A104192.P14078757198543058694

namespace A104192

/-- `A008864(n+1)-A039649(n+1)` -/
def P14078757198543058694.Spec : Prop :=
  ∀ n, P14078757198543058694.a n = A104192 (n + 1)

end A104192

/-! ## A104192.P4028748230931955650

`A006093(n+1)-A109606(n+1)`
-/

namespace A104192.P4028748230931955650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006093 (n + 1) - A109606 (n + 1)

end

end A104192.P4028748230931955650

namespace A104192

/-- `A006093(n+1)-A109606(n+1)` -/
def P4028748230931955650.Spec : Prop :=
  ∀ n, P4028748230931955650.a n = A104192 (n + 1)

end A104192

/-! ## A104192.P3970936077478306181

`A014688(n+1)-A121048(n+1)`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A104192

/-- `A014688(n+1)-A121048(n+1)` -/
def P3970936077478306181.Spec : Prop :=
  ∀ n, P3970936077478306181.a n = A104192 (n + 1)

theorem P3970936077478306181.correct : P3970936077478306181.Spec := by
  intro n
  simp only [A104192, Nat.add_sub_cancel]

end A104192

/-! ## A104192.P10409590582506828671

`A111181(n+1)-A037228(n+1)`
-/

namespace A104192.P10409590582506828671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111181 (n + 1) - A037228 (n + 1)

end

end A104192.P10409590582506828671

namespace A104192

/-- `A111181(n+1)-A037228(n+1)` -/
def P10409590582506828671.Spec : Prop :=
  ∀ n, P10409590582506828671.a n = A104192 (n + 1)

end A104192

/-! ## A104192.P3889032678567330867

`A100486(n+1)-A082515(n+1)`
-/

namespace A104192.P3889032678567330867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100486 (n + 1) - A082515 (n + 1)

end

end A104192.P3889032678567330867

namespace A104192

/-- `A100486(n+1)-A082515(n+1)` -/
def P3889032678567330867.Spec : Prop :=
  ∀ n, P3889032678567330867.a n = A104192 (n + 1)

end A104192

/-! ## A104192.P12824290490931472722

`A104193(n+1)-A104194(n+1)`
-/

namespace A104192.P12824290490931472722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104193 (n + 1) - A104194 (n + 1)

end

end A104192.P12824290490931472722

namespace A104192

/-- `A104193(n+1)-A104194(n+1)` -/
def P12824290490931472722.Spec : Prop :=
  ∀ n, P12824290490931472722.a n = A104192 (n + 1)

end A104192

/-! ## A104192.P1807030998897032328

`A004232(n+1)-A264724(n+1)`
-/

namespace A104192.P1807030998897032328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004232 (n + 1) - A264724 (n + 1)

end

end A104192.P1807030998897032328

namespace A104192

/-- `A004232(n+1)-A264724(n+1)` -/
def P1807030998897032328.Spec : Prop :=
  ∀ n, P1807030998897032328.a n = A104192 (n + 1)

end A104192

/-! ## A104192.P3187237499583507147

`A258434(n+1)-A073497(n+1)`
-/

namespace A104192.P3187237499583507147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258434 (n + 1) - A073497 (n + 1)

end

end A104192.P3187237499583507147

namespace A104192

/-- `A258434(n+1)-A073497(n+1)` -/
def P3187237499583507147.Spec : Prop :=
  ∀ n, P3187237499583507147.a n = A104192 (n + 1)

end A104192

/-! ## A104192.P10399538224029654246

`sqrt(A001248(n+1))-A000010(n+1)`
-/

namespace A104192.P10399538224029654246
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A001248 (n + 1) : ℝ) - (A000010 (n + 1) : ℝ)

end

end A104192.P10399538224029654246

namespace A104192

/-- `sqrt(A001248(n+1))-A000010(n+1)` -/
def P10399538224029654246.Spec : Prop :=
  ∀ n, P10399538224029654246.a n = (A104192 (n + 1) : ℝ)

end A104192

/-! ## A104192.P4896022459993566911

`A000040(n+1)-sqrt(A127473(n+1))`
-/

namespace A104192.P4896022459993566911
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A000040 (n + 1) : ℝ) - Real.sqrt (A127473 (n + 1) : ℝ)

end

end A104192.P4896022459993566911

namespace A104192

/-- `A000040(n+1)-sqrt(A127473(n+1))` -/
def P4896022459993566911.Spec : Prop :=
  ∀ n, P4896022459993566911.a n = (A104192 (n + 1) : ℝ)

end A104192

/-! ## A104192.P2460284138733129426

`A007504(n+1)-(A007504(n)+A000010(n+1))`
-/

namespace A104192.P2460284138733129426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 (n + 1) - (A007504 n + A000010 (n + 1))

end

end A104192.P2460284138733129426

namespace A104192

/-- `A007504(n+1)-(A007504(n)+A000010(n+1))` -/
def P2460284138733129426.Spec : Prop :=
  ∀ n, P2460284138733129426.a n = A104192 (n + 1)

end A104192

/-!
# A104193: a(n) = prime(n) - Carmichael lambda(n).

The programs for A104193, there is no canonical definition to state claims against.
-/

/-! ## A104193.P2694189029819285711

`A000040(n+1)-A002322(n+1)`
-/

namespace A104193.P2694189029819285711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) - A002322 (n + 1)

end

end A104193.P2694189029819285711

/-! ## A104193.P3841058903085257983

`A104195(n+1)+Δ[A002088(n)]`
-/

namespace A104193.P3841058903085257983
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002088 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104195 (n + 1) + (f1 (n + 1) - f1 n)

end

end A104193.P3841058903085257983

/-! ## A104193.P5665715212352586631

`Δ[A007504(n)]-A002322(n+1)`
-/

namespace A104193.P5665715212352586631
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A002322 (n + 1)

end

end A104193.P5665715212352586631

/-! ## A104193.P7488205569105664057

`A104195(n+1)+A000010(n+1)`
-/

namespace A104193.P7488205569105664057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104195 (n + 1) + A000010 (n + 1)

end

end A104193.P7488205569105664057

/-! ## A104193.P6065619403351394997

`A104194(n+1)+A104192(n+1)`
-/

namespace A104193.P6065619403351394997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104194 (n + 1) + A104192 (n + 1)

end

end A104193.P6065619403351394997

/-! ## A104193.P7555953981665294151

`A277127(n+1)+A014689(n+1)`
-/

namespace A104193.P7555953981665294151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277127 (n + 1) + A014689 (n + 1)

end

end A104193.P7555953981665294151

/-! ## A104193.P15522853367656842510

`A008864(n+1)-A263027(n+1)`
-/

namespace A104193.P15522853367656842510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008864 (n + 1) - A263027 (n + 1)

end

end A104193.P15522853367656842510

/-! ## A104193.P9795423322103196254

`p?[A247665(n+1)]-A002322(n+1)`
-/

namespace A104193.P9795423322103196254
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247665 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - A002322 (n + 1)

end

end A104193.P9795423322103196254

/-! ## A104193.P17963880233601129258

`A006093(n+1)+1-A002322(n+1)`
-/

namespace A104193.P17963880233601129258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006093 (n + 1) + (1 - A002322 (n + 1))

end

end A104193.P17963880233601129258

/-! ## A104193.P15379398529217996480

`A008864(n+1)-(A002322(n+1)+1)`
-/

namespace A104193.P15379398529217996480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008864 (n + 1) - (A002322 (n + 1) + 1)

end

end A104193.P15379398529217996480

/-! ## A104193.P6616863296565828544

`A040976(n+1)+2-A002322(n+1)`
-/

namespace A104193.P6616863296565828544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040976 (n + 1) + (2 - A002322 (n + 1))

end

end A104193.P6616863296565828544

/-! ## A104193.P6165996840478300582

`A006005(n+1)+A000007(n)-A002322(n+1)`
-/

namespace A104193.P6165996840478300582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006005 (n + 1) + (A000007 n - A002322 (n + 1))

end

end A104193.P6165996840478300582

/-! ## A104193.P8237418968996716088

`A104195(n+1)+A002322(n+1)*A034380(n+1)`
-/

namespace A104193.P8237418968996716088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104195 (n + 1) + A002322 (n + 1) * A034380 (n + 1)

end

end A104193.P8237418968996716088

/-! ## A104193.P1178499669474242580

`A104195(n+1)+A046073(n+1)*A060594(n+1)`
-/

namespace A104193.P1178499669474242580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104195 (n + 1) + A046073 (n + 1) * A060594 (n + 1)

end

end A104193.P1178499669474242580

/-! ## A104193.P7932967351913749931

`A104195(n+1)+A007434(n+1)/A001615(n+1)`
-/

namespace A104193.P7932967351913749931
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A104195 (n + 1) : ℚ) + (A007434 (n + 1) : ℚ) / (A001615 (n + 1) : ℚ)

end

end A104193.P7932967351913749931

/-! ## A104193.P6057195060689238382

`A008578(n+2)-A002322(n+1)`
-/

namespace A104193.P6057195060689238382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 2) - A002322 (n + 1)

end

end A104193.P6057195060689238382

/-! ## A104193.P4245754865870951053

`A158611(n+3)-A002322(n+1)`
-/

namespace A104193.P4245754865870951053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158611 (n + 3) - A002322 (n + 1)

end

end A104193.P4245754865870951053

/-! ## A104193.P8792466168514294321

`p?[A000961(n+1)]-A002322(n+1)`
-/

namespace A104193.P8792466168514294321
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000961 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - A002322 (n + 1)

end

end A104193.P8792466168514294321

/-! ## A104193.P268009984610887214

`record[A006530(n+2)]-A002322(n+1)`
-/

namespace A104193.P268009984610887214
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A002322 (n + 1)

end

end A104193.P268009984610887214

/-! ## A104193.P10638131327449898703

`record[A020639(n+2)]-A002322(n+1)`
-/

namespace A104193.P10638131327449898703
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A002322 (n + 1)

end

end A104193.P10638131327449898703

/-!
# A104194: a(n) = phi(n) - lambda(n).

The programs for A104194, there is no canonical definition to state claims against.
-/

/-! ## A104194.P12662683898554681918

`A000010(n+1)-A002322(n+1)`
-/

namespace A104194.P12662683898554681918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1) - A002322 (n + 1)

end

end A104194.P12662683898554681918

/-! ## A104194.P10455806014310610745

`Δ[A002088(n)]-A002322(n+1)`
-/

namespace A104194.P10455806014310610745
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002088 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A002322 (n + 1)

end

end A104194.P10455806014310610745

/-! ## A104194.P16342357829934288210

`Δ[A005728(n)]-A002322(n+1)`
-/

namespace A104194.P16342357829934288210
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005728 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A002322 (n + 1)

end

end A104194.P16342357829934288210

/-! ## A104194.P18264311477599709995

`A104193(n+1)-A104192(n+1)`
-/

namespace A104194.P18264311477599709995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104193 (n + 1) - A104192 (n + 1)

end

end A104194.P18264311477599709995

/-! ## A104194.P16983686906843262398

`A039649(n+1)-A263027(n+1)`
-/

namespace A104194.P16983686906843262398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039649 (n + 1) - A263027 (n + 1)

end

end A104194.P16983686906843262398

/-! ## A104194.P11797274596414117698

`A277127(n+1)-A051953(n+1)`
-/

namespace A104194.P11797274596414117698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277127 (n + 1) - A051953 (n + 1)

end

end A104194.P11797274596414117698

/-! ## A104194.P17405988196192437183

`sqrt(A127473(n+1))-A002322(n+1)`
-/

namespace A104194.P17405988196192437183
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A127473 (n + 1) : ℝ) - (A002322 (n + 1) : ℝ)

end

end A104194.P17405988196192437183

/-! ## A104194.P17183878261221062025

`A039649(n+1)-(A002322(n+1)+1)`
-/

namespace A104194.P17183878261221062025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039649 (n + 1) - (A002322 (n + 1) + 1)

end

end A104194.P17183878261221062025

/-! ## A104194.P17129175219177996489

`A109606(n+1)+1-A002322(n+1)`
-/

namespace A104194.P17129175219177996489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109606 (n + 1) + (1 - A002322 (n + 1))

end

end A104194.P17129175219177996489

/-! ## A104194.P14339435160184938206

`A000010(n+1)+1-A263027(n+1)`
-/

namespace A104194.P14339435160184938206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1) + (1 - A263027 (n + 1))

end

end A104194.P14339435160184938206

/-! ## A104194.P8137291705550115983

`(A034380(n+1)-1)*A002322(n+1)`
-/

namespace A104194.P8137291705550115983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A034380 (n + 1) - 1) * A002322 (n + 1)

end

end A104194.P8137291705550115983

/-! ## A104194.P2167739954740841768

`n-(A219428(n+1)+A002322(n+1))`
-/

namespace A104194.P2167739954740841768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (A219428 (n + 1) + A002322 (n + 1))

end

end A104194.P2167739954740841768

/-! ## A104194.P11188698213541086712

`A121048(n+1)-(A263027(n+1)+n)`
-/

namespace A104194.P11188698213541086712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121048 (n + 1) - (A263027 (n + 1) + (n : ℤ))

end

end A104194.P11188698213541086712

/-! ## A104194.P15592895797269542558

`A109606(n+1)+A277127(n+1)-n`
-/

namespace A104194.P15592895797269542558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109606 (n + 1) + (A277127 (n + 1) - (n : ℤ))

end

end A104194.P15592895797269542558

/-! ## A104194.P16696570101521636511

`1-A051953(n+1)+n-A002322(n+1)`
-/

namespace A104194.P16696570101521636511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A051953 (n + 1) + (n : ℤ) - A002322 (n + 1)

end

end A104194.P16696570101521636511

/-! ## A104194.P16303218649464027171

`∏{p}[n+1, #-1]*A003557(n+1)-A002322(n+1)`
-/

namespace A104194.P16303218649464027171
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∏ p ∈ Nat.primeFactors (f1 n), ((p : ℤ) - 1)) * A003557 (n + 1) - A002322 (n + 1)

end

end A104194.P16303218649464027171

/-! ## A104194.P4446672526060460391

`(n+1)/∏{p}[n+1, #]*A173557(n+1)-A002322(n+1)`
-/

namespace A104194.P4446672526060460391
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ) * (A173557 (n + 1) : ℚ) - (A002322 (n + 1) : ℚ)

end

end A104194.P4446672526060460391

/-! ## A104194.P14713243071390096520

`A002088(n+1)-(A002322(n+1)+A002088(n))`
-/

namespace A104194.P14713243071390096520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002088 (n + 1) - (A002322 (n + 1) + A002088 n)

end

end A104194.P14713243071390096520

/-! ## A104194.P13691247976679587522

`A048864(n+1)+A048865(n+1)-A002322(n+1)`
-/

namespace A104194.P13691247976679587522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048864 (n + 1) + (A048865 (n + 1) - A002322 (n + 1))

end

end A104194.P13691247976679587522

/-! ## A104194.P17328701972777664657

`A000010(n+1)+A051903(n+1)-A134198(n+1)`
-/

namespace A104194.P17328701972777664657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1) + (A051903 (n + 1) - A134198 (n + 1))

end

end A104194.P17328701972777664657

/-!
# A104195: a(n) = -(phi(n) + CarmichaelLambda(n)) + prime(n).

The programs for A104195, there is no canonical definition to state claims against.
-/

/-! ## A104195.P14370220698826401061

`A000040(n+1)-A000010(n+1)-A002322(n+1)`
-/

namespace A104195.P14370220698826401061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) - A000010 (n + 1) - A002322 (n + 1)

end

end A104195.P14370220698826401061

/-! ## A104195.P903100361799031365

`A104193(n+1)-Δ[A002088(n)]`
-/

namespace A104195.P903100361799031365
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002088 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104193 (n + 1) - (f1 (n + 1) - f1 n)

end

end A104195.P903100361799031365

/-! ## A104195.P15546578386679101109

`A104193(n+1)-Δ[A005728(n)]`
-/

namespace A104195.P15546578386679101109
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005728 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104193 (n + 1) - (f1 (n + 1) - f1 n)

end

end A104195.P15546578386679101109

/-! ## A104195.P13968724098128520287

`A104193(n+1)-A000010(n+1)`
-/

namespace A104195.P13968724098128520287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104193 (n + 1) - A000010 (n + 1)

end

end A104195.P13968724098128520287

/-! ## A104195.P7155852809933886354

`A104192(n+1)-A002322(n+1)`
-/

namespace A104195.P7155852809933886354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104192 (n + 1) - A002322 (n + 1)

end

end A104195.P7155852809933886354

/-! ## A104195.P16969562007317328466

`A104193(n+1)-sqrt(A127473(n+1))`
-/

namespace A104195.P16969562007317328466
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A104193 (n + 1) : ℝ) - Real.sqrt (A127473 (n + 1) : ℝ)

end

end A104195.P16969562007317328466

/-! ## A104195.P6899979527359669463

`A104193(n+1)+1-A039649(n+1)`
-/

namespace A104195.P6899979527359669463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104193 (n + 1) + (1 - A039649 (n + 1))

end

end A104195.P6899979527359669463

/-! ## A104195.P14862351638031705101

`A104193(n+1)-(A109606(n+1)+1)`
-/

namespace A104195.P14862351638031705101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104193 (n + 1) - (A109606 (n + 1) + 1)

end

end A104195.P14862351638031705101

/-! ## A104195.P5694187679192815301

`A104193(n+1)+A219428(n+1)-n`
-/

namespace A104195.P5694187679192815301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104193 (n + 1) + (A219428 (n + 1) - (n : ℤ))

end

end A104195.P5694187679192815301

/-! ## A104195.P16382313432435790482

`A104193(n+1)-A124625(A039649(n+1))`
-/

namespace A104195.P16382313432435790482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104193 (n + 1) - A124625 (A039649 (n + 1)).toNat

end

end A104195.P16382313432435790482

/-! ## A104195.P3005092425369666809

`Δ[A007504(n)]-(A002322(n+1)+A000010(n+1))`
-/

namespace A104195.P3005092425369666809
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - (A002322 (n + 1) + A000010 (n + 1))

end

end A104195.P3005092425369666809

/-! ## A104195.P1277144989169321943

`A008864(n+1)-(A039649(n+1)+A002322(n+1))`
-/

namespace A104195.P1277144989169321943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008864 (n + 1) - (A039649 (n + 1) + A002322 (n + 1))

end

end A104195.P1277144989169321943

/-! ## A104195.P116937279747400154

`A014692(n+1)+A051953(n+1)-A263027(n+1)`
-/

namespace A104195.P116937279747400154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014692 (n + 1) + (A051953 (n + 1) - A263027 (n + 1))

end

end A104195.P116937279747400154

/-! ## A104195.P12463227284449673993

`A104193(n+1)-A046073(n+1)*A060594(n+1)`
-/

namespace A104195.P12463227284449673993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104193 (n + 1) - A046073 (n + 1) * A060594 (n + 1)

end

end A104195.P12463227284449673993

/-! ## A104195.P10245708471937822745

`A104193(n+1)-Δ[A049696(n)/2]`
-/

namespace A104195.P10245708471937822745
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A049696 n : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A104193 (n + 1) : ℚ) - (f1 (n + 1) - f1 n)

end

end A104195.P10245708471937822745

/-! ## A104195.P13170976924599369461

`A008578(n+2)-(A002322(n+1)+A000010(n+1))`
-/

namespace A104195.P13170976924599369461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 2) - (A002322 (n + 1) + A000010 (n + 1))

end

end A104195.P13170976924599369461

/-! ## A104195.P4542341478214713907

`A104193(n+1)+A049632(n)-A049633(n)`
-/

namespace A104195.P4542341478214713907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104193 (n + 1) + (A049632 n - A049633 n)

end

end A104195.P4542341478214713907

/-! ## A104195.P2534251787430174555

`A104193(n+1)-A002322(A219793(n+1))`
-/

namespace A104195.P2534251787430174555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104193 (n + 1) - A002322 (A219793 (n + 1)).toNat

end

end A104195.P2534251787430174555

/-!
# A104196: Sum of CarmichaelLambda[n] between successive powers of 2.

The programs for A104196, there is no canonical definition to state claims against.
-/

/-! ## A104196.P9712121842861470707

`or(A290124(n+1), A305834(2^n-1))`
-/

namespace A104196.P9712121842861470707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A290124 (n + 1)) (A305834 (2 ^ n - 1))

end

end A104196.P9712121842861470707

/-! ## A104196.P10104892923988254890

`or(A163768(A290124(n+1)), A290124(n+1))`
-/

namespace A104196.P10104892923988254890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A163768 (A290124 (n + 1)).toNat) (A290124 (n + 1))

end

end A104196.P10104892923988254890

/-!
# A104197: Largest nonnegative integer r such that prime(n) + r and prime(n) - r are both prime.

The programs for A104197, there is no canonical definition to state claims against.
-/

/-! ## A104197.P8304996460864696088

`A000040(n+1)-A092938(n+1)`
-/

namespace A104197.P8304996460864696088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) - A092938 (n + 1)

end

end A104197.P8304996460864696088

/-! ## A104197.P12948368914201230482

`A100484(n+1)/2-A092938(n+1)`
-/

namespace A104197.P12948368914201230482
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A100484 (n + 1) : ℚ) / 2 - (A092938 (n + 1) : ℚ)

end

end A104197.P12948368914201230482

/-! ## A104197.P15980684106066765422

`A008578(n+2)-A020481(A008578(n+2))`
-/

namespace A104197.P15980684106066765422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 2) - A020481 (A008578 (n + 2)).toNat

end

end A104197.P15980684106066765422

/-! ## A104197.P13479568047675273690

`A182986(n+2)-A020481(A182986(n+2))`
-/

namespace A104197.P13479568047675273690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182986 (n + 2) - A020481 (A182986 (n + 2)).toNat

end

end A104197.P13479568047675273690

/-! ## A104197.P4144162337362956887

`A020482(A006093(n+1)+1)-Δ[A007504(n)]`
-/

namespace A104197.P4144162337362956887
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020482 (A006093 (n + 1) + 1).toNat - (f1 (n + 1) - f1 n)

end

end A104197.P4144162337362956887

/-! ## A104197.P5523538859038900063

`A020482(A008864(n+1)-1)-Δ[A007504(n)]`
-/

namespace A104197.P5523538859038900063
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020482 (A008864 (n + 1) - 1).toNat - (f1 (n + 1) - f1 n)

end

end A104197.P5523538859038900063

/-! ## A104197.P13375851697179157724

`A020482(A113935(n+1)-3)-Δ[A007504(n)]`
-/

namespace A104197.P13375851697179157724
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020482 (A113935 (n + 1) - 3).toNat - (f1 (n + 1) - f1 n)

end

end A104197.P13375851697179157724

/-! ## A104197.P13235368688958492412

`A020482(A052147(n+1)-2)-(A052147(n+1)-2)`
-/

namespace A104197.P13235368688958492412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020482 (A052147 (n + 1) - 2).toNat - (A052147 (n + 1) - 2)

end

end A104197.P13235368688958492412

/-! ## A104197.P18369309016199861049

`A112824(p?[comp[n²]])`
-/

namespace A104197.P18369309016199861049
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112824 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A104197.P18369309016199861049

/-! ## A104197.P739345363887651416

`A047949(A000040(n+1))`
-/

namespace A104197.P739345363887651416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047949 (A000040 (n + 1)).toNat

end

end A104197.P739345363887651416

/-! ## A104197.P6201327448022722358

`A047949(A008578(n+2))`
-/

namespace A104197.P6201327448022722358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047949 (A008578 (n + 2)).toNat

end

end A104197.P6201327448022722358

/-! ## A104197.P17609952074708636332

`A047949(A182986(n+2))`
-/

namespace A104197.P17609952074708636332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047949 (A182986 (n + 2)).toNat

end

end A104197.P17609952074708636332

/-! ## A104197.P2643617113490917684

`A112824(A175787(n+2))`
-/

namespace A104197.P2643617113490917684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112824 (A175787 (n + 2)).toNat

end

end A104197.P2643617113490917684

/-! ## A104197.P14177404716789438814

`A047949(record[A006530(n+2)])`
-/

namespace A104197.P14177404716789438814
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047949 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A104197.P14177404716789438814

/-! ## A104197.P3667138610694225048

`A047949(record[A014963(n+2)])`
-/

namespace A104197.P3667138610694225048
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047949 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A104197.P3667138610694225048

/-! ## A104197.P13671398815873847977

`A047949(record[A020482(n+2)])`
-/

namespace A104197.P13671398815873847977
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020482 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047949 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A104197.P13671398815873847977

/-! ## A104197.P10031872246735032141

`A047949(record[A020639(n+2)])`
-/

namespace A104197.P10031872246735032141
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047949 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A104197.P10031872246735032141

/-! ## A104197.P6671659238254661000

`A112824(record[A006530(n+2)])`
-/

namespace A104197.P6671659238254661000
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112824 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A104197.P6671659238254661000

/-! ## A104197.P1370272030265787604

`A112824(record[A014963(n+2)])`
-/

namespace A104197.P1370272030265787604
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112824 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A104197.P1370272030265787604

/-! ## A104197.P1472256728723481295

`A112824(record[A020482(n+2)])`
-/

namespace A104197.P1472256728723481295
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020482 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112824 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A104197.P1472256728723481295

/-!
# A104199: Lower bound on a straddle prime pair.

The programs for A104199, there is no canonical definition to state claims against.
-/

/-! ## A104199.P1398070260684700534

`p?[Δ[A064924(n+2)]]`
-/

namespace A104199.P1398070260684700534
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064924 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A104199.P1398070260684700534

/-! ## A104199.P5733372603775788104

`p?[Δ[A013637(n+3)]]`
-/

namespace A104199.P5733372603775788104
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013637 (n + 3)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A104199.P5733372603775788104

/-! ## A104199.P1612596195567761778

`A000040(comp[p?[round(8*n/7)]-2]-n)`
-/

namespace A104199.P1612596195567761778
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (8 * ((n : ℚ) / 7))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n) - 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n - n)

end

end A104199.P1612596195567761778

/-! ## A104199.P14844733872665860049

`A322394(comp[p?[round(8*n/7)]-2]-n)`
-/

namespace A104199.P14844733872665860049
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (8 * ((n : ℚ) / 7))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n) - 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322394 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n - n)

end

end A104199.P14844733872665860049

/-! ## A104199.P10157821329510362057

`A007917(Δ[A053767(n)])`
-/

namespace A104199.P10157821329510362057
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053767 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007917 (f1 (n + 1) - f1 n).toNat

end

end A104199.P10157821329510362057

/-! ## A104199.P12750604441748010320

`A000040(A073425(n+1))`
-/

namespace A104199.P12750604441748010320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A073425 (n + 1)).toNat

end

end A104199.P12750604441748010320

/-! ## A104199.P7357401323610368576

`A008578(A073169(n+1))`
-/

namespace A104199.P7357401323610368576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (A073169 (n + 1)).toNat

end

end A104199.P7357401323610368576

/-! ## A104199.P5207483132963344774

`A136548(A002808(n+1))`
-/

namespace A104199.P5207483132963344774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136548 (A002808 (n + 1)).toNat

end

end A104199.P5207483132963344774

