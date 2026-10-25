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
import Seq.B001.C007
import Seq.B002.C000
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C005
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B004.C000
import Seq.B004.C002
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
import Seq.B007.C001
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
# A192101: Least number requiring n terms to express it as a sum of signed terms of the form 2^k-1.

The programs for A192101, there is no canonical definition to state claims against.
-/

/-! ## A192101.P17390645731775723946

`∑[A053644(round(5^(n-1))+1)]-n`
-/

namespace A192101.P17390645731775723946
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053644 (SequenceMachineLib.roundAway ((5 : ℚ) ^ ((n : ℤ) - 1 : ℤ)) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ)

end

end A192101.P17390645731775723946

/-! ## A192101.P2176826289421769818

`∑[A003817(A000828(n))]`
-/

namespace A192101.P2176826289421769818
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003817 (A000828 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A192101.P2176826289421769818

/-! ## A192101.P8950287944292918287

`∑[A003817(A004211(n))]`
-/

namespace A192101.P8950287944292918287
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003817 (A004211 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A192101.P8950287944292918287

/-!
# A192102: Number of distinct (unordered) pairs of partitions of a 9-element set that have Rand distance n.

The programs for A192102, there is no canonical definition to state claims against.
-/

/-! ## A192102.P17814049826276900888

`A192100(n+85)`
-/

namespace A192102.P17814049826276900888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192100 (n + 85)

end

end A192102.P17814049826276900888

/-!
# A192103: Number of distinct (unordered) pairs of partitions of a 10-element set that have Rand distance n.

The programs for A192103, there is no canonical definition to state claims against.
-/

/-! ## A192103.P11311617447465226878

`A192100(∑[A010194(∑[n])²])`
-/

namespace A192103.P11311617447465226878
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010194 (∑ j ∈ Finset.range (n + 1), f2 j) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192100 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A192103.P11311617447465226878

/-!
# A192107: Sum of all the n-digit numbers whose digits are all odd.

The programs for A192107, the canonical program `A192107.P3477325576336312519` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A192107 has offset 1).

The definition of A192107 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A192107.P3477325576336312519

`(10^(n+1)-1)*5^(n+2)/9`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A192107

/-- `(10^(n+1)-1)*5^(n+2)/9` -/
def P3477325576336312519.Spec : Prop :=
  ∀ n, P3477325576336312519.a n = (A192107 (n + 1) : ℚ)

end A192107

/-! ## A192107.P987523566435830739

`lcm(5^(n+2), ∑[10^n])`
-/

namespace A192107.P987523566435830739
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10 ^ n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm (5 ^ (n + 2)) (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A192107.P987523566435830739

namespace A192107

/-- `lcm(5^(n+2), ∑[10^n])` -/
def P987523566435830739.Spec : Prop :=
  ∀ n, (P987523566435830739.a n : ℤ) = A192107 (n + 1)

end A192107

/-! ## A192107.P15728033610274749531

`Δ[lcm(25, ∑[5^(n-1)*floor(10^n/9)])]`
-/

namespace A192107.P15728033610274749531
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (5 : ℚ) ^ ((n : ℤ) - 1 : ℤ) * (⌊(10 ^ n : ℚ) / 9⌋ : ℚ)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 25 (SequenceMachineLib.roundAway (∑ j ∈ Finset.range (n + 1), f2 j))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A192107.P15728033610274749531

namespace A192107

/-- `Δ[lcm(25, ∑[5^(n-1)*floor(10^n/9)])]` -/
def P15728033610274749531.Spec : Prop :=
  ∀ n, P15728033610274749531.a n = A192107 (n + 1)

end A192107

/-! ## A192107.P8511504254565243901

`Δ[25*A328352(n)]`
-/

namespace A192107.P8511504254565243901
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  25 * A328352 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A192107.P8511504254565243901

namespace A192107

/-- `Δ[25*A328352(n)]` -/
def P8511504254565243901.Spec : Prop :=
  ∀ n, P8511504254565243901.a n = A192107 (n + 1)

end A192107

/-! ## A192107.P8844957183443374199

`record[A256077(n+1)*A256135(2*n+3)]`
-/

namespace A192107.P8844957183443374199
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256077 (n + 1) * A256135 (2 * n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A192107.P8844957183443374199

namespace A192107

/-- `record[A256077(n+1)*A256135(2*n+3)]` -/
def P8844957183443374199.Spec : Prop :=
  ∀ n, P8844957183443374199.a n = A192107 (n + 1)

end A192107

/-!
# A192109: Numbers k that divide 2^(k-1) - 2.

The programs for A192109, the canonical program `A192109.P6844866890329182812` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A192109 has offset 1).

The definition of A192109 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5247 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A192109.P6844866890329182812

`record[gcd(n+1, 2-A062173(n+1))]`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A192109

/-- `record[gcd(n+1, 2-A062173(n+1))]` -/
def P6844866890329182812.Spec : Prop :=
  ∀ n, (P6844866890329182812.a n : ℤ) = A192109 (n + 1)

theorem P6844866890329182812.correct : P6844866890329182812.Spec := by
  intro n
  simp only [A192109, Nat.add_sub_cancel]

end A192109

/-! ## A192109.P15567187541293951624

`filter[A015921(n+1), A008966(#)]`
-/

namespace A192109.P15567187541293951624
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015921 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A008966 (f1 j).toNat = 1) n)

end

end A192109.P15567187541293951624

namespace A192109

/-- `filter[A015921(n+1), A008966(#)]` -/
def P15567187541293951624.Spec : Prop :=
  ∀ n, P15567187541293951624.a n = A192109 (n + 1)

end A192109

/-! ## A192109.P9755551256354093500

`filter[A015921(n+1), A359374(#)]`
-/

namespace A192109.P9755551256354093500
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015921 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359374 (f1 j).toNat = 1) n)

end

end A192109.P9755551256354093500

namespace A192109

/-- `filter[A015921(n+1), A359374(#)]` -/
def P9755551256354093500.Spec : Prop :=
  ∀ n, P9755551256354093500.a n = A192109 (n + 1)

end A192109

/-! ## A192109.P15190976551195890291

`filter[A015921(n+1), A359473(#)]`
-/

namespace A192109.P15190976551195890291
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015921 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359473 (f1 j).toNat = 1) n)

end

end A192109.P15190976551195890291

namespace A192109

/-- `filter[A015921(n+1), A359473(#)]` -/
def P15190976551195890291.Spec : Prop :=
  ∀ n, P15190976551195890291.a n = A192109 (n + 1)

end A192109

/-! ## A192109.P18232609991275825174

`filter[A015921(n+1), A359550(#)]`
-/

namespace A192109.P18232609991275825174
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015921 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359550 (f1 j).toNat = 1) n)

end

end A192109.P18232609991275825174

namespace A192109

/-- `filter[A015921(n+1), A359550(#)]` -/
def P18232609991275825174.Spec : Prop :=
  ∀ n, P18232609991275825174.a n = A192109 (n + 1)

end A192109

/-! ## A192109.P4878488262219354712

`filter[A015921(n+1), A359832(#)]`
-/

namespace A192109.P4878488262219354712
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015921 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359832 (f1 j).toNat = 1) n)

end

end A192109.P4878488262219354712

namespace A192109

/-- `filter[A015921(n+1), A359832(#)]` -/
def P4878488262219354712.Spec : Prop :=
  ∀ n, P4878488262219354712.a n = A192109 (n + 1)

end A192109

/-! ## A192109.P606030269301471826

`filter[A015921(n+1), A371087(#)]`
-/

namespace A192109.P606030269301471826
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015921 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A371087 (f1 j).toNat = 1) n)

end

end A192109.P606030269301471826

namespace A192109

/-- `filter[A015921(n+1), A371087(#)]` -/
def P606030269301471826.Spec : Prop :=
  ∀ n, P606030269301471826.a n = A192109 (n + 1)

end A192109

/-! ## A192109.P5727371983997159825

`∩[A005117(n+1), A015921(n+1)]`
-/

namespace A192109.P5727371983997159825
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005117 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015921 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A192109.P5727371983997159825

namespace A192109

/-- `∩[A005117(n+1), A015921(n+1)]` -/
def P5727371983997159825.Spec : Prop :=
  ∀ n, (P5727371983997159825.a n : ℤ) = A192109 (n + 1)

end A192109

/-! ## A192109.P13541766049117717203

`filter[A015921(n+1), A105597(#)]`
-/

namespace A192109.P13541766049117717203
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015921 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A105597 (f1 j).toNat = 1) n)

end

end A192109.P13541766049117717203

namespace A192109

/-- `filter[A015921(n+1), A105597(#)]` -/
def P13541766049117717203.Spec : Prop :=
  ∀ n, P13541766049117717203.a n = A192109 (n + 1)

end A192109

/-! ## A192109.P7427209003586099973

`filter[A015921(n+1), A166486(#)]`
-/

namespace A192109.P7427209003586099973
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015921 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A166486 (f1 j).toNat = 1) n)

end

end A192109.P7427209003586099973

namespace A192109

/-- `filter[A015921(n+1), A166486(#)]` -/
def P7427209003586099973.Spec : Prop :=
  ∀ n, P7427209003586099973.a n = A192109 (n + 1)

end A192109

/-! ## A192109.P6962201876278152810

`filter[A015921(n+1), A181183(#)]`
-/

namespace A192109.P6962201876278152810
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015921 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A181183 (f1 j).toNat = 1) n)

end

end A192109.P6962201876278152810

namespace A192109

/-- `filter[A015921(n+1), A181183(#)]` -/
def P6962201876278152810.Spec : Prop :=
  ∀ n, P6962201876278152810.a n = A192109 (n + 1)

end A192109

/-! ## A192109.P12261154450883794142

`filter[A015921(n+1), A295316(#)]`
-/

namespace A192109.P12261154450883794142
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015921 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A295316 (f1 j).toNat = 1) n)

end

end A192109.P12261154450883794142

namespace A192109

/-- `filter[A015921(n+1), A295316(#)]` -/
def P12261154450883794142.Spec : Prop :=
  ∀ n, P12261154450883794142.a n = A192109 (n + 1)

end A192109

/-! ## A192109.P18209155865771917187

`filter[A015921(n+1), A323154(#)]`
-/

namespace A192109.P18209155865771917187
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015921 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323154 (f1 j).toNat = 1) n)

end

end A192109.P18209155865771917187

namespace A192109

/-- `filter[A015921(n+1), A323154(#)]` -/
def P18209155865771917187.Spec : Prop :=
  ∀ n, P18209155865771917187.a n = A192109 (n + 1)

end A192109

/-! ## A192109.P13843828257091828324

`filter[A015921(n+1), A353519(#)]`
-/

namespace A192109.P13843828257091828324
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015921 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353519 (f1 j).toNat = 1) n)

end

end A192109.P13843828257091828324

namespace A192109

/-- `filter[A015921(n+1), A353519(#)]` -/
def P13843828257091828324.Spec : Prop :=
  ∀ n, P13843828257091828324.a n = A192109 (n + 1)

end A192109

/-! ## A192109.P16216518743625354644

`filter[A015921(n+1), A353559(#)]`
-/

namespace A192109.P16216518743625354644
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015921 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353559 (f1 j).toNat = 1) n)

end

end A192109.P16216518743625354644

namespace A192109

/-- `filter[A015921(n+1), A353559(#)]` -/
def P16216518743625354644.Spec : Prop :=
  ∀ n, P16216518743625354644.a n = A192109 (n + 1)

end A192109

/-! ## A192109.P12697722040444155272

`∩[A015921(n+1), A047396(n+1)]`
-/

namespace A192109.P12697722040444155272
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015921 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047396 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A192109.P12697722040444155272

namespace A192109

/-- `∩[A015921(n+1), A047396(n+1)]` -/
def P12697722040444155272.Spec : Prop :=
  ∀ n, (P12697722040444155272.a n : ℤ) = A192109 (n + 1)

end A192109

/-! ## A192109.P15884454140622848903

`∩[A015921(n+1), A080324(n+1)]`
-/

namespace A192109.P15884454140622848903
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015921 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080324 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A192109.P15884454140622848903

namespace A192109

/-- `∩[A015921(n+1), A080324(n+1)]` -/
def P15884454140622848903.Spec : Prop :=
  ∀ n, (P15884454140622848903.a n : ℤ) = A192109 (n + 1)

end A192109

/-! ## A192109.P14815240519937891803

`∩[A015921(n+1), A089269(n+1)]`
-/

namespace A192109.P14815240519937891803
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015921 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089269 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A192109.P14815240519937891803

namespace A192109

/-- `∩[A015921(n+1), A089269(n+1)]` -/
def P14815240519937891803.Spec : Prop :=
  ∀ n, (P14815240519937891803.a n : ℤ) = A192109 (n + 1)

end A192109

/-! ## A192109.P12490719262327600835

`∩[A015921(n+1), A053438(n)]`
-/

namespace A192109.P12490719262327600835
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015921 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053438 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A192109.P12490719262327600835

namespace A192109

/-- `∩[A015921(n+1), A053438(n)]` -/
def P12490719262327600835.Spec : Prop :=
  ∀ n, (P12490719262327600835.a n : ℤ) = A192109 (n + 1)

end A192109

/-! ## A192109.P10096324136621656323

`∩[A015921(n+1), A042963(n+1)]`
-/

namespace A192109.P10096324136621656323
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015921 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042963 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A192109.P10096324136621656323

namespace A192109

/-- `∩[A015921(n+1), A042963(n+1)]` -/
def P10096324136621656323.Spec : Prop :=
  ∀ n, (P10096324136621656323.a n : ℤ) = A192109 (n + 1)

end A192109

/-!
# A192110: Monotonic ordering of nonnegative differences 2^i - 3^j, for 40 >= i >= 0, j >= 0.

The programs for A192110, there is no canonical definition to state claims against.
-/

/-! ## A192110.P6326466675664671381

`comp[A328077(n+1)]`
-/

namespace A192110.P6326466675664671381
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328077 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A192110.P6326466675664671381

/-! ## A192110.P13984467320270197276

`lt[0, char[-A254027(n)]]`
-/

namespace A192110.P13984467320270197276
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A254027 n

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A192110.P13984467320270197276

/-! ## A192110.P12388717776405963664

`eq[1, char[-A254027(A060681(n+1))]]`
-/

namespace A192110.P12388717776405963664
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A254027 (A060681 (n + 1)).toNat

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A192110.P12388717776405963664

/-! ## A192110.P2463556612909985063

`eq[A000027(n+1)/(n+1), char[-A254027(n)]]`
-/

namespace A192110.P2463556612909985063
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000027 (n + 1) : ℚ) / (n + 1 : ℚ)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A254027 n

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (f2 j : ℚ)) n

end

end A192110.P2463556612909985063

/-! ## A192110.P4224719440141312300

`lt[char[A192111(n+2)], A128760(n)]`
-/

namespace A192110.P4224719440141312300
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192111 (n + 2)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128760 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f3 j) n

end

end A192110.P4224719440141312300

/-!
# A192111: Monotonic ordering of nonnegative differences 3^i-2^j, for i>=0, j>=0.

The programs for A192111, there is no canonical definition to state claims against.
-/

/-! ## A192111.P8717630886150983420

`comp[A173671(n+1)]`
-/

namespace A192111.P8717630886150983420
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173671 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A192111.P8717630886150983420

/-! ## A192111.P6902219156624514836

`eq[1, char[A227048(n)]]`
-/

namespace A192111.P6902219156624514836
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227048 n

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A192111.P6902219156624514836

/-! ## A192111.P3583286505410884469

`lt[0, A175832(n)]`
-/

namespace A192111.P3583286505410884469
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175832 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A192111.P3583286505410884469

/-! ## A192111.P5899417402495286300

`eq[1, A175832(round(acot(n)+n))]`
-/

namespace A192111.P5899417402495286300
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175832 (SequenceMachineLib.roundAway (SequenceMachineLib.acot (n : ℝ) + (n : ℝ))).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A192111.P5899417402495286300

/-! ## A192111.P11290131356725129890

`eq[A175832(n), A373565(n)]`
-/

namespace A192111.P11290131356725129890
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175832 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373565 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A192111.P11290131356725129890

/-!
# A192112: Monotonic ordering of nonnegative differences 2^i-4^j, for 40>=i>=0, j>=0.

The programs for A192112, the canonical program `A192112.P8461457790815633047` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A192112 has offset 1).

The definition of A192112 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 421 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A192112.P1886025634114721094

`record[A078446(or(2, n))-1]`
-/

namespace A192112.P1886025634114721094
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078446 (Nat.lor 2 n) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A192112.P1886025634114721094

namespace A192112

/-- `record[A078446(or(2, n))-1]` -/
def P1886025634114721094.Spec : Prop :=
  ∀ n, P1886025634114721094.a n = A192112 (n + 1)

end A192112

/-! ## A192112.P9016872088470718708

`record[A137688(n)-A262616(n)]`
-/

namespace A192112.P9016872088470718708
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137688 n - A262616 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A192112.P9016872088470718708

namespace A192112

/-- `record[A137688(n)-A262616(n)]` -/
def P9016872088470718708.Spec : Prop :=
  ∀ n, P9016872088470718708.a n = A192112 (n + 1)

end A192112

/-! ## A192112.P14055615062348726401

`A023758(A056847(n)+1+n)`
-/

namespace A192112.P14055615062348726401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023758 (A056847 n + 1 + (n : ℤ)).toNat

end

end A192112.P14055615062348726401

namespace A192112

/-- `A023758(A056847(n)+1+n)` -/
def P14055615062348726401.Spec : Prop :=
  ∀ n, P14055615062348726401.a n = A192112 (n + 1)

end A192112

/-! ## A192112.P8461457790815633047

`record[A137688(n)-A130321(n)²]`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A192112

/-- `record[A137688(n)-A130321(n)²]` -/
def P8461457790815633047.Spec : Prop :=
  ∀ n, P8461457790815633047.a n = A192112 (n + 1)

theorem P8461457790815633047.correct : P8461457790815633047.Spec := by
  intro n
  simp only [A192112, Nat.add_sub_cancel]

end A192112

/-! ## A192112.P5749791365974624033

`A023758(2*n+1-A000194(n))`
-/

namespace A192112.P5749791365974624033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023758 ((2 * n + 1 : ℤ) - A000194 n).toNat

end

end A192112.P5749791365974624033

namespace A192112

/-- `A023758(2*n+1-A000194(n))` -/
def P5749791365974624033.Spec : Prop :=
  ∀ n, P5749791365974624033.a n = A192112 (n + 1)

end A192112

/-! ## A192112.P16624776193371520566

`record[A130321(A057944(n))-A130321(n)²]`
-/

namespace A192112.P16624776193371520566
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130321 (A057944 n).toNat - A130321 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A192112.P16624776193371520566

namespace A192112

/-- `record[A130321(A057944(n))-A130321(n)²]` -/
def P16624776193371520566.Spec : Prop :=
  ∀ n, P16624776193371520566.a n = A192112 (n + 1)

end A192112

/-! ## A192112.P10943703259116950024

`∩[A023758(n+1), A060142(n)]`
-/

namespace A192112.P10943703259116950024
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023758 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060142 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A192112.P10943703259116950024

