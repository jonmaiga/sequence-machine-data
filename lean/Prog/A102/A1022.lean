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
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C037
import Seq.B000.C038
import Seq.B000.C040
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C009
import Seq.B001.C010
import Seq.B001.C011
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C006
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
import Seq.B006.C000
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
import Seq.Opaque.C024
import SequenceMachineLib.Triangle

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A102200: Iccanobirt semiprimes (10 of 15): Semiprime numbers in A102120.

The programs for A102200, there is no canonical definition to state claims against.
-/

/-! ## A102200.P12514370718604974203

`A102120(A102180(n+1))`
-/

namespace A102200.P12514370718604974203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102120 (A102180 (n + 1)).toNat

end

end A102200.P12514370718604974203

/-!
# A102201: Iccanobirt semiprimes (11 of 15): Semiprime numbers in A102121.

The programs for A102201, there is no canonical definition to state claims against.
-/

/-! ## A102201.P13571773644143266538

`A102121(A102181(n+1))`
-/

namespace A102201.P13571773644143266538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102121 (A102181 (n + 1)).toNat

end

end A102201.P13571773644143266538

/-!
# A102202: Iccanobirt semiprimes (12 of 15): Semiprime numbers in A102122.

The programs for A102202, there is no canonical definition to state claims against.
-/

/-! ## A102202.P16381944288474258606

`A102122(A102182(n+1))`
-/

namespace A102202.P16381944288474258606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102122 (A102182 (n + 1)).toNat

end

end A102202.P16381944288474258606

/-!
# A102203: Iccanobirt semiprimes (13 of 15): Semiprime numbers in A102123.

The programs for A102203, there is no canonical definition to state claims against.
-/

/-! ## A102203.P4882283585134035074

`A102123(A102183(n+1))`
-/

namespace A102203.P4882283585134035074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102123 (A102183 (n + 1)).toNat

end

end A102203.P4882283585134035074

/-! ## A102203.P1517553290872695573

`A102123(eq[2, ∑{e}[A102123(n), #]])`
-/

namespace A102203.P1517553290872695573
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102123 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f3 n).natAbs, Nat.factorization (f3 n).natAbs p

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102123 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A102203.P1517553290872695573

/-! ## A102203.P3331343243620609485

`filter[A102123(n+2), A064911(#)]`
-/

namespace A102203.P3331343243620609485
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102123 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A064911 (f1 j).toNat = 1) n)

end

end A102203.P3331343243620609485

/-!
# A102204: Iccanobirt semiprimes (14 of 15): Semiprime numbers in A102124.

The programs for A102204, there is no canonical definition to state claims against.
-/

/-! ## A102204.P4796479686063917394

`A102124(A102184(n+1))`
-/

namespace A102204.P4796479686063917394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102124 (A102184 (n + 1)).toNat

end

end A102204.P4796479686063917394

/-!
# A102205: Iccanobirt semiprimes (15 of 15): Semiprime numbers in A102125.

The programs for A102205, there is no canonical definition to state claims against.
-/

/-! ## A102205.P4125611867813609726

`A102125(A102185(n+1))`
-/

namespace A102205.P4125611867813609726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102125 (A102185 (n + 1)).toNat

end

end A102205.P4125611867813609726

/-!
# A102206: a(0) = 3, a(1) = 8, a(n+2) = 4*a(n+1) - a(n) - 2.

The programs for A102206, the canonical program `A102206.P5618594336050092166` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A102206 has offset 0).

The definition of A102206 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A102206.P5618594336050092166

`4*a(n-1)-a(n-2)-2` with `a(0)=3, a(1)=8`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A102206

/-- `4*a(n-1)-a(n-2)-2` -/
def P5618594336050092166.Spec : Prop :=
  ∀ n, P5618594336050092166.a n = A102206 n

theorem P5618594336050092166.correct : P5618594336050092166.Spec := by
  intro n
  simp only [A102206]

end A102206

/-! ## A102206.P13309282705635599905

`A092184(n+1)+2`
-/

namespace A102206.P13309282705635599905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092184 (n + 1) + 2

end

end A102206.P13309282705635599905

namespace A102206

/-- `A092184(n+1)+2` -/
def P13309282705635599905.Spec : Prop :=
  ∀ n, P13309282705635599905.a n = A102206 n

end A102206

/-! ## A102206.P7155016969621744859

`∑[ogf((3-7x+2x^2)/(1-4x+x^2))]`
-/

namespace A102206.P7155016969621744859
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [3, -7, 2] [1, -4, 1] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A102206.P7155016969621744859

namespace A102206

/-- `∑[ogf((3-7x+2x^2)/(1-4x+x^2))]` -/
def P7155016969621744859.Spec : Prop :=
  ∀ n, P7155016969621744859.a n = A102206 n

end A102206

/-! ## A102206.P17100083451554042509

`ogf((3-7x+2x^2)/(1-5x+5x^2-x^3))`
-/

namespace A102206.P17100083451554042509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [3, -7, 2] [1, -5, 5, -1] n

end

end A102206.P17100083451554042509

namespace A102206

/-- `ogf((3-7x+2x^2)/(1-5x+5x^2-x^3))` -/
def P17100083451554042509.Spec : Prop :=
  ∀ n, P17100083451554042509.a n = A102206 n

end A102206

/-! ## A102206.P8359517479973328065

`∑[∑[ceil((sqrt(3)+2)^n)]]+2`
-/

namespace A102206.P8359517479973328065
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(Real.sqrt (3 : ℝ) + 2) ^ n⌉

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 2

end

end A102206.P8359517479973328065

namespace A102206

/-- `∑[∑[ceil((sqrt(3)+2)^n)]]+2` -/
def P8359517479973328065.Spec : Prop :=
  ∀ n, P8359517479973328065.a n = A102206 n

end A102206

/-! ## A102206.P244232304733810017

`∑[ceil((sqrt(3)+2)*a(n-1))]` with `a(0)=3, a(1)=5`
-/

namespace A102206.P244232304733810017
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [3, 5] fun n f1 =>
  ⌈(Real.sqrt (3 : ℝ) + 2) * (f1 (n - 1) : ℝ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A102206.P244232304733810017

namespace A102206

/-- `∑[ceil((sqrt(3)+2)*a(n-1))]` -/
def P244232304733810017.Spec : Prop :=
  ∀ n, P244232304733810017.a n = A102206 n

end A102206

/-! ## A102206.P16906626817203895270

`∑[-round(a(n-1)/(sqrt(3)-2))]` with `a(0)=3, a(1)=5`
-/

namespace A102206.P16906626817203895270
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [3, 5] fun n f1 =>
  -SequenceMachineLib.roundAway ((f1 (n - 1) : ℝ) / (Real.sqrt (3 : ℝ) - 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A102206.P16906626817203895270

namespace A102206

/-- `∑[-round(a(n-1)/(sqrt(3)-2))]` -/
def P16906626817203895270.Spec : Prop :=
  ∀ n, P16906626817203895270.a n = A102206 n

end A102206

/-! ## A102206.P1689690140550412762

`A121401(n+1)`
-/

namespace A102206.P1689690140550412762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121401 (n + 1)

end

end A102206.P1689690140550412762

namespace A102206

/-- `A121401(n+1)` -/
def P1689690140550412762.Spec : Prop :=
  ∀ n, P1689690140550412762.a n = A102206 n

end A102206

/-! ## A102206.P15687715007535764156

`Δ[A001571(n)+n]`
-/

namespace A102206.P15687715007535764156
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001571 n + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A102206.P15687715007535764156

namespace A102206

/-- `Δ[A001571(n)+n]` -/
def P15687715007535764156.Spec : Prop :=
  ∀ n, P15687715007535764156.a n = A102206 n

end A102206

/-! ## A102206.P14862869421435337577

`Δ[A082840(n)+n]`
-/

namespace A102206.P14862869421435337577
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082840 n + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A102206.P14862869421435337577

namespace A102206

/-- `Δ[A082840(n)+n]` -/
def P14862869421435337577.Spec : Prop :=
  ∀ n, P14862869421435337577.a n = A102206 n

end A102206

/-! ## A102206.P16479030646199518663

`Δ[A102871(n)+n]`
-/

namespace A102206.P16479030646199518663
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102871 n + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A102206.P16479030646199518663

namespace A102206

/-- `Δ[A102871(n)+n]` -/
def P16479030646199518663.Spec : Prop :=
  ∀ n, P16479030646199518663.a n = A102206 n

end A102206

/-! ## A102206.P15734104199141290328

`record[A121401(abs(1-n))]`
-/

namespace A102206.P15734104199141290328
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121401 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A102206.P15734104199141290328

namespace A102206

/-- `record[A121401(abs(1-n))]` -/
def P15734104199141290328.Spec : Prop :=
  ∀ n, P15734104199141290328.a n = A102206 n

end A102206

/-! ## A102206.P17632197692019708528

`Δ[∑[A002531(2*n)]+n]`
-/

namespace A102206.P17632197692019708528
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002531 (2 * n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A102206.P17632197692019708528

namespace A102206

/-- `Δ[∑[A002531(2*n)]+n]` -/
def P17632197692019708528.Spec : Prop :=
  ∀ n, P17632197692019708528.a n = A102206 n

end A102206

/-! ## A102206.P2768033006715626466

`A102091(n+1)/4`
-/

namespace A102206.P2768033006715626466
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A102091 (n + 1) : ℚ) / 4

end

end A102206.P2768033006715626466

namespace A102206

/-- `A102091(n+1)/4` -/
def P2768033006715626466.Spec : Prop :=
  ∀ n, P2768033006715626466.a n = (A102206 n : ℚ)

end A102206

/-! ## A102206.P2746635127147033914

`(A335025(n+1)+1)/2`
-/

namespace A102206.P2746635127147033914
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A335025 (n + 1) + 1 : ℚ) / 2

end

end A102206.P2746635127147033914

namespace A102206

/-- `(A335025(n+1)+1)/2` -/
def P2746635127147033914.Spec : Prop :=
  ∀ n, P2746635127147033914.a n = (A102206 n : ℚ)

end A102206

/-! ## A102206.P14746907158035866681

`(A016064(n+1)+3)/2`
-/

namespace A102206.P14746907158035866681
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016064 (n + 1) + 3 : ℚ) / 2

end

end A102206.P14746907158035866681

namespace A102206

/-- `(A016064(n+1)+3)/2` -/
def P14746907158035866681.Spec : Prop :=
  ∀ n, P14746907158035866681.a n = (A102206 n : ℚ)

end A102206

/-! ## A102206.P555418474593927612

`A351635(2*(n+1))/2`
-/

namespace A102206.P555418474593927612
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A351635 (2 * (n + 1)) : ℚ) / 2

end

end A102206.P555418474593927612

namespace A102206

/-- `A351635(2*(n+1))/2` -/
def P555418474593927612.Spec : Prop :=
  ∀ n, P555418474593927612.a n = (A102206 n : ℚ)

end A102206

/-! ## A102206.P157064875219317620

`A020871(n+1)/(n+1)`
-/

namespace A102206.P157064875219317620
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A020871 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A102206.P157064875219317620

namespace A102206

/-- `A020871(n+1)/(n+1)` -/
def P157064875219317620.Spec : Prop :=
  ∀ n, P157064875219317620.a n = (A102206 n : ℚ)

end A102206

/-!
# A102207: a(n) = 5*a(n-1) - 5*a(n-2) + a(n-3) with a(0) = 4, a(1) = 17, a(2) = 65.

The programs for A102207, the canonical program `A102207.P13570489043716578073` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A102207 has offset 0).

The definition of A102207 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `5*a(n-1)-5*a(n-2)+a(n-3)` (program `A102207.P13570489043716578073`, by `A102207.P13570489043716578073.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A102207.P13570489043716578073

`5*a(n-1)-5*a(n-2)+a(n-3)` with `a(0)=4, a(1)=17, a(2)=65`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A102207

/-- `5*a(n-1)-5*a(n-2)+a(n-3)` -/
def P13570489043716578073.Spec : Prop :=
  ∀ n, P13570489043716578073.a n = A102207 n

theorem P13570489043716578073.correct : P13570489043716578073.Spec := by
  intro n
  simp only [A102207]

end A102207

/-! ## A102207.P15275968004923650320

`1/2*(A001353(n+2)+5*A001353(n+1)-1)`
-/

namespace A102207.P15275968004923650320
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 : ℚ) / 2 * (A001353 (n + 2) + 5 * A001353 (n + 1) - 1 : ℚ)

end

end A102207.P15275968004923650320

namespace A102207

/-- `1/2*(A001353(n+2)+5*A001353(n+1)-1)` -/
def P15275968004923650320.Spec : Prop :=
  ∀ n, P15275968004923650320.a n = (A102207 n : ℚ)

end A102207

/-! ## A102207.P1096279661016626920

`∑[ogf((4-3x)/(1-4x+x^2))]`
-/

namespace A102207.P1096279661016626920
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [4, -3] [1, -4, 1] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A102207.P1096279661016626920

namespace A102207

/-- `∑[ogf((4-3x)/(1-4x+x^2))]` -/
def P1096279661016626920.Spec : Prop :=
  ∀ n, P1096279661016626920.a n = A102207 n

end A102207

/-! ## A102207.P14780939585401187037

`ogf((4-3x)/(1-5x+5x^2-x^3))`
-/

namespace A102207.P14780939585401187037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [4, -3] [1, -5, 5, -1] n

end

end A102207.P14780939585401187037

namespace A102207

/-- `ogf((4-3x)/(1-5x+5x^2-x^3))` -/
def P14780939585401187037.Spec : Prop :=
  ∀ n, P14780939585401187037.a n = A102207 n

end A102207

/-! ## A102207.P13707985072418589199

`∑[floor((sqrt(3)+2)*a(n-1))]` with `a(0)=4, a(1)=13`
-/

namespace A102207.P13707985072418589199
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [4, 13] fun n f1 =>
  ⌊(Real.sqrt (3 : ℝ) + 2) * (f1 (n - 1) : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A102207.P13707985072418589199

namespace A102207

/-- `∑[floor((sqrt(3)+2)*a(n-1))]` -/
def P13707985072418589199.Spec : Prop :=
  ∀ n, P13707985072418589199.a n = A102207 n

end A102207

/-! ## A102207.P6390512295000561502

`∑[4*a(n-1)-a(n-2)]` with `a(0)=4, a(1)=13`
-/

namespace A102207.P6390512295000561502
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [4, 13] fun n f1 =>
  4 * f1 (n - 1) - f1 (n - 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A102207.P6390512295000561502

namespace A102207

/-- `∑[4*a(n-1)-a(n-2)]` -/
def P6390512295000561502.Spec : Prop :=
  ∀ n, P6390512295000561502.a n = A102207 n

end A102207

/-! ## A102207.P14179565245277760638

`4*a(n-1)-a(n-2)+1` with `a(0)=4, a(1)=17`
-/

namespace A102207.P14179565245277760638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [4, 17] fun n a =>
  4 * a (n - 1) - a (n - 2) + 1

end

end A102207.P14179565245277760638

namespace A102207

/-- `4*a(n-1)-a(n-2)+1` -/
def P14179565245277760638.Spec : Prop :=
  ∀ n, P14179565245277760638.a n = A102207 n

end A102207

/-! ## A102207.P8399260109633320339

`A010905(n)+A001571(n)`
-/

namespace A102207.P8399260109633320339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010905 n + A001571 n

end

end A102207.P8399260109633320339

namespace A102207

/-- `A010905(n)+A001571(n)` -/
def P8399260109633320339.Spec : Prop :=
  ∀ n, P8399260109633320339.a n = A102207 n

end A102207

/-! ## A102207.P6254618731876222481

`∑[A077234(n)+A003500(n)]`
-/

namespace A102207.P6254618731876222481
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077234 n + A003500 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A102207.P6254618731876222481

namespace A102207

/-- `∑[A077234(n)+A003500(n)]` -/
def P6254618731876222481.Spec : Prop :=
  ∀ n, P6254618731876222481.a n = A102207 n

end A102207

/-! ## A102207.P144650600347537245

`A001571(n)+A001353(n+2)`
-/

namespace A102207.P144650600347537245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001571 n + A001353 (n + 2)

end

end A102207.P144650600347537245

namespace A102207

/-- `A001571(n)+A001353(n+2)` -/
def P144650600347537245.Spec : Prop :=
  ∀ n, P144650600347537245.a n = A102207 n

end A102207

/-! ## A102207.P14492394643017247675

`A133161(n+2)+A001353(n)`
-/

namespace A102207.P14492394643017247675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133161 (n + 2) + A001353 n

end

end A102207.P14492394643017247675

namespace A102207

/-- `A133161(n+2)+A001353(n)` -/
def P14492394643017247675.Spec : Prop :=
  ∀ n, P14492394643017247675.a n = A102207 n

end A102207

/-! ## A102207.P13369715404850971789

`A082840(n)+A072110(n+2)`
-/

namespace A102207.P13369715404850971789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082840 n + A072110 (n + 2)

end

end A102207.P13369715404850971789

namespace A102207

/-- `A082840(n)+A072110(n+2)` -/
def P13369715404850971789.Spec : Prop :=
  ∀ n, P13369715404850971789.a n = A102207 n

end A102207

/-! ## A102207.P4722282083517119364

`A144721(n+1)-A101879(n)`
-/

namespace A102207.P4722282083517119364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144721 (n + 1) - A101879 n

end

end A102207.P4722282083517119364

namespace A102207

/-- `A144721(n+1)-A101879(n)` -/
def P4722282083517119364.Spec : Prop :=
  ∀ n, P4722282083517119364.a n = A102207 n

end A102207

/-! ## A102207.P4781488709194451314

`A001571(n)-A106707(n+2)`
-/

namespace A102207.P4781488709194451314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001571 n - A106707 (n + 2)

end

end A102207.P4781488709194451314

namespace A102207

/-- `A001571(n)-A106707(n+2)` -/
def P4781488709194451314.Spec : Prop :=
  ∀ n, P4781488709194451314.a n = A102207 n

end A102207

/-! ## A102207.P12277321060361674017

`∑[Δ[A001834(n)]-A001353(n)]`
-/

namespace A102207.P12277321060361674017
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001834 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n - A001353 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A102207.P12277321060361674017

namespace A102207

/-- `∑[Δ[A001834(n)]-A001353(n)]` -/
def P12277321060361674017.Spec : Prop :=
  ∀ n, P12277321060361674017.a n = A102207 n

end A102207

/-! ## A102207.P9537104626048652565

`∑[A005320(n+1)+A001835(n)]`
-/

namespace A102207.P9537104626048652565
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005320 (n + 1) + A001835 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A102207.P9537104626048652565

namespace A102207

/-- `∑[A005320(n+1)+A001835(n)]` -/
def P9537104626048652565.Spec : Prop :=
  ∀ n, P9537104626048652565.a n = A102207 n

end A102207

/-! ## A102207.P6814259968713568508

`∑[A001835(n+2)+A001075(n)]`
-/

namespace A102207.P6814259968713568508
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001835 (n + 2) + A001075 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A102207.P6814259968713568508

namespace A102207

/-- `∑[A001835(n+2)+A001075(n)]` -/
def P6814259968713568508.Spec : Prop :=
  ∀ n, P6814259968713568508.a n = A102207 n

end A102207

/-! ## A102207.P13871922083700592202

`A001571(n)+Δ[A061278(n+1)]`
-/

namespace A102207.P13871922083700592202
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061278 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001571 n + (f1 (n + 1) - f1 n)

end

end A102207.P13871922083700592202

namespace A102207

/-- `A001571(n)+Δ[A061278(n+1)]` -/
def P13871922083700592202.Spec : Prop :=
  ∀ n, P13871922083700592202.a n = A102207 n

end A102207

/-! ## A102207.P4030956245275437200

`∑[A003500(n+1)]-A061278(n)`
-/

namespace A102207.P4030956245275437200
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003500 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A061278 n

end

end A102207.P4030956245275437200

namespace A102207

/-- `∑[A003500(n+1)]-A061278(n)` -/
def P4030956245275437200.Spec : Prop :=
  ∀ n, P4030956245275437200.a n = A102207 n

end A102207

/-! ## A102207.P14380170279681467170

`A102871(n)+∑[A001835(n+2)]`
-/

namespace A102207.P14380170279681467170
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001835 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102871 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A102207.P14380170279681467170

namespace A102207

/-- `A102871(n)+∑[A001835(n+2)]` -/
def P14380170279681467170.Spec : Prop :=
  ∀ n, P14380170279681467170.a n = A102207 n

end A102207

/-!
# A102210: Number of primes that are bitwise covered by n.

The programs for A102210, there is no canonical definition to state claims against.
-/

/-! ## A102210.P10021435409799589045

`A072627(A191614(n+2))`
-/

namespace A102210.P10021435409799589045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072627 (A191614 (n + 2)).toNat

end

end A102210.P10021435409799589045

/-! ## A102210.P5085409660253011344

`A091569(A000079(n))%A091953(n+1)`
-/

namespace A102210.P5085409660253011344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A091569 (A000079 n).toNat) (A091953 (n + 1))

end

end A102210.P5085409660253011344

/-! ## A102210.P14178359039980665331

`A242326(A242344(n+1))%A353274(n+1)`
-/

namespace A102210.P14178359039980665331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A242326 (A242344 (n + 1)).toNat) (A353274 (n + 1))

end

end A102210.P14178359039980665331

/-! ## A102210.P9414148268614263292

`A143051(A017030(n)+A000788(n+4))%((n+1)/A032742(n+1))`
-/

namespace A102210.P9414148268614263292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A143051 (A017030 n + A000788 (n + 4)).toNat) (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A032742 (n + 1) : ℚ)))

end

end A102210.P9414148268614263292

/-! ## A102210.P11919877095779432576

`A353836(A353836(n)+A084783(n+2))`
-/

namespace A102210.P11919877095779432576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353836 (A353836 n + A084783 (n + 2)).toNat

end

end A102210.P11919877095779432576

/-!
# A102211: Numbers k with A102210(k) = 0.

The programs for A102211, there is no canonical definition to state claims against.
-/

/-! ## A102211.P3143036829530025048

`lt[A102210(n+1), 1]+1`
-/

namespace A102211.P3143036829530025048
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102210 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A102211.P3143036829530025048

/-! ## A102211.P18185203274562651165

`lt[n*A102210(A028310(n)), n]`
-/

namespace A102211.P18185203274562651165
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A102210 (A028310 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A102211.P18185203274562651165

/-! ## A102211.P6289230926993282898

`record[n+1-A019560(n)*A102210(n+1)]`
-/

namespace A102211.P6289230926993282898
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A019560 n * A102210 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A102211.P6289230926993282898

/-! ## A102211.P2905770005502264356

`record[n+1-A102210(n+1)*A213594(n+1)]`
-/

namespace A102211.P2905770005502264356
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A102210 (n + 1) * A213594 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A102211.P2905770005502264356

/-! ## A102211.P15805391177119445748

`record[n+1-A102210(n+1)*A275884(n+1)]`
-/

namespace A102211.P15805391177119445748
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A102210 (n + 1) * A275884 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A102211.P15805391177119445748

/-! ## A102211.P16090518383044521893

`record[n+1-A102210(n+1)*A294339(n+1)]`
-/

namespace A102211.P16090518383044521893
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A102210 (n + 1) * A294339 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A102211.P16090518383044521893

/-! ## A102211.P7922715235604652720

`eq[A000007(n), A375487(n)]`
-/

namespace A102211.P7922715235604652720
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375487 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A102211.P7922715235604652720

/-! ## A102211.P1919543771128849046

`eq[A000038(n), A375487(n)]`
-/

namespace A102211.P1919543771128849046
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375487 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A102211.P1919543771128849046

/-! ## A102211.P6359209510226412409

`eq[A109247(n), A375487(n)]`
-/

namespace A102211.P6359209510226412409
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109247 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375487 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A102211.P6359209510226412409

/-! ## A102211.P11929838529457668001

`eq[A135416(n+1), A375487(n)]`
-/

namespace A102211.P11929838529457668001
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135416 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375487 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A102211.P11929838529457668001

/-! ## A102211.P3915921593644343205

`eq[A154281(n+1), A375487(n)]`
-/

namespace A102211.P3915921593644343205
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154281 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375487 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A102211.P3915921593644343205

/-! ## A102211.P5745761819481113382

`eq[A154282(n+1), A375487(n)]`
-/

namespace A102211.P5745761819481113382
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154282 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375487 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A102211.P5745761819481113382

/-! ## A102211.P10307784776905685918

`eq[A000007(n), A102210(A000007(n)+n)]`
-/

namespace A102211.P10307784776905685918
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102210 (A000007 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A102211.P10307784776905685918

/-!
# A102212: Numbers m with A102210(m) = 1.

The programs for A102212, there is no canonical definition to state claims against.
-/

/-! ## A102212.P7753989550866135347

`eq[1, A102210(n+1)]+1`
-/

namespace A102212.P7753989550866135347
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102210 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A102212.P7753989550866135347

/-! ## A102212.P15077176848161757759

`eq[1, A102210(A028310(n))]`
-/

namespace A102212.P15077176848161757759
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102210 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A102212.P15077176848161757759

/-! ## A102212.P18431216294308576712

`A098180(eq[1, A102210(n+1)])`
-/

namespace A102212.P18431216294308576712
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102210 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098180 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A102212.P18431216294308576712

/-! ## A102212.P13460701905845339163

`eq[1, A102210(A000007(n)+n)]`
-/

namespace A102212.P13460701905845339163
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102210 (A000007 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A102212.P13460701905845339163

/-! ## A102212.P15523470143716384546

`eq[1, A102210(A123108(2*n))]`
-/

namespace A102212.P15523470143716384546
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102210 (A123108 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A102212.P15523470143716384546

/-!
# A102213: Numbers m with A102210(m) > 1.

The programs for A102213, there is no canonical definition to state claims against.
-/

/-! ## A102213.P4185662695386625671

`lt[1, A102210(n+1)]+1`
-/

namespace A102213.P4185662695386625671
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102210 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A102213.P4185662695386625671

/-! ## A102213.P14480601721718755346

`lt[1, A102210(A028310(n))]`
-/

namespace A102213.P14480601721718755346
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102210 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A102213.P14480601721718755346

/-! ## A102213.P17002705302504882991

`A097062(lt[1, A102210(n+1)])`
-/

namespace A102213.P17002705302504882991
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102210 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097062 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A102213.P17002705302504882991

/-! ## A102213.P12030655325551594724

`A153152(lt[1, A102210(n+1)])`
-/

namespace A102213.P12030655325551594724
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102210 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153152 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A102213.P12030655325551594724

/-! ## A102213.P133914604746311417

`lt[1, A102210(A000007(n)+n)]`
-/

namespace A102213.P133914604746311417
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102210 (A000007 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A102213.P133914604746311417

/-! ## A102213.P8917276903791736168

`lt[1, A102210(abs(A000007(n)-n))]`
-/

namespace A102213.P8917276903791736168
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102210 |A000007 n - (n : ℤ)|.toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A102213.P8917276903791736168

/-!
# A102214: Expansion of (1 + 4*x + 4*x^2)/((1+x)*(1-x)^3).

The programs for A102214, the canonical program `A102214.P1918211318526033192` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A102214 has offset 0).

The definition of A102214 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1+4x+4x^2)/(1-2x+2x^3-x^4))` (program `A102214.P1918211318526033192`, by `A102214.P1918211318526033192.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A102214.P1918211318526033192

`ogf((1+4x+4x^2)/(1-2x+2x^3-x^4))`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A102214

/-- `ogf((1+4x+4x^2)/(1-2x+2x^3-x^4))` -/
def P1918211318526033192.Spec : Prop :=
  ∀ n, P1918211318526033192.a n = A102214 n

theorem P1918211318526033192.correct : P1918211318526033192.Spec := by
  intro n
  simp only [A102214]

end A102214

/-! ## A102214.P8643099477101200457

`floor((3*n+2)/2)*ceil((3*n+2)/2)`
-/

namespace A102214.P8643099477101200457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(3 * n + 2 : ℚ) / 2⌋ * ⌈(3 * n + 2 : ℚ) / 2⌉

end

end A102214.P8643099477101200457

namespace A102214

/-- `floor((3*n+2)/2)*ceil((3*n+2)/2)` -/
def P8643099477101200457.Spec : Prop :=
  ∀ n, P8643099477101200457.a n = A102214 n

end A102214

/-! ## A102214.P8131502228533853944

`A006578(n)+A001859(n)+A077043(n+1)`
-/

namespace A102214.P8131502228533853944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006578 n + A001859 n + A077043 (n + 1)

end

end A102214.P8131502228533853944

namespace A102214

/-- `A006578(n)+A001859(n)+A077043(n+1)` -/
def P8131502228533853944.Spec : Prop :=
  ∀ n, P8131502228533853944.a n = A102214 n

end A102214

/-! ## A102214.P17105580711713571307

`A274221(2+2*n)`
-/

namespace A102214.P17105580711713571307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274221 (2 + 2 * n)

end

end A102214.P17105580711713571307

namespace A102214

/-- `A274221(2+2*n)` -/
def P17105580711713571307.Spec : Prop :=
  ∀ n, P17105580711713571307.a n = A102214 n

end A102214

/-! ## A102214.P5567286102837707672

`∑[a(n-2)+9]` with `a(0)=1, a(1)=5`
-/

namespace A102214.P5567286102837707672
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 5] fun n f1 =>
  f1 (n - 2) + 9

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A102214.P5567286102837707672

namespace A102214

/-- `∑[a(n-2)+9]` -/
def P5567286102837707672.Spec : Prop :=
  ∀ n, (P5567286102837707672.a n : ℤ) = A102214 n

end A102214

/-! ## A102214.P194566316737489270

`∑[∑[gcd(2, n)+3]-4]`
-/

namespace A102214.P194566316737489270
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd 2 n + 3

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) - 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A102214.P194566316737489270

namespace A102214

/-- `∑[∑[gcd(2, n)+3]-4]` -/
def P194566316737489270.Spec : Prop :=
  ∀ n, P194566316737489270.a n = A102214 n

end A102214

/-! ## A102214.P6896526439349466935

`∑[∑[5-n%2]-4]`
-/

namespace A102214.P6896526439349466935
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 - ((n % 2 : ℕ) : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A102214.P6896526439349466935

namespace A102214

/-- `∑[∑[5-n%2]-4]` -/
def P6896526439349466935.Spec : Prop :=
  ∀ n, P6896526439349466935.a n = A102214 n

end A102214

/-! ## A102214.P16006100736077535395

`∑[∑[9-a(n-1)]]` with `a(0)=1, a(1)=4`
-/

namespace A102214.P16006100736077535395
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1, 4] fun n f2 =>
  9 - f2 (n - 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A102214.P16006100736077535395

namespace A102214

/-- `∑[∑[9-a(n-1)]]` -/
def P16006100736077535395.Spec : Prop :=
  ∀ n, P16006100736077535395.a n = A102214 n

end A102214

/-! ## A102214.P195953297235459982

`∑[∑[(n+1)%2]+4*n]`
-/

namespace A102214.P195953297235459982
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) % 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + 4 * n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A102214.P195953297235459982

namespace A102214

/-- `∑[∑[(n+1)%2]+4*n]` -/
def P195953297235459982.Spec : Prop :=
  ∀ n, (P195953297235459982.a n : ℤ) = A102214 n

end A102214

/-! ## A102214.P12807783594280364590

`∑[∑[and(1, n+1)]+4*n]`
-/

namespace A102214.P12807783594280364590
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 1 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + 4 * n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A102214.P12807783594280364590

namespace A102214

/-- `∑[∑[and(1, n+1)]+4*n]` -/
def P12807783594280364590.Spec : Prop :=
  ∀ n, (P12807783594280364590.a n : ℤ) = A102214 n

end A102214

/-! ## A102214.P12286436870461418839

`∑[record[n+2-dr(2*n+1)]]`
-/

namespace A102214.P12286436870461418839
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) - (SequenceMachineLib.digitalRoot (2 * n + 1 : ℤ) : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A102214.P12286436870461418839

namespace A102214

/-- `∑[record[n+2-dr(2*n+1)]]` -/
def P12286436870461418839.Spec : Prop :=
  ∀ n, P12286436870461418839.a n = A102214 n

end A102214

/-! ## A102214.P1758786077352483801

`∑[floor(n/2)-1+lcm(2, 2*n+1)]`
-/

namespace A102214.P1758786077352483801
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℚ) / 2⌋ - 1 + (Nat.lcm 2 (2 * n + 1) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A102214.P1758786077352483801

namespace A102214

/-- `∑[floor(n/2)-1+lcm(2, 2*n+1)]` -/
def P1758786077352483801.Spec : Prop :=
  ∀ n, P1758786077352483801.a n = A102214 n

end A102214

/-! ## A102214.P12113874955486745570

`(2*n)²+C(n+2, 2)-a(n-1)` with `a(0)=1`
-/

namespace A102214.P12113874955486745570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ((2 * n) ^ 2 : ℤ) + ((Nat.choose (n + 2) 2 : ℤ) - a (n - 1))

end

end A102214.P12113874955486745570

namespace A102214

/-- `(2*n)²+C(n+2, 2)-a(n-1)` -/
def P12113874955486745570.Spec : Prop :=
  ∀ n, P12113874955486745570.a n = A102214 n

end A102214

/-! ## A102214.P5381687558578449320

`A271937(n)+∑[n]`
-/

namespace A102214.P5381687558578449320
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271937 n + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A102214.P5381687558578449320

namespace A102214

/-- `A271937(n)+∑[n]` -/
def P5381687558578449320.Spec : Prop :=
  ∀ n, P5381687558578449320.a n = A102214 n

end A102214

/-! ## A102214.P11338353723630240800

`∑[A193910(n+1)-1]`
-/

namespace A102214.P11338353723630240800
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193910 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A102214.P11338353723630240800

namespace A102214

/-- `∑[A193910(n+1)-1]` -/
def P11338353723630240800.Spec : Prop :=
  ∀ n, P11338353723630240800.a n = A102214 n

end A102214

/-! ## A102214.P10353510726732198309

`A249547(n)+(n+1)²`
-/

namespace A102214.P10353510726732198309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249547 n + ((n + 1) ^ 2 : ℤ)

end

end A102214.P10353510726732198309

namespace A102214

/-- `A249547(n)+(n+1)²` -/
def P10353510726732198309.Spec : Prop :=
  ∀ n, P10353510726732198309.a n = A102214 n

end A102214

/-! ## A102214.P14794927015667144753

`∑[A047346(n+1)+n]`
-/

namespace A102214.P14794927015667144753
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047346 (n + 1) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A102214.P14794927015667144753

namespace A102214

/-- `∑[A047346(n+1)+n]` -/
def P14794927015667144753.Spec : Prop :=
  ∀ n, P14794927015667144753.a n = A102214 n

end A102214

/-! ## A102214.P7706117891390911465

`A038764(n)-a(n-1)` with `a(0)=1`
-/

namespace A102214.P7706117891390911465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A038764 n - a (n - 1)

end

end A102214.P7706117891390911465

namespace A102214

/-- `A038764(n)-a(n-1)` -/
def P7706117891390911465.Spec : Prop :=
  ∀ n, P7706117891390911465.a n = A102214 n

end A102214

/-! ## A102214.P15398500334670198823

`A033638(n)+A014106(n)`
-/

namespace A102214.P15398500334670198823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033638 n + A014106 n

end

end A102214.P15398500334670198823

namespace A102214

/-- `A033638(n)+A014106(n)` -/
def P15398500334670198823.Spec : Prop :=
  ∀ n, P15398500334670198823.a n = A102214 n

end A102214

/-!
# A102215: Expansion of Pi^2/50 in golden base (i.e., in irrational base phi = (1 + sqrt(5))/2).

The programs for A102215, there is no canonical definition to state claims against.
-/

/-! ## A102215.P15690248256498740945

`A082596(A128718(n+1)+A040638(n))`
-/

namespace A102215.P15690248256498740945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082596 (A128718 (n + 1) + A040638 n).toNat

end

end A102215.P15690248256498740945

/-! ## A102215.P12310886797559882523

`and(A014681(A001202(n+1)), A285208(n+1))`
-/

namespace A102215.P12310886797559882523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A014681 (A001202 (n + 1)).toNat) (A285208 (n + 1))

end

end A102215.P12310886797559882523

/-! ## A102215.P16478667175114797137

`A116178(A051432(n)-A189628(n+1))`
-/

namespace A102215.P16478667175114797137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116178 (A051432 n - A189628 (n + 1)).toNat

end

end A102215.P16478667175114797137

/-! ## A102215.P4437181858232384520

`and(A001221(A300182(n+1)), A285208(n+1))`
-/

namespace A102215.P4437181858232384520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A001221 (A300182 (n + 1)).toNat) (A285208 (n + 1))

end

end A102215.P4437181858232384520

/-! ## A102215.P8697032981116324417

`A000035(A104210(2*(n+1))%A268448(n+5))`
-/

namespace A102215.P8697032981116324417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (Int.tmod (A104210 (2 * (n + 1))) (A268448 (n + 5))).toNat

end

end A102215.P8697032981116324417

/-!
# A102216: 2-Suzanne numbers.

The programs for A102216, there is no canonical definition to state claims against.
-/

/-! ## A102216.P9073036043708493673

`∩[A102218(n+1), A154387(n+1)]`
-/

namespace A102216.P9073036043708493673
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102218 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154387 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A102216.P9073036043708493673

/-! ## A102216.P15925273317692844713

`∩[A054683(n+1), A102218(n+1)]`
-/

namespace A102216.P15925273317692844713
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054683 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102218 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A102216.P15925273317692844713

/-!
# A102217: 3-Suzanne numbers; composite multiples of 3 whose sum of prime factors with multiplicity is a multiple of 3.

The programs for A102217, the canonical program `A102217.P13849092126645086030` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A102217 has offset 1).

The definition of A102217 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A289142, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A102217.P13849092126645086030

`3*A289142(n+2)`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A102217

/-- `3*A289142(n+2)` -/
def P13849092126645086030.Spec : Prop :=
  ∀ n, P13849092126645086030.a n = A102217 (n + 1)

theorem P13849092126645086030.correct : P13849092126645086030.Spec := by
  intro n
  simp only [A102217, Nat.add_sub_cancel]

end A102217

/-! ## A102217.P2176334702144086924

`filter[A177927(n+1), A373371(#)]`
-/

namespace A102217.P2176334702144086924
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177927 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373371 (f1 j).toNat = 1) n)

end

end A102217.P2176334702144086924

namespace A102217

/-- `filter[A177927(n+1), A373371(#)]` -/
def P2176334702144086924.Spec : Prop :=
  ∀ n, P2176334702144086924.a n = A102217 (n + 1)

end A102217

/-! ## A102217.P405818749904281901

`∩[A177927(n+1), A289142(n+1)]`
-/

namespace A102217.P405818749904281901
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177927 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289142 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A102217.P405818749904281901

namespace A102217

/-- `∩[A177927(n+1), A289142(n+1)]` -/
def P405818749904281901.Spec : Prop :=
  ∀ n, (P405818749904281901.a n : ℤ) = A102217 (n + 1)

end A102217

/-! ## A102217.P18161092300504140743

`A008486(A289142(n+2))`
-/

namespace A102217.P18161092300504140743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008486 (A289142 (n + 2)).toNat

end

end A102217.P18161092300504140743

namespace A102217

/-- `A008486(A289142(n+2))` -/
def P18161092300504140743.Spec : Prop :=
  ∀ n, P18161092300504140743.a n = A102217 (n + 1)

end A102217

/-! ## A102217.P6462747658139501054

`filter[A008486(n+2), A373371(#)]`
-/

namespace A102217.P6462747658139501054
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008486 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373371 (f1 j).toNat = 1) n)

