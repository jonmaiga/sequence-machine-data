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
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C037
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
import Seq.B005.C002
import Seq.B006.C000
import Seq.B006.C001
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
# A140400: Numbers n such that A140397(n) = 2.

The programs for A140400, the canonical program `A140400.P10796689973895693877` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A140400 has offset 1).

The definition of A140400 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A140400.P10796689973895693877

`eq[2, floor(3*n/ϕ)%3]`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A140400

/-- `eq[2, floor(3*n/ϕ)%3]` -/
def P10796689973895693877.Spec : Prop :=
  ∀ n, (P10796689973895693877.a n : ℤ) = A140400 (n + 1)

theorem P10796689973895693877.correct : P10796689973895693877.Spec := by
  intro n
  simp only [A140400, Nat.add_sub_cancel]

end A140400

/-! ## A140400.P11314747286351806243

`∩[ceil(ϕ*(2/3+n)+n)-n, floor(ϕ*n)]`
-/

namespace A140400.P11314747286351806243
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.goldenRatio * ((2 : ℚ) / 3 + (n : ℚ) : ℝ) + (n : ℝ)⌉ - (n : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.goldenRatio * (n : ℝ)⌋

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140400.P11314747286351806243

namespace A140400

/-- `∩[ceil(ϕ*(2/3+n)+n)-n, floor(ϕ*n)]` -/
def P11314747286351806243.Spec : Prop :=
  ∀ n, (P11314747286351806243.a n : ℤ) = A140400 (n + 1)

end A140400

/-! ## A140400.P12241784441459116985

`lt[1, A140397(n+1)]+1`
-/

namespace A140400.P12241784441459116985
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140397 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A140400.P12241784441459116985

namespace A140400

/-- `lt[1, A140397(n+1)]+1` -/
def P12241784441459116985.Spec : Prop :=
  ∀ n, (P12241784441459116985.a n : ℤ) = A140400 (n + 1)

end A140400

/-! ## A140400.P17731125105637240980

`eq[2, A140397(n+2)]+2`
-/

namespace A140400.P17731125105637240980
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140397 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2

end

end A140400.P17731125105637240980

namespace A140400

/-- `eq[2, A140397(n+2)]+2` -/
def P17731125105637240980.Spec : Prop :=
  ∀ n, (P17731125105637240980.a n : ℤ) = A140400 (n + 1)

end A140400

/-! ## A140400.P14491006338709381378

`eq[0, log2(a(A140397(n)))]` with `a(0)=2, a(1)=2`
-/

namespace A140400.P14491006338709381378
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℝ := SequenceMachineLib.rec [2, 2] fun n f2 =>
  Real.logb 2 (f2 (A140397 n).toNat)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℝ) = f2 j) n

end

end A140400.P14491006338709381378

namespace A140400

/-- `eq[0, log2(a(A140397(n)))]` -/
def P14491006338709381378.Spec : Prop :=
  ∀ n, (P14491006338709381378.a n : ℤ) = A140400 (n + 1)

end A140400

/-! ## A140400.P305310915370300132

`filter[A026352(n), A181712(#)]`
-/

namespace A140400.P305310915370300132
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026352 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A181712 (f1 j).toNat = 1) n)

end

end A140400.P305310915370300132

namespace A140400

/-- `filter[A026352(n), A181712(#)]` -/
def P305310915370300132.Spec : Prop :=
  ∀ n, P305310915370300132.a n = A140400 (n + 1)

end A140400

/-! ## A140400.P8532665050094343249

`filter[A026355(n), A181712(#)]`
-/

namespace A140400.P8532665050094343249
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026355 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A181712 (f1 j).toNat = 1) n)

end

end A140400.P8532665050094343249

namespace A140400

/-- `filter[A026355(n), A181712(#)]` -/
def P8532665050094343249.Spec : Prop :=
  ∀ n, P8532665050094343249.a n = A140400 (n + 1)

end A140400

/-! ## A140400.P13078263081963741056

`filter[A004957(n+1), A181712(#)]`
-/

namespace A140400.P13078263081963741056
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004957 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A181712 (f1 j).toNat = 1) n)

end

end A140400.P13078263081963741056

namespace A140400

/-- `filter[A004957(n+1), A181712(#)]` -/
def P13078263081963741056.Spec : Prop :=
  ∀ n, P13078263081963741056.a n = A140400 (n + 1)

end A140400

/-! ## A140400.P14076662915296718665

`filter[A005652(n+1), A181712(#)]`
-/

namespace A140400.P14076662915296718665
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005652 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A181712 (f1 j).toNat = 1) n)

end

end A140400.P14076662915296718665

namespace A140400

/-- `filter[A005652(n+1), A181712(#)]` -/
def P14076662915296718665.Spec : Prop :=
  ∀ n, P14076662915296718665.a n = A140400 (n + 1)

end A140400

/-! ## A140400.P13764054319248334454

`filter[A058065(n+1), A181712(#)]`
-/

namespace A140400.P13764054319248334454
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058065 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A181712 (f1 j).toNat = 1) n)

end

end A140400.P13764054319248334454

namespace A140400

/-- `filter[A058065(n+1), A181712(#)]` -/
def P13764054319248334454.Spec : Prop :=
  ∀ n, P13764054319248334454.a n = A140400 (n + 1)

end A140400

/-! ## A140400.P17229957677915022346

`filter[A181714(n+1), A078588(#)]`
-/

namespace A140400.P17229957677915022346
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181714 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A078588 (f1 j).toNat = 1) n)

end

end A140400.P17229957677915022346

namespace A140400

/-- `filter[A181714(n+1), A078588(#)]` -/
def P17229957677915022346.Spec : Prop :=
  ∀ n, P17229957677915022346.a n = A140400 (n + 1)

end A140400

/-! ## A140400.P13076588817296175824

`filter[A099267(n+1), A181712(#)]`
-/

namespace A140400.P13076588817296175824
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099267 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A181712 (f1 j).toNat = 1) n)

end

end A140400.P13076588817296175824

namespace A140400

/-- `filter[A099267(n+1), A181712(#)]` -/
def P13076588817296175824.Spec : Prop :=
  ∀ n, P13076588817296175824.a n = A140400 (n + 1)

end A140400

/-! ## A140400.P11953571428894529653

`filter[A184582(n+1), A181712(#)]`
-/

namespace A140400.P11953571428894529653
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184582 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A181712 (f1 j).toNat = 1) n)

end

end A140400.P11953571428894529653

namespace A140400

/-- `filter[A184582(n+1), A181712(#)]` -/
def P11953571428894529653.Spec : Prop :=
  ∀ n, P11953571428894529653.a n = A140400 (n + 1)

end A140400

/-! ## A140400.P56927652790149066

`filter[A181714(n+1), A187950(#)]`
-/

namespace A140400.P56927652790149066
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181714 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A187950 (f1 j).toNat = 1) n)

end

end A140400.P56927652790149066

namespace A140400

/-- `filter[A181714(n+1), A187950(#)]` -/
def P56927652790149066.Spec : Prop :=
  ∀ n, P56927652790149066.a n = A140400 (n + 1)

end A140400

/-! ## A140400.P14681776410766495938

`filter[A187952(n+1), A181712(#)]`
-/

namespace A140400.P14681776410766495938
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187952 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A181712 (f1 j).toNat = 1) n)

end

end A140400.P14681776410766495938

namespace A140400

/-- `filter[A187952(n+1), A181712(#)]` -/
def P14681776410766495938.Spec : Prop :=
  ∀ n, P14681776410766495938.a n = A140400 (n + 1)

end A140400

/-! ## A140400.P7830634637621109139

`filter[A188028(n+1), A181712(#)]`
-/

namespace A140400.P7830634637621109139
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188028 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A181712 (f1 j).toNat = 1) n)

end

end A140400.P7830634637621109139

namespace A140400

/-- `filter[A188028(n+1), A181712(#)]` -/
def P7830634637621109139.Spec : Prop :=
  ∀ n, P7830634637621109139.a n = A140400 (n + 1)

end A140400

/-! ## A140400.P16755314345310840064

`filter[A181714(n+1), A188432(#)]`
-/

namespace A140400.P16755314345310840064
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181714 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A188432 (f1 j).toNat = 1) n)

end

end A140400.P16755314345310840064

namespace A140400

/-- `filter[A181714(n+1), A188432(#)]` -/
def P16755314345310840064.Spec : Prop :=
  ∀ n, P16755314345310840064.a n = A140400 (n + 1)

end A140400

/-! ## A140400.P12006156121295981940

`filter[A181714(n+1), A189479(#)]`
-/

namespace A140400.P12006156121295981940
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181714 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A189479 (f1 j).toNat = 1) n)

end

end A140400.P12006156121295981940

namespace A140400

/-- `filter[A181714(n+1), A189479(#)]` -/
def P12006156121295981940.Spec : Prop :=
  ∀ n, P12006156121295981940.a n = A140400 (n + 1)

end A140400

/-! ## A140400.P11235558318296631699

`filter[A189662(n+1), A181712(#)]`
-/

namespace A140400.P11235558318296631699
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189662 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A181712 (f1 j).toNat = 1) n)

end

end A140400.P11235558318296631699

namespace A140400

/-- `filter[A189662(n+1), A181712(#)]` -/
def P11235558318296631699.Spec : Prop :=
  ∀ n, P11235558318296631699.a n = A140400 (n + 1)

end A140400

/-!
# A140401: Let S be the set of numbers formed from the sum of three distinct elements of A140398, or the sum of three distinct elements of A140399, or the sum of three distinct elements of A140400; sequence gives complement of S.

The programs for A140401, there is no canonical definition to state claims against.
-/

/-! ## A140401.P14899263963078510331

`∑[A036225(A298095(n+2))]`
-/

namespace A140401.P14899263963078510331
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036225 (A298095 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A140401.P14899263963078510331

/-! ## A140401.P4555886647814537951

`∑[A274353(A002636(A244986(n)))]`
-/

namespace A140401.P4555886647814537951
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274353 (A002636 (A244986 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A140401.P4555886647814537951

/-! ## A140401.P105448359034557893

`∑[A284582(A325973(A000044(n)))]`
-/

namespace A140401.P105448359034557893
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284582 (A325973 (A000044 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A140401.P105448359034557893

/-! ## A140401.P16728971441014774931

`∑[A325615(A000621(A341721(n+1)))]`
-/

namespace A140401.P16728971441014774931
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325615 (A000621 (A341721 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A140401.P16728971441014774931

/-!
# A140402: Expansion of x^4/((1-x)^2*(1-x^3)) + x^5/((1-x)*(1-x^2)*(1-x^5)).

The programs for A140402, the canonical program `A140402.P8787166367659973012` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A140402 has offset 0).

The definition of A140402 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((x^4-3x^6+2x^7-x^8+x^9+x^11-x^12)/(1-3x+2x^2+x^3-2x^5+x^6+x^7-2x^8+x^10+2x^11-3x^12+x^13))` (program `A140402.P8787166367659973012`, by `A140402.P8787166367659973012.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A140402.P8787166367659973012

`ogf((x^4-3x^6+2x^7-x^8+x^9+x^11-x^12)/(1-3x+2x^2+x^3-2x^5+x^6+x^7-2x^8+x^10+2x^11-3x^12+x^13))`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A140402

/-- `ogf((x^4-3x^6+2x^7-x^8+x^9+x^11-x^12)/(1-3x+2x^2+x^3-2x^5+x^6+x^7-2x^8+x^10+2x^11-3x^12+x^13))` -/
def P8787166367659973012.Spec : Prop :=
  ∀ n, P8787166367659973012.a n = A140402 n

theorem P8787166367659973012.correct : P8787166367659973012.Spec := by
  intro n
  simp only [A140402]

end A140402

/-! ## A140402.P742752717128162716

`A140403(n)/8`
-/

namespace A140402.P742752717128162716
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A140403 n : ℚ) / 8

end

end A140402.P742752717128162716

namespace A140402

/-- `A140403(n)/8` -/
def P742752717128162716.Spec : Prop :=
  ∀ n, P742752717128162716.a n = (A140402 n : ℚ)

end A140402

/-! ## A140402.P12548544876789264653

`A108579(n+1)-A211524(n)`
-/

namespace A140402.P12548544876789264653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108579 (n + 1) - A211524 n

end

end A140402.P12548544876789264653

namespace A140402

/-- `A108579(n+1)-A211524(n)` -/
def P12548544876789264653.Spec : Prop :=
  ∀ n, P12548544876789264653.a n = A140402 n

end A140402

/-! ## A140402.P13075886914447659763

`∑[A057355(n)]+1-A001399(n)`
-/

namespace A140402.P13075886914447659763
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057355 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (1 - A001399 n)

end

end A140402.P13075886914447659763

namespace A140402

/-- `∑[A057355(n)]+1-A001399(n)` -/
def P13075886914447659763.Spec : Prop :=
  ∀ n, P13075886914447659763.a n = A140402 n

end A140402

/-! ## A140402.P8017937532324150622

`A108578(n+1)/8-A211524(n)`
-/

namespace A140402.P8017937532324150622
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A108578 (n + 1) : ℚ) / 8 - (A211524 n : ℚ)

end

end A140402.P8017937532324150622

namespace A140402

/-- `A108578(n+1)/8-A211524(n)` -/
def P8017937532324150622.Spec : Prop :=
  ∀ n, P8017937532324150622.a n = (A140402 n : ℚ)

end A140402

/-! ## A140402.P4685879352851163322

`A004652(n)-(A211524(n)+A063197(n+1))`
-/

namespace A140402.P4685879352851163322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004652 n - (A211524 n + A063197 (n + 1))

end

end A140402.P4685879352851163322

namespace A140402

/-- `A004652(n)-(A211524(n)+A063197(n+1))` -/
def P4685879352851163322.Spec : Prop :=
  ∀ n, P4685879352851163322.a n = A140402 n

end A140402

/-! ## A140402.P16195941361298264126

`A006085(A140403(n))`
-/

namespace A140402.P16195941361298264126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006085 (A140403 n).toNat

end

end A140402.P16195941361298264126

namespace A140402

/-- `A006085(A140403(n))` -/
def P16195941361298264126.Spec : Prop :=
  ∀ n, P16195941361298264126.a n = A140402 n

end A140402

/-!
# A140403: Expansion of 8*x^4/((1-x)^2*(1-x^3)) + 8*x^5/((1-x)*(1-x^2)*(1-x^5)).

The programs for A140403, the canonical program `A140403.P17714820254939876301` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A140403 has offset 0).

The definition of A140403 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((8x^4-24x^6+16x^7-8x^8+8x^9+8x^11-8x^12)/(1-3x+2x^2+x^3-2x^5+x^6+x^7-2x^8+x^10+2x^11-3x^12+x^13))` (program `A140403.P17714820254939876301`, by `A140403.P17714820254939876301.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A140403.P17714820254939876301

`ogf((8x^4-24x^6+16x^7-8x^8+8x^9+8x^11-8x^12)/(1-3x+2x^2+x^3-2x^5+x^6+x^7-2x^8+x^10+2x^11-3x^12+x^13))`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A140403

/-- `ogf((8x^4-24x^6+16x^7-8x^8+8x^9+8x^11-8x^12)/(1-3x+2x^2+x^3-2x^5+x^6+x^7-2x^8+x^10+2x^11-3x^12+x^13))` -/
def P17714820254939876301.Spec : Prop :=
  ∀ n, P17714820254939876301.a n = A140403 n

theorem P17714820254939876301.correct : P17714820254939876301.Spec := by
  intro n
  simp only [A140403]

end A140403

/-! ## A140403.P9716216285738203375

`a(n-2)+a(n-3)-a(n-7)-a(n-8)+a(n-10)` with `a(0)=0, a(1)=0, a(2)=0, a(3)=0, a(4)=8, a(5)=24, a(6)=32, a(7)=56, a(8)=72, a(9)=96`
-/

namespace A140403.P9716216285738203375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0, 0, 0, 8, 24, 32, 56, 72, 96] fun n a =>
  a (n - 2) + a (n - 3) - a (n - 7) - a (n - 8) + a (n - 10)

end

end A140403.P9716216285738203375

namespace A140403

/-- `a(n-2)+a(n-3)-a(n-7)-a(n-8)+a(n-10)` -/
def P9716216285738203375.Spec : Prop :=
  ∀ n, P9716216285738203375.a n = A140403 n

end A140403

/-! ## A140403.P13003125551973494620

`8*A140402(n)`
-/

namespace A140403.P13003125551973494620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  8 * A140402 n

end

end A140403.P13003125551973494620

namespace A140403

/-- `8*A140402(n)` -/
def P13003125551973494620.Spec : Prop :=
  ∀ n, P13003125551973494620.a n = A140403 n

end A140403

/-! ## A140403.P6653439912324664530

`8*(A108579(n+1)-A211524(n))`
-/

namespace A140403.P6653439912324664530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  8 * (A108579 (n + 1) - A211524 n)

end

end A140403.P6653439912324664530

namespace A140403

/-- `8*(A108579(n+1)-A211524(n))` -/
def P6653439912324664530.Spec : Prop :=
  ∀ n, P6653439912324664530.a n = A140403 n

end A140403

/-! ## A140403.P606411970033202738

`A108578(n+1)-8*A211524(n)`
-/

namespace A140403.P606411970033202738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108578 (n + 1) - 8 * A211524 n

end

end A140403.P606411970033202738

namespace A140403

/-- `A108578(n+1)-8*A211524(n)` -/
def P606411970033202738.Spec : Prop :=
  ∀ n, P606411970033202738.a n = A140403 n

end A140403

/-! ## A140403.P9905187104556404298

`A108578(n+1)-A008590(A211524(n))`
-/

namespace A140403.P9905187104556404298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108578 (n + 1) - A008590 (A211524 n).toNat

end

end A140403.P9905187104556404298

namespace A140403

/-- `A108578(n+1)-A008590(A211524(n))` -/
def P9905187104556404298.Spec : Prop :=
  ∀ n, P9905187104556404298.a n = A140403 n

end A140403

/-! ## A140403.P9828599336773296470

`8*(A004652(n)-A063197(n+1))-A008590(A211524(n))`
-/

namespace A140403.P9828599336773296470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  8 * (A004652 n - A063197 (n + 1)) - A008590 (A211524 n).toNat

end

end A140403.P9828599336773296470

namespace A140403

/-- `8*(A004652(n)-A063197(n+1))-A008590(A211524(n))` -/
def P9828599336773296470.Spec : Prop :=
  ∀ n, P9828599336773296470.a n = A140403 n

end A140403

/-! ## A140403.P5503575521485877488

`A008590(A140402(n))`
-/

namespace A140403.P5503575521485877488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008590 (A140402 n).toNat

end

end A140403.P5503575521485877488

namespace A140403

/-- `A008590(A140402(n))` -/
def P5503575521485877488.Spec : Prop :=
  ∀ n, P5503575521485877488.a n = A140403 n

end A140403

/-! ## A140403.P14477071109615649410

`A008598(A140402(n))/dr(A001504(n))`
-/

namespace A140403.P14477071109615649410
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008598 (A140402 n).toNat : ℚ) / (SequenceMachineLib.digitalRoot (A001504 n) : ℚ)

end

end A140403.P14477071109615649410

namespace A140403

/-- `A008598(A140402(n))/dr(A001504(n))` -/
def P14477071109615649410.Spec : Prop :=
  ∀ n, P14477071109615649410.a n = (A140403 n : ℚ)

end A140403

/-! ## A140403.P13142840158646082128

`A008598(A140402(n))/A036453(n+1)`
-/

namespace A140403.P13142840158646082128
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008598 (A140402 n).toNat : ℚ) / (A036453 (n + 1) : ℚ)

end

end A140403.P13142840158646082128

namespace A140403

/-- `A008598(A140402(n))/A036453(n+1)` -/
def P13142840158646082128.Spec : Prop :=
  ∀ n, P13142840158646082128.a n = (A140403 n : ℚ)

end A140403

/-! ## A140403.P3082113785366895157

`A008598(A140402(n))/A014963(A001316(n))`
-/

namespace A140403.P3082113785366895157
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008598 (A140402 n).toNat : ℚ) / (A014963 (A001316 n).toNat : ℚ)

end

end A140403.P3082113785366895157

namespace A140403

/-- `A008598(A140402(n))/A014963(A001316(n))` -/
def P3082113785366895157.Spec : Prop :=
  ∀ n, P3082113785366895157.a n = (A140403 n : ℚ)

end A140403

/-! ## A140403.P6074475677924612239

`A008590(A004652(n)-(A211524(n)+A063197(n+1)))`
-/

namespace A140403.P6074475677924612239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008590 (A004652 n - (A211524 n + A063197 (n + 1))).toNat

end

end A140403.P6074475677924612239

namespace A140403

/-- `A008590(A004652(n)-(A211524(n)+A063197(n+1)))` -/
def P6074475677924612239.Spec : Prop :=
  ∀ n, P6074475677924612239.a n = A140403 n

end A140403

/-! ## A140403.P11926618285854840620

`A008598(A140402(n))/A178815(n+1)`
-/

namespace A140403.P11926618285854840620
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008598 (A140402 n).toNat : ℚ) / (A178815 (n + 1) : ℚ)

end

end A140403.P11926618285854840620

namespace A140403

/-- `A008598(A140402(n))/A178815(n+1)` -/
def P11926618285854840620.Spec : Prop :=
  ∀ n, P11926618285854840620.a n = (A140403 n : ℚ)

end A140403

/-!
# A140404: a(n) = binomial(n+5, 5)*7^n.

The programs for A140404, the canonical program `A140404.P890106776510930071` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A140404 has offset 0).

The definition of A140404 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `C(n+5, 5)*7^n` (program `A140404.P890106776510930071`, by `A140404.P890106776510930071.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A140404.P12548237169196357161

`7^n*C(n+5, 5)`
-/

namespace A140404.P12548237169196357161
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7 ^ n * Nat.choose (n + 5) 5

end

end A140404.P12548237169196357161

namespace A140404

/-- `7^n*C(n+5, 5)` -/
def P12548237169196357161.Spec : Prop :=
  ∀ n, (P12548237169196357161.a n : ℤ) = A140404 n

theorem P12548237169196357161.correct : P12548237169196357161.Spec := by
  intro n
  simp only [A140404, Nat.add_sub_cancel, A140404.P12548237169196357161.a, A140404.P890106776510930071.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A140404

/-! ## A140404.P890106776510930071

`C(n+5, 5)*7^n`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A140404

/-- `C(n+5, 5)*7^n` -/
def P890106776510930071.Spec : Prop :=
  ∀ n, (P890106776510930071.a n : ℤ) = A140404 n

theorem P890106776510930071.correct : P890106776510930071.Spec := by
  intro n
  simp only [A140404]

end A140404

/-! ## A140404.P16673846934735574415

`7^n*∑[∑[∑[∑[n+1]]]]`
-/

namespace A140404.P16673846934735574415
noncomputable section

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7 ^ n * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A140404.P16673846934735574415

namespace A140404

/-- `7^n*∑[∑[∑[∑[n+1]]]]` -/
def P16673846934735574415.Spec : Prop :=
  ∀ n, (P16673846934735574415.a n : ℤ) = A140404 n

end A140404

/-! ## A140404.P16365541525675017704

`A027466(A167499(n+4))`
-/

namespace A140404.P16365541525675017704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027466 (A167499 (n + 4)).toNat

end

end A140404.P16365541525675017704

namespace A140404

/-- `A027466(A167499(n+4))` -/
def P16365541525675017704.Spec : Prop :=
  ∀ n, P16365541525675017704.a n = A140404 n

end A140404

/-! ## A140404.P4242135523754047178

`A013614(eq[5, A025581(n)])`
-/

namespace A140404.P4242135523754047178
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013614 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A140404.P4242135523754047178

namespace A140404

/-- `A013614(eq[5, A025581(n)])` -/
def P4242135523754047178.Spec : Prop :=
  ∀ n, P4242135523754047178.a n = A140404 n

end A140404

/-! ## A140404.P13323628419861298648

`A013614(eq[6, A193739(n)])`
-/

namespace A140404.P13323628419861298648
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193739 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013614 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A140404.P13323628419861298648

namespace A140404

/-- `A013614(eq[6, A193739(n)])` -/
def P13323628419861298648.Spec : Prop :=
  ∀ n, P13323628419861298648.a n = A140404 n

end A140404

/-! ## A140404.P3991822292848138487

`A013614(A000217(n+6)-6)`
-/

namespace A140404.P3991822292848138487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013614 (A000217 (n + 6) - 6).toNat

end

end A140404.P3991822292848138487

namespace A140404

/-- `A013614(A000217(n+6)-6)` -/
def P3991822292848138487.Spec : Prop :=
  ∀ n, P3991822292848138487.a n = A140404 n

end A140404

/-! ## A140404.P14256693150700394792

`A013614(eq[6, A004736(n+1)])`
-/

namespace A140404.P14256693150700394792
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013614 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A140404.P14256693150700394792

namespace A140404

/-- `A013614(eq[6, A004736(n+1)])` -/
def P14256693150700394792.Spec : Prop :=
  ∀ n, P14256693150700394792.a n = A140404 n

end A140404

/-!
# A140405: a(n) = binomial(n+6, 6)*5^n.

The programs for A140405, the canonical program `A140405.P7820370224449306693` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A140405 has offset 0).

The definition of A140405 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `C(n+6, 6)*5^n` (program `A140405.P7820370224449306693`, by `A140405.P7820370224449306693.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A140405.P7820370224449306693

`C(n+6, 6)*5^n`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A140405

/-- `C(n+6, 6)*5^n` -/
def P7820370224449306693.Spec : Prop :=
  ∀ n, (P7820370224449306693.a n : ℤ) = A140405 n

theorem P7820370224449306693.correct : P7820370224449306693.Spec := by
  intro n
  simp only [A140405]

end A140405

/-! ## A140405.P18151796345238676544

`(30/n+5)*a(n-1)` with `a(0)=1`
-/

namespace A140405.P18151796345238676544
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (30 / (n : ℚ) + 5) * a (n - 1)

end

end A140405.P18151796345238676544

namespace A140405

/-- `(30/n+5)*a(n-1)` -/
def P18151796345238676544.Spec : Prop :=
  ∀ n, P18151796345238676544.a n = (A140405 n : ℚ)

end A140405

/-! ## A140405.P7787561674644549790

`5^n*∑[∑[∑[∑[∑[n+1]]]]]`
-/

namespace A140405.P7787561674644549790
noncomputable section

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f5 j

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5 ^ n * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A140405.P7787561674644549790

namespace A140405

/-- `5^n*∑[∑[∑[∑[∑[n+1]]]]]` -/
def P7787561674644549790.Spec : Prop :=
  ∀ n, (P7787561674644549790.a n : ℤ) = A140405 n

end A140405

/-! ## A140405.P10760968789720726270

`A038243(eq[6, A002262(n)])`
-/

namespace A140405.P10760968789720726270
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038243 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A140405.P10760968789720726270

namespace A140405

/-- `A038243(eq[6, A002262(n)])` -/
def P10760968789720726270.Spec : Prop :=
  ∀ n, P10760968789720726270.a n = A140405 n

end A140405

/-! ## A140405.P6406947805060842772

`A013612(eq[6, A025581(n)])`
-/

namespace A140405.P6406947805060842772
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013612 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A140405.P6406947805060842772

namespace A140405

/-- `A013612(eq[6, A025581(n)])` -/
def P6406947805060842772.Spec : Prop :=
  ∀ n, P6406947805060842772.a n = A140405 n

end A140405

/-! ## A140405.P15310697599795772586

`A013612(A000096(n+6)-6)`
-/

namespace A140405.P15310697599795772586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013612 (A000096 (n + 6) - 6).toNat

end

end A140405.P15310697599795772586

namespace A140405

/-- `A013612(A000096(n+6)-6)` -/
def P15310697599795772586.Spec : Prop :=
  ∀ n, P15310697599795772586.a n = A140405 n

end A140405

/-! ## A140405.P12120600666981931060

`A013612(A000217(n+7)-7)`
-/

namespace A140405.P12120600666981931060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013612 (A000217 (n + 7) - 7).toNat

end

end A140405.P12120600666981931060

namespace A140405

/-- `A013612(A000217(n+7)-7)` -/
def P12120600666981931060.Spec : Prop :=
  ∀ n, P12120600666981931060.a n = A140405 n

end A140405

/-! ## A140405.P17906328275811077154

`A013612(A000124(n+7)-8)`
-/

namespace A140405.P17906328275811077154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013612 (A000124 (n + 7) - 8).toNat

end

end A140405.P17906328275811077154

namespace A140405

/-- `A013612(A000124(n+7)-8)` -/
def P17906328275811077154.Spec : Prop :=
  ∀ n, P17906328275811077154.a n = A140405 n

end A140405

/-! ## A140405.P15456640760672595367

`A013612(Δ[A023551(n+2)]-1)`
-/

namespace A140405.P15456640760672595367
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023551 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013612 (f1 (n + 1) - f1 n - 1).toNat

end

end A140405.P15456640760672595367

namespace A140405

/-- `A013612(Δ[A023551(n+2)]-1)` -/
def P15456640760672595367.Spec : Prop :=
  ∀ n, P15456640760672595367.a n = A140405 n

end A140405

/-!
# A140406: a(n) = binomial(n+6, 6)*8^n.

The programs for A140406, the canonical program `A140406.P13581117013226654960` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A140406 has offset 0).

