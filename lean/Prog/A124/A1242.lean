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
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C030
import Seq.B000.C031
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
import Seq.B003.C004
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C001
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

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A124200: Numbers k such that 1 + k + k^3 + k^5 + k^7 + k^9 + k^11 + k^13 + k^15 + k^17 + k^19 + k^21 + k^23 + k^25 + k^27 + k^29 + k^31 + k^33 + k^35 + k^37 + k^39 + k^41 + k^43 is prime.

The programs for A124200, there is no canonical definition to state claims against.
-/

/-! ## A124200.P6015609516730756113

`A131164(A099025(n))-n`
-/

namespace A124200.P6015609516730756113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131164 (A099025 n).toNat - (n : ℤ)

end

end A124200.P6015609516730756113

/-!
# A124202: a(n) = median of the largest prime dividing a random n-digit number.

The programs for A124202, there is no canonical definition to state claims against.
-/

/-! ## A124202.P16251708317321984852

`xor(2*(n+1), ∑[2^n]²)-A143107(A000124(n))`
-/

namespace A124202.P16251708317321984852
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.xor (2 * (n + 1)) ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2) : ℤ) - A143107 (A000124 n).toNat

end

end A124202.P16251708317321984852

/-!
# A124203: a(n) = 2n + "reverse of n-written-in-binary" + 2.

The programs for A124203, the canonical program `A124203.P14562224082085473422` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A124203 has offset 0).

The definition of A124203 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1001 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A124203.P4874733110932137981

`A055944(2*n)+2`
-/

namespace A124203.P4874733110932137981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055944 (2 * n) + 2

end

end A124203.P4874733110932137981

namespace A124203

/-- `A055944(2*n)+2` -/
def P4874733110932137981.Spec : Prop :=
  ∀ n, P4874733110932137981.a n = A124203 n

end A124203

/-! ## A124203.P17358205037215108840

`A055944(n)+2+n`
-/

namespace A124203.P17358205037215108840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055944 n + 2 + (n : ℤ)

end

end A124203.P17358205037215108840

namespace A124203

/-- `A055944(n)+2+n` -/
def P17358205037215108840.Spec : Prop :=
  ∀ n, P17358205037215108840.a n = A124203 n

theorem P17358205037215108840.correct : P17358205037215108840.Spec := by
  intro n
  simp only [A124203, Nat.add_sub_cancel, A124203.P17358205037215108840.a, A124203.P14562224082085473422.a, A055944, A055944.P9824612390251619605.a, A055945, A055945.P5963763732554067333.a, A030101, A030101.P16184294017372777612.a, A038572, A038572.P9289042872142352092.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A124203

/-! ## A124203.P816236390449960685

`A030101(n)+2*(n+1)`
-/

namespace A124203.P816236390449960685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030101 n + (2 * (n + 1) : ℤ)

end

end A124203.P816236390449960685

namespace A124203

/-- `A030101(n)+2*(n+1)` -/
def P816236390449960685.Spec : Prop :=
  ∀ n, P816236390449960685.a n = A124203 n

theorem P816236390449960685.correct : P816236390449960685.Spec := by
  intro n
  simp only [A124203, Nat.add_sub_cancel, A124203.P816236390449960685.a, A124203.P14562224082085473422.a, A030101, A030101.P16184294017372777612.a, A055945, A055945.P5963763732554067333.a, A038572, A038572.P9289042872142352092.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A124203

/-! ## A124203.P14562224082085473422

`3*n+2-A055945(n)`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A124203

/-- `3*n+2-A055945(n)` -/
def P14562224082085473422.Spec : Prop :=
  ∀ n, P14562224082085473422.a n = A124203 n

theorem P14562224082085473422.correct : P14562224082085473422.Spec := by
  intro n
  simp only [A124203]

end A124203

/-! ## A124203.P897764595428589177

`A325401(2*n)+2*(n+1)`
-/

namespace A124203.P897764595428589177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325401 (2 * n) + (2 * (n + 1) : ℤ)

end

end A124203.P897764595428589177

namespace A124203

/-- `A325401(2*n)+2*(n+1)` -/
def P897764595428589177.Spec : Prop :=
  ∀ n, P897764595428589177.a n = A124203 n

end A124203

/-! ## A124203.P15052023898217297018

`xor(n, A175919(n))+2*(n+1)`
-/

namespace A124203.P15052023898217297018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) (A175919 n) + (2 * (n + 1) : ℤ)

end

end A124203.P15052023898217297018

namespace A124203

/-- `xor(n, A175919(n))+2*(n+1)` -/
def P15052023898217297018.Spec : Prop :=
  ∀ n, P15052023898217297018.a n = A124203 n

end A124203

/-! ## A124203.P16604209209337808619

`A016789(n)-A055945(n)`
-/

namespace A124203.P16604209209337808619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016789 n - A055945 n

end

end A124203.P16604209209337808619

namespace A124203

/-- `A016789(n)-A055945(n)` -/
def P16604209209337808619.Spec : Prop :=
  ∀ n, P16604209209337808619.a n = A124203 n

theorem P16604209209337808619.correct : P16604209209337808619.Spec := by
  intro n
  simp only [A124203, Nat.add_sub_cancel, A124203.P16604209209337808619.a, A124203.P14562224082085473422.a, A016789, A016789.P8277564872725303677.a, A055945, A055945.P5963763732554067333.a, A038572, A038572.P9289042872142352092.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A124203

/-! ## A124203.P7965115651935370594

`A005408(n)+A030101(n)+1`
-/

namespace A124203.P7965115651935370594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 n + (A030101 n + 1)

end

end A124203.P7965115651935370594

namespace A124203

/-- `A005408(n)+A030101(n)+1` -/
def P7965115651935370594.Spec : Prop :=
  ∀ n, P7965115651935370594.a n = A124203 n

theorem P7965115651935370594.correct : P7965115651935370594.Spec := by
  intro n
  simp only [A124203, Nat.add_sub_cancel, A124203.P7965115651935370594.a, A124203.P14562224082085473422.a, A005408, A005408.P17437947328870227736.a, A030101, A030101.P16184294017372777612.a, A055945, A055945.P5963763732554067333.a, A038572, A038572.P9289042872142352092.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A124203

/-! ## A124203.P4892271179354870478

`2-(A001489(n)-A055944(n))`
-/

namespace A124203.P4892271179354870478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - (A001489 n - A055944 n)

end

end A124203.P4892271179354870478

namespace A124203

/-- `2-(A001489(n)-A055944(n))` -/
def P4892271179354870478.Spec : Prop :=
  ∀ n, P4892271179354870478.a n = A124203 n

theorem P4892271179354870478.correct : P4892271179354870478.Spec := by
  intro n
  simp only [A124203, Nat.add_sub_cancel, A124203.P4892271179354870478.a, A124203.P14562224082085473422.a, A001489, A001489.P15233530513763566776.a, A055944, A055944.P9824612390251619605.a, A055945, A055945.P5963763732554067333.a, A030101, A030101.P16184294017372777612.a, A038572, A038572.P9289042872142352092.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A124203

/-! ## A124203.P5056814233301829821

`A145341(n+1)+A006257(n)+1`
-/

namespace A124203.P5056814233301829821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145341 (n + 1) + (A006257 n + 1)

end

end A124203.P5056814233301829821

namespace A124203

/-- `A145341(n+1)+A006257(n)+1` -/
def P5056814233301829821.Spec : Prop :=
  ∀ n, P5056814233301829821.a n = A124203 n

end A124203

/-! ## A124203.P6480548580753297879

`A152423(n+1)+A145341(n+1)`
-/

namespace A124203.P6480548580753297879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152423 (n + 1) + A145341 (n + 1)

end

end A124203.P6480548580753297879

namespace A124203

/-- `A152423(n+1)+A145341(n+1)` -/
def P6480548580753297879.Spec : Prop :=
  ∀ n, P6480548580753297879.a n = A124203 n

end A124203

/-! ## A124203.P6182786032108868067

`A006257(n)+2*A145342(n+1)`
-/

namespace A124203.P6182786032108868067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006257 n + 2 * A145342 (n + 1)

end

end A124203.P6182786032108868067

namespace A124203

/-- `A006257(n)+2*A145342(n+1)` -/
def P6182786032108868067.Spec : Prop :=
  ∀ n, P6182786032108868067.a n = A124203 n

end A124203

/-! ## A124203.P3874785962670055698

`A062050(A057889(2*n+1))+2*n+1`
-/

namespace A124203.P3874785962670055698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062050 (A057889 (2 * n + 1)).toNat + (2 * n + 1 : ℤ)

end

end A124203.P3874785962670055698

namespace A124203

/-- `A062050(A057889(2*n+1))+2*n+1` -/
def P3874785962670055698.Spec : Prop :=
  ∀ n, P3874785962670055698.a n = A124203 n

end A124203

/-! ## A124203.P5273295077563967632

`A181733(A059893(2*n+1))+2*n+1`
-/

namespace A124203.P5273295077563967632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181733 (A059893 (2 * n + 1)).toNat + (2 * n + 1 : ℤ)

end

end A124203.P5273295077563967632

namespace A124203

/-- `A181733(A059893(2*n+1))+2*n+1` -/
def P5273295077563967632.Spec : Prop :=
  ∀ n, P5273295077563967632.a n = A124203 n

end A124203

/-! ## A124203.P17808792669723687934

`A145341(2*(n+1))-A054429(2*n+1)`
-/

namespace A124203.P17808792669723687934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145341 (2 * (n + 1)) - A054429 (2 * n + 1)

end

end A124203.P17808792669723687934

namespace A124203

/-- `A145341(2*(n+1))-A054429(2*n+1)` -/
def P17808792669723687934.Spec : Prop :=
  ∀ n, P17808792669723687934.a n = A124203 n

end A124203

/-! ## A124203.P1372239655620855109

`A345401(A345401(n))-A036044(n)`
-/

namespace A124203.P1372239655620855109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345401 (A345401 n).toNat - A036044 n

end

end A124203.P1372239655620855109

namespace A124203

/-- `A345401(A345401(n))-A036044(n)` -/
def P1372239655620855109.Spec : Prop :=
  ∀ n, P1372239655620855109.a n = A124203 n

end A124203

/-! ## A124203.P10831249654606564406

`A342122(A004277(n))+A004277(n+1)`
-/

namespace A124203.P10831249654606564406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342122 (A004277 n).toNat + A004277 (n + 1)

end

end A124203.P10831249654606564406

namespace A124203

/-- `A342122(A004277(n))+A004277(n+1)` -/
def P10831249654606564406.Spec : Prop :=
  ∀ n, P10831249654606564406.a n = A124203 n

end A124203

/-! ## A124203.P489693249240496617

`A055948(n+1)+A055949(n+1)+A030101(n)`
-/

namespace A124203.P489693249240496617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055948 (n + 1) + (A055949 (n + 1) + A030101 n)

end

end A124203.P489693249240496617

namespace A124203

/-- `A055948(n+1)+A055949(n+1)+A030101(n)` -/
def P489693249240496617.Spec : Prop :=
  ∀ n, P489693249240496617.a n = A124203 n

end A124203

/-!
# A124204: Numbers k such that 20*k + 1 is prime.

The programs for A124204, the canonical program `A124204.P13450964425611794570` is in `Seq.B000.C018`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A124204 has offset 1).

The definition of A124204 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2233 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A124204.P13450964425611794570

`eq[1, ∑{e}[4*5*n+1, #]]`

The canonical program, it is in `Seq.B000.C018`.
-/

namespace A124204

/-- `eq[1, ∑{e}[4*5*n+1, #]]` -/
def P13450964425611794570.Spec : Prop :=
  ∀ n, (P13450964425611794570.a n : ℤ) = A124204 (n + 1)

theorem P13450964425611794570.correct : P13450964425611794570.Spec := by
  intro n
  simp only [A124204, Nat.add_sub_cancel]

end A124204

/-! ## A124204.P3353777026571367412

`eq[1, A091088(2*n)]`
-/

namespace A124204.P3353777026571367412
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091088 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A124204.P3353777026571367412

namespace A124204

/-- `eq[1, A091088(2*n)]` -/
def P3353777026571367412.Spec : Prop :=
  ∀ n, (P3353777026571367412.a n : ℤ) = A124204 (n + 1)

end A124204

/-! ## A124204.P1388253900887273040

`eq[1, A001222(20*n+1)]`
-/

namespace A124204.P1388253900887273040
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (20 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A124204.P1388253900887273040

namespace A124204

/-- `eq[1, A001222(20*n+1)]` -/
def P1388253900887273040.Spec : Prop :=
  ∀ n, (P1388253900887273040.a n : ℤ) = A124204 (n + 1)

end A124204

/-! ## A124204.P12494163092086456599

`eq[2, A000005(20*n+1)]`
-/

namespace A124204.P12494163092086456599
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (20 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A124204.P12494163092086456599

namespace A124204

/-- `eq[2, A000005(20*n+1)]` -/
def P12494163092086456599.Spec : Prop :=
  ∀ n, (P12494163092086456599.a n : ℤ) = A124204 (n + 1)

end A124204

/-! ## A124204.P1590638333785908873

`eq[1, A068695(2*(n+1))]+1`
-/

namespace A124204.P1590638333785908873
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068695 (2 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A124204.P1590638333785908873

namespace A124204

/-- `eq[1, A068695(2*(n+1))]+1` -/
def P1590638333785908873.Spec : Prop :=
  ∀ n, (P1590638333785908873.a n : ℤ) = A124204 (n + 1)

end A124204

/-! ## A124204.P10163482378113107443

`eq[1, A069842(2*(n+1))]+1`
-/

namespace A124204.P10163482378113107443
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069842 (2 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A124204.P10163482378113107443

namespace A124204

/-- `eq[1, A069842(2*(n+1))]+1` -/
def P10163482378113107443.Spec : Prop :=
  ∀ n, (P10163482378113107443.a n : ℤ) = A124204 (n + 1)

end A124204

/-! ## A124204.P10396558317689819456

`A000010(A141881(n+1))/20`
-/

namespace A124204.P10396558317689819456
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000010 (A141881 (n + 1)).toNat : ℚ) / 20

end

end A124204.P10396558317689819456

namespace A124204

/-- `A000010(A141881(n+1))/20` -/
def P10396558317689819456.Spec : Prop :=
  ∀ n, P10396558317689819456.a n = (A124204 (n + 1) : ℚ)

end A124204

/-! ## A124204.P7212041389171019625

`eq[1, A068695(2*A028310(n))]`
-/

namespace A124204.P7212041389171019625
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068695 (2 * A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A124204.P7212041389171019625

namespace A124204

/-- `eq[1, A068695(2*A028310(n))]` -/
def P7212041389171019625.Spec : Prop :=
  ∀ n, (P7212041389171019625.a n : ℤ) = A124204 (n + 1)

end A124204

/-! ## A124204.P15050014930602751731

`eq[1, A069842(2*A028310(n))]`
-/

namespace A124204.P15050014930602751731
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069842 (2 * A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A124204.P15050014930602751731

namespace A124204

/-- `eq[1, A069842(2*A028310(n))]` -/
def P15050014930602751731.Spec : Prop :=
  ∀ n, (P15050014930602751731.a n : ℤ) = A124204 (n + 1)

end A124204

/-! ## A124204.P7020406622437073846

`A020725(eq[1, A068695(2*(n+1))])`
-/

namespace A124204.P7020406622437073846
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068695 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A124204.P7020406622437073846

namespace A124204

/-- `A020725(eq[1, A068695(2*(n+1))])` -/
def P7020406622437073846.Spec : Prop :=
  ∀ n, P7020406622437073846.a n = A124204 (n + 1)

end A124204

/-! ## A124204.P17956359759790584288

`A020725(eq[1, A069842(2*(n+1))])`
-/

namespace A124204.P17956359759790584288
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069842 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A124204.P17956359759790584288

namespace A124204

/-- `A020725(eq[1, A069842(2*(n+1))])` -/
def P17956359759790584288.Spec : Prop :=
  ∀ n, P17956359759790584288.a n = A124204 (n + 1)

end A124204

/-! ## A124204.P8394808172783442891

`lt[A000005(A008592(2*(n+1))+1), 3]+1`
-/

namespace A124204.P8394808172783442891
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A008592 (2 * (n + 1)) + 1).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A124204.P8394808172783442891

namespace A124204

/-- `lt[A000005(A008592(2*(n+1))+1), 3]+1` -/
def P8394808172783442891.Spec : Prop :=
  ∀ n, (P8394808172783442891.a n : ℤ) = A124204 (n + 1)

end A124204

/-! ## A124204.P932460369753624211

`eq[A030665(2*(n+1)), A060954(2*(n+1))]+1`
-/

namespace A124204.P932460369753624211
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030665 (2 * (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060954 (2 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A124204.P932460369753624211

namespace A124204

/-- `eq[A030665(2*(n+1)), A060954(2*(n+1))]+1` -/
def P932460369753624211.Spec : Prop :=
  ∀ n, (P932460369753624211.a n : ℤ) = A124204 (n + 1)

end A124204

/-! ## A124204.P11824017238353753557

`eq[A060954(2*(n+1)), A090920(2*(n+1))]+1`
-/

namespace A124204.P11824017238353753557
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060954 (2 * (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090920 (2 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A124204.P11824017238353753557

namespace A124204

/-- `eq[A060954(2*(n+1)), A090920(2*(n+1))]+1` -/
def P11824017238353753557.Spec : Prop :=
  ∀ n, (P11824017238353753557.a n : ℤ) = A124204 (n + 1)

end A124204

/-! ## A124204.P12409336204584366859

`lt[A017281(n), A020639(A017281(2*n))]`
-/

namespace A124204.P12409336204584366859
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017281 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A017281 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A124204.P12409336204584366859

namespace A124204

/-- `lt[A017281(n), A020639(A017281(2*n))]` -/
def P12409336204584366859.Spec : Prop :=
  ∀ n, (P12409336204584366859.a n : ℤ) = A124204 (n + 1)

end A124204

/-! ## A124204.P9116214457642118343

`lt[A000007(n), A069842(A028310(2*n))]`
-/

namespace A124204.P9116214457642118343
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069842 (A028310 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A124204.P9116214457642118343

namespace A124204

/-- `lt[A000007(n), A069842(A028310(2*n))]` -/
def P9116214457642118343.Spec : Prop :=
  ∀ n, (P9116214457642118343.a n : ℤ) = A124204 (n + 1)

end A124204

/-! ## A124204.P1844692199931985819

`lt[A000038(n), A069842(A028310(2*n))]`
-/

namespace A124204.P1844692199931985819
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069842 (A028310 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A124204.P1844692199931985819

namespace A124204

/-- `lt[A000038(n), A069842(A028310(2*n))]` -/
def P1844692199931985819.Spec : Prop :=
  ∀ n, (P1844692199931985819.a n : ℤ) = A124204 (n + 1)

end A124204

/-! ## A124204.P10396327993575210399

`eq[4, A031362(2*n+1)]`
-/

namespace A124204.P10396327993575210399
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031362 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A124204.P10396327993575210399

namespace A124204

/-- `eq[4, A031362(2*n+1)]` -/
def P10396327993575210399.Spec : Prop :=
  ∀ n, (P10396327993575210399.a n : ℤ) = A124204 (n + 1)

end A124204

/-! ## A124204.P5789652494381897753

`lt[n+5, A014963(20*n+1)]`
-/

namespace A124204.P5789652494381897753
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (20 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A124204.P5789652494381897753

namespace A124204

/-- `lt[n+5, A014963(20*n+1)]` -/
def P5789652494381897753.Spec : Prop :=
  ∀ n, (P5789652494381897753.a n : ℤ) = A124204 (n + 1)

end A124204

/-! ## A124204.P11860172442838620207

`A165190(A141881(n+1))`
-/

namespace A124204.P11860172442838620207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165190 (A141881 (n + 1)).toNat

end

end A124204.P11860172442838620207

namespace A124204

/-- `A165190(A141881(n+1))` -/
def P11860172442838620207.Spec : Prop :=
  ∀ n, P11860172442838620207.a n = A124204 (n + 1)

end A124204

/-!
# A124210: a(n) is the number of positive integers k such that sum of digits of 2^k equals n.

The programs for A124210, there is no canonical definition to state claims against.
-/

/-! ## A124210.P1137732423557533225

`A196316(n+1)%A124767(A196115(3*n+4))`
-/

namespace A124210.P1137732423557533225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A196316 (n + 1)) (A124767 (A196115 (3 * n + 4)).toNat)

end

end A124210.P1137732423557533225

/-! ## A124210.P15802574847411505861

`A247477(A160461(n)+A000265(n+1))`
-/

namespace A124210.P15802574847411505861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247477 (A160461 n + A000265 (n + 1)).toNat

end

end A124210.P15802574847411505861

/-! ## A124210.P3711074991031057942

`A007877(and(1, A131090(n))*A001296(n))`
-/

namespace A124210.P3711074991031057942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007877 (Int.land 1 (A131090 n) * A001296 n).toNat

end

end A124210.P3711074991031057942

/-! ## A124210.P14078761653961081688

`A007877(and(1, A197092(n+1))*A001296(n))`
-/

namespace A124210.P14078761653961081688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007877 (Int.land 1 (A197092 (n + 1)) * A001296 n).toNat

end

end A124210.P14078761653961081688

/-! ## A124210.P1565784869071478397

`((A109101(n+1)+A041773(n))%A023896(2*(n+1)))%3`
-/

namespace A124210.P1565784869071478397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (Int.tmod (A109101 (n + 1) + A041773 n) (A023896 (2 * (n + 1)))) 3

end

end A124210.P1565784869071478397

/-!
# A124211: E.g.f.: exp(-2*(exp(exp(-x/(2*x-1))-1)-1)/(-2+exp(exp(-x/(2*x-1))-1))).

The programs for A124211, there is no canonical definition to state claims against.
-/

/-! ## A124211.P3821009805475382375

`A022838(A004526((2*n+1)^n)+1)-n`
-/

namespace A124211.P3821009805475382375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022838 (A004526 ((2 * n + 1) ^ n) + 1).toNat - (n : ℤ)

end

end A124211.P3821009805475382375

/-!
# A124212: Expansion of e.g.f. exp(x)/sqrt(2-exp(2*x)).

The programs for A124212, there is no canonical definition to state claims against.
-/

/-! ## A124212.P6877426946317843335

`2^n*A014307(n)`
-/

namespace A124212.P6877426946317843335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * A014307 n

end

end A124212.P6877426946317843335

/-! ## A124212.P6748723487706734090

`A014307(n)*A156919(∑[n])`
-/

namespace A124212.P6748723487706734090
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014307 n * A156919 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A124212.P6748723487706734090

/-! ## A124212.P7797737528736183080

`A014307(n)*A016116(2*n)`
-/

namespace A124212.P7797737528736183080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014307 n * A016116 (2 * n)

end

end A124212.P7797737528736183080

/-! ## A124212.P9908153282192935352

`-(Δ[A348468(n)]*A000079(n))`
-/

namespace A124212.P9908153282192935352
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348468 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -((f1 (n + 1) - f1 n) * A000079 n)

end

end A124212.P9908153282192935352

/-! ## A124212.P17337124866163491532

`A014307(n)*A075497(A000124(n))`
-/

namespace A124212.P17337124866163491532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014307 n * A075497 (A000124 n).toNat

end

end A124212.P17337124866163491532

/-! ## A124212.P17007169516677172767

`A014307(n)/A000142(n)*A000165(n)`
-/

namespace A124212.P17007169516677172767
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A014307 n : ℚ) / (A000142 n : ℚ) * (A000165 n : ℚ)

end

end A124212.P17007169516677172767

/-!
# A124213: Expansion of e.g.f.: exp(exp(x)/sqrt(2-exp(2*x))-1).

The programs for A124213, there is no canonical definition to state claims against.
-/

/-! ## A124213.P14240242237455361016

`A000079(n)*A034887(A318977(n))`
-/

namespace A124213.P14240242237455361016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n * A034887 (A318977 n).toNat

end

end A124213.P14240242237455361016

/-! ## A124213.P3588531625206371476

`A317683(A010756(n²))+A292187(n)`
-/

namespace A124213.P3588531625206371476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317683 (A010756 (n ^ 2)).toNat + A292187 n

end

end A124213.P3588531625206371476

/-!
# A124214: E.g.f.: exp(x) / (2 - exp(3*x))^(1/3).

The programs for A124214, there is no canonical definition to state claims against.
-/

/-! ## A124214.P14765611670346549425

`A020657(A108995(n)+1)`
-/

namespace A124214.P14765611670346549425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020657 (A108995 n + 1).toNat

end

end A124214.P14765611670346549425

/-!
# A124215: E.g.f.: exp(exp(x)/(2-exp(3*x))^(1/3)-1).

The programs for A124215, there is no canonical definition to state claims against.
-/

/-! ## A124215.P9409584189271654868

`A126918(2^n*A000556(n))`
-/

namespace A124215.P9409584189271654868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126918 ((2 ^ n : ℤ) * A000556 n).toNat

end

end A124215.P9409584189271654868

/-!
# A124216: Generalized Pascal triangle.

The programs for A124216, there is no canonical definition to state claims against.
-/

/-! ## A124216.P5993617901386671490

`A132787(n+1)-A014473(n)%A071855(n+1)`
-/

namespace A124216.P5993617901386671490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132787 (n + 1) - Int.tmod (A014473 n) (A071855 (n + 1))

end

end A124216.P5993617901386671490

/-! ## A124216.P8305346049657835442

`A122080(A001263(n+1))-A007318(n)`
-/

namespace A124216.P8305346049657835442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122080 (A001263 (n + 1)).toNat - A007318 n

end

end A124216.P8305346049657835442

/-! ## A124216.P1217401734781027259

`A001614(A001263(n+1)%A093416(3*n+2))`
-/

namespace A124216.P1217401734781027259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001614 (Int.tmod (A001263 (n + 1)) (A093416 (3 * n + 2))).toNat

end

end A124216.P1217401734781027259

/-! ## A124216.P9616620184534266426

`A001614(A001263(n+1)^A049639(n+3))`
-/

namespace A124216.P9616620184534266426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001614 (SequenceMachineLib.roundAway ((A001263 (n + 1) : ℚ) ^ (A049639 (n + 3) : ℤ))).toNat

end

end A124216.P9616620184534266426

/-! ## A124216.P211247238132715596

`A001614(A001263(n+1))%A169867(2*n+1)`
-/

namespace A124216.P211247238132715596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001614 (A001263 (n + 1)).toNat) (A169867 (2 * n + 1))

end

end A124216.P211247238132715596

/-!
# A124217: Expansion of (1-x-x^2)/(1-2x-x^2+x^4).

The programs for A124217, the canonical program `A124217.P13572957882580579849` is in `Seq.B000.C018`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A124217 has offset 0).

The definition of A124217 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1-x-x^2)/(1-2x-x^2+x^4))` (program `A124217.P13572957882580579849`, by `A124217.P13572957882580579849.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A124217.P13572957882580579849

`ogf((1-x-x^2)/(1-2x-x^2+x^4))`

The canonical program, it is in `Seq.B000.C018`.
-/

namespace A124217

/-- `ogf((1-x-x^2)/(1-2x-x^2+x^4))` -/
def P13572957882580579849.Spec : Prop :=
  ∀ n, P13572957882580579849.a n = A124217 n

theorem P13572957882580579849.correct : P13572957882580579849.Spec := by
  intro n
  simp only [A124217]

end A124217

/-! ## A124217.P12975071058033022264

`a(n-1)+a(n-1)+a(n-2)-a(n-4)` with `a(0)=1, a(1)=1, a(2)=2, a(3)=5`
-/

namespace A124217.P12975071058033022264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 2, 5] fun n a =>
  a (n - 1) + (a (n - 1) + (a (n - 2) - a (n - 4)))

end

end A124217.P12975071058033022264

namespace A124217

/-- `a(n-1)+a(n-1)+a(n-2)-a(n-4)` -/
def P12975071058033022264.Spec : Prop :=
  ∀ n, P12975071058033022264.a n = A124217 n

end A124217

/-! ## A124217.P9311764684800949267

`a(n-1)-(a(n-4)-a(n-1)-a(n-2))` with `a(0)=1, a(1)=1, a(2)=2, a(3)=5`
-/

namespace A124217.P9311764684800949267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 2, 5] fun n a =>
  a (n - 1) - (a (n - 4) - a (n - 1) - a (n - 2))

end

end A124217.P9311764684800949267

namespace A124217

/-- `a(n-1)-(a(n-4)-a(n-1)-a(n-2))` -/
def P9311764684800949267.Spec : Prop :=
  ∀ n, P9311764684800949267.a n = A124217 n

end A124217

/-! ## A124217.P17625086299922498261

`A008615(A329669(n)+A097550(n))`
-/

namespace A124217.P17625086299922498261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008615 (A329669 n + A097550 n).toNat

end

end A124217.P17625086299922498261

namespace A124217

/-- `A008615(A329669(n)+A097550(n))` -/
def P17625086299922498261.Spec : Prop :=
  ∀ n, P17625086299922498261.a n = A124217 n

end A124217

/-! ## A124217.P13440892390261151489

`A008615(A097550(n)-(A008615(n)-A329669(n)))`
-/

namespace A124217.P13440892390261151489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008615 (A097550 n - (A008615 n - A329669 n)).toNat

end

end A124217.P13440892390261151489

namespace A124217

/-- `A008615(A097550(n)-(A008615(n)-A329669(n)))` -/
def P13440892390261151489.Spec : Prop :=
  ∀ n, P13440892390261151489.a n = A124217 n

end A124217

/-!
# A124218: a(n) is the m-th positive integer which is coprime to n, where phi(n) is number of positive integers which are <= n and are coprime to n, d(n) is the number of positive divisors of n and m = phi(n) if phi(n)|d(n), else m = d(n) mod phi(n).

The programs for A124218, there is no canonical definition to state claims against.
-/

/-! ## A124218.P2019989499243131298

`A120842(n+1)%∑[2-A157142(n+1)]`
-/

namespace A124218.P2019989499243131298
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A157142 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A120842 (n + 1)) (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A124218.P2019989499243131298

/-! ## A124218.P3468767102015359870

`A120842(A233583(n+2))%A233583(n+2)`
-/

namespace A124218.P3468767102015359870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A120842 (A233583 (n + 2)).toNat) (A233583 (n + 2))

end

end A124218.P3468767102015359870

/-! ## A124218.P15006564029468292543

`A120842(n+1)%A016724(n)`
-/

namespace A124218.P15006564029468292543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A120842 (n + 1)) (A016724 n)

end

end A124218.P15006564029468292543

/-! ## A124218.P3580940433428559911

`A002260(A120842(n+1)+∑[n])`
-/

namespace A124218.P3580940433428559911
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (A120842 (n + 1) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)).toNat

end

end A124218.P3580940433428559911

/-! ## A124218.P2441218618128327789

`A144328(A120842(n+1)+∑[n]+1)`
-/

namespace A124218.P2441218618128327789
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144328 (A120842 (n + 1) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) + 1).toNat

end

end A124218.P2441218618128327789

/-! ## A124218.P8276033426251304691

`A122197(A120842(n+1)+(n+1)²)`
-/

namespace A124218.P8276033426251304691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122197 (A120842 (n + 1) + ((n + 1) ^ 2 : ℤ)).toNat

end

end A124218.P8276033426251304691

/-! ## A124218.P3411380292769738704

`A120842(A000027(n+1))%(A054977(n)*A187829(n+1))`
-/

namespace A124218.P3411380292769738704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A120842 (A000027 (n + 1)).toNat) (A054977 n * A187829 (n + 1))

end

end A124218.P3411380292769738704

/-!
# A124219: a(n)= m-th positive divisor of n, where phi(n) is number of positive integers which are <= n and are coprime to n, d(n) is the number of positive divisors of n and m = d(n) if d(n)|phi(n), else m = phi(n) mod d(n).

The programs for A124219, there is no canonical definition to state claims against.
-/

/-! ## A124219.P11987653905673126041

`gcd(n+1, lcm(n%2, A280597(n+1)))`
-/

namespace A124219.P11987653905673126041
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd (n + 1) (Int.lcm ((n % 2 : ℕ) : ℤ) (A280597 (n + 1)))

end

end A124219.P11987653905673126041

/-! ## A124219.P16257237567803435989

`gcd(n+1, A208575(A214899(n)))`
-/

namespace A124219.P16257237567803435989
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A208575 (A214899 n).toNat)

end

end A124219.P16257237567803435989

/-! ## A124219.P13007435906135689518

`gcd(A208575(A214899(n)), A348553(n))`
-/

namespace A124219.P13007435906135689518
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A208575 (A214899 n).toNat) (A348553 n)

end

end A124219.P13007435906135689518

/-! ## A124219.P16359341388886158635

`A035191(A000079(n)-A285128(n+2))`
-/

namespace A124219.P16359341388886158635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035191 (A000079 n - A285128 (n + 2)).toNat

end

end A124219.P16359341388886158635

/-!
# A124220: Transpose table A123685 then subtract, term by term, from table A047969.

The programs for A124220, there is no canonical definition to state claims against.
-/

/-! ## A124220.P2250654845749262880

`A206428(n)%A007918(A350764(n+1))`
-/

namespace A124220.P2250654845749262880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A206428 n) (A007918 (A350764 (n + 1)).toNat)