namespace A192112

/-- `∩[A023758(n+1), A060142(n)]` -/
def P10943703259116950024.Spec : Prop :=
  ∀ n, (P10943703259116950024.a n : ℤ) = A192112 (n + 1)

end A192112

/-! ## A192112.P3668101236174821048

`∩[A004745(n+1), A060142(n)]`
-/

namespace A192112.P3668101236174821048
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004745 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060142 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A192112.P3668101236174821048

namespace A192112

/-- `∩[A004745(n+1), A060142(n)]` -/
def P3668101236174821048.Spec : Prop :=
  ∀ n, (P3668101236174821048.a n : ℤ) = A192112 (n + 1)

end A192112

/-! ## A192112.P3627118388317235658

`filter[A060142(n), A340375(#)]`
-/

namespace A192112.P3627118388317235658
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060142 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A340375 (f1 j).toNat = 1) n)

end

end A192112.P3627118388317235658

namespace A192112

/-- `filter[A060142(n), A340375(#)]` -/
def P3627118388317235658.Spec : Prop :=
  ∀ n, P3627118388317235658.a n = A192112 (n + 1)

end A192112

/-!
# A192113: Monotonic ordering of nonnegative differences 4^i-2^j, for 40>=i>=0, j>=0.

The programs for A192113, the canonical program `A192113.P2947756502860701992` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A192113 has offset 1).

The definition of A192113 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1641 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A192113.P17529344477301056126

`record[A078446(2*(n+1))-1]`
-/

namespace A192113.P17529344477301056126
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078446 (2 * (n + 1)) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A192113.P17529344477301056126

namespace A192113

/-- `record[A078446(2*(n+1))-1]` -/
def P17529344477301056126.Spec : Prop :=
  ∀ n, P17529344477301056126.a n = A192113 (n + 1)

end A192113

/-! ## A192113.P11177269209580946242

`A023758(round(sqrt(n))²+n+1)`
-/

namespace A192113.P11177269209580946242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023758 (SequenceMachineLib.roundAway (Real.sqrt (n : ℝ)) ^ 2 + (n + 1 : ℤ)).toNat

end

end A192113.P11177269209580946242

namespace A192113

/-- `A023758(round(sqrt(n))²+n+1)` -/
def P11177269209580946242.Spec : Prop :=
  ∀ n, P11177269209580946242.a n = A192113 (n + 1)

end A192113

/-! ## A192113.P12649525103289293516

`record[(A078446(n+1)-1)/(-1)^(n+1)]`
-/

namespace A192113.P12649525103289293516
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A078446 (n + 1) - 1 : ℚ) / ((-1) ^ (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A192113.P12649525103289293516

namespace A192113

/-- `record[(A078446(n+1)-1)/(-1)^(n+1)]` -/
def P12649525103289293516.Spec : Prop :=
  ∀ n, P12649525103289293516.a n = (A192113 (n + 1) : ℚ)

end A192113

/-! ## A192113.P15654633539101020956

`record[A003056(n)%2*A023758(n+2)]`
-/

namespace A192113.P15654633539101020956
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A003056 n) 2 * A023758 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A192113.P15654633539101020956

namespace A192113

/-- `record[A003056(n)%2*A023758(n+2)]` -/
def P15654633539101020956.Spec : Prop :=
  ∀ n, P15654633539101020956.a n = A192113 (n + 1)

end A192113

/-! ## A192113.P2947756502860701992

`record[A122803(A003056(n))-A130321(n)]`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A192113

/-- `record[A122803(A003056(n))-A130321(n)]` -/
def P2947756502860701992.Spec : Prop :=
  ∀ n, P2947756502860701992.a n = A192113 (n + 1)

theorem P2947756502860701992.correct : P2947756502860701992.Spec := by
  intro n
  simp only [A192113, Nat.add_sub_cancel]

end A192113

/-! ## A192113.P5823663342934028213

`A008836(A171637(n+2))+record[A078446(2*(n+1))]`
-/

namespace A192113.P5823663342934028213
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078446 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008836 (A171637 (n + 2)).toNat + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A192113.P5823663342934028213

namespace A192113

/-- `A008836(A171637(n+2))+record[A078446(2*(n+1))]` -/
def P5823663342934028213.Spec : Prop :=
  ∀ n, P5823663342934028213.a n = A192113 (n + 1)

end A192113

/-! ## A192113.P4159104772589235588

`∩[A023709(n+1), A023758(n+1)]`
-/

namespace A192113.P4159104772589235588
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023709 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023758 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A192113.P4159104772589235588

namespace A192113

/-- `∩[A023709(n+1), A023758(n+1)]` -/
def P4159104772589235588.Spec : Prop :=
  ∀ n, (P4159104772589235588.a n : ℤ) = A192113 (n + 1)

end A192113

/-! ## A192113.P2845322803024027609

`filter[A023709(n+1), A340375(#)]`
-/

namespace A192113.P2845322803024027609
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023709 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A340375 (f1 j).toNat = 1) n)

end

end A192113.P2845322803024027609

namespace A192113

/-- `filter[A023709(n+1), A340375(#)]` -/
def P2845322803024027609.Spec : Prop :=
  ∀ n, P2845322803024027609.a n = A192113 (n + 1)

end A192113

/-! ## A192113.P7996005166034448729

`record[A008833(A137688(n))-A130321(n)]`
-/

namespace A192113.P7996005166034448729
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008833 (A137688 n).toNat - A130321 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A192113.P7996005166034448729

namespace A192113

/-- `record[A008833(A137688(n))-A130321(n)]` -/
def P7996005166034448729.Spec : Prop :=
  ∀ n, P7996005166034448729.a n = A192113 (n + 1)

end A192113

/-! ## A192113.P6752655697622828877

`eq[A124772(n), A374646(n)]`
-/

namespace A192113.P6752655697622828877
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124772 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374646 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A192113.P6752655697622828877

namespace A192113

/-- `eq[A124772(n), A374646(n)]` -/
def P6752655697622828877.Spec : Prop :=
  ∀ n, (P6752655697622828877.a n : ℤ) = A192113 (n + 1)

end A192113

/-!
# A192114: Monotonic ordering of nonnegative differences 2^i-5^j, for 40>=i>=0, j>=0.

The programs for A192114, there is no canonical definition to state claims against.
-/

/-! ## A192114.P911145042652556455

`record[A137688(n)-A003961(A140303(n))]`
-/

