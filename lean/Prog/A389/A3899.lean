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
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C036
import Seq.B000.C038
import Seq.B000.C039
import Seq.B000.C041
import Seq.B000.C043
import Seq.B000.C044
import Seq.B000.C046
import Seq.B000.C048
import Seq.B000.C050
import Seq.B000.C051
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C010
import Seq.B001.C011
import Seq.B001.C012
import Seq.B001.C013
import Seq.B001.C014
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C005
import Seq.B002.C006
import Seq.B002.C007
import Seq.B002.C008
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C003
import Seq.B003.C004
import Seq.B003.C005
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B004.C003
import Seq.B004.C004
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
import Seq.B006.C000
import Seq.B006.C001
import Seq.B006.C002
import Seq.B007.C000
import Seq.B007.C001
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
import Seq.Opaque.C024
import SequenceMachineLib.Triangle

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A389900: a(n) = A126760(A126760(n)).

The programs for A389900, there is no canonical definition to state claims against.
-/

/-! ## A389900.P3874583654126070722

`A126760(A126760(n))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A389900.P3874583654126070722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126760 (A126760 n).toNat

end

end A389900.P3874583654126070722

/-! ## A389900.P6100075251108505620

`A126759(A126759(n)-1)-1`
-/

namespace A389900.P6100075251108505620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126759 (A126759 n - 1).toNat - 1

end

end A389900.P6100075251108505620

/-! ## A389900.P6258443704211416495

`∑{d}[∑{d}[n, A347233(#)], A347233(#)]`
-/

namespace A389900.P6258443704211416495
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n), A347233 d

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A347233 d

end

end A389900.P6258443704211416495

/-! ## A389900.P10694510163892587643

`A254048(2*A254048(2*n))`
-/

namespace A389900.P10694510163892587643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254048 (2 * A254048 (2 * n)).toNat

end

end A389900.P10694510163892587643

/-! ## A389900.P5126903901394978005

`∑{d}[A359165(A004277(n)), A347233(#)]`
-/

namespace A389900.P5126903901394978005
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359165 (A004277 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A347233 d

end

end A389900.P5126903901394978005

/-! ## A389900.P11433584266375981752

`∑{d}[A359165(A008486(n)), A347233(#)]`
-/

namespace A389900.P11433584266375981752
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359165 (A008486 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A347233 d

end

end A389900.P11433584266375981752

/-!
# A389901: Lexicographically earliest infinite sequence such that a(i) = a(j) => A007814(A126760(i)) = A007814(A126760(j)) and A007949(A126760(i)) = A007949(A126760(j)) for all i, j >= 1.

The programs for A389901, the canonical program `A389901.P6742446286035318243` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A389901 has offset 1).

The definition of A389901 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A389901.P11311951582731716504

`A322026(A126760(n+1))`
-/

namespace A389901.P11311951582731716504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322026 (A126760 (n + 1)).toNat

end

end A389901.P11311951582731716504

namespace A389901

/-- `A322026(A126760(n+1))` -/
def P11311951582731716504.Spec : Prop :=
  ∀ n, P11311951582731716504.a n = A389901 (n + 1)

end A389901

/-! ## A389901.P7145724724424943524

`A322026(A126759(1+n)-1)`
-/

namespace A389901.P7145724724424943524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322026 (A126759 (1 + n) - 1).toNat

end

end A389901.P7145724724424943524

namespace A389901

/-- `A322026(A126759(1+n)-1)` -/
def P7145724724424943524.Spec : Prop :=
  ∀ n, P7145724724424943524.a n = A389901 (n + 1)

end A389901

/-! ## A389901.P6742446286035318243

`A322026(A253887(A003602(n+1)))`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A389901

/-- `A322026(A253887(A003602(n+1)))` -/
def P6742446286035318243.Spec : Prop :=
  ∀ n, P6742446286035318243.a n = A389901 (n + 1)

theorem P6742446286035318243.correct : P6742446286035318243.Spec := by
  intro n
  simp only [A389901, Nat.add_sub_cancel]

end A389901

/-! ## A389901.P5350243861246375886

`A322026(A323882(n+1)-A323881(n+1))`
-/

namespace A389901.P5350243861246375886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322026 (A323882 (n + 1) - A323881 (n + 1)).toNat

end

end A389901.P5350243861246375886

namespace A389901

/-- `A322026(A323882(n+1)-A323881(n+1))` -/
def P5350243861246375886.Spec : Prop :=
  ∀ n, P5350243861246375886.a n = A389901 (n + 1)

end A389901

/-! ## A389901.P18390707526974650845

`A322026(A254048(2*(n+1)))`
-/

namespace A389901.P18390707526974650845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322026 (A254048 (2 * (n + 1))).toNat

end

end A389901.P18390707526974650845

namespace A389901

/-- `A322026(A254048(2*(n+1)))` -/
def P18390707526974650845.Spec : Prop :=
  ∀ n, P18390707526974650845.a n = A389901 (n + 1)

end A389901

/-! ## A389901.P12571315467489489092

`A322026(A359165(2*(n+1)))`
-/

namespace A389901.P12571315467489489092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322026 (A359165 (2 * (n + 1))).toNat

end

end A389901.P12571315467489489092

namespace A389901

/-- `A322026(A359165(2*(n+1)))` -/
def P12571315467489489092.Spec : Prop :=
  ∀ n, P12571315467489489092.a n = A389901 (n + 1)

end A389901

/-!
# A389902: Lexicographically earliest infinite sequence such that a(i) = a(j) => A343029(A025480(i)) = A343029(A025480(j)) and A343030(A025480(i)) = A343030(A025480(j)) for all i, j >= 0.

The programs for A389902, the canonical program `A389902.P1328635243683320513` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A389902 has offset 0).

The definition of A389902 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A361020, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A389902.P1328635243683320513

`A361020(A025480(n))`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A389902

/-- `A361020(A025480(n))` -/
def P1328635243683320513.Spec : Prop :=
  ∀ n, P1328635243683320513.a n = A389902 n

theorem P1328635243683320513.correct : P1328635243683320513.Spec := by
  intro n
  simp only [A389902]

end A389902

/-! ## A389902.P11066635648867012311

`A361020(floor(n/(xor(n, n+1)+1)))`
-/

namespace A389902.P11066635648867012311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361020 ⌊(n : ℚ) / (Nat.xor n (n + 1) + 1 : ℚ)⌋.toNat

end

end A389902.P11066635648867012311

namespace A389902

/-- `A361020(floor(n/(xor(n, n+1)+1)))` -/
def P11066635648867012311.Spec : Prop :=
  ∀ n, P11066635648867012311.a n = A389902 n

end A389902

/-! ## A389902.P9151812562522156417

`A361020(2*floor(n/2^val(n+1, 2)))`
-/

namespace A389902.P9151812562522156417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361020 (2 * ⌊(n : ℚ) / (2 ^ SequenceMachineLib.valuation (n + 1) 2 : ℚ)⌋).toNat

end

end A389902.P9151812562522156417

namespace A389902

/-- `A361020(2*floor(n/2^val(n+1, 2)))` -/
def P9151812562522156417.Spec : Prop :=
  ∀ n, P9151812562522156417.a n = A389902 n

end A389902

/-! ## A389902.P3354254610524519946

`A361020(floor(n/2^val(n+1, 2))/2)`
-/

namespace A389902.P3354254610524519946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361020 (SequenceMachineLib.roundAway ((⌊(n : ℚ) / (2 ^ SequenceMachineLib.valuation (n + 1) 2 : ℚ)⌋ : ℚ) / 2)).toNat

end

end A389902.P3354254610524519946

namespace A389902

/-- `A361020(floor(n/2^val(n+1, 2))/2)` -/
def P3354254610524519946.Spec : Prop :=
  ∀ n, P3354254610524519946.a n = A389902 n

end A389902

/-! ## A389902.P7533311230254435894

`A361020(((n+1)/2^val(n+1, 2)+1)/2-1)`
-/

namespace A389902.P7533311230254435894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361020 (SequenceMachineLib.roundAway (((n + 1 : ℚ) / (2 ^ SequenceMachineLib.valuation (n + 1) 2 : ℚ) + 1) / 2 - 1)).toNat

end

end A389902.P7533311230254435894

namespace A389902

/-- `A361020(((n+1)/2^val(n+1, 2)+1)/2-1)` -/
def P7533311230254435894.Spec : Prop :=
  ∀ n, P7533311230254435894.a n = A389902 n

end A389902

/-! ## A389902.P3238356508157151841

`A361020(col(A075301(n)))`
-/

namespace A389902.P3238356508157151841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361020 (SequenceMachineLib.triCol (A075301 n).toNat)

end

end A389902.P3238356508157151841

namespace A389902

/-- `A361020(col(A075301(n)))` -/
def P3238356508157151841.Spec : Prop :=
  ∀ n, P3238356508157151841.a n = A389902 n

end A389902

/-! ## A389902.P16877906857268623888

`A361020(A003602(1+n)-1)`
-/

namespace A389902.P16877906857268623888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361020 (A003602 (1 + n) - 1).toNat

end

end A389902.P16877906857268623888

namespace A389902

/-- `A361020(A003602(1+n)-1)` -/
def P16877906857268623888.Spec : Prop :=
  ∀ n, P16877906857268623888.a n = A389902 n

end A389902

/-! ## A389902.P10780226753407005051

`A361020(A271519(n+1)-A007814(n+1))`
-/

namespace A389902.P10780226753407005051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361020 (A271519 (n + 1) - A007814 (n + 1)).toNat

end

end A389902.P10780226753407005051

namespace A389902

/-- `A361020(A271519(n+1)-A007814(n+1))` -/
def P10780226753407005051.Spec : Prop :=
  ∀ n, P10780226753407005051.a n = A389902 n

end A389902

/-! ## A389902.P13399487907751472981

`A361020(2*(n+1))-(A343030(n)+A343029(2*n+3))`
-/

namespace A389902.P13399487907751472981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361020 (2 * (n + 1)) - (A343030 n + A343029 (2 * n + 3))

end

end A389902.P13399487907751472981

namespace A389902

/-- `A361020(2*(n+1))-(A343030(n)+A343029(2*n+3))` -/
def P13399487907751472981.Spec : Prop :=
  ∀ n, P13399487907751472981.a n = A389902 n

end A389902

/-!
# A389903: a(n) = min(n, A059893(n)), where A059893 reverses the order of all but the most significant bit in binary expansion of n.

The programs for A389903, the canonical program `A389903.P8692946444750893676` is in `Seq.B006.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A389903 has offset 1).

The definition of A389903 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A059893, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A389903.P8692946444750893676

`min(n+1, A059893(n+1))`

The canonical program, it is in `Seq.B006.C002`.
-/

namespace A389903

/-- `min(n+1, A059893(n+1))` -/
def P8692946444750893676.Spec : Prop :=
  ∀ n, P8692946444750893676.a n = A389903 (n + 1)

theorem P8692946444750893676.correct : P8692946444750893676.Spec := by
  intro n
  simp only [A389903, Nat.add_sub_cancel]

end A389903

/-! ## A389903.P3903491267318934902

`floor(A325401(2*n+3)/2)`
-/

namespace A389903.P3903491267318934902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A325401 (2 * n + 3) : ℚ) / 2⌋

end

end A389903.P3903491267318934902

namespace A389903

/-- `floor(A325401(2*n+3)/2)` -/
def P3903491267318934902.Spec : Prop :=
  ∀ n, P3903491267318934902.a n = A389903 (n + 1)

end A389903

/-! ## A389903.P3989848086721218346

`A004526(A325401(2*n+3))`
-/

namespace A389903.P3989848086721218346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A325401 (2 * n + 3)).toNat

end

end A389903.P3989848086721218346

namespace A389903

/-- `A004526(A325401(2*n+3))` -/
def P3989848086721218346.Spec : Prop :=
  ∀ n, P3989848086721218346.a n = A389903 (n + 1)

end A389903

/-! ## A389903.P14749909182392904448

`A327193(A062383(n)*A325401(2*n+3))`
-/

namespace A389903.P14749909182392904448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327193 (A062383 n * A325401 (2 * n + 3)).toNat

end

end A389903.P14749909182392904448

namespace A389903

/-- `A327193(A062383(n)*A325401(2*n+3))` -/
def P14749909182392904448.Spec : Prop :=
  ∀ n, P14749909182392904448.a n = A389903 (n + 1)

end A389903

/-! ## A389903.P15899426933601749281

`A327193(A053644(2*(n+1))*A325401(2*n+3))`
-/

namespace A389903.P15899426933601749281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327193 (A053644 (2 * (n + 1)) * A325401 (2 * n + 3)).toNat

end

end A389903.P15899426933601749281

namespace A389903

/-- `A327193(A053644(2*(n+1))*A325401(2*n+3))` -/
def P15899426933601749281.Spec : Prop :=
  ∀ n, P15899426933601749281.a n = A389903 (n + 1)

end A389903

/-!
# A389904: a(n) = min(n, A059894(n)).

The programs for A389904, the canonical program `A389904.P15776582389617753375` is in `Seq.B007.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A389904 has offset 1).

The definition of A389904 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A059894, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A389904.P15776582389617753375

`min(n+1, A059894(n+1))`

The canonical program, it is in `Seq.B007.C001`.
-/

namespace A389904

/-- `min(n+1, A059894(n+1))` -/
def P15776582389617753375.Spec : Prop :=
  ∀ n, P15776582389617753375.a n = A389904 (n + 1)

theorem P15776582389617753375.correct : P15776582389617753375.Spec := by
  intro n
  simp only [A389904, Nat.add_sub_cancel]

end A389904

/-! ## A389904.P5741389505773088527

`A389908(2*(n+1))/2`
-/

namespace A389904.P5741389505773088527
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A389908 (2 * (n + 1)) : ℚ) / 2

end

end A389904.P5741389505773088527

namespace A389904

/-- `A389908(2*(n+1))/2` -/
def P5741389505773088527.Spec : Prop :=
  ∀ n, P5741389505773088527.a n = (A389904 (n + 1) : ℚ)

end A389904

/-!
# A389905: a(n) = 1 if n is neither squarefree nor powerful, otherwise 0.

The programs for A389905, the canonical program `A389905.P14127833197963390982` is in `Seq.B006.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A389905 has offset 1).

The definition of A389905 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A389905.P14127833197963390982

`A107078(n+1)*(1-A112526(n+1))`

The canonical program, it is in `Seq.B006.C002`.
-/

namespace A389905

/-- `A107078(n+1)*(1-A112526(n+1))` -/
def P14127833197963390982.Spec : Prop :=
  ∀ n, P14127833197963390982.a n = A389905 (n + 1)

theorem P14127833197963390982.correct : P14127833197963390982.Spec := by
  intro n
  simp only [A389905, Nat.add_sub_cancel]

end A389905

/-! ## A389905.P9412324137615526782

`char[A332785(1+n)-1]`
-/

namespace A389905.P9412324137615526782
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332785 (1 + n) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A389905.P9412324137615526782

namespace A389905

/-- `char[A332785(1+n)-1]` -/
def P9412324137615526782.Spec : Prop :=
  ∀ n, (P9412324137615526782.a n : ℤ) = A389905 (n + 1)

end A389905

/-! ## A389905.P7921897421921745

`char[A397128(n+1)-1]`
-/

namespace A389905.P7921897421921745
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A397128 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A389905.P7921897421921745

namespace A389905

/-- `char[A397128(n+1)-1]` -/
def P7921897421921745.Spec : Prop :=
  ∀ n, (P7921897421921745.a n : ℤ) = A389905 (n + 1)

end A389905

/-! ## A389905.P10285701921237424534

`(A008683(n+1)^∑{e}[n+1, floor(1/#)]+1)%2`
-/

namespace A389905.P10285701921237424534
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((A008683 (n + 1) : ℚ) ^ (∑ p ∈ Nat.primeFactors (f1 n), ⌊1 / (Nat.factorization (f1 n) p : ℚ)⌋ : ℤ) + 1)) 2

end

end A389905.P10285701921237424534

namespace A389905

/-- `(A008683(n+1)^∑{e}[n+1, floor(1/#)]+1)%2` -/
def P10285701921237424534.Spec : Prop :=
  ∀ n, P10285701921237424534.a n = A389905 (n + 1)

end A389905

/-! ## A389905.P3326799326883074145

`A124625(2^∑{e}[n+1, #-1])%∏{p}[n+1, lcm(n+1, #²)/(n+1)]`
-/

namespace A389905.P3326799326883074145
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A124625 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (∑ p ∈ Nat.primeFactors (f1 n), ((Nat.factorization (f1 n) p : ℤ) - 1) : ℤ))).toNat) (SequenceMachineLib.roundAway (∏ p ∈ Nat.primeFactors (f2 n), (Nat.lcm (n + 1) (p ^ 2) : ℚ) / (n + 1 : ℚ)))

end

end A389905.P3326799326883074145

namespace A389905

/-- `A124625(2^∑{e}[n+1, #-1])%∏{p}[n+1, lcm(n+1, #²)/(n+1)]` -/
def P3326799326883074145.Spec : Prop :=
  ∀ n, P3326799326883074145.a n = A389905 (n + 1)

end A389905

/-! ## A389905.P10238706549053565414

`A083856(A086971(n+1))`
-/

namespace A389905.P10238706549053565414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083856 (A086971 (n + 1)).toNat

end

end A389905.P10238706549053565414

namespace A389905

/-- `A083856(A086971(n+1))` -/
def P10238706549053565414.Spec : Prop :=
  ∀ n, P10238706549053565414.a n = A389905 (n + 1)

end A389905

/-! ## A389905.P13027127316490748869

`and(A005183(n), A375933(n+1))`
-/

namespace A389905.P13027127316490748869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A005183 n) (A375933 (n + 1))

end

end A389905.P13027127316490748869

namespace A389905

/-- `and(A005183(n), A375933(n+1))` -/
def P13027127316490748869.Spec : Prop :=
  ∀ n, P13027127316490748869.a n = A389905 (n + 1)

end A389905

/-! ## A389905.P13069646866901449764

`and(A000337(n), A375933(n+1))`
-/

namespace A389905.P13069646866901449764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A000337 n) (A375933 (n + 1))

end

end A389905.P13069646866901449764

namespace A389905

/-- `and(A000337(n), A375933(n+1))` -/
def P13069646866901449764.Spec : Prop :=
  ∀ n, P13069646866901449764.a n = A389905 (n + 1)

end A389905

/-! ## A389905.P3476384327960016015

`and(A002064(n), A375933(n+1))`
-/

namespace A389905.P3476384327960016015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A002064 n) (A375933 (n + 1))

end

end A389905.P3476384327960016015

namespace A389905

