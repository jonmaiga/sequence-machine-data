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
import Seq.B000.C012
import Seq.B000.C013
import Seq.B000.C014
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C036
import Seq.B000.C037
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C008
import Seq.B001.C009
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C004
import Seq.B002.C005
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
import Seq.B007.C001
import Seq.B008.C000
import Seq.B008.C001
import Seq.B009.C000
import Seq.B010.C000
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
import Seq.Opaque.C019
import Seq.Opaque.C020
import Seq.Opaque.C021
import Seq.Opaque.C022
import Seq.Opaque.C023
import Seq.Opaque.C025

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A145500: a(n) = n! / A156832(n).

The programs for A145500, there is no canonical definition to state claims against.
-/

/-! ## A145500.P14316186653202489467

`(n+1)!/A156832(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A145500.P14316186653202489467
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (n + 1) : ℚ) / (A156832 (n + 1) : ℚ)

end

end A145500.P14316186653202489467

/-! ## A145500.P5620958460402513392

`(n+1)*A000142(n)/A156832(n+1)`
-/

namespace A145500.P5620958460402513392
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) * ((A000142 n : ℚ) / (A156832 (n + 1) : ℚ))

end

end A145500.P5620958460402513392

/-! ## A145500.P6461434525732301097

`record[A047920(n)]/A156832(n+1)`
-/

namespace A145500.P6461434525732301097
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047920 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℚ) / (A156832 (n + 1) : ℚ)

end

end A145500.P6461434525732301097

/-! ## A145500.P1564512133755984140

`A000142(n+1)/A156832(n+1)`
-/

namespace A145500.P1564512133755984140
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000142 (n + 1) : ℚ) / (A156832 (n + 1) : ℚ)

end

end A145500.P1564512133755984140

/-!
# A145501: Dirichlet g.f.: (1+1/4^s+4/16^s)*zeta(s)^3.

The programs for A145501, there is no canonical definition to state claims against.
-/

/-! ## A145501.P9728930935345085099

`A145511(n+1)-A158360(n+1)`
-/

namespace A145501.P9728930935345085099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145511 (n + 1) - A158360 (n + 1)

end

end A145501.P9728930935345085099

/-! ## A145501.P2138975079330649663

`A145444(n+1)-A158801(n+1)`
-/

namespace A145501.P2138975079330649663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145444 (n + 1) - A158801 (n + 1)

end

end A145501.P2138975079330649663

/-! ## A145501.P10402512780192028620

`A145399(A026741(n+1))-A158360(n+1)`
-/

namespace A145501.P10402512780192028620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145399 (A026741 (n + 1)).toNat - A158360 (n + 1)

end

end A145501.P10402512780192028620

/-! ## A145501.P11191223686163608324

`A145444(n+1)-(A158360(n+1)+A158327(n+1))`
-/

namespace A145501.P11191223686163608324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145444 (n + 1) - (A158360 (n + 1) + A158327 (n + 1))

end

end A145501.P11191223686163608324

/-! ## A145501.P18083255607477088677

`A145511(n+1)+A158327(n+1)-A158801(n+1)`
-/

namespace A145501.P18083255607477088677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145511 (n + 1) + (A158327 (n + 1) - A158801 (n + 1))

end

end A145501.P18083255607477088677

/-!
# A145502: a(n+1) = a(n)^2 + 2*a(n) - 2 and a(1) = 2.

The programs for A145502, the canonical program `A145502.P5076433844180544402` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A145502 has offset 1).

The definition of A145502 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A145502.P5076433844180544402

`ϕ^2^(n+1)+(1/ϕ)^2^(n+1)-1`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A145502

/-- `ϕ^2^(n+1)+(1/ϕ)^2^(n+1)-1` -/
def P5076433844180544402.Spec : Prop :=
  ∀ n, P5076433844180544402.a n = (A145502 (n + 1) : ℝ)

end A145502

/-! ## A145502.P15673356035007455673

`A005592(2^n)`
-/

namespace A145502.P15673356035007455673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005592 (2 ^ n)

end

end A145502.P15673356035007455673

namespace A145502

/-- `A005592(2^n)` -/
def P15673356035007455673.Spec : Prop :=
  ∀ n, P15673356035007455673.a n = A145502 (n + 1)

end A145502

/-! ## A145502.P18246457598954626386

`A007039(A000079(n+1))`
-/

namespace A145502.P18246457598954626386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007039 (A000079 (n + 1)).toNat

end

end A145502.P18246457598954626386

namespace A145502

/-- `A007039(A000079(n+1))` -/
def P18246457598954626386.Spec : Prop :=
  ∀ n, P18246457598954626386.a n = A145502 (n + 1)

end A145502

/-!
# A145503: a(n+1) = a(n)^2 + 2*a(n) - 2 and a(1) = 3.

The programs for A145503, the canonical program `A145503.P15868526908605779001` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A145503 has offset 1).

The definition of A145503 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A145503.P15868526908605779001

`A003010(n)-1`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A145503

/-- `A003010(n)-1` -/
def P15868526908605779001.Spec : Prop :=
  ∀ n, P15868526908605779001.a n = A145503 (n + 1)

theorem P15868526908605779001.correct : P15868526908605779001.Spec := by
  intro n
  simp only [A145503, Nat.add_sub_cancel]

end A145503

/-! ## A145503.P17987562065810831694

`(a(n-1)+1)²-3` with `a(0)=3`
-/

namespace A145503.P17987562065810831694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  (a (n - 1) + 1) ^ 2 - 3

end

end A145503.P17987562065810831694

namespace A145503

/-- `(a(n-1)+1)²-3` -/
def P17987562065810831694.Spec : Prop :=
  ∀ n, P17987562065810831694.a n = A145503 (n + 1)

end A145503

/-! ## A145503.P2873300902200014067

`xor(1, -a(n-1))²-3` with `a(0)=3`
-/

namespace A145503.P2873300902200014067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  Int.xor 1 (-a (n - 1)) ^ 2 - 3

end

end A145503.P2873300902200014067

namespace A145503

/-- `xor(1, -a(n-1))²-3` -/
def P2873300902200014067.Spec : Prop :=
  ∀ n, P2873300902200014067.a n = A145503 (n + 1)

end A145503

/-! ## A145503.P8110456269930598445

`(1-floor(-a(n-1)))²-3` with `a(0)=3`

`floor` is left out, it is the identity on integers.
-/

namespace A145503.P8110456269930598445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  (1 - (-a (n - 1))) ^ 2 - 3

end

end A145503.P8110456269930598445

namespace A145503

/-- `(1-floor(-a(n-1)))²-3` -/
def P8110456269930598445.Spec : Prop :=
  ∀ n, P8110456269930598445.a n = A145503 (n + 1)

end A145503

/-!
# A145504: a(n+1) = a(n)^2 + 2*a(n) - 2 and a(1) = 4.

The programs for A145504, the canonical program `A145504.P12247023243839070764` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A145504 has offset 1).

The definition of A145504 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A145504.P12247023243839070764

`A003487(n)-1`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A145504

/-- `A003487(n)-1` -/
def P12247023243839070764.Spec : Prop :=
  ∀ n, P12247023243839070764.a n = A145504 (n + 1)

theorem P12247023243839070764.correct : P12247023243839070764.Spec := by
  intro n
  simp only [A145504, Nat.add_sub_cancel]

end A145504

/-! ## A145504.P8316335973085783751

`(a(n-1)+1)²-3` with `a(0)=4`
-/

namespace A145504.P8316335973085783751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [4] fun n a =>
  (a (n - 1) + 1) ^ 2 - 3

end

end A145504.P8316335973085783751

namespace A145504

/-- `(a(n-1)+1)²-3` -/
def P8316335973085783751.Spec : Prop :=
  ∀ n, P8316335973085783751.a n = A145504 (n + 1)

end A145504

/-! ## A145504.P8654282611930920226

`or(1, a(n-1))²-3` with `a(0)=4`
-/

namespace A145504.P8654282611930920226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [4] fun n a =>
  Int.lor 1 (a (n - 1)) ^ 2 - 3

end

end A145504.P8654282611930920226

namespace A145504

/-- `or(1, a(n-1))²-3` -/
def P8654282611930920226.Spec : Prop :=
  ∀ n, P8654282611930920226.a n = A145504 (n + 1)

end A145504

/-! ## A145504.P13262280627637977896

`xor(1, a(n-1))²-3` with `a(0)=4`
-/

namespace A145504.P13262280627637977896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [4] fun n a =>
  Int.xor 1 (a (n - 1)) ^ 2 - 3

end

end A145504.P13262280627637977896

namespace A145504

/-- `xor(1, a(n-1))²-3` -/
def P13262280627637977896.Spec : Prop :=
  ∀ n, P13262280627637977896.a n = A145504 (n + 1)

end A145504

/-!
# A145505: a(n+1) = a(n)^2 + 2*a(n) - 2 and a(1) = 5.

The programs for A145505, the canonical program `A145505.P7450748779389124020` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A145505 has offset 1).

The definition of A145505 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A145505.P7450748779389124020

`(1+sqrt(2))^2^(n+1)+(sqrt(2)-1)^2^(n+1)-1`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A145505

/-- `(1+sqrt(2))^2^(n+1)+(sqrt(2)-1)^2^(n+1)-1` -/
def P7450748779389124020.Spec : Prop :=
  ∀ n, P7450748779389124020.a n = (A145505 (n + 1) : ℝ)

end A145505

/-! ## A145505.P11328674739783006432

`A080039(2^(n+1))`
-/

namespace A145505.P11328674739783006432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080039 (2 ^ (n + 1))

end

end A145505.P11328674739783006432

namespace A145505

/-- `A080039(2^(n+1))` -/
def P11328674739783006432.Spec : Prop :=
  ∀ n, P11328674739783006432.a n = A145505 (n + 1)

end A145505

/-! ## A145505.P14070491480817299724

`A174504(A153893(n))`
-/

namespace A145505.P14070491480817299724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174504 (A153893 n).toNat

end

end A145505.P14070491480817299724

namespace A145505

/-- `A174504(A153893(n))` -/
def P14070491480817299724.Spec : Prop :=
  ∀ n, P14070491480817299724.a n = A145505 (n + 1)

end A145505

/-!
# A145506: a(n+1) = a(n)^2 + 2*a(n) - 2 and a(1) = 6.

The programs for A145506, there is no canonical definition to state claims against.
-/

/-! ## A145506.P1565956591105251398

`floor(ϕ^2^(n+2))`
-/

namespace A145506.P1565956591105251398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.goldenRatio ^ 2 ^ (n + 2)⌋

end

end A145506.P1565956591105251398

/-! ## A145506.P14228316434861139657

`(a(n-1)+1)²-3` with `a(0)=6`
-/

namespace A145506.P14228316434861139657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [6] fun n a =>
  (a (n - 1) + 1) ^ 2 - 3

end

end A145506.P14228316434861139657

/-! ## A145506.P16193292725889445114

`A145502(n+2)`
-/

namespace A145506.P16193292725889445114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145502 (n + 2)

end

end A145506.P16193292725889445114

/-!
# A145507: a(n+1) = a(n)^2 + 2*a(n) - 2 and a(1) = 7.

The programs for A145507, the canonical program `A145507.P13886345959497105374` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A145507 has offset 1).

The definition of A145507 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A145507.P13886345959497105374

`2*A005828(n)-1`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A145507

/-- `2*A005828(n)-1` -/
def P13886345959497105374.Spec : Prop :=
  ∀ n, P13886345959497105374.a n = A145507 (n + 1)

theorem P13886345959497105374.correct : P13886345959497105374.Spec := by
  intro n
  simp only [A145507, Nat.add_sub_cancel]

end A145507

/-! ## A145507.P2726387869907329667

`(a(n-1)+1)²-3` with `a(0)=7`
-/

namespace A145507.P2726387869907329667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [7] fun n a =>
  (a (n - 1) + 1) ^ 2 - 3

end

end A145507.P2726387869907329667

namespace A145507

/-- `(a(n-1)+1)²-3` -/
def P2726387869907329667.Spec : Prop :=
  ∀ n, P2726387869907329667.a n = A145507 (n + 1)

end A145507

/-! ## A145507.P17463841076807707257

`(a(n-1)+2)*a(n-1)-2` with `a(0)=7`
-/

namespace A145507.P17463841076807707257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [7] fun n a =>
  (a (n - 1) + 2) * a (n - 1) - 2

end

end A145507.P17463841076807707257

namespace A145507

/-- `(a(n-1)+2)*a(n-1)-2` -/
def P17463841076807707257.Spec : Prop :=
  ∀ n, P17463841076807707257.a n = A145507 (n + 1)

end A145507

/-!
# A145508: a(n+1) = a(n)^2 + 2*a(n) - 2 and a(1) = 8.

The programs for A145508, there is no canonical definition to state claims against.
-/

/-! ## A145508.P11151549005976812278

`(a(n-1)+1)²-3` with `a(0)=8`
-/

namespace A145508.P11151549005976812278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [8] fun n a =>
  (a (n - 1) + 1) ^ 2 - 3

end

end A145508.P11151549005976812278

/-! ## A145508.P5457027610552142519

`or(1, a(n-1))²-3` with `a(0)=8`
-/

namespace A145508.P5457027610552142519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [8] fun n a =>
  Int.lor 1 (a (n - 1)) ^ 2 - 3

end

end A145508.P5457027610552142519

/-! ## A145508.P11222768956263667539

`xor(1, a(n-1))²-3` with `a(0)=8`
-/

namespace A145508.P11222768956263667539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [8] fun n a =>
  Int.xor 1 (a (n - 1)) ^ 2 - 3

end

end A145508.P11222768956263667539

/-!
# A145509: a(n+1) = a(n)^2 + 2*a(n) - 2 and a(1) = 9.

The programs for A145509, there is no canonical definition to state claims against.
-/

/-! ## A145509.P10246808907170115161

`(a(n-1)+1)²-3` with `a(0)=9`
-/

namespace A145509.P10246808907170115161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [9] fun n a =>
  (a (n - 1) + 1) ^ 2 - 3

end

end A145509.P10246808907170115161

/-! ## A145509.P3115102414436771641

`xor(3, a(n-1))²-3` with `a(0)=9`
-/

namespace A145509.P3115102414436771641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [9] fun n a =>
  Int.xor 3 (a (n - 1)) ^ 2 - 3

end

end A145509.P3115102414436771641

/-! ## A145509.P13657057705182263613

`(1-or(2, a(n-1)))²-3` with `a(0)=9`
-/

namespace A145509.P13657057705182263613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [9] fun n a =>
  (1 - Int.lor 2 (a (n - 1))) ^ 2 - 3

end

end A145509.P13657057705182263613

/-!
# A145510: 

The programs for A145510, there is no canonical definition to state claims against.
-/

/-! ## A145510.P14806010320967110694

`(a(n-1)+1)²-3` with `a(0)=10`
-/

namespace A145510.P14806010320967110694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [10] fun n a =>
  (a (n - 1) + 1) ^ 2 - 3

end

end A145510.P14806010320967110694

/-! ## A145510.P16004747654889313229

`or(1, a(n-1))²-3` with `a(0)=10`
-/

namespace A145510.P16004747654889313229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [10] fun n a =>
  Int.lor 1 (a (n - 1)) ^ 2 - 3

end

end A145510.P16004747654889313229

/-! ## A145510.P16072466630768561491

`xor(1, a(n-1))²-3` with `a(0)=10`
-/

namespace A145510.P16072466630768561491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [10] fun n a =>
  Int.xor 1 (a (n - 1)) ^ 2 - 3

end

end A145510.P16072466630768561491

/-!
# A145511: Dirichlet g.f.: (1-2/2^s+7/4^s)*zeta(s)^3.

The programs for A145511, there is no canonical definition to state claims against.
-/

/-! ## A145511.P4255177736892212188

`A145399(A026741(n+1))`
-/

namespace A145511.P4255177736892212188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145399 (A026741 (n + 1)).toNat

end

end A145511.P4255177736892212188

/-! ## A145511.P16943340279576383535

`A158360(n+1)+A145501(n+1)`
-/

namespace A145511.P16943340279576383535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158360 (n + 1) + A145501 (n + 1)

end

end A145511.P16943340279576383535

/-! ## A145511.P1451061968650604941

`A145444(n+1)-A158327(n+1)`
-/

namespace A145511.P1451061968650604941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145444 (n + 1) - A158327 (n + 1)

end

end A145511.P1451061968650604941

/-! ## A145511.P3559597719221853480

`A158360(A259445(n+1))+A145444(n+1)`
-/

namespace A145511.P3559597719221853480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158360 (A259445 (n + 1)).toNat + A145444 (n + 1)

end

end A145511.P3559597719221853480

/-! ## A145511.P15688783618071619132

`A145444(n+1)+A158360(n+1)-A158801(n+1)`
-/

namespace A145511.P15688783618071619132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145444 (n + 1) + (A158360 (n + 1) - A158801 (n + 1))

end

end A145511.P15688783618071619132

/-! ## A145511.P9947076403699480425

`A145501(n+1)+A158801(n+1)-A158327(n+1)`
-/

namespace A145511.P9947076403699480425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145501 (n + 1) + (A158801 (n + 1) - A158327 (n + 1))

end

end A145511.P9947076403699480425

/-!
# A145512: Number of partitions of 9^n into powers of 9.

The programs for A145512, there is no canonical definition to state claims against.
-/

/-! ## A145512.P9932221482828547143

`A145515(eq[8, A116598(n)])`
-/

namespace A145512.P9932221482828547143
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116598 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145515 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A145512.P9932221482828547143

/-! ## A145512.P10871052809634913366

`A145515(eq[9, A025581(n)])`
-/

namespace A145512.P10871052809634913366
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145515 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A145512.P10871052809634913366

/-! ## A145512.P16220445825002007492

`A145515(eq[10, A195663(n)])`
-/

namespace A145512.P16220445825002007492
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195663 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145515 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A145512.P16220445825002007492

/-! ## A145512.P8664553609077025515

`A145515(eq[10, A004736(n+1)])`
-/

namespace A145512.P8664553609077025515
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145515 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A145512.P8664553609077025515

/-! ## A145512.P10361730897856710940

`A145515(eq[30, A027293(n+1)])`
-/

namespace A145512.P10361730897856710940
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  30

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027293 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145515 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A145512.P10361730897856710940

/-!
# A145513: Number of partitions of 10^n into powers of 10.

The programs for A145513, there is no canonical definition to state claims against.
-/

/-! ## A145513.P3247157199968709838

`A179051(10^n)`
-/

namespace A145513.P3247157199968709838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179051 (10 ^ n)

end

end A145513.P3247157199968709838

/-!
# A145514: Number of partitions of n^n into powers of n, also diagonal of A145515 and A196879.

The programs for A145514, there is no canonical definition to state claims against.
-/

/-! ## A145514.P12728439002662733024

`A196879(∑[4*n])`
-/

namespace A145514.P12728439002662733024
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196879 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A145514.P12728439002662733024

/-! ## A145514.P7082749505400956559

`gcd(A151622(n), A196879(A046092(n)))`
-/

namespace A145514.P7082749505400956559
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A151622 n) (A196879 (A046092 n).toNat)

end

end A145514.P7082749505400956559

/-! ## A145514.P11945173753329770202

`abs(A033999(n)*A196879(A046092(n)))`
-/

namespace A145514.P11945173753329770202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A033999 n * A196879 (A046092 n).toNat|

end

end A145514.P11945173753329770202

/-! ## A145514.P3142118790165227103

`A001222(A001359(n+1))*A196879(A046092(n))`
-/

namespace A145514.P3142118790165227103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A001359 (n + 1)).toNat * A196879 (A046092 n).toNat

end

end A145514.P3142118790165227103

/-! ## A145514.P13134097241787390184

`A145515(∑[4*n])`
-/

namespace A145514.P13134097241787390184
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145515 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A145514.P13134097241787390184

/-!
# A145515: Square array A(n,k), n>=0, k>=0, read by antidiagonals: A(n,k) is the number of partitions of k^n into powers of k.

The programs for A145515, there is no canonical definition to state claims against.
-/

/-! ## A145515.P9750320578488651005

`A294220(lt[A278970(2*(n+2)), A156919(n)])`
-/

namespace A145515.P9750320578488651005
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278970 (2 * (n + 2))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156919 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294220 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A145515.P9750320578488651005

/-! ## A145515.P1402823687423001288

`A065515(A267383(n+1)%A386559(n+1))`
-/

namespace A145515.P1402823687423001288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065515 (Int.tmod (A267383 (n + 1)) (A386559 (n + 1))).toNat

end

end A145515.P1402823687423001288

/-! ## A145515.P14030321609833131245

`gcd(A050166(A344855(n)), A128166(3*n+5))`
-/

namespace A145515.P14030321609833131245
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A050166 (A344855 n).toNat) (A128166 (3 * n + 5))

end

end A145515.P14030321609833131245

/-! ## A145515.P17651390055988133710

`A020658(A287216(n+1)%A283739(3*n+2))`
-/

namespace A145515.P17651390055988133710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020658 (Int.tmod (A287216 (n + 1)) (A283739 (3 * n + 2))).toNat

end

end A145515.P17651390055988133710

/-!
# A145516: 11^1,22^2,33^3,44^4,...

The programs for A145516, the canonical program `A145516.P831761780523782566` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A145516 has offset 1).

The definition of A145516 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A145516.P831761780523782566

`(11*(n+1))^(n+1)`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A145516

/-- `(11*(n+1))^(n+1)` -/
def P831761780523782566.Spec : Prop :=
  ∀ n, (P831761780523782566.a n : ℤ) = A145516 (n + 1)

theorem P831761780523782566.correct : P831761780523782566.Spec := by
  intro n
  simp only [A145516, Nat.add_sub_cancel]

end A145516

/-! ## A145516.P492217161360953452

`Δ[A001923(n)]*A001020(n+1)`
-/

namespace A145516.P492217161360953452
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001923 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A001020 (n + 1)

end

end A145516.P492217161360953452

namespace A145516

/-- `Δ[A001923(n)]*A001020(n+1)` -/
def P492217161360953452.Spec : Prop :=
  ∀ n, P492217161360953452.a n = A145516 (n + 1)

end A145516

/-! ## A145516.P4548745940166897609

`A000312(n+1)*A001020(n+1)`
-/

namespace A145516.P4548745940166897609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000312 (n + 1) * A001020 (n + 1)

end

end A145516.P4548745940166897609

namespace A145516

/-- `A000312(n+1)*A001020(n+1)` -/
def P4548745940166897609.Spec : Prop :=
  ∀ n, P4548745940166897609.a n = A145516 (n + 1)

end A145516

/-! ## A145516.P2062997101194123090

`record[A008593(A028242(n))^A028242(n)]`
-/

namespace A145516.P2062997101194123090
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008593 (A028242 n).toNat : ℚ) ^ (A028242 n : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A145516.P2062997101194123090

namespace A145516

/-- `record[A008593(A028242(n))^A028242(n)]` -/
def P2062997101194123090.Spec : Prop :=
  ∀ n, P2062997101194123090.a n = (A145516 (n + 1) : ℚ)

end A145516

/-! ## A145516.P12679528545145247416

`record[A008593(A248514(n+1))^A248514(n+1)]`
-/

namespace A145516.P12679528545145247416
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008593 (A248514 (n + 1)).toNat : ℚ) ^ (A248514 (n + 1) : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A145516.P12679528545145247416

namespace A145516

/-- `record[A008593(A248514(n+1))^A248514(n+1)]` -/
def P12679528545145247416.Spec : Prop :=
  ∀ n, P12679528545145247416.a n = (A145516 (n + 1) : ℚ)

end A145516

/-!
# A145517: Cubes ending in a (different) cube.

The programs for A145517, there is no canonical definition to state claims against.
-/

/-! ## A145517.P9291868921853294085

`∪[A038677(n+1), A017271(n)]`
-/

namespace A145517.P9291868921853294085
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038677 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017271 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A145517.P9291868921853294085

/-! ## A145517.P17871125886227165962

`A000578(lt[∑{digits}[n, #^3+#], A335433(n+1)])`
-/

namespace A145517.P17871125886227165962
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f2 n)).map fun (x : ℕ) => x ^ 3 + x).sum

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335433 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000578 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f3 j) n)

