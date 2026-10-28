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
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C037
import Seq.B000.C038
import Seq.B000.C039
import Seq.B000.C041
import Seq.B000.C042
import Seq.B000.C043
import Seq.B000.C044
import Seq.B000.C048
import Seq.B000.C049
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C004
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C009
import Seq.B001.C012
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C006
import Seq.B002.C007
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B003.C004
import Seq.B003.C005
import Seq.B004.C000
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C000
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

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A032507: Numbers k such that 261*2^k+1 is prime.

The programs for A032507, there is no canonical definition to state claims against.
-/

/-! ## A032507.P17864491520746603080

`lt[A317443(n+2), A318281(n+1)]`
-/

namespace A032507.P17864491520746603080
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317443 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318281 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A032507.P17864491520746603080

/-! ## A032507.P12942822207327298114

`lt[A345531(n+1), A000203(A068608(n))]`
-/

namespace A032507.P12942822207327298114
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345531 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A068608 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A032507.P12942822207327298114

/-! ## A032507.P785458490206600019

`lt[A054731(n+2), A060648(A068608(n))]`
-/

namespace A032507.P785458490206600019
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054731 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060648 (A068608 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A032507.P785458490206600019

/-!
# A032509: a(n) = round(tan(Pi*(1-1/n)/2)).

The programs for A032509, the canonical program `A032509.P10766907568792992209` is in `Seq.B000.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A032509 has offset 1).

The definition of A032509 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `round(tan(π*(1-1/(n+1))/2))` (program `A032509.P10766907568792992209`, by `A032509.P10766907568792992209.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A032509.P10766907568792992209

`round(tan(π*(1-1/(n+1))/2))`

The canonical program, it is in `Seq.B000.C007`.
-/

namespace A032509

/-- `round(tan(π*(1-1/(n+1))/2))` -/
def P10766907568792992209.Spec : Prop :=
  ∀ n, P10766907568792992209.a n = A032509 (n + 1)

theorem P10766907568792992209.correct : P10766907568792992209.Spec := by
  intro n
  simp only [A032509, Nat.add_sub_cancel]

end A032509

/-! ## A032509.P10778961472404351731

`round(cot(acos(0)/(n+1)))`
-/

namespace A032509.P10778961472404351731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.cot (Real.arccos (0 : ℝ) / (n + 1 : ℝ)))

end

end A032509.P10778961472404351731

namespace A032509

/-- `round(cot(acos(0)/(n+1)))` -/
def P10778961472404351731.Spec : Prop :=
  ∀ n, P10778961472404351731.a n = A032509 (n + 1)

end A032509

/-! ## A032509.P4310469925204414164

`round(cot(asin(1)/(n+1)))`
-/

namespace A032509.P4310469925204414164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.cot (Real.arcsin (1 : ℝ) / (n + 1 : ℝ)))

end

end A032509.P4310469925204414164

namespace A032509

/-- `round(cot(asin(1)/(n+1)))` -/
def P4310469925204414164.Spec : Prop :=
  ∀ n, P4310469925204414164.a n = A032509 (n + 1)

end A032509

/-! ## A032509.P8190485639392149525

`floor(cot(2/((n+1)/acot(1)+1)))`
-/

namespace A032509.P8190485639392149525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.cot (2 / ((n + 1 : ℝ) / SequenceMachineLib.acot (1 : ℝ) + 1))⌋

end

end A032509.P8190485639392149525

namespace A032509

/-- `floor(cot(2/((n+1)/acot(1)+1)))` -/
def P8190485639392149525.Spec : Prop :=
  ∀ n, P8190485639392149525.a n = A032509 (n + 1)

end A032509

/-! ## A032509.P2865107109384712495

`round(n/atan((n+1)/atan(n+1)))`
-/

namespace A032509.P2865107109384712495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((n : ℝ) / Real.arctan ((n + 1 : ℝ) / Real.arctan (n + 1 : ℝ)))

end

end A032509.P2865107109384712495

namespace A032509

/-- `round(n/atan((n+1)/atan(n+1)))` -/
def P2865107109384712495.Spec : Prop :=
  ∀ n, P2865107109384712495.a n = A032509 (n + 1)

end A032509

/-! ## A032509.P12270656052877388575

`round((n+2)*2*n/(π*(n+1)))`
-/

namespace A032509.P12270656052877388575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (((n + 2) * (2 * n) : ℝ) / (Real.pi * (n + 1 : ℝ)))

end

end A032509.P12270656052877388575

namespace A032509

/-- `round((n+2)*2*n/(π*(n+1)))` -/
def P12270656052877388575.Spec : Prop :=
  ∀ n, P12270656052877388575.a n = A032509 (n + 1)

end A032509

/-! ## A032509.P17825700717834502734

`A067100(A004767(n+1))%A032742((n+1)²)`
-/

namespace A032509.P17825700717834502734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A067100 (A004767 (n + 1)).toNat) (A032742 ((n + 1) ^ 2))

end

end A032509.P17825700717834502734

namespace A032509

/-- `A067100(A004767(n+1))%A032742((n+1)²)` -/
def P17825700717834502734.Spec : Prop :=
  ∀ n, P17825700717834502734.a n = A032509 (n + 1)

end A032509

/-! ## A032509.P8615297724892759514

`A391618(A293400(n+1))`
-/

namespace A032509.P8615297724892759514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391618 (A293400 (n + 1)).toNat

end

end A032509.P8615297724892759514

namespace A032509

/-- `A391618(A293400(n+1))` -/
def P8615297724892759514.Spec : Prop :=
  ∀ n, P8615297724892759514.a n = A032509 (n + 1)

end A032509

/-! ## A032509.P13594389036250978119

`ceil(n/atan(A344883(n+1)))`
-/

namespace A032509.P13594389036250978119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n : ℝ) / Real.arctan (A344883 (n + 1) : ℝ)⌉

end

end A032509.P13594389036250978119

namespace A032509

/-- `ceil(n/atan(A344883(n+1)))` -/
def P13594389036250978119.Spec : Prop :=
  ∀ n, P13594389036250978119.a n = A032509 (n + 1)

end A032509

/-!
# A032512: Sum of the integer part of 4th roots of integers <= n.

The programs for A032512, the canonical program `A032512.P620740316216870869` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A032512 has offset 0).

The definition of A032512 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A032512.P12117744517001189893

`∑[floor(root(n, 4))]`
-/

namespace A032512.P12117744517001189893
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℝ) ^ (1 / (4 : ℝ))⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A032512.P12117744517001189893

namespace A032512

/-- `∑[floor(root(n, 4))]` -/
def P12117744517001189893.Spec : Prop :=
  ∀ n, P12117744517001189893.a n = A032512 n

end A032512

/-! ## A032512.P11399263612236224524

`floor(a(n-1)+n^(1/4))` with `a(0)=0`
-/

namespace A032512.P11399263612236224524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  ⌊(a (n - 1) : ℝ) + (n : ℝ) ^ ((1 : ℚ) / 4 : ℝ)⌋

end

end A032512.P11399263612236224524

namespace A032512

/-- `floor(a(n-1)+n^(1/4))` -/
def P11399263612236224524.Spec : Prop :=
  ∀ n, P11399263612236224524.a n = A032512 n

end A032512

/-! ## A032512.P14633894316415250271

`a(n-1)+floor(sqrt(sqrt(n)))` with `a(0)=0, a(1)=1, a(2)=2`
-/

namespace A032512.P14633894316415250271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 2] fun n a =>
  a (n - 1) + ⌊Real.sqrt (Real.sqrt (n : ℝ))⌋

end

end A032512.P14633894316415250271

namespace A032512

/-- `a(n-1)+floor(sqrt(sqrt(n)))` -/
def P14633894316415250271.Spec : Prop :=
  ∀ n, P14633894316415250271.a n = A032512 n

end A032512

/-! ## A032512.P15981262622696406184

`∑[∑[char[xor(3, n)^4]]]-(n+1)`
-/

namespace A032512.P15981262622696406184
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 3 n ^ 4

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = n then 1 else 0

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - (n + 1 : ℤ)

end

end A032512.P15981262622696406184

namespace A032512

/-- `∑[∑[char[xor(3, n)^4]]]-(n+1)` -/
def P15981262622696406184.Spec : Prop :=
  ∀ n, P15981262622696406184.a n = A032512 n

end A032512

/-! ## A032512.P3598730700886341143

`∑[char[(n+1)²²]]+a(n-1)` with `a(0)=0`
-/

namespace A032512.P3598730700886341143
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2) ^ 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  ∑ j ∈ Finset.range (n + 1), f1 j + a (n - 1)

end

end A032512.P3598730700886341143

namespace A032512

/-- `∑[char[(n+1)²²]]+a(n-1)` -/
def P3598730700886341143.Spec : Prop :=
  ∀ n, (P3598730700886341143.a n : ℤ) = A032512 n

end A032512

/-! ## A032512.P9858875048019617496

`∑[∑[char[(n+1)²²]]]%(n²+2+n)`
-/

namespace A032512.P9858875048019617496
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2) ^ 2

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = n then 1 else 0

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) % (n ^ 2 + 2 + n)

end

end A032512.P9858875048019617496

namespace A032512

/-- `∑[∑[char[(n+1)²²]]]%(n²+2+n)` -/
def P9858875048019617496.Spec : Prop :=
  ∀ n, (P9858875048019617496.a n : ℤ) = A032512 n

end A032512

/-! ## A032512.P465950241514210513

`∑[∑[char[A000290(n)²]]]-(n+1)`
-/

namespace A032512.P465950241514210513
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 n ^ 2

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - (n + 1 : ℤ)

end

end A032512.P465950241514210513

namespace A032512

/-- `∑[∑[char[A000290(n)²]]]-(n+1)` -/
def P465950241514210513.Spec : Prop :=
  ∀ n, P465950241514210513.a n = A032512 n

end A032512

/-! ## A032512.P620740316216870869

`∑[A255270(n)]*A057427(n)`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A032512

/-- `∑[A255270(n)]*A057427(n)` -/
def P620740316216870869.Spec : Prop :=
  ∀ n, P620740316216870869.a n = A032512 n

theorem P620740316216870869.correct : P620740316216870869.Spec := by
  intro n
  simp only [A032512]

end A032512

/-! ## A032512.P8196902982774471994

`lcm(∑[A255270(n)], A033999(n))`
-/

namespace A032512.P8196902982774471994
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255270 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (∑ j ∈ Finset.range (n + 1), f1 j) (A033999 n)

end

end A032512.P8196902982774471994

namespace A032512

/-- `lcm(∑[A255270(n)], A033999(n))` -/
def P8196902982774471994.Spec : Prop :=
  ∀ n, (P8196902982774471994.a n : ℤ) = A032512 n

end A032512

/-! ## A032512.P2958314220387606209

`∑[A003059(A003059(n+1))]-(n+1)`
-/

namespace A032512.P2958314220387606209
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003059 (A003059 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (n + 1 : ℤ)

end

end A032512.P2958314220387606209

namespace A032512

/-- `∑[A003059(A003059(n+1))]-(n+1)` -/
def P2958314220387606209.Spec : Prop :=
  ∀ n, P2958314220387606209.a n = A032512 n

end A032512

/-! ## A032512.P5910985500026036842

`∑[A000196(A000196(n))]*A054977(n)`
-/

namespace A032512.P5910985500026036842
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A000196 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A054977 n

end

end A032512.P5910985500026036842

namespace A032512

/-- `∑[A000196(A000196(n))]*A054977(n)` -/
def P5910985500026036842.Spec : Prop :=
  ∀ n, P5910985500026036842.a n = A032512 n

end A032512

/-! ## A032512.P4809756455733800274

`A023443(a(n-1))+∑[char[n^4]]` with `a(0)=0, a(1)=1`
-/

namespace A032512.P4809756455733800274
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 4

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  A023443 (a (n - 1)).toNat + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A032512.P4809756455733800274

namespace A032512

/-- `A023443(a(n-1))+∑[char[n^4]]` -/
def P4809756455733800274.Spec : Prop :=
  ∀ n, P4809756455733800274.a n = A032512 n

end A032512

/-!
# A032513: Sum of the integer part of 5th roots of positive integers less than or equal to n.

The programs for A032513, the canonical program `A032513.P5434997152573747465` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A032513 has offset 0).

The definition of A032513 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A032513.P17192117506136361491

`∑[floor(root(n, 5))]`
-/

namespace A032513.P17192117506136361491
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℝ) ^ (1 / (5 : ℝ))⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A032513.P17192117506136361491

namespace A032513

/-- `∑[floor(root(n, 5))]` -/
def P17192117506136361491.Spec : Prop :=
  ∀ n, P17192117506136361491.a n = A032513 n

end A032513

/-! ## A032513.P2231868817362928958

`floor(a(n-1)+n^(1/5))` with `a(0)=0`
-/

namespace A032513.P2231868817362928958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  ⌊(a (n - 1) : ℝ) + (n : ℝ) ^ ((1 : ℚ) / 5 : ℝ)⌋

end

end A032513.P2231868817362928958

namespace A032513

/-- `floor(a(n-1)+n^(1/5))` -/
def P2231868817362928958.Spec : Prop :=
  ∀ n, P2231868817362928958.a n = A032513 n

end A032513

/-! ## A032513.P5434997152573747465

`and(∑[A178487(n)], -1)`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A032513

/-- `and(∑[A178487(n)], -1)` -/
def P5434997152573747465.Spec : Prop :=
  ∀ n, P5434997152573747465.a n = A032513 n

theorem P5434997152573747465.correct : P5434997152573747465.Spec := by
  intro n
  simp only [A032513]

end A032513

/-! ## A032513.P7242642117606912358

`∑[∑[char[n*A000290(n)²]]]-1-n`
-/

namespace A032513.P7242642117606912358
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A000290 n ^ 2

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 1 - (n : ℤ)

end

end A032513.P7242642117606912358

namespace A032513

/-- `∑[∑[char[n*A000290(n)²]]]-1-n` -/
def P7242642117606912358.Spec : Prop :=
  ∀ n, P7242642117606912358.a n = A032513 n

end A032513

/-! ## A032513.P11182025767859195450

`∑[A178487(n)]%A000124(n)`
-/

namespace A032513.P11182025767859195450
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178487 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) (A000124 n)

end

end A032513.P11182025767859195450

namespace A032513

/-- `∑[A178487(n)]%A000124(n)` -/
def P11182025767859195450.Spec : Prop :=
  ∀ n, P11182025767859195450.a n = A032513 n

end A032513

/-! ## A032513.P7135111586881544575

`lcm(∑[A178487(n)], A008836(n+1))`
-/

namespace A032513.P7135111586881544575
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178487 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (∑ j ∈ Finset.range (n + 1), f1 j) (A008836 (n + 1))

end

end A032513.P7135111586881544575

namespace A032513

/-- `lcm(∑[A178487(n)], A008836(n+1))` -/
def P7135111586881544575.Spec : Prop :=
  ∀ n, (P7135111586881544575.a n : ℤ) = A032513 n

end A032513

/-! ## A032513.P1034436912045369422

`A000041(C(2, 2*n))*∑[A178487(n)]`
-/

namespace A032513.P1034436912045369422
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178487 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (Nat.choose 2 (2 * n)) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A032513.P1034436912045369422

namespace A032513

/-- `A000041(C(2, 2*n))*∑[A178487(n)]` -/
def P1034436912045369422.Spec : Prop :=
  ∀ n, P1034436912045369422.a n = A032513 n

end A032513

/-! ## A032513.P12699269608744100727

`A000007(n+2)+∑[A178487(n)]`
-/

namespace A032513.P12699269608744100727
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178487 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (n + 2) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A032513.P12699269608744100727

namespace A032513

/-- `A000007(n+2)+∑[A178487(n)]` -/
def P12699269608744100727.Spec : Prop :=
  ∀ n, P12699269608744100727.a n = A032513 n

end A032513

/-! ## A032513.P7499206014462668694

`-A001489(∑[A178487(n)])`
-/

namespace A032513.P7499206014462668694
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178487 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A001489 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A032513.P7499206014462668694

namespace A032513

/-- `-A001489(∑[A178487(n)])` -/
def P7499206014462668694.Spec : Prop :=
  ∀ n, P7499206014462668694.a n = A032513 n

end A032513

/-! ## A032513.P10268131317577884383

`lt[A270180(n), A270190(A270175(n+1))]`
-/

namespace A032513.P10268131317577884383
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270180 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270190 (A270175 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A032513.P10268131317577884383

namespace A032513

/-- `lt[A270180(n), A270190(A270175(n+1))]` -/
def P10268131317577884383.Spec : Prop :=
  ∀ n, (P10268131317577884383.a n : ℤ) = A032513 n

end A032513

/-! ## A032513.P5814287551085483596

`lt[A270209(n), A270190(A270175(n+1))]`
-/

namespace A032513.P5814287551085483596
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270209 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270190 (A270175 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A032513.P5814287551085483596

namespace A032513

/-- `lt[A270209(n), A270190(A270175(n+1))]` -/
def P5814287551085483596.Spec : Prop :=
  ∀ n, (P5814287551085483596.a n : ℤ) = A032513 n

end A032513

/-! ## A032513.P6833459025428182238

`lt[A190716(n+1), A190760(A190753(3*n+2))]`
-/

namespace A032513.P6833459025428182238
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190716 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190760 (A190753 (3 * n + 2)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A032513.P6833459025428182238

namespace A032513

/-- `lt[A190716(n+1), A190760(A190753(3*n+2))]` -/
def P6833459025428182238.Spec : Prop :=
  ∀ n, (P6833459025428182238.a n : ℤ) = A032513 n

end A032513

/-! ## A032513.P18208113646374291432

`lt[A084179(n+1), A001160(2*(n+1))]`
-/

namespace A032513.P18208113646374291432
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084179 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001160 (2 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A032513.P18208113646374291432

namespace A032513

/-- `lt[A084179(n+1), A001160(2*(n+1))]` -/
def P18208113646374291432.Spec : Prop :=
  ∀ n, (P18208113646374291432.a n : ℤ) = A032513 n

end A032513

/-! ## A032513.P6506267039797097238

`∪[A004273(n), A048266(n+1)]`
-/

namespace A032513.P6506267039797097238
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048266 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A032513.P6506267039797097238

namespace A032513

/-- `∪[A004273(n), A048266(n+1)]` -/
def P6506267039797097238.Spec : Prop :=
  ∀ n, (P6506267039797097238.a n : ℤ) = A032513 n

end A032513

/-! ## A032513.P9901129958565299053

`∪[A004274(n), A048266(n+1)]`
-/

namespace A032513.P9901129958565299053
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004274 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048266 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A032513.P9901129958565299053

namespace A032513

/-- `∪[A004274(n), A048266(n+1)]` -/
def P9901129958565299053.Spec : Prop :=
  ∀ n, (P9901129958565299053.a n : ℤ) = A032513 n

end A032513

/-! ## A032513.P5230761887538604663

`∪[A004276(n), A048266(n+1)]`
-/

namespace A032513.P5230761887538604663
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004276 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048266 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A032513.P5230761887538604663

namespace A032513

/-- `∪[A004276(n), A048266(n+1)]` -/
def P5230761887538604663.Spec : Prop :=
  ∀ n, (P5230761887538604663.a n : ℤ) = A032513 n

end A032513

/-! ## A032513.P13139998029568898640

`∪[A032521(n), A048266(n+1)]`
-/

namespace A032513.P13139998029568898640
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032521 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048266 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A032513.P13139998029568898640

namespace A032513

/-- `∪[A032521(n), A048266(n+1)]` -/
def P13139998029568898640.Spec : Prop :=
  ∀ n, (P13139998029568898640.a n : ℤ) = A032513 n

end A032513

/-! ## A032513.P15681050503553162788

`∪[A048266(n+1), A062545(n)]`
-/

namespace A032513.P15681050503553162788
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048266 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062545 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A032513.P15681050503553162788

namespace A032513

/-- `∪[A048266(n+1), A062545(n)]` -/
def P15681050503553162788.Spec : Prop :=
  ∀ n, (P15681050503553162788.a n : ℤ) = A032513 n

end A032513

/-! ## A032513.P15312261066984036843

`∪[A048266(n+1), A130773(n)]`
-/

namespace A032513.P15312261066984036843
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048266 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130773 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A032513.P15312261066984036843

namespace A032513

/-- `∪[A048266(n+1), A130773(n)]` -/
def P15312261066984036843.Spec : Prop :=
  ∀ n, (P15312261066984036843.a n : ℤ) = A032513 n

end A032513

/-! ## A032513.P2797876896838325338

`∪[A048266(n+1), A163985(n)]`
-/

namespace A032513.P2797876896838325338
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048266 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163985 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A032513.P2797876896838325338

namespace A032513

/-- `∪[A048266(n+1), A163985(n)]` -/
def P2797876896838325338.Spec : Prop :=
  ∀ n, (P2797876896838325338.a n : ℤ) = A032513 n

end A032513

/-!
# A032514: Sum of the integer part of 3/2-th roots of integers less than n.

The programs for A032514, the canonical program `A032514.P5851185986255164282` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A032514 has offset 0).

The definition of A032514 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A032514.P14743805345125008362

`∑[floor(root(n, 3)²)]`
-/

namespace A032514.P14743805345125008362
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((n : ℝ) ^ (1 / (3 : ℝ))) ^ 2⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A032514.P14743805345125008362

namespace A032514

/-- `∑[floor(root(n, 3)²)]` -/
def P14743805345125008362.Spec : Prop :=
  ∀ n, P14743805345125008362.a n = A032514 n

end A032514

/-! ## A032514.P7043304547317829396

`floor(a(n-1)+n^(2/3))` with `a(0)=0`
-/

namespace A032514.P7043304547317829396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  ⌊(a (n - 1) : ℝ) + (n : ℝ) ^ ((2 : ℚ) / 3 : ℝ)⌋

end

end A032514.P7043304547317829396

namespace A032514

/-- `floor(a(n-1)+n^(2/3))` -/
def P7043304547317829396.Spec : Prop :=
  ∀ n, P7043304547317829396.a n = A032514 n

end A032514

/-! ## A032514.P506713465982721673

`a(n-1)+floor(root(n²+1, 3))` with `a(0)=0, a(1)=1, a(2)=2`
-/

namespace A032514.P506713465982721673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 2] fun n a =>
  a (n - 1) + ⌊(n ^ 2 + 1 : ℝ) ^ (1 / (3 : ℝ))⌋

end

end A032514.P506713465982721673

namespace A032514

/-- `a(n-1)+floor(root(n²+1, 3))` -/
def P506713465982721673.Spec : Prop :=
  ∀ n, P506713465982721673.a n = A032514 n

end A032514

/-! ## A032514.P5851185986255164282

`∑[A077113(n)]-(n+1)`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A032514

/-- `∑[A077113(n)]-(n+1)` -/
def P5851185986255164282.Spec : Prop :=
  ∀ n, P5851185986255164282.a n = A032514 n

theorem P5851185986255164282.correct : P5851185986255164282.Spec := by
  intro n
  simp only [A032514]

end A032514

/-! ## A032514.P11193616611917331746

`A100196(n)+a(n-1)` with `a(0)=0`
-/

namespace A032514.P11193616611917331746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A100196 n + a (n - 1)

end

end A032514.P11193616611917331746

namespace A032514

/-- `A100196(n)+a(n-1)` -/
def P11193616611917331746.Spec : Prop :=
  ∀ n, P11193616611917331746.a n = A032514 n

end A032514

/-! ## A032514.P1628924708066299400

`∑[A100196(n)]%A005891(n)`
-/

namespace A032514.P1628924708066299400
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100196 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) (A005891 n)

end

end A032514.P1628924708066299400

namespace A032514

/-- `∑[A100196(n)]%A005891(n)` -/
def P1628924708066299400.Spec : Prop :=
  ∀ n, P1628924708066299400.a n = A032514 n

end A032514

/-! ## A032514.P12637807258768531833

`∑[A100196(n+1)]-A100196(n+1)`
-/

namespace A032514.P12637807258768531833
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100196 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A100196 (n + 1)

end

end A032514.P12637807258768531833

namespace A032514

/-- `∑[A100196(n+1)]-A100196(n+1)` -/
def P12637807258768531833.Spec : Prop :=
  ∀ n, P12637807258768531833.a n = A032514 n

end A032514

/-! ## A032514.P6184981307293852994

`A135671(n+1)+∑[n-A135671(n+1)]`
-/

namespace A032514.P6184981307293852994
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A135671 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135671 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A032514.P6184981307293852994

namespace A032514

/-- `A135671(n+1)+∑[n-A135671(n+1)]` -/
def P6184981307293852994.Spec : Prop :=
  ∀ n, P6184981307293852994.a n = A032514 n

end A032514

/-! ## A032514.P7574008469275747764

`∑[A135674(n+1)-n]-A135674(n+1)`
-/

namespace A032514.P7574008469275747764
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135674 (n + 1) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A135674 (n + 1)

end

end A032514.P7574008469275747764

namespace A032514

/-- `∑[A135674(n+1)-n]-A135674(n+1)` -/
def P7574008469275747764.Spec : Prop :=
  ∀ n, P7574008469275747764.a n = A032514 n

end A032514

/-! ## A032514.P9824324820058210248

`A048766(n²)+a(n-1)` with `a(0)=0`
-/

namespace A032514.P9824324820058210248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A048766 (n ^ 2) + a (n - 1)

end

end A032514.P9824324820058210248

namespace A032514

/-- `A048766(n²)+a(n-1)` -/
def P9824324820058210248.Spec : Prop :=
  ∀ n, P9824324820058210248.a n = A032514 n

end A032514

/-!
# A032515: Sum of the integer part of 5/2-th roots of integers less than or equal to n.

The programs for A032515, the canonical program `A032515.P13698984104583103540` is in `Seq.B000.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A032515 has offset 0).

The definition of A032515 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A032515.P13698984104583103540

`a(n-1)+floor(n^(2/5))` with `a(0)=0`

The canonical program, it is in `Seq.B000.C007`.
-/

namespace A032515

/-- `a(n-1)+floor(n^(2/5))` -/
def P13698984104583103540.Spec : Prop :=
  ∀ n, P13698984104583103540.a n = A032515 n

theorem P13698984104583103540.correct : P13698984104583103540.Spec := by
  intro n
  simp only [A032515]

end A032515

/-! ## A032515.P1159372659563716486

`∑[floor(root(n, 5)²)]`
-/

namespace A032515.P1159372659563716486
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((n : ℝ) ^ (1 / (5 : ℝ))) ^ 2⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A032515.P1159372659563716486

namespace A032515

/-- `∑[floor(root(n, 5)²)]` -/
def P1159372659563716486.Spec : Prop :=
  ∀ n, P1159372659563716486.a n = A032515 n

end A032515

/-! ## A032515.P11053534008011074620

`floor(a(n-1)+n^(2/5))` with `a(0)=0`
-/

namespace A032515.P11053534008011074620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  ⌊(a (n - 1) : ℝ) + (n : ℝ) ^ ((2 : ℚ) / 5 : ℝ)⌋

end

end A032515.P11053534008011074620

namespace A032515

/-- `floor(a(n-1)+n^(2/5))` -/
def P11053534008011074620.Spec : Prop :=
  ∀ n, P11053534008011074620.a n = A032515 n

theorem P11053534008011074620.correct : P11053534008011074620.Spec := by
  intro n
  simp only [A032515, Nat.add_sub_cancel, A032515.P11053534008011074620.a, A032515.P13698984104583103540.a, SequenceMachineLib.memo_apply]
  try simp

end A032515

/-! ## A032515.P13147443611880693680

`∑[A178487(n²+1)]-1`
-/

namespace A032515.P13147443611880693680
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178487 (n ^ 2 + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A032515.P13147443611880693680

namespace A032515

/-- `∑[A178487(n²+1)]-1` -/
def P13147443611880693680.Spec : Prop :=
  ∀ n, P13147443611880693680.a n = A032515 n

end A032515

/-! ## A032515.P9274395898361611879

`A178487(n²)+a(n-1)` with `a(0)=0`
-/

namespace A032515.P9274395898361611879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A178487 (n ^ 2) + a (n - 1)

end

end A032515.P9274395898361611879

namespace A032515

/-- `A178487(n²)+a(n-1)` -/
def P9274395898361611879.Spec : Prop :=
  ∀ n, P9274395898361611879.a n = A032515 n

end A032515

/-! ## A032515.P12454975114007693032

`A023443(∑[A178487(n²+1)])`
-/

namespace A032515.P12454975114007693032
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178487 (n ^ 2 + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A032515.P12454975114007693032

namespace A032515

/-- `A023443(∑[A178487(n²+1)])` -/
def P12454975114007693032.Spec : Prop :=
  ∀ n, P12454975114007693032.a n = A032515 n

end A032515

/-! ## A032515.P4220214220911949857

`A153881(n+2)+∑[A178487(n²+1)]`
-/

namespace A032515.P4220214220911949857
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178487 (n ^ 2 + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153881 (n + 2) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A032515.P4220214220911949857

namespace A032515

/-- `A153881(n+2)+∑[A178487(n²+1)]` -/
def P4220214220911949857.Spec : Prop :=
  ∀ n, P4220214220911949857.a n = A032515 n

end A032515

/-! ## A032515.P15180882509902089714

`∑[floor(∑[A344164(n+1)/(n+1)])]+n`
-/

namespace A032515.P15180882509902089714
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A344164 (n + 1) : ℚ) / (n + 1 : ℚ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊∑ j ∈ Finset.range (n + 1), f2 j⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)

end

end A032515.P15180882509902089714

namespace A032515

/-- `∑[floor(∑[A344164(n+1)/(n+1)])]+n` -/
def P15180882509902089714.Spec : Prop :=
  ∀ n, P15180882509902089714.a n = A032515 n

end A032515

/-! ## A032515.P3012481499246843785

`∑[A055642(A027588(n))]-1`
-/

namespace A032515.P3012481499246843785
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055642 (A027588 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A032515.P3012481499246843785

namespace A032515

/-- `∑[A055642(A027588(n))]-1` -/
def P3012481499246843785.Spec : Prop :=
  ∀ n, P3012481499246843785.a n = A032515 n

end A032515

/-! ## A032515.P13325025449843424720

`∑[A055642(A293806(n))]-1`
-/

namespace A032515.P13325025449843424720
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055642 (A293806 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A032515.P13325025449843424720

namespace A032515

/-- `∑[A055642(A293806(n))]-1` -/
def P13325025449843424720.Spec : Prop :=
  ∀ n, P13325025449843424720.a n = A032515 n

end A032515

/-!
# A032516: Sum of the integer part of 7/2-th roots of integers less than n.

The programs for A032516, the canonical program `A032516.P11593463526234678963` is in `Seq.B000.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A032516 has offset 0).