The definition of A140406 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `C(n+6, 6)*8^n` (program `A140406.P13581117013226654960`, by `A140406.P13581117013226654960.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A140406.P9079086151206714843

`8^n*C(n+6, 6)`
-/

namespace A140406.P9079086151206714843
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8 ^ n * Nat.choose (n + 6) 6

end

end A140406.P9079086151206714843

namespace A140406

/-- `8^n*C(n+6, 6)` -/
def P9079086151206714843.Spec : Prop :=
  ∀ n, (P9079086151206714843.a n : ℤ) = A140406 n

theorem P9079086151206714843.correct : P9079086151206714843.Spec := by
  intro n
  simp only [A140406, Nat.add_sub_cancel, A140406.P9079086151206714843.a, A140406.P13581117013226654960.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A140406

/-! ## A140406.P13581117013226654960

`C(n+6, 6)*8^n`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A140406

/-- `C(n+6, 6)*8^n` -/
def P13581117013226654960.Spec : Prop :=
  ∀ n, (P13581117013226654960.a n : ℤ) = A140406 n

theorem P13581117013226654960.correct : P13581117013226654960.Spec := by
  intro n
  simp only [A140406]

end A140406

/-! ## A140406.P5706101235699333584

`4*(12/n+2)*a(n-1)` with `a(0)=1`
-/

namespace A140406.P5706101235699333584
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  4 * ((12 / (n : ℚ) + 2) * a (n - 1))

end

end A140406.P5706101235699333584

namespace A140406

/-- `4*(12/n+2)*a(n-1)` -/
def P5706101235699333584.Spec : Prop :=
  ∀ n, P5706101235699333584.a n = (A140406 n : ℚ)

end A140406

/-! ## A140406.P17966704278463780035

`2^n*A054337(n)`
-/

namespace A140406.P17966704278463780035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * A054337 n

end

end A140406.P17966704278463780035

namespace A140406

/-- `2^n*A054337(n)` -/
def P17966704278463780035.Spec : Prop :=
  ∀ n, P17966704278463780035.a n = A140406 n

end A140406

/-! ## A140406.P6798276794477377621

`4^n*A002409(n)`
-/

namespace A140406.P6798276794477377621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (4 ^ n : ℤ) * A002409 n

end

end A140406.P6798276794477377621

namespace A140406

/-- `4^n*A002409(n)` -/
def P6798276794477377621.Spec : Prop :=
  ∀ n, P6798276794477377621.a n = A140406 n

end A140406

/-! ## A140406.P14131092308744613616

`abs((-8)^n*A000579(n+6))`
-/

namespace A140406.P14131092308744613616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(-8) ^ n * A000579 (n + 6)|

end

end A140406.P14131092308744613616

namespace A140406

/-- `abs((-8)^n*A000579(n+6))` -/
def P14131092308744613616.Spec : Prop :=
  ∀ n, P14131092308744613616.a n = A140406 n

end A140406

/-! ## A140406.P8954591841273316514

`8^n*∑[∑[A000332(n+4)]]`
-/

namespace A140406.P8954591841273316514
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000332 (n + 4)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (8 ^ n : ℤ) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A140406.P8954591841273316514

namespace A140406

/-- `8^n*∑[∑[A000332(n+4)]]` -/
def P8954591841273316514.Spec : Prop :=
  ∀ n, P8954591841273316514.a n = A140406 n

end A140406

/-! ## A140406.P1680677685834992696

`8^n*∑[∑[∑[A000292(n+1)]]]`
-/

namespace A140406.P1680677685834992696
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000292 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (8 ^ n : ℤ) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A140406.P1680677685834992696

namespace A140406

/-- `8^n*∑[∑[∑[A000292(n+1)]]]` -/
def P1680677685834992696.Spec : Prop :=
  ∀ n, P1680677685834992696.a n = A140406 n

end A140406

/-! ## A140406.P12267139345650378628

`A081654(n)*A082140(n)`
-/

namespace A140406.P12267139345650378628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081654 n * A082140 n

end

end A140406.P12267139345650378628

namespace A140406

/-- `A081654(n)*A082140(n)` -/
def P12267139345650378628.Spec : Prop :=
  ∀ n, P12267139345650378628.a n = A140406 n

end A140406

/-! ## A140406.P13991887342751684269

`A002409(n)*A056450(2*n)`
-/

namespace A140406.P13991887342751684269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002409 n * A056450 (2 * n)

end

end A140406.P13991887342751684269

namespace A140406

/-- `A002409(n)*A056450(2*n)` -/
def P13991887342751684269.Spec : Prop :=
  ∀ n, P13991887342751684269.a n = A140406 n

end A140406

/-! ## A140406.P13990104701817488696

`A000079(n)²*∑[A006976(n)]`
-/

namespace A140406.P13990104701817488696
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006976 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n ^ 2 * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A140406.P13990104701817488696

namespace A140406

/-- `A000079(n)²*∑[A006976(n)]` -/
def P13990104701817488696.Spec : Prop :=
  ∀ n, P13990104701817488696.a n = A140406 n

end A140406

/-! ## A140406.P11004855847086102778

`A002409(n)*A011782(Δ[n²])`
-/

namespace A140406.P11004855847086102778
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002409 n * A011782 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A140406.P11004855847086102778

namespace A140406

/-- `A002409(n)*A011782(Δ[n²])` -/
def P11004855847086102778.Spec : Prop :=
  ∀ n, P11004855847086102778.a n = A140406 n

end A140406

/-! ## A140406.P12939799677080706194

`A002409(n)*A011782(n+1)²`
-/

namespace A140406.P12939799677080706194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002409 n * A011782 (n + 1) ^ 2

end

end A140406.P12939799677080706194

namespace A140406

/-- `A002409(n)*A011782(n+1)²` -/
def P12939799677080706194.Spec : Prop :=
  ∀ n, P12939799677080706194.a n = A140406 n

end A140406

/-! ## A140406.P16659925084829427901

`∑[A006976(n)]*A000079(2*n)`
-/

namespace A140406.P16659925084829427901
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006976 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A000079 (2 * n)

end

end A140406.P16659925084829427901

namespace A140406

/-- `∑[A006976(n)]*A000079(2*n)` -/
def P16659925084829427901.Spec : Prop :=
  ∀ n, P16659925084829427901.a n = A140406 n

end A140406

/-! ## A140406.P1449007719031380753

`C(n+6, 6)*∑[A011782(n)]*A000079(n)²`
-/

namespace A140406.P1449007719031380753
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (n + 6) 6 : ℤ) * (∑ j ∈ Finset.range (n + 1), f1 j) * A000079 n ^ 2

end

end A140406.P1449007719031380753

namespace A140406

/-- `C(n+6, 6)*∑[A011782(n)]*A000079(n)²` -/
def P1449007719031380753.Spec : Prop :=
  ∀ n, P1449007719031380753.a n = A140406 n

end A140406

/-! ## A140406.P18264343577765254816

`A050988(n+6)/A000244(n)*A000302(n)`
-/

namespace A140406.P18264343577765254816
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A050988 (n + 6) : ℚ) / (A000244 n : ℚ) * (A000302 n : ℚ)

end

end A140406.P18264343577765254816

namespace A140406

/-- `A050988(n+6)/A000244(n)*A000302(n)` -/
def P18264343577765254816.Spec : Prop :=
  ∀ n, P18264343577765254816.a n = (A140406 n : ℚ)

end A140406

/-! ## A140406.P1438270177637943361

`(A082140(n+1)-A082139(n+1))*A011782(n+1)²`
-/

namespace A140406.P1438270177637943361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A082140 (n + 1) - A082139 (n + 1)) * A011782 (n + 1) ^ 2

end

end A140406.P1438270177637943361

namespace A140406

/-- `(A082140(n+1)-A082139(n+1))*A011782(n+1)²` -/
def P1438270177637943361.Spec : Prop :=
  ∀ n, P1438270177637943361.a n = A140406 n

end A140406

/-! ## A140406.P12786568295799100722

`(A082140(n+1)-A082139(n+1))*A011782(2*n+1)`
-/

namespace A140406.P12786568295799100722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A082140 (n + 1) - A082139 (n + 1)) * A011782 (2 * n + 1)

end

end A140406.P12786568295799100722

namespace A140406

/-- `(A082140(n+1)-A082139(n+1))*A011782(2*n+1)` -/
def P12786568295799100722.Spec : Prop :=
  ∀ n, P12786568295799100722.a n = A140406 n

end A140406

/-!
# A140407: A000225 interleaved with A000051.

The programs for A140407, the canonical program `A140407.P14447950768482046044` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A140407 has offset 0).

The definition of A140407 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 664 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A140407.P14447950768482046044

`(-1)^n+2*a(n-2)` with `a(0)=1, a(1)=2`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A140407

/-- `(-1)^n+2*a(n-2)` -/
def P14447950768482046044.Spec : Prop :=
  ∀ n, P14447950768482046044.a n = A140407 n

theorem P14447950768482046044.correct : P14447950768482046044.Spec := by
  intro n
  simp only [A140407]

end A140407

/-! ## A140407.P12097915508047952846

`2*(a(n-2)-n%2)+1` with `a(0)=1, a(1)=2`
-/

namespace A140407.P12097915508047952846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  2 * (a (n - 2) - ((n % 2 : ℕ) : ℤ)) + 1

end

end A140407.P12097915508047952846

namespace A140407

/-- `2*(a(n-2)-n%2)+1` -/
def P12097915508047952846.Spec : Prop :=
  ∀ n, P12097915508047952846.a n = A140407 n

end A140407

/-! ## A140407.P5967100031007403471

`2*(a(n-2)+gcd(2, n))-3` with `a(0)=1, a(1)=2`
-/

namespace A140407.P5967100031007403471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  2 * (a (n - 2) + (Nat.gcd 2 n : ℤ)) - 3

end

end A140407.P5967100031007403471

namespace A140407

/-- `2*(a(n-2)+gcd(2, n))-3` -/
def P5967100031007403471.Spec : Prop :=
  ∀ n, P5967100031007403471.a n = A140407 n

end A140407

/-! ## A140407.P1623734078060620842

`a(n-2)+a(n-2)+(-1)^n` with `a(0)=1, a(1)=2`
-/

namespace A140407.P1623734078060620842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  a (n - 2) + (a (n - 2) + (-1) ^ n)

end

end A140407.P1623734078060620842

namespace A140407

/-- `a(n-2)+a(n-2)+(-1)^n` -/
def P1623734078060620842.Spec : Prop :=
  ∀ n, P1623734078060620842.a n = A140407 n

theorem P1623734078060620842.correct : P1623734078060620842.Spec := by
  intro n
  simp only [A140407, Nat.add_sub_cancel, A140407.P1623734078060620842.a, A140407.P14447950768482046044.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A140407

/-! ## A140407.P5233990549849183183

`A356185(xor(1, n))+n`
-/

namespace A140407.P5233990549849183183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356185 (Nat.xor 1 n) + (n : ℤ)

end

end A140407.P5233990549849183183

namespace A140407

/-- `A356185(xor(1, n))+n` -/
def P5233990549849183183.Spec : Prop :=
  ∀ n, P5233990549849183183.a n = A140407 n

end A140407

/-! ## A140407.P8279530778602863428

`abs(1-A137206(n+1))`
-/

namespace A140407.P8279530778602863428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - A137206 (n + 1)|

end

end A140407.P8279530778602863428

namespace A140407

/-- `abs(1-A137206(n+1))` -/
def P8279530778602863428.Spec : Prop :=
  ∀ n, P8279530778602863428.a n = A140407 n

end A140407

/-! ## A140407.P16329978777137071237

`A316742(n)+A010673(n)`
-/

namespace A140407.P16329978777137071237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316742 n + A010673 n

end

end A140407.P16329978777137071237

namespace A140407

/-- `A316742(n)+A010673(n)` -/
def P16329978777137071237.Spec : Prop :=
  ∀ n, P16329978777137071237.a n = A140407 n

end A140407

/-! ## A140407.P17386600130516026023

`A135530(n)-A033999(n)`
-/

namespace A140407.P17386600130516026023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135530 n - A033999 n

end

end A140407.P17386600130516026023

namespace A140407

/-- `A135530(n)-A033999(n)` -/
def P17386600130516026023.Spec : Prop :=
  ∀ n, P17386600130516026023.a n = A140407 n

end A140407

/-! ## A140407.P11195882040011703924

`A135530(n)+n-A004442(n)`
-/

namespace A140407.P11195882040011703924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135530 n + ((n : ℤ) - A004442 n)

end

end A140407.P11195882040011703924

namespace A140407

/-- `A135530(n)+n-A004442(n)` -/
def P11195882040011703924.Spec : Prop :=
  ∀ n, P11195882040011703924.a n = A140407 n

end A140407

/-! ## A140407.P3790542516962339281

`(A137206(n+1)-1)*A056594(2*n)`
-/

namespace A140407.P3790542516962339281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A137206 (n + 1) - 1) * A056594 (2 * n)

end

end A140407.P3790542516962339281

namespace A140407

/-- `(A137206(n+1)-1)*A056594(2*n)` -/
def P3790542516962339281.Spec : Prop :=
  ∀ n, P3790542516962339281.a n = A140407 n

end A140407

/-! ## A140407.P2527612694681907126

`gcd(1-A137206(n+1), A000038(n+1))`
-/

namespace A140407.P2527612694681907126
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (1 - A137206 (n + 1)) (A000038 (n + 1))

end

end A140407.P2527612694681907126

namespace A140407

/-- `gcd(1-A137206(n+1), A000038(n+1))` -/
def P2527612694681907126.Spec : Prop :=
  ∀ n, (P2527612694681907126.a n : ℤ) = A140407 n

end A140407

/-! ## A140407.P5021742905086100780

`n+1+A135530(n)-A103889(n+1)`
-/

namespace A140407.P5021742905086100780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) + (A135530 n - A103889 (n + 1))

end

end A140407.P5021742905086100780

namespace A140407

/-- `n+1+A135530(n)-A103889(n+1)` -/
def P5021742905086100780.Spec : Prop :=
  ∀ n, P5021742905086100780.a n = A140407 n

end A140407

/-! ## A140407.P10320543228312420546

`A016116(n)+A086341(n)-A016116(n+1)`
-/

namespace A140407.P10320543228312420546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016116 n + (A086341 n - A016116 (n + 1))

end

end A140407.P10320543228312420546

namespace A140407

/-- `A016116(n)+A086341(n)-A016116(n+1)` -/
def P10320543228312420546.Spec : Prop :=
  ∀ n, P10320543228312420546.a n = A140407 n

end A140407

/-! ## A140407.P9650700402207067391

`A016116(n+1)+A016116(n)-A094024(n)`
-/

namespace A140407.P9650700402207067391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016116 (n + 1) + (A016116 n - A094024 n)

end

end A140407.P9650700402207067391

namespace A140407

/-- `A016116(n+1)+A016116(n)-A094024(n)` -/
def P9650700402207067391.Spec : Prop :=
  ∀ n, P9650700402207067391.a n = A140407 n

end A140407

/-! ## A140407.P7894203926733876007

`A010693(n)+A135530(n)-A010693(n+1)`
-/

namespace A140407.P7894203926733876007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010693 n + (A135530 n - A010693 (n + 1))

end

end A140407.P7894203926733876007

namespace A140407

/-- `A010693(n)+A135530(n)-A010693(n+1)` -/
def P7894203926733876007.Spec : Prop :=
  ∀ n, P7894203926733876007.a n = A140407 n

end A140407

/-! ## A140407.P17400073826273436758

`A094024(n+1)+A000035(n)*A016116(n)`
-/

namespace A140407.P17400073826273436758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094024 (n + 1) + A000035 n * A016116 n

end

end A140407.P17400073826273436758

namespace A140407

/-- `A094024(n+1)+A000035(n)*A016116(n)` -/
def P17400073826273436758.Spec : Prop :=
  ∀ n, P17400073826273436758.a n = A140407 n

end A140407

/-! ## A140407.P15873054668720159591

`A000034(n)+A056453(n+1)/A000034(n)`
-/

namespace A140407.P15873054668720159591
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000034 n : ℚ) + (A056453 (n + 1) : ℚ) / (A000034 n : ℚ)

end

end A140407.P15873054668720159591

namespace A140407

/-- `A000034(n)+A056453(n+1)/A000034(n)` -/
def P15873054668720159591.Spec : Prop :=
  ∀ n, P15873054668720159591.a n = (A140407 n : ℚ)

end A140407

/-! ## A140407.P6914004479574058575

`A135530(n)-A137206(n+1)/A135530(n)`
-/

namespace A140407.P6914004479574058575
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A135530 n : ℚ) - (A137206 (n + 1) : ℚ) / (A135530 n : ℚ)

end

end A140407.P6914004479574058575

namespace A140407

/-- `A135530(n)-A137206(n+1)/A135530(n)` -/
def P6914004479574058575.Spec : Prop :=
  ∀ n, P6914004479574058575.a n = (A140407 n : ℚ)

end A140407

/-! ## A140407.P1150793002696527138

`A164090(n+1)-A094024(n)`
-/

namespace A140407.P1150793002696527138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164090 (n + 1) - A094024 n

end

end A140407.P1150793002696527138

namespace A140407

/-- `A164090(n+1)-A094024(n)` -/
def P1150793002696527138.Spec : Prop :=
  ∀ n, P1150793002696527138.a n = A140407 n

end A140407

/-! ## A140407.P15160888620125216908

`ogf((1+3x+3x^2)/(1+x-2x^2-2x^3))`
-/

namespace A140407.P15160888620125216908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 3, 3] [1, 1, -2, -2] n

end

end A140407.P15160888620125216908

namespace A140407

/-- `ogf((1+3x+3x^2)/(1+x-2x^2-2x^3))` -/
def P15160888620125216908.Spec : Prop :=
  ∀ n, P15160888620125216908.a n = A140407 n

end A140407

/-!
# A140408: Irregular triangle T(n,k) read by rows: n repetitions of -1 followed by (n+1) repetitions of n+1.

The programs for A140408, the canonical program `A140408.P7063190628928274226` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A140408 has offset 0).

The definition of A140408 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A140408.P17433571898344671283

`or(-(ceil(record[sqrt(xor(3, n))])%2), ∑[char[n²]])`
-/

namespace A140408.P17433571898344671283
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (Nat.xor 3 n : ℝ)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (-Int.tmod ⌈f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)⌉ 2) ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)

end

end A140408.P17433571898344671283

namespace A140408

/-- `or(-(ceil(record[sqrt(xor(3, n))])%2), ∑[char[n²]])` -/
def P17433571898344671283.Spec : Prop :=
  ∀ n, P17433571898344671283.a n = A140408 n

end A140408

/-! ## A140408.P16225132435269737350

`A027656(ceil(2*sqrt(n+1)))-1`
-/

namespace A140408.P16225132435269737350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027656 ⌈2 * Real.sqrt (n + 1 : ℝ)⌉.toNat - 1

end

end A140408.P16225132435269737350

namespace A140408

/-- `A027656(ceil(2*sqrt(n+1)))-1` -/
def P16225132435269737350.Spec : Prop :=
  ∀ n, P16225132435269737350.a n = A140408 n

end A140408

/-! ## A140408.P249902235018698672

`1-A174007(ceil(2*sqrt(n+1)))`
-/

namespace A140408.P249902235018698672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A174007 ⌈2 * Real.sqrt (n + 1 : ℝ)⌉.toNat

end

end A140408.P249902235018698672

namespace A140408

/-- `1-A174007(ceil(2*sqrt(n+1)))` -/
def P249902235018698672.Spec : Prop :=
  ∀ n, P249902235018698672.a n = A140408 n

end A140408

/-! ## A140408.P8891344932403907533

`or(-A079813(n+1), ∑[char[n²]])`
-/

namespace A140408.P8891344932403907533
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (-A079813 (n + 1)) ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A140408.P8891344932403907533

namespace A140408

/-- `or(-A079813(n+1), ∑[char[n²]])` -/
def P8891344932403907533.Spec : Prop :=
  ∀ n, P8891344932403907533.a n = A140408 n

end A140408

/-! ## A140408.P9688244343771290246

`A127949(∑[A267708(n)])`
-/

namespace A140408.P9688244343771290246
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267708 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127949 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A140408.P9688244343771290246

namespace A140408

/-- `A127949(∑[A267708(n)])` -/
def P9688244343771290246.Spec : Prop :=
  ∀ n, P9688244343771290246.a n = A140408 n

end A140408

/-! ## A140408.P14111501046857205585

`-A167407(∑[A267708(n)])`
-/

namespace A140408.P14111501046857205585
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267708 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A167407 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A140408.P14111501046857205585

namespace A140408

/-- `-A167407(∑[A267708(n)])` -/
def P14111501046857205585.Spec : Prop :=
  ∀ n, P14111501046857205585.a n = A140408 n

end A140408

/-! ## A140408.P10028925010357427988

`A127949(∑[char[A063656(n)]])`
-/

namespace A140408.P10028925010357427988
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063656 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127949 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A140408.P10028925010357427988

namespace A140408

/-- `A127949(∑[char[A063656(n)]])` -/
def P10028925010357427988.Spec : Prop :=
  ∀ n, P10028925010357427988.a n = A140408 n

end A140408

/-! ## A140408.P7063190628928274226

`A133622(A027434(n+1)+2)-2`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A140408

/-- `A133622(A027434(n+1)+2)-2` -/
def P7063190628928274226.Spec : Prop :=
  ∀ n, P7063190628928274226.a n = A140408 n

theorem P7063190628928274226.correct : P7063190628928274226.Spec := by
  intro n
  simp only [A140408]

end A140408

/-! ## A140408.P10638232177105026850

`A127949(∑[char[2*n-A051162(n)]])`
-/

namespace A140408.P10638232177105026850
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) - A051162 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127949 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A140408.P10638232177105026850

namespace A140408

/-- `A127949(∑[char[2*n-A051162(n)]])` -/
def P10638232177105026850.Spec : Prop :=
  ∀ n, P10638232177105026850.a n = A140408 n

end A140408

/-! ## A140408.P5459225532154758632

`A127949(∑[char[n-A051162(n)+n]])`
-/

namespace A140408.P5459225532154758632
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A051162 n + (n : ℤ)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127949 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A140408.P5459225532154758632

namespace A140408

/-- `A127949(∑[char[n-A051162(n)+n]])` -/
def P5459225532154758632.Spec : Prop :=
  ∀ n, P5459225532154758632.a n = A140408 n

end A140408

/-! ## A140408.P4745739706445399314

`or(A000196(n)+1, -A079813(n+1))`
-/

namespace A140408.P4745739706445399314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000196 n + 1) (-A079813 (n + 1))

end

end A140408.P4745739706445399314

namespace A140408

/-- `or(A000196(n)+1, -A079813(n+1))` -/
def P4745739706445399314.Spec : Prop :=
  ∀ n, P4745739706445399314.a n = A140408 n

end A140408

/-! ## A140408.P10201779732907038539

`A001057(A141310(A055086(n)))`
-/

namespace A140408.P10201779732907038539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 (A141310 (A055086 n).toNat).toNat

end

end A140408.P10201779732907038539

namespace A140408

/-- `A001057(A141310(A055086(n)))` -/
def P10201779732907038539.Spec : Prop :=
  ∀ n, P10201779732907038539.a n = A140408 n

end A140408

/-! ## A140408.P2763221045713531174

`A196199(n)+A028242(A082375(n))`
-/

namespace A140408.P2763221045713531174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196199 n + A028242 (A082375 n).toNat

end

end A140408.P2763221045713531174

namespace A140408

/-- `A196199(n)+A028242(A082375(n))` -/
def P2763221045713531174.Spec : Prop :=
  ∀ n, P2763221045713531174.a n = A140408 n

end A140408

/-! ## A140408.P1984550342926390005

`A174239(A055086(n))-A000196(n)`
-/

namespace A140408.P1984550342926390005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174239 (A055086 n).toNat - A000196 n

end

end A140408.P1984550342926390005

namespace A140408

/-- `A174239(A055086(n))-A000196(n)` -/
def P1984550342926390005.Spec : Prop :=
  ∀ n, P1984550342926390005.a n = A140408 n

end A140408

/-! ## A140408.P16032348530495147826

`A000196(A028391(n))-a(A056847(n))` with `a(0)=1`
-/

namespace A140408.P16032348530495147826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A000196 (A028391 n).toNat - a (A056847 n).toNat

end

end A140408.P16032348530495147826

namespace A140408

/-- `A000196(A028391(n))-a(A056847(n))` -/
def P16032348530495147826.Spec : Prop :=
  ∀ n, P16032348530495147826.a n = A140408 n

end A140408

/-! ## A140408.P1472388358558648643

`A000037(A232091(n+1))-A048761(n+1)`
-/

namespace A140408.P1472388358558648643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000037 (A232091 (n + 1)).toNat - A048761 (n + 1)

end

end A140408.P1472388358558648643

namespace A140408

/-- `A000037(A232091(n+1))-A048761(n+1)` -/
def P1472388358558648643.Spec : Prop :=
  ∀ n, P1472388358558648643.a n = A140408 n

end A140408

/-! ## A140408.P14790859522273196998

`A000194(n+1)*A118175(n)-A079813(n+1)`
-/

namespace A140408.P14790859522273196998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000194 (n + 1) * A118175 n - A079813 (n + 1)

end

end A140408.P14790859522273196998

namespace A140408

/-- `A000194(n+1)*A118175(n)-A079813(n+1)` -/
def P14790859522273196998.Spec : Prop :=
  ∀ n, P14790859522273196998.a n = A140408 n

end A140408

/-! ## A140408.P18272826990539668527

`A000194(n+1)+A232091(n+1)-A048761(n+1)`
-/

namespace A140408.P18272826990539668527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000194 (n + 1) + (A232091 (n + 1) - A048761 (n + 1))

end

end A140408.P18272826990539668527

namespace A140408

/-- `A000194(n+1)+A232091(n+1)-A048761(n+1)` -/
def P18272826990539668527.Spec : Prop :=
  ∀ n, P18272826990539668527.a n = A140408 n

end A140408

/-!
# A140409: Prime factors of Lucas numbers.

The programs for A140409, there is no canonical definition to state claims against.
-/

/-! ## A140409.P2807341076071050816

`∪[A053027(n+1), A112860(n+1)]`
-/

namespace A140409.P2807341076071050816
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053027 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112860 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A140409.P2807341076071050816

/-! ## A140409.P7598341646919134465

`p?[A065156(n+1)]`
-/

namespace A140409.P7598341646919134465
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065156 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A140409.P7598341646919134465

/-! ## A140409.P7042567071546583936

`∩[A045319(n+1), A065156(n+1)]`
-/

namespace A140409.P7042567071546583936
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065156 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140409.P7042567071546583936

/-! ## A140409.P8851520848544989478

`∩[A000040(n+1), A065156(n+1)]`
-/

namespace A140409.P8851520848544989478
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065156 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140409.P8851520848544989478

/-! ## A140409.P17663383778542463267

`∩[A065156(n+1), A182986(n+1)]`
-/

namespace A140409.P17663383778542463267
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065156 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182986 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140409.P17663383778542463267

/-! ## A140409.P2310148497354900918

`record[A006530(A065156(n+2))]`
-/

namespace A140409.P2310148497354900918
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A065156 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A140409.P2310148497354900918

/-! ## A140409.P8559634042137684563

`filter[A065156(n+1), A010051(#)]`
-/

namespace A140409.P8559634042137684563
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065156 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A140409.P8559634042137684563

/-! ## A140409.P7682504226162194484

`filter[A065156(n+2), A080339(#)]`
-/

namespace A140409.P7682504226162194484
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065156 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A080339 (f1 j).toNat = 1) n)

end

end A140409.P7682504226162194484

/-! ## A140409.P17258561362884009591

`∩[A065156(n+1), A240960(n+1)]`
-/

namespace A140409.P17258561362884009591
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065156 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240960 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140409.P17258561362884009591

/-! ## A140409.P364154027695422008

`∩[A065156(n+1), A230606(n+1)]`
-/

namespace A140409.P364154027695422008
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065156 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230606 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140409.P364154027695422008

/-!
# A140410: Number of divisors of A138113(n).

The programs for A140410, there is no canonical definition to state claims against.
-/

/-! ## A140410.P11451602630916468210

`A350786(A027423(n+1))`
-/

namespace A140410.P11451602630916468210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350786 (A027423 (n + 1)).toNat

end

end A140410.P11451602630916468210

/-! ## A140410.P12743393315196620817

`A350786(A393539(n+1))`
-/

namespace A140410.P12743393315196620817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350786 (A393539 (n + 1)).toNat

end

end A140410.P12743393315196620817

/-! ## A140410.P13799017793444955607

`record[A027423(n)%A325301(n+1)]`
-/

namespace A140410.P13799017793444955607
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A027423 n) (A325301 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A140410.P13799017793444955607

/-! ## A140410.P12097325164469997509

`∑[A038024(n+1)]+2*n*A036647(A051022(n))`
-/

namespace A140410.P12097325164469997509
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038024 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (2 * n : ℤ) * A036647 (A051022 n).toNat

end

end A140410.P12097325164469997509

/-! ## A140410.P3299115431893162412

`∏{e}[(n+1)!, #+1]`
-/

namespace A140410.P3299115431893162412
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + 1)

end

end A140410.P3299115431893162412

/-!
# A140411: Conjectured complete list of squarefree numbers that can be written as a sum of at most two positive squares, but not as a sum of three positive squares.

The programs for A140411, there is no canonical definition to state claims against.
-/

/-! ## A140411.P6481412199287523724

`A051952(comp[6*n])`
-/

namespace A140411.P6481412199287523724
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051952 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A140411.P6481412199287523724

/-! ## A140411.P183473540915367412

`record[∏{p}[A051952(n+1), #]]`
-/

namespace A140411.P183473540915367412
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051952 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n).natAbs, p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A140411.P183473540915367412

/-! ## A140411.P4666053822712830645

`record[A007947(A000549(n+1))]`
-/

namespace A140411.P4666053822712830645
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (A000549 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A140411.P4666053822712830645

/-! ## A140411.P976732490835911934

`record[A007913(A051952(n+1))]`
-/

namespace A140411.P976732490835911934
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (A051952 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A140411.P976732490835911934

/-! ## A140411.P7902481165969948306

`record[A051952(A008284(n+1))]`
-/

namespace A140411.P7902481165969948306
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051952 (A008284 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A140411.P7902481165969948306

/-!
# A140412: Determinants of the n X n matrices whose (i,j)-elements are lcm(i^2, j^2).

The programs for A140412, there is no canonical definition to state claims against.
-/

/-! ## A140412.P17493476560365790451

`∏[∏{p}[n+1, 1-#²]*(n+1)²]`
-/

namespace A140412.P17493476560365790451
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∏ p ∈ Nat.primeFactors (f2 n), (1 - (p ^ 2 : ℤ))) * ((n + 1) ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A140412.P17493476560365790451

/-! ## A140412.P787375650709506996

`∏[(n+1)²*A046970(n+1)]`
-/

namespace A140412.P787375650709506996
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℤ) * A046970 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A140412.P787375650709506996

/-! ## A140412.P3427381154823727124

`∏[(n+1)²*A076792(A007947(n+1))]`
-/

namespace A140412.P3427381154823727124
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℤ) * A076792 (A007947 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A140412.P3427381154823727124

/-!
# A140413: a(2n) = A000045(6n) + 1, a(2n+1) = A000045(6n+3) - 1.

The programs for A140413, the canonical program `A140413.P9561030353013920254` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A140413 has offset 0).

The definition of A140413 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A140413.P9561030353013920254

`3*a(n-1)+5*a(n-2)+a(n-3)` with `a(0)=1, a(1)=1, a(2)=9`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A140413

/-- `3*a(n-1)+5*a(n-2)+a(n-3)` -/
def P9561030353013920254.Spec : Prop :=
  ∀ n, (P9561030353013920254.a n : ℤ) = A140413 n

theorem P9561030353013920254.correct : P9561030353013920254.Spec := by
  intro n
  simp only [A140413]

end A140413

/-! ## A140413.P974163110329459336

`A141325(3*n)`
-/

namespace A140413.P974163110329459336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141325 (3 * n)

end

end A140413.P974163110329459336

namespace A140413

/-- `A141325(3*n)` -/
def P974163110329459336.Spec : Prop :=
  ∀ n, P974163110329459336.a n = A140413 n

end A140413

/-! ## A140413.P2396408470202759567

`(-1)^n+A014445(n)`
-/

namespace A140413.P2396408470202759567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n + A014445 n

end

end A140413.P2396408470202759567

namespace A140413

/-- `(-1)^n+A014445(n)` -/
def P2396408470202759567.Spec : Prop :=
  ∀ n, P2396408470202759567.a n = A140413 n

end A140413

/-! ## A140413.P7520876963775866225

`ogf((-1+2x-x^2)/(-1+3x+5x^2+x^3))`
-/

namespace A140413.P7520876963775866225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -2, 1] [1, -3, -5, -1] n

end

end A140413.P7520876963775866225

namespace A140413

/-- `ogf((-1+2x-x^2)/(-1+3x+5x^2+x^3))` -/
def P7520876963775866225.Spec : Prop :=
  ∀ n, P7520876963775866225.a n = A140413 n

end A140413

/-! ## A140413.P3827487163330929043

`A008346(3*n)`
-/

namespace A140413.P3827487163330929043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008346 (3 * n)

end

end A140413.P3827487163330929043

namespace A140413

/-- `A008346(3*n)` -/
def P3827487163330929043.Spec : Prop :=
  ∀ n, P3827487163330929043.a n = A140413 n

end A140413

/-! ## A140413.P7712921128681036250

`A290968(3*n+2)`
-/

namespace A140413.P7712921128681036250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290968 (3 * n + 2)

end

end A140413.P7712921128681036250

namespace A140413

/-- `A290968(3*n+2)` -/
def P7712921128681036250.Spec : Prop :=
  ∀ n, P7712921128681036250.a n = A140413 n

end A140413

/-! ## A140413.P9627932146892350209

`or(2, A014445(n))-1`
-/

namespace A140413.P9627932146892350209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 2 (A014445 n) - 1

end

end A140413.P9627932146892350209

namespace A140413

/-- `or(2, A014445(n))-1` -/
def P9627932146892350209.Spec : Prop :=
  ∀ n, P9627932146892350209.a n = A140413 n

end A140413

/-! ## A140413.P16852223296118401930

`and(-3, A001611(3*n))`
-/

namespace A140413.P16852223296118401930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-3) (A001611 (3 * n))

end

end A140413.P16852223296118401930

namespace A140413

/-- `and(-3, A001611(3*n))` -/
def P16852223296118401930.Spec : Prop :=
  ∀ n, P16852223296118401930.a n = A140413 n

end A140413

/-! ## A140413.P7139250673747271318

`or(2, A117647(2*n))-1`
-/

namespace A140413.P7139250673747271318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 2 (A117647 (2 * n)) - 1

end

end A140413.P7139250673747271318

namespace A140413

/-- `or(2, A117647(2*n))-1` -/
def P7139250673747271318.Spec : Prop :=
  ∀ n, P7139250673747271318.a n = A140413 n

end A140413

/-! ## A140413.P5564844706520455896

`or(2, A000045(3*n))-1`
-/

namespace A140413.P5564844706520455896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 2 (A000045 (3 * n)) - 1

end

end A140413.P5564844706520455896

namespace A140413

/-- `or(2, A000045(3*n))-1` -/
def P5564844706520455896.Spec : Prop :=
  ∀ n, P5564844706520455896.a n = A140413 n

end A140413

/-! ## A140413.P8297637598643558173

`A247050(A017173(n))`
-/

namespace A140413.P8297637598643558173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247050 (A017173 n).toNat

end

end A140413.P8297637598643558173

namespace A140413

/-- `A247050(A017173(n))` -/
def P8297637598643558173.Spec : Prop :=
  ∀ n, P8297637598643558173.a n = A140413 n

end A140413

/-! ## A140413.P11848209072653492580

`A247050(A017197(n))`
-/

namespace A140413.P11848209072653492580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247050 (A017197 n).toNat

end

end A140413.P11848209072653492580

namespace A140413

/-- `A247050(A017197(n))` -/
def P11848209072653492580.Spec : Prop :=
  ∀ n, P11848209072653492580.a n = A140413 n

end A140413

/-! ## A140413.P18347132245682769335

`xor(A010684(n), A014445(n))`
-/

namespace A140413.P18347132245682769335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A010684 n) (A014445 n)

end

end A140413.P18347132245682769335

namespace A140413

/-- `xor(A010684(n), A014445(n))` -/
def P18347132245682769335.Spec : Prop :=
  ∀ n, P18347132245682769335.a n = A140413 n

end A140413

/-! ## A140413.P15049947527596705615

`A033999(n)+2*A001076(n)`
-/

namespace A140413.P15049947527596705615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n + 2 * A001076 n

end

end A140413.P15049947527596705615

namespace A140413

/-- `A033999(n)+2*A001076(n)` -/
def P15049947527596705615.Spec : Prop :=
  ∀ n, P15049947527596705615.a n = A140413 n

end A140413

/-! ## A140413.P8973634772001213460

`A014445(n)-A087960(2*n+1)`
-/

namespace A140413.P8973634772001213460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014445 n - A087960 (2 * n + 1)

end

end A140413.P8973634772001213460

namespace A140413

/-- `A014445(n)-A087960(2*n+1)` -/
def P8973634772001213460.Spec : Prop :=
  ∀ n, P8973634772001213460.a n = A140413 n

end A140413

/-! ## A140413.P17551500141761751845

`A056594(2*n)+A000045(3*n)`
-/

namespace A140413.P17551500141761751845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056594 (2 * n) + A000045 (3 * n)

end

end A140413.P17551500141761751845

namespace A140413

/-- `A056594(2*n)+A000045(3*n)` -/
def P17551500141761751845.Spec : Prop :=
  ∀ n, P17551500141761751845.a n = A140413 n

end A140413

/-! ## A140413.P15463234364092779942

`A010892(3*n)+A000045(3*n)`
-/

namespace A140413.P15463234364092779942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010892 (3 * n) + A000045 (3 * n)

end

end A140413.P15463234364092779942

namespace A140413

/-- `A010892(3*n)+A000045(3*n)` -/
def P15463234364092779942.Spec : Prop :=
  ∀ n, P15463234364092779942.a n = A140413 n

end A140413

/-! ## A140413.P11767640434074397503

`A009531(2*n+1)+A000045(3*n)`
-/

namespace A140413.P11767640434074397503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009531 (2 * n + 1) + A000045 (3 * n)

end

end A140413.P11767640434074397503

namespace A140413

/-- `A009531(2*n+1)+A000045(3*n)` -/
def P11767640434074397503.Spec : Prop :=
  ∀ n, P11767640434074397503.a n = A140413 n

end A140413

/-! ## A140413.P8994166555568347125

`A112299(2*n+1)+A000045(3*n)`
-/

namespace A140413.P8994166555568347125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112299 (2 * n + 1) + A000045 (3 * n)

end

end A140413.P8994166555568347125

namespace A140413

/-- `A112299(2*n+1)+A000045(3*n)` -/
def P8994166555568347125.Spec : Prop :=
  ∀ n, P8994166555568347125.a n = A140413 n

end A140413

/-!
# A140414: Triangle T(p,s) showing the coefficients of sequences which are half their p-th differences.

The programs for A140414, there is no canonical definition to state claims against.
-/

/-! ## A140414.P16438198204002968257

`A135356(n+1)+char[∑[n-1]]`
-/

namespace A140414.P16438198204002968257
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135356 (n + 1) + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A140414.P16438198204002968257

/-! ## A140414.P6672408969781208226

`or(A023531(n), A135356(n+1))`
-/

namespace A140414.P6672408969781208226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A023531 n) (A135356 (n + 1))

end

end A140414.P6672408969781208226

/-! ## A140414.P714046505008220204

`or(∑[A103452(n)], A135356(n+1))`
-/

namespace A140414.P714046505008220204
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103452 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (∑ j ∈ Finset.range (n + 1), f1 j) (A135356 (n + 1))

end

end A140414.P714046505008220204

/-! ## A140414.P9104289978038418593

`or(Δ[A003056(n)], A135356(n+1))`
-/

namespace A140414.P9104289978038418593
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (f1 (n + 1) - f1 n) (A135356 (n + 1))

end

end A140414.P9104289978038418593

/-! ## A140414.P13238233110510457721

`or(char[A000096(n)], A135356(n+1))`
-/

namespace A140414.P13238233110510457721
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000096 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) (A135356 (n + 1))

end

end A140414.P13238233110510457721

/-! ## A140414.P4837549896194048662

