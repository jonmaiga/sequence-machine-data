import SequenceMachineLib
import Mathlib.Tactic
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
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
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C037
import Seq.B000.C038
import Seq.B000.C039
import Seq.B000.C040
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C010
import Seq.B001.C011
import Seq.B001.C012
import Seq.B002.C000
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C005
import Seq.B002.C006
import Seq.B002.C007
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B003.C005
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C000
import Seq.B008.C000
import Seq.B009.C000
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
import Seq.Opaque.C012
import Seq.Opaque.C014
import Seq.Opaque.C016
import Seq.Opaque.C017
import Seq.Opaque.C018
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
# A010700: Period 2: repeat (2,10).

The programs for A010700, the canonical program `A010700.P12156504642853319050` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A010700 has offset 0).

The definition of A010700 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A010700.P12156504642853319050

`2+8*n%2`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A010700

/-- `2+8*n%2` -/
def P12156504642853319050.Spec : Prop :=
  ∀ n, (P12156504642853319050.a n : ℤ) = A010700 n

theorem P12156504642853319050.correct : P12156504642853319050.Spec := by
  intro n
  simp only [A010700]

end A010700

/-!
# A010702: Period 2: repeat (3,4).

The programs for A010702, the canonical program `A010702.P17030898990559455855` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A010702 has offset 0).

The definition of A010702 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A010702.P17030898990559455855

`3+n%2`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A010702

/-- `3+n%2` -/
def P17030898990559455855.Spec : Prop :=
  ∀ n, (P17030898990559455855.a n : ℤ) = A010702 n

theorem P17030898990559455855.correct : P17030898990559455855.Spec := by
  intro n
  simp only [A010702]

end A010702

/-!
# A010703: Period 2: repeat (3,5).

The programs for A010703, the canonical program `A010703.P8627279731109899123` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A010703 has offset 0).

The definition of A010703 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A010703.P8627279731109899123

`a(n-2)` with `a(0)=3, a(1)=5`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A010703

/-- `a(n-2)` -/
def P8627279731109899123.Spec : Prop :=
  ∀ n, (P8627279731109899123.a n : ℤ) = A010703 n

theorem P8627279731109899123.correct : P8627279731109899123.Spec := by
  intro n
  simp only [A010703]

end A010703

/-!
# A010704: Period 2: repeat (3,6).

The programs for A010704, the canonical program `A010704.P5340868101560565109` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A010704 has offset 0).

The definition of A010704 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A010704.P5340868101560565109

`3+n%2*3`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A010704

/-- `3+n%2*3` -/
def P5340868101560565109.Spec : Prop :=
  ∀ n, (P5340868101560565109.a n : ℤ) = A010704 n

theorem P5340868101560565109.correct : P5340868101560565109.Spec := by
  intro n
  simp only [A010704]

end A010704

/-!
# A010705: Period 2: repeat (3,7).

The programs for A010705, the canonical program `A010705.P720550001809894400` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A010705 has offset 0).

The definition of A010705 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A010705.P720550001809894400

`3+n%2*4`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A010705

/-- `3+n%2*4` -/
def P720550001809894400.Spec : Prop :=
  ∀ n, (P720550001809894400.a n : ℤ) = A010705 n

theorem P720550001809894400.correct : P720550001809894400.Spec := by
  intro n
  simp only [A010705]

end A010705

/-!
# A010706: Period 2: repeat (3,8).

The programs for A010706, the canonical program `A010706.P12271499550437238063` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A010706 has offset 0).

The definition of A010706 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A010706.P12271499550437238063

`3+5*n%2`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A010706

/-- `3+5*n%2` -/
def P12271499550437238063.Spec : Prop :=
  ∀ n, (P12271499550437238063.a n : ℤ) = A010706 n

theorem P12271499550437238063.correct : P12271499550437238063.Spec := by
  intro n
  simp only [A010706]

end A010706

/-!
# A010707: Period 2: repeat (3,9).

The programs for A010707, the canonical program `A010707.P13260700574166039602` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A010707 has offset 0).

The definition of A010707 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A010707.P13260700574166039602

`3+n%2*6`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A010707

/-- `3+n%2*6` -/
def P13260700574166039602.Spec : Prop :=
  ∀ n, (P13260700574166039602.a n : ℤ) = A010707 n

theorem P13260700574166039602.correct : P13260700574166039602.Spec := by
  intro n
  simp only [A010707]

end A010707

/-!
# A010708: Period 2: repeat [3,10].

The programs for A010708, the canonical program `A010708.P3065615525529083594` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A010708 has offset 0).

The definition of A010708 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A010708.P3065615525529083594

`3+n%2*7`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A010708

/-- `3+n%2*7` -/
def P3065615525529083594.Spec : Prop :=
  ∀ n, (P3065615525529083594.a n : ℤ) = A010708 n

theorem P3065615525529083594.correct : P3065615525529083594.Spec := by
  intro n
  simp only [A010708]

end A010708

/-!
# A010709: Constant sequence: the all 4's sequence.

The programs for A010709, the canonical program `A010709.P5702017588507696972` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A010709 has offset 0).

The definition of A010709 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A010709.P5702017588507696972

`4`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A010709

/-- `4` -/
def P5702017588507696972.Spec : Prop :=
  ∀ n, (P5702017588507696972.a n : ℤ) = A010709 n

theorem P5702017588507696972.correct : P5702017588507696972.Spec := by
  intro n
  simp only [A010709]

end A010709

/-!
# A010710: Period 2: repeat [4,5].

The programs for A010710, the canonical program `A010710.P5433534044348549431` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A010710 has offset 0).

The definition of A010710 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A010710.P5433534044348549431

`4+n%2`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A010710

/-- `4+n%2` -/
def P5433534044348549431.Spec : Prop :=
  ∀ n, (P5433534044348549431.a n : ℤ) = A010710 n

theorem P5433534044348549431.correct : P5433534044348549431.Spec := by
  intro n
  simp only [A010710]

end A010710

/-!
# A010711: Period 2: repeat (4,6).

The programs for A010711, the canonical program `A010711.P6654013283683570371` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A010711 has offset 0).

The definition of A010711 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A010711.P6654013283683570371

`n%2*2+4`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A010711

/-- `n%2*2+4` -/
def P6654013283683570371.Spec : Prop :=
  ∀ n, (P6654013283683570371.a n : ℤ) = A010711 n

theorem P6654013283683570371.correct : P6654013283683570371.Spec := by
  intro n
  simp only [A010711]

end A010711

/-!
# A010712: Period 2: repeat (4,7).

The programs for A010712, the canonical program `A010712.P12301793738731248219` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A010712 has offset 0).

The definition of A010712 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A010712.P12301793738731248219

`4+n%2*3`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A010712

/-- `4+n%2*3` -/
def P12301793738731248219.Spec : Prop :=
  ∀ n, (P12301793738731248219.a n : ℤ) = A010712 n

theorem P12301793738731248219.correct : P12301793738731248219.Spec := by
  intro n
  simp only [A010712]

end A010712

/-!
# A010713: Period 2: repeat (4,8).

The programs for A010713, the canonical program `A010713.P5299372504225695368` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A010713 has offset 0).

The definition of A010713 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A010713.P5299372504225695368

`4+4*n%2`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A010713

/-- `4+4*n%2` -/
def P5299372504225695368.Spec : Prop :=
  ∀ n, (P5299372504225695368.a n : ℤ) = A010713 n

theorem P5299372504225695368.correct : P5299372504225695368.Spec := by
  intro n
  simp only [A010713]

end A010713

/-!
# A010714: Period 2: repeat (4,9).

The programs for A010714, the canonical program `A010714.P1036295185195376659` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A010714 has offset 0).

The definition of A010714 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A010714.P1036295185195376659

`a(n-2)` with `a(0)=4, a(1)=9`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A010714

/-- `a(n-2)` -/
def P1036295185195376659.Spec : Prop :=
  ∀ n, (P1036295185195376659.a n : ℤ) = A010714 n

theorem P1036295185195376659.correct : P1036295185195376659.Spec := by
  intro n
  simp only [A010714]

end A010714

/-!
# A010715: Period 2: repeat (4,10).

The programs for A010715, the canonical program `A010715.P1821712444772281562` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A010715 has offset 0).

The definition of A010715 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A010715.P1821712444772281562

`4+6*n%2`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A010715

/-- `4+6*n%2` -/
def P1821712444772281562.Spec : Prop :=
  ∀ n, (P1821712444772281562.a n : ℤ) = A010715 n

theorem P1821712444772281562.correct : P1821712444772281562.Spec := by
  intro n
  simp only [A010715]

end A010715

/-!
# A010716: Constant sequence: the all 5's sequence.

The programs for A010716, the canonical program `A010716.P9652254536157814019` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A010716 has offset 0).

The definition of A010716 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A010716.P9652254536157814019

`5`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A010716

/-- `5` -/
def P9652254536157814019.Spec : Prop :=
  ∀ n, (P9652254536157814019.a n : ℤ) = A010716 n

theorem P9652254536157814019.correct : P9652254536157814019.Spec := by
  intro n
  simp only [A010716]

end A010716

/-!
# A010717: Period 2: repeat (5,6).

The programs for A010717, the canonical program `A010717.P474607414801364662` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A010717 has offset 0).

The definition of A010717 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A010717.P474607414801364662

`5+n%2`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A010717

/-- `5+n%2` -/
def P474607414801364662.Spec : Prop :=
  ∀ n, (P474607414801364662.a n : ℤ) = A010717 n

theorem P474607414801364662.correct : P474607414801364662.Spec := by
  intro n
  simp only [A010717]

end A010717

/-!
# A010718: Periodic sequence: repeat [5, 7].

The programs for A010718, the canonical program `A010718.P433940739657990259` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A010718 has offset 0).

The definition of A010718 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A010718.P433940739657990259

`a(n-2)` with `a(0)=5, a(1)=7`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A010718

/-- `a(n-2)` -/
def P433940739657990259.Spec : Prop :=
  ∀ n, (P433940739657990259.a n : ℤ) = A010718 n

theorem P433940739657990259.correct : P433940739657990259.Spec := by
  intro n
  simp only [A010718]

end A010718

/-!
# A010719: Period 2: repeat {5,8}.

The programs for A010719, the canonical program `A010719.P7715848564080426007` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A010719 has offset 0).

The definition of A010719 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A010719.P7715848564080426007

`a(n-2)` with `a(0)=5, a(1)=8`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A010719

/-- `a(n-2)` -/
def P7715848564080426007.Spec : Prop :=
  ∀ n, (P7715848564080426007.a n : ℤ) = A010719 n

theorem P7715848564080426007.correct : P7715848564080426007.Spec := by
  intro n
  simp only [A010719]

end A010719

/-!
# A010720: Period 2: repeat (5,9).

The programs for A010720, the canonical program `A010720.P5693597507615927000` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A010720 has offset 0).

The definition of A010720 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A010720.P5693597507615927000

`a(n-2)` with `a(0)=5, a(1)=9`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A010720

/-- `a(n-2)` -/
def P5693597507615927000.Spec : Prop :=
  ∀ n, (P5693597507615927000.a n : ℤ) = A010720 n

theorem P5693597507615927000.correct : P5693597507615927000.Spec := by
  intro n
  simp only [A010720]

end A010720

/-!
# A010721: Period 2: repeat (5,10).

The programs for A010721, the canonical program `A010721.P11102857436533506302` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A010721 has offset 0).

The definition of A010721 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A010721.P11102857436533506302

`5+5*n%2`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A010721

/-- `5+5*n%2` -/
def P11102857436533506302.Spec : Prop :=
  ∀ n, (P11102857436533506302.a n : ℤ) = A010721 n

theorem P11102857436533506302.correct : P11102857436533506302.Spec := by
  intro n
  simp only [A010721]

end A010721

/-!
# A010722: Constant sequence: the all 6's sequence.

The programs for A010722, the canonical program `A010722.P9669624315457093523` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A010722 has offset 0).

The definition of A010722 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A010722.P9669624315457093523

`6`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A010722

/-- `6` -/
def P9669624315457093523.Spec : Prop :=
  ∀ n, (P9669624315457093523.a n : ℤ) = A010722 n

theorem P9669624315457093523.correct : P9669624315457093523.Spec := by
  intro n
  simp only [A010722]

end A010722

/-!
# A010723: Period 2: repeat (6,7).

The programs for A010723, the canonical program `A010723.P4520333874255071536` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A010723 has offset 0).

The definition of A010723 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A010723.P4520333874255071536

`6+n%2`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A010723

/-- `6+n%2` -/
def P4520333874255071536.Spec : Prop :=
  ∀ n, (P4520333874255071536.a n : ℤ) = A010723 n

theorem P4520333874255071536.correct : P4520333874255071536.Spec := by
  intro n
  simp only [A010723]

end A010723

/-!
# A010724: Period 2: repeat (6,8).

The programs for A010724, the canonical program `A010724.P9339746915405127857` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A010724 has offset 0).

The definition of A010724 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A010724.P9339746915405127857

`6+n%2*2`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A010724

/-- `6+n%2*2` -/
def P9339746915405127857.Spec : Prop :=
  ∀ n, (P9339746915405127857.a n : ℤ) = A010724 n

theorem P9339746915405127857.correct : P9339746915405127857.Spec := by
  intro n
  simp only [A010724]

end A010724

/-!
# A010725: Period 2: repeat (6,9).

The programs for A010725, the canonical program `A010725.P7989221606714353098` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A010725 has offset 0).

The definition of A010725 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A010725.P7989221606714353098

`6+3*n%2`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A010725

/-- `6+3*n%2` -/
def P7989221606714353098.Spec : Prop :=
  ∀ n, (P7989221606714353098.a n : ℤ) = A010725 n

theorem P7989221606714353098.correct : P7989221606714353098.Spec := by
  intro n
  simp only [A010725]

end A010725

/-!
# A010726: Period 2: repeat (6,10).

The programs for A010726, the canonical program `A010726.P5673614734839614993` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A010726 has offset 0).

The definition of A010726 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A010726.P5673614734839614993

`a(n-2)` with `a(0)=6, a(1)=10`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A010726

/-- `a(n-2)` -/
def P5673614734839614993.Spec : Prop :=
  ∀ n, (P5673614734839614993.a n : ℤ) = A010726 n

theorem P5673614734839614993.correct : P5673614734839614993.Spec := by
  intro n
  simp only [A010726]

end A010726

/-!
# A010727: Constant sequence: the all 7's sequence.

The programs for A010727, the canonical program `A010727.P9096953878082945107` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A010727 has offset 0).

The definition of A010727 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A010727.P9096953878082945107

`7`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A010727

/-- `7` -/
def P9096953878082945107.Spec : Prop :=
  ∀ n, (P9096953878082945107.a n : ℤ) = A010727 n

theorem P9096953878082945107.correct : P9096953878082945107.Spec := by
  intro n
  simp only [A010727]

end A010727

/-!
# A010728: Period 2: repeat (7,8).

The programs for A010728, the canonical program `A010728.P8696137657484119590` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A010728 has offset 0).

The definition of A010728 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A010728.P8696137657484119590

`7+n%2`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A010728

/-- `7+n%2` -/
def P8696137657484119590.Spec : Prop :=
  ∀ n, (P8696137657484119590.a n : ℤ) = A010728 n

theorem P8696137657484119590.correct : P8696137657484119590.Spec := by
  intro n
  simp only [A010728]

end A010728

/-!
# A010729: a(n) = 8 - (-1)^n.

The programs for A010729, the canonical program `A010729.P11513889590085295973` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A010729 has offset 0).

The definition of A010729 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `8-(-1)^n` (program `A010729.P11513889590085295973`, by `A010729.P11513889590085295973.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A010729.P11513889590085295973

`8-(-1)^n`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A010729

/-- `8-(-1)^n` -/
def P11513889590085295973.Spec : Prop :=
  ∀ n, P11513889590085295973.a n = A010729 n

theorem P11513889590085295973.correct : P11513889590085295973.Spec := by
  intro n
  simp only [A010729]

end A010729

/-!
# A010730: a(n) = (17 - 3*(-1)^n)/2.

The programs for A010730, the canonical program `A010730.P17560183117002098873` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A010730 has offset 0).

The definition of A010730 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(17-3*(-1)^n)/2` (program `A010730.P17112968639308591817`, by `A010730.P17112968639308591817.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A010730.P17560183117002098873

`a(n-2)` with `a(0)=7, a(1)=10`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A010730

/-- `a(n-2)` -/
def P17560183117002098873.Spec : Prop :=
  ∀ n, (P17560183117002098873.a n : ℤ) = A010730 n

theorem P17560183117002098873.correct : P17560183117002098873.Spec := by
  intro n
  simp only [A010730]

end A010730

/-! ## A010730.P17112968639308591817

`(17-3*(-1)^n)/2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A010730.P17112968639308591817
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (17 - 3 * (-1) ^ n : ℚ) / 2

end

end A010730.P17112968639308591817

namespace A010730

/-- `(17-3*(-1)^n)/2` -/
def P17112968639308591817.Spec : Prop :=
  ∀ n, P17112968639308591817.a n = (A010730 n : ℚ)

theorem P17112968639308591817.correct : P17112968639308591817.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A010730, Nat.add_sub_cancel, A010730.P17112968639308591817.a, A010730.P17560183117002098873.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 2 =>
      have h2 := ih m (by omega)
      simp only [A010730, Nat.add_sub_cancel, A010730.P17112968639308591817.a, A010730.P17560183117002098873.a, SequenceMachineLib.memo_apply] at h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 2 = m by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h2 ⊢
      rw [← h2]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A010730

/-!
# A010731: Constant sequence: the all 8's sequence.

The programs for A010731, the canonical program `A010731.P8588055963582201784` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A010731 has offset 0).

The definition of A010731 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A010731.P8588055963582201784

`8`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A010731

/-- `8` -/
def P8588055963582201784.Spec : Prop :=
  ∀ n, (P8588055963582201784.a n : ℤ) = A010731 n

theorem P8588055963582201784.correct : P8588055963582201784.Spec := by
  intro n
  simp only [A010731]

end A010731

/-!
# A010732: a(n) = (17-(-1)^n)/2.

The programs for A010732, the canonical program `A010732.P1998988425843513169` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A010732 has offset 0).

The definition of A010732 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A010732.P11651838027139016942

`8+n%2`
-/

namespace A010732.P11651838027139016942
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8 + n % 2

end

end A010732.P11651838027139016942

namespace A010732

/-- `8+n%2` -/
def P11651838027139016942.Spec : Prop :=
  ∀ n, (P11651838027139016942.a n : ℤ) = A010732 n

end A010732

/-! ## A010732.P1998988425843513169

`(17-(-1)^n)/2`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A010732

/-- `(17-(-1)^n)/2` -/
def P1998988425843513169.Spec : Prop :=
  ∀ n, P1998988425843513169.a n = (A010732 n : ℚ)

end A010732

/-!
# A010733: Period 2: repeat (8,10).

The programs for A010733, the canonical program `A010733.P10385199047630182979` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A010733 has offset 0).

The definition of A010733 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A010733.P10385199047630182979

`n%2*2+8`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A010733

/-- `n%2*2+8` -/
def P10385199047630182979.Spec : Prop :=
  ∀ n, (P10385199047630182979.a n : ℤ) = A010733 n

theorem P10385199047630182979.correct : P10385199047630182979.Spec := by
  intro n
  simp only [A010733]

end A010733

/-!
# A010734: Constant sequence: the all 9's sequence.

The programs for A010734, the canonical program `A010734.P17338199224593915369` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A010734 has offset 0).

The definition of A010734 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A010734.P17338199224593915369

`A158289(n)+A199264(n)`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A010734

/-- `A158289(n)+A199264(n)` -/
def P17338199224593915369.Spec : Prop :=
  ∀ n, P17338199224593915369.a n = A010734 n

theorem P17338199224593915369.correct : P17338199224593915369.Spec := by
  intro n
  simp only [A010734]

end A010734

/-!
# A010735: Period 2: repeat (9,10).

The programs for A010735, the canonical program `A010735.P18021177492123542230` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A010735 has offset 0).

The definition of A010735 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A010735.P18021177492123542230

`9+n%2`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A010735

/-- `9+n%2` -/
def P18021177492123542230.Spec : Prop :=
  ∀ n, (P18021177492123542230.a n : ℤ) = A010735 n

theorem P18021177492123542230.correct : P18021177492123542230.Spec := by
  intro n
  simp only [A010735]

end A010735