/-- `and(A002064(n), A375933(n+1))` -/
def P3476384327960016015.Spec : Prop :=
  ∀ n, P3476384327960016015.a n = A389905 (n + 1)

end A389905

/-! ## A389905.P9610948427010073453

`and(A048482(n), A375933(n+1))`
-/

namespace A389905.P9610948427010073453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A048482 n) (A375933 (n + 1))

end

end A389905.P9610948427010073453

namespace A389905

/-- `and(A048482(n), A375933(n+1))` -/
def P9610948427010073453.Spec : Prop :=
  ∀ n, P9610948427010073453.a n = A389905 (n + 1)

end A389905

/-! ## A389905.P4882026125561952150

`and(A006495(n), A375933(n+1))`
-/

namespace A389905.P4882026125561952150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A006495 n) (A375933 (n + 1))

end

end A389905.P4882026125561952150

namespace A389905

/-- `and(A006495(n), A375933(n+1))` -/
def P4882026125561952150.Spec : Prop :=
  ∀ n, P4882026125561952150.a n = A389905 (n + 1)

end A389905

/-! ## A389905.P12041062429479736407

`and(A026396(n), A375933(n+1))`
-/

namespace A389905.P12041062429479736407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A026396 n) (A375933 (n + 1))

end

end A389905.P12041062429479736407

namespace A389905

/-- `and(A026396(n), A375933(n+1))` -/
def P12041062429479736407.Spec : Prop :=
  ∀ n, P12041062429479736407.a n = A389905 (n + 1)

end A389905

/-! ## A389905.P11532575267197433911

`and(A007058(n), A375933(n+1))`
-/

namespace A389905.P11532575267197433911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A007058 n) (A375933 (n + 1))

end

end A389905.P11532575267197433911

namespace A389905

/-- `and(A007058(n), A375933(n+1))` -/
def P11532575267197433911.Spec : Prop :=
  ∀ n, P11532575267197433911.a n = A389905 (n + 1)

end A389905

/-! ## A389905.P6552696999981564008

`and(A019494(n), A375933(n+1))`
-/

namespace A389905.P6552696999981564008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A019494 n) (A375933 (n + 1))

end

end A389905.P6552696999981564008

namespace A389905

/-- `and(A019494(n), A375933(n+1))` -/
def P6552696999981564008.Spec : Prop :=
  ∀ n, P6552696999981564008.a n = A389905 (n + 1)

end A389905

/-! ## A389905.P8399312776844041380

`and(A026003(n), A375933(n+1))`
-/

namespace A389905.P8399312776844041380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A026003 n) (A375933 (n + 1))

end

end A389905.P8399312776844041380

namespace A389905

/-- `and(A026003(n), A375933(n+1))` -/
def P8399312776844041380.Spec : Prop :=
  ∀ n, P8399312776844041380.a n = A389905 (n + 1)

end A389905

/-! ## A389905.P18430954200632829640

`and(A015118(n), A375933(n+1))`
-/

namespace A389905.P18430954200632829640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A015118 n) (A375933 (n + 1))

end

end A389905.P18430954200632829640

namespace A389905

/-- `and(A015118(n), A375933(n+1))` -/
def P18430954200632829640.Spec : Prop :=
  ∀ n, P18430954200632829640.a n = A389905 (n + 1)

end A389905

/-! ## A389905.P17627558299952632987

`and(A026567(n), A375933(n+1))`
-/

namespace A389905.P17627558299952632987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A026567 n) (A375933 (n + 1))

end

end A389905.P17627558299952632987

namespace A389905

/-- `and(A026567(n), A375933(n+1))` -/
def P17627558299952632987.Spec : Prop :=
  ∀ n, P17627558299952632987.a n = A389905 (n + 1)

end A389905

/-! ## A389905.P14013325651616330035

`and(A006131(n), A375933(n+1))`
-/

namespace A389905.P14013325651616330035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A006131 n) (A375933 (n + 1))

end

end A389905.P14013325651616330035

namespace A389905

/-- `and(A006131(n), A375933(n+1))` -/
def P14013325651616330035.Spec : Prop :=
  ∀ n, P14013325651616330035.a n = A389905 (n + 1)

end A389905

/-!
# A389906: a(n) = min(2*n, A003961(n)), where A003961 is fully multiplicative with a(p) = nextprime(p)

The programs for A389906, the canonical program `A389906.P15212015909118646054` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A389906 has offset 1).

The definition of A389906 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003961, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A389906.P15212015909118646054

`min(2*(n+1), A003961(n+1))`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A389906

/-- `min(2*(n+1), A003961(n+1))` -/
def P15212015909118646054.Spec : Prop :=
  ∀ n, P15212015909118646054.a n = A389906 (n + 1)

theorem P15212015909118646054.correct : P15212015909118646054.Spec := by
  intro n
  simp only [A389906, Nat.add_sub_cancel]

end A389906

/-! ## A389906.P12890028282272337683

`min(A003961(n+1), A004277(n+1))`
-/

namespace A389906.P12890028282272337683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  min (A003961 (n + 1)) (A004277 (n + 1))

end

end A389906.P12890028282272337683

namespace A389906

/-- `min(A003961(n+1), A004277(n+1))` -/
def P12890028282272337683.Spec : Prop :=
  ∀ n, P12890028282272337683.a n = A389906 (n + 1)

end A389906

/-! ## A389906.P6675861992606749888

`min(A003961(n+1), A005843(n+1))`
-/

namespace A389906.P6675861992606749888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  min (A003961 (n + 1)) (A005843 (n + 1))

end

end A389906.P6675861992606749888

namespace A389906

/-- `min(A003961(n+1), A005843(n+1))` -/
def P6675861992606749888.Spec : Prop :=
  ∀ n, P6675861992606749888.a n = A389906 (n + 1)

end A389906

/-! ## A389906.P7120884827545003450

`fo[A252463(n+1)-1]+1`
-/

namespace A389906.P7120884827545003450
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252463 (n + 1) - 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (n : ℤ)) 0 + 1

end

end A389906.P7120884827545003450

namespace A389906

/-- `fo[A252463(n+1)-1]+1` -/
def P7120884827545003450.Spec : Prop :=
  ∀ n, (P7120884827545003450.a n : ℤ) = A389906 (n + 1)

end A389906

/-! ## A389906.P17309841259948442124

`A389910(2*(1+n))`
-/

namespace A389906.P17309841259948442124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389910 (2 * (1 + n))

end

end A389906.P17309841259948442124

namespace A389906

/-- `A389910(2*(1+n))` -/
def P17309841259948442124.Spec : Prop :=
  ∀ n, P17309841259948442124.a n = A389906 (n + 1)

end A389906

/-! ## A389906.P8390122892788744285

`lcm(A087960(n), A389910(A003961(n+1)))`
-/

namespace A389906.P8390122892788744285
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A087960 n) (A389910 (A003961 (n + 1)).toNat)

end

end A389906.P8390122892788744285

namespace A389906

/-- `lcm(A087960(n), A389910(A003961(n+1)))` -/
def P8390122892788744285.Spec : Prop :=
  ∀ n, (P8390122892788744285.a n : ℤ) = A389906 (n + 1)

end A389906

/-! ## A389906.P9628657109536496307

`A389910(lcm(2, A045965(n+1))/2)+A000007(n+3)`
-/

namespace A389906.P9628657109536496307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389910 (SequenceMachineLib.roundAway ((Int.lcm 2 (A045965 (n + 1)) : ℚ) / 2)).toNat + A000007 (n + 3)

end

end A389906.P9628657109536496307

namespace A389906

/-- `A389910(lcm(2, A045965(n+1))/2)+A000007(n+3)` -/
def P9628657109536496307.Spec : Prop :=
  ∀ n, P9628657109536496307.a n = A389906 (n + 1)

end A389906

/-! ## A389906.P2246406565258516713

`A389910(A348937(n+1)+A003415(n+1))+A000007(n+3)`
-/

namespace A389906.P2246406565258516713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389910 (A348937 (n + 1) + A003415 (n + 1)).toNat + A000007 (n + 3)

end

end A389906.P2246406565258516713

namespace A389906

/-- `A389910(A348937(n+1)+A003415(n+1))+A000007(n+3)` -/
def P2246406565258516713.Spec : Prop :=
  ∀ n, P2246406565258516713.a n = A389906 (n + 1)

end A389906

/-! ## A389906.P12801024345075043681

`ratio[A389910(2*n)*a(n-1)]` with `a(0)=2, a(1)=2`
-/

namespace A389906.P12801024345075043681
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [2, 2] fun n f1 =>
  A389910 (2 * n) * f1 (n - 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℚ) / (f1 n : ℚ)

end

end A389906.P12801024345075043681

namespace A389906

/-- `ratio[A389910(2*n)*a(n-1)]` -/
def P12801024345075043681.Spec : Prop :=
  ∀ n, P12801024345075043681.a n = (A389906 (n + 1) : ℚ)

end A389906

/-!
# A389907: a(n) = min(n, A054429(n)), where A054429 list each block of 2^n numbers (from 2^n to 2^(n+1) - 1) in reverse order.

The programs for A389907, the canonical program `A389907.P8045381911149998948` is in `Seq.B003.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A389907 has offset 1).

The definition of A389907 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A054429, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A389907.P8045381911149998948

`min(n+1, A054429(n+1))`

The canonical program, it is in `Seq.B003.C005`.
-/

namespace A389907

/-- `min(n+1, A054429(n+1))` -/
def P8045381911149998948.Spec : Prop :=
  ∀ n, P8045381911149998948.a n = A389907 (n + 1)

theorem P8045381911149998948.correct : P8045381911149998948.Spec := by
  intro n
  simp only [A389907, Nat.add_sub_cancel]

end A389907

/-! ## A389907.P12935853797632148945

`A053644(n+1)+A006165(n+1)-A060973(n+2)`
-/

namespace A389907.P12935853797632148945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053644 (n + 1) + A006165 (n + 1) - A060973 (n + 2)

end

end A389907.P12935853797632148945

namespace A389907

/-- `A053644(n+1)+A006165(n+1)-A060973(n+2)` -/
def P12935853797632148945.Spec : Prop :=
  ∀ n, P12935853797632148945.a n = A389907 (n + 1)

end A389907

/-! ## A389907.P16884880499407742639

`A279521(2*(n+1))-A053645(n+1)`
-/

namespace A389907.P16884880499407742639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279521 (2 * (n + 1)) - A053645 (n + 1)

end

end A389907.P16884880499407742639

namespace A389907

/-- `A279521(2*(n+1))-A053645(n+1)` -/
def P16884880499407742639.Spec : Prop :=
  ∀ n, P16884880499407742639.a n = A389907 (n + 1)

end A389907

/-! ## A389907.P361223798941784854

`A279521(2*(n+1))-(A062050(n+1)-1)`
-/

namespace A389907.P361223798941784854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279521 (2 * (n + 1)) - (A062050 (n + 1) - 1)

end

end A389907.P361223798941784854

namespace A389907

/-- `A279521(2*(n+1))-(A062050(n+1)-1)` -/
def P361223798941784854.Spec : Prop :=
  ∀ n, P361223798941784854.a n = A389907 (n + 1)

end A389907

/-! ## A389907.P10019310918653055458

`A279521(2*(n+1))-(n-A035327(n+1))/2`
-/

namespace A389907.P10019310918653055458
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A279521 (2 * (n + 1)) : ℚ) - ((n : ℤ) - A035327 (n + 1) : ℚ) / 2

end

end A389907.P10019310918653055458

namespace A389907

/-- `A279521(2*(n+1))-(n-A035327(n+1))/2` -/
def P10019310918653055458.Spec : Prop :=
  ∀ n, P10019310918653055458.a n = (A389907 (n + 1) : ℚ)

end A389907

/-! ## A389907.P14971960217326767381

`A279521(2*(n+1))-and(n+1, A004754(n+1))`
-/

namespace A389907.P14971960217326767381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279521 (2 * (n + 1)) - Int.land (n + 1 : ℤ) (A004754 (n + 1))

end

end A389907.P14971960217326767381

namespace A389907

/-- `A279521(2*(n+1))-and(n+1, A004754(n+1))` -/
def P14971960217326767381.Spec : Prop :=
  ∀ n, P14971960217326767381.a n = A389907 (n + 1)

end A389907

/-! ## A389907.P7397429447015673006

`A004754(n+1)-A060973(2*n+3)`
-/

namespace A389907.P7397429447015673006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004754 (n + 1) - A060973 (2 * n + 3)

end

end A389907.P7397429447015673006

namespace A389907

/-- `A004754(n+1)-A060973(2*n+3)` -/
def P7397429447015673006.Spec : Prop :=
  ∀ n, P7397429447015673006.a n = A389907 (n + 1)

end A389907

/-! ## A389907.P3660116639416769901

`A035327(3*A053644(n+1)+n+1-A006165(2*n+3))`
-/

namespace A389907.P3660116639416769901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035327 (3 * A053644 (n + 1) + (n + 1 : ℤ) - A006165 (2 * n + 3)).toNat

end

end A389907.P3660116639416769901

namespace A389907

/-- `A035327(3*A053644(n+1)+n+1-A006165(2*n+3))` -/
def P3660116639416769901.Spec : Prop :=
  ∀ n, P3660116639416769901.a n = A389907 (n + 1)

end A389907

/-! ## A389907.P15641433101772938571

`floor(A026741(A065264(2*(n+1)))/2)`
-/

namespace A389907.P15641433101772938571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A026741 (A065264 (2 * (n + 1))).toNat : ℚ) / 2⌋

end

end A389907.P15641433101772938571

namespace A389907

/-- `floor(A026741(A065264(2*(n+1)))/2)` -/
def P15641433101772938571.Spec : Prop :=
  ∀ n, P15641433101772938571.a n = A389907 (n + 1)

end A389907

/-! ## A389907.P13383107205125322733

`A371263(A153775(n+1))`
-/

namespace A389907.P13383107205125322733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371263 (A153775 (n + 1)).toNat

end

end A389907.P13383107205125322733

namespace A389907

/-- `A371263(A153775(n+1))` -/
def P13383107205125322733.Spec : Prop :=
  ∀ n, P13383107205125322733.a n = A389907 (n + 1)

end A389907

/-! ## A389907.P6574549924152325887

`A371256(A191110(n+1))`
-/

namespace A389907.P6574549924152325887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371256 (A191110 (n + 1)).toNat

end

end A389907.P6574549924152325887

namespace A389907

/-- `A371256(A191110(n+1))` -/
def P6574549924152325887.Spec : Prop :=
  ∀ n, P6574549924152325887.a n = A389907 (n + 1)

end A389907

/-!
# A389908: a(n) = min(n, A056539(n)), where A056539 reverses the bits in binary expansion of n and also complements them (0->1, 1->0) if n is even.

The programs for A389908, the canonical program `A389908.P2197151231066400365` is in `Seq.B005.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A389908 has offset 1).

The definition of A389908 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A056539, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A389908.P2197151231066400365

`min(n+1, A056539(n+1))`

The canonical program, it is in `Seq.B005.C002`.
-/

namespace A389908

/-- `min(n+1, A056539(n+1))` -/
def P2197151231066400365.Spec : Prop :=
  ∀ n, P2197151231066400365.a n = A389908 (n + 1)

theorem P2197151231066400365.correct : P2197151231066400365.Spec := by
  intro n
  simp only [A389908, Nat.add_sub_cancel]

end A389908

/-!
# A389909: a(n) = 2*A064989(n) for odd n, a(n) = A003961(n/2) for even n, where A003961 is fully multiplicative with a(p) = nextprime(p), and A064989 is its left inverse.

The programs for A389909, there is no canonical definition to state claims against.
-/

/-! ## A389909.P6966489908865523339

`A163511(xor(1, A243071(n+1)))`
-/

namespace A389909.P6966489908865523339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163511 (Int.xor 1 (A243071 (n + 1))).toNat

end

end A389909.P6966489908865523339

/-! ## A389909.P14519331487006620406

`A243353(xor(1, A243354(n+1)))`
-/

namespace A389909.P14519331487006620406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243353 (Int.xor 1 (A243354 (n + 1))).toNat

end

end A389909.P14519331487006620406

/-!
# A389910: a(n) = min(n, A389909(n)).

The programs for A389910, the canonical program `A389910.P3820855388453809546` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A389910 has offset 1).

The definition of A389910 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A389910.P17659676894385073056

`min(n+1, A389909(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A389910.P17659676894385073056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  min (n + 1 : ℤ) (A389909 (n + 1))

end

end A389910.P17659676894385073056

namespace A389910

/-- `min(n+1, A389909(n+1))` -/
def P17659676894385073056.Spec : Prop :=
  ∀ n, P17659676894385073056.a n = A389910 (n + 1)

end A389910

/-! ## A389910.P3820855388453809546

`A389906(A252463(n+1))`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A389910

/-- `A389906(A252463(n+1))` -/
def P3820855388453809546.Spec : Prop :=
  ∀ n, P3820855388453809546.a n = A389910 (n + 1)

theorem P3820855388453809546.correct : P3820855388453809546.Spec := by
  intro n
  simp only [A389910, Nat.add_sub_cancel]

end A389910

/-!
# A389911: a(n) = 1 if a polynomial p(n,x) with nonnegative integer coefficients determined by the prime factorization of n is irreducible, otherwise 0.

The programs for A389911, there is no canonical definition to state claims against.
-/

/-! ## A389911.P16513780717929009481

`Δ[fp[A206284(n+1)]]`
-/

namespace A389911.P16513780717929009481
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206284 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (n : ℤ) < f2 j) 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A389911.P16513780717929009481

/-! ## A389911.P14438025566490919621

`char[A206284(1+n)-1]`
-/

namespace A389911.P14438025566490919621
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206284 (1 + n) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A389911.P14438025566490919621

/-! ## A389911.P2692718217908417478

`char[eq[1, A277322(1+n)]]`
-/

namespace A389911.P2692718217908417478
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277322 (1 + n)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A389911.P2692718217908417478

/-! ## A389911.P11499304325667824947

`A257000(2*A277322(n+1))`
-/

namespace A389911.P11499304325667824947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257000 (2 * A277322 (n + 1)).toNat

end

end A389911.P11499304325667824947

/-! ## A389911.P17813146975258376964

`A002262(C(2, A277322(n+1)))`
-/

namespace A389911.P17813146975258376964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 (Nat.choose 2 (A277322 (n + 1)).toNat)

end

end A389911.P17813146975258376964

/-! ## A389911.P12429500655407867542

`A049600(C(2, A277322(n+1)))`
-/

namespace A389911.P12429500655407867542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049600 (Nat.choose 2 (A277322 (n + 1)).toNat)

end

end A389911.P12429500655407867542

/-! ## A389911.P4104467142251392383

`A364914(C(2, A277322(n+1)))`
-/

namespace A389911.P4104467142251392383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364914 (Nat.choose 2 (A277322 (n + 1)).toNat)

end

end A389911.P4104467142251392383

/-! ## A389911.P13661910736945850193

`A000007(xor(1, A277322(n+1)))`
-/

namespace A389911.P13661910736945850193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (Int.xor 1 (A277322 (n + 1))).toNat

end

end A389911.P13661910736945850193

/-! ## A389911.P15160614606997607069

`char[eq[2, A284010(n+1)]]`
-/

namespace A389911.P15160614606997607069
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284010 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A389911.P15160614606997607069

/-! ## A389911.P14912593658227444048

`A032741(C(3, A284010(n+1)))`
-/

namespace A389911.P14912593658227444048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 (Nat.choose 3 (A284010 (n + 1)).toNat)

end

end A389911.P14912593658227444048

/-! ## A389911.P6947241978678681181

`A167392(A277322(n+1)^2)`
-/

namespace A389911.P6947241978678681181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167392 (A277322 (n + 1) ^ 2).toNat

end

end A389911.P6947241978678681181

/-!
# A389912: Prime-factorization representation of irreducible (non-constant) Stern-polynomials B(m,x), listed in ascending order.

The programs for A389912, there is no canonical definition to state claims against.
-/

/-! ## A389912.P1041888407786212505

`filter[A260442(n), A389911(#)]`
-/

namespace A389912.P1041888407786212505
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260442 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A389911 (f1 j).toNat = 1) n)