`or(A073424(n+1), A135356(n+1))`
-/

namespace A140414.P4837549896194048662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A073424 (n + 1)) (A135356 (n + 1))

end

end A140414.P4837549896194048662

/-! ## A140414.P5607828560137825002

`or(Δ[A002024(n+1)], A135356(n+1))`
-/

namespace A140414.P5607828560137825002
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (f1 (n + 1) - f1 n) (A135356 (n + 1))

end

end A140414.P5607828560137825002

/-! ## A140414.P15823654096937405078

`or(Δ[A003057(n+2)], A135356(n+1))`
-/

namespace A140414.P15823654096937405078
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003057 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (f1 (n + 1) - f1 n) (A135356 (n + 1))

end

end A140414.P15823654096937405078

/-! ## A140414.P15075403606405877651

`char[A000096(n)]-A091917(A099375(n)+n)`
-/

namespace A140414.P15075403606405877651
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000096 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) - A091917 (A099375 n + (n : ℤ)).toNat

end

end A140414.P15075403606405877651

/-!
# A140417: Half the number of n X n symmetric binary matrices with each 1 adjacent to some 0 horizontally (and vertically) and each 0 adjacent to some 1 horizontally (and vertically).

The programs for A140417, there is no canonical definition to state claims against.
-/

/-! ## A140417.P10603584876457274657

`A060755(A054366(n))+A001400(n)`
-/

namespace A140417.P10603584876457274657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060755 (A054366 n).toNat + A001400 n

end

end A140417.P10603584876457274657

/-! ## A140417.P9649456550381205274

`A085144(n)+A065261(A185994(n))`
-/

namespace A140417.P9649456550381205274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085144 n + A065261 (A185994 n).toNat

end

end A140417.P9649456550381205274

/-!
# A140418: Position of cubes in the EKG sequence (A064413).

The programs for A140418, there is no canonical definition to state claims against.
-/

/-! ## A140418.P1075613438755195707

`∑{d}[Δ[∑[n]²], A304526(#)]`
-/

namespace A140418.P1075613438755195707
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f3 j) ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℤ) - (f2 n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A304526 d

end

end A140418.P1075613438755195707

/-! ## A140418.P13259213170655104373

`A064421((n+1)^3)+1`
-/

namespace A140418.P13259213170655104373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064421 ((n + 1) ^ 3) + 1

end

end A140418.P13259213170655104373

/-! ## A140418.P4798292886494928630

`A064664(Δ[∑[n]²])`
-/

namespace A140418.P4798292886494928630
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f2 j) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064664 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A140418.P4798292886494928630

/-! ## A140418.P915734729596946002

`record[A064664(A133823(n))]`
-/

namespace A140418.P915734729596946002
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064664 (A133823 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A140418.P915734729596946002

/-! ## A140418.P13674914974573090683

`record[A064664(A133820(n+1))]`
-/

namespace A140418.P13674914974573090683
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064664 (A133820 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A140418.P13674914974573090683

/-!
# A140419: Number of n X n symmetric binary matrices with every element adjacent horizontally (and vertically) to some 0.

The programs for A140419, there is no canonical definition to state claims against.
-/

/-! ## A140419.P12668798508435513260

`A185511(C(comp[∑[n]], n))`
-/

namespace A140419.P12668798508435513260
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185511 (Nat.choose (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n) n)

end

end A140419.P12668798508435513260

/-!
# A140420: Binomial transform of 0, 1, 1, 7, 7, 31, 31, ..., zero followed by duplicated A083420.

The programs for A140420, the canonical program `A140420.P18259159897176928933` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A140420 has offset 0).

The definition of A140420 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A140420.P18259159897176928933

`(3^(n+1)-(-1)^n+2)/4-2^n`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A140420

/-- `(3^(n+1)-(-1)^n+2)/4-2^n` -/
def P18259159897176928933.Spec : Prop :=
  ∀ n, P18259159897176928933.a n = (A140420 n : ℚ)

end A140420

/-! ## A140420.P8760150574317591565

`(or(1, ∑[3^n])-∑[2^n])/2`
-/

namespace A140420.P8760150574317591565
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 ^ n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((Nat.lor 1 (∑ j ∈ Finset.range (n + 1), f1 j) : ℤ) - ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) : ℚ) / 2

end

end A140420.P8760150574317591565

namespace A140420

/-- `(or(1, ∑[3^n])-∑[2^n])/2` -/
def P8760150574317591565.Spec : Prop :=
  ∀ n, P8760150574317591565.a n = (A140420 n : ℚ)

end A140420

/-! ## A140420.P11561894899332428564

`A092438(n)/2`
-/

namespace A140420.P11561894899332428564
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A092438 n : ℚ) / 2

end

end A140420.P11561894899332428564

namespace A140420

/-- `A092438(n)/2` -/
def P11561894899332428564.Spec : Prop :=
  ∀ n, P11561894899332428564.a n = (A140420 n : ℚ)

end A140420

/-! ## A140420.P9252029122611978643

`round(∑[A001047(n)/2])`
-/

namespace A140420.P9252029122611978643
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001047 n : ℚ) / 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A140420.P9252029122611978643

namespace A140420

/-- `round(∑[A001047(n)/2])` -/
def P9252029122611978643.Spec : Prop :=
  ∀ n, P9252029122611978643.a n = A140420 n

end A140420

/-! ## A140420.P15279429377368565924

`floor(A134063(n+1)/2)`
-/

namespace A140420.P15279429377368565924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A134063 (n + 1) : ℚ) / 2⌋

end

end A140420.P15279429377368565924

namespace A140420

/-- `floor(A134063(n+1)/2)` -/
def P15279429377368565924.Spec : Prop :=
  ∀ n, P15279429377368565924.a n = A140420 n

end A140420

/-! ## A140420.P12832122520477039178

`round(A000392(n+2)/2)`
-/

namespace A140420.P12832122520477039178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A000392 (n + 2) : ℚ) / 2)

end

end A140420.P12832122520477039178

namespace A140420

/-- `round(A000392(n+2)/2)` -/
def P12832122520477039178.Spec : Prop :=
  ∀ n, P12832122520477039178.a n = A140420 n

end A140420

/-! ## A140420.P6240466841195566255

`floor((A036550(n)-n)/2)`
-/

namespace A140420.P6240466841195566255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A036550 n - (n : ℤ) : ℚ) / 2⌋

end

end A140420.P6240466841195566255

namespace A140420

/-- `floor((A036550(n)-n)/2)` -/
def P6240466841195566255.Spec : Prop :=
  ∀ n, P6240466841195566255.a n = A140420 n

end A140420

/-! ## A140420.P1368610451203802402

`floor((∑[A304973(Δ[n²])]+1)/2)`
-/

namespace A140420.P1368610451203802402
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304973 ((f2 (n + 1) : ℤ) - (f2 n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((∑ j ∈ Finset.range (n + 1), f1 j + 1 : ℤ) : ℚ) / 2⌋

end

end A140420.P1368610451203802402

namespace A140420

/-- `floor((∑[A304973(Δ[n²])]+1)/2)` -/
def P1368610451203802402.Spec : Prop :=
  ∀ n, P1368610451203802402.a n = A140420 n

end A140420

/-! ## A140420.P6955042013798589357

`(A004054(n)-A097074(n))/2`
-/

namespace A140420.P6955042013798589357
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A004054 n - A097074 n : ℚ) / 2

end

end A140420.P6955042013798589357

namespace A140420

/-- `(A004054(n)-A097074(n))/2` -/
def P6955042013798589357.Spec : Prop :=
  ∀ n, P6955042013798589357.a n = (A140420 n : ℚ)

end A140420

/-! ## A140420.P9339279942986374218

`(A036550(n)-A109613(n))/2`
-/

namespace A140420.P9339279942986374218
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A036550 n - A109613 n : ℚ) / 2

end

end A140420.P9339279942986374218

namespace A140420

/-- `(A036550(n)-A109613(n))/2` -/
def P9339279942986374218.Spec : Prop :=
  ∀ n, P9339279942986374218.a n = (A140420 n : ℚ)

end A140420

/-! ## A140420.P18359691765435259116

`(A164907(n)-A126646(n))/2`
-/

namespace A140420.P18359691765435259116
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A164907 n - A126646 n : ℚ) / 2

end

end A140420.P18359691765435259116

namespace A140420

/-- `(A164907(n)-A126646(n))/2` -/
def P18359691765435259116.Spec : Prop :=
  ∀ n, P18359691765435259116.a n = (A140420 n : ℚ)

end A140420

/-! ## A140420.P15334626552808454962

`(A000035(n)+∑[A001047(n)])/2`
-/

namespace A140420.P15334626552808454962
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001047 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A000035 n + ∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / 2

end

end A140420.P15334626552808454962

namespace A140420

/-- `(A000035(n)+∑[A001047(n)])/2` -/
def P15334626552808454962.Spec : Prop :=
  ∀ n, P15334626552808454962.a n = (A140420 n : ℚ)

end A140420

/-! ## A140420.P1284660494855575587

`(A103425(n)+A003063(n+1))/2`
-/

namespace A140420.P1284660494855575587
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A103425 n + A003063 (n + 1) : ℚ) / 2

end

end A140420.P1284660494855575587

namespace A140420

/-- `(A103425(n)+A003063(n+1))/2` -/
def P1284660494855575587.Spec : Prop :=
  ∀ n, P1284660494855575587.a n = (A140420 n : ℚ)

end A140420

/-! ## A140420.P16134936923492445273

`A027649(n)%A081250(n)`
-/

namespace A140420.P16134936923492445273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A027649 n) (A081250 n)

end

end A140420.P16134936923492445273

namespace A140420

/-- `A027649(n)%A081250(n)` -/
def P16134936923492445273.Spec : Prop :=
  ∀ n, P16134936923492445273.a n = A140420 n

end A140420

/-!
# A140422: Half the number of n X n symmetric binary matrices with every 1 adjacent to some 0 horizontally or vertically and every 0 adjacent to some 1 horizontally or vertically.

The programs for A140422, there is no canonical definition to state claims against.
-/

/-! ## A140422.P11999408344802143753

`A194615(∑[n+1])`
-/

namespace A140422.P11999408344802143753
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194615 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A140422.P11999408344802143753

/-! ## A140422.P14386291574374743653

`record[A194615(n+1)*A320841(n)]`
-/

namespace A140422.P14386291574374743653
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194615 (n + 1) * A320841 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A140422.P14386291574374743653

/-! ## A140422.P1338525478061261623

`record[gcd(A194615(n+1), A244003(n))]`
-/

namespace A140422.P1338525478061261623
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A194615 (n + 1)) (A244003 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A140422.P1338525478061261623

/-! ## A140422.P451979992745871488

`record[A054525(n+1)*A194615(n+1)]`
-/

namespace A140422.P451979992745871488
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054525 (n + 1) * A194615 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A140422.P451979992745871488

/-! ## A140422.P3079217452343344068

`gcd(A000038(n), A194615(A025747(n)))`
-/

namespace A140422.P3079217452343344068
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A194615 (A025747 n).toNat)

end

end A140422.P3079217452343344068

/-!
# A140423: a(n) = Sum_{k=1..n} k^(2^(n+1-k)).

The programs for A140423, there is no canonical definition to state claims against.
-/

/-! ## A140423.P7188272955231086810

`A323775(n+2)-(n+2)`
-/

namespace A140423.P7188272955231086810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323775 (n + 2) - (n + 2 : ℤ)

end

end A140423.P7188272955231086810

/-! ## A140423.P2671718565625416419

`A279789(2^(n+1))-(n+2)`
-/

namespace A140423.P2671718565625416419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279789 (2 ^ (n + 1)) - (n + 2 : ℤ)

end

end A140423.P2671718565625416419

/-!
# A140426: Number of multi-symmetric Steinhaus matrices of size n.

The programs for A140426, the canonical program `A140426.P15575720499582213969` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A140426 has offset 0).

The definition of A140426 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1994 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A140426.P6403959129806574097

`2^round(xor(1, n)/6)`
-/

namespace A140426.P6403959129806574097
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (SequenceMachineLib.roundAway ((Nat.xor 1 n : ℚ) / 6) : ℤ)

end

end A140426.P6403959129806574097

namespace A140426

/-- `2^round(xor(1, n)/6)` -/
def P6403959129806574097.Spec : Prop :=
  ∀ n, P6403959129806574097.a n = (A140426 n : ℚ)

end A140426

/-! ## A140426.P6110040231978933678

`2^Δ[round(n²/12)]`
-/

namespace A140426.P6110040231978933678
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((n ^ 2 : ℚ) / 12)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (f1 (n + 1) - f1 n : ℤ)

end

end A140426.P6110040231978933678

namespace A140426

/-- `2^Δ[round(n²/12)]` -/
def P6110040231978933678.Spec : Prop :=
  ∀ n, P6110040231978933678.a n = (A140426 n : ℚ)

end A140426

/-! ## A140426.P15575720499582213969

`gcd(2, n)*a(n-3)` with `a(0)=1, a(1)=1, a(2)=2`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A140426

/-- `gcd(2, n)*a(n-3)` -/
def P15575720499582213969.Spec : Prop :=
  ∀ n, (P15575720499582213969.a n : ℤ) = A140426 n

theorem P15575720499582213969.correct : P15575720499582213969.Spec := by
  intro n
  simp only [A140426]

end A140426

/-! ## A140426.P1514696838092420083

`(n%3)!*a(n-2)` with `a(0)=1, a(1)=1`
-/

namespace A140426.P1514696838092420083
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1] fun n a =>
  Nat.factorial (n % 3) * a (n - 2)

end

end A140426.P1514696838092420083

namespace A140426

/-- `(n%3)!*a(n-2)` -/
def P1514696838092420083.Spec : Prop :=
  ∀ n, (P1514696838092420083.a n : ℤ) = A140426 n

end A140426

/-! ## A140426.P13931395569531707579

`a(n-2)*a((n+3)%3)` with `a(0)=1, a(1)=1, a(2)=2`
-/

namespace A140426.P13931395569531707579
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 2] fun n a =>
  a (n - 2) * a ((n + 3) % 3)

end

end A140426.P13931395569531707579

namespace A140426

/-- `a(n-2)*a((n+3)%3)` -/
def P13931395569531707579.Spec : Prop :=
  ∀ n, (P13931395569531707579.a n : ℤ) = A140426 n

end A140426

/-! ## A140426.P17103577897914992121

`(Δ[floor(n/3)]+1)*a(n-2)` with `a(0)=1, a(1)=1`
-/

namespace A140426.P17103577897914992121
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℚ) / 3⌋

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  (f1 (n + 1) - f1 n + 1) * a (n - 2)

end

end A140426.P17103577897914992121

namespace A140426

/-- `(Δ[floor(n/3)]+1)*a(n-2)` -/
def P17103577897914992121.Spec : Prop :=
  ∀ n, P17103577897914992121.a n = A140426 n

end A140426

/-! ## A140426.P13587002063753527208

`a(n-2)*A101825(n)` with `a(0)=1, a(1)=1`
-/

namespace A140426.P13587002063753527208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  a (n - 2) * A101825 n

end

end A140426.P13587002063753527208

namespace A140426

/-- `a(n-2)*A101825(n)` -/
def P13587002063753527208.Spec : Prop :=
  ∀ n, P13587002063753527208.a n = A140426 n

end A140426

/-! ## A140426.P17232944824759788477

`a(n-2)*A177702(n)` with `a(0)=1, a(1)=1`
-/

namespace A140426.P17232944824759788477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  a (n - 2) * A177702 n

end

end A140426.P17232944824759788477

namespace A140426

/-- `a(n-2)*A177702(n)` -/
def P17232944824759788477.Spec : Prop :=
  ∀ n, P17232944824759788477.a n = A140426 n

end A140426

/-! ## A140426.P18041897398720010658

`a(n-3)*A040001(n)` with `a(0)=1, a(1)=1, a(2)=2`
-/

namespace A140426.P18041897398720010658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 2] fun n a =>
  a (n - 3) * A040001 n

end

end A140426.P18041897398720010658

namespace A140426

/-- `a(n-3)*A040001(n)` -/
def P18041897398720010658.Spec : Prop :=
  ∀ n, P18041897398720010658.a n = A140426 n

end A140426

/-! ## A140426.P10275618545771426464

`a(n-3)*A134451(n)` with `a(0)=1, a(1)=1, a(2)=2`
-/

namespace A140426.P10275618545771426464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 2] fun n a =>
  a (n - 3) * A134451 n

end

end A140426.P10275618545771426464

namespace A140426

/-- `a(n-3)*A134451(n)` -/
def P10275618545771426464.Spec : Prop :=
  ∀ n, P10275618545771426464.a n = A140426 n

end A140426

/-! ## A140426.P18404096685181652872

`a(n-3)*A288699(n)` with `a(0)=1, a(1)=1, a(2)=2`
-/

namespace A140426.P18404096685181652872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 2] fun n a =>
  a (n - 3) * A288699 n

end

end A140426.P18404096685181652872

namespace A140426

/-- `a(n-3)*A288699(n)` -/
def P18404096685181652872.Spec : Prop :=
  ∀ n, P18404096685181652872.a n = A140426 n

end A140426

/-! ## A140426.P3931700612794642023

`a(n-3)*A000032(and(1, n-2))` with `a(0)=1, a(1)=1, a(2)=2`
-/

namespace A140426.P3931700612794642023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 2] fun n a =>
  a (n - 3) * A000032 (Int.land 1 ((n : ℤ) - 2)).toNat

end

end A140426.P3931700612794642023

namespace A140426

/-- `a(n-3)*A000032(and(1, n-2))` -/
def P3931700612794642023.Spec : Prop :=
  ∀ n, P3931700612794642023.a n = A140426 n

end A140426

/-! ## A140426.P15344762305542829358

`A000079(A008615(n))`
-/

namespace A140426.P15344762305542829358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (A008615 n).toNat

end

end A140426.P15344762305542829358

namespace A140426

/-- `A000079(A008615(n))` -/
def P15344762305542829358.Spec : Prop :=
  ∀ n, P15344762305542829358.a n = A140426 n

end A140426

/-! ## A140426.P10551510467727840732

`A016116(A051275(n))`
-/

namespace A140426.P10551510467727840732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016116 (A051275 n).toNat

end

end A140426.P10551510467727840732

namespace A140426

/-- `A016116(A051275(n))` -/
def P10551510467727840732.Spec : Prop :=
  ∀ n, P10551510467727840732.a n = A140426 n

end A140426

/-! ## A140426.P12045484733807702984

`A016116(A267806(n))`
-/

namespace A140426.P12045484733807702984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016116 (A267806 n).toNat

end

end A140426.P12045484733807702984

namespace A140426

/-- `A016116(A267806(n))` -/
def P12045484733807702984.Spec : Prop :=
  ∀ n, P12045484733807702984.a n = A140426 n

end A140426

/-! ## A140426.P6464017725386849203

`A011782(A008615(n)+1)`
-/

namespace A140426.P6464017725386849203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 (A008615 n + 1).toNat

end

end A140426.P6464017725386849203

namespace A140426

/-- `A011782(A008615(n)+1)` -/
def P6464017725386849203.Spec : Prop :=
  ∀ n, P6464017725386849203.a n = A140426 n

end A140426

/-! ## A140426.P14016595387650611318

`A016116(A008611(n+1))`
-/

namespace A140426.P14016595387650611318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016116 (A008611 (n + 1)).toNat

end

end A140426.P14016595387650611318

namespace A140426

/-- `A016116(A008611(n+1))` -/
def P14016595387650611318.Spec : Prop :=
  ∀ n, P14016595387650611318.a n = A140426 n

end A140426

/-! ## A140426.P3900614843635471219

`A173862(A052938(n+1))`
-/

namespace A140426.P3900614843635471219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173862 (A052938 (n + 1)).toNat

end

end A140426.P3900614843635471219

namespace A140426

/-- `A173862(A052938(n+1))` -/
def P3900614843635471219.Spec : Prop :=
  ∀ n, P3900614843635471219.a n = A140426 n

end A140426

/-! ## A140426.P15920010317148034083

`A060546(2*A008615(n))`
-/

namespace A140426.P15920010317148034083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060546 (2 * A008615 n).toNat

end

end A140426.P15920010317148034083

namespace A140426

/-- `A060546(2*A008615(n))` -/
def P15920010317148034083.Spec : Prop :=
  ∀ n, P15920010317148034083.a n = A140426 n

end A140426

/-! ## A140426.P17203902251887433459

`A152166(2*A008615(n))`
-/

namespace A140426.P17203902251887433459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152166 (2 * A008615 n).toNat

end

end A140426.P17203902251887433459

namespace A140426

/-- `A152166(2*A008615(n))` -/
def P17203902251887433459.Spec : Prop :=
  ∀ n, P17203902251887433459.a n = A140426 n

end A140426

/-!
# A140427: Arises in relating doubly-even error-correcting codes, graphs and irreducible representations of N-extended supersymmetry.

The programs for A140427, the canonical program `A140427.P3403898975728933090` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A140427 has offset 0).

The definition of A140427 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A140427.P3403898975728933090

`a(n-8)+4` with `a(0)=0, a(1)=0, a(2)=0, a(3)=0, a(4)=1, a(5)=1, a(6)=2, a(7)=3`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A140427

/-- `a(n-8)+4` -/
def P3403898975728933090.Spec : Prop :=
  ∀ n, (P3403898975728933090.a n : ℤ) = A140427 n

theorem P3403898975728933090.correct : P3403898975728933090.Spec := by
  intro n
  simp only [A140427]

end A140427

/-! ## A140427.P17277988390847365853

`round(∑[(n-1)%8/7])`
-/

namespace A140427.P17277988390847365853
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.tmod ((n : ℤ) - 1) 8 : ℚ) / 7

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A140427.P17277988390847365853

namespace A140427

/-- `round(∑[(n-1)%8/7])` -/
def P17277988390847365853.Spec : Prop :=
  ∀ n, P17277988390847365853.a n = A140427 n

end A140427

/-! ## A140427.P12255103981250815207

`∑[comp[xor(3, 3*n)]%2]-1`
-/

namespace A140427.P12255103981250815207
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 3 (3 * n)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n % 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 1

end

end A140427.P12255103981250815207

namespace A140427

/-- `∑[comp[xor(3, 3*n)]%2]-1` -/
def P12255103981250815207.Spec : Prop :=
  ∀ n, P12255103981250815207.a n = A140427 n

end A140427

/-! ## A140427.P16721194006110243458

`∑[(a(n-2)^a(n-1)-a(n-3))²]` with `a(0)=0, a(1)=0, a(2)=0, a(3)=0`
-/

namespace A140427.P16721194006110243458
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.rec [0, 0, 0, 0] fun n f1 =>
  (f1 (n - 2) ^ (f1 (n - 1)) - f1 (n - 3)) ^ 2

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A140427.P16721194006110243458

namespace A140427

/-- `∑[(a(n-2)^a(n-1)-a(n-3))²]` -/
def P16721194006110243458.Spec : Prop :=
  ∀ n, P16721194006110243458.a n = (A140427 n : ℝ)

end A140427

/-! ## A140427.P2741936081819055233

`∑[A169675(abs(1-n))]`
-/

namespace A140427.P2741936081819055233
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169675 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A140427.P2741936081819055233

namespace A140427

/-- `∑[A169675(abs(1-n))]` -/
def P2741936081819055233.Spec : Prop :=
  ∀ n, P2741936081819055233.a n = A140427 n

end A140427

/-! ## A140427.P12599467154288464972

`∑[char[A047507(n+2)]]`
-/

namespace A140427.P12599467154288464972
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047507 (n + 2)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A140427.P12599467154288464972

namespace A140427

/-- `∑[char[A047507(n+2)]]` -/
def P12599467154288464972.Spec : Prop :=
  ∀ n, (P12599467154288464972.a n : ℤ) = A140427 n

end A140427

/-! ## A140427.P11845682480114655471

`A169675(n-1)+a(n-1)` with `a(0)=0`
-/

namespace A140427.P11845682480114655471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A169675 (n - 1) + a (n - 1)

end

end A140427.P11845682480114655471

namespace A140427

/-- `A169675(n-1)+a(n-1)` -/
def P11845682480114655471.Spec : Prop :=
  ∀ n, P11845682480114655471.a n = A140427 n

end A140427

/-! ## A140427.P11360569429390677016

`comp[A047507(n+1)+n-1]-n`
-/

namespace A140427.P11360569429390677016
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047507 (n + 1) + ((n : ℤ) - 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) - (n : ℤ)

end

end A140427.P11360569429390677016

namespace A140427

/-- `comp[A047507(n+1)+n-1]-n` -/
def P11360569429390677016.Spec : Prop :=
  ∀ n, P11360569429390677016.a n = A140427 n

end A140427

/-! ## A140427.P14239337377492181109

`∑[char[2*n]]-1-A040669(n)%2`
-/

namespace A140427.P14239337377492181109
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 1 - Int.tmod (A040669 n) 2

end

end A140427.P14239337377492181109

namespace A140427

/-- `∑[char[2*n]]-1-A040669(n)%2` -/
def P14239337377492181109.Spec : Prop :=
  ∀ n, P14239337377492181109.a n = A140427 n

end A140427

/-! ## A140427.P5624998176931645157

`A001068(n)-A330881(n)`
-/

namespace A140427.P5624998176931645157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001068 n - A330881 n

end

end A140427.P5624998176931645157

namespace A140427

/-- `A001068(n)-A330881(n)` -/
def P5624998176931645157.Spec : Prop :=
  ∀ n, P5624998176931645157.a n = A140427 n

end A140427

/-! ## A140427.P8535134663545869185

`∑[A169675(n)]-A169675(n)`
-/

namespace A140427.P8535134663545869185
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169675 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A169675 n

end

end A140427.P8535134663545869185

namespace A140427

/-- `∑[A169675(n)]-A169675(n)` -/
def P8535134663545869185.Spec : Prop :=
  ∀ n, P8535134663545869185.a n = A140427 n

end A140427

/-! ## A140427.P10037994614567523985

`A004526(A046980(n)-1+n)`
-/

namespace A140427.P10037994614567523985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A046980 n - 1 + (n : ℤ)).toNat

end

end A140427.P10037994614567523985

namespace A140427

/-- `A004526(A046980(n)-1+n)` -/
def P10037994614567523985.Spec : Prop :=
  ∀ n, P10037994614567523985.a n = A140427 n

end A140427

/-! ## A140427.P1699784539313222907

`A004526(n-(1-A046980(n)))`
-/

namespace A140427.P1699784539313222907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 ((n : ℤ) - (1 - A046980 n)).toNat

end

end A140427.P1699784539313222907

namespace A140427

/-- `A004526(n-(1-A046980(n)))` -/
def P1699784539313222907.Spec : Prop :=
  ∀ n, P1699784539313222907.a n = A140427 n

end A140427

/-! ## A140427.P13490740183189946385

`A173711(n)+A004524(A004524(n)+1)`
-/

namespace A140427.P13490740183189946385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173711 n + A004524 (A004524 n + 1).toNat

end

end A140427.P13490740183189946385

namespace A140427

/-- `A173711(n)+A004524(A004524(n)+1)` -/
def P13490740183189946385.Spec : Prop :=
  ∀ n, P13490740183189946385.a n = A140427 n

end A140427

/-! ## A140427.P7003079963736561613

`A004524(A004524(n))+A004524(A008619(n))`
-/

namespace A140427.P7003079963736561613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004524 (A004524 n).toNat + A004524 (A008619 n).toNat

end

end A140427.P7003079963736561613

namespace A140427

/-- `A004524(A004524(n))+A004524(A008619(n))` -/
def P7003079963736561613.Spec : Prop :=
  ∀ n, P7003079963736561613.a n = A140427 n

end A140427

/-! ## A140427.P4220963957282638378

`A004524(A004524(n)+A046980(n)+A004524(n))`
-/

namespace A140427.P4220963957282638378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004524 (A004524 n + (A046980 n + A004524 n)).toNat

end

end A140427.P4220963957282638378

namespace A140427

/-- `A004524(A004524(n)+A046980(n)+A004524(n))` -/
def P4220963957282638378.Spec : Prop :=
  ∀ n, P4220963957282638378.a n = A140427 n

end A140427

/-! ## A140427.P7147229454450168755

`A004524(A004524(n+1))+A002265(n)`
-/

namespace A140427.P7147229454450168755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004524 (A004524 (n + 1)).toNat + A002265 n

end

end A140427.P7147229454450168755

namespace A140427

/-- `A004524(A004524(n+1))+A002265(n)` -/
def P7147229454450168755.Spec : Prop :=
  ∀ n, P7147229454450168755.a n = A140427 n

end A140427

/-! ## A140427.P7466066931750219835

`A004526(n)-A000035(A130845(n+1))`
-/

namespace A140427.P7466066931750219835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 n - A000035 (A130845 (n + 1)).toNat

end

end A140427.P7466066931750219835

namespace A140427

/-- `A004526(n)-A000035(A130845(n+1))` -/
def P7466066931750219835.Spec : Prop :=
  ∀ n, P7466066931750219835.a n = A140427 n

end A140427

/-! ## A140427.P8332197452424035999

`A038709(n+1)+A038709(n)-A082643(n)`
-/

namespace A140427.P8332197452424035999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038709 (n + 1) + (A038709 n - A082643 n)

end

end A140427.P8332197452424035999

namespace A140427

/-- `A038709(n+1)+A038709(n)-A082643(n)` -/
def P8332197452424035999.Spec : Prop :=
  ∀ n, P8332197452424035999.a n = A140427 n

end A140427

/-! ## A140427.P17694824375678056412

`A236916(n+2)-2`
-/

namespace A140427.P17694824375678056412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236916 (n + 2) - 2

end

end A140427.P17694824375678056412

namespace A140427

/-- `A236916(n+2)-2` -/
def P17694824375678056412.Spec : Prop :=
  ∀ n, P17694824375678056412.a n = A140427 n

end A140427

/-!
# A140428: a(n) = A000045(n) + A113405(n).

The programs for A140428, the canonical program `A140428.P11997677646932736718` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A140428 has offset 0).

The definition of A140428 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A140428.P11997677646932736718

`A000045(n)+A113405(n)`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A140428

/-- `A000045(n)+A113405(n)` -/
def P11997677646932736718.Spec : Prop :=
  ∀ n, P11997677646932736718.a n = A140428 n

theorem P11997677646932736718.correct : P11997677646932736718.Spec := by
  intro n
  simp only [A140428]

end A140428

/-! ## A140428.P6646396741083237744

`A212804(n+1)+A113405(n)`
-/

namespace A140428.P6646396741083237744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212804 (n + 1) + A113405 n

end

end A140428.P6646396741083237744

namespace A140428

/-- `A212804(n+1)+A113405(n)` -/
def P6646396741083237744.Spec : Prop :=
  ∀ n, P6646396741083237744.a n = A140428 n

end A140428

/-! ## A140428.P3973628537327811366

`A001611(n)+A113405(n)-1`
-/

namespace A140428.P3973628537327811366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001611 n + (A113405 n - 1)

end

end A140428.P3973628537327811366

namespace A140428

/-- `A001611(n)+A113405(n)-1` -/
def P3973628537327811366.Spec : Prop :=
  ∀ n, P3973628537327811366.a n = A140428 n

end A140428

/-! ## A140428.P8716824803205418544

`A113405(n)+A103609(2*n)`
-/

namespace A140428.P8716824803205418544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113405 n + A103609 (2 * n)

end

end A140428.P8716824803205418544

namespace A140428

/-- `A113405(n)+A103609(2*n)` -/
def P8716824803205418544.Spec : Prop :=
  ∀ n, P8716824803205418544.a n = A140428 n

end A140428

/-! ## A140428.P11766596461429064376

`2*A000045(n)-A140096(n)`
-/

namespace A140428.P11766596461429064376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000045 n - A140096 n

end

end A140428.P11766596461429064376

namespace A140428

/-- `2*A000045(n)-A140096(n)` -/
def P11766596461429064376.Spec : Prop :=
  ∀ n, P11766596461429064376.a n = A140428 n

