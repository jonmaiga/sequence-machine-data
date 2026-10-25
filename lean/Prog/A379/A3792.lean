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
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C020
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
import Seq.B000.C038
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
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C003
import Seq.B002.C005
import Seq.B002.C006
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B003.C004
import Seq.B004.C000
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
# A379201: Column 1 of triangle A379200; a(n) = A379200(n,1) for n >= 2.

The programs for A379201, there is no canonical definition to state claims against.
-/

/-! ## A379201.P6896956183763376674

`A379200(∑[n+1]+2)`
-/

namespace A379201.P6896956183763376674
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379200 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A379201.P6896956183763376674

/-! ## A379201.P6451544499357072843

`A001651(A180632(n)+A025192(n))`
-/

namespace A379201.P6451544499357072843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001651 (A180632 n + A025192 n).toNat

end

end A379201.P6451544499357072843

/-!
# A379202: G.f. A(x) satisfies 1/x = Sum_{n=-oo..+oo} A(x)^n * (A(x)^n + 2)^(n+1).

The programs for A379202, there is no canonical definition to state claims against.
-/

/-! ## A379202.P13404271104677053331

`A289139(A063090(n+1)+1)`
-/

namespace A379202.P13404271104677053331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289139 (A063090 (n + 1) + 1).toNat

end

end A379202.P13404271104677053331

/-!
# A379206: Central terms of triangle A379200; a(n) = A379200(2*n-1,n-1) for n >= 1.

The programs for A379206, there is no canonical definition to state claims against.
-/

/-! ## A379206.P7527835131910537934

`A379200((n+1)²+n²)`
-/

namespace A379206.P7527835131910537934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379200 ((n + 1) ^ 2 + n ^ 2)

end

end A379206.P7527835131910537934

/-! ## A379206.P1018523116582387710

`A379200(A001844(n))+A025439(n)`
-/

namespace A379206.P1018523116582387710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379200 (A001844 n).toNat + A025439 n

end

end A379206.P1018523116582387710

/-! ## A379206.P18035926331863029141

`A379200(A001844(n))%A350994(n)`
-/

namespace A379206.P18035926331863029141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A379200 (A001844 n).toNat) (A350994 n)

end

end A379206.P18035926331863029141

/-! ## A379206.P13445094237714972900

`A011655(3*n+1)*A379200(A001844(n))`
-/

namespace A379206.P13445094237714972900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011655 (3 * n + 1) * A379200 (A001844 n).toNat

end

end A379206.P13445094237714972900

/-!
# A379207: a(n) = 2*prime(n+1) - (prime(n+1) - prime(n))^2.

The programs for A379207, the canonical program `A379207.P6401559853883997636` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A379207 has offset 1).

The definition of A379207 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001223, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A379207.P6401559853883997636

`2*A000040(n+2)-A001223(n+1)²`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A379207

/-- `2*A000040(n+2)-A001223(n+1)²` -/
def P6401559853883997636.Spec : Prop :=
  ∀ n, P6401559853883997636.a n = A379207 (n + 1)

theorem P6401559853883997636.correct : P6401559853883997636.Spec := by
  intro n
  simp only [A379207, Nat.add_sub_cancel]

end A379207

/-! ## A379207.P2947985908837733843

`A072055(n+1)-A046933(n+1)²`
-/

namespace A379207.P2947985908837733843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072055 (n + 1) - A046933 (n + 1) ^ 2

end

end A379207.P2947985908837733843

namespace A379207

/-- `A072055(n+1)-A046933(n+1)²` -/
def P2947985908837733843.Spec : Prop :=
  ∀ n, P2947985908837733843.a n = A379207 (n + 1)

theorem P2947985908837733843.correct : P2947985908837733843.Spec := by
  intro n
  simp only [A379207, Nat.add_sub_cancel, A379207.P2947985908837733843.a, A379207.P6401559853883997636.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A001223, A001223.P5083310856331133973.a, A046933, A046933.P9479947770746769512.a, A072055, A072055.P6834316123461544049.a, A089241, A089241.P4698073971912800570.a, A008864, A008864.P9177617808325052279.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A379207

/-! ## A379207.P12110913600738757711

`A100484(n+2)-A001223(n+1)²`
-/

namespace A379207.P12110913600738757711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100484 (n + 2) - A001223 (n + 1) ^ 2

end

end A379207.P12110913600738757711

namespace A379207

/-- `A100484(n+2)-A001223(n+1)²` -/
def P12110913600738757711.Spec : Prop :=
  ∀ n, P12110913600738757711.a n = A379207 (n + 1)

end A379207

/-! ## A379207.P17566482540638832871

`A100484(n+2)-A054541(n+2)²`
-/

namespace A379207.P17566482540638832871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100484 (n + 2) - A054541 (n + 2) ^ 2

end

end A379207.P17566482540638832871

namespace A379207

/-- `A100484(n+2)-A054541(n+2)²` -/
def P17566482540638832871.Spec : Prop :=
  ∀ n, P17566482540638832871.a n = A379207 (n + 1)

end A379207

/-! ## A379207.P17753703636291517888

`Δ[A001248(n+1)]%A100484(n+2)`
-/

namespace A379207.P17753703636291517888
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001248 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (n + 1) - f1 n) (A100484 (n + 2))

end

end A379207.P17753703636291517888

namespace A379207

/-- `Δ[A001248(n+1)]%A100484(n+2)` -/
def P17753703636291517888.Spec : Prop :=
  ∀ n, P17753703636291517888.a n = A379207 (n + 1)

end A379207

/-! ## A379207.P15636373479886306722

`A000040(n+2)+A000040(n+2)-A076821(n+1)`
-/

namespace A379207.P15636373479886306722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 2) + (A000040 (n + 2) - A076821 (n + 1))

end

end A379207.P15636373479886306722

namespace A379207

/-- `A000040(n+2)+A000040(n+2)-A076821(n+1)` -/
def P15636373479886306722.Spec : Prop :=
  ∀ n, P15636373479886306722.a n = A379207 (n + 1)

end A379207

/-! ## A379207.P8062480159163371601

`A069482(n+1)%A196226(n+1)`
-/

namespace A379207.P8062480159163371601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A069482 (n + 1)) (A196226 (n + 1))

end

end A379207.P8062480159163371601

namespace A379207

/-- `A069482(n+1)%A196226(n+1)` -/
def P8062480159163371601.Spec : Prop :=
  ∀ n, P8062480159163371601.a n = A379207 (n + 1)

end A379207

/-!
# A379208: Numbers k such that prime(k) and prime(k) + 9 are anagrams.

The programs for A379208, the canonical program `A379208.P17735300703008624525` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A379208 has offset 1).

The definition of A379208 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 157 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A379208.P17735300703008624525

`A297113(∩[A000040(n+1), A228157(n+1)])`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A379208

/-- `A297113(∩[A000040(n+1), A228157(n+1)])` -/
def P17735300703008624525.Spec : Prop :=
  ∀ n, P17735300703008624525.a n = A379208 (n + 1)

theorem P17735300703008624525.correct : P17735300703008624525.Spec := by
  intro n
  simp only [A379208, Nat.add_sub_cancel]

end A379208

/-! ## A379208.P3681355102108335457

`A297113(∩[A065091(n+1), A228157(n+1)])`
-/

namespace A379208.P3681355102108335457
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228157 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297113 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n)

end

end A379208.P3681355102108335457

namespace A379208

/-- `A297113(∩[A065091(n+1), A228157(n+1)])` -/
def P3681355102108335457.Spec : Prop :=
  ∀ n, P3681355102108335457.a n = A379208 (n + 1)

end A379208

/-!
# A379209: G.f. A(x) satisfies A(x) = 1/((1 - x*A(x)^2) * (1 - x*A(x))).

The programs for A379209, there is no canonical definition to state claims against.
-/

/-! ## A379209.P15905885045346662052

`A190738(n)/(n+1)`
-/

namespace A379209.P15905885045346662052
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A190738 n : ℚ) / (n + 1 : ℚ)

end

end A379209.P15905885045346662052

/-!
# A379210: List of integers of the form (N^2 - 4)/15.

The programs for A379210, the canonical program `A379210.P10174881561105759051` is in `Seq.B002.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A379210 has offset 1).

The definition of A379210 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A379210.P10174881561105759051

`A036666(n+1)+A074378(n)-A219391(n+1)`

The canonical program, it is in `Seq.B002.C006`.
-/

namespace A379210

/-- `A036666(n+1)+A074378(n)-A219391(n+1)` -/
def P10174881561105759051.Spec : Prop :=
  ∀ n, P10174881561105759051.a n = A379210 (n + 1)

theorem P10174881561105759051.correct : P10174881561105759051.Spec := by
  intro n
  simp only [A379210, Nat.add_sub_cancel]

end A379210

/-! ## A379210.P1110276648527351582

`A195162(ceil(3*n/2))/3`
-/

namespace A379210.P1110276648527351582
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A195162 ⌈3 * ((n : ℚ) / 2)⌉.toNat : ℚ) / 3

end

end A379210.P1110276648527351582

namespace A379210

/-- `A195162(ceil(3*n/2))/3` -/
def P1110276648527351582.Spec : Prop :=
  ∀ n, P1110276648527351582.a n = (A379210 (n + 1) : ℚ)

end A379210

/-! ## A379210.P1885327424673639109

`A110660(A007494(n))+A001318(n)`
-/

namespace A379210.P1885327424673639109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110660 (A007494 n).toNat + A001318 n

end

end A379210.P1885327424673639109

namespace A379210

/-- `A110660(A007494(n))+A001318(n)` -/
def P1885327424673639109.Spec : Prop :=
  ∀ n, P1885327424673639109.a n = A379210 (n + 1)

end A379210

/-! ## A379210.P5874255647274204040

`A180713(A152749(n))-A219391(n+1)`
-/

namespace A379210.P5874255647274204040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180713 (A152749 n).toNat - A219391 (n + 1)

end

end A379210.P5874255647274204040

namespace A379210

/-- `A180713(A152749(n))-A219391(n+1)` -/
def P5874255647274204040.Spec : Prop :=
  ∀ n, P5874255647274204040.a n = A379210 (n + 1)

end A379210

/-! ## A379210.P9684415189822744264

`record[(n+1)*A205988(3*(n+1))]`
-/

namespace A379210.P9684415189822744264
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A205988 (3 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A379210.P9684415189822744264

namespace A379210

/-- `record[(n+1)*A205988(3*(n+1))]` -/
def P9684415189822744264.Spec : Prop :=
  ∀ n, P9684415189822744264.a n = A379210 (n + 1)

end A379210

/-! ## A379210.P1183939353424732259

`eq[1, A205988(A008585(n))]`
-/

namespace A379210.P1183939353424732259
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205988 (A008585 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A379210.P1183939353424732259

namespace A379210

/-- `eq[1, A205988(A008585(n))]` -/
def P1183939353424732259.Spec : Prop :=
  ∀ n, (P1183939353424732259.a n : ℤ) = A379210 (n + 1)

end A379210

/-! ## A379210.P53368376784331908

`record[lcm(n, A204220(3*n+n+1))]`
-/

namespace A379210.P53368376784331908
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (n : ℤ) (A204220 (3 * n + (n + 1)))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A379210.P53368376784331908

namespace A379210

/-- `record[lcm(n, A204220(3*n+n+1))]` -/
def P53368376784331908.Spec : Prop :=
  ∀ n, (P53368376784331908.a n : ℤ) = A379210 (n + 1)

end A379210

/-!
# A379211: List of positive integers that are congruent to {2, 7, 8, 13} mod 15.

The programs for A379211, the canonical program `A379211.P5538660320542451109` is in `Seq.B000.C038`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A379211 has offset 1).

The definition of A379211 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A379211.P5538660320542451109

`15+a(n-4)` with `a(0)=2, a(1)=7, a(2)=8, a(3)=13`

The canonical program, it is in `Seq.B000.C038`.
-/

namespace A379211

/-- `15+a(n-4)` -/
def P5538660320542451109.Spec : Prop :=
  ∀ n, (P5538660320542451109.a n : ℤ) = A379211 (n + 1)

theorem P5538660320542451109.correct : P5538660320542451109.Spec := by
  intro n
  simp only [A379211, Nat.add_sub_cancel]

end A379211

/-! ## A379211.P12506477767840339053

`∑[floor(a(n-4))]` with `a(0)=2, a(1)=5, a(2)=1, a(3)=5, a(4)=4`

`floor` is left out, it is the identity on integers.
-/

namespace A379211.P12506477767840339053
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [2, 5, 1, 5, 4] fun n f1 =>
  f1 (n - 4)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A379211.P12506477767840339053

namespace A379211

/-- `∑[floor(a(n-4))]` -/
def P12506477767840339053.Spec : Prop :=
  ∀ n, (P12506477767840339053.a n : ℤ) = A379211 (n + 1)

end A379211

/-! ## A379211.P5087213660955369523

`A110654(n)+A088227(n+1)`
-/

namespace A379211.P5087213660955369523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 n + A088227 (n + 1)

end

end A379211.P5087213660955369523

namespace A379211

/-- `A110654(n)+A088227(n+1)` -/
def P5087213660955369523.Spec : Prop :=
  ∀ n, P5087213660955369523.a n = A379211 (n + 1)

end A379211

/-! ## A379211.P10365465704771672825

`A293990(n)+A174396(n+1)`
-/

namespace A379211.P10365465704771672825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293990 n + A174396 (n + 1)

end

end A379211.P10365465704771672825

namespace A379211

/-- `A293990(n)+A174396(n+1)` -/
def P10365465704771672825.Spec : Prop :=
  ∀ n, P10365465704771672825.a n = A379211 (n + 1)

end A379211

/-! ## A379211.P12095033212056343160

`A306771(n+1)-A219721(n)`
-/

namespace A379211.P12095033212056343160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306771 (n + 1) - A219721 n

end

end A379211.P12095033212056343160

namespace A379211

/-- `A306771(n+1)-A219721(n)` -/
def P12095033212056343160.Spec : Prop :=
  ∀ n, P12095033212056343160.a n = A379211 (n + 1)

end A379211

/-! ## A379211.P2052195588255952435

`A273669(n+1)-A271324(n)`
-/

namespace A379211.P2052195588255952435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273669 (n + 1) - A271324 n

end

end A379211.P2052195588255952435

namespace A379211

/-- `A273669(n+1)-A271324(n)` -/
def P2052195588255952435.Spec : Prop :=
  ∀ n, P2052195588255952435.a n = A379211 (n + 1)

end A379211

/-! ## A379211.P6430609561564658789

`A163980(n+1)+A047338(n+1)`
-/

namespace A379211.P6430609561564658789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163980 (n + 1) + A047338 (n + 1)

end

end A379211.P6430609561564658789

namespace A379211

/-- `A163980(n+1)+A047338(n+1)` -/
def P6430609561564658789.Spec : Prop :=
  ∀ n, P6430609561564658789.a n = A379211 (n + 1)

end A379211

/-! ## A379211.P3492985708397712289

`A168273(n+1)+A047362(n+1)`
-/

namespace A379211.P3492985708397712289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168273 (n + 1) + A047362 (n + 1)

end

end A379211.P3492985708397712289

namespace A379211

/-- `A168273(n+1)+A047362(n+1)` -/
def P3492985708397712289.Spec : Prop :=
  ∀ n, P3492985708397712289.a n = A379211 (n + 1)

end A379211

/-! ## A379211.P1817443513449938832

`(A084967(n+1)-A057538(n+1))/2`
-/

namespace A379211.P1817443513449938832
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A084967 (n + 1) - A057538 (n + 1) : ℚ) / 2

end

end A379211.P1817443513449938832

namespace A379211

/-- `(A084967(n+1)-A057538(n+1))/2` -/
def P1817443513449938832.Spec : Prop :=
  ∀ n, P1817443513449938832.a n = (A379211 (n + 1) : ℚ)

end A379211

/-! ## A379211.P253101116676531080

`A047336(n+1)+A028242(A004526(n))`
-/

namespace A379211.P253101116676531080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047336 (n + 1) + A028242 (A004526 n).toNat

end

end A379211.P253101116676531080

namespace A379211

/-- `A047336(n+1)+A028242(A004526(n))` -/
def P253101116676531080.Spec : Prop :=
  ∀ n, P253101116676531080.a n = A379211 (n + 1)

end A379211

/-! ## A379211.P18342974247011061460

`A008586(n+1)-A262672(n+2)`
-/

namespace A379211.P18342974247011061460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008586 (n + 1) - A262672 (n + 2)

end

end A379211.P18342974247011061460

namespace A379211

/-- `A008586(n+1)-A262672(n+2)` -/
def P18342974247011061460.Spec : Prop :=
  ∀ n, P18342974247011061460.a n = A379211 (n + 1)

end A379211

/-! ## A379211.P3051858033411893414

`A047221(A032766(n+1))`
-/

namespace A379211.P3051858033411893414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047221 (A032766 (n + 1)).toNat

end

end A379211.P3051858033411893414

namespace A379211

/-- `A047221(A032766(n+1))` -/
def P3051858033411893414.Spec : Prop :=
  ∀ n, P3051858033411893414.a n = A379211 (n + 1)

end A379211

/-! ## A379211.P3359062431505538754

`A047221(A001651(n+2)-1)`
-/

namespace A379211.P3359062431505538754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047221 (A001651 (n + 2) - 1).toNat

end

end A379211.P3359062431505538754

namespace A379211

/-- `A047221(A001651(n+2)-1)` -/
def P3359062431505538754.Spec : Prop :=
  ∀ n, P3359062431505538754.a n = A379211 (n + 1)

end A379211

/-! ## A379211.P3049716578910525404

`A047221(A004526(n+1)+n+1)`
-/

namespace A379211.P3049716578910525404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047221 (A004526 (n + 1) + (n + 1 : ℤ)).toNat

end

end A379211.P3049716578910525404

namespace A379211

/-- `A047221(A004526(n+1)+n+1)` -/
def P3049716578910525404.Spec : Prop :=
  ∀ n, P3049716578910525404.a n = A379211 (n + 1)

end A379211

/-! ## A379211.P6215408748688208208

`eq[A001204(n), A010125(n)]`
-/

namespace A379211.P6215408748688208208
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001204 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010125 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A379211.P6215408748688208208

namespace A379211

/-- `eq[A001204(n), A010125(n)]` -/
def P6215408748688208208.Spec : Prop :=
  ∀ n, (P6215408748688208208.a n : ℤ) = A379211 (n + 1)

end A379211

/-! ## A379211.P2496834185448478732

`∑[dr(A040861(2*n))]`
-/

namespace A379211.P2496834185448478732
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A040861 (2 * n))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A379211.P2496834185448478732

namespace A379211

/-- `∑[dr(A040861(2*n))]` -/
def P2496834185448478732.Spec : Prop :=
  ∀ n, (P2496834185448478732.a n : ℤ) = A379211 (n + 1)

end A379211

/-! ## A379211.P5096131496567623993

`A229829(A047495(n+1))`
-/

namespace A379211.P5096131496567623993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229829 (A047495 (n + 1)).toNat

end

end A379211.P5096131496567623993

namespace A379211

/-- `A229829(A047495(n+1))` -/
def P5096131496567623993.Spec : Prop :=
  ∀ n, P5096131496567623993.a n = A379211 (n + 1)

end A379211

/-! ## A379211.P6108730504702419486

`∩[A047221(n+1), A229829(n+1)]`
-/

namespace A379211.P6108730504702419486
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047221 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229829 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A379211.P6108730504702419486

namespace A379211

/-- `∩[A047221(n+1), A229829(n+1)]` -/
def P6108730504702419486.Spec : Prop :=
  ∀ n, (P6108730504702419486.a n : ℤ) = A379211 (n + 1)

end A379211

/-! ## A379211.P2052534643040037814

`A106833(2*(n+1))-A262672(n+2)`
-/

namespace A379211.P2052534643040037814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106833 (2 * (n + 1)) - A262672 (n + 2)

end

end A379211.P2052534643040037814

namespace A379211

/-- `A106833(2*(n+1))-A262672(n+2)` -/
def P2052534643040037814.Spec : Prop :=
  ∀ n, P2052534643040037814.a n = A379211 (n + 1)

end A379211

/-! ## A379211.P7196700201983509324

`A047202(A174396(n+1))`
-/

namespace A379211.P7196700201983509324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047202 (A174396 (n + 1)).toNat

end

end A379211.P7196700201983509324

namespace A379211

/-- `A047202(A174396(n+1))` -/
def P7196700201983509324.Spec : Prop :=
  ∀ n, P7196700201983509324.a n = A379211 (n + 1)

end A379211

/-!
# A379212: Expansion of Sum_{n >= 0} q^(n*(n+1)) * Product_{k >= 2*n+2} 1 - q^k.

The programs for A379212, there is no canonical definition to state claims against.
-/

/-! ## A379212.P9954565012929496168

`A204220(4*n+1)`
-/

namespace A379212.P9954565012929496168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204220 (4 * n + 1)

end

end A379212.P9954565012929496168

/-! ## A379212.P15709275828476992767

`A204220(A016813(n))^3`
-/

namespace A379212.P15709275828476992767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204220 (A016813 n).toNat ^ 3

end

end A379212.P15709275828476992767

/-! ## A379212.P14556532435228405874

`A204220(A016813(n))/Δ[A090864(n+1)]`
-/

namespace A379212.P14556532435228405874
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090864 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A204220 (A016813 n).toNat : ℚ) / (f1 (n + 1) - f1 n : ℚ)

end

end A379212.P14556532435228405874

/-! ## A379212.P3110356699081278658

`A204220(A016813(n))+A010052(A000928(n+1))`
-/

namespace A379212.P3110356699081278658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204220 (A016813 n).toNat + A010052 (A000928 (n + 1)).toNat

end

end A379212.P3110356699081278658

/-! ## A379212.P7411030832514477445

`A204220(A016813(n))+A010051(A001358(n+1))`
-/

namespace A379212.P7411030832514477445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204220 (A016813 n).toNat + A010051 (A001358 (n + 1)).toNat

end

end A379212.P7411030832514477445

/-! ## A379212.P903076712553724370

`A204220(A016813(n))+A010052(A107801(n+1))`
-/

namespace A379212.P903076712553724370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204220 (A016813 n).toNat + A010052 (A107801 (n + 1)).toNat

end

end A379212.P903076712553724370

/-! ## A379212.P14964702178178787099

`A204220(A016813(n))/A052409(A005846(n+1))`
-/

namespace A379212.P14964702178178787099
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A204220 (A016813 n).toNat : ℚ) / (A052409 (A005846 (n + 1)).toNat : ℚ)

end

end A379212.P14964702178178787099

/-! ## A379212.P9898262428259292210

`A204220(A016813(n))/A330665(A000523(n+3))`
-/

namespace A379212.P9898262428259292210
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A204220 (A016813 n).toNat : ℚ) / (A330665 (A000523 (n + 3)).toNat : ℚ)

end

end A379212.P9898262428259292210

/-! ## A379212.P17793664777764942101

`A204220(A016813(n))/A330665(A330665(n+1))`
-/

namespace A379212.P17793664777764942101
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A204220 (A016813 n).toNat : ℚ) / (A330665 (A330665 (n + 1)).toNat : ℚ)

end

end A379212.P17793664777764942101

/-!
# A379213: a(n) is the number of nonnegative integers m such that A184615(m) = A003714(n).

The programs for A379213, the canonical program `A379213.P13710358421444218836` is in `Seq.B007.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A379213 has offset 0).