end

end A389912.P1041888407786212505

/-! ## A389912.P13553450612561011779

`filter[A260442(n), A389913(#)]`
-/

namespace A389912.P13553450612561011779
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260442 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A389913 (f1 j).toNat = 1) n)

end

end A389912.P13553450612561011779

/-! ## A389912.P9639587753326771240

`filter[A206284(n+1), A389449(#)]`
-/

namespace A389912.P9639587753326771240
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206284 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A389449 (f1 j).toNat = 1) n)

end

end A389912.P9639587753326771240

/-! ## A389912.P481713180283745377

`filter[A389914(n+1), A389449(#)]`
-/

namespace A389912.P481713180283745377
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389914 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A389449 (f1 j).toNat = 1) n)

end

end A389912.P481713180283745377

/-! ## A389912.P17059129587017032750

`∩[A206284(n+1), A260442(n)]`
-/

namespace A389912.P17059129587017032750
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206284 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260442 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A389912.P17059129587017032750

/-!
# A389913: a(n) = 1 if A048675(n) is in A186891\{1}, otherwise 0.

The programs for A389913, there is no canonical definition to state claims against.
-/

/-! ## A389913.P10318825963699896724

`A389911(A260443(A048675(n+1)))`
-/

namespace A389913.P10318825963699896724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389911 (A260443 (A048675 (n + 1)).toNat).toNat

end

end A389913.P10318825963699896724

/-! ## A389913.P14152120700115654608

`Δ[fp[A389914(n+1)]]`
-/

namespace A389913.P14152120700115654608
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389914 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (n : ℤ) < f2 j) 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A389913.P14152120700115654608

/-! ## A389913.P3598575756519586745

`A316828(A000203(2*(n+1))*A082795(2*(n+2)))`
-/

namespace A389913.P3598575756519586745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316828 (A000203 (2 * (n + 1)) * A082795 (2 * (n + 2))).toNat

end

end A389913.P3598575756519586745

/-! ## A389913.P7702764333563354458

`A302048(A048675(n+1)²)`
-/

namespace A389913.P7702764333563354458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302048 (A048675 (n + 1) ^ 2).toNat

end

end A389913.P7702764333563354458

/-! ## A389913.P11090833660095820722

`A343016(3^∑{e}[A048675(n+1), #])`
-/

namespace A389913.P11090833660095820722
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048675 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343016 (3 ^ (∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p))

end

end A389913.P11090833660095820722

/-!
# A389914: Numbers k such that A048675(k) is in A186891\{1}.

The programs for A389914, there is no canonical definition to state claims against.
-/

/-! ## A389914.P9263764363107668956

`record[A389913(n+3)*n+3]`
-/

namespace A389914.P9263764363107668956
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389913 (n + 3) * (n : ℤ) + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A389914.P9263764363107668956

/-! ## A389914.P6542068309806285858

`filter[A344180(n), A389913(#)]`
-/

namespace A389914.P6542068309806285858
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344180 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A389913 (f1 j).toNat = 1) n)

end

end A389914.P6542068309806285858

/-! ## A389914.P1719767650855028868

`lt[0, A389913(n+1)]+1`
-/

namespace A389914.P1719767650855028868
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389913 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A389914.P1719767650855028868

/-! ## A389914.P12322064178830401739

`filter[A305980(n+1), A389913(#)]`
-/

namespace A389914.P12322064178830401739
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305980 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A389913 (f1 j).toNat = 1) n)

end

end A389914.P12322064178830401739

/-! ## A389914.P15346109085659375741

`filter[A092486(n), A389913(#)]`
-/

namespace A389914.P15346109085659375741
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092486 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A389913 (f1 j).toNat = 1) n)

end

end A389914.P15346109085659375741

/-! ## A389914.P14257370048963067306

`filter[A092535(n), A389913(#)]`
-/

namespace A389914.P14257370048963067306
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092535 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A389913 (f1 j).toNat = 1) n)

end

end A389914.P14257370048963067306

/-! ## A389914.P6590173235428687200

`filter[A051755(n+2), A389913(#)]`
-/

namespace A389914.P6590173235428687200
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051755 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A389913 (f1 j).toNat = 1) n)

end

end A389914.P6590173235428687200

/-! ## A389914.P11184260416945757170

`filter[A004279(n), A389913(#)]`
-/

namespace A389914.P11184260416945757170
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004279 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A389913 (f1 j).toNat = 1) n)

end

end A389914.P11184260416945757170

/-! ## A389914.P12449489298040536616

`filter[A004271(n+1), A389913(#)]`
-/

namespace A389914.P12449489298040536616
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004271 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A389913 (f1 j).toNat = 1) n)

end

end A389914.P12449489298040536616

/-! ## A389914.P8388635892343706005

`filter[A004278(n+1), A389913(#)]`
-/

namespace A389914.P8388635892343706005
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004278 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A389913 (f1 j).toNat = 1) n)

end

end A389914.P8388635892343706005

/-! ## A389914.P7611164803551077246

`filter[A058992(n+2), A389913(#)]`
-/

namespace A389914.P7611164803551077246
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058992 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A389913 (f1 j).toNat = 1) n)

end

end A389914.P7611164803551077246

/-! ## A389914.P5618950230485701695

`filter[A004272(n+1), A389913(#)]`
-/

namespace A389914.P5618950230485701695
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004272 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A389913 (f1 j).toNat = 1) n)

end

end A389914.P5618950230485701695

/-! ## A389914.P16738803077298315433

`filter[A257282(n+2), A389913(#)]`
-/

namespace A389914.P16738803077298315433
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257282 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A389913 (f1 j).toNat = 1) n)

end

end A389914.P16738803077298315433

/-! ## A389914.P4228756268828253749

`filter[A171086(n+1), A389913(#)]`
-/

namespace A389914.P4228756268828253749
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171086 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A389913 (f1 j).toNat = 1) n)

end

end A389914.P4228756268828253749

/-! ## A389914.P2832415749772329976

`filter[A225850(n+1), A389913(#)]`
-/

namespace A389914.P2832415749772329976
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225850 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A389913 (f1 j).toNat = 1) n)

end

end A389914.P2832415749772329976

/-! ## A389914.P210602695547262678

`filter[A237058(n+1), A389913(#)]`
-/

namespace A389914.P210602695547262678
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237058 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A389913 (f1 j).toNat = 1) n)

end

end A389914.P210602695547262678

/-! ## A389914.P15121597256869717299

`filter[A066250(n+1), A389913(#)]`
-/

namespace A389914.P15121597256869717299
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066250 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A389913 (f1 j).toNat = 1) n)

end

end A389914.P15121597256869717299

/-! ## A389914.P1834196859296061208

`filter[A073897(n+1), A389913(#)]`
-/

namespace A389914.P1834196859296061208
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073897 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A389913 (f1 j).toNat = 1) n)

end

end A389914.P1834196859296061208

/-! ## A389914.P4281199645347752006

`filter[A030173(n+1), A389913(#)]`
-/

namespace A389914.P4281199645347752006
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030173 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A389913 (f1 j).toNat = 1) n)

end

end A389914.P4281199645347752006

/-! ## A389914.P2716753233035166299

`filter[A106092(n+1), A389913(#)]`
-/

namespace A389914.P2716753233035166299
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106092 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A389913 (f1 j).toNat = 1) n)

end

end A389914.P2716753233035166299

/-!
# A389916: Numbers m such that the Stern polynomial B(m,x) is reducible.

The programs for A389916, there is no canonical definition to state claims against.
-/

/-! ## A389916.P13627587523525093928

`lt[1, A277013(1+n)]+1`
-/

namespace A389916.P13627587523525093928
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277013 (1 + n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A389916.P13627587523525093928

/-! ## A389916.P12359663554330544093

`comp[A186891(n+1)-1]+1`
-/

namespace A389916.P12359663554330544093
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186891 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A389916.P12359663554330544093

/-! ## A389916.P4207165180295209812

`comp[n*A283991(n+1)]+1`
-/

namespace A389916.P4207165180295209812
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A283991 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A389916.P4207165180295209812

/-! ## A389916.P348949104768355268

`eq[0, A283991(abs(1-n)+2)]+1`
-/

namespace A389916.P348949104768355268
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283991 (|1 - (n : ℤ)| + 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A389916.P348949104768355268

/-! ## A389916.P1717628694449027545

`∩[A002808(n+1), comp[A186891(n+1)]]`
-/

namespace A389916.P1717628694449027545
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002808 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186891 (n + 1)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = x) n

end

end A389916.P1717628694449027545

/-! ## A389916.P9328538022878270891

`fp[A283993(n+1)]+1`
-/

namespace A389916.P9328538022878270891
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283993 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (n : ℤ) < f1 j) 0 + 1

end

end A389916.P9328538022878270891

/-! ## A389916.P14142898751052420444

`lt[1, A277013(A028310(n))]`
-/

namespace A389916.P14142898751052420444
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277013 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A389916.P14142898751052420444

/-! ## A389916.P15593312222265334051

`A020725(eq[A283991(2*(n+1)), A283991(n+1)])`
-/

namespace A389916.P15593312222265334051
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283991 (2 * (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283991 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A389916.P15593312222265334051

/-! ## A389916.P10631882561160426564

`comp[A023443(A186891(n+1))]+1`
-/

namespace A389916.P10631882561160426564
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A186891 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A389916.P10631882561160426564

/-! ## A389916.P9791609262474004979

`lt[1, A277027(n+1)]+1`
-/

namespace A389916.P9791609262474004979
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277027 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A389916.P9791609262474004979

/-! ## A389916.P17319387455413024181

`∪[A289438(3*(n+2))+A289438(3*(n+2)), A389917(n+1)]`
-/

namespace A389916.P17319387455413024181
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289438 (3 * (n + 2)) + A289438 (3 * (n + 2))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389917 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A389916.P17319387455413024181

/-! ## A389916.P5920488280427101062

`lt[A283991(A233583(n+1)), 1]`
-/

namespace A389916.P5920488280427101062
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283991 (A233583 (n + 1)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A389916.P5920488280427101062

/-!
# A389917: Odd numbers m such that the Stern polynomial B(m,x) is reducible.

The programs for A389917, there is no canonical definition to state claims against.
-/

/-! ## A389917.P12926626324479885513

`∩[1+2*n, A389916(n+1)]`
-/

namespace A389917.P12926626324479885513
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1 + 2 * n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389916 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A389917.P12926626324479885513

/-! ## A389917.P3781529373480295912

`∩[A389916(n+1), A004273(n)]`
-/

namespace A389917.P3781529373480295912
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389916 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A389917.P3781529373480295912

/-! ## A389917.P10155630222352213792

`∩[A389916(n+1), A004274(n)]`
-/

namespace A389917.P10155630222352213792
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389916 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004274 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A389917.P10155630222352213792

/-! ## A389917.P15449330832314516771

`∩[A389916(n+1), A020742(n)]`
-/

namespace A389917.P15449330832314516771
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389916 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020742 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A389917.P15449330832314516771

/-! ## A389917.P5333696330828015683

`∩[A389916(n+1), A060747(n)]`
-/

namespace A389917.P5333696330828015683
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389916 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060747 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A389917.P5333696330828015683

/-! ## A389917.P7586643080403658382

`∩[A389916(n+1), A062545(n)]`
-/

namespace A389917.P7586643080403658382
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389916 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062545 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A389917.P7586643080403658382

/-! ## A389917.P6860186170860992782

`∩[A389916(n+1), A130773(n)]`
-/

namespace A389917.P6860186170860992782
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389916 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130773 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A389917.P6860186170860992782

/-! ## A389917.P11997705655249940673

`∩[A389916(n+1), A163985(n)]`
-/

namespace A389917.P11997705655249940673
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389916 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163985 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A389917.P11997705655249940673

/-! ## A389917.P7566156538099144200

`filter[A389916(n+1), A000035(#)]`
-/

namespace A389917.P7566156538099144200
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389916 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A000035 (f1 j).toNat = 1) n)

end

end A389917.P7566156538099144200

/-! ## A389917.P14524584685019752781

`filter[A389916(n+1), A266070(#)]`
-/

namespace A389917.P14524584685019752781
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389916 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A266070 (f1 j).toNat = 1) n)

end

end A389917.P14524584685019752781

/-! ## A389917.P10221128050712436219

`filter[A389916(n+1), A266611(#)]`
-/

namespace A389917.P10221128050712436219
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389916 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A266611 (f1 j).toNat = 1) n)

end

end A389917.P10221128050712436219

/-! ## A389917.P7142013744290102021

`filter[A389916(n+1), A266719(#)]`
-/

namespace A389917.P7142013744290102021
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389916 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A266719 (f1 j).toNat = 1) n)

end

end A389917.P7142013744290102021

/-! ## A389917.P13800714032178185259

`filter[A389916(n+1), A296066(#)]`
-/

namespace A389917.P13800714032178185259
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389916 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A296066 (f1 j).toNat = 1) n)

end

end A389917.P13800714032178185259

/-! ## A389917.P3825339018854166458

`filter[A389916(n+2), A266246(#)]`
-/

namespace A389917.P3825339018854166458
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389916 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A266246 (f1 j).toNat = 1) n)

end

end A389917.P3825339018854166458

/-! ## A389917.P5650634255731115505

`filter[A389916(n+3), A267256(#)]`
-/

namespace A389917.P5650634255731115505
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389916 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A267256 (f1 j).toNat = 1) n)

end

end A389917.P5650634255731115505

/-!
# A389919: Number of integer partitions of n whose first differences are not all distinct.

The programs for A389919, there is no canonical definition to state claims against.
-/

/-! ## A389919.P1518382140010775054

`A000041(n)-A325325(n)`
-/

namespace A389919.P1518382140010775054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n - A325325 n

end

end A389919.P1518382140010775054

/-! ## A389919.P4035856469960492055

`A213598(n)-A325325(n)`
-/

namespace A389919.P4035856469960492055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213598 n - A325325 n

end

end A389919.P4035856469960492055

/-! ## A389919.P4338012737566303072

`sqrt(A001255(n))-A325325(n)`
-/

namespace A389919.P4338012737566303072
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A001255 n : ℝ) - (A325325 n : ℝ)

end

end A389919.P4338012737566303072

/-! ## A389919.P16401727019864103589

`∑[A002865(n)]-A325325(n)`
-/

namespace A389919.P16401727019864103589
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002865 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A325325 n

end

end A389919.P16401727019864103589

/-! ## A389919.P1862462818634566782

`A000065(n)+1-A325325(n)`
-/

namespace A389919.P1862462818634566782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000065 n + 1 - A325325 n

end

end A389919.P1862462818634566782

/-!
# A389920: Number of integer partitions of n not forming an arithmetic progression with offset 0.

The programs for A389920, there is no canonical definition to state claims against.
-/

/-! ## A389920.P9232963611432274030

`A000065(n)-A325334(n)`
-/

namespace A389920.P9232963611432274030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000065 n - A325334 n

end

end A389920.P9232963611432274030

/-! ## A389920.P9718577930662901881

`A000041(n)-(A325334(n)+1)`
-/

namespace A389920.P9718577930662901881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n - (A325334 n + 1)

end

end A389920.P9718577930662901881

/-! ## A389920.P5458266093972494910

`∑[A002865(n)]-1-A325334(n)`
-/

namespace A389920.P5458266093972494910
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002865 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1 - A325334 n

end

end A389920.P5458266093972494910

/-! ## A389920.P12087245777679379761

`A133041(n)-(n+1)-A325334(n)`
-/

namespace A389920.P12087245777679379761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133041 n - (n + 1 : ℤ) - A325334 n

end

end A389920.P12087245777679379761

/-! ## A389920.P799278601572014140

`∑[A085811(n+3)]-1-A325334(n)`
-/

namespace A389920.P799278601572014140
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085811 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1 - A325334 n

end

end A389920.P799278601572014140

/-! ## A389920.P16471396070671474072

`A000041(n)-A007862(A028310(n))`
-/

namespace A389920.P16471396070671474072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n - A007862 (A028310 n).toNat

end

end A389920.P16471396070671474072

/-! ## A389920.P7192087011568471402

`A139582(n)/2-1-A325334(n)`
-/

namespace A389920.P7192087011568471402
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A139582 n : ℚ) / 2 - 1 - (A325334 n : ℚ)

end

end A389920.P7192087011568471402

/-! ## A389920.P1956046921609458407

`A119620(2*n)-1-A325334(n)`
-/

namespace A389920.P1956046921609458407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119620 (2 * n) - 1 - A325334 n

end

end A389920.P1956046921609458407

/-! ## A389920.P5068163052434872315

`A035377(3*n)-1-A325334(n)`
-/

namespace A389920.P5068163052434872315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035377 (3 * n) - 1 - A325334 n

end

end A389920.P5068163052434872315

/-! ## A389920.P8761562050862633952

`A000041(n)-A007862(A233583(n+1))`
-/

namespace A389920.P8761562050862633952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n - A007862 (A233583 (n + 1)).toNat

end

end A389920.P8761562050862633952

/-!
# A389921: Number of subsets of {1..n} that contain n but do not form a finite arithmetic progression.