end

end A145517.P17871125886227165962

/-! ## A145517.P11521572494258810110

`A000578(lt[A065137(n), A345917(n+1)])`
-/

namespace A145517.P11521572494258810110
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065137 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345917 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000578 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A145517.P11521572494258810110

/-! ## A145517.P5306646569748116228

`A000578(lt[A329424(3*n+2), A118766(2*n+3)])`
-/

namespace A145517.P5306646569748116228
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329424 (3 * n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118766 (2 * n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000578 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A145517.P5306646569748116228

/-! ## A145517.P11861135154385690709

`A000578(lt[A055012(n), A274619(n)])`
-/

namespace A145517.P11861135154385690709
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055012 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274619 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000578 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A145517.P11861135154385690709

/-!
# A145519: a(n) = Sum_{k=1..n} A145518(n,k).

The programs for A145519, there is no canonical definition to state claims against.
-/

/-! ## A145519.P635903991053967893

`A119442(∑[4*n])`
-/

namespace A145519.P635903991053967893
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119442 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A145519.P635903991053967893

/-! ## A145519.P1414262261090357315

`record[A119442(ceil(n²/2))]`
-/

namespace A145519.P1414262261090357315
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119442 ⌈(n ^ 2 : ℚ) / 2⌉.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A145519.P1414262261090357315

/-!
# A145521: Take the primes raised to prime exponents, arranged in numerical order (A053810). If A053810(n) = r(n)^q(n), where r(n) and q(n) are primes, then a(n) = q(n)^r(n).

The programs for A145521, there is no canonical definition to state claims against.
-/

/-! ## A145521.P214621652123689275

`A053812(n+1)^A053811(n+1)`
-/

namespace A145521.P214621652123689275
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A053812 (n + 1) : ℚ) ^ (A053811 (n + 1) : ℤ)

end

end A145521.P214621652123689275

/-! ## A145521.P7910726523774630067

`A001222(A053810(n+1))^A053811(n+1)`
-/

namespace A145521.P7910726523774630067
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001222 (A053810 (n + 1)).toNat : ℚ) ^ (A053811 (n + 1) : ℤ)

end

end A145521.P7910726523774630067

/-! ## A145521.P9216700037747629277

`A053812(n+1)^A006530(A053810(n+1))`
-/

namespace A145521.P9216700037747629277
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A053812 (n + 1) : ℚ) ^ (A006530 (A053810 (n + 1)).toNat : ℤ)

end

end A145521.P9216700037747629277

/-! ## A145521.P13880417455286097906

`p?[A100995(A001597(n+1))]^A053811(n+1)`
-/

namespace A145521.P13880417455286097906
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100995 (A001597 (n + 1)).toNat

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) : ℚ) ^ (A053811 (n + 1) : ℤ)

end

end A145521.P13880417455286097906

/-! ## A145521.P17121840745926372054