end

end A102217.P6462747658139501054

namespace A102217

/-- `filter[A008486(n+2), A373371(#)]` -/
def P6462747658139501054.Spec : Prop :=
  ∀ n, P6462747658139501054.a n = A102217 (n + 1)

end A102217

/-! ## A102217.P11638829958534130960

`filter[A008585(n+2), A373371(#)]`
-/

namespace A102217.P11638829958534130960
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008585 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373371 (f1 j).toNat = 1) n)

end

end A102217.P11638829958534130960

namespace A102217

/-- `filter[A008585(n+2), A373371(#)]` -/
def P11638829958534130960.Spec : Prop :=
  ∀ n, P11638829958534130960.a n = A102217 (n + 1)

end A102217

/-! ## A102217.P1651983230424435807

`∩[A177927(n+1), A008486(n)]`
-/

namespace A102217.P1651983230424435807
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177927 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008486 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A102217.P1651983230424435807

namespace A102217

/-- `∩[A177927(n+1), A008486(n)]` -/
def P1651983230424435807.Spec : Prop :=
  ∀ n, (P1651983230424435807.a n : ℤ) = A102217 (n + 1)

end A102217

/-! ## A102217.P11696444206538015481

`∩[A177927(n+1), A008585(n)]`
-/

namespace A102217.P11696444206538015481
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177927 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008585 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A102217.P11696444206538015481

namespace A102217

/-- `∩[A177927(n+1), A008585(n)]` -/
def P11696444206538015481.Spec : Prop :=
  ∀ n, (P11696444206538015481.a n : ℤ) = A102217 (n + 1)

end A102217

/-! ## A102217.P13365351003353155149

`A289142(n+2)+A004275(A289142(n+2)+1)`
-/

namespace A102217.P13365351003353155149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289142 (n + 2) + A004275 (A289142 (n + 2) + 1).toNat

end

end A102217.P13365351003353155149

namespace A102217

/-- `A289142(n+2)+A004275(A289142(n+2)+1)` -/
def P13365351003353155149.Spec : Prop :=
  ∀ n, P13365351003353155149.a n = A102217 (n + 1)

end A102217

/-! ## A102217.P14661195668197250857

`A004274(A289142(n+2)+1)+A289142(n+2)+1`
-/

namespace A102217.P14661195668197250857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004274 (A289142 (n + 2) + 1).toNat + (A289142 (n + 2) + 1)

end

end A102217.P14661195668197250857

namespace A102217

/-- `A004274(A289142(n+2)+1)+A289142(n+2)+1` -/
def P14661195668197250857.Spec : Prop :=
  ∀ n, P14661195668197250857.a n = A102217 (n + 1)

end A102217

/-! ## A102217.P212312233530820991

`A004280(A289142(n+2)+1)+A289142(n+2)+1`
-/

namespace A102217.P212312233530820991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004280 (A289142 (n + 2) + 1).toNat + (A289142 (n + 2) + 1)

end

end A102217.P212312233530820991

namespace A102217

/-- `A004280(A289142(n+2)+1)+A289142(n+2)+1` -/
def P212312233530820991.Spec : Prop :=
  ∀ n, P212312233530820991.a n = A102217 (n + 1)

end A102217

/-! ## A102217.P1626820118829783144

`filter[A049636(2*n), A373371(#)]`
-/

namespace A102217.P1626820118829783144
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049636 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373371 (f1 j).toNat = 1) n)

end

end A102217.P1626820118829783144

namespace A102217

/-- `filter[A049636(2*n), A373371(#)]` -/
def P1626820118829783144.Spec : Prop :=
  ∀ n, P1626820118829783144.a n = A102217 (n + 1)

end A102217

/-! ## A102217.P17334102596644423778

`filter[A168198(2*(n+1)), A373371(#)]`
-/

namespace A102217.P17334102596644423778
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168198 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373371 (f1 j).toNat = 1) n)

end

end A102217.P17334102596644423778

namespace A102217

/-- `filter[A168198(2*(n+1)), A373371(#)]` -/
def P17334102596644423778.Spec : Prop :=
  ∀ n, P17334102596644423778.a n = A102217 (n + 1)

end A102217

/-! ## A102217.P15702981224335727205

`filter[A299417(2*n+1), A373371(#)]`
-/

namespace A102217.P15702981224335727205
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299417 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373371 (f1 j).toNat = 1) n)

end

end A102217.P15702981224335727205

namespace A102217

/-- `filter[A299417(2*n+1), A373371(#)]` -/
def P15702981224335727205.Spec : Prop :=
  ∀ n, P15702981224335727205.a n = A102217 (n + 1)

end A102217

/-! ## A102217.P7703888733997587450

`filter[A177927(n+1), A079978(#)]`
-/

namespace A102217.P7703888733997587450
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177927 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A079978 (f1 j).toNat = 1) n)

end

end A102217.P7703888733997587450

namespace A102217

/-- `filter[A177927(n+1), A079978(#)]` -/
def P7703888733997587450.Spec : Prop :=
  ∀ n, P7703888733997587450.a n = A102217 (n + 1)

end A102217

/-! ## A102217.P17887982005773065287

`filter[A177927(n+1), A173857(#)]`
-/

namespace A102217.P17887982005773065287
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177927 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A173857 (f1 j).toNat = 1) n)

end

end A102217.P17887982005773065287

namespace A102217

/-- `filter[A177927(n+1), A173857(#)]` -/
def P17887982005773065287.Spec : Prop :=
  ∀ n, P17887982005773065287.a n = A102217 (n + 1)

end A102217

/-! ## A102217.P9759923983761406488

`filter[A177927(n+1), A329680(#)]`
-/

namespace A102217.P9759923983761406488
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177927 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A329680 (f1 j).toNat = 1) n)

end

end A102217.P9759923983761406488

namespace A102217

/-- `filter[A177927(n+1), A329680(#)]` -/
def P9759923983761406488.Spec : Prop :=
  ∀ n, P9759923983761406488.a n = A102217 (n + 1)

end A102217

/-! ## A102217.P1859830932667671244

`filter[A289142(n+3), A079978(#)]`
-/

namespace A102217.P1859830932667671244
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289142 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A079978 (f1 j).toNat = 1) n)

end

end A102217.P1859830932667671244

namespace A102217

/-- `filter[A289142(n+3), A079978(#)]` -/
def P1859830932667671244.Spec : Prop :=
  ∀ n, P1859830932667671244.a n = A102217 (n + 1)

end A102217

/-! ## A102217.P16583746354695922324

`filter[A289142(n+3), A173857(#)]`
-/

namespace A102217.P16583746354695922324
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289142 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A173857 (f1 j).toNat = 1) n)

end

end A102217.P16583746354695922324

namespace A102217

/-- `filter[A289142(n+3), A173857(#)]` -/
def P16583746354695922324.Spec : Prop :=
  ∀ n, P16583746354695922324.a n = A102217 (n + 1)

end A102217

/-! ## A102217.P11339983950928568962

`filter[A289142(n+3), A329680(#)]`
-/

namespace A102217.P11339983950928568962
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289142 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A329680 (f1 j).toNat = 1) n)

end

end A102217.P11339983950928568962

namespace A102217

/-- `filter[A289142(n+3), A329680(#)]` -/
def P11339983950928568962.Spec : Prop :=
  ∀ n, P11339983950928568962.a n = A102217 (n + 1)

end A102217

/-!
# A102220: Triangular matrix, read by rows, equal to [2*I - A008459]^(-1), i.e., the matrix inverse of the difference of twice the identity matrix and the triangular matrix of squared binomial coefficients.

The programs for A102220, there is no canonical definition to state claims against.
-/

/-! ## A102220.P17126692038824983991

`C(row(n), col(n))²*A102221(row(n)-col(n))`
-/

namespace A102220.P17126692038824983991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (SequenceMachineLib.triRow n) (SequenceMachineLib.triCol n) ^ 2 : ℤ) * A102221 (SequenceMachineLib.triRow n - SequenceMachineLib.triCol n)

end

end A102220.P17126692038824983991

/-! ## A102220.P14023437349230337487

`A008459(n)*A102221(A025581(n))`
-/

namespace A102220.P14023437349230337487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008459 n * A102221 (A025581 n).toNat

end

end A102220.P14023437349230337487

/-! ## A102220.P4703645051248001509

`A007318(n)²*A102221(A025581(n))`
-/

namespace A102220.P4703645051248001509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n ^ 2 * A102221 (A025581 n).toNat

end

end A102220.P4703645051248001509

/-! ## A102220.P1051634861980339110

`A108086(n)²*A102221(A025581(n))`
-/

namespace A102220.P1051634861980339110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108086 n ^ 2 * A102221 (A025581 n).toNat

end

end A102220.P1051634861980339110

/-! ## A102220.P7399761971998713775

`A130595(n)²*A102221(A025581(n))`
-/

namespace A102220.P7399761971998713775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130595 n ^ 2 * A102221 (A025581 n).toNat

end

end A102220.P7399761971998713775

/-! ## A102220.P17129384389697519553

`sqrt(A202750(n))*A102221(A025581(n))`
-/

namespace A102220.P17129384389697519553
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A202750 n : ℝ) * (A102221 (A025581 n).toNat : ℝ)

end

end A102220.P17129384389697519553

/-! ## A102220.P1566063781008101428

`Δ[A102363(n)]²*A102221(A025581(n))`
-/

namespace A102220.P1566063781008101428
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102363 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) ^ 2 * A102221 (A025581 n).toNat

end

end A102220.P1566063781008101428

/-! ## A102220.P334345702449635484

`(2-A173740(n))²*A102221(A025581(n))`
-/

namespace A102220.P334345702449635484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - A173740 n) ^ 2 * A102221 (A025581 n).toNat

end

end A102220.P334345702449635484

/-! ## A102220.P17136045750794992599

`ceil((A134059(n)/3)²)*A102221(A025581(n))`
-/

namespace A102220.P17136045750794992599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((A134059 n : ℚ) / 3) ^ 2⌉ * A102221 (A025581 n).toNat

end

end A102220.P17136045750794992599

/-! ## A102220.P17555328198941468123

`A181543(n)/A007318(n)*A102221(A025581(n))`
-/

namespace A102220.P17555328198941468123
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A181543 n : ℚ) / (A007318 n : ℚ) * (A102221 (A025581 n).toNat : ℚ)

end

end A102220.P17555328198941468123

/-! ## A102220.P11516317649391581252

`(A176348(n)/A176346(n))²*A102221(A025581(n))`
-/

namespace A102220.P11516317649391581252
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A176348 n : ℚ) / (A176346 n : ℚ)) ^ 2 * (A102221 (A025581 n).toNat : ℚ)

end

end A102220.P11516317649391581252

/-! ## A102220.P16193272656727006543

`A007318(n)^A266256(2*n)*A102221(A025581(n))`
-/

namespace A102220.P16193272656727006543
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007318 n : ℚ) ^ (A266256 (2 * n) : ℤ) * (A102221 (A025581 n).toNat : ℚ)

end

end A102220.P16193272656727006543

/-! ## A102220.P5159332938290139990

`A007318(n)^(2%A000041(n))*A102221(A025581(n))`
-/

namespace A102220.P5159332938290139990
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007318 n : ℚ) ^ (Int.tmod 2 (A000041 n) : ℤ) * (A102221 (A025581 n).toNat : ℚ)

end

end A102220.P5159332938290139990

/-! ## A102220.P7910826413979322849

`(A102363(n+1)-A102363(n))²*A102221(A025581(n))`
-/

namespace A102220.P7910826413979322849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A102363 (n + 1) - A102363 n) ^ 2 * A102221 (A025581 n).toNat

end

end A102220.P7910826413979322849

/-! ## A102220.P243850539233911825

`A007318(n)^A020639(2*(n+1))*A102221(A025581(n))`
-/

namespace A102220.P243850539233911825
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007318 n : ℚ) ^ (A020639 (2 * (n + 1)) : ℤ) * (A102221 (A025581 n).toNat : ℚ)

end

end A102220.P243850539233911825

/-! ## A102220.P497089917500320316

`A007318(n)^A158478(2*(n+2))*A102221(A025581(n))`
-/

namespace A102220.P497089917500320316
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007318 n : ℚ) ^ (A158478 (2 * (n + 2)) : ℤ) * (A102221 (A025581 n).toNat : ℚ)

end

end A102220.P497089917500320316

/-! ## A102220.P4241146129190820766

`A007318(n)^A053669(2*n+5)*A102221(A025581(n))`
-/