/-!
# A010736: Let S(x,y) = number of lattice paths from (0,0) to (x,y) that use the step set { (0,1), (1,0), (2,0), (3,0), ....} and never pass below y = x. Sequence gives S(n-2,n).

The programs for A010736, the canonical program `A010736.P2490338144400101786` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A010736 has offset 0).

The definition of A010736 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 134 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A010736.P4906563467014623866

`A011117(∑[n+3])`
-/

namespace A010736.P4906563467014623866
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011117 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A010736.P4906563467014623866

namespace A010736

/-- `A011117(∑[n+3])` -/
def P4906563467014623866.Spec : Prop :=
  ∀ n, P4906563467014623866.a n = A010736 n

end A010736

/-! ## A010736.P5450904867693162173

`record[A011117(gcd(n, A116598(n+1)))]`
-/

namespace A010736.P5450904867693162173
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011117 (Int.gcd (n : ℤ) (A116598 (n + 1)))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A010736.P5450904867693162173

namespace A010736

/-- `record[A011117(gcd(n, A116598(n+1)))]` -/
def P5450904867693162173.Spec : Prop :=
  ∀ n, P5450904867693162173.a n = A010736 n

end A010736

/-! ## A010736.P13487366309201015079

`record[A011117(and(n, A167374(n+1)))]`
-/

namespace A010736.P13487366309201015079
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011117 (Int.land (n : ℤ) (A167374 (n + 1))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A010736.P13487366309201015079

namespace A010736

/-- `record[A011117(and(n, A167374(n+1)))]` -/
def P13487366309201015079.Spec : Prop :=
  ∀ n, P13487366309201015079.a n = A010736 n

end A010736

/-! ## A010736.P8398583916588676400

`A091370(∑[n+1]+4)`
-/

namespace A010736.P8398583916588676400
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091370 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A010736.P8398583916588676400

namespace A010736

/-- `A091370(∑[n+1]+4)` -/
def P8398583916588676400.Spec : Prop :=
  ∀ n, P8398583916588676400.a n = A010736 n

end A010736

/-! ## A010736.P18053238661193891895

`A104219(eq[2, A002262(n)])`
-/

namespace A010736.P18053238661193891895
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104219 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A010736.P18053238661193891895

namespace A010736

/-- `A104219(eq[2, A002262(n)])` -/
def P18053238661193891895.Spec : Prop :=
  ∀ n, P18053238661193891895.a n = A010736 n

end A010736

/-! ## A010736.P9894643122854418329

`A104219(A167614(n+1)-1)`
-/

namespace A010736.P9894643122854418329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104219 (A167614 (n + 1) - 1).toNat

end

end A010736.P9894643122854418329

namespace A010736

/-- `A104219(A167614(n+1)-1)` -/
def P9894643122854418329.Spec : Prop :=
  ∀ n, P9894643122854418329.a n = A010736 n

end A010736

/-! ## A010736.P13770676449383642928

`A104219(A167499(n+1)-3)`
-/

namespace A010736.P13770676449383642928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104219 (A167499 (n + 1) - 3).toNat

end

end A010736.P13770676449383642928

namespace A010736

/-- `A104219(A167499(n+1)-3)` -/
def P13770676449383642928.Spec : Prop :=
  ∀ n, P13770676449383642928.a n = A010736 n

end A010736

/-! ## A010736.P14526856856110995012

`A104219(n-(1-A167499(n)))`
-/

namespace A010736.P14526856856110995012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104219 ((n : ℤ) - (1 - A167499 n)).toNat

end

end A010736.P14526856856110995012

namespace A010736

/-- `A104219(n-(1-A167499(n)))` -/
def P14526856856110995012.Spec : Prop :=
  ∀ n, P14526856856110995012.a n = A010736 n

end A010736

/-! ## A010736.P10116062934406158835

`(A239204(n)+A010683(n))/2`
-/

namespace A010736.P10116062934406158835
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A239204 n + A010683 n : ℚ) / 2

end

end A010736.P10116062934406158835

namespace A010736

/-- `(A239204(n)+A010683(n))/2` -/
def P10116062934406158835.Spec : Prop :=
  ∀ n, P10116062934406158835.a n = (A010736 n : ℚ)

end A010736

/-! ## A010736.P11205811943731563377

`A104219(eq[1, A002260(n+1)-2])`
-/

namespace A010736.P11205811943731563377
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104219 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A010736.P11205811943731563377

namespace A010736

/-- `A104219(eq[1, A002260(n+1)-2])` -/
def P11205811943731563377.Spec : Prop :=
  ∀ n, P11205811943731563377.a n = A010736 n

end A010736

/-! ## A010736.P2490338144400101786

`(A001003(n+2)+A001003(n))/4`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A010736

/-- `(A001003(n+2)+A001003(n))/4` -/
def P2490338144400101786.Spec : Prop :=
  ∀ n, P2490338144400101786.a n = (A010736 n : ℚ)

end A010736

/-! ## A010736.P5671068430828447254

`record[A011117(n)/A080247(n+2)]`
-/

namespace A010736.P5671068430828447254
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A011117 n : ℚ) / (A080247 (n + 2) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A010736.P5671068430828447254

namespace A010736

/-- `record[A011117(n)/A080247(n+2)]` -/
def P5671068430828447254.Spec : Prop :=
  ∀ n, P5671068430828447254.a n = (A010736 n : ℚ)

end A010736

/-! ## A010736.P5382255005344157548

`record[A011117(n)/A144944(n+3)]`
-/

namespace A010736.P5382255005344157548
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A011117 n : ℚ) / (A144944 (n + 3) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A010736.P5382255005344157548

namespace A010736

/-- `record[A011117(n)/A144944(n+3)]` -/
def P5382255005344157548.Spec : Prop :=
  ∀ n, P5382255005344157548.a n = (A010736 n : ℚ)

end A010736

/-!
# A010737: a(n) = 2*a(n-2) + 1.

The programs for A010737, the canonical program `A010737.P13777477745647551937` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A010737 has offset 0).

The definition of A010737 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2*a(n-2)+1` (program `A010737.P13777477745647551937`, by `A010737.P13777477745647551937.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A010737.P13777477745647551937

`2*a(n-2)+1` with `a(0)=4, a(1)=6`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A010737

/-- `2*a(n-2)+1` -/
def P13777477745647551937.Spec : Prop :=
  ∀ n, (P13777477745647551937.a n : ℤ) = A010737 n

theorem P13777477745647551937.correct : P13777477745647551937.Spec := by
  intro n
  simp only [A010737]

end A010737

/-! ## A010737.P7495126410281249435

`(6-(-1)^n)*2^floor(n/2)-1`
-/

namespace A010737.P7495126410281249435
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (6 - (-1) ^ n : ℚ) * (2 : ℚ) ^ (⌊(n : ℚ) / 2⌋ : ℤ) - 1

end

end A010737.P7495126410281249435

namespace A010737

/-- `(6-(-1)^n)*2^floor(n/2)-1` -/
def P7495126410281249435.Spec : Prop :=
  ∀ n, P7495126410281249435.a n = (A010737 n : ℚ)

end A010737

/-! ## A010737.P7420130036925166273

`∑[ogf((4+2x-5x^2)/(1-2x^2))]`
-/

namespace A010737.P7420130036925166273
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [4, 2, -5] [1, 0, -2] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A010737.P7420130036925166273

namespace A010737

/-- `∑[ogf((4+2x-5x^2)/(1-2x^2))]` -/
def P7420130036925166273.Spec : Prop :=
  ∀ n, P7420130036925166273.a n = A010737 n

end A010737

/-! ## A010737.P14998642857358228200

`ogf((4+2x-5x^2)/(1-x-2x^2+2x^3))`
-/

namespace A010737.P14998642857358228200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [4, 2, -5] [1, -1, -2, 2] n

end

end A010737.P14998642857358228200

namespace A010737

/-- `ogf((4+2x-5x^2)/(1-x-2x^2+2x^3))` -/
def P14998642857358228200.Spec : Prop :=
  ∀ n, P14998642857358228200.a n = A010737 n

end A010737

/-! ## A010737.P3059479215386751979

`or(1, 2*a(n-2))` with `a(0)=4, a(1)=6`
-/

namespace A010737.P3059479215386751979
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [4, 6] fun n a =>
  Nat.lor 1 (2 * a (n - 2))

end

end A010737.P3059479215386751979

namespace A010737

/-- `or(1, 2*a(n-2))` -/
def P3059479215386751979.Spec : Prop :=
  ∀ n, (P3059479215386751979.a n : ℤ) = A010737 n

end A010737

/-! ## A010737.P2526916497849906500

`xor(1, 2*a(n-2))` with `a(0)=4, a(1)=6`
-/

namespace A010737.P2526916497849906500
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [4, 6] fun n a =>
  Nat.xor 1 (2 * a (n - 2))

end

end A010737.P2526916497849906500

namespace A010737

/-- `xor(1, 2*a(n-2))` -/
def P2526916497849906500.Spec : Prop :=
  ∀ n, (P2526916497849906500.a n : ℤ) = A010737 n

end A010737

/-! ## A010737.P13399860491991196354

`∑[2*a(n-2)]` with `a(0)=4, a(1)=2, a(2)=3`
-/

namespace A010737.P13399860491991196354
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [4, 2, 3] fun n f1 =>
  2 * f1 (n - 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A010737.P13399860491991196354

namespace A010737

/-- `∑[2*a(n-2)]` -/
def P13399860491991196354.Spec : Prop :=
  ∀ n, (P13399860491991196354.a n : ℤ) = A010737 n

end A010737

/-! ## A010737.P12183176720435238159

`A385396(2*n+5)`
-/

namespace A010737.P12183176720435238159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385396 (2 * n + 5)

end

end A010737.P12183176720435238159

namespace A010737

/-- `A385396(2*n+5)` -/
def P12183176720435238159.Spec : Prop :=
  ∀ n, P12183176720435238159.a n = A010737 n

end A010737

/-! ## A010737.P12208571669836121025

`xor(A052551(n), A070875(n))`
-/

namespace A010737.P12208571669836121025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A052551 n) (A070875 n)

end

end A010737.P12208571669836121025

namespace A010737

/-- `xor(A052551(n), A070875(n))` -/
def P12208571669836121025.Spec : Prop :=
  ∀ n, P12208571669836121025.a n = A010737 n

end A010737

/-! ## A010737.P1083328428623324149

`xor(A052955(n), A163888(n+1))`
-/

namespace A010737.P1083328428623324149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A052955 n) (A163888 (n + 1))

end

end A010737.P1083328428623324149

namespace A010737

/-- `xor(A052955(n), A163888(n+1))` -/
def P1083328428623324149.Spec : Prop :=
  ∀ n, P1083328428623324149.a n = A010737 n

end A010737

/-! ## A010737.P12460386277002697811

`xor(A164095(n+1), A316742(n))`
-/

namespace A010737.P12460386277002697811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A164095 (n + 1)) (A316742 n)

end

end A010737.P12460386277002697811

namespace A010737

/-- `xor(A164095(n+1), A316742(n))` -/
def P12460386277002697811.Spec : Prop :=
  ∀ n, P12460386277002697811.a n = A010737 n

end A010737

/-! ## A010737.P16742892633167884469

`∪[A086224(n), A153894(n)]`
-/

namespace A010737.P16742892633167884469
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086224 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153894 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A010737.P16742892633167884469

namespace A010737

/-- `∪[A086224(n), A153894(n)]` -/
def P16742892633167884469.Spec : Prop :=
  ∀ n, (P16742892633167884469.a n : ℤ) = A010737 n

end A010737

/-! ## A010737.P8724529721698186711

`(A133257(n+1)+1)/2`
-/

namespace A010737.P8724529721698186711
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A133257 (n + 1) + 1 : ℚ) / 2

end

end A010737.P8724529721698186711

namespace A010737

/-- `(A133257(n+1)+1)/2` -/
def P8724529721698186711.Spec : Prop :=
  ∀ n, P8724529721698186711.a n = (A010737 n : ℚ)

end A010737

/-!
# A010738: Shifts 2 places right under binomial transform.

The programs for A010738, there is no canonical definition to state claims against.
-/

/-! ## A010738.P9155471582173081668

`A010739(n+2)`
-/

namespace A010738.P9155471582173081668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010739 (n + 2)

end

end A010738.P9155471582173081668

/-!
# A010740: Shifts 3 places right under binomial transform.

The programs for A010740, there is no canonical definition to state claims against.
-/

/-! ## A010740.P6490519645720364987

`A010741(n+3)`
-/

namespace A010740.P6490519645720364987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010741 (n + 3)

end

end A010740.P6490519645720364987

/-!
# A010742: Shifts 4 places right under binomial transform.

The programs for A010742, there is no canonical definition to state claims against.
-/

/-! ## A010742.P2614825267780103601

`A010743(n+4)`
-/

namespace A010742.P2614825267780103601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010743 (n + 4)

end

end A010742.P2614825267780103601

/-!
# A010744: Shifts 5 places right under binomial transform.

The programs for A010744, there is no canonical definition to state claims against.
-/

/-! ## A010744.P12801616102376391678

`A010745(n+5)`
-/

namespace A010744.P12801616102376391678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010745 (n + 5)

end

end A010744.P12801616102376391678

/-! ## A010744.P6313084729876453638

`A002171(A053528(n))`
-/

namespace A010744.P6313084729876453638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002171 (A053528 n).toNat

end

end A010744.P6313084729876453638

/-! ## A010744.P12425545984553363642

`A356327(A356361(n))^A356359(n+2)`
-/

namespace A010744.P12425545984553363642
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A356327 (A356361 n).toNat : ℚ) ^ (A356359 (n + 2) : ℤ)

end

end A010744.P12425545984553363642

/-!
# A010746: Shifts 6 places right under binomial transform.

The programs for A010746, there is no canonical definition to state claims against.
-/

/-! ## A010746.P5916660395378949930

`A010747(n+6)`
-/

namespace A010746.P5916660395378949930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010747 (n + 6)

end

end A010746.P5916660395378949930

/-!
# A010748: Shifts 4 places right under inverse binomial transform.

The programs for A010748, there is no canonical definition to state claims against.
-/

/-! ## A010748.P11426952476778976768

`A143983(A052905(n)+9)`
-/

namespace A010748.P11426952476778976768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143983 (A052905 n + 9).toNat

end

end A010748.P11426952476778976768

/-! ## A010748.P5624555762312090620

`A143983(A055999(n)+10)`
-/

namespace A010748.P5624555762312090620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143983 (A055999 n + 10).toNat

end

end A010748.P5624555762312090620

/-! ## A010748.P12044963530406285949

`A143983(A167614(n+2)+1)`
-/

namespace A010748.P12044963530406285949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143983 (A167614 (n + 2) + 1).toNat

end

end A010748.P12044963530406285949

/-! ## A010748.P7876303027289924574

`A143983(A166136(n+2)-2)`
-/

namespace A010748.P7876303027289924574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143983 (A166136 (n + 2) - 2).toNat

end

end A010748.P7876303027289924574

/-! ## A010748.P15284432507552596810

`A143983(A167487(n+2)-3)`
-/

namespace A010748.P15284432507552596810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143983 (A167487 (n + 2) - 3).toNat

end

end A010748.P15284432507552596810

/-! ## A010748.P6976932993494458316

`A143983(A166136(n+1)+1+n)`
-/

namespace A010748.P6976932993494458316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143983 (A166136 (n + 1) + 1 + (n : ℤ)).toNat

end

end A010748.P6976932993494458316

/-! ## A010748.P3951819157499854926

`A143983(A167499(n)+A020705(2*n))`
-/

namespace A010748.P3951819157499854926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143983 (A167499 n + A020705 (2 * n)).toNat

end

end A010748.P3951819157499854926

/-! ## A010748.P11089313608029492805

`A143983(A020705(n)+A167499(n)+n)`
-/

namespace A010748.P11089313608029492805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143983 (A020705 n + (A167499 n + (n : ℤ))).toNat

end

end A010748.P11089313608029492805

/-!
# A010749: Shifts 5 places right under inverse binomial transform.

The programs for A010749, there is no canonical definition to state claims against.
-/

/-! ## A010749.P14729150910113528494

`A143983(A167499(n+3))`
-/

namespace A010749.P14729150910113528494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143983 (A167499 (n + 3)).toNat

end

end A010749.P14729150910113528494

/-! ## A010749.P13699526302494183886

`A143983(A155212(n)+13)`
-/

namespace A010749.P13699526302494183886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143983 (A155212 n + 13).toNat

end

end A010749.P13699526302494183886

/-! ## A010749.P9991627857914475444

`A143983(A000124(n+4)+4)`
-/

namespace A010749.P9991627857914475444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143983 (A000124 (n + 4) + 4).toNat

end

end A010749.P9991627857914475444

/-! ## A010749.P16374729064171119162

`A143983(A000217(n+4)+5)`
-/

namespace A010749.P16374729064171119162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143983 (A000217 (n + 4) + 5).toNat

end

end A010749.P16374729064171119162

/-! ## A010749.P16432551003655748882

`A143983(A161680(n+5)+5)`
-/

namespace A010749.P16432551003655748882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143983 (A161680 (n + 5) + 5).toNat

end

end A010749.P16432551003655748882

/-! ## A010749.P15571080886074005345

`A143983(Δ[A006503(n+1)]+8)`
-/

namespace A010749.P15571080886074005345
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006503 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143983 (f1 (n + 1) - f1 n + 8).toNat

end

end A010749.P15571080886074005345

/-! ## A010749.P17009497533263663410

`A143983(A000096(n+4)-(n-1))`
-/

namespace A010749.P17009497533263663410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143983 (A000096 (n + 4) - ((n : ℤ) - 1)).toNat

end

end A010749.P17009497533263663410

/-! ## A010749.P16159584469315142440

`A143983(A167614(n+2)+n+6)`
-/

namespace A010749.P16159584469315142440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143983 (A167614 (n + 2) + (n + 6 : ℤ)).toNat

end

end A010749.P16159584469315142440

/-! ## A010749.P14241314163269713898

`A143983(A046691(n+1)+A020705(n+9))`
-/

namespace A010749.P14241314163269713898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143983 (A046691 (n + 1) + A020705 (n + 9)).toNat

end

end A010749.P14241314163269713898

/-!
# A010750: Shifts 6 places right under inverse binomial transform.

The programs for A010750, there is no canonical definition to state claims against.
-/

/-! ## A010750.P2675506458200638911

`A143983(A166136(n+4))`
-/

namespace A010750.P2675506458200638911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143983 (A166136 (n + 4)).toNat

end

end A010750.P2675506458200638911

/-! ## A010750.P11702790927404106291

`A143983(A167499(n+4)+1)`
-/

namespace A010750.P11702790927404106291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143983 (A167499 (n + 4) + 1).toNat

end

end A010750.P11702790927404106291

/-! ## A010750.P9326500692478837360

`A143983(A000124(n+5)+5)`
-/

namespace A010750.P9326500692478837360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143983 (A000124 (n + 5) + 5).toNat

end

end A010750.P9326500692478837360

/-! ## A010750.P524360430583706114

`A143983(A000096(n+4)+7)`
-/

namespace A010750.P524360430583706114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143983 (A000096 (n + 4) + 7).toNat

end

end A010750.P524360430583706114

/-! ## A010750.P7231398947369583331

`A143983(A000217(n+5)+6)`
-/

namespace A010750.P7231398947369583331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143983 (A000217 (n + 5) + 6).toNat

end

end A010750.P7231398947369583331

/-! ## A010750.P5133026830635044567

`A143983(A055998(n+3)+9)`
-/

namespace A010750.P5133026830635044567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143983 (A055998 (n + 3) + 9).toNat

end

end A010750.P5133026830635044567

/-! ## A010750.P4264976477776487282

`A143983(A034856(n+5)-(n-2))`
-/

namespace A010750.P4264976477776487282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143983 (A034856 (n + 5) - ((n : ℤ) - 2)).toNat

end

end A010750.P4264976477776487282

/-!
# A010751: Up once, down twice, up three times, down four times, ...

The programs for A010751, the canonical program `A010751.P13596492722488707234` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A010751 has offset 0).

The definition of A010751 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A010751.P13596492722488707234

`(-1)^A002024(n+1)*(A007590(A002024(n+1))-n)`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A010751

/-- `(-1)^A002024(n+1)*(A007590(A002024(n+1))-n)` -/
def P13596492722488707234.Spec : Prop :=
  ∀ n, P13596492722488707234.a n = (A010751 n : ℚ)