`A008476(A053810(n+1))`
-/

namespace A145521.P17121840745926372054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008476 (A053810 (n + 1)).toNat

end

end A145521.P17121840745926372054

/-!
# A145523: Least integer k > 0 such that A000041(k) is divisible by 2^n.

The programs for A145523, there is no canonical definition to state claims against.
-/

/-! ## A145523.P3450534137195715644

`A046641(2^n)`
-/

namespace A145523.P3450534137195715644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046641 (2 ^ n)

end

end A145523.P3450534137195715644

/-! ## A145523.P14729881512943964733

`A046641(A000079(n))+A025443(n)`
-/

namespace A145523.P14729881512943964733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046641 (A000079 n).toNat + A025443 n

end

end A145523.P14729881512943964733

/-! ## A145523.P12006917089340741422

`A046641(A000079(n))+A025466(n)`
-/

namespace A145523.P12006917089340741422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046641 (A000079 n).toNat + A025466 n

end

end A145523.P12006917089340741422

/-! ## A145523.P629870301711099443

`A046641(A000079(n))%A007689(n)`
-/

namespace A145523.P629870301711099443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A046641 (A000079 n).toNat) (A007689 n)

end

end A145523.P629870301711099443

/-! ## A145523.P15220344681636311013

`A178333(n+2)+A046641(A000079(n))`
-/

namespace A145523.P15220344681636311013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178333 (n + 2) + A046641 (A000079 n).toNat

end

end A145523.P15220344681636311013

/-!
# A145524: Least integer k>0 such that A000041(k) is divisible by 10^n.

The programs for A145524, there is no canonical definition to state claims against.
-/

/-! ## A145524.P10996293667165392400

`A046641(10^n)`
-/

namespace A145524.P10996293667165392400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046641 (10 ^ n)

end

end A145524.P10996293667165392400

/-!
# A145526: Numbers Y such that 273*Y^2+91 is a square.

The programs for A145526, there is no canonical definition to state claims against.
-/

/-! ## A145526.P14513155189997138773

`2*A145530(n+1)+1`
-/

namespace A145526.P14513155189997138773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A145530 (n + 1) + 1

end

end A145526.P14513155189997138773

/-!
# A145528: Numbers x such that (x+91)^3 - x^3 is a square.

The programs for A145528, there is no canonical definition to state claims against.
-/

/-! ## A145528.P2133172891791243301

`91*A145530(n+1)`
-/

namespace A145528.P2133172891791243301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  91 * A145530 (n + 1)

end

end A145528.P2133172891791243301

/-!
# A145529: Numbers n such that there exists x in N : (x+1)^3-x^3=91*n^2.

The programs for A145529, there is no canonical definition to state claims against.
-/

/-! ## A145529.P673322229498018663

`A145525(n+1)/A145525(A007318(C(2, n)))`
-/

namespace A145529.P673322229498018663
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A145525 (n + 1) : ℚ) / (A145525 (A007318 (Nat.choose 2 n)).toNat : ℚ)

end

end A145529.P673322229498018663

/-! ## A145529.P9055290307662173146

`A145525(n+1)/A145525(A000041(val(n+1, 12)))`
-/

namespace A145529.P9055290307662173146
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A145525 (n + 1) : ℚ) / (A145525 (A000041 (SequenceMachineLib.valuation (n + 1) 12)).toNat : ℚ)

end

end A145529.P9055290307662173146

/-!
# A145530: Numbers x such that there exists n in N with (x+1)^3-x^3=91*n^2.

The programs for A145530, there is no canonical definition to state claims against.
-/

/-! ## A145530.P14456317380776731447

`floor(A145526(n+1)/2)`
-/

namespace A145530.P14456317380776731447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A145526 (n + 1) : ℚ) / 2⌋

end

end A145530.P14456317380776731447

/-!
# A145531: Primes p mentioned in A155214.

The programs for A145531, there is no canonical definition to state claims against.
-/

/-! ## A145531.P14048898873174625950

`p?[A115884(n+1)]`
-/

namespace A145531.P14048898873174625950
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115884 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A145531.P14048898873174625950

/-! ## A145531.P1645503046798589144

`record[p?[A115884(A133310(n))]]`
-/

namespace A145531.P1645503046798589144
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115884 (A133310 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A145531.P1645503046798589144

/-! ## A145531.P9573758305446858297

`record[p?[A115884(A154958(n))]]`
-/

namespace A145531.P9573758305446858297
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115884 (A154958 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A145531.P9573758305446858297

/-! ## A145531.P12403680120602293095

`record[p?[A115884(A324347(n))]]`
-/

namespace A145531.P12403680120602293095
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115884 (A324347 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A145531.P12403680120602293095

/-! ## A145531.P16236616395105044308

`∑{p}[p?[A115884(A028310(n))], #]`
-/

namespace A145531.P16236616395105044308
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115884 (A028310 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A145531.P16236616395105044308

/-!
# A145541: A positive integer n is included if (the number of 1's in the binary representation of n) = (the number of exponents equal to 1 in the prime factorization of n).

The programs for A145541, the canonical program `A145541.P1388174157055416916` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A145541 has offset 1).

The definition of A145541 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 115 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A145541.P1388174157055416916

`eq[A000120(n+1), A056169(n+1)]+1`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A145541

/-- `eq[A000120(n+1), A056169(n+1)]+1` -/
def P1388174157055416916.Spec : Prop :=
  ∀ n, (P1388174157055416916.a n : ℤ) = A145541 (n + 1)

theorem P1388174157055416916.correct : P1388174157055416916.Spec := by
  intro n
  simp only [A145541, Nat.add_sub_cancel]

end A145541

/-! ## A145541.P10561603116277073825

`A020725(eq[A000120(n+1), A056169(n+1)])`
-/

namespace A145541.P10561603116277073825
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056169 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A145541.P10561603116277073825

namespace A145541

/-- `A020725(eq[A000120(n+1), A056169(n+1)])` -/
def P10561603116277073825.Spec : Prop :=
  ∀ n, P10561603116277073825.a n = A145541 (n + 1)

end A145541

/-! ## A145541.P7129254458305214026

`∩[A071594(n+1), A179460(n+1)]`
-/

namespace A145541.P7129254458305214026
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071594 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179460 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A145541.P7129254458305214026

namespace A145541

/-- `∩[A071594(n+1), A179460(n+1)]` -/
def P7129254458305214026.Spec : Prop :=
  ∀ n, (P7129254458305214026.a n : ℤ) = A145541 (n + 1)

end A145541

/-!
# A145542: Numerators in continued fraction expansion of sqrt(3/5).

The programs for A145542, the canonical program `A145542.P14773489526618195766` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A145542 has offset 1).

The definition of A145542 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 224 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A145542.P14773489526618195766

`a(n-2)+(n%2+2)*a(n-1)` with `a(0)=1, a(1)=3`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A145542

/-- `a(n-2)+(n%2+2)*a(n-1)` -/
def P14773489526618195766.Spec : Prop :=
  ∀ n, (P14773489526618195766.a n : ℤ) = A145542 (n + 1)

theorem P14773489526618195766.correct : P14773489526618195766.Spec := by
  intro n
  simp only [A145542, Nat.add_sub_cancel]

end A145542

/-! ## A145542.P17198537267267920700

`a(n-2)+(4-gcd(2, n))*a(n-1)` with `a(0)=1, a(1)=3`
-/

namespace A145542.P17198537267267920700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3] fun n a =>
  a (n - 2) + (4 - (Nat.gcd 2 n : ℤ)) * a (n - 1)

end

end A145542.P17198537267267920700

namespace A145542

/-- `a(n-2)+(4-gcd(2, n))*a(n-1)` -/
def P17198537267267920700.Spec : Prop :=
  ∀ n, P17198537267267920700.a n = A145542 (n + 1)

end A145542

/-! ## A145542.P8179364051151176115

`a(n-2)+(and(1, n)+2)*a(n-1)` with `a(0)=1, a(1)=3`
-/

namespace A145542.P8179364051151176115
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 3] fun n a =>
  a (n - 2) + (Nat.land 1 n + 2) * a (n - 1)

end

end A145542.P8179364051151176115

namespace A145542

/-- `a(n-2)+(and(1, n)+2)*a(n-1)` -/
def P8179364051151176115.Spec : Prop :=
  ∀ n, (P8179364051151176115.a n : ℤ) = A145542 (n + 1)

theorem P8179364051151176115.correct : P8179364051151176115.Spec := by
  intro n
  simp only [A145542, Nat.add_sub_cancel, A145542.P8179364051151176115.a, A145542.P14773489526618195766.a, SequenceMachineLib.memo_apply]
  try simp

end A145542

/-! ## A145542.P1753553237758681916

`3^(n%2)*A041023(n)`
-/

namespace A145542.P1753553237758681916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 ^ (n % 2) : ℤ) * A041023 n

end

end A145542.P1753553237758681916

namespace A145542

/-- `3^(n%2)*A041023(n)` -/
def P1753553237758681916.Spec : Prop :=
  ∀ n, P1753553237758681916.a n = A145542 (n + 1)

end A145542

/-! ## A145542.P9071459179420638257

`A010684(n)*A041023(n)`
-/

namespace A145542.P9071459179420638257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010684 n * A041023 n

end

end A145542.P9071459179420638257

namespace A145542

/-- `A010684(n)*A041023(n)` -/
def P9071459179420638257.Spec : Prop :=
  ∀ n, P9071459179420638257.a n = A145542 (n + 1)

end A145542

/-!
# A145543: Denominators in continued fraction expansion of sqrt(3/5).

The programs for A145543, the canonical program `A145543.P1078561809369542559` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A145543 has offset 1).

The definition of A145543 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 223 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A145543.P1078561809369542559

`a(n-2)+(n%2+2)*a(n-1)` with `a(0)=1, a(1)=4`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A145543

/-- `a(n-2)+(n%2+2)*a(n-1)` -/
def P1078561809369542559.Spec : Prop :=
  ∀ n, (P1078561809369542559.a n : ℤ) = A145543 (n + 1)

theorem P1078561809369542559.correct : P1078561809369542559.Spec := by
  intro n
  simp only [A145543, Nat.add_sub_cancel]

end A145543

/-! ## A145543.P17512505655145903456

`a(n-2)+(4-gcd(2, n))*a(n-1)` with `a(0)=1, a(1)=4`
-/

namespace A145543.P17512505655145903456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 4] fun n a =>
  a (n - 2) + (4 - (Nat.gcd 2 n : ℤ)) * a (n - 1)

end

end A145543.P17512505655145903456

namespace A145543

/-- `a(n-2)+(4-gcd(2, n))*a(n-1)` -/
def P17512505655145903456.Spec : Prop :=
  ∀ n, P17512505655145903456.a n = A145543 (n + 1)

end A145543

/-! ## A145543.P15071918953277595107

`a(n-2)+(and(1, n)+2)*a(n-1)` with `a(0)=1, a(1)=4`
-/

namespace A145543.P15071918953277595107
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 4] fun n a =>
  a (n - 2) + (Nat.land 1 n + 2) * a (n - 1)

end

end A145543.P15071918953277595107

namespace A145543

/-- `a(n-2)+(and(1, n)+2)*a(n-1)` -/
def P15071918953277595107.Spec : Prop :=
  ∀ n, (P15071918953277595107.a n : ℤ) = A145543 (n + 1)

theorem P15071918953277595107.correct : P15071918953277595107.Spec := by
  intro n
  simp only [A145543, Nat.add_sub_cancel, A145543.P15071918953277595107.a, A145543.P1078561809369542559.a, SequenceMachineLib.memo_apply]
  try simp

end A145543

/-! ## A145543.P11987254043145920493

`lcm(3, A041022(n))/3`
-/

namespace A145543.P11987254043145920493
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm 3 (A041022 n) : ℚ) / 3

end

end A145543.P11987254043145920493

namespace A145543

/-- `lcm(3, A041022(n))/3` -/
def P11987254043145920493.Spec : Prop :=
  ∀ n, P11987254043145920493.a n = (A145543 (n + 1) : ℚ)

end A145543

/-! ## A145543.P9478520108621939360

`A041022(n)/A176040(n)`
-/

namespace A145543.P9478520108621939360
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A041022 n : ℚ) / (A176040 n : ℚ)

end

end A145543.P9478520108621939360

namespace A145543

/-- `A041022(n)/A176040(n)` -/
def P9478520108621939360.Spec : Prop :=
  ∀ n, P9478520108621939360.a n = (A145543 (n + 1) : ℚ)

end A145543

/-! ## A145543.P9936368635802518494

`A041023(n+1)/A145542(n+2)*A041022(n)`
-/

namespace A145543.P9936368635802518494
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A041023 (n + 1) : ℚ) / (A145542 (n + 2) : ℚ) * (A041022 n : ℚ)

end

end A145543.P9936368635802518494

namespace A145543

/-- `A041023(n+1)/A145542(n+2)*A041022(n)` -/
def P9936368635802518494.Spec : Prop :=
  ∀ n, P9936368635802518494.a n = (A145543 (n + 1) : ℚ)

end A145543

/-!
# A145544: a(n) = 4*(4^n-3^n).

The programs for A145544, the canonical program `A145544.P9258553219898118840` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A145544 has offset 0).