The definition of A379213 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 317 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A379213.P13710358421444218836

`∏{e}[A277331(n), A000045(#)]`

The canonical program, it is in `Seq.B007.C001`.
-/

namespace A379213

/-- `∏{e}[A277331(n), A000045(#)]` -/
def P13710358421444218836.Spec : Prop :=
  ∀ n, P13710358421444218836.a n = A379213 n

theorem P13710358421444218836.correct : P13710358421444218836.Spec := by
  intro n
  simp only [A379213]

end A379213

/-! ## A379213.P4198036560289316204

`A351219(A000079(n)+record[xor(n, 2*n)/3])`
-/

namespace A379213.P4198036560289316204
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.xor n (2 * n) : ℚ) / 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351219 (SequenceMachineLib.roundAway ((A000079 n : ℚ) + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))).toNat

end

end A379213.P4198036560289316204

namespace A379213

/-- `A351219(A000079(n)+record[xor(n, 2*n)/3])` -/
def P4198036560289316204.Spec : Prop :=
  ∀ n, P4198036560289316204.a n = A379213 n

end A379213

/-! ## A379213.P18353195869670334006

`gcd(A194820(n+1), A288605(A113655(3*n+5)))`
-/

namespace A379213.P18353195869670334006
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A194820 (n + 1)) (A288605 (A113655 (3 * n + 5)).toNat)

end

end A379213.P18353195869670334006

namespace A379213

/-- `gcd(A194820(n+1), A288605(A113655(3*n+5)))` -/
def P18353195869670334006.Spec : Prop :=
  ∀ n, (P18353195869670334006.a n : ℤ) = A379213 n

end A379213

/-! ## A379213.P9464581174330792952

`A338411(A293314(n))`
-/

namespace A379213.P9464581174330792952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338411 (A293314 n).toNat

end

end A379213.P9464581174330792952

namespace A379213

/-- `A338411(A293314(n))` -/
def P9464581174330792952.Spec : Prop :=
  ∀ n, P9464581174330792952.a n = A379213 n

end A379213

/-! ## A379213.P2954780943635376569

`∏{e}[A017995(A065188(n+1)), #]`
-/