The definition of A032516 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A032516.P11593463526234678963

`∑[floor(root(n, 7)²)]`

The canonical program, it is in `Seq.B000.C007`.
-/

namespace A032516

/-- `∑[floor(root(n, 7)²)]` -/
def P11593463526234678963.Spec : Prop :=
  ∀ n, P11593463526234678963.a n = A032516 n

theorem P11593463526234678963.correct : P11593463526234678963.Spec := by
  intro n
  simp only [A032516]

end A032516

/-! ## A032516.P2727176595546905010

`floor(a(n-1)+n^(2/7))` with `a(0)=0`
-/

namespace A032516.P2727176595546905010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  ⌊(a (n - 1) : ℝ) + (n : ℝ) ^ ((2 : ℚ) / 7 : ℝ)⌋

end

end A032516.P2727176595546905010

namespace A032516

/-- `floor(a(n-1)+n^(2/7))` -/
def P2727176595546905010.Spec : Prop :=
  ∀ n, P2727176595546905010.a n = A032516 n

end A032516

/-! ## A032516.P15513404737813379636

`lt[(-1)^n, A091577(n)]`
-/

namespace A032516.P15513404737813379636
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091577 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A032516.P15513404737813379636

namespace A032516

/-- `lt[(-1)^n, A091577(n)]` -/
def P15513404737813379636.Spec : Prop :=
  ∀ n, (P15513404737813379636.a n : ℤ) = A032516 n

end A032516

/-! ## A032516.P7856771083320473837

`A331162(a(n-1))+1` with `a(0)=0`
-/

namespace A032516.P7856771083320473837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A331162 (a (n - 1)).toNat + 1

end

end A032516.P7856771083320473837

namespace A032516

/-- `A331162(a(n-1))+1` -/
def P7856771083320473837.Spec : Prop :=
  ∀ n, P7856771083320473837.a n = A032516 n

end A032516

/-! ## A032516.P10908497188678031958

`lt[(n/(n%2+1))², A068674(n+1)]`
-/

namespace A032516.P10908497188678031958
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n : ℚ) / ((n % 2 + 1 : ℕ) : ℚ)) ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068674 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℚ)) n

end

end A032516.P10908497188678031958

namespace A032516

/-- `lt[(n/(n%2+1))², A068674(n+1)]` -/
def P10908497188678031958.Spec : Prop :=
  ∀ n, (P10908497188678031958.a n : ℤ) = A032516 n

end A032516

/-!
# A032517: Sum of the integer part of 9/2-th roots of integers less than n.

The programs for A032517, the canonical program `A032517.P11251607377750199762` is in `Seq.B000.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A032517 has offset 0).

The definition of A032517 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A032517.P11251607377750199762

`∑[floor(n^(2/9))]`

The canonical program, it is in `Seq.B000.C007`.
-/

namespace A032517

/-- `∑[floor(n^(2/9))]` -/
def P11251607377750199762.Spec : Prop :=
  ∀ n, P11251607377750199762.a n = A032517 n

theorem P11251607377750199762.correct : P11251607377750199762.Spec := by
  intro n
  simp only [A032517]

end A032517

/-! ## A032517.P17800837991898052440

`a(n-1)+floor(n^(2/9))` with `a(0)=0, a(1)=1`
-/

namespace A032517.P17800837991898052440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  a (n - 1) + ⌊(n : ℝ) ^ ((2 : ℚ) / 9 : ℝ)⌋

end

end A032517.P17800837991898052440

namespace A032517

/-- `a(n-1)+floor(n^(2/9))` -/
def P17800837991898052440.Spec : Prop :=
  ∀ n, P17800837991898052440.a n = A032517 n

end A032517

/-! ## A032517.P3059495474248649283

`∑[A048766(A100196(n))]%A008527(n)`
-/

namespace A032517.P3059495474248649283
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048766 (A100196 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) (A008527 n)

end

end A032517.P3059495474248649283

namespace A032517

/-- `∑[A048766(A100196(n))]%A008527(n)` -/
def P3059495474248649283.Spec : Prop :=
  ∀ n, P3059495474248649283.a n = A032517 n

end A032517

/-! ## A032517.P225769613256791161

`-(∑[A048766(A100196(n))]*A057428(n))`
-/

namespace A032517.P225769613256791161
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048766 (A100196 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -((∑ j ∈ Finset.range (n + 1), f1 j) * A057428 n)

end

end A032517.P225769613256791161

namespace A032517

/-- `-(∑[A048766(A100196(n))]*A057428(n))` -/
def P225769613256791161.Spec : Prop :=
  ∀ n, P225769613256791161.a n = A032517 n

end A032517

/-! ## A032517.P548391964405095504

`∑[A048766(A100196(n))]+A016958(n)%2`
-/

namespace A032517.P548391964405095504
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048766 (A100196 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + Int.tmod (A016958 n) 2

end

end A032517.P548391964405095504

namespace A032517

/-- `∑[A048766(A100196(n))]+A016958(n)%2` -/
def P548391964405095504.Spec : Prop :=
  ∀ n, P548391964405095504.a n = A032517 n

end A032517

/-! ## A032517.P9432671952008343896

`∑[A048766(A100196(n))]+A008683(16*(n+1))`
-/

namespace A032517.P9432671952008343896
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048766 (A100196 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + A008683 (16 * (n + 1))

end

end A032517.P9432671952008343896

namespace A032517

/-- `∑[A048766(A100196(n))]+A008683(16*(n+1))` -/
def P9432671952008343896.Spec : Prop :=
  ∀ n, P9432671952008343896.a n = A032517 n

end A032517

/-! ## A032517.P3600816832340895148

`∑[A048766(A100196(n))]*A000034(2*n)`
-/

namespace A032517.P3600816832340895148
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048766 (A100196 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A000034 (2 * n)

end

end A032517.P3600816832340895148

namespace A032517

/-- `∑[A048766(A100196(n))]*A000034(2*n)` -/
def P3600816832340895148.Spec : Prop :=
  ∀ n, P3600816832340895148.a n = A032517 n

end A032517

/-! ## A032517.P5063594459613160693

`A051162(∑[A004830(n+1)])`
-/

namespace A032517.P5063594459613160693
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004830 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051162 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A032517.P5063594459613160693

namespace A032517

/-- `A051162(∑[A004830(n+1)])` -/
def P5063594459613160693.Spec : Prop :=
  ∀ n, P5063594459613160693.a n = A032517 n

end A032517

/-! ## A032517.P9039584137633488190

`A002262(∑[A004830(n+1)])+n`
-/

namespace A032517.P9039584137633488190
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004830 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 (∑ j ∈ Finset.range (n + 1), f1 j).toNat + (n : ℤ)

end

end A032517.P9039584137633488190

namespace A032517

/-- `A002262(∑[A004830(n+1)])+n` -/
def P9039584137633488190.Spec : Prop :=
  ∀ n, P9039584137633488190.a n = A032517 n

end A032517

/-! ## A032517.P17797007217843189849

`lt[A216345(3*n+1), A074299(A123684(n+1))]`
-/

namespace A032517.P17797007217843189849
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216345 (3 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074299 (A123684 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A032517.P17797007217843189849

namespace A032517

/-- `lt[A216345(3*n+1), A074299(A123684(n+1))]` -/
def P17797007217843189849.Spec : Prop :=
  ∀ n, (P17797007217843189849.a n : ℤ) = A032517 n

end A032517

/-! ## A032517.P6375570168120561171

`lt[log2(A000463(n+1)), 7]`
-/

namespace A032517.P6375570168120561171
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A000463 (n + 1) : ℝ)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℝ)) n

end

end A032517.P6375570168120561171

namespace A032517

/-- `lt[log2(A000463(n+1)), 7]` -/
def P6375570168120561171.Spec : Prop :=
  ∀ n, (P6375570168120561171.a n : ℤ) = A032517 n

end A032517

/-! ## A032517.P17371106115519197829

`eq[A059196(A000265(n+1)), A059196(n+1)]`
-/

namespace A032517.P17371106115519197829
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059196 (A000265 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059196 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A032517.P17371106115519197829

namespace A032517

/-- `eq[A059196(A000265(n+1)), A059196(n+1)]` -/
def P17371106115519197829.Spec : Prop :=
  ∀ n, (P17371106115519197829.a n : ℤ) = A032517 n

end A032517

/-! ## A032517.P12715005586367345601

`lt[A137899(n+1), 8]`
-/

namespace A032517.P12715005586367345601
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137899 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A032517.P12715005586367345601

namespace A032517

/-- `lt[A137899(n+1), 8]` -/
def P12715005586367345601.Spec : Prop :=
  ∀ n, (P12715005586367345601.a n : ℤ) = A032517 n

end A032517

/-! ## A032517.P2948251213352492938

`eq[A000720(n+1)%A040707(n), A000720(n+1)]`
-/

namespace A032517.P2948251213352492938
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000720 (n + 1)) (A040707 n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A032517.P2948251213352492938

namespace A032517

/-- `eq[A000720(n+1)%A040707(n), A000720(n+1)]` -/
def P2948251213352492938.Spec : Prop :=
  ∀ n, (P2948251213352492938.a n : ℤ) = A032517 n

end A032517

/-! ## A032517.P8400018363207646391

`eq[A106747(A004830(n+1)), A106747(n)]`
-/

namespace A032517.P8400018363207646391
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106747 (A004830 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106747 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A032517.P8400018363207646391

namespace A032517

/-- `eq[A106747(A004830(n+1)), A106747(n)]` -/
def P8400018363207646391.Spec : Prop :=
  ∀ n, (P8400018363207646391.a n : ℤ) = A032517 n

end A032517

/-! ## A032517.P431817388195696697

`eq[A123108(A004830(n+1)), A123108(n)]`
-/

namespace A032517.P431817388195696697
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123108 (A004830 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123108 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A032517.P431817388195696697

namespace A032517

/-- `eq[A123108(A004830(n+1)), A123108(n)]` -/
def P431817388195696697.Spec : Prop :=
  ∀ n, (P431817388195696697.a n : ℤ) = A032517 n

end A032517

/-! ## A032517.P934571548891186849

`lt[A065262(3*n+4), A288353(A065262(n+1))]`
-/

namespace A032517.P934571548891186849
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065262 (3 * n + 4)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288353 (A065262 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A032517.P934571548891186849

namespace A032517

/-- `lt[A065262(3*n+4), A288353(A065262(n+1))]` -/
def P934571548891186849.Spec : Prop :=
  ∀ n, (P934571548891186849.a n : ℤ) = A032517 n

end A032517

/-! ## A032517.P15350090461454617084

`lt[A255548(n+1), A000040(n+1)+1]`
-/

namespace A032517.P15350090461454617084
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255548 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A032517.P15350090461454617084

namespace A032517

/-- `lt[A255548(n+1), A000040(n+1)+1]` -/
def P15350090461454617084.Spec : Prop :=
  ∀ n, (P15350090461454617084.a n : ℤ) = A032517 n

end A032517

/-!
# A032518: Sum of the integer part of 10/3-th roots of integers less than n.

The programs for A032518, the canonical program `A032518.P8243614676622417249` is in `Seq.B000.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A032518 has offset 0).

The definition of A032518 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A032518.P8243614676622417249

`∑[floor(n^(3/10))]`

The canonical program, it is in `Seq.B000.C007`.
-/

namespace A032518

/-- `∑[floor(n^(3/10))]` -/
def P8243614676622417249.Spec : Prop :=
  ∀ n, P8243614676622417249.a n = A032518 n

theorem P8243614676622417249.correct : P8243614676622417249.Spec := by
  intro n
  simp only [A032518]

end A032518

/-! ## A032518.P8197090005346131849

`floor(a(n-1)+n^(3/10))` with `a(0)=0`
-/

namespace A032518.P8197090005346131849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  ⌊(a (n - 1) : ℝ) + (n : ℝ) ^ ((3 : ℚ) / 10 : ℝ)⌋

end

end A032518.P8197090005346131849

namespace A032518

/-- `floor(a(n-1)+n^(3/10))` -/
def P8197090005346131849.Spec : Prop :=
  ∀ n, P8197090005346131849.a n = A032518 n

end A032518

/-!
# A032519: Sum of the integer part of 11/3-th roots of integers less than n.

The programs for A032519, the canonical program `A032519.P17723243620539874858` is in `Seq.B000.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A032519 has offset 0).

The definition of A032519 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A032519.P17723243620539874858

`∑[floor(n^(3/11))]`

The canonical program, it is in `Seq.B000.C007`.
-/

namespace A032519

/-- `∑[floor(n^(3/11))]` -/
def P17723243620539874858.Spec : Prop :=
  ∀ n, P17723243620539874858.a n = A032519 n

theorem P17723243620539874858.correct : P17723243620539874858.Spec := by
  intro n
  simp only [A032519]

end A032519

/-! ## A032519.P6634904669341984176

`a(n-1)+floor(n^(3/11))` with `a(0)=0`
-/

namespace A032519.P6634904669341984176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) + ⌊(n : ℝ) ^ ((3 : ℚ) / 11 : ℝ)⌋

end

end A032519.P6634904669341984176

namespace A032519

/-- `a(n-1)+floor(n^(3/11))` -/
def P6634904669341984176.Spec : Prop :=
  ∀ n, P6634904669341984176.a n = A032519 n

end A032519

/-! ## A032519.P14032759752511390831

`lt[n-6, a(n-2)+1]` with `a(0)=45, a(1)=1`
-/

namespace A032519.P14032759752511390831
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 6

def f2 : ℕ → ℕ := SequenceMachineLib.rec [45, 1] fun n f2 =>
  f2 (n - 2) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A032519.P14032759752511390831

namespace A032519

/-- `lt[n-6, a(n-2)+1]` -/
def P14032759752511390831.Spec : Prop :=
  ∀ n, (P14032759752511390831.a n : ℤ) = A032519 n

end A032519

/-! ## A032519.P9080221074451636867

`lt[lcm(2, n)^3, (10*n+2)²]`
-/

namespace A032519.P9080221074451636867
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 2 n ^ 3

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (10 * n + 2) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A032519.P9080221074451636867

namespace A032519

/-- `lt[lcm(2, n)^3, (10*n+2)²]` -/
def P9080221074451636867.Spec : Prop :=
  ∀ n, (P9080221074451636867.a n : ℤ) = A032519 n

end A032519

/-! ## A032519.P3092787439826191972

`lt[ceil(abs((1-n)/2)), 51/9^(n%2)]`
-/

namespace A032519.P3092787439826191972
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈|(1 - (n : ℤ) : ℚ) / 2|⌉

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  51 / (9 ^ (n % 2) : ℚ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℚ) < f2 j) n

end

end A032519.P3092787439826191972

namespace A032519

/-- `lt[ceil(abs((1-n)/2)), 51/9^(n%2)]` -/
def P3092787439826191972.Spec : Prop :=
  ∀ n, (P3092787439826191972.a n : ℤ) = A032519 n

end A032519

/-! ## A032519.P7542074771061382824

`lt[A152835(n), 29]`
-/

namespace A032519.P7542074771061382824
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152835 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  29

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A032519.P7542074771061382824

namespace A032519

/-- `lt[A152835(n), 29]` -/
def P7542074771061382824.Spec : Prop :=
  ∀ n, (P7542074771061382824.a n : ℤ) = A032519 n

end A032519

/-! ## A032519.P3439227269261781785

`lt[A000463(n+3), 53]`
-/

namespace A032519.P3439227269261781785
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000463 (n + 3)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  53

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A032519.P3439227269261781785

namespace A032519

/-- `lt[A000463(n+3), 53]` -/
def P3439227269261781785.Spec : Prop :=
  ∀ n, (P3439227269261781785.a n : ℤ) = A032519 n

end A032519

/-! ## A032519.P3652820966792500881

`comp[2*n+13]%A105703(n)`
-/

namespace A032519.P3652820966792500881
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 13

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) (A105703 n)

end

end A032519.P3652820966792500881

namespace A032519

/-- `comp[2*n+13]%A105703(n)` -/
def P3652820966792500881.Spec : Prop :=
  ∀ n, P3652820966792500881.a n = A032519 n

end A032519

/-! ## A032519.P5550414004658299583

`lt[A240556(gcd(n+1, ceil(n/2))), 8]`
-/

namespace A032519.P5550414004658299583
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240556 (Int.gcd (n + 1 : ℤ) ⌈(n : ℚ) / 2⌉)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A032519.P5550414004658299583

namespace A032519

/-- `lt[A240556(gcd(n+1, ceil(n/2))), 8]` -/
def P5550414004658299583.Spec : Prop :=
  ∀ n, (P5550414004658299583.a n : ℤ) = A032519 n

end A032519

/-! ## A032519.P16734011831222321189

`lt[(n+2)/a(n-1), 6]` with `a(0)=1`
-/

namespace A032519.P16734011831222321189
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [1] fun n f1 =>
  (n + 2 : ℚ) / f1 (n - 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℚ)) n

end

end A032519.P16734011831222321189

namespace A032519

/-- `lt[(n+2)/a(n-1), 6]` -/
def P16734011831222321189.Spec : Prop :=
  ∀ n, (P16734011831222321189.a n : ℤ) = A032519 n

end A032519

/-!
# A032520: Sum of the integer part of 13/3-th roots of integers less than n.

The programs for A032520, the canonical program `A032520.P14022336075436010774` is in `Seq.B000.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A032520 has offset 0).

The definition of A032520 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A032520.P14022336075436010774

`∑[floor(n^(3/13))]`

The canonical program, it is in `Seq.B000.C007`.
-/

namespace A032520

/-- `∑[floor(n^(3/13))]` -/
def P14022336075436010774.Spec : Prop :=
  ∀ n, P14022336075436010774.a n = A032520 n

theorem P14022336075436010774.correct : P14022336075436010774.Spec := by
  intro n
  simp only [A032520]

end A032520

/-! ## A032520.P17570394649520396790

`a(n-1)+floor(n^(3/13))` with `a(0)=0`
-/

namespace A032520.P17570394649520396790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) + ⌊(n : ℝ) ^ ((3 : ℚ) / 13 : ℝ)⌋

end

end A032520.P17570394649520396790

namespace A032520

/-- `a(n-1)+floor(n^(3/13))` -/
def P17570394649520396790.Spec : Prop :=
  ∀ n, P17570394649520396790.a n = A032520 n

end A032520

/-! ## A032520.P2805642304363811636

`lt[(-3)^(n-3), (2*n)^5]`
-/

namespace A032520.P2805642304363811636
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (-3 : ℚ) ^ ((n : ℤ) - 3 : ℤ)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (2 * n) ^ 5

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℚ)) n

end

end A032520.P2805642304363811636

namespace A032520

/-- `lt[(-3)^(n-3), (2*n)^5]` -/
def P2805642304363811636.Spec : Prop :=
  ∀ n, (P2805642304363811636.a n : ℤ) = A032520 n

end A032520

/-! ## A032520.P10038219032723328239

`eq[1, A133502(gcd(1-n, floor(n/2)))]`
-/

namespace A032520.P10038219032723328239
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133502 (Int.gcd (1 - (n : ℤ)) ⌊(n : ℚ) / 2⌋)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A032520.P10038219032723328239

namespace A032520

/-- `eq[1, A133502(gcd(1-n, floor(n/2)))]` -/
def P10038219032723328239.Spec : Prop :=
  ∀ n, (P10038219032723328239.a n : ℤ) = A032520 n

end A032520

/-! ## A032520.P10563861936865724830

`eq[A011765(2*(n+1))*A325742(n+2), 0]`
-/

namespace A032520.P10563861936865724830
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011765 (2 * (n + 1)) * A325742 (n + 2)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (f2 j : ℤ)) n

end

end A032520.P10563861936865724830

namespace A032520

/-- `eq[A011765(2*(n+1))*A325742(n+2), 0]` -/
def P10563861936865724830.Spec : Prop :=
  ∀ n, (P10563861936865724830.a n : ℤ) = A032520 n

end A032520

/-! ## A032520.P11669372471600946471

`comp[A224535(n+3)]`
-/

namespace A032520.P11669372471600946471
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224535 (n + 3)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A032520.P11669372471600946471

namespace A032520

/-- `comp[A224535(n+3)]` -/
def P11669372471600946471.Spec : Prop :=
  ∀ n, (P11669372471600946471.a n : ℤ) = A032520 n

end A032520

/-! ## A032520.P10916983304437749462

`eq[A034435(2*n+1)*A046779(n+1), 0]`
-/

namespace A032520.P10916983304437749462
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034435 (2 * n + 1) * A046779 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (f2 j : ℤ)) n

end

end A032520.P10916983304437749462

namespace A032520

/-- `eq[A034435(2*n+1)*A046779(n+1), 0]` -/
def P10916983304437749462.Spec : Prop :=
  ∀ n, (P10916983304437749462.a n : ℤ) = A032520 n

end A032520

/-! ## A032520.P16142669862715529423

`lt[n/(2*gcd(2, n))², 5]`
-/

namespace A032520.P16142669862715529423
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / ((2 * Nat.gcd 2 n) ^ 2 : ℚ)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℚ)) n

end

end A032520.P16142669862715529423