namespace A102220.P4241146129190820766
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007318 n : ℚ) ^ (A053669 (2 * n + 5) : ℤ) * (A102221 (A025581 n).toNat : ℚ)

end

end A102220.P4241146129190820766

/-! ## A102220.P13484039779060528933

`A007318(n)^A000040((-1)^(2*n))*A102221(A025581(n))`
-/

namespace A102220.P13484039779060528933
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007318 n : ℚ) ^ (A000040 ((-1) ^ (2 * n)).toNat : ℤ) * (A102221 (A025581 n).toNat : ℚ)

end

end A102220.P13484039779060528933

/-! ## A102220.P6250537724973657414

`A007318(n)^(A004277(n+1)/(n+1))*A102221(A025581(n))`
-/

namespace A102220.P6250537724973657414
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A007318 n : ℝ) ^ ((A004277 (n + 1) : ℚ) / (n + 1 : ℚ) : ℝ) * (A102221 (A025581 n).toNat : ℝ)

end

end A102220.P6250537724973657414

/-!
# A102221: Column 0 of triangular matrix A102220, which equals [2*I - A008459]^(-1).

The programs for A102221, there is no canonical definition to state claims against.
-/

/-! ## A102221.P14895631924962247510

`A102220(∑[n])`
-/

namespace A102221.P14895631924962247510
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102220 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A102221.P14895631924962247510

/-! ## A102221.P4694169251910840503

`ceil(A335946(n)/2)`
-/

namespace A102221.P4694169251910840503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A335946 n : ℚ) / 2⌉

end

end A102221.P4694169251910840503

/-! ## A102221.P16290091427933138292

`or(1, A102220(C(n+1, 2)))`
-/

namespace A102221.P16290091427933138292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A102220 (Nat.choose (n + 1) 2))

end

end A102221.P16290091427933138292

/-! ## A102221.P4717426870803366882

`or(1, A102220(n²-C(n, 2)))`
-/

namespace A102221.P4717426870803366882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A102220 (n ^ 2 - Nat.choose n 2))

end

end A102221.P4717426870803366882

/-! ## A102221.P2796604662030911068

`or(1, A102220(floor((2*n+1)²/8)))`
-/

namespace A102221.P2796604662030911068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A102220 ⌊((2 * n + 1) ^ 2 : ℚ) / 8⌋.toNat)

end

end A102221.P2796604662030911068

/-!
# A102222: Logarithm of triangular matrix A102220, which equals [2*I - A008459]^(-1).

The programs for A102222, there is no canonical definition to state claims against.
-/

/-! ## A102222.P1590320891331695840

`C(row(n), col(n))²*A102223(row(n)-col(n))`
-/

namespace A102222.P1590320891331695840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (SequenceMachineLib.triRow n) (SequenceMachineLib.triCol n) ^ 2 : ℤ) * A102223 (SequenceMachineLib.triRow n - SequenceMachineLib.triCol n)

end

end A102222.P1590320891331695840

/-! ## A102222.P5819495740431671953

`A008459(n)*A102223(A025581(n))`
-/

namespace A102222.P5819495740431671953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008459 n * A102223 (A025581 n).toNat

end

end A102222.P5819495740431671953

/-! ## A102222.P1995320775543893598

`A007318(n)²*A102223(A025581(n))`
-/

namespace A102222.P1995320775543893598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n ^ 2 * A102223 (A025581 n).toNat

end

end A102222.P1995320775543893598

/-! ## A102222.P14931197950649415289

`A108086(n)²*A102223(A025581(n))`
-/

namespace A102222.P14931197950649415289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108086 n ^ 2 * A102223 (A025581 n).toNat

end

end A102222.P14931197950649415289

/-! ## A102222.P13977814947276208067

`A130595(n)²*A102223(A025581(n))`
-/

namespace A102222.P13977814947276208067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130595 n ^ 2 * A102223 (A025581 n).toNat

end

end A102222.P13977814947276208067

/-!
# A102223: Column 0 of triangular matrix A102222, which equals -log[2*I - A008459].

The programs for A102223, there is no canonical definition to state claims against.
-/

/-! ## A102223.P5370544424552287760

`A102222(∑[n])`
-/

namespace A102223.P5370544424552287760
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102222 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A102223.P5370544424552287760

/-! ## A102223.P18163672406524082619

`record[A102222(n)/Δ[∪[2*n, n²+1+n]]]`
-/

namespace A102223.P18163672406524082619
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2 + 1 + n

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f3 j = x) ∨ ∃ j, f4 j = x) n

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A102222 n : ℚ) / ((f2 (n + 1) : ℤ) - (f2 n : ℤ) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A102223.P18163672406524082619

/-! ## A102223.P1066039915387631086

`record[A102222(A001971(n))]`
-/

namespace A102223.P1066039915387631086
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102222 (A001971 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A102223.P1066039915387631086

/-! ## A102223.P15376352353519412837

`record[A102222(A033441(n))]`
-/

namespace A102223.P15376352353519412837
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102222 (A033441 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A102223.P15376352353519412837

/-! ## A102223.P13275285160581448085

`record[A102222(A112367(n))]`
-/

namespace A102223.P13275285160581448085
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102222 (A112367 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A102223.P13275285160581448085

/-!
# A102224: Column 0 of the matrix square of A102220, which equals the lower triangular matrix: [2*I - A008459]^(-1).

The programs for A102224, there is no canonical definition to state claims against.
-/

/-! ## A102224.P11006164209318376246

`A000027(or(A002652(n), A322196(n)))`
-/

namespace A102224.P11006164209318376246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (Int.lor (A002652 n) (A322196 n)).toNat

end

end A102224.P11006164209318376246

/-! ## A102224.P7377166945057880464

`A322196(n)+A002262(A065997(n+1))`
-/

namespace A102224.P7377166945057880464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322196 n + A002262 (A065997 (n + 1)).toNat

end

end A102224.P7377166945057880464

/-!
# A102226: Column 0 of triangular matrix A102225, in which row k is formed from the first differences of row (k-1) of its matrix square (A102228).

The programs for A102226, there is no canonical definition to state claims against.
-/

/-! ## A102226.P423832055377389925

`A102225(∑[n])`
-/

namespace A102226.P423832055377389925
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102225 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A102226.P423832055377389925

/-! ## A102226.P11733995186480650431

`A102228(C(n, 2))`
-/

namespace A102226.P11733995186480650431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102228 (Nat.choose n 2)

end

end A102226.P11733995186480650431

/-! ## A102226.P6619372576961096208

`A102228(∑[n]-n)`
-/

namespace A102226.P6619372576961096208
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102228 (∑ j ∈ Finset.range (n + 1), f1 j - n)

end

end A102226.P6619372576961096208

/-! ## A102226.P18191231517550500369

`abs(A102225(or(1, n)*ceil(n/2)))`
-/

namespace A102226.P18191231517550500369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A102225 ((Nat.lor 1 n : ℤ) * ⌈(n : ℚ) / 2⌉).toNat|

end

end A102226.P18191231517550500369

/-! ## A102226.P11473554422881882626

`abs(A102225(floor((2*n+1)²/8)))`
-/

namespace A102226.P11473554422881882626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A102225 ⌊((2 * n + 1) ^ 2 : ℚ) / 8⌋.toNat|

end

end A102226.P11473554422881882626

/-!
# A102227: Column 1 of triangular matrix A102225, in which row k is formed from the first differences of row (k-1) of its matrix square (A102228).

The programs for A102227, there is no canonical definition to state claims against.
-/

/-! ## A102227.P6407509421654348553

`A102225(A000124(n))%(14^n)`
-/

namespace A102227.P6407509421654348553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A102225 (A000124 n).toNat) (14 ^ n : ℤ)

end

end A102227.P6407509421654348553

/-! ## A102227.P17293964057561697469

`A102225(A000124(n))-A000007(n)`
-/

namespace A102227.P17293964057561697469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102225 (A000124 n).toNat - A000007 n

end

end A102227.P17293964057561697469

/-! ## A102227.P16489162979048216692

`A102225(A000124(n))-A340998(n)`
-/

namespace A102227.P16489162979048216692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102225 (A000124 n).toNat - A340998 (n + 140)

end

end A102227.P16489162979048216692

/-! ## A102227.P13493588718557801824

`A057427(n)*A102225(A000124(n))`
-/

namespace A102227.P13493588718557801824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n * A102225 (A000124 n).toNat

end

end A102227.P13493588718557801824

/-! ## A102227.P11409426235173383032

`ceil(n/A000041(n))*A102225(A000124(n))`
-/

namespace A102227.P11409426235173383032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n : ℚ) / (A000041 n : ℚ)⌉ * A102225 (A000124 n).toNat

end

end A102227.P11409426235173383032

/-!
# A102229: Column 1 of triangular matrix A102228, in which the first differences of row k forms row (k+1) of its matrix square-root (A102225).

The programs for A102229, there is no canonical definition to state claims against.
-/

/-! ## A102229.P17094751909234322025

`A102226(n+1)-abs(A102227(n+1))`
-/

namespace A102229.P17094751909234322025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102226 (n + 1) - |A102227 (n + 1)|

end

end A102229.P17094751909234322025

/-! ## A102229.P16921263390078664081

`A102228(A000124(n))%(10^n)`
-/

namespace A102229.P16921263390078664081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A102228 (A000124 n).toNat) (10 ^ n : ℤ)

end

end A102229.P16921263390078664081

/-! ## A102229.P2427553677211418445

`A102228(A000124(n))-A000038(n)`
-/

namespace A102229.P2427553677211418445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102228 (A000124 n).toNat - A000038 n

end

end A102229.P2427553677211418445

/-! ## A102229.P8218809760168022602

`A057427(n)*A102228(A000124(n))`
-/

namespace A102229.P8218809760168022602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n * A102228 (A000124 n).toNat

end

end A102229.P8218809760168022602

/-! ## A102229.P4080703155576359474

`A102228(A000124(n))*A326029(n)`
-/

namespace A102229.P4080703155576359474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102228 (A000124 n).toNat * A326029 n

end

end A102229.P4080703155576359474

/-!
# A102230: Triangle, read by rows, where each column equals the convolution of A032349 with the prior column, starting with column 0 equal to A032349 shift right.

The programs for A102230, there is no canonical definition to state claims against.
-/

/-! ## A102230.P13657863010266780849

`A147724(n)-A323073(A192538(n+1))`
-/

namespace A102230.P13657863010266780849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147724 n - A323073 (A192538 (n + 1)).toNat

end

end A102230.P13657863010266780849

/-!
# A102231: Column 1 of triangle A102230 and equals the convolution of A032349 with A032349 shift right.

The programs for A102231, there is no canonical definition to state claims against.
-/

/-! ## A102231.P13596393481426393955

`record[A002262(n)*A102230(n)]`
-/

namespace A102231.P13596393481426393955
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n * A102230 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A102231.P13596393481426393955

/-! ## A102231.P5187743900293532488

`record[A053616(n)*A102230(n)]`
-/

namespace A102231.P5187743900293532488
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053616 n * A102230 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A102231.P5187743900293532488

/-! ## A102231.P8422929957190903731

`record[A083856(n)*A102230(n)]`
-/

namespace A102231.P8422929957190903731
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083856 n * A102230 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A102231.P8422929957190903731

/-! ## A102231.P5050684916708611303

`record[A102230(n)*A180662(n)]`
-/

namespace A102231.P5050684916708611303
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102230 n * A180662 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A102231.P5050684916708611303

/-! ## A102231.P5231373396471962458

`record[A102230(n)*A318753(n)]`
-/

namespace A102231.P5231373396471962458
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102230 n * A318753 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A102231.P5231373396471962458

/-!
# A102232: Number of preferential arrangements of n labeled elements when at least k=three ranks are required.

The programs for A102232, there is no canonical definition to state claims against.
-/

/-! ## A102232.P16130860027109363520

`A052856(n)-2^n`
-/

namespace A102232.P16130860027109363520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052856 n - (2 ^ n : ℤ)

end

end A102232.P16130860027109363520

/-! ## A102232.P16174248981941629338

`A000670(n)-A255047(n)`
-/

namespace A102232.P16174248981941629338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000670 n - A255047 n

end

end A102232.P16174248981941629338

/-! ## A102232.P7066010426507673190

`A052875(n)+1-A255047(n)`
-/

namespace A102232.P7066010426507673190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052875 n + (1 - A255047 n)

end

end A102232.P7066010426507673190

/-! ## A102232.P3842622120297368391

`2*A328509(n)-A332873(n)`
-/

namespace A102232.P3842622120297368391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A328509 n - A332873 n

end

end A102232.P3842622120297368391

/-! ## A102232.P4064590554946568485

`ceil(A000629(n)/2-A255047(n))`
-/

namespace A102232.P4064590554946568485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A000629 n : ℚ) / 2 - (A255047 n : ℚ)⌉

end

end A102232.P4064590554946568485

/-! ## A102232.P8699801430897408210

`A002051(n+1)+1-A011782(n)`
-/

namespace A102232.P8699801430897408210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002051 (n + 1) + (1 - A011782 n)

end

end A102232.P8699801430897408210

/-! ## A102232.P12660735597256180412

`A000670(n)-A000225(round(sqrt(n²+1)))`
-/

namespace A102232.P12660735597256180412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000670 n - A000225 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat

end

end A102232.P12660735597256180412

/-! ## A102232.P16767664725994604026

`A000670(n)-A052551(A004273(n))`
-/

namespace A102232.P16767664725994604026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000670 n - A052551 (A004273 n).toNat

end

end A102232.P16767664725994604026

/-! ## A102232.P15266637319502062203

`A000670(n)-A052551(A163985(n))`
-/

namespace A102232.P15266637319502062203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000670 n - A052551 (A163985 n).toNat

end

end A102232.P15266637319502062203

/-! ## A102232.P7940560376110515761

`(A000670(n)-A000225(n))%A000556(n)`
-/

namespace A102232.P7940560376110515761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000670 n - A000225 n) (A000556 n)

end

end A102232.P7940560376110515761

/-!
# A102233: Number of preferential arrangements of n labeled elements when at least k=3 elements per rank are required.

The programs for A102233, there is no canonical definition to state claims against.
-/

/-! ## A102233.P12135822639383400901

`A253580(A006505(n)²)`
-/

namespace A102233.P12135822639383400901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253580 (A006505 n ^ 2).toNat

end

end A102233.P12135822639383400901

/-! ## A102233.P600496168278011132

`A308178(A006505(n)²)`
-/

namespace A102233.P600496168278011132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308178 (A006505 n ^ 2).toNat

end

end A102233.P600496168278011132

/-! ## A102233.P10943130465301117808

`A110656(4*A339014(n))`
-/

namespace A102233.P10943130465301117808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110656 (4 * A339014 n).toNat

end

end A102233.P10943130465301117808

/-! ## A102233.P17215436533751111716

`A051724(6*A339014(n))`
-/

namespace A102233.P17215436533751111716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051724 (6 * A339014 n).toNat

end

end A102233.P17215436533751111716

/-! ## A102233.P15325045504186602220

`A106615(7*A339014(n))`
-/

namespace A102233.P15325045504186602220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106615 (7 * A339014 n).toNat

end

end A102233.P15325045504186602220

/-!
# A102234: Slowest increasing sequence such that no digit "d" has a copy of itself at "d" digits, left or right.

The programs for A102234, there is no canonical definition to state claims against.
-/

/-! ## A102234.P16976720507803428476

`lt[A132387(A036862(n+1)), A007953(n)]`
-/

namespace A102234.P16976720507803428476
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132387 (A036862 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A102234.P16976720507803428476

/-! ## A102234.P765040792464541274

`A264981(A275063(n))+A007095(A007095(n))`
-/

namespace A102234.P765040792464541274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264981 (A275063 n).toNat + A007095 (A007095 n).toNat

end

end A102234.P765040792464541274

/-! ## A102234.P16883288377267563365

`∑[gcd(A168548(n), A214326(n+1))]`
-/

namespace A102234.P16883288377267563365
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A168548 n) (A214326 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A102234.P16883288377267563365

/-! ## A102234.P7217298550822172892

`∑[A267392(A096827(A017984(n)))]`
-/

namespace A102234.P7217298550822172892
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267392 (A096827 (A017984 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A102234.P7217298550822172892

/-! ## A102234.P10262034716634973772

`eq[A017887(n), A039653(A017891(n))]`
-/

namespace A102234.P10262034716634973772
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017887 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039653 (A017891 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A102234.P10262034716634973772

/-!
# A102235: Slowest increasing sequence such that no digit "d" from any a(n) has a copy of itself in a(n+d), left or right.

The programs for A102235, there is no canonical definition to state claims against.
-/

/-! ## A102235.P11907526951883686359

`lt[A151949(n), A039930(n+1)]`
-/

namespace A102235.P11907526951883686359
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151949 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039930 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A102235.P11907526951883686359

/-! ## A102235.P5730560270820341068

`lt[A338827(n), A039930(n+1)]`
-/

namespace A102235.P5730560270820341068
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338827 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039930 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A102235.P5730560270820341068

/-! ## A102235.P13516247578250834487

`A130577(lt[A051451(n+1), A130545(n+1)])`
-/

namespace A102235.P13516247578250834487
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051451 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130577 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A102235.P13516247578250834487

/-!
# A102236: Slowest increasing sequence such that a(n) has a copy of itself in a(n+a(n)), with a(0)=0 and a(1)=1.

The programs for A102236, there is no canonical definition to state claims against.
-/

/-! ## A102236.P3638641452479253072

`eq[A106747(n), A106747(A347470(n))]`
-/

namespace A102236.P3638641452479253072
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106747 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106747 (A347470 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A102236.P3638641452479253072

/-! ## A102236.P17731790773918926201

`eq[A235049(n), A235049(A347470(n))]`
-/

namespace A102236.P17731790773918926201
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235049 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235049 (A347470 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A102236.P17731790773918926201

/-! ## A102236.P3254770268132012539

`lt[A222305(n+1), A222224(n)+1]`
-/

namespace A102236.P3254770268132012539
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222305 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222224 n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A102236.P3254770268132012539

/-! ## A102236.P3277366199243491785

`eq[A014581(A213217(n)), A102669(n)]`
-/

namespace A102236.P3277366199243491785
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014581 (A213217 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102669 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A102236.P3277366199243491785

/-! ## A102236.P6680125220664858545

`eq[A000030(n), A022894(A177895(n))]`
-/

namespace A102236.P6680125220664858545
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000030 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022894 (A177895 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A102236.P6680125220664858545

/-!
# A102239: a(n) = (Sum_{i=0..n} 5^i) + 1 - (Sum_{i=0..n} 5^i) mod 2.

The programs for A102239, the canonical program `A102239.P15409400863625826799` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A102239 has offset 0).

The definition of A102239 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A102239.P15409400863625826799

`5*a(n-1)+a(n-2)-5*a(n-3)` with `a(0)=1, a(1)=7, a(2)=31`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A102239

/-- `5*a(n-1)+a(n-2)-5*a(n-3)` -/
def P15409400863625826799.Spec : Prop :=
  ∀ n, P15409400863625826799.a n = A102239 n

theorem P15409400863625826799.correct : P15409400863625826799.Spec := by
  intro n
  simp only [A102239]

end A102239

/-! ## A102239.P18207164572284124855

`or(1, ∑[5^n])`
-/

namespace A102239.P18207164572284124855
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5 ^ n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A102239.P18207164572284124855

namespace A102239

/-- `or(1, ∑[5^n])` -/
def P18207164572284124855.Spec : Prop :=
  ∀ n, (P18207164572284124855.a n : ℤ) = A102239 n

end A102239

/-! ## A102239.P5827088407755663415

`∑[5^n]+n%2`
-/

namespace A102239.P5827088407755663415
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5 ^ n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + n % 2

end

end A102239.P5827088407755663415

namespace A102239

/-- `∑[5^n]+n%2` -/
def P5827088407755663415.Spec : Prop :=
  ∀ n, (P5827088407755663415.a n : ℤ) = A102239 n

end A102239

/-! ## A102239.P13937322277548854383

`∑[5^n]+and(1, n)`
-/

namespace A102239.P13937322277548854383
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5 ^ n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + Nat.land 1 n

end

end A102239.P13937322277548854383

namespace A102239

/-- `∑[5^n]+and(1, n)` -/
def P13937322277548854383.Spec : Prop :=
  ∀ n, (P13937322277548854383.a n : ℤ) = A102239 n

end A102239

/-! ## A102239.P15075281640478187295

`xor(and(1, n), ∑[5^n])`
-/

namespace A102239.P15075281640478187295
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5 ^ n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor (Nat.land 1 n) (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A102239.P15075281640478187295

namespace A102239

/-- `xor(and(1, n), ∑[5^n])` -/
def P15075281640478187295.Spec : Prop :=
  ∀ n, (P15075281640478187295.a n : ℤ) = A102239 n

end A102239

/-! ## A102239.P12102824897893436641

`ogf((1+2x-5x^2)/(1-5x-x^2+5x^3))`
-/

namespace A102239.P12102824897893436641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 2, -5] [1, -5, -1, 5] n

end

end A102239.P12102824897893436641

namespace A102239

/-- `ogf((1+2x-5x^2)/(1-5x-x^2+5x^3))` -/
def P12102824897893436641.Spec : Prop :=
  ∀ n, P12102824897893436641.a n = A102239 n

end A102239

/-! ## A102239.P4475577469428073397

`round(or(4, 5^(n+1))/4)`
-/

namespace A102239.P4475577469428073397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((Nat.lor 4 (5 ^ (n + 1)) : ℚ) / 4)

end

end A102239.P4475577469428073397

namespace A102239

/-- `round(or(4, 5^(n+1))/4)` -/
def P4475577469428073397.Spec : Prop :=
  ∀ n, P4475577469428073397.a n = A102239 n

end A102239

/-! ## A102239.P2991538732395854960

`abs(ceil((-5)^(n+1)/4))`
-/

namespace A102239.P2991538732395854960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |⌈((-5) ^ (n + 1) : ℚ) / 4⌉|

end

end A102239.P2991538732395854960

namespace A102239

/-- `abs(ceil((-5)^(n+1)/4))` -/
def P2991538732395854960.Spec : Prop :=
  ∀ n, P2991538732395854960.a n = A102239 n

end A102239

/-! ## A102239.P14838001486357220122

`∑[5^n]+val(n²+1, 2)`
-/

namespace A102239.P14838001486357220122
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5 ^ n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + SequenceMachineLib.valuation (n ^ 2 + 1) 2

end

end A102239.P14838001486357220122

namespace A102239

/-- `∑[5^n]+val(n²+1, 2)` -/
def P14838001486357220122.Spec : Prop :=
  ∀ n, (P14838001486357220122.a n : ℤ) = A102239 n

end A102239

/-! ## A102239.P2299229293126004363

`4*a(n-1)+5*a(n-2)-2` with `a(0)=1, a(1)=7`
-/

namespace A102239.P2299229293126004363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 7] fun n a =>
  4 * a (n - 1) + 5 * a (n - 2) - 2

end

end A102239.P2299229293126004363

namespace A102239

/-- `4*a(n-1)+5*a(n-2)-2` -/
def P2299229293126004363.Spec : Prop :=
  ∀ n, P2299229293126004363.a n = A102239 n

end A102239

/-! ## A102239.P15376256546836588549

`∑[A274072(n)]+1`
-/

namespace A102239.P15376256546836588549
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274072 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A102239.P15376256546836588549

namespace A102239

/-- `∑[A274072(n)]+1` -/
def P15376256546836588549.Spec : Prop :=
  ∀ n, P15376256546836588549.a n = A102239 n

end A102239

/-! ## A102239.P17156460141141022410

`3*A039302(n)-2`
-/

namespace A102239.P17156460141141022410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A039302 n - 2

end

end A102239.P17156460141141022410

namespace A102239

/-- `3*A039302(n)-2` -/
def P17156460141141022410.Spec : Prop :=
  ∀ n, P17156460141141022410.a n = A102239 n

end A102239

/-! ## A102239.P12096134057089710950

`A057651(n)+1-a(n-1)` with `a(0)=1`
-/

namespace A102239.P12096134057089710950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A057651 n + (1 - a (n - 1))

end

end A102239.P12096134057089710950

namespace A102239

/-- `A057651(n)+1-a(n-1)` -/
def P12096134057089710950.Spec : Prop :=
  ∀ n, P12096134057089710950.a n = A102239 n

end A102239

/-! ## A102239.P15377339636605394653

`A132158(3*n)+a(n-1)` with `a(0)=1`
-/

namespace A102239.P15377339636605394653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A132158 (3 * n) + a (n - 1)

end

end A102239.P15377339636605394653

namespace A102239

/-- `A132158(3*n)+a(n-1)` -/
def P15377339636605394653.Spec : Prop :=
  ∀ n, P15377339636605394653.a n = A102239 n

end A102239

/-! ## A102239.P1053245219479787051

`A003463(n+1)+A101455(n)²`
-/

namespace A102239.P1053245219479787051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003463 (n + 1) + A101455 n ^ 2

end

end A102239.P1053245219479787051

namespace A102239

/-- `A003463(n+1)+A101455(n)²` -/
def P1053245219479787051.Spec : Prop :=
  ∀ n, P1053245219479787051.a n = A102239 n

end A102239

/-! ## A102239.P15581057212048219752

`A166486(n²)+A003463(n+1)`
-/

namespace A102239.P15581057212048219752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166486 (n ^ 2) + A003463 (n + 1)

end

end A102239.P15581057212048219752

namespace A102239

/-- `A166486(n²)+A003463(n+1)` -/
def P15581057212048219752.Spec : Prop :=
  ∀ n, P15581057212048219752.a n = A102239 n

end A102239

/-! ## A102239.P1478690432583756738

`A003463(n+1)+A000034(n)-1`
-/

namespace A102239.P1478690432583756738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003463 (n + 1) + (A000034 n - 1)

end

end A102239.P1478690432583756738

namespace A102239

/-- `A003463(n+1)+A000034(n)-1` -/
def P1478690432583756738.Spec : Prop :=
  ∀ n, P1478690432583756738.a n = A102239 n

end A102239

/-! ## A102239.P14351794819841640613

`A166486(2*n)+A003463(n+1)*A166486(2*n+1)`
-/

namespace A102239.P14351794819841640613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166486 (2 * n) + A003463 (n + 1) * A166486 (2 * n + 1)

end

end A102239.P14351794819841640613

namespace A102239

/-- `A166486(2*n)+A003463(n+1)*A166486(2*n+1)` -/
def P14351794819841640613.Spec : Prop :=
  ∀ n, P14351794819841640613.a n = A102239 n

end A102239

/-! ## A102239.P15174571487971581250

`ceil(A189744(n+2)/6)`
-/

namespace A102239.P15174571487971581250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A189744 (n + 2) : ℚ) / 6⌉

end

end A102239.P15174571487971581250

namespace A102239

/-- `ceil(A189744(n+2)/6)` -/
def P15174571487971581250.Spec : Prop :=
  ∀ n, P15174571487971581250.a n = A102239 n

end A102239

/-!
# A102242: Expansion of Pi^2 in golden base (i.e., in irrational base phi = (1 + sqrt(5))/2).

The programs for A102242, there is no canonical definition to state claims against.
-/

/-! ## A102242.P6935430897617663867

`and(∑[A045912(2*n+1)], A011558(n+1))`
-/

namespace A102242.P6935430897617663867
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045912 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (∑ j ∈ Finset.range (n + 1), f1 j) (A011558 (n + 1))

end

end A102242.P6935430897617663867

/-! ## A102242.P9049744078149580583

`val(A289364(A063444(n+1)), 7)`
-/

namespace A102242.P9049744078149580583
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A289364 (A063444 (n + 1)).toNat).toNat 7

end

end A102242.P9049744078149580583

/-! ## A102242.P8019700946993623873

`A354058(A216911(n+1))`
-/

namespace A102242.P8019700946993623873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354058 (A216911 (n + 1)).toNat

end

end A102242.P8019700946993623873

/-! ## A102242.P11854701454463912620

`A101808(A043404(n+1))`
-/

namespace A102242.P11854701454463912620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101808 (A043404 (n + 1)).toNat

end

end A102242.P11854701454463912620

/-! ## A102242.P7274435433840524066

`A076478(A062401(n+1)+A002411(n))`
-/

namespace A102242.P7274435433840524066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076478 (A062401 (n + 1) + A002411 n).toNat

end

end A102242.P7274435433840524066

/-!
# A102243: Expansion of Pi in golden base (i.e., in irrational base phi = (1+sqrt(5))/2) = A001622.

The programs for A102243, there is no canonical definition to state claims against.
-/

/-! ## A102243.P7941942210437557312

`A353814(A003415(2*n+3)*A039950(n+1))`
-/

namespace A102243.P7941942210437557312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353814 (A003415 (2 * n + 3) * A039950 (n + 1)).toNat

end

end A102243.P7941942210437557312

/-! ## A102243.P17781550570814447233

`abs(A238469(A278217(n))^A110624(n+1))`
-/

namespace A102243.P17781550570814447233
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  |(A238469 (A278217 n).toNat : ℚ) ^ (A110624 (n + 1) : ℤ)|

end

end A102243.P17781550570814447233

/-! ## A102243.P17859678719622460767

`A030308(A059226(n)*A239933(n+4))`
-/

namespace A102243.P17859678719622460767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030308 (A059226 n * A239933 (n + 4)).toNat

end

end A102243.P17859678719622460767

/-! ## A102243.P14317419803579563853

`A010059(and(A001969(n+1), A114886(3*(n+1))))`
-/

namespace A102243.P14317419803579563853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010059 (Int.land (A001969 (n + 1)) (A114886 (3 * (n + 1)))).toNat

end

end A102243.P14317419803579563853

/-! ## A102243.P16484860443580621081

`A000041(A287166(2*n+1))%2`
-/

namespace A102243.P16484860443580621081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000041 (A287166 (2 * n + 1)).toNat) 2

end

end A102243.P16484860443580621081

/-!
# A102244: a(n) = exp(-1) * (n+1)! * Sum_{i>j>=0} j^n/i!.

The programs for A102244, there is no canonical definition to state claims against.
-/

/-! ## A102244.P14363519090377493971

`A257882(2^n*a(n-1))` with `a(0)=1`
-/

namespace A102244.P14363519090377493971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A257882 ((2 ^ n : ℤ) * a (n - 1)).toNat

end

end A102244.P14363519090377493971

/-!
# A102248: Numbers n such that n111 is prime.

The programs for A102248, there is no canonical definition to state claims against.
-/

/-! ## A102248.P17932612502648745751

`eq[1, A068695(A017281(A017281(n)))]`
-/

namespace A102248.P17932612502648745751
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068695 (A017281 (A017281 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A102248.P17932612502648745751

/-!
# A102250: Indices of semiprime Haüy rhombic dodecahedral numbers.

The programs for A102250, there is no canonical definition to state claims against.
-/

/-! ## A102250.P735611771844627732

`ceil(p?[A131732(A067186(n+1))]/2)`
-/

namespace A102250.P735611771844627732
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131732 (A067186 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) : ℚ) / 2⌉

end

end A102250.P735611771844627732

/-! ## A102250.P17947822801728382565

`ceil(p?[A008619(A067186(n+3))]/2)`
-/

namespace A102250.P17947822801728382565
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A067186 (n + 3)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) : ℚ) / 2⌉

end

end A102250.P17947822801728382565

/-! ## A102250.P8271720210277477040

`round(p?[A131732(A067186(n+2))]/2)`
-/

namespace A102250.P8271720210277477040
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131732 (A067186 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) : ℚ) / 2)