The definition of A145544 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `4*(4^n-3^n)` (program `A145544.P9258553219898118840`, by `A145544.P9258553219898118840.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A145544.P9258553219898118840

`4*(4^n-3^n)`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A145544

/-- `4*(4^n-3^n)` -/
def P9258553219898118840.Spec : Prop :=
  ∀ n, P9258553219898118840.a n = A145544 n

theorem P9258553219898118840.correct : P9258553219898118840.Spec := by
  intro n
  simp only [A145544]

end A145544

/-! ## A145544.P10551334462418581551

`7*a(n-1)-12*a(n-2)` with `a(0)=0, a(1)=4`
-/

namespace A145544.P10551334462418581551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 4] fun n a =>
  7 * a (n - 1) - 12 * a (n - 2)

end

end A145544.P10551334462418581551

namespace A145544

/-- `7*a(n-1)-12*a(n-2)` -/
def P10551334462418581551.Spec : Prop :=
  ∀ n, P10551334462418581551.a n = A145544 n

theorem P10551334462418581551.correct : P10551334462418581551.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A145544, Nat.add_sub_cancel, A145544.P10551334462418581551.a, A145544.P9258553219898118840.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A145544, Nat.add_sub_cancel, A145544.P10551334462418581551.a, A145544.P9258553219898118840.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [h1, h2]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A145544

/-! ## A145544.P9510831835428807830

`ogf(4x/(1-7x+12x^2))`
-/

namespace A145544.P9510831835428807830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 4] [1, -7, 12] n

end

end A145544.P9510831835428807830

namespace A145544

/-- `ogf(4x/(1-7x+12x^2))` -/
def P9510831835428807830.Spec : Prop :=
  ∀ n, P9510831835428807830.a n = A145544 n

end A145544

/-! ## A145544.P589313564241558272

`lcm(4, 3^n-4^n)`
-/

namespace A145544.P589313564241558272
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 4 ((3 ^ n : ℤ) - (4 ^ n : ℤ))

end

end A145544.P589313564241558272

namespace A145544

/-- `lcm(4, 3^n-4^n)` -/
def P589313564241558272.Spec : Prop :=
  ∀ n, (P589313564241558272.a n : ℤ) = A145544 n

end A145544

/-! ## A145544.P310519544038009065

`4^n+a(n-1)/(1-2/3)` with `a(0)=0`
-/

namespace A145544.P310519544038009065
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [0] fun n a =>
  (4 ^ n : ℚ) + a (n - 1) / (1 - (2 : ℚ) / 3)

end

end A145544.P310519544038009065

namespace A145544

/-- `4^n+a(n-1)/(1-2/3)` -/
def P310519544038009065.Spec : Prop :=
  ∀ n, P310519544038009065.a n = (A145544 n : ℚ)

theorem P310519544038009065.correct : P310519544038009065.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A145544, Nat.add_sub_cancel, A145544.P310519544038009065.a, A145544.P9258553219898118840.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A145544, Nat.add_sub_cancel, A145544.P310519544038009065.a, A145544.P9258553219898118840.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A145544

/-! ## A145544.P3762161304574081377

`a(n-1)+a(n-1)+a(n-1)+4^n` with `a(0)=0`
-/

namespace A145544.P3762161304574081377
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) + (a (n - 1) + (a (n - 1) + 4 ^ n))

end

end A145544.P3762161304574081377

namespace A145544

/-- `a(n-1)+a(n-1)+a(n-1)+4^n` -/
def P3762161304574081377.Spec : Prop :=
  ∀ n, (P3762161304574081377.a n : ℤ) = A145544 n

theorem P3762161304574081377.correct : P3762161304574081377.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A145544, Nat.add_sub_cancel, A145544.P3762161304574081377.a, A145544.P9258553219898118840.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A145544, Nat.add_sub_cancel, A145544.P3762161304574081377.a, A145544.P9258553219898118840.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A145544

/-! ## A145544.P4442880544258881588

`A365544(2*(n+1))`
-/

namespace A145544.P4442880544258881588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365544 (2 * (n + 1))

end

end A145544.P4442880544258881588

namespace A145544

/-- `A365544(2*(n+1))` -/
def P4442880544258881588.Spec : Prop :=
  ∀ n, P4442880544258881588.a n = A145544 n

end A145544

/-! ## A145544.P4636306939405687714

`A005061(n+1)-3^n`
-/

namespace A145544.P4636306939405687714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005061 (n + 1) - (3 ^ n : ℤ)

end

end A145544.P4636306939405687714

namespace A145544

/-- `A005061(n+1)-3^n` -/
def P4636306939405687714.Spec : Prop :=
  ∀ n, P4636306939405687714.a n = A145544 n

end A145544

/-! ## A145544.P16904518226034707310

`A093834(n+1)-3^(n+1)`
-/

namespace A145544.P16904518226034707310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093834 (n + 1) - (3 ^ (n + 1) : ℤ)

end

end A145544.P16904518226034707310

namespace A145544

/-- `A093834(n+1)-3^(n+1)` -/
def P16904518226034707310.Spec : Prop :=
  ∀ n, P16904518226034707310.a n = A145544 n

end A145544

/-! ## A145544.P7774002178348965227

`A000302(n)+3*a(n-1)` with `a(0)=0`
-/

namespace A145544.P7774002178348965227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A000302 n + 3 * a (n - 1)

end

end A145544.P7774002178348965227

namespace A145544

/-- `A000302(n)+3*a(n-1)` -/
def P7774002178348965227.Spec : Prop :=
  ∀ n, P7774002178348965227.a n = A145544 n

end A145544

/-! ## A145544.P9231230506106926153

`A000079(n)²+3*a(n-1)` with `a(0)=0`
-/

namespace A145544.P9231230506106926153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A000079 n ^ 2 + 3 * a (n - 1)

end

end A145544.P9231230506106926153

namespace A145544

/-- `A000079(n)²+3*a(n-1)` -/
def P9231230506106926153.Spec : Prop :=
  ∀ n, P9231230506106926153.a n = A145544 n

end A145544

/-! ## A145544.P2716166732393459249

`Δ[A002450(n)]+3*a(n-1)` with `a(0)=0`
-/

namespace A145544.P2716166732393459249
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002450 n

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  f1 (n + 1) - f1 n + 3 * a (n - 1)

end

end A145544.P2716166732393459249

namespace A145544

/-- `Δ[A002450(n)]+3*a(n-1)` -/
def P2716166732393459249.Spec : Prop :=
  ∀ n, P2716166732393459249.a n = A145544 n

end A145544

/-! ## A145544.P16124358477803665673

`A000079(2*n)+3*a(n-1)` with `a(0)=0`
-/

namespace A145544.P16124358477803665673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A000079 (2 * n) + 3 * a (n - 1)

end

end A145544.P16124358477803665673

namespace A145544

/-- `A000079(2*n)+3*a(n-1)` -/
def P16124358477803665673.Spec : Prop :=
  ∀ n, P16124358477803665673.a n = A145544 n

end A145544

/-! ## A145544.P1839568706770300701

`A255463(n)+A002250(n)`
-/

namespace A145544.P1839568706770300701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255463 n + A002250 n

end

end A145544.P1839568706770300701

namespace A145544

/-- `A255463(n)+A002250(n)` -/
def P1839568706770300701.Spec : Prop :=
  ∀ n, P1839568706770300701.a n = A145544 n

end A145544

/-! ## A145544.P15772849239485152944

`A141725(n)-A036543(n)`
-/

namespace A145544.P15772849239485152944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141725 n - A036543 n

end

end A145544.P15772849239485152944

namespace A145544

/-- `A141725(n)-A036543(n)` -/
def P15772849239485152944.Spec : Prop :=
  ∀ n, P15772849239485152944.a n = A145544 n

end A145544

/-! ## A145544.P9546210370867126858

`∑[A255463(n)]-A000244(n)`
-/

namespace A145544.P9546210370867126858
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255463 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A000244 n

end

end A145544.P9546210370867126858

namespace A145544

/-- `∑[A255463(n)]-A000244(n)` -/
def P9546210370867126858.Spec : Prop :=
  ∀ n, P9546210370867126858.a n = A145544 n

end A145544

/-! ## A145544.P6946993616888261054

`A008776(n)+A002250(n+1)`
-/

namespace A145544.P6946993616888261054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008776 n + A002250 (n + 1)

end

end A145544.P6946993616888261054

namespace A145544

/-- `A008776(n)+A002250(n+1)` -/
def P6946993616888261054.Spec : Prop :=
  ∀ n, P6946993616888261054.a n = A145544 n

end A145544

/-! ## A145544.P10769896768237754311

`A223173(n+1)+A102485(n)`
-/

namespace A145544.P10769896768237754311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223173 (n + 1) + A102485 n

end

end A145544.P10769896768237754311

namespace A145544

/-- `A223173(n+1)+A102485(n)` -/
def P10769896768237754311.Spec : Prop :=
  ∀ n, P10769896768237754311.a n = A145544 n

end A145544

/-! ## A145544.P6890569713793493631

`A080643(n+1)-A008776(n)`
-/

namespace A145544.P6890569713793493631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080643 (n + 1) - A008776 n

end

end A145544.P6890569713793493631

namespace A145544

/-- `A080643(n+1)-A008776(n)` -/
def P6890569713793493631.Spec : Prop :=
  ∀ n, P6890569713793493631.a n = A145544 n

end A145544

/-! ## A145544.P17090583434288036884

`A360876(n+1)-A168607(n)`
-/

namespace A145544.P17090583434288036884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360876 (n + 1) - A168607 n

end

end A145544.P17090583434288036884

namespace A145544

/-- `A360876(n+1)-A168607(n)` -/
def P17090583434288036884.Spec : Prop :=
  ∀ n, P17090583434288036884.a n = A145544 n

end A145544

/-!
# A145545: Number of distinct values taken by 5^5^...^5 (with n 5's and parentheses inserted in all possible ways).

The programs for A145545, there is no canonical definition to state claims against.
-/

/-! ## A145545.P8446106841545683256

`A000081(n+1)-A127380(A130132(n+2))`
-/

namespace A145545.P8446106841545683256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000081 (n + 1) - A127380 (A130132 (n + 2)).toNat

end

end A145545.P8446106841545683256

/-! ## A145545.P7771930367874199034

`A350348(A182378(n+1))`
-/

namespace A145545.P7771930367874199034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350348 (A182378 (n + 1)).toNat

end

end A145545.P7771930367874199034

/-! ## A145545.P1759938059238515565

`A216062(n+1)-A180649(A032020(n))`
-/

namespace A145545.P1759938059238515565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216062 (n + 1) - A180649 (A032020 n).toNat

end

end A145545.P1759938059238515565

/-! ## A145545.P15633886937686461399

`A145546(n+1)-A350957(A309862(n))`
-/

namespace A145545.P15633886937686461399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145546 (n + 1) - A350957 (A309862 n).toNat

end

end A145545.P15633886937686461399

/-! ## A145545.P2223033799730172730

`A146167(∑[A000672(n)])+A036722(n+1)`
-/

namespace A145545.P2223033799730172730
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000672 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146167 (∑ j ∈ Finset.range (n + 1), f1 j).toNat + A036722 (n + 1)

end

end A145545.P2223033799730172730

/-!
# A145546: Number of distinct values taken by 6^6^...^6 (with n 6's and parentheses inserted in all possible ways).

The programs for A145546, there is no canonical definition to state claims against.
-/

/-! ## A145546.P7198253410600065654

`A000081(n+1)-A127380(A130132(n+1))`
-/

namespace A145546.P7198253410600065654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000081 (n + 1) - A127380 (A130132 (n + 1)).toNat

end

end A145546.P7198253410600065654

/-! ## A145546.P3243618931784571415

`A350942(A060455(n))+A000081(n+1)`
-/

namespace A145546.P3243618931784571415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350942 (A060455 n).toNat + A000081 (n + 1)

end

end A145546.P3243618931784571415

/-! ## A145546.P4729121586916539035

`A200214(A279829(n))+A034825(n+1)`
-/

namespace A145546.P4729121586916539035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200214 (A279829 n).toNat + A034825 (n + 1)

end

end A145546.P4729121586916539035

/-! ## A145546.P14393558431976426691

`A294234(n)+A255638(A061497(n+1))`
-/

namespace A145546.P14393558431976426691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294234 n + A255638 (A061497 (n + 1)).toNat

end

end A145546.P14393558431976426691

/-! ## A145546.P14215079528600737129

`A292553(n+1)-A048707(A255380(n))`
-/

namespace A145546.P14215079528600737129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292553 (n + 1) - A048707 (A255380 n).toNat

end

end A145546.P14215079528600737129

/-!
# A145547: Number of distinct values taken by 7^7^...^7 (with n 7's and parentheses inserted in all possible ways).

The programs for A145547, there is no canonical definition to state claims against.
-/

/-! ## A145547.P6670600751781690400

`A028310(A216403(n+1)-floor(n/10))`
-/

namespace A145547.P6670600751781690400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A216403 (n + 1) - ⌊(n : ℚ) / 10⌋).toNat

end

end A145547.P6670600751781690400

/-! ## A145547.P16404385067313106849

`A028310(A216403(n+1))-A026816(n)`
-/

namespace A145547.P16404385067313106849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A216403 (n + 1)).toNat - A026816 n

end

end A145547.P16404385067313106849

/-! ## A145547.P11735554064537434830

`A216403(n+1)-A178798(A019568(n))`
-/

namespace A145547.P11735554064537434830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216403 (n + 1) - A178798 (A019568 n).toNat

end

end A145547.P11735554064537434830

/-! ## A145547.P17645045555316206323

`A028310(A216403(n+1))-A326629(n)`
-/

namespace A145547.P17645045555316206323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A216403 (n + 1)).toNat - A326629 n

end

end A145547.P17645045555316206323

/-! ## A145547.P8458384080114301903

`A028310(A216403(n+1))-A326632(n)`
-/

namespace A145547.P8458384080114301903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A216403 (n + 1)).toNat - A326632 n

end

end A145547.P8458384080114301903

/-!
# A145548: Number of distinct values taken by 8^8^...^8 (with n 8's and parentheses inserted in all possible ways).

The programs for A145548, there is no canonical definition to state claims against.
-/

/-! ## A145548.P5845273638799097647

`A292555(n+1)-A178798(A316622(n))`
-/

namespace A145548.P5845273638799097647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292555 (n + 1) - A178798 (A316622 n).toNat

end

end A145548.P5845273638799097647

/-! ## A145548.P955977046154642645

`A292555(n+1)+A121373(A291796(n+1))`
-/

namespace A145548.P955977046154642645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292555 (n + 1) + A121373 (A291796 (n + 1)).toNat

end

end A145548.P955977046154642645

/-! ## A145548.P4196306131535562540

`A000081(n+1)-A347323(A077168(n+1))²`
-/

namespace A145548.P4196306131535562540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000081 (n + 1) - A347323 (A077168 (n + 1)).toNat ^ 2

end

end A145548.P4196306131535562540

/-! ## A145548.P7656731282113062219

`A292556(A161951(n+1))-A175797(A034803(n+1))`
-/

namespace A145548.P7656731282113062219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292556 (A161951 (n + 1)).toNat - A175797 (A034803 (n + 1)).toNat

end

end A145548.P7656731282113062219

/-! ## A145548.P2412976401430315472

`A292555(floor(acot(lt[(72*n)%(n+1), 1]+1))+n+1)`
-/

namespace A145548.P2412976401430315472
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  72 * n % (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292555 (⌊SequenceMachineLib.acot (SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1 : ℝ)⌋ + (n + 1 : ℤ)).toNat

end

end A145548.P2412976401430315472

/-!
# A145549: Number of distinct values taken by 9^9^...^9 (with n 9's and parentheses inserted in all possible ways).

The programs for A145549, there is no canonical definition to state claims against.
-/

/-! ## A145549.P7987047685010679278

`A292556(n+1)-A213683(A018843(2*n+1))`
-/

namespace A145549.P7987047685010679278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292556 (n + 1) - A213683 (A018843 (2 * n + 1)).toNat

end

end A145549.P7987047685010679278

/-! ## A145549.P8880057089252369805

`A318857(n+1)+A185284(A014132(2*n+3))`
-/

namespace A145549.P8880057089252369805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318857 (n + 1) + A185284 (A014132 (2 * n + 3)).toNat

end

end A145549.P8880057089252369805

/-! ## A145549.P12494240335817648490

`A000081(A077168(n))-A347323(A077168(n))²`
-/

namespace A145549.P12494240335817648490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000081 (A077168 n).toNat - A347323 (A077168 n).toNat ^ 2

end

end A145549.P12494240335817648490

/-! ## A145549.P2896252481470117468

`A292556(A161951(n+1))`
-/

namespace A145549.P2896252481470117468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292556 (A161951 (n + 1)).toNat

end

end A145549.P2896252481470117468

/-! ## A145549.P12658363238672487790

`A242603(A292556(n+1))`
-/

namespace A145549.P12658363238672487790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242603 (A292556 (n + 1)).toNat

end

end A145549.P12658363238672487790

/-!
# A145550: Number of distinct values taken by 10^10^...^10 (with n 10's and parentheses inserted in all possible ways).

The programs for A145550, there is no canonical definition to state claims against.
-/

/-! ## A145550.P4642264540211055209

`A000081(A077168(n))-A347323(n)`
-/

namespace A145550.P4642264540211055209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000081 (A077168 n).toNat - A347323 n

end

end A145550.P4642264540211055209

/-! ## A145550.P5148217942882722842

`A145549(n+1)+A007954(A185213(n))`
-/

namespace A145550.P5148217942882722842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145549 (n + 1) + A007954 (A185213 n).toNat

end

end A145550.P5148217942882722842

/-! ## A145550.P8284361258171989062

`A000081(n+1)-A085974(A000079(n))`
-/

namespace A145550.P8284361258171989062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000081 (n + 1) - A085974 (A000079 n).toNat

end

end A145550.P8284361258171989062

/-! ## A145550.P17066516171821867915

`A000081(n+1)-A185284(A347778(n))`
-/

namespace A145550.P17066516171821867915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000081 (n + 1) - A185284 (A347778 n).toNat

end

end A145550.P17066516171821867915

/-! ## A145550.P8729851780146940008

`A336087(∑[n+1]+1)`
-/

namespace A145550.P8729851780146940008
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336087 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A145550.P8729851780146940008

/-!
# A145551: Numbers k such that product of divisors of k / sum of divisors of k is an integer.

The programs for A145551, the canonical program `A145551.P800159444026911314` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A145551 has offset 1).

The definition of A145551 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 189 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A145551.P800159444026911314

`lt[2*n, A306682(n+1)]+1`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A145551

/-- `lt[2*n, A306682(n+1)]+1` -/
def P800159444026911314.Spec : Prop :=
  ∀ n, (P800159444026911314.a n : ℤ) = A145551 (n + 1)

theorem P800159444026911314.correct : P800159444026911314.Spec := by
  intro n
  simp only [A145551, Nat.add_sub_cancel]

end A145551

/-! ## A145551.P12663195478383997554

`eq[A000203(n+1), A306682(n+1)]+1`
-/

namespace A145551.P12663195478383997554
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306682 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A145551.P12663195478383997554

namespace A145551

/-- `eq[A000203(n+1), A306682(n+1)]+1` -/
def P12663195478383997554.Spec : Prop :=
  ∀ n, (P12663195478383997554.a n : ℤ) = A145551 (n + 1)

end A145551

/-! ## A145551.P795317908223245599

`eq[0, A187680(n+1)]+1`
-/

namespace A145551.P795317908223245599
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187680 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A145551.P795317908223245599

namespace A145551

/-- `eq[0, A187680(n+1)]+1` -/
def P795317908223245599.Spec : Prop :=
  ∀ n, (P795317908223245599.a n : ℤ) = A145551 (n + 1)

end A145551

/-! ## A145551.P4443587819733884805

`record[A306682(n+1)-A001065(n+1)]`
-/

namespace A145551.P4443587819733884805
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306682 (n + 1) - A001065 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A145551.P4443587819733884805

namespace A145551

/-- `record[A306682(n+1)-A001065(n+1)]` -/
def P4443587819733884805.Spec : Prop :=
  ∀ n, P4443587819733884805.a n = A145551 (n + 1)

end A145551

/-! ## A145551.P3040429107754954028

`eq[A000007(n), A187680(A028310(n))]`
-/

namespace A145551.P3040429107754954028
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187680 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A145551.P3040429107754954028

namespace A145551

/-- `eq[A000007(n), A187680(A028310(n))]` -/
def P3040429107754954028.Spec : Prop :=
  ∀ n, (P3040429107754954028.a n : ℤ) = A145551 (n + 1)

end A145551

/-! ## A145551.P13892485317405416955

`A008619(record[A005843(n)%A306682(n+1)])`
-/

namespace A145551.P13892485317405416955
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A005843 n) (A306682 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A145551.P13892485317405416955

namespace A145551

/-- `A008619(record[A005843(n)%A306682(n+1)])` -/
def P13892485317405416955.Spec : Prop :=
  ∀ n, P13892485317405416955.a n = A145551 (n + 1)

end A145551

/-! ## A145551.P14317416733644064494

`A008619(record[A047271(n+1)%A306682(n+1)])`
-/

namespace A145551.P14317416733644064494
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A047271 (n + 1)) (A306682 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A145551.P14317416733644064494

namespace A145551

/-- `A008619(record[A047271(n+1)%A306682(n+1)])` -/
def P14317416733644064494.Spec : Prop :=
  ∀ n, P14317416733644064494.a n = A145551 (n + 1)

end A145551

/-!
# A145552: Square numbers which can be expressed as the sum of 2 positive cubes in exactly 2 different ways.

The programs for A145552, there is no canonical definition to state claims against.
-/

/-! ## A145552.P11790587986459136550

`(A051302(n+1)*A051340(∑[n]))²`
-/

namespace A145552.P11790587986459136550
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A051302 (n + 1) * A051340 (∑ j ∈ Finset.range (n + 1), f1 j)) ^ 2

end

end A145552.P11790587986459136550

/-! ## A145552.P5847503885048596058

`record[A051302(A051340(n))²]`
-/

namespace A145552.P5847503885048596058
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051302 (A051340 n).toNat ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A145552.P5847503885048596058

/-! ## A145552.P12980043505555021113

`A051302(A051340(∑[n+1]-1))²`
-/

namespace A145552.P12980043505555021113
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051302 (A051340 (∑ j ∈ Finset.range (n + 1), f1 j - 1)).toNat ^ 2

end

end A145552.P12980043505555021113

/-! ## A145552.P12229953982533081760

`record[A051302(A051340(n))]*A051302(n+1)`
-/

namespace A145552.P12229953982533081760
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051302 (A051340 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) * A051302 (n + 1)

end

end A145552.P12229953982533081760

/-!
# A145553: 

The programs for A145553, there is no canonical definition to state claims against.
-/

/-! ## A145553.P9547583373423536336

`sqrt(A145552(n+1))`
-/

namespace A145553.P9547583373423536336
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A145552 (n + 1) : ℝ)

end

end A145553.P9547583373423536336

/-!
# A145554: "Compact" numbers that are neither prime nor a square of a prime; see reference for definition.

The programs for A145554, there is no canonical definition to state claims against.
-/

/-! ## A145554.P7518661809991681594

`∩[A070566(n+1), A226025(n+1)]`
-/

namespace A145554.P7518661809991681594
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070566 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226025 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A145554.P7518661809991681594

/-! ## A145554.P7694797196448640023

`∩[A070566(n+1), A363863(n+1)]`
-/

namespace A145554.P7694797196448640023
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070566 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363863 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A145554.P7694797196448640023

/-! ## A145554.P12662061097892609712

`∩[A070566(n+1), A080257(n+1)]`
-/

namespace A145554.P12662061097892609712
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070566 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080257 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A145554.P12662061097892609712

/-! ## A145554.P15184284539519939534

`∩[A070566(n+1), A348718(n+1)]`
-/

namespace A145554.P15184284539519939534
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070566 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348718 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A145554.P15184284539519939534

/-! ## A145554.P2557306808020140933

`∩[A070566(n+1), A292818(n+1)]`
-/

namespace A145554.P2557306808020140933
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070566 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292818 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A145554.P2557306808020140933

/-!
# A145555: "Trim" numbers that are not prime; see reference for definition.

The programs for A145555, there is no canonical definition to state claims against.
-/

/-! ## A145555.P5435799678560372419

`∩[A079603(n+1), A356441(n+1)]`
-/

namespace A145555.P5435799678560372419
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079603 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356441 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A145555.P5435799678560372419

/-! ## A145555.P5534164775858994542

`∩[A063539(n+1), A079603(n+1)]`
-/

namespace A145555.P5534164775858994542
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063539 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079603 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A145555.P5534164775858994542

/-! ## A145555.P17093343477700905996

`∩[A025583(n+1), A079603(n+1)]`
-/

namespace A145555.P17093343477700905996
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025583 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079603 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A145555.P17093343477700905996

/-! ## A145555.P1742053381087099778

`∩[A079603(n+1), A109934(n+1)]`
-/

namespace A145555.P1742053381087099778
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079603 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109934 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A145555.P1742053381087099778

/-! ## A145555.P7707889455281637762

`∩[A079603(n+1), A164376(n+1)]`
-/

namespace A145555.P7707889455281637762
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079603 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164376 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A145555.P7707889455281637762

/-! ## A145555.P2511706650666112940

`∩[A072492(n+1), A079603(n+1)]`
-/

namespace A145555.P2511706650666112940
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072492 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079603 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A145555.P2511706650666112940

/-!
# A145556: Denominators of partial sums of the alternating series of inverse central binomial coefficients.

The programs for A145556, there is no canonical definition to state claims against.
-/

/-! ## A145556.P15018016406437483401

`A164341(A232444(n+1))`
-/

namespace A145556.P15018016406437483401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164341 (A232444 (n + 1)).toNat

end

end A145556.P15018016406437483401

/-!
# A145560: Denominators of partial sums of a certain alternating series of inverse central binomial coefficients.

The programs for A145560, there is no canonical definition to state claims against.
-/

/-! ## A145560.P510313814983530348

`lcm(A028310(A068875(n)), A130550(n+1))`
-/

namespace A145560.P510313814983530348
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A028310 (A068875 n).toNat) (A130550 (n + 1))

end

end A145560.P510313814983530348

/-! ## A145560.P10843558564298271952

`lcm(A068875(n), A130550(A061219(n+1)))`
-/

namespace A145560.P10843558564298271952
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A068875 n) (A130550 (A061219 (n + 1)).toNat)

end

end A145560.P10843558564298271952

/-! ## A145560.P1780262571731087043

`lcm(A130550(A066492(n+1)), A363152(n))`
-/

namespace A145560.P1780262571731087043
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A130550 (A066492 (n + 1)).toNat) (A363152 n)

end

end A145560.P1780262571731087043

/-!
# A145561: Alternating row sums of triangle A049029 (S2(5)).

The programs for A145561, there is no canonical definition to state claims against.
-/

/-! ## A145561.P6583471586672892530

`A016036(n+1)-A065199(A000272(n))`
-/

namespace A145561.P6583471586672892530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016036 (n + 1) - A065199 (A000272 n).toNat

end

end A145561.P6583471586672892530

/-!
# A145562: Second column (m=2) of triangle A049029 (S2(5)).

The programs for A145562, there is no canonical definition to state claims against.
-/

/-! ## A145562.P15030322805717816515

`A049029(∑[n+1]+2)`
-/

namespace A145562.P15030322805717816515
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049029 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A145562.P15030322805717816515

/-! ## A145562.P5104323555614811966

`∏[a(n-1)+4]+a(n-1)*A016825(n+1)` with `a(0)=1`
-/

namespace A145562.P5104323555614811966
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f1 =>
  f1 (n - 1) + 4

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ((∏ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) + a (n - 1) * A016825 (n + 1)

end

end A145562.P5104323555614811966

/-! ## A145562.P9107479421508064207

`record[A049029(∑[A275437(n)])]`
-/

namespace A145562.P9107479421508064207
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275437 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049029 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A145562.P9107479421508064207

/-! ## A145562.P7334857933716734424

`record[gcd(A049029(n+1), A293134(n))]`
-/

namespace A145562.P7334857933716734424
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A049029 (n + 1)) (A293134 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A145562.P7334857933716734424

/-! ## A145562.P14595450593369551002

`A000407(n)+a(n-1)*A016813(n+1)` with `a(0)=1`
-/

namespace A145562.P14595450593369551002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A000407 n + a (n - 1) * A016813 (n + 1)

end

end A145562.P14595450593369551002

/-! ## A145562.P15845947087836570052

`(n+1)!*A001700(n)+a(n-1)*A016813(n+1)` with `a(0)=1`
-/

namespace A145562.P15845947087836570052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (Nat.factorial (n + 1) : ℤ) * A001700 n + a (n - 1) * A016813 (n + 1)

end

end A145562.P15845947087836570052

/-! ## A145562.P7505676284456077905

`A000108(n+1)/2*(n+2)!+a(n-1)*A016813(n+1)` with `a(0)=1`
-/

namespace A145562.P7505676284456077905
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (A000108 (n + 1) : ℚ) / 2 * (Nat.factorial (n + 2) : ℚ) + a (n - 1) * (A016813 (n + 1) : ℚ)

end

end A145562.P7505676284456077905

/-! ## A145562.P414278887431139971

`A000407(n+1)-A007696(n+2)`
-/

namespace A145562.P414278887431139971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000407 (n + 1) - A007696 (n + 2)

end

end A145562.P414278887431139971

/-! ## A145562.P14362303104643880245

`A087299(2*n+3)-A235136(2*n+3)`
-/

namespace A145562.P14362303104643880245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087299 (2 * n + 3) - A235136 (2 * n + 3)

end

end A145562.P14362303104643880245

/-! ## A145562.P3199211702198076319

`A081407(A016813(n+1))-A007696(n+2)`
-/

namespace A145562.P3199211702198076319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081407 (A016813 (n + 1)).toNat - A007696 (n + 2)

end

end A145562.P3199211702198076319

/-!
# A145563: a(0)=0 and a(n+1) = 3*a(n) + 2^(n+2).

The programs for A145563, the canonical program `A145563.P10240226980197790091` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A145563 has offset 0).

The definition of A145563 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A145563.P10240226980197790091

`4*(3^n-2^n)`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A145563

/-- `4*(3^n-2^n)` -/
def P10240226980197790091.Spec : Prop :=
  ∀ n, P10240226980197790091.a n = A145563 n

theorem P10240226980197790091.correct : P10240226980197790091.Spec := by
  intro n
  simp only [A145563]

end A145563

/-! ## A145563.P16859143987023366956

`5*a(n-1)-6*a(n-2)` with `a(0)=0, a(1)=4`
-/

namespace A145563.P16859143987023366956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 4] fun n a =>
  5 * a (n - 1) - 6 * a (n - 2)

end

end A145563.P16859143987023366956

namespace A145563

/-- `5*a(n-1)-6*a(n-2)` -/
def P16859143987023366956.Spec : Prop :=
  ∀ n, P16859143987023366956.a n = A145563 n

theorem P16859143987023366956.correct : P16859143987023366956.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A145563, Nat.add_sub_cancel, A145563.P16859143987023366956.a, A145563.P10240226980197790091.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A145563, Nat.add_sub_cancel, A145563.P16859143987023366956.a, A145563.P10240226980197790091.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [h1, h2]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A145563

/-! ## A145563.P8736561929281787913

`2*A210448(n)-A056182(n)`
-/

namespace A145563.P8736561929281787913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A210448 n - A056182 n

end

end A145563.P8736561929281787913

namespace A145563

/-- `2*A210448(n)-A056182(n)` -/
def P8736561929281787913.Spec : Prop :=
  ∀ n, P8736561929281787913.a n = A145563 n

end A145563

/-! ## A145563.P15151489058780087324

`(A056182(n)+A245804(n+1))/2`
-/

namespace A145563.P15151489058780087324
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A056182 n + A245804 (n + 1) : ℚ) / 2

end

end A145563.P15151489058780087324

namespace A145563

/-- `(A056182(n)+A245804(n+1))/2` -/
def P15151489058780087324.Spec : Prop :=
  ∀ n, P15151489058780087324.a n = (A145563 n : ℚ)

end A145563

/-! ## A145563.P2161326696649504482

`ogf(4x/(1-5x+6x^2))`
-/

namespace A145563.P2161326696649504482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 4] [1, -5, 6] n

end

end A145563.P2161326696649504482

namespace A145563

/-- `ogf(4x/(1-5x+6x^2))` -/
def P2161326696649504482.Spec : Prop :=
  ∀ n, P2161326696649504482.a n = A145563 n

end A145563

/-! ## A145563.P9897391475243378797

`lcm(4, 3^n-2^n)`
-/

namespace A145563.P9897391475243378797
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 4 ((3 ^ n : ℤ) - (2 ^ n : ℤ))

end

end A145563.P9897391475243378797

namespace A145563

/-- `lcm(4, 3^n-2^n)` -/
def P9897391475243378797.Spec : Prop :=
  ∀ n, (P9897391475243378797.a n : ℤ) = A145563 n

end A145563

/-! ## A145563.P11154341913128970587

`a(n-1)+a(n-1)+a(n-1)+2^(n+1)` with `a(0)=0`
-/

namespace A145563.P11154341913128970587
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) + (a (n - 1) + (a (n - 1) + 2 ^ (n + 1)))

end

end A145563.P11154341913128970587

namespace A145563

/-- `a(n-1)+a(n-1)+a(n-1)+2^(n+1)` -/
def P11154341913128970587.Spec : Prop :=
  ∀ n, (P11154341913128970587.a n : ℤ) = A145563 n

theorem P11154341913128970587.correct : P11154341913128970587.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A145563, Nat.add_sub_cancel, A145563.P11154341913128970587.a, A145563.P10240226980197790091.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A145563, Nat.add_sub_cancel, A145563.P11154341913128970587.a, A145563.P10240226980197790091.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A145563

/-! ## A145563.P18027507898010457265

`A169650(n+1)-3`
-/

namespace A145563.P18027507898010457265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169650 (n + 1) - 3

end

end A145563.P18027507898010457265

namespace A145563

/-- `A169650(n+1)-3` -/
def P18027507898010457265.Spec : Prop :=
  ∀ n, P18027507898010457265.a n = A145563 n

end A145563

/-! ## A145563.P2526457467685400286

`A166060(n)-2^n`
-/

namespace A145563.P2526457467685400286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166060 n - (2 ^ n : ℤ)

end

end A145563.P2526457467685400286

namespace A145563

/-- `A166060(n)-2^n` -/
def P2526457467685400286.Spec : Prop :=
  ∀ n, P2526457467685400286.a n = A145563 n

end A145563

/-! ## A145563.P8680207963365156735

`A102485(n)-3^n`
-/

namespace A145563.P8680207963365156735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102485 n - (3 ^ n : ℤ)

end

end A145563.P8680207963365156735

namespace A145563

/-- `A102485(n)-3^n` -/
def P8680207963365156735.Spec : Prop :=
  ∀ n, P8680207963365156735.a n = A145563 n

end A145563

/-! ## A145563.P18162410614683799274

`A214091(n)+3^(n+1)`
-/

namespace A145563.P18162410614683799274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214091 n + (3 ^ (n + 1) : ℤ)

end

end A145563.P18162410614683799274

namespace A145563

/-- `A214091(n)+3^(n+1)` -/
def P18162410614683799274.Spec : Prop :=
  ∀ n, P18162410614683799274.a n = A145563 n

end A145563

/-! ## A145563.P3236803182136902174

`A003063(n+2)+3^n`
-/

namespace A145563.P3236803182136902174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003063 (n + 2) + (3 ^ n : ℤ)

end

end A145563.P3236803182136902174

namespace A145563

/-- `A003063(n+2)+3^n` -/
def P3236803182136902174.Spec : Prop :=
  ∀ n, P3236803182136902174.a n = A145563 n

end A145563

/-! ## A145563.P9964913802006463177

`∑[2*Δ[A304973(2*n)]]`
-/

namespace A145563.P9964913802006463177
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304973 (2 * n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A145563.P9964913802006463177

namespace A145563

/-- `∑[2*Δ[A304973(2*n)]]` -/
def P9964913802006463177.Spec : Prop :=
  ∀ n, P9964913802006463177.a n = A145563 n

end A145563

/-! ## A145563.P7063692008034678632

`A003946(n+1)-2^(n+2)`
-/

namespace A145563.P7063692008034678632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003946 (n + 1) - (2 ^ (n + 2) : ℤ)

end

end A145563.P7063692008034678632

namespace A145563

/-- `A003946(n+1)-2^(n+2)` -/
def P7063692008034678632.Spec : Prop :=
  ∀ n, P7063692008034678632.a n = A145563 n

end A145563

/-! ## A145563.P10656048359042149535

`A052156(n+2)-2^(n+2)`
-/

namespace A145563.P10656048359042149535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052156 (n + 2) - (2 ^ (n + 2) : ℤ)

end

end A145563.P10656048359042149535

namespace A145563

/-- `A052156(n+2)-2^(n+2)` -/
def P10656048359042149535.Spec : Prop :=
  ∀ n, P10656048359042149535.a n = A145563 n

end A145563

/-! ## A145563.P12762377191506730426

`A025579(n+3)-2^(n+2)`
-/

namespace A145563.P12762377191506730426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025579 (n + 3) - (2 ^ (n + 2) : ℤ)

end

end A145563.P12762377191506730426

namespace A145563

/-- `A025579(n+3)-2^(n+2)` -/
def P12762377191506730426.Spec : Prop :=
  ∀ n, P12762377191506730426.a n = A145563 n

end A145563

/-! ## A145563.P5172437083263300796

`A326339(n+3)-2^(n+2)`
-/

namespace A145563.P5172437083263300796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326339 (n + 3) - (2 ^ (n + 2) : ℤ)

end

end A145563.P5172437083263300796

namespace A145563

/-- `A326339(n+3)-2^(n+2)` -/
def P5172437083263300796.Spec : Prop :=
  ∀ n, P5172437083263300796.a n = A145563 n

end A145563

/-! ## A145563.P6862292118808981694

`A056182(n)+A056182(n)`
-/

namespace A145563.P6862292118808981694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056182 n + A056182 n

end

end A145563.P6862292118808981694

namespace A145563

/-- `A056182(n)+A056182(n)` -/
def P6862292118808981694.Spec : Prop :=
  ∀ n, P6862292118808981694.a n = A145563 n

end A145563

/-! ## A145563.P2014324415165552363

`A210448(n)+A001047(n)`
-/

namespace A145563.P2014324415165552363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210448 n + A001047 n

end

end A145563.P2014324415165552363

namespace A145563

/-- `A210448(n)+A001047(n)` -/
def P2014324415165552363.Spec : Prop :=
  ∀ n, P2014324415165552363.a n = A145563 n

end A145563

/-! ## A145563.P4212100644645904806

`A245804(n)+A027649(n)`
-/

namespace A145563.P4212100644645904806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245804 n + A027649 n

end

end A145563.P4212100644645904806

namespace A145563

/-- `A245804(n)+A027649(n)` -/
def P4212100644645904806.Spec : Prop :=
  ∀ n, P4212100644645904806.a n = A145563 n

end A145563

/-!
# A145565: Denominators of partial sums of a certain series of inverse central binomial coefficients.

The programs for A145565, there is no canonical definition to state claims against.
-/

/-! ## A145565.P12602162780331344268

`record[A248779(n+1)]*A073475(n+1)`
-/

namespace A145565.P12602162780331344268
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248779 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) * A073475 (n + 1)

end

end A145565.P12602162780331344268

/-! ## A145565.P1375357067058309877

`A007407(n+1)*A272636(A136281(n+1))`
-/

namespace A145565.P1375357067058309877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007407 (n + 1) * A272636 (A136281 (n + 1)).toNat

end

end A145565.P1375357067058309877

/-!
# A145568: Characteristic function of numbers relatively prime to 11.

The programs for A145568, the canonical program `A145568.P17515657128713351984` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A145568 has offset 0).

The definition of A145568 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A145568.P17515657128713351984

`(n^10)%11`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A145568

/-- `(n^10)%11` -/
def P17515657128713351984.Spec : Prop :=
  ∀ n, (P17515657128713351984.a n : ℤ) = A145568 n

theorem P17515657128713351984.correct : P17515657128713351984.Spec := by
  intro n
  simp only [A145568]

end A145568

/-!
# A145569: Multiples of 6 appear in pairs.

The programs for A145569, the canonical program `A145569.P12552234012801179723` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A145569 has offset 0).

The definition of A145569 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A145569.P12552234012801179723

`ceil(6*n/7)`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A145569

/-- `ceil(6*n/7)` -/
def P12552234012801179723.Spec : Prop :=
  ∀ n, P12552234012801179723.a n = A145569 n

theorem P12552234012801179723.correct : P12552234012801179723.Spec := by
  intro n
  simp only [A145569]

end A145569

/-! ## A145569.P16639981306744265670

`∑[(n^6)%7]`
-/

namespace A145569.P16639981306744265670
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 6 % 7

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A145569.P16639981306744265670

namespace A145569

/-- `∑[(n^6)%7]` -/
def P16639981306744265670.Spec : Prop :=
  ∀ n, (P16639981306744265670.a n : ℤ) = A145569 n

end A145569

/-! ## A145569.P391609374196949912

`∑[round(atan(n%7))]`
-/

namespace A145569.P391609374196949912
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.arctan ((n % 7 : ℕ) : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A145569.P391609374196949912

namespace A145569

/-- `∑[round(atan(n%7))]` -/
def P391609374196949912.Spec : Prop :=
  ∀ n, P391609374196949912.a n = A145569 n

end A145569

/-! ## A145569.P10425125158599130641

`∑[char[comp[lcm(7, n)]]]`
-/

namespace A145569.P10425125158599130641
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 7 n

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ x) n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A145569.P10425125158599130641

namespace A145569

/-- `∑[char[comp[lcm(7, n)]]]` -/
def P10425125158599130641.Spec : Prop :=
  ∀ n, (P10425125158599130641.a n : ℤ) = A145569 n

end A145569

/-! ## A145569.P7699999085432450156

`∑[(gcd(7, n)%7)²]`
-/

namespace A145569.P7699999085432450156
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (Nat.gcd 7 n % 7) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A145569.P7699999085432450156

namespace A145569

/-- `∑[(gcd(7, n)%7)²]` -/
def P7699999085432450156.Spec : Prop :=
  ∀ n, (P7699999085432450156.a n : ℤ) = A145569 n

end A145569

/-! ## A145569.P4003313484287540117

`2*n-comp[or(7, n)]`
-/

namespace A145569.P4003313484287540117
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 7 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) - (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ)

end

end A145569.P4003313484287540117

namespace A145569

/-- `2*n-comp[or(7, n)]` -/
def P4003313484287540117.Spec : Prop :=
  ∀ n, P4003313484287540117.a n = A145569 n

end A145569

/-! ## A145569.P6021070212942290698

`∑[ceil(tanh((2*n)%7))]`
-/

namespace A145569.P6021070212942290698
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.tanh ((2 * n % 7 : ℕ) : ℝ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A145569.P6021070212942290698

namespace A145569

/-- `∑[ceil(tanh((2*n)%7))]` -/
def P6021070212942290698.Spec : Prop :=
  ∀ n, P6021070212942290698.a n = A145569 n

end A145569

/-! ## A145569.P2598477994114004856

`comp[2*n]%comp[8*n]`
-/

namespace A145569.P2598477994114004856
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8 * n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n % SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

end

end A145569.P2598477994114004856

namespace A145569

/-- `comp[2*n]%comp[8*n]` -/
def P2598477994114004856.Spec : Prop :=
  ∀ n, (P2598477994114004856.a n : ℤ) = A145569 n

end A145569

/-! ## A145569.P12237187508826190312

`n-floor(a(n-1)/6)` with `a(0)=0`
-/

namespace A145569.P12237187508826190312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  (n : ℤ) - ⌊(a (n - 1) : ℚ) / 6⌋

end

end A145569.P12237187508826190312

namespace A145569

/-- `n-floor(a(n-1)/6)` -/
def P12237187508826190312.Spec : Prop :=
  ∀ n, P12237187508826190312.a n = A145569 n

end A145569

/-! ## A145569.P13922603661479895860

`2*n-lt[val(n+1, 2), 3]`
-/

namespace A145569.P13922603661479895860
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (n + 1) 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) - (SequenceMachineLib.nth (fun j => f1 j < f2 j) n : ℤ)

end

end A145569.P13922603661479895860

namespace A145569

/-- `2*n-lt[val(n+1, 2), 3]` -/
def P13922603661479895860.Spec : Prop :=
  ∀ n, P13922603661479895860.a n = A145569 n

end A145569

/-! ## A145569.P12491864941832067748

`2*n-lt[and(n, -(n+2)), 4]`
-/

namespace A145569.P12491864941832067748
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) (-(n + 2 : ℤ))

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) - (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n : ℤ)

end

end A145569.P12491864941832067748

namespace A145569

/-- `2*n-lt[and(n, -(n+2)), 4]` -/
def P12491864941832067748.Spec : Prop :=
  ∀ n, P12491864941832067748.a n = A145569 n

end A145569

/-! ## A145569.P1507914558311250057

`n-∑[char[∑[7-a(n-1)]]]` with `a(0)=7`
-/

namespace A145569.P1507914558311250057
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.rec [7] fun n f3 =>
  7 - f3 (n - 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A145569.P1507914558311250057

namespace A145569

/-- `n-∑[char[∑[7-a(n-1)]]]` -/
def P1507914558311250057.Spec : Prop :=
  ∀ n, P1507914558311250057.a n = A145569 n

end A145569

/-! ## A145569.P10297460873432835923

`∑[A109720(n)]`
-/

namespace A145569.P10297460873432835923
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109720 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A145569.P10297460873432835923

namespace A145569

/-- `∑[A109720(n)]` -/
def P10297460873432835923.Spec : Prop :=
  ∀ n, P10297460873432835923.a n = A145569 n

end A145569

/-! ## A145569.P13095130105384972996

`∑[abs(A175629(n))]`
-/

namespace A145569.P13095130105384972996
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A175629 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A145569.P13095130105384972996

namespace A145569

/-- `∑[abs(A175629(n))]` -/
def P13095130105384972996.Spec : Prop :=
  ∀ n, P13095130105384972996.a n = A145569 n

end A145569

/-! ## A145569.P2089457954544677352

`∑[1-A082784(n)]`
-/

namespace A145569.P2089457954544677352
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A082784 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A145569.P2089457954544677352

namespace A145569

/-- `∑[1-A082784(n)]` -/
def P2089457954544677352.Spec : Prop :=
  ∀ n, P2089457954544677352.a n = A145569 n

end A145569

/-! ## A145569.P17452126825819390114

`n-A132270(n+1)`
-/

namespace A145569.P17452126825819390114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A132270 (n + 1)

end

end A145569.P17452126825819390114

namespace A145569

/-- `n-A132270(n+1)` -/
def P17452126825819390114.Spec : Prop :=
  ∀ n, P17452126825819390114.a n = A145569 n

end A145569

/-! ## A145569.P7036759891874789961

`∑[1-∑[A014016(n)]]`
-/

namespace A145569.P7036759891874789961
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014016 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A145569.P7036759891874789961

namespace A145569

/-- `∑[1-∑[A014016(n)]]` -/
def P7036759891874789961.Spec : Prop :=
  ∀ n, P7036759891874789961.a n = A145569 n

end A145569

/-! ## A145569.P11226935269130065097

`∑[char[A047304(n+1)]]`
-/

namespace A145569.P11226935269130065097
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047304 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A145569.P11226935269130065097

namespace A145569

/-- `∑[char[A047304(n+1)]]` -/
def P11226935269130065097.Spec : Prop :=
  ∀ n, (P11226935269130065097.a n : ℤ) = A145569 n

end A145569

/-! ## A145569.P9253010892004963533

`∑[char[A242603(n+1)]]`
-/

namespace A145569.P9253010892004963533
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242603 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A145569.P9253010892004963533

namespace A145569

/-- `∑[char[A242603(n+1)]]` -/
def P9253010892004963533.Spec : Prop :=
  ∀ n, (P9253010892004963533.a n : ℤ) = A145569 n

end A145569

/-! ## A145569.P4402148297060823543

`2*n-A004777(n+1)`
-/

namespace A145569.P4402148297060823543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) - A004777 (n + 1)

end

end A145569.P4402148297060823543

namespace A145569

/-- `2*n-A004777(n+1)` -/
def P4402148297060823543.Spec : Prop :=
  ∀ n, P4402148297060823543.a n = A145569 n

end A145569

/-!
# A145573: Characteristic partition array for partitions without part 1.

The programs for A145573, there is no canonical definition to state claims against.
-/

/-! ## A145573.P13994961239374669504

`A185974(n+1)%2`
-/

namespace A145573.P13994961239374669504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A185974 (n + 1)) 2

end

end A145573.P13994961239374669504

/-! ## A145573.P11805776789299710920

`A344122(n+3)²%3`
-/

namespace A145573.P11805776789299710920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A344122 (n + 3) ^ 2) 3

end

end A145573.P11805776789299710920

/-! ## A145573.P2396606508453513930

`and(1, A185974(abs(1-n)+2))`
-/

namespace A145573.P2396606508453513930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A185974 (|1 - (n : ℤ)| + 2).toNat)

end

end A145573.P2396606508453513930

/-! ## A145573.P13372160145062037177

`(A185974(n-log2(1/2))%2)²`
-/

namespace A145573.P13372160145062037177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A185974 (SequenceMachineLib.roundAway ((n : ℝ) - Real.logb 2 ((1 : ℚ) / 2 : ℝ))).toNat) 2 ^ 2

end

end A145573.P13372160145062037177

/-! ## A145573.P12576459628558005321

`A000035(A185974(n+1))`
-/

namespace A145573.P12576459628558005321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A185974 (n + 1)).toNat

end

end A145573.P12576459628558005321

/-! ## A145573.P10666027747135684214

`A004218(A335124(n+1))`
-/

namespace A145573.P10666027747135684214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004218 (A335124 (n + 1)).toNat

end

end A145573.P10666027747135684214

/-! ## A145573.P16572595943668160158

`A319988(A334434(n+1))`
-/

namespace A145573.P16572595943668160158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319988 (A334434 (n + 1)).toNat

end

end A145573.P16572595943668160158

/-! ## A145573.P11551917495128511029

`A059841(A185974(n+1)+1)`
-/

namespace A145573.P11551917495128511029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059841 (A185974 (n + 1) + 1).toNat

end

end A145573.P11551917495128511029

/-! ## A145573.P4857999226888783712

`A097325(3*A185974(n+1))`
-/

namespace A145573.P4857999226888783712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097325 (3 * A185974 (n + 1)).toNat

end

end A145573.P4857999226888783712

/-! ## A145573.P2380364845579337779

`A120325(A344122(n+3)/2)`
-/

namespace A145573.P2380364845579337779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120325 (SequenceMachineLib.roundAway ((A344122 (n + 3) : ℚ) / 2)).toNat

end

end A145573.P2380364845579337779

/-! ## A145573.P4002365519988123497

`A000045(and(1, -A185974(n+1)))`
-/

namespace A145573.P4002365519988123497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (Int.land 1 (-A185974 (n + 1))).toNat

end

end A145573.P4002365519988123497

/-! ## A145573.P9932179346788809331

`A176725(and(1, -A185974(n+1)))`
-/

namespace A145573.P9932179346788809331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176725 (Int.land 1 (-A185974 (n + 1))).toNat

end

end A145573.P9932179346788809331

/-! ## A145573.P13358511250465221362

`A020639(3*A185974(n+1))-2`
-/

namespace A145573.P13358511250465221362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (3 * A185974 (n + 1)).toNat - 2

end

end A145573.P13358511250465221362

/-!
# A145574: Array a(n,m) for number of partitions of n>=2 with m parts having no part 1. Hence m=1..floor(n/2).

The programs for A145574, there is no canonical definition to state claims against.
-/

/-! ## A145574.P3577252359199314286

`A008284(A056536(n+1))`
-/

namespace A145574.P3577252359199314286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008284 (A056536 (n + 1)).toNat

end

end A145574.P3577252359199314286

/-! ## A145574.P10005794490486509223

`A008284(A091018(n)+1)`
-/

namespace A145574.P10005794490486509223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008284 (A091018 n + 1).toNat

end

end A145574.P10005794490486509223

/-! ## A145574.P699100715660830199

`A106254(A091018(n+1))`
-/

namespace A145574.P699100715660830199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106254 (A091018 (n + 1)).toNat

end

end A145574.P699100715660830199

/-! ## A145574.P6785732253307887430

`A143654(lt[A104781(2*n+3), A143683(2*n+3)])`
-/

namespace A145574.P6785732253307887430
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104781 (2 * n + 3)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143683 (2 * n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143654 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A145574.P6785732253307887430

/-!
# A145575: Characteristic partition array for partitions with distinct parts.

The programs for A145575, there is no canonical definition to state claims against.
-/

/-! ## A145575.P9846228086234602400

`A096162(n+1)%2`
-/

namespace A145575.P9846228086234602400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A096162 (n + 1)) 2

end

end A145575.P9846228086234602400

/-! ## A145575.P5234699733748631556

`∏{e}[A185974(n+1), #!]%2`
-/

namespace A145575.P5234699733748631556
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185974 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∏ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorial (Nat.factorization (f1 n).natAbs p)) % 2

end

end A145575.P5234699733748631556

/-! ## A145575.P11412846452894306991

`A008966(A185974(n+1))`
-/

namespace A145575.P11412846452894306991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008966 (A185974 (n + 1)).toNat

end

end A145575.P11412846452894306991

/-! ## A145575.P8521752686966853070

`A008966(A334438(n+1))`
-/

namespace A145575.P8521752686966853070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008966 (A334438 (n + 1)).toNat

end

end A145575.P8521752686966853070

/-! ## A145575.P18276540232159315028

`A341629(A334434(n+1))`
-/

namespace A145575.P18276540232159315028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341629 (A334434 (n + 1)).toNat

end

end A145575.P18276540232159315028

/-! ## A145575.P7011470153386890485

`∑{d}[A185974(n+1), A271102(#)]`
-/

namespace A145575.P7011470153386890485
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185974 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A271102 d

end

end A145575.P7011470153386890485

/-! ## A145575.P3201204441533086990

`A008683(61*A185974(n+1))²`
-/

namespace A145575.P3201204441533086990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (61 * A185974 (n + 1)).toNat ^ 2

end

end A145575.P3201204441533086990

/-! ## A145575.P4049949011735355540

`∑{d}[A185974(n+1), A007427(#)]²`
-/

namespace A145575.P4049949011735355540
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185974 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ d ∈ Nat.divisors (f1 n).natAbs, A007427 d) ^ 2