namespace A032520

/-- `lt[n/(2*gcd(2, n))², 5]` -/
def P16142669862715529423.Spec : Prop :=
  ∀ n, (P16142669862715529423.a n : ℤ) = A032520 n

end A032520

/-!
# A032521: Sum of the integer part of 14/3-th roots of integers less than n.

The programs for A032521, the canonical program `A032521.P1901903512260675770` is in `Seq.B000.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A032521 has offset 0).

The definition of A032521 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A032521.P1901903512260675770

`∑[floor(n^(3/14))]`

The canonical program, it is in `Seq.B000.C007`.
-/

namespace A032521

/-- `∑[floor(n^(3/14))]` -/
def P1901903512260675770.Spec : Prop :=
  ∀ n, P1901903512260675770.a n = A032521 n

theorem P1901903512260675770.correct : P1901903512260675770.Spec := by
  intro n
  simp only [A032521]

end A032521

/-! ## A032521.P17269158775938293186

`a(n-1)+floor(n^(3/14))` with `a(0)=0, a(1)=1`
-/

namespace A032521.P17269158775938293186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  a (n - 1) + ⌊(n : ℝ) ^ ((3 : ℚ) / 14 : ℝ)⌋

end

end A032521.P17269158775938293186

namespace A032521

/-- `a(n-1)+floor(n^(3/14))` -/
def P17269158775938293186.Spec : Prop :=
  ∀ n, P17269158775938293186.a n = A032521 n

end A032521

/-! ## A032521.P7712220052669816064

`lt[6*n-a(n-1), 507]` with `a(0)=430`
-/

namespace A032521.P7712220052669816064
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [430] fun n f1 =>
  (6 * n : ℤ) - f1 (n - 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  507

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A032521.P7712220052669816064

namespace A032521

/-- `lt[6*n-a(n-1), 507]` -/
def P7712220052669816064.Spec : Prop :=
  ∀ n, (P7712220052669816064.a n : ℤ) = A032521 n

end A032521

/-! ## A032521.P2989838612752022574

`lt[A317325(n), 312]`
-/

namespace A032521.P2989838612752022574
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317325 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  312

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A032521.P2989838612752022574

namespace A032521

/-- `lt[A317325(n), 312]` -/
def P2989838612752022574.Spec : Prop :=
  ∀ n, (P2989838612752022574.a n : ℤ) = A032521 n

end A032521

/-! ## A032521.P7299784763562543642

`lt[sqrt(sqrt(A103831(n))), 5]`
-/

namespace A032521.P7299784763562543642
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (Real.sqrt (A103831 n : ℝ))

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℝ)) n

end

end A032521.P7299784763562543642

namespace A032521

/-- `lt[sqrt(sqrt(A103831(n))), 5]` -/
def P7299784763562543642.Spec : Prop :=
  ∀ n, (P7299784763562543642.a n : ℤ) = A032521 n

end A032521

/-! ## A032521.P7358542475636003745

`lt[A105517(n)², n^(n%2)]`
-/

namespace A032521.P7358542475636003745
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105517 n ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ (n % 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A032521.P7358542475636003745

namespace A032521

/-- `lt[A105517(n)², n^(n%2)]` -/
def P7358542475636003745.Spec : Prop :=
  ∀ n, (P7358542475636003745.a n : ℤ) = A032521 n

end A032521

/-! ## A032521.P6062251823716437228

`lt[A175686(n+2), A175445(n+1)]`
-/

namespace A032521.P6062251823716437228
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175686 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175445 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A032521.P6062251823716437228

namespace A032521

/-- `lt[A175686(n+2), A175445(n+1)]` -/
def P6062251823716437228.Spec : Prop :=
  ∀ n, (P6062251823716437228.a n : ℤ) = A032521 n

end A032521

/-! ## A032521.P2593938850125705411

`lt[A328190(n+1)², A049437(n+1)]`
-/

namespace A032521.P2593938850125705411
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328190 (n + 1) ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049437 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A032521.P2593938850125705411

namespace A032521

/-- `lt[A328190(n+1)², A049437(n+1)]` -/
def P2593938850125705411.Spec : Prop :=
  ∀ n, (P2593938850125705411.a n : ℤ) = A032521 n

end A032521

/-! ## A032521.P8940276691144660579

`lt[A000982(A105517(n)), A133622(n+1)]`
-/

namespace A032521.P8940276691144660579
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000982 (A105517 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133622 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A032521.P8940276691144660579

namespace A032521

/-- `lt[A000982(A105517(n)), A133622(n+1)]` -/
def P8940276691144660579.Spec : Prop :=
  ∀ n, (P8940276691144660579.a n : ℤ) = A032521 n

end A032521

/-! ## A032521.P8119319080061080845

`lt[A000045(A105517(n)), A019431(n+4)]`
-/

namespace A032521.P8119319080061080845
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A105517 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019431 (n + 4)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A032521.P8119319080061080845

namespace A032521

/-- `lt[A000045(A105517(n)), A019431(n+4)]` -/
def P8119319080061080845.Spec : Prop :=
  ∀ n, (P8119319080061080845.a n : ℤ) = A032521 n

end A032521

/-! ## A032521.P5091214532876960150

`lt[A049690(A049689(n+2)), A049730(n+3)]`
-/

namespace A032521.P5091214532876960150
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049690 (A049689 (n + 2)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049730 (n + 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A032521.P5091214532876960150

namespace A032521

/-- `lt[A049690(A049689(n+2)), A049730(n+3)]` -/
def P5091214532876960150.Spec : Prop :=
  ∀ n, (P5091214532876960150.a n : ℤ) = A032521 n

end A032521

/-! ## A032521.P3251461391460934736

`lt[A049696(A049689(n+2)), A049698(3*(n+1))]`
-/

namespace A032521.P3251461391460934736
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049696 (A049689 (n + 2)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049698 (3 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A032521.P3251461391460934736

namespace A032521

/-- `lt[A049696(A049689(n+2)), A049698(3*(n+1))]` -/
def P3251461391460934736.Spec : Prop :=
  ∀ n, (P3251461391460934736.a n : ℤ) = A032521 n

end A032521

/-! ## A032521.P428515738599326919

`lt[A049696(A049689(n+2)), A049694(3*n+2)]`
-/

namespace A032521.P428515738599326919
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049696 (A049689 (n + 2)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049694 (3 * n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A032521.P428515738599326919

namespace A032521

/-- `lt[A049696(A049689(n+2)), A049694(3*n+2)]` -/
def P428515738599326919.Spec : Prop :=
  ∀ n, (P428515738599326919.a n : ℤ) = A032521 n

end A032521

/-! ## A032521.P18386784487716348269

`lt[A019431(5*n+1), A000408(A019431(4*n+1))]`
-/

namespace A032521.P18386784487716348269
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019431 (5 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000408 (A019431 (4 * n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A032521.P18386784487716348269

namespace A032521

/-- `lt[A019431(5*n+1), A000408(A019431(4*n+1))]` -/
def P18386784487716348269.Spec : Prop :=
  ∀ n, (P18386784487716348269.a n : ℤ) = A032521 n

end A032521

/-! ## A032521.P5362362849018227595

`lt[A145977(n), A228732(A066031(n+1))]`
-/

namespace A032521.P5362362849018227595
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145977 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228732 (A066031 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A032521.P5362362849018227595

namespace A032521

/-- `lt[A145977(n), A228732(A066031(n+1))]` -/
def P5362362849018227595.Spec : Prop :=
  ∀ n, (P5362362849018227595.a n : ℤ) = A032521 n

end A032521

/-! ## A032521.P7256775369525953077

`lt[A035363(n), lt[2, A284463(n)]]`
-/

namespace A032521.P7256775369525953077
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035363 n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284463 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f3 j : ℤ) < f4 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A032521.P7256775369525953077

namespace A032521

/-- `lt[A035363(n), lt[2, A284463(n)]]` -/
def P7256775369525953077.Spec : Prop :=
  ∀ n, (P7256775369525953077.a n : ℤ) = A032521 n

end A032521

/-! ## A032521.P12799849287593523220

`lt[A163516(n+1), A017353(A006370(n))]`
-/

namespace A032521.P12799849287593523220
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163516 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017353 (A006370 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A032521.P12799849287593523220

namespace A032521

/-- `lt[A163516(n+1), A017353(A006370(n))]` -/
def P12799849287593523220.Spec : Prop :=
  ∀ n, (P12799849287593523220.a n : ℤ) = A032521 n

end A032521

/-!
# A032522: Number of point symmetric solutions to non-attacking queens problem on n X n board.

The programs for A032522, there is no canonical definition to state claims against.
-/

/-! ## A032522.P4228629910145492980

`A033148(n+1)+4*A260319(n+1)`
-/

namespace A032522.P4228629910145492980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033148 (n + 1) + 4 * A260319 (n + 1)

end

end A032522.P4228629910145492980

/-! ## A032522.P12864156024083546439

`A033148(n+1)+A008586(A260319(n+1))`
-/

namespace A032522.P12864156024083546439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033148 (n + 1) + A008586 (A260319 (n + 1)).toNat

end

end A032522.P12864156024083546439

/-! ## A032522.P1767249075665505788

`A008586(A260319(n+1))+A186181(n)*A260318(n+1)`
-/

namespace A032522.P1767249075665505788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008586 (A260319 (n + 1)).toNat + A186181 n * A260318 (n + 1)

end

end A032522.P1767249075665505788

/-! ## A032522.P16903283333392080592

`A008586(A260319(n+1))+A260318(n+1)*A329683(n)`
-/

namespace A032522.P16903283333392080592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008586 (A260319 (n + 1)).toNat + A260318 (n + 1) * A329683 n

end

end A032522.P16903283333392080592

/-!
# A032523: Index of first occurrence of n as a term in A001203, the continued fraction for Pi.

The programs for A032523, there is no canonical definition to state claims against.
-/

/-! ## A032523.P2388883574412892539

`A225802(n+1)+1`
-/

namespace A032523.P2388883574412892539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225802 (n + 1) + 1

end

end A032523.P2388883574412892539

/-!
# A032524: Arrange digits of primes in ascending order (omitting any that contain 0's), sort list, remove duplicates.

The programs for A032524, there is no canonical definition to state claims against.
-/

/-! ## A032524.P5427054716586010583

`record[A034442(A003602(n+1))]`
-/

namespace A032524.P5427054716586010583
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034442 (A003602 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A032524.P5427054716586010583

/-! ## A032524.P6423299115929200656

`∩[A007933(n+1), A009994(n+1)]`
-/

namespace A032524.P6423299115929200656
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007933 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009994 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A032524.P6423299115929200656

/-! ## A032524.P1440812657791812011

`record[A034442(A117910(n))]`
-/

namespace A032524.P1440812657791812011
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034442 (A117910 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A032524.P1440812657791812011

/-! ## A032524.P3074927967376662633

`record[A034442(A008611(n+2))]`
-/

namespace A032524.P3074927967376662633
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034442 (A008611 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A032524.P3074927967376662633

/-! ## A032524.P15979850824859630969

`record[A034442(A008624(n+2))]`
-/

namespace A032524.P15979850824859630969
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034442 (A008624 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A032524.P15979850824859630969

/-! ## A032524.P17193634288073599458

`record[A034442(A027750(n+1))]`
-/

namespace A032524.P17193634288073599458
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034442 (A027750 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A032524.P17193634288073599458

/-! ## A032524.P4097998834720779319

`record[A004185(A007933(n+1))]`
-/

namespace A032524.P4097998834720779319
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004185 (A007933 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A032524.P4097998834720779319

/-! ## A032524.P11402452909214907011

`record[A034442(A020986(n))]`
-/

namespace A032524.P11402452909214907011
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034442 (A020986 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A032524.P11402452909214907011

/-!
# A032525: Floor( 7*n^2/2 ).

The programs for A032525, the canonical program `A032525.P10829071454421506549` is in `Seq.B000.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A032525 has offset 0).

The definition of A032525 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(7*n²/2)` (program `A032525.P10829071454421506549`, by `A032525.P10829071454421506549.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A032525.P10829071454421506549

`floor(7*n²/2)`

The canonical program, it is in `Seq.B000.C007`.
-/

namespace A032525

/-- `floor(7*n²/2)` -/
def P10829071454421506549.Spec : Prop :=
  ∀ n, P10829071454421506549.a n = A032525 n

theorem P10829071454421506549.correct : P10829071454421506549.Spec := by
  intro n
  simp only [A032525]

end A032525

/-! ## A032525.P15602326445261755362

`ogf((3x+8x^2+3x^3)/(1-2x+2x^3-x^4))`
-/

namespace A032525.P15602326445261755362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 3, 8, 3] [1, -2, 0, 2, -1] n

end

end A032525.P15602326445261755362

namespace A032525

/-- `ogf((3x+8x^2+3x^3)/(1-2x+2x^3-x^4))` -/
def P15602326445261755362.Spec : Prop :=
  ∀ n, P15602326445261755362.a n = A032525 n

end A032525

/-! ## A032525.P5708032723364901495

`2*a(n-1)-2*a(n-3)+a(n-4)` with `a(0)=0, a(1)=3, a(2)=14, a(3)=31`
-/

namespace A032525.P5708032723364901495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 3, 14, 31] fun n a =>
  2 * a (n - 1) - 2 * a (n - 3) + a (n - 4)

end

end A032525.P5708032723364901495

namespace A032525

/-- `2*a(n-1)-2*a(n-3)+a(n-4)` -/
def P5708032723364901495.Spec : Prop :=
  ∀ n, P5708032723364901495.a n = A032525 n

end A032525

/-! ## A032525.P9369978585739107745

`∑[and(n, -2)]+3*n²`
-/

namespace A032525.P9369978585739107745
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) (-2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (3 * n ^ 2 : ℤ)

end

end A032525.P9369978585739107745

namespace A032525

/-- `∑[and(n, -2)]+3*n²` -/
def P9369978585739107745.Spec : Prop :=
  ∀ n, P9369978585739107745.a n = A032525 n

end A032525

/-! ## A032525.P14961479179060303154

`∑[a(n-2)+14]` with `a(0)=0, a(1)=3, a(2)=11`
-/

namespace A032525.P14961479179060303154
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 3, 11] fun n f1 =>
  f1 (n - 2) + 14

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A032525.P14961479179060303154

namespace A032525

/-- `∑[a(n-2)+14]` -/
def P14961479179060303154.Spec : Prop :=
  ∀ n, (P14961479179060303154.a n : ℤ) = A032525 n

end A032525

/-! ## A032525.P18037785197077619930

`∑[∑[floor(a(n-2))]]` with `a(0)=0, a(1)=3, a(2)=8, a(3)=6`

`floor` is left out, it is the identity on integers.
-/

namespace A032525.P18037785197077619930
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [0, 3, 8, 6] fun n f2 =>
  f2 (n - 2)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A032525.P18037785197077619930

namespace A032525

/-- `∑[∑[floor(a(n-2))]]` -/
def P18037785197077619930.Spec : Prop :=
  ∀ n, (P18037785197077619930.a n : ℤ) = A032525 n

end A032525

/-! ## A032525.P1411225084121387580

`∑[∑[8-a(n-1)%3]]` with `a(0)=0, a(1)=3`
-/

namespace A032525.P1411225084121387580
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [0, 3] fun n f2 =>
  8 - Int.tmod (f2 (n - 1)) 3

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A032525.P1411225084121387580

namespace A032525

/-- `∑[∑[8-a(n-1)%3]]` -/
def P1411225084121387580.Spec : Prop :=
  ∀ n, P1411225084121387580.a n = A032525 n

end A032525

/-! ## A032525.P1736118100035705448

`(14*n²-2*n%2)/4`
-/

namespace A032525.P1736118100035705448
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((14 * n ^ 2 : ℤ) - ((2 * (n % 2) : ℕ) : ℤ) : ℚ) / 4

end

end A032525.P1736118100035705448

namespace A032525

/-- `(14*n²-2*n%2)/4` -/
def P1736118100035705448.Spec : Prop :=
  ∀ n, P1736118100035705448.a n = (A032525 n : ℚ)

end A032525

/-! ## A032525.P11763665407160310284

`floor(7*n*n/2)%∑[12*n+2]`
-/

namespace A032525.P11763665407160310284
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  12 * n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ⌊(7 * n : ℚ) * ((n : ℚ) / 2)⌋ ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A032525.P11763665407160310284

namespace A032525

/-- `floor(7*n*n/2)%∑[12*n+2]` -/
def P11763665407160310284.Spec : Prop :=
  ∀ n, P11763665407160310284.a n = A032525 n

end A032525

/-! ## A032525.P1553659797318494198

`record[lcm(n²+1, n+1)/(n+1)]-(ceil(n²/2)+1)`
-/

namespace A032525.P1553659797318494198
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.lcm (n ^ 2 + 1) (n + 1) : ℚ) / (n + 1 : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - (⌈(n ^ 2 : ℚ) / 2⌉ + 1 : ℚ)

end

end A032525.P1553659797318494198

namespace A032525

/-- `record[lcm(n²+1, n+1)/(n+1)]-(ceil(n²/2)+1)` -/
def P1553659797318494198.Spec : Prop :=
  ∀ n, P1553659797318494198.a n = (A032525 n : ℚ)

end A032525

/-! ## A032525.P3192750632107068772

`A032526(n)+n²`
-/

namespace A032525.P3192750632107068772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032526 n + (n ^ 2 : ℤ)

end

end A032525.P3192750632107068772

namespace A032525

/-- `A032526(n)+n²` -/
def P3192750632107068772.Spec : Prop :=
  ∀ n, P3192750632107068772.a n = A032525 n

end A032525

/-! ## A032525.P647494332996425962

`A173511(n)-∑[n]`
-/

namespace A032525.P647494332996425962
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173511 n - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A032525.P647494332996425962

namespace A032525

/-- `A173511(n)-∑[n]` -/
def P647494332996425962.Spec : Prop :=
  ∀ n, P647494332996425962.a n = A032525 n

end A032525

/-! ## A032525.P1747362768991311954

`n²+2*A032527(n)`
-/

namespace A032525.P1747362768991311954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) + 2 * A032527 n

end

end A032525.P1747362768991311954

namespace A032525

/-- `n²+2*A032527(n)` -/
def P1747362768991311954.Spec : Prop :=
  ∀ n, P1747362768991311954.a n = A032525 n

end A032525

/-! ## A032525.P14750354076739953813

`A032528(n)+2*n²`
-/

namespace A032525.P14750354076739953813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032528 n + (2 * n ^ 2 : ℤ)

end

end A032525.P14750354076739953813

namespace A032525

/-- `A032528(n)+2*n²` -/
def P14750354076739953813.Spec : Prop :=
  ∀ n, P14750354076739953813.a n = A032525 n

end A032525

/-! ## A032525.P13253594544471506755

`(2*n)²-A000982(n)`
-/

namespace A032525.P13253594544471506755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((2 * n) ^ 2 : ℤ) - A000982 n

end

end A032525.P13253594544471506755

namespace A032525

/-- `(2*n)²-A000982(n)` -/
def P13253594544471506755.Spec : Prop :=
  ∀ n, P13253594544471506755.a n = A032525 n

end A032525

/-! ## A032525.P13601485212914694116

`A007590(n)+3*n²`
-/

namespace A032525.P13601485212914694116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007590 n + (3 * n ^ 2 : ℤ)

end

end A032525.P13601485212914694116

namespace A032525

/-- `A007590(n)+3*n²` -/
def P13601485212914694116.Spec : Prop :=
  ∀ n, P13601485212914694116.a n = A032525 n

end A032525

/-! ## A032525.P16738303850798976840

`A121509(n+1)+n²-1`
-/

namespace A032525.P16738303850798976840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121509 (n + 1) + ((n ^ 2 : ℤ) - 1)

end

end A032525.P16738303850798976840

namespace A032525

/-- `A121509(n+1)+n²-1` -/
def P16738303850798976840.Spec : Prop :=
  ∀ n, P16738303850798976840.a n = A032525 n

end A032525

/-! ## A032525.P6646466536555775563

`A005843(n)²-ceil(n²/2)`
-/

namespace A032525.P6646466536555775563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 n ^ 2 - ⌈(n ^ 2 : ℚ) / 2⌉

end

end A032525.P6646466536555775563

namespace A032525

/-- `A005843(n)²-ceil(n²/2)` -/
def P6646466536555775563.Spec : Prop :=
  ∀ n, P6646466536555775563.a n = A032525 n

end A032525

/-! ## A032525.P3072415820880753777

`∑[A109613(n)-1]+3*n²`
-/

namespace A032525.P3072415820880753777
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109613 n - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (3 * n ^ 2 : ℤ)

end

end A032525.P3072415820880753777

namespace A032525

/-- `∑[A109613(n)-1]+3*n²` -/
def P3072415820880753777.Spec : Prop :=
  ∀ n, P3072415820880753777.a n = A032525 n

end A032525

/-! ## A032525.P10458046329352993799

`A022264(n)+A004526(n)`
-/

namespace A032525.P10458046329352993799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022264 n + A004526 n

end

end A032525.P10458046329352993799

namespace A032525

/-- `A022264(n)+A004526(n)` -/
def P10458046329352993799.Spec : Prop :=
  ∀ n, P10458046329352993799.a n = A032525 n

end A032525

/-!
# A032526: a(n) = floor(5*n^2/2).

The programs for A032526, the canonical program `A032526.P11336692325814997317` is in `Seq.B000.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A032526 has offset 0).

The definition of A032526 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(5*n²/2)` (program `A032526.P11336692325814997317`, by `A032526.P11336692325814997317.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A032526.P11336692325814997317

`floor(5*n²/2)`

The canonical program, it is in `Seq.B000.C007`.
-/

namespace A032526

/-- `floor(5*n²/2)` -/
def P11336692325814997317.Spec : Prop :=
  ∀ n, P11336692325814997317.a n = A032526 n

theorem P11336692325814997317.correct : P11336692325814997317.Spec := by
  intro n
  simp only [A032526]

end A032526

/-! ## A032526.P17167941782679335763

`ogf((2x+6x^2+2x^3)/(1-2x+2x^3-x^4))`
-/

namespace A032526.P17167941782679335763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 2, 6, 2] [1, -2, 0, 2, -1] n

end

end A032526.P17167941782679335763

namespace A032526

/-- `ogf((2x+6x^2+2x^3)/(1-2x+2x^3-x^4))` -/
def P17167941782679335763.Spec : Prop :=
  ∀ n, P17167941782679335763.a n = A032526 n

end A032526

/-! ## A032526.P4678209823618698395

`2*A032527(n)`
-/

namespace A032526.P4678209823618698395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A032527 n

end

end A032526.P4678209823618698395

namespace A032526

/-- `2*A032527(n)` -/
def P4678209823618698395.Spec : Prop :=
  ∀ n, P4678209823618698395.a n = A032526 n

end A032526

/-! ## A032526.P18303842919628895248

`and(5*n², -2)/2`
-/

namespace A032526.P18303842919628895248
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.land (5 * n ^ 2 : ℤ) (-2) : ℚ) / 2

end

end A032526.P18303842919628895248

namespace A032526

/-- `and(5*n², -2)/2` -/
def P18303842919628895248.Spec : Prop :=
  ∀ n, P18303842919628895248.a n = (A032526 n : ℚ)

end A032526

/-! ## A032526.P11927731176089217935

`∑[and(n, -2)]+2*n²`
-/

namespace A032526.P11927731176089217935
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) (-2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (2 * n ^ 2 : ℤ)

end

end A032526.P11927731176089217935

namespace A032526

/-- `∑[and(n, -2)]+2*n²` -/
def P11927731176089217935.Spec : Prop :=
  ∀ n, P11927731176089217935.a n = A032526 n

end A032526

/-! ## A032526.P580064812833364769

`∑[a(n-2)+10]` with `a(0)=0, a(1)=2, a(2)=8`
-/

namespace A032526.P580064812833364769
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 2, 8] fun n f1 =>
  f1 (n - 2) + 10

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A032526.P580064812833364769

namespace A032526

/-- `∑[a(n-2)+10]` -/
def P580064812833364769.Spec : Prop :=
  ∀ n, (P580064812833364769.a n : ℤ) = A032526 n

end A032526

/-! ## A032526.P9517935244447905172

`∑[or(1, 5*n)-3]+2`
-/

namespace A032526.P9517935244447905172
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.lor 1 (5 * n) : ℤ) - 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 2

end

end A032526.P9517935244447905172

namespace A032526

/-- `∑[or(1, 5*n)-3]+2` -/
def P9517935244447905172.Spec : Prop :=
  ∀ n, P9517935244447905172.a n = A032526 n

end A032526

/-! ## A032526.P13932239123304230231

`∑[∑[10-a(n-1)]]` with `a(0)=0, a(1)=2, a(2)=6`
-/

namespace A032526.P13932239123304230231
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [0, 2, 6] fun n f2 =>
  10 - f2 (n - 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A032526.P13932239123304230231

namespace A032526

/-- `∑[∑[10-a(n-1)]]` -/
def P13932239123304230231.Spec : Prop :=
  ∀ n, P13932239123304230231.a n = A032526 n

end A032526

/-! ## A032526.P13579829116925751824

`2*n²-∑[1-or(1, n)]`
-/

namespace A032526.P13579829116925751824
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (Nat.lor 1 n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n ^ 2 : ℤ) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A032526.P13579829116925751824

namespace A032526

/-- `2*n²-∑[1-or(1, n)]` -/
def P13579829116925751824.Spec : Prop :=
  ∀ n, P13579829116925751824.a n = A032526 n

end A032526

/-! ## A032526.P2900130083619260120

`a(n-2)+10*(n-1)` with `a(0)=0, a(1)=2`
-/

namespace A032526.P2900130083619260120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 2] fun n a =>
  a (n - 2) + 10 * ((n : ℤ) - 1)

end

end A032526.P2900130083619260120

namespace A032526

/-- `a(n-2)+10*(n-1)` -/
def P2900130083619260120.Spec : Prop :=
  ∀ n, P2900130083619260120.a n = A032526 n

end A032526

/-! ## A032526.P5820176157983216611

`A032528(n)+n²`
-/

namespace A032526.P5820176157983216611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032528 n + (n ^ 2 : ℤ)

end

end A032526.P5820176157983216611

namespace A032526

/-- `A032528(n)+n²` -/
def P5820176157983216611.Spec : Prop :=
  ∀ n, P5820176157983216611.a n = A032526 n

end A032526

/-! ## A032526.P11111276169254450899

`A032525(n)-n²`
-/

namespace A032526.P11111276169254450899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032525 n - (n ^ 2 : ℤ)

end

end A032526.P11111276169254450899

namespace A032526

/-- `A032525(n)-n²` -/
def P11111276169254450899.Spec : Prop :=
  ∀ n, P11111276169254450899.a n = A032526 n

end A032526

/-! ## A032526.P9852284935249852347

`A121509(n+1)-1`
-/

namespace A032526.P9852284935249852347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121509 (n + 1) - 1

end

end A032526.P9852284935249852347

namespace A032526

/-- `A121509(n+1)-1` -/
def P9852284935249852347.Spec : Prop :=
  ∀ n, P9852284935249852347.a n = A032526 n

end A032526

/-! ## A032526.P2772011079134126910

`2*(A249547(n)-n)`
-/

namespace A032526.P2772011079134126910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A249547 n - (n : ℤ))

end

end A032526.P2772011079134126910

namespace A032526

/-- `2*(A249547(n)-n)` -/
def P2772011079134126910.Spec : Prop :=
  ∀ n, P2772011079134126910.a n = A032526 n

end A032526

/-! ## A032526.P1173217177211874903

`A195142(n)+and(1, n)`
-/

namespace A032526.P1173217177211874903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195142 n + (Nat.land 1 n : ℤ)

end

end A032526.P1173217177211874903

namespace A032526

/-- `A195142(n)+and(1, n)` -/
def P1173217177211874903.Spec : Prop :=
  ∀ n, P1173217177211874903.a n = A032526 n

end A032526

/-! ## A032526.P16080719429912957810

`∑[A146763(n)-2]+2`
-/

namespace A032526.P16080719429912957810
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146763 n - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 2

end

end A032526.P16080719429912957810

namespace A032526

/-- `∑[A146763(n)-2]+2` -/
def P16080719429912957810.Spec : Prop :=
  ∀ n, P16080719429912957810.a n = A032526 n

end A032526

/-! ## A032526.P12000826865470321584

`2*(A002620(n)+n²)`
-/

namespace A032526.P12000826865470321584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A002620 n + (n ^ 2 : ℤ))

end

end A032526.P12000826865470321584

namespace A032526

/-- `2*(A002620(n)+n²)` -/
def P12000826865470321584.Spec : Prop :=
  ∀ n, P12000826865470321584.a n = A032526 n

end A032526

/-! ## A032526.P950720648554162795

`A007590(n)+2*n²`
-/

namespace A032526.P950720648554162795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007590 n + (2 * n ^ 2 : ℤ)

end

end A032526.P950720648554162795

namespace A032526

/-- `A007590(n)+2*n²` -/
def P950720648554162795.Spec : Prop :=
  ∀ n, P950720648554162795.a n = A032526 n

end A032526

/-!
# A032527: Concentric pentagonal numbers: floor(5*n^2 / 4).

The programs for A032527, the canonical program `A032527.P1214835893418776109` is in `Seq.B000.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A032527 has offset 0).