theorem P11766596461429064376.correct : P11766596461429064376.Spec := by
  intro n
  simp only [A140428, Nat.add_sub_cancel, A140428.P11766596461429064376.a, A140428.P11997677646932736718.a, A000045, A000045.P11838749114346432762.a, A113405, A113405.P8021731065096771962.a, A140096, A140096.P3031810697924802986.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A140428

/-! ## A140428.P6474473897240184534

`A113405(n)+Δ[A000071(n+1)]`
-/

namespace A140428.P6474473897240184534
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000071 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113405 n + (f1 (n + 1) - f1 n)

end

end A140428.P6474473897240184534

namespace A140428

/-- `A113405(n)+Δ[A000071(n+1)]` -/
def P6474473897240184534.Spec : Prop :=
  ∀ n, P6474473897240184534.a n = A140428 n

end A140428

/-! ## A140428.P5489869297822276070

`A113405(n)+Δ[A001611(n+1)]`
-/

namespace A140428.P5489869297822276070
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001611 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113405 n + (f1 (n + 1) - f1 n)

end

end A140428.P5489869297822276070

namespace A140428

/-- `A113405(n)+Δ[A001611(n+1)]` -/
def P5489869297822276070.Spec : Prop :=
  ∀ n, P5489869297822276070.a n = A140428 n

end A140428

/-! ## A140428.P4848457160279865187

`A113405(n)+A140096(n)+A113405(n)`
-/

namespace A140428.P4848457160279865187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113405 n + (A140096 n + A113405 n)

end

end A140428.P4848457160279865187

namespace A140428

/-- `A113405(n)+A140096(n)+A113405(n)` -/
def P4848457160279865187.Spec : Prop :=
  ∀ n, P4848457160279865187.a n = A140428 n

theorem P4848457160279865187.correct : P4848457160279865187.Spec := by
  intro n
  simp only [A140428, Nat.add_sub_cancel, A140428.P4848457160279865187.a, A140428.P11997677646932736718.a, A000045, A000045.P11838749114346432762.a, A113405, A113405.P8021731065096771962.a, A140096, A140096.P3031810697924802986.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A140428

/-! ## A140428.P7468901608935989374

`A131666(n)+A140096(n)+A133511(n)`
-/

namespace A140428.P7468901608935989374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131666 n + (A140096 n + A133511 n)

end

end A140428.P7468901608935989374

namespace A140428

/-- `A131666(n)+A140096(n)+A133511(n)` -/
def P7468901608935989374.Spec : Prop :=
  ∀ n, P7468901608935989374.a n = A140428 n

end A140428

/-! ## A140428.P15641294339395422519

`A113405(n)+A293545(n)+A293543(n)`
-/

namespace A140428.P15641294339395422519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113405 n + (A293545 n + A293543 n)

end

end A140428.P15641294339395422519

namespace A140428

/-- `A113405(n)+A293545(n)+A293543(n)` -/
def P15641294339395422519.Spec : Prop :=
  ∀ n, P15641294339395422519.a n = A140428 n

end A140428

/-! ## A140428.P6918957235445185923

`A113405(n)+A192956(n)-A192958(n)`
-/

namespace A140428.P6918957235445185923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113405 n + (A192956 n - A192958 n)

end

end A140428.P6918957235445185923

namespace A140428

/-- `A113405(n)+A192956(n)-A192958(n)` -/
def P6918957235445185923.Spec : Prop :=
  ∀ n, P6918957235445185923.a n = A140428 n

end A140428

/-! ## A140428.P9124117144022466040

`A113405(n)+A192979(n)-A192964(n)`
-/

namespace A140428.P9124117144022466040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113405 n + (A192979 n - A192964 n)

end

end A140428.P9124117144022466040

namespace A140428

/-- `A113405(n)+A192979(n)-A192964(n)` -/
def P9124117144022466040.Spec : Prop :=
  ∀ n, P9124117144022466040.a n = A140428 n

end A140428

/-! ## A140428.P11789926261630741814

`A000045(n)+A139797(n+1)+A139797(n)`
-/

namespace A140428.P11789926261630741814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n + (A139797 (n + 1) + A139797 n)

end

end A140428.P11789926261630741814

namespace A140428

/-- `A000045(n)+A139797(n+1)+A139797(n)` -/
def P11789926261630741814.Spec : Prop :=
  ∀ n, P11789926261630741814.a n = A140428 n

end A140428

/-! ## A140428.P6270733083077450875

`A000045(n)+Δ[A153234(n)]`
-/

namespace A140428.P6270733083077450875
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153234 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n + (f1 (n + 1) - f1 n)

end

end A140428.P6270733083077450875

namespace A140428

/-- `A000045(n)+Δ[A153234(n)]` -/
def P6270733083077450875.Spec : Prop :=
  ∀ n, P6270733083077450875.a n = A140428 n

end A140428

/-! ## A140428.P10521283554709319786

`A140096(n)+2*A113405(n)`
-/

namespace A140428.P10521283554709319786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140096 n + 2 * A113405 n

end

end A140428.P10521283554709319786

namespace A140428

/-- `A140096(n)+2*A113405(n)` -/
def P10521283554709319786.Spec : Prop :=
  ∀ n, P10521283554709319786.a n = A140428 n

theorem P10521283554709319786.correct : P10521283554709319786.Spec := by
  intro n
  simp only [A140428, Nat.add_sub_cancel, A140428.P10521283554709319786.a, A140428.P11997677646932736718.a, A000045, A000045.P11838749114346432762.a, A113405, A113405.P8021731065096771962.a, A140096, A140096.P3031810697924802986.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A140428

/-! ## A140428.P6184755497698613394

`A132780(n)+A140096(n)-A130151(n)`
-/

namespace A140428.P6184755497698613394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132780 n + (A140096 n - A130151 n)

end

end A140428.P6184755497698613394

namespace A140428

/-- `A132780(n)+A140096(n)-A130151(n)` -/
def P6184755497698613394.Spec : Prop :=
  ∀ n, P6184755497698613394.a n = A140428 n

end A140428

/-! ## A140428.P14622695454703443209

`A141325(n+1)+A140096(n)-A140096(n+1)`
-/

namespace A140428.P14622695454703443209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141325 (n + 1) + (A140096 n - A140096 (n + 1))

end

end A140428.P14622695454703443209

namespace A140428

/-- `A141325(n+1)+A140096(n)-A140096(n+1)` -/
def P14622695454703443209.Spec : Prop :=
  ∀ n, P14622695454703443209.a n = A140428 n

end A140428

/-! ## A140428.P8056410549155373031

`A328881(n+1)+A140096(n)-A131531(n+2)`
-/

namespace A140428.P8056410549155373031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328881 (n + 1) + (A140096 n - A131531 (n + 2))

end

end A140428.P8056410549155373031

namespace A140428

/-- `A328881(n+1)+A140096(n)-A131531(n+2)` -/
def P8056410549155373031.Spec : Prop :=
  ∀ n, P8056410549155373031.a n = A140428 n

end A140428

/-! ## A140428.P1630155411989306566

`A000045(n)+A001045(n)-A131666(n+1)`
-/

namespace A140428.P1630155411989306566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n + (A001045 n - A131666 (n + 1))

end

end A140428.P1630155411989306566

namespace A140428

/-- `A000045(n)+A001045(n)-A131666(n+1)` -/
def P1630155411989306566.Spec : Prop :=
  ∀ n, P1630155411989306566.a n = A140428 n

end A140428

/-! ## A140428.P327774501753422108

`A132780(n+1)+A140096(n)-A132780(n)`
-/

namespace A140428.P327774501753422108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132780 (n + 1) + (A140096 n - A132780 n)

end

end A140428.P327774501753422108

namespace A140428

/-- `A132780(n+1)+A140096(n)-A132780(n)` -/
def P327774501753422108.Spec : Prop :=
  ∀ n, P327774501753422108.a n = A140428 n

end A140428

/-!
# A140429: a(n) = floor(3^(n-1)).

The programs for A140429, the canonical program `A140429.P7959095880599910709` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A140429 has offset 0).

The definition of A140429 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(3^(n-1))` (program `A140429.P7959095880599910709`, by `A140429.P7959095880599910709.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A140429.P7959095880599910709

`floor(3^(n-1))`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A140429

/-- `floor(3^(n-1))` -/
def P7959095880599910709.Spec : Prop :=
  ∀ n, P7959095880599910709.a n = A140429 n

theorem P7959095880599910709.correct : P7959095880599910709.Spec := by
  intro n
  simp only [A140429]

end A140429

/-! ## A140429.P16750778357608099065

`ogf(x/(1-3x))`
-/

namespace A140429.P16750778357608099065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1] [1, -3] n

end

end A140429.P16750778357608099065

namespace A140429

/-- `ogf(x/(1-3x))` -/
def P16750778357608099065.Spec : Prop :=
  ∀ n, P16750778357608099065.a n = A140429 n

end A140429

/-! ## A140429.P7879565876217791470

`3*a(n-1)` with `a(0)=0, a(1)=1`
-/

namespace A140429.P7879565876217791470
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n a =>
  3 * a (n - 1)

end

end A140429.P7879565876217791470

namespace A140429

/-- `3*a(n-1)` -/
def P7879565876217791470.Spec : Prop :=
  ∀ n, (P7879565876217791470.a n : ℤ) = A140429 n

end A140429

/-! ## A140429.P15831123148147813931

`round(3^xor(-1, -n))`
-/

namespace A140429.P15831123148147813931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((3 : ℚ) ^ (Int.xor (-1) (-(n : ℤ)) : ℤ))

end

end A140429.P15831123148147813931

namespace A140429

/-- `round(3^xor(-1, -n))` -/
def P15831123148147813931.Spec : Prop :=
  ∀ n, P15831123148147813931.a n = A140429 n

end A140429

/-! ## A140429.P5700564043397892173

`and(-5, round(3^(n-1)))`
-/

namespace A140429.P5700564043397892173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-5) (SequenceMachineLib.roundAway ((3 : ℚ) ^ ((n : ℤ) - 1 : ℤ)))

end

end A140429.P5700564043397892173

namespace A140429

/-- `and(-5, round(3^(n-1)))` -/
def P5700564043397892173.Spec : Prop :=
  ∀ n, P5700564043397892173.a n = A140429 n

end A140429

/-! ## A140429.P7840642798570879095

`ceil(cos(2)+3^(n-1))`
-/

namespace A140429.P7840642798570879095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.cos (2 : ℝ) + ((3 : ℚ) ^ ((n : ℤ) - 1 : ℤ) : ℝ)⌉

end

end A140429.P7840642798570879095

namespace A140429

/-- `ceil(cos(2)+3^(n-1))` -/
def P7840642798570879095.Spec : Prop :=
  ∀ n, P7840642798570879095.a n = A140429 n

end A140429

/-! ## A140429.P8585819893011807549

`round(cos(2)+3^(n-1))`
-/

namespace A140429.P8585819893011807549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.cos (2 : ℝ) + ((3 : ℚ) ^ ((n : ℤ) - 1 : ℤ) : ℝ))

end

end A140429.P8585819893011807549

namespace A140429

/-- `round(cos(2)+3^(n-1))` -/
def P8585819893011807549.Spec : Prop :=
  ∀ n, P8585819893011807549.a n = A140429 n

end A140429

/-! ## A140429.P1033110867013558975

`round(sin(3)+3^(n-1))`
-/

namespace A140429.P1033110867013558975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sin (3 : ℝ) + ((3 : ℚ) ^ ((n : ℤ) - 1 : ℤ) : ℝ))

end

end A140429.P1033110867013558975

namespace A140429

/-- `round(sin(3)+3^(n-1))` -/
def P1033110867013558975.Spec : Prop :=
  ∀ n, P1033110867013558975.a n = A140429 n

end A140429

/-! ## A140429.P6908165666109476777

`round(3^(n-1)-sin(3))`
-/

namespace A140429.P6908165666109476777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (((3 : ℚ) ^ ((n : ℤ) - 1 : ℤ) : ℝ) - Real.sin (3 : ℝ))

end

end A140429.P6908165666109476777

namespace A140429

/-- `round(3^(n-1)-sin(3))` -/
def P6908165666109476777.Spec : Prop :=
  ∀ n, P6908165666109476777.a n = A140429 n

end A140429

/-! ## A140429.P5776650109655066326

`round(tan(3)+3^(n-1))`
-/

namespace A140429.P5776650109655066326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.tan (3 : ℝ) + ((3 : ℚ) ^ ((n : ℤ) - 1 : ℤ) : ℝ))

end

end A140429.P5776650109655066326

namespace A140429

/-- `round(tan(3)+3^(n-1))` -/
def P5776650109655066326.Spec : Prop :=
  ∀ n, P5776650109655066326.a n = A140429 n

end A140429

/-! ## A140429.P72279995213192099

`round(3^(n-1)-tan(3))`
-/

namespace A140429.P72279995213192099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (((3 : ℚ) ^ ((n : ℤ) - 1 : ℤ) : ℝ) - Real.tan (3 : ℝ))

end

end A140429.P72279995213192099

namespace A140429

/-- `round(3^(n-1)-tan(3))` -/
def P72279995213192099.Spec : Prop :=
  ∀ n, P72279995213192099.a n = A140429 n

end A140429

/-! ## A140429.P15481898531764073687

`round(3^(n-1)-cos(5))`
-/

namespace A140429.P15481898531764073687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (((3 : ℚ) ^ ((n : ℤ) - 1 : ℤ) : ℝ) - Real.cos (5 : ℝ))

end

end A140429.P15481898531764073687

namespace A140429

/-- `round(3^(n-1)-cos(5))` -/
def P15481898531764073687.Spec : Prop :=
  ∀ n, P15481898531764073687.a n = A140429 n

end A140429

/-! ## A140429.P5205413651528844344

`ceil(cot(2)+3^(n-1))`
-/

namespace A140429.P5205413651528844344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.cot (2 : ℝ) + ((3 : ℚ) ^ ((n : ℤ) - 1 : ℤ) : ℝ)⌉

end

end A140429.P5205413651528844344

namespace A140429

/-- `ceil(cot(2)+3^(n-1))` -/
def P5205413651528844344.Spec : Prop :=
  ∀ n, P5205413651528844344.a n = A140429 n

end A140429

/-! ## A140429.P7566908036103763434

`ceil(3^(n-1)-sin(9))`
-/

namespace A140429.P7566908036103763434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((3 : ℚ) ^ ((n : ℤ) - 1 : ℤ) : ℝ) - Real.sin (9 : ℝ)⌉

end

end A140429.P7566908036103763434

namespace A140429

/-- `ceil(3^(n-1)-sin(9))` -/
def P7566908036103763434.Spec : Prop :=
  ∀ n, P7566908036103763434.a n = A140429 n

end A140429

/-! ## A140429.P9717868961300946775

`ceil(tan(9)+3^(n-1))`
-/

namespace A140429.P9717868961300946775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.tan (9 : ℝ) + ((3 : ℚ) ^ ((n : ℤ) - 1 : ℤ) : ℝ)⌉

end

end A140429.P9717868961300946775

namespace A140429

/-- `ceil(tan(9)+3^(n-1))` -/
def P9717868961300946775.Spec : Prop :=
  ∀ n, P9717868961300946775.a n = A140429 n

end A140429

/-! ## A140429.P16151427070873925943

`round(cot(2)+3^(n-1))`
-/

namespace A140429.P16151427070873925943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.cot (2 : ℝ) + ((3 : ℚ) ^ ((n : ℤ) - 1 : ℤ) : ℝ))

end

end A140429.P16151427070873925943

namespace A140429

/-- `round(cot(2)+3^(n-1))` -/
def P16151427070873925943.Spec : Prop :=
  ∀ n, P16151427070873925943.a n = A140429 n

end A140429

/-! ## A140429.P12013605128117007022

`ceil(3^(n-1)-acot(2))`
-/

namespace A140429.P12013605128117007022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((3 : ℚ) ^ ((n : ℤ) - 1 : ℤ) : ℝ) - SequenceMachineLib.acot (2 : ℝ)⌉

end

end A140429.P12013605128117007022

namespace A140429

/-- `ceil(3^(n-1)-acot(2))` -/
def P12013605128117007022.Spec : Prop :=
  ∀ n, P12013605128117007022.a n = A140429 n

end A140429

/-! ## A140429.P8142504531093795195

`round(3^(n-1)-acot(2))`
-/

namespace A140429.P8142504531093795195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (((3 : ℚ) ^ ((n : ℤ) - 1 : ℤ) : ℝ) - SequenceMachineLib.acot (2 : ℝ))

end

end A140429.P8142504531093795195

namespace A140429

/-- `round(3^(n-1)-acot(2))` -/
def P8142504531093795195.Spec : Prop :=
  ∀ n, P8142504531093795195.a n = A140429 n

end A140429

/-! ## A140429.P17525983873850044436

`round(3^(n-1)-cot(8))`
-/

namespace A140429.P17525983873850044436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (((3 : ℚ) ^ ((n : ℤ) - 1 : ℤ) : ℝ) - Real.cot (8 : ℝ))

end

end A140429.P17525983873850044436

namespace A140429

/-- `round(3^(n-1)-cot(8))` -/
def P17525983873850044436.Spec : Prop :=
  ∀ n, P17525983873850044436.a n = A140429 n

end A140429

/-! ## A140429.P6600725282630108469

`xor(4, round(3^(n-1))+4)`
-/

namespace A140429.P6600725282630108469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 4 (SequenceMachineLib.roundAway ((3 : ℚ) ^ ((n : ℤ) - 1 : ℤ)) + 4)

end

end A140429.P6600725282630108469

namespace A140429

/-- `xor(4, round(3^(n-1))+4)` -/
def P6600725282630108469.Spec : Prop :=
  ∀ n, P6600725282630108469.a n = A140429 n

end A140429

/-!
# A140430: Period 6: repeat [3, 2, 4, 1, 2, 0].

The programs for A140430, the canonical program `A140430.P2580951712837435612` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A140430 has offset 0).

The definition of A140430 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A140430.P2580951712837435612

`a(n-1)-a(n-3)+a(n-4)` with `a(0)=3, a(1)=2, a(2)=4, a(3)=1`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A140430

/-- `a(n-1)-a(n-3)+a(n-4)` -/
def P2580951712837435612.Spec : Prop :=
  ∀ n, P2580951712837435612.a n = A140430 n

theorem P2580951712837435612.correct : P2580951712837435612.Spec := by
  intro n
  simp only [A140430]

end A140430

/-!
# A140431: a(n) = 2*A094555(n).

The programs for A140431, the canonical program `A140431.P4392069254811655813` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A140431 has offset 0).

The definition of A140431 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A140431.P5493903130436210563

`2*a(n-1)+5*a(n-2)-6*a(n-3)` with `a(0)=0, a(1)=2, a(2)=2, a(3)=12`
-/

namespace A140431.P5493903130436210563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 2, 2, 12] fun n a =>
  2 * a (n - 1) + 5 * a (n - 2) - 6 * a (n - 3)

end

end A140431.P5493903130436210563

namespace A140431

/-- `2*a(n-1)+5*a(n-2)-6*a(n-3)` -/
def P5493903130436210563.Spec : Prop :=
  ∀ n, P5493903130436210563.a n = A140431 n

end A140431

/-! ## A140431.P4392069254811655813

`2*A094555(n)`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A140431

/-- `2*A094555(n)` -/
def P4392069254811655813.Spec : Prop :=
  ∀ n, P4392069254811655813.a n = A140431 n

theorem P4392069254811655813.correct : P4392069254811655813.Spec := by
  intro n
  simp only [A140431]

end A140431

/-! ## A140431.P773393173950738984

`∑[ogf((-2x+2x^2+2x^3)/(-1+x+6x^2))]`
-/

namespace A140431.P773393173950738984
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 2, -2, -2] [1, -1, -6] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A140431.P773393173950738984

namespace A140431

/-- `∑[ogf((-2x+2x^2+2x^3)/(-1+x+6x^2))]` -/
def P773393173950738984.Spec : Prop :=
  ∀ n, P773393173950738984.a n = A140431 n

end A140431

/-! ## A140431.P17086967446144691982

`ogf((-2x+2x^2+2x^3)/(-1+2x+5x^2-6x^3))`
-/

namespace A140431.P17086967446144691982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 2, -2, -2] [1, -2, -5, 6] n

end

end A140431.P17086967446144691982

namespace A140431

/-- `ogf((-2x+2x^2+2x^3)/(-1+2x+5x^2-6x^3))` -/
def P17086967446144691982.Spec : Prop :=
  ∀ n, P17086967446144691982.a n = A140431 n

end A140431

/-! ## A140431.P3924071678789831568

`6*a(n-2)+a(n-1)-2` with `a(0)=0, a(1)=2, a(2)=2`
-/

namespace A140431.P3924071678789831568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 2, 2] fun n a =>
  6 * a (n - 2) + (a (n - 1) - 2)

end

end A140431.P3924071678789831568

namespace A140431

/-- `6*a(n-2)+a(n-1)-2` -/
def P3924071678789831568.Spec : Prop :=
  ∀ n, P3924071678789831568.a n = A140431 n

end A140431

/-! ## A140431.P16787699795551674043

`6*a(n-2)-(2-a(n-1))` with `a(0)=0, a(1)=2, a(2)=2`
-/

namespace A140431.P16787699795551674043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 2, 2] fun n a =>
  6 * a (n - 2) - (2 - a (n - 1))

end

end A140431.P16787699795551674043

namespace A140431

/-- `6*a(n-2)-(2-a(n-1))` -/
def P16787699795551674043.Spec : Prop :=
  ∀ n, P16787699795551674043.a n = A140431 n

end A140431

/-! ## A140431.P6465333571712330875

`A007051(n)-A094554(n)`
-/

namespace A140431.P6465333571712330875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007051 n - A094554 n

end

end A140431.P6465333571712330875

namespace A140431

/-- `A007051(n)-A094554(n)` -/
def P6465333571712330875.Spec : Prop :=
  ∀ n, P6465333571712330875.a n = A140431 n

end A140431

/-! ## A140431.P4754884153809201189

`A085279(n)-A052992(n)`
-/

namespace A140431.P4754884153809201189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085279 n - A052992 n

end

end A140431.P4754884153809201189

namespace A140431

/-- `A085279(n)-A052992(n)` -/
def P4754884153809201189.Spec : Prop :=
  ∀ n, P4754884153809201189.a n = A140431 n

end A140431

/-! ## A140431.P10848169739875175305

`A094388(n)-A151575(n)`
-/

namespace A140431.P10848169739875175305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094388 n - A151575 n

end

end A140431.P10848169739875175305

namespace A140431

/-- `A094388(n)-A151575(n)` -/
def P10848169739875175305.Spec : Prop :=
  ∀ n, P10848169739875175305.a n = A140431 n

end A140431

/-! ## A140431.P653487051883298670

`lcm(A094555(n), A106469(n))`
-/

namespace A140431.P653487051883298670
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A094555 n) (A106469 n)

end

end A140431.P653487051883298670

namespace A140431

/-- `lcm(A094555(n), A106469(n))` -/
def P653487051883298670.Spec : Prop :=
  ∀ n, (P653487051883298670.a n : ℤ) = A140431 n

end A140431

/-! ## A140431.P11273765015718655508

`A094554(n+1)-A094556(n)`
-/

namespace A140431.P11273765015718655508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094554 (n + 1) - A094556 n

end

end A140431.P11273765015718655508

namespace A140431

/-- `A094554(n+1)-A094556(n)` -/
def P11273765015718655508.Spec : Prop :=
  ∀ n, P11273765015718655508.a n = A140431 n

end A140431

/-! ## A140431.P4041039279547737834

`A140429(n)+2-A140966(n)`
-/

namespace A140431.P4041039279547737834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140429 n + (2 - A140966 n)

end

end A140431.P4041039279547737834

namespace A140431

/-- `A140429(n)+2-A140966(n)` -/
def P4041039279547737834.Spec : Prop :=
  ∀ n, P4041039279547737834.a n = A140431 n

end A140431

/-! ## A140431.P3551614591859495837

`2*(A091001(n)+abs(A091005(n)))`
-/

namespace A140431.P3551614591859495837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A091001 n + |A091005 n|)

end

end A140431.P3551614591859495837

namespace A140431

/-- `2*(A091001(n)+abs(A091005(n)))` -/
def P3551614591859495837.Spec : Prop :=
  ∀ n, P3551614591859495837.a n = A140431 n

end A140431

/-! ## A140431.P4908602155823035280

`2*(abs(A091004(n))-A091002(n))`
-/

namespace A140431.P4908602155823035280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (|A091004 n| - A091002 n)

end

end A140431.P4908602155823035280

namespace A140431

/-- `2*(abs(A091004(n))-A091002(n))` -/
def P4908602155823035280.Spec : Prop :=
  ∀ n, P4908602155823035280.a n = A140431 n

end A140431

/-! ## A140431.P12262675918990587332

`Δ[A140962(n)+A124302(n)]+1`
-/

namespace A140431.P12262675918990587332
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140962 n + A124302 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + 1

end

end A140431.P12262675918990587332

namespace A140431

/-- `Δ[A140962(n)+A124302(n)]+1` -/
def P12262675918990587332.Spec : Prop :=
  ∀ n, P12262675918990587332.a n = A140431 n

end A140431

/-! ## A140431.P14997536511848595488

`A094555(A005843(n)/2)+A094555(n)`
-/

namespace A140431.P14997536511848595488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094555 (SequenceMachineLib.roundAway ((A005843 n : ℚ) / 2)).toNat + A094555 n

end

end A140431.P14997536511848595488

namespace A140431

/-- `A094555(A005843(n)/2)+A094555(n)` -/
def P14997536511848595488.Spec : Prop :=
  ∀ n, P14997536511848595488.a n = A140431 n

end A140431

/-! ## A140431.P1038517284064829093

`A094555(A005843(n)-n)+A094555(n)`
-/

namespace A140431.P1038517284064829093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094555 (A005843 n - (n : ℤ)).toNat + A094555 n

end

end A140431.P1038517284064829093

namespace A140431

/-- `A094555(A005843(n)-n)+A094555(n)` -/
def P1038517284064829093.Spec : Prop :=
  ∀ n, P1038517284064829093.a n = A140431 n

end A140431

/-! ## A140431.P12489162682352208093

`A091001(n)+A094555(n)+abs(A091005(n))`
-/

namespace A140431.P12489162682352208093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091001 n + (A094555 n + |A091005 n|)

end

end A140431.P12489162682352208093

namespace A140431

/-- `A091001(n)+A094555(n)+abs(A091005(n))` -/
def P12489162682352208093.Spec : Prop :=
  ∀ n, P12489162682352208093.a n = A140431 n

end A140431

/-! ## A140431.P7190816404494548368

`abs(A091004(n))+A094555(n)-A091002(n)`
-/

namespace A140431.P7190816404494548368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A091004 n| + (A094555 n - A091002 n)

end

end A140431.P7190816404494548368

namespace A140431

/-- `abs(A091004(n))+A094555(n)-A091002(n)` -/
def P7190816404494548368.Spec : Prop :=
  ∀ n, P7190816404494548368.a n = A140431 n

end A140431

/-! ## A140431.P8045516929977569208

`A094555(n+1)+A140429(n)-A094556(n+1)`
-/

namespace A140431.P8045516929977569208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094555 (n + 1) + (A140429 n - A094556 (n + 1))

end

end A140431.P8045516929977569208

namespace A140431

/-- `A094555(n+1)+A140429(n)-A094556(n+1)` -/
def P8045516929977569208.Spec : Prop :=
  ∀ n, P8045516929977569208.a n = A140431 n

end A140431

/-!
# A140432: a(1)=1, a(2)=2, a(3)=3, a(4)=4, a(5)=5, a(n+1)=a(1)*a(2)*...*a(n)-1 for n>=5.

The programs for A140432, there is no canonical definition to state claims against.
-/

/-! ## A140432.P15042096430337342781

`∑[A199256(A131868(n+1))]`
-/

namespace A140432.P15042096430337342781
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199256 (A131868 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A140432.P15042096430337342781

/-! ## A140432.P414086687217378371

`A202213(a(n-1))` with `a(0)=1, a(1)=2, a(2)=3, a(3)=4, a(4)=5`
-/

namespace A140432.P414086687217378371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 3, 4, 5] fun n a =>
  A202213 (a (n - 1)).toNat

end

end A140432.P414086687217378371

/-!
# A140433: Primes of the form n^0+(n+1)^1+(n+2)^2+(n+3)^3+(n+4)^4.

The programs for A140433, there is no canonical definition to state claims against.
-/

/-! ## A140433.P8559496914344849142

`p?[(n+2)*(n+5)*(n+3)²+1]`
-/

namespace A140433.P8559496914344849142
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 2) * ((n + 5) * (n + 3) ^ 2) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A140433.P8559496914344849142

/-!
# A140434: Number of new visible points created at each step in an n X n grid.

The programs for A140434, the canonical program `A140434.P96571140770797263` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A140434 has offset 1).

The definition of A140434 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A140434.P10947552773810197221

`floor(A002246(n+1)/2)`
-/

namespace A140434.P10947552773810197221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A002246 (n + 1) : ℚ) / 2⌋

end

end A140434.P10947552773810197221

namespace A140434

/-- `floor(A002246(n+1)/2)` -/
def P10947552773810197221.Spec : Prop :=
  ∀ n, P10947552773810197221.a n = A140434 (n + 1)

end A140434

/-! ## A140434.P12358771873255146629

`A083254(n+1)+ceil(sqrt(∑[2*n]))`
-/

namespace A140434.P12358771873255146629
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083254 (n + 1) + ⌈Real.sqrt ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℝ)⌉

end

end A140434.P12358771873255146629

namespace A140434

/-- `A083254(n+1)+ceil(sqrt(∑[2*n]))` -/
def P12358771873255146629.Spec : Prop :=
  ∀ n, P12358771873255146629.a n = A140434 (n + 1)

end A140434

/-! ## A140434.P11881462222715461245

`Δ[a(n-1)+2*A000010(n)]` with `a(0)=0, a(1)=1`
-/

namespace A140434.P11881462222715461245
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n f1 =>
  f1 (n - 1) + 2 * A000010 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A140434.P11881462222715461245

namespace A140434

/-- `Δ[a(n-1)+2*A000010(n)]` -/
def P11881462222715461245.Spec : Prop :=
  ∀ n, P11881462222715461245.a n = A140434 (n + 1)

end A140434

/-! ## A140434.P7954873037049581472

`A000010(2*A066043(n+1))`
-/

namespace A140434.P7954873037049581472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (2 * A066043 (n + 1)).toNat

end

end A140434.P7954873037049581472

namespace A140434

/-- `A000010(2*A066043(n+1))` -/
def P7954873037049581472.Spec : Prop :=
  ∀ n, P7954873037049581472.a n = A140434 (n + 1)

end A140434

/-! ## A140434.P96571140770797263

`A004277(n-A016035(n+1))`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A140434

/-- `A004277(n-A016035(n+1))` -/
def P96571140770797263.Spec : Prop :=
  ∀ n, P96571140770797263.a n = A140434 (n + 1)

theorem P96571140770797263.correct : P96571140770797263.Spec := by
  intro n
  simp only [A140434, Nat.add_sub_cancel]

end A140434

/-! ## A140434.P12663557805781390820

`A062570((n+1)*A040001(n))`
-/

namespace A140434.P12663557805781390820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062570 ((n + 1 : ℤ) * A040001 n).toNat

end

end A140434.P12663557805781390820

namespace A140434

/-- `A062570((n+1)*A040001(n))` -/
def P12663557805781390820.Spec : Prop :=
  ∀ n, P12663557805781390820.a n = A140434 (n + 1)

end A140434

/-! ## A140434.P13185414176342801838

`A087156(n+1)+A083254(n+1)`
-/

namespace A140434.P13185414176342801838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087156 (n + 1) + A083254 (n + 1)

end

end A140434.P13185414176342801838

namespace A140434

/-- `A087156(n+1)+A083254(n+1)` -/
def P13185414176342801838.Spec : Prop :=
  ∀ n, P13185414176342801838.a n = A140434 (n + 1)

end A140434

/-! ## A140434.P6953629685025866484

`A007438(n+1)-A000741(n+1)`
-/

namespace A140434.P6953629685025866484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007438 (n + 1) - A000741 (n + 1)

end

end A140434.P6953629685025866484

namespace A140434

/-- `A007438(n+1)-A000741(n+1)` -/
def P6953629685025866484.Spec : Prop :=
  ∀ n, P6953629685025866484.a n = A140434 (n + 1)

end A140434

/-! ## A140434.P11329284483459893388

`(A057427(n)+1)*A000010(n+1)`
-/

namespace A140434.P11329284483459893388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A057427 n + 1) * A000010 (n + 1)

end

end A140434.P11329284483459893388

namespace A140434

/-- `(A057427(n)+1)*A000010(n+1)` -/
def P11329284483459893388.Spec : Prop :=
  ∀ n, P11329284483459893388.a n = A140434 (n + 1)

end A140434

/-! ## A140434.P14010146495182220447

`A074057(n+3)+A065475(n+1)`
-/

namespace A140434.P14010146495182220447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074057 (n + 3) + A065475 (n + 1)

end

end A140434.P14010146495182220447

namespace A140434

/-- `A074057(n+3)+A065475(n+1)` -/
def P14010146495182220447.Spec : Prop :=
  ∀ n, P14010146495182220447.a n = A140434 (n + 1)

theorem P14010146495182220447.correct : P14010146495182220447.Spec := by
  intro n
  simp only [A140434, Nat.add_sub_cancel, A140434.P14010146495182220447.a, A140434.P96571140770797263.a, A004277, A004277.P16255821370285667660.a, A016035, A016035.P3669285434667491181.f1, A016035.P3669285434667491181.f2, A016035.P3669285434667491181.a, A065475, A065475.P2637304413385993180.a, A074057, A074057.P6967748119844272720.a, A000007, A000007.P6599383543502402472.a, A005843, A005843.P3167286115683555970.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A140434

/-! ## A140434.P17086195752469367109

`(1-A057428(n))*A000010(n+1)`
-/

namespace A140434.P17086195752469367109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A057428 n) * A000010 (n + 1)

end

end A140434.P17086195752469367109

namespace A140434

/-- `(1-A057428(n))*A000010(n+1)` -/
def P17086195752469367109.Spec : Prop :=
  ∀ n, P17086195752469367109.a n = A140434 (n + 1)

end A140434

/-! ## A140434.P18176976098869566224

`A082953(n+1)/A055034(n+1)`
-/

namespace A140434.P18176976098869566224
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A082953 (n + 1) : ℚ) / (A055034 (n + 1) : ℚ)

end

end A140434.P18176976098869566224

namespace A140434

/-- `A082953(n+1)/A055034(n+1)` -/
def P18176976098869566224.Spec : Prop :=
  ∀ n, P18176976098869566224.a n = (A140434 (n + 1) : ℚ)

end A140434

/-! ## A140434.P768163625708595832

`A327570(n+1)/A023896(n+1)`
-/

namespace A140434.P768163625708595832
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A327570 (n + 1) : ℚ) / (A023896 (n + 1) : ℚ)

end

end A140434.P768163625708595832

namespace A140434

/-- `A327570(n+1)/A023896(n+1)` -/
def P768163625708595832.Spec : Prop :=
  ∀ n, P768163625708595832.a n = (A140434 (n + 1) : ℚ)

end A140434

/-! ## A140434.P18224591288662473167

`2*A000010(n+1)-A000007(n)`
-/

namespace A140434.P18224591288662473167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000010 (n + 1) - A000007 n

end

end A140434.P18224591288662473167

namespace A140434

/-- `2*A000010(n+1)-A000007(n)` -/
def P18224591288662473167.Spec : Prop :=
  ∀ n, P18224591288662473167.a n = A140434 (n + 1)

end A140434

/-! ## A140434.P8988383719060687614

`A083542(n+1)/A023022(n+2)`
-/

namespace A140434.P8988383719060687614
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A083542 (n + 1) : ℚ) / (A023022 (n + 2) : ℚ)

end

end A140434.P8988383719060687614

namespace A140434

/-- `A083542(n+1)/A023022(n+2)` -/
def P8988383719060687614.Spec : Prop :=
  ∀ n, P8988383719060687614.a n = (A140434 (n + 1) : ℚ)

end A140434

/-! ## A140434.P9433175048479656445

`(A255176(n)-2)*A000010(n+1)`
-/

namespace A140434.P9433175048479656445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A255176 n - 2) * A000010 (n + 1)

end

end A140434.P9433175048479656445

namespace A140434

/-- `(A255176(n)-2)*A000010(n+1)` -/
def P9433175048479656445.Spec : Prop :=
  ∀ n, P9433175048479656445.a n = A140434 (n + 1)

end A140434

/-! ## A140434.P7566381614131833593

`A000010(2*(n+1))*A040001(n)`
-/

namespace A140434.P7566381614131833593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (2 * (n + 1)) * A040001 n

end

end A140434.P7566381614131833593

namespace A140434

/-- `A000010(2*(n+1))*A040001(n)` -/
def P7566381614131833593.Spec : Prop :=
  ∀ n, P7566381614131833593.a n = A140434 (n + 1)

end A140434

/-! ## A140434.P11703801289345304648

`2*A000010(n+1)/A054977(n)`
-/

namespace A140434.P11703801289345304648
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 * ((A000010 (n + 1) : ℚ) / (A054977 n : ℚ))

end

end A140434.P11703801289345304648

namespace A140434

/-- `2*A000010(n+1)/A054977(n)` -/
def P11703801289345304648.Spec : Prop :=
  ∀ n, P11703801289345304648.a n = (A140434 (n + 1) : ℚ)

end A140434

/-!
# A140435: Number of new lattice points created at each step in an n X n grid that are not visible.

The programs for A140435, there is no canonical definition to state claims against.
-/

/-! ## A140435.P3943235024739835096

`ceil(acot(n))+2*(n-(n+1)/∏{p}[n+1, #]*∏{p}[n+1, #-1])`
-/