end A010751

/-! ## A010751.P7467570693501858014

`∑[A062157(A123578(n))]`
-/

namespace A010751.P7467570693501858014
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062157 (A123578 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A010751.P7467570693501858014

namespace A010751

/-- `∑[A062157(A123578(n))]` -/
def P7467570693501858014.Spec : Prop :=
  ∀ n, P7467570693501858014.a n = A010751 n

end A010751

/-! ## A010751.P10351394799727801027

`A001057(A130517(n+1)-1)`
-/

namespace A010751.P10351394799727801027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 (A130517 (n + 1) - 1).toNat

end

end A010751.P10351394799727801027

namespace A010751

/-- `A001057(A130517(n+1)-1)` -/
def P10351394799727801027.Spec : Prop :=
  ∀ n, P10351394799727801027.a n = A010751 n

end A010751

/-! ## A010751.P13003080794099524526

`A296030(2*A004202(n+1))`
-/

namespace A010751.P13003080794099524526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296030 (2 * A004202 (n + 1)).toNat

end

end A010751.P13003080794099524526

namespace A010751

/-- `A296030(2*A004202(n+1))` -/
def P13003080794099524526.Spec : Prop :=
  ∀ n, P13003080794099524526.a n = A010751 n

end A010751

/-! ## A010751.P18372303742053842830

`∑[A033999(A123578(n)+1)]+1`
-/

namespace A010751.P18372303742053842830
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (A123578 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A010751.P18372303742053842830

namespace A010751

/-- `∑[A033999(A123578(n)+1)]+1` -/
def P18372303742053842830.Spec : Prop :=
  ∀ n, P18372303742053842830.a n = A010751 n

end A010751

/-! ## A010751.P16634653864557794043

`A092543(n+1)-A204164(n+1)`
-/

namespace A010751.P16634653864557794043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092543 (n + 1) - A204164 (n + 1)

end

end A010751.P16634653864557794043

namespace A010751

/-- `A092543(n+1)-A204164(n+1)` -/
def P16634653864557794043.Spec : Prop :=
  ∀ n, P16634653864557794043.a n = A010751 n

end A010751

/-! ## A010751.P18166714142857090925

`∑[(-1)^A003057(n+2)]-(-1)^A003057(n+2)`
-/

namespace A010751.P18166714142857090925
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (-1 : ℚ) ^ (A003057 (n + 2) : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (-1 : ℚ) ^ (A003057 (n + 2) : ℤ)

end

end A010751.P18166714142857090925

namespace A010751

/-- `∑[(-1)^A003057(n+2)]-(-1)^A003057(n+2)` -/
def P18166714142857090925.Spec : Prop :=
  ∀ n, P18166714142857090925.a n = (A010751 n : ℚ)

end A010751

/-! ## A010751.P5989413862120756706

`A389352(n+1)-A389648(n+1)-A389648(n+1)`
-/

namespace A010751.P5989413862120756706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389352 (n + 1) - A389648 (n + 1) - A389648 (n + 1)

end

end A010751.P5989413862120756706

namespace A010751

/-- `A389352(n+1)-A389648(n+1)-A389648(n+1)` -/
def P5989413862120756706.Spec : Prop :=
  ∀ n, P5989413862120756706.a n = A010751 n

end A010751

/-! ## A010751.P11451385987393024402

`A174344(A004201(n+1))`
-/

namespace A010751.P11451385987393024402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174344 (A004201 (n + 1)).toNat

end

end A010751.P11451385987393024402

namespace A010751

/-- `A174344(A004201(n+1))` -/
def P11451385987393024402.Spec : Prop :=
  ∀ n, P11451385987393024402.a n = A010751 n

end A010751

/-! ## A010751.P7088539962919513583

`A174344(2*n+1-A002262(n))`
-/

namespace A010751.P7088539962919513583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174344 ((2 * n + 1 : ℤ) - A002262 n).toNat

end

end A010751.P7088539962919513583

namespace A010751

/-- `A174344(2*n+1-A002262(n))` -/
def P7088539962919513583.Spec : Prop :=
  ∀ n, P7088539962919513583.a n = A010751 n

end A010751

/-! ## A010751.P13072928905357429046

`A180714(2*n)/2`
-/

namespace A010751.P13072928905357429046
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A180714 (2 * n) : ℚ) / 2

end

end A010751.P13072928905357429046

namespace A010751

/-- `A180714(2*n)/2` -/
def P13072928905357429046.Spec : Prop :=
  ∀ n, P13072928905357429046.a n = (A010751 n : ℚ)

end A010751

/-! ## A010751.P12863730411344400784

`A180714(A128217(n+1))`
-/

namespace A010751.P12863730411344400784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180714 (A128217 (n + 1)).toNat

end

end A010751.P12863730411344400784

namespace A010751

/-- `A180714(A128217(n+1))` -/
def P12863730411344400784.Spec : Prop :=
  ∀ n, P12863730411344400784.a n = A010751 n

end A010751

/-! ## A010751.P17256912957116531219

`A319571(A123578(n+1)²)-A319571(2*n)`
-/

namespace A010751.P17256912957116531219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319571 (A123578 (n + 1) ^ 2).toNat - A319571 (2 * n)

end

end A010751.P17256912957116531219

namespace A010751

/-- `A319571(A123578(n+1)²)-A319571(2*n)` -/
def P17256912957116531219.Spec : Prop :=
  ∀ n, P17256912957116531219.a n = A010751 n

end A010751

/-! ## A010751.P14785411344267805821

`A329972(2*n)-A329972(A196199(2*n)²)`
-/

namespace A010751.P14785411344267805821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329972 (2 * n) - A329972 (A196199 (2 * n) ^ 2).toNat

end

end A010751.P14785411344267805821

namespace A010751

/-- `A329972(2*n)-A329972(A196199(2*n)²)` -/
def P14785411344267805821.Spec : Prop :=
  ∀ n, P14785411344267805821.a n = A010751 n

end A010751

/-! ## A010751.P2177730153909999766

`A329972(2*n)-A329972(A329116(2*n)²)`
-/

namespace A010751.P2177730153909999766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329972 (2 * n) - A329972 (A329116 (2 * n) ^ 2).toNat

end

end A010751.P2177730153909999766

namespace A010751

/-- `A329972(2*n)-A329972(A329116(2*n)²)` -/
def P2177730153909999766.Spec : Prop :=
  ∀ n, P2177730153909999766.a n = A010751 n

end A010751

/-! ## A010751.P957388662986323146

`∑[A062157(A000194(2*n))]`
-/

namespace A010751.P957388662986323146
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062157 (A000194 (2 * n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A010751.P957388662986323146

namespace A010751

/-- `∑[A062157(A000194(2*n))]` -/
def P957388662986323146.Spec : Prop :=
  ∀ n, P957388662986323146.a n = A010751 n

end A010751

/-! ## A010751.P18425500336990050853

`A001057(A004737(2*n+1)-1)`
-/

namespace A010751.P18425500336990050853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 (A004737 (2 * n + 1) - 1).toNat

end

end A010751.P18425500336990050853

namespace A010751

/-- `A001057(A004737(2*n+1)-1)` -/
def P18425500336990050853.Spec : Prop :=
  ∀ n, P18425500336990050853.a n = A010751 n

end A010751

/-! ## A010751.P5976709040930154885

`A329972(2*n)+A053615(2*n)/2`
-/

namespace A010751.P5976709040930154885
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A329972 (2 * n) : ℚ) + (A053615 (2 * n) : ℚ) / 2

end

end A010751.P5976709040930154885

namespace A010751

/-- `A329972(2*n)+A053615(2*n)/2` -/
def P5976709040930154885.Spec : Prop :=
  ∀ n, P5976709040930154885.a n = (A010751 n : ℚ)

end A010751

/-! ## A010751.P7075063541149047873

`A274923(2*n+1)+A329116(2*n)/2`
-/

namespace A010751.P7075063541149047873
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A274923 (2 * n + 1) : ℚ) + (A329116 (2 * n) : ℚ) / 2

end

end A010751.P7075063541149047873

namespace A010751

/-- `A274923(2*n+1)+A329116(2*n)/2` -/
def P7075063541149047873.Spec : Prop :=
  ∀ n, P7075063541149047873.a n = (A010751 n : ℚ)

end A010751

/-!
# A010752: Sum along upward diagonal of Pascal triangle to center.

The programs for A010752, there is no canonical definition to state claims against.
-/

/-! ## A010752.P7398988475175588993

`∑[A212804(n)]-A010756(n)`
-/

namespace A010752.P7398988475175588993
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212804 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A010756 n

end

end A010752.P7398988475175588993

/-! ## A010752.P3983963236578732660

`A000045(n+1)-A010756(n)`
-/

namespace A010752.P3983963236578732660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (n + 1) - A010756 n

end

end A010752.P3983963236578732660

/-! ## A010752.P13953344803875907470

`A212804(n+2)-A010756(n)`
-/

namespace A010752.P13953344803875907470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212804 (n + 2) - A010756 n

end

end A010752.P13953344803875907470

/-! ## A010752.P8584452045606997466

`A010753(n)+A010757(n)-A010756(n)`
-/

namespace A010752.P8584452045606997466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010753 n + (A010757 n - A010756 n)

end

end A010752.P8584452045606997466

/-! ## A010752.P3939041454542777087

`A104726(A111097(n+1))`
-/

namespace A010752.P3939041454542777087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104726 (A111097 (n + 1)).toNat

end

end A010752.P3939041454542777087

/-! ## A010752.P202206127481787549

`A054450(A171452(n+1))`
-/

namespace A010752.P202206127481787549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054450 (A171452 (n + 1)).toNat

end

end A010752.P202206127481787549

/-! ## A010752.P7365881274875015156

`A104726(A389142(n+1))`
-/

namespace A010752.P7365881274875015156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104726 (A389142 (n + 1)).toNat

end

end A010752.P7365881274875015156

/-! ## A010752.P10694821738329681607

`A294453(A171452(n)+n)`
-/

namespace A010752.P10694821738329681607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294453 (A171452 n + (n : ℤ)).toNat

end

end A010752.P10694821738329681607

/-! ## A010752.P2602042022467659276

`A036355(∑[n])-A010756(n)`
-/

namespace A010752.P2602042022467659276
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036355 (∑ j ∈ Finset.range (n + 1), f1 j) - A010756 n

end

end A010752.P2602042022467659276

/-! ## A010752.P17085464087113531807

`A105809(∑[n])-A010756(n)`
-/

namespace A010752.P17085464087113531807
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105809 (∑ j ∈ Finset.range (n + 1), f1 j) - A010756 n

end

end A010752.P17085464087113531807

/-! ## A010752.P6326550323922525866

`A134511(A008611(n+1)+∑[n])`
-/

namespace A010752.P6326550323922525866
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134511 (A008611 (n + 1) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)).toNat

end

end A010752.P6326550323922525866

/-! ## A010752.P391251109061133003

`A134511(∑[A061800(n+1)]-n)`
-/

namespace A010752.P391251109061133003
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061800 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134511 (∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ)).toNat

end

end A010752.P391251109061133003

/-!
# A010753: Sum along upward diagonal of Pascal triangle up to (but not including) center.

The programs for A010753, there is no canonical definition to state claims against.
-/

/-! ## A010753.P5278323204239295227

`∑[A212804(n)]-A010757(n)`
-/

namespace A010753.P5278323204239295227
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212804 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A010757 n

end

end A010753.P5278323204239295227

/-! ## A010753.P10783032104082052030

`A000045(n+1)-A010757(n)`
-/

namespace A010753.P10783032104082052030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (n + 1) - A010757 n

end

end A010753.P10783032104082052030

/-! ## A010753.P1875967877339084854

`A212804(n+2)-A010757(n)`
-/

namespace A010753.P1875967877339084854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212804 (n + 2) - A010757 n

end

end A010753.P1875967877339084854

/-! ## A010753.P8098432733193114715

`A010752(n)+A010756(n)-A010757(n)`
-/

namespace A010753.P8098432733193114715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010752 n + (A010756 n - A010757 n)

end

end A010753.P8098432733193114715

/-! ## A010753.P6101339673111751977

`A037027(A000217(n))-A010757(n)`
-/

namespace A010753.P6101339673111751977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037027 (A000217 n).toNat - A010757 n

end

end A010753.P6101339673111751977

/-! ## A010753.P5130945146828914101

`A058071(∑[n])-A010757(n)`
-/

namespace A010753.P5130945146828914101
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058071 (∑ j ∈ Finset.range (n + 1), f1 j) - A010757 n

end

end A010753.P5130945146828914101

/-! ## A010753.P5228589259535777394

`A134511(∑[A028310(A061800(n))])`
-/

namespace A010753.P5228589259535777394
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A061800 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134511 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A010753.P5228589259535777394

/-! ## A010753.P4004901703270449268

`A143061(A000124(n))-A010757(n)`
-/

namespace A010753.P4004901703270449268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143061 (A000124 n).toNat - A010757 n

end

end A010753.P4004901703270449268

/-!
# A010754: Sum along upward diagonal of Pascal triangle to halfway point.

The programs for A010754, there is no canonical definition to state claims against.
-/

/-! ## A010754.P1379341510618067736

`A000045(n+1)-A010758(n)`
-/

namespace A010754.P1379341510618067736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (n + 1) - A010758 n

end

end A010754.P1379341510618067736

/-! ## A010754.P13577404601837191881

`A010755(n)+A010759(n)-A010758(n)`
-/

namespace A010754.P13577404601837191881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010755 n + (A010759 n - A010758 n)

end

end A010754.P13577404601837191881

/-! ## A010754.P7968420323310178844

`A054450(A194274(n))`
-/

namespace A010754.P7968420323310178844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054450 (A194274 n).toNat

end

end A010754.P7968420323310178844

/-! ## A010754.P4959837820001896197

`A054450(A007590(n+1))`
-/

namespace A010754.P4959837820001896197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054450 (A007590 (n + 1)).toNat

end

end A010754.P4959837820001896197

/-! ## A010754.P14888380771718533002

`A054450(A080476(n+1))`
-/

namespace A010754.P14888380771718533002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054450 (A080476 (n + 1)).toNat

end

end A010754.P14888380771718533002

/-! ## A010754.P9386319238719399099

`A104726(A038707(n+1))`
-/

namespace A010754.P9386319238719399099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104726 (A038707 (n + 1)).toNat

end

end A010754.P9386319238719399099

/-! ## A010754.P6512649260305495370

`A294453(A002265(n)+∑[n])`
-/

namespace A010754.P6512649260305495370
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294453 (A002265 n + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)).toNat

end

end A010754.P6512649260305495370

/-! ## A010754.P14737636644647456938

`A058071(∑[n])-A010758(n)`
-/

namespace A010754.P14737636644647456938
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058071 (∑ j ∈ Finset.range (n + 1), f1 j) - A010758 n

end

end A010754.P14737636644647456938

/-! ## A010754.P10138806956373624524

`A134511(∑[n+2]-A047247(n+1))`
-/

namespace A010754.P10138806956373624524
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134511 (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - A047247 (n + 1)).toNat

end

end A010754.P10138806956373624524

/-! ## A010754.P16225239639725352102

`A294453(A187321(n)+A000982(n))`
-/

namespace A010754.P16225239639725352102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294453 (A187321 n + A000982 n).toNat

end

end A010754.P16225239639725352102

/-!
# A010755: Sum along upward diagonal of Pascal triangle up to (but not including) halfway point.

The programs for A010755, there is no canonical definition to state claims against.
-/

/-! ## A010755.P9090019957554814236

`∑[A212804(n)]-A010759(n)`
-/

namespace A010755.P9090019957554814236
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212804 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A010759 n

end

end A010755.P9090019957554814236

/-! ## A010755.P1337036083602834704

`A000045(n+1)-A010759(n)`
-/

namespace A010755.P1337036083602834704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (n + 1) - A010759 n

end

end A010755.P1337036083602834704

/-! ## A010755.P13217292623691468588

`A212804(n+2)-A010759(n)`
-/

namespace A010755.P13217292623691468588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212804 (n + 2) - A010759 n

end

end A010755.P13217292623691468588

/-! ## A010755.P10213794839068268423

`A010754(n)+A010758(n)-A010759(n)`
-/

namespace A010755.P10213794839068268423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010754 n + (A010758 n - A010759 n)

end

end A010755.P10213794839068268423

/-! ## A010755.P12482025488183881223

`A037027(∑[n])-A010759(n)`
-/

namespace A010755.P12482025488183881223
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037027 (∑ j ∈ Finset.range (n + 1), f1 j) - A010759 n

end

end A010755.P12482025488183881223

/-! ## A010755.P9552752189925708459

`A053538(∑[n])-A010759(n)`
-/

namespace A010755.P9552752189925708459
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053538 (∑ j ∈ Finset.range (n + 1), f1 j) - A010759 n

end

end A010755.P9552752189925708459

/-! ## A010755.P3981380875299269876

`A058071(∑[n])-A010759(n)`
-/

namespace A010755.P3981380875299269876
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058071 (∑ j ∈ Finset.range (n + 1), f1 j) - A010759 n

end

end A010755.P3981380875299269876

/-!
# A010756: Sum along upward diagonal of Pascal triangle from (but not including) center.

The programs for A010756, there is no canonical definition to state claims against.
-/

/-! ## A010756.P2933060170626692679

`∑[A212804(n)]-A010752(n)`
-/

namespace A010756.P2933060170626692679
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212804 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A010752 n

end

end A010756.P2933060170626692679

/-! ## A010756.P17443365307159898740

`A000045(n+1)-A010752(n)`
-/

namespace A010756.P17443365307159898740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (n + 1) - A010752 n

end

end A010756.P17443365307159898740

/-! ## A010756.P5803668305611051947

`A212804(n+2)-A010752(n)`
-/

namespace A010756.P5803668305611051947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212804 (n + 2) - A010752 n

end

end A010756.P5803668305611051947

/-! ## A010756.P12587350489881528585

`A010753(n)+A010757(n)-A010752(n)`
-/

namespace A010756.P12587350489881528585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010753 n + (A010757 n - A010752 n)

end

end A010756.P12587350489881528585

/-! ## A010756.P2854429158539111136

`A036355(∑[n])-A010752(n)`
-/

namespace A010756.P2854429158539111136
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036355 (∑ j ∈ Finset.range (n + 1), f1 j) - A010752 n

end

end A010756.P2854429158539111136

/-! ## A010756.P15837820425544774300

`A105809(∑[n])-A010752(n)`
-/

namespace A010756.P15837820425544774300
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105809 (∑ j ∈ Finset.range (n + 1), f1 j) - A010752 n

end

end A010756.P15837820425544774300

/-! ## A010756.P10650217526433800268

`A143061(A000124(n))-A010752(n)`
-/

namespace A010756.P10650217526433800268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143061 (A000124 n).toNat - A010752 n

end

end A010756.P10650217526433800268

/-!
# A010757: Sum along upward diagonal of Pascal triangle from center.

The programs for A010757, there is no canonical definition to state claims against.
-/

/-! ## A010757.P15740541405234979592

`∑[A212804(n)]-A010753(n)`
-/

namespace A010757.P15740541405234979592
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212804 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A010753 n

end

end A010757.P15740541405234979592

/-! ## A010757.P14079638867778227560

`A000045(n+1)-A010753(n)`
-/

namespace A010757.P14079638867778227560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (n + 1) - A010753 n

end

end A010757.P14079638867778227560

/-! ## A010757.P548942605944759077

`A212804(n+2)-A010753(n)`
-/

namespace A010757.P548942605944759077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212804 (n + 2) - A010753 n

end

end A010757.P548942605944759077

/-! ## A010757.P4732557720704113635

`A324969(n+2)-A010753(n)`
-/

namespace A010757.P4732557720704113635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324969 (n + 2) - A010753 n

end

end A010757.P4732557720704113635

/-! ## A010757.P11092011894045154060

`A010752(n)+A010756(n)-A010753(n)`
-/

namespace A010757.P11092011894045154060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010752 n + (A010756 n - A010753 n)

end

end A010757.P11092011894045154060

/-! ## A010757.P2341608533050806030

`A037027(A000217(n))-A010753(n)`
-/

namespace A010757.P2341608533050806030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037027 (A000217 n).toNat - A010753 n

end

end A010757.P2341608533050806030

/-! ## A010757.P8650779568725923258

`A053538(∑[n])-A010753(n)`
-/

namespace A010757.P8650779568725923258
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053538 (∑ j ∈ Finset.range (n + 1), f1 j) - A010753 n