end

end A145575.P4049949011735355540

/-! ## A145575.P14396990342634771419

`∏{d}[A185974(n+1), A008683(#)²]`
-/

namespace A145575.P14396990342634771419
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185974 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n).natAbs, A008683 d ^ 2

end

end A145575.P14396990342634771419

/-! ## A145575.P15103022813626737848

`A014028(∏{e}[A185974(n+1), #])²`
-/

namespace A145575.P15103022813626737848
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185974 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014028 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p) ^ 2

end

end A145575.P15103022813626737848

/-! ## A145575.P16082171904334848426

`∏{e}[A185974(n+1)², A257000(#)]`
-/

namespace A145575.P16082171904334848426
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185974 (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A257000 (Nat.factorization (f1 n).natAbs p)

end

end A145575.P16082171904334848426

/-! ## A145575.P17373790390315266078

`A008683(A185974(4/2-(1-n)))²`
-/

namespace A145575.P17373790390315266078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A185974 (SequenceMachineLib.roundAway ((4 : ℚ) / 2 - (1 - (n : ℤ) : ℚ))).toNat).toNat ^ 2

end

end A145575.P17373790390315266078

/-! ## A145575.P13475104730750370660

`A008683(A185974(n-log2(1/2)))^4`
-/

namespace A145575.P13475104730750370660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A185974 (SequenceMachineLib.roundAway ((n : ℝ) - Real.logb 2 ((1 : ℚ) / 2 : ℝ))).toNat).toNat ^ 4