end

end A124220.P2250654845749262880

/-! ## A124220.P11384132773655844543

`A241063(A256041(n+1))+A091866(n+1)`
-/

namespace A124220.P11384132773655844543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241063 (A256041 (n + 1)).toNat + A091866 (n + 1)

end

end A124220.P11384132773655844543

/-!
# A124223: Table T(n,k) = reciprocal of k modulo prime(n), for 1 <= k < prime(n), read by rows.

The programs for A124223, there is no canonical definition to state claims against.
-/

/-! ## A124223.P17290051506890257557

`A344760(A060735(n+1))`
-/

namespace A124223.P17290051506890257557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344760 (A060735 (n + 1)).toNat

end

end A124223.P17290051506890257557

/-! ## A124223.P6051441697732799672

`A344760(A343048(n)+1)`
-/

namespace A124223.P6051441697732799672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344760 (A343048 n + 1).toNat

end

end A124223.P6051441697732799672

/-! ## A124223.P12053556883701881802

`A344760(eq[1, A329031(n)])`
-/

namespace A124223.P12053556883701881802
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329031 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344760 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A124223.P12053556883701881802

/-! ## A124223.P7834723685942643106

`A344760(1-A057428(n)*A343048(n))`
-/

namespace A124223.P7834723685942643106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344760 (1 - A057428 n * A343048 n).toNat

end

end A124223.P7834723685942643106

/-! ## A124223.P14361186680897823390

`A344760(∩[A055932(n+1), A288784(n)])`
-/

namespace A124223.P14361186680897823390
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055932 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288784 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344760 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n)

end

end A124223.P14361186680897823390

/-!
# A124224: Table T(n,k) = reciprocal of k-th number prime to n, modulo n, for 1 <= k <= phi(n).

The programs for A124224, there is no canonical definition to state claims against.
-/

/-! ## A124224.P3488083641749361191

`A289251(A169581(n+1)+1)`
-/

namespace A124224.P3488083641749361191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289251 (A169581 (n + 1) + 1).toNat

end

end A124224.P3488083641749361191

/-! ## A124224.P1660047490418307576

`A002487(A054427(n+1))%(n+1)`
-/

namespace A124224.P1660047490418307576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A002487 (A054427 (n + 1)).toNat) (n + 1 : ℤ)

end

end A124224.P1660047490418307576

/-! ## A124224.P14393271175556906333

`A002487(A054427(n+1)-floor(acot(n)))`
-/

namespace A124224.P14393271175556906333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002487 (A054427 (n + 1) - ⌊SequenceMachineLib.acot (n : ℝ)⌋).toNat

end

end A124224.P14393271175556906333

/-! ## A124224.P13992932584091909328

`A002487(ceil(sin(n)²)*A054427(n+1))`
-/

namespace A124224.P13992932584091909328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002487 (⌈Real.sin (n : ℝ) ^ 2⌉ * A054427 (n + 1)).toNat

end

end A124224.P13992932584091909328

/-! ## A124224.P6304941350036301850

`A002487(A054427(n+1)-A000007(n))`
-/

namespace A124224.P6304941350036301850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002487 (A054427 (n + 1) - A000007 n).toNat

end

end A124224.P6304941350036301850

/-! ## A124224.P5507146193367567300

`A002487(A054427(n+1)-A151933(n))`
-/

namespace A124224.P5507146193367567300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002487 (A054427 (n + 1) - A151933 n).toNat

end

end A124224.P5507146193367567300

/-! ## A124224.P9664197465469169153

`A002487(A054427(n+1)*A178334(n))`
-/

namespace A124224.P9664197465469169153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002487 (A054427 (n + 1) * A178334 n).toNat

end

end A124224.P9664197465469169153

/-! ## A124224.P6681419289849006159

`A002487(A054427(n+1)%A002623(n))`
-/

namespace A124224.P6681419289849006159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002487 (Int.tmod (A054427 (n + 1)) (A002623 n)).toNat

end

end A124224.P6681419289849006159

/-! ## A124224.P3347859619539050702

`A002487(∑{e}[A006530(n+1), #*A054427(n+1)])`
-/

namespace A124224.P3347859619539050702
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002487 (∑ p ∈ Nat.primeFactors (f1 n).natAbs, (Nat.factorization (f1 n).natAbs p : ℤ) * A054427 (n + 1)).toNat

end

end A124224.P3347859619539050702

/-! ## A124224.P9067993453708267918

`A002487(∑{e}[A006530(n+1), A054427(n+1)/#])`
-/

namespace A124224.P9067993453708267918
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002487 (SequenceMachineLib.roundAway (∑ p ∈ Nat.primeFactors (f1 n).natAbs, (A054427 (n + 1) : ℚ) / (Nat.factorization (f1 n).natAbs p : ℚ))).toNat

end

end A124224.P9067993453708267918

/-!
# A124225: Numbers k such that the sum of the first k primes is prime and the sum of the squares of the first k primes is also prime.

The programs for A124225, there is no canonical definition to state claims against.
-/

/-! ## A124225.P10331869898063157269

`∩[A013916(n+1), A098561(n+1)]`
-/

namespace A124225.P10331869898063157269
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013916 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098561 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A124225.P10331869898063157269

/-! ## A124225.P7858572969563865179

`∩[A098561(n+1), A280536(n+1)]`
-/

namespace A124225.P7858572969563865179
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098561 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280536 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A124225.P7858572969563865179

/-! ## A124225.P7796980501921850255

`∩[record[n+1-n*A102863(n+1)], A098561(n+1)]`
-/

namespace A124225.P7796980501921850255
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - (n : ℤ) * A102863 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098561 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f3 j = (x : ℤ)) n

end

end A124225.P7796980501921850255

/-! ## A124225.P4569083091683209885

`∩[A000720(A013917(n+1)), A098561(n+1)]`
-/

namespace A124225.P4569083091683209885
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A013917 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098561 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A124225.P4569083091683209885

/-!
# A124226: Number of partitions of n with even crank minus number of partitions of n with odd crank.

The programs for A124226, there is no canonical definition to state claims against.
-/

/-! ## A124226.P4890440696662284133

`A132970(2*char[1]+n)`
-/

namespace A124226.P4890440696662284133
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132970 (2 * (if ∃ j, f1 j = n then 1 else 0) + n)

end

end A124226.P4890440696662284133

/-! ## A124226.P4403659394362161729

`or(C(2, n²), A132970(n))`
-/

namespace A124226.P4403659394362161729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (Nat.choose 2 (n ^ 2) : ℤ) (A132970 n)

end

end A124226.P4403659394362161729

/-! ## A124226.P17677883509508921801

`or(-A063524(n), A132970(n))`
-/

namespace A124226.P17677883509508921801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (-A063524 n) (A132970 n)

end

end A124226.P17677883509508921801

/-! ## A124226.P8546344081504635128

`A132970(n)/gcd(3, A000040(n+1))`
-/

namespace A124226.P8546344081504635128
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A132970 n : ℚ) / (Int.gcd 3 (A000040 (n + 1)) : ℚ)

end

end A124226.P8546344081504635128

/-! ## A124226.P4968508615596058276

`A124227(n)-A124228(n)`
-/

namespace A124226.P4968508615596058276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124227 n - A124228 n

end

end A124226.P4968508615596058276

/-! ## A124226.P6546313425549265049

`2*A124227(n)-A000041(n)`
-/

namespace A124226.P6546313425549265049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A124227 n - A000041 n

end

end A124226.P6546313425549265049

/-! ## A124226.P1226492026382359624

`A000041(n)-2*A124228(n)`
-/

namespace A124226.P1226492026382359624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n - 2 * A124228 n

end

end A124226.P1226492026382359624

/-! ## A124226.P11329212358170667199

`A132970(n)%A001612(n)`
-/

namespace A124226.P11329212358170667199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A132970 n) (A001612 n)

end

end A124226.P11329212358170667199

/-! ## A124226.P3523011995664542266

`A132970(n)/A014963(∑[n+1])`
-/

namespace A124226.P3523011995664542266
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A132970 n : ℚ) / (A014963 (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ)

end

end A124226.P3523011995664542266

/-! ## A124226.P5744179817679767925

`A132970(n)/A358692(n+1)`
-/

namespace A124226.P5744179817679767925
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A132970 n : ℚ) / (A358692 (n + 1) : ℚ)

end

end A124226.P5744179817679767925

/-!
# A124227: Number of partitions of n with even crank.

The programs for A124227, there is no canonical definition to state claims against.
-/

/-! ## A124227.P18019984895611158450

`(A000041(n)+A124226(n))/2`
-/

namespace A124227.P18019984895611158450
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000041 n + A124226 n : ℚ) / 2

end

end A124227.P18019984895611158450

/-! ## A124227.P14544530049901480257

`A124228(n)+A124226(n)`
-/

namespace A124227.P14544530049901480257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124228 n + A124226 n

end

end A124227.P14544530049901480257

/-! ## A124227.P16627371147454623925

`A000041(n)-A124228(n)`
-/

namespace A124227.P16627371147454623925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n - A124228 n

end

end A124227.P16627371147454623925

/-! ## A124227.P18376988634076869542

`∑[A002865(n)]-A124228(n)`
-/

namespace A124227.P18376988634076869542
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002865 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A124228 n

end

end A124227.P18376988634076869542

/-! ## A124227.P4999147209607064774

`A133041(n)-(A124228(n)+n)`
-/

namespace A124227.P4999147209607064774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133041 n - (A124228 n + (n : ℤ))

end

end A124227.P4999147209607064774

/-! ## A124227.P635527880444476562

`sqrt(A001255(n))-A124228(n)`
-/

namespace A124227.P635527880444476562
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A001255 n : ℝ) - (A124228 n : ℝ)

end

end A124227.P635527880444476562

/-!
# A124228: Number of partitions of n with odd crank.

The programs for A124228, there is no canonical definition to state claims against.
-/

/-! ## A124228.P13632715198573255245

`(A000041(n)-A124226(n))/2`
-/

namespace A124228.P13632715198573255245
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000041 n - A124226 n : ℚ) / 2

end

end A124228.P13632715198573255245

/-! ## A124228.P9574431591018246503

`A124227(n)-A124226(n)`
-/

namespace A124228.P9574431591018246503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124227 n - A124226 n

end

end A124228.P9574431591018246503

/-! ## A124228.P17663457651029202541

`A000041(n)-A124227(n)`
-/

namespace A124228.P17663457651029202541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n - A124227 n

end

end A124228.P17663457651029202541

/-! ## A124228.P1356388657182377106

`∑[A002865(n)]-A124227(n)`
-/

namespace A124228.P1356388657182377106
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002865 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A124227 n

end

end A124228.P1356388657182377106

/-! ## A124228.P9621183494016629112

`A133041(n)-(A124227(n)+n)`
-/

namespace A124228.P9621183494016629112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133041 n - (A124227 n + (n : ℤ))

end

end A124228.P9621183494016629112

/-! ## A124228.P958488482158969723

`∑[A085811(n+3)]-A124227(n)`
-/

namespace A124228.P958488482158969723
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085811 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A124227 n

end

end A124228.P958488482158969723

/-! ## A124228.P8487401251738713397

`sqrt(A001255(n))-A124227(n)`
-/

namespace A124228.P8487401251738713397
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A001255 n : ℝ) - (A124227 n : ℝ)

end

end A124228.P8487401251738713397

/-!
# A124229: Numerator of g(n) defined by g(1)=1, g(2n)=1/g(n)+1, g(2n+1)=g(2n).

The programs for A124229, the canonical program `A124229.P5298669356209665755` is in `Seq.B000.C018`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A124229 has offset 1).

The definition of A124229 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A124229.P5298669356209665755

`a(floor((n+1)/2)-1)+a(floor((n+1)/4)-1)` with `a(0)=1, a(1)=2, a(2)=2`

The canonical program, it is in `Seq.B000.C018`.
-/

namespace A124229

/-- `a(floor((n+1)/2)-1)+a(floor((n+1)/4)-1)` -/
def P5298669356209665755.Spec : Prop :=
  ∀ n, (P5298669356209665755.a n : ℤ) = A124229 (n + 1)

theorem P5298669356209665755.correct : P5298669356209665755.Spec := by
  intro n
  simp only [A124229, Nat.add_sub_cancel]

end A124229

/-! ## A124229.P17850903067032080648

`A000045(ceil(log(n+2)/log(2))+1)`
-/

namespace A124229.P17850903067032080648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (⌈Real.log (n + 2 : ℝ) / Real.log (2 : ℝ)⌉ + 1).toNat

end

end A124229.P17850903067032080648

namespace A124229

/-- `A000045(ceil(log(n+2)/log(2))+1)` -/
def P17850903067032080648.Spec : Prop :=
  ∀ n, P17850903067032080648.a n = A124229 (n + 1)

end A124229

/-! ## A124229.P11803596490677639653

`round(ϕ*a(round(n/2)-1))` with `a(0)=1`
-/

namespace A124229.P11803596490677639653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  SequenceMachineLib.roundAway (Real.goldenRatio * (a (SequenceMachineLib.roundAway ((n : ℚ) / 2) - 1).toNat : ℝ))

end

end A124229.P11803596490677639653

namespace A124229

/-- `round(ϕ*a(round(n/2)-1))` -/
def P11803596490677639653.Spec : Prop :=
  ∀ n, P11803596490677639653.a n = A124229 (n + 1)

end A124229

/-! ## A124229.P5425508792599712950

`A083662(ceil(n/2))`
-/

namespace A124229.P5425508792599712950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083662 ⌈(n : ℚ) / 2⌉.toNat

end

end A124229.P5425508792599712950

namespace A124229

/-- `A083662(ceil(n/2))` -/
def P5425508792599712950.Spec : Prop :=
  ∀ n, P5425508792599712950.a n = A124229 (n + 1)

end A124229

/-! ## A124229.P18057608512355136354

`A022290(A053644(n+1))`
-/