namespace A192114.P911145042652556455
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137688 n - A003961 (A140303 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A192114.P911145042652556455

/-! ## A192114.P8069337146037014422

`eq[A124758(n), A176469(A080940(n+1))]`
-/

namespace A192114.P8069337146037014422
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124758 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176469 (A080940 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A192114.P8069337146037014422

/-! ## A192114.P2913514493580624118

`eq[(n+1)/2^val(n+1, 2), A167204(n+1)]`
-/

namespace A192114.P2913514493580624118
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (2 ^ SequenceMachineLib.valuation (n + 1) 2 : ℚ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167204 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (f2 j : ℚ)) n

end

end A192114.P2913514493580624118

/-! ## A192114.P9076376688977993597

`eq[floor(n/(xor(n, n+1)+1))+1, A167204(n+2)]`
-/

namespace A192114.P9076376688977993597
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℚ) / (Nat.xor n (n + 1) + 1 : ℚ)⌋ + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167204 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A192114.P9076376688977993597

/-! ## A192114.P1159737082797099875

`eq[A000265(n+1), A167204(n+1)]`
-/

namespace A192114.P1159737082797099875
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167204 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A192114.P1159737082797099875

/-!
# A192116: Monotonic ordering of nonnegative differences 2^i-6^j, for 40>=i>=0, j>=0.

The programs for A192116, there is no canonical definition to state claims against.
-/

/-! ## A192116.P15495671782238466069

`eq[A033273(A027642(n)), A336395(n+1)]`
-/

namespace A192116.P15495671782238466069
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033273 (A027642 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336395 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A192116.P15495671782238466069

/-! ## A192116.P3833649908789191995

`eq[A080100(n), A308698(A209268(n+1))]`
-/

namespace A192116.P3833649908789191995
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080100 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308698 (A209268 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A192116.P3833649908789191995

/-! ## A192116.P1607888655739307477

`lt[A335097(n+1), A000055(A037271(n+1))]`
-/

namespace A192116.P1607888655739307477
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335097 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000055 (A037271 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A192116.P1607888655739307477

/-! ## A192116.P10201835748203984900

`lt[A329361(A085310(n+1)), A078356(n+3)]`
-/

namespace A192116.P10201835748203984900
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329361 (A085310 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078356 (n + 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A192116.P10201835748203984900

/-! ## A192116.P12063435414249204503

`eq[A070432(A333219(3*n+5)), A124763(3*(n+1))]`
-/

namespace A192116.P12063435414249204503
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070432 (A333219 (3 * n + 5)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124763 (3 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A192116.P12063435414249204503

/-!
# A192117: Monotonic ordering of nonnegative differences 6^i-2^j, for 40>=i>=0, j>=0.

The programs for A192117, there is no canonical definition to state claims against.
-/

/-! ## A192117.P15174160266524869356

`record[A254730(2*n+1)-A130321(n)]`
-/

namespace A192117.P15174160266524869356
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254730 (2 * n + 1) - A130321 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A192117.P15174160266524869356

/-! ## A192117.P14712153735306872125

`record[A254730(2*n+1)-A057728(n+2)]`
-/

namespace A192117.P14712153735306872125
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254730 (2 * n + 1) - A057728 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A192117.P14712153735306872125

/-! ## A192117.P12152733554572662279

`record[A254730(2*n+1)-A078446(2*n+1)]`
-/

namespace A192117.P12152733554572662279
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254730 (2 * n + 1) - A078446 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A192117.P12152733554572662279

/-!
# A192118: Monotonic ordering of nonnegative differences 2^i-7^j, for 40>=i>=0, j>=0.

The programs for A192118, there is no canonical definition to state claims against.
-/

/-! ## A192118.P1738004376311612897

`A180199(A192120(n+1))`
-/

namespace A192118.P1738004376311612897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180199 (A192120 (n + 1)).toNat

end

end A192118.P1738004376311612897

/-! ## A192118.P11222785769441150648

`eq[n-and(n, 2*n), A333766(n)²]`
-/

namespace A192118.P11222785769441150648
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (Nat.land n (2 * n) : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333766 n ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A192118.P11222785769441150648

/-! ## A192118.P1435819746844983424

`eq[1, A098282(A120769(n))]`
-/

namespace A192118.P1435819746844983424
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098282 (A120769 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A192118.P1435819746844983424

/-! ## A192118.P17147337785702777401

`eq[1, A231429(A038554(n))]`
-/

namespace A192118.P17147337785702777401
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231429 (A038554 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A192118.P17147337785702777401

/-! ## A192118.P1056596006531175488

`eq[1, A337547(A038556(n))]`
-/

namespace A192118.P1056596006531175488
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337547 (A038556 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A192118.P1056596006531175488

/-!
# A192120: Monotonic ordering of nonnegative differences 2^i - 8^j, for 40 >=i >= 0, j >= 0.

The programs for A192120, the canonical program `A192120.P16297704775261001352` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A192120 has offset 1).

The definition of A192120 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 288 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A192120.P18439792225472927862

`record[and(A023758(n+1)^3, A023758(n+1))]`
-/

namespace A192120.P18439792225472927862
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A023758 (n + 1) ^ 3) (A023758 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A192120.P18439792225472927862

namespace A192120

/-- `record[and(A023758(n+1)^3, A023758(n+1))]` -/
def P18439792225472927862.Spec : Prop :=
  ∀ n, P18439792225472927862.a n = A192120 (n + 1)

end A192120

/-! ## A192120.P16297704775261001352

`record[A137688(n)-A001018(A025581(n))]`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A192120

/-- `record[A137688(n)-A001018(A025581(n))]` -/
def P16297704775261001352.Spec : Prop :=
  ∀ n, P16297704775261001352.a n = A192120 (n + 1)

theorem P16297704775261001352.correct : P16297704775261001352.Spec := by
  intro n
  simp only [A192120, Nat.add_sub_cancel]

end A192120

/-! ## A192120.P13125835492440914158

`record[A137688(n)-A305561(A099375(n))]`
-/

namespace A192120.P13125835492440914158
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137688 n - A305561 (A099375 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A192120.P13125835492440914158

namespace A192120

/-- `record[A137688(n)-A305561(A099375(n))]` -/
def P13125835492440914158.Spec : Prop :=
  ∀ n, P13125835492440914158.a n = A192120 (n + 1)

end A192120

/-! ## A192120.P11000129188151775344

`record[A137688(n)-A130321(n)²*A130321(n)]`
-/

namespace A192120.P11000129188151775344
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137688 n - A130321 n ^ 2 * A130321 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A192120.P11000129188151775344

namespace A192120

/-- `record[A137688(n)-A130321(n)²*A130321(n)]` -/
def P11000129188151775344.Spec : Prop :=
  ∀ n, P11000129188151775344.a n = A192120 (n + 1)

end A192120

/-! ## A192120.P5403019711865760562

`eq[A319656(n), A385816(n)]`
-/

namespace A192120.P5403019711865760562
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319656 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385816 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A192120.P5403019711865760562

namespace A192120

/-- `eq[A319656(n), A385816(n)]` -/
def P5403019711865760562.Spec : Prop :=
  ∀ n, (P5403019711865760562.a n : ℤ) = A192120 (n + 1)

end A192120

/-!
# A192121: Monotonic ordering of nonnegative differences 8^i - 2^j, for 40 >= i >= 0, j >= 0.

The programs for A192121, there is no canonical definition to state claims against.
-/

/-! ## A192121.P9109504730949316308

`eq[1, A010057(A213064(n))]`
-/

namespace A192121.P9109504730949316308
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010057 (A213064 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A192121.P9109504730949316308

/-! ## A192121.P1475561031736687376

`eq[A230629(n), A265397(n)]`
-/

namespace A192121.P1475561031736687376
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230629 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265397 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A192121.P1475561031736687376

/-! ## A192121.P16693727169792537278

`eq[A230629(n), A283979(n)]`
-/

namespace A192121.P16693727169792537278
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230629 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283979 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A192121.P16693727169792537278

/-! ## A192121.P2460755974842193048

`eq[A030107(A213064(n)), A057427(n)]`
-/

namespace A192121.P2460755974842193048
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030107 (A213064 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A192121.P2460755974842193048

/-! ## A192121.P4867678889570710471

`record[A010057(A213064(n))*A057889(n)]`
-/

namespace A192121.P4867678889570710471
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010057 (A213064 n).toNat * A057889 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A192121.P4867678889570710471

/-!
# A192122: Monotonic ordering of nonnegative differences 2^i-9^j, for 40>=i>=0, j>=0.

The programs for A192122, there is no canonical definition to state claims against.
-/

/-! ## A192122.P4593496596943783466

`∩[A047530(n+1), A192110(n+1)]`
-/

namespace A192122.P4593496596943783466
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047530 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192110 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A192122.P4593496596943783466

/-! ## A192122.P4552439701967822433

`∩[A047534(n+1), A192110(n+1)]`
-/

namespace A192122.P4552439701967822433
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047534 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192110 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A192122.P4552439701967822433

/-! ## A192122.P9703777118895856362

`∩[A047545(n+1), A192110(n+1)]`
-/

namespace A192122.P9703777118895856362
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047545 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192110 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A192122.P9703777118895856362

/-! ## A192122.P2167580804079160987

`∩[A047559(n+1), A192110(n+1)]`
-/

namespace A192122.P2167580804079160987
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047559 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192110 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A192122.P2167580804079160987

/-! ## A192122.P10345198965877737479

`∩[A004776(n+1), A192110(n+1)]`
-/

namespace A192122.P10345198965877737479
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004776 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192110 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A192122.P10345198965877737479

/-!
# A192124: Monotonic ordering of nonnegative differences 2^i-10^j, for 40>= i>=0, j>=0.

The programs for A192124, there is no canonical definition to state claims against.
-/

/-! ## A192124.P7123178106545241015

`lt[A129760(n+1), A112798(A141214(n))]`
-/

namespace A192124.P7123178106545241015
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129760 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112798 (A141214 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A192124.P7123178106545241015

/-! ## A192124.P4962744895015454043

`lt[A344768(n+1), A020639(A232441(n+4))]`
-/

namespace A192124.P4962744895015454043
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344768 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A232441 (n + 4)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A192124.P4962744895015454043

/-! ## A192124.P8056129876963901177

`eq[A020987(A005563(3*n+2)), A316314(n+1)]`
-/

namespace A192124.P8056129876963901177
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020987 (A005563 (3 * n + 2)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316314 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A192124.P8056129876963901177

/-!
# A192125: Monotonic ordering of nonnegative differences 10^i-2^j, for 40>= i>=0, j>=0.

The programs for A192125, there is no canonical definition to state claims against.
-/

/-! ## A192125.P14295933109305296315

`eq[n, n*A036987(A061601(n))]`
-/

namespace A192125.P14295933109305296315
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A036987 (A061601 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A192125.P14295933109305296315

/-! ## A192125.P15201460129477045656

`eq[A000038(n), A025480(A061601(n))]`
-/

namespace A192125.P15201460129477045656
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025480 (A061601 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A192125.P15201460129477045656

/-! ## A192125.P10235086716031239510

`eq[A000007(n), A048881(A061601(n))]`
-/

namespace A192125.P10235086716031239510
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048881 (A061601 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A192125.P10235086716031239510

/-! ## A192125.P2003339184391282490

`eq[A036987(A061601(n)), A057427(n)]`
-/

namespace A192125.P2003339184391282490
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036987 (A061601 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A192125.P2003339184391282490

/-! ## A192125.P5509920120655363731

`eq[A043529(A061601(n)), A054977(n)]`
-/

namespace A192125.P5509920120655363731
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043529 (A061601 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054977 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A192125.P5509920120655363731

/-!
# A192126: Number of set partitions of {1, ..., n} that avoid 5-nestings.

The programs for A192126, there is no canonical definition to state claims against.
-/

/-! ## A192126.P15087295258601342700

`A000110(n)-A327356(A009714(n))`
-/

namespace A192126.P15087295258601342700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000110 n - A327356 (A009714 n).toNat

end

end A192126.P15087295258601342700

/-! ## A192126.P4175528905878158330

`A192127(n)-A327356(A009714(n))`
-/

namespace A192126.P4175528905878158330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192127 n - A327356 (A009714 n).toNat

end

end A192126.P4175528905878158330

/-! ## A192126.P3805626912256046309

`A287260(n)-A327356(A009714(n))`
-/

namespace A192126.P3805626912256046309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287260 n - A327356 (A009714 n).toNat

end

end A192126.P3805626912256046309

/-! ## A192126.P9828912417093798667

`A287672(n)-A327356(A009714(n))`
-/

namespace A192126.P9828912417093798667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287672 n - A327356 (A009714 n).toNat

end

end A192126.P9828912417093798667

/-!
# A192128: Number of set partitions of {1, ..., n} that avoid 7-nestings.

The programs for A192128, there is no canonical definition to state claims against.
-/

/-! ## A192128.P16477605868324370975

`A203643(A109151(n)+n)`
-/

namespace A192128.P16477605868324370975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203643 (A109151 n + (n : ℤ)).toNat

end

end A192128.P16477605868324370975

/-! ## A192128.P13379554806764382488

`A050315(2^n-1)-A332640(n)`
-/

namespace A192128.P13379554806764382488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050315 (2 ^ n - 1) - A332640 n

end

end A192128.P13379554806764382488

/-! ## A192128.P11730826656783801291

`A000110(n)-val(A274206(ceil(12^(n/4))), 6)`
-/

namespace A192128.P11730826656783801291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000110 n - (SequenceMachineLib.valuation (A274206 ⌈(12 : ℝ) ^ ((n : ℚ) / 4 : ℝ)⌉.toNat).toNat 6 : ℤ)

end

end A192128.P11730826656783801291

/-! ## A192128.P5038932540412034186

`A000110(n)-∑{digits}[A217753(n+3)^3, C(#, 9)]`
-/

namespace A192128.P5038932540412034186
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217753 (n + 3) ^ 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000110 n - ((((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => Nat.choose x 9).sum : ℕ) : ℤ)

end

end A192128.P5038932540412034186

/-! ## A192128.P16774583194375334579

`A000110(n)-A085974(A011782(n))`
-/

namespace A192128.P16774583194375334579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000110 n - A085974 (A011782 n).toNat

end

end A192128.P16774583194375334579

/-!
# A192131: G.f. satisfies: A(x) = exp( Sum_{n>=1} (Sum_{k=0..n} C(n,k)^3*A(x)^k) * x^n/n ).

The programs for A192131, there is no canonical definition to state claims against.
-/

/-! ## A192131.P14074130996683489244

`A379209(n)+A185236(A066178(n))`
-/

namespace A192131.P14074130996683489244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379209 n + A185236 (A066178 n).toNat

end

end A192131.P14074130996683489244

/-! ## A192131.P1398594615189152445

`A379209(n)+A138789(A373526(n))`
-/

namespace A192131.P1398594615189152445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379209 n + A138789 (A373526 n).toNat

end

end A192131.P1398594615189152445

/-!
# A192132: G.f. satisfies: A(x) = 1 + x*A(x)^3 + x*(A(x) - 1)^3.

The programs for A192132, there is no canonical definition to state claims against.
-/

/-! ## A192132.P7437962063317298448

`A349514(n)/Δ[A095121(n)]`
-/

namespace A192132.P7437962063317298448
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095121 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A349514 n : ℚ) / (f1 (n + 1) - f1 n : ℚ)

end

end A192132.P7437962063317298448

/-! ## A192132.P14453165909209457971

`A349514(n)/record[A143095(n)]`
-/

namespace A192132.P14453165909209457971
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143095 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A349514 n : ℚ) / (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℚ)

end

end A192132.P14453165909209457971

/-! ## A192132.P14497178815241583882

`A349514(n)/A151821(n+1)`
-/

namespace A192132.P14497178815241583882
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A349514 n : ℚ) / (A151821 (n + 1) : ℚ)

end

end A192132.P14497178815241583882

/-! ## A192132.P15097553558903514347

`A349514(n)/A000079(A087156(n+1))`
-/

namespace A192132.P15097553558903514347
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A349514 n : ℚ) / (A000079 (A087156 (n + 1)).toNat : ℚ)

end

end A192132.P15097553558903514347

/-! ## A192132.P17153375226874363224

`A061347(A368546(n))*A179486(n+1)`
-/

namespace A192132.P17153375226874363224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061347 (A368546 n).toNat * A179486 (n + 1)

end

end A192132.P17153375226874363224

/-!
# A192133: Difference of base and exponent of prime powers (cf. A000961).

The programs for A192133, the canonical program `A192133.P10741399618334184473` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A192133 has offset 1).

The definition of A192133 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A025473, A025474, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A192133.P10741399618334184473

`A025473(n+1)-A025474(n+1)`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A192133

/-- `A025473(n+1)-A025474(n+1)` -/
def P10741399618334184473.Spec : Prop :=
  ∀ n, P10741399618334184473.a n = A192133 (n + 1)

theorem P10741399618334184473.correct : P10741399618334184473.Spec := by
  intro n
  simp only [A192133, Nat.add_sub_cancel]

end A192133

/-! ## A192133.P17596638793093942918

`A192134(n+1)*A025473(n+1)/A000961(n+1)`
-/

namespace A192133.P17596638793093942918
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A192134 (n + 1) * A025473 (n + 1) : ℚ) / (A000961 (n + 1) : ℚ)

end

end A192133.P17596638793093942918

namespace A192133

/-- `A192134(n+1)*A025473(n+1)/A000961(n+1)` -/
def P17596638793093942918.Spec : Prop :=
  ∀ n, P17596638793093942918.a n = (A192133 (n + 1) : ℚ)

end A192133

/-! ## A192133.P3111404056404365972

`A025473(n+1)+1-A086454(n+1)`
-/

namespace A192133.P3111404056404365972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025473 (n + 1) + (1 - A086454 (n + 1))

end

end A192133.P3111404056404365972

namespace A192133

/-- `A025473(n+1)+1-A086454(n+1)` -/
def P3111404056404365972.Spec : Prop :=
  ∀ n, P3111404056404365972.a n = A192133 (n + 1)

theorem P3111404056404365972.correct : P3111404056404365972.Spec := by
  intro n
  simp only [A192133, Nat.add_sub_cancel, A192133.P3111404056404365972.a, A192133.P10741399618334184473.a, A025473, A025473.P8571811305423406731.a, A025474, A025474.P5402530802230343307.a, A086454, A086454.P16343334458700546911.a, A000961, A000961.P15008477845107890738.f1, A000961.P15008477845107890738.f2, A000961.P15008477845107890738.a, A001222, A001222.P11318177267732088261.a, A006530, A006530.P13372528560459906635.a, A000079, A000079.P10855139691139572931.a, A061345, A061345.P12671314331313567408.f1, A061345.P12671314331313567408.a, A061395, A061395.P8431317036300486107.a, A070229, A070229.P5792893597916963980.a, A122111, A122111.P18124015185857335041.a, A028815, A028815.P810525423351225743.a, A029837, A029837.P1050578713049589.a, A064989, A064989.P13349672914146769936.a, A081061, A081061.P11142281922485975947.f1, A081061.P11142281922485975947.a, A087207, A087207.P12536008426233777954.a, A105560, A105560.P7897608420550643844.f1, A105560.P7897608420550643844.a, A374134, A374134.P15663071369572716484.f1, A374134.P15663071369572716484.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A192133

/-! ## A192133.P11081232427486149657

`A025473(n+1)-A085729(n+1)/A025473(n+1)`
-/

namespace A192133.P11081232427486149657
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A025473 (n + 1) : ℚ) - (A085729 (n + 1) : ℚ) / (A025473 (n + 1) : ℚ)

end

end A192133.P11081232427486149657

namespace A192133

/-- `A025473(n+1)-A085729(n+1)/A025473(n+1)` -/
def P11081232427486149657.Spec : Prop :=
  ∀ n, P11081232427486149657.a n = (A192133 (n + 1) : ℚ)

end A192133

/-! ## A192133.P17597791641490972493

`A025473(n+1)-A001222(A000961(n+1))`
-/

namespace A192133.P17597791641490972493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025473 (n + 1) - A001222 (A000961 (n + 1)).toNat

end

end A192133.P17597791641490972493

namespace A192133

/-- `A025473(n+1)-A001222(A000961(n+1))` -/
def P17597791641490972493.Spec : Prop :=
  ∀ n, P17597791641490972493.a n = A192133 (n + 1)

end A192133

/-! ## A192133.P1016805997335659027

`A006530(A000961(n+1))-A025474(n+1)`
-/

namespace A192133.P1016805997335659027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A000961 (n + 1)).toNat - A025474 (n + 1)

end

end A192133.P1016805997335659027

namespace A192133

/-- `A006530(A000961(n+1))-A025474(n+1)` -/
def P1016805997335659027.Spec : Prop :=
  ∀ n, P1016805997335659027.a n = A192133 (n + 1)

end A192133

/-! ## A192133.P8684097964610067381

`A020639(sqrt(A056798(n+1)))-A025474(n+1)`
-/

namespace A192133.P8684097964610067381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (SequenceMachineLib.roundAway (Real.sqrt (A056798 (n + 1) : ℝ))).toNat - A025474 (n + 1)

end

end A192133.P8684097964610067381

namespace A192133

/-- `A020639(sqrt(A056798(n+1)))-A025474(n+1)` -/
def P8684097964610067381.Spec : Prop :=
  ∀ n, P8684097964610067381.a n = A192133 (n + 1)

end A192133

/-! ## A192133.P7622375924125997152

`A025473(n+1)-∑{d}[A000961(n+1), A001221(#)]`
-/

namespace A192133.P7622375924125997152
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000961 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025473 (n + 1) - ∑ d ∈ Nat.divisors (f1 n).natAbs, A001221 d

end

end A192133.P7622375924125997152

namespace A192133

/-- `A025473(n+1)-∑{d}[A000961(n+1), A001221(#)]` -/
def P7622375924125997152.Spec : Prop :=
  ∀ n, P7622375924125997152.a n = A192133 (n + 1)

end A192133

/-! ## A192133.P5125108287878631739

`A020639(record[A034699(n+1)])-A025474(n+1)`
-/

namespace A192133.P5125108287878631739
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034699 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat - A025474 (n + 1)

end

end A192133.P5125108287878631739

namespace A192133

/-- `A020639(record[A034699(n+1)])-A025474(n+1)` -/
def P5125108287878631739.Spec : Prop :=
  ∀ n, P5125108287878631739.a n = A192133 (n + 1)

end A192133

/-! ## A192133.P15252342784030325192

`A025473(n+1)-A001222(lt[A001221(n+1), 2]+1)`
-/

namespace A192133.P15252342784030325192
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025473 (n + 1) - A001222 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1)

end

end A192133.P15252342784030325192

namespace A192133

/-- `A025473(n+1)-A001222(lt[A001221(n+1), 2]+1)` -/
def P15252342784030325192.Spec : Prop :=
  ∀ n, P15252342784030325192.a n = A192133 (n + 1)

end A192133

/-! ## A192133.P16571447812777713671

`A006530(lt[A001221(n+1), 2]+1)-A025474(n+1)`
-/

namespace A192133.P16571447812777713671
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1) - A025474 (n + 1)

end

end A192133.P16571447812777713671

namespace A192133

/-- `A006530(lt[A001221(n+1), 2]+1)-A025474(n+1)` -/
def P16571447812777713671.Spec : Prop :=
  ∀ n, P16571447812777713671.a n = A192133 (n + 1)

end A192133

/-! ## A192133.P8070602114909309068

`A091371(A000961(n+1))`
-/

namespace A192133.P8070602114909309068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091371 (A000961 (n + 1)).toNat

end

end A192133.P8070602114909309068

namespace A192133

/-- `A091371(A000961(n+1))` -/
def P8070602114909309068.Spec : Prop :=
  ∀ n, P8070602114909309068.a n = A192133 (n + 1)

end A192133

/-! ## A192133.P13057508289717608325

`A014963(lt[A001221(n+1), 2]+1)-A025474(n+1)`
-/

namespace A192133.P13057508289717608325
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1) - A025474 (n + 1)

end

end A192133.P13057508289717608325

namespace A192133

/-- `A014963(lt[A001221(n+1), 2]+1)-A025474(n+1)` -/
def P13057508289717608325.Spec : Prop :=
  ∀ n, P13057508289717608325.a n = A192133 (n + 1)

end A192133

/-! ## A192133.P7300128538887686564

`A006530(lt[A073180(n+1), 3]+1)-A025474(n+1)`
-/

namespace A192133.P7300128538887686564
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073180 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1) - A025474 (n + 1)

end

end A192133.P7300128538887686564

namespace A192133

/-- `A006530(lt[A073180(n+1), 3]+1)-A025474(n+1)` -/
def P7300128538887686564.Spec : Prop :=
  ∀ n, P7300128538887686564.a n = A192133 (n + 1)

end A192133

/-! ## A192133.P12240688599459094185

`A014963(lt[A073180(n+1), 3]+1)-A025474(n+1)`
-/

namespace A192133.P12240688599459094185
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073180 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1) - A025474 (n + 1)

end

end A192133.P12240688599459094185

namespace A192133

/-- `A014963(lt[A073180(n+1), 3]+1)-A025474(n+1)` -/
def P12240688599459094185.Spec : Prop :=
  ∀ n, P12240688599459094185.a n = A192133 (n + 1)

end A192133

/-! ## A192133.P16127252276412708989

`A006530(record[(n+1)/A079553(n+1)])-A025474(n+1)`
-/

namespace A192133.P16127252276412708989
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A079553 (n + 1) : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (SequenceMachineLib.roundAway (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))).toNat - A025474 (n + 1)

end

end A192133.P16127252276412708989

namespace A192133

/-- `A006530(record[(n+1)/A079553(n+1)])-A025474(n+1)` -/
def P16127252276412708989.Spec : Prop :=
  ∀ n, P16127252276412708989.a n = A192133 (n + 1)

end A192133

/-! ## A192133.P8324351644186018649

`A014963(record[(n+1)/A079553(n+1)])-A025474(n+1)`
-/

namespace A192133.P8324351644186018649
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A079553 (n + 1) : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (SequenceMachineLib.roundAway (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))).toNat - A025474 (n + 1)

end

end A192133.P8324351644186018649

namespace A192133

/-- `A014963(record[(n+1)/A079553(n+1)])-A025474(n+1)` -/
def P8324351644186018649.Spec : Prop :=
  ∀ n, P8324351644186018649.a n = A192133 (n + 1)

end A192133

/-!
# A192134: Difference between n-th prime power and its arithmetic derivative.

The programs for A192134, the canonical program `A192134.P4831734951795111241` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A192134 has offset 1).

The definition of A192134 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000961, A192015, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A192134.P4831734951795111241

`A000961(n+1)-A192015(n+1)`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A192134

/-- `A000961(n+1)-A192015(n+1)` -/
def P4831734951795111241.Spec : Prop :=
  ∀ n, P4831734951795111241.a n = A192134 (n + 1)

theorem P4831734951795111241.correct : P4831734951795111241.Spec := by
  intro n
  simp only [A192134, Nat.add_sub_cancel]

end A192134

/-! ## A192134.P8878243570491948498

`A192133(n+1)*A000961(n+1)/A025473(n+1)`
-/

namespace A192134.P8878243570491948498
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A192133 (n + 1) * A000961 (n + 1) : ℚ) / (A025473 (n + 1) : ℚ)

end

end A192134.P8878243570491948498

namespace A192134

/-- `A192133(n+1)*A000961(n+1)/A025473(n+1)` -/
def P8878243570491948498.Spec : Prop :=
  ∀ n, P8878243570491948498.a n = (A192134 (n + 1) : ℚ)

end A192134

/-! ## A192134.P7607457875842105768

`A192133(n+1)*A025473(n+1)^(A025474(n+1)-1)`
-/

namespace A192134.P7607457875842105768
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A192133 (n + 1) : ℚ) * (A025473 (n + 1) : ℚ) ^ (A025474 (n + 1) - 1 : ℤ)

end

end A192134.P7607457875842105768

namespace A192134

/-- `A192133(n+1)*A025473(n+1)^(A025474(n+1)-1)` -/
def P7607457875842105768.Spec : Prop :=
  ∀ n, P7607457875842105768.a n = (A192134 (n + 1) : ℚ)

end A192134

/-! ## A192134.P2149355173970351903

`sqrt(A056798(n+1))-A192015(n+1)`
-/

namespace A192134.P2149355173970351903
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A056798 (n + 1) : ℝ) - (A192015 (n + 1) : ℝ)

end

end A192134.P2149355173970351903

namespace A192134

/-- `sqrt(A056798(n+1))-A192015(n+1)` -/
def P2149355173970351903.Spec : Prop :=
  ∀ n, P2149355173970351903.a n = (A192134 (n + 1) : ℝ)

end A192134

/-! ## A192134.P10074529873203549937

`A181062(n+1)+1-A192015(n+1)`
-/

namespace A192134.P10074529873203549937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181062 (n + 1) + (1 - A192015 (n + 1))

end

end A192134.P10074529873203549937

namespace A192134

/-- `A181062(n+1)+1-A192015(n+1)` -/
def P10074529873203549937.Spec : Prop :=
  ∀ n, P10074529873203549937.a n = A192134 (n + 1)

theorem P10074529873203549937.correct : P10074529873203549937.Spec := by
  intro n
  simp only [A192134, Nat.add_sub_cancel, A192134.P10074529873203549937.a, A192134.P4831734951795111241.a, A000961, A000961.P15008477845107890738.f1, A000961.P15008477845107890738.f2, A000961.P15008477845107890738.a, A181062, A181062.P6529548857799504333.a, A192015, A192015.P4229160100283672966.a, A000079, A000079.P10855139691139572931.a, A003415, A003415.P9326043729983995739.f1, A003415.P9326043729983995739.a, A061345, A061345.P12671314331313567408.f1, A061345.P12671314331313567408.a, A081061, A081061.P11142281922485975947.f1, A081061.P11142281922485975947.a, A300251, A300251.P13750012435361977920.f1, A300251.P13750012435361977920.a, A374134, A374134.P15663071369572716484.f1, A374134.P15663071369572716484.a, A007427, A007427.P16346481250890679101.f1, A007427.P16346481250890679101.a, A073491, A073491.P6445803315451258056.f1, A073491.P6445803315451258056.f2, A073491.P6445803315451258056.a, A319684, A319684.P10446271486458079777.f1, A319684.P10446271486458079777.a, A340363, A340363.P15438000431600784952.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A192134

/-! ## A192134.P12309511238648381349

`A138929(n+1)/2-A192015(n+1)`
-/

namespace A192134.P12309511238648381349
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A138929 (n + 1) : ℚ) / 2 - (A192015 (n + 1) : ℚ)

end

end A192134.P12309511238648381349

namespace A192134

/-- `A138929(n+1)/2-A192015(n+1)` -/
def P12309511238648381349.Spec : Prop :=
  ∀ n, P12309511238648381349.a n = (A192134 (n + 1) : ℚ)

theorem P12309511238648381349.correct : P12309511238648381349.Spec := by
  intro n
  simp only [A192134, Nat.add_sub_cancel, A192134.P12309511238648381349.a, A192134.P4831734951795111241.a, A000961, A000961.P15008477845107890738.f1, A000961.P15008477845107890738.f2, A000961.P15008477845107890738.a, A138929, A138929.P2871587686834618281.a, A192015, A192015.P4229160100283672966.a, A000079, A000079.P10855139691139572931.a, A003415, A003415.P9326043729983995739.f1, A003415.P9326043729983995739.a, A061345, A061345.P12671314331313567408.f1, A061345.P12671314331313567408.a, A081061, A081061.P11142281922485975947.f1, A081061.P11142281922485975947.a, A300251, A300251.P13750012435361977920.f1, A300251.P13750012435361977920.a, A374134, A374134.P15663071369572716484.f1, A374134.P15663071369572716484.a, A007427, A007427.P16346481250890679101.f1, A007427.P16346481250890679101.a, A073491, A073491.P6445803315451258056.f1, A073491.P6445803315451258056.f2, A073491.P6445803315451258056.a, A319684, A319684.P10446271486458079777.f1, A319684.P10446271486458079777.a, A340363, A340363.P15438000431600784952.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A192134

/-! ## A192134.P3457932850359885173

`∑[A057820(A028310(n))]-A192015(n+1)`
-/

namespace A192134.P3457932850359885173
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057820 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A192015 (n + 1)

end

end A192134.P3457932850359885173

namespace A192134

/-- `∑[A057820(A028310(n))]-A192015(n+1)` -/
def P3457932850359885173.Spec : Prop :=
  ∀ n, P3457932850359885173.a n = A192134 (n + 1)

end A192134

/-! ## A192134.P8282657050318449111

`A246655(n+1)-(A192015(n+1)+A057820(n+1))`
-/

namespace A192134.P8282657050318449111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246655 (n + 1) - (A192015 (n + 1) + A057820 (n + 1))

end

end A192134.P8282657050318449111

namespace A192134

/-- `A246655(n+1)-(A192015(n+1)+A057820(n+1))` -/
def P8282657050318449111.Spec : Prop :=
  ∀ n, P8282657050318449111.a n = A192134 (n + 1)

theorem P8282657050318449111.correct : P8282657050318449111.Spec := by
  intro n
  simp only [A192134, Nat.add_sub_cancel, A192134.P8282657050318449111.a, A192134.P4831734951795111241.a, A000961, A000961.P15008477845107890738.f1, A000961.P15008477845107890738.f2, A000961.P15008477845107890738.a, A057820, A057820.P915405789854175386.a, A192015, A192015.P4229160100283672966.a, A246655, A246655.P2302191067120461210.a, A000079, A000079.P10855139691139572931.a, A003415, A003415.P9326043729983995739.f1, A003415.P9326043729983995739.a, A061345, A061345.P12671314331313567408.f1, A061345.P12671314331313567408.a, A081061, A081061.P11142281922485975947.f1, A081061.P11142281922485975947.a, A300251, A300251.P13750012435361977920.f1, A300251.P13750012435361977920.a, A374134, A374134.P15663071369572716484.f1, A374134.P15663071369572716484.a, A007427, A007427.P16346481250890679101.f1, A007427.P16346481250890679101.a, A073491, A073491.P6445803315451258056.f1, A073491.P6445803315451258056.f2, A073491.P6445803315451258056.a, A319684, A319684.P10446271486458079777.f1, A319684.P10446271486458079777.a, A340363, A340363.P15438000431600784952.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A192134

/-! ## A192134.P4579946515174448731

`A309269(n+1)-(A246655(n+1)+A192015(n+1))`
-/

namespace A192134.P4579946515174448731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309269 (n + 1) - (A246655 (n + 1) + A192015 (n + 1))

end

end A192134.P4579946515174448731

namespace A192134

/-- `A309269(n+1)-(A246655(n+1)+A192015(n+1))` -/
def P4579946515174448731.Spec : Prop :=
  ∀ n, P4579946515174448731.a n = A192134 (n + 1)

theorem P4579946515174448731.correct : P4579946515174448731.Spec := by
  intro n
  simp only [A192134, Nat.add_sub_cancel, A192134.P4579946515174448731.a, A192134.P4831734951795111241.a, A000961, A000961.P15008477845107890738.f1, A000961.P15008477845107890738.f2, A000961.P15008477845107890738.a, A192015, A192015.P4229160100283672966.a, A246655, A246655.P2302191067120461210.a, A309269, A309269.P6439327140874271105.a, A000079, A000079.P10855139691139572931.a, A003415, A003415.P9326043729983995739.f1, A003415.P9326043729983995739.a, A061345, A061345.P12671314331313567408.f1, A061345.P12671314331313567408.a, A081061, A081061.P11142281922485975947.f1, A081061.P11142281922485975947.a, A300251, A300251.P13750012435361977920.f1, A300251.P13750012435361977920.a, A374134, A374134.P15663071369572716484.f1, A374134.P15663071369572716484.a, A007427, A007427.P16346481250890679101.f1, A007427.P16346481250890679101.a, A073491, A073491.P6445803315451258056.f1, A073491.P6445803315451258056.f2, A073491.P6445803315451258056.a, A319684, A319684.P10446271486458079777.f1, A319684.P10446271486458079777.a, A340363, A340363.P15438000431600784952.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A192134

/-! ## A192134.P7148078643709929895

`A121315(n+1)/A246655(n+1)-A192015(n+1)`
-/

namespace A192134.P7148078643709929895
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A121315 (n + 1) : ℚ) / (A246655 (n + 1) : ℚ) - (A192015 (n + 1) : ℚ)

end

end A192134.P7148078643709929895

namespace A192134

/-- `A121315(n+1)/A246655(n+1)-A192015(n+1)` -/
def P7148078643709929895.Spec : Prop :=
  ∀ n, P7148078643709929895.a n = (A192134 (n + 1) : ℚ)

end A192134

/-! ## A192134.P4004368223083283803

`A025473(n+1)^A025474(n+1)-A192015(n+1)`
-/

namespace A192134.P4004368223083283803
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A025473 (n + 1) : ℚ) ^ (A025474 (n + 1) : ℤ) - (A192015 (n + 1) : ℚ)

end

end A192134.P4004368223083283803

namespace A192134

/-- `A025473(n+1)^A025474(n+1)-A192015(n+1)` -/
def P4004368223083283803.Spec : Prop :=
  ∀ n, P4004368223083283803.a n = (A192134 (n + 1) : ℚ)

end A192134

/-! ## A192134.P4072288031835390287

`gcd(A056798(n+1), A121315(n+1))-A192015(n+1)`
-/

namespace A192134.P4072288031835390287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.gcd (A056798 (n + 1)) (A121315 (n + 1)) : ℤ) - A192015 (n + 1)

end

end A192134.P4072288031835390287

namespace A192134

/-- `gcd(A056798(n+1), A121315(n+1))-A192015(n+1)` -/
def P4072288031835390287.Spec : Prop :=
  ∀ n, P4072288031835390287.a n = A192134 (n + 1)

end A192134

/-! ## A192134.P2145204748106063204

`record[A034699(n+1)]-A192015(n+1)`
-/

namespace A192134.P2145204748106063204
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034699 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A192015 (n + 1)

end

end A192134.P2145204748106063204

namespace A192134

/-- `record[A034699(n+1)]-A192015(n+1)` -/
def P2145204748106063204.Spec : Prop :=
  ∀ n, P2145204748106063204.a n = A192134 (n + 1)

end A192134

/-! ## A192134.P11025996544188075000

`A000961(n+1)-A025474(n+1)*A069359(A000961(n+1))`
-/

namespace A192134.P11025996544188075000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000961 (n + 1) - A025474 (n + 1) * A069359 (A000961 (n + 1)).toNat

end

end A192134.P11025996544188075000

namespace A192134

/-- `A000961(n+1)-A025474(n+1)*A069359(A000961(n+1))` -/
def P11025996544188075000.Spec : Prop :=
  ∀ n, P11025996544188075000.a n = A192134 (n + 1)

end A192134

/-! ## A192134.P16346488021343581469

`A000961(n+1)-A003415(record[A008475(n+1)])`
-/

namespace A192134.P16346488021343581469
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008475 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000961 (n + 1) - A003415 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A192134.P16346488021343581469

namespace A192134

/-- `A000961(n+1)-A003415(record[A008475(n+1)])` -/
def P16346488021343581469.Spec : Prop :=
  ∀ n, P16346488021343581469.a n = A192134 (n + 1)

end A192134

/-! ## A192134.P6236788100669420898

`A000961(n+1)-A003415(record[A034699(n+1)])`
-/

namespace A192134.P6236788100669420898
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034699 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000961 (n + 1) - A003415 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A192134.P6236788100669420898

namespace A192134

/-- `A000961(n+1)-A003415(record[A034699(n+1)])` -/
def P6236788100669420898.Spec : Prop :=
  ∀ n, P6236788100669420898.a n = A192134 (n + 1)

end A192134

/-! ## A192134.P9491163044676680479

`A000961(n+1)-A003415(record[A068794(n+1)])`
-/

namespace A192134.P9491163044676680479
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068794 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000961 (n + 1) - A003415 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A192134.P9491163044676680479

namespace A192134

/-- `A000961(n+1)-A003415(record[A068794(n+1)])` -/
def P9491163044676680479.Spec : Prop :=
  ∀ n, P9491163044676680479.a n = A192134 (n + 1)

end A192134

/-! ## A192134.P16142201179357339219

`A000961(n+1)-A003415(record[A324388(n+1)])`
-/

namespace A192134.P16142201179357339219
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324388 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000961 (n + 1) - A003415 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A192134.P16142201179357339219

namespace A192134

/-- `A000961(n+1)-A003415(record[A324388(n+1)])` -/
def P16142201179357339219.Spec : Prop :=
  ∀ n, P16142201179357339219.a n = A192134 (n + 1)

end A192134

/-! ## A192134.P5333552594981889025

`A000961(n+1)-A003415(record[A162961(n+1)])`
-/

namespace A192134.P5333552594981889025
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162961 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000961 (n + 1) - A003415 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A192134.P5333552594981889025

namespace A192134

/-- `A000961(n+1)-A003415(record[A162961(n+1)])` -/
def P5333552594981889025.Spec : Prop :=
  ∀ n, P5333552594981889025.a n = A192134 (n + 1)

end A192134

/-!
# A192135: Prime powers p^e with p < e.

The programs for A192135, there is no canonical definition to state claims against.
-/

/-! ## A192135.P14988734681297819358

`A000961(A192187(n+1))`
-/

namespace A192135.P14988734681297819358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000961 (A192187 (n + 1)).toNat

end

end A192135.P14988734681297819358

/-! ## A192135.P14117868292327468968

`∩[A257278(n+1), A380730(n+1)]`
-/

namespace A192135.P14117868292327468968
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257278 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380730 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A192135.P14117868292327468968

/-! ## A192135.P15920186332713982165

`∩[A054743(n+1), A257278(n+1)]`
-/

namespace A192135.P15920186332713982165
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054743 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257278 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A192135.P15920186332713982165

/-! ## A192135.P11056439609028739736

`∩[A054743(n+1), A246549(n+1)]`
-/

namespace A192135.P11056439609028739736
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054743 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246549 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A192135.P11056439609028739736

/-! ## A192135.P15710946717267713611

`∩[A246549(n+1), A380730(n+1)]`
-/

namespace A192135.P15710946717267713611
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246549 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380730 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A192135.P15710946717267713611

/-! ## A192135.P15921433314718893403

`∩[A054743(n+1), A100391(n+1)]`
-/

namespace A192135.P15921433314718893403
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054743 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100391 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A192135.P15921433314718893403

/-! ## A192135.P1912835650505936721

`∩[A100391(n+1), A380730(n+1)]`
-/

namespace A192135.P1912835650505936721
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100391 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380730 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A192135.P1912835650505936721

/-! ## A192135.P12554872506363692056

`∩[A068935(n+1), A100391(n+1)]`
-/

namespace A192135.P12554872506363692056
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068935 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100391 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A192135.P12554872506363692056

/-! ## A192135.P1279162552136765217

`∩[A068935(n+1), A246549(n+1)]`
-/

namespace A192135.P1279162552136765217
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068935 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246549 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A192135.P1279162552136765217

/-! ## A192135.P3024932223774803353

`∩[A068935(n+1), A257278(n+1)]`
-/

namespace A192135.P3024932223774803353
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068935 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257278 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A192135.P3024932223774803353

/-!
# A192136: a(n) = (5*n^2 - 3*n + 2)/2.

The programs for A192136, the canonical program `A192136.P1098944999431721528` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A192136 has offset 0).

The definition of A192136 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(5*n²-3*n+2)/2` (program `A192136.P14016581606733469820`, by `A192136.P14016581606733469820.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A192136.P9750944062734435210

`n*(5*n-3)/2+1`
-/

namespace A192136.P9750944062734435210
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) * ((5 * n : ℤ) - 3) : ℚ) / 2 + 1

end

end A192136.P9750944062734435210

namespace A192136

/-- `n*(5*n-3)/2+1` -/
def P9750944062734435210.Spec : Prop :=
  ∀ n, P9750944062734435210.a n = (A192136 n : ℚ)

end A192136

/-! ## A192136.P14016581606733469820

`(5*n²-3*n+2)/2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A192136.P14016581606733469820
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((5 * n ^ 2 : ℤ) - (3 * n : ℤ) + 2 : ℚ) / 2

end

end A192136.P14016581606733469820

namespace A192136

/-- `(5*n²-3*n+2)/2` -/
def P14016581606733469820.Spec : Prop :=
  ∀ n, P14016581606733469820.a n = (A192136 n : ℚ)

theorem P14016581606733469820.correct : P14016581606733469820.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A192136, Nat.add_sub_cancel, A192136.P14016581606733469820.a, A192136.P1098944999431721528.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A192136, Nat.add_sub_cancel, A192136.P14016581606733469820.a, A192136.P1098944999431721528.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [← h1, ← h2]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A192136

/-! ## A192136.P14100061946173492602

`∑[a(n-1)+5]` with `a(0)=1, a(1)=1`
-/

namespace A192136.P14100061946173492602
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 1] fun n f1 =>
  f1 (n - 1) + 5

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A192136.P14100061946173492602

namespace A192136

/-- `∑[a(n-1)+5]` -/
def P14100061946173492602.Spec : Prop :=
  ∀ n, (P14100061946173492602.a n : ℤ) = A192136 n

end A192136

/-! ## A192136.P1533294950765541005

`∑[ogf((1-x+5x^2)/(1-2x+x^2))]`
-/

namespace A192136.P1533294950765541005
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -1, 5] [1, -2, 1] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A192136.P1533294950765541005

namespace A192136

/-- `∑[ogf((1-x+5x^2)/(1-2x+x^2))]` -/
def P1533294950765541005.Spec : Prop :=
  ∀ n, P1533294950765541005.a n = A192136 n

end A192136

/-! ## A192136.P3649132940620367482

`ogf((1-x+5x^2)/(1-3x+3x^2-x^3))`
-/

namespace A192136.P3649132940620367482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -1, 5] [1, -3, 3, -1] n

end

end A192136.P3649132940620367482

namespace A192136

/-- `ogf((1-x+5x^2)/(1-3x+3x^2-x^3))` -/
def P3649132940620367482.Spec : Prop :=
  ∀ n, P3649132940620367482.a n = A192136 n

end A192136

/-! ## A192136.P13436446524136094942

`abs(xor(5*C(n, 2)+n, -1))`
-/

namespace A192136.P13436446524136094942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.xor (5 * Nat.choose n 2 + n : ℤ) (-1)|

end

end A192136.P13436446524136094942

namespace A192136

/-- `abs(xor(5*C(n, 2)+n, -1))` -/
def P13436446524136094942.Spec : Prop :=
  ∀ n, P13436446524136094942.a n = A192136 n

end A192136

/-! ## A192136.P8440751869312235700

`∑[5*(2*n)%(n+1)+1]`
-/

namespace A192136.P8440751869312235700
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5 * (2 * n % (n + 1)) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A192136.P8440751869312235700

namespace A192136

/-- `∑[5*(2*n)%(n+1)+1]` -/
def P8440751869312235700.Spec : Prop :=
  ∀ n, (P8440751869312235700.a n : ℤ) = A192136 n

end A192136

/-! ## A192136.P2094358205678087514

`floor(5*n+a(n-1)-4)` with `a(0)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A192136.P2094358205678087514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (5 * n : ℤ) + (a (n - 1) - 4)

end

end A192136.P2094358205678087514

namespace A192136

/-- `floor(5*n+a(n-1)-4)` -/
def P2094358205678087514.Spec : Prop :=
  ∀ n, P2094358205678087514.a n = A192136 n

end A192136

/-! ## A192136.P15446124629006809487

`floor(5*n-(4-a(n-1)))` with `a(0)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A192136.P15446124629006809487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (5 * n : ℤ) - (4 - a (n - 1))

end

end A192136.P15446124629006809487

namespace A192136

/-- `floor(5*n-(4-a(n-1)))` -/
def P15446124629006809487.Spec : Prop :=
  ∀ n, P15446124629006809487.a n = A192136 n

end A192136

/-! ## A192136.P2356026156597187237

`5*(n-(4-a(n-1))/5)` with `a(0)=1`
-/

namespace A192136.P2356026156597187237
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  5 * ((n : ℚ) - (4 - a (n - 1)) / 5)

end

end A192136.P2356026156597187237

namespace A192136

/-- `5*(n-(4-a(n-1))/5)` -/
def P2356026156597187237.Spec : Prop :=
  ∀ n, P2356026156597187237.a n = (A192136 n : ℚ)

end A192136

/-! ## A192136.P9679098226848761742

`floor(4-∑[a(n-1)-5]-n)` with `a(0)=3`

`floor` is left out, it is the identity on integers.
-/

namespace A192136.P9679098226848761742
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [3] fun n f1 =>
  f1 (n - 1) - 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 - ∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ)

end

end A192136.P9679098226848761742

namespace A192136

/-- `floor(4-∑[a(n-1)-5]-n)` -/
def P9679098226848761742.Spec : Prop :=
  ∀ n, P9679098226848761742.a n = A192136 n

end A192136

/-! ## A192136.P15279229665955816155

`∑[2*a(n-1)-a(n-2)]` with `a(0)=1, a(1)=1, a(2)=6`
-/

namespace A192136.P15279229665955816155
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 6] fun n f1 =>
  2 * f1 (n - 1) - f1 (n - 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A192136.P15279229665955816155

namespace A192136

/-- `∑[2*a(n-1)-a(n-2)]` -/
def P15279229665955816155.Spec : Prop :=
  ∀ n, P15279229665955816155.a n = A192136 n

end A192136

/-! ## A192136.P1098944999431721528

`floor(a(n-1)+a(n-1)+5-a(n-2))` with `a(0)=1, a(1)=2`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A192136

/-- `floor(a(n-1)+a(n-1)+5-a(n-2))` -/
def P1098944999431721528.Spec : Prop :=
  ∀ n, P1098944999431721528.a n = A192136 n

theorem P1098944999431721528.correct : P1098944999431721528.Spec := by
  intro n
  simp only [A192136]

end A192136

/-! ## A192136.P5825046213029771985

`floor(a(n-1)-(a(n-2)-a(n-1)-5))` with `a(0)=1, a(1)=2`

`floor` is left out, it is the identity on integers.
-/

namespace A192136.P5825046213029771985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  a (n - 1) - (a (n - 2) - a (n - 1) - 5)

end

end A192136.P5825046213029771985

namespace A192136

/-- `floor(a(n-1)-(a(n-2)-a(n-1)-5))` -/
def P5825046213029771985.Spec : Prop :=
  ∀ n, P5825046213029771985.a n = A192136 n

end A192136

/-! ## A192136.P15424489447147169976

`A002604(n)%A155121(n)`
-/

namespace A192136.P15424489447147169976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A002604 n) (A155121 n)

end

end A192136.P15424489447147169976

namespace A192136

/-- `A002604(n)%A155121(n)` -/
def P15424489447147169976.Spec : Prop :=
  ∀ n, P15424489447147169976.a n = A192136 n

end A192136

/-! ## A192136.P11383046543633442136

`A066804(n+1)%A160805(n)`
-/

namespace A192136.P11383046543633442136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A066804 (n + 1)) (A160805 n)

end

end A192136.P11383046543633442136

namespace A192136

/-- `A066804(n+1)%A160805(n)` -/
def P11383046543633442136.Spec : Prop :=
  ∀ n, P11383046543633442136.a n = A192136 n

end A192136

/-! ## A192136.P3675942512389464690

`A173089(n+1)%A178977(n)`
-/

namespace A192136.P3675942512389464690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A173089 (n + 1)) (A178977 n)

end

end A192136.P3675942512389464690

namespace A192136

/-- `A173089(n+1)%A178977(n)` -/
def P3675942512389464690.Spec : Prop :=
  ∀ n, P3675942512389464690.a n = A192136 n

end A192136

/-! ## A192136.P13319260677138270080

`A342914(n)%A059193(n+1)`
-/

namespace A192136.P13319260677138270080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A342914 n) (A059193 (n + 1))

end

end A192136.P13319260677138270080

namespace A192136

/-- `A342914(n)%A059193(n+1)` -/
def P13319260677138270080.Spec : Prop :=
  ∀ n, P13319260677138270080.a n = A192136 n

end A192136

/-! ## A192136.P13220630557957791986

`A069178(n+1)%A059193(n+1)`
-/

namespace A192136.P13220630557957791986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A069178 (n + 1)) (A059193 (n + 1))

end

end A192136.P13220630557957791986

namespace A192136

/-- `A069178(n+1)%A059193(n+1)` -/
def P13220630557957791986.Spec : Prop :=
  ∀ n, P13220630557957791986.a n = A192136 n

end A192136

/-! ## A192136.P7355522894878154226

`A111711(A004277(n))`
-/

namespace A192136.P7355522894878154226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111711 (A004277 n).toNat

end

end A192136.P7355522894878154226

namespace A192136

/-- `A111711(A004277(n))` -/
def P7355522894878154226.Spec : Prop :=
  ∀ n, P7355522894878154226.a n = A192136 n

end A192136

/-!
# A192137: Numbers m such that their concatenation of prime divisors are palindromic numbers.

The programs for A192137, there is no canonical definition to state claims against.
-/

/-! ## A192137.P13006469043070130378

`A332808(A274949(n+1))`
-/

namespace A192137.P13006469043070130378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332808 (A274949 (n + 1)).toNat

end

end A192137.P13006469043070130378

/-! ## A192137.P3167878949704807957

`A056781(∑[A004248(n)!])`
-/

namespace A192137.P3167878949704807957
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A004248 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056781 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A192137.P3167878949704807957

/-! ## A192137.P4818866732524938043

`A192139(A004906(n+1)+2)`
-/

namespace A192137.P4818866732524938043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192139 (A004906 (n + 1) + 2).toNat

end

end A192137.P4818866732524938043

/-! ## A192137.P5374582841302733957

`A192139(A004907(n+2)+1)`
-/

namespace A192137.P5374582841302733957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192139 (A004907 (n + 2) + 1).toNat

end

end A192137.P5374582841302733957

/-! ## A192137.P8442554475187766344

`filter[A192139(n+2), A242718(#)]`
-/

namespace A192137.P8442554475187766344
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192139 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A242718 (f1 j).toNat = 1) n)

end

end A192137.P8442554475187766344

/-!
# A192138: Palindromic concatenation of prime divisors of numbers from A192137.

The programs for A192138, there is no canonical definition to state claims against.
-/

/-! ## A192138.P8087055242704689476

`A084317(A192137(n+1))`
-/

namespace A192138.P8087055242704689476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084317 (A192137 (n + 1)).toNat

end

end A192138.P8087055242704689476

/-! ## A192138.P4751145826795183096

`A037276(∏{p}[A192137(n+1), #])`
-/

namespace A192138.P4751145826795183096
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192137 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037276 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, p)