namespace A140435.P3943235024739835096
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (⌈SequenceMachineLib.acot (n : ℝ)⌉ : ℚ) + 2 * ((n : ℚ) - (n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ) * ((∏ p ∈ Nat.primeFactors (f2 n), ((p : ℤ) - 1) : ℤ) : ℚ))

end

end A140435.P3943235024739835096

/-! ## A140435.P15684980877956361230

`(2*(n-(n+1)/∏{p}[n+1, #]*∏{p}[n+1, #-1])+1)%Δ[n²]`
-/

namespace A140435.P15684980877956361230
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway (2 * ((n : ℚ) - (n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ) * ((∏ p ∈ Nat.primeFactors (f2 n), ((p : ℤ) - 1) : ℤ) : ℚ)) + 1)) ((f3 (n + 1) : ℤ) - (f3 n : ℤ))

end

end A140435.P15684980877956361230

/-! ## A140435.P1302987606152639482

`2*(1-(n+1)/∏{p}[n+1, #]*∏{p}[n+1, #-1]+n)+floor(acot(n))-1`
-/

namespace A140435.P1302987606152639482
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 * (1 - (n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ) * ((∏ p ∈ Nat.primeFactors (f2 n), ((p : ℤ) - 1) : ℤ) : ℚ) + (n : ℚ)) + (⌊SequenceMachineLib.acot (n : ℝ)⌋ - 1 : ℚ)

end

end A140435.P1302987606152639482

/-! ## A140435.P4244480834971134792

`round(sqrt((2*(1-(n+1)/∏{p}[n+1, #]*∏{p}[n+1, #-1]+n))²+1))-1`
-/

namespace A140435.P4244480834971134792
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt ((2 * (1 - (n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ) * ((∏ p ∈ Nat.primeFactors (f2 n), ((p : ℤ) - 1) : ℤ) : ℚ) + (n : ℚ))) ^ 2 + 1 : ℝ)) - 1

end

end A140435.P4244480834971134792

/-! ## A140435.P10174458877088507160

`(2*∑{d}[n+1, #]-1)%((n+1)/∏{p}[n+1, #]*∏{p}[n+1, #-1]+∑{d}[n+1, #]-(n+1))`
-/

namespace A140435.P10174458877088507160
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (((2 * (∑ d ∈ Nat.divisors (f1 n), d) : ℕ) : ℤ) - 1) (SequenceMachineLib.roundAway ((n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f2 n), p : ℕ) : ℚ) * ((∏ p ∈ Nat.primeFactors (f3 n), ((p : ℤ) - 1) : ℤ) : ℚ) + (((∑ d ∈ Nat.divisors (f4 n), d : ℕ) : ℤ) - (n + 1 : ℤ) : ℚ)))

end

end A140435.P10174458877088507160

/-! ## A140435.P3536539833175127754

`(n-(n+1)/∏{p}[n+1, #]*∏{p}[n+1, #-1])%(n+1)+1-(n+1)/∏{p}[n+1, #]*∏{p}[n+1, #-1]+n`
-/

namespace A140435.P3536539833175127754
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.tmod (SequenceMachineLib.roundAway ((n : ℚ) - (n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ) * ((∏ p ∈ Nat.primeFactors (f2 n), ((p : ℤ) - 1) : ℤ) : ℚ))) (n + 1 : ℤ) : ℚ) + (1 - (n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f3 n), p : ℕ) : ℚ) * ((∏ p ∈ Nat.primeFactors (f4 n), ((p : ℤ) - 1) : ℤ) : ℚ) + (n : ℚ))

end

end A140435.P3536539833175127754

/-! ## A140435.P14132255516018649939

`Δ[n²]-A140434(n+1)`
-/

namespace A140435.P14132255516018649939
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ) - A140434 (n + 1)

end

end A140435.P14132255516018649939

/-! ## A140435.P316239432808177409

`Δ[n²-A206350(n+1)]`
-/

namespace A140435.P316239432808177409
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) - A206350 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A140435.P316239432808177409

/-! ## A140435.P3234737801842448305

`round(1/acot(n))-A083254(n+1)`
-/

namespace A140435.P3234737801842448305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (1 / SequenceMachineLib.acot (n : ℝ)) - A083254 (n + 1)

end

end A140435.P3234737801842448305

/-! ## A140435.P12467037629282602003

`A004273(A051953(n+1))`
-/

namespace A140435.P12467037629282602003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (A051953 (n + 1)).toNat

end

end A140435.P12467037629282602003

/-!
# A140436: a(n) is the maximum number of partitions of n with the same product.

The programs for A140436, there is no canonical definition to state claims against.
-/

/-! ## A140436.P3513908422510906783

`A182210(A182210(A018150(n)+1+n))`
-/

namespace A140436.P3513908422510906783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182210 (A182210 (A018150 n + 1 + (n : ℤ)).toNat).toNat

end

end A140436.P3513908422510906783

/-! ## A140436.P1369104416695569902

`A008616(∑[A185268(A163466(n))])`
-/

namespace A140436.P1369104416695569902
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185268 (A163466 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008616 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A140436.P1369104416695569902

/-! ## A140436.P17466061962088018636

`A000700(A194424(n+5)%A078846(n))`
-/

namespace A140436.P17466061962088018636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000700 (Int.tmod (A194424 (n + 5)) (A078846 n)).toNat

end

end A140436.P17466061962088018636

/-! ## A140436.P7415938346440957054

`A289944(lt[A055830(n), A319907(n+1)])`
-/

namespace A140436.P7415938346440957054
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055830 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319907 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289944 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A140436.P7415938346440957054

/-!
# A140439: Array, by antidiagonals, arises in counting <= k facets in d-dimensional n-point sets.

The programs for A140439, there is no canonical definition to state claims against.
-/

/-! ## A140439.P10698294997490314765

`A093375(eq[0, A103451(n)])`
-/

namespace A140439.P10698294997490314765
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103451 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093375 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A140439.P10698294997490314765

/-! ## A140439.P10147045065621182820

`A093375(eq[0, A103452(n)])`
-/

namespace A140439.P10147045065621182820
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103452 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093375 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A140439.P10147045065621182820

/-! ## A140439.P7990357355319114288

`A093375(eq[0, A103516(n)])`
-/

namespace A140439.P7990357355319114288
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103516 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093375 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A140439.P7990357355319114288

/-! ## A140439.P13910937415844877604

`A093375(lt[0, A004247(n)])`
-/

namespace A140439.P13910937415844877604
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004247 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093375 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A140439.P13910937415844877604

/-! ## A140439.P9549761487504765887

`A093375(lt[0, A014473(n)])`
-/

namespace A140439.P9549761487504765887
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014473 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093375 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A140439.P9549761487504765887

/-!
# A140440: Number of n-node biconnected graphs with girth at least 5.

The programs for A140440, there is no canonical definition to state claims against.
-/

/-! ## A140440.P16825504864197011417

`A173753(A099962(n))`
-/

namespace A140440.P16825504864197011417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173753 (A099962 n).toNat

end

end A140440.P16825504864197011417

/-! ## A140440.P951761660903280137

`A352131(A266648(n))`
-/

namespace A140440.P951761660903280137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352131 (A266648 n).toNat

end

end A140440.P951761660903280137

/-! ## A140440.P804024936666960201

`A330996(A000073(n))-1`
-/

namespace A140440.P804024936666960201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330996 (A000073 n).toNat - 1

end

end A140440.P804024936666960201

/-! ## A140440.P13935607698935778475

`A363526(A115178(n)+n)`
-/

namespace A140440.P13935607698935778475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363526 (A115178 n + (n : ℤ)).toNat

end

end A140440.P13935607698935778475

/-!
# A140442: Primes congruent to 9 mod 14.

The programs for A140442, the canonical program `A140442.P14828285863840832277` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A140442 has offset 1).

The definition of A140442 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A045392, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A140442.P14828285863840832277

`A045392(n+2)`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A140442

/-- `A045392(n+2)` -/
def P14828285863840832277.Spec : Prop :=
  ∀ n, P14828285863840832277.a n = A140442 (n + 1)

theorem P14828285863840832277.correct : P14828285863840832277.Spec := by
  intro n
  simp only [A140442, Nat.add_sub_cancel]

end A140442

/-! ## A140442.P16486790895542472477

`A045383(n+3)`
-/

namespace A140442.P16486790895542472477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045383 (n + 3)

end

end A140442.P16486790895542472477

namespace A140442

/-- `A045383(n+3)` -/
def P16486790895542472477.Spec : Prop :=
  ∀ n, P16486790895542472477.a n = A140442 (n + 1)

end A140442

/-! ## A140442.P1250442391443189548

`∪[A141968(n+1), A141974(n+1)]`
-/

namespace A140442.P1250442391443189548
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141968 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141974 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A140442.P1250442391443189548

namespace A140442

/-- `∪[A141968(n+1), A141974(n+1)]` -/
def P1250442391443189548.Spec : Prop :=
  ∀ n, (P1250442391443189548.a n : ℤ) = A140442 (n + 1)

end A140442

/-! ## A140442.P15876535545342192374

`∪[A141895(n+1), A142244(n+1)]`
-/

namespace A140442.P15876535545342192374
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141895 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142244 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A140442.P15876535545342192374

namespace A140442

/-- `∪[A141895(n+1), A142244(n+1)]` -/
def P15876535545342192374.Spec : Prop :=
  ∀ n, (P15876535545342192374.a n : ℤ) = A140442 (n + 1)

end A140442

/-! ## A140442.P14699350635479132073

`p?[7*n+9]`
-/

namespace A140442.P14699350635479132073
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7 * n + 9

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A140442.P14699350635479132073

namespace A140442

/-- `p?[7*n+9]` -/
def P14699350635479132073.Spec : Prop :=
  ∀ n, (P14699350635479132073.a n : ℤ) = A140442 (n + 1)

end A140442

/-! ## A140442.P8764260734322804444

`∩[A004620(n+1), A033207(n+1)]`
-/

namespace A140442.P8764260734322804444
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004620 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033207 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140442.P8764260734322804444

namespace A140442

/-- `∩[A004620(n+1), A033207(n+1)]` -/
def P8764260734322804444.Spec : Prop :=
  ∀ n, (P8764260734322804444.a n : ℤ) = A140442 (n + 1)

end A140442

/-! ## A140442.P2411944892152578562

`∩[A033207(n+1), A045341(n+1)]`
-/

namespace A140442.P2411944892152578562
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033207 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045341 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140442.P2411944892152578562

namespace A140442

/-- `∩[A033207(n+1), A045341(n+1)]` -/
def P2411944892152578562.Spec : Prop :=
  ∀ n, (P2411944892152578562.a n : ℤ) = A140442 (n + 1)

end A140442

/-! ## A140442.P180060646680782610

`∩[A033207(n+1), A045343(n+1)]`
-/

namespace A140442.P180060646680782610
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033207 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045343 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140442.P180060646680782610

namespace A140442

/-- `∩[A033207(n+1), A045343(n+1)]` -/
def P180060646680782610.Spec : Prop :=
  ∀ n, (P180060646680782610.a n : ℤ) = A140442 (n + 1)

end A140442

/-! ## A140442.P4031582281134307062

`∩[A033207(n+1), A045368(n+1)]`
-/

namespace A140442.P4031582281134307062
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033207 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045368 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140442.P4031582281134307062

namespace A140442

/-- `∩[A033207(n+1), A045368(n+1)]` -/
def P4031582281134307062.Spec : Prop :=
  ∀ n, (P4031582281134307062.a n : ℤ) = A140442 (n + 1)

end A140442

/-! ## A140442.P12363440133018355298

`∩[A033207(n+1), A045389(n+1)]`
-/

namespace A140442.P12363440133018355298
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033207 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045389 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140442.P12363440133018355298

namespace A140442

/-- `∩[A033207(n+1), A045389(n+1)]` -/
def P12363440133018355298.Spec : Prop :=
  ∀ n, (P12363440133018355298.a n : ℤ) = A140442 (n + 1)

end A140442

/-! ## A140442.P8655345036128585804

`∩[A033207(n+1), A045365(n+1)]`
-/

namespace A140442.P8655345036128585804
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033207 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045365 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140442.P8655345036128585804

namespace A140442

/-- `∩[A033207(n+1), A045365(n+1)]` -/
def P8655345036128585804.Spec : Prop :=
  ∀ n, (P8655345036128585804.a n : ℤ) = A140442 (n + 1)

end A140442

/-! ## A140442.P5131723256138206429

`∩[A033207(n+1), A045314(n+1)]`
-/

namespace A140442.P5131723256138206429
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033207 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045314 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140442.P5131723256138206429

namespace A140442

/-- `∩[A033207(n+1), A045314(n+1)]` -/
def P5131723256138206429.Spec : Prop :=
  ∀ n, (P5131723256138206429.a n : ℤ) = A140442 (n + 1)

end A140442

/-! ## A140442.P4925673193854910718

`∩[A033207(n+1), A045312(n+1)]`
-/

namespace A140442.P4925673193854910718
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033207 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045312 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140442.P4925673193854910718

namespace A140442

/-- `∩[A033207(n+1), A045312(n+1)]` -/
def P4925673193854910718.Spec : Prop :=
  ∀ n, (P4925673193854910718.a n : ℤ) = A140442 (n + 1)

end A140442

/-! ## A140442.P14560915993020292963

`∩[A004620(n+1), A163769(n+1)]`
-/

namespace A140442.P14560915993020292963
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004620 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163769 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140442.P14560915993020292963

namespace A140442

/-- `∩[A004620(n+1), A163769(n+1)]` -/
def P14560915993020292963.Spec : Prop :=
  ∀ n, (P14560915993020292963.a n : ℤ) = A140442 (n + 1)

end A140442

/-! ## A140442.P7670082830508934807

`∩[A004620(n+1), A165681(n+1)]`
-/

namespace A140442.P7670082830508934807
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004620 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165681 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140442.P7670082830508934807

namespace A140442

/-- `∩[A004620(n+1), A165681(n+1)]` -/
def P7670082830508934807.Spec : Prop :=
  ∀ n, (P7670082830508934807.a n : ℤ) = A140442 (n + 1)

end A140442

/-! ## A140442.P2843331151655054125

`∩[A004139(n+1), A004620(n+1)]`
-/

namespace A140442.P2843331151655054125
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004139 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004620 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140442.P2843331151655054125

namespace A140442

/-- `∩[A004139(n+1), A004620(n+1)]` -/
def P2843331151655054125.Spec : Prop :=
  ∀ n, (P2843331151655054125.a n : ℤ) = A140442 (n + 1)

end A140442

/-! ## A140442.P8625695857999401138

`∩[A004620(n+1), A065091(n+1)]`
-/

namespace A140442.P8625695857999401138
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004620 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140442.P8625695857999401138

namespace A140442

/-- `∩[A004620(n+1), A065091(n+1)]` -/
def P8625695857999401138.Spec : Prop :=
  ∀ n, (P8625695857999401138.a n : ℤ) = A140442 (n + 1)

end A140442

/-! ## A140442.P4357121204699010377

`∩[A004620(n+1), A065396(n+1)]`
-/

namespace A140442.P4357121204699010377
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004620 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065396 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140442.P4357121204699010377

namespace A140442

/-- `∩[A004620(n+1), A065396(n+1)]` -/
def P4357121204699010377.Spec : Prop :=
  ∀ n, (P4357121204699010377.a n : ℤ) = A140442 (n + 1)

end A140442

/-! ## A140442.P4538553797366255198

`∩[A004620(n+1), A071621(n+1)]`
-/

namespace A140442.P4538553797366255198
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004620 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071621 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140442.P4538553797366255198

namespace A140442

/-- `∩[A004620(n+1), A071621(n+1)]` -/
def P4538553797366255198.Spec : Prop :=
  ∀ n, (P4538553797366255198.a n : ℤ) = A140442 (n + 1)

end A140442

/-! ## A140442.P17501007452241560659

`∩[A004620(n+1), A162789(n+1)]`
-/

namespace A140442.P17501007452241560659
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004620 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162789 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140442.P17501007452241560659

namespace A140442

/-- `∩[A004620(n+1), A162789(n+1)]` -/
def P17501007452241560659.Spec : Prop :=
  ∀ n, (P17501007452241560659.a n : ℤ) = A140442 (n + 1)

end A140442

/-!
# A140443: Difference between n-th Fibonacci number and floored n-th power of Viswanath's constant.

The programs for A140443, there is no canonical definition to state claims against.
-/

/-! ## A140443.P15772663541288376905

`A053538(∑[n])-A140471(n+1)`
-/

namespace A140443.P15772663541288376905
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053538 (∑ j ∈ Finset.range (n + 1), f1 j) - A140471 (n + 1)

end

end A140443.P15772663541288376905

/-! ## A140443.P6937404885828926893

`∑[A212804(n)]-A140471(n+1)`
-/

namespace A140443.P6937404885828926893
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212804 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A140471 (n + 1)

end

end A140443.P6937404885828926893

/-! ## A140443.P15500114981066589747

`A000045(n+1)-A140471(n+1)`
-/

namespace A140443.P15500114981066589747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (n + 1) - A140471 (n + 1)

end

end A140443.P15500114981066589747

/-! ## A140443.P6131141500744811538

`A212804(n+2)-A140471(n+1)`
-/

namespace A140443.P6131141500744811538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212804 (n + 2) - A140471 (n + 1)

end

end A140443.P6131141500744811538

/-! ## A140443.P9174165931755648064

`Δ[A000071(n+2)]-A140471(n+1)`
-/

namespace A140443.P9174165931755648064
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000071 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A140471 (n + 1)

end

end A140443.P9174165931755648064

/-!
# A140444: Primes congruent to 1 (mod 14).

The programs for A140444, the canonical program `A140444.P6783549711144697855` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A140444 has offset 1).

The definition of A140444 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A140444.P6783549711144697855

`or(1, p?[14*n+1])`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A140444

/-- `or(1, p?[14*n+1])` -/
def P6783549711144697855.Spec : Prop :=
  ∀ n, (P6783549711144697855.a n : ℤ) = A140444 (n + 1)

theorem P6783549711144697855.correct : P6783549711144697855.Spec := by
  intro n
  simp only [A140444, Nat.add_sub_cancel]

end A140444

/-! ## A140444.P1135702082439748063

`A045465(n+2)`
-/

namespace A140444.P1135702082439748063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045465 (n + 2)

end

end A140444.P1135702082439748063

namespace A140444

/-- `A045465(n+2)` -/
def P1135702082439748063.Spec : Prop :=
  ∀ n, P1135702082439748063.a n = A140444 (n + 1)

end A140444

/-! ## A140444.P8066873176570130958

`p?[7*(n+1)+1]`
-/

namespace A140444.P8066873176570130958
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7 * (n + 1) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A140444.P8066873176570130958

namespace A140444

/-- `p?[7*(n+1)+1]` -/
def P8066873176570130958.Spec : Prop :=
  ∀ n, (P8066873176570130958.a n : ℤ) = A140444 (n + 1)

end A140444

/-! ## A140444.P9530609090117125481

`∏{d}[p?[a(n-1)+7], #]` with `a(0)=1`
-/

namespace A140444.P9530609090117125481
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f2 =>
  f2 (n - 1) + 7

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n), d

end

end A140444.P9530609090117125481

namespace A140444

/-- `∏{d}[p?[a(n-1)+7], #]` -/
def P9530609090117125481.Spec : Prop :=
  ∀ n, (P9530609090117125481.a n : ℤ) = A140444 (n + 1)

end A140444

/-! ## A140444.P134934442746803692

`∑{p}[p?[a(n-1)+7], #]` with `a(0)=1`
-/

namespace A140444.P134934442746803692
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f2 =>
  f2 (n - 1) + 7

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), p

end

end A140444.P134934442746803692

namespace A140444

/-- `∑{p}[p?[a(n-1)+7], #]` -/
def P134934442746803692.Spec : Prop :=
  ∀ n, (P134934442746803692.a n : ℤ) = A140444 (n + 1)

end A140444

/-! ## A140444.P11742883578413942190

`∏{p}[p?[a(n-1)+7], #]` with `a(0)=1`
-/

namespace A140444.P11742883578413942190
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f2 =>
  f2 (n - 1) + 7

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), p

end

end A140444.P11742883578413942190

namespace A140444

/-- `∏{p}[p?[a(n-1)+7], #]` -/
def P11742883578413942190.Spec : Prop :=
  ∀ n, (P11742883578413942190.a n : ℤ) = A140444 (n + 1)

end A140444

/-! ## A140444.P2140307467170053508

`∩[A045376(n+1), A004619(n+1)]`
-/

namespace A140444.P2140307467170053508
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045376 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004619 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140444.P2140307467170053508

namespace A140444

/-- `∩[A045376(n+1), A004619(n+1)]` -/
def P2140307467170053508.Spec : Prop :=
  ∀ n, (P2140307467170053508.a n : ℤ) = A140444 (n + 1)

end A140444

/-! ## A140444.P7865544339781376433

`∩[A045324(n+1), A004619(n+1)]`
-/

namespace A140444.P7865544339781376433
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045324 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004619 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140444.P7865544339781376433

namespace A140444

/-- `∩[A045324(n+1), A004619(n+1)]` -/
def P7865544339781376433.Spec : Prop :=
  ∀ n, (P7865544339781376433.a n : ℤ) = A140444 (n + 1)

end A140444

/-! ## A140444.P6682627973486323601

`∩[A045369(n+1), A004619(n+1)]`
-/

namespace A140444.P6682627973486323601
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045369 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004619 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140444.P6682627973486323601

namespace A140444

/-- `∩[A045369(n+1), A004619(n+1)]` -/
def P6682627973486323601.Spec : Prop :=
  ∀ n, (P6682627973486323601.a n : ℤ) = A140444 (n + 1)

end A140444

/-! ## A140444.P14374212431949725608

`∩[A045362(n+1), A004619(n+1)]`
-/

namespace A140444.P14374212431949725608
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045362 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004619 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140444.P14374212431949725608

namespace A140444

/-- `∩[A045362(n+1), A004619(n+1)]` -/
def P14374212431949725608.Spec : Prop :=
  ∀ n, (P14374212431949725608.a n : ℤ) = A140444 (n + 1)

end A140444

/-! ## A140444.P16901136255333961355

`∩[A045340(n+1), A004619(n+1)]`
-/

namespace A140444.P16901136255333961355
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045340 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004619 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140444.P16901136255333961355

namespace A140444

/-- `∩[A045340(n+1), A004619(n+1)]` -/
def P16901136255333961355.Spec : Prop :=
  ∀ n, (P16901136255333961355.a n : ℤ) = A140444 (n + 1)

end A140444

/-! ## A140444.P4943196442315297634

`∩[A045353(n+1), A004619(n+1)]`
-/

namespace A140444.P4943196442315297634
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045353 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004619 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140444.P4943196442315297634

namespace A140444

/-- `∩[A045353(n+1), A004619(n+1)]` -/
def P4943196442315297634.Spec : Prop :=
  ∀ n, (P4943196442315297634.a n : ℤ) = A140444 (n + 1)

end A140444

/-! ## A140444.P11636405178283049516

`∩[A045364(n+1), A004619(n+1)]`
-/

namespace A140444.P11636405178283049516
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045364 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004619 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140444.P11636405178283049516

namespace A140444

/-- `∩[A045364(n+1), A004619(n+1)]` -/
def P11636405178283049516.Spec : Prop :=
  ∀ n, (P11636405178283049516.a n : ℤ) = A140444 (n + 1)

end A140444

/-! ## A140444.P12064075403245632835

`∩[A045340(n+1), A045440(n+1)]`
-/

namespace A140444.P12064075403245632835
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045340 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045440 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140444.P12064075403245632835

namespace A140444

/-- `∩[A045340(n+1), A045440(n+1)]` -/
def P12064075403245632835.Spec : Prop :=
  ∀ n, (P12064075403245632835.a n : ℤ) = A140444 (n + 1)

end A140444

/-! ## A140444.P770446772537619936

`∩[A042994(n+1), A004619(n+1)]`
-/

namespace A140444.P770446772537619936
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042994 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004619 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140444.P770446772537619936

namespace A140444

/-- `∩[A042994(n+1), A004619(n+1)]` -/
def P770446772537619936.Spec : Prop :=
  ∀ n, (P770446772537619936.a n : ℤ) = A140444 (n + 1)

end A140444

/-! ## A140444.P11308249789137119689

`∩[A033207(n+1), A131877(n)]`
-/

namespace A140444.P11308249789137119689
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033207 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131877 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140444.P11308249789137119689

namespace A140444

/-- `∩[A033207(n+1), A131877(n)]` -/
def P11308249789137119689.Spec : Prop :=
  ∀ n, (P11308249789137119689.a n : ℤ) = A140444 (n + 1)

end A140444

/-! ## A140444.P9073046714295343946

`∩[A042994(n+1), A131877(n)]`
-/

namespace A140444.P9073046714295343946
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042994 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131877 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140444.P9073046714295343946

namespace A140444

/-- `∩[A042994(n+1), A131877(n)]` -/
def P9073046714295343946.Spec : Prop :=
  ∀ n, (P9073046714295343946.a n : ℤ) = A140444 (n + 1)

end A140444

/-! ## A140444.P10190956023655385267

`∩[A045313(n+1), A131877(n)]`
-/

namespace A140444.P10190956023655385267
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045313 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131877 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140444.P10190956023655385267

namespace A140444

/-- `∩[A045313(n+1), A131877(n)]` -/
def P10190956023655385267.Spec : Prop :=
  ∀ n, (P10190956023655385267.a n : ℤ) = A140444 (n + 1)

end A140444

/-! ## A140444.P12651814257654913805

`∩[A045324(n+1), A131877(n)]`
-/

namespace A140444.P12651814257654913805
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045324 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131877 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140444.P12651814257654913805

namespace A140444

/-- `∩[A045324(n+1), A131877(n)]` -/
def P12651814257654913805.Spec : Prop :=
  ∀ n, (P12651814257654913805.a n : ℤ) = A140444 (n + 1)

end A140444

/-! ## A140444.P17320665008265084965

`∩[A045328(n+1), A131877(n)]`
-/

namespace A140444.P17320665008265084965
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045328 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131877 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140444.P17320665008265084965

namespace A140444

/-- `∩[A045328(n+1), A131877(n)]` -/
def P17320665008265084965.Spec : Prop :=
  ∀ n, (P17320665008265084965.a n : ℤ) = A140444 (n + 1)

end A140444

/-!
# A140449: a(n) = the multiple of A142972(n) such that the n-th prime <= a(n) <= the (n+1)th prime.

The programs for A140449, there is no canonical definition to state claims against.
-/

/-! ## A140449.P8092346041905789711

`A065091(n+1)-A065091(n+1)%A142972(n+1)`
-/

namespace A140449.P8092346041905789711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (n + 1) - Int.tmod (A065091 (n + 1)) (A142972 (n + 1))

end

end A140449.P8092346041905789711

/-! ## A140449.P5490238790173366943

`A065091(n+1)-A362611(A124400(n))`
-/

namespace A140449.P5490238790173366943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (n + 1) - A362611 (A124400 n).toNat

end

end A140449.P5490238790173366943

/-! ## A140449.P14296652620723034457

`A000040(n+2)-A362611(A124400(n))`
-/

namespace A140449.P14296652620723034457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 2) - A362611 (A124400 n).toNat

end

end A140449.P14296652620723034457

/-! ## A140449.P2316494172014408525

`A000040(n+2)-A067029(A005043(n+2))`
-/

namespace A140449.P2316494172014408525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 2) - A067029 (A005043 (n + 2)).toNat

end

end A140449.P2316494172014408525

/-! ## A140449.P8884797618943261023

`A134950(lt[A220153(n+1), A018552(n+1)])`
-/

namespace A140449.P8884797618943261023
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220153 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018552 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134950 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A140449.P8884797618943261023

/-!
# A140450: The count of how many queens must be placed tentatively onto a board while seeking a first solution to the "N-Queens on an N x N chessboard" puzzle.

The programs for A140450, there is no canonical definition to state claims against.
-/

/-! ## A140450.P10651326427205123977

`A056239(A345992(n+1)+A022104(3*n))`
-/

namespace A140450.P10651326427205123977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056239 (A345992 (n + 1) + A022104 (3 * n)).toNat

end

end A140450.P10651326427205123977

/-!
# A140451: a(1) = 1. a(n) = the smallest positive multiple of a(n-1) with exactly n 1's in its binary representation.

The programs for A140451, there is no canonical definition to state claims against.
-/

/-! ## A140451.P1693889643349158166

`∏{p}[∏[A347614(n+1)], #]`
-/

namespace A140451.P1693889643349158166
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347614 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A140451.P1693889643349158166

/-!
# A140453: Half the number of n X n binary matrices, symmetric under horizontal and vertical reflection, having equal row sums.

The programs for A140453, there is no canonical definition to state claims against.
-/

/-! ## A140453.P17629019423913807982

`A235591(A156909(n+1))`
-/

namespace A140453.P17629019423913807982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235591 (A156909 (n + 1)).toNat

end

end A140453.P17629019423913807982

/-! ## A140453.P2670842011905977174

`A197442(A220217(2*a(n-2)+1))` with `a(0)=1, a(1)=1, a(2)=2, a(3)=3`
-/

namespace A140453.P2670842011905977174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 2, 3] fun n a =>
  A197442 (A220217 (2 * a (n - 2) + 1).toNat).toNat

end

end A140453.P2670842011905977174

/-! ## A140453.P13932648232980513038

`A069360(A061129(n)+A000670(n))`
-/

namespace A140453.P13932648232980513038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069360 (A061129 n + A000670 n).toNat

end

end A140453.P13932648232980513038

/-!
# A140454: Number of primes p less than 10^n such that p^2-2 is prime.

The programs for A140454, there is no canonical definition to state claims against.
-/

/-! ## A140454.P7653305704767248192

`A000720(A260530(n+2)+A003242(2*n+3))`
-/

namespace A140454.P7653305704767248192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A260530 (n + 2) + A003242 (2 * n + 3)).toNat

end

end A140454.P7653305704767248192

/-!
# A140455: 13-Fibonacci sequence.

The programs for A140455, the canonical program `A140455.P14623030531198715941` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A140455 has offset 0).

The definition of A140455 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A140455.P14623030531198715941

`13*a(n-1)+a(n-2)` with `a(0)=0, a(1)=1`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A140455

/-- `13*a(n-1)+a(n-2)` -/
def P14623030531198715941.Spec : Prop :=
  ∀ n, (P14623030531198715941.a n : ℤ) = A140455 n

theorem P14623030531198715941.correct : P14623030531198715941.Spec := by
  intro n
  simp only [A140455]

end A140455

/-! ## A140455.P16408463737622488058

`((13+sqrt(173))^n-(13-sqrt(173))^n)/(2^n*sqrt(173))`
-/

namespace A140455.P16408463737622488058
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((13 + Real.sqrt (173 : ℝ)) ^ n - (13 - Real.sqrt (173 : ℝ)) ^ n) / ((2 ^ n : ℝ) * Real.sqrt (173 : ℝ))

end

end A140455.P16408463737622488058

namespace A140455

/-- `((13+sqrt(173))^n-(13-sqrt(173))^n)/(2^n*sqrt(173))` -/
def P16408463737622488058.Spec : Prop :=
  ∀ n, P16408463737622488058.a n = (A140455 n : ℝ)

theorem P16408463737622488058.correct : P16408463737622488058.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A140455, Nat.add_sub_cancel, A140455.P16408463737622488058.a, A140455.P14623030531198715941.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
      try ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A140455, Nat.add_sub_cancel, A140455.P16408463737622488058.a, A140455.P14623030531198715941.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [← h1, ← h2]
      first | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A140455

/-! ## A140455.P13646945261296649256

`ogf(x/(1-13x-x^2))`
-/

namespace A140455.P13646945261296649256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1] [1, -13, -1] n

end

end A140455.P13646945261296649256

namespace A140455

/-- `ogf(x/(1-13x-x^2))` -/
def P13646945261296649256.Spec : Prop :=
  ∀ n, P13646945261296649256.a n = A140455 n

end A140455

/-! ## A140455.P15525133469052591021

`a(n-2)+13*a(A023443(n))` with `a(0)=0, a(1)=1`
-/

namespace A140455.P15525133469052591021
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n a =>
  a (n - 2) + 13 * a (A023443 n).toNat

end

end A140455.P15525133469052591021

namespace A140455

/-- `a(n-2)+13*a(A023443(n))` -/
def P15525133469052591021.Spec : Prop :=
  ∀ n, (P15525133469052591021.a n : ℤ) = A140455 n

end A140455

/-! ## A140455.P1987052178359547563

`A172236(A155212(n+9)-4)`
-/

namespace A140455.P1987052178359547563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172236 (A155212 (n + 9) - 4).toNat

end

end A140455.P1987052178359547563

namespace A140455

/-- `A172236(A155212(n+9)-4)` -/
def P1987052178359547563.Spec : Prop :=
  ∀ n, P1987052178359547563.a n = A140455 n

end A140455

/-! ## A140455.P13106441964647367327

`A172236(A000096(n+11)+n+2)`
-/

namespace A140455.P13106441964647367327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172236 (A000096 (n + 11) + (n + 2 : ℤ)).toNat

end

end A140455.P13106441964647367327

namespace A140455

/-- `A172236(A000096(n+11)+n+2)` -/
def P13106441964647367327.Spec : Prop :=
  ∀ n, P13106441964647367327.a n = A140455 n

end A140455

/-!
# A140456: a(n) is the number of indecomposable involutions of length n.

The programs for A140456, there is no canonical definition to state claims against.
-/

/-! ## A140456.P8203800991307779444

`A258306(abs(2-∑[n+1]))`
-/

namespace A140456.P8203800991307779444
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258306 |2 - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)|.toNat

end

end A140456.P8203800991307779444

/-! ## A140456.P6794108099489079086

`A258309(abs(2-∑[n+1]))`
-/

namespace A140456.P6794108099489079086
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258309 |2 - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)|.toNat

end

end A140456.P6794108099489079086

/-! ## A140456.P1696818755528015361

`A152736(∑[n]+1)`
-/

namespace A140456.P1696818755528015361
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152736 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A140456.P1696818755528015361

/-! ## A140456.P10973542424591174296

`or(1, A152736(A000124(n)))`
-/

namespace A140456.P10973542424591174296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A152736 (A000124 n).toNat)

end

end A140456.P10973542424591174296

/-! ## A140456.P6810300369616579433

`A152736(A000124(n))+A014083(n)`
-/

namespace A140456.P6810300369616579433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152736 (A000124 n).toNat + A014083 n

end

end A140456.P6810300369616579433

/-!
# A140459: A positive integer n is included if n can be added to d(n) in binary without any carries, where d(n) is the number of positive divisors of n. In other words, no 1 in the binary representation of n is in the same position as any 1 in the binary representation of d(n).

The programs for A140459, the canonical program `A140459.P6193242358392747816` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A140459 has offset 1).

The definition of A140459 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A140459.P6193242358392747816

`eq[0, and(n+1, A000005(n+1))]+1`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A140459