The programs for A389921, the canonical program `A389921.P16454545496110612837` is in `Seq.B005.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A389921 has offset 0).

The definition of A389921 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 334 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A389921.P16454545496110612837

`A094373(n)-A350102(n)`

The canonical program, it is in `Seq.B005.C002`.
-/

namespace A389921

/-- `A094373(n)-A350102(n)` -/
def P16454545496110612837.Spec : Prop :=
  ∀ n, P16454545496110612837.a n = A389921 n

theorem P16454545496110612837.correct : P16454545496110612837.Spec := by
  intro n
  simp only [A389921]

end A389921

/-! ## A389921.P4208551774384289570

`A350105(n)+1-A011782(n)`
-/

namespace A389921.P4208551774384289570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350105 n + 1 - A011782 n

end

end A389921.P4208551774384289570

namespace A389921

/-- `A350105(n)+1-A011782(n)` -/
def P4208551774384289570.Spec : Prop :=
  ∀ n, P4208551774384289570.a n = A389921 n

end A389921

/-! ## A389921.P7060205013482627885

`Δ[A389813(abs(1-n))]`
-/

namespace A389921.P7060205013482627885
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389813 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A389921.P7060205013482627885

namespace A389921

/-- `Δ[A389813(abs(1-n))]` -/
def P7060205013482627885.Spec : Prop :=
  ∀ n, P7060205013482627885.a n = A389921 n

end A389921

/-! ## A389921.P9758179550899361425

`A011782(n)-A169594(A011782(n))`
-/

namespace A389921.P9758179550899361425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 n - A169594 (A011782 n).toNat

end

end A389921.P9758179550899361425

namespace A389921

/-- `A011782(n)-A169594(A011782(n))` -/
def P9758179550899361425.Spec : Prop :=
  ∀ n, P9758179550899361425.a n = A389921 n

end A389921

/-! ## A389921.P10317586371649960434

`A340569(n)-A001221(A003266(n))`
-/

namespace A389921.P10317586371649960434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340569 n - A001221 (A003266 n).toNat

end

end A389921.P10317586371649960434

namespace A389921

/-- `A340569(n)-A001221(A003266(n))` -/
def P10317586371649960434.Spec : Prop :=
  ∀ n, P10317586371649960434.a n = A389921 n

end A389921

/-!
# A389923: Standard composition numbers of integer compositions with last part = length.

The programs for A389923, the canonical program `A389923.P14713725332339076935` is in `Seq.B004.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A389923 has offset 1).

The definition of A389923 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4181 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A389923.P14713725332339076935

`A371176(lt[runs[floor(n/ϕ)], 2]-1)`

The canonical program, it is in `Seq.B004.C004`.
-/

namespace A389923

/-- `A371176(lt[runs[floor(n/ϕ)], 2]-1)` -/
def P14713725332339076935.Spec : Prop :=
  ∀ n, P14713725332339076935.a n = A389923 (n + 1)

theorem P14713725332339076935.correct : P14713725332339076935.Spec := by
  intro n
  simp only [A389923, Nat.add_sub_cancel]

end A389923

/-! ## A389923.P4696835888248618171

`A371176(ceil(2*n+1+(n+1)/ϕ)-1)`
-/

namespace A389923.P4696835888248618171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371176 (⌈(2 * n + 1 : ℝ) + (n + 1 : ℝ) / Real.goldenRatio⌉ - 1).toNat

end

end A389923.P4696835888248618171

namespace A389923

/-- `A371176(ceil(2*n+1+(n+1)/ϕ)-1)` -/
def P4696835888248618171.Spec : Prop :=
  ∀ n, P4696835888248618171.a n = A389923 (n + 1)

end A389923

/-! ## A389923.P12905568549531963072

`record[A003849(n+1)*A371176(n+1)]`
-/

namespace A389923.P12905568549531963072
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003849 (n + 1) * A371176 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A389923.P12905568549531963072

namespace A389923

/-- `record[A003849(n+1)*A371176(n+1)]` -/
def P12905568549531963072.Spec : Prop :=
  ∀ n, P12905568549531963072.a n = A389923 (n + 1)

end A389923

/-! ## A389923.P4139431938595236610

`A371176(A003622(n+1))%A030653(n+1)`
-/

namespace A389923.P4139431938595236610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A371176 (A003622 (n + 1)).toNat) (A030653 (n + 1))

end

end A389923.P4139431938595236610

namespace A389923

/-- `A371176(A003622(n+1))%A030653(n+1)` -/
def P4139431938595236610.Spec : Prop :=
  ∀ n, P4139431938595236610.a n = A389923 (n + 1)

end A389923

/-! ## A389923.P7320993670098345153

`A371176(A003622(n+1))+A082853(A082852(n))`
-/

namespace A389923.P7320993670098345153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371176 (A003622 (n + 1)).toNat + A082853 (A082852 n).toNat

end

end A389923.P7320993670098345153

namespace A389923

/-- `A371176(A003622(n+1))+A082853(A082852(n))` -/
def P7320993670098345153.Spec : Prop :=
  ∀ n, P7320993670098345153.a n = A389923 (n + 1)

end A389923

/-! ## A389923.P9914172239174404665

`A371176(A003622(n+1))+A370292(A082852(n+1))`
-/

namespace A389923.P9914172239174404665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371176 (A003622 (n + 1)).toNat + A370292 (A082852 (n + 1)).toNat

end

end A389923.P9914172239174404665

namespace A389923

/-- `A371176(A003622(n+1))+A370292(A082852(n+1))` -/
def P9914172239174404665.Spec : Prop :=
  ∀ n, P9914172239174404665.a n = A389923 (n + 1)

end A389923

/-! ## A389923.P407125614491717220

`A371176(A003622(n+1))*A373990(A371176(n+1))`
-/

namespace A389923.P407125614491717220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371176 (A003622 (n + 1)).toNat * A373990 (A371176 (n + 1)).toNat

end

end A389923.P407125614491717220

namespace A389923

/-- `A371176(A003622(n+1))*A373990(A371176(n+1))` -/
def P407125614491717220.Spec : Prop :=
  ∀ n, P407125614491717220.a n = A389923 (n + 1)

end A389923

/-! ## A389923.P1137613500917456692

`A361647(A022341(n))`
-/

namespace A389923.P1137613500917456692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361647 (A022341 n).toNat

end

end A389923.P1137613500917456692

namespace A389923

/-- `A361647(A022341(n))` -/
def P1137613500917456692.Spec : Prop :=
  ∀ n, P1137613500917456692.a n = A389923 (n + 1)

end A389923

/-! ## A389923.P10264002094488130065

`filter[A361647(2*n+1), A373990(#)]`
-/

namespace A389923.P10264002094488130065
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361647 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373990 (f1 j).toNat = 1) n)

end

end A389923.P10264002094488130065

namespace A389923

/-- `filter[A361647(2*n+1), A373990(#)]` -/
def P10264002094488130065.Spec : Prop :=
  ∀ n, P10264002094488130065.a n = A389923 (n + 1)

end A389923

/-! ## A389923.P13303449391533597039

`filter[A373038(2*n+1), A373990(#)]`
-/

namespace A389923.P13303449391533597039
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373038 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373990 (f1 j).toNat = 1) n)

end

end A389923.P13303449391533597039

namespace A389923

/-- `filter[A373038(2*n+1), A373990(#)]` -/
def P13303449391533597039.Spec : Prop :=
  ∀ n, P13303449391533597039.a n = A389923 (n + 1)

end A389923

/-!
# A389924: Standard composition numbers of integer compositions with first part = length.

The programs for A389924, the canonical program `A389924.P15901862346322248970` is in `Seq.B002.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A389924 has offset 1).

The definition of A389924 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 232 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A389924.P1398640529363039975

`eq[A056792(A006257(n)), A070939(n)]`
-/

namespace A389924.P1398640529363039975
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056792 (A006257 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070939 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A389924.P1398640529363039975

namespace A389924

/-- `eq[A056792(A006257(n)), A070939(n)]` -/
def P1398640529363039975.Spec : Prop :=
  ∀ n, (P1398640529363039975.a n : ℤ) = A389924 (n + 1)

end A389924

/-! ## A389924.P17637848822641960099

`eq[A065120(n), A072411(A001316(n))]`
-/

namespace A389924.P17637848822641960099
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065120 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072411 (A001316 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A389924.P17637848822641960099

namespace A389924

/-- `eq[A065120(n), A072411(A001316(n))]` -/
def P17637848822641960099.Spec : Prop :=
  ∀ n, (P17637848822641960099.a n : ℤ) = A389924 (n + 1)

end A389924

/-! ## A389924.P15901862346322248970

`eq[A000120(n), A065120(2*n+1)]`

The canonical program, it is in `Seq.B002.C008`.
-/

namespace A389924

/-- `eq[A000120(n), A065120(2*n+1)]` -/
def P15901862346322248970.Spec : Prop :=
  ∀ n, (P15901862346322248970.a n : ℤ) = A389924 (n + 1)

theorem P15901862346322248970.correct : P15901862346322248970.Spec := by
  intro n
  simp only [A389924, Nat.add_sub_cancel]

end A389924

/-! ## A389924.P1688040505256837795

`eq[val(A102377(n), 2), A065120(2*n+1)]`
-/

namespace A389924.P1688040505256837795
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A102377 n).toNat 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065120 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A389924.P1688040505256837795

namespace A389924

/-- `eq[val(A102377(n), 2), A065120(2*n+1)]` -/
def P1688040505256837795.Spec : Prop :=
  ∀ n, (P1688040505256837795.a n : ℤ) = A389924 (n + 1)

end A389924

/-! ## A389924.P122490802499765704

`eq[A004257(A001316(n)), A065120(2*n+1)]`
-/

namespace A389924.P122490802499765704
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004257 (A001316 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065120 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A389924.P122490802499765704

namespace A389924

/-- `eq[A004257(A001316(n)), A065120(2*n+1)]` -/
def P122490802499765704.Spec : Prop :=
  ∀ n, (P122490802499765704.a n : ℤ) = A389924 (n + 1)

end A389924

/-!
# A389928: Truncated centered square numbers: a(n) = 14*n^2 - 22*n + 9.

The programs for A389928, the canonical program `A389928.P8211443800923910472` is in `Seq.B000.C050`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A389928 has offset 1).

The definition of A389928 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `14*(n+1)²-22*(n+1)+9` (program `A389928.P8211443800923910472`, by `A389928.P8211443800923910472.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A389928.P10060397407694461944

`ogf((1+18x+9x^2)/(1-3x+3x^2-x^3))`
-/

namespace A389928.P10060397407694461944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 18, 9] [1, -3, 3, -1] n

end

end A389928.P10060397407694461944

namespace A389928

/-- `ogf((1+18x+9x^2)/(1-3x+3x^2-x^3))` -/
def P10060397407694461944.Spec : Prop :=
  ∀ n, P10060397407694461944.a n = A389928 (n + 1)

end A389928

/-! ## A389928.P8211443800923910472

`14*(n+1)²-22*(n+1)+9`

The canonical program, it is in `Seq.B000.C050`.
-/

namespace A389928

/-- `14*(n+1)²-22*(n+1)+9` -/
def P8211443800923910472.Spec : Prop :=
  ∀ n, P8211443800923910472.a n = A389928 (n + 1)

theorem P8211443800923910472.correct : P8211443800923910472.Spec := by
  intro n
  simp only [A389928, Nat.add_sub_cancel]

end A389928

/-! ## A389928.P16916056440681471181

`∑[28+a(n-1)]` with `a(0)=1, a(1)=20`
-/

namespace A389928.P16916056440681471181
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 20] fun n f1 =>
  28 + f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A389928.P16916056440681471181

namespace A389928

/-- `∑[28+a(n-1)]` -/
def P16916056440681471181.Spec : Prop :=
  ∀ n, (P16916056440681471181.a n : ℤ) = A389928 (n + 1)

end A389928

/-! ## A389928.P16206190511753724227

`n*xor(1, 14*n+7)+1`
-/

namespace A389928.P16206190511753724227
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * Nat.xor 1 (14 * n + 7) + 1

end

end A389928.P16206190511753724227

namespace A389928

/-- `n*xor(1, 14*n+7)+1` -/
def P16206190511753724227.Spec : Prop :=
  ∀ n, (P16206190511753724227.a n : ℤ) = A389928 (n + 1)

end A389928

/-! ## A389928.P10226190239150372395

`14*n²-xor(6*n, -1)`
-/

namespace A389928.P10226190239150372395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (14 * n ^ 2 : ℤ) - Int.xor (6 * n : ℤ) (-1)

end

end A389928.P10226190239150372395

namespace A389928

/-- `14*n²-xor(6*n, -1)` -/
def P10226190239150372395.Spec : Prop :=
  ∀ n, P10226190239150372395.a n = A389928 (n + 1)

end A389928

/-! ## A389928.P9061645523858448874

`7*C(2*n+1, 2)+1-n`
-/

namespace A389928.P9061645523858448874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (7 * Nat.choose (2 * n + 1) 2 + 1 : ℤ) - (n : ℤ)

end

end A389928.P9061645523858448874

namespace A389928

/-- `7*C(2*n+1, 2)+1-n` -/
def P9061645523858448874.Spec : Prop :=
  ∀ n, P9061645523858448874.a n = A389928 (n + 1)

theorem P9061645523858448874.correct : P9061645523858448874.Spec := by
  intro n
  simp only [A389928, Nat.add_sub_cancel, A389928.P9061645523858448874.a, A389928.P8211443800923910472.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A389928

/-! ## A389928.P7368786266102948321

`4*(7*n-2)+a(n-1)` with `a(0)=1`
-/

namespace A389928.P7368786266102948321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  4 * ((7 * n : ℤ) - 2) + a (n - 1)

end

end A389928.P7368786266102948321

namespace A389928

/-- `4*(7*n-2)+a(n-1)` -/
def P7368786266102948321.Spec : Prop :=
  ∀ n, P7368786266102948321.a n = A389928 (n + 1)

theorem P7368786266102948321.correct : P7368786266102948321.Spec := by
  intro n
  induction n with
  | zero => simp [A389928, A389928.P7368786266102948321.a, A389928.P8211443800923910472.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
  | succ m ih =>
    simp only [A389928, Nat.add_sub_cancel, A389928.P7368786266102948321.a, A389928.P8211443800923910472.a, SequenceMachineLib.memo_apply] at ih ⊢
    rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
    try simp only [Nat.add_sub_cancel, Nat.lt_add_one, ↓reduceIte]
    try push_cast at ih ⊢
    try linarith

end A389928

/-! ## A389928.P18440350638521438575

`or(1, 4*A186029(n))`
-/

namespace A389928.P18440350638521438575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (4 * A186029 n)

end

end A389928.P18440350638521438575

namespace A389928

/-- `or(1, 4*A186029(n))` -/
def P18440350638521438575.Spec : Prop :=
  ∀ n, P18440350638521438575.a n = A389928 (n + 1)

end A389928

/-! ## A389928.P2780417046222590232

`A025773(A135628(n))`
-/

namespace A389928.P2780417046222590232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025773 (A135628 n).toNat

end

end A389928.P2780417046222590232

namespace A389928

/-- `A025773(A135628(n))` -/
def P2780417046222590232.Spec : Prop :=
  ∀ n, P2780417046222590232.a n = A389928 (n + 1)

end A389928

/-! ## A389928.P8079357809512564030

`A000027(A069099(2*n+1)-n)`
-/

namespace A389928.P8079357809512564030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A069099 (2 * n + 1) - (n : ℤ)).toNat

end

end A389928.P8079357809512564030

namespace A389928

/-- `A000027(A069099(2*n+1)-n)` -/
def P8079357809512564030.Spec : Prop :=
  ∀ n, P8079357809512564030.a n = A389928 (n + 1)

end A389928

/-!
# A389929: Smallest prime number obtained by removing or adding a single digit anywhere in n, or 0 if no such prime exists.

The programs for A389929, there is no canonical definition to state claims against.
-/

/-! ## A389929.P15448857211805792760

`min(A062584(n), A390019(n))`
-/

namespace A389929.P15448857211805792760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  min (A062584 n) (A390019 n)

end

end A389929.P15448857211805792760

/-! ## A389929.P7361095765785117799

`A062584(n)%A241899(n)`
-/

namespace A389929.P7361095765785117799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A062584 n) (A241899 (n + 10))

end

end A389929.P7361095765785117799

/-! ## A389929.P8177515850435867412

`A020639(A062584(n)*A065381(n+1))`
-/

namespace A389929.P8177515850435867412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A062584 n * A065381 (n + 1)).toNat

end

end A389929.P8177515850435867412

/-! ## A389929.P15214848922392372684

`A062584(A062584(n))%A376752(3*n+2)`
-/

namespace A389929.P15214848922392372684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A062584 (A062584 n).toNat) (A376752 (3 * n + 2))

end

end A389929.P15214848922392372684

/-! ## A389929.P9188240008689972869

`A008578(A082058(n)+1)%A000040(A332746(3*n+2))`
-/

namespace A389929.P9188240008689972869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A008578 (A082058 n + 1).toNat) (A000040 (A332746 (3 * n + 2)).toNat)

end

end A389929.P9188240008689972869

/-!
# A389933: a(n) = Sum_{k=0..n} binomial(n+k+1,n-k) * Fibonacci(k+1).

The programs for A389933, the canonical program `A389933.P1654570028840973288` is in `Seq.B001.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A389933 has offset 0).

The definition of A389933 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `∑{#}[n, C(n+#+1, n-#)*A000045(#+1)]` (program `A389933.P1654570028840973288`, by `A389933.P1654570028840973288.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A389933.P6667746529463683640

`ogf((1-2x+x^2)/(1-5x+7x^2-5x^3+x^4))`
-/

namespace A389933.P6667746529463683640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -2, 1] [1, -5, 7, -5, 1] n

end

end A389933.P6667746529463683640

namespace A389933

/-- `ogf((1-2x+x^2)/(1-5x+7x^2-5x^3+x^4))` -/
def P6667746529463683640.Spec : Prop :=
  ∀ n, P6667746529463683640.a n = A389933 n

end A389933

/-! ## A389933.P1654570028840973288

`∑{#}[n, C(n+#+1, n-#)*A000045(#+1)]`

The canonical program, it is in `Seq.B001.C014`.
-/

namespace A389933

/-- `∑{#}[n, C(n+#+1, n-#)*A000045(#+1)]` -/
def P1654570028840973288.Spec : Prop :=
  ∀ n, P1654570028840973288.a n = A389933 n

theorem P1654570028840973288.correct : P1654570028840973288.Spec := by
  intro n
  simp only [A389933]

end A389933

/-! ## A389933.P1180239488055824644