end

end A145575.P13475104730750370660

/-! ## A145575.P16350853639264826652

`floor(A036040(n+1)/A036038(n+1))`
-/

namespace A145575.P16350853639264826652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A036040 (n + 1) : ℚ) / (A036038 (n + 1) : ℚ)⌋

end

end A145575.P16350853639264826652

/-! ## A145575.P7542730679085971618

`A007814(p?[A100549(A185974(n))])`
-/

namespace A145575.P7542730679085971618
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100549 (A185974 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A145575.P7542730679085971618

/-! ## A145575.P7112366508335640093

`(A008683(A185974(n+1))^A000041(n))²`
-/

namespace A145575.P7112366508335640093
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A008683 (A185974 (n + 1)).toNat : ℚ) ^ (A000041 n : ℤ)) ^ 2

end

end A145575.P7112366508335640093

/-! ## A145575.P7084109524209200321

`(A008683(A185974(n+1))^A007318(n))²`
-/

namespace A145575.P7084109524209200321
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A008683 (A185974 (n + 1)).toNat : ℚ) ^ (A007318 n : ℤ)) ^ 2

end

end A145575.P7084109524209200321

/-! ## A145575.P14556950554670311409

`(A008683(A185974(n+1))^A000040(n+1))²`
-/

namespace A145575.P14556950554670311409
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A008683 (A185974 (n + 1)).toNat : ℚ) ^ (A000040 (n + 1) : ℤ)) ^ 2