/-- `eq[0, and(n+1, A000005(n+1))]+1` -/
def P6193242358392747816.Spec : Prop :=
  ∀ n, (P6193242358392747816.a n : ℤ) = A140459 (n + 1)

theorem P6193242358392747816.correct : P6193242358392747816.Spec := by
  intro n
  simp only [A140459, Nat.add_sub_cancel]

end A140459

/-! ## A140459.P5684832471432066864

`eq[n+1, and(n+1, A062249(n+1))]+1`
-/

namespace A140459.P5684832471432066864
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n + 1 : ℤ) (A062249 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A140459.P5684832471432066864

namespace A140459

/-- `eq[n+1, and(n+1, A062249(n+1))]+1` -/
def P5684832471432066864.Spec : Prop :=
  ∀ n, (P5684832471432066864.a n : ℤ) = A140459 (n + 1)

end A140459

/-! ## A140459.P4010012152589155765

`eq[0, and(A008574(n), A145154(n))]`
-/

namespace A140459.P4010012152589155765
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A008574 n) (A145154 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A140459.P4010012152589155765

namespace A140459

/-- `eq[0, and(A008574(n), A145154(n))]` -/
def P4010012152589155765.Spec : Prop :=
  ∀ n, (P4010012152589155765.a n : ℤ) = A140459 (n + 1)

end A140459

/-! ## A140459.P13288849014139409751

`eq[0, and(A016813(n), A145154(n))]`
-/

namespace A140459.P13288849014139409751
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A016813 n) (A145154 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A140459.P13288849014139409751

namespace A140459

/-- `eq[0, and(A016813(n), A145154(n))]` -/
def P13288849014139409751.Spec : Prop :=
  ∀ n, (P13288849014139409751.a n : ℤ) = A140459 (n + 1)

end A140459

/-! ## A140459.P6121773954363578925

`eq[0, and(A000005(n+1), A116966(n))]+1`
-/

namespace A140459.P6121773954363578925
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A000005 (n + 1)) (A116966 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A140459.P6121773954363578925

namespace A140459

/-- `eq[0, and(A000005(n+1), A116966(n))]+1` -/
def P6121773954363578925.Spec : Prop :=
  ∀ n, (P6121773954363578925.a n : ℤ) = A140459 (n + 1)

end A140459

/-!
# A140460: a(0) = 2; thereafter a(n) = smallest integer not a multiple of an earlier terms nor a sum of two earlier terms.

The programs for A140460, there is no canonical definition to state claims against.
-/

/-! ## A140460.P17866737756288763209

`p?[∑[gcd(3, A156933(n))]]`
-/

namespace A140460.P17866737756288763209
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 3 (A156933 n)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A140460.P17866737756288763209

/-! ## A140460.P5966715526341034532

`p?[lcm(n, 7^A061358(n))]`
-/

namespace A140460.P5966715526341034532
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (n : ℤ) (SequenceMachineLib.roundAway ((7 : ℚ) ^ (A061358 n : ℤ)))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A140460.P5966715526341034532

/-! ## A140460.P13004553416410743766

`∩[A040046(n+1), A126388(n+2)]`
-/

namespace A140460.P13004553416410743766
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040046 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126388 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140460.P13004553416410743766

/-! ## A140460.P4089852166926032381

`record[A135508(n+1)%A327111(n+4)]`
-/

namespace A140460.P4089852166926032381
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A135508 (n + 1)) (A327111 (n + 4))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A140460.P4089852166926032381

/-! ## A140460.P14885078383171140925

`A292307(a(n-1)+1)` with `a(0)=2, a(1)=3`
-/

namespace A140460.P14885078383171140925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 3] fun n a =>
  A292307 (a (n - 1) + 1).toNat

end

end A140460.P14885078383171140925

/-!
# A140461: Numbers in A008364 but not in A038511.

The programs for A140461, the canonical program `A140461.P12283563153703361115` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A140461 has offset 1).

The definition of A140461 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A140461.P12283563153703361115

`gcd(floor(acot(n)), p?[2*n+7])`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A140461

/-- `gcd(floor(acot(n)), p?[2*n+7])` -/
def P12283563153703361115.Spec : Prop :=
  ∀ n, (P12283563153703361115.a n : ℤ) = A140461 (n + 1)

theorem P12283563153703361115.correct : P12283563153703361115.Spec := by
  intro n
  simp only [A140461, Nat.add_sub_cancel]

end A140461

/-! ## A140461.P4543863983740989944

`A140475(A171463(n+1))`
-/

namespace A140461.P4543863983740989944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140475 (A171463 (n + 1)).toNat

end

end A140461.P4543863983740989944

namespace A140461

/-- `A140475(A171463(n+1))` -/
def P4543863983740989944.Spec : Prop :=
  ∀ n, P4543863983740989944.a n = A140461 (n + 1)

end A140461

/-! ## A140461.P881434648426317212

`A161847(A009005(n+1))`
-/

namespace A140461.P881434648426317212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161847 (A009005 (n + 1)).toNat

end

end A140461.P881434648426317212

namespace A140461

/-- `A161847(A009005(n+1))` -/
def P881434648426317212.Spec : Prop :=
  ∀ n, P881434648426317212.a n = A140461 (n + 1)

end A140461

/-! ## A140461.P18190423178614542612

`A066050(A171892(n+2))`
-/

namespace A140461.P18190423178614542612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066050 (A171892 (n + 2)).toNat

end

end A140461.P18190423178614542612

namespace A140461

/-- `A066050(A171892(n+2))` -/
def P18190423178614542612.Spec : Prop :=
  ∀ n, P18190423178614542612.a n = A140461 (n + 1)

end A140461

/-! ## A140461.P2938078695589822238

`filter[A008364(n+1), A323152(#)]`
-/

namespace A140461.P2938078695589822238
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008364 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323152 (f1 j).toNat = 1) n)

end

end A140461.P2938078695589822238

namespace A140461

/-- `filter[A008364(n+1), A323152(#)]` -/
def P2938078695589822238.Spec : Prop :=
  ∀ n, P2938078695589822238.a n = A140461 (n + 1)

end A140461

/-! ## A140461.P12776191346398658828

`filter[A008364(n+1), A340371(#)]`
-/

namespace A140461.P12776191346398658828
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008364 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A340371 (f1 j).toNat = 1) n)

end

end A140461.P12776191346398658828

namespace A140461

/-- `filter[A008364(n+1), A340371(#)]` -/
def P12776191346398658828.Spec : Prop :=
  ∀ n, P12776191346398658828.a n = A140461 (n + 1)

end A140461

/-! ## A140461.P14730357139403923687

`filter[A008364(n+1), A365716(#)]`
-/

namespace A140461.P14730357139403923687
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008364 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A365716 (f1 j).toNat = 1) n)

end

end A140461.P14730357139403923687

namespace A140461

/-- `filter[A008364(n+1), A365716(#)]` -/
def P14730357139403923687.Spec : Prop :=
  ∀ n, P14730357139403923687.a n = A140461 (n + 1)

end A140461

/-! ## A140461.P15907462614878057503

`filter[A008364(n+1), A380467(#)]`
-/

namespace A140461.P15907462614878057503
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008364 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A380467 (f1 j).toNat = 1) n)

end

end A140461.P15907462614878057503

namespace A140461

/-- `filter[A008364(n+1), A380467(#)]` -/
def P15907462614878057503.Spec : Prop :=
  ∀ n, P15907462614878057503.a n = A140461 (n + 1)

end A140461

/-! ## A140461.P1309933580821248202

`A008578(A292286(A111398(n+1))+n+1)`
-/

namespace A140461.P1309933580821248202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (A292286 (A111398 (n + 1)).toNat + (n + 1 : ℤ)).toNat

end

end A140461.P1309933580821248202

namespace A140461

/-- `A008578(A292286(A111398(n+1))+n+1)` -/
def P1309933580821248202.Spec : Prop :=
  ∀ n, P1309933580821248202.a n = A140461 (n + 1)

end A140461

/-! ## A140461.P3482339243255669810

`record[A099636(n+10)]`
-/

namespace A140461.P3482339243255669810
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099636 (n + 10)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A140461.P3482339243255669810

namespace A140461

/-- `record[A099636(n+10)]` -/
def P3482339243255669810.Spec : Prop :=
  ∀ n, P3482339243255669810.a n = A140461 (n + 1)

end A140461

/-! ## A140461.P6386894716627783365

`∩[A006005(n+1), A326494(n)]`
-/

namespace A140461.P6386894716627783365
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006005 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326494 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140461.P6386894716627783365

namespace A140461

/-- `∩[A006005(n+1), A326494(n)]` -/
def P6386894716627783365.Spec : Prop :=
  ∀ n, (P6386894716627783365.a n : ℤ) = A140461 (n + 1)

end A140461

/-! ## A140461.P628858848346013339

`∩[A140475(n+1), A326494(n)]`
-/

namespace A140461.P628858848346013339
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140475 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326494 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140461.P628858848346013339

namespace A140461

/-- `∩[A140475(n+1), A326494(n)]` -/
def P628858848346013339.Spec : Prop :=
  ∀ n, (P628858848346013339.a n : ℤ) = A140461 (n + 1)

end A140461

/-! ## A140461.P4526275576305733134

`∩[A171577(n+1), A326494(n)]`
-/

namespace A140461.P4526275576305733134
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171577 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326494 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140461.P4526275576305733134

namespace A140461

/-- `∩[A171577(n+1), A326494(n)]` -/
def P4526275576305733134.Spec : Prop :=
  ∀ n, (P4526275576305733134.a n : ℤ) = A140461 (n + 1)

end A140461

/-! ## A140461.P2964980540560586528

`record[A128059(n+5)]`
-/

namespace A140461.P2964980540560586528
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128059 (n + 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A140461.P2964980540560586528

namespace A140461

/-- `record[A128059(n+5)]` -/
def P2964980540560586528.Spec : Prop :=
  ∀ n, P2964980540560586528.a n = A140461 (n + 1)

end A140461

/-! ## A140461.P8644968036208445748

`A008578(A061200(A008578(n+1))+n)`
-/

namespace A140461.P8644968036208445748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (A061200 (A008578 (n + 1)).toNat + (n : ℤ)).toNat

end

end A140461.P8644968036208445748

namespace A140461

/-- `A008578(A061200(A008578(n+1))+n)` -/
def P8644968036208445748.Spec : Prop :=
  ∀ n, P8644968036208445748.a n = A140461 (n + 1)

end A140461

/-! ## A140461.P15002950295408162573

`A357852(A357852(A008578(n+1)))`
-/

namespace A140461.P15002950295408162573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357852 (A357852 (A008578 (n + 1)).toNat).toNat

end

end A140461.P15002950295408162573

namespace A140461

/-- `A357852(A357852(A008578(n+1)))` -/
def P15002950295408162573.Spec : Prop :=
  ∀ n, P15002950295408162573.a n = A140461 (n + 1)

end A140461

/-! ## A140461.P2445732914828977658

`A066169(A066169(A066169(A066169(A006093(n+1)))))`
-/

namespace A140461.P2445732914828977658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066169 (A066169 (A066169 (A066169 (A006093 (n + 1)).toNat).toNat).toNat).toNat

end

end A140461.P2445732914828977658

namespace A140461

/-- `A066169(A066169(A066169(A066169(A006093(n+1)))))` -/
def P2445732914828977658.Spec : Prop :=
  ∀ n, P2445732914828977658.a n = A140461 (n + 1)

end A140461

/-! ## A140461.P8011019719600509787

`lt[∑{p}[n, (n+3-#)²], n]`
-/

namespace A140461.P8011019719600509787
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n), ((n + 3 : ℤ) - (p : ℤ)) ^ 2

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f3 j : ℤ)) n

end

end A140461.P8011019719600509787

namespace A140461

/-- `lt[∑{p}[n, (n+3-#)²], n]` -/
def P8011019719600509787.Spec : Prop :=
  ∀ n, (P8011019719600509787.a n : ℤ) = A140461 (n + 1)

end A140461

/-! ## A140461.P15077559905610830664

`record[A090585(n+7)]`
-/

namespace A140461.P15077559905610830664
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090585 (n + 7)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A140461.P15077559905610830664

namespace A140461

/-- `record[A090585(n+7)]` -/
def P15077559905610830664.Spec : Prop :=
  ∀ n, P15077559905610830664.a n = A140461 (n + 1)

end A140461

/-! ## A140461.P16049892365036108970

`record[A110560(n+7)]`
-/

namespace A140461.P16049892365036108970
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110560 (n + 7)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A140461.P16049892365036108970

namespace A140461

/-- `record[A110560(n+7)]` -/
def P16049892365036108970.Spec : Prop :=
  ∀ n, P16049892365036108970.a n = A140461 (n + 1)

end A140461

/-!
# A140462: Turan's upper bound on the number of triangles of a simplicial complex of dimension two for which every minimal non-face has three vertices.

The programs for A140462, the canonical program `A140462.P12425142477791766870` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A140462 has offset 0).

The definition of A140462 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A140462.P12425142477791766870

`∑[∑[A009947(n)]]-A000212(n)`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A140462

/-- `∑[∑[A009947(n)]]-A000212(n)` -/
def P12425142477791766870.Spec : Prop :=
  ∀ n, P12425142477791766870.a n = A140462 n

theorem P12425142477791766870.correct : P12425142477791766870.Spec := by
  intro n
  simp only [A140462]

end A140462

/-! ## A140462.P6939140642440075160

`∑[∑[A009947(n)]-A004523(n)]`
-/

namespace A140462.P6939140642440075160
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009947 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - A004523 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A140462.P6939140642440075160

namespace A140462

/-- `∑[∑[A009947(n)]-A004523(n)]` -/
def P6939140642440075160.Spec : Prop :=
  ∀ n, P6939140642440075160.a n = A140462 n

end A140462

/-! ## A140462.P3926813172234370508

`∑[A130520(A047220(n+1))]`
-/

namespace A140462.P3926813172234370508
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130520 (A047220 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A140462.P3926813172234370508

namespace A140462

/-- `∑[A130520(A047220(n+1))]` -/
def P3926813172234370508.Spec : Prop :=
  ∀ n, P3926813172234370508.a n = A140462 n

end A140462

/-! ## A140462.P18329533077586326826

`∑[A130520(A004523(n)+n)]`
-/

namespace A140462.P18329533077586326826
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130520 (A004523 n + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A140462.P18329533077586326826

namespace A140462

/-- `∑[A130520(A004523(n)+n)]` -/
def P18329533077586326826.Spec : Prop :=
  ∀ n, P18329533077586326826.a n = A140462 n

end A140462

/-! ## A140462.P11961559679299230339

`∑[A249020(A032793(n+1))-A032793(n+1)]`
-/

namespace A140462.P11961559679299230339
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249020 (A032793 (n + 1)).toNat - A032793 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A140462.P11961559679299230339

namespace A140462

/-- `∑[A249020(A032793(n+1))-A032793(n+1)]` -/
def P11961559679299230339.Spec : Prop :=
  ∀ n, P11961559679299230339.a n = A140462 n

end A140462

/-! ## A140462.P10788982214996851796

`∑[A130520(A002264(2*n)+n)]`
-/

namespace A140462.P10788982214996851796
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130520 (A002264 (2 * n) + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A140462.P10788982214996851796

namespace A140462

/-- `∑[A130520(A002264(2*n)+n)]` -/
def P10788982214996851796.Spec : Prop :=
  ∀ n, P10788982214996851796.a n = A140462 n

end A140462

/-! ## A140462.P10824144088859062778

`∑[A130520(A063197(2*n+1))]`
-/

namespace A140462.P10824144088859062778
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130520 (A063197 (2 * n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A140462.P10824144088859062778

namespace A140462

/-- `∑[A130520(A063197(2*n+1))]` -/
def P10824144088859062778.Spec : Prop :=
  ∀ n, P10824144088859062778.a n = A140462 n

end A140462

/-! ## A140462.P4293918038239504239

`∑[A130520(A002264(5*n))]`
-/

namespace A140462.P4293918038239504239
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130520 (A002264 (5 * n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A140462.P4293918038239504239

namespace A140462

/-- `∑[A130520(A002264(5*n))]` -/
def P4293918038239504239.Spec : Prop :=
  ∀ n, P4293918038239504239.a n = A140462 n

end A140462

/-! ## A140462.P6636956934226712771

`∑[A024165(2*n+1)+A024165(6*(n+1))]`
-/

namespace A140462.P6636956934226712771
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024165 (2 * n + 1) + A024165 (6 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A140462.P6636956934226712771

namespace A140462

/-- `∑[A024165(2*n+1)+A024165(6*(n+1))]` -/
def P6636956934226712771.Spec : Prop :=
  ∀ n, P6636956934226712771.a n = A140462 n

end A140462

/-!
# A140464: 1 together with terms of A037174.

The programs for A140464, there is no canonical definition to state claims against.
-/

/-! ## A140464.P4417209360461991842

`∪[A016784(n), A037174(n+1)]`
-/

namespace A140464.P4417209360461991842
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016784 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037174 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A140464.P4417209360461991842

/-! ## A140464.P15799441577782199225

`∪[A037174(n+1), A016819(n)]`
-/

namespace A140464.P15799441577782199225
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037174 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016819 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A140464.P15799441577782199225

/-! ## A140464.P15587774793790752412

`∪[A016820(n), A037174(n+1)]`
-/

namespace A140464.P15587774793790752412
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016820 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037174 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A140464.P15587774793790752412

/-! ## A140464.P15375277429868492158

`∪[A037174(n+1), A016866(n)]`
-/

namespace A140464.P15375277429868492158
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037174 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016866 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A140464.P15375277429868492158

/-! ## A140464.P14679453608852420964

`∪[A016867(n), A037174(n+1)]`
-/

namespace A140464.P14679453608852420964
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016867 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037174 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A140464.P14679453608852420964

/-!
# A140466: a(n) = 4*A002088(n).

The programs for A140466, the canonical program `A140466.P2617124052483112329` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A140466 has offset 0).

The definition of A140466 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002088, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A140466.P2617124052483112329

`4*A002088(n)`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A140466

/-- `4*A002088(n)` -/
def P2617124052483112329.Spec : Prop :=
  ∀ n, P2617124052483112329.a n = A140466 n

theorem P2617124052483112329.correct : P2617124052483112329.Spec := by
  intro n
  simp only [A140466]

end A140466

/-! ## A140466.P7181062875114396273

`A100449(n)-1`
-/

namespace A140466.P7181062875114396273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100449 n - 1

end

end A140466.P7181062875114396273

namespace A140466

/-- `A100449(n)-1` -/
def P7181062875114396273.Spec : Prop :=
  ∀ n, P7181062875114396273.a n = A140466 n

theorem P7181062875114396273.correct : P7181062875114396273.Spec := by
  intro n
  simp only [A140466, Nat.add_sub_cancel, A140466.P7181062875114396273.a, A140466.P2617124052483112329.a, A002088, A002088.P8962335469571691680.f2, A002088.P8962335469571691680.f1, A002088.P8962335469571691680.a, A100449, A100449.P13498763257578754956.a, A007431, A007431.P16849793818733668455.f1, A007431.P16849793818733668455.a, A007432, A007432.P16663120023730915232.f1, A007432.P16663120023730915232.a, A007428, A007428.P12532017655611739201.f1, A007428.P12532017655611739201.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A140466

/-! ## A140466.P275395205104678448

`2*A049696(n)`
-/

namespace A140466.P275395205104678448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A049696 n

end

end A140466.P275395205104678448

namespace A140466

/-- `2*A049696(n)` -/
def P275395205104678448.Spec : Prop :=
  ∀ n, P275395205104678448.a n = A140466 n

theorem P275395205104678448.correct : P275395205104678448.Spec := by
  intro n
  simp only [A140466, Nat.add_sub_cancel, A140466.P275395205104678448.a, A140466.P2617124052483112329.a, A002088, A002088.P8962335469571691680.f2, A002088.P8962335469571691680.f1, A002088.P8962335469571691680.a, A049696, A049696.P12004431397855860570.a, A007431, A007431.P16849793818733668455.f1, A007431.P16849793818733668455.a, A007432, A007432.P16663120023730915232.f1, A007432.P16663120023730915232.a, A007428, A007428.P12532017655611739201.f1, A007428.P12532017655611739201.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A140466

/-! ## A140466.P17571878144071052000

`4*(A005728(n)-1)`
-/

namespace A140466.P17571878144071052000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * (A005728 n - 1)

end

end A140466.P17571878144071052000

namespace A140466

/-- `4*(A005728(n)-1)` -/
def P17571878144071052000.Spec : Prop :=
  ∀ n, P17571878144071052000.a n = A140466 n

theorem P17571878144071052000.correct : P17571878144071052000.Spec := by
  intro n
  simp only [A140466, Nat.add_sub_cancel, A140466.P17571878144071052000.a, A140466.P2617124052483112329.a, A002088, A002088.P8962335469571691680.f2, A002088.P8962335469571691680.f1, A002088.P8962335469571691680.a, A005728, A005728.P12032251568510858139.a, A007431, A007431.P16849793818733668455.f1, A007431.P16849793818733668455.a, A007432, A007432.P16663120023730915232.f1, A007432.P16663120023730915232.a, A007428, A007428.P12532017655611739201.f1, A007428.P12532017655611739201.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A140466

/-! ## A140466.P8123106432109198615

`a(n-1)+4*A000010(n)` with `a(0)=0`
-/

namespace A140466.P8123106432109198615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) + 4 * A000010 n

end

end A140466.P8123106432109198615

namespace A140466

/-- `a(n-1)+4*A000010(n)` -/
def P8123106432109198615.Spec : Prop :=
  ∀ n, P8123106432109198615.a n = A140466 n

end A140466

/-! ## A140466.P16260557869362092820

`A002088(n)/(A076479(n+1)/2)²`
-/

namespace A140466.P16260557869362092820
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002088 n : ℚ) / ((A076479 (n + 1) : ℚ) / 2) ^ 2

end

end A140466.P16260557869362092820

namespace A140466

/-- `A002088(n)/(A076479(n+1)/2)²` -/
def P16260557869362092820.Spec : Prop :=
  ∀ n, P16260557869362092820.a n = (A140466 n : ℚ)

end A140466

/-! ## A140466.P6425230541530589083

`A002088(n)+A049696(n)+A002088(n)`
-/

namespace A140466.P6425230541530589083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002088 n + (A049696 n + A002088 n)

end

end A140466.P6425230541530589083

namespace A140466

/-- `A002088(n)+A049696(n)+A002088(n)` -/
def P6425230541530589083.Spec : Prop :=
  ∀ n, P6425230541530589083.a n = A140466 n

theorem P6425230541530589083.correct : P6425230541530589083.Spec := by
  intro n
  simp only [A140466, Nat.add_sub_cancel, A140466.P6425230541530589083.a, A140466.P2617124052483112329.a, A002088, A002088.P8962335469571691680.f2, A002088.P8962335469571691680.f1, A002088.P8962335469571691680.a, A049696, A049696.P12004431397855860570.a, A007431, A007431.P16849793818733668455.f1, A007431.P16849793818733668455.a, A007432, A007432.P16663120023730915232.f1, A007432.P16663120023730915232.a, A007428, A007428.P12532017655611739201.f1, A007428.P12532017655611739201.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A140466

/-! ## A140466.P16165759911676510627

`A002088(n)/(A023896(n+1)/A002618(n+1))²`
-/

namespace A140466.P16165759911676510627
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002088 n : ℚ) / ((A023896 (n + 1) : ℚ) / (A002618 (n + 1) : ℚ)) ^ 2

end

end A140466.P16165759911676510627

namespace A140466

/-- `A002088(n)/(A023896(n+1)/A002618(n+1))²` -/
def P16165759911676510627.Spec : Prop :=
  ∀ n, P16165759911676510627.a n = (A140466 n : ℚ)

end A140466

/-! ## A140466.P18041789312391486508

`2*(A057428(n)+A049691(n))`
-/

namespace A140466.P18041789312391486508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A057428 n + A049691 n)

end

end A140466.P18041789312391486508

namespace A140466

/-- `2*(A057428(n)+A049691(n))` -/
def P18041789312391486508.Spec : Prop :=
  ∀ n, P18041789312391486508.a n = A140466 n

end A140466

/-! ## A140466.P6379875375637656074

`2*(A049697(n)-A000010(n+1))`
-/

namespace A140466.P6379875375637656074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A049697 n - A000010 (n + 1))

end

end A140466.P6379875375637656074

namespace A140466

/-- `2*(A049697(n)-A000010(n+1))` -/
def P6379875375637656074.Spec : Prop :=
  ∀ n, P6379875375637656074.a n = A140466 n

end A140466

/-! ## A140466.P8638732627495236356

`2*round(A171503(n)/2)`
-/

namespace A140466.P8638732627495236356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.roundAway ((A171503 n : ℚ) / 2)

end

end A140466.P8638732627495236356

namespace A140466

/-- `2*round(A171503(n)/2)` -/
def P8638732627495236356.Spec : Prop :=
  ∀ n, P8638732627495236356.a n = A140466 n

end A140466

/-! ## A140466.P4858298442316708922

`A171503(n)+A057427(n)`
-/

namespace A140466.P4858298442316708922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171503 n + A057427 n

end

end A140466.P4858298442316708922

namespace A140466

/-- `A171503(n)+A057427(n)` -/
def P4858298442316708922.Spec : Prop :=
  ∀ n, P4858298442316708922.a n = A140466 n

end A140466

/-! ## A140466.P6787026614791628381

`A171503(n)-A057428(n)`
-/

namespace A140466.P6787026614791628381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171503 n - A057428 n

end

end A140466.P6787026614791628381

namespace A140466

/-- `A171503(n)-A057428(n)` -/
def P6787026614791628381.Spec : Prop :=
  ∀ n, P6787026614791628381.a n = A140466 n

end A140466

/-! ## A140466.P11724066650217155179

`A196227(n)+A163300(n+1)`
-/

namespace A140466.P11724066650217155179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196227 n + A163300 (n + 1)

end

end A140466.P11724066650217155179

namespace A140466

/-- `A196227(n)+A163300(n+1)` -/
def P11724066650217155179.Spec : Prop :=
  ∀ n, P11724066650217155179.a n = A140466 n

end A140466

/-! ## A140466.P2361012588548330343

`A171503(n)+1-A000007(n)`
-/

namespace A140466.P2361012588548330343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171503 n + (1 - A000007 n)

end

end A140466.P2361012588548330343

namespace A140466

/-- `A171503(n)+1-A000007(n)` -/
def P2361012588548330343.Spec : Prop :=
  ∀ n, P2361012588548330343.a n = A140466 n

end A140466

/-! ## A140466.P7354743089632530640

`A171503(n)+A019427(2*n)`
-/

namespace A140466.P7354743089632530640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171503 n + A019427 (2 * n)

end

end A140466.P7354743089632530640

namespace A140466

/-- `A171503(n)+A019427(2*n)` -/
def P7354743089632530640.Spec : Prop :=
  ∀ n, P7354743089632530640.a n = A140466 n

end A140466

/-! ## A140466.P1080863991215018531

`A171503(n)+A049696(n)/A206350(n+1)`
-/

namespace A140466.P1080863991215018531
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A171503 n : ℚ) + (A049696 n : ℚ) / (A206350 (n + 1) : ℚ)

end

end A140466.P1080863991215018531

namespace A140466

/-- `A171503(n)+A049696(n)/A206350(n+1)` -/
def P1080863991215018531.Spec : Prop :=
  ∀ n, P1080863991215018531.a n = (A140466 n : ℚ)

end A140466

/-! ## A140466.P15340829554904324832

`2*(A206297(n+1)-1)`
-/

namespace A140466.P15340829554904324832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A206297 (n + 1) - 1)

end

end A140466.P15340829554904324832

namespace A140466

/-- `2*(A206297(n+1)-1)` -/
def P15340829554904324832.Spec : Prop :=
  ∀ n, P15340829554904324832.a n = A140466 n

end A140466

/-!
# A140467: Numbers k such that the digits of k are not present in 3k.

The programs for A140467, there is no canonical definition to state claims against.
-/

/-! ## A140467.P6229783447440608487

`lt[and(A086066(3*n), A086066(n)), 1]`
-/

namespace A140467.P6229783447440608487
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A086066 (3 * n)) (A086066 n)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A140467.P6229783447440608487

/-! ## A140467.P7078000987250690016

`∑[gcd(A240695(2*(n+1)), A251722(n+1))]`
-/

namespace A140467.P7078000987250690016
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A240695 (2 * (n + 1))) (A251722 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A140467.P7078000987250690016

/-! ## A140467.P6796369390485278997

`lt[A350355(2*n+5), A018818(A196366(n+1))]`
-/

namespace A140467.P6796369390485278997
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350355 (2 * n + 5)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018818 (A196366 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A140467.P6796369390485278997

/-! ## A140467.P6458073721562884529

`∑[A132068(A122111(A101278(n)))]`
-/

namespace A140467.P6458073721562884529
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132068 (A122111 (A101278 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A140467.P6458073721562884529

/-! ## A140467.P9655750011921904332

`lt[A127324(2*(n+2)), A392013(A385776(n+1))]`
-/

namespace A140467.P9655750011921904332
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127324 (2 * (n + 2))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392013 (A385776 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A140467.P9655750011921904332

/-!
# A140468: Number of points at the n-th step of the following iteration, starting with four points in general position in the real projective plane: dualize the current pointset to a family of lines, take all intersections of those lines, repeat.

The programs for A140468, there is no canonical definition to state claims against.
-/

/-! ## A140468.P3982194418221403283

`∪[A243708(n+1), A243707(n)]`
-/

namespace A140468.P3982194418221403283
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243708 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243707 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A140468.P3982194418221403283

/-! ## A140468.P599046130150170123

`∪[A243707(n), ∑[A244020(2*(n+1))]]`
-/

namespace A140468.P599046130150170123
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243707 n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244020 (2 * (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A140468.P599046130150170123

/-! ## A140468.P13250838815167152379

`∪[A243707(n), A243708(A048379(n))]`
-/

namespace A140468.P13250838815167152379
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243707 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243708 (A048379 n).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A140468.P13250838815167152379

/-!
# A140469: Position of Fibonacci numbers in the EKG sequence.

The programs for A140469, there is no canonical definition to state claims against.
-/

/-! ## A140469.P11290778007045062885

`A064421(A000045(n+1))+1`
-/

namespace A140469.P11290778007045062885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064421 (A000045 (n + 1)).toNat + 1

end

end A140469.P11290778007045062885

/-! ## A140469.P9125703049352692172

`A064664(Δ[round(ϕ*a(n-1))])` with `a(0)=1`
-/

namespace A140469.P9125703049352692172
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  SequenceMachineLib.roundAway (Real.goldenRatio * (f1 (n - 1) : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064664 (f1 (n + 1) - f1 n).toNat

end

end A140469.P9125703049352692172

/-! ## A140469.P6221372609836896222

`A064664(∑[2-(4/2-a(n-1)-a(n-2))])` with `a(0)=1, a(1)=0, a(2)=1`
-/

namespace A140469.P6221372609836896222
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [1, 0, 1] fun n f1 =>
  2 - ((4 : ℚ) / 2 - f1 (n - 1) - f1 (n - 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064664 (SequenceMachineLib.roundAway (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A140469.P6221372609836896222

/-! ## A140469.P569990431075385343

`A064664(A036355(∑[n]))`
-/

namespace A140469.P569990431075385343
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064664 (A036355 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A140469.P569990431075385343

/-!
# A140470: Numbers n such that p+1 divides n for every prime p that divides n.

The programs for A140470, there is no canonical definition to state claims against.
-/

/-! ## A140470.P11705328599925408707

`lt[A323155(n+1)%(n+1), 1]+1`
-/

namespace A140470.P11705328599925408707
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A323155 (n + 1)) (n + 1 : ℤ)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A140470.P11705328599925408707

/-! ## A140470.P12831160540156709672

`A002202(n+1)*A101101(A232955(n+1))`
-/

namespace A140470.P12831160540156709672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002202 (n + 1) * A101101 (A232955 (n + 1)).toNat

end

end A140470.P12831160540156709672

/-! ## A140470.P10998354139958952671

`A002174(n+1)*A101101(A331968(n+1))`
-/

namespace A140470.P10998354139958952671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002174 (n + 1) * A101101 (A331968 (n + 1)).toNat

end

end A140470.P10998354139958952671

/-! ## A140470.P1326484139697318310

`A008458(A049225(n+1)%A252658(n+1))`
-/

namespace A140470.P1326484139697318310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 (Int.tmod (A049225 (n + 1)) (A252658 (n + 1))).toNat

end

end A140470.P1326484139697318310

/-! ## A140470.P5925477528093505578

`A317312(A002202(n+1)%A001259(n+5))`
-/

namespace A140470.P5925477528093505578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317312 (Int.tmod (A002202 (n + 1)) (A001259 (n + 5))).toNat

end

end A140470.P5925477528093505578

/-!
# A140471: Floored n-th power of Viswanath's constant.

The programs for A140471, there is no canonical definition to state claims against.
-/

/-! ## A140471.P10433931889185521376

`floor((19^(4/95))^n)`
-/

namespace A140471.P10433931889185521376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((19 : ℝ) ^ ((4 : ℚ) / 95 : ℝ)) ^ n⌋

end

end A140471.P10433931889185521376

/-! ## A140471.P7062944037846359131

`round(A272265(n)/A272268(n+1))`
-/

namespace A140471.P7062944037846359131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A272265 n : ℚ) / (A272268 (n + 1) : ℚ))

end

end A140471.P7062944037846359131

/-!
# A140472: a(n) = a(n - a(n-1)) + a(floor(n/2)).

The programs for A140472, the canonical program `A140472.P15813874920454231005` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A140472 has offset 0).

The definition of A140472 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-a(n-1))+a(floor(n/2))` (program `A140472.P15813874920454231005`, by `A140472.P15813874920454231005.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A140472.P15813874920454231005

`a(n-a(n-1))+a(floor(n/2))` with `a(0)=0, a(1)=1`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A140472

/-- `a(n-a(n-1))+a(floor(n/2))` -/
def P15813874920454231005.Spec : Prop :=
  ∀ n, (P15813874920454231005.a n : ℤ) = A140472 n

theorem P15813874920454231005.correct : P15813874920454231005.Spec := by
  intro n
  simp only [A140472]

end A140472

/-! ## A140472.P10247097568549279969

`A285326(n)/2`
-/

namespace A140472.P10247097568549279969
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A285326 n : ℚ) / 2

end

end A140472.P10247097568549279969

namespace A140472

/-- `A285326(n)/2` -/
def P10247097568549279969.Spec : Prop :=
  ∀ n, P10247097568549279969.a n = (A140472 n : ℚ)

theorem P10247097568549279969.correct : P10247097568549279969.Spec := by
  intro n
  simp only [A140472, Nat.add_sub_cancel, A140472.P10247097568549279969.a, A140472.P15813874920454231005.a, A285326, A285326.P1726867562295019053.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A140472

/-! ## A140472.P475880586712274719

`ceil(or(n, n-1)/2)`
-/

namespace A140472.P475880586712274719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(Int.lor (n : ℤ) ((n : ℤ) - 1) : ℚ) / 2⌉

end

end A140472.P475880586712274719

namespace A140472

/-- `ceil(or(n, n-1)/2)` -/
def P475880586712274719.Spec : Prop :=
  ∀ n, P475880586712274719.a n = A140472 n

end A140472

/-! ## A140472.P1420358412461227967

`(and(n, -n)+n)/2`
-/

namespace A140472.P1420358412461227967
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.land (n : ℤ) (-(n : ℤ)) + (n : ℤ) : ℚ) / 2

end

end A140472.P1420358412461227967

namespace A140472

/-- `(and(n, -n)+n)/2` -/
def P1420358412461227967.Spec : Prop :=
  ∀ n, P1420358412461227967.a n = (A140472 n : ℚ)

end A140472

/-! ## A140472.P3848147723385904916

`(n-or(n, -n))/2`
-/

namespace A140472.P3848147723385904916
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - Int.lor (n : ℤ) (-(n : ℤ)) : ℚ) / 2

end

end A140472.P3848147723385904916

namespace A140472

/-- `(n-or(n, -n))/2` -/
def P3848147723385904916.Spec : Prop :=
  ∀ n, P3848147723385904916.a n = (A140472 n : ℚ)

end A140472

/-! ## A140472.P18414047276484635567

`(or(n, n-1)+1)/2`
-/

namespace A140472.P18414047276484635567
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lor (n : ℤ) ((n : ℤ) - 1) + 1 : ℚ) / 2

end

end A140472.P18414047276484635567

namespace A140472

/-- `(or(n, n-1)+1)/2` -/
def P18414047276484635567.Spec : Prop :=
  ∀ n, P18414047276484635567.a n = (A140472 n : ℚ)

end A140472

/-! ## A140472.P17283449102298316022

`n-and(n, n-1)/2`
-/

namespace A140472.P17283449102298316022
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) - (Int.land (n : ℤ) ((n : ℤ) - 1) : ℚ) / 2

end

end A140472.P17283449102298316022

namespace A140472

/-- `n-and(n, n-1)/2` -/
def P17283449102298316022.Spec : Prop :=
  ∀ n, P17283449102298316022.a n = (A140472 n : ℚ)

end A140472

/-! ## A140472.P9463167085788934213

`(2*n-xor(n, -n))/4`
-/

namespace A140472.P9463167085788934213
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((2 * n : ℤ) - Int.xor (n : ℤ) (-(n : ℤ)) : ℚ) / 4

end

end A140472.P9463167085788934213

namespace A140472

/-- `(2*n-xor(n, -n))/4` -/
def P9463167085788934213.Spec : Prop :=
  ∀ n, P9463167085788934213.a n = (A140472 n : ℚ)

end A140472

/-! ## A140472.P16919798037510267942

`round(or(2*n-1, 2*n)/4)`
-/

namespace A140472.P16919798037510267942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((Int.lor ((2 * n : ℤ) - 1) (2 * n : ℤ) : ℚ) / 4)

end

end A140472.P16919798037510267942

namespace A140472

/-- `round(or(2*n-1, 2*n)/4)` -/
def P16919798037510267942.Spec : Prop :=
  ∀ n, P16919798037510267942.a n = A140472 n

end A140472

/-! ## A140472.P4384629149784591719

`ceil((xor(n, n-1)+2*n)/4)`
-/

namespace A140472.P4384629149784591719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(Int.xor (n : ℤ) ((n : ℤ) - 1) + (2 * n : ℤ) : ℚ) / 4⌉

end

end A140472.P4384629149784591719

namespace A140472

/-- `ceil((xor(n, n-1)+2*n)/4)` -/
def P4384629149784591719.Spec : Prop :=
  ∀ n, P4384629149784591719.a n = A140472 n

end A140472

/-! ## A140472.P10068727688578433368

`round((xor(n, n-1)+2*n)/4)`
-/

namespace A140472.P10068727688578433368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((Int.xor (n : ℤ) ((n : ℤ) - 1) + (2 * n : ℤ) : ℚ) / 4)

end

end A140472.P10068727688578433368

namespace A140472

/-- `round((xor(n, n-1)+2*n)/4)` -/
def P10068727688578433368.Spec : Prop :=
  ∀ n, P10068727688578433368.a n = A140472 n

end A140472

/-! ## A140472.P14062536097988110068

`(xor(n, n-1)+2*n+1)/4`
-/

namespace A140472.P14062536097988110068
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.xor (n : ℤ) ((n : ℤ) - 1) + (2 * n + 1 : ℤ) : ℚ) / 4

end

end A140472.P14062536097988110068

namespace A140472

/-- `(xor(n, n-1)+2*n+1)/4` -/
def P14062536097988110068.Spec : Prop :=
  ∀ n, P14062536097988110068.a n = (A140472 n : ℚ)

end A140472

/-! ## A140472.P12881831312113155720

`A214546(n-1)+a(n-1)` with `a(0)=0`
-/

namespace A140472.P12881831312113155720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A214546 (n - 1) + a (n - 1)

end

end A140472.P12881831312113155720

namespace A140472

/-- `A214546(n-1)+a(n-1)` -/
def P12881831312113155720.Spec : Prop :=
  ∀ n, P12881831312113155720.a n = A140472 n

end A140472

/-! ## A140472.P5099185843998513560

`∑[A214546(n)]-A214546(n)`
-/

namespace A140472.P5099185843998513560
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214546 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A214546 n

end

end A140472.P5099185843998513560

namespace A140472

/-- `∑[A214546(n)]-A214546(n)` -/
def P5099185843998513560.Spec : Prop :=
  ∀ n, P5099185843998513560.a n = A140472 n

end A140472

/-! ## A140472.P5171185011720317448

`A109168(n+1)-A214546(n)`
-/

namespace A140472.P5171185011720317448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109168 (n + 1) - A214546 n

end

end A140472.P5171185011720317448

namespace A140472

/-- `A109168(n+1)-A214546(n)` -/
def P5171185011720317448.Spec : Prop :=
  ∀ n, P5171185011720317448.a n = A140472 n

theorem P5171185011720317448.correct : P5171185011720317448.Spec := by
  intro n
  simp only [A140472, Nat.add_sub_cancel, A140472.P5171185011720317448.a, A140472.P15813874920454231005.a, A109168, A109168.P7922441834976635510.a, A214546, A214546.P4922243182448489645.f1, A214546.P4922243182448489645.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A140472

/-! ## A140472.P12362368385507282019

`A001057(and(n, A023443(n)))+n`
-/

namespace A140472.P12362368385507282019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 (Int.land (n : ℤ) (A023443 n)).toNat + (n : ℤ)

end

end A140472.P12362368385507282019

namespace A140472

/-- `A001057(and(n, A023443(n)))+n` -/
def P12362368385507282019.Spec : Prop :=
  ∀ n, P12362368385507282019.a n = A140472 n

end A140472

/-! ## A140472.P13314541156991131074

`A064680(or(n, n-1)+1)`
-/

namespace A140472.P13314541156991131074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064680 (Int.lor (n : ℤ) ((n : ℤ) - 1) + 1).toNat

end

end A140472.P13314541156991131074

namespace A140472

/-- `A064680(or(n, n-1)+1)` -/
def P13314541156991131074.Spec : Prop :=
  ∀ n, P13314541156991131074.a n = A140472 n

end A140472

/-! ## A140472.P11854106467713011638

`A160413(or(n, n-1)+3)-1`
-/

namespace A140472.P11854106467713011638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160413 (Int.lor (n : ℤ) ((n : ℤ) - 1) + 3).toNat - 1

end

end A140472.P11854106467713011638

namespace A140472

/-- `A160413(or(n, n-1)+3)-1` -/
def P11854106467713011638.Spec : Prop :=
  ∀ n, P11854106467713011638.a n = A140472 n

end A140472

/-! ## A140472.P8129751261766676040

`A001281(A285326(n))`
-/

namespace A140472.P8129751261766676040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A285326 n).toNat

end

end A140472.P8129751261766676040

namespace A140472

/-- `A001281(A285326(n))` -/
def P8129751261766676040.Spec : Prop :=
  ∀ n, P8129751261766676040.a n = A140472 n

end A140472

/-! ## A140472.P12122056424356543306

`A065033(A285326(n)+1)-1`
-/

namespace A140472.P12122056424356543306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (A285326 n + 1).toNat - 1

end

end A140472.P12122056424356543306

namespace A140472

/-- `A065033(A285326(n)+1)-1` -/
def P12122056424356543306.Spec : Prop :=
  ∀ n, P12122056424356543306.a n = A140472 n

end A140472

/-!
# A140473: a(n) = a(floor(2*n/3)) + a(floor(n/3)), a(0) = 0, a(1) = 1.

The programs for A140473, the canonical program `A140473.P9934156520546430311` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A140473 has offset 0).

The definition of A140473 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(floor(2*n/3))+a(floor(n/3))` (program `A140473.P9934156520546430311`, by `A140473.P9934156520546430311.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A140473.P9934156520546430311

`a(floor(2*n/3))+a(floor(n/3))` with `a(0)=0, a(1)=1`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A140473

/-- `a(floor(2*n/3))+a(floor(n/3))` -/
def P9934156520546430311.Spec : Prop :=
  ∀ n, (P9934156520546430311.a n : ℤ) = A140473 n

theorem P9934156520546430311.correct : P9934156520546430311.Spec := by
  intro n
  simp only [A140473]

end A140473

/-! ## A140473.P2685707108975406466

`A029920(A163867(n))`
-/

namespace A140473.P2685707108975406466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029920 (A163867 n).toNat

end

end A140473.P2685707108975406466

namespace A140473

/-- `A029920(A163867(n))` -/
def P2685707108975406466.Spec : Prop :=
  ∀ n, P2685707108975406466.a n = A140473 n

end A140473

/-! ## A140473.P5924332949854956989

`A163867(n)-A143091(n)`
-/

namespace A140473.P5924332949854956989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163867 n - A143091 n

end

end A140473.P5924332949854956989

namespace A140473

/-- `A163867(n)-A143091(n)` -/
def P5924332949854956989.Spec : Prop :=
  ∀ n, P5924332949854956989.a n = A140473 n

end A140473

/-! ## A140473.P1310618352367677585

`A163867(n)+A008683(A057673(n))*A143091(n)`
-/

namespace A140473.P1310618352367677585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163867 n + A008683 (A057673 n).toNat * A143091 n

end

end A140473.P1310618352367677585

namespace A140473

/-- `A163867(n)+A008683(A057673(n))*A143091(n)` -/
def P1310618352367677585.Spec : Prop :=
  ∀ n, P1310618352367677585.a n = A140473 n

end A140473

/-! ## A140473.P3731927239974507913

`A163867(n)-A177151(A163867(A000007(n)+n))`
-/

namespace A140473.P3731927239974507913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163867 n - A177151 (A163867 (A000007 n + (n : ℤ)).toNat).toNat

end

end A140473.P3731927239974507913

namespace A140473

/-- `A163867(n)-A177151(A163867(A000007(n)+n))` -/
def P3731927239974507913.Spec : Prop :=
  ∀ n, P3731927239974507913.a n = A140473 n

end A140473

/-! ## A140473.P12158360660166120718

`A163867(n)-A177151(A163867(n)+A000038(n+1))`
-/

namespace A140473.P12158360660166120718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163867 n - A177151 (A163867 n + A000038 (n + 1)).toNat

end

end A140473.P12158360660166120718

namespace A140473

/-- `A163867(n)-A177151(A163867(n)+A000038(n+1))` -/
def P12158360660166120718.Spec : Prop :=
  ∀ n, P12158360660166120718.a n = A140473 n

end A140473

/-! ## A140473.P17995402548734559932

`A163867(n)-A177151(A163867(n)+A036987(2*n))`
-/

namespace A140473.P17995402548734559932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163867 n - A177151 (A163867 n + A036987 (2 * n)).toNat

end

end A140473.P17995402548734559932

namespace A140473

/-- `A163867(n)-A177151(A163867(n)+A036987(2*n))` -/
def P17995402548734559932.Spec : Prop :=
  ∀ n, P17995402548734559932.a n = A140473 n

end A140473

/-!
# A140474: Fractional noise-like sequence: a(n)=a(n-a(n-1))+a(Floor[a0*n/b0]): a0

The programs for A140474, the canonical program `A140474.P9540924460937566243` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A140474 has offset 1).

The definition of A140474 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A140474.P9540924460937566243

`a(n-a(n-1))+a(floor(n/8))` with `a(0)=1, a(1)=0, a(2)=1`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A140474

/-- `a(n-a(n-1))+a(floor(n/8))` -/
def P9540924460937566243.Spec : Prop :=
  ∀ n, (P9540924460937566243.a n : ℤ) = A140474 (n + 1)

theorem P9540924460937566243.correct : P9540924460937566243.Spec := by
  intro n
  simp only [A140474, Nat.add_sub_cancel]

end A140474

/-!
# A140475: 1 along with primes greater than 3.

The programs for A140475, the canonical program `A140475.P14596842040890734484` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A140475 has offset 1).

The definition of A140475 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A140475.P627177169992443672

`lcm(3, p?[2*n+1])/3`
-/

namespace A140475.P627177169992443672
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.lcm 3 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)) : ℚ) / 3