namespace A379213.P2954780943635376569
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017995 (A065188 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A379213.P2954780943635376569

namespace A379213

/-- `∏{e}[A017995(A065188(n+1)), #]` -/
def P2954780943635376569.Spec : Prop :=
  ∀ n, (P2954780943635376569.a n : ℤ) = A379213 n

end A379213

/-!
# A379215: Number of minimal edge cuts in the complete bipartite graph K_{n,n}.

The programs for A379215, the canonical program `A379215.P8620567409241679117` is in `Seq.B001.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A379215 has offset 1).

The definition of A379215 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 166 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A379215.P8620567409241679117

`A103517(n)+A087291(n)`

The canonical program, it is in `Seq.B001.C010`.
-/

namespace A379215

/-- `A103517(n)+A087291(n)` -/
def P8620567409241679117.Spec : Prop :=
  ∀ n, P8620567409241679117.a n = A379215 (n + 1)

theorem P8620567409241679117.correct : P8620567409241679117.Spec := by
  intro n
  simp only [A379215, Nat.add_sub_cancel]

end A379215

/-! ## A379215.P8397714334330401793

`A081654(n)-A145654(n+1)`
-/

namespace A379215.P8397714334330401793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081654 n - A145654 (n + 1)

end

end A379215.P8397714334330401793

namespace A379215

/-- `A081654(n)-A145654(n+1)` -/
def P8397714334330401793.Spec : Prop :=
  ∀ n, P8397714334330401793.a n = A379215 (n + 1)

end A379215

/-! ## A379215.P13883862302049988213

`A000225(2*n+1)-record[A070313(n)]`
-/

namespace A379215.P13883862302049988213
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070313 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 (2 * n + 1) - f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A379215.P13883862302049988213

namespace A379215

/-- `A000225(2*n+1)-record[A070313(n)]` -/
def P13883862302049988213.Spec : Prop :=
  ∀ n, P13883862302049988213.a n = A379215 (n + 1)

end A379215

/-! ## A379215.P15327640598780450747

`A000079(2*n+1)-record[A000325(n)-n]`
-/

namespace A379215.P15327640598780450747
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000325 n - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (2 * n + 1) - f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A379215.P15327640598780450747

namespace A379215

/-- `A000079(2*n+1)-record[A000325(n)-n]` -/
def P15327640598780450747.Spec : Prop :=
  ∀ n, P15327640598780450747.a n = A379215 (n + 1)

end A379215

/-! ## A379215.P10198105756611837003

`A005893(A000225(n))+2*n`
-/

namespace A379215.P10198105756611837003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005893 (A000225 n).toNat + (2 * n : ℤ)

end

end A379215.P10198105756611837003

namespace A379215

/-- `A005893(A000225(n))+2*n` -/
def P10198105756611837003.Spec : Prop :=
  ∀ n, P10198105756611837003.a n = A379215 (n + 1)

end A379215

/-!
# A379216: Difference 2*k - A003961(k) computed for k for which this difference divides difference (A003961(k)-sigma(k)), where A003961 is fully multiplicative with a(prime(i)) = prime(i+1).

The programs for A379216, there is no canonical definition to state claims against.
-/

/-! ## A379216.P3014080968471463656

`-A252748(A378980(n+1))`
-/

namespace A379216.P3014080968471463656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A252748 (A378980 (n + 1)).toNat

end

end A379216.P3014080968471463656

/-!
# A379217: Quotient (A003961(k)-sigma(k)) / (2*k-A003961(k)) computed for those k for which this quotient is an integer, where A003961 is fully multiplicative with a(prime(i)) = prime(i+1).

The programs for A379217, there is no canonical definition to state claims against.
-/

/-! ## A379217.P9722961439373889758

`A286385(A378980(n+1))/A379216(n+1)`
-/

namespace A379217.P9722961439373889758
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A286385 (A378980 (n + 1)).toNat : ℚ) / (A379216 (n + 1) : ℚ)

end

end A379217.P9722961439373889758

/-!
# A379218: Möbius transform of A379108.

The programs for A379218, the canonical program `A379218.P1688385068240384279` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A379218 has offset 1).

The definition of A379218 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A379218.P1688385068240384279

`∑{d}[n+1, #*A359579((n+1)/#)]`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A379218

/-- `∑{d}[n+1, #*A359579((n+1)/#)]` -/
def P1688385068240384279.Spec : Prop :=
  ∀ n, P1688385068240384279.a n = A379218 (n + 1)

theorem P1688385068240384279.correct : P1688385068240384279.Spec := by
  intro n
  simp only [A379218, Nat.add_sub_cancel]

end A379218

/-! ## A379218.P4149597073088102897

`∑{d}[n+1, A008683(#)*A379108((n+1)/#)]`
-/

namespace A379218.P4149597073088102897
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008683 d * A379108 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A379218.P4149597073088102897

namespace A379218

/-- `∑{d}[n+1, A008683(#)*A379108((n+1)/#)]` -/
def P4149597073088102897.Spec : Prop :=
  ∀ n, P4149597073088102897.a n = A379218 (n + 1)

end A379218

/-! ## A379218.P5293650163588816644

`A037800(A077168(n))+A000010(n+1)`
-/

namespace A379218.P5293650163588816644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037800 (A077168 n).toNat + A000010 (n + 1)

end

end A379218.P5293650163588816644

namespace A379218

/-- `A037800(A077168(n))+A000010(n+1)` -/
def P5293650163588816644.Spec : Prop :=
  ∀ n, P5293650163588816644.a n = A379218 (n + 1)

end A379218

/-! ## A379218.P4682237250852635505

`A253513(A056391(n+4))+A000010(n+1)`
-/

namespace A379218.P4682237250852635505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253513 (A056391 (n + 4)).toNat + A000010 (n + 1)

end

end A379218.P4682237250852635505

namespace A379218

/-- `A253513(A056391(n+4))+A000010(n+1)` -/
def P4682237250852635505.Spec : Prop :=
  ∀ n, P4682237250852635505.a n = A379218 (n + 1)

end A379218

/-! ## A379218.P9244809476431341685

`A370813(A057335(n))+(n+1)/∏{p}[n+1, #]*∏{p}[n+1, #-1]`
-/

namespace A379218.P9244809476431341685
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A370813 (A057335 n).toNat : ℚ) + (n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ) * ((∏ p ∈ Nat.primeFactors (f2 n), ((p : ℤ) - 1) : ℤ) : ℚ)

end

end A379218.P9244809476431341685

namespace A379218

/-- `A370813(A057335(n))+(n+1)/∏{p}[n+1, #]*∏{p}[n+1, #-1]` -/
def P9244809476431341685.Spec : Prop :=
  ∀ n, P9244809476431341685.a n = (A379218 (n + 1) : ℚ)

end A379218

/-!
# A379219: Dirichlet inverse of A379218.

The programs for A379219, the canonical program `A379219.P16078624363697017036` is in `Seq.B005.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A379219 has offset 1).

The definition of A379219 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A379219.P16078624363697017036

`∑{d}[n+1, A379109(#)]`

The canonical program, it is in `Seq.B005.C002`.
-/

namespace A379219

/-- `∑{d}[n+1, A379109(#)]` -/
def P16078624363697017036.Spec : Prop :=
  ∀ n, P16078624363697017036.a n = A379219 (n + 1)

theorem P16078624363697017036.correct : P16078624363697017036.Spec := by
  intro n
  simp only [A379219, Nat.add_sub_cancel]

end A379219

/-! ## A379219.P5484104321883436263

`∑{d}[n+1, A055615(#)*A336923((n+1)/#)]`
-/

namespace A379219.P5484104321883436263
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A055615 d * A336923 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A379219.P5484104321883436263

namespace A379219

/-- `∑{d}[n+1, A055615(#)*A336923((n+1)/#)]` -/
def P5484104321883436263.Spec : Prop :=
  ∀ n, P5484104321883436263.a n = A379219 (n + 1)

end A379219

/-!
# A379220: Square array A(n, k) = sigma((2n-1)^2) * sigma((2k-1)^2), read by antidiagonals.

The programs for A379220, there is no canonical definition to state claims against.
-/

/-! ## A379220.P16544050911630366254

`A129141(A348412(n+1))`
-/

namespace A379220.P16544050911630366254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129141 (A348412 (n + 1)).toNat

end

end A379220.P16544050911630366254

/-!
# A379221: Square array A(n, k) = A048720(A065621(sigma((2n-1)^2)), sigma((2k-1)^2)), read by falling antidiagonals, (1,1), (1,2), (2,1), (1,3), (2,2), (3,1), etc.

The programs for A379221, there is no canonical definition to state claims against.
-/

/-! ## A379221.P11363991913346572895

`or(1, A001414(A221581(n)))`
-/

namespace A379221.P11363991913346572895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A001414 (A221581 n).toNat)

end

end A379221.P11363991913346572895

/-!
# A379222: Number of trailing 1-bits in the binary representation of the sum of the divisors of the n-th odd square: a(n) = sigma((2*n-1)^2).

The programs for A379222, the canonical program `A379222.P16799102987765888211` is in `Seq.B007.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A379222 has offset 1).

The definition of A379222 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A379222.P16799102987765888211

`A378999(2*n+1)`

The canonical program, it is in `Seq.B007.C001`.
-/

namespace A379222

/-- `A378999(2*n+1)` -/
def P16799102987765888211.Spec : Prop :=
  ∀ n, P16799102987765888211.a n = A379222 (n + 1)

theorem P16799102987765888211.correct : P16799102987765888211.Spec := by
  intro n
  simp only [A379222, Nat.add_sub_cancel]

end A379222

/-! ## A379222.P4286594554584013262

`A378998(A016754(n))`
-/

namespace A379222.P4286594554584013262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378998 (A016754 n).toNat

end

end A379222.P4286594554584013262

namespace A379222

/-- `A378998(A016754(n))` -/
def P4286594554584013262.Spec : Prop :=
  ∀ n, P4286594554584013262.a n = A379222 (n + 1)

end A379222

/-! ## A379222.P13747247872133729586

`A007814(1+A000203(A016754(n)))`
-/

namespace A379222.P13747247872133729586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (1 + A000203 (A016754 n).toNat).toNat

end

end A379222.P13747247872133729586

namespace A379222

/-- `A007814(1+A000203(A016754(n)))` -/
def P13747247872133729586.Spec : Prop :=
  ∀ n, P13747247872133729586.a n = A379222 (n + 1)

end A379222

/-! ## A379222.P3005460651247438854

`A379483(A064216(n+1))`
-/

namespace A379222.P3005460651247438854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379483 (A064216 (n + 1)).toNat

end

end A379222.P3005460651247438854

namespace A379222

/-- `A379483(A064216(n+1))` -/
def P3005460651247438854.Spec : Prop :=
  ∀ n, P3005460651247438854.a n = A379222 (n + 1)

end A379222

/-! ## A379222.P12101973558550782752

`val(A065764(Δ[n²])+1, 2)`
-/

namespace A379222.P12101973558550782752
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A065764 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat + 1).toNat 2

end

end A379222.P12101973558550782752

namespace A379222

/-- `val(A065764(Δ[n²])+1, 2)` -/
def P12101973558550782752.Spec : Prop :=
  ∀ n, (P12101973558550782752.a n : ℤ) = A379222 (n + 1)

end A379222

/-! ## A379222.P3802520545964579987

`val(A224339(A005408(n))+1, 2)`
-/

namespace A379222.P3802520545964579987
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A224339 (A005408 n).toNat + 1).toNat 2

end

end A379222.P3802520545964579987

namespace A379222

/-- `val(A224339(A005408(n))+1, 2)` -/
def P3802520545964579987.Spec : Prop :=
  ∀ n, (P3802520545964579987.a n : ℤ) = A379222 (n + 1)

end A379222

/-! ## A379222.P686877718329149903

`val(∑{d}[(2*n+1)², #]+1, 2)`
-/

namespace A379222.P686877718329149903
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (2 * n + 1) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (∑ d ∈ Nat.divisors (f1 n), d + 1) 2

end

end A379222.P686877718329149903

namespace A379222

/-- `val(∑{d}[(2*n+1)², #]+1, 2)` -/
def P686877718329149903.Spec : Prop :=
  ∀ n, (P686877718329149903.a n : ℤ) = A379222 (n + 1)

end A379222

/-! ## A379222.P16800363645064932237

`A378998(Δ[n²]²)`
-/

namespace A379222.P16800363645064932237
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378998 (((f1 (n + 1) : ℤ) - (f1 n : ℤ)) ^ 2).toNat

end

end A379222.P16800363645064932237

namespace A379222

/-- `A378998(Δ[n²]²)` -/
def P16800363645064932237.Spec : Prop :=
  ∀ n, P16800363645064932237.a n = A379222 (n + 1)

theorem P16800363645064932237.correct : P16800363645064932237.Spec := by
  intro n
  simp only [A379222, Nat.add_sub_cancel, A379222.P16800363645064932237.f1, A379222.P16800363645064932237.a, A379222.P16799102987765888211.a, A378998, A378998.P7086565219959481475.a, A378999, A378999.P10244368131065604543.a, A000290, A000290.P12206242496348924484.a, A007814, A007814.P13537437864234730737.a, A088580, A088580.P3089093194242277422.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A001511, A001511.P17146462531039486101.a, A006519, A006519.P10435570611646570274.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A379222

/-! ## A379222.P1393737940469574737

`A337195(Δ[n²]²)`
-/

namespace A379222.P1393737940469574737
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337195 (((f1 (n + 1) : ℤ) - (f1 n : ℤ)) ^ 2).toNat

end

end A379222.P1393737940469574737

namespace A379222

/-- `A337195(Δ[n²]²)` -/
def P1393737940469574737.Spec : Prop :=
  ∀ n, P1393737940469574737.a n = A379222 (n + 1)

end A379222

/-! ## A379222.P3218215773444504264

`A093641(A337195((2*n+1)²))`
-/

namespace A379222.P3218215773444504264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093641 (A337195 ((2 * n + 1) ^ 2)).toNat

end

end A379222.P3218215773444504264

namespace A379222

/-- `A093641(A337195((2*n+1)²))` -/
def P3218215773444504264.Spec : Prop :=
  ∀ n, P3218215773444504264.a n = A379222 (n + 1)

end A379222

/-!
# A379223: Sum of the divisors of the n-th odd square: a(n) = sigma((2*n-1)^2).

The programs for A379223, the canonical program `A379223.P937292123785489780` is in `Seq.B001.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A379223 has offset 1).

The definition of A379223 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A379223.P937292123785489780

`A000203(A016754(n))`

The canonical program, it is in `Seq.B001.C010`.
-/

namespace A379223

/-- `A000203(A016754(n))` -/
def P937292123785489780.Spec : Prop :=
  ∀ n, P937292123785489780.a n = A379223 (n + 1)

theorem P937292123785489780.correct : P937292123785489780.Spec := by
  intro n
  simp only [A379223, Nat.add_sub_cancel]

end A379223

/-! ## A379223.P78213971151112101

`A065764(Δ[n²])`
-/

namespace A379223.P78213971151112101
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065764 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A379223.P78213971151112101

namespace A379223

/-- `A065764(Δ[n²])` -/
def P78213971151112101.Spec : Prop :=
  ∀ n, P78213971151112101.a n = A379223 (n + 1)

end A379223

/-! ## A379223.P2857329670270800816

`A065766(Δ[n²])`
-/

namespace A379223.P2857329670270800816
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065766 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A379223.P2857329670270800816

namespace A379223

/-- `A065766(Δ[n²])` -/
def P2857329670270800816.Spec : Prop :=
  ∀ n, P2857329670270800816.a n = A379223 (n + 1)

end A379223

/-! ## A379223.P7918082840220656664

`A224339(Δ[n²])`
-/

namespace A379223.P7918082840220656664
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224339 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A379223.P7918082840220656664

namespace A379223

/-- `A224339(Δ[n²])` -/
def P7918082840220656664.Spec : Prop :=
  ∀ n, P7918082840220656664.a n = A379223 (n + 1)

end A379223

/-! ## A379223.P4172659803871970307

`A195585(2*n+1)/2`
-/

namespace A379223.P4172659803871970307
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A195585 (2 * n + 1) : ℚ) / 2

end

end A379223.P4172659803871970307

namespace A379223

/-- `A195585(2*n+1)/2` -/
def P4172659803871970307.Spec : Prop :=
  ∀ n, P4172659803871970307.a n = (A379223 (n + 1) : ℚ)

end A379223

/-! ## A379223.P1886768255806439030

`A065765(2*n+1)/3`
-/

namespace A379223.P1886768255806439030
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A065765 (2 * n + 1) : ℚ) / 3

end

end A379223.P1886768255806439030

namespace A379223

/-- `A065765(2*n+1)/3` -/
def P1886768255806439030.Spec : Prop :=
  ∀ n, P1886768255806439030.a n = (A379223 (n + 1) : ℚ)

end A379223

/-! ## A379223.P16925134482912832297

`A267326(2*n+1)/8`
-/

namespace A379223.P16925134482912832297
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A267326 (2 * n + 1) : ℚ) / 8

end

end A379223.P16925134482912832297

namespace A379223

/-- `A267326(2*n+1)/8` -/
def P16925134482912832297.Spec : Prop :=
  ∀ n, P16925134482912832297.a n = (A379223 (n + 1) : ℚ)

end A379223

/-! ## A379223.P8175172053399923067

`A152677(A001954(n))`
-/

namespace A379223.P8175172053399923067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152677 (A001954 n).toNat

end

end A379223.P8175172053399923067

namespace A379223

/-- `A152677(A001954(n))` -/
def P8175172053399923067.Spec : Prop :=
  ∀ n, P8175172053399923067.a n = A379223 (n + 1)

end A379223

/-! ## A379223.P5040264600947002043

`A180114(A361936(2*n+1))`
-/

namespace A379223.P5040264600947002043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180114 (A361936 (2 * n + 1)).toNat

end

end A379223.P5040264600947002043

namespace A379223

/-- `A180114(A361936(2*n+1))` -/
def P5040264600947002043.Spec : Prop :=
  ∀ n, P5040264600947002043.a n = A379223 (n + 1)

end A379223

/-! ## A379223.P6099073978258132978

`∑{d}[Δ[n²]², #]`
-/

namespace A379223.P6099073978258132978
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((f2 (n + 1) : ℤ) - (f2 n : ℤ)) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, d

end

end A379223.P6099073978258132978

namespace A379223

/-- `∑{d}[Δ[n²]², #]` -/
def P6099073978258132978.Spec : Prop :=
  ∀ n, (P6099073978258132978.a n : ℤ) = A379223 (n + 1)

end A379223

/-! ## A379223.P14410411503525861547

`or(1, ∑{d}[(2*n+1)², #])`
-/

namespace A379223.P14410411503525861547
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (2 * n + 1) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (∑ d ∈ Nat.divisors (f1 n), d)

end

end A379223.P14410411503525861547

namespace A379223

/-- `or(1, ∑{d}[(2*n+1)², #])` -/
def P14410411503525861547.Spec : Prop :=
  ∀ n, (P14410411503525861547.a n : ℤ) = A379223 (n + 1)

end A379223

/-! ## A379223.P10526614155435763900

`2*∑{d}[(2*n+1)², #/2]`
-/

namespace A379223.P10526614155435763900
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (2 * n + 1) ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 * (∑ d ∈ Nat.divisors (f1 n), (d : ℚ) / 2)

end

end A379223.P10526614155435763900

namespace A379223

/-- `2*∑{d}[(2*n+1)², #/2]` -/
def P10526614155435763900.Spec : Prop :=
  ∀ n, P10526614155435763900.a n = (A379223 (n + 1) : ℚ)

end A379223

/-! ## A379223.P16126778812554523951

`xor(1, ∑{d}[(2*n+1)², #])+1`
-/

namespace A379223.P16126778812554523951
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (2 * n + 1) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 (∑ d ∈ Nat.divisors (f1 n), d) + 1

end

end A379223.P16126778812554523951

namespace A379223

/-- `xor(1, ∑{d}[(2*n+1)², #])+1` -/
def P16126778812554523951.Spec : Prop :=
  ∀ n, (P16126778812554523951.a n : ℤ) = A379223 (n + 1)

end A379223

/-! ## A379223.P456766383347748116

`∑{d}[(2*n+1)², #]+C(2, n+3)`
-/

namespace A379223.P456766383347748116
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (2 * n + 1) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), d + Nat.choose 2 (n + 3)

end

end A379223.P456766383347748116

namespace A379223

/-- `∑{d}[(2*n+1)², #]+C(2, n+3)` -/
def P456766383347748116.Spec : Prop :=
  ∀ n, (P456766383347748116.a n : ℤ) = A379223 (n + 1)

end A379223

/-! ## A379223.P13254806093845377318

`∑{d}[(2*n+1)², #]+and(1, 2*n)`
-/

namespace A379223.P13254806093845377318
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (2 * n + 1) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), d + Nat.land 1 (2 * n)

end

end A379223.P13254806093845377318

namespace A379223

/-- `∑{d}[(2*n+1)², #]+and(1, 2*n)` -/
def P13254806093845377318.Spec : Prop :=
  ∀ n, (P13254806093845377318.a n : ℤ) = A379223 (n + 1)

end A379223

/-! ## A379223.P14417638586858997084

`∑{d}[(2*n+1)², #]^gcd(n, n+1)`
-/

namespace A379223.P14417638586858997084
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (2 * n + 1) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ d ∈ Nat.divisors (f1 n), d) ^ Nat.gcd n (n + 1)

end

end A379223.P14417638586858997084

namespace A379223

/-- `∑{d}[(2*n+1)², #]^gcd(n, n+1)` -/
def P14417638586858997084.Spec : Prop :=
  ∀ n, (P14417638586858997084.a n : ℤ) = A379223 (n + 1)

end A379223

/-! ## A379223.P15160166274584921813

`∑{d}[(2*n+1)², #]+val(2*n+1, 2)`
-/

namespace A379223.P15160166274584921813
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (2 * n + 1) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), d + SequenceMachineLib.valuation (2 * n + 1) 2

end

end A379223.P15160166274584921813

namespace A379223

/-- `∑{d}[(2*n+1)², #]+val(2*n+1, 2)` -/
def P15160166274584921813.Spec : Prop :=
  ∀ n, (P15160166274584921813.a n : ℤ) = A379223 (n + 1)

end A379223

/-! ## A379223.P8921223745793430246

`A000203(Δ[n²]²)`
-/

namespace A379223.P8921223745793430246
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (((f1 (n + 1) : ℤ) - (f1 n : ℤ)) ^ 2).toNat

end

end A379223.P8921223745793430246

namespace A379223

/-- `A000203(Δ[n²]²)` -/
def P8921223745793430246.Spec : Prop :=
  ∀ n, P8921223745793430246.a n = A379223 (n + 1)

theorem P8921223745793430246.correct : P8921223745793430246.Spec := by
  intro n
  simp only [A379223, Nat.add_sub_cancel, A379223.P8921223745793430246.f1, A379223.P8921223745793430246.a, A379223.P937292123785489780.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A016754, A016754.P2987865549988322084.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A379223

/-! ## A379223.P15162417608875037325

`A379220(∑[n+1])`
-/

namespace A379223.P15162417608875037325
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379220 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A379223.P15162417608875037325

namespace A379223

/-- `A379220(∑[n+1])` -/
def P15162417608875037325.Spec : Prop :=
  ∀ n, P15162417608875037325.a n = A379223 (n + 1)

end A379223

/-! ## A379223.P18233462983236227

`A379221(∑[n]+1)`
-/

namespace A379223.P18233462983236227
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379221 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A379223.P18233462983236227

namespace A379223

/-- `A379221(∑[n]+1)` -/
def P18233462983236227.Spec : Prop :=
  ∀ n, P18233462983236227.a n = A379223 (n + 1)

end A379223

/-!
# A379224: The reversing binary representation of the sum of the divisors of the n-th odd square: a(n) = A065621(A379223(n)).

The programs for A379224, the canonical program `A379224.P12381818504371844415` is in `Seq.B002.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A379224 has offset 1).

The definition of A379224 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A379224.P12381818504371844415

`A065621(A379223(n+1))`

The canonical program, it is in `Seq.B002.C006`.
-/

namespace A379224

/-- `A065621(A379223(n+1))` -/
def P12381818504371844415.Spec : Prop :=
  ∀ n, P12381818504371844415.a n = A379224 (n + 1)

theorem P12381818504371844415.correct : P12381818504371844415.Spec := by
  intro n
  simp only [A379224, Nat.add_sub_cancel]

end A379224

/-! ## A379224.P10415979509422818104

`A379221(∑[n+1])`
-/

namespace A379224.P10415979509422818104
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379221 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A379224.P10415979509422818104

namespace A379224

/-- `A379221(∑[n+1])` -/
def P10415979509422818104.Spec : Prop :=
  ∀ n, P10415979509422818104.a n = A379224 (n + 1)

end A379224

/-! ## A379224.P6301783339225787942

`A065621(∑{d}[A016754(n), #])`
-/

namespace A379224.P6301783339225787942
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016754 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065621 (∑ d ∈ Nat.divisors (f1 n).natAbs, d)

end

end A379224.P6301783339225787942

namespace A379224

/-- `A065621(∑{d}[A016754(n), #])` -/
def P6301783339225787942.Spec : Prop :=
  ∀ n, P6301783339225787942.a n = A379224 (n + 1)

end A379224

/-! ## A379224.P14350575242078446542

`A065621(A379220(∑[n+1]))`
-/

namespace A379224.P14350575242078446542
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065621 (A379220 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A379224.P14350575242078446542

namespace A379224

/-- `A065621(A379220(∑[n+1]))` -/
def P14350575242078446542.Spec : Prop :=
  ∀ n, P14350575242078446542.a n = A379224 (n + 1)

end A379224

/-! ## A379224.P11244947106478375984

`A065621(A008438(∑[4*n]))`
-/

namespace A379224.P11244947106478375984
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065621 (A008438 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A379224.P11244947106478375984

namespace A379224

/-- `A065621(A008438(∑[4*n]))` -/
def P11244947106478375984.Spec : Prop :=
  ∀ n, P11244947106478375984.a n = A379224 (n + 1)

end A379224

/-!
# A379225: a(n) = A113177(n) mod 5, where A113177 is fully additive with a(p) = Fibonacci(p).

The programs for A379225, the canonical program `A379225.P17910529871844759288` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A379225 has offset 1).

The definition of A379225 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A374124, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A379225.P17910529871844759288

`A010874(A374124(n+1))`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A379225

/-- `A010874(A374124(n+1))` -/
def P17910529871844759288.Spec : Prop :=
  ∀ n, P17910529871844759288.a n = A379225 (n + 1)

theorem P17910529871844759288.correct : P17910529871844759288.Spec := by
  intro n
  simp only [A379225, Nat.add_sub_cancel]

end A379225

/-! ## A379225.P6942672571907196509

`A113177(n+1)%5`
-/

namespace A379225.P6942672571907196509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A113177 (n + 1)) 5

end

end A379225.P6942672571907196509

namespace A379225

/-- `A113177(n+1)%5` -/
def P6942672571907196509.Spec : Prop :=
  ∀ n, P6942672571907196509.a n = A379225 (n + 1)

end A379225

/-! ## A379225.P10796190720169611723

`A010874(A113177(n+1))`
-/

namespace A379225.P10796190720169611723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010874 (A113177 (n + 1)).toNat

end

end A379225.P10796190720169611723

namespace A379225

/-- `A010874(A113177(n+1))` -/
def P10796190720169611723.Spec : Prop :=
  ∀ n, P10796190720169611723.a n = A379225 (n + 1)

end A379225

/-! ## A379225.P8261775521807769189

`A374124(n+1)%A168092(n)`
-/

namespace A379225.P8261775521807769189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A374124 (n + 1)) (A168092 n)

end

end A379225.P8261775521807769189

namespace A379225

/-- `A374124(n+1)%A168092(n)` -/
def P8261775521807769189.Spec : Prop :=
  ∀ n, P8261775521807769189.a n = A379225 (n + 1)

end A379225

/-! ## A379225.P5715306218415968984

`∑{p}[n+1, val(n+1, #)*A000045(#)]%5`
-/

namespace A379225.P5715306218415968984
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ p ∈ Nat.primeFactors (f1 n), (SequenceMachineLib.valuation (n + 1) p : ℤ) * A000045 p) 5

end

end A379225.P5715306218415968984

namespace A379225

/-- `∑{p}[n+1, val(n+1, #)*A000045(#)]%5` -/
def P5715306218415968984.Spec : Prop :=
  ∀ n, P5715306218415968984.a n = A379225 (n + 1)

end A379225

/-! ## A379225.P11487253544715878059

`∑{d}[A131738(n), A113178(A014963(#))]%5`
-/

namespace A379225.P11487253544715878059
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131738 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ d ∈ Nat.divisors (f1 n).natAbs, A113178 (A014963 d).toNat) 5

end

end A379225.P11487253544715878059

namespace A379225

/-- `∑{d}[A131738(n), A113178(A014963(#))]%5` -/
def P11487253544715878059.Spec : Prop :=
  ∀ n, P11487253544715878059.a n = A379225 (n + 1)

end A379225

/-! ## A379225.P12156639249798761651

`∑{e}[A181821(n+1), A000045(A000040(#))]%5`
-/

namespace A379225.P12156639249798761651
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181821 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ p ∈ Nat.primeFactors (f1 n).natAbs, A000045 (A000040 (Nat.factorization (f1 n).natAbs p)).toNat) 5

end

end A379225.P12156639249798761651

namespace A379225

/-- `∑{e}[A181821(n+1), A000045(A000040(#))]%5` -/
def P12156639249798761651.Spec : Prop :=
  ∀ n, P12156639249798761651.a n = A379225 (n + 1)

end A379225

/-!
# A379226: Numbers k for which A113177(k) is a multiple of 5, where A113177 is fully additive with a(p) = Fibonacci(p).

The programs for A379226, the canonical program `A379226.P6425558838148186179` is in `Seq.B005.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A379226 has offset 1).

The definition of A379226 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9344 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A379226.P6425558838148186179

`eq[1, A379227(n+1)]+1`

The canonical program, it is in `Seq.B005.C002`.
-/

namespace A379226

/-- `eq[1, A379227(n+1)]+1` -/
def P6425558838148186179.Spec : Prop :=
  ∀ n, (P6425558838148186179.a n : ℤ) = A379226 (n + 1)

theorem P6425558838148186179.correct : P6425558838148186179.Spec := by
  intro n
  simp only [A379226, Nat.add_sub_cancel]

end A379226

/-! ## A379226.P221771004969781963

`eq[1, A379225(2*(n+1))]+1`
-/

namespace A379226.P221771004969781963
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379225 (2 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A379226.P221771004969781963

namespace A379226

/-- `eq[1, A379225(2*(n+1))]+1` -/
def P221771004969781963.Spec : Prop :=
  ∀ n, (P221771004969781963.a n : ℤ) = A379226 (n + 1)

end A379226

/-! ## A379226.P18152380227089198514

`filter[A073900(n+1), A379227(#)]`
-/

namespace A379226.P18152380227089198514
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073900 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A379227 (f1 j).toNat = 1) n)

end

end A379226.P18152380227089198514

namespace A379226

/-- `filter[A073900(n+1), A379227(#)]` -/
def P18152380227089198514.Spec : Prop :=
  ∀ n, P18152380227089198514.a n = A379226 (n + 1)

end A379226

/-! ## A379226.P11254621877174505989

`filter[A073899(n+1), A379227(#)]`
-/

namespace A379226.P11254621877174505989
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073899 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A379227 (f1 j).toNat = 1) n)