end

end A010757.P8650779568725923258

/-! ## A010757.P15981416449704574938

`A058071(∑[n])-A010753(n)`
-/

namespace A010757.P15981416449704574938
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058071 (∑ j ∈ Finset.range (n + 1), f1 j) - A010753 n

end

end A010757.P15981416449704574938

/-! ## A010757.P14068376589384599522

`A143061(A000124(n))-A010753(n)`
-/

namespace A010757.P14068376589384599522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143061 (A000124 n).toNat - A010753 n

end

end A010757.P14068376589384599522

/-!
# A010758: Sum along upward diagonal of Pascal triangle from (but not including) halfway point.

The programs for A010758, there is no canonical definition to state claims against.
-/

/-! ## A010758.P4968070795861570473

`∑[A212804(n)]-A010754(n)`
-/

namespace A010758.P4968070795861570473
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212804 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A010754 n

end

end A010758.P4968070795861570473

/-! ## A010758.P12605926019505029389

`A000045(n+1)-A010754(n)`
-/

namespace A010758.P12605926019505029389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (n + 1) - A010754 n

end

end A010758.P12605926019505029389

/-! ## A010758.P5649265506998623125

`A212804(n+2)-A010754(n)`
-/

namespace A010758.P5649265506998623125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212804 (n + 2) - A010754 n

end

end A010758.P5649265506998623125

/-! ## A010758.P4866817851057597999

`A010755(n)+A010759(n)-A010754(n)`
-/

namespace A010758.P4866817851057597999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010755 n + (A010759 n - A010754 n)

end

end A010758.P4866817851057597999

/-! ## A010758.P10785892610618161323

`A037027(A000217(n))-A010754(n)`
-/

namespace A010758.P10785892610618161323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037027 (A000217 n).toNat - A010754 n

end

end A010758.P10785892610618161323

/-! ## A010758.P3019945661388816420

`A058071(∑[n])-A010754(n)`
-/

namespace A010758.P3019945661388816420
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058071 (∑ j ∈ Finset.range (n + 1), f1 j) - A010754 n

end

end A010758.P3019945661388816420

/-!
# A010759: Sum along upward diagonal of Pascal triangle from halfway point.

The programs for A010759, there is no canonical definition to state claims against.
-/

/-! ## A010759.P18240478711537530451

`∑[A212804(n)]-A010755(n)`
-/

namespace A010759.P18240478711537530451
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212804 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A010755 n

end

end A010759.P18240478711537530451

/-! ## A010759.P5998372311051074420

`A000045(n+1)-A010755(n)`
-/

namespace A010759.P5998372311051074420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (n + 1) - A010755 n

end

end A010759.P5998372311051074420

/-! ## A010759.P12479075436237363045

`A212804(n+2)-A010755(n)`
-/

namespace A010759.P12479075436237363045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212804 (n + 2) - A010755 n

end

end A010759.P12479075436237363045

/-! ## A010759.P12167949611045207731

`A010754(n)+A010758(n)-A010755(n)`
-/

namespace A010759.P12167949611045207731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010754 n + (A010758 n - A010755 n)

end

end A010759.P12167949611045207731

/-! ## A010759.P1478489885401826296

`A037027(A000217(n))-A010755(n)`
-/

namespace A010759.P1478489885401826296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037027 (A000217 n).toNat - A010755 n

end

end A010759.P1478489885401826296

/-! ## A010759.P2574307959263513552

`A053538(∑[n])-A010755(n)`
-/

namespace A010759.P2574307959263513552
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053538 (∑ j ∈ Finset.range (n + 1), f1 j) - A010755 n

end

end A010759.P2574307959263513552

/-! ## A010759.P577501597476703915

`A058071(∑[n])-A010755(n)`
-/

namespace A010759.P577501597476703915
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058071 (∑ j ∈ Finset.range (n + 1), f1 j) - A010755 n

end

end A010759.P577501597476703915

/-! ## A010759.P17488830731265508297

`A094440(A000124(n))-A010755(n)`
-/

namespace A010759.P17488830731265508297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094440 (A000124 n).toNat - A010755 n

end

end A010759.P17488830731265508297

/-!
# A010760: Maximal cycle length for a ring of n binary cellular automata.

The programs for A010760, there is no canonical definition to state claims against.
-/

/-! ## A010760.P6274078373150590410

`A085587(n+1)%(4*(n²+n)+2)²`
-/

namespace A010760.P6274078373150590410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A085587 (n + 1)) ((4 * (n ^ 2 + n) + 2) ^ 2 : ℤ)

end

end A010760.P6274078373150590410

/-! ## A010760.P16185620430319233838

`A085587(A122079(n+1))`
-/

namespace A010760.P16185620430319233838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085587 (A122079 (n + 1)).toNat

end

end A010760.P16185620430319233838

/-! ## A010760.P10358306389118535349

`A085587(n+1)+char[A026132(n+3)]`
-/

namespace A010760.P10358306389118535349
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026132 (n + 3)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085587 (n + 1) + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A010760.P10358306389118535349

/-! ## A010760.P18264533091380426635

`char[A272118(n+1)]*A085587(n+1)`
-/

namespace A010760.P18264533091380426635
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272118 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A085587 (n + 1)

end

end A010760.P18264533091380426635

/-! ## A010760.P18445600374827935735

`A085587(n+1)+char[A067093(2*n+3)]`
-/

namespace A010760.P18445600374827935735
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067093 (2 * n + 3)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085587 (n + 1) + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A010760.P18445600374827935735

/-! ## A010760.P623506128781198054

`A085587(n+1)+char[A129739(2*n+5)]`
-/

namespace A010760.P623506128781198054
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129739 (2 * n + 5)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085587 (n + 1) + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A010760.P623506128781198054

/-! ## A010760.P17063672445430656169

`A085587(n+1)+char[A267167(3*n+4)]`
-/

namespace A010760.P17063672445430656169
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267167 (3 * n + 4)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085587 (n + 1) + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A010760.P17063672445430656169

/-! ## A010760.P3642177144741714788

`A088157(n+1)+ceil(A334507(Δ[n²])/2)`
-/

namespace A010760.P3642177144741714788
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088157 (n + 1) + ⌈(A334507 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat : ℚ) / 2⌉

end

end A010760.P3642177144741714788

/-!
# A010761: a(n) = floor(n/2) + floor(n/3).

The programs for A010761, the canonical program `A010761.P16043708694723848795` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A010761 has offset 1).

The definition of A010761 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor((n+1)/2)+floor((n+1)/3)` (program `A010761.P16043708694723848795`, by `A010761.P16043708694723848795.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A010761.P16043708694723848795

`floor((n+1)/2)+floor((n+1)/3)`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A010761

/-- `floor((n+1)/2)+floor((n+1)/3)` -/
def P16043708694723848795.Spec : Prop :=
  ∀ n, P16043708694723848795.a n = A010761 (n + 1)

theorem P16043708694723848795.correct : P16043708694723848795.Spec := by
  intro n
  simp only [A010761, Nat.add_sub_cancel]

end A010761

/-! ## A010761.P17374931801109615723

`∑[floor(log2(gcd(6, n+1)))]`
-/

namespace A010761.P17374931801109615723
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.log 2 (Nat.gcd 6 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A010761.P17374931801109615723

namespace A010761

/-- `∑[floor(log2(gcd(6, n+1)))]` -/
def P17374931801109615723.Spec : Prop :=
  ∀ n, (P17374931801109615723.a n : ℤ) = A010761 (n + 1)

end A010761

/-! ## A010761.P8444958744698469

`∑[∑{p}[n+1, floor(3/#)]]`
-/

namespace A010761.P8444958744698469
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n), ⌊3 / (p : ℚ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A010761.P8444958744698469

namespace A010761

/-- `∑[∑{p}[n+1, floor(3/#)]]` -/
def P8444958744698469.Spec : Prop :=
  ∀ n, P8444958744698469.a n = A010761 (n + 1)

end A010761

/-! ## A010761.P6488711922181529943

`∑[n%2+C(n, 2)%3]`
-/

namespace A010761.P6488711922181529943
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n % 2 + Nat.choose n 2 % 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A010761.P6488711922181529943

namespace A010761

/-- `∑[n%2+C(n, 2)%3]` -/
def P6488711922181529943.Spec : Prop :=
  ∀ n, (P6488711922181529943.a n : ℤ) = A010761 (n + 1)

end A010761

/-! ## A010761.P8585970502973665461

`∑[(2*xor(1, (n+1)²))%3]`
-/

namespace A010761.P8585970502973665461
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * Nat.xor 1 ((n + 1) ^ 2) % 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A010761.P8585970502973665461

namespace A010761

/-- `∑[(2*xor(1, (n+1)²))%3]` -/
def P8585970502973665461.Spec : Prop :=
  ∀ n, (P8585970502973665461.a n : ℤ) = A010761 (n + 1)

end A010761

/-! ## A010761.P14408726478948827992

`floor(∑[5-a(n-1)]/3)` with `a(0)=1`
-/

namespace A010761.P14408726478948827992
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  5 - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / 3⌋

end

end A010761.P14408726478948827992

namespace A010761

/-- `floor(∑[5-a(n-1)]/3)` -/
def P14408726478948827992.Spec : Prop :=
  ∀ n, P14408726478948827992.a n = A010761 (n + 1)

end A010761

/-! ## A010761.P3127572871474041507

`floor(5*n/3-a(n-1))` with `a(0)=0`
-/

namespace A010761.P3127572871474041507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  ⌊5 * ((n : ℚ) / 3) - (a (n - 1) : ℚ)⌋

end

end A010761.P3127572871474041507

namespace A010761

/-- `floor(5*n/3-a(n-1))` -/
def P3127572871474041507.Spec : Prop :=
  ∀ n, P3127572871474041507.a n = A010761 (n + 1)

end A010761

/-! ## A010761.P5460565670996699333

`∑[a(n-3)-(-1)^n]` with `a(0)=0, a(1)=1, a(2)=1`
-/

namespace A010761.P5460565670996699333
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 1] fun n f1 =>
  f1 (n - 3) - (-1) ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A010761.P5460565670996699333

namespace A010761

/-- `∑[a(n-3)-(-1)^n]` -/
def P5460565670996699333.Spec : Prop :=
  ∀ n, P5460565670996699333.a n = A010761 (n + 1)

end A010761

/-! ## A010761.P17643481639026802054

`∑[ogf((x+2x^2+2x^3)/(1+x-x^3-x^4))]`
-/

namespace A010761.P17643481639026802054
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1, 2, 2] [1, 1, 0, -1, -1] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A010761.P17643481639026802054

namespace A010761

/-- `∑[ogf((x+2x^2+2x^3)/(1+x-x^3-x^4))]` -/
def P17643481639026802054.Spec : Prop :=
  ∀ n, P17643481639026802054.a n = A010761 (n + 1)

end A010761

/-! ## A010761.P15917529964526606057

`∑[∑[a(n-2)+2]%3]` with `a(0)=0, a(1)=4, a(2)=0`
-/

namespace A010761.P15917529964526606057
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [0, 4, 0] fun n f2 =>
  f2 (n - 2) + 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f2 j) % 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A010761.P15917529964526606057

namespace A010761

/-- `∑[∑[a(n-2)+2]%3]` -/
def P15917529964526606057.Spec : Prop :=
  ∀ n, (P15917529964526606057.a n : ℤ) = A010761 (n + 1)

end A010761

/-! ## A010761.P7463050492586901577

`∑[2-∑[n]%3-a(n-1)]` with `a(0)=0`
-/

namespace A010761.P7463050492586901577
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f1 =>
  2 - (((∑ j ∈ Finset.range (n + 1), f2 j) % 3 : ℕ) : ℤ) - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A010761.P7463050492586901577

namespace A010761

/-- `∑[2-∑[n]%3-a(n-1)]` -/
def P7463050492586901577.Spec : Prop :=
  ∀ n, P7463050492586901577.a n = A010761 (n + 1)

end A010761

/-! ## A010761.P1439679275632841453

`∑[and(2*n+1, a(n-3)+1)]` with `a(0)=0, a(1)=1, a(2)=1`
-/

namespace A010761.P1439679275632841453
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 1] fun n f1 =>
  Nat.land (2 * n + 1) (f1 (n - 3) + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A010761.P1439679275632841453

namespace A010761

/-- `∑[and(2*n+1, a(n-3)+1)]` -/
def P1439679275632841453.Spec : Prop :=
  ∀ n, (P1439679275632841453.a n : ℤ) = A010761 (n + 1)

end A010761

/-! ## A010761.P12003813415215404979

`∑[A171182(n+1)]`
-/

namespace A010761.P12003813415215404979
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171182 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A010761.P12003813415215404979

namespace A010761

/-- `∑[A171182(n+1)]` -/
def P12003813415215404979.Spec : Prop :=
  ∀ n, P12003813415215404979.a n = A010761 (n + 1)

end A010761

/-! ## A010761.P6992293127782475651

`∑[log2(A382488(n+1))]`
-/

namespace A010761.P6992293127782475651
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A382488 (n + 1) : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A010761.P6992293127782475651

namespace A010761

/-- `∑[log2(A382488(n+1))]` -/
def P6992293127782475651.Spec : Prop :=
  ∀ n, P6992293127782475651.a n = (A010761 (n + 1) : ℝ)

end A010761

/-! ## A010761.P7029615948002157013

`∑[A083039(n+1)-1]`
-/

namespace A010761.P7029615948002157013
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083039 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A010761.P7029615948002157013

namespace A010761

/-- `∑[A083039(n+1)-1]` -/
def P7029615948002157013.Spec : Prop :=
  ∀ n, P7029615948002157013.a n = A010761 (n + 1)

end A010761

/-! ## A010761.P1475648365031508191

`∑[A001222(gcd((n+1)*(n-1), 2*(n-2)))]`
-/

namespace A010761.P1475648365031508191
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (Int.gcd ((n + 1 : ℤ) * ((n : ℤ) - 1)) (2 * ((n : ℤ) - 2)))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A010761.P1475648365031508191

namespace A010761

/-- `∑[A001222(gcd((n+1)*(n-1), 2*(n-2)))]` -/
def P1475648365031508191.Spec : Prop :=
  ∀ n, P1475648365031508191.a n = A010761 (n + 1)

end A010761

/-! ## A010761.P15429974348852187844

`A047345(n+1)%A008576(n)`
-/

namespace A010761.P15429974348852187844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A047345 (n + 1)) (A008576 n)

end

end A010761.P15429974348852187844

namespace A010761

/-- `A047345(n+1)%A008576(n)` -/
def P15429974348852187844.Spec : Prop :=
  ∀ n, P15429974348852187844.a n = A010761 (n + 1)

end A010761

/-! ## A010761.P11772829553100542628

`A322598(n+1)%A238377(n)`
-/

namespace A010761.P11772829553100542628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A322598 (n + 1)) (A238377 n)

end

end A010761.P11772829553100542628

namespace A010761

/-- `A322598(n+1)%A238377(n)` -/
def P11772829553100542628.Spec : Prop :=
  ∀ n, P11772829553100542628.a n = A010761 (n + 1)

end A010761

/-! ## A010761.P7648255687049776717

`A047282(n+1)%A001651(n+1)`
-/

namespace A010761.P7648255687049776717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A047282 (n + 1)) (A001651 (n + 1))

end

end A010761.P7648255687049776717

namespace A010761

/-- `A047282(n+1)%A001651(n+1)` -/
def P7648255687049776717.Spec : Prop :=
  ∀ n, P7648255687049776717.a n = A010761 (n + 1)

end A010761

/-! ## A010761.P11296701915265787325

`A047209(n+1)%A047206(n+1)`
-/

namespace A010761.P11296701915265787325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A047209 (n + 1)) (A047206 (n + 1))

end

end A010761.P11296701915265787325

namespace A010761

/-- `A047209(n+1)%A047206(n+1)` -/
def P11296701915265787325.Spec : Prop :=
  ∀ n, P11296701915265787325.a n = A010761 (n + 1)

end A010761

/-!
# A010762: a(n) = floor(n/2) * floor(n/3).

The programs for A010762, the canonical program `A010762.P9670492016780951607` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A010762 has offset 1).

The definition of A010762 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor((n+1)/2)*floor((n+1)/3)` (program `A010762.P9670492016780951607`, by `A010762.P9670492016780951607.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A010762.P9670492016780951607

`floor((n+1)/2)*floor((n+1)/3)`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A010762

/-- `floor((n+1)/2)*floor((n+1)/3)` -/
def P9670492016780951607.Spec : Prop :=
  ∀ n, P9670492016780951607.a n = A010762 (n + 1)

theorem P9670492016780951607.correct : P9670492016780951607.Spec := by
  intro n
  simp only [A010762, Nat.add_sub_cancel]

end A010762

/-! ## A010762.P14855442046003957701

`abs(floor((n+1)/3)*A001057(n))`
-/

namespace A010762.P14855442046003957701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |⌊(n + 1 : ℚ) / 3⌋ * A001057 n|

end

end A010762.P14855442046003957701

namespace A010762

/-- `abs(floor((n+1)/3)*A001057(n))` -/
def P14855442046003957701.Spec : Prop :=
  ∀ n, P14855442046003957701.a n = A010762 (n + 1)

end A010762

/-! ## A010762.P6794482243698163238

`A002264(n+1)*A008619(n+1)-A002264(n+1)`
-/

namespace A010762.P6794482243698163238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (n + 1) * A008619 (n + 1) - A002264 (n + 1)

end

end A010762.P6794482243698163238

namespace A010762

/-- `A002264(n+1)*A008619(n+1)-A002264(n+1)` -/
def P6794482243698163238.Spec : Prop :=
  ∀ n, P6794482243698163238.a n = A010762 (n + 1)

theorem P6794482243698163238.correct : P6794482243698163238.Spec := by
  intro n
  simp only [A010762, Nat.add_sub_cancel, A010762.P6794482243698163238.a, A010762.P9670492016780951607.a, A002264, A002264.P5647656940077635922.a, A008619, A008619.P16053834178911111118.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A010762

/-! ## A010762.P47082297811961620

`A213033(n+1)/(n+1)`
-/

namespace A010762.P47082297811961620
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A213033 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A010762.P47082297811961620

namespace A010762

/-- `A213033(n+1)/(n+1)` -/
def P47082297811961620.Spec : Prop :=
  ∀ n, P47082297811961620.a n = (A010762 (n + 1) : ℚ)

end A010762

/-! ## A010762.P11105886716458287147

`A004526(n+1)*A008620(n+1)-A004526(n+1)`
-/

namespace A010762.P11105886716458287147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (n + 1) * A008620 (n + 1) - A004526 (n + 1)

end

end A010762.P11105886716458287147

namespace A010762

/-- `A004526(n+1)*A008620(n+1)-A004526(n+1)` -/
def P11105886716458287147.Spec : Prop :=
  ∀ n, P11105886716458287147.a n = A010762 (n + 1)

theorem P11105886716458287147.correct : P11105886716458287147.Spec := by
  intro n
  simp only [A010762, Nat.add_sub_cancel, A010762.P11105886716458287147.a, A010762.P9670492016780951607.a, A004526, A004526.P10084182425416171735.a, A008620, A008620.P16090772857505074278.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A010762

/-! ## A010762.P16452897976708013375

`abs(A001057(n)*A008615(2*n+1))`
-/

namespace A010762.P16452897976708013375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A001057 n * A008615 (2 * n + 1)|

end

end A010762.P16452897976708013375

namespace A010762

/-- `abs(A001057(n)*A008615(2*n+1))` -/
def P16452897976708013375.Spec : Prop :=
  ∀ n, P16452897976708013375.a n = A010762 (n + 1)

end A010762

/-! ## A010762.P12851436473284963766

`abs(A242601(2*n)*A242602(2*n))`
-/

namespace A010762.P12851436473284963766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A242601 (2 * n) * A242602 (2 * n)|

end

end A010762.P12851436473284963766

namespace A010762

/-- `abs(A242601(2*n)*A242602(2*n))` -/
def P12851436473284963766.Spec : Prop :=
  ∀ n, P12851436473284963766.a n = A010762 (n + 1)

end A010762

/-! ## A010762.P13414457483312803420

`A008615(2*n+1)*A018837(2*n)/2`
-/

namespace A010762.P13414457483312803420
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008615 (2 * n + 1) * A018837 (2 * n) : ℚ) / 2

end

end A010762.P13414457483312803420

namespace A010762

/-- `A008615(2*n+1)*A018837(2*n)/2` -/
def P13414457483312803420.Spec : Prop :=
  ∀ n, P13414457483312803420.a n = (A010762 (n + 1) : ℚ)

end A010762

/-! ## A010762.P16302795707122403786

`A008615(2*n+1)*A083219(2*n)/2`
-/

namespace A010762.P16302795707122403786
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008615 (2 * n + 1) * A083219 (2 * n) : ℚ) / 2