The definition of A032527 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(5*n²/4)` (program `A032527.P1214835893418776109`, by `A032527.P1214835893418776109.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A032527.P1214835893418776109

`floor(5*n²/4)`

The canonical program, it is in `Seq.B000.C007`.
-/

namespace A032527

/-- `floor(5*n²/4)` -/
def P1214835893418776109.Spec : Prop :=
  ∀ n, P1214835893418776109.a n = A032527 n

theorem P1214835893418776109.correct : P1214835893418776109.Spec := by
  intro n
  simp only [A032527]

end A032527

/-! ## A032527.P2386891554556426619

`ogf((x+3x^2+x^3)/(1-2x+2x^3-x^4))`
-/

namespace A032527.P2386891554556426619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1, 3, 1] [1, -2, 0, 2, -1] n

end

end A032527.P2386891554556426619

namespace A032527

/-- `ogf((x+3x^2+x^3)/(1-2x+2x^3-x^4))` -/
def P2386891554556426619.Spec : Prop :=
  ∀ n, P2386891554556426619.a n = A032527 n

end A032527

/-! ## A032527.P17693642624904917752

`2*a(n-1)-2*a(n-3)+a(n-4)` with `a(0)=0, a(1)=1, a(2)=5, a(3)=11`
-/

namespace A032527.P17693642624904917752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 5, 11] fun n a =>
  2 * a (n - 1) - 2 * a (n - 3) + a (n - 4)

end

end A032527.P17693642624904917752

namespace A032527

/-- `2*a(n-1)-2*a(n-3)+a(n-4)` -/
def P17693642624904917752.Spec : Prop :=
  ∀ n, P17693642624904917752.a n = A032527 n

end A032527

/-! ## A032527.P14579933616125113042

`∑[∑[∑{d}[n, C(2, #)]]]-n`
-/

namespace A032527.P14579933616125113042
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f3 n), Nat.choose 2 d

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - (n : ℤ)

end

end A032527.P14579933616125113042

namespace A032527

/-- `∑[∑[∑{d}[n, C(2, #)]]]-n` -/
def P14579933616125113042.Spec : Prop :=
  ∀ n, P14579933616125113042.a n = A032527 n

end A032527

/-! ## A032527.P11475531070447475252

`∑[a(n-2)+5]` with `a(0)=0, a(1)=1, a(2)=4`
-/

namespace A032527.P11475531070447475252
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 4] fun n f1 =>
  f1 (n - 2) + 5

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A032527.P11475531070447475252

namespace A032527

/-- `∑[a(n-2)+5]` -/
def P11475531070447475252.Spec : Prop :=
  ∀ n, (P11475531070447475252.a n : ℤ) = A032527 n

end A032527

/-! ## A032527.P17328191867004280082

`(5*n²-n%2)/4`
-/

namespace A032527.P17328191867004280082
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((5 * n ^ 2 : ℤ) - ((n % 2 : ℕ) : ℤ) : ℚ) / 4

end

end A032527.P17328191867004280082

namespace A032527

/-- `(5*n²-n%2)/4` -/
def P17328191867004280082.Spec : Prop :=
  ∀ n, P17328191867004280082.a n = (A032527 n : ℚ)

end A032527

/-! ## A032527.P383526173234829779

`n²+and(-2, n²)/4`
-/

namespace A032527.P383526173234829779
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℚ) + (Int.land (-2) (n ^ 2 : ℤ) : ℚ) / 4

end

end A032527.P383526173234829779

namespace A032527

/-- `n²+and(-2, n²)/4` -/
def P383526173234829779.Spec : Prop :=
  ∀ n, P383526173234829779.a n = (A032527 n : ℚ)

end A032527

/-! ## A032527.P12342641620282953548

`∑[∑[5-a(n-1)]]` with `a(0)=0, a(1)=1, a(2)=3`
-/

namespace A032527.P12342641620282953548
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 3] fun n f2 =>
  5 - f2 (n - 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A032527.P12342641620282953548

namespace A032527

/-- `∑[∑[5-a(n-1)]]` -/
def P12342641620282953548.Spec : Prop :=
  ∀ n, P12342641620282953548.a n = A032527 n

end A032527

/-! ## A032527.P15929996094182400639

`∑[∑[gcd(2, n)]+n-3]+1`
-/

namespace A032527.P15929996094182400639
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd 2 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) + ((n : ℤ) - 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A032527.P15929996094182400639

namespace A032527

/-- `∑[∑[gcd(2, n)]+n-3]+1` -/
def P15929996094182400639.Spec : Prop :=
  ∀ n, P15929996094182400639.a n = A032527 n

end A032527

/-! ## A032527.P5394515787788899024

`a(n-2)+5*(n-1)` with `a(0)=0, a(1)=1`
-/

namespace A032527.P5394515787788899024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  a (n - 2) + 5 * ((n : ℤ) - 1)

end

end A032527.P5394515787788899024

namespace A032527

/-- `a(n-2)+5*(n-1)` -/
def P5394515787788899024.Spec : Prop :=
  ∀ n, P5394515787788899024.a n = A032527 n

end A032527

/-! ## A032527.P14186268162440798545

`5*n-(5-a(n-2))` with `a(0)=0, a(1)=1`
-/

namespace A032527.P14186268162440798545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  (5 * n : ℤ) - (5 - a (n - 2))

end

end A032527.P14186268162440798545

namespace A032527

/-- `5*n-(5-a(n-2))` -/
def P14186268162440798545.Spec : Prop :=
  ∀ n, P14186268162440798545.a n = A032527 n

end A032527

/-! ## A032527.P12864860492406961928

`∑[∑[a((n+1)%2)+2]]` with `a(0)=0, a(1)=1`
-/

namespace A032527.P12864860492406961928
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n f2 =>
  f2 ((n + 1) % 2) + 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A032527.P12864860492406961928

namespace A032527

/-- `∑[∑[a((n+1)%2)+2]]` -/
def P12864860492406961928.Spec : Prop :=
  ∀ n, (P12864860492406961928.a n : ℤ) = A032527 n

end A032527

/-! ## A032527.P1713091726593034269

`∑[∑[((n+1)²-2)%4]]+1`
-/

namespace A032527.P1713091726593034269
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (((n + 1) ^ 2 : ℤ) - 2) 4

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A032527.P1713091726593034269

namespace A032527

/-- `∑[∑[((n+1)²-2)%4]]+1` -/
def P1713091726593034269.Spec : Prop :=
  ∀ n, P1713091726593034269.a n = A032527 n

end A032527

/-! ## A032527.P6533938252041662950

`∑[∑[and(1, n+1)]+2*n]-(2*n+1)`
-/

namespace A032527.P6533938252041662950
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 1 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + 2 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - (2 * n + 1 : ℤ)

end

end A032527.P6533938252041662950

namespace A032527

/-- `∑[∑[and(1, n+1)]+2*n]-(2*n+1)` -/
def P6533938252041662950.Spec : Prop :=
  ∀ n, P6533938252041662950.a n = A032527 n

end A032527

/-! ## A032527.P2765729427191225846

`a(n-1)+a(n-2)+5-a(n-3)` with `a(0)=0, a(1)=1, a(2)=5`
-/

namespace A032527.P2765729427191225846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 5] fun n a =>
  a (n - 1) + (a (n - 2) + 5) - a (n - 3)

end

end A032527.P2765729427191225846

namespace A032527

/-- `a(n-1)+a(n-2)+5-a(n-3)` -/
def P2765729427191225846.Spec : Prop :=
  ∀ n, P2765729427191225846.a n = A032527 n

end A032527

/-! ## A032527.P12429479805612037339

`A032526(n)/2`
-/

namespace A032527.P12429479805612037339
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A032526 n : ℚ) / 2

end

end A032527.P12429479805612037339

namespace A032527

/-- `A032526(n)/2` -/
def P12429479805612037339.Spec : Prop :=
  ∀ n, P12429479805612037339.a n = (A032527 n : ℚ)

end A032527

/-! ## A032527.P3380330401945599538

`A249547(n)-n`
-/

namespace A032527.P3380330401945599538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249547 n - (n : ℤ)

end

end A032527.P3380330401945599538

namespace A032527

/-- `A249547(n)-n` -/
def P3380330401945599538.Spec : Prop :=
  ∀ n, P3380330401945599538.a n = A032527 n

end A032527

/-! ## A032527.P2576976439083802537

`A002620(n)+n²`
-/

namespace A032527.P2576976439083802537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002620 n + (n ^ 2 : ℤ)

end

end A032527.P2576976439083802537

namespace A032527

/-- `A002620(n)+n²` -/
def P2576976439083802537.Spec : Prop :=
  ∀ n, P2576976439083802537.a n = A032527 n

end A032527

/-! ## A032527.P8360497096356135298

`∑[A047215(n)]-n`
-/

namespace A032527.P8360497096356135298
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047215 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ)

end

end A032527.P8360497096356135298

namespace A032527

/-- `∑[A047215(n)]-n` -/
def P8360497096356135298.Spec : Prop :=
  ∀ n, P8360497096356135298.a n = A032527 n

end A032527

/-!
# A032528: Concentric hexagonal numbers: floor(3*n^2/2).

The programs for A032528, the canonical program `A032528.P6916664106980979500` is in `Seq.B000.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A032528 has offset 0).

The definition of A032528 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(3*n²/2)` (program `A032528.P6916664106980979500`, by `A032528.P6916664106980979500.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A032528.P6916664106980979500

`floor(3*n²/2)`

The canonical program, it is in `Seq.B000.C007`.
-/

namespace A032528

/-- `floor(3*n²/2)` -/
def P6916664106980979500.Spec : Prop :=
  ∀ n, P6916664106980979500.a n = A032528 n

theorem P6916664106980979500.correct : P6916664106980979500.Spec := by
  intro n
  simp only [A032528]

end A032528

/-! ## A032528.P2306324765074444874

`ogf((x+4x^2+x^3)/(1-2x+2x^3-x^4))`
-/

namespace A032528.P2306324765074444874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1, 4, 1] [1, -2, 0, 2, -1] n

end

end A032528.P2306324765074444874

namespace A032528

/-- `ogf((x+4x^2+x^3)/(1-2x+2x^3-x^4))` -/
def P2306324765074444874.Spec : Prop :=
  ∀ n, P2306324765074444874.a n = A032528 n

end A032528

/-! ## A032528.P15780151721807139492

`a(n-2)+6*(n-1)` with `a(0)=0, a(1)=1`
-/

namespace A032528.P15780151721807139492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  a (n - 2) + 6 * ((n : ℤ) - 1)

end

end A032528.P15780151721807139492

namespace A032528

/-- `a(n-2)+6*(n-1)` -/
def P15780151721807139492.Spec : Prop :=
  ∀ n, P15780151721807139492.a n = A032528 n

end A032528

/-! ## A032528.P4260617797432394178

`∑[record[lcm(12, n)/12]]`
-/

namespace A032528.P4260617797432394178
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.lcm 12 n : ℚ) / 12

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A032528.P4260617797432394178

namespace A032528

/-- `∑[record[lcm(12, n)/12]]` -/
def P4260617797432394178.Spec : Prop :=
  ∀ n, P4260617797432394178.a n = (A032528 n : ℚ)

end A032528

/-! ## A032528.P8056961952101170480

`∑[and(n, -2)]+n²`
-/

namespace A032528.P8056961952101170480
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) (-2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n ^ 2 : ℤ)

end

end A032528.P8056961952101170480

namespace A032528

/-- `∑[and(n, -2)]+n²` -/
def P8056961952101170480.Spec : Prop :=
  ∀ n, P8056961952101170480.a n = A032528 n

end A032528

/-! ## A032528.P3239310641977172956

`and(3*n², -2)/2`
-/

namespace A032528.P3239310641977172956
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.land (3 * n ^ 2 : ℤ) (-2) : ℚ) / 2

end

end A032528.P3239310641977172956

namespace A032528

/-- `and(3*n², -2)/2` -/
def P3239310641977172956.Spec : Prop :=
  ∀ n, P3239310641977172956.a n = (A032528 n : ℚ)

end A032528

/-! ## A032528.P12441460084086803649

`round(xor(1, (3*n)²)/6)`
-/

namespace A032528.P12441460084086803649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((Nat.xor 1 ((3 * n) ^ 2) : ℚ) / 6)

end

end A032528.P12441460084086803649

namespace A032528

/-- `round(xor(1, (3*n)²)/6)` -/
def P12441460084086803649.Spec : Prop :=
  ∀ n, P12441460084086803649.a n = A032528 n

end A032528

/-! ## A032528.P9921545953858958267

`∑[n-n%2]+n²`
-/

namespace A032528.P9921545953858958267
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - ((n % 2 : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n ^ 2 : ℤ)

end

end A032528.P9921545953858958267

namespace A032528

/-- `∑[n-n%2]+n²` -/
def P9921545953858958267.Spec : Prop :=
  ∀ n, P9921545953858958267.a n = A032528 n

end A032528

/-! ## A032528.P3215168693686597532

`n²-∑[and(1, n)-n]`
-/

namespace A032528.P3215168693686597532
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.land 1 n : ℤ) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A032528.P3215168693686597532

namespace A032528

/-- `n²-∑[and(1, n)-n]` -/
def P3215168693686597532.Spec : Prop :=
  ∀ n, P3215168693686597532.a n = A032528 n

end A032528

/-! ## A032528.P6362521711305382919

`∑[a(n-2)+6]` with `a(0)=0, a(1)=1, a(2)=5`
-/

namespace A032528.P6362521711305382919
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 5] fun n f1 =>
  f1 (n - 2) + 6

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A032528.P6362521711305382919

namespace A032528

/-- `∑[a(n-2)+6]` -/
def P6362521711305382919.Spec : Prop :=
  ∀ n, (P6362521711305382919.a n : ℤ) = A032528 n

end A032528

/-! ## A032528.P177149185427634415

`∑[or(1, 3*n)-1]-n`
-/

namespace A032528.P177149185427634415
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.lor 1 (3 * n) : ℤ) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ)

end

end A032528.P177149185427634415

namespace A032528

/-- `∑[or(1, 3*n)-1]-n` -/
def P177149185427634415.Spec : Prop :=
  ∀ n, P177149185427634415.a n = A032528 n

end A032528

/-! ## A032528.P15352252597748912280

`∑[∑[6-a(n-1)]]` with `a(0)=0, a(1)=1, a(2)=4`
-/

namespace A032528.P15352252597748912280
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 4] fun n f2 =>
  6 - f2 (n - 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A032528.P15352252597748912280

namespace A032528

/-- `∑[∑[6-a(n-1)]]` -/
def P15352252597748912280.Spec : Prop :=
  ∀ n, P15352252597748912280.a n = A032528 n

end A032528

/-! ## A032528.P6127342966148945175

`∑[n]+floor(C(2*n, 2)/2)`
-/

namespace A032528.P6127342966148945175
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) + ⌊(Nat.choose (2 * n) 2 : ℚ) / 2⌋

end

end A032528.P6127342966148945175

namespace A032528

/-- `∑[n]+floor(C(2*n, 2)/2)` -/
def P6127342966148945175.Spec : Prop :=
  ∀ n, P6127342966148945175.a n = A032528 n

end A032528

/-! ## A032528.P5603480386660793366

`∑[gcd(2, n)+n-2]+n²`
-/

namespace A032528.P5603480386660793366
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.gcd 2 n : ℤ) + ((n : ℤ) - 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n ^ 2 : ℤ)

end

end A032528.P5603480386660793366

namespace A032528

/-- `∑[gcd(2, n)+n-2]+n²` -/
def P5603480386660793366.Spec : Prop :=
  ∀ n, P5603480386660793366.a n = A032528 n

end A032528

/-! ## A032528.P5067879478629160722

`6*n-(6-a(n-2))` with `a(0)=0, a(1)=1`
-/

namespace A032528.P5067879478629160722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  (6 * n : ℤ) - (6 - a (n - 2))

end

end A032528.P5067879478629160722

namespace A032528

/-- `6*n-(6-a(n-2))` -/
def P5067879478629160722.Spec : Prop :=
  ∀ n, P5067879478629160722.a n = A032528 n

end A032528

/-! ## A032528.P595022045333379371

`Δ[(n-1)^3-a(n-1)]` with `a(0)=0`
-/

namespace A032528.P595022045333379371
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f1 =>
  ((n : ℤ) - 1) ^ 3 - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A032528.P595022045333379371

namespace A032528

/-- `Δ[(n-1)^3-a(n-1)]` -/
def P595022045333379371.Spec : Prop :=
  ∀ n, P595022045333379371.a n = A032528 n

end A032528

/-! ## A032528.P718178618846729768

`∑[∑[gcd(2*n, 4%∑[n+1])]]`
-/

namespace A032528.P718178618846729768
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd (2 * n) (4 % (∑ j ∈ Finset.range (n + 1), f3 j))

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A032528.P718178618846729768

namespace A032528

/-- `∑[∑[gcd(2*n, 4%∑[n+1])]]` -/
def P718178618846729768.Spec : Prop :=
  ∀ n, (P718178618846729768.a n : ℤ) = A032528 n

end A032528

/-! ## A032528.P1667472034931947264

`∑[eq[n, gcd((n+3)*2*n, n²)]]`
-/

namespace A032528.P1667472034931947264
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd ((n + 3) * (2 * n)) (n ^ 2)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j = f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A032528.P1667472034931947264

namespace A032528

/-- `∑[eq[n, gcd((n+3)*2*n, n²)]]` -/
def P1667472034931947264.Spec : Prop :=
  ∀ n, (P1667472034931947264.a n : ℤ) = A032528 n

end A032528

/-! ## A032528.P5224233739889912970

`∑[eq[n*(n+3), lcm(n+3, 2*n)]]`
-/

namespace A032528.P5224233739889912970
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (n + 3)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm (n + 3) (2 * n)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j = f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A032528.P5224233739889912970

namespace A032528

/-- `∑[eq[n*(n+3), lcm(n+3, 2*n)]]` -/
def P5224233739889912970.Spec : Prop :=
  ∀ n, (P5224233739889912970.a n : ℤ) = A032528 n

end A032528

/-!
# A032529: All the primes inside the record 3 X 3 matrix for the Gordon Lee problem: this is [ 113, 754, 937 ].

The programs for A032529, there is no canonical definition to state claims against.
-/

/-! ## A032529.P14536413237737776589

`p?[∑[A317954(A243471(n+1))]]`
-/

namespace A032529.P14536413237737776589
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317954 (A243471 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A032529.P14536413237737776589

/-! ## A032529.P13005232466859820943

`p?[A000196(A089358(A167499(n)))]`
-/

namespace A032529.P13005232466859820943
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A089358 (A167499 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A032529.P13005232466859820943

/-! ## A032529.P10942880910951201368

`p?[A135381(n)+A048379(n)]`
-/

namespace A032529.P10942880910951201368
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135381 n + A048379 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A032529.P10942880910951201368

/-! ## A032529.P15872046252949305407

`∩[A195044(n+1), A386337(n+1)]`
-/

namespace A032529.P15872046252949305407
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195044 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386337 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A032529.P15872046252949305407

/-! ## A032529.P16786739717022527695

`A094548(A111252(n+1))`
-/

namespace A032529.P16786739717022527695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094548 (A111252 (n + 1)).toNat

end

end A032529.P16786739717022527695

/-!
# A032531: An inventory sequence: triangle read by rows, where T(n, k), 0 <= k <= n, records the number of k's thus far in the flattened sequence.

The programs for A032531, there is no canonical definition to state claims against.
-/

/-! ## A032531.P18338697044123544063

`A235168(A002560(n+4)*A141578(n+1))`
-/

namespace A032531.P18338697044123544063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235168 (A002560 (n + 4) * A141578 (n + 1)).toNat

end

end A032531.P18338697044123544063

/-! ## A032531.P2750784075601257092

`A235168(lcm(A002560(n+4), A141578(n+1)))`
-/

namespace A032531.P2750784075601257092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235168 (Int.lcm (A002560 (n + 4)) (A141578 (n + 1)))

end

end A032531.P2750784075601257092

/-!
# A032532: Integer part of decimal 'base-2 looking' numbers divided by their actual base-2 values (denominator of a(n) is n, numerator is n written in binary but read in decimal).

The programs for A032532, the canonical program `A032532.P5515615733425822167` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A032532 has offset 1).

The definition of A032532 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007088, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A032532.P5515615733425822167

`floor(A007088(n+1)/(n+1))`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A032532

/-- `floor(A007088(n+1)/(n+1))` -/
def P5515615733425822167.Spec : Prop :=
  ∀ n, P5515615733425822167.a n = A032532 (n + 1)

theorem P5515615733425822167.correct : P5515615733425822167.Spec := by
  intro n
  simp only [A032532, Nat.add_sub_cancel]

end A032532

/-! ## A032532.P13523038209398840001

`floor(∑[A138342(n+1)]/(n+1))`
-/

namespace A032532.P13523038209398840001
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138342 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / (n + 1 : ℚ)⌋

end

end A032532.P13523038209398840001

namespace A032532

/-- `floor(∑[A138342(n+1)]/(n+1))` -/
def P13523038209398840001.Spec : Prop :=
  ∀ n, P13523038209398840001.a n = A032532 (n + 1)

end A032532

/-! ## A032532.P5984165982384009464

`floor(A169966(n+2)/(3*(n+1)))`
-/

namespace A032532.P5984165982384009464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A169966 (n + 2) : ℚ) / (3 * (n + 1) : ℚ)⌋

end

end A032532.P5984165982384009464

namespace A032532

/-- `floor(A169966(n+2)/(3*(n+1)))` -/
def P5984165982384009464.Spec : Prop :=
  ∀ n, P5984165982384009464.a n = A032532 (n + 1)

end A032532

/-! ## A032532.P14871543088582306111

`floor(A169964(n+2)/(5*(n+1)))`
-/

namespace A032532.P14871543088582306111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A169964 (n + 2) : ℚ) / (5 * (n + 1) : ℚ)⌋

end

end A032532.P14871543088582306111

namespace A032532

/-- `floor(A169964(n+2)/(5*(n+1)))` -/
def P14871543088582306111.Spec : Prop :=
  ∀ n, P14871543088582306111.a n = A032532 (n + 1)

end A032532

/-! ## A032532.P525739937561509885

`floor(A185544(2*(n+1))/(n+1))`
-/

namespace A032532.P525739937561509885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A185544 (2 * (n + 1)) : ℚ) / (n + 1 : ℚ)⌋

end

end A032532.P525739937561509885

namespace A032532

/-- `floor(A185544(2*(n+1))/(n+1))` -/
def P525739937561509885.Spec : Prop :=
  ∀ n, P525739937561509885.a n = A032532 (n + 1)

end A032532

/-!
# A032533: Numbers that, when expressed in base 2 and then interpreted in base 10, yield a multiple of the original number.

The programs for A032533, there is no canonical definition to state claims against.
-/

/-! ## A032533.P15567546543518950314

`record[gcd(n+1, A007088(n+1))]`
-/

namespace A032533.P15567546543518950314
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A007088 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A032533.P15567546543518950314

/-! ## A032533.P8658124916264546055

`record[A076775(n+1)]`
-/

namespace A032533.P8658124916264546055
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076775 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A032533.P8658124916264546055

/-! ## A032533.P17842888591647259307

`record[gcd(ϕ²-(ϕ-n), A076775(ϕ²-(ϕ-n)))]`
-/

namespace A032533.P17842888591647259307
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (SequenceMachineLib.roundAway (Real.goldenRatio ^ 2 - (Real.goldenRatio - (n : ℝ)))) (A076775 (SequenceMachineLib.roundAway (Real.goldenRatio ^ 2 - (Real.goldenRatio - (n : ℝ)))).toNat)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A032533.P17842888591647259307

/-! ## A032533.P3326918020790771641

`record[gcd(2*(n+1), A204094(n+1)/7)]`
-/

namespace A032533.P3326918020790771641
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (2 * (n + 1) : ℤ) (SequenceMachineLib.roundAway ((A204094 (n + 1) : ℚ) / 7))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A032533.P3326918020790771641

/-! ## A032533.P8188003723190375720

`eq[1, A355300(n)]`
-/

namespace A032533.P8188003723190375720
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355300 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A032533.P8188003723190375720

/-! ## A032533.P8951875754337054640

`record[gcd(A007088(n), A008574(n))]`
-/

namespace A032533.P8951875754337054640
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A007088 n) (A008574 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A032533.P8951875754337054640

/-! ## A032533.P13122801383247789744

`record[gcd(A108787(n+1), A108789(n+1))]`
-/

namespace A032533.P13122801383247789744
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A108787 (n + 1)) (A108789 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A032533.P13122801383247789744

/-!
# A032534: Quotient of 'base-2' division described in A032533.

The programs for A032534, there is no canonical definition to state claims against.
-/

/-! ## A032534.P802873100071362378

`A007088(A032533(n+1))/A032533(n+1)`
-/

namespace A032534.P802873100071362378
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007088 (A032533 (n + 1)).toNat : ℚ) / (A032533 (n + 1) : ℚ)

end

end A032534.P802873100071362378

/-! ## A032534.P9284591882709193007

`A032532(A032533(n+1))`
-/

namespace A032534.P9284591882709193007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032532 (A032533 (n + 1)).toNat

end

end A032534.P9284591882709193007

/-! ## A032534.P3987865105653301334

`A032532(record[A076775(n+1)])`
-/

namespace A032534.P3987865105653301334
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076775 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032532 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A032534.P3987865105653301334

/-! ## A032534.P13066357632906252700

`A354838(A032533(2*n+1-n))`
-/

namespace A032534.P13066357632906252700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354838 (A032533 (2 * n + 1 - n)).toNat

end

end A032534.P13066357632906252700

/-! ## A032534.P11245657247017732854

`A032532(record[gcd(n+1, A007088(n+1))])`
-/

namespace A032534.P11245657247017732854
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A007088 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032532 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))

end

end A032534.P11245657247017732854

/-! ## A032534.P18041665574827262990

`A032532(record[gcd(2*(n+1), A204094(n+1)/7)])`
-/

namespace A032534.P18041665574827262990
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (2 * (n + 1) : ℤ) (SequenceMachineLib.roundAway ((A204094 (n + 1) : ℚ) / 7))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032532 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))

end

end A032534.P18041665574827262990

/-! ## A032534.P5642840185061214805

`A032532(record[gcd(ϕ²-(ϕ-n), A076775(ϕ²-(ϕ-n)))])`
-/

namespace A032534.P5642840185061214805
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (SequenceMachineLib.roundAway (Real.goldenRatio ^ 2 - (Real.goldenRatio - (n : ℝ)))) (A076775 (SequenceMachineLib.roundAway (Real.goldenRatio ^ 2 - (Real.goldenRatio - (n : ℝ)))).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032532 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))

end

end A032534.P5642840185061214805

/-!
# A032535: Odd numbers that, when expressed in base 2 and then interpreted in base 10, yield a multiple of the original number.

The programs for A032535, there is no canonical definition to state claims against.
-/

/-! ## A032535.P4493973263598590229

`A032533(eq[1, A032533(n+1)%2]+1)`
-/

namespace A032535.P4493973263598590229
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A032533 (n + 1)) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032533 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A032535.P4493973263598590229

/-! ## A032535.P3319213140250993496

`filter[A032533(n+1), A228495(#)]`
-/

namespace A032535.P3319213140250993496
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032533 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A228495 (f1 j).toNat = 1) n)

end

end A032535.P3319213140250993496

/-!
# A032536: Integer part of decimal 'base-3 looking' numbers divided by their actual base-3 values.

The programs for A032536, the canonical program `A032536.P9657526859708018741` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A032536 has offset 1).