end

end A379226.P11254621877174505989

namespace A379226

/-- `filter[A073899(n+1), A379227(#)]` -/
def P11254621877174505989.Spec : Prop :=
  ∀ n, P11254621877174505989.a n = A379226 (n + 1)

end A379226

/-! ## A379226.P3173512380945494116

`filter[A089088(n), A379227(#)]`
-/

namespace A379226.P3173512380945494116
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089088 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A379227 (f1 j).toNat = 1) n)

end

end A379226.P3173512380945494116

namespace A379226

/-- `filter[A089088(n), A379227(#)]` -/
def P3173512380945494116.Spec : Prop :=
  ∀ n, P3173512380945494116.a n = A379226 (n + 1)

end A379226

/-! ## A379226.P3868584376528690839

`eq[2, A379225(A008574(n))]`
-/

namespace A379226.P3868584376528690839
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379225 (A008574 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A379226.P3868584376528690839

namespace A379226

/-- `eq[2, A379225(A008574(n))]` -/
def P3868584376528690839.Spec : Prop :=
  ∀ n, (P3868584376528690839.a n : ℤ) = A379226 (n + 1)

end A379226

/-! ## A379226.P5754322792126690578

`filter[A277376(n+1), A379227(#)]`
-/

namespace A379226.P5754322792126690578
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277376 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A379227 (f1 j).toNat = 1) n)

end

end A379226.P5754322792126690578

namespace A379226

/-- `filter[A277376(n+1), A379227(#)]` -/
def P5754322792126690578.Spec : Prop :=
  ∀ n, P5754322792126690578.a n = A379226 (n + 1)

end A379226

/-! ## A379226.P18415863626931599729

`filter[A077157(n), A379227(#)]`
-/

namespace A379226.P18415863626931599729
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077157 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A379227 (f1 j).toNat = 1) n)

end

end A379226.P18415863626931599729

namespace A379226

/-- `filter[A077157(n), A379227(#)]` -/
def P18415863626931599729.Spec : Prop :=
  ∀ n, P18415863626931599729.a n = A379226 (n + 1)

end A379226

/-! ## A379226.P2295253447951191377

`filter[A083197(n+1), A379227(#)]`
-/

namespace A379226.P2295253447951191377
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083197 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A379227 (f1 j).toNat = 1) n)

end

end A379226.P2295253447951191377

namespace A379226

/-- `filter[A083197(n+1), A379227(#)]` -/
def P2295253447951191377.Spec : Prop :=
  ∀ n, P2295253447951191377.a n = A379226 (n + 1)

end A379226

/-! ## A379226.P2149607749120991185

`filter[A073846(n+1), A379227(#)]`
-/

namespace A379226.P2149607749120991185
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073846 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A379227 (f1 j).toNat = 1) n)

end

end A379226.P2149607749120991185

namespace A379226

/-- `filter[A073846(n+1), A379227(#)]` -/
def P2149607749120991185.Spec : Prop :=
  ∀ n, P2149607749120991185.a n = A379226 (n + 1)

end A379226

/-! ## A379226.P5754883530739387

`filter[A222307(n+1), A379227(#)]`
-/

namespace A379226.P5754883530739387
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222307 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A379227 (f1 j).toNat = 1) n)

end

end A379226.P5754883530739387

namespace A379226

/-- `filter[A222307(n+1), A379227(#)]` -/
def P5754883530739387.Spec : Prop :=
  ∀ n, P5754883530739387.a n = A379226 (n + 1)

end A379226

/-! ## A379226.P7858085779371147374

`filter[A077156(n), A379227(#)]`
-/

namespace A379226.P7858085779371147374
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077156 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A379227 (f1 j).toNat = 1) n)

end

end A379226.P7858085779371147374

namespace A379226

/-- `filter[A077156(n), A379227(#)]` -/
def P7858085779371147374.Spec : Prop :=
  ∀ n, P7858085779371147374.a n = A379226 (n + 1)

end A379226

/-! ## A379226.P5517592359664498901

`lt[3, A379225(A219529(3*n))]`
-/

namespace A379226.P5517592359664498901
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379225 (A219529 (3 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A379226.P5517592359664498901

namespace A379226

/-- `lt[3, A379225(A219529(3*n))]` -/
def P5517592359664498901.Spec : Prop :=
  ∀ n, (P5517592359664498901.a n : ℤ) = A379226 (n + 1)

end A379226

/-! ## A379226.P3490045885405511085

`filter[A112975(n+1), A379227(#)]`
-/

namespace A379226.P3490045885405511085
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112975 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A379227 (f1 j).toNat = 1) n)

end

end A379226.P3490045885405511085

namespace A379226

/-- `filter[A112975(n+1), A379227(#)]` -/
def P3490045885405511085.Spec : Prop :=
  ∀ n, P3490045885405511085.a n = A379226 (n + 1)

end A379226

/-!
# A379227: a(n) = 1 if A113177(n) is a multiple of 5, otherwise 0, where A113177 is fully additive with a(p) = Fibonacci(p).

The programs for A379227, the canonical program `A379227.P2007350133702125727` is in `Seq.B004.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A379227 has offset 1).

The definition of A379227 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A379227.P8773460821737261103

`char[A379226(n+1)-1]`
-/

namespace A379227.P8773460821737261103
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379226 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A379227.P8773460821737261103

namespace A379227

/-- `char[A379226(n+1)-1]` -/
def P8773460821737261103.Spec : Prop :=
  ∀ n, (P8773460821737261103.a n : ℤ) = A379227 (n + 1)

end A379227

/-! ## A379227.P2007350133702125727

`C(n-A379225(n+1), n)`

The canonical program, it is in `Seq.B004.C003`.
-/

namespace A379227

/-- `C(n-A379225(n+1), n)` -/
def P2007350133702125727.Spec : Prop :=
  ∀ n, (P2007350133702125727.a n : ℤ) = A379227 (n + 1)

theorem P2007350133702125727.correct : P2007350133702125727.Spec := by
  intro n
  simp only [A379227, Nat.add_sub_cancel]

end A379227

/-! ## A379227.P16721361475839489304

`A079998(A374124(n+1))`
-/

namespace A379227.P16721361475839489304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079998 (A374124 (n + 1)).toNat

end

end A379227.P16721361475839489304

namespace A379227

/-- `A079998(A374124(n+1))` -/
def P16721361475839489304.Spec : Prop :=
  ∀ n, P16721361475839489304.a n = A379227 (n + 1)

end A379227

/-! ## A379227.P9401733271517957101

`A005926(2*n)^A379225(n+1)`
-/

namespace A379227.P9401733271517957101
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005926 (2 * n) : ℚ) ^ (A379225 (n + 1) : ℤ)

end

end A379227.P9401733271517957101

namespace A379227

/-- `A005926(2*n)^A379225(n+1)` -/
def P9401733271517957101.Spec : Prop :=
  ∀ n, P9401733271517957101.a n = (A379227 (n + 1) : ℚ)

end A379227

/-! ## A379227.P5010051172585740710

`A363527(A379225(n+1)+A005926(2*n))`
-/

namespace A379227.P5010051172585740710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363527 (A379225 (n + 1) + A005926 (2 * n)).toNat

end

end A379227.P5010051172585740710

namespace A379227

/-- `A363527(A379225(n+1)+A005926(2*n))` -/
def P5010051172585740710.Spec : Prop :=
  ∀ n, P5010051172585740710.a n = A379227 (n + 1)

end A379227

/-! ## A379227.P10006982354999604039

`A000007(n*A379225(n+1))`
-/

namespace A379227.P10006982354999604039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 ((n : ℤ) * A379225 (n + 1)).toNat

end

end A379227.P10006982354999604039

namespace A379227

/-- `A000007(n*A379225(n+1))` -/
def P10006982354999604039.Spec : Prop :=
  ∀ n, P10006982354999604039.a n = A379227 (n + 1)

end A379227

/-! ## A379227.P8105569119952294457

`A360676(A000040(n+1))^A379225(n+1)`
-/

namespace A379227.P8105569119952294457
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A360676 (A000040 (n + 1)).toNat : ℚ) ^ (A379225 (n + 1) : ℤ)

end

end A379227.P8105569119952294457

namespace A379227

/-- `A360676(A000040(n+1))^A379225(n+1)` -/
def P8105569119952294457.Spec : Prop :=
  ∀ n, P8105569119952294457.a n = (A379227 (n + 1) : ℚ)

end A379227

/-! ## A379227.P4266706868103867629

`A088517(A379225(n+1)+A001463(n+1))`
-/

namespace A379227.P4266706868103867629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088517 (A379225 (n + 1) + A001463 (n + 1)).toNat

end

end A379227.P4266706868103867629

namespace A379227

/-- `A088517(A379225(n+1)+A001463(n+1))` -/
def P4266706868103867629.Spec : Prop :=
  ∀ n, P4266706868103867629.a n = A379227 (n + 1)

end A379227

/-! ## A379227.P4797855742696515402

`A080332(A000954(n+1))^A379225(n+1)`
-/

namespace A379227.P4797855742696515402
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A080332 (A000954 (n + 1)).toNat : ℚ) ^ (A379225 (n + 1) : ℤ)

end

end A379227.P4797855742696515402

namespace A379227

/-- `A080332(A000954(n+1))^A379225(n+1)` -/
def P4797855742696515402.Spec : Prop :=
  ∀ n, P4797855742696515402.a n = (A379227 (n + 1) : ℚ)

end A379227

/-! ## A379227.P2558103501275258526

`A240467(A079366(n)*A379225(n+1))`
-/

namespace A379227.P2558103501275258526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240467 (A079366 n * A379225 (n + 1)).toNat

end

end A379227.P2558103501275258526

namespace A379227

/-- `A240467(A079366(n)*A379225(n+1))` -/
def P2558103501275258526.Spec : Prop :=
  ∀ n, P2558103501275258526.a n = A379227 (n + 1)

end A379227

/-!
# A379228: a(n) = A379126(n) / n.

The programs for A379228, there is no canonical definition to state claims against.
-/

/-! ## A379228.P1467969532953625545

`A379126(n+1)/(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A379228.P1467969532953625545
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A379126 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A379228.P1467969532953625545

/-! ## A379228.P9730184059198908470

`A379120(A379126(n+1))`
-/

namespace A379228.P9730184059198908470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379120 (A379126 (n + 1)).toNat

end

end A379228.P9730184059198908470

/-! ## A379228.P14889195869770120561

`A115873(n+1)+A010054(A236371(n+5))`
-/

namespace A379228.P14889195869770120561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115873 (n + 1) + A010054 (A236371 (n + 5)).toNat

end

end A379228.P14889195869770120561

/-!
# A379229: Difference A003961(k)-(2*k) computed for the natural numbers k for which k and A003961(k) are relatively prime, where A003961 is fully multiplicative with a(prime(i)) = prime(i+1).

The programs for A379229, the canonical program `A379229.P5775022352315501244` is in `Seq.B014.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A379229 has offset 1).

The definition of A379229 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A252748, A319630, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A379229.P5775022352315501244

`A252748(A319630(n+1))`

The canonical program, it is in `Seq.B014.C000`.
-/

namespace A379229

/-- `A252748(A319630(n+1))` -/
def P5775022352315501244.Spec : Prop :=
  ∀ n, P5775022352315501244.a n = A379229 (n + 1)

theorem P5775022352315501244.correct : P5775022352315501244.Spec := by
  intro n
  simp only [A379229, Nat.add_sub_cancel]

end A379229

/-! ## A379229.P6484244706244727034

`A336853(A319630(n+1))-record[A348990(n+1)]`
-/

namespace A379229.P6484244706244727034
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348990 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336853 (A319630 (n + 1)).toNat - f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A379229.P6484244706244727034

namespace A379229

/-- `A336853(A319630(n+1))-record[A348990(n+1)]` -/
def P6484244706244727034.Spec : Prop :=
  ∀ n, P6484244706244727034.a n = A379229 (n + 1)

end A379229

/-! ## A379229.P8511350867490083174

`A336853(lt[A300820(n+1), 2]+1)-A319630(n+1)`
-/

namespace A379229.P8511350867490083174
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300820 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336853 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1) - A319630 (n + 1)

end

end A379229.P8511350867490083174

namespace A379229

/-- `A336853(lt[A300820(n+1), 2]+1)-A319630(n+1)` -/
def P8511350867490083174.Spec : Prop :=
  ∀ n, P8511350867490083174.a n = A379229 (n + 1)

end A379229

/-! ## A379229.P7913403261010037502

`A252748(lt[A300820(n+1), 2]+1)`
-/

namespace A379229.P7913403261010037502
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300820 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252748 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1)

end

end A379229.P7913403261010037502

namespace A379229

/-- `A252748(lt[A300820(n+1), 2]+1)` -/
def P7913403261010037502.Spec : Prop :=
  ∀ n, P7913403261010037502.a n = A379229 (n + 1)

end A379229

/-! ## A379229.P1848985368629454998

`A252748(∪[A162685(n+1), A273130(n+1)])`
-/

namespace A379229.P1848985368629454998
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162685 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273130 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252748 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n)

end

end A379229.P1848985368629454998

namespace A379229

/-- `A252748(∪[A162685(n+1), A273130(n+1)])` -/
def P1848985368629454998.Spec : Prop :=
  ∀ n, P1848985368629454998.a n = A379229 (n + 1)

end A379229

/-! ## A379229.P13403408766279679121

`A252748(∪[A162685(n+1), A317923(n+1)])`
-/

namespace A379229.P13403408766279679121
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162685 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317923 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252748 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n)

end

end A379229.P13403408766279679121

namespace A379229

/-- `A252748(∪[A162685(n+1), A317923(n+1)])` -/
def P13403408766279679121.Spec : Prop :=
  ∀ n, P13403408766279679121.a n = A379229 (n + 1)

end A379229

/-!
# A379230: Difference A003961(k)-(2*k) computed for the natural numbers k for which gcd(k,A003961(k)) > 1, where A003961 is fully multiplicative with a(prime(i)) = prime(i+1).

The programs for A379230, the canonical program `A379230.P706396864197562586` is in `Seq.B013.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A379230 has offset 1).

The definition of A379230 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A104210, A252748, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A379230.P706396864197562586

`A252748(A104210(n+1))`

The canonical program, it is in `Seq.B013.C000`.
-/

namespace A379230

/-- `A252748(A104210(n+1))` -/
def P706396864197562586.Spec : Prop :=
  ∀ n, P706396864197562586.a n = A379230 (n + 1)

theorem P706396864197562586.correct : P706396864197562586.Spec := by
  intro n
  simp only [A379230, Nat.add_sub_cancel]

end A379230

/-!
# A379231: Terms of A379230 whose absolute value is prime.

The programs for A379231, there is no canonical definition to state claims against.
-/

/-! ## A379231.P10059478734696380864

`A252748(A379232(n+1))`
-/

namespace A379231.P10059478734696380864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252748 (A379232 (n + 1)).toNat

end

end A379231.P10059478734696380864

/-!
# A379234: Numbers k for which k XOR 2*k = sigma(k), where sigma is the sum of divisors function.

The programs for A379234, there is no canonical definition to state claims against.
-/

/-! ## A379234.P1785236761207090690

`∩[A325639(n+1), A379236(n+1)]`
-/

namespace A379234.P1785236761207090690
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325639 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379236 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A379234.P1785236761207090690

/-!
# A379238: a(n) = 1 if A003961(n)-sigma(n) is prime, otherwise 0, where A003961 is fully multiplicative with a(prime(i)) = prime(i+1), and sigma is the sum of divisors function.