end

end A145575.P14556950554670311409

/-! ## A145575.P5405908597073644899

`(A008683(A185974(n+1))^A000217(n+6))²`
-/

namespace A145575.P5405908597073644899
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A008683 (A185974 (n + 1)).toNat : ℚ) ^ (A000217 (n + 6) : ℤ)) ^ 2

end

end A145575.P5405908597073644899

/-!
# A145576: a(n) is the smallest prime with both exactly an n number of 0's and exactly an n number of 1's in its binary representation. a(n) = 0 if no such prime exists.

The programs for A145576, there is no canonical definition to state claims against.
-/

/-! ## A145576.P7829757796460560416

`gcd(1-n, floor(n/2))*A089213(A322492(n+1))`
-/

namespace A145576.P7829757796460560416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.gcd (1 - (n : ℤ)) ⌊(n : ℚ) / 2⌋ : ℤ) * A089213 (A322492 (n + 1)).toNat

end

end A145576.P7829757796460560416

/-!
# A145577: Period 9: repeat [0, 5, 7, 6, 2, 4, 3, 8, 1].

The programs for A145577, the canonical program `A145577.P3173270088268690248` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A145577 has offset 0).

The definition of A145577 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A145577.P3173270088268690248

`a(n-9)` with `a(0)=0, a(1)=5, a(2)=7, a(3)=6, a(4)=2, a(5)=4, a(6)=3, a(7)=8, a(8)=1`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A145577