end

end A102250.P8271720210277477040

/-! ## A102250.P13145974639656889582

`eq[A129634(4*n), A175126(2*n+1)]+1`
-/

namespace A102250.P13145974639656889582
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129634 (4 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175126 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A102250.P13145974639656889582

/-! ## A102250.P5119159491265613293

`A001057(p?[A131732(A067186(n+1))])`
-/

namespace A102250.P5119159491265613293
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131732 (A067186 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A102250.P5119159491265613293

/-! ## A102250.P12174814032640343615

`A065033(p?[A131732(A067186(n+1))])`
-/

namespace A102250.P12174814032640343615
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131732 (A067186 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A102250.P12174814032640343615

/-! ## A102250.P12148069600730522765

`A008619(p?[A008619(A067186(n+3))])`
-/

namespace A102250.P12148069600730522765
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A067186 (n + 3)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A102250.P12148069600730522765

/-!
# A102251: Begin with 1, multiply each digit by 2.

The programs for A102251, there is no canonical definition to state claims against.
-/

/-! ## A102251.P5764504340500773061

`A036453(n+1)*A102256(A028310(n))`
-/

namespace A102251.P5764504340500773061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036453 (n + 1) * A102256 (A028310 n).toNat

end

end A102251.P5764504340500773061

/-! ## A102251.P4730869996387744880

`(2-A000007(n))*A102256(A028310(n))`
-/

namespace A102251.P4730869996387744880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - A000007 n) * A102256 (A028310 n).toNat

end

end A102251.P4730869996387744880

/-! ## A102251.P6496433019093681839

`A000032(C(2, n+2))*A102256(A028310(n))`
-/

namespace A102251.P6496433019093681839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 (Nat.choose 2 (n + 2)) * A102256 (A028310 n).toNat

end

end A102251.P6496433019093681839

/-! ## A102251.P7792664455290996514

`A036453(n+1)*A102256(A000007(n)+n)`
-/

namespace A102251.P7792664455290996514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036453 (n + 1) * A102256 (A000007 n + (n : ℤ)).toNat

end

end A102251.P7792664455290996514

/-! ## A102251.P13911586675308896111

`A000034(lcm(64, n)/64)*A102256(A028310(n))`
-/

namespace A102251.P13911586675308896111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (SequenceMachineLib.roundAway ((Nat.lcm 64 n : ℚ) / 64)).toNat * A102256 (A028310 n).toNat

end

end A102251.P13911586675308896111

/-! ## A102251.P1544592010646488573

`A020639(a(n-1))*A102256(A028310(n))` with `a(0)=1, a(1)=2`
-/

namespace A102251.P1544592010646488573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  A020639 (a (n - 1)).toNat * A102256 (A028310 n).toNat

end

end A102251.P1544592010646488573

/-! ## A102251.P9632814584738673945

`A000032(floor(1/(n+1)))*A102256(A028310(n))`
-/

namespace A102251.P9632814584738673945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 ⌊1 / (n + 1 : ℚ)⌋.toNat * A102256 (A028310 n).toNat

end

end A102251.P9632814584738673945

/-! ## A102251.P18403852492043614541

`A020639(A000118(n))*A102256(A028310(n))`
-/

namespace A102251.P18403852492043614541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A000118 n).toNat * A102256 (A028310 n).toNat

end

end A102251.P18403852492043614541

/-! ## A102251.P4322053445868664078

`A020639(A004011(n))*A102256(A028310(n))`
-/

namespace A102251.P4322053445868664078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A004011 n).toNat * A102256 (A028310 n).toNat

end

end A102251.P4322053445868664078

/-! ## A102251.P1935096570395011910

`A020639(A004277(n))*A102256(A028310(n))`
-/

namespace A102251.P1935096570395011910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A004277 n).toNat * A102256 (A028310 n).toNat

end

end A102251.P1935096570395011910

/-! ## A102251.P8545746910598603882

`A020639(A008574(n))*A102256(A028310(n))`
-/

namespace A102251.P8545746910598603882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A008574 n).toNat * A102256 (A028310 n).toNat

end

end A102251.P8545746910598603882

/-! ## A102251.P3100857251232206615

`A020639(A311613(n))*A102256(A028310(n))`
-/

namespace A102251.P3100857251232206615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A311613 n).toNat * A102256 (A028310 n).toNat

end

end A102251.P3100857251232206615

/-! ## A102251.P15701671942332748408

`A020639(A315365(n))*A102256(A028310(n))`
-/

namespace A102251.P15701671942332748408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A315365 n).toNat * A102256 (A028310 n).toNat

end

end A102251.P15701671942332748408

/-! ## A102251.P17991188813216705484

`A001222(A001747(n+1))*A102256(A028310(n))`
-/

namespace A102251.P17991188813216705484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A001747 (n + 1)).toNat * A102256 (A028310 n).toNat

end

end A102251.P17991188813216705484

/-! ## A102251.P2962498922837154873

`A083952(A000040(n+1))*A102256(A028310(n))`
-/

namespace A102251.P2962498922837154873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083952 (A000040 (n + 1)).toNat * A102256 (A028310 n).toNat

end

end A102251.P2962498922837154873

/-! ## A102251.P777027449657596394

`A102256(A028310(n))*A256750(A020639(n+1))`
-/

namespace A102251.P777027449657596394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102256 (A028310 n).toNat * A256750 (A020639 (n + 1)).toNat

end

end A102251.P777027449657596394

/-! ## A102251.P7214377194592957715

`A020639(A000010(n+2))*A102256(A028310(n))`
-/

namespace A102251.P7214377194592957715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A000010 (n + 2)).toNat * A102256 (A028310 n).toNat

end

end A102251.P7214377194592957715

/-! ## A102251.P17276022722586293295

`A020639(A000040(n+1)-1)*A102256(A028310(n))`
-/

namespace A102251.P17276022722586293295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A000040 (n + 1) - 1).toNat * A102256 (A028310 n).toNat

end

end A102251.P17276022722586293295

/-! ## A102251.P8563635463746202530

`A001222(2*A006530(n+1))*A102256(A028310(n))`
-/

namespace A102251.P8563635463746202530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (2 * A006530 (n + 1)).toNat * A102256 (A028310 n).toNat

end

end A102251.P8563635463746202530

/-!
# A102253: Begin with 3, multiply each digit by 2.

The programs for A102253, there is no canonical definition to state claims against.
-/

/-! ## A102253.P2461344430152898766

`2*A102257(A000007(a(n-1))+n)` with `a(0)=3`
-/

namespace A102253.P2461344430152898766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  2 * A102257 (A000007 (a (n - 1)).toNat + (n : ℤ)).toNat

end

end A102253.P2461344430152898766

/-! ## A102253.P12048594970177126280

`A000032(floor(1/(n+1)))*A102257(A000007(n)+n)`
-/

namespace A102253.P12048594970177126280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 ⌊1 / (n + 1 : ℚ)⌋.toNat * A102257 (A000007 n + (n : ℤ)).toNat

end

end A102253.P12048594970177126280

/-! ## A102253.P4728885812709684574

`A014963(A001316(n))*A102257(A028310(n))`
-/

namespace A102253.P4728885812709684574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A001316 n).toNat * A102257 (A028310 n).toNat

end

end A102253.P4728885812709684574

/-! ## A102253.P7751736199222397302

`A020639(A000132(n))*A102257(A028310(n))`
-/

namespace A102253.P7751736199222397302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A000132 n).toNat * A102257 (A028310 n).toNat

end

end A102253.P7751736199222397302

/-! ## A102253.P16288605083133786410

`A020639(A004277(n))*A102257(A028310(n))`
-/

namespace A102253.P16288605083133786410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A004277 n).toNat * A102257 (A028310 n).toNat

end

end A102253.P16288605083133786410

/-! ## A102253.P8758350881922763890

`A020639(A007843(n))*A102257(A028310(n))`
-/

namespace A102253.P8758350881922763890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A007843 n).toNat * A102257 (A028310 n).toNat

end

end A102253.P8758350881922763890

/-! ## A102253.P5849773762002571456

`A020639(A008579(n))*A102257(A028310(n))`
-/

namespace A102253.P5849773762002571456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A008579 n).toNat * A102257 (A028310 n).toNat

end

end A102253.P5849773762002571456

/-! ## A102253.P14591605844544978867

`A020639(A000010(n+2))*A102257(A000007(n)+n)`
-/

namespace A102253.P14591605844544978867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A000010 (n + 2)).toNat * A102257 (A000007 n + (n : ℤ)).toNat

end

end A102253.P14591605844544978867

/-! ## A102253.P11753523521609677012

`A020639(A000040(n+1)-1)*A102257(A000007(n)+n)`
-/

namespace A102253.P11753523521609677012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A000040 (n + 1) - 1).toNat * A102257 (A000007 n + (n : ℤ)).toNat

end

end A102253.P11753523521609677012

/-!
# A102254: Begin with 3, multiply each digit by 2, keeping the memory of the groupings of the preceding digits.

The programs for A102254, there is no canonical definition to state claims against.
-/

/-! ## A102254.P15842999631699052160

`A322131(a(n-1))` with `a(0)=3`
-/

namespace A102254.P15842999631699052160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  A322131 (a (n - 1)).toNat

end

end A102254.P15842999631699052160

/-! ## A102254.P16160099004085479848

`2*A330336(a(n-1))` with `a(0)=3`
-/

namespace A102254.P16160099004085479848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  2 * A330336 (a (n - 1)).toNat

end

end A102254.P16160099004085479848

/-! ## A102254.P3190865738600103839

`record[A322131(a(A328903(n)))]` with `a(0)=3`
-/

namespace A102254.P3190865738600103839
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [3] fun n f1 =>
  A322131 (f1 (A328903 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A102254.P3190865738600103839

/-!
# A102256: Begin with 1, multiply each digit by 2, separate the digits.

The programs for A102256, there is no canonical definition to state claims against.
-/

/-! ## A102256.P1628369241134540410

`A102251(n+1)/2`
-/

namespace A102256.P1628369241134540410
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A102251 (n + 1) : ℚ) / 2

end

end A102256.P1628369241134540410

/-! ## A102256.P16037230551432093271

`Δ[∑[A102251(n)]/2]`
-/

namespace A102256.P16037230551432093271
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102251 n

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℤ) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A102256.P16037230551432093271

/-! ## A102256.P6315665271113850817

`A001281(A102251(n+1))`
-/

namespace A102256.P6315665271113850817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A102251 (n + 1)).toNat

end

end A102256.P6315665271113850817

/-! ## A102256.P10065596656709174025

`A004524(A102251(n+1)+1)`
-/

namespace A102256.P10065596656709174025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004524 (A102251 (n + 1) + 1).toNat

end

end A102256.P10065596656709174025

/-! ## A102256.P17666269279333795637

`A004526(A102251(n+1)+1)`
-/

namespace A102256.P17666269279333795637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A102251 (n + 1) + 1).toNat

end

end A102256.P17666269279333795637

/-! ## A102256.P2014762509263836477

`A028242(A102251(n+1)+1)`
-/

namespace A102256.P2014762509263836477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028242 (A102251 (n + 1) + 1).toNat

end

end A102256.P2014762509263836477

/-! ## A102256.P6648427196239814442

`A003602(A102251(n+1)-1)`
-/

namespace A102256.P6648427196239814442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003602 (A102251 (n + 1) - 1).toNat

end

end A102256.P6648427196239814442

/-! ## A102256.P13489903210470592106

`A140427(A102251(n+1)+2)`
-/

namespace A102256.P13489903210470592106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140427 (A102251 (n + 1) + 2).toNat

end

end A102256.P13489903210470592106

/-! ## A102256.P2306817960914791005

`A052938(A102251(n+1)-2)`
-/

namespace A102256.P2306817960914791005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052938 (A102251 (n + 1) - 2).toNat

end

end A102256.P2306817960914791005

/-! ## A102256.P2686617220244858345

`A002265(2*A102251(n+1))`
-/

namespace A102256.P2686617220244858345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (2 * A102251 (n + 1)).toNat

end

end A102256.P2686617220244858345

/-! ## A102256.P12357891765978178816

`A183214(2*A102251(n+1))`
-/

namespace A102256.P12357891765978178816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183214 (2 * A102251 (n + 1)).toNat

end

end A102256.P12357891765978178816

/-! ## A102256.P2018714009250430753

`A000030(5*A102251(n+1))`
-/

namespace A102256.P2018714009250430753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000030 (5 * A102251 (n + 1)).toNat

end

end A102256.P2018714009250430753

/-! ## A102256.P12937727425870389067

`A004525(A102251(n+1))%(2*A000040(n+1))`
-/

namespace A102256.P12937727425870389067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A004525 (A102251 (n + 1)).toNat) (2 * A000040 (n + 1))

end

end A102256.P12937727425870389067

/-!
# A102257: Begin with 3, multiply each digit by 2, separate the digits.

The programs for A102257, there is no canonical definition to state claims against.
-/

/-! ## A102257.P2905899255862213266

`A102253(n+1)/2`
-/

namespace A102257.P2905899255862213266
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A102253 (n + 1) : ℚ) / 2

end

end A102257.P2905899255862213266

/-! ## A102257.P14378679571981579232

`Δ[∑[A102253(n)]/2]`
-/

namespace A102257.P14378679571981579232
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102253 n

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℤ) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A102257.P14378679571981579232

/-! ## A102257.P4343473938613812569

`A001281(A102253(n+1))`
-/

namespace A102257.P4343473938613812569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A102253 (n + 1)).toNat

end

end A102257.P4343473938613812569

/-! ## A102257.P15660696967139789486

`Δ[A008619(∑[A102253(n)])]`
-/

namespace A102257.P15660696967139789486
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102253 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A102257.P15660696967139789486

/-! ## A102257.P1052027779030424114

`Δ[A028242(∑[A102253(n)])]`
-/

namespace A102257.P1052027779030424114
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102253 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028242 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A102257.P1052027779030424114

/-! ## A102257.P9744255722553110357

`A004526(A102253(n+1)+1)`
-/

namespace A102257.P9744255722553110357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A102253 (n + 1) + 1).toNat

end

end A102257.P9744255722553110357

/-! ## A102257.P1579648068317385801

`A028242(A102253(n+1)+1)`
-/

namespace A102257.P1579648068317385801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028242 (A102253 (n + 1) + 1).toNat

end

end A102257.P1579648068317385801

/-! ## A102257.P10915648333437155915

`A001057(A102253(n+1)-1)`
-/

namespace A102257.P10915648333437155915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 (A102253 (n + 1) - 1).toNat

end

end A102257.P10915648333437155915

/-! ## A102257.P1445314043702781984

`A008619(A102253(n+1)-1)`
-/

namespace A102257.P1445314043702781984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A102253 (n + 1) - 1).toNat

end

end A102257.P1445314043702781984

/-! ## A102257.P17507164690675775371

`A002265(2*A102253(n+1))`
-/

namespace A102257.P17507164690675775371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (2 * A102253 (n + 1)).toNat

end

end A102257.P17507164690675775371

/-!
# A102258: Begin with 5, multiply each digit by 2.

The programs for A102258, there is no canonical definition to state claims against.
-/

/-! ## A102258.P9544959741711306431

`A036453(n+1)*A102259(A028310(n))`
-/

namespace A102258.P9544959741711306431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036453 (n + 1) * A102259 (A028310 n).toNat

end

end A102258.P9544959741711306431

/-! ## A102258.P9790787697549092296

`(A057427(n)+1)*A102259(A028310(n))`
-/

namespace A102258.P9790787697549092296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A057427 n + 1) * A102259 (A028310 n).toNat

end

end A102258.P9790787697549092296

/-! ## A102258.P13264002373704039031

`A036453(n+1)*A102259(A000007(n)+n)`
-/

namespace A102258.P13264002373704039031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036453 (n + 1) * A102259 (A000007 n + (n : ℤ)).toNat

end

end A102258.P13264002373704039031

/-! ## A102258.P16669781948691527332

`A020639(comp[2*(n+1)]+1)*A102259(A028310(n))`
-/

namespace A102258.P16669781948691527332
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + 1) * A102259 (A028310 n).toNat

end

end A102258.P16669781948691527332

/-! ## A102258.P13474179464516850517

`A014963(A001316(n))*A102259(A028310(n))`
-/

namespace A102258.P13474179464516850517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A001316 n).toNat * A102259 (A028310 n).toNat

end

end A102258.P13474179464516850517

/-! ## A102258.P4448272102836754562

`A000005(A008578(n+1))*A102259(A028310(n))`
-/

namespace A102258.P4448272102836754562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A008578 (n + 1)).toNat * A102259 (A028310 n).toNat

end

end A102258.P4448272102836754562

/-! ## A102258.P32783291646876237

`A020639(A000010(n+2))*A102259(A000007(n)+n)`
-/

namespace A102258.P32783291646876237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A000010 (n + 2)).toNat * A102259 (A000007 n + (n : ℤ)).toNat

end

end A102258.P32783291646876237

/-! ## A102258.P8356766565926923081

`A020639(A000040(n+1)-1)*A102259(A000007(n)+n)`
-/

namespace A102258.P8356766565926923081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A000040 (n + 1) - 1).toNat * A102259 (A000007 n + (n : ℤ)).toNat

end

end A102258.P8356766565926923081

/-!
# A102259: Begin with 5, multiply each digit by 2, separate the digits.

The programs for A102259, there is no canonical definition to state claims against.
-/

/-! ## A102259.P3958578697351940335

`A102258(n+2)/2`
-/

namespace A102259.P3958578697351940335
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A102258 (n + 2) : ℚ) / 2

end

end A102259.P3958578697351940335

/-! ## A102259.P14431924573909291658

`A001281(A102258(n+2))`
-/

namespace A102259.P14431924573909291658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A102258 (n + 2)).toNat

end

end A102259.P14431924573909291658

/-! ## A102259.P4210181895714105154

`A004524(A102258(n+2)+1)`
-/

namespace A102259.P4210181895714105154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004524 (A102258 (n + 2) + 1).toNat

end

end A102259.P4210181895714105154

/-! ## A102259.P5439483012368074599

`A004526(A102258(n+2)+1)`
-/

namespace A102259.P5439483012368074599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A102258 (n + 2) + 1).toNat

end

end A102259.P5439483012368074599

/-! ## A102259.P3737150445620565931

`A002265(2*A102258(n+2))`
-/

namespace A102259.P3737150445620565931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (2 * A102258 (n + 2)).toNat

end

end A102259.P3737150445620565931

/-! ## A102259.P1220543609032702311

`A059169(2*A102258(n+2)+1)`
-/

namespace A102259.P1220543609032702311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059169 (2 * A102258 (n + 2) + 1).toNat

end

end A102259.P1220543609032702311

/-! ## A102259.P3133355521025974345

`A110654(A102258(A000027(n+2)))`
-/

namespace A102259.P3133355521025974345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (A102258 (A000027 (n + 2)).toNat).toNat

end

end A102259.P3133355521025974345

/-!
# A102260: Begin with 5, multiply each digit by 2, keeping the memory of the groupings of the preceding digits.

The programs for A102260, there is no canonical definition to state claims against.
-/

/-! ## A102260.P8485538834676510467

`A322131(a(n-1))` with `a(0)=5`
-/

namespace A102260.P8485538834676510467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [5] fun n a =>
  A322131 (a (n - 1)).toNat

end

end A102260.P8485538834676510467

/-! ## A102260.P8527948256525680973

`2*A330336(a(n-1))` with `a(0)=5`
-/

namespace A102260.P8527948256525680973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [5] fun n a =>
  2 * A330336 (a (n - 1)).toNat

end

end A102260.P8527948256525680973

/-! ## A102260.P7001450908774662087

`2/A330336(a(n-1))^A129667(A038881(n+1))` with `a(0)=5`
-/

namespace A102260.P7001450908774662087
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [5] fun n a =>
  2 / (A330336 (SequenceMachineLib.roundAway (a (n - 1))).toNat : ℚ) ^ (A129667 (A038881 (n + 1)).toNat : ℤ)

end

end A102260.P7001450908774662087

/-! ## A102260.P14446511827271991861

`A004277(A330336(a(n-1)))` with `a(0)=5`
-/

namespace A102260.P14446511827271991861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [5] fun n a =>
  A004277 (A330336 (a (n - 1)).toNat).toNat

end

end A102260.P14446511827271991861

/-!
# A102261: a(n) = A002144(n) - A002145(n).

The programs for A102261, the canonical program `A102261.P11817500884935070454` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A102261 has offset 1).

The definition of A102261 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002144, A002145, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A102261.P11817500884935070454

`A002144(n+1)-A002145(n+1)`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A102261

/-- `A002144(n+1)-A002145(n+1)` -/
def P11817500884935070454.Spec : Prop :=
  ∀ n, P11817500884935070454.a n = A102261 (n + 1)