end

end A010762.P16302795707122403786

namespace A010762

/-- `A008615(2*n+1)*A083219(2*n)/2` -/
def P16302795707122403786.Spec : Prop :=
  ∀ n, P16302795707122403786.a n = (A010762 (n + 1) : ℚ)

end A010762

/-! ## A010762.P10679435660855961445

`A008615(2*n+1)*A285869(2*n)/2`
-/

namespace A010762.P10679435660855961445
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008615 (2 * n + 1) * A285869 (2 * n) : ℚ) / 2

end

end A010762.P10679435660855961445

namespace A010762

/-- `A008615(2*n+1)*A285869(2*n)/2` -/
def P10679435660855961445.Spec : Prop :=
  ∀ n, P10679435660855961445.a n = (A010762 (n + 1) : ℚ)

end A010762

/-! ## A010762.P3226326982204355154

`A008615(2*n+1)*A106249(2*n+1)/2`
-/

namespace A010762.P3226326982204355154
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008615 (2 * n + 1) * A106249 (2 * n + 1) : ℚ) / 2

end

end A010762.P3226326982204355154

namespace A010762

/-- `A008615(2*n+1)*A106249(2*n+1)/2` -/
def P3226326982204355154.Spec : Prop :=
  ∀ n, P3226326982204355154.a n = (A010762 (n + 1) : ℚ)

end A010762

/-! ## A010762.P10791420525398695978

`A014682(∑[and(2, n%3)]*A065033(n))`
-/

namespace A010762.P10791420525398695978
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 2 (n % 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) * A065033 n).toNat

end

end A010762.P10791420525398695978

namespace A010762

/-- `A014682(∑[and(2, n%3)]*A065033(n))` -/
def P10791420525398695978.Spec : Prop :=
  ∀ n, P10791420525398695978.a n = A010762 (n + 1)

end A010762

/-!
# A010763: a(n) = binomial(2n+1, n+1) - 1.

The programs for A010763, the canonical program `A010763.P16190016592179271421` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A010763 has offset 0).