end

end A140475.P627177169992443672

namespace A140475

/-- `lcm(3, p?[2*n+1])/3` -/
def P627177169992443672.Spec : Prop :=
  ∀ n, P627177169992443672.a n = (A140475 (n + 1) : ℚ)

end A140475

/-! ## A140475.P18064014571964224781

`gcd(floor(acot(n)), p?[2*n+1])`
-/

namespace A140475.P18064014571964224781
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd ⌊SequenceMachineLib.acot (n : ℝ)⌋ (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) : ℤ)

end

end A140475.P18064014571964224781

namespace A140475

/-- `gcd(floor(acot(n)), p?[2*n+1])` -/
def P18064014571964224781.Spec : Prop :=
  ∀ n, (P18064014571964224781.a n : ℤ) = A140475 (n + 1)

end A140475

/-! ## A140475.P14596842040890734484

`p?[2*n+1]%∑[∑[n+2]]`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A140475

/-- `p?[2*n+1]%∑[∑[n+2]]` -/
def P14596842040890734484.Spec : Prop :=
  ∀ n, (P14596842040890734484.a n : ℤ) = A140475 (n + 1)

theorem P14596842040890734484.correct : P14596842040890734484.Spec := by
  intro n
  simp only [A140475, Nat.add_sub_cancel]

end A140475

/-! ## A140475.P15968897649097553229

`p?[2*n+1]^floor(atan(n+1))`
-/

namespace A140475.P15968897649097553229
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) : ℚ) ^ (⌊Real.arctan (n + 1 : ℝ)⌋ : ℤ)

end

end A140475.P15968897649097553229

namespace A140475

/-- `p?[2*n+1]^floor(atan(n+1))` -/
def P15968897649097553229.Spec : Prop :=
  ∀ n, P15968897649097553229.a n = (A140475 (n + 1) : ℚ)

end A140475

/-! ## A140475.P8463286984526394297

`round(p?[2*n+1]-acot(2*n))`
-/

namespace A140475.P8463286984526394297
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) : ℝ) - SequenceMachineLib.acot (2 * n : ℝ))

end

end A140475.P8463286984526394297

namespace A140475

/-- `round(p?[2*n+1]-acot(2*n))` -/
def P8463286984526394297.Spec : Prop :=
  ∀ n, P8463286984526394297.a n = A140475 (n + 1)

end A140475

/-! ## A140475.P4651989499770410779

`C(p?[2*n+1], floor(atan(n+1)))`
-/

namespace A140475.P4651989499770410779
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)) ⌊Real.arctan (n + 1 : ℝ)⌋.toNat

end

end A140475.P4651989499770410779

namespace A140475

/-- `C(p?[2*n+1], floor(atan(n+1)))` -/
def P4651989499770410779.Spec : Prop :=
  ∀ n, (P4651989499770410779.a n : ℤ) = A140475 (n + 1)

end A140475

/-! ## A140475.P5790885152727129189

`xor(round(acot(2*n)), p?[2*n+1])`
-/

namespace A140475.P5790885152727129189
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (SequenceMachineLib.roundAway (SequenceMachineLib.acot (2 * n : ℝ))) (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) : ℤ)

end

end A140475.P5790885152727129189

namespace A140475

/-- `xor(round(acot(2*n)), p?[2*n+1])` -/
def P5790885152727129189.Spec : Prop :=
  ∀ n, P5790885152727129189.a n = A140475 (n + 1)

end A140475

/-! ## A140475.P5818714857082228263

`p?[2*n+1]-C(2, 2*n+1)`
-/

namespace A140475.P5818714857082228263
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) : ℤ) - (Nat.choose 2 (2 * n + 1) : ℤ)

end

end A140475.P5818714857082228263

namespace A140475

/-- `p?[2*n+1]-C(2, 2*n+1)` -/
def P5818714857082228263.Spec : Prop :=
  ∀ n, P5818714857082228263.a n = A140475 (n + 1)

end A140475

/-! ## A140475.P13268120303952503935

`xor(C(2, 2*n+1), p?[2*n+1])`
-/

namespace A140475.P13268120303952503935
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor (Nat.choose 2 (2 * n + 1)) (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A140475.P13268120303952503935

namespace A140475

/-- `xor(C(2, 2*n+1), p?[2*n+1])` -/
def P13268120303952503935.Spec : Prop :=
  ∀ n, (P13268120303952503935.a n : ℤ) = A140475 (n + 1)

end A140475

/-! ## A140475.P5467923589371457756

`p?[2*n+1]^((n+2)%(n+1))`
-/

namespace A140475.P5467923589371457756
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) ^ ((n + 2) % (n + 1))

end

end A140475.P5467923589371457756

namespace A140475

/-- `p?[2*n+1]^((n+2)%(n+1))` -/
def P5467923589371457756.Spec : Prop :=
  ∀ n, (P5467923589371457756.a n : ℤ) = A140475 (n + 1)

end A140475

/-! ## A140475.P6262595660537600681

`p?[2*n+1]/floor(ratio[2*n+1])`
-/

namespace A140475.P6262595660537600681
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) : ℚ) / (⌊(f2 (n + 1) : ℚ) / (f2 n : ℚ)⌋ : ℚ)

end

end A140475.P6262595660537600681

namespace A140475

/-- `p?[2*n+1]/floor(ratio[2*n+1])` -/
def P6262595660537600681.Spec : Prop :=
  ∀ n, P6262595660537600681.a n = (A140475 (n + 1) : ℚ)

end A140475

/-! ## A140475.P4982448928557029428

`C(p?[2*n+1], floor(ratio[2*n+1]))`
-/

namespace A140475.P4982448928557029428
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)) ⌊(f2 (n + 1) : ℚ) / (f2 n : ℚ)⌋.toNat

end

end A140475.P4982448928557029428

namespace A140475

/-- `C(p?[2*n+1], floor(ratio[2*n+1]))` -/
def P4982448928557029428.Spec : Prop :=
  ∀ n, (P4982448928557029428.a n : ℤ) = A140475 (n + 1)

end A140475

/-! ## A140475.P16078923151110809785

`or(1, A165972(n+1))`
-/

namespace A140475.P16078923151110809785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A165972 (n + 1))

end

end A140475.P16078923151110809785

namespace A140475

/-- `or(1, A165972(n+1))` -/
def P16078923151110809785.Spec : Prop :=
  ∀ n, P16078923151110809785.a n = A140475 (n + 1)

end A140475

/-! ## A140475.P3101767240777738231

`or(1, A156037(n+2))`
-/

namespace A140475.P3101767240777738231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A156037 (n + 2))

end

end A140475.P3101767240777738231

namespace A140475

/-- `or(1, A156037(n+2))` -/
def P3101767240777738231.Spec : Prop :=
  ∀ n, P3101767240777738231.a n = A140475 (n + 1)

end A140475

/-! ## A140475.P9784818990198632264

`A165972(n+1)+A057427(n)`
-/

namespace A140475.P9784818990198632264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165972 (n + 1) + A057427 n

end

end A140475.P9784818990198632264

namespace A140475

/-- `A165972(n+1)+A057427(n)` -/
def P9784818990198632264.Spec : Prop :=
  ∀ n, P9784818990198632264.a n = A140475 (n + 1)

end A140475

/-! ## A140475.P4871616887924959301

`A154115(n+1)+A122553(n)`
-/

namespace A140475.P4871616887924959301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154115 (n + 1) + A122553 n

end

end A140475.P4871616887924959301

namespace A140475

/-- `A154115(n+1)+A122553(n)` -/
def P4871616887924959301.Spec : Prop :=
  ∀ n, P4871616887924959301.a n = A140475 (n + 1)

end A140475

/-! ## A140475.P12057398519249018087

`A045344(n+1)-A000007(n)`
-/

namespace A140475.P12057398519249018087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045344 (n + 1) - A000007 n

end

end A140475.P12057398519249018087

namespace A140475

/-- `A045344(n+1)-A000007(n)` -/
def P12057398519249018087.Spec : Prop :=
  ∀ n, P12057398519249018087.a n = A140475 (n + 1)

end A140475

/-! ## A140475.P17847323813032744142

`A065091(n+1)-A000038(n)`
-/

namespace A140475.P17847323813032744142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (n + 1) - A000038 n

end

end A140475.P17847323813032744142

namespace A140475

/-- `A065091(n+1)-A000038(n)` -/
def P17847323813032744142.Spec : Prop :=
  ∀ n, P17847323813032744142.a n = A140475 (n + 1)

end A140475

/-! ## A140475.P277222069461852813

`A135731(n+1)-A054977(n)`
-/

namespace A140475.P277222069461852813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135731 (n + 1) - A054977 n

end

end A140475.P277222069461852813

namespace A140475

/-- `A135731(n+1)-A054977(n)` -/
def P277222069461852813.Spec : Prop :=
  ∀ n, P277222069461852813.a n = A140475 (n + 1)

end A140475

/-! ## A140475.P18221802883555337953

`A165972(n+1)-A057428(n)`
-/

namespace A140475.P18221802883555337953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165972 (n + 1) - A057428 n

end

end A140475.P18221802883555337953

namespace A140475

/-- `A165972(n+1)-A057428(n)` -/
def P18221802883555337953.Spec : Prop :=
  ∀ n, P18221802883555337953.a n = A140475 (n + 1)

end A140475

/-!
# A140476: Number of self-avoiding walks on cubic lattice with no more than n steps.

The programs for A140476, there is no canonical definition to state claims against.
-/

/-! ## A140476.P15358692816394857853

`∑[A001412(n)]`
-/

namespace A140476.P15358692816394857853
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001412 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A140476.P15358692816394857853

/-! ## A140476.P7276448420242259165

`A001412(n)+a(A023443(n))` with `a(0)=1`
-/

namespace A140476.P7276448420242259165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A001412 n + a (A023443 n).toNat

end

end A140476.P7276448420242259165

/-! ## A140476.P12498917007999097294

`A001412(n)+a(A000027(n)-1)` with `a(0)=1`
-/

namespace A140476.P12498917007999097294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A001412 n + a (A000027 n - 1).toNat

end

end A140476.P12498917007999097294

/-! ## A140476.P8228339589350467422

`A001412(A028310(n))+a(n-1)` with `a(0)=1`
-/

namespace A140476.P8228339589350467422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A001412 (A028310 n).toNat + a (n - 1)

end

end A140476.P8228339589350467422

/-! ## A140476.P316576880299339133

`A001412(A000038(n)+n)+a(n-1)` with `a(0)=1`
-/

namespace A140476.P316576880299339133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A001412 (A000038 n + (n : ℤ)).toNat + a (n - 1)

end

end A140476.P316576880299339133

/-!
# A140477: Binomial(127,n).

The programs for A140477, the canonical program `A140477.P16090388377332188450` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A140477 has offset 0).

The definition of A140477 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `C(127, n)` (program `A140477.P16090388377332188450`, by `A140477.P16090388377332188450.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A140477.P16090388377332188450

`C(127, n)`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A140477

/-- `C(127, n)` -/
def P16090388377332188450.Spec : Prop :=
  ∀ n, (P16090388377332188450.a n : ℤ) = A140477 n

theorem P16090388377332188450.correct : P16090388377332188450.Spec := by
  intro n
  simp only [A140477]

end A140477

/-!
# A140478: In the decimal expansion of Pi, the string "8" is found at position 11 counting from the first digit after the decimal point. The string "11" is found at position 94, the string "94" at position 58, the string "58" at position 10, etc.

The programs for A140478, there is no canonical definition to state claims against.
-/

/-! ## A140478.P4687380664633681280

`A014777(a(n-1))` with `a(0)=8`
-/

namespace A140478.P4687380664633681280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [8] fun n a =>
  A014777 (a (n - 1)).toNat

end

end A140478.P4687380664633681280

/-! ## A140478.P805482549140562442

`A032445(a(n-1))-1` with `a(0)=8`
-/

namespace A140478.P805482549140562442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [8] fun n a =>
  A032445 (a (n - 1)).toNat - 1

end

end A140478.P805482549140562442

/-! ## A140478.P10450729164707252306

`A023443(A032445(a(n-1)))` with `a(0)=8`
-/

namespace A140478.P10450729164707252306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [8] fun n a =>
  A023443 (A032445 (a (n - 1)).toNat).toNat

end

end A140478.P10450729164707252306

/-! ## A140478.P2298346310882880019

`A176341(a(n-1))` with `a(0)=8`
-/

namespace A140478.P2298346310882880019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [8] fun n a =>
  A176341 (a (n - 1)).toNat

end

end A140478.P2298346310882880019

/-!
# A140479: n^2 - number of digits of n^2.

The programs for A140479, the canonical program `A140479.P6310217121719682251` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A140479 has offset 0).

The definition of A140479 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A140479.P11062507483946601405

`n²-∑[char[A017936(n+1)]]`
-/

namespace A140479.P11062507483946601405
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017936 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A140479.P11062507483946601405

namespace A140479

/-- `n²-∑[char[A017936(n+1)]]` -/
def P11062507483946601405.Spec : Prop :=
  ∀ n, P11062507483946601405.a n = A140479 n

end A140479

/-! ## A140479.P6310217121719682251

`abs(∑{digits}[n², dr(10^#)]-A253909(n))`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A140479

/-- `abs(∑{digits}[n², dr(10^#)]-A253909(n))` -/
def P6310217121719682251.Spec : Prop :=
  ∀ n, P6310217121719682251.a n = A140479 n

theorem P6310217121719682251.correct : P6310217121719682251.Spec := by
  intro n
  simp only [A140479]

end A140479

/-! ## A140479.P6346456937934621109

`A253909(n)-A185679(n)`
-/

namespace A140479.P6346456937934621109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253909 n - A185679 n

end

end A140479.P6346456937934621109

namespace A140479

/-- `A253909(n)-A185679(n)` -/
def P6346456937934621109.Spec : Prop :=
  ∀ n, P6346456937934621109.a n = A140479 n

end A140479

/-! ## A140479.P11383496773545918726

`(n²-A185679(n))%A294870(n)`
-/

namespace A140479.P11383496773545918726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((n ^ 2 : ℤ) - A185679 n) (A294870 n)

end

end A140479.P11383496773545918726

namespace A140479

/-- `(n²-A185679(n))%A294870(n)` -/
def P11383496773545918726.Spec : Prop :=
  ∀ n, P11383496773545918726.a n = A140479 n

end A140479

/-! ## A140479.P16483789861447230725

`A253909(n)-A055642(n²)`
-/

namespace A140479.P16483789861447230725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253909 n - A055642 (n ^ 2)

end

end A140479.P16483789861447230725

namespace A140479

/-- `A253909(n)-A055642(n²)` -/
def P16483789861447230725.Spec : Prop :=
  ∀ n, P16483789861447230725.a n = A140479 n

end A140479

/-! ## A140479.P1780655856364177950

`n²-A004218(n²+1)`
-/

namespace A140479.P1780655856364177950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) - A004218 (n ^ 2 + 1)

end

end A140479.P1780655856364177950

namespace A140479

/-- `n²-A004218(n²+1)` -/
def P1780655856364177950.Spec : Prop :=
  ∀ n, P1780655856364177950.a n = A140479 n

end A140479

/-!
# A140480: RMS numbers: numbers n such that root mean square of divisors of n is an integer.

The programs for A140480, there is no canonical definition to state claims against.
-/

/-! ## A140480.P9327784333805998084

`∪[A141813(n+1), A158287(n+1)]`
-/

namespace A140480.P9327784333805998084
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141813 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158287 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A140480.P9327784333805998084

/-!
# A140481: a(1) = 1; for n >= 1, a(n+1) is obtained by adding to a(n) the a(n)-th smallest number not dividing a(n).

The programs for A140481, there is no canonical definition to state claims against.
-/

/-! ## A140481.P11848464890535169445

`A000005(a(n-1))+2*a(n-1)` with `a(0)=1`
-/

namespace A140481.P11848464890535169445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A000005 (a (n - 1)).toNat + 2 * a (n - 1)

end

end A140481.P11848464890535169445

/-! ## A140481.P11468261360966686584

`A140482(a(n-1))` with `a(0)=1`
-/

namespace A140481.P11468261360966686584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A140482 (a (n - 1)).toNat

end

end A140481.P11468261360966686584

/-! ## A140481.P2292785570852876393

`A062249(a(n-1))+a(n-1)` with `a(0)=1`
-/

namespace A140481.P2292785570852876393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A062249 (a (n - 1)).toNat + a (n - 1)

end

end A140481.P2292785570852876393

/-! ## A140481.P10600048962448510114

`a(n-1)+A158907(a(n-1))+1` with `a(0)=1`
-/

namespace A140481.P10600048962448510114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (A158907 (a (n - 1)).toNat + 1)

end

end A140481.P10600048962448510114

/-! ## A140481.P6303936117828450319

`3*a(n-1)-A049820(a(n-1))` with `a(0)=1`
-/

namespace A140481.P6303936117828450319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  3 * a (n - 1) - A049820 (a (n - 1)).toNat

end

end A140481.P6303936117828450319

/-!
# A140482: a(n) = 2*n + tau(n).

The programs for A140482, the canonical program `A140482.P12116183347616622016` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A140482 has offset 1).

The definition of A140482 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A140482.P12116183347616622016

`∑{d}[n+1, ceil(2/#)]+Δ[n²]`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A140482

/-- `∑{d}[n+1, ceil(2/#)]+Δ[n²]` -/
def P12116183347616622016.Spec : Prop :=
  ∀ n, P12116183347616622016.a n = A140482 (n + 1)

theorem P12116183347616622016.correct : P12116183347616622016.Spec := by
  intro n
  simp only [A140482, Nat.add_sub_cancel]

end A140482

/-! ## A140482.P17347518758382638802

`∏{e}[n+1, #+1]+2*(n+1)`
-/

namespace A140482.P17347518758382638802
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + 1) + 2 * (n + 1)

end

end A140482.P17347518758382638802

namespace A140482

/-- `∏{e}[n+1, #+1]+2*(n+1)` -/
def P17347518758382638802.Spec : Prop :=
  ∀ n, (P17347518758382638802.a n : ℤ) = A140482 (n + 1)

end A140482

/-! ## A140482.P8946110931234911494

`∏{e}[n+1, #+1]+2+n+n`
-/

namespace A140482.P8946110931234911494
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + 1) + 2 + n + n

end

end A140482.P8946110931234911494

namespace A140482

/-- `∏{e}[n+1, #+1]+2+n+n` -/
def P8946110931234911494.Spec : Prop :=
  ∀ n, (P8946110931234911494.a n : ℤ) = A140482 (n + 1)

end A140482

/-! ## A140482.P995993465188671689

`2*n+∑{d}[n+1, gcd(n, #)]+2`
-/

namespace A140482.P995993465188671689
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + (∑ d ∈ Nat.divisors (f1 n), Nat.gcd n d + 2)

end

end A140482.P995993465188671689

namespace A140482

/-- `2*n+∑{d}[n+1, gcd(n, #)]+2` -/
def P995993465188671689.Spec : Prop :=
  ∀ n, (P995993465188671689.a n : ℤ) = A140482 (n + 1)

end A140482

/-! ## A140482.P17226273176573408801

`2*n+∑{d}[n+1, ceil(acot(#))]+2`
-/

namespace A140482.P17226273176573408801
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) + (∑ d ∈ Nat.divisors (f1 n), ⌈SequenceMachineLib.acot (d : ℝ)⌉ + 2)

end

end A140482.P17226273176573408801

namespace A140482

/-- `2*n+∑{d}[n+1, ceil(acot(#))]+2` -/
def P17226273176573408801.Spec : Prop :=
  ∀ n, P17226273176573408801.a n = A140482 (n + 1)

end A140482

/-! ## A140482.P4438248096689008445

`∑{d}[n+1, ceil(acot(#))]+2+n+n`
-/

namespace A140482.P4438248096689008445
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), ⌈SequenceMachineLib.acot (d : ℝ)⌉ + 2 + (n : ℤ) + (n : ℤ)

end

end A140482.P4438248096689008445

namespace A140482

/-- `∑{d}[n+1, ceil(acot(#))]+2+n+n` -/
def P4438248096689008445.Spec : Prop :=
  ∀ n, P4438248096689008445.a n = A140482 (n + 1)

end A140482

/-! ## A140482.P6950485643133133772

`2*n+∑{d}[n+1, ceil(2/#)]+1`
-/

namespace A140482.P6950485643133133772
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) + (∑ d ∈ Nat.divisors (f1 n), ⌈2 / (d : ℚ)⌉ + 1)

end

end A140482.P6950485643133133772

namespace A140482

/-- `2*n+∑{d}[n+1, ceil(2/#)]+1` -/
def P6950485643133133772.Spec : Prop :=
  ∀ n, P6950485643133133772.a n = A140482 (n + 1)

theorem P6950485643133133772.correct : P6950485643133133772.Spec := by
  intro n
  simp only [A140482, Nat.add_sub_cancel, A140482.P6950485643133133772.f1, A140482.P6950485643133133772.a, A140482.P12116183347616622016.f1, A140482.P12116183347616622016.f2, A140482.P12116183347616622016.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A140482

/-! ## A140482.P12353838927297416093

`∑{d}[n+1, ceil(1/#)]+2+n+n`
-/

namespace A140482.P12353838927297416093
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), ⌈1 / (d : ℚ)⌉ + 2 + (n : ℤ) + (n : ℤ)

end

end A140482.P12353838927297416093

namespace A140482

/-- `∑{d}[n+1, ceil(1/#)]+2+n+n` -/
def P12353838927297416093.Spec : Prop :=
  ∀ n, P12353838927297416093.a n = A140482 (n + 1)

end A140482

/-! ## A140482.P2614762514952799207

`2*n+ceil(∑{d}[n+1, sin(atan(#))])+2`
-/