`5*a(n-1)-7*a(n-2)+5*a(n-3)-a(n-4)` with `a(0)=1, a(1)=3, a(2)=9, a(3)=29`
-/

namespace A389933.P1180239488055824644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3, 9, 29] fun n a =>
  5 * a (n - 1) - 7 * a (n - 2) + 5 * a (n - 3) - a (n - 4)

end

end A389933.P1180239488055824644

namespace A389933

/-- `5*a(n-1)-7*a(n-2)+5*a(n-3)-a(n-4)` -/
def P1180239488055824644.Spec : Prop :=
  ∀ n, P1180239488055824644.a n = A389933 n

end A389933

/-! ## A389933.P1559641326663299405

`∑[A389699(n)]`
-/

namespace A389933.P1559641326663299405
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389699 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A389933.P1559641326663299405

namespace A389933

/-- `∑[A389699(n)]` -/
def P1559641326663299405.Spec : Prop :=
  ∀ n, P1559641326663299405.a n = A389933 n

end A389933

/-! ## A389933.P6172990779605642632

`∑{#}[n, C(n, #)*A210460(#+1)]`
-/

namespace A389933.P6172990779605642632
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), (Nat.choose n k : ℤ) * A210460 (k + 1)

end

end A389933.P6172990779605642632

namespace A389933

/-- `∑{#}[n, C(n, #)*A210460(#+1)]` -/
def P6172990779605642632.Spec : Prop :=
  ∀ n, P6172990779605642632.a n = A389933 n

end A389933

/-! ## A389933.P4377671250271436215

`A289780(n)-A104630(n)`
-/

namespace A389933.P4377671250271436215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289780 n - A104630 n

end

end A389933.P4377671250271436215

namespace A389933

/-- `A289780(n)-A104630(n)` -/
def P4377671250271436215.Spec : Prop :=
  ∀ n, P4377671250271436215.a n = A389933 n

end A389933

/-! ## A389933.P1872971282278410604

`A389699(n+1)-(A389699(n)+A104630(n))`
-/

namespace A389933.P1872971282278410604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389699 (n + 1) - (A389699 n + A104630 n)

end

end A389933.P1872971282278410604

namespace A389933

/-- `A389699(n+1)-(A389699(n)+A104630(n))` -/
def P1872971282278410604.Spec : Prop :=
  ∀ n, P1872971282278410604.a n = A389933 n

end A389933

/-! ## A389933.P15363978202599648477

`A390824(n+1)+A289780(n)-A289780(n+1)`
-/

namespace A389933.P15363978202599648477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390824 (n + 1) + (A289780 n - A289780 (n + 1))

end

end A389933.P15363978202599648477

namespace A389933

/-- `A390824(n+1)+A289780(n)-A289780(n+1)` -/
def P15363978202599648477.Spec : Prop :=
  ∀ n, P15363978202599648477.a n = A389933 n

end A389933

/-! ## A389933.P6568710741529091393

`A390824(n+1)-(A390824(n)+A389699(n+1))`
-/

namespace A389933.P6568710741529091393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390824 (n + 1) - (A390824 n + A389699 (n + 1))

end

end A389933.P6568710741529091393

namespace A389933

/-- `A390824(n+1)-(A390824(n)+A389699(n+1))` -/
def P6568710741529091393.Spec : Prop :=
  ∀ n, P6568710741529091393.a n = A389933 n

end A389933

/-!
# A389934: Number n in the rational base 7/3.

The programs for A389934, there is no canonical definition to state claims against.
-/

/-! ## A389934.P6427443600920665772

`A024640(3*n)`
-/

namespace A389934.P6427443600920665772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024640 (3 * n)

end

end A389934.P6427443600920665772

/-!
# A389936: Number of oriented polyominoes with n octagonal cells of the hyperbolic regular tiling with Schläfli symbol {8,oo}.

The programs for A389936, there is no canonical definition to state claims against.
-/

/-! ## A389936.P10542520573240454616

`2*A389937(n)-A143547(n)`
-/

namespace A389936.P10542520573240454616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A389937 n - A143547 n

end

end A389936.P10542520573240454616

/-! ## A389936.P17597837735667906488

`2*A389937(n)-A386380(3*n)`
-/

namespace A389936.P17597837735667906488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A389937 n - A386380 (3 * n)

end

end A389936.P17597837735667906488

/-! ## A389936.P12824825749614119313

`2*A389937(n)-A370062(A000007(n)+∑[n+5]+5)`
-/

namespace A389936.P12824825749614119313
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A389937 n - A370062 (A000007 n + ((∑ j ∈ Finset.range (n + 1), f1 j + 5 : ℕ) : ℤ)).toNat

end

end A389936.P12824825749614119313

/-!
# A389937: Number of unoriented polyominoes with n octagonal cells of the hyperbolic regular tiling with Schläfli symbol {8,oo}.

The programs for A389937, there is no canonical definition to state claims against.
-/

/-! ## A389937.P10574463455324693222

`(A389936(n)+A143547(n))/2`
-/

namespace A389937.P10574463455324693222
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A389936 n + A143547 n : ℚ) / 2

end

end A389937.P10574463455324693222

/-! ## A389937.P2769104078976565395

`(A389936(n)+A386380(3*n))/2`
-/

namespace A389937.P2769104078976565395
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A389936 n + A386380 (3 * n) : ℚ) / 2

end

end A389937.P2769104078976565395

/-! ## A389937.P9357025559774601194

`(A389936(n)+A370062(A000007(n)+∑[n+5]+5))/2`
-/

namespace A389937.P9357025559774601194
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A389936 n + A370062 (A000007 n + ((∑ j ∈ Finset.range (n + 1), f1 j + 5 : ℕ) : ℤ)).toNat : ℚ) / 2

end

end A389937.P9357025559774601194

/-! ## A389937.P10005685928518116738

`A393744(n)+A006748(A309862(n))`
-/

namespace A389937.P10005685928518116738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A393744 n + A006748 (A309862 n).toNat

end

end A389937.P10005685928518116738

/-! ## A389937.P170338067144284818

`A393744(n)+A335681(A008300(n+2))`
-/

namespace A389937.P170338067144284818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A393744 n + A335681 (A008300 (n + 2)).toNat

end

end A389937.P170338067144284818

/-!
# A389938: Number of chiral pairs of polyominoes with n octagonal cells of the hyperbolic regular tiling with Schläfli symbol {8,oo}.

The programs for A389938, there is no canonical definition to state claims against.
-/

/-! ## A389938.P17058134167519429912

`A389937(n+4)-A143547(n+4)`
-/

namespace A389938.P17058134167519429912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389937 (n + 4) - A143547 (n + 4)

end

end A389938.P17058134167519429912

/-! ## A389938.P1469629978600558164

`A389936(n+4)-A389937(n+4)`
-/

namespace A389938.P1469629978600558164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389936 (n + 4) - A389937 (n + 4)

end

end A389938.P1469629978600558164

/-! ## A389938.P566233729784779466

`(A389936(n+4)-A143547(n+4))/2`
-/

namespace A389938.P566233729784779466
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A389936 (n + 4) - A143547 (n + 4) : ℚ) / 2

end

end A389938.P566233729784779466

/-!
# A389940: Numbers k for which a sphere of radius k is a member of at least 1 set of 4 spheres of coprime positive integer radii which are tangent to a plane when arranged as mutually tangent to one another.

The programs for A389940, there is no canonical definition to state claims against.
-/

/-! ## A389940.P7167310204742618994

`lt[0, char[A390148(n+1)]]`
-/

namespace A389940.P7167310204742618994
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390148 (n + 1)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A389940.P7167310204742618994

/-! ## A389940.P6090553338159386429

`eq[(-A057428(n))^n, char[A390148(n+1)]]`
-/

namespace A389940.P6090553338159386429
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-A057428 n) ^ n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390148 (n + 1)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (f2 j : ℤ)) n

end

end A389940.P6090553338159386429

/-!
# A389942: G.f. A(x) satisfies A(x) = 1 + x*(1-x^2)^2*A(x)^3.

The programs for A389942, the canonical program `A389942.P690339750252955156` is in `Seq.B001.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A389942 has offset 0).

The definition of A389942 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A389942.P690339750252955156

`∑{#}[floor(n/2), (-1)^#*C(2*(n-2*#), #)*A001764(n-2*#)]`

The canonical program, it is in `Seq.B001.C014`.
-/

namespace A389942

/-- `∑{#}[floor(n/2), (-1)^#*C(2*(n-2*#), #)*A001764(n-2*#)]` -/
def P690339750252955156.Spec : Prop :=
  ∀ n, P690339750252955156.a n = A389942 n

theorem P690339750252955156.correct : P690339750252955156.Spec := by
  intro n
  simp only [A389942]

end A389942

/-! ## A389942.P10256913131594685368

`A060426(A008073(n))`
-/

namespace A389942.P10256913131594685368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060426 (A008073 n).toNat

end

end A389942.P10256913131594685368

namespace A389942

/-- `A060426(A008073(n))` -/
def P10256913131594685368.Spec : Prop :=
  ∀ n, P10256913131594685368.a n = A389942 n

end A389942

/-!
# A389943: G.f. A(x) satisfies A(x) = 1 + x*(1-x^2)^3*A(x)^3.

The programs for A389943, the canonical program `A389943.P5099283611018149966` is in `Seq.B001.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A389943 has offset 0).

The definition of A389943 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A389943.P5099283611018149966

`∑{#}[floor(n/2), (-1)^#*C(3*(n-2*#), #)*A001764(n-2*#)]`

The canonical program, it is in `Seq.B001.C014`.
-/

namespace A389943

/-- `∑{#}[floor(n/2), (-1)^#*C(3*(n-2*#), #)*A001764(n-2*#)]` -/
def P5099283611018149966.Spec : Prop :=
  ∀ n, P5099283611018149966.a n = A389943 n

theorem P5099283611018149966.correct : P5099283611018149966.Spec := by
  intro n
  simp only [A389943]

end A389943

/-!
# A389944: G.f. A(x) satisfies A(x) = 1 + x*(1-x^3)^2*A(x)^3.

The programs for A389944, the canonical program `A389944.P12675931814178469672` is in `Seq.B001.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A389944 has offset 0).

The definition of A389944 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A389944.P12675931814178469672

`∑{#}[floor(n/3), (-1)^#*C(2*(n-3*#), #)*A001764(n-3*#)]`

The canonical program, it is in `Seq.B001.C014`.
-/

namespace A389944

/-- `∑{#}[floor(n/3), (-1)^#*C(2*(n-3*#), #)*A001764(n-3*#)]` -/
def P12675931814178469672.Spec : Prop :=
  ∀ n, P12675931814178469672.a n = A389944 n

theorem P12675931814178469672.correct : P12675931814178469672.Spec := by
  intro n
  simp only [A389944]

end A389944

/-!
# A389945: G.f. A(x) satisfies A(x) = 1 + x*(1-x^3)^3*A(x)^3.

The programs for A389945, the canonical program `A389945.P17092698030653716998` is in `Seq.B001.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A389945 has offset 0).

The definition of A389945 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A389945.P17092698030653716998

`∑{#}[floor(n/3), (-1)^#*C(3*(n-3*#), #)*A001764(n-3*#)]`

The canonical program, it is in `Seq.B001.C014`.
-/

namespace A389945

/-- `∑{#}[floor(n/3), (-1)^#*C(3*(n-3*#), #)*A001764(n-3*#)]` -/
def P17092698030653716998.Spec : Prop :=
  ∀ n, P17092698030653716998.a n = A389945 n

theorem P17092698030653716998.correct : P17092698030653716998.Spec := by
  intro n
  simp only [A389945]

end A389945

/-! ## A389945.P6786431315418572104

`A077468(A158569(n+1))`
-/

namespace A389945.P6786431315418572104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077468 (A158569 (n + 1)).toNat

end

end A389945.P6786431315418572104

namespace A389945

/-- `A077468(A158569(n+1))` -/
def P6786431315418572104.Spec : Prop :=
  ∀ n, P6786431315418572104.a n = A389945 n

end A389945

/-!
# A389946: Minimum positive value k such that prime(n) - k^2 is a prime number, or 0 if no such positive k exists.

The programs for A389946, there is no canonical definition to state claims against.
-/

/-! ## A389946.P17592832525532424253

`A006519(2*(n+1))%A360913(A002113(n+5))`
-/

namespace A389946.P17592832525532424253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A006519 (2 * (n + 1))) (A360913 (A002113 (n + 5)).toNat)

end

end A389946.P17592832525532424253

/-! ## A389946.P16512824439368877389

`A222177(n)%A222177(A047844(n+1))`
-/

namespace A389946.P16512824439368877389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A222177 n) (A222177 (A047844 (n + 1)).toNat)

end

end A389946.P16512824439368877389

/-! ## A389946.P6743629919547034047

`A122856(A005179(n+1)*A122844(n+4))`
-/

namespace A389946.P6743629919547034047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122856 (A005179 (n + 1) * A122844 (n + 4)).toNat

end

end A389946.P6743629919547034047

/-! ## A389946.P3103388121240173643

`A091399(or(A237824(3*n+4), A320665(n)))`
-/

namespace A389946.P3103388121240173643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091399 (Int.lor (A237824 (3 * n + 4)) (A320665 n)).toNat

end

end A389946.P3103388121240173643

/-! ## A389946.P18421259917596970093

`and(A055999(A364803(n)+7)-4, A356874(n))`
-/

namespace A389946.P18421259917596970093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A055999 (A364803 n + 7).toNat - 4) (A356874 n)

end

end A389946.P18421259917596970093

/-!
# A389947: Squares of nonsquarefree numbers k that are not squareful.

The programs for A389947, the canonical program `A389947.P487126535237801923` is in `Seq.B005.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A389947 has offset 1).

The definition of A389947 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A389947.P487126535237801923

`A332785(1+n)²`

The canonical program, it is in `Seq.B005.C002`.
-/

namespace A389947

/-- `A332785(1+n)²` -/
def P487126535237801923.Spec : Prop :=
  ∀ n, P487126535237801923.a n = A389947 (n + 1)

theorem P487126535237801923.correct : P487126535237801923.Spec := by
  intro n
  simp only [A389947, Nat.add_sub_cancel]

end A389947

/-! ## A389947.P10666741976009903462

`A332785(n+1)^2`
-/

namespace A389947.P10666741976009903462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332785 (n + 1) ^ 2

end

end A389947.P10666741976009903462

namespace A389947

/-- `A332785(n+1)^2` -/
def P10666741976009903462.Spec : Prop :=
  ∀ n, P10666741976009903462.a n = A389947 (n + 1)

theorem P10666741976009903462.correct : P10666741976009903462.Spec := by
  intro n
  simp only [A389947, Nat.add_sub_cancel, A389947.P10666741976009903462.a, A389947.P487126535237801923.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A389947

/-! ## A389947.P18093093121394122523

`A392564(1+n)^(2/3)`
-/

namespace A389947.P18093093121394122523
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A392564 (1 + n) : ℝ) ^ ((2 : ℚ) / 3 : ℝ)

end

end A389947.P18093093121394122523

namespace A389947

/-- `A392564(1+n)^(2/3)` -/
def P18093093121394122523.Spec : Prop :=
  ∀ n, P18093093121394122523.a n = (A389947 (n + 1) : ℝ)

end A389947

/-! ## A389947.P15776076283138913590

`A392564(n+1)/A332785(n+1)`
-/

namespace A389947.P15776076283138913590
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A392564 (n + 1) : ℚ) / (A332785 (n + 1) : ℚ)

end

end A389947.P15776076283138913590

namespace A389947

/-- `A392564(n+1)/A332785(n+1)` -/
def P15776076283138913590.Spec : Prop :=
  ∀ n, P15776076283138913590.a n = (A389947 (n + 1) : ℚ)

end A389947

/-! ## A389947.P2323327161533410255

`∩[A390379(n+1), n²]`
-/

namespace A389947.P2323327161533410255
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390379 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = x) n

end

end A389947.P2323327161533410255

namespace A389947

/-- `∩[A390379(n+1), n²]` -/
def P2323327161533410255.Spec : Prop :=
  ∀ n, (P2323327161533410255.a n : ℤ) = A389947 (n + 1)

end A389947

/-! ## A389947.P7307411068690791819

`∩[A062320(n+1), A387254(n+1)]`
-/

namespace A389947.P7307411068690791819
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062320 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387254 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A389947.P7307411068690791819

namespace A389947

/-- `∩[A062320(n+1), A387254(n+1)]` -/
def P7307411068690791819.Spec : Prop :=
  ∀ n, (P7307411068690791819.a n : ℤ) = A389947 (n + 1)

end A389947

/-! ## A389947.P6356147719775950595

`∩[A062312(n+1), A390379(n+1)]`
-/

namespace A389947.P6356147719775950595
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062312 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390379 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A389947.P6356147719775950595

namespace A389947

/-- `∩[A062312(n+1), A390379(n+1)]` -/
def P6356147719775950595.Spec : Prop :=
  ∀ n, (P6356147719775950595.a n : ℤ) = A389947 (n + 1)

end A389947

/-! ## A389947.P17053136974142662598

`∩[A030140(n+1), A390379(n+1)]`
-/

namespace A389947.P17053136974142662598
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030140 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390379 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A389947.P17053136974142662598

namespace A389947

/-- `∩[A030140(n+1), A390379(n+1)]` -/
def P17053136974142662598.Spec : Prop :=
  ∀ n, (P17053136974142662598.a n : ℤ) = A389947 (n + 1)

end A389947

/-! ## A389947.P2522978567847138292

`A000290(A332785(n+1))`
-/

namespace A389947.P2522978567847138292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 (A332785 (n + 1)).toNat

end

end A389947.P2522978567847138292

namespace A389947

/-- `A000290(A332785(n+1))` -/
def P2522978567847138292.Spec : Prop :=
  ∀ n, P2522978567847138292.a n = A389947 (n + 1)

end A389947

/-! ## A389947.P8208615835380809448

`∩[A000290(n), A390379(n+1)]`
-/

namespace A389947.P8208615835380809448
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390379 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A389947.P8208615835380809448

namespace A389947

/-- `∩[A000290(n), A390379(n+1)]` -/
def P8208615835380809448.Spec : Prop :=
  ∀ n, (P8208615835380809448.a n : ℤ) = A389947 (n + 1)

end A389947

/-! ## A389947.P1014577735361123343

`∩[A188915(n), A390379(n+1)]`
-/

namespace A389947.P1014577735361123343
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188915 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390379 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A389947.P1014577735361123343

namespace A389947

/-- `∩[A188915(n), A390379(n+1)]` -/
def P1014577735361123343.Spec : Prop :=
  ∀ n, (P1014577735361123343.a n : ℤ) = A389947 (n + 1)

end A389947

/-! ## A389947.P11520393199941831925

`∩[A389558(n+1), n²]`
-/

namespace A389947.P11520393199941831925
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389558 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = x) n

end

end A389947.P11520393199941831925

namespace A389947

/-- `∩[A389558(n+1), n²]` -/
def P11520393199941831925.Spec : Prop :=
  ∀ n, (P11520393199941831925.a n : ℤ) = A389947 (n + 1)

end A389947

/-! ## A389947.P11282208513372379642

`∩[A000290(n), A389558(n+1)]`
-/

namespace A389947.P11282208513372379642
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389558 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A389947.P11282208513372379642

namespace A389947

/-- `∩[A000290(n), A389558(n+1)]` -/
def P11282208513372379642.Spec : Prop :=
  ∀ n, (P11282208513372379642.a n : ℤ) = A389947 (n + 1)

end A389947

/-! ## A389947.P12803848151583227480

`∩[A188915(n), A389558(n+1)]`
-/

namespace A389947.P12803848151583227480
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188915 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389558 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A389947.P12803848151583227480

namespace A389947

/-- `∩[A188915(n), A389558(n+1)]` -/
def P12803848151583227480.Spec : Prop :=
  ∀ n, (P12803848151583227480.a n : ℤ) = A389947 (n + 1)

end A389947

/-! ## A389947.P4940019520646827101

`∩[A001597(n+1), A389558(n+1)]`
-/

namespace A389947.P4940019520646827101
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001597 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389558 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A389947.P4940019520646827101

namespace A389947

/-- `∩[A001597(n+1), A389558(n+1)]` -/
def P4940019520646827101.Spec : Prop :=
  ∀ n, (P4940019520646827101.a n : ℤ) = A389947 (n + 1)

end A389947

/-! ## A389947.P4903300759813662500

`∩[A002760(n+1), A389558(n+1)]`
-/

namespace A389947.P4903300759813662500
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002760 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389558 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A389947.P4903300759813662500

namespace A389947

/-- `∩[A002760(n+1), A389558(n+1)]` -/
def P4903300759813662500.Spec : Prop :=
  ∀ n, (P4903300759813662500.a n : ℤ) = A389947 (n + 1)

end A389947

/-! ## A389947.P11898267989710638992

`∩[A030140(n+1), A389558(n+1)]`
-/

namespace A389947.P11898267989710638992
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030140 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389558 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A389947.P11898267989710638992

namespace A389947

/-- `∩[A030140(n+1), A389558(n+1)]` -/
def P11898267989710638992.Spec : Prop :=
  ∀ n, (P11898267989710638992.a n : ℤ) = A389947 (n + 1)

end A389947

/-! ## A389947.P4560384709716373272

`∩[A062312(n+1), A389558(n+1)]`
-/

namespace A389947.P4560384709716373272
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062312 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389558 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A389947.P4560384709716373272

namespace A389947

/-- `∩[A062312(n+1), A389558(n+1)]` -/
def P4560384709716373272.Spec : Prop :=
  ∀ n, (P4560384709716373272.a n : ℤ) = A389947 (n + 1)

end A389947

/-! ## A389947.P11691318724115542937

`∩[A062320(n+1), A389558(n+1)]`
-/

namespace A389947.P11691318724115542937
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062320 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389558 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A389947.P11691318724115542937

namespace A389947

/-- `∩[A062320(n+1), A389558(n+1)]` -/
def P11691318724115542937.Spec : Prop :=
  ∀ n, (P11691318724115542937.a n : ℤ) = A389947 (n + 1)

end A389947

/-! ## A389947.P13170433433698407583

`∩[A085960(n+1), A389558(n+1)]`
-/

namespace A389947.P13170433433698407583
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085960 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389558 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A389947.P13170433433698407583

namespace A389947

/-- `∩[A085960(n+1), A389558(n+1)]` -/
def P13170433433698407583.Spec : Prop :=
  ∀ n, (P13170433433698407583.a n : ℤ) = A389947 (n + 1)

end A389947

/-!
# A389948: Shell enumeration of the upper halfplane. Terms are interleaved x and y coordinates.

The programs for A389948, there is no canonical definition to state claims against.
-/

/-! ## A389948.P2519768092112686069

`A359432(A048490(n+1))`
-/

namespace A389948.P2519768092112686069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359432 (A048490 (n + 1)).toNat

end

end A389948.P2519768092112686069

/-! ## A389948.P8426651990999222480

`A055396(A071927(n+1))*A296030(n+1)`
-/

namespace A389948.P8426651990999222480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055396 (A071927 (n + 1)).toNat * A296030 (n + 1)

end

end A389948.P8426651990999222480

/-! ## A389948.P10055468282865313445

`A296030(n+1)-A399266(A284477(2*n+3))`
-/

namespace A389948.P10055468282865313445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296030 (n + 1) - A399266 (A284477 (2 * n + 3)).toNat

end

end A389948.P10055468282865313445

/-!
# A389950: Sum of cubefree numbers <= 10^n.

The programs for A389950, there is no canonical definition to state claims against.
-/

/-! ## A389950.P18113890750190564445

`A399053(10^n)`
-/

namespace A389950.P18113890750190564445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A399053 (10 ^ n)

end

end A389950.P18113890750190564445

/-!
# A389951: Number of ways to partition digits 0-9 into terms in decreasing order with sum 9*n.

The programs for A389951, there is no canonical definition to state claims against.
-/

/-! ## A389951.P595509173871364535

`A178334(C(A377286(n+1), 9))`
-/

namespace A389951.P595509173871364535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178334 (Nat.choose (A377286 (n + 1)).toNat 9)

end

end A389951.P595509173871364535

/-! ## A389951.P14784802697615510160

`A178334(C(A357658(2*(n+1)), 9))`
-/

namespace A389951.P14784802697615510160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178334 (Nat.choose (A357658 (2 * (n + 1))).toNat 9)

end

end A389951.P14784802697615510160

/-! ## A389951.P15162593229120854517

`A178334(A000245(n)*A027868(n))`
-/

namespace A389951.P15162593229120854517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178334 (A000245 n * A027868 n).toNat

end

end A389951.P15162593229120854517

/-! ## A389951.P3508004054645647936

`A178334(A007283(n)*A026811(n))`
-/

namespace A389951.P3508004054645647936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178334 (A007283 n * A026811 n).toNat

end

end A389951.P3508004054645647936

/-! ## A389951.P5243337426119277091

`A178334(A029931(n)*A061991(n))`
-/

namespace A389951.P5243337426119277091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178334 (A029931 n * A061991 n).toNat

end

end A389951.P5243337426119277091

/-!
# A389955: Even positive numbers that are one less than the square of a perfect power.

The programs for A389955, there is no canonical definition to state claims against.
-/

/-! ## A389955.P9621227844316688911

`A389764(n+1)*A389958(n+1)`
-/

namespace A389955.P9621227844316688911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389764 (n + 1) * A389958 (n + 1)

end

end A389955.P9621227844316688911

/-! ## A389955.P895173677927694145

`(1+A389764(n+1))²-1`
-/

namespace A389955.P895173677927694145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 + A389764 (n + 1)) ^ 2 - 1

end

end A389955.P895173677927694145

/-! ## A389955.P11070330196840430423

`(A389958(n+1)-1)²-1`
-/

namespace A389955.P11070330196840430423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A389958 (n + 1) - 1) ^ 2 - 1

end

end A389955.P11070330196840430423

/-! ## A389955.P14529330810888935951

`A075109(2+n)²-1`
-/

namespace A389955.P14529330810888935951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075109 (2 + n) ^ 2 - 1

end

end A389955.P14529330810888935951

/-! ## A389955.P3604093685368234185

`A075109(n+2)*A075109(n+2)-1`
-/

namespace A389955.P3604093685368234185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075109 (n + 2) * A075109 (n + 2) - 1

end

end A389955.P3604093685368234185

/-! ## A389955.P9874092610349683857

`A389764(n+1)+A075109(n+2)*A389764(n+1)`
-/

namespace A389955.P9874092610349683857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389764 (n + 1) + A075109 (n + 2) * A389764 (n + 1)

end

end A389955.P9874092610349683857

/-! ## A389955.P10309677813819777477

`filter[A216765(n+1), A323170(#)]*A389764(n+1)`
-/

namespace A389955.P10309677813819777477
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216765 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323170 (f1 j).toNat = 1) n) * A389764 (n + 1)

end

end A389955.P10309677813819777477

/-! ## A389955.P11716903624188192272

`A005563(A389764(n+1))`
-/

namespace A389955.P11716903624188192272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005563 (A389764 (n + 1)).toNat

end

end A389955.P11716903624188192272

/-! ## A389955.P11059247780945502512

`A067998(A389958(n+1))`
-/

namespace A389955.P11059247780945502512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067998 (A389958 (n + 1)).toNat

end

end A389955.P11059247780945502512

/-! ## A389955.P9158331911115440667

`A039720(A075109(n+2))`
-/

namespace A389955.P9158331911115440667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039720 (A075109 (n + 2)).toNat

end

end A389955.P9158331911115440667

/-!
# A389956: Odd numbers that are one less than the square of a perfect power.

The programs for A389956, there is no canonical definition to state claims against.
-/

/-! ## A389956.P6626107472598301750

`A389765(n+1)*A389957(n+1)`
-/

namespace A389956.P6626107472598301750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389765 (n + 1) * A389957 (n + 1)

end

end A389956.P6626107472598301750

/-! ## A389956.P2003235466198503943

`A075090(1+n)²-1`
-/

namespace A389956.P2003235466198503943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075090 (1 + n) ^ 2 - 1

end

end A389956.P2003235466198503943

/-! ## A389956.P10033553501707344671

`A075090(n+1)^2-1`
-/

namespace A389956.P10033553501707344671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075090 (n + 1) ^ 2 - 1

end

end A389956.P10033553501707344671

/-! ## A389956.P3085087017239696943

`(A389765(1+n)+1)²-1`
-/

namespace A389956.P3085087017239696943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A389765 (1 + n) + 1) ^ 2 - 1