theorem P11817500884935070454.correct : P11817500884935070454.Spec := by
  intro n
  simp only [A102261, Nat.add_sub_cancel]

end A102261

/-! ## A102261.P9584013483165619961

`p?[4*n+1]-p?[4*n-1]`
-/

namespace A102261.P9584013483165619961
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (4 * n : ℤ) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) : ℤ) - f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

end

end A102261.P9584013483165619961

namespace A102261

/-- `p?[4*n+1]-p?[4*n-1]` -/
def P9584013483165619961.Spec : Prop :=
  ∀ n, P9584013483165619961.a n = A102261 (n + 1)

theorem P9584013483165619961.correct : P9584013483165619961.Spec := by
  intro n
  simp only [A102261, Nat.add_sub_cancel, A102261.P9584013483165619961.f1, A102261.P9584013483165619961.f2, A102261.P9584013483165619961.a, A102261.P11817500884935070454.a, A002144, A002144.P15538936588089724505.f1, A002144.P15538936588089724505.a, A002145, A002145.P4185971227795926526.f1, A002145.P4185971227795926526.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A102261

/-! ## A102261.P17701806008201068662

`4*A118480(n+1)+2`
-/

namespace A102261.P17701806008201068662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A118480 (n + 1) + 2

end

end A102261.P17701806008201068662

namespace A102261

/-- `4*A118480(n+1)+2` -/
def P17701806008201068662.Spec : Prop :=
  ∀ n, P17701806008201068662.a n = A102261 (n + 1)

end A102261

/-! ## A102261.P17883650750039484915

`A055131(n)/3-A002145(n+1)`
-/

namespace A102261.P17883650750039484915
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A055131 n : ℚ) / 3 - (A002145 (n + 1) : ℚ)

end

end A102261.P17883650750039484915

namespace A102261

/-- `A055131(n)/3-A002145(n+1)` -/
def P17883650750039484915.Spec : Prop :=
  ∀ n, P17883650750039484915.a n = (A102261 (n + 1) : ℚ)

theorem P17883650750039484915.correct : P17883650750039484915.Spec := by
  intro n
  simp only [A102261, Nat.add_sub_cancel, A102261.P17883650750039484915.a, A102261.P11817500884935070454.a, A002144, A002144.P15538936588089724505.f1, A002144.P15538936588089724505.a, A002145, A002145.P4185971227795926526.f1, A002145.P4185971227795926526.a, A055131, A055131.P8908878053079909028.f1, A055131.P8908878053079909028.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A102261

/-! ## A102261.P12084883488371580318

`A002144(n+1)-A339900(Δ[n²])`
-/

namespace A102261.P12084883488371580318
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002144 (n + 1) - A339900 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A102261.P12084883488371580318

namespace A102261

/-- `A002144(n+1)-A339900(Δ[n²])` -/
def P12084883488371580318.Spec : Prop :=
  ∀ n, P12084883488371580318.a n = A102261 (n + 1)

end A102261

/-! ## A102261.P15605751918347298212

`A055131(n)/3-A339900(Δ[n²])`
-/

namespace A102261.P15605751918347298212
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A055131 n : ℚ) / 3 - (A339900 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat : ℚ)

end

end A102261.P15605751918347298212

namespace A102261

/-- `A055131(n)/3-A339900(Δ[n²])` -/
def P15605751918347298212.Spec : Prop :=
  ∀ n, P15605751918347298212.a n = (A102261 (n + 1) : ℚ)

end A102261

/-! ## A102261.P9816585894050496388

`sqrt(A080109(n+1))-A002145(n+1)`
-/

namespace A102261.P9816585894050496388
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A080109 (n + 1) : ℝ) - (A002145 (n + 1) : ℝ)

end

end A102261.P9816585894050496388

namespace A102261

/-- `sqrt(A080109(n+1))-A002145(n+1)` -/
def P9816585894050496388.Spec : Prop :=
  ∀ n, P9816585894050496388.a n = (A102261 (n + 1) : ℝ)

end A102261

/-! ## A102261.P7577362027025955247

`A002144(n+1)-sqrt(A087691(n+1))`
-/

namespace A102261.P7577362027025955247
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A002144 (n + 1) : ℝ) - Real.sqrt (A087691 (n + 1) : ℝ)

end

end A102261.P7577362027025955247

namespace A102261

/-- `A002144(n+1)-sqrt(A087691(n+1))` -/
def P7577362027025955247.Spec : Prop :=
  ∀ n, P7577362027025955247.a n = (A102261 (n + 1) : ℝ)

end A102261

/-! ## A102261.P2962867163963694183

`A152680(n+1)+1-A002145(n+1)`
-/

namespace A102261.P2962867163963694183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152680 (n + 1) + (1 - A002145 (n + 1))

end

end A102261.P2962867163963694183

namespace A102261

/-- `A152680(n+1)+1-A002145(n+1)` -/
def P2962867163963694183.Spec : Prop :=
  ∀ n, P2962867163963694183.a n = A102261 (n + 1)

theorem P2962867163963694183.correct : P2962867163963694183.Spec := by
  intro n
  simp only [A102261, Nat.add_sub_cancel, A102261.P2962867163963694183.a, A102261.P11817500884935070454.a, A002144, A002144.P15538936588089724505.f1, A002144.P15538936588089724505.a, A002145, A002145.P4185971227795926526.f1, A002145.P4185971227795926526.a, A152680, A152680.P7400182187401258968.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A102261

/-! ## A102261.P15467701451336608698

`2*A002144(n+1)-A022757(n+1)`
-/

namespace A102261.P15467701451336608698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A002144 (n + 1) - A022757 (n + 1)

end

end A102261.P15467701451336608698

namespace A102261

/-- `2*A002144(n+1)-A022757(n+1)` -/
def P15467701451336608698.Spec : Prop :=
  ∀ n, P15467701451336608698.a n = A102261 (n + 1)

theorem P15467701451336608698.correct : P15467701451336608698.Spec := by
  intro n
  simp only [A102261, Nat.add_sub_cancel, A102261.P15467701451336608698.a, A102261.P11817500884935070454.a, A002144, A002144.P15538936588089724505.f1, A002144.P15538936588089724505.a, A002145, A002145.P4185971227795926526.f1, A002145.P4185971227795926526.a, A022757, A022757.P13043222127189136114.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A102261

/-! ## A102261.P1260064365116677163

`A022757(n+1)-2*A002145(n+1)`
-/

namespace A102261.P1260064365116677163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022757 (n + 1) - 2 * A002145 (n + 1)

end

end A102261.P1260064365116677163

namespace A102261

/-- `A022757(n+1)-2*A002145(n+1)` -/
def P1260064365116677163.Spec : Prop :=
  ∀ n, P1260064365116677163.a n = A102261 (n + 1)

theorem P1260064365116677163.correct : P1260064365116677163.Spec := by
  intro n
  simp only [A102261, Nat.add_sub_cancel, A102261.P1260064365116677163.a, A102261.P11817500884935070454.a, A002144, A002144.P15538936588089724505.f1, A002144.P15538936588089724505.a, A002145, A002145.P4185971227795926526.f1, A002145.P4185971227795926526.a, A022757, A022757.P13043222127189136114.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A102261

/-! ## A102261.P14539712643283724359

`A002144(n+1)-(A190105(n+1)+A005099(n+1))`
-/

namespace A102261.P14539712643283724359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002144 (n + 1) - (A190105 (n + 1) + A005099 (n + 1))

end

end A102261.P14539712643283724359

namespace A102261

/-- `A002144(n+1)-(A190105(n+1)+A005099(n+1))` -/
def P14539712643283724359.Spec : Prop :=
  ∀ n, P14539712643283724359.a n = A102261 (n + 1)

end A102261

/-! ## A102261.P14735250290113087766

`A002144(n+1)-A048630(n+1)/A002144(n+1)`
-/

namespace A102261.P14735250290113087766
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002144 (n + 1) : ℚ) - (A048630 (n + 1) : ℚ) / (A002144 (n + 1) : ℚ)

end

end A102261.P14735250290113087766

namespace A102261

/-- `A002144(n+1)-A048630(n+1)/A002144(n+1)` -/
def P14735250290113087766.Spec : Prop :=
  ∀ n, P14735250290113087766.a n = (A102261 (n + 1) : ℚ)

end A102261

/-! ## A102261.P9807282768900864635

`A048630(n+1)/A002145(n+1)-A002145(n+1)`
-/

namespace A102261.P9807282768900864635
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A048630 (n + 1) : ℚ) / (A002145 (n + 1) : ℚ) - (A002145 (n + 1) : ℚ)

end

end A102261.P9807282768900864635

namespace A102261

/-- `A048630(n+1)/A002145(n+1)-A002145(n+1)` -/
def P9807282768900864635.Spec : Prop :=
  ∀ n, P9807282768900864635.a n = (A102261 (n + 1) : ℚ)

end A102261

/-! ## A102261.P6797867349050562722

`A171555(n+1)/A005098(n+1)-A002145(n+1)`
-/

namespace A102261.P6797867349050562722
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A171555 (n + 1) : ℚ) / (A005098 (n + 1) : ℚ) - (A002145 (n + 1) : ℚ)

end

end A102261.P6797867349050562722

namespace A102261

/-- `A171555(n+1)/A005098(n+1)-A002145(n+1)` -/
def P6797867349050562722.Spec : Prop :=
  ∀ n, P6797867349050562722.a n = (A102261 (n + 1) : ℚ)

end A102261

/-! ## A102261.P10746636937727229767

`A002313(n+2)-A002145(n+1)`
-/

namespace A102261.P10746636937727229767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002313 (n + 2) - A002145 (n + 1)

end

end A102261.P10746636937727229767

namespace A102261

/-- `A002313(n+2)-A002145(n+1)` -/
def P10746636937727229767.Spec : Prop :=
  ∀ n, P10746636937727229767.a n = A102261 (n + 1)

end A102261

/-! ## A102261.P8974455327240951335

`A002144(n+1)-A045326(n+2)`
-/

namespace A102261.P8974455327240951335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002144 (n + 1) - A045326 (n + 2)

end

end A102261.P8974455327240951335

namespace A102261

/-- `A002144(n+1)-A045326(n+2)` -/
def P8974455327240951335.Spec : Prop :=
  ∀ n, P8974455327240951335.a n = A102261 (n + 1)

end A102261

/-! ## A102261.P9261079767019473498

`A280084(n+2)-A002145(n+1)`
-/

namespace A102261.P9261079767019473498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280084 (n + 2) - A002145 (n + 1)

end

end A102261.P9261079767019473498

namespace A102261

/-- `A280084(n+2)-A002145(n+1)` -/
def P9261079767019473498.Spec : Prop :=
  ∀ n, P9261079767019473498.a n = A102261 (n + 1)

end A102261

/-! ## A102261.P8457130924159731275

`A002313(n+2)-A045326(n+2)`
-/

namespace A102261.P8457130924159731275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002313 (n + 2) - A045326 (n + 2)

end

end A102261.P8457130924159731275

namespace A102261

/-- `A002313(n+2)-A045326(n+2)` -/
def P8457130924159731275.Spec : Prop :=
  ∀ n, P8457130924159731275.a n = A102261 (n + 1)

end A102261

/-!
# A102262: Numerators of probabilities in gift exchange problem with n people.

The programs for A102262, there is no canonical definition to state claims against.
-/

/-! ## A102262.P7849131651866192578

`A102263(n+2)/A001044(n+1)*A136300(n+2)`
-/

namespace A102262.P7849131651866192578
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A102263 (n + 2) : ℚ) / (A001044 (n + 1) : ℚ) * (A136300 (n + 2) : ℚ)

end

end A102262.P7849131651866192578

/-!
# A102263: Denominators of probabilities in gift exchange problem with n people.

The programs for A102263, there is no canonical definition to state claims against.
-/

/-! ## A102263.P18137483830551644173

`A068238(∏[(n+1)²/∏{p}[n+1, #]])`
-/

namespace A102263.P18137483830551644173
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℚ) / ((∏ p ∈ Nat.primeFactors (f2 n), p : ℕ) : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068238 (SequenceMachineLib.roundAway (∏ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A102263.P18137483830551644173

/-! ## A102263.P10455537463627962475

`A197863(ceil((n+1)²/2*n!)*∏{e}[n+1, #+1])`
-/

namespace A102263.P10455537463627962475
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197863 (⌈((n + 1) ^ 2 : ℚ) / 2 * (Nat.factorial n : ℚ)⌉ * ((∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + 1) : ℕ) : ℤ)).toNat

end

end A102263.P10455537463627962475

/-!
# A102264: Smallest prime for which 2^n exactly divides the class number h(-4p).

The programs for A102264, there is no canonical definition to state claims against.
-/

/-! ## A102264.P17737058980780935905

`A374156(A343977(n+2))`
-/

namespace A102264.P17737058980780935905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374156 (A343977 (n + 2)).toNat

end

end A102264.P17737058980780935905

/-!
# A102269: Primes p such that Q(sqrt(-21p)) has genus characters chi_{-3} = +1, chi_{-7} = +1.

The programs for A102269, there is no canonical definition to state claims against.
-/

/-! ## A102269.P18037724992618473910

`p?[or(2, A139492(n+2))]`
-/

namespace A102269.P18037724992618473910
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 2 (A139492 (n + 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A102269.P18037724992618473910

/-! ## A102269.P13830905906389487192

`p?[A011657(n+2)+12*n+7]`
-/

namespace A102269.P13830905906389487192
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011657 (n + 2) + (12 * n + 7 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A102269.P13830905906389487192

/-! ## A102269.P14495611230951812430

`p?[A017605(A047327(n+1))]`
-/

namespace A102269.P14495611230951812430
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017605 (A047327 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A102269.P14495611230951812430

/-! ## A102269.P575094860644846616

`p?[A072438(A139492(n+2))]`
-/

namespace A102269.P575094860644846616
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072438 (A139492 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A102269.P575094860644846616

/-! ## A102269.P2056250356812368666

`record[A072438(A139492(n+3))]`
-/

namespace A102269.P2056250356812368666
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072438 (A139492 (n + 3)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A102269.P2056250356812368666

/-! ## A102269.P13478964216507502988

`filter[A139492(n+2), A021913(#)]`
-/

namespace A102269.P13478964216507502988
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139492 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A021913 (f1 j).toNat = 1) n)

end

end A102269.P13478964216507502988

/-! ## A102269.P9780517863869801018

`filter[A139492(n+2), A038189(#)]`
-/

namespace A102269.P9780517863869801018
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139492 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A038189 (f1 j).toNat = 1) n)

end

end A102269.P9780517863869801018

/-! ## A102269.P2811154278863522506

`filter[A107133(n+2), A070563(#)]`
-/

namespace A102269.P2811154278863522506
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107133 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A070563 (f1 j).toNat = 1) n)

end

end A102269.P2811154278863522506

/-! ## A102269.P9547960361537488621

`filter[A107133(n+2), A088911(#)]`
-/

namespace A102269.P9547960361537488621
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107133 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A088911 (f1 j).toNat = 1) n)

end

end A102269.P9547960361537488621

/-! ## A102269.P4995096124271593579

`filter[A107133(n+2), A095130(#)]`
-/

namespace A102269.P4995096124271593579
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107133 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A095130 (f1 j).toNat = 1) n)

end

end A102269.P4995096124271593579

/-!
# A102271: Primes of the form 3*x^2 + 7*y^2.

The programs for A102271, there is no canonical definition to state claims against.
-/

/-! ## A102271.P10642573415507491400

`∪[A107195(n+1), A107197(n+1)]`
-/

namespace A102271.P10642573415507491400
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107195 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107197 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A102271.P10642573415507491400

/-! ## A102271.P15283536118069759791

`∩[A007645(n+1), A141173(n+1)]`
-/

namespace A102271.P15283536118069759791
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007645 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141173 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A102271.P15283536118069759791

/-! ## A102271.P1940766370888167013

`∩[A045331(n+1), A141173(n+1)]`
-/

namespace A102271.P1940766370888167013
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045331 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141173 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A102271.P1940766370888167013

/-! ## A102271.P10795848372861479889

`∩[A141173(n+1), A279815(n+1)]`
-/

namespace A102271.P10795848372861479889
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141173 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279815 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A102271.P10795848372861479889

/-! ## A102271.P6702060361493464274

`∩[A055664(n+1), A141173(n+1)]`
-/

namespace A102271.P6702060361493464274
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055664 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141173 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A102271.P6702060361493464274

/-! ## A102271.P7002718672115987345

`filter[A141173(n+1), A353815(#)]`
-/

namespace A102271.P7002718672115987345
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141173 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353815 (f1 j).toNat = 1) n)

end

end A102271.P7002718672115987345

/-! ## A102271.P1256794233052941319

`filter[A141173(n+1), A353816(#)]`
-/

namespace A102271.P1256794233052941319
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141173 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353816 (f1 j).toNat = 1) n)

end

end A102271.P1256794233052941319

/-! ## A102271.P5272319513437825517

`p?[A020679(n+1)]`
-/

namespace A102271.P5272319513437825517
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020679 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A102271.P5272319513437825517

/-! ## A102271.P3283212917382897545

`record[A020639(A020679(n+2))]`
-/

namespace A102271.P3283212917382897545
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A020679 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A102271.P3283212917382897545

/-! ## A102271.P18086063973627446920

`filter[A020679(n+2), A010051(#)]`
-/

namespace A102271.P18086063973627446920
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020679 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A102271.P18086063973627446920

/-! ## A102271.P7895984291553430801

`filter[A020679(n+2), A355937(#)]`
-/

namespace A102271.P7895984291553430801
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020679 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A355937 (f1 j).toNat = 1) n)

end

end A102271.P7895984291553430801

/-! ## A102271.P7632091512822418785

`filter[A020679(n+2), A380467(#)]`
-/

namespace A102271.P7632091512822418785
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020679 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A380467 (f1 j).toNat = 1) n)

end

end A102271.P7632091512822418785

/-! ## A102271.P290256152880452199

`∩[A020679(n+1), A042990(n)]`
-/

namespace A102271.P290256152880452199
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020679 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042990 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A102271.P290256152880452199

/-! ## A102271.P4579229784217834181

`∩[A000040(n+1), A020679(n+1)]`
-/

namespace A102271.P4579229784217834181
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020679 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A102271.P4579229784217834181

/-! ## A102271.P4598882816028438778

`∩[A000430(n+1), A020679(n+1)]`
-/

namespace A102271.P4598882816028438778
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000430 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020679 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A102271.P4598882816028438778

/-! ## A102271.P17701511345234392605

`∩[A002145(n+1), A020679(n+1)]`
-/

namespace A102271.P17701511345234392605
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002145 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020679 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A102271.P17701511345234392605

/-! ## A102271.P5576269974097600376

`∩[A004139(n+1), A020679(n+1)]`
-/

namespace A102271.P5576269974097600376
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004139 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020679 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A102271.P5576269974097600376

/-! ## A102271.P4865957812897626965

`∩[A006005(n+1), A020679(n+1)]`
-/

namespace A102271.P4865957812897626965
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006005 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020679 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A102271.P4865957812897626965

/-! ## A102271.P4533491858215251825

`∩[A007645(n+1), A020679(n+1)]`
-/

namespace A102271.P4533491858215251825
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007645 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020679 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A102271.P4533491858215251825

/-!
# A102273: Primes p such that Q(sqrt(-21p)) has genus characters chi_{-3} = -1, chi_{-7} = +1.

The programs for A102273, the canonical program `A102273.P9293778753101194351` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A102273 has offset 1).

The definition of A102273 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2518 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A102273.P2508236531936143595

`∩[A040101(n+1), A107133(n+1)]`
-/

namespace A102273.P2508236531936143595
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040101 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107133 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A102273.P2508236531936143595

namespace A102273

/-- `∩[A040101(n+1), A107133(n+1)]` -/
def P2508236531936143595.Spec : Prop :=
  ∀ n, (P2508236531936143595.a n : ℤ) = A102273 (n + 1)

end A102273

/-! ## A102273.P4482562531454861875

`∩[A040994(n+1), A107133(n+1)]`
-/

namespace A102273.P4482562531454861875
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040994 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107133 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A102273.P4482562531454861875

namespace A102273

/-- `∩[A040994(n+1), A107133(n+1)]` -/
def P4482562531454861875.Spec : Prop :=
  ∀ n, (P4482562531454861875.a n : ℤ) = A102273 (n + 1)

end A102273

/-! ## A102273.P9293778753101194351

`∩[A097933(n+1), A106927(n+1)]`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A102273

/-- `∩[A097933(n+1), A106927(n+1)]` -/
def P9293778753101194351.Spec : Prop :=
  ∀ n, (P9293778753101194351.a n : ℤ) = A102273 (n + 1)

theorem P9293778753101194351.correct : P9293778753101194351.Spec := by
  intro n
  simp only [A102273, Nat.add_sub_cancel]

end A102273

/-! ## A102273.P8723905194980662310

`∩[A033207(n+1), A068231(n+1)]`
-/

namespace A102273.P8723905194980662310
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033207 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068231 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A102273.P8723905194980662310

namespace A102273

/-- `∩[A033207(n+1), A068231(n+1)]` -/
def P8723905194980662310.Spec : Prop :=
  ∀ n, (P8723905194980662310.a n : ℤ) = A102273 (n + 1)

end A102273

/-! ## A102273.P9555865898242162323

`∩[A045386(n+1), A068231(n+1)]`
-/

namespace A102273.P9555865898242162323
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045386 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068231 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A102273.P9555865898242162323

namespace A102273

/-- `∩[A045386(n+1), A068231(n+1)]` -/
def P9555865898242162323.Spec : Prop :=
  ∀ n, (P9555865898242162323.a n : ℤ) = A102273 (n + 1)

end A102273

/-! ## A102273.P13194774294547911449

`∩[A045373(n+1), A068231(n+1)]`
-/

namespace A102273.P13194774294547911449
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045373 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068231 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A102273.P13194774294547911449

namespace A102273

/-- `∩[A045373(n+1), A068231(n+1)]` -/
def P13194774294547911449.Spec : Prop :=
  ∀ n, (P13194774294547911449.a n : ℤ) = A102273 (n + 1)

end A102273

/-! ## A102273.P11411113645825174721

`∩[A045373(n+1), A141187(n+1)]`
-/

namespace A102273.P11411113645825174721
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045373 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141187 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A102273.P11411113645825174721

namespace A102273

/-- `∩[A045373(n+1), A141187(n+1)]` -/
def P11411113645825174721.Spec : Prop :=
  ∀ n, (P11411113645825174721.a n : ℤ) = A102273 (n + 1)

end A102273

/-! ## A102273.P11003112887763634916

`∩[A038894(n+1), A068231(n+1)]`
-/

namespace A102273.P11003112887763634916
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038894 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068231 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A102273.P11003112887763634916

namespace A102273

/-- `∩[A038894(n+1), A068231(n+1)]` -/
def P11003112887763634916.Spec : Prop :=
  ∀ n, (P11003112887763634916.a n : ℤ) = A102273 (n + 1)

end A102273

/-! ## A102273.P11745810831926019434

`∩[A003627(n+1), A107133(n+1)]`
-/

namespace A102273.P11745810831926019434
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003627 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107133 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A102273.P11745810831926019434

namespace A102273

/-- `∩[A003627(n+1), A107133(n+1)]` -/
def P11745810831926019434.Spec : Prop :=
  ∀ n, (P11745810831926019434.a n : ℤ) = A102273 (n + 1)

end A102273

/-! ## A102273.P11833077541122417100

`∩[A007528(n+1), A107133(n+1)]`
-/

namespace A102273.P11833077541122417100
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007528 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107133 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A102273.P11833077541122417100

namespace A102273

/-- `∩[A007528(n+1), A107133(n+1)]` -/
def P11833077541122417100.Spec : Prop :=
  ∀ n, (P11833077541122417100.a n : ℤ) = A102273 (n + 1)

end A102273

/-! ## A102273.P3198424522644193230

`∩[A056955(n+1), A107133(n+1)]`
-/

namespace A102273.P3198424522644193230
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056955 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107133 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A102273.P3198424522644193230

namespace A102273

/-- `∩[A056955(n+1), A107133(n+1)]` -/
def P3198424522644193230.Spec : Prop :=
  ∀ n, (P3198424522644193230.a n : ℤ) = A102273 (n + 1)

end A102273

/-! ## A102273.P7244520708639059451

`∩[A045309(n+1), A107133(n+1)]`
-/

namespace A102273.P7244520708639059451
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045309 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107133 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A102273.P7244520708639059451

namespace A102273

/-- `∩[A045309(n+1), A107133(n+1)]` -/
def P7244520708639059451.Spec : Prop :=
  ∀ n, (P7244520708639059451.a n : ℤ) = A102273 (n + 1)

end A102273

/-! ## A102273.P7296244441987624824

`∩[A002145(n+1), A106927(n+1)]`
-/

namespace A102273.P7296244441987624824
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002145 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106927 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A102273.P7296244441987624824

namespace A102273

/-- `∩[A002145(n+1), A106927(n+1)]` -/
def P7296244441987624824.Spec : Prop :=
  ∀ n, (P7296244441987624824.a n : ℤ) = A102273 (n + 1)

end A102273

/-! ## A102273.P1598324372084162172

`∩[A003632(n+1), A068231(n+1)]`
-/

namespace A102273.P1598324372084162172
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003632 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068231 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A102273.P1598324372084162172

namespace A102273

/-- `∩[A003632(n+1), A068231(n+1)]` -/
def P1598324372084162172.Spec : Prop :=
  ∀ n, (P1598324372084162172.a n : ℤ) = A102273 (n + 1)

end A102273

/-! ## A102273.P12824163586614052375

`∩[A003632(n+1), A106927(n+1)]`
-/

namespace A102273.P12824163586614052375
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003632 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106927 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A102273.P12824163586614052375

namespace A102273

/-- `∩[A003632(n+1), A106927(n+1)]` -/
def P12824163586614052375.Spec : Prop :=
  ∀ n, (P12824163586614052375.a n : ℤ) = A102273 (n + 1)

end A102273

/-! ## A102273.P16503643349936055533

`∩[A003632(n+1), A141123(n+1)]`
-/