namespace A124229.P18057608512355136354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022290 (A053644 (n + 1)).toNat

end

end A124229.P18057608512355136354

namespace A124229

/-- `A022290(A053644(n+1))` -/
def P18057608512355136354.Spec : Prop :=
  ∀ n, P18057608512355136354.a n = A124229 (n + 1)

end A124229

/-! ## A124229.P8200823209561320518

`A005206(A083662(n+1))`
-/

namespace A124229.P8200823209561320518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005206 (A083662 (n + 1)).toNat

end

end A124229.P8200823209561320518

namespace A124229

/-- `A005206(A083662(n+1))` -/
def P8200823209561320518.Spec : Prop :=
  ∀ n, P8200823209561320518.a n = A124229 (n + 1)

end A124229

/-! ## A124229.P2383090339180940149

`A071585(A053644(n+1)-1)`
-/

namespace A124229.P2383090339180940149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071585 (A053644 (n + 1) - 1).toNat

end

end A124229.P2383090339180940149

namespace A124229

/-- `A071585(A053644(n+1)-1)` -/
def P2383090339180940149.Spec : Prop :=
  ∀ n, P2383090339180940149.a n = A124229 (n + 1)

end A124229

/-! ## A124229.P13877174981517333356

`A280514(A083662(n+1)-1)`
-/

namespace A124229.P13877174981517333356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280514 (A083662 (n + 1) - 1).toNat

end

end A124229.P13877174981517333356

namespace A124229

/-- `A280514(A083662(n+1)-1)` -/
def P13877174981517333356.Spec : Prop :=
  ∀ n, P13877174981517333356.a n = A124229 (n + 1)

end A124229

/-! ## A124229.P14363937631813811574

`A071585(n-A053645(n+1))`
-/

namespace A124229.P14363937631813811574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071585 ((n : ℤ) - A053645 (n + 1)).toNat

end

end A124229.P14363937631813811574

namespace A124229

/-- `A071585(n-A053645(n+1))` -/
def P14363937631813811574.Spec : Prop :=
  ∀ n, P14363937631813811574.a n = A124229 (n + 1)

end A124229

/-! ## A124229.P7582970994373748751

`A022290(A062383(n+1)/2)`
-/

namespace A124229.P7582970994373748751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022290 (SequenceMachineLib.roundAway ((A062383 (n + 1) : ℚ) / 2)).toNat

end

end A124229.P7582970994373748751

namespace A124229

/-- `A022290(A062383(n+1)/2)` -/
def P7582970994373748751.Spec : Prop :=
  ∀ n, P7582970994373748751.a n = A124229 (n + 1)

end A124229

/-! ## A124229.P13295010155694094208

`A020651(A003817(n+1))`
-/

namespace A124229.P13295010155694094208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020651 (A003817 (n + 1)).toNat

end

end A124229.P13295010155694094208

namespace A124229

/-- `A020651(A003817(n+1))` -/
def P13295010155694094208.Spec : Prop :=
  ∀ n, P13295010155694094208.a n = A124229 (n + 1)

end A124229

/-! ## A124229.P12682359266535229763

`A302437(A062383(n+1)-1)`
-/

namespace A124229.P12682359266535229763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302437 (A062383 (n + 1) - 1).toNat

end

end A124229.P12682359266535229763

namespace A124229

/-- `A302437(A062383(n+1)-1)` -/
def P12682359266535229763.Spec : Prop :=
  ∀ n, P12682359266535229763.a n = A124229 (n + 1)

end A124229

/-! ## A124229.P12773617832606724595

`A245564(A062383(n+1)-2)`
-/

namespace A124229.P12773617832606724595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245564 (A062383 (n + 1) - 2).toNat

end

end A124229.P12773617832606724595

namespace A124229

/-- `A245564(A062383(n+1)-2)` -/
def P12773617832606724595.Spec : Prop :=
  ∀ n, P12773617832606724595.a n = A124229 (n + 1)

end A124229

/-! ## A124229.P17352004090756979177

`A106345(A010078(n+2)+n)`
-/

namespace A124229.P17352004090756979177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106345 (A010078 (n + 2) + (n : ℤ)).toNat

end

end A124229.P17352004090756979177

namespace A124229

/-- `A106345(A010078(n+2)+n)` -/
def P17352004090756979177.Spec : Prop :=
  ∀ n, P17352004090756979177.a n = A124229 (n + 1)

end A124229

/-! ## A124229.P3881821516227123372

`A127830(A206332(n+1)-n)`
-/

namespace A124229.P3881821516227123372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127830 (A206332 (n + 1) - (n : ℤ)).toNat

end

end A124229.P3881821516227123372

namespace A124229

/-- `A127830(A206332(n+1)-n)` -/
def P3881821516227123372.Spec : Prop :=
  ∀ n, P3881821516227123372.a n = A124229 (n + 1)

end A124229

/-! ## A124229.P12098230430471664438

`A120562(A206332(n+1)-(n+1))`
-/

namespace A124229.P12098230430471664438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120562 (A206332 (n + 1) - (n + 1 : ℤ)).toNat

end

end A124229.P12098230430471664438

namespace A124229

/-- `A120562(A206332(n+1)-(n+1))` -/
def P12098230430471664438.Spec : Prop :=
  ∀ n, P12098230430471664438.a n = A124229 (n + 1)

end A124229

/-! ## A124229.P6406178756262668988

`A124230(2*(n+1))`
-/

namespace A124229.P6406178756262668988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124230 (2 * (n + 1))

end

end A124229.P6406178756262668988

namespace A124229

/-- `A124230(2*(n+1))` -/
def P6406178756262668988.Spec : Prop :=
  ∀ n, P6406178756262668988.a n = A124229 (n + 1)

end A124229

/-! ## A124229.P2283434968802961354

`A071766(A054429(n+1)+n+1)`
-/

namespace A124229.P2283434968802961354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071766 (A054429 (n + 1) + (n + 1 : ℤ)).toNat

end

end A124229.P2283434968802961354

namespace A124229

/-- `A071766(A054429(n+1)+n+1)` -/
def P2283434968802961354.Spec : Prop :=
  ∀ n, P2283434968802961354.a n = A124229 (n + 1)

end A124229

/-! ## A124229.P2975997837866920740

`A093873(A054429(n+1)+n+1)`
-/

namespace A124229.P2975997837866920740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093873 (A054429 (n + 1) + (n + 1 : ℤ)).toNat

end

end A124229.P2975997837866920740

namespace A124229

/-- `A093873(A054429(n+1)+n+1)` -/
def P2975997837866920740.Spec : Prop :=
  ∀ n, P2975997837866920740.a n = A124229 (n + 1)

end A124229

/-! ## A124229.P7927383985324497615

`A245326(A054429(n+1)+n+2)`
-/

namespace A124229.P7927383985324497615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245326 (A054429 (n + 1) + (n + 2 : ℤ)).toNat

end

end A124229.P7927383985324497615

namespace A124229

/-- `A245326(A054429(n+1)+n+2)` -/
def P7927383985324497615.Spec : Prop :=
  ∀ n, P7927383985324497615.a n = A124229 (n + 1)

end A124229

/-!
# A124230: Denominator of g(n) defined by g(1)=1, g(2n)=1/g(n)+1, g(2n+1)=g(2n).

The programs for A124230, the canonical program `A124230.P7462789329882711128` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A124230 has offset 1).

The definition of A124230 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A124230.P7462789329882711128

`A000045(ceil(log(n+2)/log(2)))`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A124230

/-- `A000045(ceil(log(n+2)/log(2)))` -/
def P7462789329882711128.Spec : Prop :=
  ∀ n, P7462789329882711128.a n = A124230 (n + 1)

theorem P7462789329882711128.correct : P7462789329882711128.Spec := by
  intro n
  simp only [A124230, Nat.add_sub_cancel]

end A124230

/-! ## A124230.P7708867775480811087

`A124229(A006949(n))`
-/

namespace A124230.P7708867775480811087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124229 (A006949 n).toNat

end

end A124230.P7708867775480811087

namespace A124230

/-- `A124229(A006949(n))` -/
def P7708867775480811087.Spec : Prop :=
  ∀ n, P7708867775480811087.a n = A124230 (n + 1)

end A124230

/-! ## A124230.P12948993916857171241

`A124229(A065033(n))`
-/

namespace A124230.P12948993916857171241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124229 (A065033 n).toNat

end

end A124230.P12948993916857171241

namespace A124230

/-- `A124229(A065033(n))` -/
def P12948993916857171241.Spec : Prop :=
  ∀ n, P12948993916857171241.a n = A124230 (n + 1)

end A124230

/-! ## A124230.P4948707317785195844

`A005350(A083662(n+1))`
-/

namespace A124230.P4948707317785195844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005350 (A083662 (n + 1)).toNat

end

end A124230.P4948707317785195844

namespace A124230

/-- `A005350(A083662(n+1))` -/
def P4948707317785195844.Spec : Prop :=
  ∀ n, P4948707317785195844.a n = A124230 (n + 1)

end A124230

/-! ## A124230.P10668572881063146976

`A022290(A072376(n+1))`
-/

namespace A124230.P10668572881063146976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022290 (A072376 (n + 1)).toNat

end

end A124230.P10668572881063146976

namespace A124230

/-- `A022290(A072376(n+1))` -/
def P10668572881063146976.Spec : Prop :=
  ∀ n, P10668572881063146976.a n = A124230 (n + 1)

end A124230

/-! ## A124230.P13707367193484080474

`A124229(A004525(n+1))`
-/

namespace A124230.P13707367193484080474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124229 (A004525 (n + 1)).toNat

end

end A124230.P13707367193484080474

namespace A124230

/-- `A124229(A004525(n+1))` -/
def P13707367193484080474.Spec : Prop :=
  ∀ n, P13707367193484080474.a n = A124230 (n + 1)

end A124230

/-! ## A124230.P9093115871774904895

`A071766(A092323(n+1))`
-/

namespace A124230.P9093115871774904895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071766 (A092323 (n + 1)).toNat

end

end A124230.P9093115871774904895

namespace A124230

/-- `A071766(A092323(n+1))` -/
def P9093115871774904895.Spec : Prop :=
  ∀ n, P9093115871774904895.a n = A124230 (n + 1)

end A124230

/-! ## A124230.P12786206083614164343

`A174429(A053644(n+1))`
-/

namespace A124230.P12786206083614164343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174429 (A053644 (n + 1)).toNat

end

end A124230.P12786206083614164343

namespace A124230

/-- `A174429(A053644(n+1))` -/
def P12786206083614164343.Spec : Prop :=
  ∀ n, P12786206083614164343.a n = A124230 (n + 1)

end A124230

/-! ## A124230.P14454912924953522817

`A302437(A053644(n+1)-1)`
-/

namespace A124230.P14454912924953522817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302437 (A053644 (n + 1) - 1).toNat

end

end A124230.P14454912924953522817

namespace A124230

/-- `A302437(A053644(n+1)-1)` -/
def P14454912924953522817.Spec : Prop :=
  ∀ n, P14454912924953522817.a n = A124230 (n + 1)

end A124230

/-! ## A124230.P5186421442070007267

`A302437(n+1-A062050(n+1))`
-/

namespace A124230.P5186421442070007267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302437 ((n + 1 : ℤ) - A062050 (n + 1)).toNat

end

end A124230.P5186421442070007267

namespace A124230

/-- `A302437(n+1-A062050(n+1))` -/
def P5186421442070007267.Spec : Prop :=
  ∀ n, P5186421442070007267.a n = A124230 (n + 1)

end A124230

/-! ## A124230.P9375238321749462404

`A083662(A004526(n-A004526(n)))`
-/

namespace A124230.P9375238321749462404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083662 (A004526 ((n : ℤ) - A004526 n).toNat).toNat

end

end A124230.P9375238321749462404

namespace A124230

/-- `A083662(A004526(n-A004526(n)))` -/
def P9375238321749462404.Spec : Prop :=
  ∀ n, P9375238321749462404.a n = A124230 (n + 1)

end A124230

/-! ## A124230.P6346624713927781348

`A083662(A002265(n+1))`
-/

namespace A124230.P6346624713927781348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083662 (A002265 (n + 1)).toNat

end

end A124230.P6346624713927781348

namespace A124230

/-- `A083662(A002265(n+1))` -/
def P6346624713927781348.Spec : Prop :=
  ∀ n, P6346624713927781348.a n = A124230 (n + 1)

end A124230

/-! ## A124230.P8706517965839897036

`A083662(A004526(A004526(n+1)))`
-/

namespace A124230.P8706517965839897036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083662 (A004526 (A004526 (n + 1)).toNat).toNat

end

end A124230.P8706517965839897036

namespace A124230

/-- `A083662(A004526(A004526(n+1)))` -/
def P8706517965839897036.Spec : Prop :=
  ∀ n, P8706517965839897036.a n = A124230 (n + 1)

end A124230

/-! ## A124230.P15834593872446608039

`A020650(A003817(n+1))`
-/

namespace A124230.P15834593872446608039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020650 (A003817 (n + 1)).toNat

end

end A124230.P15834593872446608039

namespace A124230

/-- `A020650(A003817(n+1))` -/
def P15834593872446608039.Spec : Prop :=
  ∀ n, P15834593872446608039.a n = A124230 (n + 1)

end A124230

/-! ## A124230.P13003980661324877527

`A050334(A062383(n+1))`
-/

namespace A124230.P13003980661324877527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050334 (A062383 (n + 1)).toNat

end

end A124230.P13003980661324877527

namespace A124230

/-- `A050334(A062383(n+1))` -/
def P13003980661324877527.Spec : Prop :=
  ∀ n, P13003980661324877527.a n = A124230 (n + 1)

end A124230

/-! ## A124230.P11775401305033268638

`A020650(A253608(n+1)/(n+2))`
-/

namespace A124230.P11775401305033268638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020650 (SequenceMachineLib.roundAway ((A253608 (n + 1) : ℚ) / (n + 2 : ℚ))).toNat

end

end A124230.P11775401305033268638

namespace A124230

/-- `A020650(A253608(n+1)/(n+2))` -/
def P11775401305033268638.Spec : Prop :=
  ∀ n, P11775401305033268638.a n = A124230 (n + 1)

end A124230

/-! ## A124230.P14831952352458406373

`A124229(2*(n+1))-A124229(n+1)`
-/

namespace A124230.P14831952352458406373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124229 (2 * (n + 1)) - A124229 (n + 1)

end

end A124230.P14831952352458406373

namespace A124230

/-- `A124229(2*(n+1))-A124229(n+1)` -/
def P14831952352458406373.Spec : Prop :=
  ∀ n, P14831952352458406373.a n = A124230 (n + 1)

end A124230

/-! ## A124230.P9740502559648937328

`A373095(A062383(2*(n+1)))`
-/

namespace A124230.P9740502559648937328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373095 (A062383 (2 * (n + 1))).toNat

end

end A124230.P9740502559648937328

namespace A124230

/-- `A373095(A062383(2*(n+1)))` -/
def P9740502559648937328.Spec : Prop :=
  ∀ n, P9740502559648937328.a n = A124230 (n + 1)

end A124230

/-! ## A124230.P7410665203879821809

`A093873(A054429(n+1)+n)`
-/

namespace A124230.P7410665203879821809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093873 (A054429 (n + 1) + (n : ℤ)).toNat

end

end A124230.P7410665203879821809

namespace A124230

/-- `A093873(A054429(n+1)+n)` -/
def P7410665203879821809.Spec : Prop :=
  ∀ n, P7410665203879821809.a n = A124230 (n + 1)

end A124230

/-! ## A124230.P13119589984316872567

`A373095(A005187(2*(n+2)))`
-/

namespace A124230.P13119589984316872567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373095 (A005187 (2 * (n + 2))).toNat

end

end A124230.P13119589984316872567

namespace A124230

/-- `A373095(A005187(2*(n+2)))` -/
def P13119589984316872567.Spec : Prop :=
  ∀ n, P13119589984316872567.a n = A124230 (n + 1)

end A124230

/-!
# A124231: Numbers k such that pi(k) is palindromic, where pi(k) is the number of primes less than or equal to k.

The programs for A124231, there is no canonical definition to state claims against.
-/

/-! ## A124231.P10126615040754791157

`record[(n+1)*A136522(A000720(n+1))]`
-/

namespace A124231.P10126615040754791157
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A136522 (A000720 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A124231.P10126615040754791157

/-! ## A124231.P1142444812103521044

`eq[A000038(n), A064834(A230980(n))]`
-/

namespace A124231.P1142444812103521044
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064834 (A230980 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A124231.P1142444812103521044

/-! ## A124231.P4943206696575401730

`eq[A000007(n), A261424(A230980(n))]`
-/

namespace A124231.P4943206696575401730
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261424 (A230980 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A124231.P4943206696575401730

/-! ## A124231.P3046677744418317833

`eq[A054977(n), A261675(A230980(n))]`
-/

namespace A124231.P3046677744418317833
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054977 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261675 (A230980 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A124231.P3046677744418317833

/-! ## A124231.P4434362064830636635

`eq[A057427(n), A261675(A230980(n))]`
-/

namespace A124231.P4434362064830636635
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261675 (A230980 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A124231.P4434362064830636635

/-!
# A124232: Numbers n such that prime(n) and pi(n) are palindromic.

The programs for A124232, there is no canonical definition to state claims against.
-/

/-! ## A124232.P1171565555419883658

`∩[A075807(n+1), A124231(n+1)]`
-/

namespace A124232.P1171565555419883658
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075807 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124231 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A124232.P1171565555419883658

/-! ## A124232.P3106588202593013296

`∩[A000720(A002385(n+1)), A124231(n+1)]`
-/

namespace A124232.P3106588202593013296
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A002385 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124231 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A124232.P3106588202593013296

/-! ## A124232.P15121094448795895398

`∩[A000720(A069217(n+1)), A124231(n+1)]`
-/

namespace A124232.P15121094448795895398
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A069217 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124231 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A124232.P15121094448795895398

/-! ## A124232.P7789572153248412017

`∩[A124231(n+1), A061395(A069217(n+2))]`
-/

namespace A124232.P7789572153248412017
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124231 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (A069217 (n + 2)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A124232.P7789572153248412017

/-!
# A124233: Expansion of psi(q) * phi(-q^10) * chi(-q^5) / chi(-q^2) in powers of q where phi(), psi(), chi() are Ramanujan theta functions.

The programs for A124233, the canonical program `A124233.P15256239777678709145` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A124233 has offset 0).

The definition of A124233 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A124233.P9450648451482092369

`A035170(char[n^14]+n)`
-/

namespace A124233.P9450648451482092369
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 14

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035170 ((if ∃ j, f1 j = n then 1 else 0) + n)

end

end A124233.P9450648451482092369

namespace A124233

/-- `A035170(char[n^14]+n)` -/
def P9450648451482092369.Spec : Prop :=
  ∀ n, P9450648451482092369.a n = A124233 n

end A124233

/-! ## A124233.P15256239777678709145

`abs(A111949(A004277(n)-n))`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A124233

/-- `abs(A111949(A004277(n)-n))` -/
def P15256239777678709145.Spec : Prop :=
  ∀ n, P15256239777678709145.a n = A124233 n

theorem P15256239777678709145.correct : P15256239777678709145.Spec := by
  intro n
  simp only [A124233]

end A124233

/-! ## A124233.P17240968084809081312

`(A033718(n)+A028586(n))/2`
-/

namespace A124233.P17240968084809081312
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A033718 n + A028586 n : ℚ) / 2

end

end A124233.P17240968084809081312

namespace A124233

/-- `(A033718(n)+A028586(n))/2` -/
def P17240968084809081312.Spec : Prop :=
  ∀ n, P17240968084809081312.a n = (A124233 n : ℚ)

end A124233

/-! ## A124233.P14746776791103996120

`abs(A111949(A004277(n)))`
-/

namespace A124233.P14746776791103996120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A111949 (A004277 n).toNat|

end

end A124233.P14746776791103996120

namespace A124233

/-- `abs(A111949(A004277(n)))` -/
def P14746776791103996120.Spec : Prop :=
  ∀ n, P14746776791103996120.a n = A124233 n

end A124233

/-! ## A124233.P10702348698755702560

`A035170(A169585(n)+2*n)%A055998(n+2)`
-/

namespace A124233.P10702348698755702560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A035170 (A169585 n + (2 * n : ℤ)).toNat) (A055998 (n + 2))

end

end A124233.P10702348698755702560

namespace A124233

/-- `A035170(A169585(n)+2*n)%A055998(n+2)` -/
def P10702348698755702560.Spec : Prop :=
  ∀ n, P10702348698755702560.a n = A124233 n

end A124233

/-! ## A124233.P17721011120446479601

`A035170(A028310(n))+A000007(3*n+4)`
-/

namespace A124233.P17721011120446479601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035170 (A028310 n).toNat + A000007 (3 * n + 4)

end

end A124233.P17721011120446479601

namespace A124233

/-- `A035170(A028310(n))+A000007(3*n+4)` -/
def P17721011120446479601.Spec : Prop :=
  ∀ n, P17721011120446479601.a n = A124233 n

end A124233

/-! ## A124233.P452078245474982022

`A035170(A233583(n+1))%25`
-/

namespace A124233.P452078245474982022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A035170 (A233583 (n + 1)).toNat) 25

end

end A124233.P452078245474982022

namespace A124233

/-- `A035170(A233583(n+1))%25` -/
def P452078245474982022.Spec : Prop :=
  ∀ n, P452078245474982022.a n = A124233 n

end A124233

/-!
# A124234: Riordan array (1/(1-x), x(1+x)^2).

The programs for A124234, there is no canonical definition to state claims against.
-/

/-! ## A124234.P2250883396955600597

`A052509(A245300(n)+A114327(n))`
-/

namespace A124234.P2250883396955600597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052509 (A245300 n + A114327 n).toNat

end

end A124234.P2250883396955600597

/-! ## A124234.P6262161035348645055

`A004070(A245300(n)+A002262(n))`
-/

namespace A124234.P6262161035348645055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004070 (A245300 n + A002262 n).toNat

end

end A124234.P6262161035348645055

/-! ## A124234.P7845559671350325635

`A004070(A245300(n)+val(A130328(n), 2))`
-/

namespace A124234.P7845559671350325635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004070 (A245300 n + (SequenceMachineLib.valuation (A130328 n).toNat 2 : ℤ)).toNat

end

end A124234.P7845559671350325635

/-! ## A124234.P5881564114275376012

`A004070(A245300(n)+val(A247936(n), 2))`
-/

namespace A124234.P5881564114275376012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004070 (A245300 n + (SequenceMachineLib.valuation (A247936 n).toNat 2 : ℤ)).toNat

end

end A124234.P5881564114275376012

/-! ## A124234.P2285332655888683220

`A004070(A245300(n)+val(A036561(n), 3))`
-/

namespace A124234.P2285332655888683220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004070 (A245300 n + (SequenceMachineLib.valuation (A036561 n).toNat 3 : ℤ)).toNat

end

end A124234.P2285332655888683220

/-! ## A124234.P6596196304974825901

`A004070(A245300(n)+val(A055237(n), 5))`
-/

namespace A124234.P6596196304974825901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004070 (A245300 n + (SequenceMachineLib.valuation (A055237 n).toNat 5 : ℤ)).toNat

end

end A124234.P6596196304974825901

/-! ## A124234.P11524739324209982955

`A004070(A002260(n+1)+A245300(n)-1)`
-/

namespace A124234.P11524739324209982955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004070 (A002260 (n + 1) + (A245300 n - 1)).toNat

end

end A124234.P11524739324209982955

/-!
# A124237: Riordan array (1/(1-2x), x/((1-x)(1-2x))).

The programs for A124237, there is no canonical definition to state claims against.
-/

/-! ## A124237.P1423472498746891494

`A110441(n)-A206306(n+1)`
-/

namespace A124237.P1423472498746891494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110441 n - A206306 (n + 1)

end

end A124237.P1423472498746891494

/-! ## A124237.P12047701495559963471

`abs(A111806(n))-A206306(n+1)`
-/

namespace A124237.P12047701495559963471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A111806 n| - A206306 (n + 1)

end

end A124237.P12047701495559963471

/-! ## A124237.P1862331583720835944

`A097807(n)*A111806(n)-A206306(n+1)`
-/

namespace A124237.P1862331583720835944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097807 n * A111806 n - A206306 (n + 1)

end

end A124237.P1862331583720835944

/-! ## A124237.P10460004685593661337

`A206306(comp[∑[n]])-A206306(n+1)`
-/

namespace A124237.P10460004685593661337
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206306 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n) - A206306 (n + 1)

end

end A124237.P10460004685593661337

/-! ## A124237.P683961304209747246

`A110441(n)+A206306(n+1)*A259024(A016969(n))`
-/

namespace A124237.P683961304209747246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110441 n + A206306 (n + 1) * A259024 (A016969 n).toNat

end

end A124237.P683961304209747246

/-! ## A124237.P11882228880915032746

`∑{d}[A111806(n), A000010(#)]-A206306(n+1)`
-/

namespace A124237.P11882228880915032746
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111806 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d - A206306 (n + 1)

end

end A124237.P11882228880915032746

/-! ## A124237.P14421114551157035710

`2*A181332(n)-A206306(n)`
-/

namespace A124237.P14421114551157035710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A181332 n - A206306 n

end

end A124237.P14421114551157035710

/-! ## A124237.P3113977579460094969

`A331969(n)+A206306(n+1)`
-/

namespace A124237.P3113977579460094969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331969 n + A206306 (n + 1)

end

end A124237.P3113977579460094969

/-!
# A124238: Terms of A123857 that are not powers of 2.

The programs for A124238, there is no canonical definition to state claims against.
-/

/-! ## A124238.P11860406861982302596

`filter[A123857(n+1), A202238(#)]`
-/

namespace A124238.P11860406861982302596
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123857 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A202238 (f1 j).toNat = 1) n)