end

end A389956.P3085087017239696943

/-! ## A389956.P3099378822298843889

`(A389957(1+n)-1)²-1`
-/

namespace A389956.P3099378822298843889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A389957 (1 + n) - 1) ^ 2 - 1

end

end A389956.P3099378822298843889

/-! ## A389956.P693087711151974734

`∪[A020707(n), A391756(n+1)]²-1`
-/

namespace A389956.P693087711151974734
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020707 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391756 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n ^ 2 : ℤ) - 1

end

end A389956.P693087711151974734

/-! ## A389956.P313459632795002127

`∪[A322793(n+1), A391756(n+1)]²-1`
-/

namespace A389956.P313459632795002127
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322793 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391756 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n ^ 2 : ℤ) - 1

end

end A389956.P313459632795002127

/-! ## A389956.P13053547796143105098

`A389765(n+1)+A075090(n+1)*A389765(n+1)`
-/

namespace A389956.P13053547796143105098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389765 (n + 1) + A075090 (n + 1) * A389765 (n + 1)

end

end A389956.P13053547796143105098

/-! ## A389956.P3056689021903276295

`A075090(n+1)*A389957(n+1)-A389957(n+1)`
-/

namespace A389956.P3056689021903276295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075090 (n + 1) * A389957 (n + 1) - A389957 (n + 1)

end

end A389956.P3056689021903276295

/-! ## A389956.P248062374609317604

`A001597(comp[n*and(1, A001597(n+1))]+1)²-1`
-/

namespace A389956.P248062374609317604
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * Int.land 1 (A001597 (n + 1))

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001597 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1) ^ 2 - 1

end

end A389956.P248062374609317604

/-! ## A389956.P13566909149465212624

`record[A000265(A045542(n+1))+1]²-1`
-/

namespace A389956.P13566909149465212624
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A045542 (n + 1)).toNat + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) ^ 2 - 1

end

end A389956.P13566909149465212624

/-!
# A389957: Even perfect powers plus 1.

The programs for A389957, there is no canonical definition to state claims against.
-/

/-! ## A389957.P12361203599370532725

`A075090(n+1)+1`
-/

namespace A389957.P12361203599370532725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075090 (n + 1) + 1

end

end A389957.P12361203599370532725

/-! ## A389957.P15008607490429855780

`A389765(n+1)+2`
-/

namespace A389957.P15008607490429855780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389765 (n + 1) + 2

end

end A389957.P15008607490429855780

/-! ## A389957.P4977194353744106511

`ceil(sqrt(A389956(1+n)))+1`
-/

namespace A389957.P4977194353744106511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (A389956 (1 + n) : ℝ)⌉ + 1

end

end A389957.P4977194353744106511

/-! ## A389957.P1156750084693549290

`floor(sqrt(A389956(n+1)))+2`
-/

namespace A389957.P1156750084693549290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A389956 (n + 1)) + 2

end

end A389957.P1156750084693549290

/-! ## A389957.P14726312714387261019

`∪[A020707(n), A391756(n+1)]+1`
-/

namespace A389957.P14726312714387261019
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020707 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391756 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n + 1

end

end A389957.P14726312714387261019

/-! ## A389957.P4640788396109471149

`∪[A322793(n+1), A391756(n+1)]+1`
-/

namespace A389957.P4640788396109471149
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322793 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391756 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n + 1

end

end A389957.P4640788396109471149

/-! ## A389957.P18157724880447972953

`∪[A000079(n+2), A391756(n+1)]+1`
-/

namespace A389957.P18157724880447972953
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391756 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n + 1

end

end A389957.P18157724880447972953

/-! ## A389957.P8458607854926311812

`filter[A001597(n+1)+1, #%2]`
-/

namespace A389957.P8458607854926311812
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001597 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => Int.tmod (f1 j) 2 = 1) n)

end

end A389957.P8458607854926311812

/-! ## A389957.P934299172415170735

`A001597(eq[2, gcd(2, A001597(n+1))]+1)+1`
-/

namespace A389957.P934299172415170735
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 2 (A001597 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001597 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1) + 1

end

end A389957.P934299172415170735

/-! ## A389957.P3823193096798079059

`A001597(comp[n*and(1, A001597(n+1))]+1)+1`
-/

namespace A389957.P3823193096798079059
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * Int.land 1 (A001597 (n + 1))

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001597 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1) + 1

end

end A389957.P3823193096798079059

/-! ## A389957.P2149421539834689306

`record[A000265(A045542(n+1))+1]+1`
-/

namespace A389957.P2149421539834689306
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A045542 (n + 1)).toNat + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + 1

end

end A389957.P2149421539834689306

/-! ## A389957.P17059596613784743061

`∩[2*n+1, A216765(n+1)]`
-/

namespace A389957.P17059596613784743061
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216765 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A389957.P17059596613784743061

/-! ## A389957.P6900895265014707380

`record[A000265(A216765(n+1))]`
-/

namespace A389957.P6900895265014707380
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A216765 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A389957.P6900895265014707380

/-! ## A389957.P12390423242667622437

`filter[A216765(n+1), A374134(#)]`
-/

namespace A389957.P12390423242667622437
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216765 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A374134 (f1 j).toNat = 1) n)

end

end A389957.P12390423242667622437

/-! ## A389957.P3929797640586327945

`filter[A216765(n+1), A379952(#)]`
-/

namespace A389957.P3929797640586327945
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216765 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A379952 (f1 j).toNat = 1) n)

end

end A389957.P3929797640586327945

/-! ## A389957.P10272871610651666735

`∩[A004766(n+1), A080262(n+1)]`
-/

namespace A389957.P10272871610651666735
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004766 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080262 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A389957.P10272871610651666735

/-! ## A389957.P4697426581648222893

`∩[A080262(n+1), A016813(n)]`
-/

namespace A389957.P4697426581648222893
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080262 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016813 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A389957.P4697426581648222893

/-! ## A389957.P3636716242516904118

`∩[A216765(n+1), A016813(n)]`
-/

namespace A389957.P3636716242516904118
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216765 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016813 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A389957.P3636716242516904118

/-! ## A389957.P13002296298332820788

`∩[A216765(n+1), A372293(n+1)]`
-/

namespace A389957.P13002296298332820788
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216765 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372293 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A389957.P13002296298332820788

/-!
# A389958: Odd perfect powers (not including 1) plus 1.

The programs for A389958, there is no canonical definition to state claims against.
-/

/-! ## A389958.P8348046015857810783

`A389764(n+1)+2`
-/

namespace A389958.P8348046015857810783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389764 (n + 1) + 2

end

end A389958.P8348046015857810783

/-! ## A389958.P11785124768463361873

`A075109(n+2)+1`
-/

namespace A389958.P11785124768463361873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075109 (n + 2) + 1

end

end A389958.P11785124768463361873

/-! ## A389958.P17361451781600518856

`floor(sqrt(A389955(1+n)))+2`
-/

namespace A389958.P17361451781600518856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A389955 (1 + n)) + 2

end

end A389958.P17361451781600518856

/-! ## A389958.P9236002709527182082

`ceil(sqrt(A389955(n+1)))+1`
-/

namespace A389958.P9236002709527182082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (A389955 (n + 1) : ℝ)⌉ + 1

end

end A389958.P9236002709527182082

/-! ## A389958.P1742703679326220182

`round(sqrt(A389955(A052938(2*n))))+1`
-/

namespace A389958.P1742703679326220182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (A389955 (A052938 (2 * n)).toNat : ℝ)) + 1

end

end A389958.P1742703679326220182

/-! ## A389958.P2944409910012861546

`A216765(lt[A045542(n+1)%2, 1]+1)`
-/

namespace A389958.P2944409910012861546
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A045542 (n + 1)) 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216765 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1)

end

end A389958.P2944409910012861546

/-! ## A389958.P2627967421676603745

`A216765(lt[A216765(n+1)%2, 1]+1)`
-/

namespace A389958.P2627967421676603745
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A216765 (n + 1)) 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216765 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1)

end

end A389958.P2627967421676603745

/-! ## A389958.P7602225167653800788

`filter[A001597(2+n), #%2]+1`
-/

namespace A389958.P7602225167653800788
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001597 (2 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => Int.tmod (f1 j) 2 = 1) n) + 1

end

end A389958.P7602225167653800788

/-! ## A389958.P15290122904566272683

`filter[A001597(n+3), and(1, #)]+1`
-/

namespace A389958.P15290122904566272683
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001597 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => Int.land 1 (f1 j) = 1) n) + 1

end

end A389958.P15290122904566272683

/-! ## A389958.P16698528531720557484

`∩[A001597(n+2), A062739(n+1)]+1`
-/

namespace A389958.P16698528531720557484
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001597 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062739 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n + 1

end

end A389958.P16698528531720557484