The definition of A032536 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A032536.P9657526859708018741

`floor(A007089(n+1)/(n+1))`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A032536

/-- `floor(A007089(n+1)/(n+1))` -/
def P9657526859708018741.Spec : Prop :=
  ∀ n, P9657526859708018741.a n = A032536 (n + 1)

theorem P9657526859708018741.correct : P9657526859708018741.Spec := by
  intro n
  simp only [A032536, Nat.add_sub_cancel]

end A032536

/-! ## A032536.P825644881571000501

`floor(A262412(A262429(n+1))/(n+1))`
-/

namespace A032536.P825644881571000501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A262412 (A262429 (n + 1)).toNat : ℚ) / (n + 1 : ℚ)⌋

end

end A032536.P825644881571000501

namespace A032536

/-- `floor(A262412(A262429(n+1))/(n+1))` -/
def P825644881571000501.Spec : Prop :=
  ∀ n, P825644881571000501.a n = A032536 (n + 1)

end A032536

/-! ## A032536.P7680044041011159862

`floor(A007090(A023717(n+1))/(n+1))`
-/

namespace A032536.P7680044041011159862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A007090 (A023717 (n + 1)).toNat : ℚ) / (n + 1 : ℚ)⌋

end

end A032536.P7680044041011159862

namespace A032536

/-- `floor(A007090(A023717(n+1))/(n+1))` -/
def P7680044041011159862.Spec : Prop :=
  ∀ n, P7680044041011159862.a n = A032536 (n + 1)

end A032536

/-! ## A032536.P17424154556575935431

`floor(A007091(A037453(n+1))/(n+1))`
-/

namespace A032536.P17424154556575935431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A007091 (A037453 (n + 1)).toNat : ℚ) / (n + 1 : ℚ)⌋

end

end A032536.P17424154556575935431

namespace A032536

/-- `floor(A007091(A037453(n+1))/(n+1))` -/
def P17424154556575935431.Spec : Prop :=
  ∀ n, P17424154556575935431.a n = A032536 (n + 1)

end A032536

/-! ## A032536.P6973419849661445595

`floor(A007092(A037454(n+1))/(n+1))`
-/

namespace A032536.P6973419849661445595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A007092 (A037454 (n + 1)).toNat : ℚ) / (n + 1 : ℚ)⌋

end

end A032536.P6973419849661445595

namespace A032536

/-- `floor(A007092(A037454(n+1))/(n+1))` -/
def P6973419849661445595.Spec : Prop :=
  ∀ n, P6973419849661445595.a n = A032536 (n + 1)

end A032536

/-! ## A032536.P464359295110184037

`floor(A007095(A037314(n+1))/(n+1))`
-/

namespace A032536.P464359295110184037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A007095 (A037314 (n + 1)).toNat : ℚ) / (n + 1 : ℚ)⌋

end

end A032536.P464359295110184037

namespace A032536

/-- `floor(A007095(A037314(n+1))/(n+1))` -/
def P464359295110184037.Spec : Prop :=
  ∀ n, P464359295110184037.a n = A032536 (n + 1)

end A032536

/-!
# A032537: Numbers that, when expressed in base 3 and then interpreted in base 10, yield a multiple of the original number.

The programs for A032537, there is no canonical definition to state claims against.
-/

/-! ## A032537.P9595743180102453696

`record[gcd(n, A007089(n))]`
-/

namespace A032537.P9595743180102453696
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n : ℤ) (A007089 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A032537.P9595743180102453696

/-! ## A032537.P10766634598280440300

`eq[0, A007089(n)%A028310(n)]`
-/

namespace A032537.P10766634598280440300
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A007089 n) (A028310 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A032537.P10766634598280440300

/-! ## A032537.P11864278093962445656

`record[gcd(A024635(2*n)/2, A038608(n))]`
-/

namespace A032537.P11864278093962445656
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (SequenceMachineLib.roundAway ((A024635 (2 * n) : ℚ) / 2)) (A038608 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A032537.P11864278093962445656

/-! ## A032537.P9726810195255553329

`record[gcd(A024651(3*n)/3, A004526(2*n))]`
-/

namespace A032537.P9726810195255553329
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (SequenceMachineLib.roundAway ((A024651 (3 * n) : ℚ) / 3)) (A004526 (2 * n))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A032537.P9726810195255553329

/-!
# A032538: Quotient of 'base-3' division described in A032537.

The programs for A032538, there is no canonical definition to state claims against.
-/

/-! ## A032538.P18156215721681944990

`A032536(A032537(n+2))`
-/

namespace A032538.P18156215721681944990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032536 (A032537 (n + 2)).toNat

end

end A032538.P18156215721681944990

/-!
# A032539: Integer part of decimal 'base-4 looking' numbers divided by their actual base-4 values.

The programs for A032539, the canonical program `A032539.P16837538316627881090` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A032539 has offset 1).

The definition of A032539 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007090, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A032539.P16837538316627881090

`floor(A007090(n+1)/(n+1))`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A032539

/-- `floor(A007090(n+1)/(n+1))` -/
def P16837538316627881090.Spec : Prop :=
  ∀ n, P16837538316627881090.a n = A032539 (n + 1)

theorem P16837538316627881090.correct : P16837538316627881090.Spec := by
  intro n
  simp only [A032539, Nat.add_sub_cancel]

end A032539

/-! ## A032539.P9653752309580354887

`A118759(ceil((A007090(n+1)-n)/(n+1)))`
-/

namespace A032539.P9653752309580354887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118759 ⌈(A007090 (n + 1) - (n : ℤ) : ℚ) / (n + 1 : ℚ)⌉.toNat

end

end A032539.P9653752309580354887

namespace A032539

/-- `A118759(ceil((A007090(n+1)-n)/(n+1)))` -/
def P9653752309580354887.Spec : Prop :=
  ∀ n, P9653752309580354887.a n = A032539 (n + 1)

end A032539

/-! ## A032539.P13777123497262303144

`ceil(A331170(A007090(n+1)-n)/(n+1))`
-/

namespace A032539.P13777123497262303144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A331170 (A007090 (n + 1) - (n : ℤ)).toNat : ℚ) / (n + 1 : ℚ)⌉

end

end A032539.P13777123497262303144

namespace A032539

/-- `ceil(A331170(A007090(n+1)-n)/(n+1))` -/
def P13777123497262303144.Spec : Prop :=
  ∀ n, P13777123497262303144.a n = A032539 (n + 1)

end A032539

/-! ## A032539.P16102090265582433770

`ceil(A091685(A007090(n+1)-n)/(n+1))`
-/

namespace A032539.P16102090265582433770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A091685 (A007090 (n + 1) - (n : ℤ)).toNat : ℚ) / (n + 1 : ℚ)⌉

end

end A032539.P16102090265582433770

namespace A032539

/-- `ceil(A091685(A007090(n+1)-n)/(n+1))` -/
def P16102090265582433770.Spec : Prop :=
  ∀ n, P16102090265582433770.a n = A032539 (n + 1)

end A032539

/-! ## A032539.P1107165578053707152

`floor(A222239(record[A222239(n+1)])/(n+1))`
-/

namespace A032539.P1107165578053707152
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222239 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A222239 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat : ℚ) / (n + 1 : ℚ)⌋

end

end A032539.P1107165578053707152

namespace A032539

/-- `floor(A222239(record[A222239(n+1)])/(n+1))` -/
def P1107165578053707152.Spec : Prop :=
  ∀ n, P1107165578053707152.a n = A032539 (n + 1)

end A032539

/-!
# A032540: Numbers that, when expressed in base 4 and then interpreted in base 10, yield a multiple of the original number.

The programs for A032540, there is no canonical definition to state claims against.
-/

/-! ## A032540.P8146134011543809938

`eq[n, gcd(n, A007090(n))]`
-/

namespace A032540.P8146134011543809938
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n : ℤ) (A007090 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A032540.P8146134011543809938

/-! ## A032540.P6066232741311428629

`eq[0, A007090(n)%A028310(n)]`
-/

namespace A032540.P6066232741311428629
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A007090 n) (A028310 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A032540.P6066232741311428629

/-! ## A032540.P5858465949607932520

`lt[lcm(n, A007090(n)), A007090(n+1)]`
-/

namespace A032540.P5858465949607932520
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (n : ℤ) (A007090 n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007090 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A032540.P5858465949607932520

/-! ## A032540.P9911282090394372016

`lt[A008458(A007090(n))%A008458(n), 1]`
-/

namespace A032540.P9911282090394372016
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A008458 (A007090 n).toNat) (A008458 n)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A032540.P9911282090394372016

/-! ## A032540.P10847985570735339802

`lt[A008574(A007090(n))%A008574(n), 1]`
-/

namespace A032540.P10847985570735339802
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A008574 (A007090 n).toNat) (A008574 n)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A032540.P10847985570735339802

/-!
# A032541: Quotient of 'base-4' division described in A032540.

The programs for A032541, there is no canonical definition to state claims against.
-/

/-! ## A032541.P799533146242560172

`A032539(A032540(n+2))`
-/

namespace A032541.P799533146242560172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032539 (A032540 (n + 2)).toNat

end

end A032541.P799533146242560172

/-! ## A032541.P4168256024001567582

`A006530(C(A066898(n+1), floor(n/2)))`
-/

namespace A032541.P4168256024001567582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (Nat.choose (A066898 (n + 1)).toNat ⌊(n : ℚ) / 2⌋.toNat)

end

end A032541.P4168256024001567582

/-! ## A032541.P13423317698866783373

`A345931(A020093(n))%A273678(n)`
-/

namespace A032541.P13423317698866783373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A345931 (A020093 n).toNat) (A273678 n)

end

end A032541.P13423317698866783373

/-! ## A032541.P12036193680042843040

`A056670(A056764(n+1)+A056628(n+1))`
-/

namespace A032541.P12036193680042843040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056670 (A056764 (n + 1) + A056628 (n + 1)).toNat

end

end A032541.P12036193680042843040

/-!
# A032542: Integer part of decimal 'base-5 looking' numbers divided by their actual base-5 values.

The programs for A032542, the canonical program `A032542.P17277057627315213532` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A032542 has offset 1).

The definition of A032542 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007091, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A032542.P17277057627315213532

`floor(A007091(n+1)/(n+1))`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A032542

/-- `floor(A007091(n+1)/(n+1))` -/
def P17277057627315213532.Spec : Prop :=
  ∀ n, P17277057627315213532.a n = A032542 (n + 1)

theorem P17277057627315213532.correct : P17277057627315213532.Spec := by
  intro n
  simp only [A032542, Nat.add_sub_cancel]

end A032542

/-! ## A032542.P6231780823512315874

`floor(A014263(n+2)/(2*(n+1)))`
-/

namespace A032542.P6231780823512315874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A014263 (n + 2) : ℚ) / (2 * (n + 1) : ℚ)⌋

end

end A032542.P6231780823512315874

namespace A032542

/-- `floor(A014263(n+2)/(2*(n+1)))` -/
def P6231780823512315874.Spec : Prop :=
  ∀ n, P6231780823512315874.a n = A032542 (n + 1)

end A032542

/-! ## A032542.P16161281258143913861

`floor(A275775(A103517(n))/A103517(n))`
-/

namespace A032542.P16161281258143913861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A275775 (A103517 n).toNat : ℚ) / (A103517 n : ℚ)⌋

end

end A032542.P16161281258143913861

namespace A032542

/-- `floor(A275775(A103517(n))/A103517(n))` -/
def P16161281258143913861.Spec : Prop :=
  ∀ n, P16161281258143913861.a n = A032542 (n + 1)

end A032542

/-! ## A032542.P5605739976623672819

`floor(record[A106747(n+2)]/(n+1))`
-/

namespace A032542.P5605739976623672819
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106747 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℚ) / (n + 1 : ℚ)⌋

end

end A032542.P5605739976623672819

namespace A032542

/-- `floor(record[A106747(n+2)]/(n+1))` -/
def P5605739976623672819.Spec : Prop :=
  ∀ n, P5605739976623672819.a n = A032542 (n + 1)

end A032542

/-! ## A032542.P10897985053103569555

`floor(record[A065033(A001613(n))]/(n+1))`
-/

namespace A032542.P10897985053103569555
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (A001613 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℚ) / (n + 1 : ℚ)⌋

end

end A032542.P10897985053103569555

namespace A032542

/-- `floor(record[A065033(A001613(n))]/(n+1))` -/
def P10897985053103569555.Spec : Prop :=
  ∀ n, P10897985053103569555.a n = A032542 (n + 1)

end A032542

/-!
# A032543: Numbers that, when expressed in base 5 and then interpreted in base 10, yield a multiple of the original number.

The programs for A032543, there is no canonical definition to state claims against.
-/

/-! ## A032543.P1758420369343983410

`record[gcd(n, A007091(n))]`
-/