end

end A124238.P11860406861982302596

/-! ## A124238.P13111797739138705179

`filter[A123857(n+1), A347523(#)]`
-/

namespace A124238.P13111797739138705179
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123857 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A347523 (f1 j).toNat = 1) n)

end

end A124238.P13111797739138705179

/-! ## A124238.P4325112083098298121

`filter[A123857(n+1), A359768(#)]`
-/

namespace A124238.P4325112083098298121
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123857 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359768 (f1 j).toNat = 1) n)

end

end A124238.P4325112083098298121

/-! ## A124238.P10375454467997956934

`filter[A123857(n+1), A132350(#)]`
-/

namespace A124238.P10375454467997956934
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123857 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A132350 (f1 j).toNat = 1) n)

end

end A124238.P10375454467997956934

/-!
# A124240: Numbers n such that lambda(n) divides n, where lambda is Carmichael's function (A002322).

The programs for A124240, the canonical program `A124240.P11201623863866168056` is in `Seq.B014.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A124240 has offset 1).

The definition of A124240 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 330 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A124240.P12006698053671695162

`record[gcd(2*n, A006863(n))]`
-/

namespace A124240.P12006698053671695162
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (2 * n : ℤ) (A006863 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A124240.P12006698053671695162

namespace A124240

/-- `record[gcd(2*n, A006863(n))]` -/
def P12006698053671695162.Spec : Prop :=
  ∀ n, (P12006698053671695162.a n : ℤ) = A124240 (n + 1)

end A124240

/-! ## A124240.P16810324063087594636

`record[gcd(n+1, A075180(n))]`
-/

namespace A124240.P16810324063087594636
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A075180 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A124240.P16810324063087594636

namespace A124240

/-- `record[gcd(n+1, A075180(n))]` -/
def P16810324063087594636.Spec : Prop :=
  ∀ n, (P16810324063087594636.a n : ℤ) = A124240 (n + 1)

end A124240

/-! ## A124240.P4522150971726924736

`lt[A268336(n+1), 2]+1`
-/

namespace A124240.P4522150971726924736
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268336 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A124240.P4522150971726924736

namespace A124240

/-- `lt[A268336(n+1), 2]+1` -/
def P4522150971726924736.Spec : Prop :=
  ∀ n, (P4522150971726924736.a n : ℤ) = A124240 (n + 1)

end A124240

/-! ## A124240.P11201623863866168056

`record[A003557(n+1)*A225821(n+1)]`

The canonical program, it is in `Seq.B014.C000`.
-/

namespace A124240

/-- `record[A003557(n+1)*A225821(n+1)]` -/
def P11201623863866168056.Spec : Prop :=
  ∀ n, P11201623863866168056.a n = A124240 (n + 1)

theorem P11201623863866168056.correct : P11201623863866168056.Spec := by
  intro n
  simp only [A124240, Nat.add_sub_cancel]

end A124240

/-! ## A124240.P671806824359339992

`record[A185633(n+1)/A027760(n+1)]`
-/

namespace A124240.P671806824359339992
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A185633 (n + 1) : ℚ) / (A027760 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A124240.P671806824359339992

namespace A124240

/-- `record[A185633(n+1)/A027760(n+1)]` -/
def P671806824359339992.Spec : Prop :=
  ∀ n, P671806824359339992.a n = (A124240 (n + 1) : ℚ)

end A124240

/-! ## A124240.P5069945955343486800

`record[(n+1)/A000961(A219175(n+1)+1)]`
-/

namespace A124240.P5069945955343486800
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A000961 (A219175 (n + 1) + 1).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A124240.P5069945955343486800

namespace A124240

/-- `record[(n+1)/A000961(A219175(n+1)+1)]` -/
def P5069945955343486800.Spec : Prop :=
  ∀ n, P5069945955343486800.a n = (A124240 (n + 1) : ℚ)

end A124240

/-! ## A124240.P2438570277345494574

`record[(n+1)/A000005((n+1)%A002322(n+1)+1)]`
-/

namespace A124240.P2438570277345494574
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A000005 (Int.tmod (n + 1 : ℤ) (A002322 (n + 1)) + 1).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A124240.P2438570277345494574

namespace A124240

/-- `record[(n+1)/A000005((n+1)%A002322(n+1)+1)]` -/
def P2438570277345494574.Spec : Prop :=
  ∀ n, P2438570277345494574.a n = (A124240 (n + 1) : ℚ)

end A124240

/-! ## A124240.P10673782054235722343

`record[gcd(A006863(n)², A004277(n))]`
-/

namespace A124240.P10673782054235722343
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A006863 n ^ 2) (A004277 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A124240.P10673782054235722343

namespace A124240

/-- `record[gcd(A006863(n)², A004277(n))]` -/
def P10673782054235722343.Spec : Prop :=
  ∀ n, (P10673782054235722343.a n : ℤ) = A124240 (n + 1)

end A124240

/-! ## A124240.P13662209429375645997

`record[A193267(n+1)]`
-/

namespace A124240.P13662209429375645997
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193267 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A124240.P13662209429375645997

namespace A124240

/-- `record[A193267(n+1)]` -/
def P13662209429375645997.Spec : Prop :=
  ∀ n, P13662209429375645997.a n = A124240 (n + 1)

end A124240

/-! ## A124240.P2879366445784751702

`eq[1, A300330(n+1)]+1`
-/

namespace A124240.P2879366445784751702
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300330 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A124240.P2879366445784751702

namespace A124240

/-- `eq[1, A300330(n+1)]+1` -/
def P2879366445784751702.Spec : Prop :=
  ∀ n, (P2879366445784751702.a n : ℤ) = A124240 (n + 1)

end A124240

/-! ## A124240.P16047996611415851241

`record[A097337(n+2)/A300330(A097337(n+2))]`
-/

namespace A124240.P16047996611415851241
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A097337 (n + 2) : ℚ) / (A300330 (A097337 (n + 2)).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A124240.P16047996611415851241

namespace A124240

/-- `record[A097337(n+2)/A300330(A097337(n+2))]` -/
def P16047996611415851241.Spec : Prop :=
  ∀ n, P16047996611415851241.a n = (A124240 (n + 1) : ℚ)

end A124240

/-!
# A124242: Expansion of a parametrization of Ramanujan's continued fraction.

The programs for A124242, there is no canonical definition to state claims against.
-/

/-! ## A124242.P5803754928165885237

`C(2, (n+1)²)-A112803(n)`
-/

namespace A124242.P5803754928165885237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose 2 ((n + 1) ^ 2) : ℤ) - A112803 n

end

end A124242.P5803754928165885237

/-! ## A124242.P13393813779285433524

`A000038(n)-A112803(n)`
-/

namespace A124242.P13393813779285433524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n - A112803 n

end

end A124242.P13393813779285433524

/-! ## A124242.P6173241211419357680

`A112803(n)*A153881(n+1)`
-/

namespace A124242.P6173241211419357680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112803 n * A153881 (n + 1)

end

end A124242.P6173241211419357680

/-! ## A124242.P17581894362965889311

`2*A000007(n)-A112803(n)`
-/

namespace A124242.P17581894362965889311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000007 n - A112803 n

end

end A124242.P17581894362965889311

/-! ## A124242.P9225947810937997278

`A002276(C(n+1, ∑[n+1]))-A112803(n)`
-/

namespace A124242.P9225947810937997278
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002276 (Nat.choose (n + 1) (∑ j ∈ Finset.range (n + 1), f1 j)) - A112803 n

end

end A124242.P9225947810937997278

/-! ## A124242.P10673994569033232509

`A014963(A124520(n+1))-(A112803(n)+1)`
-/

namespace A124242.P10673994569033232509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A124520 (n + 1)).toNat - (A112803 n + 1)

end

end A124242.P10673994569033232509

/-!
# A124243: Expansion of q*psi(q^9)/psi(q) in powers of q.

The programs for A124243, there is no canonical definition to state claims against.
-/

/-! ## A124243.P9653039840396558689

`A033999(n)*A132975(n+1)`
-/

namespace A124243.P9653039840396558689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A132975 (n + 1)

end

end A124243.P9653039840396558689

/-! ## A124243.P10914453214166268331

`A062157(n+1)*A132975(n+1)`
-/

namespace A124243.P10914453214166268331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062157 (n + 1) * A132975 (n + 1)

end

end A124243.P10914453214166268331

/-! ## A124243.P2388662595017330999

`A132975(n+1)/A132972(n)*A141094(n)`
-/

namespace A124243.P2388662595017330999
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A132975 (n + 1) : ℚ) / (A132972 n : ℚ) * (A141094 n : ℚ)

end

end A124243.P2388662595017330999

/-! ## A124243.P10285743270319860204

`-A145977(n+1)`
-/

namespace A124243.P10285743270319860204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A145977 (n + 1)

end

end A124243.P10285743270319860204

/-! ## A124243.P17039753152937038738

`Δ[a(n-1)-A145977(n)]` with `a(0)=1`
-/

namespace A124243.P17039753152937038738
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  f1 (n - 1) - A145977 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A124243.P17039753152937038738

/-! ## A124243.P2200296504340590101

`A033999(n)*A213267(n+1)`
-/

namespace A124243.P2200296504340590101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A213267 (n + 1)

end

end A124243.P2200296504340590101

/-! ## A124243.P17627930603888877440

`A000007(n+1)-A145977(n+1)`
-/

namespace A124243.P17627930603888877440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (n + 1) - A145977 (n + 1)

end

end A124243.P17627930603888877440

/-! ## A124243.P5856788472303248505

`A000038(n+1)-A145977(n+1)`
-/

namespace A124243.P5856788472303248505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 (n + 1) - A145977 (n + 1)

end

end A124243.P5856788472303248505

/-! ## A124243.P17683869980935496372

`and(1, A005843(n))-A145977(n+1)`
-/

namespace A124243.P17683869980935496372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A005843 n) - A145977 (n + 1)

end

end A124243.P17683869980935496372

/-! ## A124243.P14901894777660373305

`(2-A122553(n+1))*A145977(n+1)`
-/

namespace A124243.P14901894777660373305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - A122553 (n + 1)) * A145977 (n + 1)

end

end A124243.P14901894777660373305

/-! ## A124243.P10870734525840741255

`2*A145977(n+1)-A141094(n+1)`
-/

namespace A124243.P10870734525840741255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A145977 (n + 1) - A141094 (n + 1)

end

end A124243.P10870734525840741255

/-! ## A124243.P7638038778686263762

`2*A213267(n+1)-A132180(n+1)`
-/

namespace A124243.P7638038778686263762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A213267 (n + 1) - A132180 (n + 1)

end

end A124243.P7638038778686263762

/-! ## A124243.P7193685340276489301

`(2-A153284(n+2))*A213267(n+1)`
-/

namespace A124243.P7193685340276489301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - A153284 (n + 2)) * A213267 (n + 1)

end

end A124243.P7193685340276489301

/-! ## A124243.P16935649287420719479

`A055672(A055672(n))-A145977(n+1)`
-/

namespace A124243.P16935649287420719479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055672 (A055672 n).toNat - A145977 (n + 1)

end

end A124243.P16935649287420719479

/-! ## A124243.P6033585895889670983

`A260958(A004016(n+1))-A145977(n+1)`
-/

namespace A124243.P6033585895889670983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260958 (A004016 (n + 1)).toNat - A145977 (n + 1)

end

end A124243.P6033585895889670983

/-! ## A124243.P3746865693183514310

`A132975(n+1)+A132975(n+1)-A132180(n+1)`
-/

namespace A124243.P3746865693183514310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132975 (n + 1) + (A132975 (n + 1) - A132180 (n + 1))

end

end A124243.P3746865693183514310

/-! ## A124243.P6725116358483517317

`A132975(n+1)-(A213267(n+1)+A145977(n+1))`
-/

namespace A124243.P6725116358483517317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132975 (n + 1) - (A213267 (n + 1) + A145977 (n + 1))

end

end A124243.P6725116358483517317

/-! ## A124243.P6373376997916023457

`A131944(n+1)/A131943(n+1)*A141094(n+1)`
-/

namespace A124243.P6373376997916023457
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A131944 (n + 1) : ℚ) / (A131943 (n + 1) : ℚ) * (A141094 (n + 1) : ℚ)

end

end A124243.P6373376997916023457

/-! ## A124243.P12583051057404816320

`A123633(n+1)-(A145977(n+1)+A128636(n+1))`
-/

namespace A124243.P12583051057404816320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123633 (n + 1) - (A145977 (n + 1) + A128636 (n + 1))

end

end A124243.P12583051057404816320

/-! ## A124243.P11029641105538816298

`A033999(2*n+1)*A145977(n+1)`
-/

namespace A124243.P11029641105538816298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (2 * n + 1) * A145977 (n + 1)

end

end A124243.P11029641105538816298

/-!
# A124244: a(n) is the smallest odd prime p such that 2^n*p has n digits but has at most two distinct digits; or 0 if no such prime exists.

The programs for A124244, there is no canonical definition to state claims against.
-/

/-! ## A124244.P1137226530574317522

`A389369(A229171(n+1))`
-/

namespace A124244.P1137226530574317522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389369 (A229171 (n + 1)).toNat

end

end A124244.P1137226530574317522

/-!
# A124245: a(n) is the smallest odd number m such that 2^n*m has n digits but has at most two distinct digits.

The programs for A124245, there is no canonical definition to state claims against.
-/

/-! ## A124245.P15351628769260719906

`A186814(A114300(n))`
-/

namespace A124245.P15351628769260719906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186814 (A114300 n).toNat

end

end A124245.P15351628769260719906

/-!
# A124248: Numbers n such that n!!+2^n is prime.

The programs for A124248, there is no canonical definition to state claims against.
-/

/-! ## A124248.P3816265323783212608

`A000010(A379794(n+1))-A326180(2*n+1)`
-/

namespace A124248.P3816265323783212608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A379794 (n + 1)).toNat - A326180 (2 * n + 1)

end

end A124248.P3816265323783212608

/-!
# A124250: Finite set of numbers found inscribed on faces of a 17th or 18th century Mughal gold box in the shape of an icosahedron, from the treasury of Tipu Sultan.

The programs for A124250, there is no canonical definition to state claims against.
-/

/-! ## A124250.P14587625097627232898

`A124251(A262356(n+1))`
-/

namespace A124250.P14587625097627232898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124251 (A262356 (n + 1)).toNat

end

end A124250.P14587625097627232898

/-! ## A124250.P14052794106048411905

`A124251(∑[A047996(n)^3])`
-/

namespace A124250.P14052794106048411905
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047996 n ^ 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124251 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A124250.P14052794106048411905

/-! ## A124250.P10816338595834853148

`record[A124251(n+1)%A316741(n+1)]`
-/

namespace A124250.P10816338595834853148
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A124251 (n + 1)) (A316741 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A124250.P10816338595834853148

/-! ## A124250.P494336189044079023

`A124251(∑[A047996(n)²*A047996(n)])`
-/

namespace A124250.P494336189044079023
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047996 n ^ 2 * A047996 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124251 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A124250.P494336189044079023

/-! ## A124250.P692772429525399393

`A124251(∑[A251072(n)])`
-/

namespace A124250.P692772429525399393
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251072 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124251 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A124250.P692772429525399393

/-!
# A124251: Another version of A124250.

The programs for A124251, there is no canonical definition to state claims against.
-/

/-! ## A124251.P6201516128585349875

`filter[A124250(n+1), A035263(#)]`
-/

namespace A124251.P6201516128585349875
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124250 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A035263 (f1 j).toNat = 1) n)

end

end A124251.P6201516128585349875

/-! ## A124251.P14381202963343959809

`filter[A124250(n+1), A104106(#)]`
-/

namespace A124251.P14381202963343959809
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124250 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A104106 (f1 j).toNat = 1) n)

end

end A124251.P14381202963343959809

/-! ## A124251.P15291185332984471128

`filter[A124250(n+1), A105234(#)]`
-/

namespace A124251.P15291185332984471128
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124250 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A105234 (f1 j).toNat = 1) n)

end

end A124251.P15291185332984471128

/-! ## A124251.P12817721911416391839

`filter[A124250(n+1), A115971(#)]`
-/

namespace A124251.P12817721911416391839
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124250 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A115971 (f1 j).toNat = 1) n)

end

end A124251.P12817721911416391839

/-! ## A124251.P4178817110416687145

`filter[A124250(n+1), A152822(#)]`
-/

namespace A124251.P4178817110416687145
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124250 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A152822 (f1 j).toNat = 1) n)

end

end A124251.P4178817110416687145

/-!
# A124252: 10 times A007623.

The programs for A124252, there is no canonical definition to state claims against.
-/

/-! ## A124252.P14413407671168743043

`10*A007623(n)`
-/

namespace A124252.P14413407671168743043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  10 * A007623 n

end

end A124252.P14413407671168743043

/-! ## A124252.P15234138877337132024

`A072001(n+1)-1`
-/

namespace A124252.P15234138877337132024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072001 (n + 1) - 1

end

end A124252.P15234138877337132024

/-! ## A124252.P14788051261987206191

`A007623(A153880(n))`
-/

namespace A124252.P14788051261987206191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007623 (A153880 n).toNat

end

end A124252.P14788051261987206191

/-! ## A124252.P12161569773386772085

`A007623(record[A276009(n)])`
-/

namespace A124252.P12161569773386772085
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276009 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007623 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A124252.P12161569773386772085

/-! ## A124252.P2902962135562776587

`2*5*A276326(A153880(n)-n)`
-/

namespace A124252.P2902962135562776587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (5 * A276326 (A153880 n - (n : ℤ)).toNat)

end

end A124252.P2902962135562776587

/-! ## A124252.P11636680723206707149

`A276326(A276340(A153880(n)-n))`
-/

namespace A124252.P11636680723206707149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276326 (A276340 (A153880 n - (n : ℤ)).toNat).toNat

end

end A124252.P11636680723206707149

/-! ## A124252.P18176962208241671715

`A008592(A007623(n))`
-/

namespace A124252.P18176962208241671715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008592 (A007623 n).toNat

end

end A124252.P18176962208241671715

/-! ## A124252.P11949757263238191885

`A049345(A328849(n+1))/2`
-/

namespace A124252.P11949757263238191885
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A049345 (A328849 (n + 1)).toNat : ℚ) / 2

end

end A124252.P11949757263238191885

/-! ## A124252.P12818924660583519745

`A007623(A153883(n)+A153883(n))`
-/

namespace A124252.P12818924660583519745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007623 (A153883 n + A153883 n).toNat

end

end A124252.P12818924660583519745

/-!
# A124254: Forest-and-trees problem: number of trees visible. (See Comments.)

The programs for A124254, there is no canonical definition to state claims against.
-/

/-! ## A124254.P16740650346214091782

`A305117((n+2)²-1)/2`
-/

namespace A124254.P16740650346214091782
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A305117 ((n + 2) ^ 2 - 1) : ℚ) / 2

end

end A124254.P16740650346214091782

/-! ## A124254.P13673680485117950541

`A004525(A305117((n+2)²-1))`
-/

namespace A124254.P13673680485117950541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A305117 ((n + 2) ^ 2 - 1)).toNat

end

end A124254.P13673680485117950541

/-! ## A124254.P17468351415069577874

`floor(A305117(A106230(n+3))/2)`
-/

namespace A124254.P17468351415069577874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A305117 (A106230 (n + 3)).toNat : ℚ) / 2⌋

end

end A124254.P17468351415069577874

/-! ## A124254.P16502384533051928920

`ceil(A305117(A124255(n+2))/2)`
-/

namespace A124254.P16502384533051928920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A305117 (A124255 (n + 2)).toNat : ℚ) / 2⌉

end

end A124254.P16502384533051928920

/-! ## A124254.P7746632861883495006

`A004526(A305117(∑[2*n+3]))`
-/

namespace A124254.P7746632861883495006
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A305117 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A124254.P7746632861883495006

/-! ## A124254.P11073724648496460458

`A173989(A305117((n+2)²-1)+1)`
-/

namespace A124254.P11073724648496460458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173989 (A305117 ((n + 2) ^ 2 - 1) + 1).toNat

end

end A124254.P11073724648496460458

/-! ## A124254.P1933430568401641792

`A117358(4*A305117((n+2)²-1))`
-/

namespace A124254.P1933430568401641792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117358 (4 * A305117 ((n + 2) ^ 2 - 1)).toNat

end

end A124254.P1933430568401641792

/-! ## A124254.P9855464801116943195

`∑{d}[A305117(A106230(n+3))/2, A000010(#)]`
-/

namespace A124254.P9855464801116943195
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A305117 (A106230 (n + 3)).toNat : ℚ) / 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (SequenceMachineLib.roundAway (f1 n)).natAbs, A000010 d

end

end A124254.P9855464801116943195

/-! ## A124254.P14653082763727001185

`(A305117(A106230(n+3))/2)%p?[A000124(n)]`
-/

namespace A124254.P14653082763727001185
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000124 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((A305117 (A106230 (n + 3)).toNat : ℚ) / 2)) (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A124254.P14653082763727001185

/-!
# A124255: Forest-and-trees problem: square of distance to most distant visible tree.

The programs for A124255, there is no canonical definition to state claims against.
-/

/-! ## A124255.P15351038561680990054

`(n+2)²-A124256(n+2)`
-/

namespace A124255.P15351038561680990054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 2) ^ 2 : ℤ) - A124256 (n + 2)

end

