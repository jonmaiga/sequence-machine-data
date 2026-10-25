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
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C037
import Seq.B000.C038
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C008
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C005
import Seq.B002.C006
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
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

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A081300: Diagonal of square array A081297.

The programs for A081300, the canonical program `A081300.P6213025300963142357` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A081300 has offset 0).

The definition of A081300 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A081300.P6213025300963142357

`((n+1)^(n+3)-(-n)^(n+3))/(2*n+1)`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A081300

/-- `((n+1)^(n+3)-(-n)^(n+3))/(2*n+1)` -/
def P6213025300963142357.Spec : Prop :=
  ∀ n, P6213025300963142357.a n = (A081300 n : ℚ)

end A081300

/-! ## A081300.P1431003075080025472

`A081297((n+1)²+(n+2)²)`
-/

namespace A081300.P1431003075080025472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081297 ((n + 1) ^ 2 + (n + 2) ^ 2)

end

end A081300.P1431003075080025472

namespace A081300

/-- `A081297((n+1)²+(n+2)²)` -/
def P1431003075080025472.Spec : Prop :=
  ∀ n, P1431003075080025472.a n = A081300 n

end A081300

/-! ## A081300.P17734948748925293823

`A072024(2*(n+1)*(n+3))`
-/

namespace A081300.P17734948748925293823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072024 (2 * ((n + 1) * (n + 3)))

end

end A081300.P17734948748925293823

namespace A081300

/-- `A072024(2*(n+1)*(n+3))` -/
def P17734948748925293823.Spec : Prop :=
  ∀ n, P17734948748925293823.a n = A081300 n

end A081300

/-! ## A081300.P17550006953977205888

`record[A081297(A001844(val(n+1, 2)+1))]`
-/

namespace A081300.P17550006953977205888
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081297 (A001844 (SequenceMachineLib.valuation (n + 1) 2 + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A081300.P17550006953977205888

namespace A081300

/-- `record[A081297(A001844(val(n+1, 2)+1))]` -/
def P17550006953977205888.Spec : Prop :=
  ∀ n, P17550006953977205888.a n = A081300 n

end A081300

/-! ## A081300.P2577281146548489119

`record[A081297(A001844(val(n+1, 2)))]`
-/

namespace A081300.P2577281146548489119
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081297 (A001844 (SequenceMachineLib.valuation (n + 1) 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A081300.P2577281146548489119

namespace A081300

/-- `record[A081297(A001844(val(n+1, 2)))]` -/
def P2577281146548489119.Spec : Prop :=
  ∀ n, P2577281146548489119.a n = A081300 n

end A081300

/-!
# A081301: Subdiagonal of square array A081297.

The programs for A081301, the canonical program `A081301.P3050353578826340272` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A081301 has offset 0).

The definition of A081301 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A081301.P3050353578826340272

`((n+2)^(n+1)-(-(n+1))^(n+1))/(2*n+3)`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A081301

/-- `((n+2)^(n+1)-(-(n+1))^(n+1))/(2*n+3)` -/
def P3050353578826340272.Spec : Prop :=
  ∀ n, P3050353578826340272.a n = (A081301 n : ℚ)

end A081301

/-! ## A081301.P15245278931372786745

`A072024(∑[4*(n+1)])`
-/

namespace A081301.P15245278931372786745
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072024 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A081301.P15245278931372786745

namespace A081301

/-- `A072024(∑[4*(n+1)])` -/
def P15245278931372786745.Spec : Prop :=
  ∀ n, P15245278931372786745.a n = A081301 n

end A081301

/-! ## A081301.P17442676138907695968

`A081297(A056220(n+1))`
-/

namespace A081301.P17442676138907695968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081297 (A056220 (n + 1)).toNat

end

end A081301.P17442676138907695968

namespace A081301

/-- `A081297(A056220(n+1))` -/
def P17442676138907695968.Spec : Prop :=
  ∀ n, P17442676138907695968.a n = A081301 n

end A081301

/-! ## A081301.P2539737835492200902

`A081297(A001844(n)+2*n)`
-/

namespace A081301.P2539737835492200902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081297 (A001844 n + (2 * n : ℤ)).toNat

end

end A081301.P2539737835492200902

namespace A081301

/-- `A081297(A001844(n)+2*n)` -/
def P2539737835492200902.Spec : Prop :=
  ∀ n, P2539737835492200902.a n = A081301 n

end A081301

/-! ## A081301.P6124525523939955521

`A081297(A001844(n)+n+n)`
-/

namespace A081301.P6124525523939955521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081297 (A001844 n + (n : ℤ) + (n : ℤ)).toNat

end

end A081301.P6124525523939955521

namespace A081301

/-- `A081297(A001844(n)+n+n)` -/
def P6124525523939955521.Spec : Prop :=
  ∀ n, P6124525523939955521.a n = A081301 n

end A081301

/-!
# A081302: Subdiagonal of square array A081297.

The programs for A081302, the canonical program `A081302.P10863052184940106966` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A081302 has offset 0).

The definition of A081302 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A081302.P10863052184940106966

`((n+3)^(n+1)-(-(n+2))^(n+1))/(2*n+5)`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A081302

/-- `((n+3)^(n+1)-(-(n+2))^(n+1))/(2*n+5)` -/
def P10863052184940106966.Spec : Prop :=
  ∀ n, P10863052184940106966.a n = (A081302 n : ℚ)

end A081302

/-! ## A081302.P1603101621670418177

`A081297(A132209(n+1))`
-/

namespace A081302.P1603101621670418177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081297 (A132209 (n + 1)).toNat

end

end A081302.P1603101621670418177

namespace A081302

/-- `A081297(A132209(n+1))` -/
def P1603101621670418177.Spec : Prop :=
  ∀ n, P1603101621670418177.a n = A081302 n

end A081302

/-! ## A081302.P12875141910651295988

`A081297(A142463(n+1))`
-/

namespace A081302.P12875141910651295988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081297 (A142463 (n + 1)).toNat

end

end A081302.P12875141910651295988

namespace A081302

/-- `A081297(A142463(n+1))` -/
def P12875141910651295988.Spec : Prop :=
  ∀ n, P12875141910651295988.a n = A081302 n

end A081302

/-! ## A081302.P11046445490310990606

`A081297(A001844(n+1)-2)`
-/

namespace A081302.P11046445490310990606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081297 (A001844 (n + 1) - 2).toNat

end

end A081302.P11046445490310990606

namespace A081302

/-- `A081297(A001844(n+1)-2)` -/
def P11046445490310990606.Spec : Prop :=
  ∀ n, P11046445490310990606.a n = A081302 n

end A081302

/-! ## A081302.P341695886929560618

`A081297(A027379(2*n+1)-n)`
-/

namespace A081302.P341695886929560618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081297 (A027379 (2 * n + 1) - (n : ℤ)).toNat

end

end A081302.P341695886929560618

namespace A081302

/-- `A081297(A027379(2*n+1)-n)` -/
def P341695886929560618.Spec : Prop :=
  ∀ n, P341695886929560618.a n = A081302 n

end A081302

/-!
# A081303: gpf(m) - 2*spf(m), where gpf(m) is the greatest and spf(m) is the smallest prime factor of m (A006530, A020639).

The programs for A081303, there is no canonical definition to state claims against.
-/

/-! ## A081303.P14161483239845469483

`A046665(n+1)-A020639(n+1)`
-/

namespace A081303.P14161483239845469483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046665 (n + 1) - A020639 (n + 1)

end

end A081303.P14161483239845469483

/-! ## A081303.P18432657517418310482

`A046665(n+1)-sqrt(A088377(n+1))`
-/

namespace A081303.P18432657517418310482
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A046665 (n + 1) : ℝ) - Real.sqrt (A088377 (n + 1) : ℝ)

end

end A081303.P18432657517418310482

/-! ## A081303.P11212155109171024427

`A006530(n+1)-2*A020639(n+1)`
-/

namespace A081303.P11212155109171024427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 1) - 2 * A020639 (n + 1)

end

end A081303.P11212155109171024427

/-! ## A081303.P7121176332671933195

`2*A046665(n+1)-A006530(n+1)`
-/

namespace A081303.P7121176332671933195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A046665 (n + 1) - A006530 (n + 1)

end

end A081303.P7121176332671933195

/-! ## A081303.P17309750562033592281

`∏{p}[A006530(1-(n-2*n)), #]-2*∏{d}[A020639(2*n-(n-1)), #]`
-/

namespace A081303.P17309750562033592281
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (1 - ((n : ℤ) - (2 * n : ℤ))).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 ((2 * n : ℤ) - ((n : ℤ) - 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∏ p ∈ Nat.primeFactors (f1 n).natAbs, p : ℕ) : ℤ) - ((2 * (∏ d ∈ Nat.divisors (f2 n).natAbs, d) : ℕ) : ℤ)

end

end A081303.P17309750562033592281

/-! ## A081303.P18120441454212585555

`∏{p}[A006530(1-(n-2*n)), #]-2*∏{p}[A020639(1-(n-2*n)), #]`
-/

namespace A081303.P18120441454212585555
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (1 - ((n : ℤ) - (2 * n : ℤ))).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (1 - ((n : ℤ) - (2 * n : ℤ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∏ p ∈ Nat.primeFactors (f1 n).natAbs, p : ℕ) : ℤ) - ((2 * (∏ p ∈ Nat.primeFactors (f2 n).natAbs, p) : ℕ) : ℤ)

end

end A081303.P18120441454212585555

/-! ## A081303.P2614270506512960995

`A006530(n+1)-A005843(A020639(n+1))`
-/

namespace A081303.P2614270506512960995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 1) - A005843 (A020639 (n + 1)).toNat

end

end A081303.P2614270506512960995

/-! ## A081303.P15724120020147953705

`A005843(A046665(n+1))-A006530(n+1)`
-/

namespace A081303.P15724120020147953705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A046665 (n + 1)).toNat - A006530 (n + 1)

end

end A081303.P15724120020147953705

/-! ## A081303.P8385908850243858728

`A006530(n+1)+A046665(n+1)-A074320(n+1)`
-/

namespace A081303.P8385908850243858728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 1) + (A046665 (n + 1) - A074320 (n + 1))

end

end A081303.P8385908850243858728

/-! ## A081303.P10918609260719237430

`A070229(n+1)-(A061228(n+1)+A020639(n+1))`
-/

namespace A081303.P10918609260719237430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070229 (n + 1) - (A061228 (n + 1) + A020639 (n + 1))

end

end A081303.P10918609260719237430

/-! ## A081303.P2023673312674264355

`A085392(n+1)-(A107286(n+1)+A020639(n+1))`
-/

namespace A081303.P2023673312674264355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085392 (n + 1) - (A107286 (n + 1) + A020639 (n + 1))

end

end A081303.P2023673312674264355

/-! ## A081303.P17577569919062960495

`A046665(n+1)-A066048(n+1)/A006530(n+1)`
-/

namespace A081303.P17577569919062960495
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A046665 (n + 1) : ℚ) - (A066048 (n + 1) : ℚ) / (A006530 (n + 1) : ℚ)

end

end A081303.P17577569919062960495

/-! ## A081303.P13555027691369922101

`A085393(2*(n+1))-A014673(2*(n+1))`
-/

namespace A081303.P13555027691369922101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085393 (2 * (n + 1)) - A014673 (2 * (n + 1))

end

end A081303.P13555027691369922101

/-! ## A081303.P15814836065178003862

`A085393((n+1)²)-A020639(n+1)`
-/

namespace A081303.P15814836065178003862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085393 ((n + 1) ^ 2) - A020639 (n + 1)

end

end A081303.P15814836065178003862

/-! ## A081303.P1783173040989571107

`A006530(n+1)-2*A014673((n+1)²)`
-/

namespace A081303.P1783173040989571107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 1) - 2 * A014673 ((n + 1) ^ 2)

end

end A081303.P1783173040989571107

/-! ## A081303.P15330919015909788752

`A046665(n+1)-A052126(A066048(n+1))`
-/

namespace A081303.P15330919015909788752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046665 (n + 1) - A052126 (A066048 (n + 1)).toNat

end

end A081303.P15330919015909788752

/-!
# A081304: Number of numbers m <= n with prime factors less than 2*spf(m), where spf(m) is the smallest prime factor of m (A020639).

The programs for A081304, there is no canonical definition to state claims against.
-/

/-! ## A081304.P333793636005260930

`∑[round(acot(A069897(n+1)))]`
-/

namespace A081304.P333793636005260930
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (SequenceMachineLib.acot (A069897 (n + 1) : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A081304.P333793636005260930

/-! ## A081304.P8548070255476375165

`1-A081305(n+1)+n`
-/

namespace A081304.P8548070255476375165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A081305 (n + 1) + (n : ℤ)

end

end A081304.P8548070255476375165

/-! ## A081304.P15400610480631474554

`∑[round(1/A120454(n+1))]`
-/

namespace A081304.P15400610480631474554
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (1 / (A120454 (n + 1) : ℚ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A081304.P15400610480631474554

/-! ## A081304.P9348586740279310778

`Δ[n²]-n-A081305(Δ[n²]-n)`
-/

namespace A081304.P9348586740279310778
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ) - (n : ℤ) - A081305 ((f2 (n + 1) : ℤ) - (f2 n : ℤ) - (n : ℤ)).toNat

end

end A081304.P9348586740279310778

/-! ## A081304.P11826268209571147352

`∑[A008683(A069897(n+1)²)]`
-/

namespace A081304.P11826268209571147352
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A069897 (n + 1) ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A081304.P11826268209571147352

/-! ## A081304.P5428896342728698042

`∑[1-A348327(A066048(n+1))]`
-/

namespace A081304.P5428896342728698042
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A348327 (A066048 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A081304.P5428896342728698042

/-!
# A081305: Number of numbers m <= n with at least one prime factor greater than 2*spf(m), where spf(m) is the smallest prime factor of m (A020639).

The programs for A081305, there is no canonical definition to state claims against.
-/

/-! ## A081305.P15183377097312647226

`∑[floor(atan(A069897(n+1)))]`
-/

namespace A081305.P15183377097312647226
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.arctan (A069897 (n + 1) : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A081305.P15183377097312647226

/-! ## A081305.P13731413176285305613

`1-A081304(n+1)+n`
-/

namespace A081305.P13731413176285305613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A081304 (n + 1) + (n : ℤ)

end

end A081305.P13731413176285305613

/-! ## A081305.P11164758974236187992

`∑[A060576(A069897(n+1))]`
-/

namespace A081305.P11164758974236187992
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060576 (A069897 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A081305.P11164758974236187992

/-! ## A081305.P9618436766911541700

`∑[A091247(2*A069897(n+1))]`
-/

namespace A081305.P9618436766911541700
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091247 (2 * A069897 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A081305.P9618436766911541700

/-! ## A081305.P8804872729507036468

`∑[A120454(n+1)%A069897(n+1)]`
-/

namespace A081305.P8804872729507036468
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A120454 (n + 1)) (A069897 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A081305.P8804872729507036468

/-! ## A081305.P7625657060580344612

`∑[A057979(A002322(A120454(n+1)))]`
-/

namespace A081305.P7625657060580344612
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057979 (A002322 (A120454 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A081305.P7625657060580344612

/-! ## A081305.P9935929380626895472

`∑[A069897(A053812(n+1))%A069897(n+1)]`
-/

namespace A081305.P9935929380626895472
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A069897 (A053812 (n + 1)).toNat) (A069897 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A081305.P9935929380626895472

/-! ## A081305.P2135902874360585735

`∑[A073575(A073575(n+1))%A069897(n+1)]`
-/

namespace A081305.P2135902874360585735
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A073575 (A073575 (n + 1)).toNat) (A069897 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A081305.P2135902874360585735

/-! ## A081305.P17661083317697207851

`∑[A069897(A019339(n+1))%A069897(n+1)]`
-/

namespace A081305.P17661083317697207851
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A069897 (A019339 (n + 1)).toNat) (A069897 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A081305.P17661083317697207851

/-! ## A081305.P8082389277061594247

`∑[A001222(A027746(A069897(n+1)²))]`
-/

namespace A081305.P8082389277061594247
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A027746 (A069897 (n + 1) ^ 2).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A081305.P8082389277061594247

/-! ## A081305.P12780596560992662430

`∑[A001222(A027748(A069897(n+1)²))]`
-/

namespace A081305.P12780596560992662430
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A027748 (A069897 (n + 1) ^ 2).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A081305.P12780596560992662430

/-! ## A081305.P16276720793324857551

`∑[A000035(A077099(A069897(n+1)²))]`
-/

namespace A081305.P16276720793324857551
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A077099 (A069897 (n + 1) ^ 2).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A081305.P16276720793324857551

/-! ## A081305.P15792778044320097812

`∑[A001222(A008578(A069897(n+1)²))]`
-/

namespace A081305.P15792778044320097812
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A008578 (A069897 (n + 1) ^ 2).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A081305.P15792778044320097812

/-! ## A081305.P13214860738928843379

`∑[A348327(A066048(n+1))]`
-/

namespace A081305.P13214860738928843379
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348327 (A066048 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A081305.P13214860738928843379

/-!
# A081306: Numbers n with prime factors less than 2*spf(n), where spf(m) is the smallest prime factor of m (A020639).

The programs for A081306, there is no canonical definition to state claims against.
-/

/-! ## A081306.P14017073316664811827

`∪[A000079(n), A069899(n+1)]`
-/

namespace A081306.P14017073316664811827
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069899 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A081306.P14017073316664811827

/-! ## A081306.P16783147944194228331

`∪[A000244(n), A069899(n+1)]`
-/

namespace A081306.P16783147944194228331
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000244 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069899 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A081306.P16783147944194228331

/-! ## A081306.P5701255030353023902

`∪[A000302(n), A069899(n+1)]`
-/

namespace A081306.P5701255030353023902
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000302 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069899 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A081306.P5701255030353023902

/-! ## A081306.P743344803535353972

`∪[A069899(n+1), A017284(n)]`
-/

namespace A081306.P743344803535353972
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069899 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017284 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A081306.P743344803535353972

/-! ## A081306.P9463701356673560290

`record[(n+1)/A069897(n+1)]`
-/

namespace A081306.P9463701356673560290
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A069897 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A081306.P9463701356673560290

/-! ## A081306.P15448358506094143309

`eq[1, A069897(n+1)]+1`
-/

namespace A081306.P15448358506094143309
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069897 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A081306.P15448358506094143309

/-! ## A081306.P6584349199800476179

`eq[A000005(A120454(n+1)), A120454(n+1)]+1`
-/

namespace A081306.P6584349199800476179
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A120454 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120454 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A081306.P6584349199800476179

/-! ## A081306.P11419344164915391847

`lt[n, 2*A130065(n+1)]+1`
-/

namespace A081306.P11419344164915391847
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A130065 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A081306.P11419344164915391847

/-! ## A081306.P9542901320267660087

`lt[A130064(A028310(n)), 2*n]`
-/

namespace A081306.P9542901320267660087
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130064 (A028310 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A081306.P9542901320267660087

/-! ## A081306.P5059820374257024416

`eq[A046665(n+1), A069859(n+1)]+1`
-/

namespace A081306.P5059820374257024416
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046665 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069859 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A081306.P5059820374257024416

/-! ## A081306.P3008618685625181983

`lt[A046665(n+1), A020639(n+1)]+1`
-/

namespace A081306.P3008618685625181983
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046665 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A081306.P3008618685625181983

/-! ## A081306.P5514160172310809337

`eq[1, A001045(A120454(n+1))]+1`
-/

namespace A081306.P5514160172310809337
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001045 (A120454 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A081306.P5514160172310809337

/-!
# A081307: a(n) = (n+1)*tau(n) - sigma(n).

The programs for A081307, the canonical program `A081307.P3142630448028264351` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A081307 has offset 1).

The definition of A081307 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A081307.P3142630448028264351

`∑{d}[n+1, 2-#+n]`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A081307

/-- `∑{d}[n+1, 2-#+n]` -/
def P3142630448028264351.Spec : Prop :=
  ∀ n, P3142630448028264351.a n = A081307 (n + 1)

theorem P3142630448028264351.correct : P3142630448028264351.Spec := by
  intro n
  simp only [A081307, Nat.add_sub_cancel]

end A081307

/-! ## A081307.P14859074302556115284

`-∑{d}[n+1, xor(n+1, -1)+#]`
-/

namespace A081307.P14859074302556115284
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(∑ d ∈ Nat.divisors (f1 n), (Int.xor (n + 1 : ℤ) (-1) + (d : ℤ)))

end

end A081307.P14859074302556115284

namespace A081307

/-- `-∑{d}[n+1, xor(n+1, -1)+#]` -/
def P14859074302556115284.Spec : Prop :=
  ∀ n, P14859074302556115284.a n = A081307 (n + 1)

end A081307

/-! ## A081307.P1525271497639487583

`-∑{d}[n+1, -(-n%#+n+1)]`
-/

namespace A081307.P1525271497639487583
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(∑ d ∈ Nat.divisors (f1 n), (-(Int.tmod (-(n : ℤ)) (d : ℤ) + (n + 1 : ℤ))))

end

end A081307.P1525271497639487583

namespace A081307

/-- `-∑{d}[n+1, -(-n%#+n+1)]` -/
def P1525271497639487583.Spec : Prop :=
  ∀ n, P1525271497639487583.a n = A081307 (n + 1)

end A081307

/-! ## A081307.P6047594289068474186

`A094471(n+1)+Δ[A054519(n)]`
-/

namespace A081307.P6047594289068474186
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054519 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094471 (n + 1) + (f1 (n + 1) - f1 n)

end

end A081307.P6047594289068474186

namespace A081307

/-- `A094471(n+1)+Δ[A054519(n)]` -/
def P6047594289068474186.Spec : Prop :=
  ∀ n, P6047594289068474186.a n = A081307 (n + 1)

end A081307

/-! ## A081307.P3150524083892872142

`A094471(n+1)+A000005(n+1)`
-/

namespace A081307.P3150524083892872142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094471 (n + 1) + A000005 (n + 1)

end

end A081307.P3150524083892872142

namespace A081307

/-- `A094471(n+1)+A000005(n+1)` -/
def P3150524083892872142.Spec : Prop :=
  ∀ n, P3150524083892872142.a n = A081307 (n + 1)

end A081307

/-! ## A081307.P5699693988490676172

`A094472(n+1)+A061468(n+1)`
-/

namespace A081307.P5699693988490676172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094472 (n + 1) + A061468 (n + 1)

end

end A081307.P5699693988490676172

namespace A081307

/-- `A094472(n+1)+A061468(n+1)` -/
def P5699693988490676172.Spec : Prop :=
  ∀ n, P5699693988490676172.a n = A081307 (n + 1)

end A081307

/-! ## A081307.P16961152317631348051

`A374969(n+1)+A000203(n+1)`
-/

namespace A081307.P16961152317631348051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374969 (n + 1) + A000203 (n + 1)

end

end A081307.P16961152317631348051

namespace A081307

/-- `A374969(n+1)+A000203(n+1)` -/
def P16961152317631348051.Spec : Prop :=
  ∀ n, P16961152317631348051.a n = A081307 (n + 1)

end A081307

/-! ## A081307.P441741694375840312

`A349680(n+1)+A134156(n+1)`
-/

namespace A081307.P441741694375840312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349680 (n + 1) + A134156 (n + 1)

end

end A081307.P441741694375840312

namespace A081307

/-- `A349680(n+1)+A134156(n+1)` -/
def P441741694375840312.Spec : Prop :=
  ∀ n, P441741694375840312.a n = A081307 (n + 1)

end A081307

/-! ## A081307.P5057063314408276431

`A038040(n+1)-A065608(n+1)`
-/

namespace A081307.P5057063314408276431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038040 (n + 1) - A065608 (n + 1)

end

end A081307.P5057063314408276431

namespace A081307

/-- `A038040(n+1)-A065608(n+1)` -/
def P5057063314408276431.Spec : Prop :=
  ∀ n, P5057063314408276431.a n = A081307 (n + 1)

end A081307

/-! ## A081307.P13369446659563057797

`A083271(n+1)-A158901(n+1)`
-/

namespace A081307.P13369446659563057797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083271 (n + 1) - A158901 (n + 1)

end

end A081307.P13369446659563057797

namespace A081307

/-- `A083271(n+1)-A158901(n+1)` -/
def P13369446659563057797.Spec : Prop :=
  ∀ n, P13369446659563057797.a n = A081307 (n + 1)

end A081307

/-! ## A081307.P6983431243996397218

`A152211(n+1)-A129235(n+1)`
-/

namespace A081307.P6983431243996397218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152211 (n + 1) - A129235 (n + 1)

end

end A081307.P6983431243996397218

namespace A081307

/-- `A152211(n+1)-A129235(n+1)` -/
def P6983431243996397218.Spec : Prop :=
  ∀ n, P6983431243996397218.a n = A081307 (n + 1)

end A081307

/-! ## A081307.P10519573886553021825

`(n+2)*Δ[A006218(n)]-A000203(n+1)`
-/

namespace A081307.P10519573886553021825
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006218 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) * (f1 (n + 1) - f1 n) - A000203 (n + 1)

end

end A081307.P10519573886553021825

namespace A081307

/-- `(n+2)*Δ[A006218(n)]-A000203(n+1)` -/
def P10519573886553021825.Spec : Prop :=
  ∀ n, P10519573886553021825.a n = A081307 (n + 1)

end A081307

/-! ## A081307.P10355889230247830920

`(n+2)*A000005(n+1)-A000203(n+1)`
-/

namespace A081307.P10355889230247830920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) * A000005 (n + 1) - A000203 (n + 1)

end

end A081307.P10355889230247830920

namespace A081307

/-- `(n+2)*A000005(n+1)-A000203(n+1)` -/
def P10355889230247830920.Spec : Prop :=
  ∀ n, P10355889230247830920.a n = A081307 (n + 1)

end A081307

/-! ## A081307.P10980567852892135452

`A355947(n+1)-(A355947(n)+A006218(n))`
-/

namespace A081307.P10980567852892135452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355947 (n + 1) - (A355947 n + A006218 n)

end

end A081307.P10980567852892135452

namespace A081307

/-- `A355947(n+1)-(A355947(n)+A006218(n))` -/
def P10980567852892135452.Spec : Prop :=
  ∀ n, P10980567852892135452.a n = A081307 (n + 1)

end A081307

/-! ## A081307.P10088396176587848490

`A000005(n+1)+A094472(n+1)+A000010(n+1)`
-/

namespace A081307.P10088396176587848490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) + (A094472 (n + 1) + A000010 (n + 1))

end

end A081307.P10088396176587848490

namespace A081307

/-- `A000005(n+1)+A094472(n+1)+A000010(n+1)` -/
def P10088396176587848490.Spec : Prop :=
  ∀ n, P10088396176587848490.a n = A081307 (n + 1)

end A081307

/-! ## A081307.P3776177692793382990

`A000005(n+1)+A038040(n+1)-A000203(n+1)`
-/

namespace A081307.P3776177692793382990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) + (A038040 (n + 1) - A000203 (n + 1))

end

end A081307.P3776177692793382990

namespace A081307

/-- `A000005(n+1)+A038040(n+1)-A000203(n+1)` -/
def P3776177692793382990.Spec : Prop :=
  ∀ n, P3776177692793382990.a n = A081307 (n + 1)

end A081307

/-! ## A081307.P15614437627176420308

`A000005(n+1)+A161680(n+1)-A362625(n+1)`
-/

namespace A081307.P15614437627176420308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) + (A161680 (n + 1) - A362625 (n + 1))

end

end A081307.P15614437627176420308

namespace A081307

/-- `A000005(n+1)+A161680(n+1)-A362625(n+1)` -/
def P15614437627176420308.Spec : Prop :=
  ∀ n, P15614437627176420308.a n = A081307 (n + 1)

end A081307

/-! ## A081307.P3150280200804492931

`A094471(n+1)+A336839(n+1)*A336856(n+1)`
-/

namespace A081307.P3150280200804492931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094471 (n + 1) + A336839 (n + 1) * A336856 (n + 1)

end

end A081307.P3150280200804492931

namespace A081307

/-- `A094471(n+1)+A336839(n+1)*A336856(n+1)` -/
def P3150280200804492931.Spec : Prop :=
  ∀ n, P3150280200804492931.a n = A081307 (n + 1)

end A081307

/-! ## A081307.P6802099279820867046

`A094471(n+1)+A336845(n+1)/A003961(n+1)`
-/

namespace A081307.P6802099279820867046
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A094471 (n + 1) : ℚ) + (A336845 (n + 1) : ℚ) / (A003961 (n + 1) : ℚ)

end

end A081307.P6802099279820867046

namespace A081307

/-- `A094471(n+1)+A336845(n+1)/A003961(n+1)` -/
def P6802099279820867046.Spec : Prop :=
  ∀ n, P6802099279820867046.a n = (A081307 (n + 1) : ℚ)

end A081307

/-!
# A081308: Number of ways to write n as sum of a prime and an 3-smooth number.

The programs for A081308, there is no canonical definition to state claims against.
-/

/-! ## A081308.P10577752862594863673

`A319443(A238010(n)+A001970(n))`
-/

namespace A081308.P10577752862594863673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319443 (A238010 n + A001970 n).toNat

end

end A081308.P10577752862594863673

/-! ## A081308.P14898255207235941197

`A001221(lcm(A025784(n), A091601(n)))`
-/

namespace A081308.P14898255207235941197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (Int.lcm (A025784 n) (A091601 n))

end

end A081308.P14898255207235941197

/-! ## A081308.P4197102562857725439

`A115623(A000071(n+1)*A084127(n+1))`
-/

namespace A081308.P4197102562857725439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115623 (A000071 (n + 1) * A084127 (n + 1)).toNat

end

end A081308.P4197102562857725439

/-! ## A081308.P7149993508764731009

`A001221(A006530(A263346(n))*A285289(n))`
-/

namespace A081308.P7149993508764731009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A006530 (A263346 n).toNat * A285289 n).toNat

end

end A081308.P7149993508764731009

/-! ## A081308.P5611693142603096118

`A001221(gcd(n!, A008694(n)))`
-/

namespace A081308.P5611693142603096118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (Int.gcd (Nat.factorial n : ℤ) (A008694 n))

end

end A081308.P5611693142603096118

/-!
# A081309: Smallest prime p such that n-p is a 3-smooth number, a(n)=0 if no such prime exists.

The programs for A081309, there is no canonical definition to state claims against.
-/

/-! ## A081309.P3602423698127262381

`A304465(A047304(A146305(n))*A146305(n))`
-/

namespace A081309.P3602423698127262381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304465 (A047304 (A146305 n).toNat * A146305 n).toNat

end

end A081309.P3602423698127262381

/-!
# A081310: Numbers having no representation as sum of a prime and an 3-smooth number.

The programs for A081310, there is no canonical definition to state claims against.
-/

/-! ## A081310.P6273372920150559869

`eq[0, A081308(n+1)]+1`
-/

namespace A081310.P6273372920150559869
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081308 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A081310.P6273372920150559869

/-! ## A081310.P11126113599907758608

`eq[0, A081309(n+1)]+1`
-/

namespace A081310.P11126113599907758608
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081309 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A081310.P11126113599907758608

/-! ## A081310.P6947256740966375314

`lt[n*A081308(A028310(n)), n]`
-/

namespace A081310.P6947256740966375314
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A081308 (A028310 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A081310.P6947256740966375314

/-! ## A081310.P6155459674650041799

`eq[A000007(n), A081308(A028310(n))]`
-/

namespace A081310.P6155459674650041799
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081308 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A081310.P6155459674650041799

/-! ## A081310.P12747457087777193705

`eq[A000038(n), A081308(A028310(n))]`
-/

namespace A081310.P12747457087777193705
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081308 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A081310.P12747457087777193705

/-! ## A081310.P12800182549448534685

`eq[A008458(n)%2, A081308(A028310(n))]`
-/

namespace A081310.P12800182549448534685
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A008458 n) 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081308 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A081310.P12800182549448534685

/-!
# A081311: Numbers that can be written as sum of a prime and an 3-smooth number.

The programs for A081311, there is no canonical definition to state claims against.
-/

/-! ## A081311.P5389815014897071400

`comp[A081310(n+1)-1]+1`
-/

namespace A081311.P5389815014897071400
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081310 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A081311.P5389815014897071400

/-! ## A081311.P12225871445017155845

`∪[A081312(n+1), A081313(n+1)]`
-/

namespace A081311.P12225871445017155845
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081312 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081313 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A081311.P12225871445017155845

/-! ## A081311.P15502521738274365887

`record[(n+3)/A290695(A290695(n+1))]`
-/

namespace A081311.P15502521738274365887
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 3 : ℚ) / (A290695 (A290695 (n + 1)).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A081311.P15502521738274365887

/-! ## A081311.P12189121917638142609

`comp[A006530(A322296(n))-1]`
-/

namespace A081311.P12189121917638142609
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A322296 n).toNat - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A081311.P12189121917638142609

/-!
# A081312: Numbers having a unique representation as sum of a prime and an 3-smooth number.

The programs for A081312, there is no canonical definition to state claims against.
-/

/-! ## A081312.P7789029551718723034

`eq[1, A081308(n+1)]+1`
-/

namespace A081312.P7789029551718723034
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081308 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A081312.P7789029551718723034

/-! ## A081312.P6283503598533230689

`eq[1, A081308(A028310(n))]`
-/

namespace A081312.P6283503598533230689
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081308 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A081312.P6283503598533230689

/-! ## A081312.P17495901239278766143

`A153152(eq[1, A081308(n+1)])`
-/

namespace A081312.P17495901239278766143
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081308 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153152 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A081312.P17495901239278766143

/-! ## A081312.P4963473115530920712

`eq[1, A081308(A000038(n)+n)]`
-/

namespace A081312.P4963473115530920712
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081308 (A000038 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A081312.P4963473115530920712

/-! ## A081312.P17412314905850423500

`eq[1, A081308(A000007(n)+n)]`
-/

namespace A081312.P17412314905850423500
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081308 (A000007 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A081312.P17412314905850423500

/-! ## A081312.P2962202793448525538

`eq[1, A081308(A065033(2*n))]`
-/

namespace A081312.P2962202793448525538
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081308 (A065033 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A081312.P2962202793448525538

/-! ## A081312.P860216575226189767

`A000720(p?[A000040(n+1)*A081308(n+1)])`
-/

namespace A081312.P860216575226189767
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) * A081308 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A081312.P860216575226189767

/-! ## A081312.P8729963167208859165

`eq[1, A081308(A233583(n+1))]`
-/

namespace A081312.P8729963167208859165
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081308 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A081312.P8729963167208859165

/-!
# A081313: Numbers having more than one representation as sum of a prime and a 3-smooth number.

The programs for A081313, there is no canonical definition to state claims against.
-/

/-! ## A081313.P17935340835279888544

`∩[A081311(n+1), comp[A081312(n+1)]]`
-/

namespace A081313.P17935340835279888544
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081311 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081312 (n + 1)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = x) n

end

end A081313.P17935340835279888544

/-! ## A081313.P6220662304903032350

`lt[1, A081308(n+1)]+1`
-/

namespace A081313.P6220662304903032350
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081308 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A081313.P6220662304903032350

/-! ## A081313.P448682775963891561

`lt[1, A081308(A028310(n))]`
-/

namespace A081313.P448682775963891561
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081308 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A081313.P448682775963891561

/-! ## A081313.P10294677623550805004

`lt[1, A081308(A000007(n)+n)]`
-/

namespace A081313.P10294677623550805004
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081308 (A000007 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A081313.P10294677623550805004

/-! ## A081313.P5326581614276546819

`lt[1, A081308(A233583(n+1))]`
-/

namespace A081313.P5326581614276546819
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081308 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A081313.P5326581614276546819

/-!
# A081315: Lexicographically earliest sequence of positive integers such that n occurs a(n)-1 times, starting at n=0.

The programs for A081315, there is no canonical definition to state claims against.
-/

/-! ## A081315.P2553880153217873951

`A175087(A014818(n+1)+1)+A054846(n)`
-/

namespace A081315.P2553880153217873951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175087 (A014818 (n + 1) + 1).toNat + A054846 n

end

end A081315.P2553880153217873951

/-! ## A081315.P4131468514315590066

`A267871(A008638(n))+A054846(n)`
-/

namespace A081315.P4131468514315590066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267871 (A008638 n).toNat + A054846 n

end

end A081315.P4131468514315590066

/-! ## A081315.P3531462034142904125

`A267871(A010785(n))+A054846(n)`
-/

namespace A081315.P3531462034142904125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267871 (A010785 n).toNat + A054846 n

end

end A081315.P3531462034142904125

/-! ## A081315.P12944053221455600250

`A005041(n+2)-A080995((3*n+1)²)`
-/

namespace A081315.P12944053221455600250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005041 (n + 2) - A080995 ((3 * n + 1) ^ 2)

end

end A081315.P12944053221455600250

/-! ## A081315.P8301995882786473846

`A267871(A000041(n))+A054846(n)`
-/

namespace A081315.P8301995882786473846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267871 (A000041 n).toNat + A054846 n

end

end A081315.P8301995882786473846

/-!
# A081316: Lexicographically earliest sequence of positive integers such that n occurs a(n)-1 times, starting at n=1.

The programs for A081316, there is no canonical definition to state claims against.
-/

/-! ## A081316.P9343974168684119181

`A109167(n)+1`
-/

namespace A081316.P9343974168684119181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109167 n + 1

end

end A081316.P9343974168684119181

/-! ## A081316.P12558646140553607814

`A008619(2*A109167(n))`
-/

namespace A081316.P12558646140553607814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (2 * A109167 n).toNat

end

end A081316.P12558646140553607814

/-! ## A081316.P17559589873166775947

`A027656(2*A109167(n))`
-/

namespace A081316.P17559589873166775947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027656 (2 * A109167 n).toNat

end

end A081316.P17559589873166775947

/-! ## A081316.P7263624073406602040

`A028242(2*A109167(n))`
-/

namespace A081316.P7263624073406602040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028242 (2 * A109167 n).toNat

end

end A081316.P7263624073406602040

/-! ## A081316.P17384666501623452158

`A008611(3*A109167(n))`
-/

namespace A081316.P17384666501623452158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008611 (3 * A109167 n).toNat

end

end A081316.P17384666501623452158

/-! ## A081316.P18264516325439654348

`A008621(4*A109167(n))`
-/

namespace A081316.P18264516325439654348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008621 (4 * A109167 n).toNat

end

end A081316.P18264516325439654348

/-! ## A081316.P6383922141370889136

`A008612(6*A109167(n))`
-/

namespace A081316.P6383922141370889136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008612 (6 * A109167 n).toNat

end

end A081316.P6383922141370889136

/-! ## A081316.P17032912033239246086

`A000124(n)-(∑[n]-A109167(n))`
-/

namespace A081316.P17032912033239246086
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000124 n - (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - A109167 n)

end

end A081316.P17032912033239246086

/-! ## A081316.P9963397363749980842

`1-A008683(A002146(n))*A109167(n)`
-/

namespace A081316.P9963397363749980842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A008683 (A002146 n).toNat * A109167 n

end

end A081316.P9963397363749980842

/-!
# A081317: Primes p such that p divides 10^n-1, p is the largest prime producing decimal fraction period n and p is not the largest prime dividing 10^n-1.

The programs for A081317, there is no canonical definition to state claims against.
-/

/-! ## A081317.P7759526030358799097

`A061075(A081318(n+1))`
-/

namespace A081317.P7759526030358799097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061075 (A081318 (n + 1)).toNat

end

end A081317.P7759526030358799097

/-!
# A081320: Largest 3-smooth divisor of n-th Fibonacci number.

The programs for A081320, the canonical program `A081320.P2919973011229880739` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A081320 has offset 1).

The definition of A081320 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A081320.P2919973011229880739

`A065331(A000045(n+1))`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A081320

/-- `A065331(A000045(n+1))` -/
def P2919973011229880739.Spec : Prop :=
  ∀ n, P2919973011229880739.a n = A081320 (n + 1)

theorem P2919973011229880739.correct : P2919973011229880739.Spec := by
  intro n
  simp only [A081320, Nat.add_sub_cancel]

end A081320

/-! ## A081320.P8623539179415587777

`A060865(n+1)*A060901(n+1)`
-/

namespace A081320.P8623539179415587777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060865 (n + 1) * A060901 (n + 1)

end

end A081320.P8623539179415587777

namespace A081320

/-- `A060865(n+1)*A060901(n+1)` -/
def P8623539179415587777.Spec : Prop :=
  ∀ n, P8623539179415587777.a n = A081320 (n + 1)

end A081320

/-! ## A081320.P10585830496538669794

`lcm(A060865(n+1), A060901(A132739(n+1)))`
-/

namespace A081320.P10585830496538669794
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A060865 (n + 1)) (A060901 (A132739 (n + 1)).toNat)

end

end A081320.P10585830496538669794

namespace A081320

/-- `lcm(A060865(n+1), A060901(A132739(n+1)))` -/
def P10585830496538669794.Spec : Prop :=
  ∀ n, (P10585830496538669794.a n : ℤ) = A081320 (n + 1)

end A081320

/-! ## A081320.P6504078605896576119

`gcd(A247193(n+1), A385553(n))`
-/

namespace A081320.P6504078605896576119
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A247193 (n + 1)) (A385553 n)

end

end A081320.P6504078605896576119

namespace A081320

/-- `gcd(A247193(n+1), A385553(n))` -/
def P6504078605896576119.Spec : Prop :=
  ∀ n, (P6504078605896576119.a n : ℤ) = A081320 (n + 1)

end A081320

/-! ## A081320.P9101929371178868351

`gcd(A000045(n+1), A165845(n+1))`
-/

namespace A081320.P9101929371178868351
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000045 (n + 1)) (A165845 (n + 1))

end

end A081320.P9101929371178868351

namespace A081320

/-- `gcd(A000045(n+1), A165845(n+1))` -/
def P9101929371178868351.Spec : Prop :=
  ∀ n, (P9101929371178868351.a n : ℤ) = A081320 (n + 1)

end A081320

/-! ## A081320.P8328321049693952269

`gcd(A064497(n+1), A309016(n+1))`
-/

namespace A081320.P8328321049693952269
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A064497 (n + 1)) (A309016 (n + 1))

end

end A081320.P8328321049693952269

namespace A081320

/-- `gcd(A064497(n+1), A309016(n+1))` -/
def P8328321049693952269.Spec : Prop :=
  ∀ n, (P8328321049693952269.a n : ℤ) = A081320 (n + 1)

end A081320

/-! ## A081320.P749400758989766500

`gcd(A026549(n), A064497(n+1))`
-/

namespace A081320.P749400758989766500
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A026549 n) (A064497 (n + 1))

end

end A081320.P749400758989766500

namespace A081320

/-- `gcd(A026549(n), A064497(n+1))` -/
def P749400758989766500.Spec : Prop :=
  ∀ n, (P749400758989766500.a n : ℤ) = A081320 (n + 1)

end A081320

/-! ## A081320.P11610890746703896237

`gcd(∏[A010693(n)], A212804(n+2))`
-/

namespace A081320.P11610890746703896237
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010693 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (∏ j ∈ Finset.range (n + 1), f1 j) (A212804 (n + 2))

end

end A081320.P11610890746703896237

namespace A081320

/-- `gcd(∏[A010693(n)], A212804(n+2))` -/
def P11610890746703896237.Spec : Prop :=
  ∀ n, (P11610890746703896237.a n : ℤ) = A081320 (n + 1)

end A081320

/-! ## A081320.P3133833969118829078

`gcd(A076506(n+1), A246554(n+1))`
-/

namespace A081320.P3133833969118829078
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A076506 (n + 1)) (A246554 (n + 1))

end

end A081320.P3133833969118829078

namespace A081320

/-- `gcd(A076506(n+1), A246554(n+1))` -/
def P3133833969118829078.Spec : Prop :=
  ∀ n, (P3133833969118829078.a n : ℤ) = A081320 (n + 1)

end A081320

/-! ## A081320.P4394177925523655261

`gcd(A107904(n), A246554(n+1))`
-/

namespace A081320.P4394177925523655261
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A107904 n) (A246554 (n + 1))

end

end A081320.P4394177925523655261

namespace A081320

/-- `gcd(A107904(n), A246554(n+1))` -/
def P4394177925523655261.Spec : Prop :=
  ∀ n, (P4394177925523655261.a n : ℤ) = A081320 (n + 1)

end A081320

/-! ## A081320.P10266795164402347793

`gcd(A090989(n+1)²², ∑[A212804(n)])`
-/

namespace A081320.P10266795164402347793
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212804 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd ((A090989 (n + 1) ^ 2) ^ 2) (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A081320.P10266795164402347793

namespace A081320

/-- `gcd(A090989(n+1)²², ∑[A212804(n)])` -/
def P10266795164402347793.Spec : Prop :=
  ∀ n, (P10266795164402347793.a n : ℤ) = A081320 (n + 1)

end A081320

/-!
# A081321: a(n) = (2/3)*(2*n+1)*(2*n-1)!*binomial(3*n,2*n).

The programs for A081321, the canonical program `A081321.P16549867842881788196` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A081321 has offset 1).

The definition of A081321 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A081321.P5812800330040737671

`2/3*(2*(n+1)+1)*(2*(n+1)-1)!*C(3*(n+1), 2*(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A081321.P5812800330040737671
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) / 3 * (2 * (n + 1) + 1 : ℚ) * (Nat.factorial ((2 * (n + 1) : ℤ) - 1).toNat : ℚ) * (Nat.choose (3 * (n + 1)) (2 * (n + 1)) : ℚ)

end

end A081321.P5812800330040737671

namespace A081321

/-- `2/3*(2*(n+1)+1)*(2*(n+1)-1)!*C(3*(n+1), 2*(n+1))` -/
def P5812800330040737671.Spec : Prop :=
  ∀ n, P5812800330040737671.a n = (A081321 (n + 1) : ℚ)

end A081321

/-! ## A081321.P16549867842881788196

`(2*(n+1)+1)*(3*(n+1)-1)!/(n+1)!`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A081321

/-- `(2*(n+1)+1)*(3*(n+1)-1)!/(n+1)!` -/
def P16549867842881788196.Spec : Prop :=
  ∀ n, P16549867842881788196.a n = (A081321 (n + 1) : ℚ)

end A081321

/-! ## A081321.P13033019470677606978

`(2*(n+2)-1)*A082787(n+1)`
-/

namespace A081321.P13033019470677606978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((2 * (n + 2) : ℤ) - 1) * A082787 (n + 1)

end

end A081321.P13033019470677606978

namespace A081321

/-- `(2*(n+2)-1)*A082787(n+1)` -/
def P13033019470677606978.Spec : Prop :=
  ∀ n, P13033019470677606978.a n = A081321 (n + 1)

end A081321

/-! ## A081321.P12196547823209860645

`A001048(2*(n+1))*A165817(n+1)`
-/

namespace A081321.P12196547823209860645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001048 (2 * (n + 1)) * A165817 (n + 1)

end

end A081321.P12196547823209860645

namespace A081321

/-- `A001048(2*(n+1))*A165817(n+1)` -/
def P12196547823209860645.Spec : Prop :=
  ∀ n, P12196547823209860645.a n = A081321 (n + 1)

end A081321

/-! ## A081321.P4629141453718431794

`A082787(n+1)*A092942(3*n+4)`
-/

namespace A081321.P4629141453718431794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082787 (n + 1) * A092942 (3 * n + 4)

end

end A081321.P4629141453718431794

namespace A081321

/-- `A082787(n+1)*A092942(3*n+4)` -/
def P4629141453718431794.Spec : Prop :=
  ∀ n, P4629141453718431794.a n = A081321 (n + 1)

end A081321

/-!
# A081322: a(n) = F(P(n)), where F(n) = Fibonacci numbers A000045, P(n) = Pell numbers A000129.

The programs for A081322, there is no canonical definition to state claims against.
-/

/-! ## A081322.P4462751082395202473

`A000045(A000129(n))`
-/

namespace A081322.P4462751082395202473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A000129 n).toNat

end

end A081322.P4462751082395202473

/-! ## A081322.P8174431915975935873

`A103609(A052542(n))`
-/

namespace A081322.P8174431915975935873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103609 (A052542 n).toNat

end

end A081322.P8174431915975935873

/-! ## A081322.P11556142950024228564

`A108362(A111954(n))`
-/

namespace A081322.P11556142950024228564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108362 (A111954 n).toNat

end

end A081322.P11556142950024228564

/-! ## A081322.P12112788922669995311

`A212804(A174191(n))`
-/

namespace A081322.P12112788922669995311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212804 (A174191 n).toNat

end

end A081322.P12112788922669995311

/-! ## A081322.P3825121829518736595

`A000045(sqrt(A079291(n)))`
-/

namespace A081322.P3825121829518736595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (SequenceMachineLib.roundAway (Real.sqrt (A079291 n : ℝ))).toNat

end

end A081322.P3825121829518736595

/-!
# A081323: a(n) = L(P(n)), where L = Lucas numbers A000032, P = Pell numbers A000129.

The programs for A081323, there is no canonical definition to state claims against.
-/

/-! ## A081323.P11807142307218388024

`A000032(A000129(n))`
-/

namespace A081323.P11807142307218388024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 (A000129 n).toNat

end

end A081323.P11807142307218388024

/-! ## A081323.P1508675001816826725

`A127218(A052542(n))`
-/

namespace A081323.P1508675001816826725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127218 (A052542 n).toNat

end

end A081323.P1508675001816826725

/-! ## A081323.P6290302671193795432

`A000032(sqrt(A079291(n)))`
-/

namespace A081323.P6290302671193795432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 (SequenceMachineLib.roundAway (Real.sqrt (A079291 n : ℝ))).toNat

end

end A081323.P6290302671193795432

/-! ## A081323.P10297558004620691880

`A000032(Δ[A171842(n)])`
-/

namespace A081323.P10297558004620691880
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171842 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 (f1 (n + 1) - f1 n).toNat

end

end A081323.P10297558004620691880

/-! ## A081323.P3049120056876361821

`A127218(A163271(n+1))`
-/

namespace A081323.P3049120056876361821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127218 (A163271 (n + 1)).toNat

end

end A081323.P3049120056876361821

/-!
# A081324: Twice a square but not the sum of 2 distinct squares.

The programs for A081324, the canonical program `A081324.P12063373289040437378` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A081324 has offset 1).

The definition of A081324 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3552 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A081324.P12063373289040437378

`2*eq[1, A063014(n)]²`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A081324

/-- `2*eq[1, A063014(n)]²` -/
def P12063373289040437378.Spec : Prop :=
  ∀ n, (P12063373289040437378.a n : ℤ) = A081324 (n + 1)

theorem P12063373289040437378.correct : P12063373289040437378.Spec := by
  intro n
  simp only [A081324, Nat.add_sub_cancel]

end A081324

/-! ## A081324.P8784196902951750986

`record[A139098(n)/A046109(n)]`
-/

namespace A081324.P8784196902951750986
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A139098 n : ℚ) / (A046109 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A081324.P8784196902951750986

namespace A081324

/-- `record[A139098(n)/A046109(n)]` -/
def P8784196902951750986.Spec : Prop :=
  ∀ n, P8784196902951750986.a n = (A081324 (n + 1) : ℚ)

end A081324

/-! ## A081324.P12446171305548885421

`A001105(lt[A256452(abs(1-n)+1), 2])`
-/

namespace A081324.P12446171305548885421
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256452 (|1 - (n : ℤ)| + 1).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001105 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A081324.P12446171305548885421

namespace A081324

/-- `A001105(lt[A256452(abs(1-n)+1), 2])` -/
def P12446171305548885421.Spec : Prop :=
  ∀ n, P12446171305548885421.a n = A081324 (n + 1)

end A081324

/-! ## A081324.P4091322732773543337

`record[A000290(n)*A014963(A046109(n))]`
-/

namespace A081324.P4091322732773543337
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 n * A014963 (A046109 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A081324.P4091322732773543337

namespace A081324

/-- `record[A000290(n)*A014963(A046109(n))]` -/
def P4091322732773543337.Spec : Prop :=
  ∀ n, P4091322732773543337.a n = A081324 (n + 1)

end A081324

/-! ## A081324.P13044460108022260513

`record[A001057(n)*A072438(n+1)]`
-/

namespace A081324.P13044460108022260513
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 n * A072438 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A081324.P13044460108022260513

namespace A081324

/-- `record[A001057(n)*A072438(n+1)]` -/
def P13044460108022260513.Spec : Prop :=
  ∀ n, P13044460108022260513.a n = A081324 (n + 1)

end A081324

/-! ## A081324.P9125461715551422638

`record[A072438(n+1)*A260437(n+1)]`
-/

namespace A081324.P9125461715551422638
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072438 (n + 1) * A260437 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A081324.P9125461715551422638

namespace A081324

/-- `record[A072438(n+1)*A260437(n+1)]` -/
def P9125461715551422638.Spec : Prop :=
  ∀ n, P9125461715551422638.a n = A081324 (n + 1)

end A081324

/-! ## A081324.P6968453919767337752

`record[A072438(n+1)*A278529(n+1)]`
-/

namespace A081324.P6968453919767337752
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072438 (n + 1) * A278529 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A081324.P6968453919767337752

namespace A081324

/-- `record[A072438(n+1)*A278529(n+1)]` -/
def P6968453919767337752.Spec : Prop :=
  ∀ n, P6968453919767337752.a n = A081324 (n + 1)

end A081324

/-! ## A081324.P13868319458115831992

`2*∩[A124982(n+1), n²]`
-/

namespace A081324.P13868319458115831992
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124982 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = x) n

end

end A081324.P13868319458115831992

namespace A081324

/-- `2*∩[A124982(n+1), n²]` -/
def P13868319458115831992.Spec : Prop :=
  ∀ n, (P13868319458115831992.a n : ℤ) = A081324 (n + 1)

end A081324

/-! ## A081324.P13050459226402516111

`2*∩[A125022(n+1), n²]`
-/

namespace A081324.P13050459226402516111
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125022 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = x) n

end

end A081324.P13050459226402516111

namespace A081324

/-- `2*∩[A125022(n+1), n²]` -/
def P13050459226402516111.Spec : Prop :=
  ∀ n, (P13050459226402516111.a n : ℤ) = A081324 (n + 1)

end A081324

/-! ## A081324.P15294114804645923355

`∩[2*n², A125021(n+1)]`
-/

namespace A081324.P15294114804645923355
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125021 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A081324.P15294114804645923355

namespace A081324

/-- `∩[2*n², A125021(n+1)]` -/
def P15294114804645923355.Spec : Prop :=
  ∀ n, (P15294114804645923355.a n : ℤ) = A081324 (n + 1)

end A081324

/-! ## A081324.P9670045596597277002

`2*∩[A143575(n+1), n²]`
-/

namespace A081324.P9670045596597277002
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143575 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = x) n

end

end A081324.P9670045596597277002

namespace A081324

/-- `2*∩[A143575(n+1), n²]` -/
def P9670045596597277002.Spec : Prop :=
  ∀ n, (P9670045596597277002.a n : ℤ) = A081324 (n + 1)

end A081324

/-! ## A081324.P16369282681415206327

`∩[A125021(n+1), A000982(n)]`
-/

namespace A081324.P16369282681415206327
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125021 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000982 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A081324.P16369282681415206327

namespace A081324

/-- `∩[A125021(n+1), A000982(n)]` -/
def P16369282681415206327.Spec : Prop :=
  ∀ n, (P16369282681415206327.a n : ℤ) = A081324 (n + 1)

end A081324

/-! ## A081324.P2676075811683835395

`∩[A125021(n+1), A001105(n)]`
-/

namespace A081324.P2676075811683835395
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125021 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001105 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A081324.P2676075811683835395

namespace A081324

/-- `∩[A125021(n+1), A001105(n)]` -/
def P2676075811683835395.Spec : Prop :=
  ∀ n, (P2676075811683835395.a n : ℤ) = A081324 (n + 1)

end A081324

/-! ## A081324.P6884167496565991550

`∩[A125021(n+1), A213037(n)]`
-/

namespace A081324.P6884167496565991550
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125021 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213037 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A081324.P6884167496565991550

namespace A081324

/-- `∩[A125021(n+1), A213037(n)]` -/
def P6884167496565991550.Spec : Prop :=
  ∀ n, (P6884167496565991550.a n : ℤ) = A081324 (n + 1)

end A081324

/-! ## A081324.P14501980219096072903

`∩[A125021(n+1), A247375(n)]`
-/

namespace A081324.P14501980219096072903
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125021 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247375 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A081324.P14501980219096072903

namespace A081324

/-- `∩[A125021(n+1), A247375(n)]` -/
def P14501980219096072903.Spec : Prop :=
  ∀ n, (P14501980219096072903.a n : ℤ) = A081324 (n + 1)

end A081324

/-! ## A081324.P5911390663979858808

`∩[2*A125022(n+1), A001105(n)]`
-/

namespace A081324.P5911390663979858808
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A125022 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001105 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A081324.P5911390663979858808

namespace A081324

/-- `∩[2*A125022(n+1), A001105(n)]` -/
def P5911390663979858808.Spec : Prop :=
  ∀ n, (P5911390663979858808.a n : ℤ) = A081324 (n + 1)

end A081324

/-! ## A081324.P11599830244786768876

`filter[A125021(n+1), A379480(#)]`
-/

namespace A081324.P11599830244786768876
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125021 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A379480 (f1 j).toNat = 1) n)

end

end A081324.P11599830244786768876

namespace A081324

/-- `filter[A125021(n+1), A379480(#)]` -/
def P11599830244786768876.Spec : Prop :=
  ∀ n, P11599830244786768876.a n = A081324 (n + 1)

end A081324

/-! ## A081324.P14063193565943461589

`filter[A125022(n+1), A379480(#)]`
-/

namespace A081324.P14063193565943461589
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125022 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A379480 (f1 j).toNat = 1) n)

end

end A081324.P14063193565943461589

namespace A081324

/-- `filter[A125022(n+1), A379480(#)]` -/
def P14063193565943461589.Spec : Prop :=
  ∀ n, P14063193565943461589.a n = A081324 (n + 1)

end A081324

/-! ## A081324.P5213269060386818547

`∩[A125022(n+1), A001105(n)]`
-/

namespace A081324.P5213269060386818547
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125022 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001105 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A081324.P5213269060386818547

namespace A081324

/-- `∩[A125022(n+1), A001105(n)]` -/
def P5213269060386818547.Spec : Prop :=
  ∀ n, (P5213269060386818547.a n : ℤ) = A081324 (n + 1)

end A081324

/-!
# A081325: a(n) = sigma(n^2) modulo 4.

The programs for A081325, the canonical program `A081325.P13882741182874275986` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A081325 has offset 1).

The definition of A081325 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A081325.P13882741182874275986

`A010873(A065764(n+1))`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A081325

/-- `A010873(A065764(n+1))` -/
def P13882741182874275986.Spec : Prop :=
  ∀ n, P13882741182874275986.a n = A081325 (n + 1)

theorem P13882741182874275986.correct : P13882741182874275986.Spec := by
  intro n
  simp only [A081325, Nat.add_sub_cancel]

end A081325

/-! ## A081325.P7517535371622536684

`A288762(2*A378999(n+1))`
-/

namespace A081325.P7517535371622536684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288762 (2 * A378999 (n + 1)).toNat

end

end A081325.P7517535371622536684

namespace A081325

/-- `A288762(2*A378999(n+1))` -/
def P7517535371622536684.Spec : Prop :=
  ∀ n, P7517535371622536684.a n = A081325 (n + 1)

end A081325

/-! ## A081325.P7126181393537491256

`A065764(n+1)%A040002(n)`
-/

namespace A081325.P7126181393537491256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A065764 (n + 1)) (A040002 n)

end

end A081325.P7126181393537491256

namespace A081325

/-- `A065764(n+1)%A040002(n)` -/
def P7126181393537491256.Spec : Prop :=
  ∀ n, P7126181393537491256.a n = A081325 (n + 1)

end A081325

/-! ## A081325.P5180802534484669294

`and(A065764(n+1), A122553(n))`
-/

namespace A081325.P5180802534484669294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A065764 (n + 1)) (A122553 n)

end

end A081325.P5180802534484669294

namespace A081325

/-- `and(A065764(n+1), A122553(n))` -/
def P5180802534484669294.Spec : Prop :=
  ∀ n, P5180802534484669294.a n = A081325 (n + 1)

end A081325

/-! ## A081325.P4208613163630806734

`A309335(A309324(n+1))%4`
-/

namespace A081325.P4208613163630806734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A309335 (A309324 (n + 1)).toNat) 4

end

end A081325.P4208613163630806734

namespace A081325

/-- `A309335(A309324(n+1))%4` -/
def P4208613163630806734.Spec : Prop :=
  ∀ n, P4208613163630806734.a n = A081325 (n + 1)

end A081325

/-! ## A081325.P10781602319979194694

`A081334(A091574(n))`
-/

namespace A081325.P10781602319979194694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081334 (A091574 n).toNat

end

end A081325.P10781602319979194694

namespace A081325

/-- `A081334(A091574(n))` -/
def P10781602319979194694.Spec : Prop :=
  ∀ n, P10781602319979194694.a n = A081325 (n + 1)

end A081325

/-! ## A081325.P12693241634377279423

`A081334(A164355(n+1))`
-/

namespace A081325.P12693241634377279423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081334 (A164355 (n + 1)).toNat

end

end A081325.P12693241634377279423

namespace A081325

/-- `A081334(A164355(n+1))` -/
def P12693241634377279423.Spec : Prop :=
  ∀ n, P12693241634377279423.a n = A081325 (n + 1)

end A081325

/-! ## A081325.P9978274846385346655

`∑{d}[(n+1)², #]%4`
-/

namespace A081325.P9978274846385346655
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ d ∈ Nat.divisors (f1 n), d) % 4

end

end A081325.P9978274846385346655

namespace A081325

/-- `∑{d}[(n+1)², #]%4` -/
def P9978274846385346655.Spec : Prop :=
  ∀ n, (P9978274846385346655.a n : ℤ) = A081325 (n + 1)

end A081325

/-! ## A081325.P16300458163041649276

`and(3, ∑{d}[(n+1)², #])`
-/

namespace A081325.P16300458163041649276
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 3 (∑ d ∈ Nat.divisors (f1 n), d)

end

end A081325.P16300458163041649276

namespace A081325

/-- `and(3, ∑{d}[(n+1)², #])` -/
def P16300458163041649276.Spec : Prop :=
  ∀ n, (P16300458163041649276.a n : ℤ) = A081325 (n + 1)

end A081325

/-! ## A081325.P6188474654481237915

`3-and(2, ∑{d}[n*(n+2)+1, #]+2)`
-/

namespace A081325.P6188474654481237915
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (n + 2) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 - (Nat.land 2 (∑ d ∈ Nat.divisors (f1 n), d + 2) : ℤ)

end

end A081325.P6188474654481237915

namespace A081325

/-- `3-and(2, ∑{d}[n*(n+2)+1, #]+2)` -/
def P6188474654481237915.Spec : Prop :=
  ∀ n, P6188474654481237915.a n = A081325 (n + 1)

end A081325

/-! ## A081325.P13958452047996320585

`(7*(∑{d}[∑[2*n+1], #]+2)%4)%4`
-/

namespace A081325.P13958452047996320585
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7 * ((∑ d ∈ Nat.divisors (f1 n), d + 2) % 4) % 4

end

end A081325.P13958452047996320585

namespace A081325

/-- `(7*(∑{d}[∑[2*n+1], #]+2)%4)%4` -/
def P13958452047996320585.Spec : Prop :=
  ∀ n, (P13958452047996320585.a n : ℤ) = A081325 (n + 1)

end A081325

/-! ## A081325.P15232345060603528155

`A000203((n+1)²)%4`
-/

namespace A081325.P15232345060603528155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000203 ((n + 1) ^ 2)) 4

end

end A081325.P15232345060603528155

namespace A081325

/-- `A000203((n+1)²)%4` -/
def P15232345060603528155.Spec : Prop :=
  ∀ n, P15232345060603528155.a n = A081325 (n + 1)

end A081325

/-! ## A081325.P5911429768199412836

`and(3, A000203((n+1)^2))`
-/

namespace A081325.P5911429768199412836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 3 (A000203 ((n + 1) ^ 2))

end

end A081325.P5911429768199412836

namespace A081325

/-- `and(3, A000203((n+1)^2))` -/
def P5911429768199412836.Spec : Prop :=
  ∀ n, P5911429768199412836.a n = A081325 (n + 1)

end A081325

/-! ## A081325.P1116957903087790621

`and(2, A000203(record[(n-1)²]))+1`
-/

namespace A081325.P1116957903087790621
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 2 (A000203 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat) + 1

end

end A081325.P1116957903087790621

namespace A081325

/-- `and(2, A000203(record[(n-1)²]))+1` -/
def P1116957903087790621.Spec : Prop :=
  ∀ n, P1116957903087790621.a n = A081325 (n + 1)

end A081325

/-! ## A081325.P7150964668181017996

`dr(A000203(∑[2*n+1])%4)`
-/

namespace A081325.P7150964668181017996
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (Int.tmod (A000203 (∑ j ∈ Finset.range (n + 1), f1 j)) 4)

end

end A081325.P7150964668181017996

namespace A081325

/-- `dr(A000203(∑[2*n+1])%4)` -/
def P7150964668181017996.Spec : Prop :=
  ∀ n, (P7150964668181017996.a n : ℤ) = A081325 (n + 1)

end A081325

/-! ## A081325.P8533342234254925619

`and(2, A000203(C(n+1, n)²))+1`
-/

namespace A081325.P8533342234254925619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 2 (A000203 (Nat.choose (n + 1) n ^ 2)) + 1

end

end A081325.P8533342234254925619

namespace A081325

/-- `and(2, A000203(C(n+1, n)²))+1` -/
def P8533342234254925619.Spec : Prop :=
  ∀ n, P8533342234254925619.a n = A081325 (n + 1)

end A081325

/-! ## A081325.P11904296516191633263

`and(2, A000203(∑[n+1+n]))+1`
-/

namespace A081325.P11904296516191633263
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1 + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 2 (A000203 (∑ j ∈ Finset.range (n + 1), f1 j)) + 1

end

end A081325.P11904296516191633263

namespace A081325

/-- `and(2, A000203(∑[n+1+n]))+1` -/
def P11904296516191633263.Spec : Prop :=
  ∀ n, P11904296516191633263.a n = A081325 (n + 1)

end A081325

/-! ## A081325.P5712831923279207357

`gcd(3, A379495((n+1)²))`
-/

namespace A081325.P5712831923279207357
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 3 (A379495 ((n + 1) ^ 2))

end

end A081325.P5712831923279207357

namespace A081325

/-- `gcd(3, A379495((n+1)²))` -/
def P5712831923279207357.Spec : Prop :=
  ∀ n, (P5712831923279207357.a n : ℤ) = A081325 (n + 1)

end A081325

/-! ## A081325.P6774236505719229399

`A010873(A065766(n+1)+2*n)`
-/

namespace A081325.P6774236505719229399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010873 (A065766 (n + 1) + (2 * n : ℤ)).toNat

end

end A081325.P6774236505719229399

namespace A081325

/-- `A010873(A065766(n+1)+2*n)` -/
def P6774236505719229399.Spec : Prop :=
  ∀ n, P6774236505719229399.a n = A081325 (n + 1)

end A081325

/-! ## A081325.P8029259496528800552

`and(A065764(n+1), A188161(n))`
-/

namespace A081325.P8029259496528800552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A065764 (n + 1)) (A188161 n)

end

end A081325.P8029259496528800552

namespace A081325

/-- `and(A065764(n+1), A188161(n))` -/
def P8029259496528800552.Spec : Prop :=
  ∀ n, P8029259496528800552.a n = A081325 (n + 1)

end A081325

/-!
# A081326: Number of partitions of n into two 3-smooth numbers.

The programs for A081326, there is no canonical definition to state claims against.
-/

/-! ## A081326.P16019554023109593866

`A072491(lcm(n, A039867(n+1)))`
-/

namespace A081326.P16019554023109593866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072491 (Int.lcm (n : ℤ) (A039867 (n + 1)))

end

end A081326.P16019554023109593866

/-! ## A081326.P143778883219211521

`A334028(A190079(n+1)+n-2)`
-/

namespace A081326.P143778883219211521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334028 (A190079 (n + 1) + ((n : ℤ) - 2)).toNat

end

end A081326.P143778883219211521

/-! ## A081326.P1452377630299003102

`A244145(∑[A278223(A002061(n))])`
-/

namespace A081326.P1452377630299003102
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278223 (A002061 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244145 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A081326.P1452377630299003102

/-! ## A081326.P16974159252756555634

`A334028(or(A008586(n), A322838(n+1)))`
-/

namespace A081326.P16974159252756555634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334028 (Int.lor (A008586 n) (A322838 (n + 1))).toNat

end

end A081326.P16974159252756555634

/-! ## A081326.P18031051136636107158

`A306446(n+1)+A188044(A003500(A046925(n)))`
-/

namespace A081326.P18031051136636107158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306446 (n + 1) + A188044 (A003500 (A046925 n).toNat).toNat

end

end A081326.P18031051136636107158

/-!
# A081327: Smallest 3-smooth number m such that n-m is also 3-smooth, a(n)=0 if no such 3-smooth number exists.

The programs for A081327, there is no canonical definition to state claims against.
-/

/-! ## A081327.P5825935726332412266

`(n+2)%(A081328(n+1)+1)`
-/

namespace A081327.P5825935726332412266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n + 2 : ℤ) (A081328 (n + 1) + 1)

end

end A081327.P5825935726332412266

/-! ## A081327.P8500149154187312635

`A002260(∑[n+1]-A081328(n+1)+1)-1`
-/

namespace A081327.P8500149154187312635
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - A081328 (n + 1) + 1).toNat - 1

end

end A081327.P8500149154187312635

/-! ## A081327.P16895493421089130719

`A002262(∑[n+1]-A081328(n+1))`
-/

namespace A081327.P16895493421089130719
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - A081328 (n + 1)).toNat

end

end A081327.P16895493421089130719

/-! ## A081327.P16942371808898426610

`A204016(A081328(n+1)+A001844(n))`
-/

namespace A081327.P16942371808898426610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204016 (A081328 (n + 1) + A001844 n).toNat

end

end A081327.P16942371808898426610

/-! ## A081327.P4345687033845601933

`A035218(n^a(n-1))` with `a(0)=0`
-/

namespace A081327.P4345687033845601933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A035218 (SequenceMachineLib.roundAway ((n : ℚ) ^ (a (n - 1) : ℤ))).toNat

end

end A081327.P4345687033845601933

/-!
# A081328: Greatest 3-smooth number m such that n-m is also 3-smooth, a(n)=0 if no such 3-smooth number exists.

The programs for A081328, there is no canonical definition to state claims against.
-/

/-! ## A081328.P11564943615839722909

`(n*A081327(n+1))%(n+1)`
-/

namespace A081328.P11564943615839722909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((n : ℤ) * A081327 (n + 1)) (n + 1 : ℤ)

end

end A081328.P11564943615839722909

/-! ## A081328.P15969812991143207263

`(A027445(n)-A081327(n+1))%(n+1)`
-/

namespace A081328.P15969812991143207263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A027445 n - A081327 (n + 1)) (n + 1 : ℤ)

end

end A081328.P15969812991143207263

/-! ## A081328.P95058392910094412

`(A028896(n)-A081327(n+1))%(n+1)`
-/

namespace A081328.P95058392910094412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A028896 n - A081327 (n + 1)) (n + 1 : ℤ)

end

end A081328.P95058392910094412

/-! ## A081328.P12266372837780550970

`(n+1-A081327(n+1))%A000027(n+1)`
-/

namespace A081328.P12266372837780550970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((n + 1 : ℤ) - A081327 (n + 1)) (A000027 (n + 1))

end

end A081328.P12266372837780550970

/-! ## A081328.P15553368395814627095

`A004275(n+2)%(A081327(n+1)+n+1)`
-/

namespace A081328.P15553368395814627095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A004275 (n + 2)) (A081327 (n + 1) + (n + 1 : ℤ))

end

end A081328.P15553368395814627095

/-! ## A081328.P8445510208166828690

`(A008458(n+1)-A081327(n+1))%(n+1)`
-/

namespace A081328.P8445510208166828690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A008458 (n + 1) - A081327 (n + 1)) (n + 1 : ℤ)

end

end A081328.P8445510208166828690

/-! ## A081328.P2079459884752708916

`(A008574(n+1)-A081327(n+1))%(n+1)`
-/

namespace A081328.P2079459884752708916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A008574 (n + 1) - A081327 (n + 1)) (n + 1 : ℤ)

end

end A081328.P2079459884752708916

/-! ## A081328.P7673082310292678231

`(A027444(n+1)-A081327(n+1))%(n+1)`
-/

namespace A081328.P7673082310292678231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A027444 (n + 1) - A081327 (n + 1)) (n + 1 : ℤ)

end

end A081328.P7673082310292678231

/-! ## A081328.P8440802934617249535

`(A008592(∑[n])-A081327(n+1))%(n+1)`
-/

namespace A081328.P8440802934617249535
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A008592 (∑ j ∈ Finset.range (n + 1), f1 j) - A081327 (n + 1)) (n + 1 : ℤ)

end

end A081328.P8440802934617249535

/-! ## A081328.P9320650501661234107

`A002262(∑[n+1]-A081327(n+1))`
-/

namespace A081328.P9320650501661234107
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - A081327 (n + 1)).toNat

end

end A081328.P9320650501661234107

/-!
# A081329: Numbers having no representation as sum of two 3-smooth numbers.

The programs for A081329, there is no canonical definition to state claims against.
-/

/-! ## A081329.P10973105043742765474

`comp[A081330(n+1)-1]+1`
-/

namespace A081329.P10973105043742765474
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081330 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A081329.P10973105043742765474

/-! ## A081329.P9557007677000085658

`A323046(gcd(n, lcm(n, 1-a(n-1))+n))` with `a(0)=1`
-/

namespace A081329.P9557007677000085658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A323046 (Nat.gcd n (Int.lcm (n : ℤ) (1 - a (n - 1)) + n))

end

end A081329.P9557007677000085658

/-! ## A081329.P14342064816281959537

`∪[A323046(n+1), A008349(n)]`
-/

namespace A081329.P14342064816281959537
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323046 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008349 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A081329.P14342064816281959537

/-! ## A081329.P3124934167845069577

`∪[A323046(n+1), A008358(n)]`
-/

namespace A081329.P3124934167845069577
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323046 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008358 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A081329.P3124934167845069577

/-! ## A081329.P777128363031132521

`∪[A008379(n), A323046(n+1)]`
-/

namespace A081329.P777128363031132521
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008379 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323046 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A081329.P777128363031132521

/-! ## A081329.P16138211596643197614

`∪[A323046(n+1), A008398(n)]`
-/

namespace A081329.P16138211596643197614
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323046 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008398 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A081329.P16138211596643197614

/-! ## A081329.P8162960950515744718

`∪[A010975(n), A323046(n+1)]`
-/

namespace A081329.P8162960950515744718
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010975 (n + 22)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323046 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A081329.P8162960950515744718

/-! ## A081329.P14503545328783654240

`∪[A323046(n+1), A014795(n)]`
-/

namespace A081329.P14503545328783654240
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323046 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014795 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A081329.P14503545328783654240

/-! ## A081329.P1344984490877732011

`∪[A323046(n+1), A014799(n)]`
-/

namespace A081329.P1344984490877732011
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323046 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014799 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A081329.P1344984490877732011

/-! ## A081329.P12593521333019967187

`∪[A016761(n), A323046(n+1)]`
-/

namespace A081329.P12593521333019967187
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016761 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323046 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A081329.P12593521333019967187

/-! ## A081329.P11472704233905921400

`∪[A323046(n+1), A016783(n)]`
-/

namespace A081329.P11472704233905921400
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323046 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016783 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A081329.P11472704233905921400

/-! ## A081329.P16337438818931091568

`∪[A323046(n+1), A016817(n)]`
-/

namespace A081329.P16337438818931091568
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323046 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016817 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A081329.P16337438818931091568

/-! ## A081329.P2066569065337186841

`∪[A323046(n+1), A016923(n)]`
-/

namespace A081329.P2066569065337186841
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323046 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016923 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A081329.P2066569065337186841

/-! ## A081329.P6887689502080867034

`∪[A323046(n+1), A016924(n)]`
-/

namespace A081329.P6887689502080867034
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323046 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016924 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A081329.P6887689502080867034

/-! ## A081329.P14245408327006970339

`∪[A323046(n+1), A016997(n)]`
-/

namespace A081329.P14245408327006970339
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323046 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016997 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A081329.P14245408327006970339

/-! ## A081329.P11571133724250093226

`∪[A323046(n+1), A017177(n)]`
-/

namespace A081329.P11571133724250093226
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323046 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017177 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A081329.P11571133724250093226

/-! ## A081329.P6589747194478038789

`∪[A017537(n), A323046(n+1)]`
-/

namespace A081329.P6589747194478038789
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017537 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323046 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A081329.P6589747194478038789

/-! ## A081329.P12445910069227903417

`∪[A134155(n), A323046(n+1)]`
-/

namespace A081329.P12445910069227903417
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134155 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323046 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A081329.P12445910069227903417

/-! ## A081329.P1463289641933588157

`eq[0, A081326(n+1)]+1`
-/

namespace A081329.P1463289641933588157
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081326 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A081329.P1463289641933588157

/-! ## A081329.P13512626990504873086

`lt[A081326(abs(1-n)+1), 1]`
-/

namespace A081329.P13512626990504873086
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081326 (|1 - (n : ℤ)| + 1).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A081329.P13512626990504873086

/-!
# A081330: Numbers that can be written as sum of two 3-smooth numbers.

The programs for A081330, there is no canonical definition to state claims against.
-/

/-! ## A081330.P1677202517424293370

`∪[A081332(n+1), A081333(n+1)]`
-/

namespace A081330.P1677202517424293370
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081332 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081333 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A081330.P1677202517424293370

/-! ## A081330.P16004969192454027205

`lt[0, A081326(n+1)]+1`
-/

namespace A081330.P16004969192454027205
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081326 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A081330.P16004969192454027205

/-! ## A081330.P3789449164457171275

`lt[0, A081327(n+1)]+1`
-/

namespace A081330.P3789449164457171275
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081327 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A081330.P3789449164457171275

/-! ## A081330.P6690056244047337367

`lt[A237442(n+2), 3]+2`
-/

namespace A081330.P6690056244047337367
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237442 (n + 2)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 2

end

end A081330.P6690056244047337367

/-! ## A081330.P5073953560129700858

`lt[A196941(n+2), 4]+2`
-/

namespace A081330.P5073953560129700858
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196941 (n + 2)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 2

end

end A081330.P5073953560129700858

/-! ## A081330.P2930707520015989475

`lt[0, A081326(A028310(n))]`
-/

namespace A081330.P2930707520015989475
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081326 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A081330.P2930707520015989475

/-! ## A081330.P16443101944902966805

`A020725(lt[0, A081326(n+1)])`
-/

namespace A081330.P16443101944902966805
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081326 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A081330.P16443101944902966805

/-! ## A081330.P6858514190096717192

`A020725(lt[0, A081327(n+1)])`
-/

namespace A081330.P6858514190096717192
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081327 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A081330.P6858514190096717192

/-! ## A081330.P16097251385732771280

`eq[1, ceil(A081326(n+1)/A127336(n+2))]+1`
-/

namespace A081330.P16097251385732771280
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A081326 (n + 1) : ℚ) / (A127336 (n + 2) : ℚ)⌉

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A081330.P16097251385732771280

/-!
# A081331: Number of numbers <= n that can be written as sum of two 3-smooth numbers.

The programs for A081331, there is no canonical definition to state claims against.
-/

/-! ## A081331.P3254469025076807815

`∑[round(atan(A081326(n+1)))]`
-/

namespace A081331.P3254469025076807815
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.arctan (A081326 (n + 1) : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A081331.P3254469025076807815

/-! ## A081331.P14458136700130840841

`∑[char[A081330(n+1)-1]]`
-/

namespace A081331.P14458136700130840841
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081330 (n + 1) - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A081331.P14458136700130840841

/-! ## A081331.P3475101220930869781

`∑[A011558(A081327(n+1))]`
-/

namespace A081331.P3475101220930869781
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011558 (A081327 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A081331.P3475101220930869781

/-! ## A081331.P4758216946626948908

`∑[A081327(A081327(n+1)+1)]`
-/

namespace A081331.P4758216946626948908
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081327 (A081327 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A081331.P4758216946626948908

/-! ## A081331.P6345922979289723344

`∑[A000045(a(A081326(n+1)))]` with `a(0)=0, a(1)=1`
-/

namespace A081331.P6345922979289723344
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n f1 =>
  A000045 (f1 (A081326 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A081331.P6345922979289723344

/-! ## A081331.P13036321663358135640

`∑[ceil(A081326(n+1)/A000040(n+1))]`
-/

namespace A081331.P13036321663358135640
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A081326 (n + 1) : ℚ) / (A000040 (n + 1) : ℚ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A081331.P13036321663358135640

/-! ## A081331.P17505675470644952418

`∑[ceil(A081326(n+1)/A020639(n+1)²)]`
-/

namespace A081331.P17505675470644952418
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A081326 (n + 1) : ℚ) / (A020639 (n + 1) ^ 2 : ℚ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A081331.P17505675470644952418

/-! ## A081331.P18318491379623419422

`∑[char[lt[A196941(n+2), 4]+1]]`
-/

namespace A081331.P18318491379623419422
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196941 (n + 2)

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f3 j < (f4 j : ℤ)) n + 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A081331.P18318491379623419422

/-!
# A081332: Numbers having a unique partition into two 3-smooth numbers.

The programs for A081332, there is no canonical definition to state claims against.
-/

/-! ## A081332.P14408873715279049318

`eq[1, A081326(n+1)]+1`
-/

namespace A081332.P14408873715279049318
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081326 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A081332.P14408873715279049318

/-! ## A081332.P5287544661654189592

`eq[1, A081326(A028310(n))]`
-/

namespace A081332.P5287544661654189592
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081326 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A081332.P5287544661654189592

/-! ## A081332.P5236335119148894020

`A020725(eq[1, A081326(n+1)])`
-/

namespace A081332.P5236335119148894020
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081326 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A081332.P5236335119148894020

/-! ## A081332.P12956496619081571938

`A262564(eq[1, A081326(n+1)])`
-/

namespace A081332.P12956496619081571938
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081326 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262564 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A081332.P12956496619081571938

/-! ## A081332.P12824501214506639399

`eq[1, A081326(A000007(n)+n)]`
-/

namespace A081332.P12824501214506639399
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081326 (A000007 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A081332.P12824501214506639399

/-! ## A081332.P6828652357378503558

`A000720(p?[A000040(n+1)*A081326(n+1)])`
-/

namespace A081332.P6828652357378503558
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) * A081326 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A081332.P6828652357378503558

/-! ## A081332.P6679750293821521345

`eq[1, A081326(A065033(2*n))]`
-/

namespace A081332.P6679750293821521345
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081326 (A065033 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A081332.P6679750293821521345

/-! ## A081332.P5152586149416564305

`eq[1, A081326(A123108(2*n))]`
-/

namespace A081332.P5152586149416564305
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081326 (A123108 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A081332.P5152586149416564305

/-!
# A081333: Numbers having more than one partition into two 3-smooth numbers.

The programs for A081333, there is no canonical definition to state claims against.
-/

/-! ## A081333.P7425000578415530565

`lt[1, A081326(n+1)]+1`
-/

namespace A081333.P7425000578415530565
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081326 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A081333.P7425000578415530565

/-! ## A081333.P12275172105735653056

`lt[1, A081326(A028310(n))]`
-/

namespace A081333.P12275172105735653056
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081326 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A081333.P12275172105735653056

/-! ## A081333.P16397615699659171815

`A020725(lt[1, A081326(n+1)])`
-/

namespace A081333.P16397615699659171815
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081326 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A081333.P16397615699659171815

/-! ## A081333.P13358266624682417285

`lt[1, A081326(A289207(n)+2)]`
-/

namespace A081333.P13358266624682417285
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081326 (A289207 n + 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A081333.P13358266624682417285

/-! ## A081333.P17767054377151963962

`lt[1, A081326(A000007(n)+n)]`
-/

namespace A081333.P17767054377151963962
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081326 (A000007 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A081333.P17767054377151963962

/-! ## A081333.P14306251468461593155

`lt[1, A081326(A233583(n+1))]`
-/

namespace A081333.P14306251468461593155
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081326 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A081333.P14306251468461593155

/-!
# A081334: a(n) = sigma(2*n^2) modulo 4.

The programs for A081334, the canonical program `A081334.P8314980247781492951` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A081334 has offset 1).

The definition of A081334 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A081334.P8314980247781492951

`A010873(A065765(n+1))`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A081334

/-- `A010873(A065765(n+1))` -/
def P8314980247781492951.Spec : Prop :=
  ∀ n, P8314980247781492951.a n = A081334 (n + 1)

theorem P8314980247781492951.correct : P8314980247781492951.Spec := by
  intro n
  simp only [A081334, Nat.add_sub_cancel]

end A081334

/-! ## A081334.P14409761976572472597

`and(3, -A035109(n))`
-/

namespace A081334.P14409761976572472597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 3 (-A035109 n)

end

end A081334.P14409761976572472597

namespace A081334

/-- `and(3, -A035109(n))` -/
def P14409761976572472597.Spec : Prop :=
  ∀ n, P14409761976572472597.a n = A081334 (n + 1)

end A081334

/-! ## A081334.P11425184586865664008

`A209661(n+1)+2`
-/

namespace A081334.P11425184586865664008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209661 (n + 1) + 2

end

end A081334.P11425184586865664008

namespace A081334

/-- `A209661(n+1)+2` -/
def P11425184586865664008.Spec : Prop :=
  ∀ n, P11425184586865664008.a n = A081334 (n + 1)

end A081334

/-! ## A081334.P15716229844008624907

`or(1, gcd(2, A046080(n+1)))`
-/

namespace A081334.P15716229844008624907
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (Int.gcd 2 (A046080 (n + 1)))

end

end A081334.P15716229844008624907

namespace A081334

/-- `or(1, gcd(2, A046080(n+1)))` -/
def P15716229844008624907.Spec : Prop :=
  ∀ n, (P15716229844008624907.a n : ℤ) = A081334 (n + 1)

end A081334

/-! ## A081334.P15677344318918206087

`(n+1)/A209662(n+1)+2`
-/

namespace A081334.P15677344318918206087
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A209662 (n + 1) : ℚ) + 2

end

end A081334.P15677344318918206087

namespace A081334

/-- `(n+1)/A209662(n+1)+2` -/
def P15677344318918206087.Spec : Prop :=
  ∀ n, P15677344318918206087.a n = (A081334 (n + 1) : ℚ)

end A081334

/-! ## A081334.P11802411455917527242

`A004200(A046109(n+1))`
-/

namespace A081334.P11802411455917527242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004200 (A046109 (n + 1)).toNat

end

end A081334.P11802411455917527242

namespace A081334

/-- `A004200(A046109(n+1))` -/
def P11802411455917527242.Spec : Prop :=
  ∀ n, P11802411455917527242.a n = A081334 (n + 1)

end A081334

/-! ## A081334.P9472852964867271047

`A081325(2*(n+1))`
-/

namespace A081334.P9472852964867271047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081325 (2 * (n + 1))

end

end A081334.P9472852964867271047

namespace A081334

/-- `A081325(2*(n+1))` -/
def P9472852964867271047.Spec : Prop :=
  ∀ n, P9472852964867271047.a n = A081334 (n + 1)

end A081334

/-! ## A081334.P10721799656284853219

`A065764(2*(n+1))%4`
-/

namespace A081334.P10721799656284853219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A065764 (2 * (n + 1))) 4

end

end A081334.P10721799656284853219

namespace A081334

/-- `A065764(2*(n+1))%4` -/
def P10721799656284853219.Spec : Prop :=
  ∀ n, P10721799656284853219.a n = A081334 (n + 1)

end A081334

/-! ## A081334.P2299381038390364114

`and(2, A065764(2*n+2))+1`
-/

namespace A081334.P2299381038390364114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 2 (A065764 (2 * n + 2)) + 1

end

end A081334.P2299381038390364114

namespace A081334

/-- `and(2, A065764(2*n+2))+1` -/
def P2299381038390364114.Spec : Prop :=
  ∀ n, P2299381038390364114.a n = A081334 (n + 1)

end A081334

/-! ## A081334.P4424959164214601969

`A084101(A035109(n))`
-/

namespace A081334.P4424959164214601969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084101 (A035109 n).toNat

end

end A081334.P4424959164214601969

namespace A081334

/-- `A084101(A035109(n))` -/
def P4424959164214601969.Spec : Prop :=
  ∀ n, P4424959164214601969.a n = A081334 (n + 1)

end A081334

/-! ## A081334.P10808581958978666268

`and(3, 2-∑{d}[(n+1)², n-#+n])`
-/

namespace A081334.P10808581958978666268
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 3 (2 - ∑ d ∈ Nat.divisors (f1 n), ((n : ℤ) - (d : ℤ) + (n : ℤ)))

end

end A081334.P10808581958978666268

namespace A081334

/-- `and(3, 2-∑{d}[(n+1)², n-#+n])` -/
def P10808581958978666268.Spec : Prop :=
  ∀ n, P10808581958978666268.a n = A081334 (n + 1)

end A081334

/-! ## A081334.P50690145452357911

`(∑{d}[∑[2*(2*n+1)], #]/3+2)%4`
-/

namespace A081334.P50690145452357911
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (2 * n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway (((∑ d ∈ Nat.divisors (f1 n), d : ℕ) : ℚ) / 3 + 2)) 4

end

end A081334.P50690145452357911

namespace A081334

/-- `(∑{d}[∑[2*(2*n+1)], #]/3+2)%4` -/
def P50690145452357911.Spec : Prop :=
  ∀ n, P50690145452357911.a n = A081334 (n + 1)

end A081334

/-! ## A081334.P5967128987803052460

`and(2, ∑{d}[∑[2*(2*n+1)], #]/3+1)+1`
-/

namespace A081334.P5967128987803052460
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (2 * n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 2 (SequenceMachineLib.roundAway (((∑ d ∈ Nat.divisors (f1 n), d : ℕ) : ℚ) / 3 + 1)) + 1

end

end A081334.P5967128987803052460

namespace A081334

/-- `and(2, ∑{d}[∑[2*(2*n+1)], #]/3+1)+1` -/
def P5967128987803052460.Spec : Prop :=
  ∀ n, P5967128987803052460.a n = A081334 (n + 1)

end A081334

/-! ## A081334.P17503642868570753324

`∑{d}[(2*(n+1))², #]%4`
-/

namespace A081334.P17503642868570753324
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (2 * (n + 1)) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ d ∈ Nat.divisors (f1 n), d) % 4

end

end A081334.P17503642868570753324

namespace A081334

/-- `∑{d}[(2*(n+1))², #]%4` -/
def P17503642868570753324.Spec : Prop :=
  ∀ n, (P17503642868570753324.a n : ℤ) = A081334 (n + 1)

end A081334

/-! ## A081334.P14970519791675130181

`and(3, ∑{d}[(2*(n+1))², #])`
-/

namespace A081334.P14970519791675130181
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (2 * (n + 1)) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 3 (∑ d ∈ Nat.divisors (f1 n), d)

end

end A081334.P14970519791675130181

namespace A081334

/-- `and(3, ∑{d}[(2*(n+1))², #])` -/
def P14970519791675130181.Spec : Prop :=
  ∀ n, (P14970519791675130181.a n : ℤ) = A081334 (n + 1)

end A081334

/-! ## A081334.P5631316878752730208

`and(2, 2*n-A000203(∑[2*n+1]))+1`
-/

namespace A081334.P5631316878752730208
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 2 ((2 * n : ℤ) - A000203 (∑ j ∈ Finset.range (n + 1), f1 j)) + 1

end

end A081334.P5631316878752730208

namespace A081334

/-- `and(2, 2*n-A000203(∑[2*n+1]))+1` -/
def P5631316878752730208.Spec : Prop :=
  ∀ n, P5631316878752730208.a n = A081334 (n + 1)

end A081334

/-! ## A081334.P17281870756083717873

`and(2, A000203(lcm(2, (n+1)²)))+1`
-/

namespace A081334.P17281870756083717873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 2 (A000203 (Nat.lcm 2 ((n + 1) ^ 2))) + 1

end

end A081334.P17281870756083717873

namespace A081334

/-- `and(2, A000203(lcm(2, (n+1)²)))+1` -/
def P17281870756083717873.Spec : Prop :=
  ∀ n, P17281870756083717873.a n = A081334 (n + 1)

end A081334

/-! ## A081334.P10787493229387363581

`and(3, A000203(2*(n+1)²))`
-/

namespace A081334.P10787493229387363581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 3 (A000203 (2 * (n + 1) ^ 2))

end

end A081334.P10787493229387363581

namespace A081334

/-- `and(3, A000203(2*(n+1)²))` -/
def P10787493229387363581.Spec : Prop :=
  ∀ n, P10787493229387363581.a n = A081334 (n + 1)

end A081334

/-! ## A081334.P3720852006960749098

`A010873(A065766(n+1)+2)`
-/

namespace A081334.P3720852006960749098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010873 (A065766 (n + 1) + 2).toNat

end

end A081334.P3720852006960749098

namespace A081334

/-- `A010873(A065766(n+1)+2)` -/
def P3720852006960749098.Spec : Prop :=
  ∀ n, P3720852006960749098.a n = A081334 (n + 1)

end A081334

/-! ## A081334.P12673409331845853868

`and(3, -A033879((n+1)²))`
-/

namespace A081334.P12673409331845853868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 3 (-A033879 ((n + 1) ^ 2))

end

end A081334.P12673409331845853868

namespace A081334

/-- `and(3, -A033879((n+1)²))` -/
def P12673409331845853868.Spec : Prop :=
  ∀ n, P12673409331845853868.a n = A081334 (n + 1)

end A081334

/-!
# A081335: a(n) = (6^n + 2^n)/2.

The programs for A081335, the canonical program `A081335.P912104034244107122` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A081335 has offset 0).

The definition of A081335 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(6^n+2^n)/2` (program `A081335.P7228516450951102431`, by `A081335.P7228516450951102431.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A081335.P7228516450951102431

`(6^n+2^n)/2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A081335.P7228516450951102431
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (6 ^ n + 2 ^ n : ℚ) / 2

end

end A081335.P7228516450951102431

namespace A081335

/-- `(6^n+2^n)/2` -/
def P7228516450951102431.Spec : Prop :=
  ∀ n, P7228516450951102431.a n = (A081335 n : ℚ)

theorem P7228516450951102431.correct : P7228516450951102431.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A081335, Nat.add_sub_cancel, A081335.P7228516450951102431.a, A081335.P912104034244107122.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A081335, Nat.add_sub_cancel, A081335.P7228516450951102431.a, A081335.P912104034244107122.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [← h1, ← h2]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A081335

/-! ## A081335.P912104034244107122

`8*a(n-1)-12*a(n-2)` with `a(0)=1, a(1)=4`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A081335

/-- `8*a(n-1)-12*a(n-2)` -/
def P912104034244107122.Spec : Prop :=
  ∀ n, P912104034244107122.a n = A081335 n

theorem P912104034244107122.correct : P912104034244107122.Spec := by
  intro n
  simp only [A081335]

end A081335

/-! ## A081335.P1086634674945811634

`ogf((1-4x)/(1-8x+12x^2))`
-/

namespace A081335.P1086634674945811634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -4] [1, -8, 12] n

end

end A081335.P1086634674945811634

namespace A081335

/-- `ogf((1-4x)/(1-8x+12x^2))` -/
def P1086634674945811634.Spec : Prop :=
  ∀ n, P1086634674945811634.a n = A081335 n

end A081335

/-! ## A081335.P17972544418118455635

`6*a(n-1)-2^n` with `a(0)=1`
-/

namespace A081335.P17972544418118455635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  6 * a (n - 1) - (2 ^ n : ℤ)

end

end A081335.P17972544418118455635

namespace A081335

/-- `6*a(n-1)-2^n` -/
def P17972544418118455635.Spec : Prop :=
  ∀ n, P17972544418118455635.a n = A081335 n

end A081335

/-! ## A081335.P10154777085747804288

`(2^n+6^n)*tan(acot(2))`
-/

namespace A081335.P10154777085747804288
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (2 ^ n + 6 ^ n : ℝ) * Real.tan (SequenceMachineLib.acot (2 : ℝ))

end

end A081335.P10154777085747804288

namespace A081335

/-- `(2^n+6^n)*tan(acot(2))` -/
def P10154777085747804288.Spec : Prop :=
  ∀ n, P10154777085747804288.a n = (A081335 n : ℝ)

end A081335

/-! ## A081335.P5617249909777148779

`lcm((2^ceil(n/2))², ∑[ceil(3^(n-1))])`
-/

namespace A081335.P5617249909777148779
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(3 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (SequenceMachineLib.roundAway (((2 : ℚ) ^ (⌈(n : ℚ) / 2⌉ : ℤ)) ^ 2)) (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A081335.P5617249909777148779

namespace A081335

/-- `lcm((2^ceil(n/2))², ∑[ceil(3^(n-1))])` -/
def P5617249909777148779.Spec : Prop :=
  ∀ n, (P5617249909777148779.a n : ℤ) = A081335 n

end A081335

/-! ## A081335.P14979055990579466216

`ceil(2^(n-1))*ceil(3^n+abs(sin(n)))`
-/

namespace A081335.P14979055990579466216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉ * ⌈(3 ^ n : ℝ) + |Real.sin (n : ℝ)|⌉

end

end A081335.P14979055990579466216

namespace A081335

/-- `ceil(2^(n-1))*ceil(3^n+abs(sin(n)))` -/
def P14979055990579466216.Spec : Prop :=
  ∀ n, P14979055990579466216.a n = A081335 n

end A081335

/-! ## A081335.P11401208183369078793

`ceil(2^(n-1))*ceil(3^n+sin(n)²)`
-/

namespace A081335.P11401208183369078793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉ * ⌈(3 ^ n : ℝ) + Real.sin (n : ℝ) ^ 2⌉

end

end A081335.P11401208183369078793

namespace A081335

/-- `ceil(2^(n-1))*ceil(3^n+sin(n)²)` -/
def P11401208183369078793.Spec : Prop :=
  ∀ n, P11401208183369078793.a n = A081335 n

end A081335

/-! ## A081335.P16387940029037564359

`(∑[floor(3^(n-1))]+(1-char[1])!)*2^n`
-/

namespace A081335.P16387940029037564359
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(3 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌋

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j + (Nat.factorial (1 - ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ)).toNat : ℤ)) * (2 ^ n : ℤ)

end

end A081335.P16387940029037564359

namespace A081335

/-- `(∑[floor(3^(n-1))]+(1-char[1])!)*2^n` -/
def P16387940029037564359.Spec : Prop :=
  ∀ n, P16387940029037564359.a n = A081335 n

end A081335

/-! ## A081335.P17561297805852939714

`record[(floor(3^(n-1))+1)*abs(ceil((-2)^(n-2)))]`
-/

namespace A081335.P17561297805852939714
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (⌊(3 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌋ + 1) * |⌈(-2 : ℚ) ^ ((n : ℤ) - 2 : ℤ)⌉|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A081335.P17561297805852939714

namespace A081335

/-- `record[(floor(3^(n-1))+1)*abs(ceil((-2)^(n-2)))]` -/
def P17561297805852939714.Spec : Prop :=
  ∀ n, P17561297805852939714.a n = A081335 n

end A081335

/-! ## A081335.P2565582840269558832

`ceil(A155589(n)/2)`
-/

namespace A081335.P2565582840269558832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A155589 n : ℚ) / 2⌉

end

end A081335.P2565582840269558832

namespace A081335

/-- `ceil(A155589(n)/2)` -/
def P2565582840269558832.Spec : Prop :=
  ∀ n, P2565582840269558832.a n = A081335 n

end A081335

/-! ## A081335.P6855374709376657651

`1/2*A074601(n)`
-/

namespace A081335.P6855374709376657651
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 : ℚ) / 2 * (A074601 n : ℚ)

end

end A081335.P6855374709376657651

namespace A081335

/-- `1/2*A074601(n)` -/
def P6855374709376657651.Spec : Prop :=
  ∀ n, P6855374709376657651.a n = (A081335 n : ℚ)

theorem P6855374709376657651.correct : P6855374709376657651.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A081335, Nat.add_sub_cancel, A081335.P6855374709376657651.a, A081335.P912104034244107122.a, A074601, A074601.P15053699154710411113.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
      try ((try field_simp); ring_nf)
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A081335, Nat.add_sub_cancel, A081335.P6855374709376657651.a, A081335.P912104034244107122.a, A074601, A074601.P15053699154710411113.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [← h1, ← h2]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith | ((try field_simp); ring_nf)

end A081335

/-! ## A081335.P5031316944933183314

`2^n*A007051(n)`
-/

namespace A081335.P5031316944933183314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * A007051 n

end

end A081335.P5031316944933183314

namespace A081335

/-- `2^n*A007051(n)` -/
def P5031316944933183314.Spec : Prop :=
  ∀ n, P5031316944933183314.a n = A081335 n

end A081335

/-! ## A081335.P15645312118335079962

`Δ[∑[A092807(n)]/2]`
-/

namespace A081335.P15645312118335079962
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092807 n

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℤ) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A081335.P15645312118335079962

namespace A081335

/-- `Δ[∑[A092807(n)]/2]` -/
def P15645312118335079962.Spec : Prop :=
  ∀ n, P15645312118335079962.a n = (A081335 n : ℚ)

end A081335

/-! ## A081335.P9585032059890169016

`abs(2^n*A341463(n))`
-/

namespace A081335.P9585032059890169016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(2 ^ n : ℤ) * A341463 n|

end

end A081335.P9585032059890169016

namespace A081335

/-- `abs(2^n*A341463(n))` -/
def P9585032059890169016.Spec : Prop :=
  ∀ n, P9585032059890169016.a n = A081335 n

end A081335

/-! ## A081335.P791407570603001668

`2^n*A124302(n+1)`
-/

namespace A081335.P791407570603001668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * A124302 (n + 1)

end

end A081335.P791407570603001668

namespace A081335

/-- `2^n*A124302(n+1)` -/
def P791407570603001668.Spec : Prop :=
  ∀ n, P791407570603001668.a n = A081335 n

end A081335

/-! ## A081335.P1457282564006975256

`2^(n-1)*A034472(n)`
-/

namespace A081335.P1457282564006975256
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ ((n : ℤ) - 1 : ℤ) * (A034472 n : ℚ)

end

end A081335.P1457282564006975256

namespace A081335

/-- `2^(n-1)*A034472(n)` -/
def P1457282564006975256.Spec : Prop :=
  ∀ n, P1457282564006975256.a n = (A081335 n : ℚ)

end A081335

/-! ## A081335.P11853296326816824136

`2^(n-2)*A115099(n)`
-/

namespace A081335.P11853296326816824136
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ ((n : ℤ) - 2 : ℤ) * (A115099 n : ℚ)

end

end A081335.P11853296326816824136

namespace A081335

/-- `2^(n-2)*A115099(n)` -/
def P11853296326816824136.Spec : Prop :=
  ∀ n, P11853296326816824136.a n = (A081335 n : ℚ)

end A081335

/-! ## A081335.P16580046825390011250

`2^(n-1)*A094388(n+1)`
-/

namespace A081335.P16580046825390011250
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ ((n : ℤ) - 1 : ℤ) * (A094388 (n + 1) : ℚ)

end

end A081335.P16580046825390011250

namespace A081335

/-- `2^(n-1)*A094388(n+1)` -/
def P16580046825390011250.Spec : Prop :=
  ∀ n, P16580046825390011250.a n = (A081335 n : ℚ)

end A081335

/-! ## A081335.P3928006172008980246

`A167747(n)+2*a(n-1)` with `a(0)=1`
-/

namespace A081335.P3928006172008980246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A167747 n + 2 * a (n - 1)

end

end A081335.P3928006172008980246

namespace A081335

/-- `A167747(n)+2*a(n-1)` -/
def P3928006172008980246.Spec : Prop :=
  ∀ n, P3928006172008980246.a n = A081335 n

end A081335

/-!
# A081336: a(n) = (7^n + 3^n)/2.

The programs for A081336, the canonical program `A081336.P4785163197925752901` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A081336 has offset 0).

The definition of A081336 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(7^n+3^n)/2` (program `A081336.P13901501871941071515`, by `A081336.P13901501871941071515.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A081336.P13901501871941071515

`(7^n+3^n)/2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A081336.P13901501871941071515
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (7 ^ n + 3 ^ n : ℚ) / 2

end

end A081336.P13901501871941071515

namespace A081336

/-- `(7^n+3^n)/2` -/
def P13901501871941071515.Spec : Prop :=
  ∀ n, P13901501871941071515.a n = (A081336 n : ℚ)

theorem P13901501871941071515.correct : P13901501871941071515.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A081336, Nat.add_sub_cancel, A081336.P13901501871941071515.a, A081336.P4785163197925752901.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A081336, Nat.add_sub_cancel, A081336.P13901501871941071515.a, A081336.P4785163197925752901.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [← h1, ← h2]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A081336

/-! ## A081336.P4785163197925752901

`10*a(n-1)-21*a(n-2)` with `a(0)=1, a(1)=5`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A081336

/-- `10*a(n-1)-21*a(n-2)` -/
def P4785163197925752901.Spec : Prop :=
  ∀ n, P4785163197925752901.a n = A081336 n

theorem P4785163197925752901.correct : P4785163197925752901.Spec := by
  intro n
  simp only [A081336]

end A081336

/-! ## A081336.P10744138870804316067

`ogf((1-5x)/(1-10x+21x^2))`
-/

namespace A081336.P10744138870804316067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -5] [1, -10, 21] n

end

end A081336.P10744138870804316067

namespace A081336

/-- `ogf((1-5x)/(1-10x+21x^2))` -/
def P10744138870804316067.Spec : Prop :=
  ∀ n, P10744138870804316067.a n = A081336 n

end A081336

/-! ## A081336.P15922986071604823914

`ceil(A074608(n)/2)`
-/

namespace A081336.P15922986071604823914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A074608 n : ℚ) / 2⌉

end

end A081336.P15922986071604823914

namespace A081336

/-- `ceil(A074608(n)/2)` -/
def P15922986071604823914.Spec : Prop :=
  ∀ n, P15922986071604823914.a n = A081336 n

end A081336

/-! ## A081336.P4464564579710225577

`ceil(A155605(n)/2)`
-/

namespace A081336.P4464564579710225577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A155605 n : ℚ) / 2⌉

end

end A081336.P4464564579710225577

namespace A081336

/-- `ceil(A155605(n)/2)` -/
def P4464564579710225577.Spec : Prop :=
  ∀ n, P4464564579710225577.a n = A081336 n

end A081336

/-! ## A081336.P12549951491816195597

`2*A193661(n)-1`
-/

namespace A081336.P12549951491816195597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A193661 n - 1

end

end A081336.P12549951491816195597

namespace A081336

/-- `2*A193661(n)-1` -/
def P12549951491816195597.Spec : Prop :=
  ∀ n, P12549951491816195597.a n = A081336 n

end A081336

/-! ## A081336.P20156619822522585

`A034494(n)+A003462(n)`
-/

namespace A081336.P20156619822522585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034494 n + A003462 n

end

end A081336.P20156619822522585

namespace A081336

/-- `A034494(n)+A003462(n)` -/
def P20156619822522585.Spec : Prop :=
  ∀ n, P20156619822522585.a n = A081336 n

end A081336

/-! ## A081336.P6554810031184587918

`A120741(n)+A007051(n)`
-/

namespace A081336.P6554810031184587918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120741 n + A007051 n

end

end A081336.P6554810031184587918

namespace A081336

/-- `A120741(n)+A007051(n)` -/
def P6554810031184587918.Spec : Prop :=
  ∀ n, P6554810031184587918.a n = A081336 n

end A081336

/-! ## A081336.P8302423445653174040

`A120741(n)+Δ[A164039(n)]`
-/

namespace A081336.P8302423445653174040
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164039 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120741 n + (f1 (n + 1) - f1 n)

end

end A081336.P8302423445653174040

namespace A081336

/-- `A120741(n)+Δ[A164039(n)]` -/
def P8302423445653174040.Spec : Prop :=
  ∀ n, P8302423445653174040.a n = A081336 n

end A081336

/-! ## A081336.P12366445206696852342

`A007051(n)+A034494(n)-1`
-/

namespace A081336.P12366445206696852342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007051 n + (A034494 n - 1)

end

end A081336.P12366445206696852342

namespace A081336

/-- `A007051(n)+A034494(n)-1` -/
def P12366445206696852342.Spec : Prop :=
  ∀ n, P12366445206696852342.a n = A081336 n

end A081336

/-! ## A081336.P187943878378684183

`A000244(n)+A190541(n)/2`
-/

namespace A081336.P187943878378684183
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000244 n : ℚ) + (A190541 n : ℚ) / 2

end

end A081336.P187943878378684183

namespace A081336

/-- `A000244(n)+A190541(n)/2` -/
def P187943878378684183.Spec : Prop :=
  ∀ n, P187943878378684183.a n = (A081336 n : ℚ)

theorem P187943878378684183.correct : P187943878378684183.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A081336, Nat.add_sub_cancel, A081336.P187943878378684183.a, A081336.P4785163197925752901.a, A000244, A000244.P17162167222172810417.a, A190541, A190541.P13360383706899015187.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
      try ((try field_simp); ring_nf)
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A081336, Nat.add_sub_cancel, A081336.P187943878378684183.a, A081336.P4785163197925752901.a, A000244, A000244.P17162167222172810417.a, A190541, A190541.P13360383706899015187.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [← h1, ← h2]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith | ((try field_simp); ring_nf)

end A081336

/-! ## A081336.P7301129427763550110

`A000420(n)-A190541(n)/2`
-/

namespace A081336.P7301129427763550110
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000420 n : ℚ) - (A190541 n : ℚ) / 2

end

end A081336.P7301129427763550110

namespace A081336

/-- `A000420(n)-A190541(n)/2` -/
def P7301129427763550110.Spec : Prop :=
  ∀ n, P7301129427763550110.a n = (A081336 n : ℚ)

theorem P7301129427763550110.correct : P7301129427763550110.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A081336, Nat.add_sub_cancel, A081336.P7301129427763550110.a, A081336.P4785163197925752901.a, A000420, A000420.P3695589171832359676.a, A190541, A190541.P13360383706899015187.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
      try ((try field_simp); ring_nf)
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A081336, Nat.add_sub_cancel, A081336.P7301129427763550110.a, A081336.P4785163197925752901.a, A000420, A000420.P3695589171832359676.a, A190541, A190541.P13360383706899015187.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [← h1, ← h2]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith | ((try field_simp); ring_nf)

end A081336

/-! ## A081336.P15971831710863364058

`∑[(A055272(n)+A025192(n))/2]`
-/

namespace A081336.P15971831710863364058
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A055272 n + A025192 n : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A081336.P15971831710863364058

namespace A081336

/-- `∑[(A055272(n)+A025192(n))/2]` -/
def P15971831710863364058.Spec : Prop :=
  ∀ n, P15971831710863364058.a n = (A081336 n : ℚ)

end A081336

/-! ## A081336.P13202636023505221346

`Δ[(A023000(n)+A003462(n))/2]`
-/

namespace A081336.P13202636023505221346
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A023000 n + A003462 n : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A081336.P13202636023505221346

namespace A081336

/-- `Δ[(A023000(n)+A003462(n))/2]` -/
def P13202636023505221346.Spec : Prop :=
  ∀ n, P13202636023505221346.a n = (A081336 n : ℚ)

end A081336

/-! ## A081336.P12412428844819263066

`A000244(n)+Δ[A341590(n)/2]`
-/

namespace A081336.P12412428844819263066
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A341590 n : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000244 n : ℚ) + (f1 (n + 1) - f1 n)

end

end A081336.P12412428844819263066

namespace A081336

/-- `A000244(n)+Δ[A341590(n)/2]` -/
def P12412428844819263066.Spec : Prop :=
  ∀ n, P12412428844819263066.a n = (A081336 n : ℚ)

end A081336

/-! ## A081336.P16068333805641813088

`A034494(n)+record[A140313(n+1)]`
-/

namespace A081336.P16068333805641813088
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140313 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034494 n + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A081336.P16068333805641813088

namespace A081336

/-- `A034494(n)+record[A140313(n+1)]` -/
def P16068333805641813088.Spec : Prop :=
  ∀ n, P16068333805641813088.a n = A081336 n

end A081336

/-! ## A081336.P15609379534843775791

`(A024075(n)+A024023(n))/2+1`
-/

namespace A081336.P15609379534843775791
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A024075 n + A024023 n : ℚ) / 2 + 1

end

end A081336.P15609379534843775791

namespace A081336

/-- `(A024075(n)+A024023(n))/2+1` -/
def P15609379534843775791.Spec : Prop :=
  ∀ n, P15609379534843775791.a n = (A081336 n : ℚ)

theorem P15609379534843775791.correct : P15609379534843775791.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A081336, Nat.add_sub_cancel, A081336.P15609379534843775791.a, A081336.P4785163197925752901.a, A024023, A024023.P3457506902639293536.a, A024075, A024075.P909197775632093808.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
      try ((try field_simp); ring_nf)
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A081336, Nat.add_sub_cancel, A081336.P15609379534843775791.a, A081336.P4785163197925752901.a, A024023, A024023.P3457506902639293536.a, A024075, A024075.P909197775632093808.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [← h1, ← h2]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith | ((try field_simp); ring_nf)

end A081336

/-! ## A081336.P13660028345054088934

`A000420(n)+A000420(n)-A165147(n)`
-/

namespace A081336.P13660028345054088934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000420 n + (A000420 n - A165147 n)

end

end A081336.P13660028345054088934

namespace A081336

/-- `A000420(n)+A000420(n)-A165147(n)` -/
def P13660028345054088934.Spec : Prop :=
  ∀ n, P13660028345054088934.a n = A081336 n

end A081336

/-! ## A081336.P15266537442357454690

`2*A000420(n)-A165147(n)`
-/

namespace A081336.P15266537442357454690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000420 n - A165147 n

end

end A081336.P15266537442357454690

namespace A081336

/-- `2*A000420(n)-A165147(n)` -/
def P15266537442357454690.Spec : Prop :=
  ∀ n, P15266537442357454690.a n = A081336 n

end A081336

/-! ## A081336.P2588596324734845662

`A120741(n)+A025551(n)/A000244(n)`
-/

namespace A081336.P2588596324734845662
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A120741 n : ℚ) + (A025551 n : ℚ) / (A000244 n : ℚ)

end

end A081336.P2588596324734845662

namespace A081336

/-- `A120741(n)+A025551(n)/A000244(n)` -/
def P2588596324734845662.Spec : Prop :=
  ∀ n, P2588596324734845662.a n = (A081336 n : ℚ)

end A081336

/-!
# A081337: a(n) = (8^n + 4^n)/2.

The programs for A081337, the canonical program `A081337.P10664475885898837252` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A081337 has offset 0).

The definition of A081337 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(8^n+4^n)/2` (program `A081337.P10361331285330946587`, by `A081337.P10361331285330946587.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A081337.P10361331285330946587

`(8^n+4^n)/2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A081337.P10361331285330946587
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (8 ^ n + 4 ^ n : ℚ) / 2

end

end A081337.P10361331285330946587

namespace A081337

/-- `(8^n+4^n)/2` -/
def P10361331285330946587.Spec : Prop :=
  ∀ n, P10361331285330946587.a n = (A081337 n : ℚ)

theorem P10361331285330946587.correct : P10361331285330946587.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A081337, Nat.add_sub_cancel, A081337.P10361331285330946587.a, A081337.P10664475885898837252.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A081337, Nat.add_sub_cancel, A081337.P10361331285330946587.a, A081337.P10664475885898837252.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [← h1, ← h2]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A081337

/-! ## A081337.P10664475885898837252

`12*a(n-1)-32*a(n-2)` with `a(0)=1, a(1)=6`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A081337

/-- `12*a(n-1)-32*a(n-2)` -/
def P10664475885898837252.Spec : Prop :=
  ∀ n, P10664475885898837252.a n = A081337 n

theorem P10664475885898837252.correct : P10664475885898837252.Spec := by
  intro n
  simp only [A081337]

end A081337

/-! ## A081337.P4104959611439164178

`record[A098657(n)]`
-/

namespace A081337.P4104959611439164178
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A081337.P4104959611439164178

namespace A081337

/-- `record[A098657(n)]` -/
def P4104959611439164178.Spec : Prop :=
  ∀ n, P4104959611439164178.a n = A081337 n

end A081337

/-! ## A081337.P805722368447836137

`A098657(2*n)`
-/

namespace A081337.P805722368447836137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098657 (2 * n)

end

end A081337.P805722368447836137

namespace A081337

/-- `A098657(2*n)` -/
def P805722368447836137.Spec : Prop :=
  ∀ n, P805722368447836137.a n = A081337 n

end A081337

/-! ## A081337.P11429852258590222457

`2^n*A007582(n)`
-/

namespace A081337.P11429852258590222457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * A007582 n

end

end A081337.P11429852258590222457

namespace A081337

/-- `2^n*A007582(n)` -/
def P11429852258590222457.Spec : Prop :=
  ∀ n, P11429852258590222457.a n = A081337 n

end A081337

/-! ## A081337.P11579134077430765629

`record[lcm(2^n, A051437(n))]`
-/

namespace A081337.P11579134077430765629
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (2 ^ n : ℤ) (A051437 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A081337.P11579134077430765629

namespace A081337

/-- `record[lcm(2^n, A051437(n))]` -/
def P11579134077430765629.Spec : Prop :=
  ∀ n, (P11579134077430765629.a n : ℤ) = A081337 n

end A081337

/-! ## A081337.P4213191262973657727

`8*a(n-1)-A081294(n)` with `a(0)=1`
-/

namespace A081337.P4213191262973657727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  8 * a (n - 1) - A081294 n

end

end A081337.P4213191262973657727

namespace A081337

/-- `8*a(n-1)-A081294(n)` -/
def P4213191262973657727.Spec : Prop :=
  ∀ n, P4213191262973657727.a n = A081337 n

end A081337

/-! ## A081337.P11645793972131560830

`8*a(n-1)-A011782(2*n)` with `a(0)=1`
-/

namespace A081337.P11645793972131560830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  8 * a (n - 1) - A011782 (2 * n)

end

end A081337.P11645793972131560830

namespace A081337

/-- `8*a(n-1)-A011782(2*n)` -/
def P11645793972131560830.Spec : Prop :=
  ∀ n, P11645793972131560830.a n = A081337 n

end A081337

/-! ## A081337.P11843381106455905015

`A081294(n)*A083318(n)`
-/

namespace A081337.P11843381106455905015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081294 n * A083318 n

end

end A081337.P11843381106455905015

namespace A081337

/-- `A081294(n)*A083318(n)` -/
def P11843381106455905015.Spec : Prop :=
  ∀ n, P11843381106455905015.a n = A081337 n

end A081337

/-! ## A081337.P10739985246590402980

`lcm(A007582(n), A009117(n))`
-/

namespace A081337.P10739985246590402980
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A007582 n) (A009117 n)

end

end A081337.P10739985246590402980

namespace A081337

/-- `lcm(A007582(n), A009117(n))` -/
def P10739985246590402980.Spec : Prop :=
  ∀ n, (P10739985246590402980.a n : ℤ) = A081337 n

end A081337

/-! ## A081337.P13482573267390136715

`lcm(A081294(n), A134351(n))`
-/

namespace A081337.P13482573267390136715
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A081294 n) (A134351 n)

end

end A081337.P13482573267390136715

namespace A081337

/-- `lcm(A081294(n), A134351(n))` -/
def P13482573267390136715.Spec : Prop :=
  ∀ n, (P13482573267390136715.a n : ℤ) = A081337 n

end A081337

/-! ## A081337.P7245070161464165165

`A007582(n)*A011782(n+1)`
-/

namespace A081337.P7245070161464165165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007582 n * A011782 (n + 1)

end

end A081337.P7245070161464165165

namespace A081337

/-- `A007582(n)*A011782(n+1)` -/
def P7245070161464165165.Spec : Prop :=
  ∀ n, P7245070161464165165.a n = A081337 n

end A081337

/-! ## A081337.P15480865482726787163

`A007582(n)*A131577(n+1)`
-/

namespace A081337.P15480865482726787163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007582 n * A131577 (n + 1)

end

end A081337.P15480865482726787163

namespace A081337

/-- `A007582(n)*A131577(n+1)` -/
def P15480865482726787163.Spec : Prop :=
  ∀ n, P15480865482726787163.a n = A081337 n

end A081337

/-! ## A081337.P18305187585335785877

`A007582(n)*A016116(2*n)`
-/

namespace A081337.P18305187585335785877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007582 n * A016116 (2 * n)

end

end A081337.P18305187585335785877

namespace A081337

/-- `A007582(n)*A016116(2*n)` -/
def P18305187585335785877.Spec : Prop :=
  ∀ n, P18305187585335785877.a n = A081337 n

end A081337

/-! ## A081337.P6105790930364817289

`A007582(n)*A077957(2*n)`
-/

namespace A081337.P6105790930364817289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007582 n * A077957 (2 * n)

end

end A081337.P6105790930364817289

namespace A081337

/-- `A007582(n)*A077957(2*n)` -/
def P6105790930364817289.Spec : Prop :=
  ∀ n, P6105790930364817289.a n = A081337 n

end A081337

/-! ## A081337.P15748035594566267462

`A011782(2*n)*A083318(n)`
-/

namespace A081337.P15748035594566267462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 (2 * n) * A083318 n

end

end A081337.P15748035594566267462

namespace A081337

/-- `A011782(2*n)*A083318(n)` -/
def P15748035594566267462.Spec : Prop :=
  ∀ n, P15748035594566267462.a n = A081337 n

end A081337

/-! ## A081337.P11624789422027235686

`or(A081294(n), A131577(3*n))`
-/

namespace A081337.P11624789422027235686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A081294 n) (A131577 (3 * n))

end

end A081337.P11624789422027235686

namespace A081337

/-- `or(A081294(n), A131577(3*n))` -/
def P11624789422027235686.Spec : Prop :=
  ∀ n, P11624789422027235686.a n = A081337 n

end A081337

/-! ## A081337.P17642543950494532296

`A000079(n)*A005418(2*n+1)`
-/

namespace A081337.P17642543950494532296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n * A005418 (2 * n + 1)

end

end A081337.P17642543950494532296

namespace A081337

/-- `A000079(n)*A005418(2*n+1)` -/
def P17642543950494532296.Spec : Prop :=
  ∀ n, P17642543950494532296.a n = A081337 n

end A081337

/-! ## A081337.P2820133783770181215

`A000079(n)*A137173(2*n+1)`
-/

namespace A081337.P2820133783770181215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n * A137173 (2 * n + 1)

end

end A081337.P2820133783770181215

namespace A081337

/-- `A000079(n)*A137173(2*n+1)` -/
def P2820133783770181215.Spec : Prop :=
  ∀ n, P2820133783770181215.a n = A081337 n

end A081337

/-! ## A081337.P16128154192815063395

`A011782(2*n)*A127904(n+1)`
-/

namespace A081337.P16128154192815063395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 (2 * n) * A127904 (n + 1)

end

end A081337.P16128154192815063395

namespace A081337

/-- `A011782(2*n)*A127904(n+1)` -/
def P16128154192815063395.Spec : Prop :=
  ∀ n, P16128154192815063395.a n = A081337 n

end A081337

/-!
# A081338: a(n) = (9^n + 5^n)/2.

The programs for A081338, the canonical program `A081338.P5479926764631497293` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A081338 has offset 0).

The definition of A081338 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(9^n+5^n)/2` (program `A081338.P763418463894251423`, by `A081338.P763418463894251423.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A081338.P763418463894251423

`(9^n+5^n)/2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A081338.P763418463894251423
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (9 ^ n + 5 ^ n : ℚ) / 2

end

end A081338.P763418463894251423

namespace A081338

/-- `(9^n+5^n)/2` -/
def P763418463894251423.Spec : Prop :=
  ∀ n, P763418463894251423.a n = (A081338 n : ℚ)

theorem P763418463894251423.correct : P763418463894251423.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A081338, Nat.add_sub_cancel, A081338.P763418463894251423.a, A081338.P5479926764631497293.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A081338, Nat.add_sub_cancel, A081338.P763418463894251423.a, A081338.P5479926764631497293.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [← h1, ← h2]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A081338

/-! ## A081338.P5479926764631497293

`14*a(n-1)-45*a(n-2)` with `a(0)=1, a(1)=7`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A081338

/-- `14*a(n-1)-45*a(n-2)` -/
def P5479926764631497293.Spec : Prop :=
  ∀ n, P5479926764631497293.a n = A081338 n

theorem P5479926764631497293.correct : P5479926764631497293.Spec := by
  intro n
  simp only [A081338]

end A081338

/-! ## A081338.P7624573273502010965

`A081202(n)+A081188(n)`
-/

namespace A081338.P7624573273502010965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081202 n + A081188 n

end

end A081338.P7624573273502010965

namespace A081338

/-- `A081202(n)+A081188(n)` -/
def P7624573273502010965.Spec : Prop :=
  ∀ n, P7624573273502010965.a n = A081338 n

end A081338

/-! ## A081338.P17587702501880296967

`A191681(n)+A034478(n)`
-/

namespace A081338.P17587702501880296967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191681 n + A034478 n

end

end A081338.P17587702501880296967

namespace A081338

/-- `A191681(n)+A034478(n)` -/
def P17587702501880296967.Spec : Prop :=
  ∀ n, P17587702501880296967.a n = A081338 n

end A081338

/-! ## A081338.P2586271134829575120

`A081190(n)-A081200(n)`
-/

namespace A081338.P2586271134829575120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081190 n - A081200 n

end

end A081338.P2586271134829575120

namespace A081338

/-- `A081190(n)-A081200(n)` -/
def P2586271134829575120.Spec : Prop :=
  ∀ n, P2586271134829575120.a n = A081338 n

end A081338

/-! ## A081338.P15105283626061977676

`A034478(n)+record[A076040(n)]`
-/

namespace A081338.P15105283626061977676
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076040 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034478 n + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A081338.P15105283626061977676

namespace A081338

/-- `A034478(n)+record[A076040(n)]` -/
def P15105283626061977676.Spec : Prop :=
  ∀ n, P15105283626061977676.a n = A081338 n

end A081338

/-! ## A081338.P10239298016091357513

`A034478(n)+A003462(2*n)`
-/

namespace A081338.P10239298016091357513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034478 n + A003462 (2 * n)

end

end A081338.P10239298016091357513

namespace A081338

/-- `A034478(n)+A003462(2*n)` -/
def P10239298016091357513.Spec : Prop :=
  ∀ n, P10239298016091357513.a n = A081338 n

end A081338

/-! ## A081338.P17356916370938804305

`A076040(2*n)+A034478(n)`
-/

namespace A081338.P17356916370938804305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076040 (2 * n) + A034478 n

end

end A081338.P17356916370938804305

namespace A081338

/-- `A076040(2*n)+A034478(n)` -/
def P17356916370938804305.Spec : Prop :=
  ∀ n, P17356916370938804305.a n = A081338 n

end A081338

/-! ## A081338.P9128615990736659458

`record[A294566(n+1)+A076040(n)]`
-/

namespace A081338.P9128615990736659458
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294566 (n + 1) + A076040 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A081338.P9128615990736659458

namespace A081338

/-- `record[A294566(n+1)+A076040(n)]` -/
def P9128615990736659458.Spec : Prop :=
  ∀ n, P9128615990736659458.a n = A081338 n

end A081338

/-! ## A081338.P4093996607903981405

`A294566(2*n+1)+A003462(2*n)`
-/

namespace A081338.P4093996607903981405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294566 (2 * n + 1) + A003462 (2 * n)

end

end A081338.P4093996607903981405

namespace A081338

/-- `A294566(2*n+1)+A003462(2*n)` -/
def P4093996607903981405.Spec : Prop :=
  ∀ n, P4093996607903981405.a n = A081338 n

end A081338

/-! ## A081338.P12388454848183686099

`A294566(2*n+1)+A076040(2*n)`
-/

namespace A081338.P12388454848183686099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294566 (2 * n + 1) + A076040 (2 * n)

end

end A081338.P12388454848183686099

namespace A081338

/-- `A294566(2*n+1)+A076040(2*n)` -/
def P12388454848183686099.Spec : Prop :=
  ∀ n, P12388454848183686099.a n = A081338 n

end A081338

/-! ## A081338.P6546546603792023100

`A294566(2*n+1)+A007051(2*n)-1`
-/

namespace A081338.P6546546603792023100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294566 (2 * n + 1) + (A007051 (2 * n) - 1)

end

end A081338.P6546546603792023100

namespace A081338

/-- `A294566(2*n+1)+A007051(2*n)-1` -/
def P6546546603792023100.Spec : Prop :=
  ∀ n, P6546546603792023100.a n = A081338 n

end A081338

/-! ## A081338.P1694273185582567898

`floor(A074519(n)/2)`
-/

namespace A081338.P1694273185582567898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A074519 n : ℚ) / 2⌋

end

end A081338.P1694273185582567898

namespace A081338

/-- `floor(A074519(n)/2)` -/
def P1694273185582567898.Spec : Prop :=
  ∀ n, P1694273185582567898.a n = A081338 n

end A081338

/-! ## A081338.P455407131629621006

`ceil(A155636(n)/2)`
-/

namespace A081338.P455407131629621006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A155636 n : ℚ) / 2⌉

end

end A081338.P455407131629621006

namespace A081338

/-- `ceil(A155636(n)/2)` -/
def P455407131629621006.Spec : Prop :=
  ∀ n, P455407131629621006.a n = A081338 n

end A081338

/-! ## A081338.P5918445612727068911

`∑[(A055275(n)+A005054(n))/2]`
-/

namespace A081338.P5918445612727068911
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A055275 n + A005054 n : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A081338.P5918445612727068911

namespace A081338

/-- `∑[(A055275(n)+A005054(n))/2]` -/
def P5918445612727068911.Spec : Prop :=
  ∀ n, P5918445612727068911.a n = (A081338 n : ℚ)

end A081338

/-! ## A081338.P8495510938390408529

`Δ[(A003463(n)+A002452(n))/2]`
-/

namespace A081338.P8495510938390408529
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003463 n + A002452 n : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A081338.P8495510938390408529

namespace A081338

/-- `Δ[(A003463(n)+A002452(n))/2]` -/
def P8495510938390408529.Spec : Prop :=
  ∀ n, P8495510938390408529.a n = (A081338 n : ℚ)

end A081338

/-! ## A081338.P1196837364058899997

`A000079(n)/A000079(n+1)*A074618(n)`
-/

namespace A081338.P1196837364058899997
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000079 n : ℚ) / (A000079 (n + 1) : ℚ) * (A074618 n : ℚ)

end

end A081338.P1196837364058899997

namespace A081338

/-- `A000079(n)/A000079(n+1)*A074618(n)` -/
def P1196837364058899997.Spec : Prop :=
  ∀ n, P1196837364058899997.a n = (A081338 n : ℚ)

theorem P1196837364058899997.correct : P1196837364058899997.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A081338, Nat.add_sub_cancel, A081338.P1196837364058899997.a, A081338.P5479926764631497293.a, A000079, A000079.P10855139691139572931.a, A074618, A074618.P15232598785644778021.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
      try ((try field_simp); ring_nf)
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A081338, Nat.add_sub_cancel, A081338.P1196837364058899997.a, A081338.P5479926764631497293.a, A000079, A000079.P10855139691139572931.a, A074618, A074618.P15232598785644778021.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [← h1, ← h2]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith | ((try field_simp); ring_nf)

end A081338

/-! ## A081338.P12115112075773372589

`A191681(n)+record[A191705(n+1)]`
-/

namespace A081338.P12115112075773372589
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191705 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191681 n + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A081338.P12115112075773372589

namespace A081338

/-- `A191681(n)+record[A191705(n+1)]` -/
def P12115112075773372589.Spec : Prop :=
  ∀ n, P12115112075773372589.a n = A081338 n

end A081338

/-!
# A081339: Numbers n such that sigma(n^2) modulo 4 = 1.

The programs for A081339, the canonical program `A081339.P14697236628931349501` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A081339 has offset 1).

The definition of A081339 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4935 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A081339.P14697236628931349501

`eq[1, A065764(n+1)%4]+1`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A081339

/-- `eq[1, A065764(n+1)%4]+1` -/
def P14697236628931349501.Spec : Prop :=
  ∀ n, (P14697236628931349501.a n : ℤ) = A081339 (n + 1)

theorem P14697236628931349501.correct : P14697236628931349501.Spec := by
  intro n
  simp only [A081339, Nat.add_sub_cancel]

end A081339

/-! ## A081339.P3481417550654167351

`record[(n+1)/A001511(A083025(n+1)+n+1)]`
-/

namespace A081339.P3481417550654167351
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A001511 (A083025 (n + 1) + (n + 1 : ℤ)).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A081339.P3481417550654167351

namespace A081339

/-- `record[(n+1)/A001511(A083025(n+1)+n+1)]` -/
def P3481417550654167351.Spec : Prop :=
  ∀ n, P3481417550654167351.a n = (A081339 (n + 1) : ℚ)

end A081339

/-! ## A081339.P9960440061111258333

`eq[A010170(n), A010170(A063014(n))]`
-/

namespace A081339.P9960440061111258333
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010170 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010170 (A063014 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A081339.P9960440061111258333

namespace A081339

/-- `eq[A010170(n), A010170(A063014(n))]` -/
def P9960440061111258333.Spec : Prop :=
  ∀ n, (P9960440061111258333.a n : ℤ) = A081339 (n + 1)

end A081339

/-! ## A081339.P11945593731816427135

`eq[A040048(n), A040048(A063014(n))]`
-/

namespace A081339.P11945593731816427135
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040048 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040048 (A063014 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A081339.P11945593731816427135

namespace A081339

/-- `eq[A040048(n), A040048(A063014(n))]` -/
def P11945593731816427135.Spec : Prop :=
  ∀ n, (P11945593731816427135.a n : ℤ) = A081339 (n + 1)

end A081339

/-! ## A081339.P17107503659005414984

`eq[A040080(n), A040080(A063014(n))]`
-/

namespace A081339.P17107503659005414984
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040080 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040080 (A063014 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A081339.P17107503659005414984

namespace A081339

/-- `eq[A040080(n), A040080(A063014(n))]` -/
def P17107503659005414984.Spec : Prop :=
  ∀ n, (P17107503659005414984.a n : ℤ) = A081339 (n + 1)

end A081339

/-! ## A081339.P9368119110602583164

`eq[A040120(n), A040120(A063014(n))]`
-/

namespace A081339.P9368119110602583164
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040120 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040120 (A063014 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A081339.P9368119110602583164

namespace A081339

/-- `eq[A040120(n), A040120(A063014(n))]` -/
def P9368119110602583164.Spec : Prop :=
  ∀ n, (P9368119110602583164.a n : ℤ) = A081339 (n + 1)

end A081339

/-! ## A081339.P3940085925780051240

`eq[A040168(n), A040168(A063014(n))]`
-/

namespace A081339.P3940085925780051240
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040168 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040168 (A063014 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A081339.P3940085925780051240

namespace A081339

/-- `eq[A040168(n), A040168(A063014(n))]` -/
def P3940085925780051240.Spec : Prop :=
  ∀ n, (P3940085925780051240.a n : ℤ) = A081339 (n + 1)

end A081339

/-! ## A081339.P9272671964544914571

`eq[A038189(A046109(n)), A059841(n)]`
-/

namespace A081339.P9272671964544914571
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038189 (A046109 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059841 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A081339.P9272671964544914571

namespace A081339

/-- `eq[A038189(A046109(n)), A059841(n)]` -/
def P9272671964544914571.Spec : Prop :=
  ∀ n, (P9272671964544914571.a n : ℤ) = A081339 (n + 1)

end A081339

/-! ## A081339.P375512075730326627

`record[A009531(2*n+1)*A209662(n+1)]`
-/

namespace A081339.P375512075730326627
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009531 (2 * n + 1) * A209662 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A081339.P375512075730326627

namespace A081339

/-- `record[A009531(2*n+1)*A209662(n+1)]` -/
def P375512075730326627.Spec : Prop :=
  ∀ n, P375512075730326627.a n = A081339 (n + 1)

end A081339

/-! ## A081339.P5222936549254873814

`eq[A009531(2*n+1), A209661(n+1)]+1`
-/

namespace A081339.P5222936549254873814
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009531 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209661 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A081339.P5222936549254873814

namespace A081339

/-- `eq[A009531(2*n+1), A209661(n+1)]+1` -/
def P5222936549254873814.Spec : Prop :=
  ∀ n, (P5222936549254873814.a n : ℤ) = A081339 (n + 1)

end A081339

/-! ## A081339.P86446579848639619

`A135020(eq[A009531(n), A209661(n+1)])`
-/

namespace A081339.P86446579848639619
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009531 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209661 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135020 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A081339.P86446579848639619

namespace A081339

/-- `A135020(eq[A009531(n), A209661(n+1)])` -/
def P86446579848639619.Spec : Prop :=
  ∀ n, P86446579848639619.a n = A081339 (n + 1)

end A081339

/-! ## A081339.P12468562967428796793

`lt[2, (∑{d}[n², #]+2)%4]`
-/

namespace A081339.P12468562967428796793
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ d ∈ Nat.divisors (f3 n), d + 2) % 4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A081339.P12468562967428796793

namespace A081339

/-- `lt[2, (∑{d}[n², #]+2)%4]` -/
def P12468562967428796793.Spec : Prop :=
  ∀ n, (P12468562967428796793.a n : ℤ) = A081339 (n + 1)

end A081339

/-! ## A081339.P6966311398629549725

`eq[1, A000203((n+1)²)%4]+1`
-/

namespace A081339.P6966311398629549725
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000203 ((n + 1) ^ 2)) 4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A081339.P6966311398629549725

namespace A081339

/-- `eq[1, A000203((n+1)²)%4]+1` -/
def P6966311398629549725.Spec : Prop :=
  ∀ n, (P6966311398629549725.a n : ℤ) = A081339 (n + 1)

end A081339

/-! ## A081339.P9519666687496109516

`eq[1, A337195((n+1)²)]+1`
-/

namespace A081339.P9519666687496109516
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337195 ((n + 1) ^ 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A081339.P9519666687496109516

namespace A081339

/-- `eq[1, A337195((n+1)²)]+1` -/
def P9519666687496109516.Spec : Prop :=
  ∀ n, (P9519666687496109516.a n : ℤ) = A081339 (n + 1)

end A081339

/-! ## A081339.P3526332429793864540

`lt[and(2, A058344((n+1)²)), 1]+1`
-/

namespace A081339.P3526332429793864540
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 2 (A058344 ((n + 1) ^ 2))

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A081339.P3526332429793864540

namespace A081339

/-- `lt[and(2, A058344((n+1)²)), 1]+1` -/
def P3526332429793864540.Spec : Prop :=
  ∀ n, (P3526332429793864540.a n : ℤ) = A081339 (n + 1)

end A081339

/-!
# A081340: a(n) = (5^n+(-1)^n)/2.

The programs for A081340, the canonical program `A081340.P3145252389666776044` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A081340 has offset 0).

The definition of A081340 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(5^n+(-1)^n)/2` (program `A081340.P7173295450763150476`, by `A081340.P7173295450763150476.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A081340.P7173295450763150476

`(5^n+(-1)^n)/2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A081340.P7173295450763150476
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((5 ^ n : ℤ) + (-1) ^ n : ℚ) / 2

end

end A081340.P7173295450763150476

namespace A081340

/-- `(5^n+(-1)^n)/2` -/
def P7173295450763150476.Spec : Prop :=
  ∀ n, P7173295450763150476.a n = (A081340 n : ℚ)

theorem P7173295450763150476.correct : P7173295450763150476.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A081340, Nat.add_sub_cancel, A081340.P7173295450763150476.a, A081340.P3145252389666776044.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A081340, Nat.add_sub_cancel, A081340.P7173295450763150476.a, A081340.P3145252389666776044.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [← h1, ← h2]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A081340

/-! ## A081340.P3145252389666776044

`4*a(n-1)+5*a(n-2)` with `a(0)=1, a(1)=2`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A081340

/-- `4*a(n-1)+5*a(n-2)` -/
def P3145252389666776044.Spec : Prop :=
  ∀ n, (P3145252389666776044.a n : ℤ) = A081340 n

theorem P3145252389666776044.correct : P3145252389666776044.Spec := by
  intro n
  simp only [A081340]

end A081340

/-! ## A081340.P14999093320040423919

`ogf((-1+2x)/(-1+4x+5x^2))`
-/

namespace A081340.P14999093320040423919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -2] [1, -4, -5] n

end

end A081340.P14999093320040423919

namespace A081340

/-- `ogf((-1+2x)/(-1+4x+5x^2))` -/
def P14999093320040423919.Spec : Prop :=
  ∀ n, P14999093320040423919.a n = A081340 n

end A081340

/-! ## A081340.P5524304487980999074

`ceil(5^n/2)-n%2`
-/

namespace A081340.P5524304487980999074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(5 ^ n : ℚ) / 2⌉ - ((n % 2 : ℕ) : ℤ)

end

end A081340.P5524304487980999074

namespace A081340

/-- `ceil(5^n/2)-n%2` -/
def P5524304487980999074.Spec : Prop :=
  ∀ n, P5524304487980999074.a n = A081340 n

end A081340

/-! ## A081340.P1054130725398511000

`round((5^n-and(1, n))/2)`
-/

namespace A081340.P1054130725398511000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (((5 ^ n : ℤ) - (Nat.land 1 n : ℤ) : ℚ) / 2)

end

end A081340.P1054130725398511000

namespace A081340

/-- `round((5^n-and(1, n))/2)` -/
def P1054130725398511000.Spec : Prop :=
  ∀ n, P1054130725398511000.a n = A081340 n

end A081340

/-! ## A081340.P1021604078075142848

`xor(2, 5*xor(1, a(n-1)))` with `a(0)=1`
-/

namespace A081340.P1021604078075142848
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Nat.xor 2 (5 * Nat.xor 1 (a (n - 1)))

end

end A081340.P1021604078075142848

namespace A081340

/-- `xor(2, 5*xor(1, a(n-1)))` -/
def P1021604078075142848.Spec : Prop :=
  ∀ n, (P1021604078075142848.a n : ℤ) = A081340 n

end A081340

/-! ## A081340.P14125360447827586687

`xor(2, lcm(5, xor(1, a(n-1))))` with `a(0)=1`
-/

namespace A081340.P14125360447827586687
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Nat.xor 2 (Nat.lcm 5 (Nat.xor 1 (a (n - 1))))

end

end A081340.P14125360447827586687

namespace A081340

/-- `xor(2, lcm(5, xor(1, a(n-1))))` -/
def P14125360447827586687.Spec : Prop :=
  ∀ n, (P14125360447827586687.a n : ℤ) = A081340 n

end A081340

/-! ## A081340.P16287651448899255018

`ceil(5^n/2)-char[or(1, n)]`
-/

namespace A081340.P16287651448899255018
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(5 ^ n : ℚ) / 2⌉ - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A081340.P16287651448899255018

namespace A081340

/-- `ceil(5^n/2)-char[or(1, n)]` -/
def P16287651448899255018.Spec : Prop :=
  ∀ n, P16287651448899255018.a n = A081340 n

end A081340

/-! ## A081340.P14417415351288322529

`3*5^(n-1)-a(n-1)` with `a(0)=1`
-/

namespace A081340.P14417415351288322529
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  3 * (5 : ℚ) ^ ((n : ℤ) - 1 : ℤ) - a (n - 1)

end

end A081340.P14417415351288322529

namespace A081340

/-- `3*5^(n-1)-a(n-1)` -/
def P14417415351288322529.Spec : Prop :=
  ∀ n, P14417415351288322529.a n = (A081340 n : ℚ)

end A081340

/-! ## A081340.P9944861673977915309

`∑[A087405(n)/2]`
-/

namespace A081340.P9944861673977915309
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A087405 n : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A081340.P9944861673977915309

namespace A081340

/-- `∑[A087405(n)/2]` -/
def P9944861673977915309.Spec : Prop :=
  ∀ n, P9944861673977915309.a n = (A081340 n : ℚ)

end A081340

/-! ## A081340.P5308509167953618659

`xor(1, A274072(n)/2)`
-/

namespace A081340.P5308509167953618659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (SequenceMachineLib.roundAway ((A274072 n : ℚ) / 2))

end

end A081340.P5308509167953618659

namespace A081340

/-- `xor(1, A274072(n)/2)` -/
def P5308509167953618659.Spec : Prop :=
  ∀ n, P5308509167953618659.a n = A081340 n

end A081340

/-! ## A081340.P17557073915495976906

`A034478(n)-and(1, n)`
-/

namespace A081340.P17557073915495976906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034478 n - (Nat.land 1 n : ℤ)

end

end A081340.P17557073915495976906

namespace A081340

/-- `A034478(n)-and(1, n)` -/
def P17557073915495976906.Spec : Prop :=
  ∀ n, P17557073915495976906.a n = A081340 n

end A081340

/-! ## A081340.P16140689427980809246

`xor(n%2, ∑[A020699(n)])`
-/

namespace A081340.P16140689427980809246
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020699 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor ((n % 2 : ℕ) : ℤ) (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A081340.P16140689427980809246

namespace A081340

/-- `xor(n%2, ∑[A020699(n)])` -/
def P16140689427980809246.Spec : Prop :=
  ∀ n, P16140689427980809246.a n = A081340 n

end A081340

/-! ## A081340.P10813732462484321882

`A121177(n+1)+and(1, n+1)`
-/

namespace A081340.P10813732462484321882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121177 (n + 1) + (Nat.land 1 (n + 1) : ℤ)

end

end A081340.P10813732462484321882

namespace A081340

/-- `A121177(n+1)+and(1, n+1)` -/
def P10813732462484321882.Spec : Prop :=
  ∀ n, P10813732462484321882.a n = A081340 n

end A081340

/-! ## A081340.P1631462096743383766

`A034478(n)-A000035(n)`
-/

namespace A081340.P1631462096743383766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034478 n - A000035 n

end

end A081340.P1631462096743383766

namespace A081340

/-- `A034478(n)-A000035(n)` -/
def P1631462096743383766.Spec : Prop :=
  ∀ n, P1631462096743383766.a n = A081340 n

end A081340

/-! ## A081340.P12111767540193183108

`Δ[A015531(n)]-A015531(n)`
-/

namespace A081340.P12111767540193183108
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015531 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A015531 n

end

end A081340.P12111767540193183108

namespace A081340

/-- `Δ[A015531(n)]-A015531(n)` -/
def P12111767540193183108.Spec : Prop :=
  ∀ n, P12111767540193183108.a n = A081340 n

end A081340

/-! ## A081340.P12552946393366914656

`A054884(n)+A030518(n+1)`
-/

namespace A081340.P12552946393366914656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054884 n + A030518 (n + 1)

end

end A081340.P12552946393366914656

namespace A081340

/-- `A054884(n)+A030518(n+1)` -/
def P12552946393366914656.Spec : Prop :=
  ∀ n, P12552946393366914656.a n = A081340 n

end A081340

/-! ## A081340.P8573534656972367690

`A054885(n)+A030517(n+1)`
-/

namespace A081340.P8573534656972367690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054885 n + A030517 (n + 1)

end

end A081340.P8573534656972367690

namespace A081340

/-- `A054885(n)+A030517(n+1)` -/
def P8573534656972367690.Spec : Prop :=
  ∀ n, P8573534656972367690.a n = A081340 n

end A081340

/-! ## A081340.P5079850840537134893

`A231103(n+1)+A109500(n)`
-/

namespace A081340.P5079850840537134893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231103 (n + 1) + A109500 n

end

end A081340.P5079850840537134893

namespace A081340

/-- `A231103(n+1)+A109500(n)` -/
def P5079850840537134893.Spec : Prop :=
  ∀ n, P5079850840537134893.a n = A081340 n

end A081340

/-! ## A081340.P13950541095250331311

`A015531(n+1)-2*A015531(n)`
-/

namespace A081340.P13950541095250331311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015531 (n + 1) - 2 * A015531 n

end

end A081340.P13950541095250331311

namespace A081340

/-- `A015531(n+1)-2*A015531(n)` -/
def P13950541095250331311.Spec : Prop :=
  ∀ n, P13950541095250331311.a n = A081340 n

end A081340

/-!
# A081341: Expansion of exp(3*x)*cosh(3*x).

The programs for A081341, the canonical program `A081341.P1992776411308600874` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A081341 has offset 0).

The definition of A081341 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A081341.P878713546836626246

`ceil(1/2*6^n)`
-/

namespace A081341.P878713546836626246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(1 : ℚ) / 2 * (6 ^ n : ℚ)⌉

end

end A081341.P878713546836626246

namespace A081341

/-- `ceil(1/2*6^n)` -/
def P878713546836626246.Spec : Prop :=
  ∀ n, P878713546836626246.a n = A081341 n

end A081341

/-! ## A081341.P1992776411308600874

`A000244(n)*A011782(n)`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A081341

/-- `A000244(n)*A011782(n)` -/
def P1992776411308600874.Spec : Prop :=
  ∀ n, P1992776411308600874.a n = A081341 n

theorem P1992776411308600874.correct : P1992776411308600874.Spec := by
  intro n
  simp only [A081341]

end A081341

/-! ## A081341.P721099401100700680

`((8*n-4)*a(n-1)-12*(n-2)*a(n-2))/n` with `a(0)=1, a(1)=3`
-/

namespace A081341.P721099401100700680
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 3] fun n a =>
  (((8 * n : ℤ) - 4 : ℚ) * a (n - 1) - (12 * ((n : ℤ) - 2) : ℚ) * a (n - 2)) / (n : ℚ)

end

end A081341.P721099401100700680

namespace A081341

/-- `((8*n-4)*a(n-1)-12*(n-2)*a(n-2))/n` -/
def P721099401100700680.Spec : Prop :=
  ∀ n, P721099401100700680.a n = (A081341 n : ℚ)

end A081341

/-! ## A081341.P9650168878910847445

`ogf((1-3x)/(1-6x))`
-/

namespace A081341.P9650168878910847445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -3] [1, -6] n

end

end A081341.P9650168878910847445

namespace A081341

/-- `ogf((1-3x)/(1-6x))` -/
def P9650168878910847445.Spec : Prop :=
  ∀ n, P9650168878910847445.a n = A081341 n

end A081341

/-! ## A081341.P2900634868085449084

`lcm(2, 6^n)/2`
-/

namespace A081341.P2900634868085449084
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.lcm 2 (6 ^ n) : ℚ) / 2

end

end A081341.P2900634868085449084

namespace A081341

/-- `lcm(2, 6^n)/2` -/
def P2900634868085449084.Spec : Prop :=
  ∀ n, P2900634868085449084.a n = (A081341 n : ℚ)

end A081341

/-! ## A081341.P7772528730888571387

`6*a(n-1)` with `a(0)=1, a(1)=3`
-/

namespace A081341.P7772528730888571387
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 3] fun n a =>
  6 * a (n - 1)

end

end A081341.P7772528730888571387

namespace A081341

/-- `6*a(n-1)` -/
def P7772528730888571387.Spec : Prop :=
  ∀ n, (P7772528730888571387.a n : ℤ) = A081341 n

end A081341

/-! ## A081341.P9524923979808088358

`6^n/gcd(2, 4^n)`
-/

namespace A081341.P9524923979808088358
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (6 ^ n : ℚ) / (Nat.gcd 2 (4 ^ n) : ℚ)

end

end A081341.P9524923979808088358

namespace A081341

/-- `6^n/gcd(2, 4^n)` -/
def P9524923979808088358.Spec : Prop :=
  ∀ n, P9524923979808088358.a n = (A081341 n : ℚ)

end A081341

/-! ## A081341.P16917584863630622489

`lcm(3^n, ceil(2^(n-1)))`
-/

namespace A081341.P16917584863630622489
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (3 ^ n : ℤ) ⌈(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉

end

end A081341.P16917584863630622489

namespace A081341

/-- `lcm(3^n, ceil(2^(n-1)))` -/
def P16917584863630622489.Spec : Prop :=
  ∀ n, (P16917584863630622489.a n : ℤ) = A081341 n

end A081341

/-! ## A081341.P16628322684827534549

`a(n-1)/(1-5/6)` with `a(0)=1, a(1)=3`
-/

namespace A081341.P16628322684827534549
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 3] fun n a =>
  a (n - 1) / (1 - (5 : ℚ) / 6)

end

end A081341.P16628322684827534549

namespace A081341

/-- `a(n-1)/(1-5/6)` -/
def P16628322684827534549.Spec : Prop :=
  ∀ n, P16628322684827534549.a n = (A081341 n : ℚ)

end A081341

/-! ## A081341.P8284872360384943456

`a(n-1)+lcm(5, a(n-1))` with `a(0)=1, a(1)=3`
-/

namespace A081341.P8284872360384943456
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 3] fun n a =>
  a (n - 1) + Nat.lcm 5 (a (n - 1))

end

end A081341.P8284872360384943456

namespace A081341

/-- `a(n-1)+lcm(5, a(n-1))` -/
def P8284872360384943456.Spec : Prop :=
  ∀ n, (P8284872360384943456.a n : ℤ) = A081341 n

end A081341

/-! ## A081341.P12892152342799217814

`floor(A062394(n)/2)`
-/

namespace A081341.P12892152342799217814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A062394 n : ℚ) / 2⌋

end

end A081341.P12892152342799217814

namespace A081341

/-- `floor(A062394(n)/2)` -/
def P12892152342799217814.Spec : Prop :=
  ∀ n, P12892152342799217814.a n = A081341 n

end A081341

/-! ## A081341.P17139809290319095550

`Δ[ceil(A003464(n)/2)]`
-/

namespace A081341.P17139809290319095550
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A003464 n : ℚ) / 2⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A081341.P17139809290319095550

namespace A081341

/-- `Δ[ceil(A003464(n)/2)]` -/
def P17139809290319095550.Spec : Prop :=
  ∀ n, P17139809290319095550.a n = A081341 n

end A081341

/-! ## A081341.P2434526680298352100

`floor(A024062(n)/2)+1`
-/

namespace A081341.P2434526680298352100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A024062 n : ℚ) / 2⌋ + 1

end

end A081341.P2434526680298352100

namespace A081341

/-- `floor(A024062(n)/2)+1` -/
def P2434526680298352100.Spec : Prop :=
  ∀ n, P2434526680298352100.a n = A081341 n

end A081341

/-! ## A081341.P11155552523221123559

`3^n*A166444(n+1)`
-/

namespace A081341.P11155552523221123559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 ^ n : ℤ) * A166444 (n + 1)

end

end A081341.P11155552523221123559

namespace A081341

/-- `3^n*A166444(n+1)` -/
def P11155552523221123559.Spec : Prop :=
  ∀ n, P11155552523221123559.a n = A081341 n

end A081341

/-! ## A081341.P17242322908112993124

`3*A040006(n)^(n-1)`
-/

namespace A081341.P17242322908112993124
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  3 * (A040006 n : ℚ) ^ ((n : ℤ) - 1 : ℤ)

end

end A081341.P17242322908112993124

namespace A081341

/-- `3*A040006(n)^(n-1)` -/
def P17242322908112993124.Spec : Prop :=
  ∀ n, P17242322908112993124.a n = (A081341 n : ℚ)

end A081341

/-! ## A081341.P2262293878440451142

`3*A267884(n+1)^(n-1)`
-/

namespace A081341.P2262293878440451142
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  3 * (A267884 (n + 1) : ℚ) ^ ((n : ℤ) - 1 : ℤ)

end

end A081341.P2262293878440451142

namespace A081341

/-- `3*A267884(n+1)^(n-1)` -/
def P2262293878440451142.Spec : Prop :=
  ∀ n, P2262293878440451142.a n = (A081341 n : ℚ)

end A081341

/-! ## A081341.P6050354872916641338

`A026532(A004277(n))`
-/

namespace A081341.P6050354872916641338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026532 (A004277 n).toNat

end

end A081341.P6050354872916641338

namespace A081341

/-- `A026532(A004277(n))` -/
def P6050354872916641338.Spec : Prop :=
  ∀ n, P6050354872916641338.a n = A081341 n

end A081341

/-! ## A081341.P10551232431004592333

`A026565(A004273(n))`
-/

namespace A081341.P10551232431004592333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026565 (A004273 n).toNat

end

end A081341.P10551232431004592333

namespace A081341

/-- `A026565(A004273(n))` -/
def P10551232431004592333.Spec : Prop :=
  ∀ n, P10551232431004592333.a n = A081341 n

end A081341

/-! ## A081341.P3261711915589616464

`A084391(A113127(n))`
-/

namespace A081341.P3261711915589616464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084391 (A113127 n).toNat

end

end A081341.P3261711915589616464

namespace A081341

/-- `A084391(A113127(n))` -/
def P3261711915589616464.Spec : Prop :=
  ∀ n, P3261711915589616464.a n = A081341 n

end A081341

/-! ## A081341.P8853230292615281933

`A026532(A004275(n+1))`
-/

namespace A081341.P8853230292615281933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026532 (A004275 (n + 1)).toNat

end

end A081341.P8853230292615281933

namespace A081341

/-- `A026532(A004275(n+1))` -/
def P8853230292615281933.Spec : Prop :=
  ∀ n, P8853230292615281933.a n = A081341 n

end A081341

/-!
# A081342: a(n) = (8^n + 2^n)/2.

The programs for A081342, the canonical program `A081342.P16740611869168890339` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A081342 has offset 0).

The definition of A081342 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(8^n+2^n)/2` (program `A081342.P486373173117511394`, by `A081342.P486373173117511394.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A081342.P486373173117511394

`(8^n+2^n)/2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A081342.P486373173117511394
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (8 ^ n + 2 ^ n : ℚ) / 2

end

end A081342.P486373173117511394

namespace A081342

/-- `(8^n+2^n)/2` -/
def P486373173117511394.Spec : Prop :=
  ∀ n, P486373173117511394.a n = (A081342 n : ℚ)

theorem P486373173117511394.correct : P486373173117511394.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A081342, Nat.add_sub_cancel, A081342.P486373173117511394.a, A081342.P16740611869168890339.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A081342, Nat.add_sub_cancel, A081342.P486373173117511394.a, A081342.P16740611869168890339.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [← h1, ← h2]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A081342

/-! ## A081342.P16740611869168890339

`10*a(n-1)-16*a(n-2)` with `a(0)=1, a(1)=5`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A081342

/-- `10*a(n-1)-16*a(n-2)` -/
def P16740611869168890339.Spec : Prop :=
  ∀ n, P16740611869168890339.a n = A081342 n

theorem P16740611869168890339.correct : P16740611869168890339.Spec := by
  intro n
  simp only [A081342]

end A081342

/-! ## A081342.P17338212775553112416

`ogf((1-5x)/(1-10x+16x^2))`
-/

namespace A081342.P17338212775553112416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -5] [1, -10, 16] n

end

end A081342.P17338212775553112416

namespace A081342

/-- `ogf((1-5x)/(1-10x+16x^2))` -/
def P17338212775553112416.Spec : Prop :=
  ∀ n, P17338212775553112416.a n = A081342 n

end A081342

/-! ## A081342.P10453867496828352953

`record[(n%3)^n]+floor(2^(n-1))`
-/

namespace A081342.P10453867496828352953
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n % 3) ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℤ) + ⌊(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌋

end

end A081342.P10453867496828352953

namespace A081342

/-- `record[(n%3)^n]+floor(2^(n-1))` -/
def P10453867496828352953.Spec : Prop :=
  ∀ n, P10453867496828352953.a n = A081342 n

end A081342

/-! ## A081342.P11330033538919920205

`A083332(comp[2*(n+1)])`
-/

namespace A081342.P11330033538919920205
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083332 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A081342.P11330033538919920205

namespace A081342

/-- `A083332(comp[2*(n+1)])` -/
def P11330033538919920205.Spec : Prop :=
  ∀ n, P11330033538919920205.a n = A081342 n

end A081342

/-! ## A081342.P12163865323133573898

`A092811(n)+floor(2^(n-1))`
-/

namespace A081342.P12163865323133573898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092811 n + ⌊(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌋

end

end A081342.P12163865323133573898

namespace A081342

/-- `A092811(n)+floor(2^(n-1))` -/
def P12163865323133573898.Spec : Prop :=
  ∀ n, P12163865323133573898.a n = A081342 n

end A081342

/-! ## A081342.P14636182074921942285

`8*a(n-1)-A003945(n)` with `a(0)=1`
-/

namespace A081342.P14636182074921942285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  8 * a (n - 1) - A003945 n

end

end A081342.P14636182074921942285

namespace A081342

/-- `8*a(n-1)-A003945(n)` -/
def P14636182074921942285.Spec : Prop :=
  ∀ n, P14636182074921942285.a n = A081342 n

end A081342

/-! ## A081342.P9255882413397360715

`8*a(n-1)-A042950(n)` with `a(0)=1`
-/

namespace A081342.P9255882413397360715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  8 * a (n - 1) - A042950 n

end

end A081342.P9255882413397360715

namespace A081342

/-- `8*a(n-1)-A042950(n)` -/
def P9255882413397360715.Spec : Prop :=
  ∀ n, P9255882413397360715.a n = A081342 n

end A081342

/-! ## A081342.P11738054628173282478

`a(n-1)+A103333(n)+a(n-1)` with `a(0)=1`
-/

namespace A081342.P11738054628173282478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (A103333 n + a (n - 1))

end

end A081342.P11738054628173282478

namespace A081342

/-- `a(n-1)+A103333(n)+a(n-1)` -/
def P11738054628173282478.Spec : Prop :=
  ∀ n, P11738054628173282478.a n = A081342 n

end A081342

/-! ## A081342.P241688473281286902

`record[A034008(n)*A092896(n)]`
-/

namespace A081342.P241688473281286902
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034008 n * A092896 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A081342.P241688473281286902

namespace A081342

/-- `record[A034008(n)*A092896(n)]` -/
def P241688473281286902.Spec : Prop :=
  ∀ n, P241688473281286902.a n = A081342 n

end A081342

/-! ## A081342.P2492483961466677937

`A120689(n)+A016116(2*n)`
-/

namespace A081342.P2492483961466677937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120689 n + A016116 (2 * n)

end

end A081342.P2492483961466677937

namespace A081342

/-- `A120689(n)+A016116(2*n)` -/
def P2492483961466677937.Spec : Prop :=
  ∀ n, P2492483961466677937.a n = A081342 n

end A081342

/-! ## A081342.P8165970938850082554

`A011782(n)*A083318(2*n)`
-/

namespace A081342.P8165970938850082554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 n * A083318 (2 * n)

end

end A081342.P8165970938850082554

namespace A081342

/-- `A011782(n)*A083318(2*n)` -/
def P8165970938850082554.Spec : Prop :=
  ∀ n, P8165970938850082554.a n = A081342 n

end A081342

/-! ## A081342.P1561314671806051239

`or(A011782(3*n), A011782(n))`
-/

namespace A081342.P1561314671806051239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A011782 (3 * n)) (A011782 n)

end

end A081342.P1561314671806051239

namespace A081342

/-- `or(A011782(3*n), A011782(n))` -/
def P1561314671806051239.Spec : Prop :=
  ∀ n, P1561314671806051239.a n = A081342 n

end A081342

/-! ## A081342.P13143339109076674571

`record[A055236(n)/2*A055248(n)]`
-/

namespace A081342.P13143339109076674571
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A055236 n : ℚ) / 2 * (A055248 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A081342.P13143339109076674571

namespace A081342

/-- `record[A055236(n)/2*A055248(n)]` -/
def P13143339109076674571.Spec : Prop :=
  ∀ n, P13143339109076674571.a n = (A081342 n : ℚ)

end A081342

/-! ## A081342.P890310638552848734

`A011782(n)*A127904(2*n+1)`
-/

namespace A081342.P890310638552848734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 n * A127904 (2 * n + 1)

end

end A081342.P890310638552848734

namespace A081342

/-- `A011782(n)*A127904(2*n+1)` -/
def P890310638552848734.Spec : Prop :=
  ∀ n, P890310638552848734.a n = A081342 n

end A081342

/-! ## A081342.P3919259091021824584

`(C(A000079(n), 2)+1)*A000051(n)-1`
-/

namespace A081342.P3919259091021824584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (A000079 n).toNat 2 + 1 : ℤ) * A000051 n - 1

end

end A081342.P3919259091021824584

namespace A081342

/-- `(C(A000079(n), 2)+1)*A000051(n)-1` -/
def P3919259091021824584.Spec : Prop :=
  ∀ n, P3919259091021824584.a n = A081342 n

end A081342

/-! ## A081342.P3877537661113603644

`A034008(A016777(n))+A011782(n)`
-/

namespace A081342.P3877537661113603644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034008 (A016777 n).toNat + A011782 n

end

end A081342.P3877537661113603644

namespace A081342

/-- `A034008(A016777(n))+A011782(n)` -/
def P3877537661113603644.Spec : Prop :=
  ∀ n, P3877537661113603644.a n = A081342 n

end A081342

/-! ## A081342.P2758273644035552791

`A131577(A008585(n))+A011782(n)`
-/

namespace A081342.P2758273644035552791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131577 (A008585 n).toNat + A011782 n

end

end A081342.P2758273644035552791

namespace A081342

/-- `A131577(A008585(n))+A011782(n)` -/
def P2758273644035552791.Spec : Prop :=
  ∀ n, P2758273644035552791.a n = A081342 n

end A081342

/-! ## A081342.P13209686903074968489

`A131577(A008486(n))+A131577(n)`
-/

namespace A081342.P13209686903074968489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131577 (A008486 n).toNat + A131577 n

end

end A081342.P13209686903074968489

namespace A081342

/-- `A131577(A008486(n))+A131577(n)` -/
def P13209686903074968489.Spec : Prop :=
  ∀ n, P13209686903074968489.a n = A081342 n

end A081342

/-! ## A081342.P7841865272629241133

`A000079(n)+A000051(n)*A006516(n)`
-/

namespace A081342.P7841865272629241133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n + A000051 n * A006516 n

end

end A081342.P7841865272629241133

namespace A081342

/-- `A000079(n)+A000051(n)*A006516(n)` -/
def P7841865272629241133.Spec : Prop :=
  ∀ n, P7841865272629241133.a n = A081342 n

end A081342

/-!
# A081343: a(n) = (10^n + 4^n)/2.

The programs for A081343, the canonical program `A081343.P12692570002375866173` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A081343 has offset 0).

The definition of A081343 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(10^n+4^n)/2` (program `A081343.P12954842229642946106`, by `A081343.P12954842229642946106.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A081343.P12692570002375866173

`14*a(n-1)-40*a(n-2)` with `a(0)=1, a(1)=7`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A081343

/-- `14*a(n-1)-40*a(n-2)` -/
def P12692570002375866173.Spec : Prop :=
  ∀ n, P12692570002375866173.a n = A081343 n

theorem P12692570002375866173.correct : P12692570002375866173.Spec := by
  intro n
  simp only [A081343]

end A081343

/-! ## A081343.P12954842229642946106

`(10^n+4^n)/2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A081343.P12954842229642946106
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (10 ^ n + 4 ^ n : ℚ) / 2

end

end A081343.P12954842229642946106

namespace A081343

/-- `(10^n+4^n)/2` -/
def P12954842229642946106.Spec : Prop :=
  ∀ n, P12954842229642946106.a n = (A081343 n : ℚ)

theorem P12954842229642946106.correct : P12954842229642946106.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A081343, Nat.add_sub_cancel, A081343.P12954842229642946106.a, A081343.P12692570002375866173.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A081343, Nat.add_sub_cancel, A081343.P12954842229642946106.a, A081343.P12692570002375866173.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [← h1, ← h2]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A081343

/-! ## A081343.P15467813922938560687

`A074600(n)/2*2^n`
-/

namespace A081343.P15467813922938560687
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A074600 n : ℚ) / 2 * (2 ^ n : ℚ)

end

end A081343.P15467813922938560687

namespace A081343

/-- `A074600(n)/2*2^n` -/
def P15467813922938560687.Spec : Prop :=
  ∀ n, P15467813922938560687.a n = (A081343 n : ℚ)

theorem P15467813922938560687.correct : P15467813922938560687.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A081343, Nat.add_sub_cancel, A081343.P15467813922938560687.a, A081343.P12692570002375866173.a, A074600, A074600.P5556424794481818079.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
      try ((try field_simp); ring_nf)
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A081343, Nat.add_sub_cancel, A081343.P15467813922938560687.a, A081343.P12692570002375866173.a, A074600, A074600.P5556424794481818079.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [← h1, ← h2]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith | ((try field_simp); ring_nf)

end A081343

/-! ## A081343.P7534274624330729986

`A081337(n)+A081203(n)`
-/

namespace A081343.P7534274624330729986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081337 n + A081203 n

end

end A081343.P7534274624330729986

namespace A081343

/-- `A081337(n)+A081203(n)` -/
def P7534274624330729986.Spec : Prop :=
  ∀ n, P7534274624330729986.a n = A081343 n

end A081343

/-! ## A081343.P5513927421644325933

`A011557(n)-A248338(n)/2`
-/

namespace A081343.P5513927421644325933
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A011557 n : ℚ) - (A248338 n : ℚ) / 2

end

end A081343.P5513927421644325933

namespace A081343

/-- `A011557(n)-A248338(n)/2` -/
def P5513927421644325933.Spec : Prop :=
  ∀ n, P5513927421644325933.a n = (A081343 n : ℚ)

theorem P5513927421644325933.correct : P5513927421644325933.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A081343, Nat.add_sub_cancel, A081343.P5513927421644325933.a, A081343.P12692570002375866173.a, A011557, A011557.P11220211478167790856.a, A248338, A248338.P6443409204069801720.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
      try ((try field_simp); ring_nf)
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A081343, Nat.add_sub_cancel, A081343.P5513927421644325933.a, A081343.P12692570002375866173.a, A011557, A011557.P11220211478167790856.a, A248338, A248338.P6443409204069801720.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [← h1, ← h2]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith | ((try field_simp); ring_nf)

end A081343

/-! ## A081343.P687795684901602554

`A000079(n)/2*A074600(n)`
-/

namespace A081343.P687795684901602554
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000079 n : ℚ) / 2 * (A074600 n : ℚ)

end

end A081343.P687795684901602554

namespace A081343

/-- `A000079(n)/2*A074600(n)` -/
def P687795684901602554.Spec : Prop :=
  ∀ n, P687795684901602554.a n = (A081343 n : ℚ)

theorem P687795684901602554.correct : P687795684901602554.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A081343, Nat.add_sub_cancel, A081343.P687795684901602554.a, A081343.P12692570002375866173.a, A000079, A000079.P10855139691139572931.a, A074600, A074600.P5556424794481818079.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
      try ((try field_simp); ring_nf)
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A081343, Nat.add_sub_cancel, A081343.P687795684901602554.a, A081343.P12692570002375866173.a, A000079, A000079.P10855139691139572931.a, A074600, A074600.P5556424794481818079.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [← h1, ← h2]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith | ((try field_simp); ring_nf)

end A081343

/-! ## A081343.P12606462105045186516

`A000079(n)²+A248338(n)/2`
-/

namespace A081343.P12606462105045186516
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000079 n ^ 2 : ℚ) + (A248338 n : ℚ) / 2

end

end A081343.P12606462105045186516

namespace A081343

/-- `A000079(n)²+A248338(n)/2` -/
def P12606462105045186516.Spec : Prop :=
  ∀ n, P12606462105045186516.a n = (A081343 n : ℚ)

theorem P12606462105045186516.correct : P12606462105045186516.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A081343, Nat.add_sub_cancel, A081343.P12606462105045186516.a, A081343.P12692570002375866173.a, A000079, A000079.P10855139691139572931.a, A248338, A248338.P6443409204069801720.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
      try ((try field_simp); ring_nf)
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A081343, Nat.add_sub_cancel, A081343.P12606462105045186516.a, A081343.P12692570002375866173.a, A000079, A000079.P10855139691139572931.a, A248338, A248338.P6443409204069801720.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [← h1, ← h2]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith | ((try field_simp); ring_nf)

end A081343

/-! ## A081343.P9750639955797603068

`(A135159(n)+A074527(n))*2^(n-2)`
-/

namespace A081343.P9750639955797603068
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A135159 n + A074527 n : ℚ) * (2 : ℚ) ^ ((n : ℤ) - 2 : ℤ)

end

end A081343.P9750639955797603068

namespace A081343

/-- `(A135159(n)+A074527(n))*2^(n-2)` -/
def P9750639955797603068.Spec : Prop :=
  ∀ n, P9750639955797603068.a n = (A081343 n : ℚ)

end A081343

/-! ## A081343.P16079969524398410008

`A081203(n)+A000079(n)*A007582(n)`
-/

namespace A081343.P16079969524398410008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081203 n + A000079 n * A007582 n

end

end A081343.P16079969524398410008

namespace A081343

/-- `A081203(n)+A000079(n)*A007582(n)` -/
def P16079969524398410008.Spec : Prop :=
  ∀ n, P16079969524398410008.a n = A081343 n

end A081343

/-! ## A081343.P4516037069486897040

`(A083318(n)+A024049(n))*A011782(n)`
-/

namespace A081343.P4516037069486897040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A083318 n + A024049 n) * A011782 n

end

end A081343.P4516037069486897040

namespace A081343

/-- `(A083318(n)+A024049(n))*A011782(n)` -/
def P4516037069486897040.Spec : Prop :=
  ∀ n, P4516037069486897040.a n = A081343 n

end A081343

/-! ## A081343.P17401073571778027781

`ceil(A155621(n)/2)`
-/

namespace A081343.P17401073571778027781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A155621 n : ℚ) / 2⌉

end

end A081343.P17401073571778027781

namespace A081343

/-- `ceil(A155621(n)/2)` -/
def P17401073571778027781.Spec : Prop :=
  ∀ n, P17401073571778027781.a n = A081343 n

end A081343

/-!
# A081344: Natural numbers in square maze arrangement, read by antidiagonals.

The programs for A081344, there is no canonical definition to state claims against.
-/

/-! ## A081344.P3126342596468288933

`A060736(A188568(n+1))`
-/

namespace A081344.P3126342596468288933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060736 (A188568 (n + 1)).toNat

end

end A081344.P3126342596468288933

/-! ## A081344.P2118648231447772952

`A220508(A188568(n+1)-1)+1`
-/

namespace A081344.P2118648231447772952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220508 (A188568 (n + 1) - 1).toNat + 1

end

end A081344.P2118648231447772952

/-! ## A081344.P2471026758008634497

`A060734(A208234(n+1)+A057944(n))`
-/

namespace A081344.P2471026758008634497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060734 (A208234 (n + 1) + A057944 n).toNat

end

end A081344.P2471026758008634497

/-! ## A081344.P14194583519418005811

`A060734(A188568(A056023(A056011(n+1))))`
-/

namespace A081344.P14194583519418005811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060734 (A188568 (A056023 (A056011 (n + 1)).toNat).toNat).toNat

end

end A081344.P14194583519418005811

/-! ## A081344.P14659007882173602741

`A060736(A194280(A060736(n+1)))`
-/

namespace A081344.P14659007882173602741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060736 (A194280 (A060736 (n + 1)).toNat).toNat

end

end A081344.P14659007882173602741

/-! ## A081344.P3198380411152521846

`A219159(A194280(A219159(n+1)))`
-/

namespace A081344.P3198380411152521846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219159 (A194280 (A219159 (n + 1)).toNat).toNat

end

end A081344.P3198380411152521846

/-! ## A081344.P10194334096432158920

`A060734(A194280(A060734(n+1)))`
-/

namespace A081344.P10194334096432158920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060734 (A194280 (A060734 (n + 1)).toNat).toNat

end

end A081344.P10194334096432158920

/-! ## A081344.P8240694401383699738

`A213928(A194280(A213928(n+1)))`
-/

namespace A081344.P8240694401383699738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213928 (A194280 (A213928 (n + 1)).toNat).toNat

end

end A081344.P8240694401383699738

/-! ## A081344.P5588986344096743062

`A220516(n)+1`
-/

namespace A081344.P5588986344096743062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220516 n + 1

end

end A081344.P5588986344096743062

/-!
# A081345: First row in maze arrangement of natural numbers A081344.

The programs for A081345, the canonical program `A081345.P5734202957701632400` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A081345 has offset 0).

The definition of A081345 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A081345.P5734202957701632400

`n²+n+1-n*(-1)^n`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A081345

/-- `n²+n+1-n*(-1)^n` -/
def P5734202957701632400.Spec : Prop :=
  ∀ n, P5734202957701632400.a n = A081345 n

theorem P5734202957701632400.correct : P5734202957701632400.Spec := by
  intro n
  simp only [A081345]

end A081345

/-! ## A081345.P16969245538498679071

`∑[(4*n-1)^(n%2)]`
-/

namespace A081345.P16969245538498679071
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((4 * n : ℤ) - 1) ^ (n % 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A081345.P16969245538498679071

namespace A081345

/-- `∑[(4*n-1)^(n%2)]` -/
def P16969245538498679071.Spec : Prop :=
  ∀ n, P16969245538498679071.a n = A081345 n

end A081345

/-! ## A081345.P2379731103750579959

`∑[gcd(1-4*n, (n+1)%2)]`
-/

namespace A081345.P2379731103750579959
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (1 - (4 * n : ℤ)) (((n + 1) % 2 : ℕ) : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A081345.P2379731103750579959

namespace A081345

/-- `∑[gcd(1-4*n, (n+1)%2)]` -/
def P2379731103750579959.Spec : Prop :=
  ∀ n, (P2379731103750579959.a n : ℤ) = A081345 n

end A081345

/-! ## A081345.P17280003835862739823

`or((and(1, n)+n)², and(1, n+1))`
-/

namespace A081345.P17280003835862739823
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor ((Nat.land 1 n + n) ^ 2) (Nat.land 1 (n + 1))

end

end A081345.P17280003835862739823

namespace A081345

/-- `or((and(1, n)+n)², and(1, n+1))` -/
def P17280003835862739823.Spec : Prop :=
  ∀ n, (P17280003835862739823.a n : ℤ) = A081345 n

end A081345

/-! ## A081345.P3408830925275460512

`∑[a(n-2)+8%a(n-2)²]` with `a(0)=1, a(1)=3`
-/

namespace A081345.P3408830925275460512
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 3] fun n f1 =>
  f1 (n - 2) + 8 % f1 (n - 2) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A081345.P3408830925275460512

namespace A081345

/-- `∑[a(n-2)+8%a(n-2)²]` -/
def P3408830925275460512.Spec : Prop :=
  ∀ n, (P3408830925275460512.a n : ℤ) = A081345 n

end A081345

/-! ## A081345.P1311671051608385348

`floor(n*∑[2-a(n-1)]+n+1)` with `a(0)=-1`

`floor` is left out, it is the identity on integers.
-/

namespace A081345.P1311671051608385348
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [-1] fun n f1 =>
  2 - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (∑ j ∈ Finset.range (n + 1), f1 j) + (n + 1 : ℤ)

end

end A081345.P1311671051608385348

namespace A081345

/-- `floor(n*∑[2-a(n-1)]+n+1)` -/
def P1311671051608385348.Spec : Prop :=
  ∀ n, P1311671051608385348.a n = A081345 n

end A081345

/-! ## A081345.P12982608806574636880

`∑[2*A266303(n)-1]`
-/

namespace A081345.P12982608806574636880
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A266303 n - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A081345.P12982608806574636880

namespace A081345

/-- `∑[2*A266303(n)-1]` -/
def P12982608806574636880.Spec : Prop :=
  ∀ n, P12982608806574636880.a n = A081345 n

end A081345

/-! ## A081345.P12091784447954258613

`A128091(n+1)/A081346(n)`
-/

namespace A081345.P12091784447954258613
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A128091 (n + 1) : ℚ) / (A081346 n : ℚ)

end

end A081345.P12091784447954258613

namespace A081345

/-- `A128091(n+1)/A081346(n)` -/
def P12091784447954258613.Spec : Prop :=
  ∀ n, P12091784447954258613.a n = (A081345 n : ℚ)

end A081345

/-! ## A081345.P12522325120700266296

`A005915(n)%A200455(n+1)`
-/

namespace A081345.P12522325120700266296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A005915 n) (A200455 (n + 1))

end

end A081345.P12522325120700266296

namespace A081345

/-- `A005915(n)%A200455(n+1)` -/
def P12522325120700266296.Spec : Prop :=
  ∀ n, P12522325120700266296.a n = A081345 n

end A081345

/-! ## A081345.P10658006907599591310

`A357042(n+1)%A245996(n+1)`
-/

namespace A081345.P10658006907599591310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A357042 (n + 1)) (A245996 (n + 1))

end

end A081345.P10658006907599591310

namespace A081345

/-- `A357042(n+1)%A245996(n+1)` -/
def P10658006907599591310.Spec : Prop :=
  ∀ n, P10658006907599591310.a n = A081345 n

end A081345

/-! ## A081345.P13941627392212950259

`∑[gcd(A047470(n+1), A047471(n+1))]`
-/

namespace A081345.P13941627392212950259
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A047470 (n + 1)) (A047471 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A081345.P13941627392212950259

namespace A081345

/-- `∑[gcd(A047470(n+1), A047471(n+1))]` -/
def P13941627392212950259.Spec : Prop :=
  ∀ n, (P13941627392212950259.a n : ℤ) = A081345 n

end A081345

/-! ## A081345.P485527535904969434

`record[A057078(n)+A131380(n)²]`
-/

namespace A081345.P485527535904969434
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057078 n + A131380 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A081345.P485527535904969434

namespace A081345

/-- `record[A057078(n)+A131380(n)²]` -/
def P485527535904969434.Spec : Prop :=
  ∀ n, P485527535904969434.a n = A081345 n

end A081345

/-! ## A081345.P12302770892151029842

`A363268(A042964(n+1))`
-/

namespace A081345.P12302770892151029842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363268 (A042964 (n + 1)).toNat

end

end A081345.P12302770892151029842

namespace A081345

/-- `A363268(A042964(n+1))` -/
def P12302770892151029842.Spec : Prop :=
  ∀ n, P12302770892151029842.a n = A081345 n

end A081345

/-! ## A081345.P15042294868109431451

`A363268(A053438(n+1))`
-/

namespace A081345.P15042294868109431451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363268 (A053438 (n + 1)).toNat

end

end A081345.P15042294868109431451

namespace A081345

/-- `A363268(A053438(n+1))` -/
def P15042294868109431451.Spec : Prop :=
  ∀ n, P15042294868109431451.a n = A081345 n

end A081345

/-! ## A081345.P11658343483448960693

`A363268(A042948(n)+2)`
-/

namespace A081345.P11658343483448960693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363268 (A042948 n + 2).toNat

end

end A081345.P11658343483448960693

namespace A081345

/-- `A363268(A042948(n)+2)` -/
def P11658343483448960693.Spec : Prop :=
  ∀ n, P11658343483448960693.a n = A081345 n

end A081345

/-! ## A081345.P3844854408239434571

`A137224(A042948(n+1))`
-/

namespace A081345.P3844854408239434571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137224 (A042948 (n + 1)).toNat

end

end A081345.P3844854408239434571

namespace A081345

/-- `A137224(A042948(n+1))` -/
def P3844854408239434571.Spec : Prop :=
  ∀ n, P3844854408239434571.a n = A081345 n

end A081345

/-! ## A081345.P5937831656618476553

`A137224(A248800(n+1)-A002522(n))`
-/

namespace A081345.P5937831656618476553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137224 (A248800 (n + 1) - A002522 n).toNat

end

end A081345.P5937831656618476553

namespace A081345

/-- `A137224(A248800(n+1)-A002522(n))` -/
def P5937831656618476553.Spec : Prop :=
  ∀ n, P5937831656618476553.a n = A081345 n

end A081345

/-! ## A081345.P14126136544946513733

`eq[A217586(n+1), A262678(n)]`
-/

namespace A081345.P14126136544946513733
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217586 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262678 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A081345.P14126136544946513733

namespace A081345

/-- `eq[A217586(n+1), A262678(n)]` -/
def P14126136544946513733.Spec : Prop :=
  ∀ n, (P14126136544946513733.a n : ℤ) = A081345 n

end A081345

/-! ## A081345.P3831433177535803770

`A026491(A213037(n))`
-/

namespace A081345.P3831433177535803770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026491 (A213037 n).toNat

end

end A081345.P3831433177535803770

namespace A081345

/-- `A026491(A213037(n))` -/
def P3831433177535803770.Spec : Prop :=
  ∀ n, P3831433177535803770.a n = A081345 n

end A081345

/-! ## A081345.P14883850127083183957

`A001614(A131179(n+1))`
-/

namespace A081345.P14883850127083183957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001614 (A131179 (n + 1)).toNat

end

end A081345.P14883850127083183957

namespace A081345

/-- `A001614(A131179(n+1))` -/
def P14883850127083183957.Spec : Prop :=
  ∀ n, P14883850127083183957.a n = A081345 n

end A081345

/-!
# A081346: First column in maze arrangement of natural numbers A081344.

The programs for A081346, the canonical program `A081346.P12676872757587478313` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A081346 has offset 0).

The definition of A081346 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A081346.P12676872757587478313

`n²+n+1+n*(-1)^n`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A081346

/-- `n²+n+1+n*(-1)^n` -/
def P12676872757587478313.Spec : Prop :=
  ∀ n, P12676872757587478313.a n = A081346 n

theorem P12676872757587478313.correct : P12676872757587478313.Spec := by
  intro n
  simp only [A081346]

end A081346

/-! ## A081346.P9338728213476729899

`∪[(2*n+1)²+1, (2*n+1)²]`
-/

namespace A081346.P9338728213476729899
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (2 * n + 1) ^ 2 + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (2 * n + 1) ^ 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∨ ∃ j, f2 j = x) n

end

end A081346.P9338728213476729899

namespace A081346

/-- `∪[(2*n+1)²+1, (2*n+1)²]` -/
def P9338728213476729899.Spec : Prop :=
  ∀ n, (P9338728213476729899.a n : ℤ) = A081346 n

end A081346

/-! ## A081346.P8259774754063865836

`xor(1, A266073(n)+n²)`
-/

namespace A081346.P8259774754063865836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A266073 n + (n ^ 2 : ℤ))

end

end A081346.P8259774754063865836

namespace A081346

/-- `xor(1, A266073(n)+n²)` -/
def P8259774754063865836.Spec : Prop :=
  ∀ n, P8259774754063865836.a n = A081346 n

end A081346

/-! ## A081346.P12011766276008274416

`∑[A153285(n+1)-2*n]`
-/

namespace A081346.P12011766276008274416
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153285 (n + 1) - (2 * n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A081346.P12011766276008274416

namespace A081346

/-- `∑[A153285(n+1)-2*n]` -/
def P12011766276008274416.Spec : Prop :=
  ∀ n, P12011766276008274416.a n = A081346 n

end A081346

/-! ## A081346.P16823653459713629339

`A058920(n)%A245764(n)`
-/

namespace A081346.P16823653459713629339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A058920 n) (A245764 n)

end

end A081346.P16823653459713629339

namespace A081346

/-- `A058920(n)%A245764(n)` -/
def P16823653459713629339.Spec : Prop :=
  ∀ n, P16823653459713629339.a n = A081346 n

end A081346

/-! ## A081346.P3019499769366850036

`A128091(n+1)/A081345(n)`
-/

namespace A081346.P3019499769366850036
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A128091 (n + 1) : ℚ) / (A081345 n : ℚ)

end

end A081346.P3019499769366850036

namespace A081346

/-- `A128091(n+1)/A081345(n)` -/
def P3019499769366850036.Spec : Prop :=
  ∀ n, P3019499769366850036.a n = (A081346 n : ℚ)

end A081346

/-! ## A081346.P17567029641525421028

`∑[A004275(2*n)*A135416(A135517(n+2))+1]`
-/

namespace A081346.P17567029641525421028
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004275 (2 * n) * A135416 (A135517 (n + 2)).toNat + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A081346.P17567029641525421028

namespace A081346

/-- `∑[A004275(2*n)*A135416(A135517(n+2))+1]` -/
def P17567029641525421028.Spec : Prop :=
  ∀ n, P17567029641525421028.a n = A081346 n

end A081346

/-! ## A081346.P3833434616866550867

`A363268(A042948(n+1))`
-/

namespace A081346.P3833434616866550867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363268 (A042948 (n + 1)).toNat

end

end A081346.P3833434616866550867

namespace A081346

/-- `A363268(A042948(n+1))` -/
def P3833434616866550867.Spec : Prop :=
  ∀ n, P3833434616866550867.a n = A081346 n

end A081346

/-! ## A081346.P8329797979899732581

`A363283(A042963(n+1))`
-/

namespace A081346.P8329797979899732581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363283 (A042963 (n + 1)).toNat

end

end A081346.P8329797979899732581

namespace A081346

/-- `A363283(A042963(n+1))` -/
def P8329797979899732581.Spec : Prop :=
  ∀ n, P8329797979899732581.a n = A081346 n

end A081346

/-! ## A081346.P10037702300020634691

`A363268(A042964(n+2)-2)`
-/

namespace A081346.P10037702300020634691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363268 (A042964 (n + 2) - 2).toNat

end

end A081346.P10037702300020634691

namespace A081346

/-- `A363268(A042964(n+2)-2)` -/
def P10037702300020634691.Spec : Prop :=
  ∀ n, P10037702300020634691.a n = A081346 n

end A081346

/-! ## A081346.P16782487679957256054

`A087278(A047239(n+1))`
-/

namespace A081346.P16782487679957256054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087278 (A047239 (n + 1)).toNat

end

end A081346.P16782487679957256054

namespace A081346

/-- `A087278(A047239(n+1))` -/
def P16782487679957256054.Spec : Prop :=
  ∀ n, P16782487679957256054.a n = A081346 n

end A081346

/-! ## A081346.P1704719112013761884

`A274583(A047225(n+1))`
-/

namespace A081346.P1704719112013761884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274583 (A047225 (n + 1)).toNat

end

end A081346.P1704719112013761884

namespace A081346

/-- `A274583(A047225(n+1))` -/
def P1704719112013761884.Spec : Prop :=
  ∀ n, P1704719112013761884.a n = A081346 n

end A081346

/-! ## A081346.P852746204961605996

`A173151(A047468(n+1))`
-/

namespace A081346.P852746204961605996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173151 (A047468 (n + 1)).toNat

end

end A081346.P852746204961605996

namespace A081346

/-- `A173151(A047468(n+1))` -/
def P852746204961605996.Spec : Prop :=
  ∀ n, P852746204961605996.a n = A081346 n

end A081346

/-! ## A081346.P747672930685836758

`A194032(A236453(n))`
-/

namespace A081346.P747672930685836758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194032 (A236453 n).toNat

end

end A081346.P747672930685836758

namespace A081346

/-- `A194032(A236453(n))` -/
def P747672930685836758.Spec : Prop :=
  ∀ n, P747672930685836758.a n = A081346 n

end A081346

/-! ## A081346.P15361796602906474463

`A003485(A266725(n))`
-/

namespace A081346.P15361796602906474463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003485 (A266725 n).toNat

end

end A081346.P15361796602906474463

namespace A081346

/-- `A003485(A266725(n))` -/
def P15361796602906474463.Spec : Prop :=
  ∀ n, P15361796602906474463.a n = A081346 n

end A081346

/-! ## A081346.P12926201130677016556

`A081344(∑[n]+1)`
-/

namespace A081346.P12926201130677016556
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081344 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A081346.P12926201130677016556

namespace A081346

/-- `A081344(∑[n]+1)` -/
def P12926201130677016556.Spec : Prop :=
  ∀ n, P12926201130677016556.a n = A081346 n

end A081346

/-! ## A081346.P4414539801177283440

`A060734(A131179(n+1))`
-/

namespace A081346.P4414539801177283440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060734 (A131179 (n + 1)).toNat

end

end A081346.P4414539801177283440

namespace A081346

/-- `A060734(A131179(n+1))` -/
def P4414539801177283440.Spec : Prop :=
  ∀ n, P4414539801177283440.a n = A081346 n

end A081346

/-! ## A081346.P17929425524029698022

`A185910(A084265(n))`
-/

namespace A081346.P17929425524029698022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185910 (A084265 n).toNat

end

end A081346.P17929425524029698022

namespace A081346

/-- `A185910(A084265(n))` -/
def P17929425524029698022.Spec : Prop :=
  ∀ n, P17929425524029698022.a n = A081346 n

end A081346

/-! ## A081346.P4506532790449895259

`A001614(A128918(n+1))`
-/

namespace A081346.P4506532790449895259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001614 (A128918 (n + 1)).toNat

end

end A081346.P4506532790449895259

namespace A081346

/-- `A001614(A128918(n+1))` -/
def P4506532790449895259.Spec : Prop :=
  ∀ n, P4506532790449895259.a n = A081346 n

end A081346

/-!
# A081347: First column in maze arrangement of natural numbers.

The programs for A081347, the canonical program `A081347.P11821042274039724551` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A081347 has offset 0).

The definition of A081347 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A081347.P11821042274039724551

`(1+2*n²+(1-2*n)*(-1)^n)/2`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A081347

/-- `(1+2*n²+(1-2*n)*(-1)^n)/2` -/
def P11821042274039724551.Spec : Prop :=
  ∀ n, P11821042274039724551.a n = (A081347 n : ℚ)

end A081347

/-! ## A081347.P11924160770130606316

`or(1, -n)²+n`
-/

namespace A081347.P11924160770130606316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (-(n : ℤ)) ^ 2 + (n : ℤ)

end

end A081347.P11924160770130606316

namespace A081347

/-- `or(1, -n)²+n` -/
def P11924160770130606316.Spec : Prop :=
  ∀ n, P11924160770130606316.a n = A081347 n

end A081347

/-! ## A081347.P8564794537564068744

`abs(or(1, n-1))²+n`
-/

namespace A081347.P8564794537564068744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.lor 1 ((n : ℤ) - 1)| ^ 2 + (n : ℤ)

end

end A081347.P8564794537564068744

namespace A081347

/-- `abs(or(1, n-1))²+n` -/
def P8564794537564068744.Spec : Prop :=
  ∀ n, P8564794537564068744.a n = A081347 n

end A081347

/-! ## A081347.P4331323963861732290

`(log2(gcd(2, n))-n)²+n`
-/

namespace A081347.P4331323963861732290
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (Real.logb 2 (Nat.gcd 2 n : ℝ) - (n : ℝ)) ^ 2 + (n : ℝ)

end

end A081347.P4331323963861732290

namespace A081347

/-- `(log2(gcd(2, n))-n)²+n` -/
def P4331323963861732290.Spec : Prop :=
  ∀ n, P4331323963861732290.a n = (A081347 n : ℝ)

end A081347

/-! ## A081347.P15546605993352553723

`(or(1, n+1)-2)²+n`
-/

namespace A081347.P15546605993352553723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((Nat.lor 1 (n + 1) : ℤ) - 2) ^ 2 + (n : ℤ)

end

end A081347.P15546605993352553723

namespace A081347

/-- `(or(1, n+1)-2)²+n` -/
def P15546605993352553723.Spec : Prop :=
  ∀ n, P15546605993352553723.a n = A081347 n

end A081347

/-! ## A081347.P16416038507815713718

`∑[4*n^(n%2)-3]`
-/

namespace A081347.P16416038507815713718
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (4 * n ^ (n % 2) : ℤ) - 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A081347.P16416038507815713718

namespace A081347

/-- `∑[4*n^(n%2)-3]` -/
def P16416038507815713718.Spec : Prop :=
  ∀ n, P16416038507815713718.a n = A081347 n

end A081347

/-! ## A081347.P10957865506620978211

`(and(1, n+1)-n)²+n`
-/

namespace A081347.P10957865506620978211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((Nat.land 1 (n + 1) : ℤ) - (n : ℤ)) ^ 2 + (n : ℤ)

end

end A081347.P10957865506620978211

namespace A081347

/-- `(and(1, n+1)-n)²+n` -/
def P10957865506620978211.Spec : Prop :=
  ∀ n, P10957865506620978211.a n = A081347 n

end A081347

/-! ## A081347.P14726025550172447966

`Δ[C(n, and(1, n+1))]+n²`
-/

namespace A081347.P14726025550172447966
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n (Nat.land 1 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ) + (n ^ 2 : ℤ)

end

end A081347.P14726025550172447966

namespace A081347

/-- `Δ[C(n, and(1, n+1))]+n²` -/
def P14726025550172447966.Spec : Prop :=
  ∀ n, P14726025550172447966.a n = A081347 n

end A081347

/-! ## A081347.P12527498496871749747

`∑[4*xor(1, n)%(n+1)+1]`
-/

namespace A081347.P12527498496871749747
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * (Nat.xor 1 n % (n + 1)) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A081347.P12527498496871749747

namespace A081347

/-- `∑[4*xor(1, n)%(n+1)+1]` -/
def P12527498496871749747.Spec : Prop :=
  ∀ n, (P12527498496871749747.a n : ℤ) = A081347 n

end A081347

/-! ## A081347.P15581307306557124291

`2*n-(n-or(1, n-1)²)`
-/

namespace A081347.P15581307306557124291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) - ((n : ℤ) - Int.lor 1 ((n : ℤ) - 1) ^ 2)

end

end A081347.P15581307306557124291

namespace A081347

/-- `2*n-(n-or(1, n-1)²)` -/
def P15581307306557124291.Spec : Prop :=
  ∀ n, P15581307306557124291.a n = A081347 n

end A081347

/-! ## A081347.P1941553381380411982

`∑[∑[∑[ogf((1+x-x^2+7x^3)/(1+2x+x^2))]]]`
-/

namespace A081347.P1941553381380411982
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 1, -1, 7] [1, 2, 1] n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A081347.P1941553381380411982

namespace A081347

/-- `∑[∑[∑[ogf((1+x-x^2+7x^3)/(1+2x+x^2))]]]` -/
def P1941553381380411982.Spec : Prop :=
  ∀ n, P1941553381380411982.a n = A081347 n

end A081347

/-! ## A081347.P12462223208238005414

`∑[2-a(n-1)]²+n` with `a(0)=1, a(1)=0, a(2)=0`
-/

namespace A081347.P12462223208238005414
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 0] fun n f1 =>
  2 - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 + (n : ℤ)

end

end A081347.P12462223208238005414

namespace A081347

/-- `∑[2-a(n-1)]²+n` -/
def P12462223208238005414.Spec : Prop :=
  ∀ n, P12462223208238005414.a n = A081347 n

end A081347

/-! ## A081347.P901726171327597165

`C(2*n, and(1, n))+n*(n-1)`
-/

namespace A081347.P901726171327597165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (2 * n) (Nat.land 1 n) : ℤ) + (n : ℤ) * ((n : ℤ) - 1)

end

end A081347.P901726171327597165

namespace A081347

/-- `C(2*n, and(1, n))+n*(n-1)` -/
def P901726171327597165.Spec : Prop :=
  ∀ n, P901726171327597165.a n = A081347 n

end A081347

/-! ## A081347.P1653650158536846192

`gcd(2*n, and(1, n+1))+n*(n-1)`
-/

namespace A081347.P1653650158536846192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.gcd (2 * n) (Nat.land 1 (n + 1)) : ℤ) + (n : ℤ) * ((n : ℤ) - 1)

end

end A081347.P1653650158536846192

namespace A081347

/-- `gcd(2*n, and(1, n+1))+n*(n-1)` -/
def P1653650158536846192.Spec : Prop :=
  ∀ n, P1653650158536846192.a n = A081347 n

end A081347

/-! ## A081347.P12559043166782728941

`Δ[A141310(n)]+n²`
-/

namespace A081347.P12559043166782728941
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141310 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + (n ^ 2 : ℤ)

end

end A081347.P12559043166782728941

namespace A081347

/-- `Δ[A141310(n)]+n²` -/
def P12559043166782728941.Spec : Prop :=
  ∀ n, P12559043166782728941.a n = A081347 n

end A081347

/-! ## A081347.P7717706308083597463

`∑[2*A266072(n)-1]`
-/

namespace A081347.P7717706308083597463
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A266072 n - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A081347.P7717706308083597463

namespace A081347

/-- `∑[2*A266072(n)-1]` -/
def P7717706308083597463.Spec : Prop :=
  ∀ n, P7717706308083597463.a n = A081347 n

end A081347

/-! ## A081347.P9705948419950125759

`∑[Δ[(2-A109613(n))²]+1]`
-/

namespace A081347.P9705948419950125759
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - A109613 n) ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A081347.P9705948419950125759

namespace A081347

/-- `∑[Δ[(2-A109613(n))²]+1]` -/
def P9705948419950125759.Spec : Prop :=
  ∀ n, P9705948419950125759.a n = A081347 n

end A081347

/-! ## A081347.P12556243962929751771

`2*A247375(n+1)-(n+1)`
-/

namespace A081347.P12556243962929751771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A247375 (n + 1) - (n + 1 : ℤ)

end

end A081347.P12556243962929751771

namespace A081347

/-- `2*A247375(n+1)-(n+1)` -/
def P12556243962929751771.Spec : Prop :=
  ∀ n, P12556243962929751771.a n = A081347 n

end A081347

/-! ## A081347.P7948544513259012559

`∑[(n-1)*and(4, A004767(n))+1]`
-/

namespace A081347.P7948544513259012559
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 1) * Int.land 4 (A004767 n) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A081347.P7948544513259012559

namespace A081347

/-- `∑[(n-1)*and(4, A004767(n))+1]` -/
def P7948544513259012559.Spec : Prop :=
  ∀ n, P7948544513259012559.a n = A081347 n

end A081347

/-! ## A081347.P15327327586538342762

`A294178(n)+A067998(n)`
-/

namespace A081347.P15327327586538342762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294178 n + A067998 n

end

end A081347.P15327327586538342762

namespace A081347

/-- `A294178(n)+A067998(n)` -/
def P15327327586538342762.Spec : Prop :=
  ∀ n, P15327327586538342762.a n = A081347 n

end A081347

/-!
# A081348: First row in maze arrangement of natural numbers.

The programs for A081348, the canonical program `A081348.P14669095874499940472` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A081348 has offset 0).

The definition of A081348 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A081348.P14669095874499940472

`(2*n²+4*n+3-(2*n+1)*(-1)^n)/2`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A081348

/-- `(2*n²+4*n+3-(2*n+1)*(-1)^n)/2` -/
def P14669095874499940472.Spec : Prop :=
  ∀ n, P14669095874499940472.a n = (A081348 n : ℚ)

end A081348

/-! ## A081348.P4319939583743105755

`∑[Δ[and(n, -2)²]+1]`
-/

namespace A081348.P4319939583743105755
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) (-2) ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A081348.P4319939583743105755

namespace A081348

/-- `∑[Δ[and(n, -2)²]+1]` -/
def P4319939583743105755.Spec : Prop :=
  ∀ n, P4319939583743105755.a n = A081348 n

end A081348

/-! ## A081348.P6280017151465137608

`Δ[n*or(1, n)]+n²`
-/

namespace A081348.P6280017151465137608
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * Nat.lor 1 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ) + (n ^ 2 : ℤ)

end

end A081348.P6280017151465137608

namespace A081348

/-- `Δ[n*or(1, n)]+n²` -/
def P6280017151465137608.Spec : Prop :=
  ∀ n, P6280017151465137608.a n = A081348 n

end A081348

/-! ## A081348.P9479395420050650144

`∑[4*n*n%2+1]`
-/

namespace A081348.P9479395420050650144
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * (n * (n % 2)) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A081348.P9479395420050650144

namespace A081348

/-- `∑[4*n*n%2+1]` -/
def P9479395420050650144.Spec : Prop :=
  ∀ n, (P9479395420050650144.a n : ℤ) = A081348 n

end A081348

/-! ## A081348.P2412965756448444629

`(and(1, n)+n)²+1+n`
-/

namespace A081348.P2412965756448444629
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (Nat.land 1 n + n) ^ 2 + 1 + n

end

end A081348.P2412965756448444629

namespace A081348

/-- `(and(1, n)+n)²+1+n` -/
def P2412965756448444629.Spec : Prop :=
  ∀ n, (P2412965756448444629.a n : ℤ) = A081348 n

end A081348

/-! ## A081348.P2960799394920431244

`∑[and((-1)^n, or(5, 4*n))]`
-/

namespace A081348.P2960799394920431244
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land ((-1) ^ n) (Nat.lor 5 (4 * n) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A081348.P2960799394920431244

namespace A081348

/-- `∑[and((-1)^n, or(5, 4*n))]` -/
def P2960799394920431244.Spec : Prop :=
  ∀ n, P2960799394920431244.a n = A081348 n

end A081348

/-! ## A081348.P6915293337997341107

`∑[xor(4, a(n-2)+4)]` with `a(0)=1, a(1)=5`
-/

namespace A081348.P6915293337997341107
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 5] fun n f1 =>
  Nat.xor 4 (f1 (n - 2) + 4)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A081348.P6915293337997341107

namespace A081348

/-- `∑[xor(4, a(n-2)+4)]` -/
def P6915293337997341107.Spec : Prop :=
  ∀ n, (P6915293337997341107.a n : ℤ) = A081348 n

end A081348

/-! ## A081348.P6698662943212434732

`(2-Δ[lcm(2, n)])²+n+1`
-/

namespace A081348.P6698662943212434732
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - ((f1 (n + 1) : ℤ) - (f1 n : ℤ))) ^ 2 + (n + 1 : ℤ)

end

end A081348.P6698662943212434732

namespace A081348

/-- `(2-Δ[lcm(2, n)])²+n+1` -/
def P6698662943212434732.Spec : Prop :=
  ∀ n, P6698662943212434732.a n = A081348 n

end A081348

/-! ## A081348.P13325460268120947193

`(n²%2+n)²+n+1`
-/

namespace A081348.P13325460268120947193
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n ^ 2 % 2 + n) ^ 2 + (n + 1)

end

end A081348.P13325460268120947193

namespace A081348

/-- `(n²%2+n)²+n+1` -/
def P13325460268120947193.Spec : Prop :=
  ∀ n, (P13325460268120947193.a n : ℤ) = A081348 n

end A081348

/-! ## A081348.P14293730540373399544

`(char[or(1, n)]+n)²+1+n`
-/

namespace A081348.P14293730540373399544
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = n then 1 else 0) + n) ^ 2 + 1 + n

end

end A081348.P14293730540373399544

namespace A081348

/-- `(char[or(1, n)]+n)²+1+n` -/
def P14293730540373399544.Spec : Prop :=
  ∀ n, (P14293730540373399544.a n : ℤ) = A081348 n

end A081348

/-! ## A081348.P12696063193234876555

`(1-or(1, n+1))²+n+1`
-/

namespace A081348.P12696063193234876555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - (Nat.lor 1 (n + 1) : ℤ)) ^ 2 + (n + 1 : ℤ)

end

end A081348.P12696063193234876555

namespace A081348

/-- `(1-or(1, n+1))²+n+1` -/
def P12696063193234876555.Spec : Prop :=
  ∀ n, P12696063193234876555.a n = A081348 n

end A081348

/-! ## A081348.P16801116385499542038

`xor(1, or(1, n+1))²+n+1`
-/

namespace A081348.P16801116385499542038
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 (Nat.lor 1 (n + 1)) ^ 2 + (n + 1)

end

end A081348.P16801116385499542038

namespace A081348

/-- `xor(1, or(1, n+1))²+n+1` -/
def P16801116385499542038.Spec : Prop :=
  ∀ n, (P16801116385499542038.a n : ℤ) = A081348 n

end A081348

/-! ## A081348.P12229558945597930782

`∑[2*n*2*and(1, n)+1]`
-/

namespace A081348.P12229558945597930782
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n * (2 * Nat.land 1 n) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A081348.P12229558945597930782

namespace A081348

/-- `∑[2*n*2*and(1, n)+1]` -/
def P12229558945597930782.Spec : Prop :=
  ∀ n, (P12229558945597930782.a n : ℤ) = A081348 n

end A081348

/-! ## A081348.P16814132797295600252

`∑[n+1]+C(xor(1, n+1), 2)`
-/

namespace A081348.P16814132797295600252
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + Nat.choose (Nat.xor 1 (n + 1)) 2

end

end A081348.P16814132797295600252

namespace A081348

/-- `∑[n+1]+C(xor(1, n+1), 2)` -/
def P16814132797295600252.Spec : Prop :=
  ∀ n, (P16814132797295600252.a n : ℤ) = A081348 n

end A081348

/-! ## A081348.P15177585001865458812

`(gcd(2, n)-(n+2))²+n+1`
-/

namespace A081348.P15177585001865458812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((Nat.gcd 2 n : ℤ) - (n + 2 : ℤ)) ^ 2 + (n + 1 : ℤ)

end

end A081348.P15177585001865458812

namespace A081348

/-- `(gcd(2, n)-(n+2))²+n+1` -/
def P15177585001865458812.Spec : Prop :=
  ∀ n, P15177585001865458812.a n = A081348 n

end A081348

/-! ## A081348.P4521614360282927941

`∑[2-a(n-1)]²+n+1` with `a(0)=0`
-/

namespace A081348.P4521614360282927941
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f1 =>
  2 - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 + (n + 1 : ℤ)

end

end A081348.P4521614360282927941

namespace A081348

/-- `∑[2-a(n-1)]²+n+1` -/
def P4521614360282927941.Spec : Prop :=
  ∀ n, P4521614360282927941.a n = A081348 n

end A081348

/-! ## A081348.P519386358508150711

`∑[4*floor(n/a(n-1))+1]` with `a(0)=1`
-/

namespace A081348.P519386358508150711
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  4 * ⌊(n : ℚ) / (f1 (n - 1) : ℚ)⌋ + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A081348.P519386358508150711

namespace A081348

/-- `∑[4*floor(n/a(n-1))+1]` -/
def P519386358508150711.Spec : Prop :=
  ∀ n, P519386358508150711.a n = A081348 n

end A081348

/-! ## A081348.P14630648718779575440

`∑[2*C(2*n, a(n-1))+1]` with `a(0)=1`
-/

namespace A081348.P14630648718779575440
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f1 =>
  2 * Nat.choose (2 * n) (f1 (n - 1)) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A081348.P14630648718779575440

namespace A081348

/-- `∑[2*C(2*n, a(n-1))+1]` -/
def P14630648718779575440.Spec : Prop :=
  ∀ n, (P14630648718779575440.a n : ℤ) = A081348 n

end A081348

/-! ## A081348.P7837518829006582595

`∑[a(n-2)+(2%a(n-2))^3]` with `a(0)=1, a(1)=5`
-/

namespace A081348.P7837518829006582595
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 5] fun n f1 =>
  f1 (n - 2) + (2 % f1 (n - 2)) ^ 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A081348.P7837518829006582595

namespace A081348

/-- `∑[a(n-2)+(2%a(n-2))^3]` -/
def P7837518829006582595.Spec : Prop :=
  ∀ n, (P7837518829006582595.a n : ℤ) = A081348 n

end A081348

/-! ## A081348.P5011452182586260393

`∑[∑[2-A161718(n)]]`
-/

namespace A081348.P5011452182586260393
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A161718 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A081348.P5011452182586260393

namespace A081348

/-- `∑[∑[2-A161718(n)]]` -/
def P5011452182586260393.Spec : Prop :=
  ∀ n, P5011452182586260393.a n = A081348 n

end A081348

/-!
# A081350: First column in maze array of natural numbers A081349.

The programs for A081350, the canonical program `A081350.P473027575218168536` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A081350 has offset 0).

The definition of A081350 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A081350.P473027575218168536

`abs(abs(1-n)*xor(1, n)-1)+1`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A081350

/-- `abs(abs(1-n)*xor(1, n)-1)+1` -/
def P473027575218168536.Spec : Prop :=
  ∀ n, P473027575218168536.a n = A081350 n

theorem P473027575218168536.correct : P473027575218168536.Spec := by
  intro n
  simp only [A081350]

end A081350

/-! ## A081350.P1030407082442700936

`A165900(A267458(n)+1)+n`
-/

namespace A081350.P1030407082442700936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165900 (A267458 n + 1).toNat + (n : ℤ)

end

end A081350.P1030407082442700936

namespace A081350

/-- `A165900(A267458(n)+1)+n` -/
def P1030407082442700936.Spec : Prop :=
  ∀ n, P1030407082442700936.a n = A081350 n

end A081350

/-! ## A081350.P17904641379760560068

`A028387(A097141(n-n%2))+n`
-/

namespace A081350.P17904641379760560068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028387 (A097141 (n - n % 2)).toNat + (n : ℤ)

end

end A081350.P17904641379760560068

namespace A081350

/-- `A028387(A097141(n-n%2))+n` -/
def P17904641379760560068.Spec : Prop :=
  ∀ n, P17904641379760560068.a n = A081350 n

end A081350

/-! ## A081350.P13772346067007512100

`A131179(n)+abs(1-A131179(n)+n)`
-/

namespace A081350.P13772346067007512100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131179 n + |1 - A131179 n + (n : ℤ)|

end

end A081350.P13772346067007512100

namespace A081350

/-- `A131179(n)+abs(1-A131179(n)+n)` -/
def P13772346067007512100.Spec : Prop :=
  ∀ n, P13772346067007512100.a n = A081350 n

end A081350

/-! ## A081350.P4013301182236439862

`∩[A253181(n+1)-1, A253181(n+1)]`
-/

namespace A081350.P4013301182236439862
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253181 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253181 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A081350.P4013301182236439862

namespace A081350

/-- `∩[A253181(n+1)-1, A253181(n+1)]` -/
def P4013301182236439862.Spec : Prop :=
  ∀ n, (P4013301182236439862.a n : ℤ) = A081350 n

end A081350

/-! ## A081350.P16939550535018615231

`A253181(eq[1, A253181(n+2)-A253181(n+1)]+1)`
-/

namespace A081350.P16939550535018615231
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253181 (n + 2) - A253181 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253181 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A081350.P16939550535018615231

namespace A081350

/-- `A253181(eq[1, A253181(n+2)-A253181(n+1)]+1)` -/
def P16939550535018615231.Spec : Prop :=
  ∀ n, P16939550535018615231.a n = A081350 n

end A081350

/-! ## A081350.P7739281307211934784

`2*A285192(A008805(n)+2)+n+1`
-/

namespace A081350.P7739281307211934784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A285192 (A008805 n + 2).toNat + (n + 1 : ℤ)

end

end A081350.P7739281307211934784

namespace A081350

/-- `2*A285192(A008805(n)+2)+n+1` -/
def P7739281307211934784.Spec : Prop :=
  ∀ n, P7739281307211934784.a n = A081350 n

end A081350

/-! ## A081350.P6648998899426741838

`A267458(A247375(n))+A247375(n)`
-/

namespace A081350.P6648998899426741838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267458 (A247375 n).toNat + A247375 n

end

end A081350.P6648998899426741838

namespace A081350

/-- `A267458(A247375(n))+A247375(n)` -/
def P6648998899426741838.Spec : Prop :=
  ∀ n, P6648998899426741838.a n = A081350 n

end A081350

/-! ## A081350.P12406313056746325437

`A081349(∑[n])`
-/

namespace A081350.P12406313056746325437
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081349 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A081350.P12406313056746325437

namespace A081350

/-- `A081349(∑[n])` -/
def P12406313056746325437.Spec : Prop :=
  ∀ n, P12406313056746325437.a n = A081350 n

end A081350

/-! ## A081350.P14982295594873210152

`record[xor(1, A025581(n))*A025581(n+1)]`
-/

namespace A081350.P14982295594873210152
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A025581 n) * A025581 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A081350.P14982295594873210152

namespace A081350

/-- `record[xor(1, A025581(n))*A025581(n+1)]` -/
def P14982295594873210152.Spec : Prop :=
  ∀ n, P14982295594873210152.a n = A081350 n

end A081350

/-! ## A081350.P2429919578842737112

`eq[A266659(n), A319290(n)]`
-/

namespace A081350.P2429919578842737112
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266659 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319290 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A081350.P2429919578842737112

namespace A081350

/-- `eq[A266659(n), A319290(n)]` -/
def P2429919578842737112.Spec : Prop :=
  ∀ n, (P2429919578842737112.a n : ℤ) = A081350 n

end A081350

/-! ## A081350.P11162026011841807658

`eq[A267848(n), A322996(n)]`
-/

namespace A081350.P11162026011841807658
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267848 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322996 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A081350.P11162026011841807658

namespace A081350

/-- `eq[A267848(n), A322996(n)]` -/
def P11162026011841807658.Spec : Prop :=
  ∀ n, (P11162026011841807658.a n : ℤ) = A081350 n

end A081350

/-! ## A081350.P15649146493481806788

`eq[A130716(n), A319290(n)]`
-/

namespace A081350.P15649146493481806788
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130716 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319290 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A081350.P15649146493481806788

namespace A081350

/-- `eq[A130716(n), A319290(n)]` -/
def P15649146493481806788.Spec : Prop :=
  ∀ n, (P15649146493481806788.a n : ℤ) = A081350 n

end A081350

/-! ## A081350.P4731499663013559579

`eq[A278105(n+1), A319290(n)]`
-/

namespace A081350.P4731499663013559579
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278105 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319290 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A081350.P4731499663013559579

namespace A081350

/-- `eq[A278105(n+1), A319290(n)]` -/
def P4731499663013559579.Spec : Prop :=
  ∀ n, (P4731499663013559579.a n : ℤ) = A081350 n

end A081350

/-!
# A081351: First row in square maze array of natural numbers A081349.

The programs for A081351, the canonical program `A081351.P2230129967712014800` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A081351 has offset 0).

The definition of A081351 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A081351.P2230129967712014800

`(n+1)*(n+2-(-1)^n)`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A081351

/-- `(n+1)*(n+2-(-1)^n)` -/
def P2230129967712014800.Spec : Prop :=
  ∀ n, P2230129967712014800.a n = A081351 n

theorem P2230129967712014800.correct : P2230129967712014800.Spec := by
  intro n
  simp only [A081351]

end A081351

/-! ## A081351.P8624826749056179419

`∑[record[xor(3, n)]^(n%2)]`
-/

namespace A081351.P8624826749056179419
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 3 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n) ^ (n % 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A081351.P8624826749056179419

namespace A081351

/-- `∑[record[xor(3, n)]^(n%2)]` -/
def P8624826749056179419.Spec : Prop :=
  ∀ n, (P8624826749056179419.a n : ℤ) = A081351 n

end A081351

/-! ## A081351.P5082486877224482756

`∑[and((-1)^n, record[xor(3, n)])]`
-/

namespace A081351.P5082486877224482756
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 3 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land ((-1) ^ n) (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A081351.P5082486877224482756

namespace A081351

/-- `∑[and((-1)^n, record[xor(3, n)])]` -/
def P5082486877224482756.Spec : Prop :=
  ∀ n, P5082486877224482756.a n = A081351 n

end A081351

/-! ## A081351.P3943325369764099756

`or(1, n+1)²-and(1, n)`
-/

namespace A081351.P3943325369764099756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.lor 1 (n + 1) ^ 2 : ℤ) - (Nat.land 1 n : ℤ)

end

end A081351.P3943325369764099756

namespace A081351

/-- `or(1, n+1)²-and(1, n)` -/
def P3943325369764099756.Spec : Prop :=
  ∀ n, P3943325369764099756.a n = A081351 n

end A081351

/-! ## A081351.P9358225841134815861

`record[-((n-1)*xor(1, -n))]`
-/

namespace A081351.P9358225841134815861
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(((n : ℤ) - 1) * Int.xor 1 (-(n : ℤ)))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A081351.P9358225841134815861

namespace A081351

/-- `record[-((n-1)*xor(1, -n))]` -/
def P9358225841134815861.Spec : Prop :=
  ∀ n, P9358225841134815861.a n = A081351 n

end A081351

/-! ## A081351.P16132115452359323894

`∑[gcd(4*n+3, (n+1)%2)]`
-/

namespace A081351.P16132115452359323894
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd (4 * n + 3) ((n + 1) % 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A081351.P16132115452359323894

namespace A081351

/-- `∑[gcd(4*n+3, (n+1)%2)]` -/
def P16132115452359323894.Spec : Prop :=
  ∀ n, (P16132115452359323894.a n : ℤ) = A081351 n

end A081351

/-! ## A081351.P11652016276949809219

`record[(2*n-xor(1, n))*(n-1)]`
-/

namespace A081351.P11652016276949809219
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((2 * n : ℤ) - (Nat.xor 1 n : ℤ)) * ((n : ℤ) - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A081351.P11652016276949809219

namespace A081351

/-- `record[(2*n-xor(1, n))*(n-1)]` -/
def P11652016276949809219.Spec : Prop :=
  ∀ n, P11652016276949809219.a n = A081351 n

end A081351

/-! ## A081351.P12857706029493784662

`lcm(n+1, xor(1, n+1))+n+1`
-/

namespace A081351.P12857706029493784662
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm (n + 1) (Nat.xor 1 (n + 1)) + (n + 1)

end

end A081351.P12857706029493784662

namespace A081351

/-- `lcm(n+1, xor(1, n+1))+n+1` -/
def P12857706029493784662.Spec : Prop :=
  ∀ n, (P12857706029493784662.a n : ℤ) = A081351 n

end A081351

/-! ## A081351.P5164487380446472325

`∑[(2*n+1)*2*and(1, n)+1]`
-/

namespace A081351.P5164487380446472325
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (2 * n + 1) * (2 * Nat.land 1 n) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A081351.P5164487380446472325

namespace A081351

/-- `∑[(2*n+1)*2*and(1, n)+1]` -/
def P5164487380446472325.Spec : Prop :=
  ∀ n, (P5164487380446472325.a n : ℤ) = A081351 n

end A081351

/-! ## A081351.P13618351304400986306

`(n+1)²+(n+1)*2*and(1, n)`
-/

namespace A081351.P13618351304400986306
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2 + (n + 1) * (2 * Nat.land 1 n)

end

end A081351.P13618351304400986306

namespace A081351

/-- `(n+1)²+(n+1)*2*and(1, n)` -/
def P13618351304400986306.Spec : Prop :=
  ∀ n, (P13618351304400986306.a n : ℤ) = A081351 n

end A081351

/-! ## A081351.P4506848836804676633

`record[(n-1)*(n+3-2*gcd(2, n))]`
-/

namespace A081351.P4506848836804676633
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 1) * ((n + 3 : ℤ) - (2 * Nat.gcd 2 n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A081351.P4506848836804676633

namespace A081351

/-- `record[(n-1)*(n+3-2*gcd(2, n))]` -/
def P4506848836804676633.Spec : Prop :=
  ∀ n, P4506848836804676633.a n = A081351 n

end A081351

/-! ## A081351.P13491690754743998836

`∑[a(n-2)+8%a(n-2)²]` with `a(0)=1, a(1)=7`
-/

namespace A081351.P13491690754743998836
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 7] fun n f1 =>
  f1 (n - 2) + 8 % f1 (n - 2) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A081351.P13491690754743998836

namespace A081351

/-- `∑[a(n-2)+8%a(n-2)²]` -/
def P13491690754743998836.Spec : Prop :=
  ∀ n, (P13491690754743998836.a n : ℤ) = A081351 n

end A081351

/-! ## A081351.P15296740874609379017

`(2*and(1, n)+n)*(n+1)+n+1`
-/

namespace A081351.P15296740874609379017
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (2 * Nat.land 1 n + n) * (n + 1) + (n + 1)

end

end A081351.P15296740874609379017

namespace A081351

/-- `(2*and(1, n)+n)*(n+1)+n+1` -/
def P15296740874609379017.Spec : Prop :=
  ∀ n, (P15296740874609379017.a n : ℤ) = A081351 n

end A081351

/-! ## A081351.P17385924225949239671

`∑[2-a(n-1)]/(n+1)^(-1)` with `a(0)=1, a(1)=3`
-/

namespace A081351.P17385924225949239671
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 3] fun n f1 =>
  2 - f1 (n - 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / (n + 1 : ℚ) ^ (-1 : ℤ)

end

end A081351.P17385924225949239671

namespace A081351

/-- `∑[2-a(n-1)]/(n+1)^(-1)` -/
def P17385924225949239671.Spec : Prop :=
  ∀ n, P17385924225949239671.a n = (A081351 n : ℚ)

end A081351

/-! ## A081351.P17000498608713557676

`∑[2*C(2*n+1, a(n-1))+1]` with `a(0)=1`
-/

namespace A081351.P17000498608713557676
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f1 =>
  2 * Nat.choose (2 * n + 1) (f1 (n - 1)) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A081351.P17000498608713557676

namespace A081351

/-- `∑[2*C(2*n+1, a(n-1))+1]` -/
def P17000498608713557676.Spec : Prop :=
  ∀ n, (P17000498608713557676.a n : ℤ) = A081351 n

end A081351

/-! ## A081351.P6534016335314514473

`∪[(2*n+1)², 4*(n+1)*(n+2)]`
-/

namespace A081351.P6534016335314514473
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (2 * n + 1) ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * ((n + 1) * (n + 2))

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∨ ∃ j, f2 j = x) n

end

end A081351.P6534016335314514473

namespace A081351

/-- `∪[(2*n+1)², 4*(n+1)*(n+2)]` -/
def P6534016335314514473.Spec : Prop :=
  ∀ n, (P6534016335314514473.a n : ℤ) = A081351 n

end A081351

/-! ## A081351.P7421412278231435678

`floor((n+1)*Δ[a(n-2)+2*n+1])` with `a(0)=0, a(1)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A081351.P7421412278231435678
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n f1 =>
  f1 (n - 2) + (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A081351.P7421412278231435678

namespace A081351

/-- `floor((n+1)*Δ[a(n-2)+2*n+1])` -/
def P7421412278231435678.Spec : Prop :=
  ∀ n, P7421412278231435678.a n = A081351 n

end A081351

/-! ## A081351.P11974403495662190597

`A081346(n+1)-1`
-/

namespace A081351.P11974403495662190597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081346 (n + 1) - 1

end

end A081351.P11974403495662190597

namespace A081351

/-- `A081346(n+1)-1` -/
def P11974403495662190597.Spec : Prop :=
  ∀ n, P11974403495662190597.a n = A081351 n

theorem P11974403495662190597.correct : P11974403495662190597.Spec := by
  intro n
  simp only [A081351, Nat.add_sub_cancel, A081351.P11974403495662190597.a, A081351.P2230129967712014800.a, A081346, A081346.P12676872757587478313.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A081351

/-! ## A081351.P3916669545499698878

`A165998(n)+n²+n`
-/

namespace A081351.P3916669545499698878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165998 n + (n ^ 2 + n : ℤ)

end

end A081351.P3916669545499698878

namespace A081351

/-- `A165998(n)+n²+n` -/
def P3916669545499698878.Spec : Prop :=
  ∀ n, P3916669545499698878.a n = A081351 n

theorem P3916669545499698878.correct : P3916669545499698878.Spec := by
  intro n
  simp only [A081351, Nat.add_sub_cancel, A081351.P3916669545499698878.a, A081351.P2230129967712014800.a, A165998, A165998.P13821127794823257504.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A081351

/-! ## A081351.P9061023262208897307

`(n+1)*A124356(n+1)/2`
-/

namespace A081351.P9061023262208897307
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 1 : ℤ) * A124356 (n + 1) : ℚ) / 2

end

end A081351.P9061023262208897307

namespace A081351

/-- `(n+1)*A124356(n+1)/2` -/
def P9061023262208897307.Spec : Prop :=
  ∀ n, P9061023262208897307.a n = (A081351 n : ℚ)

theorem P9061023262208897307.correct : P9061023262208897307.Spec := by
  intro n
  simp only [A081351, Nat.add_sub_cancel, A081351.P9061023262208897307.a, A081351.P2230129967712014800.a, A124356, A124356.P4259093803652856343.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A081351

/-!
# A081352: Main diagonal of square maze arrangement of natural numbers A081349.

The programs for A081352, the canonical program `A081352.P4828193286525077916` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A081352 has offset 0).

The definition of A081352 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A081352.P14190642754610419089

`2*C(n+2, 2)-(-1)^n`
-/

namespace A081352.P14190642754610419089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * Nat.choose (n + 2) 2 : ℤ) - (-1) ^ n

end

end A081352.P14190642754610419089

namespace A081352

/-- `2*C(n+2, 2)-(-1)^n` -/
def P14190642754610419089.Spec : Prop :=
  ∀ n, P14190642754610419089.a n = A081352 n

theorem P14190642754610419089.correct : P14190642754610419089.Spec := by
  intro n
  simp only [A081352, Nat.add_sub_cancel, A081352.P14190642754610419089.a, A081352.P4828193286525077916.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A081352

/-! ## A081352.P4828193286525077916

`(n+1)*(n+2)-(-1)^n`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A081352

/-- `(n+1)*(n+2)-(-1)^n` -/
def P4828193286525077916.Spec : Prop :=
  ∀ n, P4828193286525077916.a n = A081352 n

theorem P4828193286525077916.correct : P4828193286525077916.Spec := by
  intro n
  simp only [A081352]

end A081352

/-! ## A081352.P8396132640904256587

`∑[a(n-2)+4]` with `a(0)=1, a(1)=6, a(2)=4`
-/

namespace A081352.P8396132640904256587
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 6, 4] fun n f1 =>
  f1 (n - 2) + 4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A081352.P8396132640904256587

namespace A081352

/-- `∑[a(n-2)+4]` -/
def P8396132640904256587.Spec : Prop :=
  ∀ n, (P8396132640904256587.a n : ℤ) = A081352 n

end A081352

/-! ## A081352.P4549163776388117640

`or(1, or(1, (n+1)²)+n)`
-/

namespace A081352.P4549163776388117640
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (Nat.lor 1 ((n + 1) ^ 2) + n)

end

end A081352.P4549163776388117640

namespace A081352

/-- `or(1, or(1, (n+1)²)+n)` -/
def P4549163776388117640.Spec : Prop :=
  ∀ n, (P4549163776388117640.a n : ℤ) = A081352 n

end A081352

/-! ## A081352.P1919929562696509682

`xor(n+1, xor(n, n*(n+3)))`
-/

namespace A081352.P1919929562696509682
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor (n + 1) (Nat.xor n (n * (n + 3)))

end

end A081352.P1919929562696509682

namespace A081352

/-- `xor(n+1, xor(n, n*(n+3)))` -/
def P1919929562696509682.Spec : Prop :=
  ∀ n, (P1919929562696509682.a n : ℤ) = A081352 n

end A081352

/-! ## A081352.P11390550857397676906

`∑[∑[4-a(n-1)]]` with `a(0)=1, a(1)=5, a(2)=-2`
-/

namespace A081352.P11390550857397676906
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1, 5, -2] fun n f2 =>
  4 - f2 (n - 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A081352.P11390550857397676906

namespace A081352

/-- `∑[∑[4-a(n-1)]]` -/
def P11390550857397676906.Spec : Prop :=
  ∀ n, P11390550857397676906.a n = A081352 n

end A081352

/-! ## A081352.P12685973738178855816

`ogf((1+5x-3x^2+x^3)/(1-2x+2x^3-x^4))`
-/

namespace A081352.P12685973738178855816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 5, -3, 1] [1, -2, 0, 2, -1] n

end

end A081352.P12685973738178855816

namespace A081352

/-- `ogf((1+5x-3x^2+x^3)/(1-2x+2x^3-x^4))` -/
def P12685973738178855816.Spec : Prop :=
  ∀ n, P12685973738178855816.a n = A081352 n

end A081352

/-! ## A081352.P4856257365159300172

`Δ[a(n-2)+2*n²]` with `a(0)=0, a(1)=1`
-/

namespace A081352.P4856257365159300172
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n f1 =>
  f1 (n - 2) + 2 * n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A081352.P4856257365159300172

namespace A081352

/-- `Δ[a(n-2)+2*n²]` -/
def P4856257365159300172.Spec : Prop :=
  ∀ n, P4856257365159300172.a n = A081352 n

end A081352

/-! ## A081352.P8714497321792765623

`floor(2*(n+1)²-a(n-1))` with `a(0)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A081352.P8714497321792765623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (2 * (n + 1) ^ 2 : ℤ) - a (n - 1)

end

end A081352.P8714497321792765623

namespace A081352

/-- `floor(2*(n+1)²-a(n-1))` -/
def P8714497321792765623.Spec : Prop :=
  ∀ n, P8714497321792765623.a n = A081352 n

theorem P8714497321792765623.correct : P8714497321792765623.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A081352, Nat.add_sub_cancel, A081352.P8714497321792765623.a, A081352.P4828193286525077916.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A081352, Nat.add_sub_cancel, A081352.P8714497321792765623.a, A081352.P4828193286525077916.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A081352

/-! ## A081352.P10692779732281435385

`2*((n+1)²-a(n-1)/2)` with `a(0)=1`
-/

namespace A081352.P10692779732281435385
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  2 * (((n + 1) ^ 2 : ℚ) - a (n - 1) / 2)

end

end A081352.P10692779732281435385

namespace A081352

/-- `2*((n+1)²-a(n-1)/2)` -/
def P10692779732281435385.Spec : Prop :=
  ∀ n, P10692779732281435385.a n = (A081352 n : ℚ)

theorem P10692779732281435385.correct : P10692779732281435385.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A081352, Nat.add_sub_cancel, A081352.P10692779732281435385.a, A081352.P4828193286525077916.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A081352, Nat.add_sub_cancel, A081352.P10692779732281435385.a, A081352.P4828193286525077916.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A081352

/-! ## A081352.P4718219623420475730

`abs(or(2, (n+3)*(n+1))-(n+2))`
-/

namespace A081352.P4718219623420475730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(Nat.lor 2 ((n + 3) * (n + 1)) : ℤ) - (n + 2 : ℤ)|

end

end A081352.P4718219623420475730

namespace A081352

/-- `abs(or(2, (n+3)*(n+1))-(n+2))` -/
def P4718219623420475730.Spec : Prop :=
  ∀ n, P4718219623420475730.a n = A081352 n

end A081352

/-! ## A081352.P3474235233081020245

`floor(2*n*(n+2)+2-a(n-1))` with `a(0)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A081352.P3474235233081020245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (2 * (n * (n + 2)) : ℤ) + (2 - a (n - 1))

end

end A081352.P3474235233081020245

namespace A081352

/-- `floor(2*n*(n+2)+2-a(n-1))` -/
def P3474235233081020245.Spec : Prop :=
  ∀ n, P3474235233081020245.a n = A081352 n

theorem P3474235233081020245.correct : P3474235233081020245.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A081352, Nat.add_sub_cancel, A081352.P3474235233081020245.a, A081352.P4828193286525077916.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A081352, Nat.add_sub_cancel, A081352.P3474235233081020245.a, A081352.P4828193286525077916.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A081352

/-! ## A081352.P8348388034674347659

`Δ[A179783(n)/2]`
-/

namespace A081352.P8348388034674347659
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A179783 n : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A081352.P8348388034674347659

namespace A081352

/-- `Δ[A179783(n)/2]` -/
def P8348388034674347659.Spec : Prop :=
  ∀ n, P8348388034674347659.a n = (A081352 n : ℚ)

end A081352

/-! ## A081352.P12026928444406772461

`xor(A028552(n), A038712(n+1))`
-/

namespace A081352.P12026928444406772461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A028552 n) (A038712 (n + 1))

end

end A081352.P12026928444406772461

namespace A081352

/-- `xor(A028552(n), A038712(n+1))` -/
def P12026928444406772461.Spec : Prop :=
  ∀ n, P12026928444406772461.a n = A081352 n

end A081352

/-! ## A081352.P12753051461479048690

`∪[A054569(n+1), A082108(n)]`
-/

namespace A081352.P12753051461479048690
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054569 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082108 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A081352.P12753051461479048690

namespace A081352

/-- `∪[A054569(n+1), A082108(n)]` -/
def P12753051461479048690.Spec : Prop :=
  ∀ n, (P12753051461479048690.a n : ℤ) = A081352 n

end A081352

/-! ## A081352.P4783997694449271305

`Δ[∑[∑[2*n]]+gcd(2, n)]`
-/

namespace A081352.P4783997694449271305
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + Nat.gcd 2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A081352.P4783997694449271305

namespace A081352

/-- `Δ[∑[∑[2*n]]+gcd(2, n)]` -/
def P4783997694449271305.Spec : Prop :=
  ∀ n, P4783997694449271305.a n = A081352 n

end A081352

/-! ## A081352.P17537390597996566439

`Δ[∑[∑[2*n]]-and(1, n)]`
-/

namespace A081352.P17537390597996566439
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) - (Nat.land 1 n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A081352.P17537390597996566439

namespace A081352

/-- `Δ[∑[∑[2*n]]-and(1, n)]` -/
def P17537390597996566439.Spec : Prop :=
  ∀ n, P17537390597996566439.a n = A081352 n

end A081352

/-! ## A081352.P6681070653371780318

`A264754(A014601(n))`
-/

namespace A081352.P6681070653371780318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264754 (A014601 n).toNat

end

end A081352.P6681070653371780318

namespace A081352

/-- `A264754(A014601(n))` -/
def P6681070653371780318.Spec : Prop :=
  ∀ n, P6681070653371780318.a n = A081352 n

end A081352

/-! ## A081352.P15746761203130907381

`A004273(A084263(n+1))`
-/

namespace A081352.P15746761203130907381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (A084263 (n + 1)).toNat

end

end A081352.P15746761203130907381

namespace A081352

/-- `A004273(A084263(n+1))` -/
def P15746761203130907381.Spec : Prop :=
  ∀ n, P15746761203130907381.a n = A081352 n

end A081352

/-! ## A081352.P4241906054838196527

`A128201(A178218(n+1))`
-/

namespace A081352.P4241906054838196527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128201 (A178218 (n + 1)).toNat

end

end A081352.P4241906054838196527

namespace A081352

/-- `A128201(A178218(n+1))` -/
def P4241906054838196527.Spec : Prop :=
  ∀ n, P4241906054838196527.a n = A081352 n

end A081352

/-!
# A081353: Diagonal of square maze arrangement of natural numbers A081349.

The programs for A081353, the canonical program `A081353.P7061983661996838669` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A081353 has offset 0).

The definition of A081353 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A081353.P13888749417572446683

`2*C(n+2, 2)+(-1)^n`
-/

namespace A081353.P13888749417572446683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * Nat.choose (n + 2) 2 : ℤ) + (-1) ^ n

end

end A081353.P13888749417572446683

namespace A081353

/-- `2*C(n+2, 2)+(-1)^n` -/
def P13888749417572446683.Spec : Prop :=
  ∀ n, P13888749417572446683.a n = A081353 n

theorem P13888749417572446683.correct : P13888749417572446683.Spec := by
  intro n
  simp only [A081353, Nat.add_sub_cancel, A081353.P13888749417572446683.a, A081353.P7061983661996838669.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A081353

/-! ## A081353.P7061983661996838669

`(n+1)*(n+2)+(-1)^n`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A081353

/-- `(n+1)*(n+2)+(-1)^n` -/
def P7061983661996838669.Spec : Prop :=
  ∀ n, P7061983661996838669.a n = A081353 n

theorem P7061983661996838669.correct : P7061983661996838669.Spec := by
  intro n
  simp only [A081353]

end A081353

/-! ## A081353.P8462965866101484091

`∑[a(n-2)+4]` with `a(0)=3, a(1)=2, a(2)=8`
-/

namespace A081353.P8462965866101484091
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [3, 2, 8] fun n f1 =>
  f1 (n - 2) + 4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A081353.P8462965866101484091

namespace A081353

/-- `∑[a(n-2)+4]` -/
def P8462965866101484091.Spec : Prop :=
  ∀ n, (P8462965866101484091.a n : ℤ) = A081353 n

end A081353

/-! ## A081353.P9836553031466754598

`or(1, ∑[or(3, 2*n)]-1)`
-/

namespace A081353.P9836553031466754598
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 3 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 1)

end

end A081353.P9836553031466754598

namespace A081353

/-- `or(1, ∑[or(3, 2*n)]-1)` -/
def P9836553031466754598.Spec : Prop :=
  ∀ n, P9836553031466754598.a n = A081353 n

end A081353

/-! ## A081353.P16889100917523874604

`or(1, or(1, n)+(n+1)²)`
-/

namespace A081353.P16889100917523874604
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (Nat.lor 1 n + (n + 1) ^ 2)

end

end A081353.P16889100917523874604

namespace A081353

/-- `or(1, or(1, n)+(n+1)²)` -/
def P16889100917523874604.Spec : Prop :=
  ∀ n, (P16889100917523874604.a n : ℤ) = A081353 n

end A081353

/-! ## A081353.P741711743750080126

`abs(n+2-xor(1, (n+2)²))`
-/

namespace A081353.P741711743750080126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(n + 2 : ℤ) - (Nat.xor 1 ((n + 2) ^ 2) : ℤ)|

end

end A081353.P741711743750080126

namespace A081353

/-- `abs(n+2-xor(1, (n+2)²))` -/
def P741711743750080126.Spec : Prop :=
  ∀ n, P741711743750080126.a n = A081353 n

end A081353

/-! ## A081353.P3853674461897514510

`ogf((3-x+3x^2-x^3)/(1-2x+2x^3-x^4))`
-/

namespace A081353.P3853674461897514510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [3, -1, 3, -1] [1, -2, 0, 2, -1] n

end

end A081353.P3853674461897514510

namespace A081353

/-- `ogf((3-x+3x^2-x^3)/(1-2x+2x^3-x^4))` -/
def P3853674461897514510.Spec : Prop :=
  ∀ n, P3853674461897514510.a n = A081353 n

end A081353

/-! ## A081353.P16853301208738530345

`Δ[a(n-2)+2*n²]` with `a(0)=0, a(1)=3`
-/

namespace A081353.P16853301208738530345
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 3] fun n f1 =>
  f1 (n - 2) + 2 * n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A081353.P16853301208738530345

namespace A081353

/-- `Δ[a(n-2)+2*n²]` -/
def P16853301208738530345.Spec : Prop :=
  ∀ n, P16853301208738530345.a n = A081353 n

end A081353

/-! ## A081353.P11657322829957236983

`xor(n+1, xor(n, ∑[2*(n+1)]))`
-/

namespace A081353.P11657322829957236983
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor (n + 1) (Nat.xor n (∑ j ∈ Finset.range (n + 1), f1 j))

end

end A081353.P11657322829957236983

namespace A081353

/-- `xor(n+1, xor(n, ∑[2*(n+1)]))` -/
def P11657322829957236983.Spec : Prop :=
  ∀ n, (P11657322829957236983.a n : ℤ) = A081353 n

end A081353

/-! ## A081353.P12394817679233559503

`floor(n-∑[a(n-2)-4])` with `a(0)=-3, a(1)=-1`

`floor` is left out, it is the identity on integers.
-/

namespace A081353.P12394817679233559503
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [-3, -1] fun n f1 =>
  f1 (n - 2) - 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A081353.P12394817679233559503

namespace A081353

/-- `floor(n-∑[a(n-2)-4])` -/
def P12394817679233559503.Spec : Prop :=
  ∀ n, P12394817679233559503.a n = A081353 n

end A081353

/-! ## A081353.P2374795774731648222

`floor(4*n+a(n-2)+2)` with `a(0)=3, a(1)=5`

`floor` is left out, it is the identity on integers.
-/

namespace A081353.P2374795774731648222
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [3, 5] fun n a =>
  4 * n + (a (n - 2) + 2)

end

end A081353.P2374795774731648222

namespace A081353

/-- `floor(4*n+a(n-2)+2)` -/
def P2374795774731648222.Spec : Prop :=
  ∀ n, (P2374795774731648222.a n : ℤ) = A081353 n

theorem P2374795774731648222.correct : P2374795774731648222.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A081353, Nat.add_sub_cancel, A081353.P2374795774731648222.a, A081353.P7061983661996838669.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 2 =>
      have h2 := ih m (by omega)
      simp only [A081353, Nat.add_sub_cancel, A081353.P2374795774731648222.a, A081353.P7061983661996838669.a, SequenceMachineLib.memo_apply] at h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 2 = m by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h2 ⊢
      rw [h2]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A081353

/-! ## A081353.P7390396749870285474

`∑[2-(a(n-1)-4*n)]` with `a(0)=3, a(1)=2`
-/

namespace A081353.P7390396749870285474
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [3, 2] fun n f1 =>
  2 - (f1 (n - 1) - (4 * n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A081353.P7390396749870285474

namespace A081353

/-- `∑[2-(a(n-1)-4*n)]` -/
def P7390396749870285474.Spec : Prop :=
  ∀ n, P7390396749870285474.a n = A081353 n

end A081353

/-! ## A081353.P5313515643385775884

`xor(xor(n, n+1), (n+1)*(n+2))`
-/

namespace A081353.P5313515643385775884
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor (Nat.xor n (n + 1)) ((n + 1) * (n + 2))

end

end A081353.P5313515643385775884

namespace A081353

/-- `xor(xor(n, n+1), (n+1)*(n+2))` -/
def P5313515643385775884.Spec : Prop :=
  ∀ n, (P5313515643385775884.a n : ℤ) = A081353 n

end A081353

/-! ## A081353.P12516704708205165051

`2*((n+1)²-a(n-1)/2)` with `a(0)=3`
-/

namespace A081353.P12516704708205165051
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [3] fun n a =>
  2 * (((n + 1) ^ 2 : ℚ) - a (n - 1) / 2)

end

end A081353.P12516704708205165051

namespace A081353

/-- `2*((n+1)²-a(n-1)/2)` -/
def P12516704708205165051.Spec : Prop :=
  ∀ n, P12516704708205165051.a n = (A081353 n : ℚ)

theorem P12516704708205165051.correct : P12516704708205165051.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A081353, Nat.add_sub_cancel, A081353.P12516704708205165051.a, A081353.P7061983661996838669.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A081353, Nat.add_sub_cancel, A081353.P12516704708205165051.a, A081353.P7061983661996838669.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A081353

/-! ## A081353.P13515505392848184096

`abs(a(n-2)+2*(2*n+1))` with `a(0)=3, a(1)=5`
-/

namespace A081353.P13515505392848184096
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [3, 5] fun n a =>
  a (n - 2) + 2 * (2 * n + 1)

end

end A081353.P13515505392848184096

namespace A081353

/-- `abs(a(n-2)+2*(2*n+1))` -/
def P13515505392848184096.Spec : Prop :=
  ∀ n, (P13515505392848184096.a n : ℤ) = A081353 n

theorem P13515505392848184096.correct : P13515505392848184096.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A081353, Nat.add_sub_cancel, A081353.P13515505392848184096.a, A081353.P7061983661996838669.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 2 =>
      have h2 := ih m (by omega)
      simp only [A081353, Nat.add_sub_cancel, A081353.P13515505392848184096.a, A081353.P7061983661996838669.a, SequenceMachineLib.memo_apply] at h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 2 = m by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h2 ⊢
      rw [h2]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A081353

/-! ## A081353.P1201037996118294399

`ceil(a(n-2)+2*(2*n+1))` with `a(0)=3, a(1)=5`

`ceil` is left out, it is the identity on integers.
-/

namespace A081353.P1201037996118294399
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [3, 5] fun n a =>
  a (n - 2) + 2 * (2 * n + 1)

end

end A081353.P1201037996118294399

namespace A081353

/-- `ceil(a(n-2)+2*(2*n+1))` -/
def P1201037996118294399.Spec : Prop :=
  ∀ n, (P1201037996118294399.a n : ℤ) = A081353 n

theorem P1201037996118294399.correct : P1201037996118294399.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A081353, Nat.add_sub_cancel, A081353.P1201037996118294399.a, A081353.P7061983661996838669.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 2 =>
      have h2 := ih m (by omega)
      simp only [A081353, Nat.add_sub_cancel, A081353.P1201037996118294399.a, A081353.P7061983661996838669.a, SequenceMachineLib.memo_apply] at h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 2 = m by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h2 ⊢
      rw [h2]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A081353

/-! ## A081353.P7197703219360459384

`round(a(n-2)+2*(2*n+1))` with `a(0)=3, a(1)=5`

`round` is left out, it is the identity on integers.
-/

namespace A081353.P7197703219360459384
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [3, 5] fun n a =>
  a (n - 2) + 2 * (2 * n + 1)

end

end A081353.P7197703219360459384

namespace A081353

/-- `round(a(n-2)+2*(2*n+1))` -/
def P7197703219360459384.Spec : Prop :=
  ∀ n, (P7197703219360459384.a n : ℤ) = A081353 n

theorem P7197703219360459384.correct : P7197703219360459384.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A081353, Nat.add_sub_cancel, A081353.P7197703219360459384.a, A081353.P7061983661996838669.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 2 =>
      have h2 := ih m (by omega)
      simp only [A081353, Nat.add_sub_cancel, A081353.P7197703219360459384.a, A081353.P7061983661996838669.a, SequenceMachineLib.memo_apply] at h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 2 = m by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h2 ⊢
      rw [h2]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A081353

/-! ## A081353.P12876487483994581637

`floor(2/(1/(n+1))²-a(n-1))` with `a(0)=3`
-/

namespace A081353.P12876487483994581637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  ⌊2 / (1 / (n + 1 : ℚ)) ^ 2 - (a (n - 1) : ℚ)⌋

end

end A081353.P12876487483994581637

namespace A081353

/-- `floor(2/(1/(n+1))²-a(n-1))` -/
def P12876487483994581637.Spec : Prop :=
  ∀ n, P12876487483994581637.a n = A081353 n

end A081353

/-! ## A081353.P16685968420303075014

`floor((n+1)²+(n+1)²-a(n-1))` with `a(0)=3`

`floor` is left out, it is the identity on integers.
-/

namespace A081353.P16685968420303075014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  ((n + 1) ^ 2 : ℤ) + (((n + 1) ^ 2 : ℤ) - a (n - 1))

end

end A081353.P16685968420303075014

namespace A081353

/-- `floor((n+1)²+(n+1)²-a(n-1))` -/
def P16685968420303075014.Spec : Prop :=
  ∀ n, P16685968420303075014.a n = A081353 n

theorem P16685968420303075014.correct : P16685968420303075014.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A081353, Nat.add_sub_cancel, A081353.P16685968420303075014.a, A081353.P7061983661996838669.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A081353, Nat.add_sub_cancel, A081353.P16685968420303075014.a, A081353.P7061983661996838669.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A081353

/-! ## A081353.P16256579598498604859

`Δ[∑[∑[2*n]]-gcd(2, n)]`
-/

namespace A081353.P16256579598498604859
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) - (Nat.gcd 2 n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A081353.P16256579598498604859

namespace A081353

/-- `Δ[∑[∑[2*n]]-gcd(2, n)]` -/
def P16256579598498604859.Spec : Prop :=
  ∀ n, P16256579598498604859.a n = A081353 n

end A081353

/-!
# A081354: Numbers k such that sigma(k^2) modulo 4 = 3.

The programs for A081354, the canonical program `A081354.P13958200353524548950` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A081354 has offset 1).

The definition of A081354 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5065 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A081354.P13958200353524548950

`lt[1, A065764(n+1)%4]+1`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A081354

/-- `lt[1, A065764(n+1)%4]+1` -/
def P13958200353524548950.Spec : Prop :=
  ∀ n, (P13958200353524548950.a n : ℤ) = A081354 (n + 1)

theorem P13958200353524548950.correct : P13958200353524548950.Spec := by
  intro n
  simp only [A081354, Nat.add_sub_cancel]

end A081354

/-! ## A081354.P10335733359128966309

`eq[1, A010146(A063014(n)+A010146(n))]`
-/

namespace A081354.P10335733359128966309
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010146 (A063014 n + A010146 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A081354.P10335733359128966309

namespace A081354

/-- `eq[1, A010146(A063014(n)+A010146(n))]` -/
def P10335733359128966309.Spec : Prop :=
  ∀ n, (P10335733359128966309.a n : ℤ) = A081354 (n + 1)

end A081354

/-! ## A081354.P13078719591917698961

`eq[1, A010169(A063014(n)+A010169(n))]`
-/

namespace A081354.P13078719591917698961
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010169 (A063014 n + A010169 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A081354.P13078719591917698961

namespace A081354

/-- `eq[1, A010169(A063014(n)+A010169(n))]` -/
def P13078719591917698961.Spec : Prop :=
  ∀ n, (P13078719591917698961.a n : ℤ) = A081354 (n + 1)

end A081354

/-! ## A081354.P13625773712104239478

`eq[1, A010170(A063014(n)+A010170(n))]`
-/

namespace A081354.P13625773712104239478
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010170 (A063014 n + A010170 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A081354.P13625773712104239478

namespace A081354

/-- `eq[1, A010170(A063014(n)+A010170(n))]` -/
def P13625773712104239478.Spec : Prop :=
  ∀ n, (P13625773712104239478.a n : ℤ) = A081354 (n + 1)

end A081354

/-! ## A081354.P3787695127457892828

`eq[A040048(n), A040048(A063014(n)+1)]`
-/

namespace A081354.P3787695127457892828
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040048 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040048 (A063014 n + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A081354.P3787695127457892828

namespace A081354

/-- `eq[A040048(n), A040048(A063014(n)+1)]` -/
def P3787695127457892828.Spec : Prop :=
  ∀ n, (P3787695127457892828.a n : ℤ) = A081354 (n + 1)

end A081354

/-! ## A081354.P17640044875940398857

`eq[A040080(n), A040080(A063014(n)+1)]`
-/

namespace A081354.P17640044875940398857
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040080 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040080 (A063014 n + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A081354.P17640044875940398857

namespace A081354

/-- `eq[A040080(n), A040080(A063014(n)+1)]` -/
def P17640044875940398857.Spec : Prop :=
  ∀ n, (P17640044875940398857.a n : ℤ) = A081354 (n + 1)

end A081354

/-! ## A081354.P18192808963387500206

`eq[1, A010199(A063014(n)+A010199(n))]`
-/

namespace A081354.P18192808963387500206
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010199 (A063014 n + A010199 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A081354.P18192808963387500206

namespace A081354

/-- `eq[1, A010199(A063014(n)+A010199(n))]` -/
def P18192808963387500206.Spec : Prop :=
  ∀ n, (P18192808963387500206.a n : ℤ) = A081354 (n + 1)

end A081354

/-! ## A081354.P5396940669859802569

`eq[1, A010200(A063014(n)+A010200(n))]`
-/

namespace A081354.P5396940669859802569
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010200 (A063014 n + A010200 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A081354.P5396940669859802569

namespace A081354

/-- `eq[1, A010200(A063014(n)+A010200(n))]` -/
def P5396940669859802569.Spec : Prop :=
  ∀ n, (P5396940669859802569.a n : ℤ) = A081354 (n + 1)

end A081354

/-! ## A081354.P11665204456537211653

`eq[1, A010201(A063014(n)+A010201(n))]`
-/

namespace A081354.P11665204456537211653
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010201 (A063014 n + A010201 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A081354.P11665204456537211653

namespace A081354

/-- `eq[1, A010201(A063014(n)+A010201(n))]` -/
def P11665204456537211653.Spec : Prop :=
  ∀ n, (P11665204456537211653.a n : ℤ) = A081354 (n + 1)

end A081354

/-! ## A081354.P9173745302143214927

`eq[A040120(n), A040120(A063014(n)+1)]`
-/

namespace A081354.P9173745302143214927
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040120 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040120 (A063014 n + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A081354.P9173745302143214927

namespace A081354

/-- `eq[A040120(n), A040120(A063014(n)+1)]` -/
def P9173745302143214927.Spec : Prop :=
  ∀ n, (P9173745302143214927.a n : ℤ) = A081354 (n + 1)

end A081354

/-! ## A081354.P501922894108276412

`eq[A040168(n), A040168(A063014(n)+1)]`
-/

namespace A081354.P501922894108276412
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040168 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040168 (A063014 n + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A081354.P501922894108276412

namespace A081354

/-- `eq[A040168(n), A040168(A063014(n)+1)]` -/
def P501922894108276412.Spec : Prop :=
  ∀ n, (P501922894108276412.a n : ℤ) = A081354 (n + 1)

end A081354

/-! ## A081354.P7923659664632132851

`record[A009531(2*n+1)*A209662(n+2)]`
-/

namespace A081354.P7923659664632132851
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009531 (2 * n + 1) * A209662 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A081354.P7923659664632132851

namespace A081354

/-- `record[A009531(2*n+1)*A209662(n+2)]` -/
def P7923659664632132851.Spec : Prop :=
  ∀ n, P7923659664632132851.a n = A081354 (n + 1)

end A081354

/-! ## A081354.P3504852964144412017

`eq[A009531(2*n+1), A209661(n+2)]+2`
-/

namespace A081354.P3504852964144412017
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009531 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209661 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 2

end

end A081354.P3504852964144412017

namespace A081354

/-- `eq[A009531(2*n+1), A209661(n+2)]+2` -/
def P3504852964144412017.Spec : Prop :=
  ∀ n, (P3504852964144412017.a n : ℤ) = A081354 (n + 1)

end A081354

/-! ## A081354.P877193828428114554

`eq[3, A065764(n*a(n-1))%4]` with `a(0)=59`
-/

namespace A081354.P877193828428114554
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.rec [59] fun n f2 =>
  Int.tmod (A065764 ((n : ℤ) * f2 (n - 1)).toNat) 4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A081354.P877193828428114554

namespace A081354

/-- `eq[3, A065764(n*a(n-1))%4]` -/
def P877193828428114554.Spec : Prop :=
  ∀ n, (P877193828428114554.a n : ℤ) = A081354 (n + 1)

end A081354

/-! ## A081354.P3015144448287061243

`eq[3, ∑{d}[n², #]%4]`
-/

namespace A081354.P3015144448287061243
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ d ∈ Nat.divisors (f3 n), d) % 4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A081354.P3015144448287061243

namespace A081354

/-- `eq[3, ∑{d}[n², #]%4]` -/
def P3015144448287061243.Spec : Prop :=
  ∀ n, (P3015144448287061243.a n : ℤ) = A081354 (n + 1)

end A081354

/-! ## A081354.P2163797793970128514

`eq[2, and(2, ∑{d}[n², #])]`
-/

namespace A081354.P2163797793970128514
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 2 (∑ d ∈ Nat.divisors (f3 n), d)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A081354.P2163797793970128514

namespace A081354

/-- `eq[2, and(2, ∑{d}[n², #])]` -/
def P2163797793970128514.Spec : Prop :=
  ∀ n, (P2163797793970128514.a n : ℤ) = A081354 (n + 1)

end A081354

/-! ## A081354.P10493505393710823609

`lt[and(2, ∑{d}[n², #]+2), 1]`
-/

namespace A081354.P10493505393710823609
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 2 (∑ d ∈ Nat.divisors (f2 n), d + 2)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f3 j) n

end

end A081354.P10493505393710823609

namespace A081354

/-- `lt[and(2, ∑{d}[n², #]+2), 1]` -/
def P10493505393710823609.Spec : Prop :=
  ∀ n, (P10493505393710823609.a n : ℤ) = A081354 (n + 1)

end A081354

/-! ## A081354.P15267858109893316283

`lt[1, A000203((n+1)²)%4]+1`
-/

namespace A081354.P15267858109893316283
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000203 ((n + 1) ^ 2)) 4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A081354.P15267858109893316283

namespace A081354

/-- `lt[1, A000203((n+1)²)%4]+1` -/
def P15267858109893316283.Spec : Prop :=
  ∀ n, (P15267858109893316283.a n : ℤ) = A081354 (n + 1)

end A081354

/-! ## A081354.P14968238280735632358

`eq[3, A000203((n+2)²)%4]+2`
-/

namespace A081354.P14968238280735632358
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000203 ((n + 2) ^ 2)) 4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2

end

end A081354.P14968238280735632358

namespace A081354

/-- `eq[3, A000203((n+2)²)%4]+2` -/
def P14968238280735632358.Spec : Prop :=
  ∀ n, (P14968238280735632358.a n : ℤ) = A081354 (n + 1)

end A081354

/-! ## A081354.P2757150165619395233

`lt[and(2, -A000203(n*(n+2)+1)), 2]+1`
-/

namespace A081354.P2757150165619395233
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 2 (-A000203 (n * (n + 2) + 1))

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A081354.P2757150165619395233

namespace A081354

/-- `lt[and(2, -A000203(n*(n+2)+1)), 2]+1` -/
def P2757150165619395233.Spec : Prop :=
  ∀ n, (P2757150165619395233.a n : ℤ) = A081354 (n + 1)

end A081354

/-!
# A081356: Least m such that A081355(m)=LD(m,m^2)=n, where LD(x,y) denotes the Levenshtein distance between x and y in decimal representation.

The programs for A081356, there is no canonical definition to state claims against.
-/

/-! ## A081356.P4495077040941367055

`and(A358443(2*n+1)+19, A059398(n))`
-/

namespace A081356.P4495077040941367055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A358443 (2 * n + 1) + 19) (A059398 n)

end

end A081356.P4495077040941367055

/-! ## A081356.P10120529103343980707

`A029931(A302583(n))+A005165(n)`
-/

namespace A081356.P10120529103343980707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029931 (A302583 n).toNat + A005165 n

end

end A081356.P10120529103343980707

/-!
# A081358: E.g.f.: log((1+x) / (1-x)) / (2*(1-x)).

The programs for A081358, the canonical program `A081358.P15474051264272191608` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A081358 has offset 0).

The definition of A081358 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A081358.P15474051264272191608

`n*a(n-1)+((-1)^(n+1)+1)/2*(n-1)!` with `a(0)=0`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A081358

/-- `n*a(n-1)+((-1)^(n+1)+1)/2*(n-1)!` -/
def P15474051264272191608.Spec : Prop :=
  ∀ n, P15474051264272191608.a n = (A081358 n : ℚ)

end A081358

/-! ## A081358.P8332811026999541633

`A000254(n)-A092691(n)`
-/

namespace A081358.P8332811026999541633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000254 n - A092691 n

end

end A081358.P8332811026999541633

namespace A081358

/-- `A000254(n)-A092691(n)` -/
def P8332811026999541633.Spec : Prop :=
  ∀ n, P8332811026999541633.a n = A081358 n

end A081358

/-! ## A081358.P7893939463729532510

`A186768(n)+A186763(n)`
-/

namespace A081358.P7893939463729532510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186768 n + A186763 n

end

end A081358.P7893939463729532510

namespace A081358

/-- `A186768(n)+A186763(n)` -/
def P7893939463729532510.Spec : Prop :=
  ∀ n, P7893939463729532510.a n = A081358 n

end A081358

/-! ## A081358.P10193531912479350808

`abs(A081048(n))-A092691(n)`
-/

namespace A081358.P10193531912479350808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A081048 n| - A092691 n

end

end A081358.P10193531912479350808

namespace A081358

/-- `abs(A081048(n))-A092691(n)` -/
def P10193531912479350808.Spec : Prop :=
  ∀ n, P10193531912479350808.a n = A081358 n

end A081358

/-! ## A081358.P3124652244905309377

`A067176(∑[n])-A092691(n)`
-/

namespace A081358.P3124652244905309377
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067176 (∑ j ∈ Finset.range (n + 1), f1 j) - A092691 n

end

end A081358.P3124652244905309377

namespace A081358

/-- `A067176(∑[n])-A092691(n)` -/
def P3124652244905309377.Spec : Prop :=
  ∀ n, P3124652244905309377.a n = A081358 n

end A081358

/-! ## A081358.P9323894836885854566

`record[A067176(n)]-A092691(n)`
-/

namespace A081358.P9323894836885854566
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067176 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A092691 n

end

end A081358.P9323894836885854566

namespace A081358

/-- `record[A067176(n)]-A092691(n)` -/
def P9323894836885854566.Spec : Prop :=
  ∀ n, P9323894836885854566.a n = A081358 n

end A081358

/-! ## A081358.P17618878635344709171

`A302611(n+1)-A092692(n)`
-/

namespace A081358.P17618878635344709171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302611 (n + 1) - A092692 n

end

end A081358.P17618878635344709171

namespace A081358

/-- `A302611(n+1)-A092692(n)` -/
def P17618878635344709171.Spec : Prop :=
  ∀ n, P17618878635344709171.a n = A081358 n

end A081358

/-! ## A081358.P18390383062236091413

`A186763(n)+A121633(A028310(n))-A184958(n)`
-/

namespace A081358.P18390383062236091413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186763 n + (A121633 (A028310 n).toNat - A184958 n)

end

end A081358.P18390383062236091413

namespace A081358

/-- `A186763(n)+A121633(A028310(n))-A184958(n)` -/
def P18390383062236091413.Spec : Prop :=
  ∀ n, P18390383062236091413.a n = A081358 n

end A081358

/-! ## A081358.P7045251994420345289

`A186763(n)+A000774(n)-(A184958(n)+A000522(n))`
-/

namespace A081358.P7045251994420345289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186763 n + (A000774 n - (A184958 n + A000522 n))

end

end A081358.P7045251994420345289

namespace A081358

/-- `A186763(n)+A000774(n)-(A184958(n)+A000522(n))` -/
def P7045251994420345289.Spec : Prop :=
  ∀ n, P7045251994420345289.a n = A081358 n

end A081358

/-!
# A081359: Problem 49 on page 235 of Mathematics: California Edition, by Carole Greenes et al.

The programs for A081359, the canonical program `A081359.P14066598512320165921` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A081359 has offset 1).

The definition of A081359 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A081359.P14066598512320165921

`∑[a(n-1)+3]` with `a(0)=6, a(1)=1, a(2)=3`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A081359

/-- `∑[a(n-1)+3]` -/
def P14066598512320165921.Spec : Prop :=
  ∀ n, (P14066598512320165921.a n : ℤ) = A081359 (n + 1)

theorem P14066598512320165921.correct : P14066598512320165921.Spec := by
  intro n
  simp only [A081359, Nat.add_sub_cancel]

end A081359

/-! ## A081359.P4916382224331613937

`a(n-1)+3*(n-1)` with `a(0)=6, a(1)=7`
-/

namespace A081359.P4916382224331613937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [6, 7] fun n a =>
  a (n - 1) + 3 * ((n : ℤ) - 1)

end

end A081359.P4916382224331613937

namespace A081359

/-- `a(n-1)+3*(n-1)` -/
def P4916382224331613937.Spec : Prop :=
  ∀ n, P4916382224331613937.a n = A081359 (n + 1)

end A081359

/-! ## A081359.P339808948615618315

`3*n-(3-a(n-1))` with `a(0)=6, a(1)=7`
-/

namespace A081359.P339808948615618315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [6, 7] fun n a =>
  (3 * n : ℤ) - (3 - a (n - 1))

end

end A081359.P339808948615618315

namespace A081359

/-- `3*n-(3-a(n-1))` -/
def P339808948615618315.Spec : Prop :=
  ∀ n, P339808948615618315.a n = A081359 (n + 1)

end A081359

/-! ## A081359.P15823862888337587583

`A139482(n+1)+5`
-/

namespace A081359.P15823862888337587583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139482 (n + 1) + 5

end

end A081359.P15823862888337587583

namespace A081359

/-- `A139482(n+1)+5` -/
def P15823862888337587583.Spec : Prop :=
  ∀ n, P15823862888337587583.a n = A081359 (n + 1)

end A081359

/-! ## A081359.P16651525548129663780

`A143208(n+1)+A040012(n)`
-/

namespace A081359.P16651525548129663780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143208 (n + 1) + A040012 n

end

end A081359.P16651525548129663780

namespace A081359

/-- `A143208(n+1)+A040012(n)` -/
def P16651525548129663780.Spec : Prop :=
  ∀ n, P16651525548129663780.a n = A081359 (n + 1)

end A081359

/-! ## A081359.P13980335387520182729

`A124011(n+1)+A112335(n)`
-/

namespace A081359.P13980335387520182729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124011 (n + 1) + A112335 n

end

end A081359.P13980335387520182729

namespace A081359

/-- `A124011(n+1)+A112335(n)` -/
def P13980335387520182729.Spec : Prop :=
  ∀ n, P13980335387520182729.a n = A081359 (n + 1)

end A081359

/-! ## A081359.P8915524224440003987

`A152947(n+1)+A152949(n+1)+A016028(n+2)`
-/

namespace A081359.P8915524224440003987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152947 (n + 1) + (A152949 (n + 1) + A016028 (n + 2))

end

end A081359.P8915524224440003987

namespace A081359

/-- `A152947(n+1)+A152949(n+1)+A016028(n+2)` -/
def P8915524224440003987.Spec : Prop :=
  ∀ n, P8915524224440003987.a n = A081359 (n + 1)

end A081359

/-! ## A081359.P13576720550826928685

`A152948(n+1)+A152948(n+1)+A016028(n+2)`
-/

namespace A081359.P13576720550826928685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152948 (n + 1) + (A152948 (n + 1) + A016028 (n + 2))

end

end A081359.P13576720550826928685

namespace A081359

/-- `A152948(n+1)+A152948(n+1)+A016028(n+2)` -/
def P13576720550826928685.Spec : Prop :=
  ∀ n, P13576720550826928685.a n = A081359 (n + 1)

end A081359

/-! ## A081359.P5549956774710816820

`A144396(A152948(n+1))+A089071(n+1)`
-/

namespace A081359.P5549956774710816820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144396 (A152948 (n + 1)).toNat + A089071 (n + 1)

end

end A081359.P5549956774710816820

namespace A081359

/-- `A144396(A152948(n+1))+A089071(n+1)` -/
def P5549956774710816820.Spec : Prop :=
  ∀ n, P5549956774710816820.a n = A081359 (n + 1)

end A081359

/-! ## A081359.P5841545544173372335

`A020710(A139482(n+1))`
-/

namespace A081359.P5841545544173372335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020710 (A139482 (n + 1)).toNat

end

end A081359.P5841545544173372335

namespace A081359

/-- `A020710(A139482(n+1))` -/
def P5841545544173372335.Spec : Prop :=
  ∀ n, P5841545544173372335.a n = A081359 (n + 1)

end A081359

/-!
# A081360: Expansion of q^(-1/24) (m (1-m) / 16)^(1/24) in powers of q, where m = k^2 is the parameter and q is the nome for Jacobian elliptic functions.

The programs for A081360, there is no canonical definition to state claims against.
-/

/-! ## A081360.P5110019895233041549

`(-1)^n*A000009(n)`
-/

namespace A081360.P5110019895233041549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A000009 n

end

end A081360.P5110019895233041549

/-! ## A081360.P969528130165895707

`A000009(n)*A033999(n)`
-/

namespace A081360.P969528130165895707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000009 n * A033999 n

end

end A081360.P969528130165895707

/-! ## A081360.P1317485613874102661

`A087135(n)/A280560(n)`
-/

namespace A081360.P1317485613874102661
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A087135 n : ℚ) / (A280560 n : ℚ)

end

end A081360.P1317485613874102661

/-! ## A081360.P4885773354601977078

`A000009(n)*A062157(n+1)`
-/

namespace A081360.P4885773354601977078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000009 n * A062157 (n + 1)

end

end A081360.P4885773354601977078

/-! ## A081360.P5571954642024065371

`(A004442(n)-n)*∑[A087897(n)]`
-/

namespace A081360.P5571954642024065371
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087897 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A004442 n - (n : ℤ)) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A081360.P5571954642024065371

/-! ## A081360.P4784158217251581383

`A000009(n)*A057077(A057077(n)+n)`
-/

namespace A081360.P4784158217251581383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000009 n * A057077 (A057077 n + (n : ℤ)).toNat

end

end A081360.P4784158217251581383

/-! ## A081360.P7746782252444020353

`A000009(n)/A033999(n+2)`
-/

namespace A081360.P7746782252444020353
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000009 n : ℚ) / (A033999 (n + 2) : ℚ)

end

end A081360.P7746782252444020353

/-! ## A081360.P3304539840771591494

`A000009(n)*A056594(2*n)`
-/

namespace A081360.P3304539840771591494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000009 n * A056594 (2 * n)

end

end A081360.P3304539840771591494

/-! ## A081360.P7298096268003413529

`A000009(n)*A057077(2*n)`
-/

namespace A081360.P7298096268003413529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000009 n * A057077 (2 * n)

end

end A081360.P7298096268003413529

/-! ## A081360.P3194309260880518609

`A000009(n)*A087960(2*n)`
-/

namespace A081360.P3194309260880518609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000009 n * A087960 (2 * n)

end

end A081360.P3194309260880518609

/-! ## A081360.P155836873571921411

`A000009(n)*A209615(2*n+1)`
-/

namespace A081360.P155836873571921411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000009 n * A209615 (2 * n + 1)

end

end A081360.P155836873571921411

/-! ## A081360.P11958123200362484893

`A035457(2*n)*A056594(2*n)`
-/

namespace A081360.P11958123200362484893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035457 (2 * n) * A056594 (2 * n)

end

end A081360.P11958123200362484893

/-! ## A081360.P9193708312261256737

`A056594(2*n)*A172033(2*n)`
-/

namespace A081360.P9193708312261256737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056594 (2 * n) * A172033 (2 * n)

end

end A081360.P9193708312261256737

/-! ## A081360.P7604713357464319271

`A000009(n)/A057077(A004277(n))`
-/

namespace A081360.P7604713357464319271
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000009 n : ℚ) / (A057077 (A004277 n).toNat : ℚ)

end

end A081360.P7604713357464319271

/-! ## A081360.P13270488620319284111

`A000009(n)/A057077(A016969(n))`
-/

namespace A081360.P13270488620319284111
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000009 n : ℚ) / (A057077 (A016969 n).toNat : ℚ)

end

end A081360.P13270488620319284111

/-! ## A081360.P14259446370693125004

`A000009(n)*A053254(n)/A067357(n)`
-/

namespace A081360.P14259446370693125004
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000009 n * A053254 n : ℚ) / (A067357 n : ℚ)

end

end A081360.P14259446370693125004

/-! ## A081360.P10264520852625876731

`A000009(n)*A001936(n)/A079006(n)`
-/

namespace A081360.P10264520852625876731
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000009 n * A001936 n : ℚ) / (A079006 n : ℚ)

end

end A081360.P10264520852625876731

/-! ## A081360.P16542933037330316732

`A000009(n)*A008683(A090705(n+1))`
-/

namespace A081360.P16542933037330316732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000009 n * A008683 (A090705 (n + 1)).toNat

end

end A081360.P16542933037330316732

/-!
# A081362: Expansion of q^(1/24) * eta(q) / eta(q^2) in powers of q.

The programs for A081362, there is no canonical definition to state claims against.
-/

/-! ## A081362.P14328898476166197931

`(-1)^n*A000700(n)`
-/

namespace A081362.P14328898476166197931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A000700 n

end

end A081362.P14328898476166197931

/-! ## A081362.P6545595263030006185

`A027187(n)-A027193(n)`
-/

namespace A081362.P6545595263030006185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027187 n - A027193 n

end

end A081362.P6545595263030006185

/-! ## A081362.P14936977856613949691

`A298596(n)-a(n-1)` with `a(0)=1`
-/

namespace A081362.P14936977856613949691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A298596 n - a (n - 1)

end

end A081362.P14936977856613949691

/-! ## A081362.P12509344854421264458

`A000700(n)*A033999(n)`
-/

namespace A081362.P12509344854421264458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000700 n * A033999 n

end

end A081362.P12509344854421264458

/-! ## A081362.P15591466699404216011

`A000700(n)*A062157(n+1)`
-/

namespace A081362.P15591466699404216011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000700 n * A062157 (n + 1)

end

end A081362.P15591466699404216011

/-! ## A081362.P12771594476959206851

`A000700(n)*A057077(A057077(n)+n)`
-/

namespace A081362.P12771594476959206851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000700 n * A057077 (A057077 n + (n : ℤ)).toNat

end

end A081362.P12771594476959206851

/-! ## A081362.P9968746629338368725

`A000143(n)*A000700(n)/A035016(n)`
-/

namespace A081362.P9968746629338368725
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000143 n * A000700 n : ℚ) / (A035016 n : ℚ)

end

end A081362.P9968746629338368725

/-! ## A081362.P14973229056140393484

`A000700(n)/A001935(n)*A083365(n)`
-/

namespace A081362.P14973229056140393484
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000700 n : ℚ) / (A001935 n : ℚ) * (A083365 n : ℚ)

end

end A081362.P14973229056140393484

/-! ## A081362.P3227853884479324655

`A000700(n)/A022597(n)*A073252(n)`
-/

namespace A081362.P3227853884479324655
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000700 n : ℚ) / (A022597 n : ℚ) * (A073252 n : ℚ)

end

end A081362.P3227853884479324655

/-! ## A081362.P7652202929315697842

`A000118(n)*A000700(n)/A096727(n)`
-/

namespace A081362.P7652202929315697842
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000118 n * A000700 n : ℚ) / (A096727 n : ℚ)

end

end A081362.P7652202929315697842

/-! ## A081362.P12074009371422716492

`A000700(n)*A004011(n)/A103640(n)`
-/

namespace A081362.P12074009371422716492
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000700 n * A004011 n : ℚ) / (A103640 n : ℚ)

end

end A081362.P12074009371422716492

/-! ## A081362.P17616471006404922738

`A000700(n)*A000735(n)/A209676(n)`
-/

namespace A081362.P17616471006404922738
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000700 n * A000735 n : ℚ) / (A209676 n : ℚ)

end

end A081362.P17616471006404922738

/-! ## A081362.P3862265262862798864

`A000700(n)*A113417(n)/A113419(n)`
-/

namespace A081362.P3862265262862798864
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000700 n * A113417 n : ℚ) / (A113419 n : ℚ)

end

end A081362.P3862265262862798864

/-! ## A081362.P8502569786619364154

`A000700(n)*A131943(n)/A226139(n)`
-/

namespace A081362.P8502569786619364154
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000700 n * A131943 n : ℚ) / (A226139 n : ℚ)

end

end A081362.P8502569786619364154

/-! ## A081362.P2936604311480060042

`A000700(n)/ratio[A057077(n)]`
-/

namespace A081362.P2936604311480060042
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057077 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000700 n : ℚ) / ((f1 (n + 1) : ℚ) / (f1 n : ℚ))

end

end A081362.P2936604311480060042

/-! ## A081362.P1921183509788051852

`A000700(n)/A033999(n+2)`
-/

namespace A081362.P1921183509788051852
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000700 n : ℚ) / (A033999 (n + 2) : ℚ)

end

end A081362.P1921183509788051852

/-! ## A081362.P3448430383945587769

`2*A027187(n)-A000041(n)`
-/

namespace A081362.P3448430383945587769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A027187 n - A000041 n

end

end A081362.P3448430383945587769

/-! ## A081362.P6329618956921999724

`A000041(n)-2*A027193(n)`
-/

namespace A081362.P6329618956921999724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n - 2 * A027193 n

end

end A081362.P6329618956921999724

/-! ## A081362.P3120437756241322204

`A000700(n)*A070048(n)/A116498(n)`
-/

namespace A081362.P3120437756241322204
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000700 n * A070048 n : ℚ) / (A116498 n : ℚ)

end

end A081362.P3120437756241322204

/-! ## A081362.P9963282264982967883

`A000009(n)*A000700(n)/A081360(n)`
-/

namespace A081362.P9963282264982967883
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000009 n * A000700 n : ℚ) / (A081360 n : ℚ)

end

end A081362.P9963282264982967883

/-!
# A081363: Smallest squarefree integer k such that Q(sqrt(k)) has class number n.

The programs for A081363, there is no canonical definition to state claims against.
-/

/-! ## A081363.P5492961528727163457

`A279908(A001096(n+1))`
-/

namespace A081363.P5492961528727163457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279908 (A001096 (n + 1)).toNat

end

end A081363.P5492961528727163457

/-!
# A081367: E.g.f.: exp(2*x)/sqrt(1-2*x).

The programs for A081367, the canonical program `A081367.P12088302123112190860` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A081367 has offset 0).

The definition of A081367 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A081367.P12088302123112190860

`(2*n+1)*a(n-1)-4*(n-1)*a(n-2)` with `a(0)=1, a(1)=3`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A081367

/-- `(2*n+1)*a(n-1)-4*(n-1)*a(n-2)` -/
def P12088302123112190860.Spec : Prop :=
  ∀ n, P12088302123112190860.a n = A081367 n

theorem P12088302123112190860.correct : P12088302123112190860.Spec := by
  intro n
  simp only [A081367]

end A081367

/-! ## A081367.P8460593338159261058

`A187224(A196555(n))+A181391(2*(n+1))`
-/

namespace A081367.P8460593338159261058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187224 (A196555 n).toNat + A181391 (2 * (n + 1))

end

end A081367.P8460593338159261058

namespace A081367

/-- `A187224(A196555(n))+A181391(2*(n+1))` -/
def P8460593338159261058.Spec : Prop :=
  ∀ n, P8460593338159261058.a n = A081367 n

end A081367

/-!
# A081368: Next n digits of e, base of the natural logarithms.

The programs for A081368, there is no canonical definition to state claims against.
-/

/-! ## A081368.P148588585292961899

`A000027(A202813(n+1))`
-/

namespace A081368.P148588585292961899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A202813 (n + 1)).toNat

end

end A081368.P148588585292961899

/-!
# A081369: Binomial(n^2, n) reduced mod n^2.

The programs for A081369, the canonical program `A081369.P4147814908954792734` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A081369 has offset 1).

The definition of A081369 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A081369.P4147814908954792734

`C((n+1)², n+1)%(n+1)²`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A081369

/-- `C((n+1)², n+1)%(n+1)²` -/
def P4147814908954792734.Spec : Prop :=
  ∀ n, (P4147814908954792734.a n : ℤ) = A081369 (n + 1)

theorem P4147814908954792734.correct : P4147814908954792734.Spec := by
  intro n
  simp only [A081369, Nat.add_sub_cancel]

end A081369

/-! ## A081369.P2188954521706142989

`A371471(n+1)%A162395(n+1)`
-/

namespace A081369.P2188954521706142989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A371471 (n + 1)) (A162395 (n + 1))

end

end A081369.P2188954521706142989

namespace A081369

/-- `A371471(n+1)%A162395(n+1)` -/
def P2188954521706142989.Spec : Prop :=
  ∀ n, P2188954521706142989.a n = A081369 (n + 1)

end A081369

/-! ## A081369.P306826749078436946

`A091144(n+1)%(n+1)²`
-/

namespace A081369.P306826749078436946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A091144 (n + 1)) ((n + 1) ^ 2 : ℤ)

end

end A081369.P306826749078436946

namespace A081369

/-- `A091144(n+1)%(n+1)²` -/
def P306826749078436946.Spec : Prop :=
  ∀ n, P306826749078436946.a n = A081369 (n + 1)

end A081369

/-! ## A081369.P552338530018074858

`A143669(n)%(n+1)*(n+1)`
-/

namespace A081369.P552338530018074858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A143669 n) (n + 1 : ℤ) * (n + 1 : ℤ)

end

end A081369.P552338530018074858

namespace A081369

/-- `A143669(n)%(n+1)*(n+1)` -/
def P552338530018074858.Spec : Prop :=
  ∀ n, P552338530018074858.a n = A081369 (n + 1)

end A081369

/-! ## A081369.P2347852451565826412

`A060539(∑[4*n]+1)%(n+1)²`
-/

namespace A081369.P2347852451565826412
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A060539 (∑ j ∈ Finset.range (n + 1), f1 j + 1)) ((n + 1) ^ 2 : ℤ)

end

end A081369.P2347852451565826412

namespace A081369

/-- `A060539(∑[4*n]+1)%(n+1)²` -/
def P2347852451565826412.Spec : Prop :=
  ∀ n, P2347852451565826412.a n = A081369 (n + 1)

end A081369

/-!
# A081370: Numbers k such that binomial(k^2, k) reduced mod k^2 is 0.

The programs for A081370, the canonical program `A081370.P16224560842564592310` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A081370 has offset 1).

The definition of A081370 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 191 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A081370.P16224560842564592310

`eq[0, A081369(n+1)]+1`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A081370

/-- `eq[0, A081369(n+1)]+1` -/
def P16224560842564592310.Spec : Prop :=
  ∀ n, (P16224560842564592310.a n : ℤ) = A081370 (n + 1)

theorem P16224560842564592310.correct : P16224560842564592310.Spec := by
  intro n
  simp only [A081370, Nat.add_sub_cancel]

end A081370

/-! ## A081370.P8912758590677781297

`lt[A081369(A028310(n)), n]`
-/

namespace A081370.P8912758590677781297
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081369 (A028310 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A081370.P8912758590677781297

namespace A081370

/-- `lt[A081369(A028310(n)), n]` -/
def P8912758590677781297.Spec : Prop :=
  ∀ n, (P8912758590677781297.a n : ℤ) = A081370 (n + 1)

end A081370

/-! ## A081370.P9841092166421372024

`lt[A081369(n+1), A001222(n+2)]+1`
-/

namespace A081370.P9841092166421372024
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081369 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A081370.P9841092166421372024

namespace A081370

/-- `lt[A081369(n+1), A001222(n+2)]+1` -/
def P9841092166421372024.Spec : Prop :=
  ∀ n, (P9841092166421372024.a n : ℤ) = A081370 (n + 1)

end A081370

/-! ## A081370.P5605296473652263986

`eq[A000007(n), A081369(A028310(n))]`
-/

namespace A081370.P5605296473652263986
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081369 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A081370.P5605296473652263986

namespace A081370

/-- `eq[A000007(n), A081369(A028310(n))]` -/
def P5605296473652263986.Spec : Prop :=
  ∀ n, (P5605296473652263986.a n : ℤ) = A081370 (n + 1)

end A081370

/-! ## A081370.P1331604901042851534

`eq[A000038(n), A081369(A028310(n))]`
-/

namespace A081370.P1331604901042851534
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081369 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A081370.P1331604901042851534

namespace A081370

/-- `eq[A000038(n), A081369(A028310(n))]` -/
def P1331604901042851534.Spec : Prop :=
  ∀ n, (P1331604901042851534.a n : ℤ) = A081370 (n + 1)

end A081370

/-!
# A081371: Binomial coefficients C(n,j) reduced modulo j, j=1,...n; read by rows, j=0 is omitted because of mod(n,0).

The programs for A081371, the canonical program `A081371.P6434691763935947853` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A081371 has offset 1).

The definition of A081371 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A081371.P10052541701843842191

`A135278(n)%A131899(n)`
-/

namespace A081371.P10052541701843842191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A135278 n) (A131899 n)

end

end A081371.P10052541701843842191

namespace A081371

/-- `A135278(n)%A131899(n)` -/
def P10052541701843842191.Spec : Prop :=
  ∀ n, P10052541701843842191.a n = A081371 (n + 1)

end A081371

/-! ## A081371.P9775190266361991825

`A153861(n)%A002260(n+1)`
-/

namespace A081371.P9775190266361991825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A153861 n) (A002260 (n + 1))

end

end A081371.P9775190266361991825

namespace A081371

/-- `A153861(n)%A002260(n+1)` -/
def P9775190266361991825.Spec : Prop :=
  ∀ n, P9775190266361991825.a n = A081371 (n + 1)

end A081371

/-! ## A081371.P14886142853401981446

`A184049(n)%A002260(n+1)`
-/

namespace A081371.P14886142853401981446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A184049 n) (A002260 (n + 1))

end

end A081371.P14886142853401981446

namespace A081371

/-- `A184049(n)%A002260(n+1)` -/
def P14886142853401981446.Spec : Prop :=
  ∀ n, P14886142853401981446.a n = A081371 (n + 1)

end A081371

/-! ## A081371.P6434691763935947853

`A074909(n+1)%A002260(n+1)`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A081371

/-- `A074909(n+1)%A002260(n+1)` -/
def P6434691763935947853.Spec : Prop :=
  ∀ n, P6434691763935947853.a n = A081371 (n + 1)

theorem P6434691763935947853.correct : P6434691763935947853.Spec := by
  intro n
  simp only [A081371, Nat.add_sub_cancel]

end A081371

/-! ## A081371.P11577616960459501

`A130301(n+1)%A002260(n+1)`
-/

namespace A081371.P11577616960459501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A130301 (n + 1)) (A002260 (n + 1))

end

end A081371.P11577616960459501

namespace A081371

/-- `A130301(n+1)%A002260(n+1)` -/
def P11577616960459501.Spec : Prop :=
  ∀ n, P11577616960459501.a n = A081371 (n + 1)

end A081371

/-! ## A081371.P15336427395906791671

`A007318(A080036(n))%A002260(n+1)`
-/

namespace A081371.P15336427395906791671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A007318 (A080036 n).toNat) (A002260 (n + 1))

end

end A081371.P15336427395906791671

namespace A081371

/-- `A007318(A080036(n))%A002260(n+1)` -/
def P15336427395906791671.Spec : Prop :=
  ∀ n, P15336427395906791671.a n = A081371 (n + 1)

end A081371

/-! ## A081371.P822143695604931505

`A007318(A014132(n+1))%A002260(n+1)`
-/

namespace A081371.P822143695604931505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A007318 (A014132 (n + 1)).toNat) (A002260 (n + 1))

end

end A081371.P822143695604931505

namespace A081371

/-- `A007318(A014132(n+1))%A002260(n+1)` -/
def P822143695604931505.Spec : Prop :=
  ∀ n, P822143695604931505.a n = A081371 (n + 1)

end A081371

/-! ## A081371.P668043384085911132

`A007318(A002024(n+1)+n+1)%A002260(n+1)`
-/

namespace A081371.P668043384085911132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A007318 (A002024 (n + 1) + (n + 1 : ℤ)).toNat) (A002260 (n + 1))

end

end A081371.P668043384085911132

namespace A081371

/-- `A007318(A002024(n+1)+n+1)%A002260(n+1)` -/
def P668043384085911132.Spec : Prop :=
  ∀ n, P668043384085911132.a n = A081371 (n + 1)

end A081371

/-! ## A081371.P5161402857990491550

`A193972(n)%A002260(n+1)`
-/

namespace A081371.P5161402857990491550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A193972 n) (A002260 (n + 1))

end

end A081371.P5161402857990491550

namespace A081371

/-- `A193972(n)%A002260(n+1)` -/
def P5161402857990491550.Spec : Prop :=
  ∀ n, P5161402857990491550.a n = A081371 (n + 1)

end A081371

/-!
# A081373: Number of values of k, 1 <= k <= n, with phi(k) = phi(n), where phi is Euler totient function, A000010.

The programs for A081373, there is no canonical definition to state claims against.
-/

/-! ## A081373.P16270828606597067096

`A303757(n+1)+char[1]`
-/

namespace A081373.P16270828606597067096
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303757 (n + 1) + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A081373.P16270828606597067096

/-! ## A081373.P17051169236416277163

`A319989(2*(n+1))+char[1]`
-/

namespace A081373.P17051169236416277163
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319989 (2 * (n + 1)) + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A081373.P17051169236416277163

/-! ## A081373.P12313641772718525228

`A303757(n*(C(2, n)+1)+1)`
-/

namespace A081373.P12313641772718525228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303757 (n * (Nat.choose 2 n + 1) + 1)

end

end A081373.P12313641772718525228

/-! ## A081373.P17176066737861077976

`A303757(A130706(n)+1+n)`
-/

namespace A081373.P17176066737861077976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303757 (A130706 n + 1 + (n : ℤ)).toNat

end

end A081373.P17176066737861077976

/-! ## A081373.P10155211989511342543

`A303757(n+1)*A373565(n)`
-/

namespace A081373.P10155211989511342543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303757 (n + 1) * A373565 n

end

end A081373.P10155211989511342543

/-! ## A081373.P7005903981572497223

`lcm(A286299(n), A303757(n+1))`
-/

namespace A081373.P7005903981572497223
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A286299 n) (A303757 (n + 1))

end

end A081373.P7005903981572497223

/-! ## A081373.P11660720511262089549

`(A063524(n)+1)*A303757(n+1)`
-/

namespace A081373.P11660720511262089549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A063524 n + 1) * A303757 (n + 1)

end

end A081373.P11660720511262089549

/-! ## A081373.P928332660173294673

`A303757(n*A049989(floor(2/(n+1))+1)+1)`
-/

namespace A081373.P928332660173294673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303757 ((n : ℤ) * A049989 (⌊2 / (n + 1 : ℚ)⌋ + 1).toNat + 1).toNat

end

end A081373.P928332660173294673

/-! ## A081373.P9212263159546365953

`A303756(n+1)+A303757(n+1)-A303758(n+1)`
-/

namespace A081373.P9212263159546365953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303756 (n + 1) + (A303757 (n + 1) - A303758 (n + 1))

end

end A081373.P9212263159546365953

/-! ## A081373.P5885319640527207141

`A303756(A303756(n+1)/A303758(n+1))*A303757(n+1)`
-/

namespace A081373.P5885319640527207141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303756 (SequenceMachineLib.roundAway ((A303756 (n + 1) : ℚ) / (A303758 (n + 1) : ℚ))).toNat * A303757 (n + 1)

end

end A081373.P5885319640527207141

/-! ## A081373.P383523375652344852

`A303757(A153151(n+1)+1)`
-/

namespace A081373.P383523375652344852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303757 (A153151 (n + 1) + 1).toNat

end

end A081373.P383523375652344852

/-! ## A081373.P13541423996757223892

`A286299(n²)*A303757(n+1)`
-/

namespace A081373.P13541423996757223892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286299 (n ^ 2) * A303757 (n + 1)

end

end A081373.P13541423996757223892

/-!
# A081374: Size of "uniform" Hamming covers of distance 1, that is, Hamming covers in which all vectors of equal weight are treated the same, included or excluded from the cover together.

The programs for A081374, the canonical program `A081374.P9606731641529379562` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A081374 has offset 1).

The definition of A081374 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A081374.P9606731641529379562

`2*a(n-1)-a(n-3)+2*a(n-4)` with `a(0)=1, a(1)=2, a(2)=2, a(3)=5`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A081374

/-- `2*a(n-1)-a(n-3)+2*a(n-4)` -/
def P9606731641529379562.Spec : Prop :=
  ∀ n, P9606731641529379562.a n = A081374 (n + 1)

theorem P9606731641529379562.correct : P9606731641529379562.Spec := by
  intro n
  simp only [A081374, Nat.add_sub_cancel]

end A081374

/-! ## A081374.P11141847075548046493

`ogf((1-2x^2+2x^3)/(1-2x+x^3-2x^4))`
-/

namespace A081374.P11141847075548046493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 0, -2, 2] [1, -2, 0, 1, -2] n

end

end A081374.P11141847075548046493

namespace A081374

/-- `ogf((1-2x^2+2x^3)/(1-2x+x^3-2x^4))` -/
def P11141847075548046493.Spec : Prop :=
  ∀ n, P11141847075548046493.a n = A081374 (n + 1)

end A081374

/-! ## A081374.P15785893354175224683

`abs(char[3*n]+∑[(-2)^n]-1)`
-/

namespace A081374.P15785893354175224683
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-2) ^ n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) + ∑ j ∈ Finset.range (n + 1), f2 j - 1|

end

end A081374.P15785893354175224683

namespace A081374

/-- `abs(char[3*n]+∑[(-2)^n]-1)` -/
def P15785893354175224683.Spec : Prop :=
  ∀ n, P15785893354175224683.a n = A081374 (n + 1)

end A081374

/-! ## A081374.P13868694047074896563

`2^n-A242563(n)`
-/

namespace A081374.P13868694047074896563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) - A242563 n

end

end A081374.P13868694047074896563

namespace A081374

/-- `2^n-A242563(n)` -/
def P13868694047074896563.Spec : Prop :=
  ∀ n, P13868694047074896563.a n = A081374 (n + 1)

end A081374

/-! ## A081374.P94361952161670625

`A111286(n)-a(n-3)` with `a(0)=1, a(1)=2, a(2)=2`
-/

namespace A081374.P94361952161670625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 2] fun n a =>
  A111286 n - a (n - 3)

end

end A081374.P94361952161670625

namespace A081374

/-- `A111286(n)-a(n-3)` -/
def P94361952161670625.Spec : Prop :=
  ∀ n, P94361952161670625.a n = A081374 (n + 1)

end A081374

/-! ## A081374.P5258297170592716180

`A130755(n-1)-a(n-1)` with `a(0)=1`
-/

namespace A081374.P5258297170592716180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A130755 (n - 1) - a (n - 1)

end

end A081374.P5258297170592716180

namespace A081374

/-- `A130755(n-1)-a(n-1)` -/
def P5258297170592716180.Spec : Prop :=
  ∀ n, P5258297170592716180.a n = A081374 (n + 1)

end A081374

/-! ## A081374.P9075642362926864465

`A282153(n)+2-a(n-1)` with `a(0)=1`
-/

namespace A081374.P9075642362926864465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A282153 n + (2 - a (n - 1))

end

end A081374.P9075642362926864465

namespace A081374

/-- `A282153(n)+2-a(n-1)` -/
def P9075642362926864465.Spec : Prop :=
  ∀ n, P9075642362926864465.a n = A081374 (n + 1)

end A081374

/-! ## A081374.P18251783516493075152

`A133684(A047268(n+2))`
-/

namespace A081374.P18251783516493075152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133684 (A047268 (n + 2)).toNat

end

end A081374.P18251783516493075152

namespace A081374

/-- `A133684(A047268(n+2))` -/
def P18251783516493075152.Spec : Prop :=
  ∀ n, P18251783516493075152.a n = A081374 (n + 1)

end A081374

/-! ## A081374.P2669327087322501755

`A024493(n)+A001045(n)`
-/

namespace A081374.P2669327087322501755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024493 n + A001045 n

end

end A081374.P2669327087322501755

namespace A081374

/-- `A024493(n)+A001045(n)` -/
def P2669327087322501755.Spec : Prop :=
  ∀ n, P2669327087322501755.a n = A081374 (n + 1)

end A081374

/-! ## A081374.P1724354142914951927

`A128209(n)+A111927(n)`
-/

namespace A081374.P1724354142914951927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128209 n + A111927 n

end

end A081374.P1724354142914951927

namespace A081374

/-- `A128209(n)+A111927(n)` -/
def P1724354142914951927.Spec : Prop :=
  ∀ n, P1724354142914951927.a n = A081374 (n + 1)

end A081374

/-! ## A081374.P14526749544547744028

`A166249(n)+A131708(n)`
-/

namespace A081374.P14526749544547744028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166249 n + A131708 n

end

end A081374.P14526749544547744028

namespace A081374

/-- `A166249(n)+A131708(n)` -/
def P14526749544547744028.Spec : Prop :=
  ∀ n, P14526749544547744028.a n = A081374 (n + 1)

end A081374

/-! ## A081374.P16514076454125241281

`A001045(n)+Δ[A131708(n)]`
-/

namespace A081374.P16514076454125241281
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131708 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001045 n + (f1 (n + 1) - f1 n)

end

end A081374.P16514076454125241281

namespace A081374

/-- `A001045(n)+Δ[A131708(n)]` -/
def P16514076454125241281.Spec : Prop :=
  ∀ n, P16514076454125241281.a n = A081374 (n + 1)

end A081374

/-! ## A081374.P710131115097051976

`A133684(A047234(n+2)+1)`
-/

namespace A081374.P710131115097051976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133684 (A047234 (n + 2) + 1).toNat

end

end A081374.P710131115097051976

namespace A081374

/-- `A133684(A047234(n+2)+1)` -/
def P710131115097051976.Spec : Prop :=
  ∀ n, P710131115097051976.a n = A081374 (n + 1)

end A081374

/-! ## A081374.P11876463513503599019

`A133684(A047271(n+1)+2)`
-/

namespace A081374.P11876463513503599019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133684 (A047271 (n + 1) + 2).toNat

end

end A081374.P11876463513503599019

namespace A081374

/-- `A133684(A047271(n+1)+2)` -/
def P11876463513503599019.Spec : Prop :=
  ∀ n, P11876463513503599019.a n = A081374 (n + 1)

end A081374

/-! ## A081374.P2391066657164611206

`A092220(n)+A001045(n+1)`
-/

namespace A081374.P2391066657164611206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092220 n + A001045 (n + 1)

end

end A081374.P2391066657164611206

namespace A081374

/-- `A092220(n)+A001045(n+1)` -/
def P2391066657164611206.Spec : Prop :=
  ∀ n, P2391066657164611206.a n = A081374 (n + 1)

end A081374

/-! ## A081374.P4395448591852426598

`A001045(n)+A111927(n)+1`
-/

namespace A081374.P4395448591852426598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001045 n + (A111927 n + 1)

end

end A081374.P4395448591852426598

namespace A081374

/-- `A001045(n)+A111927(n)+1` -/
def P4395448591852426598.Spec : Prop :=
  ∀ n, P4395448591852426598.a n = A081374 (n + 1)

end A081374

/-! ## A081374.P11424967278301174929

`A131531(n+2)+A130781(n)`
-/

namespace A081374.P11424967278301174929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131531 (n + 2) + A130781 n

end

end A081374.P11424967278301174929

namespace A081374

/-- `A131531(n+2)+A130781(n)` -/
def P11424967278301174929.Spec : Prop :=
  ∀ n, P11424967278301174929.a n = A081374 (n + 1)

end A081374

/-! ## A081374.P19982310712816799

`A132780(n)+A131090(n+2)`
-/

namespace A081374.P19982310712816799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132780 n + A131090 (n + 2)

end

end A081374.P19982310712816799

namespace A081374

/-- `A132780(n)+A131090(n+2)` -/
def P19982310712816799.Spec : Prop :=
  ∀ n, P19982310712816799.a n = A081374 (n + 1)

end A081374

/-! ## A081374.P13382043535090674946

`A133684(∑[A010882(2*n)]+1)`
-/

namespace A081374.P13382043535090674946
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010882 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133684 (∑ j ∈ Finset.range (n + 1), f1 j + 1).toNat

end

end A081374.P13382043535090674946

namespace A081374

/-- `A133684(∑[A010882(2*n)]+1)` -/
def P13382043535090674946.Spec : Prop :=
  ∀ n, P13382043535090674946.a n = A081374 (n + 1)

end A081374

/-! ## A081374.P7667328985010892869

`∑[A024493(n)]-A131531(n+1)`
-/

namespace A081374.P7667328985010892869
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024493 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A131531 (n + 1)

end

end A081374.P7667328985010892869

namespace A081374

/-- `∑[A024493(n)]-A131531(n+1)` -/
def P7667328985010892869.Spec : Prop :=
  ∀ n, P7667328985010892869.a n = A081374 (n + 1)

end A081374

/-!
# A081375: a(n) is the least number k such that A081373(k) = n.

The programs for A081375, there is no canonical definition to state claims against.
-/

/-! ## A081375.P18177018972190053933

`record[(n+1)/A303777(n+1)]`
-/

namespace A081375.P18177018972190053933
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A303777 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A081375.P18177018972190053933

/-! ## A081375.P10873789663176255409

`eq[1, A303777(n+1)]+1`
-/

namespace A081375.P10873789663176255409
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303777 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A081375.P10873789663176255409

/-!
# A081376: a(n) is the least number such that A067003(a(n)) = n.

The programs for A081376, there is no canonical definition to state claims against.
-/

/-! ## A081376.P7374422538894113009

`A246655(n+1)-A016389(A001962(n+1))`
-/

namespace A081376.P7374422538894113009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246655 (n + 1) - A016389 (A001962 (n + 1)).toNat

end

end A081376.P7374422538894113009

/-! ## A081376.P1489179916141934192

`A326645(n+1)+A010815(A299265(n))`
-/

namespace A081376.P1489179916141934192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326645 (n + 1) + A010815 (A299265 n).toNat

end

end A081376.P1489179916141934192

/-! ## A081376.P13632055410038117824

`A326645(n+1)+A106459(A213392(n))`
-/

namespace A081376.P13632055410038117824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326645 (n + 1) + A106459 (A213392 n).toNat

end

end A081376.P13632055410038117824

/-! ## A081376.P10468460162297455064

`A326645(n+1)-A000007(A000578(n))`
-/

namespace A081376.P10468460162297455064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326645 (n + 1) - A000007 (A000578 n).toNat

end

end A081376.P10468460162297455064

/-! ## A081376.P9883662006780727244

`A096165(n+1)-A055641(A200748(n))`
-/

namespace A081376.P9883662006780727244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096165 (n + 1) - A055641 (A200748 n).toNat

end

end A081376.P9883662006780727244

/-!
# A081377: Numbers k such that the set of prime divisors of phi(k) is equal to the set of prime divisors of sigma(k).

The programs for A081377, there is no canonical definition to state claims against.
-/

/-! ## A081377.P11300535537421857818

`A076533(record[A014902(n)*A076564(n+1)])`
-/

namespace A081377.P11300535537421857818
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014902 n * A076564 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076533 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A081377.P11300535537421857818

/-! ## A081377.P13895863692760996875

`A076533(A076564(n+1)%A014886(n+1))`
-/

namespace A081377.P13895863692760996875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076533 (Int.tmod (A076564 (n + 1)) (A014886 (n + 1))).toNat

end

end A081377.P13895863692760996875

/-! ## A081377.P963465041571368081

`A076533(A320230(n+1)%A121500(3*n+5))`
-/

namespace A081377.P963465041571368081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076533 (Int.tmod (A320230 (n + 1)) (A121500 (3 * n + 5))).toNat

end

end A081377.P963465041571368081

/-! ## A081377.P12777441050932100996

`A076533(A076564(n+1))^A069293(n+1)^((2*n)%5)`
-/

namespace A081377.P12777441050932100996
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A076533 (A076564 (n + 1)).toNat : ℚ) ^ (A069293 (n + 1) ^ (2 * n % 5) : ℤ)

end

end A081377.P12777441050932100996

/-!
# A081381: Numbers n such that n and tau(n) = A000005(n) have the same prime factors (ignoring multiplicity).

The programs for A081381, there is no canonical definition to state claims against.
-/

/-! ## A081381.P10714840599248040005

`∪[A235524(n+1), A235525(n+1)]`
-/

namespace A081381.P10714840599248040005
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235524 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235525 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A081381.P10714840599248040005

/-! ## A081381.P2968269545825113025

`eq[A007947(A000005(n+1)), A007947(n+1)]+1`
-/

namespace A081381.P2968269545825113025
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (A000005 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A081381.P2968269545825113025

/-! ## A081381.P10035687391398471167

`∩[A120736(n+1), A120737(n+1)]`
-/

namespace A081381.P10035687391398471167
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120736 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120737 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A081381.P10035687391398471167

/-! ## A081381.P10342846164750257117

`eq[A076618(A000005(n+1)), A076618(n+1)]+1`
-/

namespace A081381.P10342846164750257117
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076618 (A000005 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076618 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A081381.P10342846164750257117

/-! ## A081381.P2963324328540729345

`A235524(A004907(n+2))`
-/

namespace A081381.P2963324328540729345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235524 (A004907 (n + 2)).toNat

end

end A081381.P2963324328540729345

/-!
# A081382: a(1) = 1, for n > 1 a(n) = Min{x > n, A008472(x) = A008472(n)}.

The programs for A081382, there is no canonical definition to state claims against.
-/

/-! ## A081382.P10585855662017394966

`A065642(n+1)%A039678(A003477(n))`
-/

namespace A081382.P10585855662017394966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A065642 (n + 1)) (A039678 (A003477 n).toNat)

end

end A081382.P10585855662017394966

/-!
# A081383: Least x = a(n) such that number of common prime factors (ignoring multiplicity) of sigma(x) = A000203(x) and phi(x) = A000010(x) equals n.

The programs for A081383, there is no canonical definition to state claims against.
-/

/-! ## A081383.P16923896082783033574

`A222713(A002110(n+1))`
-/

namespace A081383.P16923896082783033574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222713 (A002110 (n + 1)).toNat

end

end A081383.P16923896082783033574

/-!
# A081386: Number of unitary prime divisors of central binomial coefficient, C(2n,n) = A000984(n), i.e., number of those prime factors in C(2n,n), whose exponent equals one.

The programs for A081386, the canonical program `A081386.P11376049931011802170` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A081386 has offset 1).

The definition of A081386 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A081386.P11376049931011802170

`A056173(2*(n+1))`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A081386

/-- `A056173(2*(n+1))` -/
def P11376049931011802170.Spec : Prop :=
  ∀ n, P11376049931011802170.a n = A081386 (n + 1)

theorem P11376049931011802170.correct : P11376049931011802170.Spec := by
  intro n
  simp only [A081386, Nat.add_sub_cancel]

end A081386

/-! ## A081386.P3252601675789047884

`A067434(n+1)-A081387(n+1)`
-/

namespace A081386.P3252601675789047884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067434 (n + 1) - A081387 (n + 1)

end

end A081386.P3252601675789047884

namespace A081386

/-- `A067434(n+1)-A081387(n+1)` -/
def P3252601675789047884.Spec : Prop :=
  ∀ n, P3252601675789047884.a n = A081386 (n + 1)

theorem P3252601675789047884.correct : P3252601675789047884.Spec := by
  intro n
  simp only [A081386, Nat.add_sub_cancel, A081386.P3252601675789047884.a, A081386.P11376049931011802170.a, A056173, A056173.P15098762460861555107.a, A067434, A067434.P13929793644750032362.a, A081387, A081387.P309949724392534057.a, A001405, A001405.P5205018418992951678.a, A056169, A056169.P17430176249366647977.a, A056175, A056175.P9200230780470454519.a, A001221, A001221.P10258181745752134128.a, A055231, A055231.P8962300905713718501.a, A056057, A056057.P2194597549001614042.a, A005089, A005089.P4329807401814625450.f1, A005089.P4329807401814625450.a, A005091, A005091.P2802037195389751204.f1, A005091.P2802037195389751204.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A008833, A008833.P18388074464065390543.a, A059841, A059841.P2666504972441551157.a, A071773, A071773.P10459083202328690793.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A081386

/-! ## A081386.P2250050656282992048

`A034973(2*(n+1))-A056175(2*(n+1))`
-/

namespace A081386.P2250050656282992048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034973 (2 * (n + 1)) - A056175 (2 * (n + 1))

end

end A081386.P2250050656282992048

namespace A081386

/-- `A034973(2*(n+1))-A056175(2*(n+1))` -/
def P2250050656282992048.Spec : Prop :=
  ∀ n, P2250050656282992048.a n = A081386 (n + 1)

theorem P2250050656282992048.correct : P2250050656282992048.Spec := by
  intro n
  simp only [A081386, Nat.add_sub_cancel, A081386.P2250050656282992048.a, A081386.P11376049931011802170.a, A034973, A034973.P13506425649681590282.a, A056173, A056173.P15098762460861555107.a, A056175, A056175.P9200230780470454519.a, A001221, A001221.P10258181745752134128.a, A001405, A001405.P5205018418992951678.a, A056057, A056057.P2194597549001614042.a, A056169, A056169.P17430176249366647977.a, A005089, A005089.P4329807401814625450.f1, A005089.P4329807401814625450.a, A005091, A005091.P2802037195389751204.f1, A005091.P2802037195389751204.a, A008833, A008833.P18388074464065390543.a, A055231, A055231.P8962300905713718501.a, A059841, A059841.P2666504972441551157.a, A007913, A007913.P11359412940648999332.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A071773, A071773.P10459083202328690793.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A081386

/-! ## A081386.P9369624799420041992

`log2(A056673(2*(n+1)))`
-/

namespace A081386.P9369624799420041992
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A056673 (2 * (n + 1)) : ℝ)

end

end A081386.P9369624799420041992

namespace A081386

/-- `log2(A056673(2*(n+1)))` -/
def P9369624799420041992.Spec : Prop :=
  ∀ n, P9369624799420041992.a n = (A081386 (n + 1) : ℝ)

end A081386

/-! ## A081386.P14922788880813870124

`val(A056673(2*n+2), A000005(A049592(n+2)))`
-/

namespace A081386.P14922788880813870124
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A056673 (2 * n + 2)).toNat (A000005 (A049592 (n + 2)).toNat).toNat

end

end A081386.P14922788880813870124

namespace A081386

/-- `val(A056673(2*n+2), A000005(A049592(n+2)))` -/
def P14922788880813870124.Spec : Prop :=
  ∀ n, (P14922788880813870124.a n : ℤ) = A081386 (n + 1)

end A081386

/-! ## A081386.P12054605115700016901

`log2(A039593(2*(n+1)))-A056175(2*(n+1))`
-/

namespace A081386.P12054605115700016901
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A039593 (2 * (n + 1)) : ℝ) - (A056175 (2 * (n + 1)) : ℝ)

end

end A081386.P12054605115700016901

namespace A081386

/-- `log2(A039593(2*(n+1)))-A056175(2*(n+1))` -/
def P12054605115700016901.Spec : Prop :=
  ∀ n, P12054605115700016901.a n = (A081386 (n + 1) : ℝ)

end A081386

/-! ## A081386.P871628439266953849

`val(A045344(n+2)*A056673(2*(n+1)), 2)`
-/

namespace A081386.P871628439266953849
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A045344 (n + 2) * A056673 (2 * (n + 1))).toNat 2

end

end A081386.P871628439266953849

namespace A081386

/-- `val(A045344(n+2)*A056673(2*(n+1)), 2)` -/
def P871628439266953849.Spec : Prop :=
  ∀ n, (P871628439266953849.a n : ℤ) = A081386 (n + 1)

end A081386

/-! ## A081386.P12050950837681907459

`val(A001359(2*(n+1))*A056673(2*(n+1)), 2)`
-/

namespace A081386.P12050950837681907459
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A001359 (2 * (n + 1)) * A056673 (2 * (n + 1))).toNat 2

end

end A081386.P12050950837681907459

namespace A081386

/-- `val(A001359(2*(n+1))*A056673(2*(n+1)), 2)` -/
def P12050950837681907459.Spec : Prop :=
  ∀ n, (P12050950837681907459.a n : ℤ) = A081386 (n + 1)

end A081386

/-! ## A081386.P2990315782959289402

`val(A056673(2*n+2), A046523(A045344(n+2)))`
-/

namespace A081386.P2990315782959289402
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A056673 (2 * n + 2)).toNat (A046523 (A045344 (n + 2)).toNat).toNat

end

end A081386.P2990315782959289402

namespace A081386

/-- `val(A056673(2*n+2), A046523(A045344(n+2)))` -/
def P2990315782959289402.Spec : Prop :=
  ∀ n, (P2990315782959289402.a n : ℤ) = A081386 (n + 1)

end A081386

/-! ## A081386.P3136442259578898732

`val(A056673(2*n+2), A000005(A001359(n+2)))`
-/

namespace A081386.P3136442259578898732
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A056673 (2 * n + 2)).toNat (A000005 (A001359 (n + 2)).toNat).toNat

end

end A081386.P3136442259578898732

namespace A081386

/-- `val(A056673(2*n+2), A000005(A001359(n+2)))` -/
def P3136442259578898732.Spec : Prop :=
  ∀ n, (P3136442259578898732.a n : ℤ) = A081386 (n + 1)

end A081386

/-! ## A081386.P12807891712090007923

`A182910(2*(n+1))`
-/

namespace A081386.P12807891712090007923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182910 (2 * (n + 1))

end

end A081386.P12807891712090007923

namespace A081386

/-- `A182910(2*(n+1))` -/
def P12807891712090007923.Spec : Prop :=
  ∀ n, P12807891712090007923.a n = A081386 (n + 1)

end A081386

/-!
# A081387: Number of non-unitary prime divisors of central binomial coefficient, C(2n,n) = A000984(n), i.e., number of prime factors in C(2n,n) whose exponent is greater than one.

The programs for A081387, the canonical program `A081387.P309949724392534057` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A081387 has offset 1).

The definition of A081387 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A067434, A081386, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A081387.P309949724392534057

`A067434(n+1)-A081386(n+1)`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A081387

/-- `A067434(n+1)-A081386(n+1)` -/
def P309949724392534057.Spec : Prop :=
  ∀ n, P309949724392534057.a n = A081387 (n + 1)

theorem P309949724392534057.correct : P309949724392534057.Spec := by
  intro n
  simp only [A081387, Nat.add_sub_cancel]

end A081387

/-! ## A081387.P5059338827521939238

`A056175(2*(n+1))`
-/

namespace A081387.P5059338827521939238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056175 (2 * (n + 1))

end

end A081387.P5059338827521939238

namespace A081387

/-- `A056175(2*(n+1))` -/
def P5059338827521939238.Spec : Prop :=
  ∀ n, P5059338827521939238.a n = A081387 (n + 1)

theorem P5059338827521939238.correct : P5059338827521939238.Spec := by
  intro n
  simp only [A081387, Nat.add_sub_cancel, A081387.P5059338827521939238.a, A081387.P309949724392534057.a, A056175, A056175.P9200230780470454519.a, A067434, A067434.P13929793644750032362.a, A081386, A081386.P11376049931011802170.a, A001221, A001221.P10258181745752134128.a, A056057, A056057.P2194597549001614042.a, A056173, A056173.P15098762460861555107.a, A001405, A001405.P5205018418992951678.a, A005089, A005089.P4329807401814625450.f1, A005089.P4329807401814625450.a, A005091, A005091.P2802037195389751204.f1, A005091.P2802037195389751204.a, A008833, A008833.P18388074464065390543.a, A056169, A056169.P17430176249366647977.a, A059841, A059841.P2666504972441551157.a, A007913, A007913.P11359412940648999332.a, A055231, A055231.P8962300905713718501.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A081387

/-! ## A081387.P9085877907887621862

`A034973(2*(n+1))-A056173(2*(n+1))`
-/

namespace A081387.P9085877907887621862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034973 (2 * (n + 1)) - A056173 (2 * (n + 1))

end

end A081387.P9085877907887621862

namespace A081387

/-- `A034973(2*(n+1))-A056173(2*(n+1))` -/
def P9085877907887621862.Spec : Prop :=
  ∀ n, P9085877907887621862.a n = A081387 (n + 1)

end A081387

/-! ## A081387.P6593705559056418257

`∑{p}[A292441(n+1), A292441(val(#, 2))]`
-/

namespace A081387.P6593705559056418257
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292441 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A292441 (SequenceMachineLib.valuation p 2)

end

end A081387.P6593705559056418257

namespace A081387

/-- `∑{p}[A292441(n+1), A292441(val(#, 2))]` -/
def P6593705559056418257.Spec : Prop :=
  ∀ n, P6593705559056418257.a n = A081387 (n + 1)

end A081387

/-! ## A081387.P430691630804744110

`∑{p}[A292441(n+1), A292441(A341793(#))]`
-/

namespace A081387.P430691630804744110
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292441 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A292441 (A341793 (p + 10)).toNat

end

end A081387.P430691630804744110

namespace A081387

/-- `∑{p}[A292441(n+1), A292441(A341793(#))]` -/
def P430691630804744110.Spec : Prop :=
  ∀ n, P430691630804744110.a n = A081387 (n + 1)

end A081387

/-! ## A081387.P3096261534811249062

`A001221(A292441(n+1))`
-/

namespace A081387.P3096261534811249062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A292441 (n + 1)).toNat

end

end A081387.P3096261534811249062

namespace A081387

/-- `A001221(A292441(n+1))` -/
def P3096261534811249062.Spec : Prop :=
  ∀ n, P3096261534811249062.a n = A081387 (n + 1)

end A081387

/-! ## A081387.P8143664166870871763

`A001221(A056056(2*(n+1)))`
-/

namespace A081387.P8143664166870871763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A056056 (2 * (n + 1))).toNat

end

end A081387.P8143664166870871763

namespace A081387

/-- `A001221(A056056(2*(n+1)))` -/
def P8143664166870871763.Spec : Prop :=
  ∀ n, P8143664166870871763.a n = A081387 (n + 1)

end A081387

/-! ## A081387.P5360710451568637589

`A001221(sqrt(A056057(2*(n+1))))`
-/

namespace A081387.P5360710451568637589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (SequenceMachineLib.roundAway (Real.sqrt (A056057 (2 * (n + 1)) : ℝ))).toNat

end

end A081387.P5360710451568637589

namespace A081387

/-- `A001221(sqrt(A056057(2*(n+1))))` -/
def P5360710451568637589.Spec : Prop :=
  ∀ n, P5360710451568637589.a n = A081387 (n + 1)

end A081387

/-! ## A081387.P7098189343311728570

`∑{p}[A056057(2*(n+1)), A056057(#)]`
-/

namespace A081387.P7098189343311728570
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056057 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A056057 p

end

end A081387.P7098189343311728570

namespace A081387

/-- `∑{p}[A056057(2*(n+1)), A056057(#)]` -/
def P7098189343311728570.Spec : Prop :=
  ∀ n, P7098189343311728570.a n = A081387 (n + 1)

end A081387

/-! ## A081387.P6249252330129945444

`A001221(A292442(n+1))`
-/

namespace A081387.P6249252330129945444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A292442 (n + 1)).toNat

end

end A081387.P6249252330129945444

namespace A081387

/-- `A001221(A292442(n+1))` -/
def P6249252330129945444.Spec : Prop :=
  ∀ n, P6249252330129945444.a n = A081387 (n + 1)

end A081387

/-!
# A081388: Number of unitary prime divisors of the n-th Catalan number.

The programs for A081388, there is no canonical definition to state claims against.
-/

/-! ## A081388.P10940223916191405913

`A080405(n+1)-A081389(n+1)`
-/

namespace A081388.P10940223916191405913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080405 (n + 1) - A081389 (n + 1)

end

end A081388.P10940223916191405913

/-! ## A081388.P12997195721382107211

`A080405(n+1)-∑{e}[A170829(n+1), A007599(#)]`
-/

namespace A081388.P12997195721382107211
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A170829 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080405 (n + 1) - ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A007599 (Nat.factorization (f1 n).natAbs p)

end

end A081388.P12997195721382107211

/-! ## A081388.P5748484813665741702

`A334591(A173261(n+5)*A173285(n))`
-/

namespace A081388.P5748484813665741702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334591 (A173261 (n + 5) * A173285 n).toNat

end

end A081388.P5748484813665741702

/-! ## A081388.P736645822094367859

`A182850(A002995(n)+A001611(n))`
-/

namespace A081388.P736645822094367859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182850 (A002995 n + A001611 n).toNat

end

end A081388.P736645822094367859

/-! ## A081388.P9743432508063430965

`A001221(A133263(n)*A193147(n))`
-/

namespace A081388.P9743432508063430965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A133263 n * A193147 n).toNat

end

end A081388.P9743432508063430965

/-!
# A081389: Number of non-unitary prime divisors of Catalan numbers, i.e., number of those prime factors whose exponent is greater than one.

The programs for A081389, there is no canonical definition to state claims against.
-/

/-! ## A081389.P4508526555658597102

`A080405(n+1)-A081388(n+1)`
-/

namespace A081389.P4508526555658597102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080405 (n + 1) - A081388 (n + 1)

end

end A081389.P4508526555658597102

/-! ## A081389.P13732124841255180323

`∑{e}[A170829(n+1), A001221(#)]`
-/

namespace A081389.P13732124841255180323
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A170829 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A001221 (Nat.factorization (f1 n).natAbs p)

end

end A081389.P13732124841255180323

/-! ## A081389.P518036059815272445

`∑{e}[A170829(n+1), A007599(#)]`
-/

namespace A081389.P518036059815272445
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A170829 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A007599 (Nat.factorization (f1 n).natAbs p)

end

end A081389.P518036059815272445

/-! ## A081389.P9126954346590047636

`∑{e}[A170829(n+1), #-A000045(#)]`
-/

namespace A081389.P9126954346590047636
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A170829 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, ((Nat.factorization (f1 n).natAbs p : ℤ) - A000045 (Nat.factorization (f1 n).natAbs p))

end

end A081389.P9126954346590047636

/-! ## A081389.P14619969363903622133

`∑{e}[A170829(n+1), A000005(A000005(#))-1]`
-/

namespace A081389.P14619969363903622133
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A170829 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, (A000005 (A000005 (Nat.factorization (f1 n).natAbs p)).toNat - 1)

end

end A081389.P14619969363903622133

/-!
# A081390: Number k such that the k-th Catalan number has only one non-unitary prime divisor; all the other prime divisors have exponent one.

The programs for A081390, there is no canonical definition to state claims against.
-/

/-! ## A081390.P9216456256625438241

`eq[1, A081389(n+1)]+1`
-/

namespace A081390.P9216456256625438241
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081389 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A081390.P9216456256625438241

/-! ## A081390.P6714869891330918333

`eq[1, A081389(A028310(n))]`
-/

namespace A081390.P6714869891330918333
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081389 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A081390.P6714869891330918333

/-! ## A081390.P12072102317041152744

`A020725(eq[1, A081389(n+1)])`
-/

namespace A081390.P12072102317041152744
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081389 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A081390.P12072102317041152744

/-! ## A081390.P8754306787092476873

`eq[1, A081389(A233583(n+1))]`
-/

namespace A081390.P8754306787092476873
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081389 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A081390.P8754306787092476873

/-! ## A081390.P14189796324626582760

`eq[1, A081389(A065033(2*n))]`
-/

namespace A081390.P14189796324626582760
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081389 (A065033 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A081390.P14189796324626582760

/-!
# A081391: Numbers k such that the central binomial coefficient C(2*k,k) has only one prime divisor whose exponent exceeds one.

The programs for A081391, there is no canonical definition to state claims against.
-/

/-! ## A081391.P201468337443477057

`eq[1, A081387(n+1)]+1`
-/

namespace A081391.P201468337443477057
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081387 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A081391.P201468337443477057

/-! ## A081391.P16909240931504823080

`eq[1, A056175(2*(n+1))]+1`
-/

namespace A081391.P16909240931504823080
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056175 (2 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A081391.P16909240931504823080

/-! ## A081391.P15280070629231355096

`eq[1, A056175(A004277(n))]`
-/

namespace A081391.P15280070629231355096
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056175 (A004277 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A081391.P15280070629231355096

/-! ## A081391.P16319118978851694268

`eq[1, A081387(A028310(n))]`
-/

namespace A081391.P16319118978851694268
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081387 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A081391.P16319118978851694268

/-! ## A081391.P8143462616615922527

`record[A025480(A081392(n+1))]`
-/

namespace A081391.P8143462616615922527
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025480 (A081392 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A081391.P8143462616615922527

/-!
# A081392: Numbers k such that the central binomial coefficient C(k, floor(k/2)) has only one prime divisor whose exponent is greater than one.

The programs for A081392, there is no canonical definition to state claims against.
-/

/-! ## A081392.P11880528709836243054

`eq[1, A056175(n+1)]+1`
-/

namespace A081392.P11880528709836243054
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056175 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A081392.P11880528709836243054

/-! ## A081392.P16887553517237131485

`eq[1, A056175(A028310(n))]`
-/

namespace A081392.P16887553517237131485
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056175 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A081392.P16887553517237131485

/-! ## A081392.P3092565887302480920

`A020725(eq[1, A056175(n+1)])`
-/

namespace A081392.P3092565887302480920
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056175 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A081392.P3092565887302480920

/-! ## A081392.P15664911568750016877

`A326178(eq[1, A056175(n+1)])`
-/

namespace A081392.P15664911568750016877
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056175 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326178 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A081392.P15664911568750016877

/-! ## A081392.P13943191535514465662

`eq[1, A056175(A004277(n)-n)]`
-/

namespace A081392.P13943191535514465662
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056175 (A004277 n - (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A081392.P13943191535514465662

/-! ## A081392.P12173223531462754597

`eq[2, A053188(a(A056175(n)))]` with `a(0)=1, a(1)=7`
-/

namespace A081392.P12173223531462754597
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1, 7] fun n f2 =>
  A053188 (f2 (A056175 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A081392.P12173223531462754597

/-! ## A081392.P17516613639741441115

`eq[2, A092787(a(A056175(n)))]` with `a(0)=7, a(1)=1`
-/

namespace A081392.P17516613639741441115
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.rec [7, 1] fun n f2 =>
  A092787 (f2 (A056175 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A081392.P17516613639741441115

/-! ## A081392.P4405985936780026052

`eq[7, A257668(a(A056175(n)))]` with `a(0)=2, a(1)=1`
-/

namespace A081392.P4405985936780026052
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.rec [2, 1] fun n f2 =>
  A257668 (f2 (A056175 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A081392.P4405985936780026052

/-! ## A081392.P2328326773731551764

`eq[1, A056175(A233583(n+1))]`
-/

namespace A081392.P2328326773731551764
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056175 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A081392.P2328326773731551764

/-! ## A081392.P3545625933010705577

`eq[1, A001221(A056056(n+1))]+1`
-/

namespace A081392.P3545625933010705577
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A056056 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A081392.P3545625933010705577

/-!
# A081393: a(n) is the smallest k such that number of non-unitary prime divisors of central binomial coefficient, A000984(k) = C(2*k,k) equals n.

The programs for A081393, there is no canonical definition to state claims against.
-/

/-! ## A081393.P17562353278978916067

`ceil(A081394(n)/2)`
-/

namespace A081393.P17562353278978916067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A081394 n : ℚ) / 2⌉

end

end A081393.P17562353278978916067

/-! ## A081393.P1783149549204242854

`round((A081394(n)/2)^(A000040(n+1)%2))`
-/

namespace A081393.P1783149549204242854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (((A081394 n : ℚ) / 2) ^ (Int.tmod (A000040 (n + 1)) 2 : ℤ))

end

end A081393.P1783149549204242854

/-! ## A081393.P3915020488010253337

`A065033(A081394(n))`
-/

namespace A081393.P3915020488010253337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (A081394 n).toNat

end

end A081393.P3915020488010253337

/-! ## A081393.P17533095745613253994

`A004526(A081394(n)+1)`
-/

namespace A081393.P17533095745613253994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A081394 n + 1).toNat

end

end A081393.P17533095745613253994

/-! ## A081393.P10886271051227608175

`A123108(A081394(n)+1)`
-/

namespace A081393.P10886271051227608175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123108 (A081394 n + 1).toNat

end

end A081393.P10886271051227608175

/-!
# A081395: a(n) is the smallest value of k such that number of non-unitary prime divisors of k-th Catalan number, A000108(k) = C(2*k,k)/(k+1) equals n.

The programs for A081395, there is no canonical definition to state claims against.
-/

/-! ## A081395.P16955967567843766460

`∑[A308883(∑[A279914(n+1)]-n)]-n`
-/

namespace A081395.P16955967567843766460
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279914 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308883 (∑ j ∈ Finset.range (n + 1), f2 j - (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ)

end

end A081395.P16955967567843766460

/-!
# A081396: Number of common prime factors (ignoring multiplicity) of sigma(n) = A000203(n) and phi(n) = A000010(n).

The programs for A081396, the canonical program `A081396.P571313652877087617` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A081396 has offset 1).

The definition of A081396 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001221, A009223, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A081396.P571313652877087617

`A001221(A009223(n+1))`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A081396

/-- `A001221(A009223(n+1))` -/
def P571313652877087617.Spec : Prop :=
  ∀ n, P571313652877087617.a n = A081396 (n + 1)

theorem P571313652877087617.correct : P571313652877087617.Spec := by
  intro n
  simp only [A081396, Nat.add_sub_cancel]

end A081396

/-! ## A081396.P251517248041734584

`∑{e}[A082055(n+1), #]`
-/

namespace A081396.P251517248041734584
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082055 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A081396.P251517248041734584

namespace A081396

/-- `∑{e}[A082055(n+1), #]` -/
def P251517248041734584.Spec : Prop :=
  ∀ n, (P251517248041734584.a n : ℤ) = A081396 (n + 1)

end A081396

/-! ## A081396.P8831399477753040343

`A001221(A082055(n+1))`
-/

namespace A081396.P8831399477753040343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A082055 (n + 1)).toNat

end

end A081396.P8831399477753040343

namespace A081396

/-- `A001221(A082055(n+1))` -/
def P8831399477753040343.Spec : Prop :=
  ∀ n, P8831399477753040343.a n = A081396 (n + 1)

end A081396

/-! ## A081396.P5055816357919604432

`∑{p}[A009223(n+1), A001222(#)]`
-/

namespace A081396.P5055816357919604432
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009223 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A001222 p

end

end A081396.P5055816357919604432

namespace A081396

/-- `∑{p}[A009223(n+1), A001222(#)]` -/
def P5055816357919604432.Spec : Prop :=
  ∀ n, P5055816357919604432.a n = A081396 (n + 1)

end A081396

/-! ## A081396.P4429830129278415817

`A001222(A082055(2*n-n+1))`
-/

namespace A081396.P4429830129278415817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A082055 ((2 * n : ℤ) - (n : ℤ) + 1).toNat).toNat

end

end A081396.P4429830129278415817

namespace A081396

/-- `A001222(A082055(2*n-n+1))` -/
def P4429830129278415817.Spec : Prop :=
  ∀ n, P4429830129278415817.a n = A081396 (n + 1)

end A081396

/-! ## A081396.P3995628735205465724

`A001221(gcd(A000010(n+1)², ∑{d}[n+1, #]))`
-/

namespace A081396.P3995628735205465724
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (Int.gcd (A000010 (n + 1) ^ 2) ((∑ d ∈ Nat.divisors (f1 n), d : ℕ) : ℤ))

end

end A081396.P3995628735205465724

namespace A081396

/-- `A001221(gcd(A000010(n+1)², ∑{d}[n+1, #]))` -/
def P3995628735205465724.Spec : Prop :=
  ∀ n, P3995628735205465724.a n = A081396 (n + 1)

end A081396

/-! ## A081396.P13817523370809477890

`∑{p}[A009223(n+1), A009223(A009223(#))]`
-/

namespace A081396.P13817523370809477890
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009223 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A009223 (A009223 p).toNat

end

end A081396.P13817523370809477890

namespace A081396

/-- `∑{p}[A009223(n+1), A009223(A009223(#))]` -/
def P13817523370809477890.Spec : Prop :=
  ∀ n, P13817523370809477890.a n = A081396 (n + 1)

end A081396

/-! ## A081396.P3804101462495557516

`∑{p}[A082055(n+1), A082055(A082055(#))]`
-/

namespace A081396.P3804101462495557516
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082055 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A082055 (A082055 p).toNat

end

end A081396.P3804101462495557516

namespace A081396

/-- `∑{p}[A082055(n+1), A082055(A082055(#))]` -/
def P3804101462495557516.Spec : Prop :=
  ∀ n, P3804101462495557516.a n = A081396 (n + 1)

end A081396

/-! ## A081396.P1949335660258862024

`A001221(A000010(n+1)/A289412(n+1))`
-/

namespace A081396.P1949335660258862024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (SequenceMachineLib.roundAway ((A000010 (n + 1) : ℚ) / (A289412 (n + 1) : ℚ))).toNat

end

end A081396.P1949335660258862024

namespace A081396

/-- `A001221(A000010(n+1)/A289412(n+1))` -/
def P1949335660258862024.Spec : Prop :=
  ∀ n, P1949335660258862024.a n = A081396 (n + 1)

end A081396

/-! ## A081396.P8552964616977566019

`A001221(A000203(n+1)/A289336(n+1))`
-/

namespace A081396.P8552964616977566019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (SequenceMachineLib.roundAway ((A000203 (n + 1) : ℚ) / (A289336 (n + 1) : ℚ))).toNat

end

end A081396.P8552964616977566019

namespace A081396

/-- `A001221(A000203(n+1)/A289336(n+1))` -/
def P8552964616977566019.Spec : Prop :=
  ∀ n, P8552964616977566019.a n = A081396 (n + 1)

end A081396

/-! ## A081396.P2840925507755231945

`A001221(gcd(A000010(n+1), A000203(n+1)))`
-/

namespace A081396.P2840925507755231945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (Int.gcd (A000010 (n + 1)) (A000203 (n + 1)))

end

end A081396.P2840925507755231945

namespace A081396

/-- `A001221(gcd(A000010(n+1), A000203(n+1)))` -/
def P2840925507755231945.Spec : Prop :=
  ∀ n, P2840925507755231945.a n = A081396 (n + 1)

end A081396

/-! ## A081396.P3307447617717872161

`A001221(gcd(1-A088580(n+1), A051612(n+1)))`
-/

namespace A081396.P3307447617717872161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (Int.gcd (1 - A088580 (n + 1)) (A051612 (n + 1)))

end

end A081396.P3307447617717872161

namespace A081396

/-- `A001221(gcd(1-A088580(n+1), A051612(n+1)))` -/
def P3307447617717872161.Spec : Prop :=
  ∀ n, P3307447617717872161.a n = A081396 (n + 1)

end A081396

/-! ## A081396.P12373580862578201035

`A001221(gcd(A039649(n+1)-1, A245092(2*n+1)))`
-/

namespace A081396.P12373580862578201035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (Int.gcd (A039649 (n + 1) - 1) (A245092 (2 * n + 1)))

end

end A081396.P12373580862578201035

namespace A081396

/-- `A001221(gcd(A039649(n+1)-1, A245092(2*n+1)))` -/
def P12373580862578201035.Spec : Prop :=
  ∀ n, P12373580862578201035.a n = A081396 (n + 1)

end A081396

/-! ## A081396.P1717661231779258183

`A001222(A082055(n+1)²)/2`
-/

namespace A081396.P1717661231779258183
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001222 (A082055 (n + 1) ^ 2).toNat : ℚ) / 2

end

end A081396.P1717661231779258183

namespace A081396

/-- `A001222(A082055(n+1)²)/2` -/
def P1717661231779258183.Spec : Prop :=
  ∀ n, P1717661231779258183.a n = (A081396 (n + 1) : ℚ)

end A081396

/-!
# A081399: Bigomega of the n-th Catalan number: a(n) = A001222(A000108(n)).

The programs for A081399, the canonical program `A081399.P317381506345155066` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A081399 has offset 0).

The definition of A081399 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2501 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A081399.P14188181099030780086

`A137687(n)+A137686(n)`
-/

namespace A081399.P14188181099030780086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137687 n + A137686 n

end

end A081399.P14188181099030780086

namespace A081399

/-- `A137687(n)+A137686(n)` -/
def P14188181099030780086.Spec : Prop :=
  ∀ n, P14188181099030780086.a n = A081399 n

theorem P14188181099030780086.correct : P14188181099030780086.Spec := by
  intro n
  simp only [A081399, Nat.add_sub_cancel, A081399.P14188181099030780086.a, A081399.P317381506345155066.f1, A081399.P317381506345155066.a, A111284, A111284.P17476789545775434546.a, A137686, A137686.P2137066375668895625.a, A137687, A137687.P10130203708334766371.a, A252736, A252736.P2865412191134230649.f1, A252736.P2865412191134230649.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A081399

/-! ## A081399.P12498397452955743476

`A023816(n)-A001222(n+1)`
-/

namespace A081399.P12498397452955743476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023816 n - A001222 (n + 1)

end

end A081399.P12498397452955743476

namespace A081399

/-- `A023816(n)-A001222(n+1)` -/
def P12498397452955743476.Spec : Prop :=
  ∀ n, P12498397452955743476.a n = A081399 n

end A081399

/-! ## A081399.P4688213694408909550

`A182921(2*n)-A001222(n+1)`
-/

namespace A081399.P4688213694408909550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182921 (2 * n) - A001222 (n + 1)

end

end A081399.P4688213694408909550

namespace A081399

/-- `A182921(2*n)-A001222(n+1)` -/
def P4688213694408909550.Spec : Prop :=
  ∀ n, P4688213694408909550.a n = A081399 n

end A081399

/-! ## A081399.P10979165468714221608

`A023979(n)-(A023980(n)+A001222(n+1))`
-/

namespace A081399.P10979165468714221608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023979 n - (A023980 n + A001222 (n + 1))

end

end A081399.P10979165468714221608

namespace A081399

/-- `A023979(n)-(A023980(n)+A001222(n+1))` -/
def P10979165468714221608.Spec : Prop :=
  ∀ n, P10979165468714221608.a n = A081399 n

end A081399

/-! ## A081399.P17569693267956669360

`A022559(n)+A023816(n)-A022559(n+1)`
-/

namespace A081399.P17569693267956669360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022559 n + (A023816 n - A022559 (n + 1))

end

end A081399.P17569693267956669360

namespace A081399

/-- `A022559(n)+A023816(n)-A022559(n+1)` -/
def P17569693267956669360.Spec : Prop :=
  ∀ n, P17569693267956669360.a n = A081399 n

end A081399

/-! ## A081399.P490635586992864335

`∑[A001222(A111284(n+1))-A001222(n+1)]`
-/

namespace A081399.P490635586992864335
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A111284 (n + 1)).toNat - A001222 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A081399.P490635586992864335

namespace A081399

/-- `∑[A001222(A111284(n+1))-A001222(n+1)]` -/
def P490635586992864335.Spec : Prop :=
  ∀ n, P490635586992864335.a n = A081399 n

end A081399

/-! ## A081399.P17247763284032883505

`A048621(2*n+1)-A001222(2*n+1)`
-/

namespace A081399.P17247763284032883505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048621 (2 * n + 1) - A001222 (2 * n + 1)

end

end A081399.P17247763284032883505

namespace A081399

/-- `A048621(2*n+1)-A001222(2*n+1)` -/
def P17247763284032883505.Spec : Prop :=
  ∀ n, P17247763284032883505.a n = A081399 n

end A081399

/-! ## A081399.P10148816281351958942

`A048621(2*n+1)+A022559(2*n)-A022559(2*n+1)`
-/

namespace A081399.P10148816281351958942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048621 (2 * n + 1) + (A022559 (2 * n) - A022559 (2 * n + 1))

end

end A081399.P10148816281351958942

namespace A081399

/-- `A048621(2*n+1)+A022559(2*n)-A022559(2*n+1)` -/
def P10148816281351958942.Spec : Prop :=
  ∀ n, P10148816281351958942.a n = A081399 n

end A081399

/-! ## A081399.P317381506345155066

`∑[A252736(A111284(n+1))-A252736(n+1)]`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A081399

/-- `∑[A252736(A111284(n+1))-A252736(n+1)]` -/
def P317381506345155066.Spec : Prop :=
  ∀ n, P317381506345155066.a n = A081399 n

theorem P317381506345155066.correct : P317381506345155066.Spec := by
  intro n
  simp only [A081399]

end A081399