namespace A140482.P2614762514952799207
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) + (⌈∑ d ∈ Nat.divisors (f1 n), Real.sin (Real.arctan (d : ℝ))⌉ + 2)

end

end A140482.P2614762514952799207

namespace A140482

/-- `2*n+ceil(∑{d}[n+1, sin(atan(#))])+2` -/
def P2614762514952799207.Spec : Prop :=
  ∀ n, P2614762514952799207.a n = A140482 (n + 1)

end A140482

/-! ## A140482.P9604706490998157118

`ceil(∑{d}[n+1, sin(atan(#))])+2+n+n`
-/

namespace A140482.P9604706490998157118
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈∑ d ∈ Nat.divisors (f1 n), Real.sin (Real.arctan (d : ℝ))⌉ + 2 + (n : ℤ) + (n : ℤ)

end

end A140482.P9604706490998157118

namespace A140482

/-- `ceil(∑{d}[n+1, sin(atan(#))])+2+n+n` -/
def P9604706490998157118.Spec : Prop :=
  ∀ n, P9604706490998157118.a n = A140482 (n + 1)

end A140482

/-! ## A140482.P624316855776158778

`∑[A341062(n+1)+2]`
-/

namespace A140482.P624316855776158778
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341062 (n + 1) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A140482.P624316855776158778

namespace A140482

/-- `∑[A341062(n+1)+2]` -/
def P624316855776158778.Spec : Prop :=
  ∀ n, P624316855776158778.a n = A140482 (n + 1)

end A140482

/-! ## A140482.P18258260530326190480

`A062249(n+1)+1+n`
-/

namespace A140482.P18258260530326190480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062249 (n + 1) + 1 + (n : ℤ)

end

end A140482.P18258260530326190480

namespace A140482

/-- `A062249(n+1)+1+n` -/
def P18258260530326190480.Spec : Prop :=
  ∀ n, P18258260530326190480.a n = A140482 (n + 1)

end A140482

/-! ## A140482.P17867066424315573610

`A158907(n+1)+2+n`
-/

namespace A140482.P17867066424315573610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158907 (n + 1) + 2 + (n : ℤ)

end

end A140482.P17867066424315573610

namespace A140482

/-- `A158907(n+1)+2+n` -/
def P17867066424315573610.Spec : Prop :=
  ∀ n, P17867066424315573610.a n = A140482 (n + 1)

end A140482

/-! ## A140482.P4272541470931460305

`A334954(n+1)+Δ[n²]`
-/

namespace A140482.P4272541470931460305
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334954 (n + 1) + ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A140482.P4272541470931460305

namespace A140482

/-- `A334954(n+1)+Δ[n²]` -/
def P4272541470931460305.Spec : Prop :=
  ∀ n, P4272541470931460305.a n = A140482 (n + 1)

end A140482

/-! ## A140482.P11303161972345714232

`2*(n+1)+A000005(n+1)`
-/

namespace A140482.P11303161972345714232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * (n + 1) : ℤ) + A000005 (n + 1)

end

end A140482.P11303161972345714232

namespace A140482

/-- `2*(n+1)+A000005(n+1)` -/
def P11303161972345714232.Spec : Prop :=
  ∀ n, P11303161972345714232.a n = A140482 (n + 1)

end A140482

/-! ## A140482.P104984462485800723

`A032741(n+1)+2*n+3`
-/

namespace A140482.P104984462485800723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 (n + 1) + (2 * n + 3 : ℤ)

end

end A140482.P104984462485800723

namespace A140482

/-- `A032741(n+1)+2*n+3` -/
def P104984462485800723.Spec : Prop :=
  ∀ n, P104984462485800723.a n = A140482 (n + 1)

end A140482

/-! ## A140482.P9484415792706465603

`3*(n+1)-A049820(n+1)`
-/

namespace A140482.P9484415792706465603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 * (n + 1) : ℤ) - A049820 (n + 1)

end

end A140482.P9484415792706465603

namespace A140482

/-- `3*(n+1)-A049820(n+1)` -/
def P9484415792706465603.Spec : Prop :=
  ∀ n, P9484415792706465603.a n = A140482 (n + 1)

end A140482

/-! ## A140482.P418277648936110712

`4*(n+1)-A286002(n+1)`
-/

namespace A140482.P418277648936110712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (4 * (n + 1) : ℤ) - A286002 (n + 1)

end

end A140482.P418277648936110712

namespace A140482

/-- `4*(n+1)-A286002(n+1)` -/
def P418277648936110712.Spec : Prop :=
  ∀ n, P418277648936110712.a n = A140482 (n + 1)

end A140482

/-! ## A140482.P11095052679382803344

`A033879(n+1)+A007503(n+1)`
-/

namespace A140482.P11095052679382803344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033879 (n + 1) + A007503 (n + 1)

end

end A140482.P11095052679382803344

namespace A140482

/-- `A033879(n+1)+A007503(n+1)` -/
def P11095052679382803344.Spec : Prop :=
  ∀ n, P11095052679382803344.a n = A140482 (n + 1)

end A140482

/-! ## A140482.P14110854408173133635

`A061468(n+1)+A053158(n+1)`
-/

namespace A140482.P14110854408173133635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061468 (n + 1) + A053158 (n + 1)

end

end A140482.P14110854408173133635

namespace A140482

/-- `A061468(n+1)+A053158(n+1)` -/
def P14110854408173133635.Spec : Prop :=
  ∀ n, P14110854408173133635.a n = A140482 (n + 1)

end A140482

/-!
# A140483: Squares in A064491.

The programs for A140483, there is no canonical definition to state claims against.
-/

/-! ## A140483.P12208091940424996361

`A140484(n+1)²`
-/

namespace A140483.P12208091940424996361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140484 (n + 1) ^ 2

end

end A140483.P12208091940424996361

/-! ## A140483.P369513401128873938

`record[A140484(A000174(n))²]`
-/

namespace A140483.P369513401128873938
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140484 (A000174 n).toNat ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A140483.P369513401128873938

/-! ## A140483.P6785937194836530322

`A140484(A246087(n+1))^2`
-/

namespace A140483.P6785937194836530322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140484 (A246087 (n + 1)).toNat ^ 2

end

end A140483.P6785937194836530322

/-! ## A140483.P2440847799896126001

`A140484(A247064(n+1))^2`
-/

namespace A140483.P2440847799896126001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140484 (A247064 (n + 1)).toNat ^ 2

end

end A140483.P2440847799896126001

/-!
# A140484: Square roots of terms of A140483.

The programs for A140484, there is no canonical definition to state claims against.
-/

/-! ## A140484.P13477502354303167782

`sqrt(A140483(n+1))`
-/

namespace A140484.P13477502354303167782
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A140483 (n + 1) : ℝ)

end

end A140484.P13477502354303167782

/-! ## A140484.P8546131355086741146

`A000027(root(A140483(n+1), 2))`
-/

namespace A140484.P8546131355086741146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (SequenceMachineLib.roundAway ((A140483 (n + 1) : ℝ) ^ (1 / (2 : ℝ)))).toNat

end

end A140484.P8546131355086741146

/-! ## A140484.P9451518824648068483

`root(A140483(n+1), p?[A048766(n)])`
-/

namespace A140484.P9451518824648068483
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048766 n

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A140483 (n + 1) : ℝ) ^ (1 / (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) : ℝ))

end

end A140484.P9451518824648068483

/-! ## A140484.P10383115390696907811

`A140483(A000027(n+1))^(1/2)`
-/

namespace A140484.P10383115390696907811
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A140483 (A000027 (n + 1)).toNat : ℝ) ^ ((1 : ℚ) / 2 : ℝ)

end

end A140484.P10383115390696907811

/-!
# A140485: Trajectory of 1 under repeated application of the map: n -> n + second-smallest number that does not divide n.

The programs for A140485, there is no canonical definition to state claims against.
-/

/-! ## A140485.P13922512675135528112

`A276935(A240513(n+1))+4*n`
-/

namespace A140485.P13922512675135528112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276935 (A240513 (n + 1)).toNat + (4 * n : ℤ)

end

end A140485.P13922512675135528112

/-! ## A140485.P16329949579513756217

`or(A008574(n), A276935(A240513(n+1)))`
-/

namespace A140485.P16329949579513756217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A008574 n) (A276935 (A240513 (n + 1)).toNat)

end

end A140485.P16329949579513756217

/-! ## A140485.P2326543142045356769

`or(A008586(n), A276935(A240513(n+1)))`
-/

namespace A140485.P2326543142045356769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A008586 n) (A276935 (A240513 (n + 1)).toNat)

end

end A140485.P2326543142045356769

/-! ## A140485.P14772814259419302931

`A083030(n+2)-A332875(A000571(n))`
-/

namespace A140485.P14772814259419302931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083030 (n + 2) - A332875 (A000571 n).toNat

end

end A140485.P14772814259419302931

/-!
# A140486: Trajectory of 2 under repeated application of the map: n -> n + second-smallest number that does not divide n.

The programs for A140486, there is no canonical definition to state claims against.
-/

/-! ## A140486.P1559777198381719614

`xor(A094497(n), A140487(n+1))`
-/

namespace A140486.P1559777198381719614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A094497 n) (A140487 (n + 1))

end

end A140486.P1559777198381719614

/-! ## A140486.P13087566079030096425

`xor(A130716(n), A140487(n+1))`
-/

namespace A140486.P13087566079030096425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A130716 n) (A140487 (n + 1))

end

end A140486.P13087566079030096425

/-! ## A140486.P16088794507890851935

`xor(char[A012414(n)], A140487(n+1))`
-/

namespace A140486.P16088794507890851935
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A012414 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) (A140487 (n + 1))

end

end A140486.P16088794507890851935

/-! ## A140486.P7547461930444323910

`xor(char[A109573(n)], A140487(n+1))`
-/

namespace A140486.P7547461930444323910
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109573 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) (A140487 (n + 1))

end

end A140486.P7547461930444323910

/-! ## A140486.P16594886777636144787

`xor(char[A126079(n)], A140487(n+1))`
-/

namespace A140486.P16594886777636144787
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126079 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) (A140487 (n + 1))

end

end A140486.P16594886777636144787

/-! ## A140486.P14380232620748175458

`xor(char[A127067(n)], A140487(n+1))`
-/

namespace A140486.P14380232620748175458
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127067 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) (A140487 (n + 1))

end

end A140486.P14380232620748175458

/-! ## A140486.P9085478805625707938

`A140487(n+1)-A240350(C(n, 2))`
-/

namespace A140486.P9085478805625707938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140487 (n + 1) - A240350 (Nat.choose n 2)

end

end A140486.P9085478805625707938

/-! ## A140486.P16117262139154756797

`A140487(n+1)+A008683(A000423(n+1))`
-/

namespace A140486.P16117262139154756797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140487 (n + 1) + A008683 (A000423 (n + 1)).toNat

end

end A140486.P16117262139154756797

/-! ## A140486.P1918523019329991301

`xor(A008683(A081676(n+1)), A140487(n+1))`
-/

namespace A140486.P1918523019329991301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A008683 (A081676 (n + 1)).toNat) (A140487 (n + 1))

end

end A140486.P1918523019329991301

/-!
# A140487: Trajectory of 3 under repeated application of the map: n -> n + second-smallest number that does not divide n.

The programs for A140487, there is no canonical definition to state claims against.
-/

/-! ## A140487.P17742380721431527170

`xor(A094497(n), A140486(n+1))`
-/

namespace A140487.P17742380721431527170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A094497 n) (A140486 (n + 1))

end

end A140487.P17742380721431527170

/-! ## A140487.P6784672850513377633

`xor(A130716(n), A140486(n+1))`
-/

namespace A140487.P6784672850513377633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A130716 n) (A140486 (n + 1))

end

end A140487.P6784672850513377633

/-! ## A140487.P12827633358410585462

`xor(char[A012414(n)], A140486(n+1))`
-/

namespace A140487.P12827633358410585462
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A012414 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) (A140486 (n + 1))

end

end A140487.P12827633358410585462

/-! ## A140487.P4950394234928789519

`xor(char[A109573(n)], A140486(n+1))`
-/

namespace A140487.P4950394234928789519
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109573 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) (A140486 (n + 1))

end

end A140487.P4950394234928789519

/-! ## A140487.P17262906407408891424

`xor(char[A126079(n)], A140486(n+1))`
-/

namespace A140487.P17262906407408891424
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126079 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) (A140486 (n + 1))

end

end A140487.P17262906407408891424

/-! ## A140487.P15733549119386194062

`xor(char[A127067(n)], A140486(n+1))`
-/

namespace A140487.P15733549119386194062
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127067 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) (A140486 (n + 1))

end

end A140487.P15733549119386194062

/-! ## A140487.P8110984462909685112

`xor(A000007(A002264(n)), A140486(n+1))`
-/

namespace A140487.P8110984462909685112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A000007 (A002264 n).toNat) (A140486 (n + 1))

end

end A140487.P8110984462909685112

/-! ## A140487.P10272726618893685369

`xor(A000007(A004524(n)), A140486(n+1))`
-/

namespace A140487.P10272726618893685369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A000007 (A004524 n).toNat) (A140486 (n + 1))

end

end A140487.P10272726618893685369

/-! ## A140487.P5307681992307358648

`xor(A000007(A008133(n)), A140486(n+1))`
-/

namespace A140487.P5307681992307358648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A000007 (A008133 n).toNat) (A140486 (n + 1))

end

end A140487.P5307681992307358648

/-! ## A140487.P2472394682138629576

`xor(A008683(A081676(n+1)), A140486(n+1))`
-/

namespace A140487.P2472394682138629576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A008683 (A081676 (n + 1)).toNat) (A140486 (n + 1))

end

end A140487.P2472394682138629576

/-!
# A140488: Trajectory of 5 under repeated application of the map: n -> n + second-smallest number that does not divide n.

The programs for A140488, there is no canonical definition to state claims against.
-/

/-! ## A140488.P5370026658154700055

`Δ[char[1]+∑[A140485(n+1)]]`
-/

namespace A140488.P5370026658154700055
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140485 (n + 1)

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ) + ∑ j ∈ Finset.range (n + 1), f3 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A140488.P5370026658154700055

/-! ## A140488.P2129313574734628483

`A140485(n+2)+A008683(A062383(n))`
-/

namespace A140488.P2129313574734628483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140485 (n + 2) + A008683 (A062383 n).toNat

end

end A140488.P2129313574734628483

/-! ## A140488.P9577084614712946608

`A140485(n+2)+A089802(A171464(n))`
-/

namespace A140488.P9577084614712946608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140485 (n + 2) + A089802 (A171464 n).toNat

end

end A140488.P9577084614712946608

/-! ## A140488.P8032367364218597767

`A140485(n+2)+A140487(n+2)-A140486(n+2)`
-/

namespace A140488.P8032367364218597767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140485 (n + 2) + (A140487 (n + 2) - A140486 (n + 2))

end

end A140488.P8032367364218597767

/-! ## A140488.P6493006295113478579

`A055642(A368095(n))+A007094(3*n+4)`
-/

namespace A140488.P6493006295113478579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055642 (A368095 n).toNat + A007094 (3 * n + 4)

end

end A140488.P6493006295113478579

/-!
# A140489: Numbers that cannot be part of the trajectory of any number under repeated application of the map: n -> n + second-smallest number that does not divide n, unless they are the first term of the trajectory.

The programs for A140489, there is no canonical definition to state claims against.
-/

/-! ## A140489.P12272160042017159573

`lt[A351031(2*(n+2)), A293217(A174023(n+5))]`
-/

namespace A140489.P12272160042017159573
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351031 (2 * (n + 2))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293217 (A174023 (n + 5)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A140489.P12272160042017159573

/-!
# A140490: Trajectory of 1 under repeated application of the map: n -> n + third-smallest number that does not divide n.

The programs for A140490, there is no canonical definition to state claims against.
-/

/-! ## A140490.P17878117817482303140

`A308014(n+1)+lt[A081145(n+1), A129199(2*n+5)]`
-/

namespace A140490.P17878117817482303140
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081145 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129199 (2 * n + 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308014 (n + 1) + (SequenceMachineLib.nth (fun j => f1 j < f2 j) n : ℤ)

end

end A140490.P17878117817482303140

/-! ## A140490.P8327797835063029006

`xor(A038189(A053624(n+1)), A313201(n))`
-/

namespace A140490.P8327797835063029006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A038189 (A053624 (n + 1)).toNat) (A313201 n)

end

end A140490.P8327797835063029006

/-! ## A140490.P4660526993985330011

`A314672(A062399(n))+A004524(n)`
-/

namespace A140490.P4660526993985330011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314672 (A062399 n).toNat + A004524 n

end

end A140490.P4660526993985330011

/-! ## A140490.P4895399301831054920

`A314672(A120126(n))+A004524(n)`
-/

namespace A140490.P4895399301831054920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314672 (A120126 n).toNat + A004524 n

end

end A140490.P4895399301831054920

/-! ## A140490.P16367334021642208921

`A314829(n)+A124760(A331317(n))`
-/

namespace A140490.P16367334021642208921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314829 n + A124760 (A331317 n).toNat

end

end A140490.P16367334021642208921

/-!
# A140491: Trajectory of 2 under repeated application of the map: n -> n + third-smallest number that does not divide n.

The programs for A140491, there is no canonical definition to state claims against.
-/

/-! ## A140491.P736078859101310621

`record[A140492(n+1)-A101100(n+1)]`
-/

namespace A140491.P736078859101310621
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140492 (n + 1) - A101100 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A140491.P736078859101310621

/-! ## A140491.P6257317586684349549

`A362716(A320573(n+2))+A314736(n)`
-/

namespace A140491.P6257317586684349549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362716 (A320573 (n + 2)).toNat + A314736 n

end

end A140491.P6257317586684349549

/-! ## A140491.P12870188771625186493

`A314736(n)+A020639(A002057(n))`
-/

namespace A140491.P12870188771625186493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314736 n + A020639 (A002057 n).toNat

end

end A140491.P12870188771625186493

/-! ## A140491.P14948912879277686274

`A314736(n)+A001221(A254078(n+2))`
-/

namespace A140491.P14948912879277686274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314736 n + A001221 (A254078 (n + 2)).toNat

end

end A140491.P14948912879277686274

/-! ## A140491.P17372849808319027503

`A324823(A000667(n))+A005117(3*n+2)`
-/

namespace A140491.P17372849808319027503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324823 (A000667 n).toNat + A005117 (3 * n + 2)

end

end A140491.P17372849808319027503

/-!
# A140492: Trajectory of 3 under repeated application of the map: n -> n + third-smallest number that does not divide n.

The programs for A140492, there is no canonical definition to state claims against.
-/

/-! ## A140492.P6044925809341934258

`A313232(n+1)-A093178(A081123(n))`
-/

namespace A140492.P6044925809341934258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313232 (n + 1) - A093178 (A081123 n).toNat

end

end A140492.P6044925809341934258

/-! ## A140492.P11105512296844552894

`A313232(n+1)-abs(A033999(A288015(n)))`
-/

namespace A140492.P11105512296844552894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313232 (n + 1) - |A033999 (A288015 n).toNat|

end

end A140492.P11105512296844552894

/-! ## A140492.P1474769509746745002

`A313232(n+1)-A010121(A001644(n+1))`
-/

namespace A140492.P1474769509746745002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313232 (n + 1) - A010121 (A001644 (n + 1)).toNat

end

end A140492.P1474769509746745002

/-! ## A140492.P8195816584272487268

`A359376(2*n+3)-A001221(A000978(2*n+1))`
-/

namespace A140492.P8195816584272487268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359376 (2 * n + 3) - A001221 (A000978 (2 * n + 1)).toNat

end

end A140492.P8195816584272487268

/-! ## A140492.P16020007663071136414

`A160642(A313232(n+1))`
-/

namespace A140492.P16020007663071136414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160642 (A313232 (n + 1)).toNat

end

end A140492.P16020007663071136414

/-!
# A140493: Trajectory of 4 under repeated application of the map: n -> n + third-smallest number that does not divide n.

The programs for A140493, there is no canonical definition to state claims against.
-/

/-! ## A140493.P12759484701768825542

`A016969(n)-A036021(A062399(n))`
-/

namespace A140493.P12759484701768825542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016969 n - A036021 (A062399 n).toNat

end

end A140493.P12759484701768825542

/-! ## A140493.P3071593301398382531

`A059538(n+1)-A036021(A062399(n))`
-/

namespace A140493.P3071593301398382531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059538 (n + 1) - A036021 (A062399 n).toNat

end

end A140493.P3071593301398382531

/-! ## A140493.P12215659553380335202

`A016969(n)-A036021(A087051(n))`
-/

namespace A140493.P12215659553380335202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016969 n - A036021 (A087051 n).toNat

end

end A140493.P12215659553380335202

/-! ## A140493.P6398794575555232375

`A016969(n)-A341144(A002998(n))`
-/

namespace A140493.P6398794575555232375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016969 n - A341144 ((A002998 n).toNat + 30)

end

end A140493.P6398794575555232375

/-! ## A140493.P13466752940789315944

`A016969(A087051(n))-A341144(n)`
-/

namespace A140493.P13466752940789315944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016969 (A087051 n).toNat - A341144 (n + 30)

end

end A140493.P13466752940789315944

/-!
# A140494: Numbers that cannot be part of the trajectory of any number under repeated application of the map: n -> n + third-smallest number that does not divide n, unless they are the first term of the trajectory.

The programs for A140494, there is no canonical definition to state claims against.
-/

/-! ## A140494.P15215576080970786864

`∪[A008458(n), A328405(A185626(n))]`
-/

namespace A140494.P15215576080970786864
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328405 (A185626 n).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A140494.P15215576080970786864

/-! ## A140494.P6395812822523414409

`record[A206225(Δ[A227759(n+1)])]`
-/

namespace A140494.P6395812822523414409
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227759 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206225 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A140494.P6395812822523414409

/-! ## A140494.P17538553976141436020

`A166081(n+1)+A062157(A056370(n+1))`
-/

namespace A140494.P17538553976141436020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166081 (n + 1) + A062157 (A056370 (n + 1)).toNat

end

end A140494.P17538553976141436020

/-! ## A140494.P9888222914724621031

`A166081(n+1)+A057427(A244103(n+7))`
-/

namespace A140494.P9888222914724621031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166081 (n + 1) + A057427 (A244103 (n + 7)).toNat

end

end A140494.P9888222914724621031

/-!
# A140495: Union of A052103, A052102 and A052101, uniqued and sorted.

The programs for A140495, there is no canonical definition to state claims against.
-/

/-! ## A140495.P16978583592697865889

`∑[A142716(A028310(n))]-1`
-/

namespace A140495.P16978583592697865889
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142716 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A140495.P16978583592697865889

/-! ## A140495.P15675314439453602261

`∑[A142716(A254667(n+1)-1)]-1`
-/

namespace A140495.P15675314439453602261
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142716 (A254667 (n + 1) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A140495.P15675314439453602261

/-! ## A140495.P11941138356299891925

`A033999(2*n+1)+∑[A142716(A028310(n))]`
-/

namespace A140495.P11941138356299891925
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142716 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (2 * n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A140495.P11941138356299891925

/-! ## A140495.P17130285559914578403

`∑[A142716(n+1)]-A142716(n+1)`
-/

namespace A140495.P17130285559914578403
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142716 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A142716 (n + 1)

end

end A140495.P17130285559914578403

/-! ## A140495.P12179064701020027621

`∑[A142716(A028310(n))%A018125(n)]`
-/

namespace A140495.P12179064701020027621
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A142716 (A028310 n).toNat) (A018125 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A140495.P12179064701020027621

/-!
# A140496: a(n) = p - number of digits of p^4, where p = n-th prime.

The programs for A140496, there is no canonical definition to state claims against.
-/

/-! ## A140496.P1860787846141029045

`record[A020639(n+1)-A239684(n)]`
-/

namespace A140496.P1860787846141029045
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 1) - A239684 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A140496.P1860787846141029045

/-! ## A140496.P15512055848613839965

`A000040(n+1)-A239684(A000040(n+1))`
-/

namespace A140496.P15512055848613839965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) - A239684 (A000040 (n + 1)).toNat

end

end A140496.P15512055848613839965

/-! ## A140496.P12010239336460086275

`record[A008472(n+1)-A327008(n+1)]`
-/

namespace A140496.P12010239336460086275
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008472 (n + 1) - A327008 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A140496.P12010239336460086275

/-! ## A140496.P1548908859791947913

`A000040(n+1)-A366721(A001248(n+1))`
-/

namespace A140496.P1548908859791947913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) - A366721 (A001248 (n + 1)).toNat

end

end A140496.P1548908859791947913

/-! ## A140496.P15730840968137528474

`A000040(n+1)-A185679(A000040(n+1)²)`
-/

namespace A140496.P15730840968137528474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) - A185679 (A000040 (n + 1) ^ 2).toNat

end

end A140496.P15730840968137528474

/-!
# A140498: a(n) = 3*a(n-1)-3*a(n-2)+3*a(n-3) with a(0)=1, a(1)=3, a(2)=7.

The programs for A140498, the canonical program `A140498.P16666208644782225024` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A140498 has offset 0).

The definition of A140498 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `3*a(n-1)-3*a(n-2)+3*a(n-3)` (program `A140498.P16666208644782225024`, by `A140498.P16666208644782225024.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A140498.P16666208644782225024

`3*a(n-1)-3*a(n-2)+3*a(n-3)` with `a(0)=1, a(1)=3, a(2)=7`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A140498

/-- `3*a(n-1)-3*a(n-2)+3*a(n-3)` -/
def P16666208644782225024.Spec : Prop :=
  ∀ n, P16666208644782225024.a n = A140498 n

theorem P16666208644782225024.correct : P16666208644782225024.Spec := by
  intro n
  simp only [A140498]

end A140498

/-! ## A140498.P12513305702535755277

`ogf((1+x^2)/(1-3x+3x^2-3x^3))`
-/

namespace A140498.P12513305702535755277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 0, 1] [1, -3, 3, -3] n

end

end A140498.P12513305702535755277

namespace A140498

/-- `ogf((1+x^2)/(1-3x+3x^2-3x^3))` -/
def P12513305702535755277.Spec : Prop :=
  ∀ n, P12513305702535755277.a n = A140498 n

end A140498

/-! ## A140498.P13182601511622005544

`3*(a(n-1)+a(n-3)-a(n-2))` with `a(0)=1, a(1)=3, a(2)=7`
-/

namespace A140498.P13182601511622005544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3, 7] fun n a =>
  3 * (a (n - 1) + (a (n - 3) - a (n - 2)))

end

end A140498.P13182601511622005544

namespace A140498

/-- `3*(a(n-1)+a(n-3)-a(n-2))` -/
def P13182601511622005544.Spec : Prop :=
  ∀ n, P13182601511622005544.a n = A140498 n

end A140498

/-! ## A140498.P1816874601405865907

`A137256(n)+∑[A052102(n)]`
-/

namespace A140498.P1816874601405865907
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052102 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137256 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A140498.P1816874601405865907

namespace A140498

/-- `A137256(n)+∑[A052102(n)]` -/
def P1816874601405865907.Spec : Prop :=
  ∀ n, P1816874601405865907.a n = A140498 n

end A140498

/-! ## A140498.P7077074046687547404

`A137256(n)+A052103(n+1)`
-/

namespace A140498.P7077074046687547404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137256 n + A052103 (n + 1)

end

end A140498.P7077074046687547404

namespace A140498

/-- `A137256(n)+A052103(n+1)` -/
def P7077074046687547404.Spec : Prop :=
  ∀ n, P7077074046687547404.a n = A140498 n

end A140498

/-! ## A140498.P12883814920093133066

`A052103(n+2)+A052103(n)`
-/

namespace A140498.P12883814920093133066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052103 (n + 2) + A052103 n

end

end A140498.P12883814920093133066

namespace A140498

/-- `A052103(n+2)+A052103(n)` -/
def P12883814920093133066.Spec : Prop :=
  ∀ n, P12883814920093133066.a n = A140498 n

end A140498

/-! ## A140498.P4058174866210986071

`A052101(n)+∑[2*A052102(n)]`
-/

namespace A140498.P4058174866210986071
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A052102 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052101 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A140498.P4058174866210986071

namespace A140498

/-- `A052101(n)+∑[2*A052102(n)]` -/
def P4058174866210986071.Spec : Prop :=
  ∀ n, P4058174866210986071.a n = A140498 n

end A140498

/-! ## A140498.P11820937766342525189

`A052101(n+1)+2*A052102(n)`
-/

namespace A140498.P11820937766342525189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052101 (n + 1) + 2 * A052102 n

end

end A140498.P11820937766342525189

namespace A140498

/-- `A052101(n+1)+2*A052102(n)` -/
def P11820937766342525189.Spec : Prop :=
  ∀ n, P11820937766342525189.a n = A140498 n

end A140498

/-! ## A140498.P13365950386392538943

`A137256(n)+A137256(n)-A052101(n)`
-/

namespace A140498.P13365950386392538943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137256 n + (A137256 n - A052101 n)

end

end A140498.P13365950386392538943

namespace A140498

/-- `A137256(n)+A137256(n)-A052101(n)` -/
def P13365950386392538943.Spec : Prop :=
  ∀ n, P13365950386392538943.a n = A140498 n

end A140498

/-! ## A140498.P4050824216126010693

`Δ[A137256(n)+A052103(n)]`
-/

namespace A140498.P4050824216126010693
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137256 n + A052103 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A140498.P4050824216126010693

namespace A140498

/-- `Δ[A137256(n)+A052103(n)]` -/
def P4050824216126010693.Spec : Prop :=
  ∀ n, P4050824216126010693.a n = A140498 n

end A140498

/-! ## A140498.P12090724533727102171

`∑[A137256(n)]-A137247(n)`
-/

namespace A140498.P12090724533727102171
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137256 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A137247 n

end

end A140498.P12090724533727102171

namespace A140498

/-- `∑[A137256(n)]-A137247(n)` -/
def P12090724533727102171.Spec : Prop :=
  ∀ n, P12090724533727102171.a n = A140498 n

end A140498

/-! ## A140498.P12320515763508274778

`2*A137256(n)-A052101(n)`
-/

namespace A140498.P12320515763508274778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A137256 n - A052101 n

end

end A140498.P12320515763508274778

namespace A140498

/-- `2*A137256(n)-A052101(n)` -/
def P12320515763508274778.Spec : Prop :=
  ∀ n, P12320515763508274778.a n = A140498 n

end A140498

/-! ## A140498.P11643023735600910004

`A052101(n)+Δ[A052101(n+1)]`
-/

namespace A140498.P11643023735600910004
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052101 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052101 n + (f1 (n + 1) - f1 n)

end

end A140498.P11643023735600910004

namespace A140498

/-- `A052101(n)+Δ[A052101(n+1)]` -/
def P11643023735600910004.Spec : Prop :=
  ∀ n, P11643023735600910004.a n = A140498 n

end A140498

/-! ## A140498.P15660239835840483763

`A137256(n+1)+A052102(n)-A137256(n)`
-/

namespace A140498.P15660239835840483763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137256 (n + 1) + (A052102 n - A137256 n)

end

end A140498.P15660239835840483763

namespace A140498

/-- `A137256(n+1)+A052102(n)-A137256(n)` -/
def P15660239835840483763.Spec : Prop :=
  ∀ n, P15660239835840483763.a n = A140498 n

end A140498

/-! ## A140498.P4000227152871992215

`Δ[Δ[A137256(n)]]`
-/

namespace A140498.P4000227152871992215
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137256 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A140498.P4000227152871992215

namespace A140498

/-- `Δ[Δ[A137256(n)]]` -/
def P4000227152871992215.Spec : Prop :=
  ∀ n, P4000227152871992215.a n = A140498 n

end A140498

/-! ## A140498.P18311850837554747145

`A052101(n+3)/3`
-/

namespace A140498.P18311850837554747145
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A052101 (n + 3) : ℚ) / 3

end

end A140498.P18311850837554747145

namespace A140498

/-- `A052101(n+3)/3` -/
def P18311850837554747145.Spec : Prop :=
  ∀ n, P18311850837554747145.a n = (A140498 n : ℚ)

end A140498

/-! ## A140498.P13697327208688014196

`Δ[A052102(n+3)/3]`
-/

namespace A140498.P13697327208688014196
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A052102 (n + 3) : ℚ) / 3

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A140498.P13697327208688014196

namespace A140498

/-- `Δ[A052102(n+3)/3]` -/
def P13697327208688014196.Spec : Prop :=
  ∀ n, P13697327208688014196.a n = (A140498 n : ℚ)

end A140498

/-!
# A140499: a(n) = p^2 - sum of digits of p^p, where p = prime(n).

The programs for A140499, there is no canonical definition to state claims against.
-/

/-! ## A140499.P11341255538658938129

`A000290(p?[n%3+n])-A066588(p?[n%3+n])`
-/

namespace A140499.P11341255538658938129
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n % 3 + n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n % 3 + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)) - A066588 (f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n))

end

end A140499.P11341255538658938129

/-! ## A140499.P9843874767679143093

`A001248(n+1)-A066588(A000040(n+1))`
-/

namespace A140499.P9843874767679143093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001248 (n + 1) - A066588 (A000040 (n + 1)).toNat

end

end A140499.P9843874767679143093

/-! ## A140499.P6463969036992370251

`A000040(n+1)²-A066588(Δ[A007504(n)])`
-/

namespace A140499.P6463969036992370251
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) ^ 2 - A066588 (f1 (n + 1) - f1 n).toNat

end

end A140499.P6463969036992370251

/-! ## A140499.P3222236122321944220

`A000040(n+1)²-A066588(p?[A064429(n)])`
-/

namespace A140499.P3222236122321944220
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064429 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) ^ 2 - A066588 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A140499.P3222236122321944220

/-! ## A140499.P11733867422569085625

`A000040(n+1)²-A066588(p?[A090223(n)])`
-/

namespace A140499.P11733867422569085625
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090223 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) ^ 2 - A066588 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A140499.P11733867422569085625

/-! ## A140499.P15581515954365135838

`A000040(n+1)²-A066588(p?[A209259(n)])`
-/

namespace A140499.P15581515954365135838
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209259 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) ^ 2 - A066588 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A140499.P15581515954365135838

/-! ## A140499.P1523244917118117122

`A001248(n+1)-A066588(sqrt(A001248(n+1)))`
-/

namespace A140499.P1523244917118117122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001248 (n + 1) - A066588 (SequenceMachineLib.roundAway (Real.sqrt (A001248 (n + 1) : ℝ))).toNat

end

end A140499.P1523244917118117122

/-! ## A140499.P13850135710498967646

`A209259(2*n+1)²-A066588(A209259(2*n+1))`
-/

namespace A140499.P13850135710498967646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209259 (2 * n + 1) ^ 2 - A066588 (A209259 (2 * n + 1)).toNat

end

end A140499.P13850135710498967646

/-! ## A140499.P9529853172799438658

`A000040(n+1)²-A066588(p?[A057979(n)])`
-/

namespace A140499.P9529853172799438658
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057979 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) ^ 2 - A066588 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A140499.P9529853172799438658