end A124255.P15351038561680990054

/-! ## A124255.P9158765566792669098

`A005563(n+1)-A124256(n+2)+1`
-/

namespace A124255.P9158765566792669098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005563 (n + 1) - A124256 (n + 2) + 1

end

end A124255.P9158765566792669098

/-! ## A124255.P9761711471489791603

`A000330(n+2)-(A124256(n+2)+A000330(n+1))`
-/

namespace A124255.P9761711471489791603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000330 (n + 2) - (A124256 (n + 2) + A000330 (n + 1))

end

end A124255.P9761711471489791603

/-! ## A124255.P5255802044191721880

`A008619(A340266(2*n+1))+A008619(3*n)-A124256(n+2)`
-/

namespace A124255.P5255802044191721880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A340266 (2 * n + 1)).toNat + (A008619 (3 * n) - A124256 (n + 2))

end

end A124255.P5255802044191721880

/-! ## A124255.P10141983487491793822

`A344533(n+2)+A344601(n+2)-A124256(n+2)`
-/

namespace A124255.P10141983487491793822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344533 (n + 2) + (A344601 (n + 2) - A124256 (n + 2))

end

end A124255.P10141983487491793822

/-!
# A124256: a(n) = n^2 - A124255(n).

The programs for A124256, there is no canonical definition to state claims against.
-/

/-! ## A124256.P17207380029029998511

`(n+2)²-A124255(n+2)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A124256.P17207380029029998511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 2) ^ 2 : ℤ) - A124255 (n + 2)

end

end A124256.P17207380029029998511

/-! ## A124256.P2683170388450068946

`A005563(n+1)+1-A124255(n+2)`
-/

namespace A124256.P2683170388450068946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005563 (n + 1) + (1 - A124255 (n + 2))

end

end A124256.P2683170388450068946

/-! ## A124256.P9410825494921461513

`∑[n+3]+A000124(n)-A124255(n+2)`
-/

namespace A124256.P9410825494921461513
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) + (A000124 n - A124255 (n + 2))

end

end A124256.P9410825494921461513

/-! ## A124256.P13051200821775069388

`A002378(n+1)+n+2-A124255(n+2)`
-/

namespace A124256.P13051200821775069388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002378 (n + 1) + ((n + 2 : ℤ) - A124255 (n + 2))

end

end A124256.P13051200821775069388

/-! ## A124256.P3223175766844048391

`A000330(n+2)-(A124255(n+2)+A000330(n+1))`
-/

namespace A124256.P3223175766844048391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000330 (n + 2) - (A124255 (n + 2) + A000330 (n + 1))

end

end A124256.P3223175766844048391

/-! ## A124256.P4717616968973737391

`A068527(A124255(n+2))`
-/

namespace A124256.P4717616968973737391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068527 (A124255 (n + 2)).toNat

end

end A124256.P4717616968973737391

/-! ## A124256.P3350200469981297290

`A004736(A124255(n+2)+A002378(n))`
-/

namespace A124256.P3350200469981297290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (A124255 (n + 2) + A002378 n).toNat

end

end A124256.P3350200469981297290

/-! ## A124256.P5518604587743711829

`A344533(n+2)+A344601(n+2)-A124255(n+2)`
-/

namespace A124256.P5518604587743711829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344533 (n + 2) + (A344601 (n + 2) - A124255 (n + 2))

end

end A124256.P5518604587743711829

/-!
# A124257: Complement of A124168.

The programs for A124257, there is no canonical definition to state claims against.
-/

/-! ## A124257.P1063712204134723695

`comp[A092921(n)]`
-/

namespace A124257.P1063712204134723695
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092921 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A124257.P1063712204134723695

/-! ## A124257.P8695735122391539699

`comp[A247506(n)]`
-/

namespace A124257.P8695735122391539699
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247506 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A124257.P8695735122391539699

/-! ## A124257.P8509219896166966745

`eq[0, char[A092921(n+1)]]`
-/

namespace A124257.P8509219896166966745
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092921 (n + 1)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A124257.P8509219896166966745

/-! ## A124257.P9677366374133955199

`comp[A126198(n+1)-char[1]]`
-/

namespace A124257.P9677366374133955199
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126198 (n + 1) - ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A124257.P9677366374133955199

/-! ## A124257.P17274426796953965951

`comp[A048887(n+1)-1]+1`
-/

namespace A124257.P17274426796953965951
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048887 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A124257.P17274426796953965951

/-! ## A124257.P14022359199229121995

`comp[A124168(n+1)-1]+1`
-/

namespace A124257.P14022359199229121995
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124168 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A124257.P14022359199229121995

/-! ## A124257.P9896366534722263085

`comp[A175331(n+2)-1]+1`
-/

namespace A124257.P9896366534722263085
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175331 (n + 2) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A124257.P9896366534722263085

/-! ## A124257.P12753403781743950146

`eq[char[A092921(n)], A000038(n)]`
-/

namespace A124257.P12753403781743950146
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092921 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A124257.P12753403781743950146

/-! ## A124257.P11489877503620317668

`eq[char[A048887(n+1)], A000007(n)]`
-/

namespace A124257.P11489877503620317668
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048887 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A124257.P11489877503620317668

/-! ## A124257.P9203455060853949411

`eq[1-char[A092921(n)], A054977(n)]`
-/

namespace A124257.P9203455060853949411
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092921 n

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ((if ∃ j, f2 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054977 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f3 j) n

end

end A124257.P9203455060853949411

/-!
# A124258: Triangle whose rows are sequences of increasing and decreasing squares: 1; 1,4,1; 1,4,9,4,1; ...

The programs for A124258, the canonical program `A124258.P17147279065324572627` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A124258 has offset 1).

The definition of A124258 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A004737, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A124258.P17147279065324572627

`A004737(n+1)²`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A124258

/-- `A004737(n+1)²` -/
def P17147279065324572627.Spec : Prop :=
  ∀ n, P17147279065324572627.a n = A124258 (n + 1)

theorem P17147279065324572627.correct : P17147279065324572627.Spec := by
  intro n
  simp only [A124258, Nat.add_sub_cancel]

end A124258

/-! ## A124258.P3485315368229520164

`round(1/2+n-round(sqrt(n))²)²`
-/

namespace A124258.P3485315368229520164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((1 : ℚ) / 2 + (n : ℚ) - (SequenceMachineLib.roundAway (Real.sqrt (n : ℝ)) ^ 2 : ℚ)) ^ 2

end

end A124258.P3485315368229520164

namespace A124258

/-- `round(1/2+n-round(sqrt(n))²)²` -/
def P3485315368229520164.Spec : Prop :=
  ∀ n, P3485315368229520164.a n = A124258 (n + 1)

end A124258

/-! ## A124258.P11333995091729203442

`sqrt(A133824(n))`
-/

namespace A124258.P11333995091729203442
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A133824 n : ℝ)

end

end A124258.P11333995091729203442

namespace A124258

/-- `sqrt(A133824(n))` -/
def P11333995091729203442.Spec : Prop :=
  ∀ n, P11333995091729203442.a n = (A124258 (n + 1) : ℝ)

end A124258

/-! ## A124258.P12884198732286286632

`A133823(n)^(2/3)`
-/

namespace A124258.P12884198732286286632
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A133823 n : ℝ) ^ ((2 : ℚ) / 3 : ℝ)

end

end A124258.P12884198732286286632

namespace A124258

/-- `A133823(n)^(2/3)` -/
def P12884198732286286632.Spec : Prop :=
  ∀ n, P12884198732286286632.a n = (A124258 (n + 1) : ℝ)

end A124258

/-! ## A124258.P13582570155992102003

`A001614(A133825(n))`
-/

namespace A124258.P13582570155992102003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001614 (A133825 n).toNat

end

end A124258.P13582570155992102003

namespace A124258

/-- `A001614(A133825(n))` -/
def P13582570155992102003.Spec : Prop :=
  ∀ n, P13582570155992102003.a n = A124258 (n + 1)

end A124258

/-! ## A124258.P13983286093013248423

`A133823(n)²/A133824(n)`
-/

namespace A124258.P13983286093013248423
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A133823 n ^ 2 : ℚ) / (A133824 n : ℚ)

end

end A124258.P13983286093013248423

namespace A124258

/-- `A133823(n)²/A133824(n)` -/
def P13983286093013248423.Spec : Prop :=
  ∀ n, P13983286093013248423.a n = (A124258 (n + 1) : ℚ)

end A124258

/-! ## A124258.P17238800691945754662

`A002620(2*A004737(n+1))`
-/

namespace A124258.P17238800691945754662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002620 (2 * A004737 (n + 1)).toNat

end

end A124258.P17238800691945754662

namespace A124258

/-- `A002620(2*A004737(n+1))` -/
def P17238800691945754662.Spec : Prop :=
  ∀ n, P17238800691945754662.a n = A124258 (n + 1)

end A124258

/-! ## A124258.P3391855137558235249

`A133823(n)/A004737(n+1)`
-/

namespace A124258.P3391855137558235249
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A133823 n : ℚ) / (A004737 (n + 1) : ℚ)

end

end A124258.P3391855137558235249

namespace A124258

/-- `A133823(n)/A004737(n+1)` -/
def P3391855137558235249.Spec : Prop :=
  ∀ n, P3391855137558235249.a n = (A124258 (n + 1) : ℚ)

end A124258

/-! ## A124258.P2799717076137596968

`A004737(A000027(n+1))*A004737(n+1)`
-/

namespace A124258.P2799717076137596968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004737 (A000027 (n + 1)).toNat * A004737 (n + 1)

end

end A124258.P2799717076137596968

namespace A124258

/-- `A004737(A000027(n+1))*A004737(n+1)` -/
def P2799717076137596968.Spec : Prop :=
  ∀ n, P2799717076137596968.a n = A124258 (n + 1)

end A124258

/-! ## A124258.P17545162203346135358

`A133825(n)+A133825(n)-A004737(n+1)`
-/

namespace A124258.P17545162203346135358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133825 n + (A133825 n - A004737 (n + 1))

end

end A124258.P17545162203346135358

namespace A124258

/-- `A133825(n)+A133825(n)-A004737(n+1)` -/
def P17545162203346135358.Spec : Prop :=
  ∀ n, P17545162203346135358.a n = A124258 (n + 1)

end A124258

/-! ## A124258.P5996226824499205614

`A106314(A064788(n+1))`
-/

namespace A124258.P5996226824499205614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106314 (A064788 (n + 1)).toNat

end

end A124258.P5996226824499205614

namespace A124258

/-- `A106314(A064788(n+1))` -/
def P5996226824499205614.Spec : Prop :=
  ∀ n, P5996226824499205614.a n = A124258 (n + 1)

end A124258

/-! ## A124258.P6999317706149616061

`A106314(A064790(n+1))`
-/

namespace A124258.P6999317706149616061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106314 (A064790 (n + 1)).toNat

end

end A124258.P6999317706149616061

namespace A124258

/-- `A106314(A064790(n+1))` -/
def P6999317706149616061.Spec : Prop :=
  ∀ n, P6999317706149616061.a n = A124258 (n + 1)

end A124258

/-! ## A124258.P5789964297885763140

`A106314(A194280(n+1))`
-/

namespace A124258.P5789964297885763140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106314 (A194280 (n + 1)).toNat

end

end A124258.P5789964297885763140

namespace A124258

/-- `A106314(A194280(n+1))` -/
def P5789964297885763140.Spec : Prop :=
  ∀ n, P5789964297885763140.a n = A124258 (n + 1)

end A124258

/-! ## A124258.P8510556590374448052

`A106314(A007606(n+1))`
-/

namespace A124258.P8510556590374448052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106314 (A007606 (n + 1)).toNat

end

end A124258.P8510556590374448052

namespace A124258

/-- `A106314(A007606(n+1))` -/
def P8510556590374448052.Spec : Prop :=
  ∀ n, P8510556590374448052.a n = A124258 (n + 1)

end A124258

/-! ## A124258.P14066809542582872946

`A106314(A161983(n+1))`
-/

namespace A124258.P14066809542582872946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106314 (A161983 (n + 1)).toNat

end

end A124258.P14066809542582872946

namespace A124258

/-- `A106314(A161983(n+1))` -/
def P14066809542582872946.Spec : Prop :=
  ∀ n, P14066809542582872946.a n = A124258 (n + 1)

end A124258

/-! ## A124258.P15554209187378380092

`A372667(A133826(n))`
-/

namespace A124258.P15554209187378380092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372667 (A133826 n).toNat

end

end A124258.P15554209187378380092

namespace A124258

/-- `A372667(A133826(n))` -/
def P15554209187378380092.Spec : Prop :=
  ∀ n, P15554209187378380092.a n = A124258 (n + 1)

end A124258

/-! ## A124258.P1490049438667946519

`A000189(A133823(n))`
-/

namespace A124258.P1490049438667946519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000189 (A133823 n).toNat

end

end A124258.P1490049438667946519

namespace A124258

/-- `A000189(A133823(n))` -/
def P1490049438667946519.Spec : Prop :=
  ∀ n, P1490049438667946519.a n = A124258 (n + 1)

end A124258

/-! ## A124258.P14324566688984349050

`A253909(A325181(n))`
-/

namespace A124258.P14324566688984349050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253909 (A325181 n).toNat

end

end A124258.P14324566688984349050

namespace A124258

/-- `A253909(A325181(n))` -/
def P14324566688984349050.Spec : Prop :=
  ∀ n, P14324566688984349050.a n = A124258 (n + 1)

end A124258

/-! ## A124258.P8318227656996554285

`A065730(A138143(n+1))`
-/

namespace A124258.P8318227656996554285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065730 (A138143 (n + 1)).toNat

end

end A124258.P8318227656996554285

namespace A124258

/-- `A065730(A138143(n+1))` -/
def P8318227656996554285.Spec : Prop :=
  ∀ n, P8318227656996554285.a n = A124258 (n + 1)

end A124258

/-!
# A124261: Sequence terms are generated by solving the n x n linear algebra problem [H]x = b, where b is the unit vector. Only xn, the last unknown is used.

The programs for A124261, there is no canonical definition to state claims against.
-/

/-! ## A124261.P711909413842268984

`A043529(n)*A124266(n+1)`
-/

namespace A124261.P711909413842268984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043529 n * A124266 (n + 1)

end

end A124261.P711909413842268984

/-! ## A124261.P1756973241022257074

`lcm(A110316(n), A124266(n+1))`
-/

namespace A124261.P1756973241022257074
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A110316 n) (A124266 (n + 1))

end

end A124261.P1756973241022257074

/-! ## A124261.P5148120377490180674

`A014963(A048896(n))*A124266(n+1)`
-/

namespace A124261.P5148120377490180674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A048896 n).toNat * A124266 (n + 1)

end

end A124261.P5148120377490180674

/-! ## A124261.P6837685212958119431

`A014963(A080100(n))*A124266(n+1)`
-/

namespace A124261.P6837685212958119431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A080100 n).toNat * A124266 (n + 1)

end

end A124261.P6837685212958119431

/-! ## A124261.P2248338530367650795

`A014963(A082392(n))*A124266(n+1)`
-/

namespace A124261.P2248338530367650795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A082392 n).toNat * A124266 (n + 1)

end

end A124261.P2248338530367650795

/-!
# A124262: a(n) is the largest prime < 10*a(n-1) for n > 1, with a(1) = 2.

The programs for A124262, there is no canonical definition to state claims against.
-/

/-! ## A124262.P18360334341509167548

`A122072(a(n-1))` with `a(0)=2`
-/

namespace A124262.P18360334341509167548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A122072 (a (n - 1)).toNat

end

end A124262.P18360334341509167548

/-!
# A124263: Largest prime < 10*a(n-1), a(1)=3.

The programs for A124263, there is no canonical definition to state claims against.
-/

/-! ## A124263.P4189036603351316603

`A124310(n%a(n-1))` with `a(0)=3`
-/

namespace A124263.P4189036603351316603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  A124310 (Int.tmod (n : ℤ) (a (n - 1))).toNat

end

end A124263.P4189036603351316603

/-! ## A124263.P27039611474787597

`A124310(C(n, a(n-1))/2+n)` with `a(0)=3`
-/

namespace A124263.P27039611474787597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  A124310 (SequenceMachineLib.roundAway ((Nat.choose n (a (n - 1)).toNat : ℚ) / 2 + (n : ℚ))).toNat

end

end A124263.P27039611474787597

/-! ## A124263.P7918792239954362257

`A124310(round(sqrt(n²+1)))%A124298(n+1)`
-/

namespace A124263.P7918792239954362257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A124310 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat) (A124298 (n + 1))

end

end A124263.P7918792239954362257

/-!
# A124264: Hilbert-Warren Add Sequence.

The programs for A124264, there is no canonical definition to state claims against.
-/

/-! ## A124264.P6130832044160547801

`((n+1)²+1)*A124261(n+1)`
-/

namespace A124264.P6130832044160547801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 + 1 : ℤ) * A124261 (n + 1)

end

end A124264.P6130832044160547801

/-! ## A124264.P7337351355533155124

`A319626(A001563(n+1)+A000142(n))`
-/

namespace A124264.P7337351355533155124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319626 (A001563 (n + 1) + A000142 n).toNat

end

end A124264.P7337351355533155124

/-!
# A124265: Variant sequence generated by solving the order n x n linear problem [H]x = b where b is the unit vector and the sequence term is given by the denominator of the last unknown xn.

The programs for A124265, there is no canonical definition to state claims against.
-/

/-! ## A124265.P1450548888795607596

`A030451(A124264(n+1)+A124261(n+1))`
-/

namespace A124265.P1450548888795607596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030451 (A124264 (n + 1) + A124261 (n + 1)).toNat

end

end A124265.P1450548888795607596

/-!
# A124266: Variant sequence generated by solving the order n X n linear problem [H]x = b where b is the unit vector and the sequence term is given by the denominator of the last unknown xn.

The programs for A124266, there is no canonical definition to state claims against.
-/

/-! ## A124266.P13065906647433561159

`lcm(2, A124261(n+1))/2`
-/

namespace A124266.P13065906647433561159
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm 2 (A124261 (n + 1)) : ℚ) / 2

end

end A124266.P13065906647433561159

/-! ## A124266.P3256888368375250451

`A124261(n+1)/A043529(n)`
-/

namespace A124266.P3256888368375250451
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A124261 (n + 1) : ℚ) / (A043529 n : ℚ)

end

end A124266.P3256888368375250451

/-! ## A124266.P17508983825500555817

`A124261(n+1)/A014963(A048896(n))`
-/

namespace A124266.P17508983825500555817
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A124261 (n + 1) : ℚ) / (A014963 (A048896 n).toNat : ℚ)

end

end A124266.P17508983825500555817

/-! ## A124266.P2303608285124095446

`A124261(n+1)/A014963(A080100(n))`
-/

namespace A124266.P2303608285124095446
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A124261 (n + 1) : ℚ) / (A014963 (A080100 n).toNat : ℚ)

end

end A124266.P2303608285124095446

/-! ## A124266.P3848951199535520520

`A124261(n+1)/A259936(A000118(n))`
-/

namespace A124266.P3848951199535520520
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A124261 (n + 1) : ℚ) / (A259936 (A000118 n).toNat : ℚ)

end

end A124266.P3848951199535520520

/-!
# A124267: Largest prime < 10*a(n-1), a(1)=5.

The programs for A124267, there is no canonical definition to state claims against.
-/

/-! ## A124267.P16326049235278104140

`A122072(a(n-1))` with `a(0)=5`
-/

namespace A124267.P16326049235278104140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [5] fun n a =>
  A122072 (a (n - 1)).toNat

end

end A124267.P16326049235278104140

/-!
# A124268: Primes indexed by 3-almost primes.

The programs for A124268, the canonical program `A124268.P10201964063762067681` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A124268 has offset 1).

The definition of A124268 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A014612, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A124268.P10201964063762067681

`A000040(A014612(n+1))`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A124268

/-- `A000040(A014612(n+1))` -/
def P10201964063762067681.Spec : Prop :=
  ∀ n, P10201964063762067681.a n = A124268 (n + 1)

theorem P10201964063762067681.correct : P10201964063762067681.Spec := by
  intro n
  simp only [A124268, Nat.add_sub_cancel]

end A124268

/-! ## A124268.P6770691784754307744

`A124270(n+1)+A124269(n+1)`
-/

namespace A124268.P6770691784754307744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124270 (n + 1) + A124269 (n + 1)

end

end A124268.P6770691784754307744

namespace A124268

/-- `A124270(n+1)+A124269(n+1)` -/
def P6770691784754307744.Spec : Prop :=
  ∀ n, P6770691784754307744.a n = A124268 (n + 1)

theorem P6770691784754307744.correct : P6770691784754307744.Spec := by
  intro n
  simp only [A124268, Nat.add_sub_cancel, A124268.P6770691784754307744.a, A124268.P10201964063762067681.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A014612, A014612.P5035219895023979827.f1, A014612.P5035219895023979827.f2, A014612.P5035219895023979827.a, A124269, A124269.P12449337339805484609.a, A124270, A124270.P10836381219991528512.a, A318473, A318473.P15254297892022099386.a, A007814, A007814.P13537437864234730737.a, A318474, A318474.P8998040803889606684.a, A001511, A001511.P17146462531039486101.a, A064549, A064549.P18019400484953624932.a, A318472, A318472.P17460137329707848954.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A124268

/-! ## A124268.P5591708226517784140

`A000040(eq[3, ∑{e}[n, #]])`
-/

namespace A124268.P5591708226517784140
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f3 n), Nat.factorization (f3 n) p

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A124268.P5591708226517784140

namespace A124268

/-- `A000040(eq[3, ∑{e}[n, #]])` -/
def P5591708226517784140.Spec : Prop :=
  ∀ n, P5591708226517784140.a n = A124268 (n + 1)

end A124268

/-! ## A124268.P11012481167187727677

`A008578(A014612(n+1)+1)`
-/

namespace A124268.P11012481167187727677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (A014612 (n + 1) + 1).toNat

end

end A124268.P11012481167187727677

namespace A124268

/-- `A008578(A014612(n+1)+1)` -/
def P11012481167187727677.Spec : Prop :=
  ∀ n, P11012481167187727677.a n = A124268 (n + 1)

end A124268

/-! ## A124268.P8602722006021529044

`A182986(A014612(n+1)+1)`
-/

namespace A124268.P8602722006021529044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182986 (A014612 (n + 1) + 1).toNat

end

end A124268.P8602722006021529044

namespace A124268

/-- `A182986(A014612(n+1)+1)` -/
def P8602722006021529044.Spec : Prop :=
  ∀ n, P8602722006021529044.a n = A124268 (n + 1)

end A124268

/-! ## A124268.P9679978134643687557

`A045344(A014612(n+1)-1)`
-/

namespace A124268.P9679978134643687557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045344 (A014612 (n + 1) - 1).toNat

end

end A124268.P9679978134643687557

namespace A124268

/-- `A045344(A014612(n+1)-1)` -/
def P9679978134643687557.Spec : Prop :=
  ∀ n, P9679978134643687557.a n = A124268 (n + 1)

end A124268

/-! ## A124268.P15330781607979933173

`A065091(A014612(n+1)-1)`
-/

namespace A124268.P15330781607979933173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (A014612 (n + 1) - 1).toNat

end

end A124268.P15330781607979933173

namespace A124268

/-- `A065091(A014612(n+1)-1)` -/
def P15330781607979933173.Spec : Prop :=
  ∀ n, P15330781607979933173.a n = A124268 (n + 1)

end A124268

/-! ## A124268.P6497165673202211785

`A158611(A014612(n+1)+2)`
-/

namespace A124268.P6497165673202211785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158611 (A014612 (n + 1) + 2).toNat

end

end A124268.P6497165673202211785

namespace A124268

/-- `A158611(A014612(n+1)+2)` -/
def P6497165673202211785.Spec : Prop :=
  ∀ n, P6497165673202211785.a n = A124268 (n + 1)

end A124268

/-! ## A124268.P18214670032947915484

`A000040(eq[2, A252736(n+1)]+1)`
-/

namespace A124268.P18214670032947915484
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A124268.P18214670032947915484

namespace A124268

/-- `A000040(eq[2, A252736(n+1)]+1)` -/
def P18214670032947915484.Spec : Prop :=
  ∀ n, P18214670032947915484.a n = A124268 (n + 1)

end A124268

/-! ## A124268.P7510018975120425959

`A000040(eq[3, A001222(n+1)]+1)`
-/

namespace A124268.P7510018975120425959
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A124268.P7510018975120425959

namespace A124268

/-- `A000040(eq[3, A001222(n+1)]+1)` -/
def P7510018975120425959.Spec : Prop :=
  ∀ n, P7510018975120425959.a n = A124268 (n + 1)

end A124268

/-! ## A124268.P6786554370751092611

`A065091(eq[1, A001222(n+1)-2])`
-/

namespace A124268.P6786554370751092611
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A124268.P6786554370751092611

namespace A124268

/-- `A065091(eq[1, A001222(n+1)-2])` -/
def P6786554370751092611.Spec : Prop :=
  ∀ n, P6786554370751092611.a n = A124268 (n + 1)

end A124268

/-! ## A124268.P6695319889571395851

`A008578(eq[2, A252736(n+1)]+2)`
-/

namespace A124268.P6695319889571395851
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2)

end

end A124268.P6695319889571395851

namespace A124268

/-- `A008578(eq[2, A252736(n+1)]+2)` -/
def P6695319889571395851.Spec : Prop :=
  ∀ n, P6695319889571395851.a n = A124268 (n + 1)

end A124268

/-! ## A124268.P2450066347904388344

`A040976(eq[3, A001222(n+1)]+1)+2`
-/

namespace A124268.P2450066347904388344
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040976 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1) + 2