end

end A192138.P4751145826795183096

/-! ## A192138.P3659040665992413276

`A080670(∏{p}[A192137(n+1), #])`
-/

namespace A192138.P3659040665992413276
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192137 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080670 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, p)

end

end A192138.P3659040665992413276

/-! ## A192138.P13290903136369521922

`A080695(∏{p}[A192137(n+1), #])`
-/

namespace A192138.P13290903136369521922
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192137 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080695 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, p)

end

end A192138.P13290903136369521922

/-! ## A192138.P5473545638245978917

`A288532(∏{p}[A192137(n+1), #])`
-/

namespace A192138.P5473545638245978917
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192137 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288532 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, p)

end

end A192138.P5473545638245978917

/-!
# A192139: Powers p^m, m >= 0, of palindromic primes p (A002385).

The programs for A192139, there is no canonical definition to state claims against.
-/

/-! ## A192139.P2832030521639966665

`∩[A000961(n+1), A033620(n+1)]`
-/

namespace A192139.P2832030521639966665
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000961 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033620 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A192139.P2832030521639966665

/-! ## A192139.P17639847219973524888

`record[A034699(A033620(n+1))]`
-/

namespace A192139.P17639847219973524888
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034699 (A033620 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A192139.P17639847219973524888

/-! ## A192139.P471608149980470815

`filter[A033620(n+1), A010055(#)]`
-/

namespace A192139.P471608149980470815
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033620 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010055 (f1 j).toNat = 1) n)