/-- `a(n-9)` -/
def P3173270088268690248.Spec : Prop :=
  ∀ n, (P3173270088268690248.a n : ℤ) = A145577 n

theorem P3173270088268690248.correct : P3173270088268690248.Spec := by
  intro n
  simp only [A145577]

end A145577

/-!
# A145579: Eigentriangle, row sums = A001590.

The programs for A145579, there is no canonical definition to state claims against.
-/

/-! ## A145579.P4945426463326567623

`A254379(A265075(n))+A144027(n+1)`
-/

namespace A145579.P4945426463326567623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254379 (A265075 n).toNat + A144027 (n + 1)

end

end A145579.P4945426463326567623

/-! ## A145579.P8457346969092799385

`A286049(A059024(n+5))+A144027(n+1)`
-/

namespace A145579.P8457346969092799385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286049 (A059024 (n + 5)).toNat + A144027 (n + 1)

end

end A145579.P8457346969092799385

/-! ## A145579.P6417513355093706759

`or(A129251(A344615(n+3)), A144027(n+1))`
-/

namespace A145579.P6417513355093706759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A129251 (A344615 (n + 3)).toNat) (A144027 (n + 1))

end

end A145579.P6417513355093706759

/-! ## A145579.P13977353850662089436

`or(A129251(A344615(n+3)), A144219(n+1))`
-/

namespace A145579.P13977353850662089436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A129251 (A344615 (n + 3)).toNat) (A144219 (n + 1))

end

end A145579.P13977353850662089436

/-!
# A145580: Eigentriangle, row sums = A000930.

The programs for A145580, there is no canonical definition to state claims against.
-/

/-! ## A145580.P4819374270918323408

`A144082(n)+A121310(A130321(n))`
-/

namespace A145580.P4819374270918323408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144082 n + A121310 (A130321 n).toNat

end

end A145580.P4819374270918323408

/-! ## A145580.P7966261126488899709

`A130028(A119502(n))*A144082(n)`
-/

namespace A145580.P7966261126488899709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130028 (A119502 n).toNat * A144082 n

end

end A145580.P7966261126488899709

/-! ## A145580.P9599485938643389507

`A144082(n)*A144093(A140303(n))`
-/

namespace A145580.P9599485938643389507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144082 n * A144093 (A140303 n).toNat

end

end A145580.P9599485938643389507

/-! ## A145580.P12213644445995617135

`A144082(n)*A144092(A143965(n))`
-/

namespace A145580.P12213644445995617135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144082 n * A144092 (A143965 n).toNat

end

end A145580.P12213644445995617135

/-! ## A145580.P1793224212856177491

`A144082(lcm(n, A171616(A102391(n))))`
-/

namespace A145580.P1793224212856177491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144082 (Int.lcm (n : ℤ) (A171616 (A102391 n).toNat))

end

end A145580.P1793224212856177491

/-!
# A145593: Inverse binomial transform of A144472.

The programs for A145593, the canonical program `A145593.P449486746853374554` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A145593 has offset 0).

The definition of A145593 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A145593.P449486746853374554

`(5*2^n/3-9/2)*(-1)^n+11/6`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A145593

/-- `(5*2^n/3-9/2)*(-1)^n+11/6` -/
def P449486746853374554.Spec : Prop :=
  ∀ n, P449486746853374554.a n = (A145593 n : ℚ)

end A145593

/-! ## A145593.P12217085259557087985

`(A140359(n)-4/gcd(2, n))/(-1)^n`
-/

namespace A145593.P12217085259557087985
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A140359 n : ℚ) - 4 / (Nat.gcd 2 n : ℚ)) / ((-1) ^ n : ℚ)

end

end A145593.P12217085259557087985

namespace A145593

/-- `(A140359(n)-4/gcd(2, n))/(-1)^n` -/
def P12217085259557087985.Spec : Prop :=
  ∀ n, P12217085259557087985.a n = (A145593 n : ℚ)

end A145593

/-!
# A145594: a(n) = A145593(n) mod 9.

The programs for A145594, the canonical program `A145594.P16446926519097353700` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A145594 has offset 0).

The definition of A145594 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A145594.P16446926519097353700

`(2^gcd(3, n)+n)%9`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A145594

/-- `(2^gcd(3, n)+n)%9` -/
def P16446926519097353700.Spec : Prop :=
  ∀ n, (P16446926519097353700.a n : ℤ) = A145594 n

theorem P16446926519097353700.correct : P16446926519097353700.Spec := by
  intro n
  simp only [A145594]

end A145594

/-!
# A145595: 

The programs for A145595, there is no canonical definition to state claims against.
-/

/-! ## A145595.P1514836111031579010

`10^n!`
-/

namespace A145595.P1514836111031579010
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10 ^ Nat.factorial n

end

end A145595.P1514836111031579010

/-!
# A145596: Triangular array of generalized Narayana numbers: T(n, k) = 2*binomial(n + 1, k + 1)*binomial(n + 1, k - 1)/(n + 1).

The programs for A145596, there is no canonical definition to state claims against.
-/

/-! ## A145596.P11940905263148101592

`2/A003057(n+2)*A348539(n)`
-/

namespace A145596.P11940905263148101592
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 / (A003057 (n + 2) : ℚ) * (A348539 n : ℚ)

end

end A145596.P11940905263148101592

/-! ## A145596.P8020913084740068219

`A002024(n+1)/A001263(n+1)*A142470(n)`
-/

namespace A145596.P8020913084740068219
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002024 (n + 1) : ℚ) / (A001263 (n + 1) : ℚ) * (A142470 n : ℚ)

end

end A145596.P8020913084740068219

/-! ## A145596.P6879155529138858830

`A119308(A007401(n+1))-A001263(A014132(n+1))`
-/

namespace A145596.P6879155529138858830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119308 (A007401 (n + 1)).toNat - A001263 (A014132 (n + 1)).toNat

end

end A145596.P6879155529138858830

/-! ## A145596.P6361162131244787569

`A005843(A348539(n))/A003057(n+2)`
-/

namespace A145596.P6361162131244787569
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005843 (A348539 n).toNat : ℚ) / (A003057 (n + 2) : ℚ)

end

end A145596.P6361162131244787569

/-! ## A145596.P10236264158464953817

`A005843(A348539(n))/(A003056(n)+2)`
-/

namespace A145596.P10236264158464953817
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005843 (A348539 n).toNat : ℚ) / (A003056 n + 2 : ℚ)

end

end A145596.P10236264158464953817

/-!
# A145597: Generalized Narayana numbers, T(n, k) = 3/(n + 1)*binomial(n + 1, k + 2)*binomial(n + 1, k - 1), triangular array read by rows.

The programs for A145597, there is no canonical definition to state claims against.
-/

/-! ## A145597.P851099836553213604

`A143418(n+1)-A025469(A091513(2*n+5))`
-/

namespace A145597.P851099836553213604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143418 (n + 1) - A025469 (A091513 (2 * n + 5)).toNat

end

end A145597.P851099836553213604

/-! ## A145597.P3717460517587314069

`A143418(n+1)-A025456(A194265(n+1))`
-/

namespace A145597.P3717460517587314069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143418 (n + 1) - A025456 (A194265 (n + 1)).toNat

end

end A145597.P3717460517587314069

/-! ## A145597.P16855874525063573998

`A143418(n+1)-A185284(A296320(n+1))`
-/

namespace A145597.P16855874525063573998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143418 (n + 1) - A185284 (A296320 (n + 1)).toNat

end

end A145597.P16855874525063573998

/-! ## A145597.P14118331533210729771

`A065420(n)/2-A025456(A194265(n+1))`
-/

namespace A145597.P14118331533210729771
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A065420 n : ℚ) / 2 - (A025456 (A194265 (n + 1)).toNat : ℚ)

end

end A145597.P14118331533210729771

/-! ## A145597.P3751853739362596606

`C(A014430(n)+1, 2)-A025456(A194265(n+1))`
-/

namespace A145597.P3751853739362596606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (A014430 n + 1).toNat 2 : ℤ) - A025456 (A194265 (n + 1)).toNat

end

end A145597.P3751853739362596606

/-!
# A145599: Triangular array of generalized Narayana numbers: T(n,k) = 5/(n+1)*binomial(n+1,k+4)*binomial(n+1,k-1).

The programs for A145599, there is no canonical definition to state claims against.
-/

/-! ## A145599.P18244072579811032201

`A135042(A302965(n+1)%A219006(n+1))`
-/

namespace A145599.P18244072579811032201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135042 (Int.tmod (A302965 (n + 1)) (A219006 (n + 1))).toNat

end

end A145599.P18244072579811032201