The programs for A379238, the canonical program `A379238.P6108513974028893075` is in `Seq.B013.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A379238 has offset 1).

The definition of A379238 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8191 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A379238.P1575219349586987822

`char[A379239(n+1)-1]`
-/

namespace A379238.P1575219349586987822
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379239 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A379238.P1575219349586987822

namespace A379238

/-- `char[A379239(n+1)-1]` -/
def P1575219349586987822.Spec : Prop :=
  ∀ n, (P1575219349586987822.a n : ℤ) = A379238 (n + 1)

end A379238

/-! ## A379238.P6108513974028893075

`∑{p}[A286385(n+1), C(#, A286385(n+1))]`

The canonical program, it is in `Seq.B013.C000`.
-/

namespace A379238

/-- `∑{p}[A286385(n+1), C(#, A286385(n+1))]` -/
def P6108513974028893075.Spec : Prop :=
  ∀ n, (P6108513974028893075.a n : ℤ) = A379238 (n + 1)

theorem P6108513974028893075.correct : P6108513974028893075.Spec := by
  intro n
  simp only [A379238, Nat.add_sub_cancel]

end A379238

/-! ## A379238.P1594667873297031043

`A359764(A293808(3*n+4)+A002939(n)+1)`
-/

namespace A379238.P1594667873297031043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359764 (A293808 (3 * n + 4) + A002939 n + 1).toNat

end

end A379238.P1594667873297031043

namespace A379238

/-- `A359764(A293808(3*n+4)+A002939(n)+1)` -/
def P1594667873297031043.Spec : Prop :=
  ∀ n, P1594667873297031043.a n = A379238 (n + 1)

end A379238

/-! ## A379238.P564128802163182368

`A100283(A172161(n+1))`
-/

namespace A379238.P564128802163182368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100283 (A172161 (n + 1)).toNat

end

end A379238.P564128802163182368

namespace A379238

/-- `A100283(A172161(n+1))` -/
def P564128802163182368.Spec : Prop :=
  ∀ n, P564128802163182368.a n = A379238 (n + 1)

end A379238

/-! ## A379238.P12586428600410658113

`A010060(A066016(n+1)+A005897(n+3))`
-/

namespace A379238.P12586428600410658113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010060 (A066016 (n + 1) + A005897 (n + 3)).toNat

end

end A379238.P12586428600410658113

namespace A379238

/-- `A010060(A066016(n+1)+A005897(n+3))` -/
def P12586428600410658113.Spec : Prop :=
  ∀ n, P12586428600410658113.a n = A379238 (n + 1)

end A379238

/-!
# A379239: Numbers k for which A003961(k)-sigma(k) is prime, where A003961 is fully multiplicative with a(prime(i)) = prime(i+1), and sigma is the sum of divisors function.

The programs for A379239, the canonical program `A379239.P5876762698172527924` is in `Seq.B013.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A379239 has offset 1).

The definition of A379239 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A379239.P5876762698172527924

`eq[1, A379238(n+1)]+1`

The canonical program, it is in `Seq.B013.C000`.
-/

namespace A379239

/-- `eq[1, A379238(n+1)]+1` -/
def P5876762698172527924.Spec : Prop :=
  ∀ n, (P5876762698172527924.a n : ℤ) = A379239 (n + 1)

theorem P5876762698172527924.correct : P5876762698172527924.Spec := by
  intro n
  simp only [A379239, Nat.add_sub_cancel]

end A379239

/-! ## A379239.P2088983181777985384

`filter[A047252(n+2), A379238(#)]`
-/

namespace A379239.P2088983181777985384
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047252 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A379238 (f1 j).toNat = 1) n)

end

end A379239.P2088983181777985384

namespace A379239

/-- `filter[A047252(n+2), A379238(#)]` -/
def P2088983181777985384.Spec : Prop :=
  ∀ n, P2088983181777985384.a n = A379239 (n + 1)

end A379239

/-! ## A379239.P1088717616309135362

`filter[A183300(n+1), A379238(#)]`
-/

namespace A379239.P1088717616309135362
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183300 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A379238 (f1 j).toNat = 1) n)

end

end A379239.P1088717616309135362

namespace A379239

/-- `filter[A183300(n+1), A379238(#)]` -/
def P1088717616309135362.Spec : Prop :=
  ∀ n, P1088717616309135362.a n = A379239 (n + 1)

end A379239

/-! ## A379239.P13017160774463478180

`filter[n+2, A379238(#)]`
-/

namespace A379239.P13017160774463478180
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A379238 (f1 j) = 1) n)

end

end A379239.P13017160774463478180

namespace A379239

/-- `filter[n+2, A379238(#)]` -/
def P13017160774463478180.Spec : Prop :=
  ∀ n, (P13017160774463478180.a n : ℤ) = A379239 (n + 1)

end A379239

/-! ## A379239.P14651734229424514965

`A052928(2*(n+2))-A343631(A002379(n))`
-/

namespace A379239.P14651734229424514965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052928 (2 * (n + 2)) - A343631 (A002379 n).toNat

end

end A379239.P14651734229424514965

namespace A379239

/-- `A052928(2*(n+2))-A343631(A002379(n))` -/
def P14651734229424514965.Spec : Prop :=
  ∀ n, P14651734229424514965.a n = A379239 (n + 1)

end A379239

/-!
# A379241: Maximum number of connections for a 2 X n rectangle.

The programs for A379241, there is no canonical definition to state claims against.
-/

/-! ## A379241.P16349959955862183358

`A129832(A301226(n))`
-/

namespace A379241.P16349959955862183358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129832 (A301226 n).toNat

end

end A379241.P16349959955862183358

/-!
# A379242: Minimum crossing number at which there are n torus knots.

The programs for A379242, there is no canonical definition to state claims against.
-/

/-! ## A379242.P17093753015123498990

`∑{d}[A061742(n), gcd(n, #)]`
-/

namespace A379242.P17093753015123498990
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061742 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, Nat.gcd n d

end

end A379242.P17093753015123498990

/-!
# A379244: G.f. A(x) satisfies A(x) = ( (1 + x*A(x)^3)/(1 - x*A(x)) )^2.

The programs for A379244, there is no canonical definition to state claims against.
-/

/-! ## A379244.P2047226667336302830

`A378240(∑[n+3])`
-/

namespace A379244.P2047226667336302830
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378240 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A379244.P2047226667336302830

/-! ## A379244.P17145964901494166583

`record[A378240(n)/A008275(n+3)]`
-/

namespace A379244.P17145964901494166583
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A378240 n : ℚ) / (A008275 (n + 3) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A379244.P17145964901494166583

/-!
# A379249: G.f. A(x) satisfies A(x) = (1 + x*A(x)^3) * (1 + x*A(x))^2.

The programs for A379249, there is no canonical definition to state claims against.
-/

/-! ## A379249.P7037755411116951768

`A247063(or(n², A089945(n)))`
-/

namespace A379249.P7037755411116951768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247063 (Int.lor (n ^ 2 : ℤ) (A089945 n)).toNat

end

end A379249.P7037755411116951768

/-!
# A379250: a(1)=1; thereafter, a(n) is the number of coincidences between the sequence thus far and its terms rearranged in descending order.

The programs for A379250, there is no canonical definition to state claims against.
-/

/-! ## A379250.P18078673644522071215

`A001221(xor(A000203(2*n+5), A011782(n)))`
-/

namespace A379250.P18078673644522071215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (Int.xor (A000203 (2 * n + 5)) (A011782 n)).toNat

end

end A379250.P18078673644522071215

/-! ## A379250.P6009281257236279526

`A086525(A086520(n+4)%A086529(3*n+5))`
-/

namespace A379250.P6009281257236279526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086525 (Int.tmod (A086520 (n + 4)) (A086529 (3 * n + 5))).toNat

end

end A379250.P6009281257236279526

/-! ## A379250.P15471796587973326214

`A353929(A229093(n)+1)`
-/

namespace A379250.P15471796587973326214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353929 (A229093 n + 1).toNat

end

end A379250.P15471796587973326214

/-! ## A379250.P7091438680152742317

`A061336(∑[record[A122542(n)]])`
-/

namespace A379250.P7091438680152742317
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122542 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061336 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A379250.P7091438680152742317

/-! ## A379250.P16885662244884811016

`A001221(A073571(n+1)+A034386(n))`
-/

namespace A379250.P16885662244884811016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A073571 (n + 1) + A034386 n).toNat

end

end A379250.P16885662244884811016

/-!
# A379251: G.f. A(x) satisfies A(x) = ( (1 + x*A(x))/(1 - x*A(x)^2) )^2.

The programs for A379251, there is no canonical definition to state claims against.
-/

/-! ## A379251.P8651347779444465728

`A272206(A151831(n+1))`
-/

namespace A379251.P8651347779444465728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272206 (A151831 (n + 1)).toNat

end

end A379251.P8651347779444465728

/-!
# A379253: G.f. A(x) satisfies A(x) = 1 + x * A(x)^2 * (1 + A(x)^5).

The programs for A379253, there is no canonical definition to state claims against.
-/

/-! ## A379253.P14978024147859897274

`A156351(A098465(2*n)+A080004(n))`
-/

namespace A379253.P14978024147859897274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156351 (A098465 (2 * n) + A080004 n).toNat

end

end A379253.P14978024147859897274

/-!
# A379256: G.f. A(x) satisfies A(x) = 1 + x * A(x)^3 * (1 + A(x)^4).

The programs for A379256, there is no canonical definition to state claims against.
-/

/-! ## A379256.P12813275735837617629

`A011782(n)*A101519(A000124(n))`
-/

namespace A379256.P12813275735837617629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 n * A101519 (A000124 n).toNat

end

end A379256.P12813275735837617629

/-!
# A379258: a(n) is the number of iterations of the Euler phi function needed to reach 1 starting at the n-th 3-smooth number.

The programs for A379258, there is no canonical definition to state claims against.
-/

/-! ## A379258.P10214674986391115463

`A049108(A003586(n+1))`
-/

namespace A379258.P10214674986391115463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049108 (A003586 (n + 1)).toNat

end

end A379258.P10214674986391115463

/-! ## A379258.P6753358023285962262

`A297113(A003586(n+1))+A038713(2*n+1)`
-/

namespace A379258.P6753358023285962262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297113 (A003586 (n + 1)).toNat + A038713 (2 * n + 1)

end

end A379258.P6753358023285962262

/-! ## A379258.P337228883923749270

`A003434(A007694(n+2)/2)+1`
-/

namespace A379258.P337228883923749270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003434 (SequenceMachineLib.roundAway ((A007694 (n + 2) : ℚ) / 2)).toNat + 1

end

end A379258.P337228883923749270

/-! ## A379258.P11311016509614589856

`A003434(A065119(n+1)/3)+1`
-/

namespace A379258.P11311016509614589856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003434 (SequenceMachineLib.roundAway ((A065119 (n + 1) : ℚ) / 3)).toNat + 1

end

end A379258.P11311016509614589856

/-! ## A379258.P13961337580881017163

`A003434(A187778(n+2)/6)+1`
-/

namespace A379258.P13961337580881017163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003434 (SequenceMachineLib.roundAway ((A187778 (n + 2) : ℚ) / 6)).toNat + 1

end

end A379258.P13961337580881017163

/-! ## A379258.P16914276652339310323

`A003434(∩[A108319(n+1), A257997(n+1)])+1`
-/

namespace A379258.P16914276652339310323
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108319 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257997 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003434 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n) + 1

end

end A379258.P16914276652339310323

/-!
# A379259: a(n) is the number of iterations that n requires to reach a 3-smooth number under the map x -> phi(x).

The programs for A379259, there is no canonical definition to state claims against.
-/

/-! ## A379259.P15289439178438684281

`A001222(A126760(3*(n+1))%A269302(3*n+1))`
-/

namespace A379259.P15289439178438684281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (Int.tmod (A126760 (3 * (n + 1))) (A269302 (3 * n + 1))).toNat

end

end A379259.P15289439178438684281

/-! ## A379259.P14747540182592335375

`A078349(n+1)-A289508(A015128(n))`
-/

namespace A379259.P14747540182592335375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078349 (n + 1) - A289508 (A015128 n).toNat

end

end A379259.P14747540182592335375

/-! ## A379259.P3535274861616080241

`A233862(A287665(n+1))%A357982(n+1)`
-/

namespace A379259.P3535274861616080241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A233862 (A287665 (n + 1)).toNat) (A357982 (n + 1))

end

end A379259.P3535274861616080241

/-! ## A379259.P3750706137123748930

`A191043(A238812(2*n+1))%A078349(2*(n+1))`
-/

namespace A379259.P3750706137123748930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A191043 (A238812 (2 * n + 1)).toNat) (A078349 (2 * (n + 1)))

end

end A379259.P3750706137123748930

/-! ## A379259.P11904070095589564437

`A007641(A036966(2*(n+2)))%A078349(2*(n+1))`
-/

namespace A379259.P11904070095589564437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A007641 (A036966 (2 * (n + 2))).toNat) (A078349 (2 * (n + 1)))

end

end A379259.P11904070095589564437

/-!
# A379264: Pentagonal numbers that are abundant.

The programs for A379264, there is no canonical definition to state claims against.
-/

/-! ## A379264.P7859037987968165565

`filter[A000326(n+1), A294936(#)]`
-/

namespace A379264.P7859037987968165565
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000326 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A294936 (f1 j).toNat = 1) n)

end

end A379264.P7859037987968165565

/-! ## A379264.P8691212244003558272

`filter[A000326(n+2), A378550(#)]`
-/

namespace A379264.P8691212244003558272
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000326 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A378550 (f1 j).toNat = 1) n)

end

end A379264.P8691212244003558272

/-! ## A379264.P790119849579584926

`filter[A027626(3*n), A294936(#)]`
-/

namespace A379264.P790119849579584926
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027626 (3 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A294936 (f1 j).toNat = 1) n)

end

end A379264.P790119849579584926

/-! ## A379264.P10622906645298242743

`filter[A236343(3*n), A294936(#)]`
-/

namespace A379264.P10622906645298242743
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236343 (3 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A294936 (f1 j).toNat = 1) n)

end

end A379264.P10622906645298242743

/-!
# A379265: a(n) is the number of coincidences of the first n terms of this sequence and A379266, i.e., the number of equalities a(k) = A379266(k) for 0 <= k < n.

The programs for A379265, there is no canonical definition to state claims against.
-/

/-! ## A379265.P2099970691088549231

`floor(log(A276881(2*n+1)))`
-/

namespace A379265.P2099970691088549231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.log (A276881 (2 * n + 1) : ℝ)⌋

end

end A379265.P2099970691088549231

/-! ## A379265.P4724329951458478452

`floor(log(A344158(2*n+1)))`
-/

namespace A379265.P4724329951458478452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.log (A344158 (2 * n + 1) : ℝ)⌋

end

end A379265.P4724329951458478452

/-! ## A379265.P11464010386109817410

`floor(log(A380834(2*n+1)))`
-/

namespace A379265.P11464010386109817410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.log (A380834 (2 * n + 1) : ℝ)⌋

end

end A379265.P11464010386109817410

/-! ## A379265.P9126858075480224298

`ceil(log(∑[A037291(2*n+5)]))`
-/

namespace A379265.P9126858075480224298
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037291 (2 * n + 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.log ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℝ)⌉

end

end A379265.P9126858075480224298

/-! ## A379265.P5265281392855049432

`floor((19*n+9)/A367768(2*n+5))`
-/

namespace A379265.P5265281392855049432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(19 * n + 9 : ℚ) / (A367768 (2 * n + 5) : ℚ)⌋

end

end A379265.P5265281392855049432

/-!
# A379266: a(n) is the number of coincidences of the first n terms of this sequence and the first n terms of A379265 in reverse order, i.e., the number of equalities a(k) = A379265(n-1-k) for 0 <= k < n.

The programs for A379266, there is no canonical definition to state claims against.
-/

/-! ## A379266.P18146398830410498662

`A380189(n)%A316336(n+1)`
-/

namespace A379266.P18146398830410498662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A380189 n) (A316336 (n + 1))

end

end A379266.P18146398830410498662

/-! ## A379266.P5233706353760737247

`A380189(n)+A000007(A188670(n))`
-/

namespace A379266.P5233706353760737247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380189 n + A000007 (A188670 n).toNat

end

end A379266.P5233706353760737247

/-! ## A379266.P670955640518421086

`A010052(A016754(n))*A380189(n)`
-/

namespace A379266.P670955640518421086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010052 (A016754 n).toNat * A380189 n

end

end A379266.P670955640518421086

/-! ## A379266.P1957370107710899798

`A380189(n)+A000007(A237812(n+1))`
-/

namespace A379266.P1957370107710899798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380189 n + A000007 (A237812 (n + 1)).toNat

end

end A379266.P1957370107710899798

/-! ## A379266.P3968908428315783217

`A380189(n)+A154955(A350140(n+3))`
-/

namespace A379266.P3968908428315783217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380189 n + A154955 (A350140 (n + 3)).toNat

end

end A379266.P3968908428315783217

/-! ## A379266.P12044306262534310372

`lcm(A033999(A379297(n+2)), A380189(n))`
-/

namespace A379266.P12044306262534310372
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 (A379297 (n + 2)).toNat) (A380189 n)

end

end A379266.P12044306262534310372

/-! ## A379266.P126125321813973829

`A076933(A163623(n+1))^A025479(n+1)*A380189(n)`
-/

namespace A379266.P126125321813973829
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A076933 (A163623 (n + 1)).toNat : ℚ) ^ (A025479 (n + 1) : ℤ) * (A380189 n : ℚ)

end

end A379266.P126125321813973829

/-!
# A379267: Numbers whose binary representation contains exactly two zeros.