The definition of A010763 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `C(2*n+1, n+1)-1` (program `A010763.P16190016592179271421`, by `A010763.P16190016592179271421.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A010763.P16190016592179271421

`C(2*n+1, n+1)-1`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A010763

/-- `C(2*n+1, n+1)-1` -/
def P16190016592179271421.Spec : Prop :=
  ∀ n, P16190016592179271421.a n = A010763 n

theorem P16190016592179271421.correct : P16190016592179271421.Spec := by
  intro n
  simp only [A010763]

end A010763

/-! ## A010763.P5783621843279095993

`∏[4-2/(n+1)]/2-1`
-/

namespace A010763.P5783621843279095993
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  4 - 2 / (n + 1 : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (∏ j ∈ Finset.range (n + 1), f1 j) / 2 - 1

end

end A010763.P5783621843279095993

namespace A010763

/-- `∏[4-2/(n+1)]/2-1` -/
def P5783621843279095993.Spec : Prop :=
  ∀ n, P5783621843279095993.a n = (A010763 n : ℚ)

end A010763

/-! ## A010763.P2887015158762038419

`∑[abs(Δ[(4-2/n)*a(n-1)])]` with `a(0)=1, a(1)=1`
-/

namespace A010763.P2887015158762038419
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.rec [1, 1] fun n f2 =>
  (4 - 2 / (n : ℚ)) * f2 (n - 1)

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  |f2 (n + 1) - f2 n|

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A010763.P2887015158762038419

namespace A010763

/-- `∑[abs(Δ[(4-2/n)*a(n-1)])]` -/
def P2887015158762038419.Spec : Prop :=
  ∀ n, P2887015158762038419.a n = (A010763 n : ℚ)

end A010763

/-! ## A010763.P2028388500848221294

`∑[floor(Δ[(4-2/n)*a(n-1)])]` with `a(0)=1, a(1)=1`
-/

namespace A010763.P2028388500848221294
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.rec [1, 1] fun n f2 =>
  (4 - 2 / (n : ℚ)) * f2 (n - 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊f2 (n + 1) - f2 n⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A010763.P2028388500848221294

namespace A010763

/-- `∑[floor(Δ[(4-2/n)*a(n-1)])]` -/
def P2028388500848221294.Spec : Prop :=
  ∀ n, P2028388500848221294.a n = A010763 n

end A010763

/-! ## A010763.P16485334940956315710

`∑[ceil(Δ[(4-2/n)*a(n-1)])]` with `a(0)=1, a(1)=1`
-/

namespace A010763.P16485334940956315710
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.rec [1, 1] fun n f2 =>
  (4 - 2 / (n : ℚ)) * f2 (n - 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈f2 (n + 1) - f2 n⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A010763.P16485334940956315710

namespace A010763

/-- `∑[ceil(Δ[(4-2/n)*a(n-1)])]` -/
def P16485334940956315710.Spec : Prop :=
  ∀ n, P16485334940956315710.a n = A010763 n

end A010763

/-! ## A010763.P8747466979176653228

`∑[round(Δ[(4-2/n)*a(n-1)])]` with `a(0)=1, a(1)=1`
-/

namespace A010763.P8747466979176653228
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.rec [1, 1] fun n f2 =>
  (4 - 2 / (n : ℚ)) * f2 (n - 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A010763.P8747466979176653228

namespace A010763

/-- `∑[round(Δ[(4-2/n)*a(n-1)])]` -/
def P8747466979176653228.Spec : Prop :=
  ∀ n, P8747466979176653228.a n = A010763 n

end A010763

/-! ## A010763.P681561577584938581

`A014495(Δ[n²])`
-/

namespace A010763.P681561577584938581
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014495 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A010763.P681561577584938581

namespace A010763

/-- `A014495(Δ[n²])` -/
def P681561577584938581.Spec : Prop :=
  ∀ n, P681561577584938581.a n = A010763 n

end A010763

/-! ## A010763.P2536302523357667924

`A047171(Δ[n²])`
-/

namespace A010763.P2536302523357667924
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047171 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A010763.P2536302523357667924

namespace A010763

/-- `A047171(Δ[n²])` -/
def P2536302523357667924.Spec : Prop :=
  ∀ n, P2536302523357667924.a n = A010763 n

end A010763

/-! ## A010763.P13295560552549563465

`A395396(Δ[n²])`
-/

namespace A010763.P13295560552549563465
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A395396 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A010763.P13295560552549563465

namespace A010763

/-- `A395396(Δ[n²])` -/
def P13295560552549563465.Spec : Prop :=
  ∀ n, P13295560552549563465.a n = A010763 n

end A010763

/-! ## A010763.P13067487625018972104

`abs(1-A001700(n))`
-/

namespace A010763.P13067487625018972104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - A001700 n|

end

end A010763.P13067487625018972104

namespace A010763

/-- `abs(1-A001700(n))` -/
def P13067487625018972104.Spec : Prop :=
  ∀ n, P13067487625018972104.a n = A010763 n

end A010763

/-! ## A010763.P1261082040643764231

`record[A057977(n)-1]`
-/

namespace A010763.P1261082040643764231
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057977 n - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A010763.P1261082040643764231

namespace A010763

/-- `record[A057977(n)-1]` -/
def P1261082040643764231.Spec : Prop :=
  ∀ n, P1261082040643764231.a n = A010763 n

end A010763

/-! ## A010763.P7794620179222522196

`Δ[A024718(n)-n]`
-/

namespace A010763.P7794620179222522196
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024718 n - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A010763.P7794620179222522196

namespace A010763

/-- `Δ[A024718(n)-n]` -/
def P7794620179222522196.Spec : Prop :=
  ∀ n, P7794620179222522196.a n = A010763 n

end A010763

/-! ## A010763.P7773710909973260005

`A115112(n+1)/2`
-/

namespace A010763.P7773710909973260005
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A115112 (n + 1) : ℚ) / 2

end

end A010763.P7773710909973260005

namespace A010763

/-- `A115112(n+1)/2` -/
def P7773710909973260005.Spec : Prop :=
  ∀ n, P7773710909973260005.a n = (A010763 n : ℚ)

end A010763

/-! ## A010763.P6369785450229701613

`record[Δ[A138364(n)]-1]`
-/

namespace A010763.P6369785450229701613
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138364 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A010763.P6369785450229701613

namespace A010763

/-- `record[Δ[A138364(n)]-1]` -/
def P6369785450229701613.Spec : Prop :=
  ∀ n, P6369785450229701613.a n = A010763 n

end A010763

/-! ## A010763.P8283393334553818274

`abs(A395396(2*n+1))`
-/

namespace A010763.P8283393334553818274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A395396 (2 * n + 1)|

end

end A010763.P8283393334553818274

namespace A010763

/-- `abs(A395396(2*n+1))` -/
def P8283393334553818274.Spec : Prop :=
  ∀ n, P8283393334553818274.a n = A010763 n

end A010763

/-! ## A010763.P9290895211878613540

`floor(A030662(n+1)/2)`
-/

namespace A010763.P9290895211878613540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A030662 (n + 1) : ℚ) / 2⌋

end

end A010763.P9290895211878613540

namespace A010763

/-- `floor(A030662(n+1)/2)` -/
def P9290895211878613540.Spec : Prop :=
  ∀ n, P9290895211878613540.a n = A010763 n

end A010763

/-! ## A010763.P7194318866869192409

`record[A063549(n+1)-1]`
-/

namespace A010763.P7194318866869192409
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063549 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A010763.P7194318866869192409

namespace A010763

/-- `record[A063549(n+1)-1]` -/
def P7194318866869192409.Spec : Prop :=
  ∀ n, P7194318866869192409.a n = A010763 n

end A010763

/-! ## A010763.P11072339117244864998

`record[A138364(n+1)-1]`
-/

namespace A010763.P11072339117244864998
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138364 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A010763.P11072339117244864998

namespace A010763

/-- `record[A138364(n+1)-1]` -/
def P11072339117244864998.Spec : Prop :=
  ∀ n, P11072339117244864998.a n = A010763 n

end A010763

/-! ## A010763.P17625006161118425151

`(A370487(n+1)-1)/3`
-/

namespace A010763.P17625006161118425151
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A370487 (n + 1) - 1 : ℚ) / 3

end

end A010763.P17625006161118425151

namespace A010763

/-- `(A370487(n+1)-1)/3` -/
def P17625006161118425151.Spec : Prop :=
  ∀ n, P17625006161118425151.a n = (A010763 n : ℚ)

end A010763

/-! ## A010763.P12320741174607357267

`A218008(2*n+1)/2`
-/

namespace A010763.P12320741174607357267
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A218008 (2 * n + 1) : ℚ) / 2

end

end A010763.P12320741174607357267

namespace A010763

/-- `A218008(2*n+1)/2` -/
def P12320741174607357267.Spec : Prop :=
  ∀ n, P12320741174607357267.a n = (A010763 n : ℚ)

end A010763

/-!
# A010764: a(n) = floor(n/2) mod floor(n/3).

The programs for A010764, the canonical program `A010764.P18170731277203623308` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A010764 has offset 3).

The definition of A010764 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor((n+3)/2)%floor((n+3)/3)` (program `A010764.P18170731277203623308`, by `A010764.P18170731277203623308.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A010764.P18170731277203623308

`floor((n+3)/2)%floor((n+3)/3)`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A010764

/-- `floor((n+3)/2)%floor((n+3)/3)` -/
def P18170731277203623308.Spec : Prop :=
  ∀ n, P18170731277203623308.a n = A010764 (n + 3)

theorem P18170731277203623308.correct : P18170731277203623308.Spec := by
  intro n
  simp only [A010764, Nat.add_sub_cancel]

end A010764

/-! ## A010764.P16354986039497779778

`A004526((∑[2-gcd(3, n)]+2)%(A004526(n)+2))`
-/

namespace A010764.P16354986039497779778
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - (Nat.gcd 3 n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j + 2) (A004526 n + 2)).toNat

end

end A010764.P16354986039497779778

namespace A010764

/-- `A004526((∑[2-gcd(3, n)]+2)%(A004526(n)+2))` -/
def P16354986039497779778.Spec : Prop :=
  ∀ n, P16354986039497779778.a n = A010764 (n + 3)

end A010764

/-! ## A010764.P8933611069266538962

`A110654(A008611(n+1)%A008619(n))`
-/

namespace A010764.P8933611069266538962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (Int.tmod (A008611 (n + 1)) (A008619 n)).toNat

end

end A010764.P8933611069266538962

namespace A010764

/-- `A110654(A008611(n+1)%A008619(n))` -/
def P8933611069266538962.Spec : Prop :=
  ∀ n, P8933611069266538962.a n = A010764 (n + 3)

end A010764

/-! ## A010764.P2031349616013609029

`abs(A187035(n+1)%A008620(n))`
-/

namespace A010764.P2031349616013609029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.tmod (A187035 (n + 1)) (A008620 n)|

end

end A010764.P2031349616013609029

namespace A010764

/-- `abs(A187035(n+1)%A008620(n))` -/
def P2031349616013609029.Spec : Prop :=
  ∀ n, P2031349616013609029.a n = A010764 (n + 3)

end A010764

/-! ## A010764.P7408580283124458655

`ceil((n+1)%A008611(2*n)/2)`
-/

namespace A010764.P7408580283124458655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(Int.tmod (n + 1 : ℤ) (A008611 (2 * n)) : ℚ) / 2⌉

end

end A010764.P7408580283124458655

namespace A010764

/-- `ceil((n+1)%A008611(2*n)/2)` -/
def P7408580283124458655.Spec : Prop :=
  ∀ n, P7408580283124458655.a n = A010764 (n + 3)

end A010764

/-! ## A010764.P3696655235566742907

`A008615(A063200(2*(n+1))%A063199(n+1))`
-/

namespace A010764.P3696655235566742907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008615 (Int.tmod (A063200 (2 * (n + 1))) (A063199 (n + 1))).toNat

end

end A010764.P3696655235566742907

namespace A010764

/-- `A008615(A063200(2*(n+1))%A063199(n+1))` -/
def P3696655235566742907.Spec : Prop :=
  ∀ n, P3696655235566742907.a n = A010764 (n + 3)

end A010764

/-! ## A010764.P7114102507629331260

`and(A011960(n+1), A274626(n))`
-/

namespace A010764.P7114102507629331260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A011960 (n + 1)) (A274626 n)

end

end A010764.P7114102507629331260

namespace A010764

/-- `and(A011960(n+1), A274626(n))` -/
def P7114102507629331260.Spec : Prop :=
  ∀ n, P7114102507629331260.a n = A010764 (n + 3)

end A010764

/-! ## A010764.P16655433565088356544

`and(A011960(n+1), A048099(n+1))`
-/

namespace A010764.P16655433565088356544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A011960 (n + 1)) (A048099 (n + 1))

end

end A010764.P16655433565088356544

namespace A010764

/-- `and(A011960(n+1), A048099(n+1))` -/
def P16655433565088356544.Spec : Prop :=
  ∀ n, P16655433565088356544.a n = A010764 (n + 3)

end A010764

/-!
# A010765: a(n) = floor(n/2)^floor(n/3).

The programs for A010765, the canonical program `A010765.P16123164107853766253` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A010765 has offset 2).

The definition of A010765 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A010765.P16123164107853766253

`floor((n+2)/2)^floor((n+2)/3)`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A010765

/-- `floor((n+2)/2)^floor((n+2)/3)` -/
def P16123164107853766253.Spec : Prop :=
  ∀ n, P16123164107853766253.a n = (A010765 (n + 2) : ℚ)

end A010765

/-! ## A010765.P3515384128704347217

`(sqrt(A008619(n))^A002264(n+2))²`
-/

namespace A010765.P3515384128704347217
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (Real.sqrt (A008619 n : ℝ) ^ (A002264 (n + 2) : ℤ)) ^ 2

end

end A010765.P3515384128704347217

namespace A010765

/-- `(sqrt(A008619(n))^A002264(n+2))²` -/
def P3515384128704347217.Spec : Prop :=
  ∀ n, P3515384128704347217.a n = (A010765 (n + 2) : ℝ)

end A010765

/-! ## A010765.P8193054822624062354

`round(A110654(n+1)^(A008620(n+2)-1))`
-/

namespace A010765.P8193054822624062354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A110654 (n + 1) : ℚ) ^ (A008620 (n + 2) - 1 : ℤ))

end

end A010765.P8193054822624062354

namespace A010765

/-- `round(A110654(n+1)^(A008620(n+2)-1))` -/
def P8193054822624062354.Spec : Prop :=
  ∀ n, P8193054822624062354.a n = A010765 (n + 2)

end A010765

/-! ## A010765.P9383750013057704628

`sqrt(A008619(n)^A302402(n))`
-/

namespace A010765.P9383750013057704628
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt ((A008619 n : ℚ) ^ (A302402 n : ℤ) : ℝ)

end

end A010765.P9383750013057704628

namespace A010765

/-- `sqrt(A008619(n)^A302402(n))` -/
def P9383750013057704628.Spec : Prop :=
  ∀ n, P9383750013057704628.a n = (A010765 (n + 2) : ℝ)

end A010765

/-! ## A010765.P17780866651269693326

`sqrt((A004526(n)+1)^A302402(n))`
-/

namespace A010765.P17780866651269693326
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt ((A004526 n + 1 : ℚ) ^ (A302402 n : ℤ) : ℝ)

end

end A010765.P17780866651269693326

namespace A010765

/-- `sqrt((A004526(n)+1)^A302402(n))` -/
def P17780866651269693326.Spec : Prop :=
  ∀ n, P17780866651269693326.a n = (A010765 (n + 2) : ℝ)

end A010765

/-! ## A010765.P12275378460265301134

`sqrt(A008619(n)^A005843(ceil(n/3)))`
-/

namespace A010765.P12275378460265301134
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt ((A008619 n : ℚ) ^ (A005843 ⌈(n : ℚ) / 3⌉.toNat : ℤ) : ℝ)

end

end A010765.P12275378460265301134

namespace A010765

/-- `sqrt(A008619(n)^A005843(ceil(n/3)))` -/
def P12275378460265301134.Spec : Prop :=
  ∀ n, P12275378460265301134.a n = (A010765 (n + 2) : ℝ)

end A010765

/-! ## A010765.P683354140625171511

`sqrt(A008619(n)^A008611(A008611(6*n)))`
-/

namespace A010765.P683354140625171511
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt ((A008619 n : ℚ) ^ (A008611 (A008611 (6 * n)).toNat : ℤ) : ℝ)

end

end A010765.P683354140625171511

namespace A010765

/-- `sqrt(A008619(n)^A008611(A008611(6*n)))` -/
def P683354140625171511.Spec : Prop :=
  ∀ n, P683354140625171511.a n = (A010765 (n + 2) : ℝ)

end A010765

/-!
# A010766: Triangle read by rows: row n gives the numbers floor(n/k), k = 1..n.

The programs for A010766, the canonical program `A010766.P13358049683493517902` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A010766 has offset 1).

The definition of A010766 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A010766.P1222990708254985300

`floor((row(n)+1)/(col(n)+1))`
-/

namespace A010766.P1222990708254985300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(SequenceMachineLib.triRow n + 1 : ℚ) / (SequenceMachineLib.triCol n + 1 : ℚ)⌋

end

end A010766.P1222990708254985300

namespace A010766

/-- `floor((row(n)+1)/(col(n)+1))` -/
def P1222990708254985300.Spec : Prop :=
  ∀ n, P1222990708254985300.a n = A010766 (n + 1)

end A010766

/-! ## A010766.P8773801809975684678

`ceil((row(n)-col(n)+1)/(col(n)+1))`
-/

namespace A010766.P8773801809975684678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((SequenceMachineLib.triRow n : ℤ) - (SequenceMachineLib.triCol n : ℤ) + 1 : ℚ) / (SequenceMachineLib.triCol n + 1 : ℚ)⌉

end

end A010766.P8773801809975684678

namespace A010766

/-- `ceil((row(n)-col(n)+1)/(col(n)+1))` -/
def P8773801809975684678.Spec : Prop :=
  ∀ n, P8773801809975684678.a n = A010766 (n + 1)

end A010766

/-! ## A010766.P13358049683493517902

`ceil(ratio[A074909(n)])`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A010766

/-- `ceil(ratio[A074909(n)])` -/
def P13358049683493517902.Spec : Prop :=
  ∀ n, P13358049683493517902.a n = A010766 (n + 1)

theorem P13358049683493517902.correct : P13358049683493517902.Spec := by
  intro n
  simp only [A010766, Nat.add_sub_cancel]

end A010766

/-! ## A010766.P8166242792729519709

`ceil(ratio[A181971(n)])`
-/

namespace A010766.P8166242792729519709
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181971 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(f1 (n + 1) : ℚ) / (f1 n : ℚ)⌉

end

end A010766.P8166242792729519709

namespace A010766

/-- `ceil(ratio[A181971(n)])` -/
def P8166242792729519709.Spec : Prop :=
  ∀ n, P8166242792729519709.a n = A010766 (n + 1)

end A010766

/-! ## A010766.P11210992298965396535

`abs(A174557(n+1))`
-/

namespace A010766.P11210992298965396535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A174557 (n + 1)|

end

end A010766.P11210992298965396535

namespace A010766

/-- `abs(A174557(n+1))` -/
def P11210992298965396535.Spec : Prop :=
  ∀ n, P11210992298965396535.a n = A010766 (n + 1)

end A010766

/-! ## A010766.P17725857564627268852

`sqrt(A360610(n+1))`
-/

namespace A010766.P17725857564627268852
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A360610 (n + 1) : ℝ)

end

end A010766.P17725857564627268852

namespace A010766

/-- `sqrt(A360610(n+1))` -/
def P17725857564627268852.Spec : Prop :=
  ∀ n, P17725857564627268852.a n = (A010766 (n + 1) : ℝ)

end A010766

/-! ## A010766.P11614331918891166271

`A050206(n+2)-1`
-/

namespace A010766.P11614331918891166271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050206 (n + 2) - 1

end

end A010766.P11614331918891166271

namespace A010766

/-- `A050206(n+2)-1` -/
def P11614331918891166271.Spec : Prop :=
  ∀ n, P11614331918891166271.a n = A010766 (n + 1)

end A010766

/-! ## A010766.P17026843034961098312

`floor(sqrt(A085383(n+1)))`
-/

namespace A010766.P17026843034961098312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A085383 (n + 1))

end

end A010766.P17026843034961098312

namespace A010766

/-- `floor(sqrt(A085383(n+1)))` -/
def P17026843034961098312.Spec : Prop :=
  ∀ n, P17026843034961098312.a n = A010766 (n + 1)

end A010766

/-! ## A010766.P4776197882517518784

`ceil(ratio[A029656(n+1)])`
-/

namespace A010766.P4776197882517518784
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029656 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(f1 (n + 1) : ℚ) / (f1 n : ℚ)⌉

end

end A010766.P4776197882517518784

namespace A010766

/-- `ceil(ratio[A029656(n+1)])` -/
def P4776197882517518784.Spec : Prop :=
  ∀ n, P4776197882517518784.a n = A010766 (n + 1)

end A010766

/-! ## A010766.P814125615186634419

`A358877(n+1)^(1/3)`
-/

namespace A010766.P814125615186634419
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A358877 (n + 1) : ℝ) ^ ((1 : ℚ) / 3 : ℝ)

end

end A010766.P814125615186634419

namespace A010766

/-- `A358877(n+1)^(1/3)` -/
def P814125615186634419.Spec : Prop :=
  ∀ n, P814125615186634419.a n = (A010766 (n + 1) : ℝ)

end A010766

/-! ## A010766.P3697096389263897123

`A010783(A038722(n+1))`
-/

namespace A010766.P3697096389263897123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010783 (A038722 (n + 1)).toNat

end

end A010766.P3697096389263897123

namespace A010766

/-- `A010783(A038722(n+1))` -/
def P3697096389263897123.Spec : Prop :=
  ∀ n, P3697096389263897123.a n = A010766 (n + 1)

end A010766

/-! ## A010766.P9830773317194202633

`A010783(A061579(n)+1)`
-/

namespace A010766.P9830773317194202633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010783 (A061579 n + 1).toNat

end

end A010766.P9830773317194202633

namespace A010766

/-- `A010783(A061579(n)+1)` -/
def P9830773317194202633.Spec : Prop :=
  ∀ n, P9830773317194202633.a n = A010766 (n + 1)

end A010766

/-! ## A010766.P13351142506661975719

`A002260(A128489(n+1))`
-/

namespace A010766.P13351142506661975719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (A128489 (n + 1)).toNat

end

end A010766.P13351142506661975719

namespace A010766

/-- `A002260(A128489(n+1))` -/
def P13351142506661975719.Spec : Prop :=
  ∀ n, P13351142506661975719.a n = A010766 (n + 1)

end A010766

/-! ## A010766.P7653780437288576223

`A004736(A286235(n+1))`
-/

namespace A010766.P7653780437288576223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (A286235 (n + 1)).toNat

end

end A010766.P7653780437288576223

namespace A010766

/-- `A004736(A286235(n+1))` -/
def P7653780437288576223.Spec : Prop :=
  ∀ n, P7653780437288576223.a n = A010766 (n + 1)

end A010766

/-! ## A010766.P2047600254341204039

`A004736(A286245(n+1))`
-/

namespace A010766.P2047600254341204039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (A286245 (n + 1)).toNat

end

end A010766.P2047600254341204039

namespace A010766

/-- `A004736(A286245(n+1))` -/
def P2047600254341204039.Spec : Prop :=
  ∀ n, P2047600254341204039.a n = A010766 (n + 1)

end A010766

/-! ## A010766.P13983924900505643034

`A397991(n)-A025581(n)`
-/

namespace A010766.P13983924900505643034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A397991 n - A025581 n

end

end A010766.P13983924900505643034

namespace A010766

/-- `A397991(n)-A025581(n)` -/
def P13983924900505643034.Spec : Prop :=
  ∀ n, P13983924900505643034.a n = A010766 (n + 1)

theorem P13983924900505643034.correct : P13983924900505643034.Spec := by
  intro n
  simp only [A010766, Nat.add_sub_cancel, A010766.P13983924900505643034.a, A010766.P13358049683493517902.f1, A010766.P13358049683493517902.a, A025581, A025581.P16112744757063613497.a, A074909, A074909.P6402560185863182536.a, A397991, A397991.P6089644370162683677.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A010766

/-! ## A010766.P6118487395613000964

`A038567(A130313(n+1)-1)`
-/

namespace A010766.P6118487395613000964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038567 (A130313 (n + 1) - 1).toNat

end

end A010766.P6118487395613000964

namespace A010766

/-- `A038567(A130313(n+1)-1)` -/
def P6118487395613000964.Spec : Prop :=
  ∀ n, P6118487395613000964.a n = A010766 (n + 1)

end A010766

/-! ## A010766.P3772187464123748987

`gcd(A000038(n), A174557(n+1))`
-/

namespace A010766.P3772187464123748987
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A174557 (n + 1))

end

end A010766.P3772187464123748987

namespace A010766

/-- `gcd(A000038(n), A174557(n+1))` -/
def P3772187464123748987.Spec : Prop :=
  ∀ n, (P3772187464123748987.a n : ℤ) = A010766 (n + 1)

end A010766

/-! ## A010766.P5787831454830651198

`gcd(A072784(n), A204143(n+1))`
-/

namespace A010766.P5787831454830651198
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A072784 n) (A204143 (n + 1))

end

end A010766.P5787831454830651198

namespace A010766

/-- `gcd(A072784(n), A204143(n+1))` -/
def P5787831454830651198.Spec : Prop :=
  ∀ n, (P5787831454830651198.a n : ℤ) = A010766 (n + 1)

end A010766

/-! ## A010766.P9973371979048472427

`lcm(A020985(n), A174557(n+1))`
-/

namespace A010766.P9973371979048472427
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A020985 n) (A174557 (n + 1))

end

end A010766.P9973371979048472427

namespace A010766

/-- `lcm(A020985(n), A174557(n+1))` -/
def P9973371979048472427.Spec : Prop :=
  ∀ n, (P9973371979048472427.a n : ℤ) = A010766 (n + 1)

end A010766

/-!
# A010767: Decimal expansion of 4th root of 2.

The programs for A010767, there is no canonical definition to state claims against.
-/

/-! ## A010767.P10290050800164318468

`A098367(∑[n])`
-/

namespace A010767.P10290050800164318468
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098367 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A010767.P10290050800164318468

/-! ## A010767.P17674910589302626288

`dr(A098367(A000217(n)))`
-/

namespace A010767.P17674910589302626288
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A098367 (A000217 n).toNat)

end

end A010767.P17674910589302626288

/-! ## A010767.P4165230882623418150

`dr(A098367(A179865(n+1)))`
-/

namespace A010767.P4165230882623418150
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A098367 (A179865 (n + 1)).toNat)

end

end A010767.P4165230882623418150

/-! ## A010767.P16528609770630051258

`dr(A098367(A098358(C(n, 2))))`
-/

namespace A010767.P16528609770630051258
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A098367 (A098358 (Nat.choose n 2)).toNat)

end

end A010767.P16528609770630051258

/-! ## A010767.P2565161644376780368

`A054054(A098367(C(n+1, 2)))`
-/

namespace A010767.P2565161644376780368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054054 (A098367 (Nat.choose (n + 1) 2)).toNat

end

end A010767.P2565161644376780368

/-! ## A010767.P14294722171756750633

`A098367(A000217(n))%A002755(n)`
-/

namespace A010767.P14294722171756750633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A098367 (A000217 n).toNat) (A002755 n)

end

end A010767.P14294722171756750633

/-! ## A010767.P11650924301004254143

`gcd(A000038(n), A098367(A000217(n)))`
-/

namespace A010767.P11650924301004254143
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A098367 (A000217 n).toNat)

end

end A010767.P11650924301004254143

/-! ## A010767.P2453352688893856427

`lcm(A087960(n), A098367(A000217(n)))`
-/

namespace A010767.P2453352688893856427
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A087960 n) (A098367 (A000217 n).toNat)

end

end A010767.P2453352688893856427

/-! ## A010767.P15769026225948299107

`or(A000007(n), A098367(A000217(n)))`
-/

namespace A010767.P15769026225948299107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A098367 (A000217 n).toNat)

end

end A010767.P15769026225948299107

/-! ## A010767.P12902095185998335454

`and(A000225(n+2), A098367(A000217(n)))`
-/

namespace A010767.P12902095185998335454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A000225 (n + 2)) (A098367 (A000217 n).toNat)

end

end A010767.P12902095185998335454

/-! ## A010767.P10380737281546220707

`A098367(A000096(n))%10`
-/

namespace A010767.P10380737281546220707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A098367 (A000096 n).toNat) 10

end

end A010767.P10380737281546220707

/-! ## A010767.P18416798818292288895

`lcm(A033999(n), A098367(A000096(n)))`
-/

namespace A010767.P18416798818292288895
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A098367 (A000096 n).toNat)

end

end A010767.P18416798818292288895

/-! ## A010767.P12256620620560345014

`A098367(A155212(n)+4)/9`
-/

namespace A010767.P12256620620560345014
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A098367 (A155212 n + 4).toNat : ℚ) / 9

end

end A010767.P12256620620560345014

/-!
# A010783: Triangle of numbers floor(n/(n-k)).

The programs for A010783, the canonical program `A010783.P12753590747771486457` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A010783 has offset 1).

The definition of A010783 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A010783.P17088727811675523980

`1+floor(col(n)/(row(n)-col(n)+1))`
-/

namespace A010783.P17088727811675523980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 + ⌊(SequenceMachineLib.triCol n : ℚ) / ((SequenceMachineLib.triRow n : ℤ) - (SequenceMachineLib.triCol n : ℤ) + 1 : ℚ)⌋

end

end A010783.P17088727811675523980

namespace A010783

/-- `1+floor(col(n)/(row(n)-col(n)+1))` -/
def P17088727811675523980.Spec : Prop :=
  ∀ n, P17088727811675523980.a n = A010783 (n + 1)

end A010783

/-! ## A010783.P9908969937759240520

`ceil((col(n)+1)/(row(n)+1-col(n)))`
-/

namespace A010783.P9908969937759240520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(SequenceMachineLib.triCol n + 1 : ℚ) / ((SequenceMachineLib.triRow n + 1 : ℤ) - (SequenceMachineLib.triCol n : ℤ) : ℚ)⌉

end

end A010783.P9908969937759240520

namespace A010783

/-- `ceil((col(n)+1)/(row(n)+1-col(n)))` -/
def P9908969937759240520.Spec : Prop :=
  ∀ n, P9908969937759240520.a n = A010783 (n + 1)

end A010783

/-! ## A010783.P8507950212388819412

`A004736(A286234(n+1))`
-/

namespace A010783.P8507950212388819412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (A286234 (n + 1)).toNat

end

end A010783.P8507950212388819412

namespace A010783

/-- `A004736(A286234(n+1))` -/
def P8507950212388819412.Spec : Prop :=
  ∀ n, P8507950212388819412.a n = A010783 (n + 1)

end A010783

/-! ## A010783.P5273708035543793728

`A004736(A286244(n+1))`
-/

namespace A010783.P5273708035543793728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (A286244 (n + 1)).toNat

end

end A010783.P5273708035543793728

namespace A010783

/-- `A004736(A286244(n+1))` -/
def P5273708035543793728.Spec : Prop :=
  ∀ n, P5273708035543793728.a n = A010783 (n + 1)

end A010783

/-! ## A010783.P12187771844368143286

`A025581(A286159(n+1))`
-/

namespace A010783.P12187771844368143286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 (A286159 (n + 1)).toNat

end

end A010783.P12187771844368143286

namespace A010783

/-- `A025581(A286159(n+1))` -/
def P12187771844368143286.Spec : Prop :=
  ∀ n, P12187771844368143286.a n = A010783 (n + 1)

end A010783

/-! ## A010783.P8053660055486789877

`A193739(A286156(n+1))`
-/

namespace A010783.P8053660055486789877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193739 (A286156 (n + 1)).toNat

end

end A010783.P8053660055486789877

namespace A010783

/-- `A193739(A286156(n+1))` -/
def P8053660055486789877.Spec : Prop :=
  ∀ n, P8053660055486789877.a n = A010783 (n + 1)

end A010783

/-! ## A010783.P17405751308905798002

`floor(A074909(n)/A007318(n))`
-/

namespace A010783.P17405751308905798002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A074909 n : ℚ) / (A007318 n : ℚ)⌋

end

end A010783.P17405751308905798002

namespace A010783

/-- `floor(A074909(n)/A007318(n))` -/
def P17405751308905798002.Spec : Prop :=
  ∀ n, P17405751308905798002.a n = A010783 (n + 1)

end A010783

/-! ## A010783.P4733942480524662520

`A004736(A286159(n+1)+2)`
-/

namespace A010783.P4733942480524662520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (A286159 (n + 1) + 2).toNat

end

end A010783.P4733942480524662520

namespace A010783

/-- `A004736(A286159(n+1)+2)` -/
def P4733942480524662520.Spec : Prop :=
  ∀ n, P4733942480524662520.a n = A010783 (n + 1)

end A010783

/-! ## A010783.P2172816632645437081

`A130303(A286159(n+1)+2)`
-/

namespace A010783.P2172816632645437081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130303 (A286159 (n + 1) + 2).toNat

end

end A010783.P2172816632645437081

namespace A010783

/-- `A130303(A286159(n+1)+2)` -/
def P2172816632645437081.Spec : Prop :=
  ∀ n, P2172816632645437081.a n = A010783 (n + 1)

end A010783

/-! ## A010783.P7583303421431287018

`ceil(A074909(n)/A074909(n+1))`
-/

namespace A010783.P7583303421431287018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A074909 n : ℚ) / (A074909 (n + 1) : ℚ)⌉

end

end A010783.P7583303421431287018

namespace A010783

/-- `ceil(A074909(n)/A074909(n+1))` -/
def P7583303421431287018.Spec : Prop :=
  ∀ n, P7583303421431287018.a n = A010783 (n + 1)

end A010783

/-! ## A010783.P8741992904676693097

`A204143(n+1)/A010766(n+1)`
-/

namespace A010783.P8741992904676693097
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A204143 (n + 1) : ℚ) / (A010766 (n + 1) : ℚ)

end

end A010783.P8741992904676693097

namespace A010783

/-- `A204143(n+1)/A010766(n+1)` -/
def P8741992904676693097.Spec : Prop :=
  ∀ n, P8741992904676693097.a n = (A010783 (n + 1) : ℚ)

end A010783

/-! ## A010783.P12753590747771486457

`floor(A002024(n+1)/A004736(n+1))`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A010783

/-- `floor(A002024(n+1)/A004736(n+1))` -/
def P12753590747771486457.Spec : Prop :=
  ∀ n, P12753590747771486457.a n = A010783 (n + 1)

theorem P12753590747771486457.correct : P12753590747771486457.Spec := by
  intro n
  simp only [A010783, Nat.add_sub_cancel]

end A010783

/-! ## A010783.P10680023374499409652

`floor(A002262(n)/A004736(n+1))+1`
-/

namespace A010783.P10680023374499409652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A002262 n : ℚ) / (A004736 (n + 1) : ℚ)⌋ + 1

end

end A010783.P10680023374499409652

namespace A010783

/-- `floor(A002262(n)/A004736(n+1))+1` -/
def P10680023374499409652.Spec : Prop :=
  ∀ n, P10680023374499409652.a n = A010783 (n + 1)

end A010783

/-! ## A010783.P10542929649505366730

`floor((A003056(n)+1)/A004736(n+1))`
-/

namespace A010783.P10542929649505366730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A003056 n + 1 : ℚ) / (A004736 (n + 1) : ℚ)⌋

end

end A010783.P10542929649505366730

namespace A010783

/-- `floor((A003056(n)+1)/A004736(n+1))` -/
def P10542929649505366730.Spec : Prop :=
  ∀ n, P10542929649505366730.a n = A010783 (n + 1)

end A010783

/-! ## A010783.P8498869247035213775

`ceil(A002260(n+1)/A004736(n+1))`
-/

namespace A010783.P8498869247035213775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A002260 (n + 1) : ℚ) / (A004736 (n + 1) : ℚ)⌉

end

end A010783.P8498869247035213775

namespace A010783

/-- `ceil(A002260(n+1)/A004736(n+1))` -/
def P8498869247035213775.Spec : Prop :=
  ∀ n, P8498869247035213775.a n = A010783 (n + 1)

end A010783

/-! ## A010783.P7264120012125750619

`ceil(A002260(n+1)/(A025581(n)+1))`
-/

namespace A010783.P7264120012125750619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A002260 (n + 1) : ℚ) / (A025581 n + 1 : ℚ)⌉

end

end A010783.P7264120012125750619

namespace A010783

/-- `ceil(A002260(n+1)/(A025581(n)+1))` -/
def P7264120012125750619.Spec : Prop :=
  ∀ n, P7264120012125750619.a n = A010783 (n + 1)

end A010783

/-! ## A010783.P10186178684117565201

`A204143(n+1)+2-A050206(n+2)`
-/

namespace A010783.P10186178684117565201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204143 (n + 1) + (2 - A050206 (n + 2))

end

end A010783.P10186178684117565201

namespace A010783

/-- `A204143(n+1)+2-A050206(n+2)` -/
def P10186178684117565201.Spec : Prop :=
  ∀ n, P10186178684117565201.a n = A010783 (n + 1)

end A010783

/-! ## A010783.P14114492691310685821

`floor(A007318(A007401(n+1))/A007318(n))`
-/

namespace A010783.P14114492691310685821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A007318 (A007401 (n + 1)).toNat : ℚ) / (A007318 n : ℚ)⌋

end

end A010783.P14114492691310685821

namespace A010783

/-- `floor(A007318(A007401(n+1))/A007318(n))` -/
def P14114492691310685821.Spec : Prop :=
  ∀ n, P14114492691310685821.a n = A010783 (n + 1)

end A010783

/-! ## A010783.P10361592889816137594

`A204143(n+1)/gcd(A072784(n), A204143(n+1))`
-/

namespace A010783.P10361592889816137594
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A204143 (n + 1) : ℚ) / (Int.gcd (A072784 n) (A204143 (n + 1)) : ℚ)

end

end A010783.P10361592889816137594

namespace A010783

/-- `A204143(n+1)/gcd(A072784(n), A204143(n+1))` -/
def P10361592889816137594.Spec : Prop :=
  ∀ n, P10361592889816137594.a n = (A010783 (n + 1) : ℚ)

end A010783

/-! ## A010783.P12618372474347781840

`floor(A002024(n+1)/(A002024(n+1)-A002262(n)))`
-/

namespace A010783.P12618372474347781840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A002024 (n + 1) : ℚ) / (A002024 (n + 1) - A002262 n : ℚ)⌋

end

end A010783.P12618372474347781840

namespace A010783

/-- `floor(A002024(n+1)/(A002024(n+1)-A002262(n)))` -/
def P12618372474347781840.Spec : Prop :=
  ∀ n, P12618372474347781840.a n = A010783 (n + 1)

end A010783

/-!
# A010784: Numbers with distinct decimal digits.

The programs for A010784, the canonical program `A010784.P2044816568036423859` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A010784 has offset 1).

The definition of A010784 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5275 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A010784.P17727840989178635526

`record[A137564(n)]`
-/

namespace A010784.P17727840989178635526
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137564 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A010784.P17727840989178635526

namespace A010784

/-- `record[A137564(n)]` -/
def P17727840989178635526.Spec : Prop :=
  ∀ n, P17727840989178635526.a n = A010784 (n + 1)

end A010784

/-! ## A010784.P10052681649100612895

`record[A320485(n)]`
-/

namespace A010784.P10052681649100612895
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320485 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A010784.P10052681649100612895

namespace A010784

/-- `record[A320485(n)]` -/
def P10052681649100612895.Spec : Prop :=
  ∀ n, P10052681649100612895.a n = A010784 (n + 1)

end A010784

/-! ## A010784.P2044816568036423859

`record[A320486(n)]`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A010784

/-- `record[A320486(n)]` -/
def P2044816568036423859.Spec : Prop :=
  ∀ n, P2044816568036423859.a n = A010784 (n + 1)

theorem P2044816568036423859.correct : P2044816568036423859.Spec := by
  intro n
  simp only [A010784, Nat.add_sub_cancel]

end A010784

/-! ## A010784.P12950046870766997979

`eq[0, A107846(n)]`
-/

namespace A010784.P12950046870766997979
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107846 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A010784.P12950046870766997979

namespace A010784

/-- `eq[0, A107846(n)]` -/
def P12950046870766997979.Spec : Prop :=
  ∀ n, (P12950046870766997979.a n : ℤ) = A010784 (n + 1)

end A010784

/-! ## A010784.P15701372755793654313

`lt[0, A178788(n)]`
-/

namespace A010784.P15701372755793654313
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178788 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A010784.P15701372755793654313

namespace A010784

/-- `lt[0, A178788(n)]` -/
def P15701372755793654313.Spec : Prop :=
  ∀ n, (P15701372755793654313.a n : ℤ) = A010784 (n + 1)

end A010784

/-! ## A010784.P5699035429009427335

`lt[A321800(n), 0]`
-/

namespace A010784.P5699035429009427335
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321800 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A010784.P5699035429009427335

namespace A010784

/-- `lt[A321800(n), 0]` -/
def P5699035429009427335.Spec : Prop :=
  ∀ n, (P5699035429009427335.a n : ℤ) = A010784 (n + 1)

end A010784

/-! ## A010784.P14906455237750959131

`lt[A332550(n), 10]`
-/

namespace A010784.P14906455237750959131
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332550 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A010784.P14906455237750959131

namespace A010784

/-- `lt[A332550(n), 10]` -/
def P14906455237750959131.Spec : Prop :=
  ∀ n, (P14906455237750959131.a n : ℤ) = A010784 (n + 1)

end A010784

/-! ## A010784.P14564612819978789793

`A137564(eq[n, A137564(n)])`
-/

namespace A010784.P14564612819978789793
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137564 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137564 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A010784.P14564612819978789793

namespace A010784

/-- `A137564(eq[n, A137564(n)])` -/
def P14564612819978789793.Spec : Prop :=
  ∀ n, P14564612819978789793.a n = A010784 (n + 1)

end A010784

/-! ## A010784.P14018634428863930399

`A320486(eq[n, A320486(n)])`
-/

namespace A010784.P14018634428863930399
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320486 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320486 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A010784.P14018634428863930399

namespace A010784

/-- `A320486(eq[n, A320486(n)])` -/
def P14018634428863930399.Spec : Prop :=
  ∀ n, P14018634428863930399.a n = A010784 (n + 1)

end A010784

/-! ## A010784.P508880223779559486

`filter[A043096(n+1), A178788(#)]`
-/

namespace A010784.P508880223779559486
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043096 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A178788 (f1 j).toNat = 1) n)

end

end A010784.P508880223779559486

namespace A010784

/-- `filter[A043096(n+1), A178788(#)]` -/
def P508880223779559486.Spec : Prop :=
  ∀ n, P508880223779559486.a n = A010784 (n + 1)

end A010784

/-! ## A010784.P10826550128736002742

`filter[A241157(n+1), A178788(#)]`
-/

namespace A010784.P10826550128736002742
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241157 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A178788 (f1 j).toNat = 1) n)