end

end A192139.P471608149980470815

/-!
# A192140: Palindromic numbers m such that their concatenation of prime divisors are also palindromic numbers.

The programs for A192140, there is no canonical definition to state claims against.
-/

/-! ## A192140.P992628018807637448

`record[A055483(A192137(n+1))]`
-/

namespace A192140.P992628018807637448
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055483 (A192137 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A192140.P992628018807637448

/-! ## A192140.P16822053080686170515

`∩[A002113(n+1), A192137(n+1)]`
-/

namespace A192140.P16822053080686170515
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002113 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192137 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A192140.P16822053080686170515

/-! ## A192140.P8736647285068394007

`∩[A061917(n+1), A192137(n+1)]`
-/

namespace A192140.P8736647285068394007
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061917 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192137 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A192140.P8736647285068394007

/-! ## A192140.P6480750152567186716

`∩[A098897(n+1), A192137(n+1)]`
-/

namespace A192140.P6480750152567186716
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098897 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192137 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A192140.P6480750152567186716

/-! ## A192140.P14277308173620265023

`∩[A110751(n+1), A192137(n+1)]`
-/

namespace A192140.P14277308173620265023
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110751 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192137 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A192140.P14277308173620265023

/-!
# A192141: Palindromic concatenation of prime divisors of numbers from A192140.

The programs for A192141, there is no canonical definition to state claims against.
-/

/-! ## A192141.P2222233828273813806

`A037276(∏{p}[A192140(n+1), #])`
-/

namespace A192141.P2222233828273813806
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192140 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037276 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, p)

end

end A192141.P2222233828273813806

/-! ## A192141.P7598845265697178876

`A084317(A192140(n+1))`
-/

namespace A192141.P7598845265697178876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084317 (A192140 (n + 1)).toNat

end

end A192141.P7598845265697178876

/-! ## A192141.P12812994567129309406

`A080670(∏{p}[A192140(n+1), #])`
-/

namespace A192141.P12812994567129309406
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192140 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080670 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, p)

end

end A192141.P12812994567129309406

/-! ## A192141.P15719696043163105162

`A288532(∏{p}[A192140(n+1), #])`
-/

namespace A192141.P15719696043163105162
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192140 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288532 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, p)

end

end A192141.P15719696043163105162

/-! ## A192141.P4496925209219346715

`A084317(∩[A002113(n+1), A192137(n+1)])`
-/

namespace A192141.P4496925209219346715
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002113 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192137 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084317 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n)

end

end A192141.P4496925209219346715

/-!
# A192142: 1-sequence of reduction of (n^2+n+1) by x^2 -> x+1.

The programs for A192142, the canonical program `A192142.P14644412906987799282` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A192142 has offset 1).

The definition of A192142 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 453 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A192142.P13519825161097817795

`∑[(n²+1+n)*round(ϕ^n/sqrt(5))]`
-/

namespace A192142.P13519825161097817795
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 + 1 + n : ℤ) * SequenceMachineLib.roundAway (Real.goldenRatio ^ n / Real.sqrt (5 : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A192142.P13519825161097817795

namespace A192142

/-- `∑[(n²+1+n)*round(ϕ^n/sqrt(5))]` -/
def P13519825161097817795.Spec : Prop :=
  ∀ n, P13519825161097817795.a n = A192142 (n + 1)

end A192142

/-! ## A192142.P14644412906987799282

`A192245(n+1)+A117152(n)`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A192142

/-- `A192245(n+1)+A117152(n)` -/
def P14644412906987799282.Spec : Prop :=
  ∀ n, P14644412906987799282.a n = A192142 (n + 1)

theorem P14644412906987799282.correct : P14644412906987799282.Spec := by
  intro n
  simp only [A192142, Nat.add_sub_cancel]

end A192142

/-! ## A192142.P17116603234606112915

`A192255(n+1)-A014286(n)`
-/

namespace A192142.P17116603234606112915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192255 (n + 1) - A014286 n

end

end A192142.P17116603234606112915

namespace A192142

/-- `A192255(n+1)-A014286(n)` -/
def P17116603234606112915.Spec : Prop :=
  ∀ n, P17116603234606112915.a n = A192142 (n + 1)

end A192142

/-! ## A192142.P13291728958494521224

`A192255(n+1)-(A190062(n)+A122491(n+1))`
-/

namespace A192142.P13291728958494521224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192255 (n + 1) - (A190062 n + A122491 (n + 1))

end

end A192142.P13291728958494521224

namespace A192142

/-- `A192255(n+1)-(A190062(n)+A122491(n+1))` -/
def P13291728958494521224.Spec : Prop :=
  ∀ n, P13291728958494521224.a n = A192142 (n + 1)

end A192142

/-! ## A192142.P4148204164946222203

`(A192245(n+1)+A192146(n+1))/2-A014286(n)`
-/

namespace A192142.P4148204164946222203
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A192245 (n + 1) + A192146 (n + 1) : ℚ) / 2 - (A014286 n : ℚ)

end

end A192142.P4148204164946222203

namespace A192142

/-- `(A192245(n+1)+A192146(n+1))/2-A014286(n)` -/
def P4148204164946222203.Spec : Prop :=
  ∀ n, P4148204164946222203.a n = (A192142 (n + 1) : ℚ)

end A192142

/-!
# A192143: 0-sequence of reduction of hexagonal numbers sequence by x^2 -> x+1.

The programs for A192143, the canonical program `A192143.P13813246361059917877` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A192143 has offset 1).

The definition of A192143 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 453 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A192143.P13813246361059917877

`∑[Δ[n²]*A006490(n+1)]`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A192143

/-- `∑[Δ[n²]*A006490(n+1)]` -/
def P13813246361059917877.Spec : Prop :=
  ∀ n, P13813246361059917877.a n = A192143 (n + 1)

theorem P13813246361059917877.correct : P13813246361059917877.Spec := by
  intro n
  simp only [A192143, Nat.add_sub_cancel]

end A192143

/-! ## A192143.P10308035537833019968

`∑[∑[4*n+1]*Δ[A000045(n)]]`
-/

namespace A192143.P10308035537833019968
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n + 1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) * (f3 (n + 1) - f3 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A192143.P10308035537833019968

namespace A192143

/-- `∑[∑[4*n+1]*Δ[A000045(n)]]` -/
def P10308035537833019968.Spec : Prop :=
  ∀ n, P10308035537833019968.a n = A192143 (n + 1)

end A192143

/-! ## A192143.P8673954638991049784

`∑[A000045(abs(1-n))*∑[4*n+1]]`
-/

namespace A192143.P8673954638991049784
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 |1 - (n : ℤ)|.toNat * ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A192143.P8673954638991049784

namespace A192143

/-- `∑[A000045(abs(1-n))*∑[4*n+1]]` -/
def P8673954638991049784.Spec : Prop :=
  ∀ n, P8673954638991049784.a n = A192143 (n + 1)

end A192143

/-! ## A192143.P9138041022826775702

`a(n-1)+(2*n+1)*(n+1)*A000045(n-1)` with `a(0)=1`
-/

namespace A192143.P9138041022826775702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (2 * n + 1 : ℤ) * ((n + 1 : ℤ) * A000045 (n - 1))

end

end A192143.P9138041022826775702

namespace A192143

/-- `a(n-1)+(2*n+1)*(n+1)*A000045(n-1)` -/
def P9138041022826775702.Spec : Prop :=
  ∀ n, P9138041022826775702.a n = A192143 (n + 1)

end A192143

/-! ## A192143.P1067614395145276217

`∑[Δ[A000045(n)]*A000384(n+1)]`
-/

namespace A192143.P1067614395145276217
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) - f2 n) * A000384 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A192143.P1067614395145276217

namespace A192143

/-- `∑[Δ[A000045(n)]*A000384(n+1)]` -/
def P1067614395145276217.Spec : Prop :=
  ∀ n, P1067614395145276217.a n = A192143 (n + 1)

end A192143

/-!
# A192144: 1-sequence of reduction of hexagonal numbers sequence by x^2 -> x+1.

The programs for A192144, the canonical program `A192144.P13402227133429832230` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A192144 has offset 1).

The definition of A192144 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 452 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A192144.P3992643693358790373

`∑[round(ϕ^n/sqrt(5))*∑[4*n+1]]`
-/

namespace A192144.P3992643693358790373
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.goldenRatio ^ n / Real.sqrt (5 : ℝ)) * ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A192144.P3992643693358790373

namespace A192144

/-- `∑[round(ϕ^n/sqrt(5))*∑[4*n+1]]` -/
def P3992643693358790373.Spec : Prop :=
  ∀ n, P3992643693358790373.a n = A192144 (n + 1)

end A192144

/-! ## A192144.P13402227133429832230

`A192146(n+1)+A192146(n+1)-A192255(n+1)`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A192144

/-- `A192146(n+1)+A192146(n+1)-A192255(n+1)` -/
def P13402227133429832230.Spec : Prop :=
  ∀ n, P13402227133429832230.a n = A192144 (n + 1)

theorem P13402227133429832230.correct : P13402227133429832230.Spec := by
  intro n
  simp only [A192144, Nat.add_sub_cancel]

end A192144

/-! ## A192144.P7195199428718477799

`2*A192146(n+1)-A192255(n+1)`
-/

namespace A192144.P7195199428718477799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A192146 (n + 1) - A192255 (n + 1)

end

end A192144.P7195199428718477799

namespace A192144

/-- `2*A192146(n+1)-A192255(n+1)` -/
def P7195199428718477799.Spec : Prop :=
  ∀ n, P7195199428718477799.a n = A192144 (n + 1)

theorem P7195199428718477799.correct : P7195199428718477799.Spec := by
  intro n
  simp only [A192144, Nat.add_sub_cancel, A192144.P7195199428718477799.a, A192144.P13402227133429832230.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A192144

/-! ## A192144.P5001023357952188884

`2*(A192255(n+1)+A117152(n)+A014286(n))-A192255(n+1)`
-/

namespace A192144.P5001023357952188884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A192255 (n + 1) + (A117152 n + A014286 n)) - A192255 (n + 1)

end

end A192144.P5001023357952188884

namespace A192144

/-- `2*(A192255(n+1)+A117152(n)+A014286(n))-A192255(n+1)` -/
def P5001023357952188884.Spec : Prop :=
  ∀ n, P5001023357952188884.a n = A192144 (n + 1)

end A192144

/-! ## A192144.P1877214102282549381

`∑[A000045(n)*A002378(2*n+1)]/2`
-/

namespace A192144.P1877214102282549381
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n * A002378 (2 * n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / 2

end

end A192144.P1877214102282549381

namespace A192144

/-- `∑[A000045(n)*A002378(2*n+1)]/2` -/
def P1877214102282549381.Spec : Prop :=
  ∀ n, P1877214102282549381.a n = (A192144 (n + 1) : ℚ)

end A192144

/-!
# A192145: 0-sequence of reduction of pentagonal numbers sequence by x^2 -> x+1.

The programs for A192145, the canonical program `A192145.P15687414144948949849` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A192145 has offset 1).

The definition of A192145 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 453 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A192145.P6422910174712976127

`∑[∑[3*n+1]*A212804(n)]`
-/

namespace A192145.P6422910174712976127
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) * A212804 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A192145.P6422910174712976127

namespace A192145

/-- `∑[∑[3*n+1]*A212804(n)]` -/
def P6422910174712976127.Spec : Prop :=
  ∀ n, P6422910174712976127.a n = A192145 (n + 1)

end A192145

/-! ## A192145.P15687414144948949849

`∑[Δ[n*∑[n]]*Δ[A000045(n)]]`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A192145

/-- `∑[Δ[n*∑[n]]*Δ[A000045(n)]]` -/
def P15687414144948949849.Spec : Prop :=
  ∀ n, P15687414144948949849.a n = A192145 (n + 1)

theorem P15687414144948949849.correct : P15687414144948949849.Spec := by
  intro n
  simp only [A192145, Nat.add_sub_cancel]

end A192145

/-! ## A192145.P4213031125700453175

`∑[A000045(abs(1-n))*∑[3*n+1]]`
-/

namespace A192145.P4213031125700453175
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 |1 - (n : ℤ)|.toNat * ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A192145.P4213031125700453175

namespace A192145

/-- `∑[A000045(abs(1-n))*∑[3*n+1]]` -/
def P4213031125700453175.Spec : Prop :=
  ∀ n, P4213031125700453175.a n = A192145 (n + 1)

end A192145

/-! ## A192145.P6739000592344348581

`∑[Δ[A000045(n)]*A000326(n+1)]`
-/

namespace A192145.P6739000592344348581
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) - f2 n) * A000326 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A192145.P6739000592344348581

namespace A192145

/-- `∑[Δ[A000045(n)]*A000326(n+1)]` -/
def P6739000592344348581.Spec : Prop :=
  ∀ n, P6739000592344348581.a n = A192145 (n + 1)

end A192145

/-! ## A192145.P8509788683868755326

`∑[(A000045(n+1)-A000045(n))*A000326(n+1)]`
-/

namespace A192145.P8509788683868755326
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000045 (n + 1) - A000045 n) * A000326 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A192145.P8509788683868755326

namespace A192145

/-- `∑[(A000045(n+1)-A000045(n))*A000326(n+1)]` -/
def P8509788683868755326.Spec : Prop :=
  ∀ n, P8509788683868755326.a n = A192145 (n + 1)

end A192145

/-!
# A192146: 1-sequence of reduction of pentagonal numbers sequence by x^2 -> x+1.

The programs for A192146, the canonical program `A192146.P11104704368216114941` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A192146 has offset 1).