namespace A032543.P1758420369343983410
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n : ℤ) (A007091 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A032543.P1758420369343983410

/-! ## A032543.P4942754613475337267

`record[gcd(5*n, A014263(n+1)/2)]`
-/

namespace A032543.P4942754613475337267
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (5 * n : ℤ) (SequenceMachineLib.roundAway ((A014263 (n + 1) : ℚ) / 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A032543.P4942754613475337267

/-! ## A032543.P17384898594141011072

`record[gcd(A014263(n+1)/2, A008587(n))]`
-/

namespace A032543.P17384898594141011072
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (SequenceMachineLib.roundAway ((A014263 (n + 1) : ℚ) / 2)) (A008587 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A032543.P17384898594141011072

/-! ## A032543.P15199008122937736493

`record[gcd(5*n, A007093(A037466(n)))]`
-/

namespace A032543.P15199008122937736493
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (5 * n : ℤ) (A007093 (A037466 n).toNat)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A032543.P15199008122937736493

/-! ## A032543.P11279762636548387765

`record[gcd(n-2*n, A007094(A037467(n)))]`
-/

namespace A032543.P11279762636548387765
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd ((n : ℤ) - (2 * n : ℤ)) (A007094 (A037467 n).toNat)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A032543.P11279762636548387765

/-!
# A032544: Quotient of 'base-5' division described in A032543.

The programs for A032544, there is no canonical definition to state claims against.
-/

/-! ## A032544.P6528053571113038768

`A032542(A032543(n+2))`
-/

namespace A032544.P6528053571113038768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032542 (A032543 (n + 2)).toNat

end

end A032544.P6528053571113038768

/-!
# A032545: Integer part of decimal 'base-6 looking' numbers divided by their actual base-6 values, rounded down.

The programs for A032545, there is no canonical definition to state claims against.
-/

/-! ## A032545.P13922615595974255940

`floor(A007092(n+1)/(n+1))`
-/

namespace A032545.P13922615595974255940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A007092 (n + 1) : ℚ) / (n + 1 : ℚ)⌋

end

end A032545.P13922615595974255940

/-! ## A032545.P2845879433861060607

`A063982(∏[A330749((n+1)/∏{p}[n+1, #])])`
-/

namespace A032545.P2845879433861060607
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330749 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f2 n), p : ℕ) : ℚ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063982 (∏ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A032545.P2845879433861060607

/-! ## A032545.P11165899345341990001

`A005811(∏[A033676(A000688(n+1))])`
-/

namespace A032545.P11165899345341990001
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033676 (A000688 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005811 (∏ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A032545.P11165899345341990001

/-! ## A032545.P12335372411120763886

`round(root(A171864(n+1), 31))`
-/

namespace A032545.P12335372411120763886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A171864 (n + 1) : ℝ) ^ (1 / (31 : ℝ)))

end

end A032545.P12335372411120763886

/-! ## A032545.P3430475024251096691

`A020639(∏[A304820(n+1)!])`
-/

namespace A032545.P3430475024251096691
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A304820 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (∏ j ∈ Finset.range (n + 1), f1 j)

end

end A032545.P3430475024251096691

/-! ## A032545.P6453197970026461461

`A020639(∏[A007318(A330749(n+1))])`
-/

namespace A032545.P6453197970026461461
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (A330749 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (∏ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A032545.P6453197970026461461

/-! ## A032545.P2519275248646183105

`A020639(∏[A000188(A348036(n+1))])`
-/

namespace A032545.P2519275248646183105
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000188 (A348036 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (∏ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A032545.P2519275248646183105

/-! ## A032545.P16086336372111705217

`A020639(∏[A007318(A348039(2*(n+1)))])`
-/

namespace A032545.P16086336372111705217
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (A348039 (2 * (n + 1))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (∏ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A032545.P16086336372111705217

/-! ## A032545.P13158955132172357912

`A048766(A048766(record[A079051(2*(n+1))]))`
-/

namespace A032545.P13158955132172357912
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079051 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048766 (A048766 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat).toNat

end

end A032545.P13158955132172357912

/-! ## A032545.P518970956110810903

`A001222(A020334(n+1))-A001222(n+1)`
-/

namespace A032545.P518970956110810903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A020334 (n + 1)).toNat - A001222 (n + 1)

end

end A032545.P518970956110810903

/-! ## A032545.P1302123093787157659

`A020639(∏[A056170(n+1)^A056170(n+1)])`
-/

namespace A032545.P1302123093787157659
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A056170 (n + 1) : ℚ) ^ (A056170 (n + 1) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (SequenceMachineLib.roundAway (∏ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A032545.P1302123093787157659

/-! ## A032545.P2244703133032303136

`A000034(A154748(Δ[A020334(n+1)]))`
-/

namespace A032545.P2244703133032303136
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020334 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (A154748 (f1 (n + 1) - f1 n).toNat).toNat

end

end A032545.P2244703133032303136

/-! ## A032545.P13199692707677960577

`A020639(∏[A353353(n+1)!])`
-/

namespace A032545.P13199692707677960577
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A353353 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (∏ j ∈ Finset.range (n + 1), f1 j)

end

end A032545.P13199692707677960577

/-! ## A032545.P16914754976205383963

`A020639(∏[A007318(A007862(n+1))])`
-/

namespace A032545.P16914754976205383963
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (A007862 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (∏ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A032545.P16914754976205383963

/-! ## A032545.P10737852265299620446

`A020639(∏[A007318(A016014(n+7))])`
-/

namespace A032545.P10737852265299620446
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (A016014 (n + 7)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (∏ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A032545.P10737852265299620446

/-! ## A032545.P2984343616784743288

`A014963(∏[A056170(n+1)^A056170(n+1)])`
-/

namespace A032545.P2984343616784743288
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A056170 (n + 1) : ℚ) ^ (A056170 (n + 1) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (SequenceMachineLib.roundAway (∏ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A032545.P2984343616784743288

/-! ## A032545.P3654063044551708090

`A020639(∏[val(((n+1)/∏{p}[n+1, #])^5, 12)!])`
-/

namespace A032545.P3654063044551708090
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (SequenceMachineLib.valuation (SequenceMachineLib.roundAway (((n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f2 n), p : ℕ) : ℚ)) ^ 5)).toNat 12)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (∏ j ∈ Finset.range (n + 1), f1 j)

end

end A032545.P3654063044551708090

/-!
# A032546: Numbers that, when expressed in base 6 and then interpreted in base 10, yield a multiple of the original number.

The programs for A032546, there is no canonical definition to state claims against.
-/

/-! ## A032546.P11498118768317415366

`A062942(n+2)`
-/

namespace A032546.P11498118768317415366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062942 (n + 2)

end

end A032546.P11498118768317415366

/-!
# A032548: Integer part of decimal 'base-7 looking' numbers divided by their actual base-7 values.

The programs for A032548, the canonical program `A032548.P8167031196265540055` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A032548 has offset 1).

The definition of A032548 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007093, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A032548.P8167031196265540055

`floor(A007093(n+1)/(n+1))`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A032548

/-- `floor(A007093(n+1)/(n+1))` -/
def P8167031196265540055.Spec : Prop :=
  ∀ n, P8167031196265540055.a n = A032548 (n + 1)

theorem P8167031196265540055.correct : P8167031196265540055.Spec := by
  intro n
  simp only [A032548, Nat.add_sub_cancel]

end A032548

/-! ## A032548.P4829451094258260903

`floor(A222251(record[A222251(n+1)])/(n+1))`
-/

namespace A032548.P4829451094258260903
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222251 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A222251 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat : ℚ) / (n + 1 : ℚ)⌋

end

end A032548.P4829451094258260903

namespace A032548

/-- `floor(A222251(record[A222251(n+1)])/(n+1))` -/
def P4829451094258260903.Spec : Prop :=
  ∀ n, P4829451094258260903.a n = A032548 (n + 1)

end A032548

/-! ## A032548.P14179132523661015711

`ceil(A110654(A007093(n+1)+ceil(n/(n+1)))/(n+1))`
-/

namespace A032548.P14179132523661015711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A110654 (A007093 (n + 1) + ⌈(n : ℚ) / (n + 1 : ℚ)⌉).toNat : ℚ) / (n + 1 : ℚ)⌉

end

end A032548.P14179132523661015711

namespace A032548

/-- `ceil(A110654(A007093(n+1)+ceil(n/(n+1)))/(n+1))` -/
def P14179132523661015711.Spec : Prop :=
  ∀ n, P14179132523661015711.a n = A032548 (n + 1)

end A032548

/-! ## A032548.P15980446688520672790

`ceil(A007093(n+1)/A057354(5*n+3))`
-/

namespace A032548.P15980446688520672790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A007093 (n + 1) : ℚ) / (A057354 (5 * n + 3) : ℚ)⌉

end

end A032548.P15980446688520672790

namespace A032548

/-- `ceil(A007093(n+1)/A057354(5*n+3))` -/
def P15980446688520672790.Spec : Prop :=
  ∀ n, P15980446688520672790.a n = A032548 (n + 1)

end A032548

/-! ## A032548.P6554038078505259038

`A027750(A213217(∑[A061858(n)]))`
-/

namespace A032548.P6554038078505259038
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061858 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027750 (A213217 (∑ j ∈ Finset.range (n + 1), f1 j).toNat).toNat

end

end A032548.P6554038078505259038

namespace A032548

/-- `A027750(A213217(∑[A061858(n)]))` -/
def P6554038078505259038.Spec : Prop :=
  ∀ n, P6554038078505259038.a n = A032548 (n + 1)

end A032548

/-! ## A032548.P10000725400413106468

`A348039(floor(sqrt(A248777(n+1))))`
-/

namespace A032548.P10000725400413106468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348039 (Int.sqrt (A248777 (n + 1))).toNat

end

end A032548.P10000725400413106468

namespace A032548

/-- `A348039(floor(sqrt(A248777(n+1))))` -/
def P10000725400413106468.Spec : Prop :=
  ∀ n, P10000725400413106468.a n = A032548 (n + 1)

end A032548

/-! ## A032548.P4945573691408042626

`A042974(A301218(∑[A061858(n)]))`
-/

namespace A032548.P4945573691408042626
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061858 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042974 (A301218 (∑ j ∈ Finset.range (n + 1), f1 j).toNat).toNat

end

end A032548.P4945573691408042626

namespace A032548

/-- `A042974(A301218(∑[A061858(n)]))` -/
def P4945573691408042626.Spec : Prop :=
  ∀ n, P4945573691408042626.a n = A032548 (n + 1)

end A032548

/-! ## A032548.P16303712340091930692

`A330664(gcd(A002264(n), A016116(n)))`
-/

namespace A032548.P16303712340091930692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330664 (Int.gcd (A002264 n) (A016116 n))

end

end A032548.P16303712340091930692

namespace A032548

/-- `A330664(gcd(A002264(n), A016116(n)))` -/
def P16303712340091930692.Spec : Prop :=
  ∀ n, P16303712340091930692.a n = A032548 (n + 1)

end A032548

/-!
# A032549: Numbers that, when expressed in base 7 and then interpreted in base 10, yield a multiple of the original number.

The programs for A032549, there is no canonical definition to state claims against.
-/

/-! ## A032549.P5212725570083533087

`A062944(n+2)`
-/

namespace A032549.P5212725570083533087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062944 (n + 2)

end

end A032549.P5212725570083533087

/-! ## A032549.P10114212671524585605

`eq[n, gcd(A007093(n), A008486(n))]`
-/

namespace A032549.P10114212671524585605
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A007093 n) (A008486 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A032549.P10114212671524585605

/-! ## A032549.P7972315093959263819

`eq[A007093(n)%A028310(n), A000007(n)]`
-/

namespace A032549.P7972315093959263819
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A007093 n) (A028310 n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A032549.P7972315093959263819

/-! ## A032549.P783340673284226901

`lt[lcm(n, A007093(n)), A007094(2*n)]`
-/

namespace A032549.P783340673284226901
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (n : ℤ) (A007093 n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007094 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A032549.P783340673284226901

/-! ## A032549.P15657143921190483272

`record[A062944(A104758(n))]`
-/

namespace A032549.P15657143921190483272
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062944 (A104758 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A032549.P15657143921190483272

/-!
# A032550: Quotient of 'base-7' division described in A032549.

The programs for A032550, there is no canonical definition to state claims against.
-/

/-! ## A032550.P9607863747299113086

`A032548(A032549(n+1))`
-/

namespace A032550.P9607863747299113086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032548 (A032549 (n + 1)).toNat

end

end A032550.P9607863747299113086

/-! ## A032550.P16633482994406741176

`A032548(A062944(n+2))`
-/

namespace A032550.P16633482994406741176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032548 (A062944 (n + 2)).toNat

end

end A032550.P16633482994406741176

/-! ## A032550.P18372296515787158149

`A295101(A321162(n+2))`
-/

namespace A032550.P18372296515787158149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295101 (A321162 (n + 2)).toNat

end

end A032550.P18372296515787158149

/-! ## A032550.P7573951671714864815

`A194441(floor(sqrt(A321162(n+2))))`
-/

namespace A032550.P7573951671714864815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194441 (Int.sqrt (A321162 (n + 2))).toNat

end

end A032550.P7573951671714864815

/-!
# A032552: Quotient of 'base-8' division described in A032551.

The programs for A032552, there is no canonical definition to state claims against.
-/

/-! ## A032552.P5940046324079539791

`A035612(A032564(n+2)!)`
-/

namespace A032552.P5940046324079539791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035612 (Nat.factorial (A032564 (n + 2)).toNat)

end

end A032552.P5940046324079539791

/-! ## A032552.P256441696618018985

`A105595(A105592(record[or(8, n)]))`
-/

namespace A032552.P256441696618018985
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 8 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105595 (A105592 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))).toNat

end

end A032552.P256441696618018985

/-! ## A032552.P2188400557046844591

`A001222(∑{d}[A032564(n+2)!, #+1])`
-/

namespace A032552.P2188400557046844591
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A032564 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (∑ d ∈ Nat.divisors (f1 n), (d + 1))

end

end A032552.P2188400557046844591

/-! ## A032552.P5880872841477410747

`or(a(n-1), A001221(A214120(n+1)))` with `a(0)=1`
-/

namespace A032552.P5880872841477410747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  Int.lor (a (n - 1)) (A001221 (A214120 (n + 1)).toNat)

end

end A032552.P5880872841477410747

/-! ## A032552.P11271064768391638037

`or(A325194(A097242(n)), A329129(2*n+1))`
-/

namespace A032552.P11271064768391638037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A325194 (A097242 n).toNat) (A329129 (2 * n + 1))

end

end A032552.P11271064768391638037

/-!
# A032553: Arrange digits of cubes in ascending order.

The programs for A032553, there is no canonical definition to state claims against.
-/

/-! ## A032553.P7834762957009019075

`A032554(n)-A151949(A000578(n))`
-/

namespace A032553.P7834762957009019075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032554 n - A151949 (A000578 n).toNat

end

end A032553.P7834762957009019075

/-! ## A032553.P14239713963977516205

`A004185(n^3)`
-/

namespace A032553.P14239713963977516205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004185 (n ^ 3)

end

end A032553.P14239713963977516205

/-! ## A032553.P5823561817501856482

`A070196(n^3)-n^3`
-/

namespace A032553.P5823561817501856482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070196 (n ^ 3) - (n ^ 3 : ℤ)

end

end A032553.P5823561817501856482

/-! ## A032553.P4025269465202925523

`n^3-A193581(n^3)`
-/

namespace A032553.P4025269465202925523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 3 : ℤ) - A193581 (n ^ 3)

end

end A032553.P4025269465202925523

/-! ## A032553.P736872115441543755

`A004185(n*n²)+char[24]`
-/

namespace A032553.P736872115441543755
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  24

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004185 (n * n ^ 2) + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A032553.P736872115441543755

/-!
# A032554: Arrange digits of cubes in descending order.

The programs for A032554, there is no canonical definition to state claims against.
-/

/-! ## A032554.P8413506607206953868

`A004186(A000578(n))`
-/

namespace A032554.P8413506607206953868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004186 (A000578 n).toNat

end

end A032554.P8413506607206953868

/-! ## A032554.P5219203665833023396

`A151949(n^3)+A032553(n)`
-/

namespace A032554.P5219203665833023396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151949 (n ^ 3) + A032553 n

end

end A032554.P5219203665833023396

/-! ## A032554.P10528000737659101857

`A151949(A000578(n))+A004185(A032553(n))`
-/

namespace A032554.P10528000737659101857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151949 (A000578 n).toNat + A004185 (A032553 n).toNat

end

end A032554.P10528000737659101857

/-! ## A032554.P15277547967224308767

`A004186(n^3)`
-/

namespace A032554.P15277547967224308767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004186 (n ^ 3)

end

end A032554.P15277547967224308767

/-! ## A032554.P5006443659054034005

`A108782(n^3)+n^3`
-/

namespace A032554.P5006443659054034005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108782 (n ^ 3) + (n ^ 3 : ℤ)

end

end A032554.P5006443659054034005

/-!
# A032555: Numbers k whose decimal representation, read as a base-12 value and divided by k, yields an integer.

The programs for A032555, there is no canonical definition to state claims against.
-/

/-! ## A032555.P4983566614840002312

`A285658(Δ[A135385(n+1)])+n-1`
-/

namespace A032555.P4983566614840002312
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135385 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285658 (f1 (n + 1) - f1 n).toNat + (n : ℤ) - 1

end

end A032555.P4983566614840002312

/-! ## A032555.P6100541909382747662

`A348428(A341161(n+1))%∑[A069035(3*n+4)]`
-/

namespace A032555.P6100541909382747662
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069035 (3 * n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A348428 (A341161 (n + 1)).toNat) (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A032555.P6100541909382747662

/-! ## A032555.P16695171747251832615

`A276115(A044959(A056143(A044959(A044959(n+1)))))`
-/

namespace A032555.P16695171747251832615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276115 (A044959 (A056143 (A044959 (A044959 (n + 1)).toNat).toNat).toNat).toNat

end

end A032555.P16695171747251832615

/-!
# A032556: Quotient of 'base-12' division described in A032555.

The programs for A032556, there is no canonical definition to state claims against.
-/

/-! ## A032556.P2612603616624453168

`A264401(A048766(∏[2-n²%3]-1))+1`
-/

namespace A032556.P2612603616624453168
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - ((n ^ 2 % 3 : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264401 (A048766 (∏ j ∈ Finset.range (n + 1), f1 j - 1).toNat).toNat + 1

end

end A032556.P2612603616624453168

/-! ## A032556.P8888091217162020980

`floor(root(A032555(n+1), 12))`
-/

namespace A032556.P8888091217162020980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A032555 (n + 1) : ℝ) ^ (1 / (12 : ℝ))⌋

end

end A032556.P8888091217162020980

/-! ## A032556.P6829619755928600735

`A001222(2^round(root(A032555(n+1), 13)))`
-/

namespace A032556.P6829619755928600735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (SequenceMachineLib.roundAway ((A032555 (n + 1) : ℝ) ^ (1 / (13 : ℝ))) : ℤ))).toNat

end

end A032556.P6829619755928600735

/-! ## A032556.P4272013733235646702

`round(root(A032555(n+1), 13))%A000041(n+2)`
-/

namespace A032556.P4272013733235646702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((A032555 (n + 1) : ℝ) ^ (1 / (13 : ℝ)))) (A000041 (n + 2))

end

end A032556.P4272013733235646702

/-! ## A032556.P16971436399909955507

`A008683(4*(n+1))+round(root(A032555(n+1), 13))`
-/

namespace A032556.P16971436399909955507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (4 * (n + 1)) + SequenceMachineLib.roundAway ((A032555 (n + 1) : ℝ) ^ (1 / (13 : ℝ)))

end

end A032556.P16971436399909955507

/-!
# A032557: Numbers k whose decimal representation, read as a base-13 value and divided by k, yields an integer.

The programs for A032557, there is no canonical definition to state claims against.
-/

/-! ## A032557.P2098852156495267370

`(n+4)*A165877(n)!-3`
-/

namespace A032557.P2098852156495267370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 4) * Nat.factorial (A165877 n).toNat : ℤ) - 3

end

end A032557.P2098852156495267370

/-! ## A032557.P5850531762898986144

`A355223(A032565(n+1))`
-/

namespace A032557.P5850531762898986144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355223 (A032565 (n + 1)).toNat

end

end A032557.P5850531762898986144

/-! ## A032557.P18339218959581650672

`A098312(A348428(n+1))`
-/

namespace A032557.P18339218959581650672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098312 (A348428 (n + 1)).toNat

end

end A032557.P18339218959581650672

/-! ## A032557.P4982896247665742637

`A178089(A282377(n+3))+n`
-/

namespace A032557.P4982896247665742637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178089 (A282377 (n + 3)).toNat + (n : ℤ)

end

end A032557.P4982896247665742637

/-! ## A032557.P8956139853237543370

`A082217(n+1)%p?[A242108(n)]`
-/

namespace A032557.P8956139853237543370
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242108 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A082217 (n + 1)) (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A032557.P8956139853237543370

/-!
# A032560: Quotient of 'base-14' division described in A032559.

The programs for A032560, there is no canonical definition to state claims against.
-/

/-! ## A032560.P17962672766296545089

`A063195(or(7, A318916(n+1)))`
-/

namespace A032560.P17962672766296545089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063195 (Int.lor 7 (A318916 (n + 1))).toNat

end

end A032560.P17962672766296545089

/-! ## A032560.P14197221158403727412

`A076368(or(7, A318916(n+1))-6)`
-/

namespace A032560.P14197221158403727412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076368 (Int.lor 7 (A318916 (n + 1)) - 6).toNat

end

end A032560.P14197221158403727412

/-! ## A032560.P11798596446313201145

`A254324(∏[A030580(n+1)])`
-/

namespace A032560.P11798596446313201145
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030580 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254324 (∏ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A032560.P11798596446313201145

/-! ## A032560.P10034324407861092674

`A006530(∏[Δ[A133134(n+1)]])`
-/

namespace A032560.P10034324407861092674
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133134 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (∏ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A032560.P10034324407861092674

/-! ## A032560.P10815787974929750454

`A363968(A100501(A206244(n+2)²))`
-/

namespace A032560.P10815787974929750454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363968 (A100501 (A206244 (n + 2) ^ 2).toNat).toNat

end

end A032560.P10815787974929750454

/-!
# A032561: Numbers k whose decimal representation, read as a base-15 value and divided by k, yields an integer.

The programs for A032561, there is no canonical definition to state claims against.
-/

/-! ## A032561.P14547193122130620932

`∑[A094526(A337220(n+1))]`
-/

namespace A032561.P14547193122130620932
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094526 (A337220 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A032561.P14547193122130620932

/-! ## A032561.P12951747878283076034

`A032947(A062399(n)+Δ[A061862(n+1)])`
-/

namespace A032561.P12951747878283076034
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061862 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032947 (A062399 n + (f1 (n + 1) - f1 n)).toNat

end

end A032561.P12951747878283076034

/-! ## A032561.P14921530267196058908

`A032947(A062399(n)+Δ[A134703(n+1)])`
-/

namespace A032561.P14921530267196058908
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134703 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032947 (A062399 n + (f1 (n + 1) - f1 n)).toNat

end

end A032561.P14921530267196058908

/-! ## A032561.P8800399060890619782

`∑[A129100(A054661(n+1)%A000048(n))]`
-/

namespace A032561.P8800399060890619782
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129100 (Int.tmod (A054661 (n + 1)) (A000048 n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A032561.P8800399060890619782

/-! ## A032561.P16926275303229920393

`A124107(n+1)%(n+5)²`
-/

namespace A032561.P16926275303229920393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A124107 (n + 1)) ((n + 5) ^ 2 : ℤ)

end

end A032561.P16926275303229920393

/-!
# A032563: Numbers k such that A102489(k) is divisible by k.

The programs for A032563, there is no canonical definition to state claims against.
-/

/-! ## A032563.P12119720243244671191

`∑[A114295(A114297(n)%A114299(n))]`
-/

namespace A032563.P12119720243244671191
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114295 (Int.tmod (A114297 n) (A114299 n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A032563.P12119720243244671191

/-! ## A032563.P2074497065872200089

`∑[A250552(A187187(n+1)^A116924(n))]`
-/

namespace A032563.P2074497065872200089
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250552 (SequenceMachineLib.roundAway ((A187187 (n + 1) : ℚ) ^ (A116924 n : ℤ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A032563.P2074497065872200089

/-! ## A032563.P10957739189299065942

`A079227(A137748(n))+n`
-/

namespace A032563.P10957739189299065942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079227 (A137748 n).toNat + (n : ℤ)

end

end A032563.P10957739189299065942

/-! ## A032563.P11048859243147704766

`A079227(A181153(n))+n`
-/

namespace A032563.P11048859243147704766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079227 (A181153 n).toNat + (n : ℤ)

end

end A032563.P11048859243147704766

/-! ## A032563.P6392160486274095776

`A131893(A221857(A131893(n)))+n`
-/

namespace A032563.P6392160486274095776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131893 (A221857 (A131893 n).toNat).toNat + (n : ℤ)

end

end A032563.P6392160486274095776

/-!
# A032564: Quotient of 'base-16' division described in A032563.

The programs for A032564, there is no canonical definition to state claims against.
-/

/-! ## A032564.P335927783719012514

`A262190(n+1)*A262190(A050723(n+2))`
-/

namespace A032564.P335927783719012514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262190 (n + 1) * A262190 (A050723 (n + 2)).toNat

end

end A032564.P335927783719012514

/-! ## A032564.P16582920227850357491

`A054571(floor(log2(A115925(n+1))))`
-/

namespace A032564.P16582920227850357491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054571 (Nat.log 2 (A115925 (n + 1)).toNat)

end

end A032564.P16582920227850357491

/-! ## A032564.P15072718207508822907

`A316431(floor(log2(A115925(n+1))))`
-/

namespace A032564.P15072718207508822907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316431 (Nat.log 2 (A115925 (n + 1)).toNat)

end

end A032564.P15072718207508822907

/-! ## A032564.P14774097744450221041

`A276502(A065448(n+1))*A276502(n+1)`
-/

namespace A032564.P14774097744450221041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276502 (A065448 (n + 1)).toNat * A276502 (n + 1)

end

end A032564.P14774097744450221041

/-!
# A032565: Numbers k whose decimal representation, read as a base-17 value and divided by k, yields an integer.

The programs for A032565, there is no canonical definition to state claims against.
-/

/-! ## A032565.P10931225045694034655

`A143953(A306008(n))+n`
-/

namespace A032565.P10931225045694034655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143953 (A306008 n).toNat + (n : ℤ)

end

end A032565.P10931225045694034655

/-! ## A032565.P14677169820822407131

`A057163(A078214(n+1))+n`
-/

namespace A032565.P14677169820822407131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057163 (A078214 (n + 1)).toNat + (n : ℤ)

end

end A032565.P14677169820822407131

/-! ## A032565.P12262964711980738271

`A044917(∑[A110731(n+1)²])`
-/

namespace A032565.P12262964711980738271
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110731 (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044917 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A032565.P12262964711980738271

/-! ## A032565.P3702831045537582602

`A044917(A110731(n+1)²+n)`
-/

namespace A032565.P3702831045537582602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044917 (A110731 (n + 1) ^ 2 + (n : ℤ)).toNat

end

end A032565.P3702831045537582602

/-! ## A032565.P3369427005741070249

`or(A124107(n+1), A223081(n+1))`
-/

namespace A032565.P3369427005741070249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A124107 (n + 1)) (A223081 (n + 1))

end

end A032565.P3369427005741070249

/-!
# A032567: Numbers k whose decimal representation, read as a base-18 value and divided by k, yields an integer.

The programs for A032567, there is no canonical definition to state claims against.
-/

/-! ## A032567.P6656906975748429935

`A254948(A032561(n+1)+(n-∑{digits}[n, #])/9)`
-/

namespace A032567.P6656906975748429935
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254948 (SequenceMachineLib.roundAway ((A032561 (n + 1) : ℚ) + ((n : ℤ) - ((((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => x).sum : ℕ) : ℤ) : ℚ) / 9)).toNat

end

end A032567.P6656906975748429935

/-! ## A032567.P3242492088169851827

`A088472(∪[A330927(n+1), A000302(n)])`
-/

namespace A032567.P3242492088169851827
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330927 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000302 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088472 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n)

end

end A032567.P3242492088169851827

/-! ## A032567.P7258951416219838596

`A193407(n+1)-A001222(A120039(n)!)`
-/

namespace A032567.P7258951416219838596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193407 (n + 1) - A001222 (Nat.factorial (A120039 n).toNat)

end

end A032567.P7258951416219838596

/-! ## A032567.P12365497530565254376

`A134853(n+1)-A083894(A316655(3*n+4))`
-/

namespace A032567.P12365497530565254376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134853 (n + 1) - A083894 (A316655 (3 * n + 4)).toNat

end

end A032567.P12365497530565254376

/-! ## A032567.P5255012137991961130

`A088472(∪[A088472(n+1)²², A330927(n+1)])`
-/

namespace A032567.P5255012137991961130
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A088472 (n + 1) ^ 2) ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330927 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088472 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n)

end

end A032567.P5255012137991961130

/-!
# A032571: Numbers k whose decimal representation, read as a base-20 value and divided by k, yields an integer.

The programs for A032571, there is no canonical definition to state claims against.
-/

/-! ## A032571.P6289306821202041926

`record[gcd(n+1, A102491(n+2))]`
-/

namespace A032571.P6289306821202041926
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A102491 (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A032571.P6289306821202041926

/-! ## A032571.P519814035987945972

`record[A028310(gcd(n, A102491(n+1)))]`
-/

namespace A032571.P519814035987945972
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (Int.gcd (n : ℤ) (A102491 (n + 1)))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A032571.P519814035987945972

/-! ## A032571.P14494294103626120698

`record[gcd(A102491(n+2), A131738(n))]`
-/

namespace A032571.P14494294103626120698
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A102491 (n + 2)) (A131738 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A032571.P14494294103626120698

/-! ## A032571.P6482253543626700834

`xor(A037124(n+1), A347470(A093475(n+1)))`
-/

namespace A032571.P6482253543626700834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A037124 (n + 1)) (A347470 (A093475 (n + 1)).toNat)

end

end A032571.P6482253543626700834

/-! ## A032571.P7652993174373542562

`xor(A051596(n+1), A347470(A093475(n+1)))`
-/

namespace A032571.P7652993174373542562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A051596 (n + 1)) (A347470 (A093475 (n + 1)).toNat)

end

end A032571.P7652993174373542562

/-!
# A032572: Quotient of 'base-20' division described in A032571.

The programs for A032572, there is no canonical definition to state claims against.
-/

/-! ## A032572.P5500967063009651940

`A102491(A032571(n+1)+1)/A032571(n+1)`
-/

namespace A032572.P5500967063009651940
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A102491 (A032571 (n + 1) + 1).toNat : ℚ) / (A032571 (n + 1) : ℚ)

end

end A032572.P5500967063009651940

/-!
# A032573: Numbers k whose decimal representation, read as a base-21 value and divided by k, yields an integer.

The programs for A032573, there is no canonical definition to state claims against.
-/

/-! ## A032573.P14604263727198815300

`∩[A062687(n+1), A178772(n+1)]`
-/

namespace A032573.P14604263727198815300
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062687 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178772 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A032573.P14604263727198815300

/-! ## A032573.P3956360022947317495

`A052382(A051596(n+1))`
-/

namespace A032573.P3956360022947317495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052382 (A051596 (n + 1)).toNat

end

end A032573.P3956360022947317495

/-! ## A032573.P17605412289444879372

`∩[A062687(n+1), A174228(n+1)]`
-/

namespace A032573.P17605412289444879372
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062687 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174228 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A032573.P17605412289444879372

/-! ## A032573.P532049777206352474

`∩[A062687(n+1), A174670(n+1)]`
-/

namespace A032573.P532049777206352474
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062687 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174670 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A032573.P532049777206352474

/-! ## A032573.P12518078295517244183

`∩[A114802(n+1), A257054(n+1)]`
-/

namespace A032573.P12518078295517244183
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114802 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257054 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A032573.P12518078295517244183

/-!
# A032575: Numbers k whose decimal representation, read as a base-22 value and divided by k, yields an integer.

The programs for A032575, there is no canonical definition to state claims against.
-/

/-! ## A032575.P14031257643852287670

`∩[A001102(n+1), A178860(n+1)]`
-/

namespace A032575.P14031257643852287670
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001102 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178860 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A032575.P14031257643852287670

/-! ## A032575.P8535779177861278165

`∩[A178860(n+1), A227224(n+1)]`
-/

namespace A032575.P8535779177861278165
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178860 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227224 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A032575.P8535779177861278165

/-! ## A032575.P5708761461387824381

`∩[A178860(n+1), A236750(n+1)]`
-/

namespace A032575.P5708761461387824381
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178860 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236750 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A032575.P5708761461387824381

/-! ## A032575.P13214225890811416975

`∩[A227224(n+1), A297274(n+1)]`
-/

namespace A032575.P13214225890811416975
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227224 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297274 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A032575.P13214225890811416975

/-! ## A032575.P17338228119990402186

`A028310(∩[A051004(n+1), A085133(n+1)])`
-/

namespace A032575.P17338228119990402186
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051004 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085133 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n)

end

end A032575.P17338228119990402186

/-!
# A032577: Numbers k whose decimal representation, read as a base-23 value and divided by k, yields an integer.

The programs for A032577, there is no canonical definition to state claims against.
-/

/-! ## A032577.P1334166598004123550

`eq[n, A028899(A227362(A028310(n)))]`
-/

namespace A032577.P1334166598004123550
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028899 (A227362 (A028310 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A032577.P1334166598004123550

/-! ## A032577.P2821595092017447376

`lt[n-∑{digits}[n, #], gcd(n-2*floor(n/10), 11*n)]`
-/

namespace A032577.P2821595092017447376
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - ((((SequenceMachineLib.digits10 (f2 n)).map fun (x : ℕ) => x).sum : ℕ) : ℤ)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd ((n : ℤ) - 2 * ⌊(n : ℚ) / 10⌋) (11 * n : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f3 j : ℤ)) n

end

end A032577.P2821595092017447376

/-! ## A032577.P3862236407064938067

`floor(A241899(n)/10)`
-/

namespace A032577.P3862236407064938067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A241899 (n + 10) : ℚ) / 10⌋

end

end A032577.P3862236407064938067

/-! ## A032577.P11639324061211424394

`A353866(A038186(n+1))`
-/

namespace A032577.P11639324061211424394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353866 (A038186 (n + 1)).toNat

end

end A032577.P11639324061211424394

/-! ## A032577.P12344975620053023491

`A344543(A082207(n+1))`
-/

namespace A032577.P12344975620053023491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344543 (A082207 (n + 1)).toNat

end

end A032577.P12344975620053023491

/-!
# A032579: Numbers k whose decimal representation, read as a base-24 value and divided by k, yields an integer.

The programs for A032579, there is no canonical definition to state claims against.
-/

/-! ## A032579.P7626222069976075139

`∩[A032949(n+1), A335134(n+1)]`
-/

namespace A032579.P7626222069976075139
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032949 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335134 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A032579.P7626222069976075139

/-! ## A032579.P828870818949918038

`∩[A044824(n+1), A335134(n+1)]`
-/

namespace A032579.P828870818949918038
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044824 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335134 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A032579.P828870818949918038

/-! ## A032579.P10297533906215871699

`A165412(floor(A000108(n)/A134217(3*n+1)+n)+1)`
-/

namespace A032579.P10297533906215871699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165412 (⌊(A000108 n : ℚ) / (A134217 (3 * n + 1) : ℚ) + (n : ℚ)⌋ + 1).toNat

end

end A032579.P10297533906215871699

/-!
# A032581: Numbers k such that A174141(k) is divisible by k.

The programs for A032581, there is no canonical definition to state claims against.
-/

/-! ## A032581.P16838912068437237773

`∑[A239700(A342380(n)+A049543(n+1))]`
-/

namespace A032581.P16838912068437237773
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239700 (A342380 n + A049543 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A032581.P16838912068437237773

/-! ## A032581.P250334576793369005

`lt[((n+1)/2-3)/2, A322356(n+1)]+1`
-/

namespace A032581.P250334576793369005
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 1 : ℚ) / 2 - 3) / 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322356 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℚ)) n + 1

end

end A032581.P250334576793369005

/-! ## A032581.P13839400328226389312

`∑[A344678(A304867(n))]`
-/

namespace A032581.P13839400328226389312
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344678 (A304867 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A032581.P13839400328226389312

/-! ## A032581.P15072750809779012705

`A102823(A151543(n+1))`
-/

namespace A032581.P15072750809779012705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102823 (A151543 (n + 1)).toNat

end

end A032581.P15072750809779012705

/-! ## A032581.P14204900887959641516

`∩[A165412(n+1), A362038(n+1)]`
-/

namespace A032581.P14204900887959641516
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165412 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362038 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A032581.P14204900887959641516

/-!
# A032583: Numbers which are neither prime nor lucky.

The programs for A032583, there is no canonical definition to state claims against.
-/

/-! ## A032583.P18137134769601763114

`eq[2*A010051(n+1), A145649(n+1)]+1`
-/

namespace A032583.P18137134769601763114
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A010051 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145649 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A032583.P18137134769601763114

/-! ## A032583.P2118291698155154820

`filter[A050505(n+1), A005171(#)]`
-/

namespace A032583.P2118291698155154820
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050505 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A005171 (f1 j).toNat = 1) n)

end

end A032583.P2118291698155154820

/-! ## A032583.P1577230701862468283

`filter[A050505(n+1), A066247(#)]`
-/

namespace A032583.P1577230701862468283
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050505 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A066247 (f1 j).toNat = 1) n)

end

end A032583.P1577230701862468283

/-! ## A032583.P4883341970188032869

`∩[A002808(n+1), A050505(n+1)]`
-/

namespace A032583.P4883341970188032869
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002808 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050505 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A032583.P4883341970188032869

/-! ## A032583.P2410246462871709351

`∩[A018252(n+1), A050505(n+1)]`
-/

namespace A032583.P2410246462871709351
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050505 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A032583.P2410246462871709351

/-! ## A032583.P14566760237426575169

`∩[A050505(n+1), A141468(n+1)]`
-/

namespace A032583.P14566760237426575169
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050505 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141468 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A032583.P14566760237426575169

/-! ## A032583.P2622676818747208632

`eq[A049084(n+1), A145649(n+1)]+1`
-/

namespace A032583.P2622676818747208632
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049084 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145649 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A032583.P2622676818747208632

/-! ## A032583.P15920848889468839758

`eq[A061397(n+1), A145649(n+1)]+1`
-/

namespace A032583.P15920848889468839758
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061397 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145649 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A032583.P15920848889468839758

/-! ## A032583.P10404202109962975046

`A061767(eq[A061397(n+1), A145649(n+1)])`
-/

namespace A032583.P10404202109962975046
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061397 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145649 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061767 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A032583.P10404202109962975046

/-! ## A032583.P17572772735256391316

`lt[A265859(A089026(n+1)), A265859(n+1)]+1`
-/

namespace A032583.P17572772735256391316
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265859 (A089026 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265859 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A032583.P17572772735256391316

/-! ## A032583.P13919506460578235627

`eq[A055671(n), A145649(A257088(n))]`
-/

namespace A032583.P13919506460578235627
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055671 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145649 (A257088 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A032583.P13919506460578235627

/-! ## A032583.P13605519819448599955

`eq[A055672(n), A145649(A000007(n)+n)]`
-/

namespace A032583.P13605519819448599955
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055672 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145649 (A000007 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A032583.P13605519819448599955

/-! ## A032583.P3336762029599504110

`A113484(eq[A049084(n+1), A145649(n+1)])`
-/

namespace A032583.P3336762029599504110
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049084 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145649 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113484 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A032583.P3336762029599504110

/-! ## A032583.P5800310002702389970

`A113484(eq[A061397(n+1), A145649(n+1)])`
-/

namespace A032583.P5800310002702389970
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061397 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145649 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113484 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A032583.P5800310002702389970

/-! ## A032583.P8171692196988902769

`A319840(∑[n+2]+3)`
-/

namespace A032583.P8171692196988902769
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319840 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A032583.P8171692196988902769

/-!
# A032584: Odd numbers which are neither prime nor lucky.

The programs for A032584, there is no canonical definition to state claims against.
-/

/-! ## A032584.P3034184735664880609

`filter[A266420(n+1), A005171(#)]`
-/

namespace A032584.P3034184735664880609
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266420 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A005171 (f1 j).toNat = 1) n)

end

end A032584.P3034184735664880609

/-! ## A032584.P6335972463347970292

`filter[A266420(n+1), A066247(#)]`
-/

namespace A032584.P6335972463347970292
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266420 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A066247 (f1 j).toNat = 1) n)

end

end A032584.P6335972463347970292

/-! ## A032584.P17977536167901357632

`filter[A266420(n+1), A202238(#)]`
-/

namespace A032584.P17977536167901357632
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266420 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A202238 (f1 j).toNat = 1) n)