end

end A010784.P10826550128736002742

namespace A010784

/-- `filter[A241157(n+1), A178788(#)]` -/
def P10826550128736002742.Spec : Prop :=
  ∀ n, P10826550128736002742.a n = A010784 (n + 1)

end A010784

/-! ## A010784.P9899890298114187311

`filter[A241158(n+1), A178788(#)]`
-/

namespace A010784.P9899890298114187311
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241158 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A178788 (f1 j).toNat = 1) n)

end

end A010784.P9899890298114187311

namespace A010784

/-- `filter[A241158(n+1), A178788(#)]` -/
def P9899890298114187311.Spec : Prop :=
  ∀ n, P9899890298114187311.a n = A010784 (n + 1)

end A010784

/-! ## A010784.P11748922920569150329

`record[n-A001006(n)*A107846(n)]`
-/

namespace A010784.P11748922920569150329
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A001006 n * A107846 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A010784.P11748922920569150329

namespace A010784

/-- `record[n-A001006(n)*A107846(n)]` -/
def P11748922920569150329.Spec : Prop :=
  ∀ n, P11748922920569150329.a n = A010784 (n + 1)

end A010784

/-!
# A010785: Repdigit numbers, or numbers whose digits are all equal.

The programs for A010785, the canonical program `A010785.P6052333875447302729` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A010785 has offset 0).

The definition of A010785 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A010785.P6052333875447302729

`(n-9*floor((n-1)/9))*(10^floor((n+8)/9)-1)/9`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A010785

/-- `(n-9*floor((n-1)/9))*(10^floor((n+8)/9)-1)/9` -/
def P6052333875447302729.Spec : Prop :=
  ∀ n, P6052333875447302729.a n = (A010785 n : ℚ)

end A010785

/-! ## A010785.P9855133892112935169

`∑[A027828(n)]-A027828(n)`
-/

namespace A010785.P9855133892112935169
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027828 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A027828 n

end

end A010785.P9855133892112935169

namespace A010785

/-- `∑[A027828(n)]-A027828(n)` -/
def P9855133892112935169.Spec : Prop :=
  ∀ n, P9855133892112935169.a n = A010785 n

end A010785

/-! ## A010785.P598284392701215295

`Δ[A277209(A000007(n)-1+n)]`
-/

namespace A010785.P598284392701215295
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277209 (A000007 n - 1 + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A010785.P598284392701215295

namespace A010785

/-- `Δ[A277209(A000007(n)-1+n)]` -/
def P598284392701215295.Spec : Prop :=
  ∀ n, P598284392701215295.a n = A010785 n

end A010785

/-! ## A010785.P15522425623952593923

`floor(A051885(n+8)/9)`
-/

namespace A010785.P15522425623952593923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A051885 (n + 8) : ℚ) / 9⌋

end

end A010785.P15522425623952593923

namespace A010785

/-- `floor(A051885(n+8)/9)` -/
def P15522425623952593923.Spec : Prop :=
  ∀ n, P15522425623952593923.a n = A010785 n

end A010785

/-! ## A010785.P9892218197660162645

`record[floor(A205960(n+1)/9)]`
-/

namespace A010785.P9892218197660162645
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A205960 (n + 1) : ℚ) / 9⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A010785.P9892218197660162645

namespace A010785

/-- `record[floor(A205960(n+1)/9)]` -/
def P9892218197660162645.Spec : Prop :=
  ∀ n, P9892218197660162645.a n = A010785 n

end A010785

/-! ## A010785.P10868298075489658102

`A277209(n+1)-(A277209(n)+A027828(n))`
-/

namespace A010785.P10868298075489658102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277209 (n + 1) - (A277209 n + A027828 n)

end

end A010785.P10868298075489658102

namespace A010785

/-- `A277209(n+1)-(A277209(n)+A027828(n))` -/
def P10868298075489658102.Spec : Prop :=
  ∀ n, P10868298075489658102.a n = A010785 n

end A010785

/-! ## A010785.P10684293899647133575

`∩[A336668(n+1), A064222(n)]`
-/

namespace A010785.P10684293899647133575
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336668 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064222 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A010785.P10684293899647133575

namespace A010785

/-- `∩[A336668(n+1), A064222(n)]` -/
def P10684293899647133575.Spec : Prop :=
  ∀ n, (P10684293899647133575.a n : ℤ) = A010785 n

end A010785

/-! ## A010785.P6133182974039272831

`A277209(n)-A277209(log2(A011782(n)))`
-/

namespace A010785.P6133182974039272831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277209 n - A277209 (SequenceMachineLib.roundAway (Real.logb 2 (A011782 n : ℝ))).toNat

end

end A010785.P6133182974039272831

namespace A010785

/-- `A277209(n)-A277209(log2(A011782(n)))` -/
def P6133182974039272831.Spec : Prop :=
  ∀ n, P6133182974039272831.a n = A010785 n

end A010785

/-! ## A010785.P18224884726515484319

`Δ[A277209(log2(A011782(n)))]`
-/

namespace A010785.P18224884726515484319
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277209 (SequenceMachineLib.roundAway (Real.logb 2 (A011782 n : ℝ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A010785.P18224884726515484319

namespace A010785

/-- `Δ[A277209(log2(A011782(n)))]` -/
def P18224884726515484319.Spec : Prop :=
  ∀ n, P18224884726515484319.a n = A010785 n

end A010785

/-! ## A010785.P17944726367523455658

`∩[A385298(n+1), A064222(n)]`
-/

namespace A010785.P17944726367523455658
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385298 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064222 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A010785.P17944726367523455658

namespace A010785

/-- `∩[A385298(n+1), A064222(n)]` -/
def P17944726367523455658.Spec : Prop :=
  ∀ n, (P17944726367523455658.a n : ℤ) = A010785 n

end A010785

/-! ## A010785.P6478605298193070037

`∩[A385297(n+1), A064222(n)]`
-/

namespace A010785.P6478605298193070037
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385297 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064222 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A010785.P6478605298193070037

namespace A010785

/-- `∩[A385297(n+1), A064222(n)]` -/
def P6478605298193070037.Spec : Prop :=
  ∀ n, (P6478605298193070037.a n : ℤ) = A010785 n

end A010785

/-! ## A010785.P10132373840405431287

`∩[A385297(n+1), A385298(n+1)]`
-/

namespace A010785.P10132373840405431287
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385297 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385298 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A010785.P10132373840405431287

namespace A010785

/-- `∩[A385297(n+1), A385298(n+1)]` -/
def P10132373840405431287.Spec : Prop :=
  ∀ n, (P10132373840405431287.a n : ℤ) = A010785 n

end A010785

/-! ## A010785.P413677778724831726

`∩[A257054(n+1), A385298(n+1)]`
-/

namespace A010785.P413677778724831726
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257054 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385298 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A010785.P413677778724831726

namespace A010785

/-- `∩[A257054(n+1), A385298(n+1)]` -/
def P413677778724831726.Spec : Prop :=
  ∀ n, (P413677778724831726.a n : ℤ) = A010785 n

end A010785

/-! ## A010785.P8033327704159863782

`∩[A064222(n), A385294(n+1)]`
-/

namespace A010785.P8033327704159863782
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064222 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385294 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A010785.P8033327704159863782

namespace A010785

/-- `∩[A064222(n), A385294(n+1)]` -/
def P8033327704159863782.Spec : Prop :=
  ∀ n, (P8033327704159863782.a n : ℤ) = A010785 n

end A010785

/-! ## A010785.P1878193857054268667

`∩[A064222(n), A385295(n+1)]`
-/

namespace A010785.P1878193857054268667
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064222 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385295 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A010785.P1878193857054268667

namespace A010785

/-- `∩[A064222(n), A385295(n+1)]` -/
def P1878193857054268667.Spec : Prop :=
  ∀ n, (P1878193857054268667.a n : ℤ) = A010785 n

end A010785

/-! ## A010785.P14232454488538054555

`∩[A064222(n), A385296(n+1)]`
-/

namespace A010785.P14232454488538054555
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064222 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385296 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A010785.P14232454488538054555

namespace A010785

/-- `∩[A064222(n), A385296(n+1)]` -/
def P14232454488538054555.Spec : Prop :=
  ∀ n, (P14232454488538054555.a n : ℤ) = A010785 n

end A010785

/-! ## A010785.P3261096795799480037

`∩[A385294(n+1), A385295(n+1)]`
-/

namespace A010785.P3261096795799480037
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385294 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385295 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A010785.P3261096795799480037

namespace A010785

/-- `∩[A385294(n+1), A385295(n+1)]` -/
def P3261096795799480037.Spec : Prop :=
  ∀ n, (P3261096795799480037.a n : ℤ) = A010785 n

end A010785

/-! ## A010785.P14150345142761227092

`∩[A385294(n+1), A385296(n+1)]`
-/

namespace A010785.P14150345142761227092
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385294 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385296 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A010785.P14150345142761227092

namespace A010785

/-- `∩[A385294(n+1), A385296(n+1)]` -/
def P14150345142761227092.Spec : Prop :=
  ∀ n, (P14150345142761227092.a n : ℤ) = A010785 n

end A010785

/-! ## A010785.P14356370143574417100

`∩[A385294(n+1), A385297(n+1)]`
-/

namespace A010785.P14356370143574417100
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385294 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385297 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A010785.P14356370143574417100

namespace A010785

/-- `∩[A385294(n+1), A385297(n+1)]` -/
def P14356370143574417100.Spec : Prop :=
  ∀ n, (P14356370143574417100.a n : ℤ) = A010785 n

end A010785

/-!
# A010786: Floor-factorial numbers: a(n) = Product_{k=1..n} floor(n/k).

The programs for A010786, there is no canonical definition to state claims against.
-/

/-! ## A010786.P5998047296448524478

`A076891(n+1)*A377484(n+1)`
-/

namespace A010786.P5998047296448524478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076891 (n + 1) * A377484 (n + 1)

end

end A010786.P5998047296448524478

/-! ## A010786.P10697586497006460948

`A072513(n+1)/A007956(n+1)*A076891(n+1)`
-/

namespace A010786.P10697586497006460948
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A072513 (n + 1) : ℚ) / (A007956 (n + 1) : ℚ) * (A076891 (n + 1) : ℚ)

end

end A010786.P10697586497006460948

/-! ## A010786.P6955787957029934216

`A003963(A001747(n+1)*A030038(n))`
-/

namespace A010786.P6955787957029934216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003963 (A001747 (n + 1) * A030038 n).toNat

end

end A010786.P6955787957029934216

/-! ## A010786.P14196246853392612714

`A052306(A346043(n))`
-/

namespace A010786.P14196246853392612714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052306 (A346043 n).toNat

end

end A010786.P14196246853392612714

/-! ## A010786.P8277726291531885963

`A327526(A336616(n))`
-/

namespace A010786.P8277726291531885963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327526 (A336616 n).toNat

end

end A010786.P8277726291531885963

/-!
# A010788: sin(log(cos(x)))=-1/2!*x^2-2/4!*x^4-1/6!*x^6+148/8!*x^8+...

The programs for A010788, there is no canonical definition to state claims against.
-/

/-! ## A010788.P9029937827742557722

`A001835(A208210(n))-(n+1)`
-/

namespace A010788.P9029937827742557722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001835 (A208210 n).toNat - (n + 1 : ℤ)

end

end A010788.P9029937827742557722

/-!
# A010790: a(n) = n!*(n+1)!.

The programs for A010790, the canonical program `A010790.P4807764122295510045` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A010790 has offset 0).

The definition of A010790 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n!*(n+1)!` (program `A010790.P4807764122295510045`, by `A010790.P4807764122295510045.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A010790.P12687051432945032159

`n!²*(n+1)`
-/

namespace A010790.P12687051432945032159
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial n ^ 2 * (n + 1)

end

end A010790.P12687051432945032159

namespace A010790

/-- `n!²*(n+1)` -/
def P12687051432945032159.Spec : Prop :=
  ∀ n, (P12687051432945032159.a n : ℤ) = A010790 n

theorem P12687051432945032159.correct : P12687051432945032159.Spec := by
  intro n
  simp only [A010790, Nat.add_sub_cancel, A010790.P12687051432945032159.a, A010790.P4807764122295510045.a, SequenceMachineLib.memo_apply]
  try norm_num [Nat.choose_two_right, Nat.factorial]
  try ring_nf

end A010790

/-! ## A010790.P4807764122295510045

`n!*(n+1)!`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A010790

/-- `n!*(n+1)!` -/
def P4807764122295510045.Spec : Prop :=
  ∀ n, (P4807764122295510045.a n : ℤ) = A010790 n

theorem P4807764122295510045.correct : P4807764122295510045.Spec := by
  intro n
  simp only [A010790]

end A010790

/-! ## A010790.P15664270529086601912

`n*(n+1)*a(n-1)` with `a(0)=1`
-/

namespace A010790.P15664270529086601912
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  n * (n + 1) * a (n - 1)

end

end A010790.P15664270529086601912

namespace A010790

/-- `n*(n+1)*a(n-1)` -/
def P15664270529086601912.Spec : Prop :=
  ∀ n, (P15664270529086601912.a n : ℤ) = A010790 n

end A010790

/-! ## A010790.P8149303176621006272

`(2*n)!/A000108(n)`
-/

namespace A010790.P8149303176621006272
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (2 * n) : ℚ) / (A000108 n : ℚ)

end

end A010790.P8149303176621006272

namespace A010790

/-- `(2*n)!/A000108(n)` -/
def P8149303176621006272.Spec : Prop :=
  ∀ n, P8149303176621006272.a n = (A010790 n : ℚ)

end A010790

/-! ## A010790.P3054540631806234229

`∏[n^ceil(atan(n))+n]`
-/

namespace A010790.P3054540631806234229
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) ^ (⌈Real.arctan (n : ℝ)⌉ : ℤ) + (n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A010790.P3054540631806234229

namespace A010790

/-- `∏[n^ceil(atan(n))+n]` -/
def P3054540631806234229.Spec : Prop :=
  ∀ n, P3054540631806234229.a n = (A010790 n : ℚ)

end A010790

/-!
# A010791: a(n) = n!*(n+2)!/2.

The programs for A010791, the canonical program `A010791.P8454839466693213343` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A010791 has offset 0).

The definition of A010791 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A010791.P8454839466693213343

`n!*(n+2)!/2`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A010791

/-- `n!*(n+2)!/2` -/
def P8454839466693213343.Spec : Prop :=
  ∀ n, P8454839466693213343.a n = (A010791 n : ℚ)

end A010791

/-! ## A010791.P45015170536276520

`A175430(n+1)/2`
-/

namespace A010791.P45015170536276520
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A175430 (n + 1) : ℚ) / 2

end

end A010791.P45015170536276520

namespace A010791

/-- `A175430(n+1)/2` -/
def P45015170536276520.Spec : Prop :=
  ∀ n, P45015170536276520.a n = (A010791 n : ℚ)

end A010791

/-! ## A010791.P8564283708709690196

`∏[record[abs(1-n²)]]`
-/

namespace A010791.P8564283708709690196
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - (n ^ 2 : ℤ)|

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A010791.P8564283708709690196

namespace A010791

/-- `∏[record[abs(1-n²)]]` -/
def P8564283708709690196.Spec : Prop :=
  ∀ n, P8564283708709690196.a n = A010791 n

end A010791

/-! ## A010791.P11789613345242009309

`n!²*∑[n+1]`
-/

namespace A010791.P11789613345242009309
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial n ^ 2 * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A010791.P11789613345242009309