The definition of A192146 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 452 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A192146.P1943305630193776574

`∑[round(ϕ^n/sqrt(5))*∑[3*n+1]]`
-/

namespace A192146.P1943305630193776574
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.goldenRatio ^ n / Real.sqrt (5 : ℝ)) * ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A192146.P1943305630193776574

namespace A192146

/-- `∑[round(ϕ^n/sqrt(5))*∑[3*n+1]]` -/
def P1943305630193776574.Spec : Prop :=
  ∀ n, P1943305630193776574.a n = A192146 (n + 1)

end A192146

/-! ## A192146.P11104704368216114941

`2*A192255(n+1)-A192245(n+1)`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A192146

/-- `2*A192255(n+1)-A192245(n+1)` -/
def P11104704368216114941.Spec : Prop :=
  ∀ n, P11104704368216114941.a n = A192146 (n + 1)

theorem P11104704368216114941.correct : P11104704368216114941.Spec := by
  intro n
  simp only [A192146, Nat.add_sub_cancel]

end A192146

/-! ## A192146.P17691231960892233687

`A192255(n+1)+A117152(n)+A014286(n)`
-/

namespace A192146.P17691231960892233687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192255 (n + 1) + (A117152 n + A014286 n)

end

end A192146.P17691231960892233687

namespace A192146

/-- `A192255(n+1)+A117152(n)+A014286(n)` -/
def P17691231960892233687.Spec : Prop :=
  ∀ n, P17691231960892233687.a n = A192146 (n + 1)

end A192146

/-! ## A192146.P8445927182180565388

`(A192255(n+1)+A192144(n+1))/2`
-/

namespace A192146.P8445927182180565388
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A192255 (n + 1) + A192144 (n + 1) : ℚ) / 2

end

end A192146.P8445927182180565388

namespace A192146

/-- `(A192255(n+1)+A192144(n+1))/2` -/
def P8445927182180565388.Spec : Prop :=
  ∀ n, P8445927182180565388.a n = (A192146 (n + 1) : ℚ)

theorem P8445927182180565388.correct : P8445927182180565388.Spec := by
  intro n
  simp only [A192146, Nat.add_sub_cancel, A192146.P8445927182180565388.a, A192146.P11104704368216114941.a, A192144, A192144.P13402227133429832230.a, A192245, A192245.P7575187329844493871.f2, A192245.P7575187329844493871.f1, A192245.P7575187329844493871.a, A192255, A192255.P15495661104029478180.f1, A192255.P15495661104029478180.a, A001511, A001511.P17146462531039486101.a, A001611, A001611.P2764665205649475385.a, A157726, A157726.P9748439790048040918.a, A006519, A006519.P10435570611646570274.a, A171977, A171977.P14092944863121073856.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A192146

/-! ## A192146.P2456395310748825344

`∑[A000045(n)*A000217(3*n+2)]/3`
-/

namespace A192146.P2456395310748825344
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n * A000217 (3 * n + 2)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / 3

end

end A192146.P2456395310748825344

namespace A192146

/-- `∑[A000045(n)*A000217(3*n+2)]/3` -/
def P2456395310748825344.Spec : Prop :=
  ∀ n, P2456395310748825344.a n = (A192146 (n + 1) : ℚ)

end A192146

/-! ## A192146.P939375102740295355

`∑[A000045(n)*A002378(3*n+2)]/6`
-/

namespace A192146.P939375102740295355
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n * A002378 (3 * n + 2)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / 6

end

end A192146.P939375102740295355

namespace A192146

/-- `∑[A000045(n)*A002378(3*n+2)]/6` -/
def P939375102740295355.Spec : Prop :=
  ∀ n, P939375102740295355.a n = (A192146 (n + 1) : ℚ)

end A192146

/-!
# A192147: Monotonic ordering of nonnegative differences 3^i-4^j, for 40>= i>=0, j>=0.

The programs for A192147, there is no canonical definition to state claims against.
-/

/-! ## A192147.P10058118389034560800

`∩[A047267(n+1), A192111(n+1)]`
-/

namespace A192147.P10058118389034560800
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047267 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192111 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A192147.P10058118389034560800

/-! ## A192147.P14681256067859290978

`∩[A174438(n+1), A192111(n+1)]`
-/

namespace A192147.P14681256067859290978
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174438 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192111 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A192147.P14681256067859290978

/-! ## A192147.P18350924518778721950

`∩[A192111(n+1), A028966(n)]`
-/

namespace A192147.P18350924518778721950
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192111 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028966 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A192147.P18350924518778721950

/-! ## A192147.P7884579104295677853

`filter[A192111(n+1), A204418(#)]`
-/

namespace A192147.P7884579104295677853
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192111 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A204418 (f1 j).toNat = 1) n)

end

end A192147.P7884579104295677853

/-! ## A192147.P14973809944829809478

`∩[A192111(n+1), A007494(n)]`
-/

namespace A192147.P14973809944829809478
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192111 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007494 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A192147.P14973809944829809478

/-!
# A192148: Monotonic ordering of nonnegative differences 4^i-3^j, for 40>=i>=0, j>=0.

The programs for A192148, there is no canonical definition to state claims against.
-/

/-! ## A192148.P12887666808599720239

`∩[A051205(n+1), A192110(n+1)]`
-/

namespace A192148.P12887666808599720239
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051205 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192110 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A192148.P12887666808599720239

/-! ## A192148.P15739362271835104272

`A061142(A175840(n)²)-A140303(n)`
-/

namespace A192148.P15739362271835104272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061142 (A175840 n ^ 2).toNat - A140303 n

end

end A192148.P15739362271835104272

/-! ## A192148.P915982722522737959

`A320389(A098355(n)²)-A140303(n)`
-/

namespace A192148.P915982722522737959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320389 (A098355 n ^ 2).toNat - A140303 n

end

end A192148.P915982722522737959

/-! ## A192148.P17290247335512784740

`A003963(A025631(n+1))-A140303(n)`
-/

namespace A192148.P17290247335512784740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003963 (A025631 (n + 1)).toNat - A140303 n

end

end A192148.P17290247335512784740

/-! ## A192148.P586323557979454463

`A061142(A025635(n+1))-A140303(n)`
-/

namespace A192148.P586323557979454463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061142 (A025635 (n + 1)).toNat - A140303 n

end

end A192148.P586323557979454463

/-!
# A192149: Monotonic ordering of nonnegative differences 3^i-5^j, for 40>= i>=0, j>=0.

The programs for A192149, there is no canonical definition to state claims against.
-/

/-! ## A192149.P11337086237886830234

`record[A353158(A054576(18*n+17))]`
-/

namespace A192149.P11337086237886830234
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353158 (A054576 (18 * n + 17)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A192149.P11337086237886830234

/-!
# A192152: Monotonic ordering of nonnegative differences 6^i-3^j, for 40>= i>=0, j>=0.

The programs for A192152, there is no canonical definition to state claims against.
-/

/-! ## A192152.P13074388842520966970

`A241139(A177334(n+2)*A242453(3*n+1))`
-/

namespace A192152.P13074388842520966970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241139 (A177334 (n + 2) * A242453 (3 * n + 1)).toNat

end

end A192152.P13074388842520966970

/-!
# A192157: Monotonic ordering of nonnegative differences 3^i-9^j, for 40>=i>=0, j>=0.

The programs for A192157, the canonical program `A192157.P15765879569040438431` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A192157 has offset 1).

The definition of A192157 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 421 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A192157.P15765879569040438431

`record[A098355(n)-A140303(n)²]`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A192157

/-- `record[A098355(n)-A140303(n)²]` -/
def P15765879569040438431.Spec : Prop :=
  ∀ n, P15765879569040438431.a n = A192157 (n + 1)

theorem P15765879569040438431.correct : P15765879569040438431.Spec := by
  intro n
  simp only [A192157, Nat.add_sub_cancel]

end A192157

/-! ## A192157.P18208028284653900049

`record[A098355(n)-(A038220(n)/A013609(n))²]`
-/

namespace A192157.P18208028284653900049
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A098355 n : ℚ) - ((A038220 n : ℚ) / (A013609 n : ℚ)) ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A192157.P18208028284653900049

namespace A192157

/-- `record[A098355(n)-(A038220(n)/A013609(n))²]` -/
def P18208028284653900049.Spec : Prop :=
  ∀ n, P18208028284653900049.a n = (A192157 (n + 1) : ℚ)

end A192157

/-! ## A192157.P18151287106936900900

`A005823(record[A078446(or(2, n))])`
-/

namespace A192157.P18151287106936900900
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078446 (Nat.lor 2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005823 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A192157.P18151287106936900900

namespace A192157

/-- `A005823(record[A078446(or(2, n))])` -/
def P18151287106936900900.Spec : Prop :=
  ∀ n, P18151287106936900900.a n = A192157 (n + 1)

end A192157

/-! ## A192157.P5853519930631675548

`A005823(A192112(n+1)+1)`
-/

namespace A192157.P5853519930631675548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005823 (A192112 (n + 1) + 1).toNat

end

end A192157.P5853519930631675548

namespace A192157

/-- `A005823(A192112(n+1)+1)` -/
def P5853519930631675548.Spec : Prop :=
  ∀ n, P5853519930631675548.a n = A192157 (n + 1)

end A192157

/-! ## A192157.P195576477135622557

`A005823(record[A137688(n)-A262616(n)+1])`
-/

namespace A192157.P195576477135622557
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137688 n - A262616 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005823 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A192157.P195576477135622557

namespace A192157

/-- `A005823(record[A137688(n)-A262616(n)+1])` -/
def P195576477135622557.Spec : Prop :=
  ∀ n, P195576477135622557.a n = A192157 (n + 1)

end A192157

/-! ## A192157.P8334504218085693579

`2*A005836(A192112(n+1)+1)`
-/

namespace A192157.P8334504218085693579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A005836 (A192112 (n + 1) + 1).toNat

end

end A192157.P8334504218085693579

namespace A192157

/-- `2*A005836(A192112(n+1)+1)` -/
def P8334504218085693579.Spec : Prop :=
  ∀ n, P8334504218085693579.a n = A192157 (n + 1)

end A192157

/-! ## A192157.P16342144213623880162

`record[A003961(A137688(n))-A140303(n)²]`
-/

namespace A192157.P16342144213623880162
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003961 (A137688 n).toNat - A140303 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A192157.P16342144213623880162

namespace A192157

/-- `record[A003961(A137688(n))-A140303(n)²]` -/
def P16342144213623880162.Spec : Prop :=
  ∀ n, P16342144213623880162.a n = A192157 (n + 1)

end A192157

/-! ## A192157.P13139469690443810310

`record[A140303(A003056(n))-A140303(n)²]`
-/

namespace A192157.P13139469690443810310
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140303 (A003056 n).toNat - A140303 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A192157.P13139469690443810310

namespace A192157

/-- `record[A140303(A003056(n))-A140303(n)²]` -/
def P13139469690443810310.Spec : Prop :=
  ∀ n, P13139469690443810310.a n = A192157 (n + 1)

end A192157

/-!
# A192158: Monotonic ordering of nonnegative differences 9^i-3^j, for 40>= i>=0, j>=0.

The programs for A192158, the canonical program `A192158.P10446398768701529999` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A192158 has offset 1).

The definition of A192158 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 273 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A192158.P10446398768701529999

`record[A140303(A003056(n))²-A140303(n)]`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A192158

/-- `record[A140303(A003056(n))²-A140303(n)]` -/
def P10446398768701529999.Spec : Prop :=
  ∀ n, P10446398768701529999.a n = A192158 (n + 1)

theorem P10446398768701529999.correct : P10446398768701529999.Spec := by
  intro n
  simp only [A192158, Nat.add_sub_cancel]

end A192158

/-! ## A192158.P4895774260590802896

`A005823(A192113(n+1)+1)`
-/

namespace A192158.P4895774260590802896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005823 (A192113 (n + 1) + 1).toNat

end

end A192158.P4895774260590802896

namespace A192158

/-- `A005823(A192113(n+1)+1)` -/
def P4895774260590802896.Spec : Prop :=
  ∀ n, P4895774260590802896.a n = A192158 (n + 1)

end A192158

/-! ## A192158.P1369750978706104499

`A005823(record[A078446(2*(n+1))])`
-/

namespace A192158.P1369750978706104499
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078446 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005823 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A192158.P1369750978706104499

namespace A192158

/-- `A005823(record[A078446(2*(n+1))])` -/
def P1369750978706104499.Spec : Prop :=
  ∀ n, P1369750978706104499.a n = A192158 (n + 1)

end A192158

/-! ## A192158.P16114637158219134800

`record[A030301(n+1)*A183212(n+1)]`
-/

namespace A192158.P16114637158219134800
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030301 (n + 1) * A183212 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A192158.P16114637158219134800

namespace A192158

/-- `record[A030301(n+1)*A183212(n+1)]` -/
def P16114637158219134800.Spec : Prop :=
  ∀ n, P16114637158219134800.a n = A192158 (n + 1)

end A192158

/-! ## A192158.P7963667052320948009

`∩[A005823(n+1), A338247(A074939(n))]`
-/

namespace A192158.P7963667052320948009
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005823 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338247 (A074939 n).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A192158.P7963667052320948009

namespace A192158

/-- `∩[A005823(n+1), A338247(A074939(n))]` -/
def P7963667052320948009.Spec : Prop :=
  ∀ n, (P7963667052320948009.a n : ℤ) = A192158 (n + 1)

end A192158

/-!
# A192162: Monotonic ordering of nonnegative differences 5^i-4^j, for 40>= i>=0, j>=0.

The programs for A192162, there is no canonical definition to state claims against.
-/

/-! ## A192162.P8208507134963641375

`∩[A008854(n+1), A192115(n+1)]`
-/

namespace A192162.P8208507134963641375
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008854 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192115 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A192162.P8208507134963641375

/-! ## A192162.P18035066451577003041

`∩[A192115(n+1), A266297(n+1)]`
-/

namespace A192162.P18035066451577003041
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192115 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266297 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A192162.P18035066451577003041

/-! ## A192162.P14800934107580673609

`∩[A192115(n+1), A396579(n+1)]`
-/

namespace A192162.P14800934107580673609
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192115 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A396579 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A192162.P14800934107580673609

/-! ## A192162.P4776658500163719974

`∩[A051216(n+1), A192115(n+1)]`
-/

namespace A192162.P4776658500163719974
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051216 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192115 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A192162.P4776658500163719974

/-!
# A192163: Monotonic ordering of nonnegative differences 4^i-6^j, for 40>= i>=0, j>=0.

The programs for A192163, there is no canonical definition to state claims against.
-/

/-! ## A192163.P14841062308409733496

`∩[A047218(n+1), A192116(n+1)]`
-/

namespace A192163.P14841062308409733496
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047218 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192116 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A192163.P14841062308409733496

/-! ## A192163.P16298709499776199811

`∩[A047231(n+1), A192116(n+1)]`
-/

namespace A192163.P16298709499776199811
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047231 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192116 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A192163.P16298709499776199811

/-! ## A192163.P17163623412934425127

`∩[A051208(n+1), A192116(n+1)]`
-/

namespace A192163.P17163623412934425127
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051208 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192116 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A192163.P17163623412934425127

/-! ## A192163.P1312586176625309185

`∩[A192116(n+1), A278998(n+1)]`
-/

namespace A192163.P1312586176625309185
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192116 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278998 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A192163.P1312586176625309185

/-! ## A192163.P16562913518976006175

`∩[A047205(n+1), A192116(n+1)]`
-/

namespace A192163.P16562913518976006175
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047205 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192116 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A192163.P16562913518976006175

/-!
# A192164: Monotonic ordering of nonnegative differences 6^i-4^j, for 40>= i>=0, j>=0.

The programs for A192164, there is no canonical definition to state claims against.
-/

/-! ## A192164.P4872756376173244041

`∩[A051217(n+1), A192117(n+1)]`
-/

namespace A192164.P4872756376173244041
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051217 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192117 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A192164.P4872756376173244041

/-! ## A192164.P2541418858784887675

`∩[A192117(n+1), A047215(n)]`
-/

namespace A192164.P2541418858784887675
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192117 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047215 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A192164.P2541418858784887675

/-! ## A192164.P3228650270559866337

`∩[A100530(n), A192117(n+1)]`
-/

namespace A192164.P3228650270559866337
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100530 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192117 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A192164.P3228650270559866337

/-! ## A192164.P11929319582745866438

`∩[A047267(n+1), A192117(n+1)]`
-/

namespace A192164.P11929319582745866438
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047267 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192117 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A192164.P11929319582745866438

/-! ## A192164.P16362932304854253776

`∩[A174438(n+1), A192117(n+1)]`
-/

namespace A192164.P16362932304854253776
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174438 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192117 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A192164.P16362932304854253776

/-!
# A192165: Monotonic ordering of nonnegative differences 4^i-7^j, for 40>= i>=0, j>=0.

The programs for A192165, there is no canonical definition to state claims against.
-/

/-! ## A192165.P16112723655151639335

`∩[A051209(n+1), A192118(n+1)]`
-/

namespace A192165.P16112723655151639335
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051209 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192118 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A192165.P16112723655151639335

/-! ## A192165.P9671789870182591592

`∩[A008585(n), A192118(n+1)]`
-/

namespace A192165.P9671789870182591592
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008585 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192118 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A192165.P9671789870182591592

/-! ## A192165.P17475312026482358767

`∩[A047231(n+1), A192118(n+1)]`
-/

namespace A192165.P17475312026482358767
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047231 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192118 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A192165.P17475312026482358767

/-! ## A192165.P1877931740532853229

`∩[A047244(n+1), A192118(n+1)]`
-/

namespace A192165.P1877931740532853229
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047244 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192118 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A192165.P1877931740532853229

/-! ## A192165.P15681367043991379416

`∩[A047271(n+1), A192118(n+1)]`
-/

namespace A192165.P15681367043991379416
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047271 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192118 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A192165.P15681367043991379416

/-!
# A192166: Monotonic ordering of nonnegative differences 7^i-4^j, for 40>=i>=0, j>=0.

The programs for A192166, there is no canonical definition to state claims against.
-/

/-! ## A192166.P15624852767483074633

`∩[A192119(n+1), A008585(n)]`
-/

namespace A192166.P15624852767483074633
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192119 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008585 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A192166.P15624852767483074633

/-! ## A192166.P6062694874926474874

`∩[A192119(n+1), A055264(n)]`
-/

namespace A192166.P6062694874926474874
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192119 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055264 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A192166.P6062694874926474874

/-! ## A192166.P17564317108705997159

`∩[A138670(n), A192119(n+1)]`
-/

namespace A192166.P17564317108705997159
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138670 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192119 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A192166.P17564317108705997159

/-! ## A192166.P1039068363684879758

`∩[A047231(n+1), A192119(n+1)]`
-/

namespace A192166.P1039068363684879758
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047231 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192119 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A192166.P1039068363684879758

/-! ## A192166.P7332939744701992507

`∩[A047242(n+1), A192119(n+1)]`
-/

namespace A192166.P7332939744701992507
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047242 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192119 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A192166.P7332939744701992507