/-! ## A389958.P8265927945786556364

`∩[2*n, A216765(n+1)]`
-/

namespace A389958.P8265927945786556364
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216765 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A389958.P8265927945786556364

/-! ## A389958.P17762681068957742718

`filter[A216765(n+1), A323170(#)]`
-/

namespace A389958.P17762681068957742718
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216765 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323170 (f1 j).toNat = 1) n)

end

end A389958.P17762681068957742718

/-! ## A389958.P9849579311252063063

`filter[A216765(n+3), A354034(#)]`
-/

namespace A389958.P9849579311252063063
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216765 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354034 (f1 j).toNat = 1) n)

end

end A389958.P9849579311252063063

/-!
# A389959: Powers k^m, m > 0, of Achilles numbers k.

The programs for A389959, there is no canonical definition to state claims against.
-/

/-! ## A389959.P11538597621407956929

`∪[A052486(1+n), A383394(n+1)]`
-/

namespace A389959.P11538597621407956929
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052486 (1 + n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383394 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A389959.P11538597621407956929

/-! ## A389959.P1222593323333562207

`filter[A072412(n+1), A112526(#)]`
-/

namespace A389959.P1222593323333562207
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072412 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A112526 (f1 j).toNat = 1) n)

end

end A389959.P1222593323333562207

/-!
# A389960: Powers p^m, with prime p and m > 1, such that neither p^m-1 nor p^m+1 are squarefree.

The programs for A389960, there is no canonical definition to state claims against.
-/

/-! ## A389960.P781184734260081574

`∩[A025475(n+1), A378629(n+1)]`
-/

namespace A389960.P781184734260081574
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025475 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378629 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A389960.P781184734260081574

/-! ## A389960.P13524265521258632890

`∩[A073540(n+1), A378629(n+1)]`
-/

namespace A389960.P13524265521258632890
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073540 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378629 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A389960.P13524265521258632890

/-! ## A389960.P3852459602707283102

`∩[A134611(n+1), A378629(n+1)]`
-/

namespace A389960.P3852459602707283102
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134611 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378629 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A389960.P3852459602707283102

/-! ## A389960.P7298904479489120969

`∩[A134612(n+1), A378629(n+1)]`
-/

namespace A389960.P7298904479489120969
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134612 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378629 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A389960.P7298904479489120969

/-! ## A389960.P11889696088576602838

`∩[A246547(n+1), A378629(n+1)]`
-/

namespace A389960.P11889696088576602838
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246547 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378629 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A389960.P11889696088576602838

/-! ## A389960.P11114476738455247560

`∩[A306531(n+1), A378629(n+1)]`
-/

namespace A389960.P11114476738455247560
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306531 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378629 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A389960.P11114476738455247560

/-! ## A389960.P14528066851067911206

`∩[A119492(n+1), A378629(n+1)]`
-/

namespace A389960.P14528066851067911206
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119492 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378629 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A389960.P14528066851067911206

/-!
# A389961: a(n) is the number of edges in the graph PG(n) with one node for each free n-celled polyiamond and edges between nodes corresponding to polyiamonds that can be obtained from each other by moving one cell, where the intermediate polyform (the set of cells remaining when the cell to be moved is detached) is not required to be a connected polyiamond.

The programs for A389961, there is no canonical definition to state claims against.
-/

/-! ## A389961.P2884401324761942094

`A249562(n)-A098668(A249560(n))`
-/

namespace A389961.P2884401324761942094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249562 n - A098668 (A249560 n).toNat

end

end A389961.P2884401324761942094

/-! ## A389961.P16092680153380468231

`A381583(A137551(n+3))%A137551(n)`
-/

namespace A389961.P16092680153380468231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A381583 (A137551 (n + 3)).toNat) (A137551 n)

end

end A389961.P16092680153380468231

/-! ## A389961.P16449165161535379929

`A389964(n+1)+A111892(n+2)*A389966(2*n+5)`
-/

namespace A389961.P16449165161535379929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389964 (n + 1) + A111892 (n + 2) * A389966 (2 * n + 5)

end

end A389961.P16449165161535379929

/-!
# A389962: Maximum degree of the polyiamond graph PG(n) defined in A389961.

The programs for A389962, there is no canonical definition to state claims against.
-/

/-! ## A389962.P260084050729824994

`or(A111892(A305296(n)), A389965(n+1))`
-/

namespace A389962.P260084050729824994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A111892 (A305296 n).toNat) (A389965 (n + 1))

end

end A389962.P260084050729824994

/-! ## A389962.P4898785080916304739

`or(A111892(A221529(n+3)), A389965(n+1))`
-/

namespace A389962.P4898785080916304739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A111892 (A221529 (n + 3)).toNat) (A389965 (n + 1))

end

end A389962.P4898785080916304739

/-! ## A389962.P4867128170855111598

`A389965(n+1)+A037909(A005177(n))`
-/

namespace A389962.P4867128170855111598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389965 (n + 1) + A037909 (A005177 n).toNat

end

end A389962.P4867128170855111598

/-! ## A389962.P6747751275687488755

`A389965(n+1)+A353637(A074911(3*n+4))`
-/

namespace A389962.P6747751275687488755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389965 (n + 1) + A353637 (A074911 (3 * n + 4)).toNat

end

end A389962.P6747751275687488755

/-! ## A389962.P3944654859088733053

`A389965(n+1)+A214411(A329050(n))`
-/

namespace A389962.P3944654859088733053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389965 (n + 1) + A214411 (A329050 n).toNat

end

end A389962.P3944654859088733053

/-!
# A389964: a(n) is the number of edges in the graph PG(n) with one node for each free n-celled polyiamond and edges between nodes corresponding to polyiamonds that can be obtained from each other by moving one cell, where the intermediate polyform (the set of cells remaining when the cell to be moved is detached) is required to be a connected polyiamond.

The programs for A389964, there is no canonical definition to state claims against.
-/

/-! ## A389964.P7569954505462050353

`A127240(A161999(n+1))-A127240(n)`
-/

namespace A389964.P7569954505462050353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127240 (A161999 (n + 1)).toNat - A127240 n

end

end A389964.P7569954505462050353

/-! ## A389964.P9402844279016083132

`A000961(A295193(n+1))%A190790(n)`
-/

namespace A389964.P9402844279016083132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000961 (A295193 (n + 1)).toNat) (A190790 n)

end

end A389964.P9402844279016083132

/-! ## A389964.P5562862425739078193

`A231652(A377040(2*n+1))%A231601(n)`
-/

namespace A389964.P5562862425739078193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A231652 (A377040 (2 * n + 1)).toNat) (A231601 n)

end

end A389964.P5562862425739078193

/-!
# A389965: Maximum degree of the polyiamond graph PG(n) defined in A389964.

The programs for A389965, there is no canonical definition to state claims against.
-/

/-! ## A389965.P6240659020277472909

`A389962(n+1)-A037909(A005177(n))`
-/

namespace A389965.P6240659020277472909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389962 (n + 1) - A037909 (A005177 n).toNat

end

end A389965.P6240659020277472909

/-! ## A389965.P13836148080156297261

`A389962(n+1)-A083891(A143007(3*(n+1)))`
-/

namespace A389965.P13836148080156297261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389962 (n + 1) - A083891 (A143007 (3 * (n + 1))).toNat

end

end A389965.P13836148080156297261

/-! ## A389965.P2998856894799914257

`A389962(n+1)-A353637(A074911(3*n+4))`
-/

namespace A389965.P2998856894799914257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389962 (n + 1) - A353637 (A074911 (3 * n + 4)).toNat

end

end A389965.P2998856894799914257

/-!
# A389967: Let PG(n) be the graph with one node for each free n-celled polyhex and edges between nodes corresponding to polyhexes that can be obtained from each other by moving one cell, where the intermediate polyform (the set of cells remaining when the cell to be moved is detached) is not required to be a connected polyhex. a(n) is the number of edges in PG(n).

The programs for A389967, there is no canonical definition to state claims against.
-/

/-! ## A389967.P10817247304141335122

`A351978(12*n+1)`
-/

namespace A389967.P10817247304141335122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351978 (12 * n + 1)

end

end A389967.P10817247304141335122

/-!
# A389968: Maximum degree of the polyhex graph PG(n) defined in A389967.

The programs for A389968, there is no canonical definition to state claims against.
-/

/-! ## A389968.P14200940188923261470

`A389971(n+1)+A359430(n+2)`
-/

namespace A389968.P14200940188923261470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389971 (n + 1) + A359430 (n + 2)

end

end A389968.P14200940188923261470

/-! ## A389968.P16700524531435966205

`A389971(n+1)+A037909(2*n+1)`
-/

namespace A389968.P16700524531435966205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389971 (n + 1) + A037909 (2 * n + 1)

end

end A389968.P16700524531435966205

/-! ## A389968.P4967232853483322107

`A389971(n+1)+A068307(A271410(n))`
-/

namespace A389968.P4967232853483322107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389971 (n + 1) + A068307 (A271410 n).toNat

end

end A389968.P4967232853483322107

/-! ## A389968.P15339935248647028109

`A389971(n+1)+A369968(A034024(n))`
-/

namespace A389968.P15339935248647028109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389971 (n + 1) + A369968 (A034024 n).toNat

end

end A389968.P15339935248647028109

/-! ## A389968.P5183093679826644831

`A389971(n+1)+A048720(A298211(n+1))`
-/

namespace A389968.P5183093679826644831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389971 (n + 1) + A048720 (A298211 (n + 1)).toNat

end

end A389968.P5183093679826644831

/-!
# A389970: Let PG(n) be the graph with one node for each free n-celled polyhex and edges between nodes corresponding to polyhexes that can be obtained from each other by moving one cell, where the intermediate polyform (the set of cells remaining when the cell to be moved is detached) is required to be a connected polyhex. a(n) is the number of edges in PG(n).

The programs for A389970, there is no canonical definition to state claims against.
-/

/-! ## A389970.P7963360497200968434

`A282380(7^n)`
-/

namespace A389970.P7963360497200968434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282380 (7 ^ n)

end

end A389970.P7963360497200968434

/-!
# A389971: Maximum degree of the polyhex graph PG(n) defined in A389970.

The programs for A389971, there is no canonical definition to state claims against.
-/

/-! ## A389971.P11075317098953160592

`A389968(n+1)-A037909(A271410(n))`
-/

namespace A389971.P11075317098953160592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389968 (n + 1) - A037909 (A271410 n).toNat

end

end A389971.P11075317098953160592

/-! ## A389971.P8512867041915481736

`A389968(n+1)-A369968(A034024(n))`
-/

namespace A389971.P8512867041915481736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389968 (n + 1) - A369968 (A034024 n).toNat

end

end A389971.P8512867041915481736

/-! ## A389971.P2281748632643651492

`A389968(n+1)-A323162(A103695(3*n+1))`
-/

namespace A389971.P2281748632643651492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389968 (n + 1) - A323162 (A103695 (3 * n + 1)).toNat

end

end A389971.P2281748632643651492

/-! ## A389971.P18073747508838394405

`A389968(n+1)-A358771(A333213(2*(n+2)))`
-/

namespace A389971.P18073747508838394405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389968 (n + 1) - A358771 (A333213 (2 * (n + 2))).toNat

end

end A389971.P18073747508838394405

/-! ## A389971.P8908787177333670775

`A389968(n+1)-A171588(A389959(3*n+4))`
-/

namespace A389971.P8908787177333670775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389968 (n + 1) - A171588 (A389959 (3 * n + 4)).toNat

end

end A389971.P8908787177333670775

/-!
# A389976: Expansion of e.g.f. exp(2*x)*(exp(x) - x).

The programs for A389976, the canonical program `A389976.P12702085776211857490` is in `Seq.B000.C050`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A389976 has offset 0).

The definition of A389976 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A389976.P17771747234386178960

`ogf((1-5x+7x^2)/(1-7x+16x^2-12x^3))`
-/

namespace A389976.P17771747234386178960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -5, 7] [1, -7, 16, -12] n

end

end A389976.P17771747234386178960

namespace A389976

/-- `ogf((1-5x+7x^2)/(1-7x+16x^2-12x^3))` -/
def P17771747234386178960.Spec : Prop :=
  ∀ n, P17771747234386178960.a n = A389976 n

end A389976

/-! ## A389976.P12702085776211857490

`3^n-n*2^(n-1)`

The canonical program, it is in `Seq.B000.C050`.
-/

namespace A389976

/-- `3^n-n*2^(n-1)` -/
def P12702085776211857490.Spec : Prop :=
  ∀ n, P12702085776211857490.a n = (A389976 n : ℚ)

end A389976

/-! ## A389976.P16646686657677235066

`abs(A001787(n)-3^n)`
-/

namespace A389976.P16646686657677235066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A001787 n - (3 ^ n : ℤ)|

end

end A389976.P16646686657677235066

namespace A389976

/-- `abs(A001787(n)-3^n)` -/
def P16646686657677235066.Spec : Prop :=
  ∀ n, P16646686657677235066.a n = A389976 n

end A389976

/-! ## A389976.P16063327357108274143

`∑{#}[n, C(n, #)*A000325(#)]`
-/

namespace A389976.P16063327357108274143
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), (Nat.choose n k : ℤ) * A000325 k

end

end A389976.P16063327357108274143

namespace A389976

/-- `∑{#}[n, C(n, #)*A000325(#)]` -/
def P16063327357108274143.Spec : Prop :=
  ∀ n, P16063327357108274143.a n = A389976 n

end A389976

/-! ## A389976.P4071513563808977506

`∑[A083580(n)+floor(1/(n+1))]`
-/

namespace A389976.P4071513563808977506
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083580 n + ⌊1 / (n + 1 : ℚ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A389976.P4071513563808977506

namespace A389976

/-- `∑[A083580(n)+floor(1/(n+1))]` -/
def P4071513563808977506.Spec : Prop :=
  ∀ n, P4071513563808977506.a n = A389976 n

end A389976

/-! ## A389976.P18301506976901611377

`floor(A034472(n)-∑{#}[n, (2-C(#, n))^(n-1)])`
-/

namespace A389976.P18301506976901611377
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A034472 n : ℚ) - ∑ k ∈ Finset.range (f1 n + 1), (2 - (Nat.choose k n : ℤ) : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌋

end

end A389976.P18301506976901611377

namespace A389976

/-- `floor(A034472(n)-∑{#}[n, (2-C(#, n))^(n-1)])` -/
def P18301506976901611377.Spec : Prop :=
  ∀ n, P18301506976901611377.a n = A389976 n

end A389976

/-! ## A389976.P6750229267276352565

`ceil(A000244(n)-∑{#}[n-1, 2^(C(#, n)+n-1)])`
-/

namespace A389976.P6750229267276352565
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A000244 n : ℚ) - ∑ k ∈ Finset.range (f1 n + 1).toNat, (2 : ℚ) ^ ((Nat.choose k n : ℤ) + ((n : ℤ) - 1) : ℤ)⌉

end

end A389976.P6750229267276352565

namespace A389976

/-- `ceil(A000244(n)-∑{#}[n-1, 2^(C(#, n)+n-1)])` -/
def P6750229267276352565.Spec : Prop :=
  ∀ n, P6750229267276352565.a n = A389976 n

end A389976

/-! ## A389976.P14983318341843850942

`∑[A083580(sqrt(A253909(n)))]`
-/