The programs for A379267, the canonical program `A379267.P15908437696186355973` is in `Seq.B007.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A379267 has offset 1).

The definition of A379267 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 469 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A379267.P2033026665514509214

`(A357773(n+1)-1)/2`
-/

namespace A379267.P2033026665514509214
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A357773 (n + 1) - 1 : ℚ) / 2

end

end A379267.P2033026665514509214

namespace A379267

/-- `(A357773(n+1)-1)/2` -/
def P2033026665514509214.Spec : Prop :=
  ∀ n, P2033026665514509214.a n = (A379267 (n + 1) : ℚ)

end A379267

/-! ## A379267.P12077464797748081839

`eq[3, A290251(n)]`
-/

namespace A379267.P12077464797748081839
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290251 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A379267.P12077464797748081839

namespace A379267

/-- `eq[3, A290251(n)]` -/
def P12077464797748081839.Spec : Prop :=
  ∀ n, (P12077464797748081839.a n : ℤ) = A379267 (n + 1)

end A379267

/-! ## A379267.P15908437696186355973

`∩[A144754(n+1), A059010(n)]`

The canonical program, it is in `Seq.B007.C001`.
-/

namespace A379267

/-- `∩[A144754(n+1), A059010(n)]` -/
def P15908437696186355973.Spec : Prop :=
  ∀ n, (P15908437696186355973.a n : ℤ) = A379267 (n + 1)

theorem P15908437696186355973.correct : P15908437696186355973.Spec := by
  intro n
  simp only [A379267, Nat.add_sub_cancel]

end A379267

/-! ## A379267.P14131593182627098839

`∩[A143070(n+1), A144754(n+1)]`
-/

namespace A379267.P14131593182627098839
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143070 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144754 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A379267.P14131593182627098839

namespace A379267

/-- `∩[A143070(n+1), A144754(n+1)]` -/
def P14131593182627098839.Spec : Prop :=
  ∀ n, (P14131593182627098839.a n : ℤ) = A379267 (n + 1)

end A379267

/-! ## A379267.P5063610303761998435

`eq[8, A267584(n)]`
-/

namespace A379267.P5063610303761998435
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267584 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A379267.P5063610303761998435

namespace A379267

/-- `eq[8, A267584(n)]` -/
def P5063610303761998435.Spec : Prop :=
  ∀ n, (P5063610303761998435.a n : ℤ) = A379267 (n + 1)

end A379267

/-! ## A379267.P11648188724217549122

`eq[2, A023416(n)]`
-/

namespace A379267.P11648188724217549122
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023416 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A379267.P11648188724217549122

namespace A379267

/-- `eq[2, A023416(n)]` -/
def P11648188724217549122.Spec : Prop :=
  ∀ n, (P11648188724217549122.a n : ℤ) = A379267 (n + 1)

end A379267

/-! ## A379267.P899437327894396722

`eq[2, A080791(n)]`
-/

namespace A379267.P899437327894396722
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080791 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A379267.P899437327894396722

namespace A379267

/-- `eq[2, A080791(n)]` -/
def P899437327894396722.Spec : Prop :=
  ∀ n, (P899437327894396722.a n : ℤ) = A379267 (n + 1)

end A379267

/-! ## A379267.P11900913723742049238

`eq[2, A139329(n)]`
-/

namespace A379267.P11900913723742049238
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139329 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A379267.P11900913723742049238

namespace A379267

/-- `eq[2, A139329(n)]` -/
def P11900913723742049238.Spec : Prop :=
  ∀ n, (P11900913723742049238.a n : ℤ) = A379267 (n + 1)

end A379267

/-! ## A379267.P16504664720003022916

`eq[4, A080100(n)]`
-/

namespace A379267.P16504664720003022916
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080100 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A379267.P16504664720003022916

namespace A379267

/-- `eq[4, A080100(n)]` -/
def P16504664720003022916.Spec : Prop :=
  ∀ n, (P16504664720003022916.a n : ℤ) = A379267 (n + 1)

end A379267

/-! ## A379267.P3102727045304061686

`eq[9, A309057(n)]`
-/

namespace A379267.P3102727045304061686
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309057 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A379267.P3102727045304061686

namespace A379267

/-- `eq[9, A309057(n)]` -/
def P3102727045304061686.Spec : Prop :=
  ∀ n, (P3102727045304061686.a n : ℤ) = A379267 (n + 1)

end A379267

/-! ## A379267.P15551043422056254535

`eq[1, A086784(n+1)]`
-/

namespace A379267.P15551043422056254535
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086784 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A379267.P15551043422056254535

namespace A379267

/-- `eq[1, A086784(n+1)]` -/
def P15551043422056254535.Spec : Prop :=
  ∀ n, (P15551043422056254535.a n : ℤ) = A379267 (n + 1)

end A379267

/-! ## A379267.P7723859714921153189

`eq[1, A086784(n)]-1`
-/

namespace A379267.P7723859714921153189
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086784 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n : ℤ) - 1

end

end A379267.P7723859714921153189

namespace A379267

/-- `eq[1, A086784(n)]-1` -/
def P7723859714921153189.Spec : Prop :=
  ∀ n, P7723859714921153189.a n = A379267 (n + 1)

end A379267

/-! ## A379267.P10303544157308292465

`eq[3, A008687(n+1)]`
-/

namespace A379267.P10303544157308292465
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008687 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A379267.P10303544157308292465

namespace A379267

/-- `eq[3, A008687(n+1)]` -/
def P10303544157308292465.Spec : Prop :=
  ∀ n, (P10303544157308292465.a n : ℤ) = A379267 (n + 1)

end A379267

/-! ## A379267.P8462720828899148805

`A298847(A014311(n+1))`
-/

namespace A379267.P8462720828899148805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298847 (A014311 (n + 1)).toNat

end

end A379267.P8462720828899148805

namespace A379267

/-- `A298847(A014311(n+1))` -/
def P8462720828899148805.Spec : Prop :=
  ∀ n, P8462720828899148805.a n = A379267 (n + 1)

end A379267

/-! ## A379267.P16017365960624902841

`eq[2, A000120(A035327(n))]`
-/

namespace A379267.P16017365960624902841
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A035327 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A379267.P16017365960624902841

namespace A379267

/-- `eq[2, A000120(A035327(n))]` -/
def P16017365960624902841.Spec : Prop :=
  ∀ n, (P16017365960624902841.a n : ℤ) = A379267 (n + 1)

end A379267

/-! ## A379267.P17137576416626149605

`eq[2, A000120(A036044(n))]`
-/

namespace A379267.P17137576416626149605
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A036044 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A379267.P17137576416626149605

namespace A379267

/-- `eq[2, A000120(A036044(n))]` -/
def P17137576416626149605.Spec : Prop :=
  ∀ n, (P17137576416626149605.a n : ℤ) = A379267 (n + 1)

end A379267

/-! ## A379267.P4121015864780701175

`eq[A001316(n), A072376(n)]`
-/

namespace A379267.P4121015864780701175
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001316 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072376 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A379267.P4121015864780701175

namespace A379267

/-- `eq[A001316(n), A072376(n)]` -/
def P4121015864780701175.Spec : Prop :=
  ∀ n, (P4121015864780701175.a n : ℤ) = A379267 (n + 1)

end A379267

/-! ## A379267.P8515273861294537427

`eq[A053644(n), A071051(n)]`
-/

namespace A379267.P8515273861294537427
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053644 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071051 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A379267.P8515273861294537427

namespace A379267

/-- `eq[A053644(n), A071051(n)]` -/
def P8515273861294537427.Spec : Prop :=
  ∀ n, (P8515273861294537427.a n : ℤ) = A379267 (n + 1)

end A379267

/-! ## A379267.P5619990737565885960

`eq[A053644(n), A117973(n)]`
-/

namespace A379267.P5619990737565885960
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053644 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117973 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A379267.P5619990737565885960

namespace A379267

/-- `eq[A053644(n), A117973(n)]` -/
def P5619990737565885960.Spec : Prop :=
  ∀ n, (P5619990737565885960.a n : ℤ) = A379267 (n + 1)

end A379267

/-! ## A379267.P8760667259053342341

`eq[A053644(n), A167275(n)]`
-/

namespace A379267.P8760667259053342341
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053644 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167275 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A379267.P8760667259053342341

namespace A379267

/-- `eq[A053644(n), A167275(n)]` -/
def P8760667259053342341.Spec : Prop :=
  ∀ n, (P8760667259053342341.a n : ℤ) = A379267 (n + 1)

end A379267

/-!
# A379268: Numbers with only digits "1" and two digits "0".

The programs for A379268, the canonical program `A379268.P8143241729187957033` is in `Seq.B008.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A379268 has offset 1).

The definition of A379268 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007088, A379267, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A379268.P8143241729187957033

`A007088(A379267(n+1))`

The canonical program, it is in `Seq.B008.C001`.
-/

namespace A379268

/-- `A007088(A379267(n+1))` -/
def P8143241729187957033.Spec : Prop :=
  ∀ n, P8143241729187957033.a n = A379268 (n + 1)

theorem P8143241729187957033.correct : P8143241729187957033.Spec := by
  intro n
  simp only [A379268, Nat.add_sub_cancel]

end A379268

/-! ## A379268.P7320387947910571409

`A004283(A044999(n+1))`
-/

namespace A379268.P7320387947910571409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004283 (A044999 (n + 1)).toNat

end

end A379268.P7320387947910571409

namespace A379268

/-- `A004283(A044999(n+1))` -/
def P7320387947910571409.Spec : Prop :=
  ∀ n, P7320387947910571409.a n = A379268 (n + 1)

end A379268

/-! ## A379268.P1259925789411393734

`A007088(eq[2, A023416(n)])`
-/

namespace A379268.P1259925789411393734
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023416 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A379268.P1259925789411393734

namespace A379268

/-- `A007088(eq[2, A023416(n)])` -/
def P1259925789411393734.Spec : Prop :=
  ∀ n, P1259925789411393734.a n = A379268 (n + 1)

end A379268

/-! ## A379268.P78930699730063327

`A007088(eq[2, A080791(n)])`
-/

namespace A379268.P78930699730063327
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080791 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A379268.P78930699730063327

namespace A379268

/-- `A007088(eq[2, A080791(n)])` -/
def P78930699730063327.Spec : Prop :=
  ∀ n, P78930699730063327.a n = A379268 (n + 1)

end A379268

/-! ## A379268.P13019900902094310452

`A007088(eq[3, A290251(n)])`
-/

namespace A379268.P13019900902094310452
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290251 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A379268.P13019900902094310452

namespace A379268

/-- `A007088(eq[3, A290251(n)])` -/
def P13019900902094310452.Spec : Prop :=
  ∀ n, P13019900902094310452.a n = A379268 (n + 1)

end A379268

/-! ## A379268.P5758034535567531749

`A007089(A044975(n+1)/2)`
-/

namespace A379268.P5758034535567531749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007089 (SequenceMachineLib.roundAway ((A044975 (n + 1) : ℚ) / 2)).toNat

end

end A379268.P5758034535567531749

namespace A379268

/-- `A007089(A044975(n+1)/2)` -/
def P5758034535567531749.Spec : Prop :=
  ∀ n, P5758034535567531749.a n = A379268 (n + 1)

end A379268

/-!
# A379269: Numbers whose binary representation has exactly three zeros.

The programs for A379269, the canonical program `A379269.P8220945055481371508` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A379269 has offset 1).

The definition of A379269 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1456 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A379269.P17964314784237815969

`(A360573(n+1)-1)/2`
-/

namespace A379269.P17964314784237815969
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A360573 (n + 1) - 1 : ℚ) / 2

end

end A379269.P17964314784237815969

namespace A379269

/-- `(A360573(n+1)-1)/2` -/
def P17964314784237815969.Spec : Prop :=
  ∀ n, P17964314784237815969.a n = (A379269 (n + 1) : ℚ)

end A379269

/-! ## A379269.P8220945055481371508

`eq[4, A290251(n)]`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A379269

/-- `eq[4, A290251(n)]` -/
def P8220945055481371508.Spec : Prop :=
  ∀ n, (P8220945055481371508.a n : ℤ) = A379269 (n + 1)

theorem P8220945055481371508.correct : P8220945055481371508.Spec := by
  intro n
  simp only [A379269, Nat.add_sub_cancel]

end A379269

/-! ## A379269.P8499429115071816447

`eq[A040056(n), A267584(n)]`
-/

namespace A379269.P8499429115071816447
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040056 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267584 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A379269.P8499429115071816447

namespace A379269

/-- `eq[A040056(n), A267584(n)]` -/
def P8499429115071816447.Spec : Prop :=
  ∀ n, (P8499429115071816447.a n : ℤ) = A379269 (n + 1)

end A379269

/-! ## A379269.P7222822991028878779

`eq[3, A023416(n)]`
-/

namespace A379269.P7222822991028878779
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023416 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A379269.P7222822991028878779

namespace A379269

/-- `eq[3, A023416(n)]` -/
def P7222822991028878779.Spec : Prop :=
  ∀ n, (P7222822991028878779.a n : ℤ) = A379269 (n + 1)

end A379269

/-! ## A379269.P15935308353540417443

`eq[3, A080791(n)]`
-/

namespace A379269.P15935308353540417443
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080791 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A379269.P15935308353540417443

namespace A379269

/-- `eq[3, A080791(n)]` -/
def P15935308353540417443.Spec : Prop :=
  ∀ n, (P15935308353540417443.a n : ℤ) = A379269 (n + 1)

end A379269

/-! ## A379269.P6276797960384090037

`eq[6, A139329(n)]`
-/

namespace A379269.P6276797960384090037
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139329 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A379269.P6276797960384090037

namespace A379269

/-- `eq[6, A139329(n)]` -/
def P6276797960384090037.Spec : Prop :=
  ∀ n, (P6276797960384090037.a n : ℤ) = A379269 (n + 1)

end A379269

/-! ## A379269.P15537206383582253010

`eq[8, A080100(n)]`
-/

namespace A379269.P15537206383582253010
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080100 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A379269.P15537206383582253010

namespace A379269

/-- `eq[8, A080100(n)]` -/
def P15537206383582253010.Spec : Prop :=
  ∀ n, (P15537206383582253010.a n : ℤ) = A379269 (n + 1)

end A379269

/-! ## A379269.P7858794232644332267

`eq[2, A086784(n+1)]`
-/

namespace A379269.P7858794232644332267
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086784 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A379269.P7858794232644332267

namespace A379269

/-- `eq[2, A086784(n+1)]` -/
def P7858794232644332267.Spec : Prop :=
  ∀ n, (P7858794232644332267.a n : ℤ) = A379269 (n + 1)

end A379269

/-! ## A379269.P1812025807749739018

`eq[2, A086784(n)]-1`
-/

namespace A379269.P1812025807749739018
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086784 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n : ℤ) - 1

end

end A379269.P1812025807749739018

namespace A379269

/-- `eq[2, A086784(n)]-1` -/
def P1812025807749739018.Spec : Prop :=
  ∀ n, P1812025807749739018.a n = A379269 (n + 1)

end A379269

/-! ## A379269.P2418990563723504251

`eq[4, A008687(n+1)]`
-/

namespace A379269.P2418990563723504251
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008687 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A379269.P2418990563723504251

namespace A379269

/-- `eq[4, A008687(n+1)]` -/
def P2418990563723504251.Spec : Prop :=
  ∀ n, (P2418990563723504251.a n : ℤ) = A379269 (n + 1)

end A379269

/-! ## A379269.P6765855264513305160

`eq[A071051(n), A072376(n)]`
-/

namespace A379269.P6765855264513305160
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071051 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072376 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A379269.P6765855264513305160

namespace A379269

/-- `eq[A071051(n), A072376(n)]` -/
def P6765855264513305160.Spec : Prop :=
  ∀ n, (P6765855264513305160.a n : ℤ) = A379269 (n + 1)

end A379269

/-! ## A379269.P6865820389852982543

`eq[A072376(n), A117973(n)]`
-/

namespace A379269.P6865820389852982543
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072376 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117973 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A379269.P6865820389852982543

namespace A379269

/-- `eq[A072376(n), A117973(n)]` -/
def P6865820389852982543.Spec : Prop :=
  ∀ n, (P6865820389852982543.a n : ℤ) = A379269 (n + 1)

end A379269

/-! ## A379269.P18372572590834827559

`eq[A072376(n), A167275(n)]`
-/

namespace A379269.P18372572590834827559
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072376 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167275 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A379269.P18372572590834827559

namespace A379269

/-- `eq[A072376(n), A167275(n)]` -/
def P18372572590834827559.Spec : Prop :=
  ∀ n, (P18372572590834827559.a n : ℤ) = A379269 (n + 1)

end A379269

/-! ## A379269.P16120454497691518938

`eq[A023449(n), A353292(n)]`
-/

namespace A379269.P16120454497691518938
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023449 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353292 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A379269.P16120454497691518938

namespace A379269

/-- `eq[A023449(n), A353292(n)]` -/
def P16120454497691518938.Spec : Prop :=
  ∀ n, (P16120454497691518938.a n : ℤ) = A379269 (n + 1)

end A379269

/-! ## A379269.P7685075745723688587

`eq[2*A001316(n), A072376(n)]`
-/

namespace A379269.P7685075745723688587
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A001316 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072376 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A379269.P7685075745723688587

namespace A379269

/-- `eq[2*A001316(n), A072376(n)]` -/
def P7685075745723688587.Spec : Prop :=
  ∀ n, (P7685075745723688587.a n : ℤ) = A379269 (n + 1)

end A379269

/-! ## A379269.P7254864739844154226

`A298847(A014312(n+1))`
-/

namespace A379269.P7254864739844154226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298847 (A014312 (n + 1)).toNat

end

end A379269.P7254864739844154226

namespace A379269

/-- `A298847(A014312(n+1))` -/
def P7254864739844154226.Spec : Prop :=
  ∀ n, P7254864739844154226.a n = A379269 (n + 1)

end A379269

/-! ## A379269.P10868299271776301815

`eq[7, A115378(2*n+1)]`
-/

namespace A379269.P10868299271776301815
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115378 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A379269.P10868299271776301815

namespace A379269

/-- `eq[7, A115378(2*n+1)]` -/
def P10868299271776301815.Spec : Prop :=
  ∀ n, (P10868299271776301815.a n : ℤ) = A379269 (n + 1)

end A379269

/-! ## A379269.P5205212576990079825

`A140977(a(n-1))` with `a(0)=8`
-/

namespace A379269.P5205212576990079825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [8] fun n a =>
  A140977 (a (n - 1)).toNat

end

end A379269.P5205212576990079825

namespace A379269

/-- `A140977(a(n-1))` -/
def P5205212576990079825.Spec : Prop :=
  ∀ n, P5205212576990079825.a n = A379269 (n + 1)

end A379269

/-! ## A379269.P13521779442690710688

`A065361(A045004(n+1))`
-/

namespace A379269.P13521779442690710688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065361 (A045004 (n + 1)).toNat

end

end A379269.P13521779442690710688

namespace A379269

/-- `A065361(A045004(n+1))` -/
def P13521779442690710688.Spec : Prop :=
  ∀ n, P13521779442690710688.a n = A379269 (n + 1)

end A379269

/-!
# A379270: Numbers with only digits "1" and three digits "0".

The programs for A379270, the canonical program `A379270.P214839080612955270` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A379270 has offset 1).

The definition of A379270 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007088, A379269, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A379270.P214839080612955270

`A007088(A379269(n+1))`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A379270

/-- `A007088(A379269(n+1))` -/
def P214839080612955270.Spec : Prop :=
  ∀ n, P214839080612955270.a n = A379270 (n + 1)

theorem P214839080612955270.correct : P214839080612955270.Spec := by
  intro n
  simp only [A379270, Nat.add_sub_cancel]

end A379270

/-! ## A379270.P7183825515142748874

`A004283(A045004(n+1))`
-/

namespace A379270.P7183825515142748874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004283 (A045004 (n + 1)).toNat

end

end A379270.P7183825515142748874