namespace A102273.P16503643349936055533
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003632 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141123 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A102273.P16503643349936055533

namespace A102273

/-- `∩[A003632(n+1), A141123(n+1)]` -/
def P16503643349936055533.Spec : Prop :=
  ∀ n, (P16503643349936055533.a n : ℤ) = A102273 (n + 1)

end A102273

/-! ## A102273.P17966864963324795248

`∩[A003632(n+1), A141187(n+1)]`
-/

namespace A102273.P17966864963324795248
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003632 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141187 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A102273.P17966864963324795248

namespace A102273

/-- `∩[A003632(n+1), A141187(n+1)]` -/
def P17966864963324795248.Spec : Prop :=
  ∀ n, (P17966864963324795248.a n : ℤ) = A102273 (n + 1)

end A102273

/-! ## A102273.P7586256994820488264

`∩[A003632(n+1), A332516(n+1)]`
-/

namespace A102273.P7586256994820488264
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003632 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332516 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A102273.P7586256994820488264

namespace A102273

/-- `∩[A003632(n+1), A332516(n+1)]` -/
def P7586256994820488264.Spec : Prop :=
  ∀ n, (P7586256994820488264.a n : ℤ) = A102273 (n + 1)

end A102273

/-! ## A102273.P14347322836656780535

`∩[A106927(n+1), A292762(n+1)]`
-/

namespace A102273.P14347322836656780535
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106927 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292762 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A102273.P14347322836656780535

namespace A102273

/-- `∩[A106927(n+1), A292762(n+1)]` -/
def P14347322836656780535.Spec : Prop :=
  ∀ n, (P14347322836656780535.a n : ℤ) = A102273 (n + 1)

end A102273

/-! ## A102273.P2562775346501355291

`∩[A040150(n+1), A068231(n+1)]`
-/

namespace A102273.P2562775346501355291
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040150 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068231 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A102273.P2562775346501355291

namespace A102273

/-- `∩[A040150(n+1), A068231(n+1)]` -/
def P2562775346501355291.Spec : Prop :=
  ∀ n, (P2562775346501355291.a n : ℤ) = A102273 (n + 1)

end A102273

/-!
# A102274: Primes p such that Q(sqrt(-21p)) has genus characters chi_{-3} = -1, chi_{-7} = -1.

The programs for A102274, there is no canonical definition to state claims against.
-/

/-! ## A102274.P15548635392171944399

`p?[12*A047296(n+1)+11]`
-/

namespace A102274.P15548635392171944399
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  12 * A047296 (n + 1) + 11

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A102274.P15548635392171944399

/-! ## A102274.P17666757714060758889

`∩[3*n-1, A141173(n+1)]`
-/

namespace A102274.P17666757714060758889
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 * n : ℤ) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141173 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A102274.P17666757714060758889

/-! ## A102274.P13063654474926765

`∩[12*n-1, A003625(n+1)]`
-/

namespace A102274.P13063654474926765
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (12 * n : ℤ) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003625 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A102274.P13063654474926765

/-! ## A102274.P510420598563010864

`eq[A004485(n), A320202(n)]`
-/

namespace A102274.P510420598563010864
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004485 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320202 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A102274.P510420598563010864

/-! ## A102274.P1208532446124191967

`p?[A017653(A047296(n+1))]`
-/

namespace A102274.P1208532446124191967
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017653 (A047296 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A102274.P1208532446124191967

/-! ## A102274.P3295708897404490558

`filter[A068231(n+1), A011671(#)]`
-/

namespace A102274.P3295708897404490558
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068231 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A011671 (f1 j).toNat = 1) n)

end

end A102274.P3295708897404490558

/-! ## A102274.P348142236609583104

`filter[A141123(n+1), A011671(#)]`
-/

namespace A102274.P348142236609583104
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141123 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A011671 (f1 j).toNat = 1) n)

end

end A102274.P348142236609583104

/-! ## A102274.P10834520958357919518

`filter[A141187(n+1), A011671(#)]`
-/

namespace A102274.P10834520958357919518
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141187 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A011671 (f1 j).toNat = 1) n)

end

end A102274.P10834520958357919518

/-! ## A102274.P13204294640249030324

`filter[A141160(n+1), A059620(#)]`
-/

namespace A102274.P13204294640249030324
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141160 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A059620 (f1 j).toNat = 1) n)

end

end A102274.P13204294640249030324

/-! ## A102274.P5588279693455159729

`filter[A141173(n+1), A059620(#)]`
-/

namespace A102274.P5588279693455159729
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141173 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A059620 (f1 j).toNat = 1) n)

end

end A102274.P5588279693455159729

/-!
# A102276: a(n) = (a(n-1) * a(n-5) + a(n-3)^2) / a(n-6) with a(0) = ... = a(5) = 1, a(n) = a(5-n) for all n in Z.

The programs for A102276, the canonical program `A102276.P16525735709345092996` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A102276 has offset 0).

The definition of A102276 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A102276.P16525735709345092996

`(a(n-1)*a(n-5)+a(n-3)²)/a(n-6)` with `a(0)=1, a(1)=1, a(2)=1, a(3)=1, a(4)=1, a(5)=1`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A102276

/-- `(a(n-1)*a(n-5)+a(n-3)²)/a(n-6)` -/
def P16525735709345092996.Spec : Prop :=
  ∀ n, P16525735709345092996.a n = (A102276 n : ℚ)

end A102276

/-! ## A102276.P778141949613023772

`A256858(n+1-(6-n)%(n+1))`
-/

namespace A102276.P778141949613023772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256858 ((n + 1 : ℤ) - Int.tmod (6 - (n : ℤ)) (n + 1 : ℤ)).toNat

end

end A102276.P778141949613023772

namespace A102276

/-- `A256858(n+1-(6-n)%(n+1))` -/
def P778141949613023772.Spec : Prop :=
  ∀ n, P778141949613023772.a n = A102276 n

end A102276

/-! ## A102276.P2378692358365736775

`A256858(abs(5-A005843(n)))`
-/

namespace A102276.P2378692358365736775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256858 |5 - A005843 n|.toNat

end

end A102276.P2378692358365736775

namespace A102276

/-- `A256858(abs(5-A005843(n)))` -/
def P2378692358365736775.Spec : Prop :=
  ∀ n, P2378692358365736775.a n = A102276 n

end A102276

/-! ## A102276.P148903766422778628

`A256858(A267261(2*n)-2*n)`
-/

namespace A102276.P148903766422778628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256858 (A267261 (2 * n) - (2 * n : ℤ)).toNat

end

end A102276.P148903766422778628

namespace A102276

/-- `A256858(A267261(2*n)-2*n)` -/
def P148903766422778628.Spec : Prop :=
  ∀ n, P148903766422778628.a n = A102276 n

end A102276

/-! ## A102276.P2423308777886869925

`A256858(A163985(A289207(n)))`
-/

namespace A102276.P2423308777886869925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256858 (A163985 (A289207 n).toNat).toNat

end

end A102276.P2423308777886869925

namespace A102276

/-- `A256858(A163985(A289207(n)))` -/
def P2423308777886869925.Spec : Prop :=
  ∀ n, P2423308777886869925.a n = A102276 n

end A102276

/-! ## A102276.P12861371842827035430

`A256858(A004526(record[A267261(n)]))`
-/

namespace A102276.P12861371842827035430
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267261 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256858 (A004526 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat).toNat

end

end A102276.P12861371842827035430

namespace A102276

/-- `A256858(A004526(record[A267261(n)]))` -/
def P12861371842827035430.Spec : Prop :=
  ∀ n, P12861371842827035430.a n = A102276 n

end A102276

/-!
# A102277: Numbers n such that n = 15*reversal(n).

The programs for A102277, there is no canonical definition to state claims against.
-/

/-! ## A102277.P6834269806363121386

`10*A101704(n+1)`
-/

namespace A102277.P6834269806363121386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  10 * A101704 (n + 1)

end

end A102277.P6834269806363121386

/-! ## A102277.P17608670776827478219

`20*A101706(n+1)`
-/

namespace A102277.P17608670776827478219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  20 * A101706 (n + 1)

end

end A102277.P17608670776827478219

/-! ## A102277.P13534638660389582468

`2*5*2*A101706(Δ[n²]-n)`
-/

namespace A102277.P13534638660389582468
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (5 * (2 * A101706 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) - (n : ℤ)).toNat))

end

end A102277.P13534638660389582468

/-! ## A102277.P14232410127860477203

`lcm(20, A101706(A000027(n+1)))`
-/

namespace A102277.P14232410127860477203
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 20 (A101706 (A000027 (n + 1)).toNat)

end

end A102277.P14232410127860477203

/-! ## A102277.P6757342738632398977

`lcm(A040090(n), A101704(n+1))`
-/

namespace A102277.P6757342738632398977
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A040090 n) (A101704 (n + 1))

end

end A102277.P6757342738632398977

/-! ## A102277.P11829759064334961768

`lcm(A040870(n), A101706(n+1))`
-/

namespace A102277.P11829759064334961768
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A040870 n) (A101706 (n + 1))

end

end A102277.P11829759064334961768

/-!
# A102280: Let k = n-th number == 1 or 5 mod 6 (A007310(n)); consider the generalized 3x+1 map T_k defined by T_k(n) = (3n+k)/2 if n odd, n/2 if n even; then a(n) = smallest positive number m which is in a primitive cycle of T_k.

The programs for A102280, there is no canonical definition to state claims against.
-/

/-! ## A102280.P4799190008042893544

`A226607(A226612(n+1))`
-/

namespace A102280.P4799190008042893544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226607 (A226612 (n + 1)).toNat

end

end A102280.P4799190008042893544

/-! ## A102280.P14020424194358561180

`A226607(∑[A226613(n+1)]-A226613(n+1)+1)`
-/

namespace A102280.P14020424194358561180
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226613 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226607 (∑ j ∈ Finset.range (n + 1), f1 j - A226613 (n + 1) + 1).toNat

end

end A102280.P14020424194358561180

/-!
# A102281: a(n) is the largest number m such that m = pi(n*m).

The programs for A102281, there is no canonical definition to state claims against.
-/

/-! ## A102281.P2400157223763776958

`A087235(n+2)/(n+2)`
-/

namespace A102281.P2400157223763776958
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A087235 (n + 2) : ℚ) / (n + 2 : ℚ)

end

end A102281.P2400157223763776958

/-! ## A102281.P8465455471847686181

`A087241(2*n+3)/(n+2)`
-/

namespace A102281.P8465455471847686181
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A087241 (2 * n + 3) : ℚ) / (n + 2 : ℚ)

end

end A102281.P8465455471847686181

/-! ## A102281.P6516173728373023805

`A087237(n+2)+A038626(n+2)`
-/

namespace A102281.P6516173728373023805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087237 (n + 2) + A038626 (n + 2)

end

end A102281.P6516173728373023805

/-! ## A102281.P12386157496198210832

`round(A087241(A005408(n+1))/(n+2))`
-/

namespace A102281.P12386157496198210832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A087241 (A005408 (n + 1)).toNat : ℚ) / (n + 2 : ℚ))

end

end A102281.P12386157496198210832

/-! ## A102281.P2888973848265779129

`record[A087241(A004442(n+2))]/(n+2)`
-/

namespace A102281.P2888973848265779129
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087241 (A004442 (n + 2)).toNat

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℚ) / (n + 2 : ℚ)

end

end A102281.P2888973848265779129

/-!
# A102283: Period 3: repeat [0, 1, -1].

The programs for A102283, the canonical program `A102283.P18218274576938374007` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A102283 has offset 0).

The definition of A102283 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A102283.P18218274576938374007

`a(n-3)` with `a(0)=0, a(1)=1, a(2)=-1`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A102283

/-- `a(n-3)` -/
def P18218274576938374007.Spec : Prop :=
  ∀ n, P18218274576938374007.a n = A102283 n

theorem P18218274576938374007.correct : P18218274576938374007.Spec := by
  intro n
  simp only [A102283]

end A102283

/-!
# A102284: Length of primitive cycle mentioned in A102280.

The programs for A102284, there is no canonical definition to state claims against.
-/

/-! ## A102284.P6960240796224974690

`A226609(A226612(n+1))`
-/

namespace A102284.P6960240796224974690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226609 (A226612 (n + 1)).toNat

end

end A102284.P6960240796224974690

/-! ## A102284.P925497683310394180

`A226609(∑[A226613(n+1)]-A226613(n+1)+1)`
-/

namespace A102284.P925497683310394180
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226613 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226609 (∑ j ∈ Finset.range (n + 1), f1 j - A226613 (n + 1) + 1).toNat

end

end A102284.P925497683310394180

/-!
# A102285: G.f. (1-x)/(7*x^2-6*x+1).

The programs for A102285, the canonical program `A102285.P2644579289363652315` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A102285 has offset 0).

The definition of A102285 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A102285.P2644579289363652315

`6*a(n-1)-7*a(n-2)` with `a(0)=1, a(1)=5`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A102285

/-- `6*a(n-1)-7*a(n-2)` -/
def P2644579289363652315.Spec : Prop :=
  ∀ n, P2644579289363652315.a n = A102285 n

theorem P2644579289363652315.correct : P2644579289363652315.Spec := by
  intro n
  simp only [A102285]

end A102285

/-! ## A102285.P4188819271412208918

`A081179(n)+A086351(n)`
-/

namespace A102285.P4188819271412208918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081179 n + A086351 n

end

end A102285.P4188819271412208918

namespace A102285

/-- `A081179(n)+A086351(n)` -/
def P4188819271412208918.Spec : Prop :=
  ∀ n, P4188819271412208918.a n = A102285 n

end A102285

/-! ## A102285.P17922996170000382924

`A081179(n+1)-A081179(n)`
-/

namespace A102285.P17922996170000382924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081179 (n + 1) - A081179 n

end

end A102285.P17922996170000382924

namespace A102285

/-- `A081179(n+1)-A081179(n)` -/
def P17922996170000382924.Spec : Prop :=
  ∀ n, P17922996170000382924.a n = A102285 n

end A102285

/-! ## A102285.P2262096281460382496

`A086351(n+1)-3*A086351(n)`
-/

namespace A102285.P2262096281460382496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086351 (n + 1) - 3 * A086351 n

end

end A102285.P2262096281460382496

namespace A102285

/-- `A086351(n+1)-3*A086351(n)` -/
def P2262096281460382496.Spec : Prop :=
  ∀ n, P2262096281460382496.a n = A102285 n

end A102285

/-! ## A102285.P16324599590580518079

`ogf((1-x)/(1-6x+7x^2))`
-/

namespace A102285.P16324599590580518079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -1] [1, -6, 7] n

end

end A102285.P16324599590580518079

namespace A102285

/-- `ogf((1-x)/(1-6x+7x^2))` -/
def P16324599590580518079.Spec : Prop :=
  ∀ n, P16324599590580518079.a n = A102285 n

end A102285

/-! ## A102285.P17808167634755997331

`((1+sqrt(2))*(sqrt(2)+3)^n+(1-sqrt(2))*(3-sqrt(2))^n)/2`
-/

namespace A102285.P17808167634755997331
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((1 + Real.sqrt (2 : ℝ)) * (Real.sqrt (2 : ℝ) + 3) ^ n + (1 - Real.sqrt (2 : ℝ)) * (3 - Real.sqrt (2 : ℝ)) ^ n) / 2

end

end A102285.P17808167634755997331

namespace A102285

/-- `((1+sqrt(2))*(sqrt(2)+3)^n+(1-sqrt(2))*(3-sqrt(2))^n)/2` -/
def P17808167634755997331.Spec : Prop :=
  ∀ n, P17808167634755997331.a n = (A102285 n : ℝ)

theorem P17808167634755997331.correct : P17808167634755997331.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A102285, Nat.add_sub_cancel, A102285.P17808167634755997331.a, A102285.P2644579289363652315.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
      try ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A102285, Nat.add_sub_cancel, A102285.P17808167634755997331.a, A102285.P2644579289363652315.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [← h1, ← h2]
      first | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A102285

/-! ## A102285.P16583609429973958627

`Δ[A081179(n)]`
-/

namespace A102285.P16583609429973958627
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081179 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A102285.P16583609429973958627

namespace A102285

/-- `Δ[A081179(n)]` -/
def P16583609429973958627.Spec : Prop :=
  ∀ n, P16583609429973958627.a n = A102285 n

end A102285

/-! ## A102285.P349946825975636614

`A164033(n)-A086351(n)`
-/

namespace A102285.P349946825975636614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164033 n - A086351 n

end

end A102285.P349946825975636614

namespace A102285

/-- `A164033(n)-A086351(n)` -/
def P349946825975636614.Spec : Prop :=
  ∀ n, P349946825975636614.a n = A102285 n

end A102285

/-! ## A102285.P9428196054849780457

`Δ[A083878(n)]-A083878(n)`
-/

namespace A102285.P9428196054849780457
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083878 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A083878 n

end

end A102285.P9428196054849780457

namespace A102285

/-- `Δ[A083878(n)]-A083878(n)` -/
def P9428196054849780457.Spec : Prop :=
  ∀ n, P9428196054849780457.a n = A102285 n

end A102285

/-! ## A102285.P15312079535187148069

`A083878(n)+2*A081179(n)`
-/

namespace A102285.P15312079535187148069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083878 n + 2 * A081179 n

end

end A102285.P15312079535187148069

namespace A102285

/-- `A083878(n)+2*A081179(n)` -/
def P15312079535187148069.Spec : Prop :=
  ∀ n, P15312079535187148069.a n = A102285 n

end A102285

/-! ## A102285.P18446418741511088713

`2*A086351(n)-A083878(n)`
-/

namespace A102285.P18446418741511088713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A086351 n - A083878 n

end

end A102285.P18446418741511088713

namespace A102285

/-- `2*A086351(n)-A083878(n)` -/
def P18446418741511088713.Spec : Prop :=
  ∀ n, P18446418741511088713.a n = A102285 n

end A102285

/-! ## A102285.P17931904290800273142

`A163348(n)-2*A081179(n)`
-/

namespace A102285.P17931904290800273142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163348 n - 2 * A081179 n

end

end A102285.P17931904290800273142

namespace A102285

/-- `A163348(n)-2*A081179(n)` -/
def P17931904290800273142.Spec : Prop :=
  ∀ n, P17931904290800273142.a n = A102285 n

end A102285

/-! ## A102285.P13031486389040259970

`A163606(n)-2*A086351(n)`
-/

namespace A102285.P13031486389040259970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163606 n - 2 * A086351 n

end

end A102285.P13031486389040259970

namespace A102285

/-- `A163606(n)-2*A086351(n)` -/
def P13031486389040259970.Spec : Prop :=
  ∀ n, P13031486389040259970.a n = A102285 n

end A102285

/-! ## A102285.P989343683067648072

`2*A163348(n)-A163614(n)`
-/

namespace A102285.P989343683067648072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A163348 n - A163614 n

end

end A102285.P989343683067648072

namespace A102285

/-- `2*A163348(n)-A163614(n)` -/
def P989343683067648072.Spec : Prop :=
  ∀ n, P989343683067648072.a n = A102285 n

end A102285

/-! ## A102285.P16933244553506361927

`2*A164033(n)-A163606(n)`
-/

namespace A102285.P16933244553506361927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A164033 n - A163606 n

end

end A102285.P16933244553506361927

namespace A102285

/-- `2*A164033(n)-A163606(n)` -/
def P16933244553506361927.Spec : Prop :=
  ∀ n, P16933244553506361927.a n = A102285 n

end A102285

/-! ## A102285.P16948178866821789239

`A034999(n+1)-∑[A034999(n)]`
-/

namespace A102285.P16948178866821789239
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034999 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034999 (n + 1) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A102285.P16948178866821789239

namespace A102285

/-- `A034999(n+1)-∑[A034999(n)]` -/
def P16948178866821789239.Spec : Prop :=
  ∀ n, P16948178866821789239.a n = A102285 n

end A102285

/-! ## A102285.P18258235581315531707

`A083878(n+1)-2*A083878(n)`
-/

namespace A102285.P18258235581315531707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083878 (n + 1) - 2 * A083878 n

end

end A102285.P18258235581315531707

namespace A102285

/-- `A083878(n+1)-2*A083878(n)` -/
def P18258235581315531707.Spec : Prop :=
  ∀ n, P18258235581315531707.a n = A102285 n

end A102285

/-! ## A102285.P18122161072699443626

`A086351(n+1)-(A086351(n)+A034999(n+1))`
-/

namespace A102285.P18122161072699443626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086351 (n + 1) - (A086351 n + A034999 (n + 1))

end

end A102285.P18122161072699443626

namespace A102285

/-- `A086351(n+1)-(A086351(n)+A034999(n+1))` -/
def P18122161072699443626.Spec : Prop :=
  ∀ n, P18122161072699443626.a n = A102285 n

end A102285

/-! ## A102285.P12556448976961485296

`Δ[A163606(n)]%A163606(n)`
-/

namespace A102285.P12556448976961485296
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163606 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (n + 1) - f1 n) (A163606 n)

end

end A102285.P12556448976961485296

namespace A102285

/-- `Δ[A163606(n)]%A163606(n)` -/
def P12556448976961485296.Spec : Prop :=
  ∀ n, P12556448976961485296.a n = A102285 n

end A102285

/-! ## A102285.P4628054093528723690

`Δ[A162270(n)-A163348(n)]-A162270(n)`
-/

namespace A102285.P4628054093528723690
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162270 n - A163348 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A162270 n

end

end A102285.P4628054093528723690

namespace A102285

/-- `Δ[A162270(n)-A163348(n)]-A162270(n)` -/
def P4628054093528723690.Spec : Prop :=
  ∀ n, P4628054093528723690.a n = A102285 n

end A102285

/-!
# A102286: Total number of odd blocks in all partitions of n-set.

The programs for A102286, there is no canonical definition to state claims against.
-/

/-! ## A102286.P1352025053632489184

`A087648(n)-a(n-1)` with `a(0)=1`
-/

namespace A102286.P1352025053632489184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A087648 n - a (n - 1)

end

end A102286.P1352025053632489184

/-! ## A102286.P4275865599169234462

`A120057(∑[n+1])-a(n-1)` with `a(0)=1`
-/

namespace A102286.P4275865599169234462
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A120057 (∑ j ∈ Finset.range (n + 1), f1 j) - a (n - 1)

end

end A102286.P4275865599169234462

/-! ## A102286.P13932232178838015309

`A346517(∑[n+2]+2)-a(n-1)` with `a(0)=1`
-/

namespace A102286.P13932232178838015309
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A346517 (∑ j ∈ Finset.range (n + 1), f1 j + 2) - a (n - 1)

end

end A102286.P13932232178838015309

/-! ## A102286.P6142529108325125690

`A224271(n+1)+A059606(n)`
-/

namespace A102286.P6142529108325125690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224271 (n + 1) + A059606 n

end

end A102286.P6142529108325125690

/-! ## A102286.P14271545903801678665

`A005493(n)-A102287(n+1)`
-/

namespace A102286.P14271545903801678665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005493 n - A102287 (n + 1)

end

end A102286.P14271545903801678665

/-! ## A102286.P6158277303769865505

`∑[A011965(n)]-A102287(n+1)`
-/

namespace A102286.P6158277303769865505
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011965 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A102287 (n + 1)

end

end A102286.P6158277303769865505

/-! ## A102286.P6217355749426450646

`A102287(n+1)+A000296(n+2)`
-/

namespace A102286.P6217355749426450646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102287 (n + 1) + A000296 (n + 2)

end

end A102286.P6217355749426450646

/-! ## A102286.P861970375074217384

`A224271(n+2)-A000296(n+1)`
-/

namespace A102286.P861970375074217384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224271 (n + 2) - A000296 (n + 1)

end

end A102286.P861970375074217384

/-! ## A102286.P8025845138348440634

`A000110(n+2)-A224271(n+2)`
-/

namespace A102286.P8025845138348440634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000110 (n + 2) - A224271 (n + 2)

end

end A102286.P8025845138348440634

/-! ## A102286.P16217081017732307425

`A011972(A000096(n))-A102287(n+1)`
-/

namespace A102286.P16217081017732307425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011972 (A000096 n).toNat - A102287 (n + 1)

end

end A102286.P16217081017732307425

/-!
# A102287: Total number of even blocks in all partitions of n-set.

The programs for A102287, there is no canonical definition to state claims against.
-/

/-! ## A102287.P1927909235129507500

`A059606(n)-a(n-1)` with `a(0)=0`
-/

namespace A102287.P1927909235129507500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A059606 n - a (n - 1)

end

end A102287.P1927909235129507500

/-! ## A102287.P3588750396095881776

`A005493(n)-A102286(n+1)`
-/

namespace A102287.P3588750396095881776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005493 n - A102286 (n + 1)

end

end A102287.P3588750396095881776

/-! ## A102287.P14544809085665228539

`(A011965(n)-A000296(n))/2`
-/

namespace A102287.P14544809085665228539
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A011965 n - A000296 n : ℚ) / 2

end

end A102287.P14544809085665228539

/-! ## A102287.P5515245893863264583

`∑[A011965(n)]-A102286(n+1)`
-/

namespace A102287.P5515245893863264583
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011965 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A102286 (n + 1)

end

end A102287.P5515245893863264583

/-! ## A102287.P4277756610531580757

`A224271(n+2)-record[A108087(n)]`
-/

namespace A102287.P4277756610531580757
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108087 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224271 (n + 2) - f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A102287.P4277756610531580757

/-! ## A102287.P16741966647934833861

`A102286(n+1)-A000296(n+2)`
-/

namespace A102287.P16741966647934833861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102286 (n + 1) - A000296 (n + 2)

end

end A102287.P16741966647934833861

/-! ## A102287.P12087090187959922018

`A224271(n+2)-A000110(n+1)`
-/

namespace A102287.P12087090187959922018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224271 (n + 2) - A000110 (n + 1)

end

end A102287.P12087090187959922018

/-! ## A102287.P568447133065609030

`A000296(n+3)-A224271(n+2)`
-/

namespace A102287.P568447133065609030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000296 (n + 3) - A224271 (n + 2)

end

end A102287.P568447133065609030