end

end A124268.P2450066347904388344

namespace A124268

/-- `A040976(eq[3, A001222(n+1)]+1)+2` -/
def P2450066347904388344.Spec : Prop :=
  ∀ n, P2450066347904388344.a n = A124268 (n + 1)

end A124268

/-! ## A124268.P168497418860102784

`p?[(A001222(n+1)-2)*A006005(n+1)]`
-/

namespace A124268.P168497418860102784
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A001222 (n + 1) - 2) * A006005 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A124268.P168497418860102784

namespace A124268

/-- `p?[(A001222(n+1)-2)*A006005(n+1)]` -/
def P168497418860102784.Spec : Prop :=
  ∀ n, P168497418860102784.a n = A124268 (n + 1)

end A124268

/-! ## A124268.P3652788664310424336

`p?[(4-A001222(n+1))*A000040(n+1)]`
-/

namespace A124268.P3652788664310424336
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (4 - A001222 (n + 1)) * A000040 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A124268.P3652788664310424336

namespace A124268

/-- `p?[(4-A001222(n+1))*A000040(n+1)]` -/
def P3652788664310424336.Spec : Prop :=
  ∀ n, P3652788664310424336.a n = A124268 (n + 1)

end A124268

/-! ## A124268.P4479001895279976093

`A000040(eq[2, val(A165825(n+1), 4)-1]+1)`
-/

namespace A124268.P4479001895279976093
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.valuation (A165825 (n + 1)).toNat 4 : ℤ) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A124268.P4479001895279976093

namespace A124268

/-- `A000040(eq[2, val(A165825(n+1), 4)-1]+1)` -/
def P4479001895279976093.Spec : Prop :=
  ∀ n, P4479001895279976093.a n = A124268 (n + 1)

end A124268

/-! ## A124268.P7608458079461690871

`A000040(A058933(A105346(n+1)))`
-/

namespace A124268.P7608458079461690871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A058933 (A105346 (n + 1)).toNat).toNat

end

end A124268.P7608458079461690871

namespace A124268

/-- `A000040(A058933(A105346(n+1)))` -/
def P7608458079461690871.Spec : Prop :=
  ∀ n, P7608458079461690871.a n = A124268 (n + 1)

end A124268

/-! ## A124268.P14358018404374277712

`A000040(A058933(A124317(n+1)))`
-/

namespace A124268.P14358018404374277712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A058933 (A124317 (n + 1)).toNat).toNat

end

end A124268.P14358018404374277712

namespace A124268

/-- `A000040(A058933(A124317(n+1)))` -/
def P14358018404374277712.Spec : Prop :=
  ∀ n, P14358018404374277712.a n = A124268 (n + 1)

end A124268

/-! ## A124268.P1993080250674111709

`A073846(2*A014612(n+1))`
-/

namespace A124268.P1993080250674111709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073846 (2 * A014612 (n + 1)).toNat

end

end A124268.P1993080250674111709

namespace A124268

/-- `A073846(2*A014612(n+1))` -/
def P1993080250674111709.Spec : Prop :=
  ∀ n, P1993080250674111709.a n = A124268 (n + 1)

end A124268

/-! ## A124268.P2644098513735331475

`A134735(2*A014612(n+1)-1)`
-/

namespace A124268.P2644098513735331475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134735 (2 * A014612 (n + 1) - 1).toNat

end

end A124268.P2644098513735331475

namespace A124268

/-- `A134735(2*A014612(n+1)-1)` -/
def P2644098513735331475.Spec : Prop :=
  ∀ n, P2644098513735331475.a n = A124268 (n + 1)

end A124268

/-!
# A124269: 3-almost primes indexed by primes.

The programs for A124269, the canonical program `A124269.P12449337339805484609` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A124269 has offset 1).

The definition of A124269 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A014612, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A124269.P12449337339805484609

`A014612(A000040(n+1))`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A124269

/-- `A014612(A000040(n+1))` -/
def P12449337339805484609.Spec : Prop :=
  ∀ n, P12449337339805484609.a n = A124269 (n + 1)

theorem P12449337339805484609.correct : P12449337339805484609.Spec := by
  intro n
  simp only [A124269, Nat.add_sub_cancel]

end A124269

/-! ## A124269.P7002582267893480106

`A124268(n+1)-A124270(n+1)`
-/

namespace A124269.P7002582267893480106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124268 (n + 1) - A124270 (n + 1)

end

end A124269.P7002582267893480106

namespace A124269

/-- `A124268(n+1)-A124270(n+1)` -/
def P7002582267893480106.Spec : Prop :=
  ∀ n, P7002582267893480106.a n = A124269 (n + 1)

theorem P7002582267893480106.correct : P7002582267893480106.Spec := by
  intro n
  simp only [A124269, Nat.add_sub_cancel, A124269.P7002582267893480106.a, A124269.P12449337339805484609.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A014612, A014612.P5035219895023979827.f1, A014612.P5035219895023979827.f2, A014612.P5035219895023979827.a, A124268, A124268.P10201964063762067681.a, A124270, A124270.P10836381219991528512.a, A318473, A318473.P15254297892022099386.a, A007814, A007814.P13537437864234730737.a, A318474, A318474.P8998040803889606684.a, A001511, A001511.P17146462531039486101.a, A064549, A064549.P18019400484953624932.a, A318472, A318472.P17460137329707848954.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A124269

/-! ## A124269.P5915040468869111887

`A014612(eq[1, ∑{e}[n, #]])`
-/

namespace A124269.P5915040468869111887
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f3 n), Nat.factorization (f3 n) p

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014612 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A124269.P5915040468869111887

namespace A124269

/-- `A014612(eq[1, ∑{e}[n, #]])` -/
def P5915040468869111887.Spec : Prop :=
  ∀ n, P5915040468869111887.a n = A124269 (n + 1)

end A124269

/-! ## A124269.P16724877756233384

`A014612(Δ[A007504(n)])`
-/

namespace A124269.P16724877756233384
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014612 (f1 (n + 1) - f1 n).toNat

end

end A124269.P16724877756233384

namespace A124269

/-- `A014612(Δ[A007504(n)])` -/
def P16724877756233384.Spec : Prop :=
  ∀ n, P16724877756233384.a n = A124269 (n + 1)

end A124269

/-! ## A124269.P15972789222476748529

`A014612(A008578(n+2))`
-/

namespace A124269.P15972789222476748529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014612 (A008578 (n + 2)).toNat

end

end A124269.P15972789222476748529

namespace A124269

/-- `A014612(A008578(n+2))` -/
def P15972789222476748529.Spec : Prop :=
  ∀ n, P15972789222476748529.a n = A124269 (n + 1)

end A124269

/-! ## A124269.P1219387180506906105

`A014612(A182986(n+2))`
-/

namespace A124269.P1219387180506906105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014612 (A182986 (n + 2)).toNat

end

end A124269.P1219387180506906105

namespace A124269

/-- `A014612(A182986(n+2))` -/
def P1219387180506906105.Spec : Prop :=
  ∀ n, P1219387180506906105.a n = A124269 (n + 1)

end A124269

/-! ## A124269.P18327247774964141855

`A014612(eq[1, A105700(n)])`
-/

namespace A124269.P18327247774964141855
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105700 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014612 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A124269.P18327247774964141855

namespace A124269

/-- `A014612(eq[1, A105700(n)])` -/
def P18327247774964141855.Spec : Prop :=
  ∀ n, P18327247774964141855.a n = A124269 (n + 1)

end A124269

/-! ## A124269.P6020379686377738223

`A014612(sqrt(A001248(n+1)))`
-/

namespace A124269.P6020379686377738223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014612 (SequenceMachineLib.roundAway (Real.sqrt (A001248 (n + 1) : ℝ))).toNat

end

end A124269.P6020379686377738223

namespace A124269

/-- `A014612(sqrt(A001248(n+1)))` -/
def P6020379686377738223.Spec : Prop :=
  ∀ n, P6020379686377738223.a n = A124269 (n + 1)

end A124269

/-! ## A124269.P16481966754642235549

`A014612(record[A006530(n+2)])`
-/

namespace A124269.P16481966754642235549
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014612 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A124269.P16481966754642235549

namespace A124269

/-- `A014612(record[A006530(n+2)])` -/
def P16481966754642235549.Spec : Prop :=
  ∀ n, P16481966754642235549.a n = A124269 (n + 1)

end A124269

/-! ## A124269.P9164064754967230528

`A014612(record[A014963(n+2)])`
-/

namespace A124269.P9164064754967230528
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014612 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A124269.P9164064754967230528

namespace A124269

/-- `A014612(record[A014963(n+2)])` -/
def P9164064754967230528.Spec : Prop :=
  ∀ n, P9164064754967230528.a n = A124269 (n + 1)

end A124269

/-! ## A124269.P5892203328569306871

`A014612(record[A020639(n+2)])`
-/

namespace A124269.P5892203328569306871
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014612 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A124269.P5892203328569306871

namespace A124269

/-- `A014612(record[A020639(n+2)])` -/
def P5892203328569306871.Spec : Prop :=
  ∀ n, P5892203328569306871.a n = A124269 (n + 1)

end A124269

/-! ## A124269.P14664723974745508497

`A014612(A006093(n+1)+1)`
-/

namespace A124269.P14664723974745508497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014612 (A006093 (n + 1) + 1).toNat

end

end A124269.P14664723974745508497

namespace A124269

/-- `A014612(A006093(n+1)+1)` -/
def P14664723974745508497.Spec : Prop :=
  ∀ n, P14664723974745508497.a n = A124269 (n + 1)

theorem P14664723974745508497.correct : P14664723974745508497.Spec := by
  intro n
  simp only [A124269, Nat.add_sub_cancel, A124269.P14664723974745508497.a, A124269.P12449337339805484609.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A006093, A006093.P2906174024863549003.a, A014612, A014612.P5035219895023979827.f1, A014612.P5035219895023979827.f2, A014612.P5035219895023979827.a, A318473, A318473.P15254297892022099386.a, A007814, A007814.P13537437864234730737.a, A318474, A318474.P8998040803889606684.a, A001511, A001511.P17146462531039486101.a, A064549, A064549.P18019400484953624932.a, A318472, A318472.P17460137329707848954.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A124269

/-! ## A124269.P4395720036623984463

`A014612(A008864(n+1)-1)`
-/

namespace A124269.P4395720036623984463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014612 (A008864 (n + 1) - 1).toNat

end

end A124269.P4395720036623984463

namespace A124269

/-- `A014612(A008864(n+1)-1)` -/
def P4395720036623984463.Spec : Prop :=
  ∀ n, P4395720036623984463.a n = A124269 (n + 1)

theorem P4395720036623984463.correct : P4395720036623984463.Spec := by
  intro n
  simp only [A124269, Nat.add_sub_cancel, A124269.P4395720036623984463.a, A124269.P12449337339805484609.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A008864, A008864.P9177617808325052279.a, A014612, A014612.P5035219895023979827.f1, A014612.P5035219895023979827.f2, A014612.P5035219895023979827.a, A318473, A318473.P15254297892022099386.a, A007814, A007814.P13537437864234730737.a, A318474, A318474.P8998040803889606684.a, A001511, A001511.P17146462531039486101.a, A064549, A064549.P18019400484953624932.a, A318472, A318472.P17460137329707848954.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A124269

/-! ## A124269.P8351464276116176144

`A014612(A040976(n+1)+2)`
-/

namespace A124269.P8351464276116176144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014612 (A040976 (n + 1) + 2).toNat

end

end A124269.P8351464276116176144

namespace A124269

/-- `A014612(A040976(n+1)+2)` -/
def P8351464276116176144.Spec : Prop :=
  ∀ n, P8351464276116176144.a n = A124269 (n + 1)

theorem P8351464276116176144.correct : P8351464276116176144.Spec := by
  intro n
  simp only [A124269, Nat.add_sub_cancel, A124269.P8351464276116176144.a, A124269.P12449337339805484609.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A014612, A014612.P5035219895023979827.f1, A014612.P5035219895023979827.f2, A014612.P5035219895023979827.a, A040976, A040976.P11599754272797435513.a, A318473, A318473.P15254297892022099386.a, A007814, A007814.P13537437864234730737.a, A318474, A318474.P8998040803889606684.a, A001511, A001511.P17146462531039486101.a, A064549, A064549.P18019400484953624932.a, A318472, A318472.P17460137329707848954.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A124269

/-! ## A124269.P16215276699688747894

`A014612(A073846(2*(n+1)))`
-/

namespace A124269.P16215276699688747894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014612 (A073846 (2 * (n + 1))).toNat

end

end A124269.P16215276699688747894

namespace A124269

/-- `A014612(A073846(2*(n+1)))` -/
def P16215276699688747894.Spec : Prop :=
  ∀ n, P16215276699688747894.a n = A124269 (n + 1)

end A124269

/-! ## A124269.P4402232601449257022

`A014612(A129767(2*n+1))`
-/

namespace A124269.P4402232601449257022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014612 (A129767 (2 * n + 1)).toNat

end

end A124269.P4402232601449257022

namespace A124269

/-- `A014612(A129767(2*n+1))` -/
def P4402232601449257022.Spec : Prop :=
  ∀ n, P4402232601449257022.a n = A124269 (n + 1)

end A124269

/-! ## A124269.P15158716805479369448

`A014612(A134735(2*n+1))`
-/

namespace A124269.P15158716805479369448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014612 (A134735 (2 * n + 1)).toNat

end

end A124269.P15158716805479369448

namespace A124269

/-- `A014612(A134735(2*n+1))` -/
def P15158716805479369448.Spec : Prop :=
  ∀ n, P15158716805479369448.a n = A124269 (n + 1)

end A124269

/-! ## A124269.P2319304209404205294

`A014612(A207790(2*(n+1)))`
-/

namespace A124269.P2319304209404205294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014612 (A207790 (2 * (n + 1))).toNat

end

end A124269.P2319304209404205294

namespace A124269

/-- `A014612(A207790(2*(n+1)))` -/
def P2319304209404205294.Spec : Prop :=
  ∀ n, P2319304209404205294.a n = A124269 (n + 1)

end A124269

/-! ## A124269.P6991222405053241382

`A014612(record[A000010(n+1)+1])`
-/

namespace A124269.P6991222405053241382
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014612 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A124269.P6991222405053241382

namespace A124269

/-- `A014612(record[A000010(n+1)+1])` -/
def P6991222405053241382.Spec : Prop :=
  ∀ n, P6991222405053241382.a n = A124269 (n + 1)

end A124269

/-! ## A124269.P15715158380576479581

`A014612(eq[1, A001222(n+1)]+1)`
-/

namespace A124269.P15715158380576479581
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014612 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A124269.P15715158380576479581

namespace A124269

/-- `A014612(eq[1, A001222(n+1)]+1)` -/
def P15715158380576479581.Spec : Prop :=
  ∀ n, P15715158380576479581.a n = A124269 (n + 1)

end A124269

/-!
# A124270: a(n) = prime(A014612(n)) - A014612(prime(n)). Commutator [A000040,A014612] at n.

The programs for A124270, the canonical program `A124270.P10836381219991528512` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A124270 has offset 1).

The definition of A124270 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A124268, A124269, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A124270.P10836381219991528512

`A124268(n+1)-A124269(n+1)`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A124270

/-- `A124268(n+1)-A124269(n+1)` -/
def P10836381219991528512.Spec : Prop :=
  ∀ n, P10836381219991528512.a n = A124270 (n + 1)

theorem P10836381219991528512.correct : P10836381219991528512.Spec := by
  intro n
  simp only [A124270, Nat.add_sub_cancel]

end A124270

/-! ## A124270.P5562682791088207578

`A000040(A014612(n+1))-A014612(A000040(n+1))`
-/

namespace A124270.P5562682791088207578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A014612 (n + 1)).toNat - A014612 (A000040 (n + 1)).toNat

end

end A124270.P5562682791088207578

namespace A124270

/-- `A000040(A014612(n+1))-A014612(A000040(n+1))` -/
def P5562682791088207578.Spec : Prop :=
  ∀ n, P5562682791088207578.a n = A124270 (n + 1)

end A124270

/-! ## A124270.P6981190214828883566

`A000040(A014612(n+1))-A124269(n+1)`
-/

namespace A124270.P6981190214828883566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A014612 (n + 1)).toNat - A124269 (n + 1)

end

end A124270.P6981190214828883566

namespace A124270

/-- `A000040(A014612(n+1))-A124269(n+1)` -/
def P6981190214828883566.Spec : Prop :=
  ∀ n, P6981190214828883566.a n = A124270 (n + 1)

end A124270

/-! ## A124270.P16541805421180875646

`A124268(n+1)-A014612(A000040(n+1))`
-/

namespace A124270.P16541805421180875646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124268 (n + 1) - A014612 (A000040 (n + 1)).toNat

end

end A124270.P16541805421180875646

namespace A124270

/-- `A124268(n+1)-A014612(A000040(n+1))` -/
def P16541805421180875646.Spec : Prop :=
  ∀ n, P16541805421180875646.a n = A124270 (n + 1)

end A124270

/-! ## A124270.P13347023209819564159

`A124268(n+1)-A014612(sqrt(A001248(n+1)))`
-/

namespace A124270.P13347023209819564159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124268 (n + 1) - A014612 (SequenceMachineLib.roundAway (Real.sqrt (A001248 (n + 1) : ℝ))).toNat

end

end A124270.P13347023209819564159

namespace A124270

/-- `A124268(n+1)-A014612(sqrt(A001248(n+1)))` -/
def P13347023209819564159.Spec : Prop :=
  ∀ n, P13347023209819564159.a n = A124270 (n + 1)

end A124270

/-!
# A124273: Primes p that divide A124271(p) = Sum_{i=1..p} (prime(i)^p - 1) / (prime(i) - 1).

The programs for A124273, there is no canonical definition to state claims against.
-/

/-! ## A124273.P15552491111978548910

`record[p?[(n+1)%A132949(n+1)]]`
-/

namespace A124273.P15552491111978548910
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n + 1 : ℤ) (A132949 (n + 1))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A124273.P15552491111978548910

/-! ## A124273.P17174255814504766235

`p?[record[A166333(n)%A132949(n+1)]]`
-/

namespace A124273.P17174255814504766235
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A166333 n) (A132949 (n + 1))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A124273.P17174255814504766235

/-! ## A124273.P13121618513531587715

`record[A065091(n+1)%A307805(n+2)]`
-/

namespace A124273.P13121618513531587715
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A065091 (n + 1)) (A307805 (n + 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A124273.P13121618513531587715

/-! ## A124273.P11400494625100440919

`record[A000040(n+2)%A307805(n+2)]`
-/

namespace A124273.P11400494625100440919
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000040 (n + 2)) (A307805 (n + 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A124273.P11400494625100440919

/-! ## A124273.P406000517709001282

`record[A006005(n+2)%A307805(n+2)]`
-/

namespace A124273.P406000517709001282
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A006005 (n + 2)) (A307805 (n + 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A124273.P406000517709001282

/-! ## A124273.P412229434681274201

`A000040(lt[A000040(n+1), A307805(n+1)]+1)`
-/

namespace A124273.P412229434681274201
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307805 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1)

end

end A124273.P412229434681274201

/-! ## A124273.P1212870140803171236

`p?[A123856(n+1)%A132949(A123856(n+1))]`
-/

namespace A124273.P1212870140803171236
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A123856 (n + 1)) (A132949 (A123856 (n + 1)).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A124273.P1212870140803171236

/-!
# A124277: Primes that do not divide 2^(3^n)+97 for any n.

The programs for A124277, there is no canonical definition to state claims against.
-/

/-! ## A124277.P13697162527664927203

`record[A020639(A238005(A179911(n+1)))]`
-/

namespace A124277.P13697162527664927203
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A238005 (A179911 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A124277.P13697162527664927203

/-! ## A124277.P8664704202398634955

`p?[A000040(n+1)-A136522(A029732(n+1))]`
-/

namespace A124277.P8664704202398634955
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) - A136522 (A029732 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A124277.P8664704202398634955

/-! ## A124277.P12937584287799369919

`p?[A008578(n+2)-A136522(A029732(n+1))]`
-/

namespace A124277.P12937584287799369919
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 2) - A136522 (A029732 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A124277.P12937584287799369919

/-! ## A124277.P17346369952300216579

`A000040(lt[A179886(n+1), A145178(n+1)])`
-/

namespace A124277.P17346369952300216579
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179886 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145178 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A124277.P17346369952300216579

/-!
# A124279: Riordan array (1/(1-x),x(1-x+x^2)/(1-x)).

The programs for A124279, there is no canonical definition to state claims against.
-/

/-! ## A124279.P13427092607543833057

`A124445(∑[2*n]%comp[∑[n]])`
-/

namespace A124279.P13427092607543833057
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124445 ((∑ j ∈ Finset.range (n + 1), f1 j) % SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n)

end

end A124279.P13427092607543833057

/-! ## A124279.P87465655086467825

`A124445(∑[char[∑[n]]]²-n-1)`
-/

namespace A124279.P87465655086467825
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124445 ((((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 : ℕ) : ℤ) - (n : ℤ) - 1).toNat

end

end A124279.P87465655086467825

/-! ## A124279.P17218668743630776737

`or(A000007(n), A124445(A061579(n)))`
-/

namespace A124279.P17218668743630776737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A124445 (A061579 n).toNat)

end

end A124279.P17218668743630776737

/-! ## A124279.P17157071170241536158

`or(A010054(n), A124445(A061579(n)))`
-/

namespace A124279.P17157071170241536158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A010054 n) (A124445 (A061579 n).toNat)

end

end A124279.P17157071170241536158

/-! ## A124279.P5733219298029880495

`A124445(A061579(n))+A000007(3*(n+1))`
-/

namespace A124279.P5733219298029880495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124445 (A061579 n).toNat + A000007 (3 * (n + 1))

end

end A124279.P5733219298029880495

/-! ## A124279.P3692740417502338562

`A124445(A061579(n))+A010054(3*n+2)`
-/

namespace A124279.P3692740417502338562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124445 (A061579 n).toNat + A010054 (3 * n + 2)

end

end A124279.P3692740417502338562

/-!
# A124280: Expansion of 1/(1-x-x^2+x^3-x^4).

The programs for A124280, the canonical program `A124280.P18427239913399185368` is in `Seq.B000.C018`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A124280 has offset 0).

The definition of A124280 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(1/(1-x-x^2+x^3-x^4))` (program `A124280.P18427239913399185368`, by `A124280.P18427239913399185368.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A124280.P18427239913399185368

`ogf(1/(1-x-x^2+x^3-x^4))`

The canonical program, it is in `Seq.B000.C018`.
-/

namespace A124280

/-- `ogf(1/(1-x-x^2+x^3-x^4))` -/
def P18427239913399185368.Spec : Prop :=
  ∀ n, P18427239913399185368.a n = A124280 n

theorem P18427239913399185368.correct : P18427239913399185368.Spec := by
  intro n
  simp only [A124280]

end A124280

/-! ## A124280.P10566568805895624706

`a(n-1)+a(n-2)-a(n-3)+a(n-4)` with `a(0)=1, a(1)=1, a(2)=2, a(3)=2`
-/

namespace A124280.P10566568805895624706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 2, 2] fun n a =>
  a (n - 1) + a (n - 2) - a (n - 3) + a (n - 4)

end

end A124280.P10566568805895624706

namespace A124280

/-- `a(n-1)+a(n-2)-a(n-3)+a(n-4)` -/
def P10566568805895624706.Spec : Prop :=
  ∀ n, P10566568805895624706.a n = A124280 n

end A124280

/-! ## A124280.P8940722882507947919

`a(n-5)+2*a(n-2)` with `a(0)=1, a(1)=1, a(2)=2, a(3)=2, a(4)=4`
-/

namespace A124280.P8940722882507947919
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 2, 2, 4] fun n a =>
  a (n - 5) + 2 * a (n - 2)