namespace A379270

/-- `A004283(A045004(n+1))` -/
def P7183825515142748874.Spec : Prop :=
  ∀ n, P7183825515142748874.a n = A379270 (n + 1)

end A379270

/-! ## A379270.P608415284998044830

`A007088(eq[3, A023416(n)])`
-/

namespace A379270.P608415284998044830
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023416 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A379270.P608415284998044830

namespace A379270

/-- `A007088(eq[3, A023416(n)])` -/
def P608415284998044830.Spec : Prop :=
  ∀ n, P608415284998044830.a n = A379270 (n + 1)

end A379270

/-! ## A379270.P9575767827361390843

`A007088(eq[3, A080791(n)])`
-/

namespace A379270.P9575767827361390843
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080791 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A379270.P9575767827361390843

namespace A379270

/-- `A007088(eq[3, A080791(n)])` -/
def P9575767827361390843.Spec : Prop :=
  ∀ n, P9575767827361390843.a n = A379270 (n + 1)

end A379270

/-! ## A379270.P16573130950656108849

`A007088(eq[4, A290251(n)])`
-/

namespace A379270.P16573130950656108849
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290251 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A379270.P16573130950656108849

namespace A379270

/-- `A007088(eq[4, A290251(n)])` -/
def P16573130950656108849.Spec : Prop :=
  ∀ n, P16573130950656108849.a n = A379270 (n + 1)

end A379270

/-! ## A379270.P3935975870428469270

`A007089(A044980(n+1)/2)`
-/

namespace A379270.P3935975870428469270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007089 (SequenceMachineLib.roundAway ((A044980 (n + 1) : ℚ) / 2)).toNat

end

end A379270.P3935975870428469270

namespace A379270

/-- `A007089(A044980(n+1)/2)` -/
def P3935975870428469270.Spec : Prop :=
  ∀ n, P3935975870428469270.a n = A379270 (n + 1)

end A379270

/-!
# A379271: Composite numbers, k, whose prime factors, viewed on a log log scale, have a small standard deviation defined with respect to bigomega(k), as specified in the comments.

The programs for A379271, there is no canonical definition to state claims against.
-/

/-! ## A379271.P1942014573788894016

`lt[A033676(A335261(n+1)), A095165(n+1)]+1`
-/

namespace A379271.P1942014573788894016
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033676 (A335261 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095165 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A379271.P1942014573788894016

/-! ## A379271.P155455543219296424

`lt[A334294(n+2), A334289(n+1)]+1`
-/

namespace A379271.P155455543219296424
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334294 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334289 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A379271.P155455543219296424

/-! ## A379271.P4978751557175950235

`lt[A014612(n+1), A086959(n+1)]+1`
-/

namespace A379271.P4978751557175950235
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014612 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086959 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A379271.P4978751557175950235

/-! ## A379271.P3050529515261163356

`A020725(lt[A014612(n+1), A086959(n+1)])`
-/

namespace A379271.P3050529515261163356
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014612 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086959 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A379271.P3050529515261163356

/-!
# A379272: Number of binary min-heaps on n elements from the set {0,1} that give a max-heap when reversed.

The programs for A379272, there is no canonical definition to state claims against.
-/

/-! ## A379272.P6057769845624036704

`A269990(A035968(n+2))`
-/

namespace A379272.P6057769845624036704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269990 (A035968 (n + 2)).toNat

end

end A379272.P6057769845624036704

/-! ## A379272.P18357674194558975317

`∑[A338260(∑[A116392(n)])]`
-/

namespace A379272.P18357674194558975317
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116392 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338260 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A379272.P18357674194558975317

/-!
# A379274: a(n) = A135414(n) mod 2.

The programs for A379274, the canonical program `A379274.P5229334467215772690` is in `Seq.B001.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A379274 has offset 1).

The definition of A379274 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A379274.P5229334467215772690

`A135414(n+1)%2`

The canonical program, it is in `Seq.B001.C010`.
-/

namespace A379274

/-- `A135414(n+1)%2` -/
def P5229334467215772690.Spec : Prop :=
  ∀ n, P5229334467215772690.a n = A379274 (n + 1)

theorem P5229334467215772690.correct : P5229334467215772690.Spec := by
  intro n
  simp only [A379274, Nat.add_sub_cancel]

end A379274

/-! ## A379274.P13328966390892047705

`A000035(A135414(n+1))`
-/

namespace A379274.P13328966390892047705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A135414 (n + 1)).toNat

end

end A379274.P13328966390892047705

namespace A379274

/-- `A000035(A135414(n+1))` -/
def P13328966390892047705.Spec : Prop :=
  ∀ n, P13328966390892047705.a n = A379274 (n + 1)

end A379274

/-! ## A379274.P5168973911430710298

`A059841(A135414(n+1)+1)`
-/

namespace A379274.P5168973911430710298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059841 (A135414 (n + 1) + 1).toNat

end

end A379274.P5168973911430710298

namespace A379274

/-- `A059841(A135414(n+1)+1)` -/
def P5168973911430710298.Spec : Prop :=
  ∀ n, P5168973911430710298.a n = A379274 (n + 1)

end A379274

/-! ## A379274.P981709906799337396

`and(1, A135414(A000027(n+1)))`
-/

namespace A379274.P981709906799337396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A135414 (A000027 (n + 1)).toNat)

end

end A379274.P981709906799337396

namespace A379274

/-- `and(1, A135414(A000027(n+1)))` -/
def P981709906799337396.Spec : Prop :=
  ∀ n, P981709906799337396.a n = A379274 (n + 1)

end A379274

/-! ## A379274.P14197787753126387273

`and(A135414(n+1), A158388(n))`
-/

namespace A379274.P14197787753126387273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A135414 (n + 1)) (A158388 n)

end

end A379274.P14197787753126387273

namespace A379274

/-- `and(A135414(n+1), A158388(n))` -/
def P14197787753126387273.Spec : Prop :=
  ∀ n, P14197787753126387273.a n = A379274 (n + 1)

end A379274

/-! ## A379274.P16233060622507847690

`A171587(A005614(A005206(n))+n+1)`
-/

namespace A379274.P16233060622507847690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171587 (A005614 (A005206 n).toNat + (n + 1 : ℤ)).toNat

end

end A379274.P16233060622507847690

namespace A379274

/-- `A171587(A005614(A005206(n))+n+1)` -/
def P16233060622507847690.Spec : Prop :=
  ∀ n, P16233060622507847690.a n = A379274 (n + 1)

end A379274

/-! ## A379274.P11259086793334209782

`A171587(A005206(A135414(n+1)+n+1))`
-/

namespace A379274.P11259086793334209782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171587 (A005206 (A135414 (n + 1) + (n + 1 : ℤ)).toNat).toNat

end

end A379274.P11259086793334209782

namespace A379274

/-- `A171587(A005206(A135414(n+1)+n+1))` -/
def P11259086793334209782.Spec : Prop :=
  ∀ n, P11259086793334209782.a n = A379274 (n + 1)

end A379274

/-! ## A379274.P8229510031225231997

`A140081(2*A135414(n+1))`
-/

namespace A379274.P8229510031225231997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140081 (2 * A135414 (n + 1)).toNat

end

end A379274.P8229510031225231997

namespace A379274

/-- `A140081(2*A135414(n+1))` -/
def P8229510031225231997.Spec : Prop :=
  ∀ n, P8229510031225231997.a n = A379274 (n + 1)

end A379274

/-! ## A379274.P9370357046353496048

`(1-char[3*comp[floor(ϕ*n)]-(n+2)]-A273129(n))²`
-/

namespace A379274.P9370357046353496048
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.goldenRatio * (n : ℝ)⌋

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 * SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n : ℤ) - (n + 2 : ℤ)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) - A273129 n) ^ 2

end

end A379274.P9370357046353496048

namespace A379274

/-- `(1-char[3*comp[floor(ϕ*n)]-(n+2)]-A273129(n))²` -/
def P9370357046353496048.Spec : Prop :=
  ∀ n, P9370357046353496048.a n = A379274 (n + 1)

end A379274

/-! ## A379274.P13211353307174034281

`A085002(A135414(n+1)+n)`
-/

namespace A379274.P13211353307174034281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085002 (A135414 (n + 1) + (n : ℤ)).toNat

end

end A379274.P13211353307174034281

namespace A379274

/-- `A085002(A135414(n+1)+n)` -/
def P13211353307174034281.Spec : Prop :=
  ∀ n, P13211353307174034281.a n = A379274 (n + 1)

end A379274

/-! ## A379274.P11626937214740746447

`and(A135414(n+1), A176410(n))`
-/

namespace A379274.P11626937214740746447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A135414 (n + 1)) (A176410 n)

end

end A379274.P11626937214740746447

namespace A379274

/-- `and(A135414(n+1), A176410(n))` -/
def P11626937214740746447.Spec : Prop :=
  ∀ n, P11626937214740746447.a n = A379274 (n + 1)

end A379274

/-! ## A379274.P12568730285119905452

`and(A135414(n+1), A176794(n))`
-/

namespace A379274.P12568730285119905452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A135414 (n + 1)) (A176794 n)

end

end A379274.P12568730285119905452

namespace A379274

/-- `and(A135414(n+1), A176794(n))` -/
def P12568730285119905452.Spec : Prop :=
  ∀ n, P12568730285119905452.a n = A379274 (n + 1)

end A379274

/-! ## A379274.P2226235318095522686

`and(A077860(n), A135414(n+1))`
-/

namespace A379274.P2226235318095522686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A077860 n) (A135414 (n + 1))

end

end A379274.P2226235318095522686

namespace A379274

/-- `and(A077860(n), A135414(n+1))` -/
def P2226235318095522686.Spec : Prop :=
  ∀ n, P2226235318095522686.a n = A379274 (n + 1)

end A379274

/-! ## A379274.P6962532029803899464

`and(A083318(n), A135414(n+1))`
-/

namespace A379274.P6962532029803899464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A083318 n) (A135414 (n + 1))

end

end A379274.P6962532029803899464

namespace A379274

/-- `and(A083318(n), A135414(n+1))` -/
def P6962532029803899464.Spec : Prop :=
  ∀ n, P6962532029803899464.a n = A379274 (n + 1)

end A379274

/-! ## A379274.P15909517433070482659

`and(A048578(n), A135414(n+1))`
-/

namespace A379274.P15909517433070482659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A048578 n) (A135414 (n + 1))

end

end A379274.P15909517433070482659

namespace A379274

/-- `and(A048578(n), A135414(n+1))` -/
def P15909517433070482659.Spec : Prop :=
  ∀ n, P15909517433070482659.a n = A379274 (n + 1)

end A379274

/-! ## A379274.P2090527617836720921

`and(A114001(n), A135414(n+1))`
-/

namespace A379274.P2090527617836720921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A114001 n) (A135414 (n + 1))

end

end A379274.P2090527617836720921

namespace A379274

/-- `and(A114001(n), A135414(n+1))` -/
def P2090527617836720921.Spec : Prop :=
  ∀ n, P2090527617836720921.a n = A379274 (n + 1)

end A379274

/-! ## A379274.P8273726986990748697

`and(A135414(n+1), A171663(n))`
-/

namespace A379274.P8273726986990748697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A135414 (n + 1)) (A171663 n)

end

end A379274.P8273726986990748697

namespace A379274

/-- `and(A135414(n+1), A171663(n))` -/
def P8273726986990748697.Spec : Prop :=
  ∀ n, P8273726986990748697.a n = A379274 (n + 1)

end A379274

/-! ## A379274.P14946927301386963792

`and(A020737(n), A135414(n+1))`
-/

namespace A379274.P14946927301386963792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A020737 n) (A135414 (n + 1))

end

end A379274.P14946927301386963792

namespace A379274

/-- `and(A020737(n), A135414(n+1))` -/
def P14946927301386963792.Spec : Prop :=
  ∀ n, P14946927301386963792.a n = A379274 (n + 1)

end A379274

/-! ## A379274.P6752485869642852470

`and(A135414(n+1), A195744(n))`
-/

namespace A379274.P6752485869642852470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A135414 (n + 1)) (A195744 n)

end

end A379274.P6752485869642852470

namespace A379274

/-- `and(A135414(n+1), A195744(n))` -/
def P6752485869642852470.Spec : Prop :=
  ∀ n, P6752485869642852470.a n = A379274 (n + 1)

end A379274

/-! ## A379274.P13340440939625478291

`and(A122041(n+1), A135414(n+1))`
-/

namespace A379274.P13340440939625478291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A122041 (n + 1)) (A135414 (n + 1))

end

end A379274.P13340440939625478291

namespace A379274

/-- `and(A122041(n+1), A135414(n+1))` -/
def P13340440939625478291.Spec : Prop :=
  ∀ n, P13340440939625478291.a n = A379274 (n + 1)

end A379274

/-!
# A379275: a(n) = A163801(n) mod 2.

The programs for A379275, the canonical program `A379275.P15094835216364799440` is in `Seq.B002.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A379275 has offset 0).

The definition of A379275 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A363057, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A379275.P15094835216364799440

`A363057(n+2)-1`

The canonical program, it is in `Seq.B002.C006`.
-/

namespace A379275

/-- `A363057(n+2)-1` -/
def P15094835216364799440.Spec : Prop :=
  ∀ n, P15094835216364799440.a n = A379275 n

theorem P15094835216364799440.correct : P15094835216364799440.Spec := by
  intro n
  simp only [A379275]

end A379275

/-! ## A379275.P11893829721377881785

`Δ[floor((floor(n/2)+1)/ϕ)]`
-/

namespace A379275.P11893829721377881785
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(⌊(n : ℚ) / 2⌋ + 1 : ℝ) / Real.goldenRatio⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A379275.P11893829721377881785

namespace A379275

/-- `Δ[floor((floor(n/2)+1)/ϕ)]` -/
def P11893829721377881785.Spec : Prop :=
  ∀ n, P11893829721377881785.a n = A379275 n

end A379275

/-! ## A379275.P6471842446371151613

`and(1, char[2*floor(ϕ*(n+1))-1])`
-/

namespace A379275.P6471842446371151613
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * ⌊Real.goldenRatio * (n + 1 : ℝ)⌋ - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 1 (if ∃ j, f1 j = (n : ℤ) then 1 else 0)

end

end A379275.P6471842446371151613

namespace A379275

/-- `and(1, char[2*floor(ϕ*(n+1))-1])` -/
def P6471842446371151613.Spec : Prop :=
  ∀ n, (P6471842446371151613.a n : ℤ) = A379275 n

end A379275

/-! ## A379275.P4629448176912160071

`char[or(1, 2*floor(ϕ*(n+1))-1)]`
-/

namespace A379275.P4629448176912160071
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (2 * ⌊Real.goldenRatio * (n + 1 : ℝ)⌋ - 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A379275.P4629448176912160071

namespace A379275

/-- `char[or(1, 2*floor(ϕ*(n+1))-1)]` -/
def P4629448176912160071.Spec : Prop :=
  ∀ n, (P4629448176912160071.a n : ℤ) = A379275 n

end A379275

/-! ## A379275.P4754534824542978359

`n%2-char[2*comp[floor(ϕ*n)]-1]`
-/

namespace A379275.P4754534824542978359
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.goldenRatio * (n : ℝ)⌋

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n : ℤ) - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n % 2 : ℕ) : ℤ) - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A379275.P4754534824542978359

namespace A379275

/-- `n%2-char[2*comp[floor(ϕ*n)]-1]` -/
def P4754534824542978359.Spec : Prop :=
  ∀ n, P4754534824542978359.a n = A379275 n

end A379275

/-! ## A379275.P12716313381440953878

`char[xor(n, -1)+2*floor(ϕ*(n+1))+n]`
-/

namespace A379275.P12716313381440953878
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) (-1) + (2 * ⌊Real.goldenRatio * (n + 1 : ℝ)⌋ + (n : ℤ))

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A379275.P12716313381440953878

namespace A379275

/-- `char[xor(n, -1)+2*floor(ϕ*(n+1))+n]` -/
def P12716313381440953878.Spec : Prop :=
  ∀ n, (P12716313381440953878.a n : ℤ) = A379275 n

end A379275

/-! ## A379275.P7203386090856201646

`4%Δ[∩[floor(ϕ*(n+1)), floor(ϕ*(n+2))-3]]`
-/

namespace A379275.P7203386090856201646
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.goldenRatio * (n + 1 : ℝ)⌋

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.goldenRatio * (n + 2 : ℝ)⌋ - 3

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = (x : ℤ)) ∧ ∃ j, f3 j = (x : ℤ)) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod 4 ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A379275.P7203386090856201646

namespace A379275

/-- `4%Δ[∩[floor(ϕ*(n+1)), floor(ϕ*(n+2))-3]]` -/
def P7203386090856201646.Spec : Prop :=
  ∀ n, P7203386090856201646.a n = A379275 n

end A379275

/-! ## A379275.P11522029413137536981

`A163801(n)%2`
-/

namespace A379275.P11522029413137536981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A163801 n) 2

end

end A379275.P11522029413137536981

namespace A379275

/-- `A163801(n)%2` -/
def P11522029413137536981.Spec : Prop :=
  ∀ n, P11522029413137536981.a n = A379275 n

end A379275

/-! ## A379275.P3457981432209041275

`A267860(n)%2`
-/

namespace A379275.P3457981432209041275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A267860 n) 2

end

end A379275.P3457981432209041275

namespace A379275

/-- `A267860(n)%2` -/
def P3457981432209041275.Spec : Prop :=
  ∀ n, P3457981432209041275.a n = A379275 n

end A379275

/-! ## A379275.P6569290874710419784

`log2(A363057(n+2))`
-/

namespace A379275.P6569290874710419784
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A363057 (n + 2) : ℝ)

end

end A379275.P6569290874710419784

namespace A379275

/-- `log2(A363057(n+2))` -/
def P6569290874710419784.Spec : Prop :=
  ∀ n, P6569290874710419784.a n = (A379275 n : ℝ)

end A379275

/-! ## A379275.P13561538253816934869

`char[A075317(n+1)]`
-/

namespace A379275.P13561538253816934869
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075317 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A379275.P13561538253816934869

namespace A379275

/-- `char[A075317(n+1)]` -/
def P13561538253816934869.Spec : Prop :=
  ∀ n, (P13561538253816934869.a n : ℤ) = A379275 n

end A379275

/-! ## A379275.P3458747221340440554

`char[A130568(n)-2]`
-/