/-! ## A102287.P256197355211816887

`A111724(n+2)-(A111723(n+1)+A111723(n+1))`
-/

namespace A102287.P256197355211816887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111724 (n + 2) - (A111723 (n + 1) + A111723 (n + 1))

end

end A102287.P256197355211816887

/-!
# A102288: a(n) = 1 + (the n-th term in sequence A_n, ignoring the offset), or a(n) = -1 if A_n has fewer than n terms.

The programs for A102288, there is no canonical definition to state claims against.
-/

/-! ## A102288.P4662782289569593302

`A091967(n+1)+1`
-/

namespace A102288.P4662782289569593302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091967 (n + 1) + 1

end

end A102288.P4662782289569593302

/-!
# A102289: Total number of odd lists in all sets of lists, cf. A000262.

The programs for A102289, the canonical program `A102289.P17410022765882101304` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A102289 has offset 0).

The definition of A102289 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A102289.P17410022765882101304

`n*a(n-1)+n²*a(n-2)-(n-2)²*n*a(n-3)` with `a(0)=0, a(1)=1, a(2)=2`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A102289

/-- `n*a(n-1)+n²*a(n-2)-(n-2)²*n*a(n-3)` -/
def P17410022765882101304.Spec : Prop :=
  ∀ n, P17410022765882101304.a n = A102289 n

theorem P17410022765882101304.correct : P17410022765882101304.Spec := by
  intro n
  simp only [A102289]

end A102289

/-! ## A102289.P8715259064269801439

`A052852(n)-n*a(n-1)` with `a(0)=0`
-/

namespace A102289.P8715259064269801439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A052852 n - (n : ℤ) * a (n - 1)

end

end A102289.P8715259064269801439

namespace A102289

/-- `A052852(n)-n*a(n-1)` -/
def P8715259064269801439.Spec : Prop :=
  ∀ n, P8715259064269801439.a n = A102289 n

end A102289

/-! ## A102289.P12040412685699396648

`A052852(n)-A102290(n)`
-/

namespace A102289.P12040412685699396648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052852 n - A102290 n

end

end A102289.P12040412685699396648

namespace A102289

/-- `A052852(n)-A102290(n)` -/
def P12040412685699396648.Spec : Prop :=
  ∀ n, P12040412685699396648.a n = A102289 n

end A102289

/-! ## A102289.P4262863311187261897

`A288268(n+1)-A102290(n)`
-/

namespace A102289.P4262863311187261897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288268 (n + 1) - A102290 n

end

end A102289.P4262863311187261897

namespace A102289

/-- `A288268(n+1)-A102290(n)` -/
def P4262863311187261897.Spec : Prop :=
  ∀ n, P4262863311187261897.a n = A102289 n

end A102289

/-! ## A102289.P14936842422355628381

`(A002720(n)-A331725(n))/2`
-/

namespace A102289.P14936842422355628381
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002720 n - A331725 n : ℚ) / 2

end

end A102289.P14936842422355628381

namespace A102289

/-- `(A002720(n)-A331725(n))/2` -/
def P14936842422355628381.Spec : Prop :=
  ∀ n, P14936842422355628381.a n = (A102289 n : ℚ)

end A102289

/-! ## A102289.P3432257710033105749

`A002720(n)-(A000262(n)+n*a(n-1))` with `a(0)=0`
-/

namespace A102289.P3432257710033105749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A002720 n - (A000262 n + (n : ℤ) * a (n - 1))

end

end A102289.P3432257710033105749

namespace A102289

/-- `A002720(n)-(A000262(n)+n*a(n-1))` -/
def P3432257710033105749.Spec : Prop :=
  ∀ n, P3432257710033105749.a n = A102289 n

end A102289

/-! ## A102289.P14779226287757104007

`A002720(n)-(A129652(∑[n])+n*a(n-1))` with `a(0)=0`
-/

namespace A102289.P14779226287757104007
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A002720 n - (A129652 (∑ j ∈ Finset.range (n + 1), f1 j) + (n : ℤ) * a (n - 1))

end

end A102289.P14779226287757104007

namespace A102289

/-- `A002720(n)-(A129652(∑[n])+n*a(n-1))` -/
def P14779226287757104007.Spec : Prop :=
  ∀ n, P14779226287757104007.a n = A102289 n

end A102289

/-! ## A102289.P17417892121082052429

`A097662(n)+1-(A000262(n)+n*a(n-1))` with `a(0)=0`
-/

namespace A102289.P17417892121082052429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A097662 n + 1 - (A000262 n + (n : ℤ) * a (n - 1))

end

end A102289.P17417892121082052429

namespace A102289

/-- `A097662(n)+1-(A000262(n)+n*a(n-1))` -/
def P17417892121082052429.Spec : Prop :=
  ∀ n, P17417892121082052429.a n = A102289 n

end A102289

/-! ## A102289.P2154311893352003674

`A056953(2*n)-(A000262(n)+n*a(n-1))` with `a(0)=0`
-/

namespace A102289.P2154311893352003674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A056953 (2 * n) - (A000262 n + (n : ℤ) * a (n - 1))

end

end A102289.P2154311893352003674

namespace A102289

/-- `A056953(2*n)-(A000262(n)+n*a(n-1))` -/
def P2154311893352003674.Spec : Prop :=
  ∀ n, P2154311893352003674.a n = A102289 n

end A102289

/-! ## A102289.P12298625300812003780

`A056953(2*n)-(A129652(∑[n])+n*a(n-1))` with `a(0)=0`
-/

namespace A102289.P12298625300812003780
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A056953 (2 * n) - (A129652 (∑ j ∈ Finset.range (n + 1), f1 j) + (n : ℤ) * a (n - 1))

end

end A102289.P12298625300812003780

namespace A102289

/-- `A056953(2*n)-(A129652(∑[n])+n*a(n-1))` -/
def P12298625300812003780.Spec : Prop :=
  ∀ n, P12298625300812003780.a n = A102289 n

end A102289

/-!
# A102290: Total number of even lists in all sets of lists, cf. A000262.

The programs for A102290, there is no canonical definition to state claims against.
-/

/-! ## A102290.P17364126654775099472

`n*A102289(abs(1-n))`
-/

namespace A102290.P17364126654775099472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A102289 |1 - (n : ℤ)|.toNat

end

end A102290.P17364126654775099472

/-! ## A102290.P9799907855016991108

`n*(A288268(n)-a(n-1))` with `a(0)=0`
-/

namespace A102290.P9799907855016991108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  (n : ℤ) * (A288268 n - a (n - 1))

end

end A102290.P9799907855016991108

/-! ## A102290.P5999052306866589587

`A052852(n)-A102289(n)`
-/

namespace A102290.P5999052306866589587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052852 n - A102289 n

end

end A102290.P5999052306866589587

/-! ## A102290.P2256830592885194057

`A102289(A259361(n²))*n`
-/

namespace A102290.P2256830592885194057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102289 (A259361 (n ^ 2)).toNat * (n : ℤ)

end

end A102290.P2256830592885194057

/-! ## A102290.P4327409163348785249

`A288268(n+1)-A102289(n)`
-/

namespace A102290.P4327409163348785249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288268 (n + 1) - A102289 n

end

end A102290.P4327409163348785249

/-! ## A102290.P9496570968007002381

`A002720(n)-(A102289(n)+A000262(n))`
-/

namespace A102290.P9496570968007002381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002720 n - (A102289 n + A000262 n)

end

end A102290.P9496570968007002381

/-!
# A102291: Total number of prime parts in all compositions of n.

The programs for A102291, there is no canonical definition to state claims against.
-/

/-! ## A102291.P8367572217599364454

`A087836(A193621(n))-1`
-/

namespace A102291.P8367572217599364454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087836 (A193621 n).toNat - 1

end

end A102291.P8367572217599364454

/-!
# A102294: Number of prime divisors (with multiplicity) of icosahedral numbers.

The programs for A102294, the canonical program `A102294.P16016017695164082248` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A102294 has offset 1).

The definition of A102294 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001222, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A102294.P16016017695164082248

`A001222(n+1)+A001222(5*C(n+1, 2)+1)`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A102294

/-- `A001222(n+1)+A001222(5*C(n+1, 2)+1)` -/
def P16016017695164082248.Spec : Prop :=
  ∀ n, P16016017695164082248.a n = A102294 (n + 1)

theorem P16016017695164082248.correct : P16016017695164082248.Spec := by
  intro n
  simp only [A102294, Nat.add_sub_cancel]

end A102294

/-! ## A102294.P18384790876015183569

`A001222((n+1)*(5*(n+1)²-5*(n+1)+2)/2)`
-/

namespace A102294.P18384790876015183569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (SequenceMachineLib.roundAway (((n + 1 : ℤ) * ((5 * (n + 1) ^ 2 : ℤ) - (5 * (n + 1) : ℤ) + 2) : ℚ) / 2)).toNat

end

end A102294.P18384790876015183569

namespace A102294

/-- `A001222((n+1)*(5*(n+1)²-5*(n+1)+2)/2)` -/
def P18384790876015183569.Spec : Prop :=
  ∀ n, P18384790876015183569.a n = A102294 (n + 1)

end A102294

/-! ## A102294.P16964589774316478340

`∑{e}[A005891(n), #]+Δ[A022559(n)]`
-/

namespace A102294.P16964589774316478340
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005891 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022559 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p : ℕ) : ℤ) + (f2 (n + 1) - f2 n)

end

end A102294.P16964589774316478340

namespace A102294

/-- `∑{e}[A005891(n), #]+Δ[A022559(n)]` -/
def P16964589774316478340.Spec : Prop :=
  ∀ n, P16964589774316478340.a n = A102294 (n + 1)

end A102294

/-! ## A102294.P9656431357263075259

`A001222(n+1)+∑{e}[A005891(n), #]`
-/

namespace A102294.P9656431357263075259
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005891 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1) + ((∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p : ℕ) : ℤ)

end

end A102294.P9656431357263075259

namespace A102294

/-- `A001222(n+1)+∑{e}[A005891(n), #]` -/
def P9656431357263075259.Spec : Prop :=
  ∀ n, P9656431357263075259.a n = A102294 (n + 1)

end A102294

/-! ## A102294.P10678276849031417593

`∑{e}[n+1, #]+A001222(∑[A008706(n)])`
-/

namespace A102294.P10678276849031417593
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008706 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p : ℕ) : ℤ) + A001222 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

end

end A102294.P10678276849031417593

namespace A102294

/-- `∑{e}[n+1, #]+A001222(∑[A008706(n)])` -/
def P10678276849031417593.Spec : Prop :=
  ∀ n, P10678276849031417593.a n = A102294 (n + 1)

end A102294

/-! ## A102294.P11208407768782094101

`A001222(∑[5*n]+1)+A001222(n+1)`
-/

namespace A102294.P11208407768782094101
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (∑ j ∈ Finset.range (n + 1), f1 j + 1) + A001222 (n + 1)

end

end A102294.P11208407768782094101

namespace A102294

/-- `A001222(∑[5*n]+1)+A001222(n+1)` -/
def P11208407768782094101.Spec : Prop :=
  ∀ n, P11208407768782094101.a n = A102294 (n + 1)

end A102294

/-! ## A102294.P12284354234558606715

`A001222(A005891(n))+Δ[A022559(n)]`
-/

namespace A102294.P12284354234558606715
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022559 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A005891 n).toNat + (f1 (n + 1) - f1 n)

end

end A102294.P12284354234558606715

namespace A102294

/-- `A001222(A005891(n))+Δ[A022559(n)]` -/
def P12284354234558606715.Spec : Prop :=
  ∀ n, P12284354234558606715.a n = A102294 (n + 1)

end A102294

/-! ## A102294.P2076617245856139208

`A252736(2*(n+1))+A001222(A005891(n))`
-/

namespace A102294.P2076617245856139208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252736 (2 * (n + 1)) + A001222 (A005891 n).toNat

end

end A102294.P2076617245856139208

namespace A102294

/-- `A252736(2*(n+1))+A001222(A005891(n))` -/
def P2076617245856139208.Spec : Prop :=
  ∀ n, P2076617245856139208.a n = A102294 (n + 1)

end A102294

/-! ## A102294.P16175559719263976555

`∑{d}[n+1, n²%A014963(#)]+A001222(A005891(n))`
-/

namespace A102294.P16175559719263976555
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), Int.tmod (n ^ 2 : ℤ) (A014963 d) + A001222 (A005891 n).toNat

end

end A102294.P16175559719263976555

namespace A102294

/-- `∑{d}[n+1, n²%A014963(#)]+A001222(A005891(n))` -/
def P16175559719263976555.Spec : Prop :=
  ∀ n, P16175559719263976555.a n = A102294 (n + 1)

end A102294

/-! ## A102294.P1143678714317114718

`A001222(A005891(n))+A001222(-xor(2*n, -2))-1`
-/

namespace A102294.P1143678714317114718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A005891 n).toNat + (A001222 (-Int.xor (2 * n : ℤ) (-2)).toNat - 1)

end

end A102294.P1143678714317114718

namespace A102294

/-- `A001222(A005891(n))+A001222(-xor(2*n, -2))-1` -/
def P1143678714317114718.Spec : Prop :=
  ∀ n, P1143678714317114718.a n = A102294 (n + 1)

end A102294

/-! ## A102294.P10335333342580898933

`A001222(A005891(n))+A000005(∏{e}[n+1, 2^#])-1`
-/

namespace A102294.P10335333342580898933
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A005891 n).toNat + (A000005 (∏ p ∈ Nat.primeFactors (f1 n), 2 ^ Nat.factorization (f1 n) p) - 1)

end

end A102294.P10335333342580898933

namespace A102294

/-- `A001222(A005891(n))+A000005(∏{e}[n+1, 2^#])-1` -/
def P10335333342580898933.Spec : Prop :=
  ∀ n, P10335333342580898933.a n = A102294 (n + 1)

end A102294

/-! ## A102294.P16930391838555527296

`A001222(A005891(n))+A001222(4*n+2-2*n)-1`
-/

namespace A102294.P16930391838555527296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A005891 n).toNat + (A001222 (4 * n + 2 - 2 * n) - 1)

end

end A102294.P16930391838555527296

namespace A102294

/-- `A001222(A005891(n))+A001222(4*n+2-2*n)-1` -/
def P16930391838555527296.Spec : Prop :=
  ∀ n, P16930391838555527296.a n = A102294 (n + 1)

end A102294

/-! ## A102294.P8858627690278452551

`A001222(A005891(n))-(A022559(n)-A022559(n+1))`
-/

namespace A102294.P8858627690278452551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A005891 n).toNat - (A022559 n - A022559 (n + 1))

end

end A102294.P8858627690278452551

namespace A102294

/-- `A001222(A005891(n))-(A022559(n)-A022559(n+1))` -/
def P8858627690278452551.Spec : Prop :=
  ∀ n, P8858627690278452551.a n = A102294 (n + 1)

end A102294

/-! ## A102294.P10824493697311863517

`A347395((n+1)²)+A001222(A005891(n))`
-/

namespace A102294.P10824493697311863517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347395 ((n + 1) ^ 2) + A001222 (A005891 n).toNat

end

end A102294.P10824493697311863517

namespace A102294

/-- `A347395((n+1)²)+A001222(A005891(n))` -/
def P10824493697311863517.Spec : Prop :=
  ∀ n, P10824493697311863517.a n = A102294 (n + 1)

end A102294

/-! ## A102294.P13971756884888216819

`A336123(A061142((n+1)²))+A001222(A005891(n))`
-/

namespace A102294.P13971756884888216819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336123 (A061142 ((n + 1) ^ 2)).toNat + A001222 (A005891 n).toNat

end

end A102294.P13971756884888216819

namespace A102294

/-- `A336123(A061142((n+1)²))+A001222(A005891(n))` -/
def P13971756884888216819.Spec : Prop :=
  ∀ n, P13971756884888216819.a n = A102294 (n + 1)

end A102294

/-!
# A102295: Odd primes which set records for smallest absolute value of a quadratic nonresidue.

The programs for A102295, there is no canonical definition to state claims against.
-/

/-! ## A102295.P15189654565400399351

`A025046(A057428(n)+A001747(n+1))`
-/

namespace A102295.P15189654565400399351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025046 (A057428 n + A001747 (n + 1)).toNat

end

end A102295.P15189654565400399351

/-! ## A102295.P2291723379074788558

`A025046(A076274(n+1)+A000007(n))`
-/

namespace A102295.P2291723379074788558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025046 (A076274 (n + 1) + A000007 n).toNat

end

end A102295.P2291723379074788558

/-! ## A102295.P15371524501476583718

`A025046(A076274(n+1)+A017883(n))`
-/

namespace A102295.P15371524501476583718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025046 (A076274 (n + 1) + A017883 n).toNat

end

end A102295.P15371524501476583718

/-! ## A102295.P14646356256015884739

`A025046(A001747(n+1)-A178334(n))`
-/

namespace A102295.P14646356256015884739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025046 (A001747 (n + 1) - A178334 n).toNat

end

end A102295.P14646356256015884739

/-!
# A102296: a(n) = (1/6)*(n+1)*(10*n^2 + 17*n + 12).

The programs for A102296, the canonical program `A102296.P12970538922416079548` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A102296 has offset 0).

The definition of A102296 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A102296.P12970538922416079548

`(n+1)*(10*n²+17*n+12)/6`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A102296

/-- `(n+1)*(10*n²+17*n+12)/6` -/
def P12970538922416079548.Spec : Prop :=
  ∀ n, P12970538922416079548.a n = (A102296 n : ℚ)

end A102296

/-! ## A102296.P1853889582806108557

`1/6*(n+1)*(10*n²+17*n+12)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A102296.P1853889582806108557
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 : ℚ) / 6 * (n + 1 : ℚ) * (10 * n ^ 2 + 17 * n + 12 : ℚ)

end

end A102296.P1853889582806108557

namespace A102296

/-- `1/6*(n+1)*(10*n²+17*n+12)` -/
def P1853889582806108557.Spec : Prop :=
  ∀ n, P1853889582806108557.a n = (A102296 n : ℚ)

end A102296

/-! ## A102296.P5203030032255794641

`∑[∑[a(n-1)+10]]` with `a(0)=2, a(1)=9`
-/

namespace A102296.P5203030032255794641
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [2, 9] fun n f2 =>
  f2 (n - 1) + 10

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A102296.P5203030032255794641

namespace A102296

/-- `∑[∑[a(n-1)+10]]` -/
def P5203030032255794641.Spec : Prop :=
  ∀ n, (P5203030032255794641.a n : ℤ) = A102296 n

end A102296

/-! ## A102296.P3825135057303300369

`∑[∑[ogf((2+5x+3x^2)/(1-2x+x^2))]]`
-/

namespace A102296.P3825135057303300369
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2, 5, 3] [1, -2, 1] n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A102296.P3825135057303300369

namespace A102296

/-- `∑[∑[ogf((2+5x+3x^2)/(1-2x+x^2))]]` -/
def P3825135057303300369.Spec : Prop :=
  ∀ n, P3825135057303300369.a n = A102296 n

end A102296

/-! ## A102296.P9686522105253555262

`ogf((2+5x+3x^2)/(1-4x+6x^2-4x^3+x^4))`
-/

namespace A102296.P9686522105253555262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2, 5, 3] [1, -4, 6, -4, 1] n

end

end A102296.P9686522105253555262

namespace A102296

/-- `ogf((2+5x+3x^2)/(1-4x+6x^2-4x^3+x^4))` -/
def P9686522105253555262.Spec : Prop :=
  ∀ n, P9686522105253555262.a n = A102296 n

end A102296

/-! ## A102296.P9587318691140443278

`∑[C(2*n, 2)]+(n+2)*(n+1)²`
-/

namespace A102296.P9587318691140443278
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (2 * n) 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n + 2) * (n + 1) ^ 2

end

end A102296.P9587318691140443278

namespace A102296

/-- `∑[C(2*n, 2)]+(n+2)*(n+1)²` -/
def P9587318691140443278.Spec : Prop :=
  ∀ n, (P9587318691140443278.a n : ℤ) = A102296 n

end A102296

/-! ## A102296.P15336580203775447171

`∑[(n+1)²+lcm(2*n+1, 2*n)]+n+1`
-/

namespace A102296.P15336580203775447171
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2 + Nat.lcm (2 * n + 1) (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n + 1)

end

end A102296.P15336580203775447171

namespace A102296

/-- `∑[(n+1)²+lcm(2*n+1, 2*n)]+n+1` -/
def P15336580203775447171.Spec : Prop :=
  ∀ n, (P15336580203775447171.a n : ℤ) = A102296 n

end A102296

/-! ## A102296.P4704283209771628358

`∑[A135705(n)+2]`
-/

namespace A102296.P4704283209771628358
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135705 n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A102296.P4704283209771628358

namespace A102296

/-- `∑[A135705(n)+2]` -/
def P4704283209771628358.Spec : Prop :=
  ∀ n, P4704283209771628358.a n = A102296 n

end A102296

/-! ## A102296.P2666872071829466301

`∑[A069894(n)+n²]`
-/

namespace A102296.P2666872071829466301
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069894 n + (n ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A102296.P2666872071829466301

namespace A102296

/-- `∑[A069894(n)+n²]` -/
def P2666872071829466301.Spec : Prop :=
  ∀ n, P2666872071829466301.a n = A102296 n

end A102296

/-! ## A102296.P15165613222923287980

`∑[A079273(n+1)+1]`
-/

namespace A102296.P15165613222923287980
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079273 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A102296.P15165613222923287980

namespace A102296

/-- `∑[A079273(n+1)+1]` -/
def P15165613222923287980.Spec : Prop :=
  ∀ n, P15165613222923287980.a n = A102296 n

end A102296

/-! ## A102296.P9195599317838918291

`A096000(n)+∑[n+1]`
-/

namespace A102296.P9195599317838918291
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096000 n + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A102296.P9195599317838918291

namespace A102296

/-- `A096000(n)+∑[n+1]` -/
def P9195599317838918291.Spec : Prop :=
  ∀ n, P9195599317838918291.a n = A102296 n

end A102296

/-! ## A102296.P11148940746519020760

`∑[A386485(n+1)-n]`
-/

namespace A102296.P11148940746519020760
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386485 (n + 1) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A102296.P11148940746519020760

namespace A102296

/-- `∑[A386485(n+1)-n]` -/
def P11148940746519020760.Spec : Prop :=
  ∀ n, P11148940746519020760.a n = A102296 n

end A102296

/-! ## A102296.P14038641666811675802

`A035597(n+1)+∑[n²]`
-/

namespace A102296.P14038641666811675802
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035597 (n + 1) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A102296.P14038641666811675802

namespace A102296

/-- `A035597(n+1)+∑[n²]` -/
def P14038641666811675802.Spec : Prop :=
  ∀ n, P14038641666811675802.a n = A102296 n

end A102296

/-! ## A102296.P4196193199837660910

`A100179(n+1)+(n+1)²`
-/

namespace A102296.P4196193199837660910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100179 (n + 1) + ((n + 1) ^ 2 : ℤ)

end

end A102296.P4196193199837660910

namespace A102296

/-- `A100179(n+1)+(n+1)²` -/
def P4196193199837660910.Spec : Prop :=
  ∀ n, P4196193199837660910.a n = A102296 n

end A102296

/-! ## A102296.P11302867109921818793

`∑[∑[n+1]]+∑[A064225(n)]`
-/

namespace A102296.P11302867109921818793
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064225 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) + ∑ j ∈ Finset.range (n + 1), f3 j

end

end A102296.P11302867109921818793

namespace A102296

/-- `∑[∑[n+1]]+∑[A064225(n)]` -/
def P11302867109921818793.Spec : Prop :=
  ∀ n, P11302867109921818793.a n = A102296 n

end A102296

/-! ## A102296.P10734805296789196889

`A174723(n+1)+(n+1)^3`
-/

namespace A102296.P10734805296789196889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174723 (n + 1) + ((n + 1) ^ 3 : ℤ)

end

end A102296.P10734805296789196889

namespace A102296

/-- `A174723(n+1)+(n+1)^3` -/
def P10734805296789196889.Spec : Prop :=
  ∀ n, P10734805296789196889.a n = A102296 n

end A102296

/-! ## A102296.P4651202925424593518

`∑[A054569(n+1)+(n+1)²]`
-/

namespace A102296.P4651202925424593518
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054569 (n + 1) + ((n + 1) ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A102296.P4651202925424593518

namespace A102296

/-- `∑[A054569(n+1)+(n+1)²]` -/
def P4651202925424593518.Spec : Prop :=
  ∀ n, P4651202925424593518.a n = A102296 n

end A102296

/-! ## A102296.P4367316024787979815

`A100178(n+1)+∑[(n+1)²]`
-/

namespace A102296.P4367316024787979815
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100178 (n + 1) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A102296.P4367316024787979815

namespace A102296

/-- `A100178(n+1)+∑[(n+1)²]` -/
def P4367316024787979815.Spec : Prop :=
  ∀ n, P4367316024787979815.a n = A102296 n

end A102296

/-! ## A102296.P7780814871194881112

`∑[A273982(n+1)]+(n+1)²`
-/

namespace A102296.P7780814871194881112
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273982 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + ((n + 1) ^ 2 : ℤ)

end

end A102296.P7780814871194881112

namespace A102296

/-- `∑[A273982(n+1)]+(n+1)²` -/
def P7780814871194881112.Spec : Prop :=
  ∀ n, P7780814871194881112.a n = A102296 n

end A102296

/-! ## A102296.P13108396909723399065

`A167875(n)+A051662(n)`
-/

namespace A102296.P13108396909723399065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167875 n + A051662 n

end

end A102296.P13108396909723399065

namespace A102296

/-- `A167875(n)+A051662(n)` -/
def P13108396909723399065.Spec : Prop :=
  ∀ n, P13108396909723399065.a n = A102296 n

end A102296

/-!
# A102297: Number of distinct divisors of n+1 where n and n+1 are composite or twin composite numbers.

The programs for A102297, the canonical program `A102297.P16199209272639470974` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A102297 has offset 1).

The definition of A102297 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A102297.P16199209272639470974

`∑{e}[∏{p}[A005381(n+1), #], #]`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A102297

/-- `∑{e}[∏{p}[A005381(n+1), #], #]` -/
def P16199209272639470974.Spec : Prop :=
  ∀ n, (P16199209272639470974.a n : ℤ) = A102297 (n + 1)

theorem P16199209272639470974.correct : P16199209272639470974.Spec := by
  intro n
  simp only [A102297, Nat.add_sub_cancel]

end A102297

/-! ## A102297.P9994754144704155820

`A001221(A005381(n+1))`
-/

namespace A102297.P9994754144704155820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A005381 (n + 1)).toNat

end

end A102297.P9994754144704155820

namespace A102297

/-- `A001221(A005381(n+1))` -/
def P9994754144704155820.Spec : Prop :=
  ∀ n, P9994754144704155820.a n = A102297 (n + 1)

end A102297

/-! ## A102297.P5289060897632241256

`A001221(A068780(n+1)+1)`
-/

namespace A102297.P5289060897632241256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A068780 (n + 1) + 1).toNat