end

end A124280.P8940722882507947919

namespace A124280

/-- `a(n-5)+2*a(n-2)` -/
def P8940722882507947919.Spec : Prop :=
  ∀ n, (P8940722882507947919.a n : ℤ) = A124280 n

end A124280

/-! ## A124280.P6071058573174284374

`a(n-2)+a(n-2)+a(n-5)` with `a(0)=1, a(1)=1, a(2)=2, a(3)=2, a(4)=4`
-/

namespace A124280.P6071058573174284374
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 2, 2, 4] fun n a =>
  a (n - 2) + (a (n - 2) + a (n - 5))

end

end A124280.P6071058573174284374

namespace A124280

/-- `a(n-2)+a(n-2)+a(n-5)` -/
def P6071058573174284374.Spec : Prop :=
  ∀ n, (P6071058573174284374.a n : ℤ) = A124280 n

end A124280

/-! ## A124280.P6464546207047031325

`a(n-1)-(a(n-3)-a(n-2)-a(n-4))` with `a(0)=1, a(1)=1, a(2)=2, a(3)=2`
-/

namespace A124280.P6464546207047031325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 2, 2] fun n a =>
  a (n - 1) - (a (n - 3) - a (n - 2) - a (n - 4))

end

end A124280.P6464546207047031325

namespace A124280

/-- `a(n-1)-(a(n-3)-a(n-2)-a(n-4))` -/
def P6464546207047031325.Spec : Prop :=
  ∀ n, P6464546207047031325.a n = A124280 n

end A124280

/-! ## A124280.P4336678707944103982

`Δ[A130137(n)]`
-/

namespace A124280.P4336678707944103982
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130137 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A124280.P4336678707944103982

namespace A124280

/-- `Δ[A130137(n)]` -/
def P4336678707944103982.Spec : Prop :=
  ∀ n, P4336678707944103982.a n = A124280 n

end A124280

/-! ## A124280.P10133854957786383854

`A130137(n+1)-A130137(n)`
-/

namespace A124280.P10133854957786383854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130137 (n + 1) - A130137 n

end

end A124280.P10133854957786383854

namespace A124280

/-- `A130137(n+1)-A130137(n)` -/
def P10133854957786383854.Spec : Prop :=
  ∀ n, P10133854957786383854.a n = A124280 n

end A124280

/-!
# A124281: Expansion of 1/(1-x-2*x^2+2*x^3-2*x^4).

The programs for A124281, the canonical program `A124281.P14060913728517752460` is in `Seq.B000.C018`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A124281 has offset 0).

The definition of A124281 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(1/(1-x-2x^2+2x^3-2x^4))` (program `A124281.P14060913728517752460`, by `A124281.P14060913728517752460.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A124281.P14060913728517752460

`ogf(1/(1-x-2x^2+2x^3-2x^4))`

The canonical program, it is in `Seq.B000.C018`.
-/

namespace A124281

/-- `ogf(1/(1-x-2x^2+2x^3-2x^4))` -/
def P14060913728517752460.Spec : Prop :=
  ∀ n, P14060913728517752460.a n = A124281 n

theorem P14060913728517752460.correct : P14060913728517752460.Spec := by
  intro n
  simp only [A124281]

end A124281

/-! ## A124281.P7637238521810507295

`A095274(Δ[A079289(n+1)])`
-/

namespace A124281.P7637238521810507295
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079289 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095274 (f1 (n + 1) - f1 n).toNat

end

end A124281.P7637238521810507295

namespace A124281

/-- `A095274(Δ[A079289(n+1)])` -/
def P7637238521810507295.Spec : Prop :=
  ∀ n, P7637238521810507295.a n = A124281 n

end A124281

/-! ## A124281.P5022199873186680940

`A095274(A052551(n)+A005673(n))`
-/

namespace A124281.P5022199873186680940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095274 (A052551 n + A005673 n).toNat

end

end A124281.P5022199873186680940

namespace A124281

/-- `A095274(A052551(n)+A005673(n))` -/
def P5022199873186680940.Spec : Prop :=
  ∀ n, P5022199873186680940.a n = A124281 n

end A124281

/-! ## A124281.P700290286675600596

`A121294(A102526(n))+A033100(n+1)`
-/

namespace A124281.P700290286675600596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121294 (A102526 n).toNat + A033100 (n + 1)

end

end A124281.P700290286675600596

namespace A124281

/-- `A121294(A102526(n))+A033100(n+1)` -/
def P700290286675600596.Spec : Prop :=
  ∀ n, P700290286675600596.a n = A124281 n

end A124281

/-!
# A124282: Primes indexed by 4-almost primes.

The programs for A124282, the canonical program `A124282.P3881656301786710147` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A124282 has offset 1).

The definition of A124282 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A014613, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A124282.P3881656301786710147

`A000040(A014613(n+1))`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A124282

/-- `A000040(A014613(n+1))` -/
def P3881656301786710147.Spec : Prop :=
  ∀ n, P3881656301786710147.a n = A124282 (n + 1)

theorem P3881656301786710147.correct : P3881656301786710147.Spec := by
  intro n
  simp only [A124282, Nat.add_sub_cancel]

end A124282

/-! ## A124282.P228020497606302775

`A008578(A014613(n+1)+1)`
-/

namespace A124282.P228020497606302775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (A014613 (n + 1) + 1).toNat

end

end A124282.P228020497606302775

namespace A124282

/-- `A008578(A014613(n+1)+1)` -/
def P228020497606302775.Spec : Prop :=
  ∀ n, P228020497606302775.a n = A124282 (n + 1)

end A124282

/-! ## A124282.P17746376440588259392

`A182986(A014613(n+1)+1)`
-/

namespace A124282.P17746376440588259392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182986 (A014613 (n + 1) + 1).toNat

end

end A124282.P17746376440588259392

namespace A124282

/-- `A182986(A014613(n+1)+1)` -/
def P17746376440588259392.Spec : Prop :=
  ∀ n, P17746376440588259392.a n = A124282 (n + 1)

end A124282

/-! ## A124282.P14902078722148120973

`A045344(A014613(n+1)-1)`
-/

namespace A124282.P14902078722148120973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045344 (A014613 (n + 1) - 1).toNat

end

end A124282.P14902078722148120973

namespace A124282

/-- `A045344(A014613(n+1)-1)` -/
def P14902078722148120973.Spec : Prop :=
  ∀ n, P14902078722148120973.a n = A124282 (n + 1)

end A124282

/-! ## A124282.P5593413349039035339

`A065091(A014613(n+1)-1)`
-/

namespace A124282.P5593413349039035339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (A014613 (n + 1) - 1).toNat

end

end A124282.P5593413349039035339

namespace A124282

/-- `A065091(A014613(n+1)-1)` -/
def P5593413349039035339.Spec : Prop :=
  ∀ n, P5593413349039035339.a n = A124282 (n + 1)

end A124282

/-! ## A124282.P2093742979522124416

`A000040(eq[4, A001222(n+1)]+1)`
-/

namespace A124282.P2093742979522124416
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A124282.P2093742979522124416

namespace A124282

/-- `A000040(eq[4, A001222(n+1)]+1)` -/
def P2093742979522124416.Spec : Prop :=
  ∀ n, P2093742979522124416.a n = A124282 (n + 1)

end A124282

/-! ## A124282.P3151051492809456117

`A065091(eq[2, A001222(n+1)-2])`
-/

namespace A124282.P3151051492809456117
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A124282.P3151051492809456117

namespace A124282

/-- `A065091(eq[2, A001222(n+1)-2])` -/
def P3151051492809456117.Spec : Prop :=
  ∀ n, P3151051492809456117.a n = A124282 (n + 1)

end A124282

/-! ## A124282.P18109995657368986529

`A065091(eq[2, A001222(n+1)/2])`
-/

namespace A124282.P18109995657368986529
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001222 (n + 1) : ℚ) / 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (SequenceMachineLib.nth (fun j => (f1 j : ℚ) = f2 j) n)

end

end A124282.P18109995657368986529

namespace A124282

/-- `A065091(eq[2, A001222(n+1)/2])` -/
def P18109995657368986529.Spec : Prop :=
  ∀ n, P18109995657368986529.a n = A124282 (n + 1)

end A124282

/-! ## A124282.P16924810030937756033

`A006093(eq[4, A001222(n+1)]+1)+1`
-/

namespace A124282.P16924810030937756033
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006093 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1) + 1

end

end A124282.P16924810030937756033

namespace A124282

/-- `A006093(eq[4, A001222(n+1)]+1)+1` -/
def P16924810030937756033.Spec : Prop :=
  ∀ n, P16924810030937756033.a n = A124282 (n + 1)

end A124282

/-! ## A124282.P10704903915855058676

`A040976(eq[4, A001222(n+1)]+1)+2`
-/

namespace A124282.P10704903915855058676
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040976 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1) + 2

end

end A124282.P10704903915855058676

namespace A124282

/-- `A040976(eq[4, A001222(n+1)]+1)+2` -/
def P10704903915855058676.Spec : Prop :=
  ∀ n, P10704903915855058676.a n = A124282 (n + 1)

end A124282

/-! ## A124282.P4466989392917366334

`p?[(A001222(n+1)-3)*A000040(n+1)]`
-/

namespace A124282.P4466989392917366334
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A001222 (n + 1) - 3) * A000040 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A124282.P4466989392917366334

namespace A124282

/-- `p?[(A001222(n+1)-3)*A000040(n+1)]` -/
def P4466989392917366334.Spec : Prop :=
  ∀ n, P4466989392917366334.a n = A124282 (n + 1)

end A124282

/-! ## A124282.P7686919381743275479

`A000040(A114944(n+1)-A114382(n+1))`
-/

namespace A124282.P7686919381743275479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A114944 (n + 1) - A114382 (n + 1)).toNat

end

end A124282.P7686919381743275479

namespace A124282

/-- `A000040(A114944(n+1)-A114382(n+1))` -/
def P7686919381743275479.Spec : Prop :=
  ∀ n, P7686919381743275479.a n = A124282 (n + 1)

theorem P7686919381743275479.correct : P7686919381743275479.Spec := by
  intro n
  simp only [A124282, Nat.add_sub_cancel, A124282.P7686919381743275479.a, A124282.P3881656301786710147.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A014613, A014613.P1114013819310587080.f1, A014613.P1114013819310587080.f2, A014613.P1114013819310587080.a, A114382, A114382.P1208901813651073029.a, A114944, A114944.P5745295539132009725.a, A001358, A001358.P632087320844056370.a, A014612, A014612.P5035219895023979827.f1, A014612.P5035219895023979827.f2, A014612.P5035219895023979827.a, A030514, A030514.P11974636125371552077.a, A307342, A307342.P15063499458322460120.f1, A307342.P15063499458322460120.f2, A307342.P15063499458322460120.a, A088707, A088707.P7291141647877559993.a, A318473, A318473.P15254297892022099386.a, A007814, A007814.P13537437864234730737.a, A100493, A100493.P3342029395979233194.f1, A100493.P3342029395979233194.a, A318474, A318474.P8998040803889606684.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A124282

/-! ## A124282.P5196268164170316793

`A000040(record[A033987(n+1)*A101637(A033987(n+1))])`
-/

namespace A124282.P5196268164170316793
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033987 (n + 1) * A101637 (A033987 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A124282.P5196268164170316793

namespace A124282

/-- `A000040(record[A033987(n+1)*A101637(A033987(n+1))])` -/
def P5196268164170316793.Spec : Prop :=
  ∀ n, P5196268164170316793.a n = A124282 (n + 1)

end A124282

/-! ## A124282.P3382746174677622404

`A158611(A014613(n+1)+2)`
-/

namespace A124282.P3382746174677622404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158611 (A014613 (n + 1) + 2).toNat

end

end A124282.P3382746174677622404

namespace A124282

/-- `A158611(A014613(n+1)+2)` -/
def P3382746174677622404.Spec : Prop :=
  ∀ n, P3382746174677622404.a n = A124282 (n + 1)

end A124282

/-! ## A124282.P10163840031456718592

`A124284(n+1)+A124283(n+1)`
-/

namespace A124282.P10163840031456718592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124284 (n + 1) + A124283 (n + 1)

end

end A124282.P10163840031456718592

namespace A124282

/-- `A124284(n+1)+A124283(n+1)` -/
def P10163840031456718592.Spec : Prop :=
  ∀ n, P10163840031456718592.a n = A124282 (n + 1)

theorem P10163840031456718592.correct : P10163840031456718592.Spec := by
  intro n
  simp only [A124282, Nat.add_sub_cancel, A124282.P10163840031456718592.a, A124282.P3881656301786710147.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A014613, A014613.P1114013819310587080.f1, A014613.P1114013819310587080.f2, A014613.P1114013819310587080.a, A124283, A124283.P8325638401680128241.a, A124284, A124284.P14693440834866101347.a, A030514, A030514.P11974636125371552077.a, A307342, A307342.P15063499458322460120.f1, A307342.P15063499458322460120.f2, A307342.P15063499458322460120.a, A318473, A318473.P15254297892022099386.a, A007814, A007814.P13537437864234730737.a, A318474, A318474.P8998040803889606684.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A124282

/-! ## A124282.P6845386135505096933

`A073846(2*A014613(n+1))`
-/

namespace A124282.P6845386135505096933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073846 (2 * A014613 (n + 1)).toNat

end

end A124282.P6845386135505096933

namespace A124282

/-- `A073846(2*A014613(n+1))` -/
def P6845386135505096933.Spec : Prop :=
  ∀ n, P6845386135505096933.a n = A124282 (n + 1)

end A124282

/-! ## A124282.P6251553565512094559

`record[A207790(A014614(n+1))]`
-/

namespace A124282.P6251553565512094559
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207790 (A014614 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A124282.P6251553565512094559

namespace A124282

/-- `record[A207790(A014614(n+1))]` -/
def P6251553565512094559.Spec : Prop :=
  ∀ n, P6251553565512094559.a n = A124282 (n + 1)

end A124282

/-! ## A124282.P4075257797453795702

`A207790(2*A014613(n+1))`
-/

namespace A124282.P4075257797453795702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207790 (2 * A014613 (n + 1)).toNat

end

end A124282.P4075257797453795702

namespace A124282

/-- `A207790(2*A014613(n+1))` -/
def P4075257797453795702.Spec : Prop :=
  ∀ n, P4075257797453795702.a n = A124282 (n + 1)

end A124282

/-! ## A124282.P13562519513917472379

`A207790(A014613(n+1)+A014613(n+1))`
-/

namespace A124282.P13562519513917472379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207790 (A014613 (n + 1) + A014613 (n + 1)).toNat

end

end A124282.P13562519513917472379

namespace A124282

/-- `A207790(A014613(n+1)+A014613(n+1))` -/
def P13562519513917472379.Spec : Prop :=
  ∀ n, P13562519513917472379.a n = A124282 (n + 1)

end A124282

/-!
# A124283: 4-almost primes indexed by primes.

The programs for A124283, the canonical program `A124283.P8325638401680128241` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A124283 has offset 1).

The definition of A124283 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A014613, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A124283.P8325638401680128241

`A014613(A000040(n+1))`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A124283

/-- `A014613(A000040(n+1))` -/
def P8325638401680128241.Spec : Prop :=
  ∀ n, P8325638401680128241.a n = A124283 (n + 1)

theorem P8325638401680128241.correct : P8325638401680128241.Spec := by
  intro n
  simp only [A124283, Nat.add_sub_cancel]

end A124283

/-! ## A124283.P18121148305681950538

`A014613(eq[1, ∑{e}[n, #]])`
-/

namespace A124283.P18121148305681950538
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f3 n), Nat.factorization (f3 n) p

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014613 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A124283.P18121148305681950538

namespace A124283

/-- `A014613(eq[1, ∑{e}[n, #]])` -/
def P18121148305681950538.Spec : Prop :=
  ∀ n, P18121148305681950538.a n = A124283 (n + 1)

end A124283

/-! ## A124283.P7269838804331958070

`A014613(Δ[A007504(n)])`
-/

namespace A124283.P7269838804331958070
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014613 (f1 (n + 1) - f1 n).toNat

end

end A124283.P7269838804331958070

namespace A124283

/-- `A014613(Δ[A007504(n)])` -/
def P7269838804331958070.Spec : Prop :=
  ∀ n, P7269838804331958070.a n = A124283 (n + 1)

end A124283

/-! ## A124283.P14478269744982118391

`A014613(A008578(n+2))`
-/

namespace A124283.P14478269744982118391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014613 (A008578 (n + 2)).toNat

end

end A124283.P14478269744982118391

namespace A124283

/-- `A014613(A008578(n+2))` -/
def P14478269744982118391.Spec : Prop :=
  ∀ n, P14478269744982118391.a n = A124283 (n + 1)

end A124283

/-! ## A124283.P10401004708637589926

`A014613(A182986(n+2))`
-/

namespace A124283.P10401004708637589926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014613 (A182986 (n + 2)).toNat

end

end A124283.P10401004708637589926

namespace A124283

/-- `A014613(A182986(n+2))` -/
def P10401004708637589926.Spec : Prop :=
  ∀ n, P10401004708637589926.a n = A124283 (n + 1)

end A124283

/-! ## A124283.P9375145588351409071

`A014613(eq[1, A003415(n)])`
-/

namespace A124283.P9375145588351409071
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014613 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A124283.P9375145588351409071

namespace A124283

/-- `A014613(eq[1, A003415(n)])` -/
def P9375145588351409071.Spec : Prop :=
  ∀ n, P9375145588351409071.a n = A124283 (n + 1)

end A124283

/-! ## A124283.P8340464907410875728

`A014613(eq[4, A048785(n)])`
-/

namespace A124283.P8340464907410875728
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048785 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014613 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A124283.P8340464907410875728

namespace A124283

/-- `A014613(eq[4, A048785(n)])` -/
def P8340464907410875728.Spec : Prop :=
  ∀ n, P8340464907410875728.a n = A124283 (n + 1)

end A124283

/-! ## A124283.P9348200872096328262

`A014613(record[A006530(n+2)])`
-/

namespace A124283.P9348200872096328262
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014613 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A124283.P9348200872096328262

namespace A124283

/-- `A014613(record[A006530(n+2)])` -/
def P9348200872096328262.Spec : Prop :=
  ∀ n, P9348200872096328262.a n = A124283 (n + 1)

end A124283

/-! ## A124283.P4894628872474773890

`A014613(record[A014963(n+2)])`
-/

namespace A124283.P4894628872474773890
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014613 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A124283.P4894628872474773890

namespace A124283

/-- `A014613(record[A014963(n+2)])` -/
def P4894628872474773890.Spec : Prop :=
  ∀ n, P4894628872474773890.a n = A124283 (n + 1)

end A124283

/-! ## A124283.P12105487224889473024

`A014613(record[A020639(n+2)])`
-/

namespace A124283.P12105487224889473024
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014613 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A124283.P12105487224889473024

namespace A124283

/-- `A014613(record[A020639(n+2)])` -/
def P12105487224889473024.Spec : Prop :=
  ∀ n, P12105487224889473024.a n = A124283 (n + 1)

end A124283

/-! ## A124283.P9181537365126566087

`A014613(p?[n*A105700(n)])`
-/

namespace A124283.P9181537365126566087
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A105700 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014613 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A124283.P9181537365126566087

namespace A124283

/-- `A014613(p?[n*A105700(n)])` -/
def P9181537365126566087.Spec : Prop :=
  ∀ n, P9181537365126566087.a n = A124283 (n + 1)

end A124283

/-! ## A124283.P9286137985392509995

`A014613(A006093(n+1)+1)`
-/

namespace A124283.P9286137985392509995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014613 (A006093 (n + 1) + 1).toNat

end

end A124283.P9286137985392509995

namespace A124283

/-- `A014613(A006093(n+1)+1)` -/
def P9286137985392509995.Spec : Prop :=
  ∀ n, P9286137985392509995.a n = A124283 (n + 1)

theorem P9286137985392509995.correct : P9286137985392509995.Spec := by
  intro n
  simp only [A124283, Nat.add_sub_cancel, A124283.P9286137985392509995.a, A124283.P8325638401680128241.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A006093, A006093.P2906174024863549003.a, A014613, A014613.P1114013819310587080.f1, A014613.P1114013819310587080.f2, A014613.P1114013819310587080.a, A030514, A030514.P11974636125371552077.a, A307342, A307342.P15063499458322460120.f1, A307342.P15063499458322460120.f2, A307342.P15063499458322460120.a, A318473, A318473.P15254297892022099386.a, A007814, A007814.P13537437864234730737.a, A318474, A318474.P8998040803889606684.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A124283

/-! ## A124283.P9213435413029044312

`A014613(A040976(n+1)+2)`
-/

namespace A124283.P9213435413029044312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014613 (A040976 (n + 1) + 2).toNat

end

end A124283.P9213435413029044312

namespace A124283

/-- `A014613(A040976(n+1)+2)` -/
def P9213435413029044312.Spec : Prop :=
  ∀ n, P9213435413029044312.a n = A124283 (n + 1)

theorem P9213435413029044312.correct : P9213435413029044312.Spec := by
  intro n
  simp only [A124283, Nat.add_sub_cancel, A124283.P9213435413029044312.a, A124283.P8325638401680128241.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A014613, A014613.P1114013819310587080.f1, A014613.P1114013819310587080.f2, A014613.P1114013819310587080.a, A040976, A040976.P11599754272797435513.a, A030514, A030514.P11974636125371552077.a, A307342, A307342.P15063499458322460120.f1, A307342.P15063499458322460120.f2, A307342.P15063499458322460120.a, A318473, A318473.P15254297892022099386.a, A007814, A007814.P13537437864234730737.a, A318474, A318474.P8998040803889606684.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A124283

/-! ## A124283.P14218550484715908051

`A014613(A067747(2*n+1))`
-/

namespace A124283.P14218550484715908051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014613 (A067747 (2 * n + 1)).toNat

end

end A124283.P14218550484715908051

namespace A124283

/-- `A014613(A067747(2*n+1))` -/
def P14218550484715908051.Spec : Prop :=
  ∀ n, P14218550484715908051.a n = A124283 (n + 1)

end A124283

/-! ## A124283.P14658427482806514999

`A014613(A073846(2*(n+1)))`
-/

namespace A124283.P14658427482806514999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014613 (A073846 (2 * (n + 1))).toNat

end

end A124283.P14658427482806514999

namespace A124283

/-- `A014613(A073846(2*(n+1)))` -/
def P14658427482806514999.Spec : Prop :=
  ∀ n, P14658427482806514999.a n = A124283 (n + 1)

end A124283

/-! ## A124283.P13517051772940291429

`A014613(A207790(2*(n+1)))`
-/

namespace A124283.P13517051772940291429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014613 (A207790 (2 * (n + 1))).toNat

end

end A124283.P13517051772940291429

namespace A124283

/-- `A014613(A207790(2*(n+1)))` -/
def P13517051772940291429.Spec : Prop :=
  ∀ n, P13517051772940291429.a n = A124283 (n + 1)

end A124283

/-! ## A124283.P6100092398121618473

`A014613(A100484(n+1)/2)`
-/

namespace A124283.P6100092398121618473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014613 (SequenceMachineLib.roundAway ((A100484 (n + 1) : ℚ) / 2)).toNat

end

end A124283.P6100092398121618473

namespace A124283

/-- `A014613(A100484(n+1)/2)` -/
def P6100092398121618473.Spec : Prop :=
  ∀ n, P6100092398121618473.a n = A124283 (n + 1)

end A124283

/-! ## A124283.P13060687653183844544

`A014613(record[A000010(n+1)+1])`
-/

namespace A124283.P13060687653183844544
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014613 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A124283.P13060687653183844544

namespace A124283

/-- `A014613(record[A000010(n+1)+1])` -/
def P13060687653183844544.Spec : Prop :=
  ∀ n, P13060687653183844544.a n = A124283 (n + 1)

end A124283

/-! ## A124283.P17381000535256471023

`A014613(A144043(2*n+1)/2)`
-/

namespace A124283.P17381000535256471023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014613 (SequenceMachineLib.roundAway ((A144043 (2 * n + 1) : ℚ) / 2)).toNat

end

end A124283.P17381000535256471023

namespace A124283

/-- `A014613(A144043(2*n+1)/2)` -/
def P17381000535256471023.Spec : Prop :=
  ∀ n, P17381000535256471023.a n = A124283 (n + 1)

end A124283

/-! ## A124283.P14315899432571728975

`A014613(eq[1, A001222(n+1)]+1)`
-/

namespace A124283.P14315899432571728975
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014613 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A124283.P14315899432571728975

namespace A124283

/-- `A014613(eq[1, A001222(n+1)]+1)` -/
def P14315899432571728975.Spec : Prop :=
  ∀ n, P14315899432571728975.a n = A124283 (n + 1)

end A124283

/-!
# A124284: Prime(4almostprime(n))-4almostprime(prime(n)). Commutator [A000040,A014613] at n.

The programs for A124284, the canonical program `A124284.P14693440834866101347` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A124284 has offset 1).

The definition of A124284 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A014613, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A124284.P14693440834866101347

`A000040(A014613(n+1))-A014613(A000040(n+1))`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A124284

/-- `A000040(A014613(n+1))-A014613(A000040(n+1))` -/
def P14693440834866101347.Spec : Prop :=
  ∀ n, P14693440834866101347.a n = A124284 (n + 1)

theorem P14693440834866101347.correct : P14693440834866101347.Spec := by
  intro n
  simp only [A124284, Nat.add_sub_cancel]

end A124284

/-! ## A124284.P7090015925435582480

`A124282(n+1)-A124283(n+1)`
-/

namespace A124284.P7090015925435582480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124282 (n + 1) - A124283 (n + 1)

end

end A124284.P7090015925435582480

namespace A124284

/-- `A124282(n+1)-A124283(n+1)` -/
def P7090015925435582480.Spec : Prop :=
  ∀ n, P7090015925435582480.a n = A124284 (n + 1)

end A124284

/-! ## A124284.P6129315237893395240

`A000040(A014613(n+1))-A124283(n+1)`
-/

namespace A124284.P6129315237893395240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A014613 (n + 1)).toNat - A124283 (n + 1)

end

end A124284.P6129315237893395240

namespace A124284

/-- `A000040(A014613(n+1))-A124283(n+1)` -/
def P6129315237893395240.Spec : Prop :=
  ∀ n, P6129315237893395240.a n = A124284 (n + 1)

end A124284

/-! ## A124284.P16987941753564162124

`A124282(n+1)-A014613(A000040(n+1))`
-/

namespace A124284.P16987941753564162124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124282 (n + 1) - A014613 (A000040 (n + 1)).toNat

end

end A124284.P16987941753564162124

namespace A124284

/-- `A124282(n+1)-A014613(A000040(n+1))` -/
def P16987941753564162124.Spec : Prop :=
  ∀ n, P16987941753564162124.a n = A124284 (n + 1)

end A124284

/-! ## A124284.P5456489070612597367

`A124282(n+1)-A014613(eq[1, A001222(n+1)]+1)`
-/

namespace A124284.P5456489070612597367
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124282 (n + 1) - A014613 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A124284.P5456489070612597367

namespace A124284

/-- `A124282(n+1)-A014613(eq[1, A001222(n+1)]+1)` -/
def P5456489070612597367.Spec : Prop :=
  ∀ n, P5456489070612597367.a n = A124284 (n + 1)

end A124284

/-!
# A124288: Indices of unstable zeros of the Riemann zeta function.

The programs for A124288, there is no canonical definition to state claims against.
-/

/-! ## A124288.P11589319431304142052

`∑[A001222(A271896(n))+1]`
-/

namespace A124288.P11589319431304142052
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A271896 n).toNat + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A124288.P11589319431304142052

/-! ## A124288.P13758372841786150223

`∑[A001222(2*A271896(n))]`
-/

namespace A124288.P13758372841786150223
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (2 * A271896 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A124288.P13758372841786150223

/-! ## A124288.P15680738534295859033

`A178798(A055998(n))+A123753(n)`
-/

namespace A124288.P15680738534295859033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178798 (A055998 n).toNat + A123753 n

end

end A124288.P15680738534295859033

/-! ## A124288.P15780663952217831861

`A162781(A136467(n))+A061781(n+1)`
-/

namespace A124288.P15780663952217831861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162781 (A136467 n).toNat + A061781 (n + 1)

end

end A124288.P15780663952217831861

/-! ## A124288.P8225853506856969828

`A162781(A199230(n+1))+A061781(n+1)`
-/

namespace A124288.P8225853506856969828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162781 (A199230 (n + 1)).toNat + A061781 (n + 1)

end

end A124288.P8225853506856969828

/-!
# A124291: Largest prime < 10*a(n-1), a(1)=7.

The programs for A124291, there is no canonical definition to state claims against.
-/

/-! ## A124291.P8986466791760654803

`A024644(or(1, A037611(n+2)))`
-/

namespace A124291.P8986466791760654803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024644 (Int.lor 1 (A037611 (n + 2))).toNat

end

end A124291.P8986466791760654803

/-!
# A124292: Number of free generators of degree n of symmetric polynomials in 4 noncommuting variables.

The programs for A124292, the canonical program `A124292.P3982799112335551492` is in `Seq.B000.C018`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A124292 has offset 1).

The definition of A124292 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A124292.P3982799112335551492

`6*a(n-1)-9*a(n-2)+3*a(n-3)` with `a(0)=1, a(1)=1, a(2)=2`

The canonical program, it is in `Seq.B000.C018`.
-/

namespace A124292

/-- `6*a(n-1)-9*a(n-2)+3*a(n-3)` -/
def P3982799112335551492.Spec : Prop :=
  ∀ n, P3982799112335551492.a n = A124292 (n + 1)

theorem P3982799112335551492.correct : P3982799112335551492.Spec := by
  intro n
  simp only [A124292, Nat.add_sub_cancel]

end A124292

/-! ## A124292.P9139441077729636460

`ogf((1-5x+5x^2)/(1-6x+9x^2-3x^3))`
-/

namespace A124292.P9139441077729636460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -5, 5] [1, -6, 9, -3] n