namespace A010791

/-- `n!²*∑[n+1]` -/
def P11789613345242009309.Spec : Prop :=
  ∀ n, (P11789613345242009309.a n : ℤ) = A010791 n

end A010791

/-! ## A010791.P12871544088511657200

`∏[sqrt(record[(1-n²)²])]`
-/

namespace A010791.P12871544088511657200
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - (n ^ 2 : ℤ)) ^ 2

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n) : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A010791.P12871544088511657200

namespace A010791

/-- `∏[sqrt(record[(1-n²)²])]` -/
def P12871544088511657200.Spec : Prop :=
  ∀ n, P12871544088511657200.a n = (A010791 n : ℝ)

end A010791

/-!
# A010792: a(n) = n!*(n+3)! / 3!.

The programs for A010792, the canonical program `A010792.P7314219931264753528` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A010792 has offset 0).

The definition of A010792 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n!*(n+3)!/3!` (program `A010792.P1135772399308833390`, by `A010792.P1135772399308833390.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A010792.P7314219931264753528

`n!²*C(n+3, 3)`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A010792

/-- `n!²*C(n+3, 3)` -/
def P7314219931264753528.Spec : Prop :=
  ∀ n, (P7314219931264753528.a n : ℤ) = A010792 n

theorem P7314219931264753528.correct : P7314219931264753528.Spec := by
  intro n
  simp only [A010792]

end A010792

/-! ## A010792.P678018334315053689

`n!*(n+3)!/6`
-/

namespace A010792.P678018334315053689
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n * Nat.factorial (n + 3) : ℚ) / 6

end

end A010792.P678018334315053689

namespace A010792

/-- `n!*(n+3)!/6` -/
def P678018334315053689.Spec : Prop :=
  ∀ n, P678018334315053689.a n = (A010792 n : ℚ)

theorem P678018334315053689.correct : P678018334315053689.Spec := by
  intro n
  simp only [A010792, Nat.add_sub_cancel, A010792.P678018334315053689.a, A010792.P7314219931264753528.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A010792

/-! ## A010792.P1135772399308833390

`n!*(n+3)!/3!`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A010792.P1135772399308833390
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n * Nat.factorial (n + 3) : ℚ) / (Nat.factorial 3 : ℚ)

end

end A010792.P1135772399308833390

namespace A010792

/-- `n!*(n+3)!/3!` -/
def P1135772399308833390.Spec : Prop :=
  ∀ n, P1135772399308833390.a n = (A010792 n : ℚ)

theorem P1135772399308833390.correct : P1135772399308833390.Spec := by
  intro n
  simp only [A010792, Nat.add_sub_cancel, A010792.P1135772399308833390.a, A010792.P7314219931264753528.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A010792

/-! ## A010792.P17871576710006492541

`∏[record[abs(1-n²)]+n]`
-/

namespace A010792.P17871576710006492541
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - (n ^ 2 : ℤ)|

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A010792.P17871576710006492541

namespace A010792

/-- `∏[record[abs(1-n²)]+n]` -/
def P17871576710006492541.Spec : Prop :=
  ∀ n, P17871576710006492541.a n = A010792 n

end A010792

/-! ## A010792.P6217314317732214173

`n!²*∑[∑[n+1]]`
-/

namespace A010792.P6217314317732214173
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial n ^ 2 * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A010792.P6217314317732214173

namespace A010792

/-- `n!²*∑[∑[n+1]]` -/
def P6217314317732214173.Spec : Prop :=
  ∀ n, (P6217314317732214173.a n : ℤ) = A010792 n

end A010792

/-!
# A010793: a(n) = n!*(n+4)! / 4!.

The programs for A010793, the canonical program `A010793.P5152989651808652601` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A010793 has offset 0).

The definition of A010793 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n!*(n+4)!/4!` (program `A010793.P5876529770713386192`, by `A010793.P5876529770713386192.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A010793.P17561086681953837137

`n!*(n+4)!/24`
-/

namespace A010793.P17561086681953837137
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n * Nat.factorial (n + 4) : ℚ) / 24

end

end A010793.P17561086681953837137

namespace A010793

/-- `n!*(n+4)!/24` -/
def P17561086681953837137.Spec : Prop :=
  ∀ n, P17561086681953837137.a n = (A010793 n : ℚ)

theorem P17561086681953837137.correct : P17561086681953837137.Spec := by
  intro n
  simp only [A010793, Nat.add_sub_cancel, A010793.P17561086681953837137.a, A010793.P5152989651808652601.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A010793

/-! ## A010793.P5876529770713386192

`n!*(n+4)!/4!`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A010793.P5876529770713386192
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n * Nat.factorial (n + 4) : ℚ) / (Nat.factorial 4 : ℚ)

end

end A010793.P5876529770713386192

namespace A010793

/-- `n!*(n+4)!/4!` -/
def P5876529770713386192.Spec : Prop :=
  ∀ n, P5876529770713386192.a n = (A010793 n : ℚ)

theorem P5876529770713386192.correct : P5876529770713386192.Spec := by
  intro n
  simp only [A010793, Nat.add_sub_cancel, A010793.P5876529770713386192.a, A010793.P5152989651808652601.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A010793

/-! ## A010793.P5152989651808652601

`n!²*C(n+4, 4)`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A010793

/-- `n!²*C(n+4, 4)` -/
def P5152989651808652601.Spec : Prop :=
  ∀ n, (P5152989651808652601.a n : ℤ) = A010793 n

theorem P5152989651808652601.correct : P5152989651808652601.Spec := by
  intro n
  simp only [A010793]

end A010793

/-! ## A010793.P2508487677429030979

`n!²*∑[∑[∑[n+1]]]`
-/

namespace A010793.P2508487677429030979
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial n ^ 2 * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A010793.P2508487677429030979

namespace A010793

/-- `n!²*∑[∑[∑[n+1]]]` -/
def P2508487677429030979.Spec : Prop :=
  ∀ n, (P2508487677429030979.a n : ℤ) = A010793 n

end A010793

/-! ## A010793.P10931736927804479168

`∏[floor(acot(n))+n*(n+4)]`
-/

namespace A010793.P10931736927804479168
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊SequenceMachineLib.acot (n : ℝ)⌋ + (n * (n + 4) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A010793.P10931736927804479168

namespace A010793

/-- `∏[floor(acot(n))+n*(n+4)]` -/
def P10931736927804479168.Spec : Prop :=
  ∀ n, P10931736927804479168.a n = A010793 n

end A010793

/-!
# A010794: a(n) = n!*(n+5)!/5!.

The programs for A010794, the canonical program `A010794.P13535557501757810492` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A010794 has offset 0).

The definition of A010794 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n!*(n+5)!/5!` (program `A010794.P17011111959182512613`, by `A010794.P17011111959182512613.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A010794.P13535557501757810492

`n!²*C(n+5, 5)`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A010794

/-- `n!²*C(n+5, 5)` -/
def P13535557501757810492.Spec : Prop :=
  ∀ n, (P13535557501757810492.a n : ℤ) = A010794 n

theorem P13535557501757810492.correct : P13535557501757810492.Spec := by
  intro n
  simp only [A010794]

end A010794

/-! ## A010794.P17011111959182512613

`n!*(n+5)!/5!`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A010794.P17011111959182512613
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n * Nat.factorial (n + 5) : ℚ) / (Nat.factorial 5 : ℚ)

end

end A010794.P17011111959182512613

namespace A010794

/-- `n!*(n+5)!/5!` -/
def P17011111959182512613.Spec : Prop :=
  ∀ n, P17011111959182512613.a n = (A010794 n : ℚ)

theorem P17011111959182512613.correct : P17011111959182512613.Spec := by
  intro n
  simp only [A010794, Nat.add_sub_cancel, A010794.P17011111959182512613.a, A010794.P13535557501757810492.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A010794

/-! ## A010794.P15748772512224307569

`∏[n+5]/5*n!`
-/

namespace A010794.P15748772512224307569
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∏ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / 5 * (Nat.factorial n : ℚ)

end

end A010794.P15748772512224307569

namespace A010794

/-- `∏[n+5]/5*n!` -/
def P15748772512224307569.Spec : Prop :=
  ∀ n, P15748772512224307569.a n = (A010794 n : ℚ)

end A010794

/-! ## A010794.P3347881966501419288

`∏[floor(acot(n))+n*(n+5)]`
-/

namespace A010794.P3347881966501419288
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊SequenceMachineLib.acot (n : ℝ)⌋ + (n * (n + 5) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A010794.P3347881966501419288

namespace A010794

/-- `∏[floor(acot(n))+n*(n+5)]` -/
def P3347881966501419288.Spec : Prop :=
  ∀ n, P3347881966501419288.a n = A010794 n

end A010794

/-! ## A010794.P18029424258867457256

`a(n-1)*n*(n+5)` with `a(0)=1`
-/

namespace A010794.P18029424258867457256
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) * (n * (n + 5))

end

end A010794.P18029424258867457256

namespace A010794

/-- `a(n-1)*n*(n+5)` -/
def P18029424258867457256.Spec : Prop :=
  ∀ n, (P18029424258867457256.a n : ℤ) = A010794 n

end A010794

/-!
# A010795: a(n) = n!*(n+6)! / 6!.

The programs for A010795, the canonical program `A010795.P8170835877146456336` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A010795 has offset 0).

The definition of A010795 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n!*(n+6)!/6!` (program `A010795.P17976735933940079423`, by `A010795.P17976735933940079423.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A010795.P8170835877146456336

`n!²*C(n+6, 6)`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A010795

/-- `n!²*C(n+6, 6)` -/
def P8170835877146456336.Spec : Prop :=
  ∀ n, (P8170835877146456336.a n : ℤ) = A010795 n

theorem P8170835877146456336.correct : P8170835877146456336.Spec := by
  intro n
  simp only [A010795]

end A010795

/-! ## A010795.P17976735933940079423

`n!*(n+6)!/6!`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A010795.P17976735933940079423
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n * Nat.factorial (n + 6) : ℚ) / (Nat.factorial 6 : ℚ)

end

end A010795.P17976735933940079423

namespace A010795

/-- `n!*(n+6)!/6!` -/
def P17976735933940079423.Spec : Prop :=
  ∀ n, P17976735933940079423.a n = (A010795 n : ℚ)

theorem P17976735933940079423.correct : P17976735933940079423.Spec := by
  intro n
  simp only [A010795, Nat.add_sub_cancel, A010795.P17976735933940079423.a, A010795.P8170835877146456336.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A010795

/-! ## A010795.P9955707750895232397

`∏[n+6]/6*n!`
-/

namespace A010795.P9955707750895232397
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 6

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∏ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / 6 * (Nat.factorial n : ℚ)

end

end A010795.P9955707750895232397

namespace A010795

/-- `∏[n+6]/6*n!` -/
def P9955707750895232397.Spec : Prop :=
  ∀ n, P9955707750895232397.a n = (A010795 n : ℚ)

end A010795

/-! ## A010795.P8901201533918134673

`(n+6)*n*a(n-1)` with `a(0)=1`
-/

namespace A010795.P8901201533918134673
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  (n + 6) * (n * a (n - 1))

end

end A010795.P8901201533918134673

namespace A010795

/-- `(n+6)*n*a(n-1)` -/
def P8901201533918134673.Spec : Prop :=
  ∀ n, (P8901201533918134673.a n : ℤ) = A010795 n

end A010795

/-! ## A010795.P14089069301271853483

`∏[floor(2/acot(3*n))+n²]`
-/

namespace A010795.P14089069301271853483
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊2 / SequenceMachineLib.acot (3 * n : ℝ)⌋ + (n ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A010795.P14089069301271853483

namespace A010795

/-- `∏[floor(2/acot(3*n))+n²]` -/
def P14089069301271853483.Spec : Prop :=
  ∀ n, P14089069301271853483.a n = A010795 n

end A010795

/-!
# A010796: a(n) = n!*(n+1)!/2.

The programs for A010796, the canonical program `A010796.P10607233907006146607` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A010796 has offset 1).

The definition of A010796 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A010796.P13943312597177894271

`(n+1)!*(n+2)!/2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A010796.P13943312597177894271
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (n + 1) * Nat.factorial (n + 2) : ℚ) / 2

end

end A010796.P13943312597177894271

namespace A010796

/-- `(n+1)!*(n+2)!/2` -/
def P13943312597177894271.Spec : Prop :=
  ∀ n, P13943312597177894271.a n = (A010796 (n + 1) : ℚ)

end A010796

/-! ## A010796.P12220099402574559282

`A010790(n+1)/2`
-/

namespace A010796.P12220099402574559282
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A010790 (n + 1) : ℚ) / 2

end

end A010796.P12220099402574559282

namespace A010796

/-- `A010790(n+1)/2` -/
def P12220099402574559282.Spec : Prop :=
  ∀ n, P12220099402574559282.a n = (A010796 (n + 1) : ℚ)

end A010796

/-! ## A010796.P10607233907006146607

`2^n*A006472(n+2)`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A010796

/-- `2^n*A006472(n+2)` -/
def P10607233907006146607.Spec : Prop :=
  ∀ n, P10607233907006146607.a n = A010796 (n + 1)

theorem P10607233907006146607.correct : P10607233907006146607.Spec := by
  intro n
  simp only [A010796, Nat.add_sub_cancel]

end A010796

/-! ## A010796.P17434060311578341095

`∏[∑[2*(n+1)]]/2`
-/

namespace A010796.P17434060311578341095
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∏ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / 2

end

end A010796.P17434060311578341095

namespace A010796

/-- `∏[∑[2*(n+1)]]/2` -/
def P17434060311578341095.Spec : Prop :=
  ∀ n, P17434060311578341095.a n = (A010796 (n + 1) : ℚ)

end A010796

/-! ## A010796.P16686831073226534713

`2^n*∏[C(n+2, 2)]`
-/

namespace A010796.P16686831073226534713
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (n + 2) 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n * (∏ j ∈ Finset.range (n + 1), f1 j)

end

end A010796.P16686831073226534713

namespace A010796

/-- `2^n*∏[C(n+2, 2)]` -/
def P16686831073226534713.Spec : Prop :=
  ∀ n, (P16686831073226534713.a n : ℤ) = A010796 (n + 1)

end A010796

/-!
# A010797: a(n) = n! * (n+1)! * (n+2)! / (2! * 3!).

The programs for A010797, the canonical program `A010797.P796471856508605164` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A010797 has offset 1).

The definition of A010797 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A010797.P796471856508605164

`(n+1)!*(n+2)!*(n+3)!/(2!*3!)`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A010797

/-- `(n+1)!*(n+2)!*(n+3)!/(2!*3!)` -/
def P796471856508605164.Spec : Prop :=
  ∀ n, P796471856508605164.a n = (A010797 (n + 1) : ℚ)

end A010797

/-! ## A010797.P7879165859864512519

`∏[∑[∑[6*(n+1)]]]/6`
-/

namespace A010797.P7879165859864512519
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6 * (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∏ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / 6

end

end A010797.P7879165859864512519

namespace A010797

/-- `∏[∑[∑[6*(n+1)]]]/6` -/
def P7879165859864512519.Spec : Prop :=
  ∀ n, P7879165859864512519.a n = (A010797 (n + 1) : ℚ)

end A010797

/-! ## A010797.P15374335717172465301

`∏[record[and(-7, n!)]/n!]`
-/

namespace A010797.P15374335717172465301
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-7) (Nat.factorial n : ℤ)

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n) : ℚ) / (Nat.factorial n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A010797.P15374335717172465301

namespace A010797

/-- `∏[record[and(-7, n!)]/n!]` -/
def P15374335717172465301.Spec : Prop :=
  ∀ n, P15374335717172465301.a n = (A010797 (n + 1) : ℚ)

end A010797

/-! ## A010797.P3665230851641450144

`∏[record[or(6, n!)-6]/n!]`
-/

namespace A010797.P3665230851641450144
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.lor 6 (Nat.factorial n) : ℤ) - 6

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n) : ℚ) / (Nat.factorial n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A010797.P3665230851641450144

namespace A010797

/-- `∏[record[or(6, n!)-6]/n!]` -/
def P3665230851641450144.Spec : Prop :=
  ∀ n, P3665230851641450144.a n = (A010797 (n + 1) : ℚ)

end A010797

/-! ## A010797.P7067466347285048607

`∏[record[xor(6, n!)-6]/n!]`
-/

namespace A010797.P7067466347285048607
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.xor 6 (Nat.factorial n) : ℤ) - 6

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n) : ℚ) / (Nat.factorial n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A010797.P7067466347285048607

namespace A010797

/-- `∏[record[xor(6, n!)-6]/n!]` -/
def P7067466347285048607.Spec : Prop :=
  ∀ n, P7067466347285048607.a n = (A010797 (n + 1) : ℚ)

end A010797

/-!
# A010798: a(n) = n! * (n+1)! * (n+2)! * (n+3)! / (2! * 3! * 4!).

The programs for A010798, the canonical program `A010798.P15958350481502948618` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A010798 has offset 1).

The definition of A010798 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A010798.P15958350481502948618

`(n+1)!*(n+2)!*(n+3)!*(n+4)!/(2!*3!*4!)`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A010798

/-- `(n+1)!*(n+2)!*(n+3)!*(n+4)!/(2!*3!*4!)` -/
def P15958350481502948618.Spec : Prop :=
  ∀ n, P15958350481502948618.a n = (A010798 (n + 1) : ℚ)

end A010798

/-! ## A010798.P12701383409346840811

`n!*A105188(n)`
-/

namespace A010798.P12701383409346840811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) * A105188 n

end

end A010798.P12701383409346840811

namespace A010798

/-- `n!*A105188(n)` -/
def P12701383409346840811.Spec : Prop :=
  ∀ n, P12701383409346840811.a n = A010798 (n + 1)

end A010798

/-! ## A010798.P11924478738691783508

`A090444(n+1)/24`
-/

namespace A010798.P11924478738691783508
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A090444 (n + 1) : ℚ) / 24

end

end A010798.P11924478738691783508

namespace A010798

/-- `A090444(n+1)/24` -/
def P11924478738691783508.Spec : Prop :=
  ∀ n, P11924478738691783508.a n = (A010798 (n + 1) : ℚ)

end A010798

/-! ## A010798.P9028243203638539340

`a(n-1)*Δ[A158874(n)]` with `a(0)=1`
-/

namespace A010798.P9028243203638539340
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158874 n

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) * (f1 (n + 1) - f1 n)

end

end A010798.P9028243203638539340

namespace A010798

/-- `a(n-1)*Δ[A158874(n)]` -/
def P9028243203638539340.Spec : Prop :=
  ∀ n, P9028243203638539340.a n = A010798 (n + 1)

end A010798

/-! ## A010798.P18265343422629285213

`a(n-1)*A052762(n+4)` with `a(0)=1`
-/

namespace A010798.P18265343422629285213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) * A052762 (n + 4)

end

end A010798.P18265343422629285213

namespace A010798

/-- `a(n-1)*A052762(n+4)` -/
def P18265343422629285213.Spec : Prop :=
  ∀ n, P18265343422629285213.a n = A010798 (n + 1)

end A010798

/-!
# A010799: a(n) = n!*(n+1)!*(n+2)!*(n+3)!*(n+4)! / ( 2!*3!*4!*5! ).

The programs for A010799, there is no canonical definition to state claims against.
-/

/-! ## A010799.P12354762760394073952

`12*a(n-1)*A266732(n+1)` with `a(0)=1`
-/

namespace A010799.P12354762760394073952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  12 * a (n - 1) * A266732 (n + 1)

end

end A010799.P12354762760394073952

/-! ## A010799.P2531310854414643587

`A009963(A167499(n+4))`
-/

namespace A010799.P2531310854414643587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009963 (A167499 (n + 4)).toNat

end

end A010799.P2531310854414643587

/-! ## A010799.P11980637301833931625

`A009963(A052905(n+2)+10)`
-/

namespace A010799.P11980637301833931625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009963 (A052905 (n + 2) + 10).toNat

end

end A010799.P11980637301833931625

/-! ## A010799.P15290386606240145710

`A009963(eq[6, A002260(n+1)])`
-/

namespace A010799.P15290386606240145710
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009963 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A010799.P15290386606240145710

/-! ## A010799.P11956059947181471364

`A009963(A056000(n+1)+10+n)`
-/

namespace A010799.P11956059947181471364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009963 (A056000 (n + 1) + 10 + (n : ℤ)).toNat

end

end A010799.P11956059947181471364