end

end A102297.P5289060897632241256

namespace A102297

/-- `A001221(A068780(n+1)+1)` -/
def P5289060897632241256.Spec : Prop :=
  ∀ n, P5289060897632241256.a n = A102297 (n + 1)

end A102297

/-! ## A102297.P17274580076696079498

`A087624(A068780(n+1)+1)`
-/

namespace A102297.P17274580076696079498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087624 (A068780 (n + 1) + 1).toNat

end

end A102297.P17274580076696079498

namespace A102297

/-- `A087624(A068780(n+1)+1)` -/
def P17274580076696079498.Spec : Prop :=
  ∀ n, P17274580076696079498.a n = A102297 (n + 1)

end A102297

/-! ## A102297.P12418039105690515714

`A001221(A308833(n+2)+2)`
-/

namespace A102297.P12418039105690515714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A308833 (n + 2) + 2).toNat

end

end A102297.P12418039105690515714

namespace A102297

/-- `A001221(A308833(n+2)+2)` -/
def P12418039105690515714.Spec : Prop :=
  ∀ n, P12418039105690515714.a n = A102297 (n + 1)

end A102297

/-! ## A102297.P10436251261756207876

`A001221(lt[3, A059964(n+1)])`
-/

namespace A102297.P10436251261756207876
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059964 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A102297.P10436251261756207876

namespace A102297

/-- `A001221(lt[3, A059964(n+1)])` -/
def P10436251261756207876.Spec : Prop :=
  ∀ n, P10436251261756207876.a n = A102297 (n + 1)

end A102297

/-! ## A102297.P5631313379937110117

`A001221(lt[3, A103509(n+1)])`
-/

namespace A102297.P5631313379937110117
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103509 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A102297.P5631313379937110117

namespace A102297

/-- `A001221(lt[3, A103509(n+1)])` -/
def P5631313379937110117.Spec : Prop :=
  ∀ n, P5631313379937110117.a n = A102297 (n + 1)

end A102297

/-! ## A102297.P11180177480822456519

`A001221(lt[5, A103506(n+1)])`
-/

namespace A102297.P11180177480822456519
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103506 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A102297.P11180177480822456519

namespace A102297

/-- `A001221(lt[5, A103506(n+1)])` -/
def P11180177480822456519.Spec : Prop :=
  ∀ n, P11180177480822456519.a n = A102297 (n + 1)

end A102297

/-! ## A102297.P13583441575380989250

`∑{p}[A005381(n+1), A001222(#)]`
-/

namespace A102297.P13583441575380989250
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005381 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A001222 p

end

end A102297.P13583441575380989250

namespace A102297

/-- `∑{p}[A005381(n+1), A001222(#)]` -/
def P13583441575380989250.Spec : Prop :=
  ∀ n, P13583441575380989250.a n = A102297 (n + 1)

end A102297

/-! ## A102297.P15862515220958842354

`A001222(∏{p}[A005381(n+1), #])`
-/

namespace A102297.P15862515220958842354
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005381 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, p)

end

end A102297.P15862515220958842354

namespace A102297

/-- `A001222(∏{p}[A005381(n+1), #])` -/
def P15862515220958842354.Spec : Prop :=
  ∀ n, P15862515220958842354.a n = A102297 (n + 1)

end A102297

/-! ## A102297.P1354192497852276770

`A001221(lt[1, A064722(n+1)]+1)`
-/

namespace A102297.P1354192497852276770
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064722 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1)

end

end A102297.P1354192497852276770

namespace A102297

/-- `A001221(lt[1, A064722(n+1)]+1)` -/
def P1354192497852276770.Spec : Prop :=
  ∀ n, P1354192497852276770.a n = A102297 (n + 1)

end A102297

/-! ## A102297.P6162056180520991312

`A001221(lt[2, A175851(n+1)]+1)`
-/

namespace A102297.P6162056180520991312
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175851 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1)

end

end A102297.P6162056180520991312

namespace A102297

/-- `A001221(lt[2, A175851(n+1)]+1)` -/
def P6162056180520991312.Spec : Prop :=
  ∀ n, P6162056180520991312.a n = A102297 (n + 1)

end A102297

/-! ## A102297.P4013437869420671227

`A001221(lt[1, A001222(or(1, n))]+1)`
-/

namespace A102297.P4013437869420671227
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (Nat.lor 1 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1)

end

end A102297.P4013437869420671227

namespace A102297

/-- `A001221(lt[1, A001222(or(1, n))]+1)` -/
def P4013437869420671227.Spec : Prop :=
  ∀ n, P4013437869420671227.a n = A102297 (n + 1)

end A102297

/-! ## A102297.P2110982294213469002

`A001221(lt[2, A000005(or(1, n))]+1)`
-/

namespace A102297.P2110982294213469002
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (Nat.lor 1 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1)

end

end A102297.P2110982294213469002

namespace A102297

/-- `A001221(lt[2, A000005(or(1, n))]+1)` -/
def P2110982294213469002.Spec : Prop :=
  ∀ n, P2110982294213469002.a n = A102297 (n + 1)

end A102297

/-! ## A102297.P9364225420969521608

`A001221(lt[A006530(or(1, n)), n]+1)`
-/

namespace A102297.P9364225420969521608
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (Nat.lor 1 n)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1)

end

end A102297.P9364225420969521608

namespace A102297

/-- `A001221(lt[A006530(or(1, n)), n]+1)` -/
def P9364225420969521608.Spec : Prop :=
  ∀ n, P9364225420969521608.a n = A102297 (n + 1)

end A102297

/-! ## A102297.P3237235244977315848

`A001221(lt[A020639(or(1, n)), n]+1)`
-/

namespace A102297.P3237235244977315848
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (Nat.lor 1 n)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1)

end

end A102297.P3237235244977315848

namespace A102297

/-- `A001221(lt[A020639(or(1, n)), n]+1)` -/
def P3237235244977315848.Spec : Prop :=
  ∀ n, P3237235244977315848.a n = A102297 (n + 1)

end A102297

/-! ## A102297.P10628210801828982883

`A001221(lt[n+2, A000203(or(1, n))]+1)`
-/

namespace A102297.P10628210801828982883
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (Nat.lor 1 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1)

end

end A102297.P10628210801828982883

namespace A102297

/-- `A001221(lt[n+2, A000203(or(1, n))]+1)` -/
def P10628210801828982883.Spec : Prop :=
  ∀ n, P10628210801828982883.a n = A102297 (n + 1)

end A102297

/-! ## A102297.P15801278057279195153

`A001222(∏{p}[lt[2, A000005(or(1, n))]+1, #])`
-/

namespace A102297.P15801278057279195153
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (Nat.lor 1 n)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) < f3 j) n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (∏ p ∈ Nat.primeFactors (f1 n), p)

end

end A102297.P15801278057279195153

namespace A102297

/-- `A001222(∏{p}[lt[2, A000005(or(1, n))]+1, #])` -/
def P15801278057279195153.Spec : Prop :=
  ∀ n, P15801278057279195153.a n = A102297 (n + 1)

end A102297

/-! ## A102297.P11416414888628938644

`A001221(lt[A006530((n+1)*(n+2)), n]+2)`
-/

namespace A102297.P11416414888628938644
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 ((n + 1) * (n + 2))

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 2)

end

end A102297.P11416414888628938644

namespace A102297

/-- `A001221(lt[A006530((n+1)*(n+2)), n]+2)` -/
def P11416414888628938644.Spec : Prop :=
  ∀ n, P11416414888628938644.a n = A102297 (n + 1)

end A102297

/-! ## A102297.P4164767871318173041

`A001221(∩[A018252(n+1)+1, A018252(n+1)])`
-/

namespace A102297.P4164767871318173041
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (n + 1) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n)

end

end A102297.P4164767871318173041

namespace A102297

/-- `A001221(∩[A018252(n+1)+1, A018252(n+1)])` -/
def P4164767871318173041.Spec : Prop :=
  ∀ n, P4164767871318173041.a n = A102297 (n + 1)

end A102297

/-!
# A102298: Number of prime divisors with multiplicity of n+1 where n and n+1 are composite or twin composite numbers.

The programs for A102298, the canonical program `A102298.P17921307606065959363` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A102298 has offset 1).

The definition of A102298 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A102298.P17921307606065959363

`∑{e}[A005381(n+1), #]`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A102298

/-- `∑{e}[A005381(n+1), #]` -/
def P17921307606065959363.Spec : Prop :=
  ∀ n, (P17921307606065959363.a n : ℤ) = A102298 (n + 1)

theorem P17921307606065959363.correct : P17921307606065959363.Spec := by
  intro n
  simp only [A102298, Nat.add_sub_cancel]

end A102298

/-! ## A102298.P12230401145647030688

`∑{e}[A068780(n+1)+1, #]`
-/

namespace A102298.P12230401145647030688
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068780 (n + 1) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A102298.P12230401145647030688

namespace A102298

/-- `∑{e}[A068780(n+1)+1, #]` -/
def P12230401145647030688.Spec : Prop :=
  ∀ n, (P12230401145647030688.a n : ℤ) = A102298 (n + 1)

theorem P12230401145647030688.correct : P12230401145647030688.Spec := by
  intro n
  simp only [A102298, Nat.add_sub_cancel, A102298.P12230401145647030688.f1, A102298.P12230401145647030688.a, A102298.P17921307606065959363.f1, A102298.P17921307606065959363.a, A005381, A005381.P16334453365373976889.f1, A005381.P16334453365373976889.f2, A005381.P16334453365373976889.a, A068780, A068780.P12907519640094677805.a, A323162, A323162.P4199434762193306250.a, A066247, A066247.P15227533178821378383.f1, A066247.P15227533178821378383.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A102298

/-! ## A102298.P740850517391568894

`∑{e}[lt[n+2, A000203(or(1, n))]+1, #]`
-/

namespace A102298.P740850517391568894
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (Nat.lor 1 n)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) < f3 j) n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p

end

end A102298.P740850517391568894

namespace A102298

/-- `∑{e}[lt[n+2, A000203(or(1, n))]+1, #]` -/
def P740850517391568894.Spec : Prop :=
  ∀ n, (P740850517391568894.a n : ℤ) = A102298 (n + 1)

end A102298

/-! ## A102298.P2882146195111345145

`∑{e}[lt[A014963(or(1, n-2)+2), n]+1, #]`
-/

namespace A102298.P2882146195111345145
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (Int.lor 1 ((n : ℤ) - 2) + 2).toNat

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < (f3 j : ℤ)) n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p

end

end A102298.P2882146195111345145

namespace A102298

/-- `∑{e}[lt[A014963(or(1, n-2)+2), n]+1, #]` -/
def P2882146195111345145.Spec : Prop :=
  ∀ n, (P2882146195111345145.a n : ℤ) = A102298 (n + 1)

end A102298

/-! ## A102298.P5143691273018005299

`A001222(A005381(n+1))`
-/

namespace A102298.P5143691273018005299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A005381 (n + 1)).toNat

end

end A102298.P5143691273018005299

namespace A102298

/-- `A001222(A005381(n+1))` -/
def P5143691273018005299.Spec : Prop :=
  ∀ n, P5143691273018005299.a n = A102298 (n + 1)

end A102298

/-! ## A102298.P16173998797894484578

`A001222(A068780(n+1)+1)`
-/

namespace A102298.P16173998797894484578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A068780 (n + 1) + 1).toNat

end

end A102298.P16173998797894484578

namespace A102298

/-- `A001222(A068780(n+1)+1)` -/
def P16173998797894484578.Spec : Prop :=
  ∀ n, P16173998797894484578.a n = A102298 (n + 1)

end A102298

/-! ## A102298.P10079986435584723810

`A001222(lt[1, A064722(n+1)]+1)`
-/

namespace A102298.P10079986435584723810
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064722 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1)

end

end A102298.P10079986435584723810

namespace A102298

/-- `A001222(lt[1, A064722(n+1)]+1)` -/
def P10079986435584723810.Spec : Prop :=
  ∀ n, P10079986435584723810.a n = A102298 (n + 1)

end A102298

/-! ## A102298.P15907024797696271061

`A001222(lt[1, A121561(n+1)]+1)`
-/

namespace A102298.P15907024797696271061
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121561 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1)

end

end A102298.P15907024797696271061

namespace A102298

/-- `A001222(lt[1, A121561(n+1)]+1)` -/
def P15907024797696271061.Spec : Prop :=
  ∀ n, P15907024797696271061.a n = A102298 (n + 1)

end A102298

/-! ## A102298.P15026277962208770292

`A001222(lt[2, A175851(n+1)]+1)`
-/

namespace A102298.P15026277962208770292
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175851 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1)

end

end A102298.P15026277962208770292

namespace A102298

/-- `A001222(lt[2, A175851(n+1)]+1)` -/
def P15026277962208770292.Spec : Prop :=
  ∀ n, P15026277962208770292.a n = A102298 (n + 1)

end A102298

/-! ## A102298.P6691300757221251206

`A001222(lt[1, A103509(n+1)-2])`
-/

namespace A102298.P6691300757221251206
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103509 (n + 1) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A102298.P6691300757221251206

namespace A102298

/-- `A001222(lt[1, A103509(n+1)-2])` -/
def P6691300757221251206.Spec : Prop :=
  ∀ n, P6691300757221251206.a n = A102298 (n + 1)

end A102298

/-! ## A102298.P13712185085075398547

`A001222(lt[1, A001222(or(1, n))]+1)`
-/

namespace A102298.P13712185085075398547
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (Nat.lor 1 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1)

end

end A102298.P13712185085075398547

namespace A102298

/-- `A001222(lt[1, A001222(or(1, n))]+1)` -/
def P13712185085075398547.Spec : Prop :=
  ∀ n, P13712185085075398547.a n = A102298 (n + 1)

end A102298

/-! ## A102298.P13287045845113092143

`A001222(A061767(A068780(n+1)))`
-/

namespace A102298.P13287045845113092143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A061767 (A068780 (n + 1)).toNat).toNat

end

end A102298.P13287045845113092143

namespace A102298

/-- `A001222(A061767(A068780(n+1)))` -/
def P13287045845113092143.Spec : Prop :=
  ∀ n, P13287045845113092143.a n = A102298 (n + 1)

end A102298

/-! ## A102298.P9051901359203438162

`A001222(∩[A018252(n+1)+1, A018252(n+1)])`
-/

namespace A102298.P9051901359203438162
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (n + 1) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n)

end

end A102298.P9051901359203438162

namespace A102298

/-- `A001222(∩[A018252(n+1)+1, A018252(n+1)])` -/
def P9051901359203438162.Spec : Prop :=
  ∀ n, P9051901359203438162.a n = A102298 (n + 1)

end A102298

/-! ## A102298.P3430118182446395404

`A001222(A166685(n+3)+1)-1`
-/

namespace A102298.P3430118182446395404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A166685 (n + 3) + 1).toNat - 1

end

end A102298.P3430118182446395404

namespace A102298

/-- `A001222(A166685(n+3)+1)-1` -/
def P3430118182446395404.Spec : Prop :=
  ∀ n, P3430118182446395404.a n = A102298 (n + 1)

end A102298

/-! ## A102298.P796299527319851862

`A001222(A026239(A065312(n+1)))`
-/

namespace A102298.P796299527319851862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A026239 (A065312 (n + 1)).toNat).toNat

end

end A102298.P796299527319851862

namespace A102298

/-- `A001222(A026239(A065312(n+1)))` -/
def P796299527319851862.Spec : Prop :=
  ∀ n, P796299527319851862.a n = A102298 (n + 1)

end A102298

/-! ## A102298.P13466422197316958287

`A001222(lt[A006530((n+1)*(n+2)), n]+2)`
-/

namespace A102298.P13466422197316958287
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 ((n + 1) * (n + 2))

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 2)

end

end A102298.P13466422197316958287

namespace A102298

/-- `A001222(lt[A006530((n+1)*(n+2)), n]+2)` -/
def P13466422197316958287.Spec : Prop :=
  ∀ n, P13466422197316958287.a n = A102298 (n + 1)

end A102298

/-!
# A102299: Number of prime divisors with multiplicity of n where n and n+1 are composite or twin composite numbers.

The programs for A102299, the canonical program `A102299.P678831004927681121` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A102299 has offset 1).

The definition of A102299 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A102299.P678831004927681121

`∑{e}[A068780(n+1), #]`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A102299

/-- `∑{e}[A068780(n+1), #]` -/
def P678831004927681121.Spec : Prop :=
  ∀ n, (P678831004927681121.a n : ℤ) = A102299 (n + 1)

theorem P678831004927681121.correct : P678831004927681121.Spec := by
  intro n
  simp only [A102299, Nat.add_sub_cancel]

end A102299

/-! ## A102299.P1428806432468521433

`∑{e}[1-A005381(n+1), #]`
-/

namespace A102299.P1428806432468521433
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A005381 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A102299.P1428806432468521433

namespace A102299

/-- `∑{e}[1-A005381(n+1), #]` -/
def P1428806432468521433.Spec : Prop :=
  ∀ n, (P1428806432468521433.a n : ℤ) = A102299 (n + 1)

end A102299

/-! ## A102299.P15625772637806860389

`∑{e}[lt[1, A121561(n+1)], #]`
-/

namespace A102299.P15625772637806860389
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121561 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) < f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p

end

end A102299.P15625772637806860389

namespace A102299

/-- `∑{e}[lt[1, A121561(n+1)], #]` -/
def P15625772637806860389.Spec : Prop :=
  ∀ n, (P15625772637806860389.a n : ℤ) = A102299 (n + 1)

end A102299

/-! ## A102299.P3509964308135491188

`∑{e}[lt[2, A013632(n)]+1, #]`
-/

namespace A102299.P3509964308135491188
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013632 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) < f3 j) n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p

end

end A102299.P3509964308135491188

namespace A102299

/-- `∑{e}[lt[2, A013632(n)]+1, #]` -/
def P3509964308135491188.Spec : Prop :=
  ∀ n, (P3509964308135491188.a n : ℤ) = A102299 (n + 1)

end A102299

/-! ## A102299.P16943022948489296586

`∑{e}[lt[A006530(or(1, n)), n], #]`
-/

namespace A102299.P16943022948489296586
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (Nat.lor 1 n)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < (f3 j : ℤ)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p

end

end A102299.P16943022948489296586

namespace A102299

/-- `∑{e}[lt[A006530(or(1, n)), n], #]` -/
def P16943022948489296586.Spec : Prop :=
  ∀ n, (P16943022948489296586.a n : ℤ) = A102299 (n + 1)

end A102299

/-! ## A102299.P11213152868992655053

`∑{e}[lt[A020639(or(1, n)), n], #]`
-/

namespace A102299.P11213152868992655053
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (Nat.lor 1 n)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < (f3 j : ℤ)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p

end

end A102299.P11213152868992655053

namespace A102299

/-- `∑{e}[lt[A020639(or(1, n)), n], #]` -/
def P11213152868992655053.Spec : Prop :=
  ∀ n, (P11213152868992655053.a n : ℤ) = A102299 (n + 1)

end A102299

/-! ## A102299.P8842403175881014242

`∑{e}[lt[1, A056898(n+1)]+1, #]`
-/

namespace A102299.P8842403175881014242
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056898 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) < f3 j) n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p

end

end A102299.P8842403175881014242

namespace A102299

/-- `∑{e}[lt[1, A056898(n+1)]+1, #]` -/
def P8842403175881014242.Spec : Prop :=
  ∀ n, (P8842403175881014242.a n : ℤ) = A102299 (n + 1)

end A102299

/-! ## A102299.P2773634802218294998

`∑{e}[lt[n, A082849(n+1)]+1, #]`
-/

namespace A102299.P2773634802218294998
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082849 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) < f3 j) n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p

end

end A102299.P2773634802218294998

namespace A102299

/-- `∑{e}[lt[n, A082849(n+1)]+1, #]` -/
def P2773634802218294998.Spec : Prop :=
  ∀ n, (P2773634802218294998.a n : ℤ) = A102299 (n + 1)

end A102299

/-! ## A102299.P17111396082510372935

`∑{e}[lt[A002034(or(1, n))+1, n], #]`
-/

namespace A102299.P17111396082510372935
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002034 (Nat.lor 1 n) + 1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < (f3 j : ℤ)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p

end

end A102299.P17111396082510372935

namespace A102299

/-- `∑{e}[lt[A002034(or(1, n))+1, n], #]` -/
def P17111396082510372935.Spec : Prop :=
  ∀ n, (P17111396082510372935.a n : ℤ) = A102299 (n + 1)

end A102299

/-! ## A102299.P9449458065392546589

`∑{e}[lt[n+2, A000203(or(1, n))], #]`
-/

namespace A102299.P9449458065392546589
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (Nat.lor 1 n)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) < f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p

end

end A102299.P9449458065392546589

namespace A102299

/-- `∑{e}[lt[n+2, A000203(or(1, n))], #]` -/
def P9449458065392546589.Spec : Prop :=
  ∀ n, (P9449458065392546589.a n : ℤ) = A102299 (n + 1)

end A102299

/-! ## A102299.P12441496530944590423

`A001222(A068780(n+1))`
-/

namespace A102299.P12441496530944590423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A068780 (n + 1)).toNat

end

end A102299.P12441496530944590423

namespace A102299

/-- `A001222(A068780(n+1))` -/
def P12441496530944590423.Spec : Prop :=
  ∀ n, P12441496530944590423.a n = A102299 (n + 1)

end A102299

/-! ## A102299.P18307633810382975001

`A001222(A005381(n+1)-1)`
-/

namespace A102299.P18307633810382975001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A005381 (n + 1) - 1).toNat

end

end A102299.P18307633810382975001

namespace A102299

/-- `A001222(A005381(n+1)-1)` -/
def P18307633810382975001.Spec : Prop :=
  ∀ n, P18307633810382975001.a n = A102299 (n + 1)

end A102299

/-! ## A102299.P4247435477419605461

`A001222(lt[1, A064722(n+1)])`
-/

namespace A102299.P4247435477419605461
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064722 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A102299.P4247435477419605461

namespace A102299

/-- `A001222(lt[1, A064722(n+1)])` -/
def P4247435477419605461.Spec : Prop :=
  ∀ n, P4247435477419605461.a n = A102299 (n + 1)

end A102299

/-! ## A102299.P14165343299002226429

`A001222(lt[1, A121561(n+1)])`
-/

namespace A102299.P14165343299002226429
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121561 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A102299.P14165343299002226429

namespace A102299

/-- `A001222(lt[1, A121561(n+1)])` -/
def P14165343299002226429.Spec : Prop :=
  ∀ n, P14165343299002226429.a n = A102299 (n + 1)

end A102299

/-! ## A102299.P6949756449319719662

`A001222(lt[2, A175851(n+1)])`
-/

namespace A102299.P6949756449319719662
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175851 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A102299.P6949756449319719662

namespace A102299

/-- `A001222(lt[2, A175851(n+1)])` -/
def P6949756449319719662.Spec : Prop :=
  ∀ n, P6949756449319719662.a n = A102299 (n + 1)

end A102299

/-! ## A102299.P8445859697527839567

`A001222(lt[3, A185091(n+2)])`
-/

namespace A102299.P8445859697527839567
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185091 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A102299.P8445859697527839567

namespace A102299

/-- `A001222(lt[3, A185091(n+2)])` -/
def P8445859697527839567.Spec : Prop :=
  ∀ n, P8445859697527839567.a n = A102299 (n + 1)

end A102299

/-! ## A102299.P11790102658911546972

`A001222(lt[1, A001222(or(1, n))])`
-/

namespace A102299.P11790102658911546972
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (Nat.lor 1 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A102299.P11790102658911546972

namespace A102299

/-- `A001222(lt[1, A001222(or(1, n))])` -/
def P11790102658911546972.Spec : Prop :=
  ∀ n, P11790102658911546972.a n = A102299 (n + 1)

end A102299

/-! ## A102299.P14334016094508419671

`A001222(lt[n, n*A007920(n)])`
-/

namespace A102299.P14334016094508419671
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A007920 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A102299.P14334016094508419671

namespace A102299

/-- `A001222(lt[n, n*A007920(n)])` -/
def P14334016094508419671.Spec : Prop :=
  ∀ n, P14334016094508419671.a n = A102299 (n + 1)

end A102299

/-! ## A102299.P4298098262670175305

`A001222(lt[A093074(n+1), n+1]+1)`
-/

namespace A102299.P4298098262670175305
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093074 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1)

end

end A102299.P4298098262670175305

namespace A102299

/-- `A001222(lt[A093074(n+1), n+1]+1)` -/
def P4298098262670175305.Spec : Prop :=
  ∀ n, P4298098262670175305.a n = A102299 (n + 1)

end A102299

/-! ## A102299.P11363419025460183551

`A001222(lt[A006530((n+1)*a(n-1)), n])` with `a(0)=6`
-/

namespace A102299.P11363419025460183551
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [6] fun n f1 =>
  A006530 ((n + 1 : ℤ) * f1 (n - 1)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A102299.P11363419025460183551

namespace A102299

/-- `A001222(lt[A006530((n+1)*a(n-1)), n])` -/
def P11363419025460183551.Spec : Prop :=
  ∀ n, P11363419025460183551.a n = A102299 (n + 1)

end A102299