namespace A389976.P14983318341843850942
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083580 (SequenceMachineLib.roundAway (Real.sqrt (A253909 n : ℝ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A389976.P14983318341843850942

namespace A389976

/-- `∑[A083580(sqrt(A253909(n)))]` -/
def P14983318341843850942.Spec : Prop :=
  ∀ n, P14983318341843850942.a n = A389976 n

end A389976

/-! ## A389976.P15803266353656903765

`abs(A000244(n)-A001787(n))`
-/

namespace A389976.P15803266353656903765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A000244 n - A001787 n|

end

end A389976.P15803266353656903765

namespace A389976

/-- `abs(A000244(n)-A001787(n))` -/
def P15803266353656903765.Spec : Prop :=
  ∀ n, P15803266353656903765.a n = A389976 n

end A389976

/-! ## A389976.P11015937427311755934

`∑[A083580(A000007(n)+n)]`
-/

namespace A389976.P11015937427311755934
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083580 (A000007 n + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A389976.P11015937427311755934

namespace A389976

/-- `∑[A083580(A000007(n)+n)]` -/
def P11015937427311755934.Spec : Prop :=
  ∀ n, P11015937427311755934.a n = A389976 n

end A389976

/-! ## A389976.P3334874147290101773

`∑[or(A000007(n), A083580(n))]`
-/

namespace A389976.P3334874147290101773
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A083580 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A389976.P3334874147290101773

namespace A389976

/-- `∑[or(A000007(n), A083580(n))]` -/
def P3334874147290101773.Spec : Prop :=
  ∀ n, P3334874147290101773.a n = A389976 n

end A389976

/-!
# A389977: Absolute value of the inverse Möbius transform of n*mu(n)*sigma(n).

The programs for A389977, the canonical program `A389977.P1914905365809333279` is in `Seq.B001.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A389977 has offset 1).

The definition of A389977 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A389977.P1914905365809333279

`(-1)^A001221(n+1)*∑{d}[n+1, #*A008683(#)*A000203(#)]`

The canonical program, it is in `Seq.B001.C014`.
-/

namespace A389977

/-- `(-1)^A001221(n+1)*∑{d}[n+1, #*A008683(#)*A000203(#)]` -/
def P1914905365809333279.Spec : Prop :=
  ∀ n, P1914905365809333279.a n = (A389977 (n + 1) : ℚ)

end A389977

/-! ## A389977.P17985859025942923642

`(-1)^A001221(n+1)*∑{d}[n+1, #*A008683(#)*A048250(#)]`
-/

namespace A389977.P17985859025942923642
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (-1 : ℚ) ^ (A001221 (n + 1) : ℤ) * ((∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A008683 d * A048250 d : ℤ) : ℚ)

end

end A389977.P17985859025942923642

namespace A389977

/-- `(-1)^A001221(n+1)*∑{d}[n+1, #*A008683(#)*A048250(#)]` -/
def P17985859025942923642.Spec : Prop :=
  ∀ n, P17985859025942923642.a n = (A389977 (n + 1) : ℚ)

end A389977

/-! ## A389977.P1845732414497763770

`∏{p}[n+1, #-1+#²]`
-/

namespace A389977.P1845732414497763770
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), ((p : ℤ) - 1 + (p ^ 2 : ℤ))

end

end A389977.P1845732414497763770

namespace A389977

/-- `∏{p}[n+1, #-1+#²]` -/
def P1845732414497763770.Spec : Prop :=
  ∀ n, P1845732414497763770.a n = A389977 (n + 1)

end A389977

/-! ## A389977.P9478621276322822542

`A069097(∏{p}[n+1, #])`
-/

namespace A389977.P9478621276322822542
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069097 (∏ p ∈ Nat.primeFactors (f1 n), p)

end

end A389977.P9478621276322822542

namespace A389977

/-- `A069097(∏{p}[n+1, #])` -/
def P9478621276322822542.Spec : Prop :=
  ∀ n, P9478621276322822542.a n = A389977 (n + 1)

end A389977

/-! ## A389977.P12886711105533517685

`A140697(∏{p}[n+1, #])`
-/

namespace A389977.P12886711105533517685
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140697 (∏ p ∈ Nat.primeFactors (f1 n), p)

end

end A389977.P12886711105533517685

namespace A389977

/-- `A140697(∏{p}[n+1, #])` -/
def P12886711105533517685.Spec : Prop :=
  ∀ n, P12886711105533517685.a n = A389977 (n + 1)

end A389977

/-! ## A389977.P9753439371495053848

`A372906(∏{p}[n+1, #])`
-/

namespace A389977.P9753439371495053848
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372906 (∏ p ∈ Nat.primeFactors (f1 n), p)

end

end A389977.P9753439371495053848

namespace A389977

/-- `A372906(∏{p}[n+1, #])` -/
def P9753439371495053848.Spec : Prop :=
  ∀ n, P9753439371495053848.a n = A389977 (n + 1)

end A389977

/-! ## A389977.P9567198029581166885

`A372918(∏{p}[n+1, #])`
-/

namespace A389977.P9567198029581166885
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372918 (∏ p ∈ Nat.primeFactors (f1 n), p)

end

end A389977.P9567198029581166885

namespace A389977

/-- `A372918(∏{p}[n+1, #])` -/
def P9567198029581166885.Spec : Prop :=
  ∀ n, P9567198029581166885.a n = A389977 (n + 1)

end A389977

/-! ## A389977.P5725756967744496143

`A396901(∏{p}[n+1, #])`
-/

namespace A389977.P5725756967744496143
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A396901 (∏ p ∈ Nat.primeFactors (f1 n), p)

end

end A389977.P5725756967744496143

namespace A389977

/-- `A396901(∏{p}[n+1, #])` -/
def P5725756967744496143.Spec : Prop :=
  ∀ n, P5725756967744496143.a n = A389977 (n + 1)

end A389977

/-! ## A389977.P683910175036304600

`A069097(A007947(n+1))`
-/

namespace A389977.P683910175036304600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069097 (A007947 (n + 1)).toNat

end

end A389977.P683910175036304600

namespace A389977

/-- `A069097(A007947(n+1))` -/
def P683910175036304600.Spec : Prop :=
  ∀ n, P683910175036304600.a n = A389977 (n + 1)

end A389977

/-! ## A389977.P14107857964220033907

`A049060(A078615(n+1))`
-/

namespace A389977.P14107857964220033907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049060 (A078615 (n + 1)).toNat

end

end A389977.P14107857964220033907

namespace A389977

/-- `A049060(A078615(n+1))` -/
def P14107857964220033907.Spec : Prop :=
  ∀ n, P14107857964220033907.a n = A389977 (n + 1)

end A389977

/-! ## A389977.P15501476589349463494

`A049060(A007947(n+1)²)`
-/

namespace A389977.P15501476589349463494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049060 (A007947 (n + 1) ^ 2).toNat

end

end A389977.P15501476589349463494

namespace A389977

/-- `A049060(A007947(n+1)²)` -/
def P15501476589349463494.Spec : Prop :=
  ∀ n, P15501476589349463494.a n = A389977 (n + 1)

end A389977

/-! ## A389977.P2841068462273256742

`A327668(A007947(n+1)²)`
-/

namespace A389977.P2841068462273256742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327668 (A007947 (n + 1) ^ 2).toNat

end

end A389977.P2841068462273256742

namespace A389977

/-- `A327668(A007947(n+1)²)` -/
def P2841068462273256742.Spec : Prop :=
  ∀ n, P2841068462273256742.a n = A389977 (n + 1)

end A389977

/-!
# A389978: Arithmetic mean of A367866(n), A389977(n), A367865(n), and A389775(n).

The programs for A389978, the canonical program `A389978.P11057801239353336725` is in `Seq.B004.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A389978 has offset 1).

The definition of A389978 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A389978.P11057801239353336725

`(A367866(n+1)+A389977(n+1)+A367865(n+1)+A389775(n+1))/4`

The canonical program, it is in `Seq.B004.C004`.
-/

namespace A389978

/-- `(A367866(n+1)+A389977(n+1)+A367865(n+1)+A389775(n+1))/4` -/
def P11057801239353336725.Spec : Prop :=
  ∀ n, P11057801239353336725.a n = (A389978 (n + 1) : ℚ)

end A389978

/-! ## A389978.P7918787804974532035

`1/4*∑{d}[n+1, #*A008683(#)*((-1)^A001221(n+1)+A008683(#))*(A000203(#)+A000010(#))]`
-/

namespace A389978.P7918787804974532035
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 : ℚ) / 4 * (∑ d ∈ Nat.divisors (f1 n), ((d : ℤ) * A008683 d : ℚ) * ((-1 : ℚ) ^ (A001221 (n + 1) : ℤ) + (A008683 d : ℚ)) * (A000203 d + A000010 d : ℚ))

end

end A389978.P7918787804974532035

namespace A389978

/-- `1/4*∑{d}[n+1, #*A008683(#)*((-1)^A001221(n+1)+A008683(#))*(A000203(#)+A000010(#))]` -/
def P7918787804974532035.Spec : Prop :=
  ∀ n, P7918787804974532035.a n = (A389978 (n + 1) : ℚ)

end A389978

/-!
# A389979: Positive integers (not multiples of 10) whose constant congruence speed is greater than the sum of the constant congruence speeds of all their prime factors counted with multiplicity.

The programs for A389979, there is no canonical definition to state claims against.
-/

/-! ## A389979.P15074133548621653931

`A046388(A025475(n+2)^A083345(n+1))`
-/

namespace A389979.P15074133548621653931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046388 (SequenceMachineLib.roundAway ((A025475 (n + 2) : ℚ) ^ (A083345 (n + 1) : ℤ))).toNat

end

end A389979.P15074133548621653931

/-!
# A389981: Positive integers (not multiples of 10) whose constant congruence speed is greater than the product of the constant congruence speeds of all their prime factors (see A373387 for the definition of "constant congruence speed").

The programs for A389981, there is no canonical definition to state claims against.
-/

/-! ## A389981.P1577647499117806845

`∩[A331201(n+1), A390320(n+1)]`
-/

namespace A389981.P1577647499117806845
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331201 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390320 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A389981.P1577647499117806845

/-! ## A389981.P13696500192809051163

`∩[A336143(n+1), A390320(n+1)]`
-/

namespace A389981.P13696500192809051163
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336143 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390320 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A389981.P13696500192809051163

/-! ## A389981.P614355192683412704

`∩[A325265(n+1), A390320(n+1)]`
-/

namespace A389981.P614355192683412704
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325265 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390320 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A389981.P614355192683412704

/-! ## A389981.P16637311805345768085

`∩[A368459(n+1), A390320(n+1)]`
-/

namespace A389981.P16637311805345768085
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368459 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390320 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A389981.P16637311805345768085

/-! ## A389981.P1635185762059686972

`∩[A390320(n+1), A049386(n)]`
-/

namespace A389981.P1635185762059686972
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390320 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049386 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A389981.P1635185762059686972

/-!
# A389982: Triangle in which row n contains values from 1 to n in alphabetical order (in German).

The programs for A389982, there is no canonical definition to state claims against.
-/

/-! ## A389982.P4659142843565816865

`A194832(n+1)+A102683(A056040(n))`
-/

namespace A389982.P4659142843565816865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194832 (n + 1) + A102683 (A056040 n).toNat

end

end A389982.P4659142843565816865

/-! ## A389982.P9051690805302615974

`or(A194832(n+1), A324917(A000041(n)))`
-/

namespace A389982.P9051690805302615974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A194832 (n + 1)) (A324917 (A000041 n).toNat)

end

end A389982.P9051690805302615974

/-! ## A389982.P16493976968989883324

`A194899(A278581(n+1)%A236411(n+2))`
-/

namespace A389982.P16493976968989883324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194899 (Int.tmod (A278581 (n + 1)) (A236411 (n + 2))).toNat

end

end A389982.P16493976968989883324

/-! ## A389982.P12233588372351382192

`or(A086013(A022861(n+1)), A194832(n+1))`
-/

namespace A389982.P12233588372351382192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A086013 (A022861 (n + 1)).toNat) (A194832 (n + 1))

end

end A389982.P12233588372351382192

/-! ## A389982.P12630749447958505415

`or(A122840(A064319(n+1)), A194832(n+1))`
-/

namespace A389982.P12630749447958505415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A122840 (A064319 (n + 1)).toNat) (A194832 (n + 1))

end

end A389982.P12630749447958505415

/-!
# A389983: Irregular triangle read by rows: T(n,k) is the number of partitions of the vertex set of the labeled n-dimensional hypercube graph into k connected subsets, 1 <= k <= 2^n.

The programs for A389983, there is no canonical definition to state claims against.
-/

/-! ## A389983.P3874553054699862268

`A220777(A108474(n)+2)`
-/

namespace A389983.P3874553054699862268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220777 (A108474 n + 2).toNat

end

end A389983.P3874553054699862268

/-! ## A389983.P2914172814727849203

`A370072(A007604(n+2))`
-/

namespace A389983.P2914172814727849203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370072 (A007604 (n + 2)).toNat

end

end A389983.P2914172814727849203

/-! ## A389983.P13722148024524613402

`A370072(A013950(n+2))`
-/

namespace A389983.P13722148024524613402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370072 (A013950 (n + 2)).toNat

end

end A389983.P13722148024524613402

/-! ## A389983.P9085933852067240871

`A000188(A001032(n+1)*A005316(n))`
-/

namespace A389983.P9085933852067240871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000188 (A001032 (n + 1) * A005316 n).toNat

end

end A389983.P9085933852067240871

/-! ## A389983.P11669275247733968382

`A000005(A000292(n)^A259572(n+4))`
-/

namespace A389983.P11669275247733968382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (SequenceMachineLib.roundAway ((A000292 n : ℚ) ^ (A259572 (n + 4) : ℤ))).toNat

end

end A389983.P11669275247733968382

/-!
# A389984: Number of partitions of the vertex set of the labeled n-dimensional hypercube graph into 2 connected subsets.

The programs for A389984, there is no canonical definition to state claims against.
-/

/-! ## A389984.P11430813736602345316

`record[char[2^n]*A389983(n)]`
-/

namespace A389984.P11430813736602345316
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ) * A389983 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A389984.P11430813736602345316

/-!
# A389986: E.g.f. A(x) satisfies A(x) = exp(x * (1+x^2)^3 * A(x)).

The programs for A389986, there is no canonical definition to state claims against.
-/

/-! ## A389986.P13434484276919639023

`A265144(C(2*n!, 2))`
-/

namespace A389986.P13434484276919639023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265144 (Nat.choose (2 * Nat.factorial n) 2)

end

end A389986.P13434484276919639023

/-!
# A389987: E.g.f. A(x) satisfies A(x) = exp(x * (1+x^3)^2 * A(x)).

The programs for A389987, there is no canonical definition to state claims against.
-/

/-! ## A389987.P6774568377230205217

`A390184(A303164(n+1))`
-/

namespace A389987.P6774568377230205217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390184 (A303164 (n + 1)).toNat

end

end A389987.P6774568377230205217

/-! ## A389987.P11408531717804867115

`A390184(n*A378544(n+2))`
-/

namespace A389987.P11408531717804867115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390184 ((n : ℤ) * A378544 (n + 2)).toNat

end

end A389987.P11408531717804867115

/-! ## A389987.P8653742116139889569

`A390184(n)%A390200(n+2)`
-/

namespace A389987.P8653742116139889569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A390184 n) (A390200 (n + 2))

end

end A389987.P8653742116139889569

/-!
# A389988: E.g.f. A(x) satisfies A(x) = exp(x * (1+x^3)^3 * A(x)).

The programs for A389988, there is no canonical definition to state claims against.
-/

/-! ## A389988.P8202648374616006177

`A390185(n+A398438(n)*T(n-1,k+1))` with `a(0)=1`
-/

namespace A389988.P8202648374616006177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A390185 ((n : ℤ) + A398438 n * SequenceMachineLib.triUpRight a n).toNat

end

end A389988.P8202648374616006177

/-! ## A389988.P13203012251310990417

`A390185(n+A230831(n+1)*T(n-1,k+1))` with `a(0)=1`
-/

namespace A389988.P13203012251310990417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A390185 ((n : ℤ) + A230831 (n + 1) * SequenceMachineLib.triUpRight a n).toNat

end

end A389988.P13203012251310990417

/-! ## A389988.P2426515241526726506

`A390185(n)+A010051(A002295(n))`
-/

namespace A389988.P2426515241526726506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390185 n + A010051 (A002295 n).toNat

end

end A389988.P2426515241526726506

/-!
# A389989: a(n) = 3^n - 2^n - 2*n - 1, n > 1; a(0)=a(1)=0.

The programs for A389989, the canonical program `A389989.P12723527324584172658` is in `Seq.B000.C050`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A389989 has offset 0).

The definition of A389989 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A389989.P12723527324584172658

`ogf((12x^3-28x^4+12x^5)/(1-7x+17x^2-17x^3+6x^4))`

The canonical program, it is in `Seq.B000.C050`.
-/

namespace A389989

/-- `ogf((12x^3-28x^4+12x^5)/(1-7x+17x^2-17x^3+6x^4))` -/
def P12723527324584172658.Spec : Prop :=
  ∀ n, P12723527324584172658.a n = A389989 n

theorem P12723527324584172658.correct : P12723527324584172658.Spec := by
  intro n
  simp only [A389989]

end A389989

/-! ## A389989.P8323321638138128812

`(A001047(n)-A005408(n))%A083323(n)`
-/

namespace A389989.P8323321638138128812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001047 n - A005408 n) (A083323 n)

end

end A389989.P8323321638138128812

namespace A389989

/-- `(A001047(n)-A005408(n))%A083323(n)` -/
def P8323321638138128812.Spec : Prop :=
  ∀ n, P8323321638138128812.a n = A389989 n

end A389989

/-! ## A389989.P16156357177488395831

`A100103(n)%A134064(n)`
-/

namespace A389989.P16156357177488395831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A100103 n) (A134064 n)

end

end A389989.P16156357177488395831

namespace A389989

/-- `A100103(n)%A134064(n)` -/
def P16156357177488395831.Spec : Prop :=
  ∀ n, P16156357177488395831.a n = A389989 n

end A389989

/-! ## A389989.P10595998289323857861

`A001047(n)-A004273(n+1)%A000108(2*n)`
-/

namespace A389989.P10595998289323857861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001047 n - Int.tmod (A004273 (n + 1)) (A000108 (2 * n))

end

end A389989.P10595998289323857861

namespace A389989

/-- `A001047(n)-A004273(n+1)%A000108(2*n)` -/
def P10595998289323857861.Spec : Prop :=
  ∀ n, P10595998289323857861.a n = A389989 n

end A389989

/-! ## A389989.P14733358104203892705

`(A001047(n)-A005408(n))%A005649(n)`
-/

namespace A389989.P14733358104203892705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001047 n - A005408 n) (A005649 n)

end

end A389989.P14733358104203892705

namespace A389989

/-- `(A001047(n)-A005408(n))%A005649(n)` -/
def P14733358104203892705.Spec : Prop :=
  ∀ n, P14733358104203892705.a n = A389989 n

end A389989

/-!
# A389991: Total number of descents in all heapable permutations of length n.

The programs for A389991, there is no canonical definition to state claims against.
-/

/-! ## A389991.P1527577674183148194

`A389256(n+1)-A336282(n+1)`
-/

namespace A389991.P1527577674183148194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389256 (n + 1) - A336282 (n + 1)

end

end A389991.P1527577674183148194

/-! ## A389991.P2756026462252622075

`A389256(n+1)+A389792(n+1)-A389232(n+1)`
-/

namespace A389991.P2756026462252622075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389256 (n + 1) + (A389792 (n + 1) - A389232 (n + 1))

end

end A389991.P2756026462252622075

/-! ## A389991.P16873101206132608534

`A004526(A167995(n+1)-A004525(n))`
-/

namespace A389991.P16873101206132608534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A167995 (n + 1) - A004525 n).toNat

end

end A389991.P16873101206132608534

/-!
# A389992: Expansion of e.g.f. exp( x/(1-x)^2 ) / (1-x)^3.

The programs for A389992, the canonical program `A389992.P11819902725536475508` is in `Seq.B000.C050`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A389992 has offset 0).

The definition of A389992 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A389992.P11819902725536475508

`n!*∑{#}[n, C(n+#+2, n-#)/#!]`

The canonical program, it is in `Seq.B000.C050`.
-/

namespace A389992

/-- `n!*∑{#}[n, C(n+#+2, n-#)/#!]` -/
def P11819902725536475508.Spec : Prop :=
  ∀ n, P11819902725536475508.a n = (A389992 n : ℚ)

end A389992

/-!
# A389993: Triangle read by rows: T(n,k) = number of heapable permutations of length n with exactly k consecutive pairs.

The programs for A389993, there is no canonical definition to state claims against.
-/

/-! ## A389993.P13025023742609270762

`A330248(A087644(n+3))`
-/

namespace A389993.P13025023742609270762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330248 (A087644 (n + 3)).toNat

end

end A389993.P13025023742609270762

/-! ## A389993.P10610640072851270070

`A139352(A208452(n)+A087117(n))`
-/

namespace A389993.P10610640072851270070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139352 (A208452 n + A087117 n).toNat

end

end A389993.P10610640072851270070

/-! ## A389993.P2161888607751066188

`A005811(or(A333213(n), A389242(n)))`
-/

namespace A389993.P2161888607751066188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005811 (Int.lor (A333213 n) (A389242 n)).toNat

end

end A389993.P2161888607751066188

/-! ## A389993.P7124915259927013204

`A368699(A128882(n))+A354666(n+1)`
-/

namespace A389993.P7124915259927013204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368699 (A128882 n).toNat + A354666 (n + 1)

end

end A389993.P7124915259927013204

/-! ## A389993.P4240750870664247611

`A295230(A165941(n))%A165916(n+4)`
-/

namespace A389993.P4240750870664247611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A295230 (A165941 n).toNat) (A165916 (n + 4))

end

end A389993.P4240750870664247611