/-!
# A192167: Monotonic ordering of nonnegative differences 4^i-8^j, for 40>= i>=0, j>=0.

The programs for A192167, the canonical program `A192167.P5054254474188894599` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A192167 has offset 1).

The definition of A192167 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 561 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A192167.P5054254474188894599

`record[A137688(n)²-A001018(A025581(n))]`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A192167

/-- `record[A137688(n)²-A001018(A025581(n))]` -/
def P5054254474188894599.Spec : Prop :=
  ∀ n, P5054254474188894599.a n = A192167 (n + 1)

theorem P5054254474188894599.correct : P5054254474188894599.Spec := by
  intro n
  simp only [A192167, Nat.add_sub_cancel]

end A192167

/-! ## A192167.P8699505950829868916

`record[A137688(n)²-A305561(A099375(n))]`
-/

namespace A192167.P8699505950829868916
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137688 n ^ 2 - A305561 (A099375 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A192167.P8699505950829868916

namespace A192167

/-- `record[A137688(n)²-A305561(A099375(n))]` -/
def P8699505950829868916.Spec : Prop :=
  ∀ n, P8699505950829868916.a n = A192167 (n + 1)

end A192167

/-! ## A192167.P13819955758530643897

`record[A122803(A003056(n))-A130321(n)^3]`
-/

namespace A192167.P13819955758530643897
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122803 (A003056 n).toNat - A130321 n ^ 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A192167.P13819955758530643897

namespace A192167

/-- `record[A122803(A003056(n))-A130321(n)^3]` -/
def P13819955758530643897.Spec : Prop :=
  ∀ n, P13819955758530643897.a n = A192167 (n + 1)

end A192167

/-! ## A192167.P18159525948474098558

`∩[A192113(n+1), A192120(n+1)]`
-/

namespace A192167.P18159525948474098558
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192113 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192120 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A192167.P18159525948474098558

namespace A192167

/-- `∩[A192113(n+1), A192120(n+1)]` -/
def P18159525948474098558.Spec : Prop :=
  ∀ n, (P18159525948474098558.a n : ℤ) = A192167 (n + 1)

end A192167

/-! ## A192167.P15357487003076178618

`∩[A023709(n+1), A192120(n+1)]`
-/

namespace A192167.P15357487003076178618
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023709 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192120 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A192167.P15357487003076178618

namespace A192167

/-- `∩[A023709(n+1), A192120(n+1)]` -/
def P15357487003076178618.Spec : Prop :=
  ∀ n, (P15357487003076178618.a n : ℤ) = A192167 (n + 1)

end A192167

/-!
# A192168: Monotonic ordering of nonnegative differences 8^i-4^j, for 40>= i>=0, j>=0.

The programs for A192168, there is no canonical definition to state claims against.
-/

/-! ## A192168.P5032637784416307657

`∩[A192121(n+1), A023758(A056847(n)+1+n)]`
-/

namespace A192168.P5032637784416307657
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192121 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023758 (A056847 n + 1 + (n : ℤ)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A192168.P5032637784416307657

/-! ## A192168.P16520772178453619011

`∩[A023758(2*n+1-A000194(n)), A192121(n+1)]`
-/

namespace A192168.P16520772178453619011
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023758 ((2 * n + 1 : ℤ) - A000194 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192121 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A192168.P16520772178453619011

/-! ## A192168.P10642192463961677301

`∩[A192112(n+1), A192121(n+1)]`
-/

namespace A192168.P10642192463961677301
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192112 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192121 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A192168.P10642192463961677301

/-! ## A192168.P16869945765003617394

`∩[A192121(n+1), A060142(n)]`
-/

namespace A192168.P16869945765003617394
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192121 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060142 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A192168.P16869945765003617394

/-! ## A192168.P6372551502481328288

`∩[A023713(n+1), A192121(n+1)]`
-/

namespace A192168.P6372551502481328288
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023713 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192121 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A192168.P6372551502481328288

/-!
# A192169: Monotonic ordering of nonnegative differences 4^i-9^j, for 40>= i>=0, j>=0.

The programs for A192169, there is no canonical definition to state claims against.
-/

/-! ## A192169.P8160662600177124785

`∩[A051211(n+1), A192110(n+1)]`
-/

namespace A192169.P8160662600177124785
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051211 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192110 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A192169.P8160662600177124785

/-! ## A192169.P10816287988252606974

`∩[A051211(n+1), A192122(n+1)]`
-/

namespace A192169.P10816287988252606974
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051211 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192122 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A192169.P10816287988252606974

/-! ## A192169.P4798098144647256239

`∩[A051211(n+1), A192148(n+1)]`
-/

namespace A192169.P4798098144647256239
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051211 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192148 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A192169.P4798098144647256239

/-! ## A192169.P4869952489631224160

`∩[A014601(n), A192148(n+1)]`
-/

namespace A192169.P4869952489631224160
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014601 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192148 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A192169.P4869952489631224160

/-! ## A192169.P4149205175748860546

`∩[A192148(n+1), A278519(n)]`
-/

namespace A192169.P4149205175748860546
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192148 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278519 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A192169.P4149205175748860546

/-!
# A192170: Monotonic ordering of nonnegative differences 9^i-4^j, for 40>= i>=0, j>=0.

The programs for A192170, there is no canonical definition to state claims against.
-/

/-! ## A192170.P12913610738945210760

`∩[A192123(n+1), A192147(n+1)]`
-/

namespace A192170.P12913610738945210760
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192123 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192147 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A192170.P12913610738945210760

/-! ## A192170.P14080482782340288146

`∩[A051206(n+1), A192111(n+1)]`
-/

namespace A192170.P14080482782340288146
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051206 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192111 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A192170.P14080482782340288146

/-! ## A192170.P17549887518693666467

`∩[A051206(n+1), A192123(n+1)]`
-/

namespace A192170.P17549887518693666467
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051206 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192123 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A192170.P17549887518693666467

/-! ## A192170.P5275590750747165927

`∩[A051206(n+1), A192147(n+1)]`
-/

namespace A192170.P5275590750747165927
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051206 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192147 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A192170.P5275590750747165927

/-! ## A192170.P6390472156425544643

`filter[A192147(n+1), A133872(#)]`
-/

namespace A192170.P6390472156425544643
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192147 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A133872 (f1 j).toNat = 1) n)

end

end A192170.P6390472156425544643

/-!
# A192171: Monotonic ordering of nonnegative differences 4^i-10^j, for 40>=i>=0, j>=0.

The programs for A192171, there is no canonical definition to state claims against.
-/

/-! ## A192171.P2841214590099479141

`∩[A051212(n+1), A192124(n+1)]`
-/

namespace A192171.P2841214590099479141
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051212 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192124 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A192171.P2841214590099479141

/-! ## A192171.P13843712097215252034

`∩[A192124(n+1), A256882(n+1)]`
-/

namespace A192171.P13843712097215252034
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192124 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256882 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A192171.P13843712097215252034

/-! ## A192171.P10161915221795405760

`∩[A039004(n+1), A192124(n+1)]`
-/

namespace A192171.P10161915221795405760
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039004 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192124 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A192171.P10161915221795405760

/-! ## A192171.P4049646946168027009

`∩[A008585(n), A192124(n+1)]`
-/

namespace A192171.P4049646946168027009
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008585 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192124 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A192171.P4049646946168027009

/-! ## A192171.P8785156448694172579

`∩[A192124(n+1), A319451(n)]`
-/

namespace A192171.P8785156448694172579
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192124 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319451 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A192171.P8785156448694172579

/-!
# A192172: Monotonic ordering of nonnegative differences 10^i-4^j, for 40>=i>=0, j>=0.

The programs for A192172, there is no canonical definition to state claims against.
-/

/-! ## A192172.P12660808793695234355

`filter[A192125(n+1), A093719(#)]`
-/

namespace A192172.P12660808793695234355
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192125 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A093719 (f1 j).toNat = 1) n)

end

end A192172.P12660808793695234355

/-! ## A192172.P1002025089285635032

`filter[A192125(n+1), A079978(#)]`
-/

namespace A192172.P1002025089285635032
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192125 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A079978 (f1 j).toNat = 1) n)

end

end A192172.P1002025089285635032

/-! ## A192172.P9878587148549797192

`filter[A192125(n+1), A329680(#)]`
-/

namespace A192172.P9878587148549797192
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192125 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A329680 (f1 j).toNat = 1) n)

end

end A192172.P9878587148549797192

/-! ## A192172.P10694004961474088991

`∩[A192125(n+1), A008585(n)]`
-/

namespace A192172.P10694004961474088991
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192125 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008585 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A192172.P10694004961474088991

/-! ## A192172.P15060228859314086952

`∩[A051221(n+1), A192125(n+1)]`
-/

namespace A192172.P15060228859314086952
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051221 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192125 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A192172.P15060228859314086952

/-!
# A192174: Triangle T(n,k) of the coefficients [x^(n-k)] of the polynomial p(0,x)=-1, p(1,x)=x and p(n,x) = x*p(n-1,x) - p(n-2,x) in row n, column k.

The programs for A192174, there is no canonical definition to state claims against.
-/

/-! ## A192174.P16950321950513382180

`(A195662(n)+A192011(n))/4`
-/

namespace A192174.P16950321950513382180
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A195662 n + A192011 n : ℚ) / 4

end

end A192174.P16950321950513382180

/-! ## A192174.P11416885638672012797

`A053119(n)+A195662(n)-A192011(n)`
-/

namespace A192174.P11416885638672012797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053119 n + (A195662 n - A192011 n)

end

end A192174.P11416885638672012797

/-! ## A192174.P6360335189555221876

`A057427(n)*A195662(n)-A135929(n)`
-/

namespace A192174.P6360335189555221876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n * A195662 n - A135929 n

end

end A192174.P6360335189555221876

/-! ## A192174.P5479572562374133589

`A195662(n)%A005408(n)-A135929(n)`
-/

namespace A192174.P5479572562374133589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A195662 n) (A005408 n) - A135929 n

end

end A192174.P5479572562374133589

/-! ## A192174.P5394111543090066612

`A000040(n+1)%2*A195662(n)-A135929(n)`
-/

namespace A192174.P5394111543090066612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000040 (n + 1)) 2 * A195662 n - A135929 n

end

end A192174.P5394111543090066612

/-! ## A192174.P16508069562982523046

`A049310(A061579(n))+A195662(n)-A192011(n)`
-/

namespace A192174.P16508069562982523046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049310 (A061579 n).toNat + (A195662 n - A192011 n)

end

end A192174.P16508069562982523046

/-! ## A192174.P1663197416631334950

`(A053119(n)+A192011(n)-(A133607(n)+A108299(n)))/2`
-/

namespace A192174.P1663197416631334950
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A053119 n + (A192011 n - (A133607 n + A108299 n)) : ℚ) / 2

end

end A192174.P1663197416631334950

/-! ## A192174.P2440883893796297643

`A195673(n)-A192011(n)`
-/

namespace A192174.P2440883893796297643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195673 n - A192011 n

end

end A192174.P2440883893796297643

/-! ## A192174.P8224912976053948964

`(A195673(n)+A195662(n))/5`
-/

namespace A192174.P8224912976053948964
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A195673 n + A195662 n : ℚ) / 5

end

end A192174.P8224912976053948964

/-! ## A192174.P16285816638435899798

`(A193002(n)+A053119(n))/2`
-/

namespace A192174.P16285816638435899798
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A193002 n + A053119 n : ℚ) / 2

end

end A192174.P16285816638435899798

/-!
# A192175: Array of primes determined by distance to next prime, by antidiagonals.

The programs for A192175, there is no canonical definition to state claims against.
-/

/-! ## A192175.P7817998406268670479

`A000040(A192176(n+1))`
-/

namespace A192175.P7817998406268670479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A192176 (n + 1)).toNat

end

end A192175.P7817998406268670479

/-! ## A192175.P2712475702987512235

`A008578(A192176(n+1)+1)`
-/

namespace A192175.P2712475702987512235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (A192176 (n + 1) + 1).toNat

end

end A192175.P2712475702987512235

/-! ## A192175.P159549282353420447

`A182986(A192176(n+1)+1)`
-/

namespace A192175.P159549282353420447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182986 (A192176 (n + 1) + 1).toNat

end

end A192175.P159549282353420447

/-! ## A192175.P3173695458035194835

`A207790(2*A192176(n+1))`
-/

namespace A192175.P3173695458035194835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207790 (2 * A192176 (n + 1)).toNat

end

end A192175.P3173695458035194835

/-! ## A192175.P18075699013194605306

`∑{d}[A192176(n+1), A007444(#)]`
-/

namespace A192175.P18075699013194605306
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192176 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A007444 d

end

end A192175.P18075699013194605306

/-! ## A192175.P4794225849393435688

`A006005(A192176(n+1))+A000007(n)`
-/

namespace A192175.P4794225849393435688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006005 (A192176 (n + 1)).toNat + A000007 n

end

end A192175.P4794225849393435688

/-!
# A192176: Index array for A192175 (distance up to next prime), by antidiagonals.

The programs for A192176, there is no canonical definition to state claims against.
-/

/-! ## A192176.P1963892111578878632

`A000720(A192175(n+1))`
-/

namespace A192176.P1963892111578878632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A192175 (n + 1)).toNat

end

end A192176.P1963892111578878632

/-! ## A192176.P10956792779080158723

`A003963(p?[A192175(n+1)])`
-/

namespace A192176.P10956792779080158723
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192175 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003963 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A192176.P10956792779080158723

/-! ## A192176.P6671798634143323934

`A026233(p?[A192175(n+1)])`
-/

namespace A192176.P6671798634143323934
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192175 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026233 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A192176.P6671798634143323934

/-! ## A192176.P12991070669011000404

`A026238(p?[A192175(n+1)])`
-/

namespace A192176.P12991070669011000404
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192175 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026238 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A192176.P12991070669011000404

/-! ## A192176.P18402856465904239538

`A049084(p?[A192175(n+1)])`
-/

namespace A192176.P18402856465904239538
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192175 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049084 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A192176.P18402856465904239538

/-! ## A192176.P4248360481488888188

`A055396(p?[A192175(n+1)])`
-/

namespace A192176.P4248360481488888188
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192175 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055396 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A192176.P4248360481488888188

/-! ## A192176.P685577849986361277

`A056239(p?[A192175(n+1)])`
-/

namespace A192176.P685577849986361277
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192175 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056239 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A192176.P685577849986361277

/-! ## A192176.P2244169397032281523

`A061395(p?[A192175(n+1)])`
-/

namespace A192176.P2244169397032281523
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192175 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A192176.P2244169397032281523

/-! ## A192176.P8663112761930909662

`A003963(2*A192175(n+1))`
-/

namespace A192176.P8663112761930909662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003963 (2 * A192175 (n + 1)).toNat

end

end A192176.P8663112761930909662

/-! ## A192176.P12703928061071662651

`A061395(2*A192175(n+1))`
-/

namespace A192176.P12703928061071662651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (2 * A192175 (n + 1)).toNat

end

end A192176.P12703928061071662651

/-!
# A192177: Array determined by distance down to nearest prime.

The programs for A192177, there is no canonical definition to state claims against.
-/

/-! ## A192177.P10524696429844231306

`A210882(A359299(n+1))`
-/

namespace A192177.P10524696429844231306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210882 (A359299 (n + 1)).toNat

end

end A192177.P10524696429844231306

/-!
# A192184: Number of partitions of n into lower Wythoff numbers (A000201).

The programs for A192184, there is no canonical definition to state claims against.
-/

/-! ## A192184.P15426520407971139872

`A107236(n)+A079998(A079968(n))`
-/

namespace A192184.P15426520407971139872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107236 n + A079998 (A079968 n).toNat

end

end A192184.P15426520407971139872

/-! ## A192184.P17969413557807422828

`A107236(n)+A066301(A282952(n))`
-/

namespace A192184.P17969413557807422828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107236 n + A066301 (A282952 n).toNat

end

end A192184.P17969413557807422828

/-! ## A192184.P6630923530148419724

`A210715(A186759(n))+A107236(n)`
-/

namespace A192184.P6630923530148419724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210715 (A186759 n).toNat + A107236 n

end

end A192184.P6630923530148419724

/-! ## A192184.P7714494804436239871

`or(A107236(n), A283265(A097406(n+1)))`
-/

namespace A192184.P7714494804436239871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A107236 n) (A283265 (A097406 (n + 1)).toNat)

end

end A192184.P7714494804436239871

/-! ## A192184.P5172839139537433882

`A035553(n)+A066301(A282952(n))-A035563(n)`
-/

namespace A192184.P5172839139537433882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035553 n + (A066301 (A282952 n).toNat - A035563 n)

end

end A192184.P5172839139537433882

/-!
# A192185: Number of partitions of n into upper Wythoff numbers (A001950).

The programs for A192185, there is no canonical definition to state claims against.
-/

/-! ## A192185.P13865363634400493812

`A224710(n+1)+A074937(A224703(n+1))`
-/

namespace A192185.P13865363634400493812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224710 (n + 1) + A074937 (A224703 (n + 1)).toNat

end

end A192185.P13865363634400493812

/-! ## A192185.P8084487010217208311

`A008612(xor(A025814(n), A325108(n)))`
-/

namespace A192185.P8084487010217208311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008612 (Int.xor (A025814 n) (A325108 n)).toNat

end

end A192185.P8084487010217208311

/-! ## A192185.P3144699277089995404

`A008612(xor(A029223(n), A325108(n)))`
-/

namespace A192185.P3144699277089995404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008612 (Int.xor (A029223 n) (A325108 n)).toNat

end

end A192185.P3144699277089995404

/-! ## A192185.P15923185948784822634

`A029313(eq[A029278(n), A029284(n+3)])`
-/

namespace A192185.P15923185948784822634
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029278 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029284 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029313 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A192185.P15923185948784822634

/-! ## A192185.P6914098862919630819

`Δ[A316843(record[A001612(n)])]`
-/

namespace A192185.P6914098862919630819
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001612 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316843 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A192185.P6914098862919630819

/-!
# A192186: a(n) = binomial(2*n, floor(n*sqrt(2))).

The programs for A192186, the canonical program `A192186.P475967937329914822` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A192186 has offset 0).