namespace A379275.P3458747221340440554
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130568 n - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A379275.P3458747221340440554

namespace A379275

/-- `char[A130568(n)-2]` -/
def P3458747221340440554.Spec : Prop :=
  ∀ n, (P3458747221340440554.a n : ℤ) = A379275 n

end A379275

/-! ## A379275.P13727590544694981648

`char[A137708(2*n+1)]`
-/

namespace A379275.P13727590544694981648
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137708 (2 * n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A379275.P13727590544694981648

namespace A379275

/-- `char[A137708(2*n+1)]` -/
def P13727590544694981648.Spec : Prop :=
  ∀ n, (P13727590544694981648.a n : ℤ) = A379275 n

end A379275

/-! ## A379275.P14436536565014203595

`A005614(A057979(n))`
-/

namespace A379275.P14436536565014203595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005614 (A057979 n).toNat

end

end A379275.P14436536565014203595

namespace A379275

/-- `A005614(A057979(n))` -/
def P14436536565014203595.Spec : Prop :=
  ∀ n, P14436536565014203595.a n = A379275 n

end A379275

/-! ## A379275.P9289048207913154332

`A000035(A163801(n))`
-/

namespace A379275.P9289048207913154332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A163801 n).toNat

end

end A379275.P9289048207913154332

namespace A379275

/-- `A000035(A163801(n))` -/
def P9289048207913154332.Spec : Prop :=
  ∀ n, P9289048207913154332.a n = A379275 n

end A379275

/-! ## A379275.P11929945165995019937

`A123740(A307295(n))`
-/

namespace A379275.P11929945165995019937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123740 (A307295 n).toNat

end

end A379275.P11929945165995019937

namespace A379275

/-- `A123740(A307295(n))` -/
def P11929945165995019937.Spec : Prop :=
  ∀ n, P11929945165995019937.a n = A379275 n

end A379275

/-! ## A379275.P16793659352950865228

`A189479(A282738(n))`
-/

namespace A379275.P16793659352950865228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189479 (A282738 n).toNat

end

end A379275.P16793659352950865228

namespace A379275

/-- `A189479(A282738(n))` -/
def P16793659352950865228.Spec : Prop :=
  ∀ n, P16793659352950865228.a n = A379275 n

end A379275

/-! ## A379275.P17328006800024814252

`A123740(A054089(n+1))`
-/

namespace A379275.P17328006800024814252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123740 (A054089 (n + 1)).toNat

end

end A379275.P17328006800024814252

namespace A379275

/-- `A123740(A054089(n+1))` -/
def P17328006800024814252.Spec : Prop :=
  ∀ n, P17328006800024814252.a n = A379275 n

end A379275

/-! ## A379275.P3813099279578895582

`A123740(A188435(n+1))`
-/

namespace A379275.P3813099279578895582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123740 (A188435 (n + 1)).toNat

end

end A379275.P3813099279578895582

namespace A379275

/-- `A123740(A188435(n+1))` -/
def P3813099279578895582.Spec : Prop :=
  ∀ n, P3813099279578895582.a n = A379275 n

end A379275

/-! ## A379275.P8021175644652590771

`A003849(A307294(n)-1)`
-/

namespace A379275.P8021175644652590771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003849 (A307294 n - 1).toNat

end

end A379275.P8021175644652590771

namespace A379275

/-- `A003849(A307294(n)-1)` -/
def P8021175644652590771.Spec : Prop :=
  ∀ n, P8021175644652590771.a n = A379275 n

end A379275

/-!
# A379276: Decimal expansion of 2^(5^0.4) - 0.6 - ((0.3^9)/7)^(0.8^0.1).

The programs for A379276, there is no canonical definition to state claims against.
-/

/-! ## A379276.P15768405984194520315

`A247385(A161949(n+1))`
-/

namespace A379276.P15768405984194520315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247385 (A161949 (n + 1)).toNat

end

end A379276.P15768405984194520315

/-! ## A379276.P6943293365087299692

`A007949(A309864(n))+A000796(n)`
-/

namespace A379276.P6943293365087299692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007949 (A309864 n).toNat + A000796 (n + 1)

end

end A379276.P6943293365087299692

/-! ## A379276.P4028778376765276227

`A185284(A000040(n+1))+A000796(n)`
-/

namespace A379276.P4028778376765276227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185284 (A000040 (n + 1)).toNat + A000796 (n + 1)

end

end A379276.P4028778376765276227

/-!
# A379279: G.f. A(x) satisfies A(x) = ( (1 + x*A(x)^2) * (1 + x*A(x)) )^2.

The programs for A379279, there is no canonical definition to state claims against.
-/

/-! ## A379279.P16334037039719233119

`A195119(A000108(n+1)*A114196(n))`
-/

namespace A379279.P16334037039719233119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195119 (A000108 (n + 1) * A114196 n).toNat

end

end A379279.P16334037039719233119

/-!
# A379281: G.f. A(x) satisfies A(x) = 1/( (1 - x) * (1 - x*A(x)) )^2.

The programs for A379281, there is no canonical definition to state claims against.
-/

/-! ## A379281.P4749680860325380746

`∑[∑[A382918(n)]]`
-/

namespace A379281.P4749680860325380746
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382918 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A379281.P4749680860325380746

/-! ## A379281.P10692351333674260700

`∑[abs(A366326(n+1))]-1`
-/

namespace A379281.P10692351333674260700
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A366326 (n + 1)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A379281.P10692351333674260700

/-!
# A379282: G.f. A(x) satisfies A(x) = 1/( (1 - x*A(x)^2) * (1 - x*A(x)) )^2.

The programs for A379282, there is no canonical definition to state claims against.
-/

/-! ## A379282.P1380183958981345442

`A005100(A316341(3*(n+1))+A263658(3*n+2))`
-/

namespace A379282.P1380183958981345442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005100 (A316341 (3 * (n + 1)) + A263658 (3 * n + 2)).toNat

end

end A379282.P1380183958981345442

/-!
# A379284: G.f. A(x) satisfies A(x) = 1/((1 - x*A(x)^2) * (1 - x*A(x)^4)).

The programs for A379284, there is no canonical definition to state claims against.
-/

/-! ## A379284.P10598676941740991875

`A062968(A032031(n)+n)`
-/

namespace A379284.P10598676941740991875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062968 (A032031 n + (n : ℤ)).toNat

end

end A379284.P10598676941740991875

/-!
# A379285: G.f. A(x) satisfies A(x) = 1/((1 - x*A(x)^2) * (1 - x*A(x)^3)).

The programs for A379285, there is no canonical definition to state claims against.
-/

/-! ## A379285.P11949743121385766320

`A049093(A138739(n+2))`
-/

namespace A379285.P11949743121385766320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049093 (A138739 (n + 2)).toNat

end

end A379285.P11949743121385766320

/-!
# A379286: G.f. A(x) satisfies A(x) = 1/((1 - x*A(x)^2) * (1 - x*A(x)^5)).

The programs for A379286, there is no canonical definition to state claims against.
-/

/-! ## A379286.P8842733304414078142

`A000026(A032033(n))-A000292(n)`
-/

namespace A379286.P8842733304414078142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000026 (A032033 n).toNat - A000292 n

end

end A379286.P8842733304414078142

/-!
# A379287: G.f. A(x) satisfies A(x) = 1/((1 - x*A(x)^2) * (1 - x*A(x)^6)).

The programs for A379287, there is no canonical definition to state claims against.
-/

/-! ## A379287.P11292391379741106676

`A090563(xor(∑{e}[n+1, #], A375449(n+1)))`
-/

namespace A379287.P11292391379741106676
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090563 (Int.xor ((∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p : ℕ) : ℤ) (A375449 (n + 1))).toNat

end

end A379287.P11292391379741106676

/-!
# A379288: Irregular triangle read by rows in which row n lists the odd divisors of n excluding odd divisors e for which there exists another divisor j with j < e < 2*j.

The programs for A379288, there is no canonical definition to state claims against.
-/

/-! ## A379288.P8455052410422227786

`A384149(n+1)-A389592(n+1)`
-/

namespace A379288.P8455052410422227786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384149 (n + 1) - A389592 (n + 1)

end

end A379288.P8455052410422227786

/-! ## A379288.P2370040520639632462

`filter[A379374(n+1), A000035(#)]`
-/

namespace A379288.P2370040520639632462
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379374 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A000035 (f1 j).toNat = 1) n)

end

end A379288.P2370040520639632462

/-! ## A379288.P2549670792353917855

`filter[A379374(n+1), A374134(#)]`
-/

namespace A379288.P2549670792353917855
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379374 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A374134 (f1 j).toNat = 1) n)

end

end A379288.P2549670792353917855

/-! ## A379288.P7899053043982702944

`A382267(A107988(n+2))`
-/

namespace A379288.P7899053043982702944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382267 (A107988 (n + 2)).toNat

end

end A379288.P7899053043982702944

/-!
# A379290: Index where prime(n) appears as a term in A379248.

The programs for A379290, there is no canonical definition to state claims against.
-/

/-! ## A379290.P14611464487891876544

`record[A379293(n+2)]`
-/

namespace A379290.P14611464487891876544
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379293 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A379290.P14611464487891876544

/-! ## A379290.P10292549304352482373

`A379296(n)+a(n-1)` with `a(0)=2`
-/

namespace A379290.P10292549304352482373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A379296 n + a (n - 1)

end

end A379290.P10292549304352482373

/-! ## A379290.P12542308760570151305

`A379293(A000040(n+1))`
-/

namespace A379290.P12542308760570151305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379293 (A000040 (n + 1)).toNat

end

end A379290.P12542308760570151305

/-! ## A379290.P13874739529159650265

`A379293(A008578(n+2))`
-/

namespace A379290.P13874739529159650265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379293 (A008578 (n + 2)).toNat

end

end A379290.P13874739529159650265

/-! ## A379290.P10604323811211600233

`A379293(A182986(n+2))`
-/

namespace A379290.P10604323811211600233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379293 (A182986 (n + 2)).toNat

end

end A379290.P10604323811211600233

/-! ## A379290.P4694238180823822675

`A379293(A100484(n+1)/2)`
-/

namespace A379290.P4694238180823822675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379293 (SequenceMachineLib.roundAway ((A100484 (n + 1) : ℚ) / 2)).toNat

end

end A379290.P4694238180823822675

/-! ## A379290.P9960237511811205981

`A379293(A064413(A064955(n+1)))`
-/

namespace A379290.P9960237511811205981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379293 (A064413 (A064955 (n + 1)).toNat).toNat

end

end A379290.P9960237511811205981

/-! ## A379290.P7731472804545891338

`A379293(A379442(A379558(n+1)))`
-/

namespace A379290.P7731472804545891338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379293 (A379442 (A379558 (n + 1)).toNat).toNat

end

end A379290.P7731472804545891338

/-!
# A379291: Index where prime(n) first appears as a factor of a term in A379248.

The programs for A379291, there is no canonical definition to state claims against.
-/

/-! ## A379291.P10610767968266996657

`A379293(A077017(n+2))`
-/

namespace A379291.P10610767968266996657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379293 (A077017 (n + 2)).toNat

end

end A379291.P10610767968266996657

/-! ## A379291.P12534391848432932925

`A379293(lcm(2, A000040(n+1)))`
-/

namespace A379291.P12534391848432932925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379293 (Int.lcm 2 (A000040 (n + 1)))

end

end A379291.P12534391848432932925

/-!
# A379292: Number k such that A379248(k) = k.

The programs for A379292, there is no canonical definition to state claims against.
-/

/-! ## A379292.P6013138470210011991

`A340477(n)+A000593(A061801(n))`
-/

namespace A379292.P6013138470210011991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340477 n + A000593 (A061801 n).toNat

end

end A379292.P6013138470210011991

/-!
# A379294: Record high values of A379248.

The programs for A379294, there is no canonical definition to state claims against.
-/

/-! ## A379294.P9455543204894447497

`record[A379248(n+1)]`
-/

namespace A379294.P9455543204894447497
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379248 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A379294.P9455543204894447497

/-! ## A379294.P607664022716815845

`A379248(A379295(n+1))`
-/

namespace A379294.P607664022716815845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379248 (A379295 (n + 1)).toNat

end

end A379294.P607664022716815845

/-! ## A379294.P17890102931366960082

`eq[A086014(A006218(3*n+1)), A236939(n)]`
-/

namespace A379294.P17890102931366960082
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086014 (A006218 (3 * n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236939 (n + 10)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A379294.P17890102931366960082

/-!
# A379295: Indices where record high values occur in A379248.

The programs for A379295, there is no canonical definition to state claims against.
-/

/-! ## A379295.P10134436996957375952

`A379293(A379294(n+1))`
-/

namespace A379295.P10134436996957375952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379293 (A379294 (n + 1)).toNat

end

end A379295.P10134436996957375952

/-! ## A379295.P15032556288075356018

`A379293(record[A379248(n+1)])`
-/

namespace A379295.P15032556288075356018
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379248 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379293 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A379295.P15032556288075356018

/-! ## A379295.P6046283155385102618

`lt[A124420(n), A020639(3*n+1)]`
-/

namespace A379295.P6046283155385102618
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124420 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (3 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A379295.P6046283155385102618

/-! ## A379295.P120212967740956763

`lt[A139078(n+1), A127819(n+1)+1]+1`
-/

namespace A379295.P120212967740956763
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139078 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127819 (n + 1) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A379295.P120212967740956763

/-! ## A379295.P18421798819256251592

`lt[A306367(n), A211241(A067031(n+1))]`
-/

namespace A379295.P18421798819256251592
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306367 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211241 (A067031 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A379295.P18421798819256251592

/-!
# A379296: First differences of A379290.

The programs for A379296, there is no canonical definition to state claims against.
-/

/-! ## A379296.P16107169907933351939

`Δ[A379290(n+1)]`
-/

namespace A379296.P16107169907933351939
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379290 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A379296.P16107169907933351939

/-! ## A379296.P2023496103481759418

`Δ[record[A379293(n+2)]]`
-/

namespace A379296.P2023496103481759418
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379293 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A379296.P2023496103481759418

/-! ## A379296.P17566874805161550068

`Δ[A379293(Δ[A007504(n)])]`
-/

namespace A379296.P17566874805161550068
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379293 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A379296.P17566874805161550068

/-! ## A379296.P12703473480590688094

`Δ[A379293(A000040(n+1))]`
-/

namespace A379296.P12703473480590688094
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379293 (A000040 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A379296.P12703473480590688094

/-! ## A379296.P9475927543150280693

`Δ[A379293(A008578(n+2))]`
-/

namespace A379296.P9475927543150280693
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379293 (A008578 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A379296.P9475927543150280693

/-! ## A379296.P15053356190376062293

`Δ[A379293(A001748(n+1)/3)]`
-/

namespace A379296.P15053356190376062293
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379293 (SequenceMachineLib.roundAway ((A001748 (n + 1) : ℚ) / 3)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A379296.P15053356190376062293

/-! ## A379296.P10056081580400924108

`A379290(n+2)-A379290(n+1)`
-/

namespace A379296.P10056081580400924108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379290 (n + 2) - A379290 (n + 1)

end

end A379296.P10056081580400924108

/-! ## A379296.P13599563039224720157

`Δ[A379293(A014688(n+1)-(n+1))]`
-/

namespace A379296.P13599563039224720157
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379293 (A014688 (n + 1) - (n + 1 : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A379296.P13599563039224720157

/-!
# A379297: Numbers k such that A379265(k) = A379266(k).

The programs for A379297, there is no canonical definition to state claims against.
-/

/-! ## A379297.P5141735624495165089

`eq[A379265(n), A379266(n)]`
-/

namespace A379297.P5141735624495165089
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379265 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379266 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A379297.P5141735624495165089

/-! ## A379297.P6858636437005332051

`lt[A111900(A379265(n+1)-A379265(n)), 1]`
-/

namespace A379297.P6858636437005332051
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111900 (A379265 (n + 1) - A379265 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A379297.P6858636437005332051

/-!
# A379298: Largest number k for which k^2 is n digits long and has the maximum sum of digits possible for such a square (A371728(n)).

The programs for A379298, there is no canonical definition to state claims against.
-/

/-! ## A379298.P963536336744765720

`sqrt(A069666(n+1))`
-/

namespace A379298.P963536336744765720
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A069666 (n + 1) : ℝ)

end

end A379298.P963536336744765720

/-! ## A379298.P18154365421604873929

`root(A069666(n+1), A037200(A037200(n)))`
-/

namespace A379298.P18154365421604873929
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A069666 (n + 1) : ℝ) ^ (1 / (A037200 (A037200 n).toNat : ℝ))

end

end A379298.P18154365421604873929

/-! ## A379298.P3610303823584041537

`root(A069666(n+1), A001031(A001031(n+3)))`
-/

namespace A379298.P3610303823584041537
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A069666 (n + 1) : ℝ) ^ (1 / (A001031 (A001031 (n + 3)).toNat : ℝ))

end

end A379298.P3610303823584041537

/-!
# A379299: a(n) is the maximum number k such that every permutation of the integers mod n admits at least k collinear triples.

The programs for A379299, there is no canonical definition to state claims against.
-/

/-! ## A379299.P12945976798145794306

`A284345(2*n)-A129251(A225171(n+3))`
-/

namespace A379299.P12945976798145794306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284345 (2 * n) - A129251 (A225171 (n + 3)).toNat

end

end A379299.P12945976798145794306

/-! ## A379299.P9712719538734523977

`A029803(A284345(2*n))%A213891(3*n+5)`
-/

namespace A379299.P9712719538734523977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A029803 (A284345 (2 * n)).toNat) (A213891 (3 * n + 5))

end

end A379299.P9712719538734523977

/-! ## A379299.P7785252204443148175

`A269356(∑[A247623(n)+2])%(n+1)`
-/

namespace A379299.P7785252204443148175
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247623 n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A269356 (∑ j ∈ Finset.range (n + 1), f1 j).toNat) (n + 1 : ℤ)

end

end A379299.P7785252204443148175

/-! ## A379299.P9704030374614095309

`(A305510(n+2)+1)%A030067(n+1)`
-/

namespace A379299.P9704030374614095309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A305510 (n + 2) + 1) (A030067 (n + 1))

end

end A379299.P9704030374614095309

/-! ## A379299.P70322562963532695

`and(A266768(n), A312240(A000051(n)))`
-/

namespace A379299.P70322562963532695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A266768 n) (A312240 (A000051 n).toNat)

end

end A379299.P70322562963532695