end

end A032584.P17977536167901357632

/-! ## A032584.P18176586652931635720

`filter[A266420(n+1), A292438(#)]`
-/

namespace A032584.P18176586652931635720
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266420 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A292438 (f1 j).toNat = 1) n)

end

end A032584.P18176586652931635720

/-! ## A032584.P17520774586367390642

`filter[A266420(n+1), A323162(#)]`
-/

namespace A032584.P17520774586367390642
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266420 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323162 (f1 j).toNat = 1) n)

end

end A032584.P17520774586367390642

/-! ## A032584.P4019627651776266653

`∩[A014076(n+1), A266420(n+1)]`
-/

namespace A032584.P4019627651776266653
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014076 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266420 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A032584.P4019627651776266653

/-! ## A032584.P7030756018008254479

`∩[A002808(n+1), A266420(n+1)]`
-/

namespace A032584.P7030756018008254479
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002808 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266420 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A032584.P7030756018008254479

/-! ## A032584.P10802080730098394411

`∩[A039769(n+1), A266420(n+1)]`
-/

namespace A032584.P10802080730098394411
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039769 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266420 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A032584.P10802080730098394411

/-! ## A032584.P16822280520187078570

`∩[A079364(n+1), A266420(n+1)]`
-/

namespace A032584.P16822280520187078570
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079364 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266420 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A032584.P16822280520187078570

/-! ## A032584.P6347059004092321577

`∩[A005381(n+1), A266420(n+1)]`
-/

namespace A032584.P6347059004092321577
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005381 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266420 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A032584.P6347059004092321577

/-! ## A032584.P12418247989345329350

`∩[2*n+1, A032583(n+1)]`
-/

namespace A032584.P12418247989345329350
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032583 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A032584.P12418247989345329350

/-! ## A032584.P5530003278310047982

`∩[A032583(n+1), A004273(n)]`
-/

namespace A032584.P5530003278310047982
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032583 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A032584.P5530003278310047982

/-! ## A032584.P12716181180096636796

`∩[A032583(n+1), A004274(n)]`
-/

namespace A032584.P12716181180096636796
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032583 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004274 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A032584.P12716181180096636796

/-! ## A032584.P4965184046670151862

`∩[A032583(n+1), A020742(n)]`
-/

namespace A032584.P4965184046670151862
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032583 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020742 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A032584.P4965184046670151862

/-! ## A032584.P17831009642896256588

`∩[A032583(n+1), A060747(n)]`
-/

namespace A032584.P17831009642896256588
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032583 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060747 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A032584.P17831009642896256588

/-! ## A032584.P12795956239329238831

`∩[A032583(n+1), A062545(n)]`
-/

namespace A032584.P12795956239329238831
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032583 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062545 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A032584.P12795956239329238831

/-! ## A032584.P9060596326073109893

`∩[A032583(n+1), A130773(n)]`
-/

namespace A032584.P9060596326073109893
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032583 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130773 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A032584.P9060596326073109893

/-! ## A032584.P17600781667651776881

`∩[A032583(n+1), A163985(n)]`
-/

namespace A032584.P17600781667651776881
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032583 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163985 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A032584.P17600781667651776881

/-! ## A032584.P14406777425246350491

`∩[A032583(n+1), A071904(n+1)]`
-/

namespace A032584.P14406777425246350491
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032583 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071904 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A032584.P14406777425246350491

/-! ## A032584.P14188065313742048651

`∩[A032583(n+1), A140139(n+1)]`
-/

namespace A032584.P14188065313742048651
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032583 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140139 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A032584.P14188065313742048651

/-!
# A032585: Lucky numbers ending with digit 1.

The programs for A032585, there is no canonical definition to state claims against.
-/

/-! ## A032585.P12792920481135767452

`∩[10*n+1, A000959(n+1)]`
-/

namespace A032585.P12792920481135767452
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10 * n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000959 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A032585.P12792920481135767452

/-! ## A032585.P3936252568353552967

`record[(5*n+1)*A145649(5*n+1)]`
-/

namespace A032585.P3936252568353552967
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (5 * n + 1 : ℤ) * A145649 (5 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A032585.P3936252568353552967

/-! ## A032585.P3409651183440038209

`filter[A017281(n), A145649(#)]`
-/

namespace A032585.P3409651183440038209
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017281 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A145649 (f1 j).toNat = 1) n)

end

end A032585.P3409651183440038209

/-! ## A032585.P5501185440319087314

`∩[A000959(n+1), A017281(n)]`
-/

namespace A032585.P5501185440319087314
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000959 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017281 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A032585.P5501185440319087314

/-! ## A032585.P948204143232678977

`∩[A000959(n+1), A008592(n)+1]`
-/

namespace A032585.P948204143232678977
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000959 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008592 n + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A032585.P948204143232678977

/-! ## A032585.P9826651278796541183

`∩[A000959(n+1), A017293(n)-1]`
-/

namespace A032585.P9826651278796541183
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000959 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017293 n - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A032585.P9826651278796541183

/-! ## A032585.P337815056696068228

`∩[A000959(n+1), A017305(n)-2]`
-/

namespace A032585.P337815056696068228
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000959 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017305 n - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A032585.P337815056696068228

/-! ## A032585.P15396984966669111428

`A017281(eq[1, A145649(A017281(n))])`
-/

namespace A032585.P15396984966669111428
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145649 (A017281 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017281 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A032585.P15396984966669111428

/-! ## A032585.P17727896843864509874

`filter[A277588(n+1), A145649(#)]`
-/

namespace A032585.P17727896843864509874
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277588 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A145649 (f1 j).toNat = 1) n)

end

end A032585.P17727896843864509874

/-! ## A032585.P12446797378733118440

`∩[A000959(n+1), A277588(n+1)]`
-/

namespace A032585.P12446797378733118440
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000959 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277588 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A032585.P12446797378733118440

/-! ## A032585.P8949821540871347840

`∩[A000959(n+1), A277590(n+1)-2]`
-/

namespace A032585.P8949821540871347840
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000959 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277590 (n + 1) - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A032585.P8949821540871347840

/-! ## A032585.P4355566439186198285

`filter[A087446(n+1), A145649(#)]`
-/

namespace A032585.P4355566439186198285
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087446 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A145649 (f1 j).toNat = 1) n)

end

end A032585.P4355566439186198285

/-! ## A032585.P4078176382774200368

`∩[A000959(n+1), A087446(n+1)]`
-/

namespace A032585.P4078176382774200368
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000959 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087446 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A032585.P4078176382774200368

/-! ## A032585.P8819404274208627779

`filter[A168459(3*n+1), A145649(#)]`
-/

namespace A032585.P8819404274208627779
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168459 (3 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A145649 (f1 j).toNat = 1) n)

end

end A032585.P8819404274208627779

/-! ## A032585.P16154458596045989440

`lt[n%5, A145649(n+1)]+1`
-/

namespace A032585.P16154458596045989440
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n % 5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145649 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A032585.P16154458596045989440

/-! ## A032585.P541074654736727041

`filter[A016861(n), A145649(#)]`
-/

namespace A032585.P541074654736727041
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016861 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A145649 (f1 j).toNat = 1) n)

end

end A032585.P541074654736727041

/-! ## A032585.P3306582675532333867

`filter[A271508(n+1), A145649(#)]`
-/

namespace A032585.P3306582675532333867
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271508 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A145649 (f1 j).toNat = 1) n)

end

end A032585.P3306582675532333867

/-! ## A032585.P6936960342278420037

`filter[A306277(n+1), A145649(#)]`
-/

namespace A032585.P6936960342278420037
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306277 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A145649 (f1 j).toNat = 1) n)

end

end A032585.P6936960342278420037

/-! ## A032585.P1432468592963967846

`filter[A197652(n+2), A145649(#)]`
-/

namespace A032585.P1432468592963967846
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197652 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A145649 (f1 j).toNat = 1) n)

end

end A032585.P1432468592963967846

/-! ## A032585.P4628251480993181142

`∩[A000959(n+1), A016861(n)]`
-/

namespace A032585.P4628251480993181142
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000959 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016861 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A032585.P4628251480993181142

/-!
# A032586: Lucky numbers ending with digit 3.

The programs for A032586, there is no canonical definition to state claims against.
-/

/-! ## A032586.P14501670698912081751

`A000959(eq[3, A000959(n+1)%5]+1)`
-/

namespace A032586.P14501670698912081751
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000959 (n + 1)) 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000959 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A032586.P14501670698912081751

/-! ## A032586.P5055083441586581352

`filter[A017305(n), A145649(#)]`
-/

namespace A032586.P5055083441586581352
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017305 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A145649 (f1 j).toNat = 1) n)

end

end A032586.P5055083441586581352

/-! ## A032586.P14249718597736691536

`∩[A000959(n+1), A017305(n)]`
-/

namespace A032586.P14249718597736691536
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000959 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017305 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A032586.P14249718597736691536

/-! ## A032586.P1786280453123296171

`∩[A000959(n+1), A017293(n)+1]`
-/

namespace A032586.P1786280453123296171
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000959 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017293 n + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A032586.P1786280453123296171

/-! ## A032586.P6986662055704446292

`∩[A000959(n+1), A017281(n)+2]`
-/

namespace A032586.P6986662055704446292
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000959 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017281 n + 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A032586.P6986662055704446292

/-! ## A032586.P17405745419222905133

`∩[A000959(n+1), A017329(n)-2]`
-/

namespace A032586.P17405745419222905133
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000959 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017329 n - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A032586.P17405745419222905133

/-! ## A032586.P3686800549588048261

`record[A000265(5*n+3)*A145649(5*n+3)]`
-/

namespace A032586.P3686800549588048261
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (5 * n + 3) * A145649 (5 * n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A032586.P3686800549588048261

/-! ## A032586.P11380364171547437324

`filter[A277590(n+1), A145649(#)]`
-/

namespace A032586.P11380364171547437324
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277590 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A145649 (f1 j).toNat = 1) n)

end

end A032586.P11380364171547437324

/-! ## A032586.P15596730324224441522

`∩[A000959(n+1), A277590(n+1)]`
-/

namespace A032586.P15596730324224441522
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000959 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277590 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A032586.P15596730324224441522

/-! ## A032586.P6879578476868960712

`∩[A000959(n+1), A277588(n+1)+2]`
-/

namespace A032586.P6879578476868960712
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000959 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277588 (n + 1) + 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A032586.P6879578476868960712

/-! ## A032586.P8913819734515681226

`∩[A000959(n+1), A277592(n+1)-2]`
-/

namespace A032586.P8913819734515681226
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000959 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277592 (n + 1) - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A032586.P8913819734515681226

/-! ## A032586.P7644414979731777083

`filter[A298360(2*n+1), A145649(#)]`
-/

namespace A032586.P7644414979731777083
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298360 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A145649 (f1 j).toNat = 1) n)

end

end A032586.P7644414979731777083

/-! ## A032586.P8837814888638070861

`∩[A000959(n+1), A121025(n+1)-2]`
-/

namespace A032586.P8837814888638070861
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000959 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121025 (n + 1) - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A032586.P8837814888638070861

/-! ## A032586.P15965970640645150782

`filter[A016885(n), A145649(#)]`
-/

namespace A032586.P15965970640645150782
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016885 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A145649 (f1 j).toNat = 1) n)

end

end A032586.P15965970640645150782

/-! ## A032586.P16525784014437852376

`filter[A235089(n+1), A145649(#)]`
-/

namespace A032586.P16525784014437852376
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235089 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A145649 (f1 j).toNat = 1) n)

end

end A032586.P16525784014437852376

/-! ## A032586.P9809217589913608101

`filter[A109474(n+2), A145649(#)]`
-/

namespace A032586.P9809217589913608101
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109474 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A145649 (f1 j).toNat = 1) n)

end

end A032586.P9809217589913608101

/-! ## A032586.P3703922991542562939

`∩[A000959(n+1), A016885(n)]`
-/

namespace A032586.P3703922991542562939
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000959 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016885 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A032586.P3703922991542562939

/-! ## A032586.P4229310770774298746

`filter[A063226(2*n+1), A145649(#)]`
-/

namespace A032586.P4229310770774298746
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063226 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A145649 (f1 j).toNat = 1) n)

end

end A032586.P4229310770774298746

/-! ## A032586.P5972452225712998546

`filter[A075326(2*n+1), A145649(#)]`
-/

namespace A032586.P5972452225712998546
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075326 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A145649 (f1 j).toNat = 1) n)

end

end A032586.P5972452225712998546

/-! ## A032586.P8386567047292918216

`filter[A100531(2*n+1), A145649(#)]`
-/

namespace A032586.P8386567047292918216
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100531 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A145649 (f1 j).toNat = 1) n)

end

end A032586.P8386567047292918216

/-!
# A032587: Lucky numbers ending with digit 5.

The programs for A032587, there is no canonical definition to state claims against.
-/

/-! ## A032587.P4693629205547597797

`A000959(eq[5, gcd(5, A000959(n+1))]+1)`
-/

namespace A032587.P4693629205547597797
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 5 (A000959 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000959 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1)

end

end A032587.P4693629205547597797

/-! ## A032587.P7082203174573899205

`filter[A017329(n), A145649(#)]`
-/

namespace A032587.P7082203174573899205
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017329 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A145649 (f1 j).toNat = 1) n)

end

end A032587.P7082203174573899205

/-! ## A032587.P10836993009281792777

`filter[A088648(n+2), A145649(#)]`
-/

namespace A032587.P10836993009281792777
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088648 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A145649 (f1 j).toNat = 1) n)

end

end A032587.P10836993009281792777

/-! ## A032587.P10515560030620751444

`∩[A000959(n+1), A017329(n)]`
-/

namespace A032587.P10515560030620751444
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000959 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017329 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A032587.P10515560030620751444

/-! ## A032587.P9012688553830460552

`∩[A031879(n+1), A017329(n)]`
-/

namespace A032587.P9012688553830460552
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031879 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017329 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A032587.P9012688553830460552

/-! ## A032587.P7144987986947650374

`∩[A000959(n+1), A017305(n)+2]`
-/

namespace A032587.P7144987986947650374
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000959 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017305 n + 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A032587.P7144987986947650374

/-! ## A032587.P13420449275883935829

`∩[A000959(n+1), A017353(n)-2]`
-/

namespace A032587.P13420449275883935829
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000959 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017353 n - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A032587.P13420449275883935829

/-! ## A032587.P12499202074064415358

`A017329(eq[1, A145649(A017329(n))])`
-/

namespace A032587.P12499202074064415358
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145649 (A017329 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017329 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A032587.P12499202074064415358

/-! ## A032587.P8385006902453792882

`filter[A277592(n+1), A145649(#)]`
-/

namespace A032587.P8385006902453792882
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277592 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A145649 (f1 j).toNat = 1) n)

end

end A032587.P8385006902453792882

/-! ## A032587.P5752141867567787636

`∩[A000959(n+1), A277592(n+1)]`
-/

namespace A032587.P5752141867567787636
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000959 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277592 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A032587.P5752141867567787636

/-! ## A032587.P9393919112380771736

`∩[A031879(n+1), A277592(n+1)]`
-/

namespace A032587.P9393919112380771736
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031879 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277592 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A032587.P9393919112380771736

/-! ## A032587.P18248322300923402218

`∩[A000959(n+1), A277590(n+1)+2]`
-/

namespace A032587.P18248322300923402218
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000959 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277590 (n + 1) + 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A032587.P18248322300923402218

/-! ## A032587.P2508058808714681248

`∩[A000959(n+1), A277594(n+1)-2]`
-/

namespace A032587.P2508058808714681248
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000959 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277594 (n + 1) - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A032587.P2508058808714681248

/-! ## A032587.P17196663934229109979

`filter[A121025(n+1), A145649(#)]`
-/

namespace A032587.P17196663934229109979
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121025 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A145649 (f1 j).toNat = 1) n)

end

end A032587.P17196663934229109979

/-! ## A032587.P8762031713431094486

`∩[A000959(n+1), A121025(n+1)]`
-/

namespace A032587.P8762031713431094486
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000959 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121025 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A032587.P8762031713431094486

/-! ## A032587.P15895449023422421670

`∩[A031879(n+1), A121025(n+1)]`
-/

namespace A032587.P15895449023422421670
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031879 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121025 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A032587.P15895449023422421670

/-! ## A032587.P5148883657137161104

`lt[(n+1)%5, A145649(n+1)]+1`
-/

namespace A032587.P5148883657137161104
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) % 5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145649 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A032587.P5148883657137161104

/-! ## A032587.P10577416661615960739

`filter[A091574(n), A145649(#)]`
-/

namespace A032587.P10577416661615960739
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091574 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A145649 (f1 j).toNat = 1) n)

end

end A032587.P10577416661615960739

/-! ## A032587.P1096249817250005265

`filter[A008587(n+1), A145649(#)]`
-/

namespace A032587.P1096249817250005265
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008587 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A145649 (f1 j).toNat = 1) n)

end

end A032587.P1096249817250005265

/-! ## A032587.P6333965416818724249

`filter[A008706(n+1), A145649(#)]`
-/

namespace A032587.P6333965416818724249
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008706 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A145649 (f1 j).toNat = 1) n)

end

end A032587.P6333965416818724249

/-!
# A032588: Lucky numbers ending with digit 7.

The programs for A032588, there is no canonical definition to state claims against.
-/

/-! ## A032588.P4422207540320714384

`∩[5*n+7, A000959(n+2)]`
-/

namespace A032588.P4422207540320714384
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5 * n + 7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000959 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A032588.P4422207540320714384

/-! ## A032588.P13075265662626950647

`filter[A017353(n), A145649(#)]`
-/

namespace A032588.P13075265662626950647
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017353 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A145649 (f1 j).toNat = 1) n)

end

end A032588.P13075265662626950647

/-! ## A032588.P4028105720541446931

`filter[A160912(n+2), A145649(#)]`
-/

namespace A032588.P4028105720541446931
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160912 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A145649 (f1 j).toNat = 1) n)

end

end A032588.P4028105720541446931

/-! ## A032588.P765679141992508101

`∩[A000959(n+1), A017353(n)]`
-/

namespace A032588.P765679141992508101
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000959 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017353 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A032588.P765679141992508101

/-! ## A032588.P9056986368239267923

`∩[A000959(n+1), A017329(n)+2]`
-/

namespace A032588.P9056986368239267923
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000959 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017329 n + 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A032588.P9056986368239267923

/-! ## A032588.P12717702085956642016

`∩[A000959(n+1), A017377(n)-2]`
-/

namespace A032588.P12717702085956642016
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000959 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017377 n - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A032588.P12717702085956642016

/-! ## A032588.P4993468477031408513

`filter[A277594(n+1), A145649(#)]`
-/

namespace A032588.P4993468477031408513
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277594 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A145649 (f1 j).toNat = 1) n)