The definition of A192186 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `C(2*n, floor(n*sqrt(2)))` (program `A192186.P475967937329914822`, by `A192186.P475967937329914822.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A192186.P475967937329914822

`C(2*n, floor(n*sqrt(2)))`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A192186

/-- `C(2*n, floor(n*sqrt(2)))` -/
def P475967937329914822.Spec : Prop :=
  ∀ n, (P475967937329914822.a n : ℤ) = A192186 n

theorem P475967937329914822.correct : P475967937329914822.Spec := by
  intro n
  simp only [A192186]

end A192186

/-! ## A192186.P4372714057862047402

`A034870(A001951(n)+n²)`
-/

namespace A192186.P4372714057862047402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034870 (A001951 n + (n ^ 2 : ℤ)).toNat

end

end A192186.P4372714057862047402

namespace A192186

/-- `A034870(A001951(n)+n²)` -/
def P4372714057862047402.Spec : Prop :=
  ∀ n, P4372714057862047402.a n = A192186 n

end A192186

/-! ## A192186.P15960685159063811017

`record[C(A091453(n+1), A172471(n))]`
-/

namespace A192186.P15960685159063811017
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A091453 (n + 1)).toNat (A172471 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A192186.P15960685159063811017

namespace A192186

/-- `record[C(A091453(n+1), A172471(n))]` -/
def P15960685159063811017.Spec : Prop :=
  ∀ n, (P15960685159063811017.a n : ℤ) = A192186 n

end A192186

/-! ## A192186.P5277426357742158612

`A074909(A014105(n)-A001951(n))`
-/

namespace A192186.P5277426357742158612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074909 (A014105 n - A001951 n).toNat

end

end A192186.P5277426357742158612

namespace A192186

/-- `A074909(A014105(n)-A001951(n))` -/
def P5277426357742158612.Spec : Prop :=
  ∀ n, P5277426357742158612.a n = A192186 n

end A192186

/-! ## A192186.P6207827976053936711

`A074909(A014105(n)-A195119(n))`
-/

namespace A192186.P6207827976053936711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074909 (A014105 n - A195119 n).toNat

end

end A192186.P6207827976053936711

namespace A192186

/-- `A074909(A014105(n)-A195119(n))` -/
def P6207827976053936711.Spec : Prop :=
  ∀ n, P6207827976053936711.a n = A192186 n

end A192186

/-! ## A192186.P15147389424587874337

`record[C(A056926(2*n), A000196(n))]`
-/

namespace A192186.P15147389424587874337
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A056926 (2 * n)).toNat (A000196 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A192186.P15147389424587874337

namespace A192186

/-- `record[C(A056926(2*n), A000196(n))]` -/
def P15147389424587874337.Spec : Prop :=
  ∀ n, (P15147389424587874337.a n : ℤ) = A192186 n

end A192186

/-! ## A192186.P11065954928667028647

`A007318(A014105(n)+A001951(n))`
-/

namespace A192186.P11065954928667028647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (A014105 n + A001951 n).toNat

end

end A192186.P11065954928667028647

namespace A192186

/-- `A007318(A014105(n)+A001951(n))` -/
def P11065954928667028647.Spec : Prop :=
  ∀ n, P11065954928667028647.a n = A192186 n

end A192186

/-! ## A192186.P5960786674281487208

`A007318(A001951(n)+A000217(2*n))`
-/

namespace A192186.P5960786674281487208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (A001951 n + A000217 (2 * n)).toNat

end

end A192186.P5960786674281487208

namespace A192186

/-- `A007318(A001951(n)+A000217(2*n))` -/
def P5960786674281487208.Spec : Prop :=
  ∀ n, P5960786674281487208.a n = A192186 n

end A192186

/-! ## A192186.P11074683268828529805

`record[C(A000188(2*(n+1)), A000196(n))]`
-/

namespace A192186.P11074683268828529805
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A000188 (2 * (n + 1))).toNat (A000196 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A192186.P11074683268828529805

namespace A192186

/-- `record[C(A000188(2*(n+1)), A000196(n))]` -/
def P11074683268828529805.Spec : Prop :=
  ∀ n, (P11074683268828529805.a n : ℤ) = A192186 n

end A192186

/-!
# A192187: Positions of prime powers p^e with p < e within A000961.

The programs for A192187, there is no canonical definition to state claims against.
-/

/-! ## A192187.P13751780358985040304

`A095874(A192135(n+1))`
-/

namespace A192187.P13751780358985040304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095874 (A192135 (n + 1)).toNat

end

end A192187.P13751780358985040304

/-! ## A192187.P12312762782729704920

`lt[A025473(n+1), A025474(n+1)]+1`
-/

namespace A192187.P12312762782729704920
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025473 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025474 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A192187.P12312762782729704920

/-! ## A192187.P7169444221291310654

`lt[A000961(n+1), A192015(n+1)]+1`
-/

namespace A192187.P7169444221291310654
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000961 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192015 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A192187.P7169444221291310654

/-! ## A192187.P1646051737211453426

`lt[A246655(n+1), A192015(n+1)]+1`
-/

namespace A192187.P1646051737211453426
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246655 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192015 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A192187.P1646051737211453426

/-! ## A192187.P18150511252907229984

`lt[A006530(A000961(n+1)), A025474(n+1)]+1`
-/

namespace A192187.P18150511252907229984
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A000961 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025474 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A192187.P18150511252907229984

/-!
# A192188: Positions of prime powers p^e with e <= p within A000961.

The programs for A192188, the canonical program `A192188.P14315286780405415744` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A192188 has offset 1).

The definition of A192188 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9977 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A192188.P14016604475391915104

`A095874(A074583(n+1))`
-/

namespace A192188.P14016604475391915104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095874 (A074583 (n + 1)).toNat

end

end A192188.P14016604475391915104

namespace A192188

/-- `A095874(A074583(n+1))` -/
def P14016604475391915104.Spec : Prop :=
  ∀ n, P14016604475391915104.a n = A192188 (n + 1)

end A192188

/-! ## A192188.P14315286780405415744

`lt[A192015(n+1), A246655(n+1)]+1`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A192188

/-- `lt[A192015(n+1), A246655(n+1)]+1` -/
def P14315286780405415744.Spec : Prop :=
  ∀ n, (P14315286780405415744.a n : ℤ) = A192188 (n + 1)

theorem P14315286780405415744.correct : P14315286780405415744.Spec := by
  intro n
  simp only [A192188, Nat.add_sub_cancel]

end A192188

/-! ## A192188.P14297880615025073508

`lt[A192015(n+1), A309269(n+1)-A000961(n+1)]+1`
-/

namespace A192188.P14297880615025073508
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192015 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309269 (n + 1) - A000961 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A192188.P14297880615025073508

namespace A192188

/-- `lt[A192015(n+1), A309269(n+1)-A000961(n+1)]+1` -/
def P14297880615025073508.Spec : Prop :=
  ∀ n, (P14297880615025073508.a n : ℤ) = A192188 (n + 1)

theorem P14297880615025073508.correct : P14297880615025073508.Spec := by
  intro n
  simp only [A192188, Nat.add_sub_cancel, A192188.P14297880615025073508.f1, A192188.P14297880615025073508.f2, A192188.P14297880615025073508.a, A192188.P14315286780405415744.f1, A192188.P14315286780405415744.f2, A192188.P14315286780405415744.a, A000961, A000961.P15008477845107890738.f1, A000961.P15008477845107890738.f2, A000961.P15008477845107890738.a, A192015, A192015.P4229160100283672966.a, A246655, A246655.P2302191067120461210.a, A309269, A309269.P6439327140874271105.a, A000079, A000079.P10855139691139572931.a, A003415, A003415.P9326043729983995739.f1, A003415.P9326043729983995739.a, A061345, A061345.P12671314331313567408.f1, A061345.P12671314331313567408.a, A081061, A081061.P11142281922485975947.f1, A081061.P11142281922485975947.a, A300251, A300251.P13750012435361977920.f1, A300251.P13750012435361977920.a, A374134, A374134.P15663071369572716484.f1, A374134.P15663071369572716484.a, A007427, A007427.P16346481250890679101.f1, A007427.P16346481250890679101.a, A073491, A073491.P6445803315451258056.f1, A073491.P6445803315451258056.f2, A073491.P6445803315451258056.a, A319684, A319684.P10446271486458079777.f1, A319684.P10446271486458079777.a, A340363, A340363.P15438000431600784952.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A192188

/-! ## A192188.P3155730865541598096

`lt[A192015(n+1), A121315(n+1)/A000961(n+1)]+1`
-/

namespace A192188.P3155730865541598096
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192015 (n + 1)

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A121315 (n + 1) : ℚ) / (A000961 (n + 1) : ℚ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℚ) < f2 j) n + 1

end

end A192188.P3155730865541598096

namespace A192188

/-- `lt[A192015(n+1), A121315(n+1)/A000961(n+1)]+1` -/
def P3155730865541598096.Spec : Prop :=
  ∀ n, (P3155730865541598096.a n : ℤ) = A192188 (n + 1)

end A192188

/-! ## A192188.P10849377446085598120

`record[A095874(A068937(n+1))]`
-/

namespace A192188.P10849377446085598120
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095874 (A068937 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A192188.P10849377446085598120

namespace A192188

/-- `record[A095874(A068937(n+1))]` -/
def P10849377446085598120.Spec : Prop :=
  ∀ n, P10849377446085598120.a n = A192188 (n + 1)

end A192188

/-! ## A192188.P6002568475247664300

`lt[A192015(A233583(n+1)), A000961(n+1)]`
-/

namespace A192188.P6002568475247664300
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192015 (A233583 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000961 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A192188.P6002568475247664300

namespace A192188

/-- `lt[A192015(A233583(n+1)), A000961(n+1)]` -/
def P6002568475247664300.Spec : Prop :=
  ∀ n, (P6002568475247664300.a n : ℤ) = A192188 (n + 1)

end A192188

/-! ## A192188.P18217999200566583709

`record[A117332(n+1)]`
-/

namespace A192188.P18217999200566583709
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117332 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A192188.P18217999200566583709

namespace A192188

/-- `record[A117332(n+1)]` -/
def P18217999200566583709.Spec : Prop :=
  ∀ n, P18217999200566583709.a n = A192188 (n + 1)

end A192188

/-!
# A192189: Polynomial-like numbers: numbers whose sequence of number-derivatives (A003415) is monotonically decreasing.

The programs for A192189, there is no canonical definition to state claims against.
-/

/-! ## A192189.P15573357981273835356

`lt[A003056(A099306(n)), A361869(n)]`
-/

namespace A192189.P15573357981273835356
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (A099306 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361869 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A192189.P15573357981273835356

/-! ## A192189.P10239712660833834695

`eq[A144972(A028310(n)), A351079(n)]`
-/

namespace A192189.P10239712660833834695
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144972 (A028310 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351079 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A192189.P10239712660833834695

/-! ## A192189.P8665321399251354520

`lt[A168036(n), A001489(A258646(n))]`
-/

namespace A192189.P8665321399251354520
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168036 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001489 (A258646 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A192189.P8665321399251354520

/-! ## A192189.P16930493468975830529

`lt[A324660(n), A228474(A351079(n))]`
-/

namespace A192189.P16930493468975830529
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324660 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228474 (A351079 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A192189.P16930493468975830529

/-! ## A192189.P1247815094968887160

`eq[A105868(∑[n])+n, A351079(n)]`
-/

namespace A192189.P1247815094968887160
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105868 (∑ j ∈ Finset.range (n + 1), f2 j) + (n : ℤ)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351079 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f3 j) n

end

end A192189.P1247815094968887160

/-!
# A192190: Degree of A192189(n) (polynomial-like numbers) in term of number derivatives: number of A003415-iterations up to reaching 0.

The programs for A192190, there is no canonical definition to state claims against.
-/

/-! ## A192190.P15243062389018194769

`A099307(A192189(n+1))-1`
-/

namespace A192190.P15243062389018194769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099307 (A192189 (n + 1)).toNat - 1

end

end A192190.P15243062389018194769

/-! ## A192190.P15062004139122894423

`∑[A119944(n)]%A099307(A192189(n+1))`
-/

namespace A192190.P15062004139122894423
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119944 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) (A099307 (A192189 (n + 1)).toNat)

end

end A192190.P15062004139122894423

/-! ## A192190.P1005847707597125732

`A134824(n+2)+A099307(A192189(n+1))`
-/

namespace A192190.P1005847707597125732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134824 (n + 2) + A099307 (A192189 (n + 1)).toNat

end

end A192190.P1005847707597125732

/-! ## A192190.P150761513795398580

`A001478(n+1)+A099307(A192189(n+1))+n`
-/

namespace A192190.P150761513795398580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001478 (n + 1) + (A099307 (A192189 (n + 1)).toNat + (n : ℤ))

end

end A192190.P150761513795398580

/-! ## A192190.P6597079320127099075

`A103131(A002144(n+1))+A099307(A192189(n+1))`
-/

namespace A192190.P6597079320127099075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103131 (A002144 (n + 1)).toNat + A099307 (A192189 (n + 1)).toNat

end

end A192190.P6597079320127099075

/-! ## A192190.P18207325271389671840

`A103131(A023212(n+1))+A099307(A192189(n+1))`
-/

namespace A192190.P18207325271389671840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103131 (A023212 (n + 1)).toNat + A099307 (A192189 (n + 1)).toNat

end

end A192190.P18207325271389671840

/-! ## A192190.P12206433091382812135

`A128834(A092256(n+1))+A099307(A192189(n+1))`
-/

namespace A192190.P12206433091382812135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128834 (A092256 (n + 1)).toNat + A099307 (A192189 (n + 1)).toNat

end

end A192190.P12206433091382812135

/-! ## A192190.P12621624884691990894

`A103131(A152470(n+1))+A099307(A192189(n+1))`
-/

namespace A192190.P12621624884691990894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103131 (A152470 (n + 1)).toNat + A099307 (A192189 (n + 1)).toNat

end

end A192190.P12621624884691990894

/-! ## A192190.P10112906911979412623

`A328310(A000040(n+1))+A099307(A192189(n+1))`
-/

namespace A192190.P10112906911979412623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328310 (A000040 (n + 1)).toNat + A099307 (A192189 (n + 1)).toNat

end

end A192190.P10112906911979412623

/-! ## A192190.P4605018152699791745

`A260148(A253969(n+1))+A099307(A192189(n+1))`
-/

namespace A192190.P4605018152699791745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260148 (A253969 (n + 1)).toNat + A099307 (A192189 (n + 1)).toNat

end

end A192190.P4605018152699791745

/-!
# A192192: Numbers whose second arithmetic derivative (A068346) is prime; Polynomial-like numbers of degree 3.

The programs for A192192, there is no canonical definition to state claims against.
-/

/-! ## A192192.P9957658907480195728

`eq[4, A256750(n)]`
-/

namespace A192192.P9957658907480195728
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256750 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A192192.P9957658907480195728

/-! ## A192192.P8416042705390444782

`eq[1, A099306(n)]`
-/

namespace A192192.P8416042705390444782
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099306 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A192192.P8416042705390444782

/-! ## A192192.P3298306606301383380

`lt[0, A341995(A003415(n))]`
-/

namespace A192192.P3298306606301383380
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341995 (A003415 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A192192.P3298306606301383380

/-! ## A192192.P4166216133793959822

`eq[4, A099307(A028310(n))]`
-/

namespace A192192.P4166216133793959822
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099307 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A192192.P4166216133793959822

/-! ## A192192.P6664816363375881283

`A020725(eq[4, A099307(n+1)])`
-/

namespace A192192.P6664816363375881283
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099307 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A192192.P6664816363375881283

/-! ## A192192.P4247079494896014707

`record[A328246(n+1)/A099306(A328246(n+1))]`
-/

namespace A192192.P4247079494896014707
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A328246 (n + 1) : ℚ) / (A099306 (A328246 (n + 1)).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A192192.P4247079494896014707

/-! ## A192192.P9253533172541876962

`eq[1, A068346(A168036(n)+n)]`
-/

namespace A192192.P9253533172541876962
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068346 (A168036 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A192192.P9253533172541876962

/-! ## A192192.P1977909444433746317

`eq[1, A068346(A129283(n)-n)]`
-/

namespace A192192.P1977909444433746317
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068346 (A129283 n - (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A192192.P1977909444433746317

/-! ## A192192.P5456723806718689599

`eq[1, A068346(A319703(n-(1-n)%(n+1)+1))]`
-/

namespace A192192.P5456723806718689599
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068346 (A319703 ((n : ℤ) - Int.tmod (1 - (n : ℤ)) (n + 1 : ℤ) + 1).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A192192.P5456723806718689599

/-!
# A192193: Monotonic ordering of nonnegative differences 5^i-6^j, for 40>= i>=0, j>=0.

The programs for A192193, there is no canonical definition to state claims against.
-/

/-! ## A192193.P11022487091400650899

`A307205(A048373(n+1))%A001248(n+1)`
-/

namespace A192193.P11022487091400650899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A307205 (A048373 (n + 1)).toNat) (A001248 (n + 1))

end

end A192193.P11022487091400650899

/-!
# A192194: Monotonic ordering of nonnegative differences 6^i-5^j, for 40>= i>=0, j>=0.

The programs for A192194, there is no canonical definition to state claims against.
-/

/-! ## A192194.P688673440263291011

`A102440(A025626(n+1))-A003961(A140303(n))`
-/

namespace A192194.P688673440263291011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102440 (A025626 (n + 1)).toNat - A003961 (A140303 n).toNat

end

end A192194.P688673440263291011

/-!
# A192195: Monotonic ordering of nonnegative differences 5^i-7^j, for 40>= i>=0, j>=0.

The programs for A192195, there is no canonical definition to state claims against.
-/

/-! ## A192195.P18174362004264214034

`A110856(n+1)-A190544(3*n+4)-n`
-/

namespace A192195.P18174362004264214034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110856 (n + 1) - A190544 (3 * n + 4) - (n : ℤ)

end

end A192195.P18174362004264214034

/-! ## A192195.P13752200924781444822

`A204022(A001160(n+1))-A389084(n+1)`
-/

namespace A192195.P13752200924781444822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204022 (A001160 (n + 1)).toNat - A389084 (n + 1)

end

end A192195.P13752200924781444822

/-!
# A192197: Monotonic ordering of nonnegative differences 5^i-8^j, for 40>= i>=0, j>=0.

The programs for A192197, there is no canonical definition to state claims against.
-/

/-! ## A192197.P5778147134795230910

`xor(A122851(n), A212009(A005594(n)))`
-/

namespace A192197.P5778147134795230910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A122851 n) (A212009 (A005594 n).toNat)

end

end A192197.P5778147134795230910

/-!
# A192199: Monotonic ordering of nonnegative differences 5^i-9^j, for 40>= i>=0, j>=0.

The programs for A192199, there is no canonical definition to state claims against.
-/

/-! ## A192199.P9246440270323471527

`filter[A192150(n+1), A358680(#)]`
-/

namespace A192199.P9246440270323471527
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192150 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A358680 (f1 j).toNat = 1) n)

end

end A192199.P9246440270323471527

/-! ## A192199.P13966644617991812857

`filter[A192150(n+1), A374036(#)]`
-/

namespace A192199.P13966644617991812857
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192150 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A374036 (f1 j).toNat = 1) n)

end

end A192199.P13966644617991812857

/-! ## A192199.P17984849907356551998

`filter[A192150(n+1), A374045(#)]`
-/

namespace A192199.P17984849907356551998
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192150 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A374045 (f1 j).toNat = 1) n)

end

end A192199.P17984849907356551998

/-! ## A192199.P14422914793800730909

`filter[A192150(n+1), A121262(#)]`
-/

namespace A192199.P14422914793800730909
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192150 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A121262 (f1 j).toNat = 1) n)

end

end A192199.P14422914793800730909

/-! ## A192199.P16347185868367321415

`filter[A192150(n+1), A152822(#)]`
-/

namespace A192199.P16347185868367321415
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192150 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A152822 (f1 j).toNat = 1) n)

end

end A192199.P16347185868367321415