end

end A124292.P9139441077729636460

namespace A124292

/-- `ogf((1-5x+5x^2)/(1-6x+9x^2-3x^3))` -/
def P9139441077729636460.Spec : Prop :=
  ∀ n, P9139441077729636460.a n = A124292 (n + 1)

end A124292

/-! ## A124292.P6582058661641923282

`A208737(n)+A124302(n)`
-/

namespace A124292.P6582058661641923282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208737 n + A124302 n

end

end A124292.P6582058661641923282

namespace A124292

/-- `A208737(n)+A124302(n)` -/
def P6582058661641923282.Spec : Prop :=
  ∀ n, P6582058661641923282.a n = A124292 (n + 1)

theorem P6582058661641923282.correct : P6582058661641923282.Spec := by
  intro n
  simp only [A124292, Nat.add_sub_cancel, A124292.P6582058661641923282.a, A124292.P3982799112335551492.a, A124302, A124302.P7197067930557024172.a, A208737, A208737.P2602793139901619243.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A124292

/-! ## A124292.P8042678136353385455

`A208737(n)-A123183(n+1)`
-/

namespace A124292.P8042678136353385455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208737 n - A123183 (n + 1)

end

end A124292.P8042678136353385455

namespace A124292

/-- `A208737(n)-A123183(n+1)` -/
def P8042678136353385455.Spec : Prop :=
  ∀ n, P8042678136353385455.a n = A124292 (n + 1)

end A124292

/-! ## A124292.P2008755011635714436

`A208737(n)+A007051(log2(A011782(n)))`
-/

namespace A124292.P2008755011635714436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208737 n + A007051 (SequenceMachineLib.roundAway (Real.logb 2 (A011782 n : ℝ))).toNat

end

end A124292.P2008755011635714436

namespace A124292

/-- `A208737(n)+A007051(log2(A011782(n)))` -/
def P2008755011635714436.Spec : Prop :=
  ∀ n, P2008755011635714436.a n = A124292 (n + 1)

end A124292

/-! ## A124292.P14447097027910424262

`A000392(n)+A208737(n)+A011782(n)`
-/

namespace A124292.P14447097027910424262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000392 n + (A208737 n + A011782 n)

end

end A124292.P14447097027910424262

namespace A124292

/-- `A000392(n)+A208737(n)+A011782(n)` -/
def P14447097027910424262.Spec : Prop :=
  ∀ n, P14447097027910424262.a n = A124292 (n + 1)

end A124292

/-! ## A124292.P15501020244770430754

`A115098(n)+A208737(n)-A094388(n)`
-/

namespace A124292.P15501020244770430754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115098 n + (A208737 n - A094388 n)

end

end A124292.P15501020244770430754

namespace A124292

/-- `A115098(n)+A208737(n)-A094388(n)` -/
def P15501020244770430754.Spec : Prop :=
  ∀ n, P15501020244770430754.a n = A124292 (n + 1)

end A124292

/-!
# A124293: Number of free generators of degree n of symmetric polynomials in 5-noncommuting variables.

The programs for A124293, there is no canonical definition to state claims against.
-/

/-! ## A124293.P12619810373621104459

`floor(A231494(n+1)/2^n)-char[6]-char[6]`
-/

namespace A124293.P12619810373621104459
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A231494 (n + 1) : ℚ) / (2 ^ n : ℚ)⌋ - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) - ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ)

end

end A124293.P12619810373621104459

/-! ## A124293.P1706364506847773369

`A247781(A150621(n))`
-/

namespace A124293.P1706364506847773369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247781 (A150621 n).toNat

end

end A124293.P1706364506847773369

/-! ## A124293.P17246859384239303682

`A276798(A150774(n))`
-/

namespace A124293.P17246859384239303682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276798 (A150774 n).toNat

end

end A124293.P17246859384239303682

/-!
# A124294: Number of free generators of degree n of symmetric polynomials in 6-noncommuting variables.

The programs for A124294, there is no canonical definition to state claims against.
-/

/-! ## A124294.P2537156804069962487

`6*A122370(n)-A122370(n+1)`
-/

namespace A124294.P2537156804069962487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * A122370 n - A122370 (n + 1)

end

end A124294.P2537156804069962487

/-! ## A124294.P3962813271198160454

`A348960(A228626(n+1))+A279571(n)`
-/

namespace A124294.P3962813271198160454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348960 (A228626 (n + 1)).toNat + A279571 n

end

end A124294.P3962813271198160454

/-! ## A124294.P4492629910399755779

`A279571(n)+A025442(A279571(n))`
-/

namespace A124294.P4492629910399755779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279571 n + A025442 (A279571 n).toNat

end

end A124294.P4492629910399755779

/-! ## A124294.P5754326171462628153

`A225294(n)+A121705(A306558(n))`
-/

namespace A124294.P5754326171462628153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225294 n + A121705 (A306558 n).toNat

end

end A124294.P5754326171462628153

/-!
# A124295: Number of free generators of degree n of symmetric polynomials in 7-noncommuting variables.

The programs for A124295, there is no canonical definition to state claims against.
-/

/-! ## A124295.P16294343957440179690

`A083036(2*A074664(n+1))`
-/

namespace A124295.P16294343957440179690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083036 (2 * A074664 (n + 1)).toNat

end

end A124295.P16294343957440179690

/-! ## A124295.P14913788914919472627

`A028310(record[A130167(n+1)])-char[7]`
-/

namespace A124295.P14913788914919472627
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130167 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat - ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ)

end

end A124295.P14913788914919472627

/-! ## A124295.P2022497145615289123

`A074664(n+1)-A051768(2*n+1)`
-/

namespace A124295.P2022497145615289123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074664 (n + 1) - A051768 (2 * n + 1)

end

end A124295.P2022497145615289123

/-! ## A124295.P3649572763817388296

`A074664(n+1)-A067644(2*n+3)%2`
-/

namespace A124295.P3649572763817388296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074664 (n + 1) - Int.tmod (A067644 (2 * n + 3)) 2

end

end A124295.P3649572763817388296

/-!
# A124296: a(n) = 5*F(n)^2 - 5*F(n) + 1, where F(n) = Fibonacci(n).

The programs for A124296, the canonical program `A124296.P432976834230504907` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A124296 has offset 0).

The definition of A124296 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 240 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A124296.P432976834230504907

`5*A262184(n)-4`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A124296

/-- `5*A262184(n)-4` -/
def P432976834230504907.Spec : Prop :=
  ∀ n, P432976834230504907.a n = A124296 n

theorem P432976834230504907.correct : P432976834230504907.Spec := by
  intro n
  simp only [A124296]

end A124296

/-! ## A124296.P7289222972801322676

`10*A191797(n)+1`
-/

namespace A124296.P7289222972801322676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  10 * A191797 n + 1

end

end A124296.P7289222972801322676

namespace A124296

/-- `10*A191797(n)+1` -/
def P7289222972801322676.Spec : Prop :=
  ∀ n, P7289222972801322676.a n = A124296 n

end A124296

/-! ## A124296.P14691216205935211793

`10*C(A000045(n), 2)+1`
-/

namespace A124296.P14691216205935211793
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10 * Nat.choose (A000045 n).toNat 2 + 1

end

end A124296.P14691216205935211793

namespace A124296

/-- `10*C(A000045(n), 2)+1` -/
def P14691216205935211793.Spec : Prop :=
  ∀ n, (P14691216205935211793.a n : ℤ) = A124296 n

end A124296

/-! ## A124296.P15819823033337053087

`10*C(A001611(n)-1, 2)+1`
-/

namespace A124296.P15819823033337053087
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10 * Nat.choose (A001611 n - 1).toNat 2 + 1

end

end A124296.P15819823033337053087

namespace A124296

/-- `10*C(A001611(n)-1, 2)+1` -/
def P15819823033337053087.Spec : Prop :=
  ∀ n, (P15819823033337053087.a n : ℤ) = A124296 n

end A124296

/-! ## A124296.P14740155577518231973

`10*C(A103609(2*n), 2)+1`
-/

namespace A124296.P14740155577518231973
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10 * Nat.choose (A103609 (2 * n)).toNat 2 + 1

end

end A124296.P14740155577518231973

namespace A124296

/-- `10*C(A103609(2*n), 2)+1` -/
def P14740155577518231973.Spec : Prop :=
  ∀ n, (P14740155577518231973.a n : ℤ) = A124296 n

end A124296

/-! ## A124296.P13727368443138358181

`A124297(n)-A022093(n)`
-/

namespace A124296.P13727368443138358181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124297 n - A022093 n

end

end A124296.P13727368443138358181

namespace A124296

/-- `A124297(n)-A022093(n)` -/
def P13727368443138358181.Spec : Prop :=
  ∀ n, P13727368443138358181.a n = A124296 n

end A124296

/-! ## A124296.P16804567239574501651

`5*A059727(n)+1-A022093(n)`
-/

namespace A124296.P16804567239574501651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * A059727 n + 1 - A022093 n

end

end A124296.P16804567239574501651

namespace A124296

/-- `5*A059727(n)+1-A022093(n)` -/
def P16804567239574501651.Spec : Prop :=
  ∀ n, P16804567239574501651.a n = A124296 n

end A124296

/-! ## A124296.P6727025347049255502

`10*A033192(n)+1-A022093(n)`
-/

namespace A124296.P6727025347049255502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  10 * A033192 n + 1 - A022093 n

end

end A124296.P6727025347049255502

namespace A124296

/-- `10*A033192(n)+1-A022093(n)` -/
def P6727025347049255502.Spec : Prop :=
  ∀ n, P6727025347049255502.a n = A124296 n

end A124296

/-! ## A124296.P2584497608318137597

`A001588(n)²+A059727(n)-A022093(n)`
-/

namespace A124296.P2584497608318137597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001588 n ^ 2 + (A059727 n - A022093 n)

end

end A124296.P2584497608318137597

namespace A124296

/-- `A001588(n)²+A059727(n)-A022093(n)` -/
def P2584497608318137597.Spec : Prop :=
  ∀ n, P2584497608318137597.a n = A124296 n

end A124296

/-! ## A124296.P16446271970755385115

`A000032(n)+A001610(n)²-A002878(n)`
-/

namespace A124296.P16446271970755385115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 n + (A001610 n ^ 2 - A002878 n)

end

end A124296.P16446271970755385115

namespace A124296

/-- `A000032(n)+A001610(n)²-A002878(n)` -/
def P16446271970755385115.Spec : Prop :=
  ∀ n, P16446271970755385115.a n = A124296 n

end A124296

/-!
# A124297: a(n) = 5*F(n)^2 + 5*F(n) + 1, where F(n) = Fibonacci(n).

The programs for A124297, the canonical program `A124297.P2459816482307582739` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A124297 has offset 0).

The definition of A124297 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 240 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A124297.P2459816482307582739

`5*A059727(n)+1`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A124297

/-- `5*A059727(n)+1` -/
def P2459816482307582739.Spec : Prop :=
  ∀ n, P2459816482307582739.a n = A124297 n

theorem P2459816482307582739.correct : P2459816482307582739.Spec := by
  intro n
  simp only [A124297]

end A124297

/-! ## A124297.P12814883480585780058

`10*A033192(n)+1`
-/

namespace A124297.P12814883480585780058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  10 * A033192 n + 1

end

end A124297.P12814883480585780058

namespace A124297

/-- `10*A033192(n)+1` -/
def P12814883480585780058.Spec : Prop :=
  ∀ n, P12814883480585780058.a n = A124297 n

end A124297

/-! ## A124297.P9593122452907475475

`10*C(A001611(n), 2)+1`
-/

namespace A124297.P9593122452907475475
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10 * Nat.choose (A001611 n).toNat 2 + 1

end

end A124297.P9593122452907475475

namespace A124297

/-- `10*C(A001611(n), 2)+1` -/
def P9593122452907475475.Spec : Prop :=
  ∀ n, (P9593122452907475475.a n : ℤ) = A124297 n

theorem P9593122452907475475.correct : P9593122452907475475.Spec := by
  intro n
  simp only [A124297, Nat.add_sub_cancel, A124297.P9593122452907475475.a, A124297.P2459816482307582739.a, A001611, A001611.P2764665205649475385.a, A059727, A059727.P9881445159819085903.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A124297

/-! ## A124297.P13769241302127187870

`10*C(A000045(n)+1, 2)+1`
-/

namespace A124297.P13769241302127187870
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10 * Nat.choose (A000045 n + 1).toNat 2 + 1

end

end A124297.P13769241302127187870

namespace A124297

/-- `10*C(A000045(n)+1, 2)+1` -/
def P13769241302127187870.Spec : Prop :=
  ∀ n, (P13769241302127187870.a n : ℤ) = A124297 n

end A124297

/-! ## A124297.P15210408675390311298

`10*C(Δ[A000071(n+1)]+1, 2)+1`
-/

namespace A124297.P15210408675390311298
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000071 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10 * Nat.choose (f1 (n + 1) - f1 n + 1).toNat 2 + 1

end

end A124297.P15210408675390311298

namespace A124297

/-- `10*C(Δ[A000071(n+1)]+1, 2)+1` -/
def P15210408675390311298.Spec : Prop :=
  ∀ n, (P15210408675390311298.a n : ℤ) = A124297 n

end A124297

/-! ## A124297.P17501417011887736708

`A124296(n)+A022093(n)`
-/

namespace A124297.P17501417011887736708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124296 n + A022093 n

end

end A124297.P17501417011887736708

namespace A124297

/-- `A124296(n)+A022093(n)` -/
def P17501417011887736708.Spec : Prop :=
  ∀ n, P17501417011887736708.a n = A124297 n

end A124297

/-! ## A124297.P17514079770515598113

`A059727(n)+A001588(n)²`
-/

namespace A124297.P17514079770515598113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059727 n + A001588 n ^ 2

end

end A124297.P17514079770515598113

namespace A124297

/-- `A059727(n)+A001588(n)²` -/
def P17514079770515598113.Spec : Prop :=
  ∀ n, P17514079770515598113.a n = A124297 n

end A124297

/-! ## A124297.P16137752574718956585

`A001611(n)*A022088(n)+1`
-/

namespace A124297.P16137752574718956585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001611 n * A022088 n + 1

end

end A124297.P16137752574718956585

namespace A124297

/-- `A001611(n)*A022088(n)+1` -/
def P16137752574718956585.Spec : Prop :=
  ∀ n, P16137752574718956585.a n = A124297 n

end A124297

/-! ## A124297.P17951150025242440394

`5*A000045(n)*A001611(n)+1`
-/

namespace A124297.P17951150025242440394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * (A000045 n * A001611 n) + 1

end

end A124297.P17951150025242440394

namespace A124297

/-- `5*A000045(n)*A001611(n)+1` -/
def P17951150025242440394.Spec : Prop :=
  ∀ n, P17951150025242440394.a n = A124297 n

end A124297