end

end A032588.P4993468477031408513

/-! ## A032588.P18421867501931256763

`∩[A000959(n+1), A277594(n+1)]`
-/

namespace A032588.P18421867501931256763
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000959 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277594 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A032588.P18421867501931256763

/-! ## A032588.P13534771263131674741

`∩[A000959(n+1), A277592(n+1)+2]`
-/

namespace A032588.P13534771263131674741
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000959 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277592 (n + 1) + 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A032588.P13534771263131674741

/-! ## A032588.P4312563071459502271

`∩[A000959(n+1), A277596(n+1)-2]`
-/

namespace A032588.P4312563071459502271
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000959 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277596 (n + 1) - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A032588.P4312563071459502271

/-! ## A032588.P17590974689512798697

`filter[A298360(2*(n+1)), A145649(#)]`
-/

namespace A032588.P17590974689512798697
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298360 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A145649 (f1 j).toNat = 1) n)

end

end A032588.P17590974689512798697

/-! ## A032588.P8607855132071817957

`∩[A000959(n+1), A121025(n+1)+2]`
-/

namespace A032588.P8607855132071817957
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000959 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121025 (n + 1) + 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A032588.P8607855132071817957

/-! ## A032588.P1856817730993455587

`lt[(n+4)%5, A145649(n+1)]+1`
-/

namespace A032588.P1856817730993455587
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 4) % 5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145649 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A032588.P1856817730993455587

/-! ## A032588.P15170928111431529915

`filter[A016873(n), A145649(#)]`
-/

namespace A032588.P15170928111431529915
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016873 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A145649 (f1 j).toNat = 1) n)

end

end A032588.P15170928111431529915

/-! ## A032588.P9646329894270300209

`filter[A385869(n+8), A145649(#)]`
-/

namespace A032588.P9646329894270300209
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385869 (n + 8)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A145649 (f1 j).toNat = 1) n)

end

end A032588.P9646329894270300209

/-! ## A032588.P5337457713113941383

`∩[A000959(n+1), A016873(n)]`
-/

namespace A032588.P5337457713113941383
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000959 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016873 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A032588.P5337457713113941383

/-! ## A032588.P14796097813190685451

`filter[A063097(2*(n+1)), A145649(#)]`
-/

namespace A032588.P14796097813190685451
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063097 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A145649 (f1 j).toNat = 1) n)

end

end A032588.P14796097813190685451

/-! ## A032588.P2530684875119900373

`filter[A063206(2*(n+1)), A145649(#)]`
-/

namespace A032588.P2530684875119900373
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063206 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A145649 (f1 j).toNat = 1) n)

end

end A032588.P2530684875119900373

/-! ## A032588.P6540950602462777816

`filter[A063226(2*(n+1)), A145649(#)]`
-/

namespace A032588.P6540950602462777816
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063226 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A145649 (f1 j).toNat = 1) n)

end

end A032588.P6540950602462777816

/-! ## A032588.P13509102216037439345

`filter[A168458(2*n+1), A145649(#)]`
-/

namespace A032588.P13509102216037439345
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168458 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A145649 (f1 j).toNat = 1) n)

end

end A032588.P13509102216037439345

/-!
# A032589: Lucky numbers (A000959) ending with digit 9.

The programs for A032589, there is no canonical definition to state claims against.
-/

/-! ## A032589.P9325451116650796294

`∩[11*n+9-n, A000959(n+1)]`
-/

namespace A032589.P9325451116650796294
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (11 * n + 9 : ℤ) - (n : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000959 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A032589.P9325451116650796294

/-! ## A032589.P7626454487933292334

`filter[A017377(n), A145649(#)]`
-/

namespace A032589.P7626454487933292334
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017377 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A145649 (f1 j).toNat = 1) n)

end

end A032589.P7626454487933292334

/-! ## A032589.P8101887687906275116

`∩[A000959(n+1), A017377(n)]`
-/

namespace A032589.P8101887687906275116
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000959 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017377 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A032589.P8101887687906275116

/-! ## A032589.P8820865384770215930

`∩[A000959(n+1), A008592(n)-1]`
-/

namespace A032589.P8820865384770215930
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000959 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008592 n - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A032589.P8820865384770215930

/-! ## A032589.P3491229156081928850

`∩[A000959(n+1), A017353(n)+2]`
-/

namespace A032589.P3491229156081928850
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000959 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017353 n + 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A032589.P3491229156081928850

/-! ## A032589.P6060876206489003843

`∩[A000959(n+1), A017281(n)-2]`
-/

namespace A032589.P6060876206489003843
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000959 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017281 n - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A032589.P6060876206489003843

/-! ## A032589.P14118873367226299076

`filter[A277596(n+1), A145649(#)]`
-/

namespace A032589.P14118873367226299076
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277596 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A145649 (f1 j).toNat = 1) n)

end

end A032589.P14118873367226299076

/-! ## A032589.P8953304549586076009

`∩[A000959(n+1), A277596(n+1)]`
-/

namespace A032589.P8953304549586076009
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000959 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277596 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A032589.P8953304549586076009

/-! ## A032589.P8932156978488984259

`∩[A000959(n+1), A277594(n+1)+2]`
-/

namespace A032589.P8932156978488984259
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000959 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277594 (n + 1) + 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A032589.P8932156978488984259

/-! ## A032589.P4896906233691416587

`∩[A000959(n+1), A277588(n+1)-2]`
-/

namespace A032589.P4896906233691416587
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000959 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277588 (n + 1) - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A032589.P4896906233691416587

/-! ## A032589.P11192423461919878926

`lt[(or(1, n)+1)%10, A145649(n+1)]+1`
-/

namespace A032589.P11192423461919878926
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (Nat.lor 1 n + 1) % 10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145649 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A032589.P11192423461919878926

/-! ## A032589.P9291035200419562009

`filter[A016897(n), A145649(#)]`
-/

namespace A032589.P9291035200419562009
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016897 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A145649 (f1 j).toNat = 1) n)

end

end A032589.P9291035200419562009

/-! ## A032589.P4915019225875604791

`filter[A273669(n+1), A145649(#)]`
-/

namespace A032589.P4915019225875604791
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273669 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A145649 (f1 j).toNat = 1) n)

end

end A032589.P4915019225875604791

/-! ## A032589.P11557077551137933773

`∩[A000959(n+1), A016897(n)]`
-/

namespace A032589.P11557077551137933773
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000959 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016897 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A032589.P11557077551137933773

/-! ## A032589.P9609777192653322349

`filter[A090771(2*(n+1)), A145649(#)]`
-/

namespace A032589.P9609777192653322349
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090771 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A145649 (f1 j).toNat = 1) n)

end

end A032589.P9609777192653322349

/-! ## A032589.P3169306924888516202

`filter[A161365(2*n+1), A145649(#)]`
-/

namespace A032589.P3169306924888516202
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161365 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A145649 (f1 j).toNat = 1) n)

end

end A032589.P3169306924888516202

/-! ## A032589.P12680523483105112629

`filter[A268044(2*(n+1)), A145649(#)]`
-/

namespace A032589.P12680523483105112629
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268044 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A145649 (f1 j).toNat = 1) n)

end

end A032589.P12680523483105112629

/-! ## A032589.P4219018349535577431

`∩[A000959(n+1), A016885(n)+1]`
-/

namespace A032589.P4219018349535577431
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000959 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016885 n + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A032589.P4219018349535577431

/-! ## A032589.P1197783008570995522

`∩[A000959(n+1), A273669(n+1)]`
-/

namespace A032589.P1197783008570995522
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000959 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273669 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A032589.P1197783008570995522

/-! ## A032589.P6045310342768073742

`∩[A000959(n+1), A008587(n)-1]`
-/

namespace A032589.P6045310342768073742
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000959 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008587 n - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A032589.P6045310342768073742

/-!
# A032590: Primes in which 'last digit cycle' is {1,3,7,9}.

The programs for A032590, there is no canonical definition to state claims against.
-/

/-! ## A032590.P15465820069240528357

`p?[∑[gcd(10, A336742(n))]]`
-/

namespace A032590.P15465820069240528357
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 10 (A336742 n)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A032590.P15465820069240528357

/-! ## A032590.P11606578327084039277

`p?[A113007(p?[a(n-1)+2])]` with `a(0)=9`
-/

namespace A032590.P11606578327084039277
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [9] fun n f2 =>
  f2 (n - 1) + 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113007 (f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A032590.P11606578327084039277

/-! ## A032590.P8185348529357791239

`p?[A113006(2*n+1)%∑[∑{e}[n+1, #]+1]]`
-/

namespace A032590.P8185348529357791239
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f3 n), Nat.factorization (f3 n) p + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A113006 (2 * n + 1)) ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A032590.P8185348529357791239

/-! ## A032590.P9610667891380225403

`p?[A113006(A020742(n))]`
-/

namespace A032590.P9610667891380225403
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113006 (A020742 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A032590.P9610667891380225403

/-! ## A032590.P13080581667429664283

`p?[A113006(Δ[A028560(n)])]`
-/

namespace A032590.P13080581667429664283
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028560 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113006 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A032590.P13080581667429664283

/-!
# A032591: Four consecutive primes whose 'last digit cycle' equals {1,3,7,9}.

The programs for A032591, there is no canonical definition to state claims against.
-/

/-! ## A032591.P4817350946369474997

`A006530(A136162(n+5)²)`
-/

namespace A032591.P4817350946369474997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A136162 (n + 5) ^ 2).toNat

end

end A032591.P4817350946369474997

/-! ## A032591.P2739367861470982916

`A020639(A136162(n+5)²)`
-/

namespace A032591.P2739367861470982916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A136162 (n + 5) ^ 2).toNat

end

end A032591.P2739367861470982916

/-! ## A032591.P10119087039329411649

`A136179(2*A136162(n+5))`
-/

namespace A032591.P10119087039329411649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136179 (2 * A136162 (n + 5)).toNat

end

end A032591.P10119087039329411649

/-! ## A032591.P13913152277601824324

`A020639(A136162(n+5)^2)`
-/

namespace A032591.P13913152277601824324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A136162 (n + 5) ^ 2).toNat

end

end A032591.P13913152277601824324

/-! ## A032591.P1064232724732594521

`A006530(C(A136162(n+5), 2))`
-/

namespace A032591.P1064232724732594521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (Nat.choose (A136162 (n + 5)).toNat 2)

end

end A032591.P1064232724732594521

/-!
# A032592: Initial terms of '4-block' primes as described in A032591.

The programs for A032592, there is no canonical definition to state claims against.
-/

/-! ## A032592.P5375052034876602131

`A032591(4*n)`
-/

namespace A032592.P5375052034876602131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032591 (4 * n)

end

end A032592.P5375052034876602131

/-! ## A032592.P354906342701107255

`A032591(A008574(n))-A000038(n)`
-/

namespace A032592.P354906342701107255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032591 (A008574 n).toNat - A000038 n

end

end A032592.P354906342701107255

/-! ## A032592.P4551180570013983082

`∩[A030430(n+1), A032591(n)]`
-/

namespace A032592.P4551180570013983082
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030430 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032591 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A032592.P4551180570013983082

/-! ## A032592.P17884024794310708584

`∩[A331555(n+1), A032591(n)]`
-/

namespace A032592.P17884024794310708584
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331555 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032591 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A032592.P17884024794310708584

/-! ## A032592.P10539372720834532552

`∩[A045453(n+1), A032591(n)]`
-/

namespace A032592.P10539372720834532552
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045453 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032591 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A032592.P10539372720834532552

/-! ## A032592.P1266589149289294387

`∩[A090756(n+1), A032591(n)]`
-/

namespace A032592.P1266589149289294387
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090756 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032591 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A032592.P1266589149289294387

/-! ## A032592.P4022779586642986414

`∩[A327752(n+1), A032591(n)]`
-/

namespace A032592.P4022779586642986414
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327752 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032591 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A032592.P4022779586642986414

/-! ## A032592.P16925040878241053320

`∩[A004615(n+1), A032591(n)]`
-/

namespace A032592.P16925040878241053320
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004615 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032591 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A032592.P16925040878241053320

/-! ## A032592.P18240674883624292465

`∩[A331194(n+1), A032591(n)]`
-/

namespace A032592.P18240674883624292465
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331194 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032591 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A032592.P18240674883624292465

/-! ## A032592.P16161078352542862098

`∩[A017281(n), A032591(n)]`
-/

namespace A032592.P16161078352542862098
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017281 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032591 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A032592.P16161078352542862098

/-!
# A032593: Lesser of two consecutive palindromes, both of which are prime.

The programs for A032593, there is no canonical definition to state claims against.
-/

/-! ## A032593.P847494729456635136

`A246488(2*n+1)%A104016((n+1)²)`
-/

namespace A032593.P847494729456635136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A246488 (2 * n + 1)) (A104016 ((n + 1) ^ 2))

end

end A032593.P847494729456635136

/-! ## A032593.P5028531511920951125

`A057427(A064999(n))*A246488(2*n+1)`
-/

namespace A032593.P5028531511920951125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (A064999 n).toNat * A246488 (2 * n + 1)

end

end A032593.P5028531511920951125

/-! ## A032593.P2891206130332335416

`A246488(2*n+1)%A010015(A007899(n))`
-/

namespace A032593.P2891206130332335416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A246488 (2 * n + 1)) (A010015 (A007899 n).toNat)

end

end A032593.P2891206130332335416

/-! ## A032593.P16024704558463871673

`or(A064911(A052955(n)), A246488(2*n+1))`
-/

namespace A032593.P16024704558463871673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A064911 (A052955 n).toNat) (A246488 (2 * n + 1))

end

end A032593.P16024704558463871673

/-! ## A032593.P15431444467690846498

`A004086(A246488(2*n+1))`
-/

namespace A032593.P15431444467690846498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004086 (A246488 (2 * n + 1)).toNat

end

end A032593.P15431444467690846498

/-!
# A032594: Greater of two consecutive palindromes, both of which are prime.

The programs for A032594, there is no canonical definition to state claims against.
-/

/-! ## A032594.P7576028466829708254

`or(A181115(n+3), A246488(2*(n+1)))`
-/

namespace A032594.P7576028466829708254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A181115 (n + 3)) (A246488 (2 * (n + 1)))

end

end A032594.P7576028466829708254

/-! ## A032594.P7254953359153770359

`or(A064911(A052955(n)), A246488(2*(n+1)))`
-/

namespace A032594.P7254953359153770359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A064911 (A052955 n).toNat) (A246488 (2 * (n + 1)))

end

end A032594.P7254953359153770359

/-! ## A032594.P4473824391901951766

`or(A011558(A181144(n)), A246488(2*(n+1)))`
-/

namespace A032594.P4473824391901951766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A011558 (A181144 n).toNat) (A246488 (2 * (n + 1)))

end

end A032594.P4473824391901951766

/-! ## A032594.P18061091716501407715

`A246488(2*n+2)*A326516(A048986(n+1))`
-/

namespace A032594.P18061091716501407715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246488 (2 * n + 2) * A326516 (A048986 (n + 1)).toNat

end

end A032594.P18061091716501407715

/-! ## A032594.P2362808700843986193

`A004086(A246488(2*(n+1)))`
-/

namespace A032594.P2362808700843986193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004086 (A246488 (2 * (n + 1))).toNat

end

end A032594.P2362808700843986193

/-!
# A032596: Second of three consecutive palindromes all of which are prime.

The programs for A032596, there is no canonical definition to state claims against.
-/

/-! ## A032596.P1441470606421300195

`∩[A032593(n+1), A032594(n+1)]`
-/

namespace A032596.P1441470606421300195
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032593 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032594 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A032596.P1441470606421300195

/-!
# A032598: Squares of lucky numbers.

The programs for A032598, there is no canonical definition to state claims against.
-/

/-! ## A032598.P16753859837383235274

`A000959(n+1)²`
-/

namespace A032598.P16753859837383235274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000959 (n + 1) ^ 2

end

end A032598.P16753859837383235274

/-! ## A032598.P2653581165945021197

`(A139269(n+1)/2)²`
-/

namespace A032598.P2653581165945021197
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A139269 (n + 1) : ℚ) / 2) ^ 2

end

end A032598.P2653581165945021197

/-! ## A032598.P15291213810401829597

`A032599(n+1)^(2/3)`
-/

namespace A032598.P15291213810401829597
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A032599 (n + 1) : ℝ) ^ ((2 : ℚ) / 3 : ℝ)

end

end A032598.P15291213810401829597

/-! ## A032598.P13850377169675712641

`(1-2*A049781(n+1))²`
-/

namespace A032598.P13850377169675712641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - 2 * A049781 (n + 1)) ^ 2

end

end A032598.P13850377169675712641

/-! ## A032598.P8891983428086757814

`A000959(xor(2, xor(2, n+1)))^2`
-/

namespace A032598.P8891983428086757814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000959 (Nat.xor 2 (Nat.xor 2 (n + 1))) ^ 2

end

end A032598.P8891983428086757814

/-! ## A032598.P12813708141168732338

`A000959(1-(n-2*n))^2`
-/

namespace A032598.P12813708141168732338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000959 (1 - ((n : ℤ) - (2 * n : ℤ))).toNat ^ 2

end

end A032598.P12813708141168732338

/-! ## A032598.P11194933944010182386

`record[A000959(A305297(n))²]`
-/

namespace A032598.P11194933944010182386
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000959 (A305297 n).toNat ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A032598.P11194933944010182386

/-! ## A032598.P10582463182744734821

`record[A000959(A324347(n))²]`
-/

namespace A032598.P10582463182744734821
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000959 (A324347 n).toNat ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A032598.P10582463182744734821

/-! ## A032598.P10990951062188656062

`record[A000959(A328399(n))²]`
-/

namespace A032598.P10990951062188656062
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000959 (A328399 n).toNat ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A032598.P10990951062188656062

/-! ## A032598.P9921926299509203934

`record[A000959(A344180(n))²]`
-/

namespace A032598.P9921926299509203934
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000959 (A344180 n).toNat ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A032598.P9921926299509203934

/-! ## A032598.P16802269153620239245

`A032599(n+1)/A000959(n+1)`
-/

namespace A032598.P16802269153620239245
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A032599 (n + 1) : ℚ) / (A000959 (n + 1) : ℚ)

end

end A032598.P16802269153620239245

/-! ## A032598.P6904679110679591984

`(A032600(n+1)+A000040(n+1))²`
-/

namespace A032598.P6904679110679591984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A032600 (n + 1) + A000040 (n + 1)) ^ 2

end

end A032598.P6904679110679591984

/-! ## A032598.P7140584470683769767

`(A032600(n+1)+A100484(n+1)/2)²`
-/

namespace A032598.P7140584470683769767
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A032600 (n + 1) : ℚ) + (A100484 (n + 1) : ℚ) / 2) ^ 2

end

end A032598.P7140584470683769767

/-! ## A032598.P5032343915511929904

`A000959(n+1)*A000959(A028310(n+1))`
-/

namespace A032598.P5032343915511929904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000959 (n + 1) * A000959 (A028310 (n + 1)).toNat

end

end A032598.P5032343915511929904

/-! ## A032598.P2296468232697155479

`(A000959(n+2)-A031883(n+1))*A000959(n+1)`
-/

namespace A032598.P2296468232697155479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000959 (n + 2) - A031883 (n + 1)) * A000959 (n + 1)

end

end A032598.P2296468232697155479

/-! ## A032598.P12198034400845271444

`record[(n+1)²*A145649(n+1)]`
-/

namespace A032598.P12198034400845271444
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℤ) * A145649 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A032598.P12198034400845271444

/-! ## A032598.P15168409320474618124

`A000265(A139269(n+1))²`
-/

namespace A032598.P15168409320474618124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A139269 (n + 1)).toNat ^ 2

end

end A032598.P15168409320474618124

/-! ## A032598.P1438799774602594877

`A004273(A049781(n+1))²`
-/

namespace A032598.P1438799774602594877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (A049781 (n + 1)).toNat ^ 2

end

end A032598.P1438799774602594877

/-! ## A032598.P4267334788483388615

`A141310(eq[1, A145649(n+1)])²`
-/

namespace A032598.P4267334788483388615
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145649 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141310 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n) ^ 2

end

end A032598.P4267334788483388615

/-! ## A032598.P16927184590028157882

`A141310(eq[1, A260429(n+1)])²`
-/

namespace A032598.P16927184590028157882
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260429 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141310 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n) ^ 2

end

end A032598.P16927184590028157882

/-!
# A032599: Cubes of lucky numbers.

The programs for A032599, there is no canonical definition to state claims against.
-/

/-! ## A032599.P11024202804845638571

`A000959(n+1)^3`
-/

namespace A032599.P11024202804845638571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000959 (n + 1) ^ 3

end

end A032599.P11024202804845638571

/-! ## A032599.P6504357515322608632

`sqrt(A032598(n+1)^3)`
-/

namespace A032599.P6504357515322608632
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A032598 (n + 1) ^ 3 : ℝ)

end

end A032599.P6504357515322608632

/-! ## A032599.P6515611733862191911

`(A139269(n+1)/2)^3`
-/

namespace A032599.P6515611733862191911
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A139269 (n + 1) : ℚ) / 2) ^ 3

end

end A032599.P6515611733862191911

/-! ## A032599.P6600068109063609350

`(2*A049781(n+1)-1)^3`
-/

namespace A032599.P6600068109063609350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * A049781 (n + 1) - 1) ^ 3

end

end A032599.P6600068109063609350

/-! ## A032599.P5604171467317931063

`A000959(n+1)*A032598(n+1)`
-/

namespace A032599.P5604171467317931063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000959 (n + 1) * A032598 (n + 1)

end

end A032599.P5604171467317931063

/-! ## A032599.P3104214127564361547

`A032598(n+1)/2*A139269(n+1)`
-/

namespace A032599.P3104214127564361547
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A032598 (n + 1) : ℚ) / 2 * (A139269 (n + 1) : ℚ)

end

end A032599.P3104214127564361547

/-! ## A032599.P16699118197596589470

`A000959(A000027(n+1))²²/A000959(n+1)`
-/

namespace A032599.P16699118197596589470
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A000959 (A000027 (n + 1)).toNat ^ 2) ^ 2 : ℚ) / (A000959 (n + 1) : ℚ)

end

end A032599.P16699118197596589470

/-! ## A032599.P11681911782864442987

`record[n*A145649(n+1)+1]^3`
-/

namespace A032599.P11681911782864442987
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A145649 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) ^ 3

end

end A032599.P11681911782864442987

/-! ## A032599.P10525541573557893369

`A000959(n+1)²*record[n*A145649(n+1)+1]`
-/

namespace A032599.P10525541573557893369
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A145649 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000959 (n + 1) ^ 2 * f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A032599.P10525541573557893369

/-! ## A032599.P16634283086464562914

`record[(n+1)/A260429(n+1)]^3`
-/

namespace A032599.P16634283086464562914
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A260429 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) ^ 3

end

end A032599.P16634283086464562914

/-! ## A032599.P9088198966548609313

`(eq[1, A042968(A260429(n+1)+1)-1]+1)*A000959(n+1)²`
-/

namespace A032599.P9088198966548609313
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042968 (A260429 (n + 1) + 1).toNat - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1 : ℤ) * A000959 (n + 1) ^ 2

end

end A032599.P9088198966548609313

/-! ## A032599.P16700262638486982036

`lt[A264940(abs(1-n)+1), 1]^3`
-/

namespace A032599.P16700262638486982036
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264940 (|1 - (n : ℤ)| + 1).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n ^ 3

end

end A032599.P16700262638486982036

/-! ## A032599.P11585737227290352326

`(eq[1, A264940(n+1)+1]+1)^3`
-/

namespace A032599.P11585737227290352326
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264940 (n + 1) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1) ^ 3

end

end A032599.P11585737227290352326

/-! ## A032599.P10140645102075704061

`A000578(A000959(n+1))`
-/

namespace A032599.P10140645102075704061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000578 (A000959 (n + 1)).toNat

end

end A032599.P10140645102075704061

/-! ## A032599.P10893978802484947580

`lt[A264940(abs(1-n)+1), 1]²*A000959(n+1)`
-/

namespace A032599.P10893978802484947580
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264940 (|1 - (n : ℤ)| + 1).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n ^ 2 : ℤ) * A000959 (n + 1)

end

end A032599.P10893978802484947580

/-! ## A032599.P10470775255860683350

`(eq[1, A264940(n+1)+1]+1)*A000959(n+1)²`
-/

namespace A032599.P10470775255860683350
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264940 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1 : ℤ) * A000959 (n + 1) ^ 2

end

end A032599.P10470775255860683350

/-! ## A032599.P7525841380274402144

`(eq[1, A264940(n+1)+1]+1)*record[n*A145649(n+1)+1]²`
-/

namespace A032599.P7525841380274402144
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264940 (n + 1) + 1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A145649 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1 : ℤ) * f3 (SequenceMachineLib.nth (fun j => ∀ l < j, f3 l < f3 j) n) ^ 2

end

end A032599.P7525841380274402144

/-! ## A032599.P5128547645980897008

`(eq[1, A264940(n+1)+1]+1)*record[(n+1)/A260429(n+1)]²`
-/

namespace A032599.P5128547645980897008
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264940 (n + 1) + 1

def f3 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A260429 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1 : ℚ) * f3 (SequenceMachineLib.nth (fun j => ∀ l < j, f3 l < f3 j) n) ^ 2

end

end A032599.P5128547645980897008

/-! ## A032599.P14510655951999953027

`A034828(A139269(n+1))`
-/

namespace A032599.P14510655951999953027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034828 (A139269 (n + 1)).toNat

end

end A032599.P14510655951999953027

/-! ## A032599.P7488975442371327277

`(A219178(n+1)-A257256(n+1))*A032598(n+1)`
-/

namespace A032599.P7488975442371327277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A219178 (n + 1) - A257256 (n + 1)) * A032598 (n + 1)

end

end A032599.P7488975442371327277

