import SequenceMachineLib.Basic
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
import Seq.B000.C013
import Seq.B000.C014
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C033
import Seq.B000.C036
import Seq.B000.C037
import Seq.B000.C038
import Seq.B000.C039
import Seq.B000.C040
import Seq.B000.C041
import Seq.B000.C042
import Seq.B000.C043
import Seq.B000.C045
import Seq.B000.C046
import Seq.B000.C047
import Seq.B000.C050
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C004
import Seq.B001.C009
import Seq.B001.C010
import Seq.B001.C013
import Seq.B001.C014
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C005
import Seq.B002.C007
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
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
import Seq.B007.C000
import Seq.B007.C001
import Seq.B008.C000
import Seq.B009.C000
import Seq.B010.C000
import Seq.B011.C000
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
import Seq.Opaque.C024
import SequenceMachineLib.Triangle

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A398100: Number of inequivalent n X n symmetric nonnegative integer matrices with each row sum nonzero and at most n, up to simultaneous row and column permutations.

The programs for A398100, there is no canonical definition to state claims against.
-/

/-! ## A398100.P1226625531793632051

`A398099(4*∑[n])`
-/

namespace A398100.P1226625531793632051
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A398099 (4 * (∑ j ∈ Finset.range (n + 1), f1 j))

end

end A398100.P1226625531793632051

/-!
# A398101: Number of inequivalent n X n symmetric nonnegative integer matrices with each row sum nonzero and at most 2, up to simultaneous row and column permutations.

The programs for A398101, there is no canonical definition to state claims against.
-/

/-! ## A398101.P3664713133507696300

`∑{#}[n, A000990(#)*A000990(n-#)]`
-/

namespace A398101.P3664713133507696300
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), A000990 k * A000990 (n - k)

end

end A398101.P3664713133507696300

/-! ## A398101.P13134005562841104564

`A398099(∑[n+3])`
-/

namespace A398101.P13134005562841104564
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A398099 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A398101.P13134005562841104564

/-! ## A398101.P11746762556682142

`A328592(A000325(n))+A294565(n)`
-/

namespace A398101.P11746762556682142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328592 (A000325 n).toNat + A294565 n

end

end A398101.P11746762556682142

/-!
# A398102: Number of inequivalent n X n symmetric nonnegative integer matrices with each row sum nonzero and at most 3, up to simultaneous row and column permutations.

The programs for A398102, there is no canonical definition to state claims against.
-/

/-! ## A398102.P7081116276355316077

`A398099(eq[4, A004736(n+1)])`
-/

namespace A398102.P7081116276355316077
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A398099 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A398102.P7081116276355316077

/-! ## A398102.P16183768479297602550

`A398099(A000217(n+3)+n)`
-/

namespace A398102.P16183768479297602550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A398099 (A000217 (n + 3) + (n : ℤ)).toNat

end

end A398102.P16183768479297602550

/-!
# A398104: Number of minimal dominating sets in the 3 X n king graph.

The programs for A398104, the canonical program `A398104.P9560857359750963102` is in `Seq.B000.C050`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A398104 has offset 0).

The definition of A398104 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A398104.P9560857359750963102

`ogf((1+2x+3x^2+3x^3-21x^5-6x^6-18x^8-5x^9-2x^10-3x^11-2x^13)/(1-3x^2-3x^3-12x^4-7x^5+20x^6-2x^8+15x^9+4x^10+3x^11+4x^12+2x^13+2x^14))`

The canonical program, it is in `Seq.B000.C050`.
-/

namespace A398104

/-- `ogf((1+2x+3x^2+3x^3-21x^5-6x^6-18x^8-5x^9-2x^10-3x^11-2x^13)/(1-3x^2-3x^3-12x^4-7x^5+20x^6-2x^8+15x^9+4x^10+3x^11+4x^12+2x^13+2x^14))` -/
def P9560857359750963102.Spec : Prop :=
  ∀ n, P9560857359750963102.a n = A398104 n

theorem P9560857359750963102.correct : P9560857359750963102.Spec := by
  intro n
  simp only [A398104]

end A398104

/-! ## A398104.P9170245545370427967

`A286849(∑[n+1]+n)`
-/

namespace A398104.P9170245545370427967
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286849 (∑ j ∈ Finset.range (n + 1), f1 j + n)

end

end A398104.P9170245545370427967

namespace A398104

/-- `A286849(∑[n+1]+n)` -/
def P9170245545370427967.Spec : Prop :=
  ∀ n, P9170245545370427967.a n = A398104 n

end A398104

/-! ## A398104.P5607194956874409343

`and(-1, A286849(C(n+3, 2)-2))`
-/

namespace A398104.P5607194956874409343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A286849 (Nat.choose (n + 3) 2 - 2))

end

end A398104.P5607194956874409343

namespace A398104

/-- `and(-1, A286849(C(n+3, 2)-2))` -/
def P5607194956874409343.Spec : Prop :=
  ∀ n, P5607194956874409343.a n = A398104 n

end A398104

/-! ## A398104.P14181016519517905860

`A286849(C(n+3, 2)-2)%A151990(n+1)`
-/

namespace A398104.P14181016519517905860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A286849 (Nat.choose (n + 3) 2 - 2)) (A151990 (n + 1))

end

end A398104.P14181016519517905860

namespace A398104

/-- `A286849(C(n+3, 2)-2)%A151990(n+1)` -/
def P14181016519517905860.Spec : Prop :=
  ∀ n, P14181016519517905860.a n = A398104 n

end A398104

/-! ## A398104.P12619527512202304236

`record[A286849(n+1)/A286880(n+2)]`
-/

namespace A398104.P12619527512202304236
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A286849 (n + 1) : ℚ) / (A286880 (n + 2) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A398104.P12619527512202304236

namespace A398104

/-- `record[A286849(n+1)/A286880(n+2)]` -/
def P12619527512202304236.Spec : Prop :=
  ∀ n, P12619527512202304236.a n = (A398104 n : ℚ)

end A398104

/-!
# A398105: Number of minimal dominating sets in the 4 X n king graph.

The programs for A398105, the canonical program `A398105.P14381521786893344065` is in `Seq.B001.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A398105 has offset 0).

The definition of A398105 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 182 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A398105.P14381521786893344065

`A286850(n)²`

The canonical program, it is in `Seq.B001.C014`.
-/

namespace A398105

/-- `A286850(n)²` -/
def P14381521786893344065.Spec : Prop :=
  ∀ n, P14381521786893344065.a n = A398105 n

theorem P14381521786893344065.correct : P14381521786893344065.Spec := by
  intro n
  simp only [A398105]

end A398105

/-! ## A398105.P17479514920562378929

`A286850(n)^A341345(A017113(n))`
-/

namespace A398105.P17479514920562378929
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A286850 n : ℚ) ^ (A341345 (A017113 n).toNat : ℤ)

end

end A398105.P17479514920562378929

namespace A398105

/-- `A286850(n)^A341345(A017113(n))` -/
def P17479514920562378929.Spec : Prop :=
  ∀ n, P17479514920562378929.a n = (A398105 n : ℚ)

end A398105

/-! ## A398105.P4137278733836741956

`A286850(n)^A001227(A000040(n+1))`
-/

namespace A398105.P4137278733836741956
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A286850 n : ℚ) ^ (A001227 (A000040 (n + 1)).toNat : ℤ)

end

end A398105.P4137278733836741956

namespace A398105

/-- `A286850(n)^A001227(A000040(n+1))` -/
def P4137278733836741956.Spec : Prop :=
  ∀ n, P4137278733836741956.a n = (A398105 n : ℚ)

end A398105

/-! ## A398105.P12409095625748966530

`A286850(n)^A000005(A089531(n+1))`
-/

namespace A398105.P12409095625748966530
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A286850 n : ℚ) ^ (A000005 (A089531 (n + 1)).toNat : ℤ)

end

end A398105.P12409095625748966530

namespace A398105

/-- `A286850(n)^A000005(A089531(n+1))` -/
def P12409095625748966530.Spec : Prop :=
  ∀ n, P12409095625748966530.a n = (A398105 n : ℚ)

end A398105

/-! ## A398105.P4094086390136688897

`A286850(n)^A001227(A198170(n+1))`
-/

namespace A398105.P4094086390136688897
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A286850 n : ℚ) ^ (A001227 (A198170 (n + 1)).toNat : ℤ)

end

end A398105.P4094086390136688897

namespace A398105

/-- `A286850(n)^A001227(A198170(n+1))` -/
def P4094086390136688897.Spec : Prop :=
  ∀ n, P4094086390136688897.a n = (A398105 n : ℚ)

end A398105

/-! ## A398105.P1376443714689013507

`A286850(n)^A263204(A082647(n+1))`
-/

namespace A398105.P1376443714689013507
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A286850 n : ℚ) ^ (A263204 (A082647 (n + 1)).toNat : ℤ)

end

end A398105.P1376443714689013507

namespace A398105

/-- `A286850(n)^A263204(A082647(n+1))` -/
def P1376443714689013507.Spec : Prop :=
  ∀ n, P1376443714689013507.a n = (A398105 n : ℚ)

end A398105

/-! ## A398105.P12140750168181149635

`A286850(n)^A341345(A239050(n+1))`
-/

namespace A398105.P12140750168181149635
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A286850 n : ℚ) ^ (A341345 (A239050 (n + 1)).toNat : ℤ)

end

end A398105.P12140750168181149635

namespace A398105

/-- `A286850(n)^A341345(A239050(n+1))` -/
def P12140750168181149635.Spec : Prop :=
  ∀ n, P12140750168181149635.a n = (A398105 n : ℚ)

end A398105

/-! ## A398105.P892602299354762187

`A286850(n)^A341345(A000010(n+3))`
-/

namespace A398105.P892602299354762187
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A286850 n : ℚ) ^ (A341345 (A000010 (n + 3)).toNat : ℤ)

end

end A398105.P892602299354762187

namespace A398105

/-- `A286850(n)^A341345(A000010(n+3))` -/
def P892602299354762187.Spec : Prop :=
  ∀ n, P892602299354762187.a n = (A398105 n : ℚ)

end A398105

/-! ## A398105.P3774715399758694181

`A286850(n)^A341345(A002322(2*n+5))`
-/

namespace A398105.P3774715399758694181
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A286850 n : ℚ) ^ (A341345 (A002322 (2 * n + 5)).toNat : ℤ)

end

end A398105.P3774715399758694181

namespace A398105

/-- `A286850(n)^A341345(A002322(2*n+5))` -/
def P3774715399758694181.Spec : Prop :=
  ∀ n, P3774715399758694181.a n = (A398105 n : ℚ)

end A398105

/-! ## A398105.P14523640337985276513

`A286850(n)^A001227(A175277(n+1))`
-/

namespace A398105.P14523640337985276513
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A286850 n : ℚ) ^ (A001227 (A175277 (n + 1)).toNat : ℤ)

end

end A398105.P14523640337985276513

namespace A398105

/-- `A286850(n)^A001227(A175277(n+1))` -/
def P14523640337985276513.Spec : Prop :=
  ∀ n, P14523640337985276513.a n = (A398105 n : ℚ)

end A398105

/-!
# A398106: Array read by antidiagonals: T(n,k) is the number of rooted 2k-ary dyslexic trees with n internal nodes, n >= 0, k >= 0.

The programs for A398106, there is no canonical definition to state claims against.
-/

/-! ## A398106.P14872056594860296998

`A359043(A185282(n))`
-/

namespace A398106.P14872056594860296998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359043 (A185282 n).toNat

end

end A398106.P14872056594860296998

/-! ## A398106.P13332720067086805898

`A185284(2*n+1)+A185283(A185282(n))`
-/

namespace A398106.P13332720067086805898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185284 (2 * n + 1) + A185283 (A185282 n).toNat

end

end A398106.P13332720067086805898

/-! ## A398106.P14065777569232186838

`A378112(n)-A010054(A064987(3*(n+1)))`
-/

namespace A398106.P14065777569232186838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378112 n - A010054 (A064987 (3 * (n + 1))).toNat

end

end A398106.P14065777569232186838

/-!
# A398107: Array read by antidiagonals: T(n,k) is the number of k-ary mobiles (circular rooted trees) with n internal nodes, n >= 0, k >= 0.

The programs for A398107, there is no canonical definition to state claims against.
-/

/-! ## A398107.P1869253838976040527

`and(A038013(n), A398108(n))`
-/

namespace A398107.P1869253838976040527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A038013 n) (A398108 n)

end

end A398107.P1869253838976040527

/-! ## A398107.P17266145431615903387

`and(A048465(n+1), A398108(n))`
-/

namespace A398107.P17266145431615903387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A048465 (n + 1)) (A398108 n)

end

end A398107.P17266145431615903387

/-! ## A398107.P15337801960978434323

`and(A055624(n+1), A398108(n))`
-/

namespace A398107.P15337801960978434323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A055624 (n + 1)) (A398108 n)

end

end A398107.P15337801960978434323

/-! ## A398107.P9281621230967651843

`and(A112674(n+1), A398108(n))`
-/

namespace A398107.P9281621230967651843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A112674 (n + 1)) (A398108 n)

end

end A398107.P9281621230967651843

/-!
# A398108: Array read by antidiagonals: T(n,k) is the number of k-ary dyslexic mobiles with n internal nodes, n >= 0, k >= 0.

The programs for A398108, there is no canonical definition to state claims against.
-/

/-! ## A398108.P13634970987914491308

`A154450(A398107(n)%A391448(n+1))`
-/

namespace A398108.P13634970987914491308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154450 (Int.tmod (A398107 n) (A391448 (n + 1))).toNat

end

end A398108.P13634970987914491308

/-! ## A398108.P6095111705704263667

`A398107(n)-A122840(A005708(n+4))`
-/

namespace A398108.P6095111705704263667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A398107 n - A122840 (A005708 (n + 4)).toNat

end

end A398108.P6095111705704263667

/-! ## A398108.P5130392475212900105

`A398107(n)+A010815(A000290(3*(n+1)))`
-/

namespace A398108.P5130392475212900105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A398107 n + A010815 (A000290 (3 * (n + 1))).toNat

end

end A398108.P5130392475212900105

/-!
# A398109: Number of 4-ary dyslexic mobiles with n internal nodes.

The programs for A398109, there is no canonical definition to state claims against.
-/

/-! ## A398109.P8683162611284646531

`A324701(A036717(n))`
-/

namespace A398109.P8683162611284646531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324701 (A036717 n).toNat

end

end A398109.P8683162611284646531

/-! ## A398109.P12450855579908068692

`A136110(A309508(n))`
-/

namespace A398109.P12450855579908068692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136110 (A309508 n).toNat

end

end A398109.P12450855579908068692

/-! ## A398109.P17127532288914330795

`A371705(n)+A070635(A371926(3*(n+1))+1)`
-/

namespace A398109.P17127532288914330795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371705 n + A070635 (A371926 (3 * (n + 1)) + 1).toNat

end

end A398109.P17127532288914330795

/-!
# A398110: Number of 5-ary dyslexic mobiles with n internal nodes.

The programs for A398110, there is no canonical definition to state claims against.
-/

/-! ## A398110.P11997037220867055640

`A398108(A055999(n+3))`
-/

namespace A398110.P11997037220867055640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A398108 (A055999 (n + 3)).toNat

end

end A398110.P11997037220867055640

/-! ## A398110.P7860645080835503578

`A024417(A148428(n))`
-/

namespace A398110.P7860645080835503578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024417 (A148428 n).toNat

end

end A398110.P7860645080835503578

/-! ## A398110.P3076428026996993135

`A085860(A007054(n+3))+1`
-/

namespace A398110.P3076428026996993135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085860 (A007054 (n + 3)).toNat + 1

end

end A398110.P3076428026996993135

/-! ## A398110.P6402495210572722841

`A155587(n)-A319951(a(n-1)+n)` with `a(0)=1`
-/

namespace A398110.P6402495210572722841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A155587 n - A319951 (a (n - 1) + (n : ℤ)).toNat

end

end A398110.P6402495210572722841

/-!
# A398111: Number of n-ary mobiles (circular rooted trees) with n internal nodes.

The programs for A398111, there is no canonical definition to state claims against.
-/

/-! ## A398111.P10488789817176918564

`A398107(∑[4*n])`
-/

namespace A398111.P10488789817176918564
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A398107 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A398111.P10488789817176918564

/-! ## A398111.P3276095071697821799

`A363947(A017991(n))`
-/

namespace A398111.P3276095071697821799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363947 (A017991 n).toNat

end

end A398111.P3276095071697821799

/-! ## A398111.P11545426214761211475

`A363947(A017992(n))`
-/

namespace A398111.P11545426214761211475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363947 (A017992 n).toNat

end

end A398111.P11545426214761211475

/-!
# A398113: Number of rooted unlabeled 4-gonal cacti having n polygons with each vertex in at most two polygons.

The programs for A398113, there is no canonical definition to state claims against.
-/

/-! ## A398113.P2443761259746381407

`A398112(eq[4, A004736(n+1)])`
-/

namespace A398113.P2443761259746381407
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A398112 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A398113.P2443761259746381407

/-! ## A398113.P2470068447944464762

`A248227(A281346(n))`
-/

namespace A398113.P2470068447944464762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248227 (A281346 n).toNat

end

end A398113.P2470068447944464762

/-!
# A398114: Array read by antidiagonals: T(n,k) is the number of unlabeled k-gonal cacti having n polygons with each vertex in at most two polygons, n >= 0, k >= 1.

The programs for A398114, there is no canonical definition to state claims against.
-/

/-! ## A398114.P9295333709985363787

`A325169(A294250(n)+A281013(n+1))`
-/

namespace A398114.P9295333709985363787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325169 (A294250 n + A281013 (n + 1)).toNat

end

end A398114.P9295333709985363787

/-!
# A398115: Number of unlabeled 5-gonal cacti having n polygons with each vertex in at most two polygons.

The programs for A398115, there is no canonical definition to state claims against.
-/

/-! ## A398115.P3159524548441368300

`A325768(A345176(n+1)-A345179(n+1))`
-/

namespace A398115.P3159524548441368300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325768 (A345176 (n + 1) - A345179 (n + 1)).toNat

end

end A398115.P3159524548441368300

/-!
# A398119: a(n) is the number of distinct cycles under iteration of x -> s(x^n) on the positive integers, where s is the decimal digit sum and fixed points are counted as cycles of length 1.

The programs for A398119, there is no canonical definition to state claims against.
-/

/-! ## A398119.P6018316354611936226

`A398120(n+2)+A046471(n+2)+1`
-/

namespace A398119.P6018316354611936226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A398120 (n + 2) + A046471 (n + 2) + 1

end

end A398119.P6018316354611936226

/-! ## A398119.P4919962251002593952

`A398120(n+2)+A046019(n+2)`
-/

namespace A398119.P4919962251002593952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A398120 (n + 2) + A046019 (n + 2)

end

end A398119.P4919962251002593952

/-!
# A398120: a(n) is the number of distinct cycles of length at least 2 under iteration of x -> s(x^n) on the positive integers, where s is the decimal digit sum.

The programs for A398120, there is no canonical definition to state claims against.
-/

/-! ## A398120.P4112195170701231101

`A398119(n+2)-A046471(n+2)-1`
-/

namespace A398120.P4112195170701231101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A398119 (n + 2) - A046471 (n + 2) - 1

end

end A398120.P4112195170701231101

/-! ## A398120.P17321606535647218987

`A398119(n+2)-A046019(n+2)`
-/

namespace A398120.P17321606535647218987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A398119 (n + 2) - A046019 (n + 2)

end

end A398120.P17321606535647218987

/-!
# A398129: Primes in the conjectured unique infinite branch of the tree of primes of the form 6k-1 defined in the comments.

The programs for A398129, there is no canonical definition to state claims against.
-/

/-! ## A398129.P15987827409416499939

`filter[A046133(n+1), A118006(#)]`
-/

namespace A398129.P15987827409416499939
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046133 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A118006 (f1 j).toNat = 1) n)

end

end A398129.P15987827409416499939

/-! ## A398129.P12468851529342051755

`filter[A086136(n+1), A118006(#)]`
-/

namespace A398129.P12468851529342051755
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086136 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A118006 (f1 j).toNat = 1) n)

end

end A398129.P12468851529342051755

/-! ## A398129.P16836237593525038335

`filter[A337815(n+1), A118006(#)]`
-/

namespace A398129.P16836237593525038335
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337815 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A118006 (f1 j).toNat = 1) n)

end

end A398129.P16836237593525038335

/-! ## A398129.P6754026108098926785

`filter[A398132(n+1), A118006(#)]`
-/

namespace A398129.P6754026108098926785
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A398132 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A118006 (f1 j).toNat = 1) n)

end

end A398129.P6754026108098926785

/-! ## A398129.P9705698785189871833

`filter[A038611(n+2), A118006(#)]`
-/

namespace A398129.P9705698785189871833
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038611 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A118006 (f1 j).toNat = 1) n)

end

end A398129.P9705698785189871833

/-!
# A398130: Primes in the conjectured unique infinite branch of the tree of primes of the form 6k+1 defined in the comments.

The programs for A398130, there is no canonical definition to state claims against.
-/

/-! ## A398130.P13042635333836715141

`∩[A040079(n+1), A125293(n+1)]`
-/

namespace A398130.P13042635333836715141
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040079 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125293 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A398130.P13042635333836715141

/-!
# A398131: Next prime after the n-th semiprime.

The programs for A398131, the canonical program `A398131.P3205953752780474683` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A398131 has offset 1).

The definition of A398131 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001358, A151800, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A398131.P3205953752780474683

`A151800(A001358(n+1))`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A398131

/-- `A151800(A001358(n+1))` -/
def P3205953752780474683.Spec : Prop :=
  ∀ n, P3205953752780474683.a n = A398131 (n + 1)

theorem P3205953752780474683.correct : P3205953752780474683.Spec := by
  intro n
  simp only [A398131, Nat.add_sub_cancel]

end A398131

/-! ## A398131.P43554210764382159

`A045344(A111939(n+1))`
-/

namespace A398131.P43554210764382159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045344 (A111939 (n + 1)).toNat

end

end A398131.P43554210764382159

namespace A398131

/-- `A045344(A111939(n+1))` -/
def P43554210764382159.Spec : Prop :=
  ∀ n, P43554210764382159.a n = A398131 (n + 1)

end A398131

/-! ## A398131.P1710417570851523874

`A000040(A000720(A373656(n+1))-n)`
-/

namespace A398131.P1710417570851523874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A000720 (A373656 (n + 1)).toNat - (n : ℤ)).toNat

end

end A398131.P1710417570851523874

namespace A398131

/-- `A000040(A000720(A373656(n+1))-n)` -/
def P1710417570851523874.Spec : Prop :=
  ∀ n, P1710417570851523874.a n = A398131 (n + 1)

end A398131

/-! ## A398131.P8971964988472171722

`A066169(A186621(n+1))`
-/

namespace A398131.P8971964988472171722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066169 (A186621 (n + 1)).toNat

end

end A398131.P8971964988472171722

namespace A398131

/-- `A066169(A186621(n+1))` -/
def P8971964988472171722.Spec : Prop :=
  ∀ n, P8971964988472171722.a n = A398131 (n + 1)

end A398131

/-! ## A398131.P3575493446228602042

`A007918(A001358(1+n))`
-/

namespace A398131.P3575493446228602042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007918 (A001358 (1 + n)).toNat

end

end A398131.P3575493446228602042

namespace A398131

/-- `A007918(A001358(1+n))` -/
def P3575493446228602042.Spec : Prop :=
  ∀ n, P3575493446228602042.a n = A398131 (n + 1)

end A398131

/-! ## A398131.P4979932338257800028

`A066169(A001358(n+1))`
-/

namespace A398131.P4979932338257800028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066169 (A001358 (n + 1)).toNat

end

end A398131.P4979932338257800028

namespace A398131

/-- `A066169(A001358(n+1))` -/
def P4979932338257800028.Spec : Prop :=
  ∀ n, P4979932338257800028.a n = A398131 (n + 1)

end A398131

/-! ## A398131.P4298502343258961080

`A007918(A088707(n+1))`
-/

namespace A398131.P4298502343258961080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007918 (A088707 (n + 1)).toNat

end

end A398131.P4298502343258961080

namespace A398131

/-- `A007918(A088707(n+1))` -/
def P4298502343258961080.Spec : Prop :=
  ∀ n, P4298502343258961080.a n = A398131 (n + 1)

end A398131

/-! ## A398131.P2052479207207260673

`A066169(A176629(n+1))`
-/

namespace A398131.P2052479207207260673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066169 (A176629 (n + 1)).toNat

end

end A398131.P2052479207207260673

namespace A398131

/-- `A066169(A176629(n+1))` -/
def P2052479207207260673.Spec : Prop :=
  ∀ n, P2052479207207260673.a n = A398131 (n + 1)

end A398131

/-! ## A398131.P7266405613175555403

`A007918(A176540(n+2))`
-/

namespace A398131.P7266405613175555403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007918 (A176540 (n + 2)).toNat

end

end A398131.P7266405613175555403

namespace A398131

/-- `A007918(A176540(n+2))` -/
def P7266405613175555403.Spec : Prop :=
  ∀ n, P7266405613175555403.a n = A398131 (n + 1)

end A398131

/-! ## A398131.P2369800676575848004

`A308052(A075818(n+1))`
-/

namespace A398131.P2369800676575848004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308052 (A075818 (n + 1)).toNat

end

end A398131.P2369800676575848004

namespace A398131

/-- `A308052(A075818(n+1))` -/
def P2369800676575848004.Spec : Prop :=
  ∀ n, P2369800676575848004.a n = A398131 (n + 1)

end A398131

/-!
# A398132: Primes which are internal nodes in the conjectured tree of primes of sequences A398129 and A398130. Also primes in the sequence A129758.

The programs for A398132, there is no canonical definition to state claims against.
-/

/-! ## A398132.P15187666168325780734

`A000040(lt[A124921(n), A124976(2*(n+2))])`
-/

namespace A398132.P15187666168325780734
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124921 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124976 (2 * (n + 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A398132.P15187666168325780734

/-! ## A398132.P16967629474144428817

`A000040(lt[A353392(n), A142468(2*n+3)])`
-/

namespace A398132.P16967629474144428817
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353392 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142468 (2 * n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A398132.P16967629474144428817

/-! ## A398132.P11382183864893327556

`A000040(lt[A237126(n+4), A113381(2*(n+1))])`
-/

namespace A398132.P11382183864893327556
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237126 (n + 4)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113381 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A398132.P11382183864893327556

/-! ## A398132.P5757858073590230427

`A000040(lt[A365215(n+4), A303102(2*(n+2))])`
-/

namespace A398132.P5757858073590230427
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365215 (n + 4)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303102 (2 * (n + 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A398132.P5757858073590230427

/-! ## A398132.P1439723000415914318

`A000040(lt[A098361(3*(n+1)), A113084(2*(n+1))])`
-/

namespace A398132.P1439723000415914318
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098361 (3 * (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113084 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A398132.P1439723000415914318

/-!
# A398136: Triangle read by rows: T(n, k) = n! * n^(n - k) / (n - k)!.

The programs for A398136, the canonical program `A398136.P16405717770834090747` is in `Seq.B000.C050`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A398136 has offset 0).

The definition of A398136 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A398136.P16405717770834090747

`row(n)!*row(n)^(row(n)-col(n))/(row(n)-col(n))!`

The canonical program, it is in `Seq.B000.C050`.
-/

namespace A398136

/-- `row(n)!*row(n)^(row(n)-col(n))/(row(n)-col(n))!` -/
def P16405717770834090747.Spec : Prop :=
  ∀ n, P16405717770834090747.a n = (A398136 n : ℚ)

end A398136

/-! ## A398136.P15885408185311225493

`col(n)!*C(row(n), col(n))*row(n)^(row(n)-col(n))`
-/

namespace A398136.P15885408185311225493
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (SequenceMachineLib.triCol n) * Nat.choose (SequenceMachineLib.triRow n) (SequenceMachineLib.triCol n) : ℚ) * (SequenceMachineLib.triRow n : ℚ) ^ ((SequenceMachineLib.triRow n : ℤ) - (SequenceMachineLib.triCol n : ℤ) : ℤ)

end

end A398136.P15885408185311225493

namespace A398136

/-- `col(n)!*C(row(n), col(n))*row(n)^(row(n)-col(n))` -/
def P15885408185311225493.Spec : Prop :=
  ∀ n, P15885408185311225493.a n = (A398136 n : ℚ)

end A398136

/-! ## A398136.P16111178587149743546

`col(n)!*A071207(n)`
-/

namespace A398136.P16111178587149743546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (SequenceMachineLib.triCol n) : ℤ) * A071207 n

end

end A398136.P16111178587149743546

namespace A398136

/-- `col(n)!*A071207(n)` -/
def P16111178587149743546.Spec : Prop :=
  ∀ n, P16111178587149743546.a n = A398136 n

end A398136

/-! ## A398136.P2768667115202154946

`A071207(n)*A233543(n)`
-/

namespace A398136.P2768667115202154946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071207 n * A233543 n

end

end A398136.P2768667115202154946

namespace A398136

/-- `A071207(n)*A233543(n)` -/
def P2768667115202154946.Spec : Prop :=
  ∀ n, P2768667115202154946.a n = A398136 n

end A398136

/-! ## A398136.P17780759705067370151

`A007318(n)*A350149(n)`
-/

namespace A398136.P17780759705067370151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n * A350149 n

end

end A398136.P17780759705067370151

namespace A398136

/-- `A007318(n)*A350149(n)` -/
def P17780759705067370151.Spec : Prop :=
  ∀ n, P17780759705067370151.a n = A398136 n

end A398136

/-! ## A398136.P15630861700713200291

`A008279(n)*A364870(n)`
-/

namespace A398136.P15630861700713200291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008279 n * A364870 n

end

end A398136.P15630861700713200291

namespace A398136

/-- `A008279(n)*A364870(n)` -/
def P15630861700713200291.Spec : Prop :=
  ∀ n, P15630861700713200291.a n = A398136 n

end A398136

/-! ## A398136.P9916179521883891947

`A364870(n)*A398192(n)/A398187(n)`
-/

namespace A398136.P9916179521883891947
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A364870 n * A398192 n : ℚ) / (A398187 n : ℚ)

end

end A398136.P9916179521883891947

namespace A398136

/-- `A364870(n)*A398192(n)/A398187(n)` -/
def P9916179521883891947.Spec : Prop :=
  ∀ n, P9916179521883891947.a n = (A398136 n : ℚ)

end A398136

/-! ## A398136.P906273323226460332

`A398192(n)*A398485(n)/A398484(n)`
-/

namespace A398136.P906273323226460332
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A398192 n * A398485 n : ℚ) / (A398484 n : ℚ)

end

end A398136.P906273323226460332

namespace A398136

/-- `A398192(n)*A398485(n)/A398484(n)` -/
def P906273323226460332.Spec : Prop :=
  ∀ n, P906273323226460332.a n = (A398136 n : ℚ)

end A398136

/-!
# A398137: Expansion of generating function x / (1 - 3*x - x^2)^2.

The programs for A398137, the canonical program `A398137.P11904510586614224668` is in `Seq.B000.C050`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A398137 has offset 1).

The definition of A398137 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(1/(1-6x+7x^2+6x^3+x^4))` (program `A398137.P11904510586614224668`, by `A398137.P11904510586614224668.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A398137.P11904510586614224668

`ogf(1/(1-6x+7x^2+6x^3+x^4))`

The canonical program, it is in `Seq.B000.C050`.
-/

namespace A398137

/-- `ogf(1/(1-6x+7x^2+6x^3+x^4))` -/
def P11904510586614224668.Spec : Prop :=
  ∀ n, P11904510586614224668.a n = A398137 (n + 1)

theorem P11904510586614224668.correct : P11904510586614224668.Spec := by
  intro n
  simp only [A398137, Nat.add_sub_cancel]

end A398137

/-! ## A398137.P3356989843999073115

`∑{#}[floor(n/2), (n+1-#)*C(n-#, #)*3^(n-2*#)]`
-/

namespace A398137.P3356989843999073115
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℚ) / 2⌋

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1).toNat, (((n + 1 : ℤ) - (k : ℤ)) * (Nat.choose ((n : ℤ) - (k : ℤ)).toNat k : ℤ) : ℚ) * (3 : ℚ) ^ ((n : ℤ) - (2 * k : ℤ) : ℤ)

end

end A398137.P3356989843999073115

namespace A398137

/-- `∑{#}[floor(n/2), (n+1-#)*C(n-#, #)*3^(n-2*#)]` -/
def P3356989843999073115.Spec : Prop :=
  ∀ n, P3356989843999073115.a n = (A398137 (n + 1) : ℚ)

end A398137

/-! ## A398137.P3855830843484190515

`6*a(n-1)-7*a(n-2)-6*a(n-3)-a(n-4)` with `a(0)=1, a(1)=6, a(2)=29, a(3)=126`
-/

namespace A398137.P3855830843484190515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 6, 29, 126] fun n a =>
  6 * a (n - 1) - 7 * a (n - 2) - 6 * a (n - 3) - a (n - 4)

end

end A398137.P3855830843484190515

namespace A398137

/-- `6*a(n-1)-7*a(n-2)-6*a(n-3)-a(n-4)` -/
def P3855830843484190515.Spec : Prop :=
  ∀ n, P3855830843484190515.a n = A398137 (n + 1)

end A398137

/-! ## A398137.P16016125976724098588

`((n+1)*A006190(n+3)+(n+3)*A006190(n+1))/13`
-/

namespace A398137.P16016125976724098588
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 1 : ℤ) * A006190 (n + 3) + (n + 3 : ℤ) * A006190 (n + 1) : ℚ) / 13

end

end A398137.P16016125976724098588

namespace A398137

/-- `((n+1)*A006190(n+3)+(n+3)*A006190(n+1))/13` -/
def P16016125976724098588.Spec : Prop :=
  ∀ n, P16016125976724098588.a n = (A398137 (n + 1) : ℚ)

end A398137

/-! ## A398137.P11006785927702912826

`(3*(n+1)*a(n-1)+(n+2)*a(n-2))/n` with `a(0)=1, a(1)=6`
-/

namespace A398137.P11006785927702912826
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 6] fun n a =>
  ((3 * (n + 1) : ℚ) * a (n - 1) + (n + 2 : ℚ) * a (n - 2)) / (n : ℚ)

end

end A398137.P11006785927702912826

namespace A398137

/-- `(3*(n+1)*a(n-1)+(n+2)*a(n-2))/n` -/
def P11006785927702912826.Spec : Prop :=
  ∀ n, P11006785927702912826.a n = (A398137 (n + 1) : ℚ)

end A398137

/-! ## A398137.P9579880457636432758

`A074361(n+2)+A006190(n+1)`
-/

namespace A398137.P9579880457636432758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074361 (n + 2) + A006190 (n + 1)

end

end A398137.P9579880457636432758

namespace A398137

/-- `A074361(n+2)+A006190(n+1)` -/
def P9579880457636432758.Spec : Prop :=
  ∀ n, P9579880457636432758.a n = A398137 (n + 1)

end A398137

/-! ## A398137.P3357518233865529487

`A132964(∑[n+1]+1)`
-/

namespace A398137.P3357518233865529487
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132964 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A398137.P3357518233865529487

namespace A398137

/-- `A132964(∑[n+1]+1)` -/
def P3357518233865529487.Spec : Prop :=
  ∀ n, P3357518233865529487.a n = A398137 (n + 1)

end A398137

/-! ## A398137.P7317975596019918313

`A112906(A034856(n+2))`
-/

namespace A398137.P7317975596019918313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112906 (A034856 (n + 2)).toNat

end

end A398137.P7317975596019918313

namespace A398137

/-- `A112906(A034856(n+2))` -/
def P7317975596019918313.Spec : Prop :=
  ∀ n, P7317975596019918313.a n = A398137 (n + 1)

end A398137

/-!
# A398138: Sum of the remainders k mod n over the distinct entries k of the n X n multiplication table.

The programs for A398138, there is no canonical definition to state claims against.
-/

/-! ## A398138.P949600313641175574

`A321165(n+1)-(n+1)*A397038(n+1)`
-/

namespace A398138.P949600313641175574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321165 (n + 1) - (n + 1 : ℤ) * A397038 (n + 1)

end

end A398138.P949600313641175574

/-!
# A398139: Numbers m such that the distinct prime factors of the product m*(m+1)*(m+2) are consecutive primes beginning with 2 (that is, the product is a term of A055932).

The programs for A398139, there is no canonical definition to state claims against.
-/

/-! ## A398139.P12532868772903616446

`A104404(A042141(n))+A016038(n+1)`
-/

namespace A398139.P12532868772903616446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104404 (A042141 n).toNat + A016038 (n + 1)

end

end A398139.P12532868772903616446

/-! ## A398139.P2621483995686771307

`∑[A002260(A001887(n)+1)]`
-/

namespace A398139.P2621483995686771307
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (A001887 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A398139.P2621483995686771307

/-! ## A398139.P6113326800705947754

`A380807(A380806(A000926(A380806(A229461(n+1)))))`
-/

namespace A398139.P6113326800705947754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380807 (A380806 (A000926 (A380806 (A229461 (n + 1)).toNat).toNat).toNat).toNat

end

end A398139.P6113326800705947754

/-!
# A398142: Triangle T(n,k) read by rows: number of set partitions of [n] in which each distinct block size occurs exactly k times, n >= 0, 0 <= k <= n.

The programs for A398142, there is no canonical definition to state claims against.
-/

/-! ## A398142.P16537288478168441328

`A372594(A400421(n))`
-/

namespace A398142.P16537288478168441328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372594 (A400421 n).toNat

end

end A398142.P16537288478168441328

/-! ## A398142.P6050563930487005701

`A084558(A277031(n)²)`
-/

namespace A398142.P6050563930487005701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084558 (A277031 n ^ 2).toNat

end

end A398142.P6050563930487005701

/-! ## A398142.P15099111013665632527

`A235224(A244530(n+1)^3)`
-/

namespace A398142.P15099111013665632527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235224 (A244530 (n + 1) ^ 3).toNat

end

end A398142.P15099111013665632527

/-! ## A398142.P12521001593726620032

`A084558(A277031(n)*A277031(n))`
-/

namespace A398142.P12521001593726620032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084558 (A277031 n * A277031 n).toNat

end

end A398142.P12521001593726620032

/-! ## A398142.P8281003169152779125

`A159880(A238123(n)^A283303(n+1))`
-/

namespace A398142.P8281003169152779125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159880 (SequenceMachineLib.roundAway ((A238123 n : ℚ) ^ (A283303 (n + 1) : ℤ))).toNat

end

end A398142.P8281003169152779125

/-!
# A398144: a(n) is the number of pairs (i,j) with mu(i) = mu(j), 1 <= i,j <= n, where mu = A008683 (Moebius function).

The programs for A398144, the canonical program `A398144.P14755306268000008284` is in `Seq.B004.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A398144 has offset 1).

The definition of A398144 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A070548, A070549, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A398144.P5636396710469925145

`a(n-1)+1+2*A124579(n+1)` with `a(0)=1`
-/

namespace A398144.P5636396710469925145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + 1 + 2 * A124579 (n + 1)

end

end A398144.P5636396710469925145

namespace A398144

/-- `a(n-1)+1+2*A124579(n+1)` -/
def P5636396710469925145.Spec : Prop :=
  ∀ n, P5636396710469925145.a n = A398144 (n + 1)

end A398144

/-! ## A398144.P14755306268000008284

`A057627(n+1)²+A070548(n+1)²+A070549(n+1)²`

The canonical program, it is in `Seq.B004.C004`.
-/

namespace A398144

/-- `A057627(n+1)²+A070548(n+1)²+A070549(n+1)²` -/
def P14755306268000008284.Spec : Prop :=
  ∀ n, P14755306268000008284.a n = A398144 (n + 1)

theorem P14755306268000008284.correct : P14755306268000008284.Spec := by
  intro n
  simp only [A398144, Nat.add_sub_cancel]

end A398144

/-! ## A398144.P2432771483697411157

`(n+1)*(n+1-2*A013928(n+2))+(A002321(n+1)²+3*A013928(n+2)²)/2`
-/

namespace A398144.P2432771483697411157
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 1 : ℤ) * ((n + 1 : ℤ) - 2 * A013928 (n + 2)) : ℚ) + (A002321 (n + 1) ^ 2 + 3 * A013928 (n + 2) ^ 2 : ℚ) / 2

end

end A398144.P2432771483697411157

namespace A398144

/-- `(n+1)*(n+1-2*A013928(n+2))+(A002321(n+1)²+3*A013928(n+2)²)/2` -/
def P2432771483697411157.Spec : Prop :=
  ∀ n, P2432771483697411157.a n = (A398144 (n + 1) : ℚ)

end A398144

/-! ## A398144.P9431226494888517616

`A081240(n+1)+A057627(n+1)*A057627(n+1)`
-/

namespace A398144.P9431226494888517616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081240 (n + 1) + A057627 (n + 1) * A057627 (n + 1)

end

end A398144.P9431226494888517616

namespace A398144

/-- `A081240(n+1)+A057627(n+1)*A057627(n+1)` -/
def P9431226494888517616.Spec : Prop :=
  ∀ n, P9431226494888517616.a n = A398144 (n + 1)

theorem P9431226494888517616.correct : P9431226494888517616.Spec := by
  intro n
  simp only [A398144, Nat.add_sub_cancel, A398144.P9431226494888517616.a, A398144.P14755306268000008284.a, A057627, A057627.P17607436213288797797.a, A070548, A070548.P147621801857442245.a, A070549, A070549.P7239971299778395815.a, A081240, A081240.P16420253042079056579.a, A002321, A002321.P7713085837087473323.f2, A002321.P7713085837087473323.f1, A002321.P7713085837087473323.a, A013928, A013928.P10879382919085182663.f1, A013928.P10879382919085182663.a, A008683, A008683.P10736294816071761024.f1, A008683.P10736294816071761024.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A398144

/-!
# A398145: Number of rooted binary simplex time-consistent leaf-labeled galled trees with n leaves.

The programs for A398145, there is no canonical definition to state claims against.
-/

/-! ## A398145.P11783533631944654099

`A000045(n)*A379402(A289653(n+1))`
-/

namespace A398145.P11783533631944654099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n * A379402 (A289653 (n + 1)).toNat

end

end A398145.P11783533631944654099

/-!
# A398146: Expansion of generating function x / (1 - 5*x - x^2)^2.

The programs for A398146, the canonical program `A398146.P14218719280205801311` is in `Seq.B000.C050`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A398146 has offset 1).

The definition of A398146 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(1/(1-10x+23x^2+10x^3+x^4))` (program `A398146.P14218719280205801311`, by `A398146.P14218719280205801311.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A398146.P14218719280205801311

`ogf(1/(1-10x+23x^2+10x^3+x^4))`

The canonical program, it is in `Seq.B000.C050`.
-/

namespace A398146

/-- `ogf(1/(1-10x+23x^2+10x^3+x^4))` -/
def P14218719280205801311.Spec : Prop :=
  ∀ n, P14218719280205801311.a n = A398146 (n + 1)

theorem P14218719280205801311.correct : P14218719280205801311.Spec := by
  intro n
  simp only [A398146, Nat.add_sub_cancel]

end A398146

/-! ## A398146.P1675533385216254100

`∑{#}[floor(n/2), (n+1-#)*C(n-#, #)*5^(n-2*#)]`
-/

namespace A398146.P1675533385216254100
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℚ) / 2⌋

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1).toNat, (((n + 1 : ℤ) - (k : ℤ)) * (Nat.choose ((n : ℤ) - (k : ℤ)).toNat k : ℤ) : ℚ) * (5 : ℚ) ^ ((n : ℤ) - (2 * k : ℤ) : ℤ)

end

end A398146.P1675533385216254100

namespace A398146

/-- `∑{#}[floor(n/2), (n+1-#)*C(n-#, #)*5^(n-2*#)]` -/
def P1675533385216254100.Spec : Prop :=
  ∀ n, P1675533385216254100.a n = (A398146 (n + 1) : ℚ)

end A398146

/-! ## A398146.P8591804937843948446

`10*a(n-1)-23*a(n-2)-10*a(n-3)-a(n-4)` with `a(0)=1, a(1)=10, a(2)=77, a(3)=530`
-/

namespace A398146.P8591804937843948446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 10, 77, 530] fun n a =>
  10 * a (n - 1) - 23 * a (n - 2) - 10 * a (n - 3) - a (n - 4)

end

end A398146.P8591804937843948446

namespace A398146

/-- `10*a(n-1)-23*a(n-2)-10*a(n-3)-a(n-4)` -/
def P8591804937843948446.Spec : Prop :=
  ∀ n, P8591804937843948446.a n = A398146 (n + 1)

end A398146

/-! ## A398146.P4802443106481372630

`(5*(n+1)*a(n-1)+(n+2)*a(n-2))/n` with `a(0)=1, a(1)=10`
-/

namespace A398146.P4802443106481372630
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 10] fun n a =>
  ((5 * (n + 1) : ℚ) * a (n - 1) + (n + 2 : ℚ) * a (n - 2)) / (n : ℚ)

end

end A398146.P4802443106481372630

namespace A398146

/-- `(5*(n+1)*a(n-1)+(n+2)*a(n-2))/n` -/
def P4802443106481372630.Spec : Prop :=
  ∀ n, P4802443106481372630.a n = (A398146 (n + 1) : ℚ)

end A398146

/-! ## A398146.P6422609449148869416

`∑{#}[n, A052918(#)*A052918(n-#)]`
-/

namespace A398146.P6422609449148869416
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), A052918 k * A052918 (n - k)

end

end A398146.P6422609449148869416

namespace A398146

/-- `∑{#}[n, A052918(#)*A052918(n-#)]` -/
def P6422609449148869416.Spec : Prop :=
  ∀ n, P6422609449148869416.a n = A398146 (n + 1)

end A398146

/-!
# A398147: Expansion of generating function x/(1-5*x+x^2)^2.

The programs for A398147, the canonical program `A398147.P855889425603038055` is in `Seq.B000.C050`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A398147 has offset 1).

The definition of A398147 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(1/(1-10x+27x^2-10x^3+x^4))` (program `A398147.P855889425603038055`, by `A398147.P855889425603038055.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A398147.P855889425603038055

`ogf(1/(1-10x+27x^2-10x^3+x^4))`

The canonical program, it is in `Seq.B000.C050`.
-/

namespace A398147

/-- `ogf(1/(1-10x+27x^2-10x^3+x^4))` -/
def P855889425603038055.Spec : Prop :=
  ∀ n, P855889425603038055.a n = A398147 (n + 1)

theorem P855889425603038055.correct : P855889425603038055.Spec := by
  intro n
  simp only [A398147, Nat.add_sub_cancel]

end A398147

/-! ## A398147.P10094956636827910896

`10*a(n-1)-27*a(n-2)+10*a(n-3)-a(n-4)` with `a(0)=1, a(1)=10, a(2)=73, a(3)=470`
-/

namespace A398147.P10094956636827910896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 10, 73, 470] fun n a =>
  10 * a (n - 1) - 27 * a (n - 2) + 10 * a (n - 3) - a (n - 4)

end

end A398147.P10094956636827910896

namespace A398147

/-- `10*a(n-1)-27*a(n-2)+10*a(n-3)-a(n-4)` -/
def P10094956636827910896.Spec : Prop :=
  ∀ n, P10094956636827910896.a n = A398147 (n + 1)

end A398147

/-! ## A398147.P12804906504528693185

`((n+1)*A004254(n+3)-(n+3)*A004254(n+1))/21`
-/

namespace A398147.P12804906504528693185
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 1 : ℤ) * A004254 (n + 3) - (n + 3 : ℤ) * A004254 (n + 1) : ℚ) / 21

end

end A398147.P12804906504528693185

namespace A398147

/-- `((n+1)*A004254(n+3)-(n+3)*A004254(n+1))/21` -/
def P12804906504528693185.Spec : Prop :=
  ∀ n, P12804906504528693185.a n = (A398147 (n + 1) : ℚ)

end A398147

/-! ## A398147.P17777723091950448887

`(5*(n+1)*a(n-1)-(n+2)*a(n-2))/n` with `a(0)=1, a(1)=10`
-/

namespace A398147.P17777723091950448887
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 10] fun n a =>
  ((5 * (n + 1) : ℚ) * a (n - 1) - (n + 2 : ℚ) * a (n - 2)) / (n : ℚ)

end

end A398147.P17777723091950448887

namespace A398147

/-- `(5*(n+1)*a(n-1)-(n+2)*a(n-2))/n` -/
def P17777723091950448887.Spec : Prop :=
  ∀ n, P17777723091950448887.a n = (A398147 (n + 1) : ℚ)

end A398147

/-! ## A398147.P3710521648047202805

`A207824(∑[n+1]+1)`
-/

namespace A398147.P3710521648047202805
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207824 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A398147.P3710521648047202805

namespace A398147

/-- `A207824(∑[n+1]+1)` -/
def P3710521648047202805.Spec : Prop :=
  ∀ n, P3710521648047202805.a n = A398147 (n + 1)

end A398147

/-! ## A398147.P1468643894303517610

`abs(A123967(A000217(n+1)+1))`
-/

namespace A398147.P1468643894303517610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A123967 (A000217 (n + 1) + 1).toNat|

end

end A398147.P1468643894303517610

namespace A398147

/-- `abs(A123967(A000217(n+1)+1))` -/
def P1468643894303517610.Spec : Prop :=
  ∀ n, P1468643894303517610.a n = A398147 (n + 1)

end A398147

/-!
# A398152: a(n) is the least positive integer k for which there exists a composition of k of depth n, where at each iteration the consecutive absolute differences must be nonzero and pairwise distinct and may then be permuted arbitrarily.

The programs for A398152, the canonical program `A398152.P17962725921577737400` is in `Seq.B000.C050`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A398152 has offset 0).

The definition of A398152 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A398152.P8118764064180170209

`ogf((1+x+x^2-x^3+x^4-x^5)/(1-2x+x^2-x^4+2x^5-x^6))`
-/

namespace A398152.P8118764064180170209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 1, 1, -1, 1, -1] [1, -2, 1, 0, -1, 2, -1] n

end

end A398152.P8118764064180170209

namespace A398152

/-- `ogf((1+x+x^2-x^3+x^4-x^5)/(1-2x+x^2-x^4+2x^5-x^6))` -/
def P8118764064180170209.Spec : Prop :=
  ∀ n, P8118764064180170209.a n = A398152 n

end A398152

/-! ## A398152.P17962725921577737400

`n+1+ceil(n*(n+1)/4)+floor(n/2)`

The canonical program, it is in `Seq.B000.C050`.
-/

namespace A398152

/-- `n+1+ceil(n*(n+1)/4)+floor(n/2)` -/
def P17962725921577737400.Spec : Prop :=
  ∀ n, P17962725921577737400.a n = A398152 n

theorem P17962725921577737400.correct : P17962725921577737400.Spec := by
  intro n
  simp only [A398152]

end A398152

/-! ## A398152.P7527983600149166443

`floor((∑[n+3]-and(1, n))/2)`
-/

namespace A398152.P7527983600149166443
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - (Nat.land 1 n : ℤ) : ℚ) / 2⌋

end

end A398152.P7527983600149166443

namespace A398152

/-- `floor((∑[n+3]-and(1, n))/2)` -/
def P7527983600149166443.Spec : Prop :=
  ∀ n, P7527983600149166443.a n = A398152 n

end A398152

/-! ## A398152.P9666976211388088264

`∑[a(n-4)+2]` with `a(0)=1, a(1)=2, a(2)=3, a(3)=2, a(4)=4`
-/

namespace A398152.P9666976211388088264
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 2, 3, 2, 4] fun n f1 =>
  f1 (n - 4) + 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A398152.P9666976211388088264

namespace A398152

/-- `∑[a(n-4)+2]` -/
def P9666976211388088264.Spec : Prop :=
  ∀ n, (P9666976211388088264.a n : ℤ) = A398152 n

end A398152

/-! ## A398152.P12134666036884417340

`∑[A004525(n)+gcd(2, ∏{p}[n, #])]`
-/

namespace A398152.P12134666036884417340
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 n + (Nat.gcd 2 (∏ p ∈ Nat.primeFactors (f2 n), p) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A398152.P12134666036884417340

namespace A398152

/-- `∑[A004525(n)+gcd(2, ∏{p}[n, #])]` -/
def P12134666036884417340.Spec : Prop :=
  ∀ n, P12134666036884417340.a n = A398152 n

end A398152

/-! ## A398152.P15235791563510577194

`∑[A040001(n)+A004525(n)]`
-/

namespace A398152.P15235791563510577194
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040001 n + A004525 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A398152.P15235791563510577194

namespace A398152

/-- `∑[A040001(n)+A004525(n)]` -/
def P15235791563510577194.Spec : Prop :=
  ∀ n, P15235791563510577194.a n = A398152 n

end A398152

/-! ## A398152.P1929918873357314177

`floor((A378762(A000096(n)+3)+n)/2)`
-/

namespace A398152.P1929918873357314177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A378762 (A000096 n + 3).toNat + (n : ℤ) : ℚ) / 2⌋

end

end A398152.P1929918873357314177

namespace A398152

/-- `floor((A378762(A000096(n)+3)+n)/2)` -/
def P1929918873357314177.Spec : Prop :=
  ∀ n, P1929918873357314177.a n = A398152 n

end A398152

/-! ## A398152.P13381113298604217999

`A008619(A052905(n)-A059841(n+1))`
-/

namespace A398152.P13381113298604217999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A052905 n - A059841 (n + 1)).toNat

end

end A398152.P13381113298604217999

namespace A398152

/-- `A008619(A052905(n)-A059841(n+1))` -/
def P13381113298604217999.Spec : Prop :=
  ∀ n, P13381113298604217999.a n = A398152 n

end A398152

/-!
# A398153: Nonnegative numbers whose canonical snowball representation, when read backwards, corresponds to a legit canonical snowball representation.

The programs for A398153, there is no canonical definition to state claims against.
-/

/-! ## A398153.P14894892153047488560

`lt[A031426(A237517(3*(n+1))²), A031427(3*n+4)]`
-/

namespace A398153.P14894892153047488560
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031426 (A237517 (3 * (n + 1)) ^ 2).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031427 (3 * n + 4)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A398153.P14894892153047488560

/-!
# A398156: a(n) is the least positive integer m such that (1 + 1/m)^m and e agree in their first n digits after the decimal point, without rounding.

The programs for A398156, there is no canonical definition to state claims against.
-/

/-! ## A398156.P13897150476185446018

`A105053(A379046(n+1)+1)`
-/

namespace A398156.P13897150476185446018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105053 (A379046 (n + 1) + 1).toNat

end

end A398156.P13897150476185446018

/-!
# A398157: a(n) = n/3 if n == 0 (mod 3), 4n+1 if n == 1 (mod 3), 2n-1 if n == 2 (mod 3).

The programs for A398157, the canonical program `A398157.P17234946050504197489` is in `Seq.B000.C050`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A398157 has offset 1).

The definition of A398157 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A398157.P17234946050504197489

`ogf((5+3x+x^2+7x^3+3x^4)/(1-2x^3+x^6))`

The canonical program, it is in `Seq.B000.C050`.
-/

namespace A398157

/-- `ogf((5+3x+x^2+7x^3+3x^4)/(1-2x^3+x^6))` -/
def P17234946050504197489.Spec : Prop :=
  ∀ n, P17234946050504197489.a n = A398157 (n + 1)

theorem P17234946050504197489.correct : P17234946050504197489.Spec := by
  intro n
  simp only [A398157, Nat.add_sub_cancel]

end A398157

/-!
# A398161: Numbers k such that every exponent in the prime factorizations of both k and k+1 is either 1 or even.

The programs for A398161, the canonical program `A398161.P17501496371240396645` is in `Seq.B005.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A398161 has offset 1).

The definition of A398161 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8739 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A398161.P17501496371240396645

`∩[A335275(n+1)-1, A335275(n+1)]`

The canonical program, it is in `Seq.B005.C002`.
-/

namespace A398161

/-- `∩[A335275(n+1)-1, A335275(n+1)]` -/
def P17501496371240396645.Spec : Prop :=
  ∀ n, (P17501496371240396645.a n : ℤ) = A398161 (n + 1)

theorem P17501496371240396645.correct : P17501496371240396645.Spec := by
  intro n
  simp only [A398161, Nat.add_sub_cancel]

end A398161

/-! ## A398161.P15722091530167612722

`A398165(n+1)%A232882(A007918(n))`
-/

namespace A398161.P15722091530167612722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A398165 (n + 1)) (A232882 (A007918 n).toNat)

end

end A398161.P15722091530167612722

namespace A398161

/-- `A398165(n+1)%A232882(A007918(n))` -/
def P15722091530167612722.Spec : Prop :=
  ∀ n, P15722091530167612722.a n = A398161 (n + 1)

end A398161

/-! ## A398161.P2209644405310692298

`A367696(n+1)+A000038(A196578(n+1))`
-/

namespace A398161.P2209644405310692298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367696 (n + 1) + A000038 (A196578 (n + 1)).toNat

end

end A398161.P2209644405310692298

namespace A398161

/-- `A367696(n+1)+A000038(A196578(n+1))` -/
def P2209644405310692298.Spec : Prop :=
  ∀ n, P2209644405310692298.a n = A398161 (n + 1)

end A398161

/-! ## A398161.P7631115681915987691

`A367696(n+1)%A176988(A047221(n+1))`
-/

namespace A398161.P7631115681915987691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A367696 (n + 1)) (A176988 (A047221 (n + 1)).toNat)

end

end A398161.P7631115681915987691

namespace A398161

/-- `A367696(n+1)%A176988(A047221(n+1))` -/
def P7631115681915987691.Spec : Prop :=
  ∀ n, P7631115681915987691.a n = A398161 (n + 1)

end A398161

/-! ## A398161.P7050516876085566771

`lcm(A123271(n+2), A367696(n+1))`
-/

namespace A398161.P7050516876085566771
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A123271 (n + 2)) (A367696 (n + 1))

end

end A398161.P7050516876085566771

namespace A398161

/-- `lcm(A123271(n+2), A367696(n+1))` -/
def P7050516876085566771.Spec : Prop :=
  ∀ n, (P7050516876085566771.a n : ℤ) = A398161 (n + 1)

end A398161

/-!
# A398162: Exponentially odd numbers k such that the prime factorization exponents of k+1 are either 1 or even.

The programs for A398162, there is no canonical definition to state claims against.
-/

/-! ## A398162.P7849526346979384540

`A318673(A000029(n))+A005117(n+1)`
-/

namespace A398162.P7849526346979384540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318673 (A000029 n).toNat + A005117 (n + 1)

end

end A398162.P7849526346979384540

/-! ## A398162.P5369136430036394566

`A279329(A337984(3*n+2))+A005117(n+1)`
-/

namespace A398162.P5369136430036394566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279329 (A337984 (3 * n + 2)).toNat + A005117 (n + 1)

end

end A398162.P5369136430036394566

/-! ## A398162.P9994085446265665655

`A050812(A071319(3*n+4))+A005117(n+1)`
-/

namespace A398162.P9994085446265665655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050812 (A071319 (3 * n + 4)).toNat + A005117 (n + 1)

end

end A398162.P9994085446265665655

/-! ## A398162.P8841216055014521068

`∑[A134451(A004111(n+1))]`
-/

namespace A398162.P8841216055014521068
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134451 (A004111 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A398162.P8841216055014521068

/-! ## A398162.P5967039269978981947

`A102683(A238871(2*(n+1)))+A005117(n+1)`
-/

namespace A398162.P5967039269978981947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102683 (A238871 (2 * (n + 1))).toNat + A005117 (n + 1)

end

end A398162.P5967039269978981947

/-!
# A398163: Numbers k such that neither k nor k+1 has an exponent that equals 2 in their prime factorization.

The programs for A398163, the canonical program `A398163.P15994787908437553073` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A398163 has offset 1).

The definition of A398163 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7285 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A398163.P15994787908437553073

`∩[A337050(n+1)-1, A337050(n+1)]`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A398163

/-- `∩[A337050(n+1)-1, A337050(n+1)]` -/
def P15994787908437553073.Spec : Prop :=
  ∀ n, (P15994787908437553073.a n : ℤ) = A398163 (n + 1)

theorem P15994787908437553073.correct : P15994787908437553073.Spec := by
  intro n
  simp only [A398163, Nat.add_sub_cancel]

end A398163

/-! ## A398163.P11968437219723647832

`A337050(record[(n+1)/Δ[A337050(n+1)]])`
-/

namespace A398163.P11968437219723647832
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337050 (n + 1)

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (f2 (n + 1) - f2 n : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337050 (SequenceMachineLib.roundAway (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))).toNat

end

end A398163.P11968437219723647832

namespace A398163

/-- `A337050(record[(n+1)/Δ[A337050(n+1)]])` -/
def P11968437219723647832.Spec : Prop :=
  ∀ n, P11968437219723647832.a n = A398163 (n + 1)

end A398163

/-! ## A398163.P14710096445215771702

`∩[A023443(A337050(n+1)), A337050(n+1)]`
-/

namespace A398163.P14710096445215771702
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A337050 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337050 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A398163.P14710096445215771702

namespace A398163

/-- `∩[A023443(A337050(n+1)), A337050(n+1)]` -/
def P14710096445215771702.Spec : Prop :=
  ∀ n, (P14710096445215771702.a n : ℤ) = A398163 (n + 1)

end A398163

/-!
# A398164: Numbers k such that both k and k+1 are both exponentially squarefree numbers.

The programs for A398164, the canonical program `A398164.P2146957604628113734` is in `Seq.B005.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A398164 has offset 1).

The definition of A398164 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9549 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A398164.P2146957604628113734

`∩[A209061(n+1)-1, A209061(n+1)]`

The canonical program, it is in `Seq.B005.C002`.
-/

namespace A398164

/-- `∩[A209061(n+1)-1, A209061(n+1)]` -/
def P2146957604628113734.Spec : Prop :=
  ∀ n, (P2146957604628113734.a n : ℤ) = A398164 (n + 1)

theorem P2146957604628113734.correct : P2146957604628113734.Spec := by
  intro n
  simp only [A398164, Nat.add_sub_cancel]

end A398164

/-! ## A398164.P7933598019976966006

`lt[gcd(A138609(n+1), n), A138609(n+1)]`
-/

namespace A398164.P7933598019976966006
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A138609 (n + 1)) (n : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138609 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A398164.P7933598019976966006

namespace A398164

/-- `lt[gcd(A138609(n+1), n), A138609(n+1)]` -/
def P7933598019976966006.Spec : Prop :=
  ∀ n, (P7933598019976966006.a n : ℤ) = A398164 (n + 1)

end A398164

/-! ## A398164.P4718590136914578584

`∑[runs[A166486(A333403(n+1))]]`
-/

namespace A398164.P4718590136914578584
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166486 (A333403 (n + 1)).toNat

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => j = 0 ∨ f2 j ≠ f2 (j - 1)) (n + 1) - SequenceMachineLib.nth (fun j => j = 0 ∨ f2 j ≠ f2 (j - 1)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A398164.P4718590136914578584

namespace A398164

/-- `∑[runs[A166486(A333403(n+1))]]` -/
def P4718590136914578584.Spec : Prop :=
  ∀ n, (P4718590136914578584.a n : ℤ) = A398164 (n + 1)

end A398164

/-! ## A398164.P18267912188611953959

`lt[2, A020639(A352268(and(n+2, -(n+1))))]+1`
-/

namespace A398164.P18267912188611953959
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A352268 (Int.land (n + 2 : ℤ) (-(n + 1 : ℤ))).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A398164.P18267912188611953959

namespace A398164

/-- `lt[2, A020639(A352268(and(n+2, -(n+1))))]+1` -/
def P18267912188611953959.Spec : Prop :=
  ∀ n, (P18267912188611953959.a n : ℤ) = A398164 (n + 1)

end A398164

/-! ## A398164.P9014020632522997865

`∪[A084829(n+1), A166535(n+1)]`
-/

namespace A398164.P9014020632522997865
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084829 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166535 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A398164.P9014020632522997865

namespace A398164

/-- `∪[A084829(n+1), A166535(n+1)]` -/
def P9014020632522997865.Spec : Prop :=
  ∀ n, (P9014020632522997865.a n : ℤ) = A398164 (n + 1)

end A398164

/-! ## A398164.P3253525374146355118

`∪[A028774(n+1), A166535(n+1)]`
-/

namespace A398164.P3253525374146355118
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028774 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166535 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A398164.P3253525374146355118

namespace A398164

/-- `∪[A028774(n+1), A166535(n+1)]` -/
def P3253525374146355118.Spec : Prop :=
  ∀ n, (P3253525374146355118.a n : ℤ) = A398164 (n + 1)

end A398164

/-!
# A398165: Numbers k such that all the exponents in the prime factorizations of k and k+1 are powers of 2.

The programs for A398165, the canonical program `A398165.P11536307954340140639` is in `Seq.B003.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A398165 has offset 1).

The definition of A398165 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8631 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A398165.P6971766386610269258

`∩[A367696(n+1), A398161(n+1)]`
-/

namespace A398165.P6971766386610269258
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367696 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A398161 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A398165.P6971766386610269258

namespace A398165

/-- `∩[A367696(n+1), A398161(n+1)]` -/
def P6971766386610269258.Spec : Prop :=
  ∀ n, (P6971766386610269258.a n : ℤ) = A398165 (n + 1)

end A398165

/-! ## A398165.P11536307954340140639

`∩[A138302(n+1)-1, A138302(n+1)]`

The canonical program, it is in `Seq.B003.C005`.
-/

namespace A398165

/-- `∩[A138302(n+1)-1, A138302(n+1)]` -/
def P11536307954340140639.Spec : Prop :=
  ∀ n, (P11536307954340140639.a n : ℤ) = A398165 (n + 1)

theorem P11536307954340140639.correct : P11536307954340140639.Spec := by
  intro n
  simp only [A398165, Nat.add_sub_cancel]

end A398165

/-! ## A398165.P4818235771698705791

`record[A367168(n+1)%A367168(n+2)]`
-/

namespace A398165.P4818235771698705791
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A367168 (n + 1)) (A367168 (n + 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A398165.P4818235771698705791

namespace A398165

/-- `record[A367168(n+1)%A367168(n+2)]` -/
def P4818235771698705791.Spec : Prop :=
  ∀ n, P4818235771698705791.a n = A398165 (n + 1)

end A398165

/-! ## A398165.P856631322744152589

`A367696(n+1)%A250474(A155212(n))`
-/

namespace A398165.P856631322744152589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A367696 (n + 1)) (A250474 (A155212 n).toNat)

end

end A398165.P856631322744152589

namespace A398165

/-- `A367696(n+1)%A250474(A155212(n))` -/
def P856631322744152589.Spec : Prop :=
  ∀ n, P856631322744152589.a n = A398165 (n + 1)

end A398165

/-! ## A398165.P78017436131399194

`A367696(n+1)+A000007(A027424(2*n+1))`
-/

namespace A398165.P78017436131399194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367696 (n + 1) + A000007 (A027424 (2 * n + 1)).toNat

end

end A398165.P78017436131399194

namespace A398165

/-- `A367696(n+1)+A000007(A027424(2*n+1))` -/
def P78017436131399194.Spec : Prop :=
  ∀ n, P78017436131399194.a n = A398165 (n + 1)

end A398165

/-! ## A398165.P361284720973717729

`and(A058000(n+1), A367696(n+1))`
-/

namespace A398165.P361284720973717729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A058000 (n + 1)) (A367696 (n + 1))

end

end A398165.P361284720973717729

namespace A398165

/-- `and(A058000(n+1), A367696(n+1))` -/
def P361284720973717729.Spec : Prop :=
  ∀ n, P361284720973717729.a n = A398165 (n + 1)

end A398165

/-! ## A398165.P13279885310061190935

`A367696(n+1)+A324823(A246547(n+1))`
-/

namespace A398165.P13279885310061190935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367696 (n + 1) + A324823 (A246547 (n + 1)).toNat

end

end A398165.P13279885310061190935

namespace A398165

/-- `A367696(n+1)+A324823(A246547(n+1))` -/
def P13279885310061190935.Spec : Prop :=
  ∀ n, P13279885310061190935.a n = A398165 (n + 1)

end A398165

/-! ## A398165.P8562981176212547770

`A033999(A132762(n))*A367696(n+1)`
-/

namespace A398165.P8562981176212547770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (A132762 n).toNat * A367696 (n + 1)

end

end A398165.P8562981176212547770

namespace A398165

/-- `A033999(A132762(n))*A367696(n+1)` -/
def P8562981176212547770.Spec : Prop :=
  ∀ n, P8562981176212547770.a n = A398165 (n + 1)

end A398165

/-! ## A398165.P16198707791782670230

`A370813(A007947(n+1))+A367696(n+1)`
-/

namespace A398165.P16198707791782670230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370813 (A007947 (n + 1)).toNat + A367696 (n + 1)

end

end A398165.P16198707791782670230

namespace A398165

/-- `A370813(A007947(n+1))+A367696(n+1)` -/
def P16198707791782670230.Spec : Prop :=
  ∀ n, P16198707791782670230.a n = A398165 (n + 1)

end A398165

/-! ## A398165.P4066025448027186069

`A367696(n+1)%A002189(n)`
-/

namespace A398165.P4066025448027186069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A367696 (n + 1)) (A002189 n)

end

end A398165.P4066025448027186069

namespace A398165

/-- `A367696(n+1)%A002189(n)` -/
def P4066025448027186069.Spec : Prop :=
  ∀ n, P4066025448027186069.a n = A398165 (n + 1)

end A398165

/-!
# A398166: Numbers k such that all the exponents in the prime factorizations of k and k+1 are squares.

The programs for A398166, the canonical program `A398166.P1860804899348792232` is in `Seq.B005.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A398166 has offset 1).

The definition of A398166 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3739 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A398166.P1860804899348792232

`∩[A023443(A197680(n+1)), A197680(n+1)]`

The canonical program, it is in `Seq.B005.C002`.
-/

namespace A398166

/-- `∩[A023443(A197680(n+1)), A197680(n+1)]` -/
def P1860804899348792232.Spec : Prop :=
  ∀ n, (P1860804899348792232.a n : ℤ) = A398166 (n + 1)

theorem P1860804899348792232.correct : P1860804899348792232.Spec := by
  intro n
  simp only [A398166, Nat.add_sub_cancel]

end A398166

/-! ## A398166.P15647342545178708341

`A398825(n+1)%A031177(A398823(n+1))`
-/

namespace A398166.P15647342545178708341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A398825 (n + 1)) (A031177 (A398823 (n + 1)).toNat)

end

end A398166.P15647342545178708341

namespace A398166

/-- `A398825(n+1)%A031177(A398823(n+1))` -/
def P15647342545178708341.Spec : Prop :=
  ∀ n, P15647342545178708341.a n = A398166 (n + 1)

end A398166

/-! ## A398166.P3134826048388948298

`lcm(A123271(n+2), A398825(n+1))`
-/

namespace A398166.P3134826048388948298
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A123271 (n + 2)) (A398825 (n + 1))

end

end A398166.P3134826048388948298

namespace A398166

/-- `lcm(A123271(n+2), A398825(n+1))` -/
def P3134826048388948298.Spec : Prop :=
  ∀ n, (P3134826048388948298.a n : ℤ) = A398166 (n + 1)

end A398166

/-! ## A398166.P12578816380770292385

`and(A387410(n+1), A398825(n+1))`
-/

namespace A398166.P12578816380770292385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A387410 (n + 1)) (A398825 (n + 1))

end

end A398166.P12578816380770292385

namespace A398166

/-- `and(A387410(n+1), A398825(n+1))` -/
def P12578816380770292385.Spec : Prop :=
  ∀ n, P12578816380770292385.a n = A398166 (n + 1)

end A398166

/-! ## A398166.P12141856548655995443

`and(A387415(n+1), A398825(n+1))`
-/

namespace A398166.P12141856548655995443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A387415 (n + 1)) (A398825 (n + 1))

end

end A398166.P12141856548655995443

namespace A398166

/-- `and(A387415(n+1), A398825(n+1))` -/
def P12141856548655995443.Spec : Prop :=
  ∀ n, P12141856548655995443.a n = A398166 (n + 1)

end A398166

/-!
# A398167: Squarefree numbers k such that k+1 is cubefree.

The programs for A398167, the canonical program `A398167.P15155754403201331677` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A398167 has offset 1).

The definition of A398167 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7076 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A398167.P17056383556408526576

`filter[A340152(n+1), A008966(#)]`
-/

namespace A398167.P17056383556408526576
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340152 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A008966 (f1 j).toNat = 1) n)

end

end A398167.P17056383556408526576

namespace A398167

/-- `filter[A340152(n+1), A008966(#)]` -/
def P17056383556408526576.Spec : Prop :=
  ∀ n, P17056383556408526576.a n = A398167 (n + 1)

end A398167

/-! ## A398167.P15155754403201331677

`filter[A340152(n+1), A295316(#)]`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A398167

/-- `filter[A340152(n+1), A295316(#)]` -/
def P15155754403201331677.Spec : Prop :=
  ∀ n, P15155754403201331677.a n = A398167 (n + 1)

theorem P15155754403201331677.correct : P15155754403201331677.Spec := by
  intro n
  simp only [A398167, Nat.add_sub_cancel]

end A398167

/-! ## A398167.P3433705275620880372

`filter[A340152(n+1), A323154(#)]`
-/

namespace A398167.P3433705275620880372
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340152 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323154 (f1 j).toNat = 1) n)

end

end A398167.P3433705275620880372

namespace A398167

/-- `filter[A340152(n+1), A323154(#)]` -/
def P3433705275620880372.Spec : Prop :=
  ∀ n, P3433705275620880372.a n = A398167 (n + 1)

end A398167

/-! ## A398167.P10967463479577947756

`filter[A340152(n+1), A353519(#)]`
-/

namespace A398167.P10967463479577947756
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340152 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353519 (f1 j).toNat = 1) n)

end

end A398167.P10967463479577947756

namespace A398167

/-- `filter[A340152(n+1), A353519(#)]` -/
def P10967463479577947756.Spec : Prop :=
  ∀ n, P10967463479577947756.a n = A398167 (n + 1)

end A398167

/-! ## A398167.P10182563550354087727

`filter[A340152(n+1), A359473(#)]`
-/

namespace A398167.P10182563550354087727
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340152 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359473 (f1 j).toNat = 1) n)

end

end A398167.P10182563550354087727

namespace A398167

/-- `filter[A340152(n+1), A359473(#)]` -/
def P10182563550354087727.Spec : Prop :=
  ∀ n, P10182563550354087727.a n = A398167 (n + 1)

end A398167

/-! ## A398167.P18223727739852127808

`∩[A005117(n+1), A340152(n+1)]`
-/

namespace A398167.P18223727739852127808
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005117 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340152 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A398167.P18223727739852127808

namespace A398167

/-- `∩[A005117(n+1), A340152(n+1)]` -/
def P18223727739852127808.Spec : Prop :=
  ∀ n, (P18223727739852127808.a n : ℤ) = A398167 (n + 1)

end A398167

/-! ## A398167.P4358476771911280994

`∩[A034044(n+1), A340152(n+1)]`
-/

namespace A398167.P4358476771911280994
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034044 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340152 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A398167.P4358476771911280994

namespace A398167

/-- `∩[A034044(n+1), A340152(n+1)]` -/
def P4358476771911280994.Spec : Prop :=
  ∀ n, (P4358476771911280994.a n : ℤ) = A398167 (n + 1)

end A398167

/-! ## A398167.P2149116765307985357

`∩[A064594(n+1), A340152(n+1)]`
-/

namespace A398167.P2149116765307985357
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064594 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340152 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A398167.P2149116765307985357

namespace A398167

/-- `∩[A064594(n+1), A340152(n+1)]` -/
def P2149116765307985357.Spec : Prop :=
  ∀ n, (P2149116765307985357.a n : ℤ) = A398167 (n + 1)

end A398167

/-! ## A398167.P15968143694928722137

`∩[A197680(n+1), A340152(n+1)]`
-/

namespace A398167.P15968143694928722137
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197680 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340152 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A398167.P15968143694928722137

namespace A398167

/-- `∩[A197680(n+1), A340152(n+1)]` -/
def P15968143694928722137.Spec : Prop :=
  ∀ n, (P15968143694928722137.a n : ℤ) = A398167 (n + 1)

end A398167

/-! ## A398167.P15902717558832401135

`∩[A252895(n+1), A340152(n+1)]`
-/

namespace A398167.P15902717558832401135
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252895 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340152 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A398167.P15902717558832401135

namespace A398167

/-- `∩[A252895(n+1), A340152(n+1)]` -/
def P15902717558832401135.Spec : Prop :=
  ∀ n, (P15902717558832401135.a n : ℤ) = A398167 (n + 1)

end A398167

/-! ## A398167.P15447468795071529951

`∩[A274034(n+1), A340152(n+1)]`
-/

namespace A398167.P15447468795071529951
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274034 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340152 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A398167.P15447468795071529951

namespace A398167

/-- `∩[A274034(n+1), A340152(n+1)]` -/
def P15447468795071529951.Spec : Prop :=
  ∀ n, (P15447468795071529951.a n : ℤ) = A398167 (n + 1)

end A398167

/-! ## A398167.P17435790743372849219

`∩[A340152(n+1), A348506(n+1)]`
-/

namespace A398167.P17435790743372849219
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340152 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348506 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A398167.P17435790743372849219

namespace A398167

/-- `∩[A340152(n+1), A348506(n+1)]` -/
def P17435790743372849219.Spec : Prop :=
  ∀ n, (P17435790743372849219.a n : ℤ) = A398167 (n + 1)

end A398167

/-! ## A398167.P15690528091783155488

`∩[A340152(n+1), A361177(n+1)]`
-/

namespace A398167.P15690528091783155488
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340152 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361177 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A398167.P15690528091783155488

namespace A398167

/-- `∩[A340152(n+1), A361177(n+1)]` -/
def P15690528091783155488.Spec : Prop :=
  ∀ n, (P15690528091783155488.a n : ℤ) = A398167 (n + 1)

end A398167

/-! ## A398167.P12374738236133535795

`∩[A340152(n+1), A366242(n+1)]`
-/

namespace A398167.P12374738236133535795
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340152 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366242 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A398167.P12374738236133535795

namespace A398167

/-- `∩[A340152(n+1), A366242(n+1)]` -/
def P12374738236133535795.Spec : Prop :=
  ∀ n, (P12374738236133535795.a n : ℤ) = A398167 (n + 1)

end A398167

/-! ## A398167.P15632241601374825775

`∩[A340152(n+1), A366762(n+1)]`
-/

namespace A398167.P15632241601374825775
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340152 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366762 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A398167.P15632241601374825775

namespace A398167

/-- `∩[A340152(n+1), A366762(n+1)]` -/
def P15632241601374825775.Spec : Prop :=
  ∀ n, (P15632241601374825775.a n : ℤ) = A398167 (n + 1)

end A398167

/-! ## A398167.P2348641425827811579

`∩[A336591(n+1), A340152(n+1)]`
-/

namespace A398167.P2348641425827811579
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336591 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340152 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A398167.P2348641425827811579

namespace A398167

/-- `∩[A336591(n+1), A340152(n+1)]` -/
def P2348641425827811579.Spec : Prop :=
  ∀ n, (P2348641425827811579.a n : ℤ) = A398167 (n + 1)

end A398167

/-! ## A398167.P10637827876744258325

`∩[A036537(n+1), A340152(n+1)]`
-/

namespace A398167.P10637827876744258325
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036537 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340152 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A398167.P10637827876744258325

namespace A398167

/-- `∩[A036537(n+1), A340152(n+1)]` -/
def P10637827876744258325.Spec : Prop :=
  ∀ n, (P10637827876744258325.a n : ℤ) = A398167 (n + 1)

end A398167

/-! ## A398167.P6442457401714748303

`∩[A268335(n+1), A340152(n+1)]`
-/

namespace A398167.P6442457401714748303
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268335 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340152 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A398167.P6442457401714748303

namespace A398167

/-- `∩[A268335(n+1), A340152(n+1)]` -/
def P6442457401714748303.Spec : Prop :=
  ∀ n, (P6442457401714748303.a n : ℤ) = A398167 (n + 1)

end A398167

/-! ## A398167.P16237744846097704936

`∩[A000452(n+1), A340152(n+1)]`
-/

namespace A398167.P16237744846097704936
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000452 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340152 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A398167.P16237744846097704936

namespace A398167

/-- `∩[A000452(n+1), A340152(n+1)]` -/
def P16237744846097704936.Spec : Prop :=
  ∀ n, (P16237744846097704936.a n : ℤ) = A398167 (n + 1)

end A398167

/-! ## A398167.P11890368984543079245

`∩[A336590(n+1), A340152(n+1)]`
-/

namespace A398167.P11890368984543079245
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336590 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340152 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A398167.P11890368984543079245

namespace A398167

/-- `∩[A336590(n+1), A340152(n+1)]` -/
def P11890368984543079245.Spec : Prop :=
  ∀ n, (P11890368984543079245.a n : ℤ) = A398167 (n + 1)

end A398167

/-!
# A398168: Cubefree numbers k such that k+1 is squarefree.

The programs for A398168, the canonical program `A398168.P16108428066764494187` is in `Seq.B003.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A398168 has offset 1).

The definition of A398168 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4800 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A398168.P16108428066764494187

`eq[(n+1)/∏{p}[n+1, #], char[A004709(n+1)]]`

The canonical program, it is in `Seq.B003.C005`.
-/

namespace A398168

/-- `eq[(n+1)/∏{p}[n+1, #], char[A004709(n+1)]]` -/
def P16108428066764494187.Spec : Prop :=
  ∀ n, (P16108428066764494187.a n : ℤ) = A398168 (n + 1)

theorem P16108428066764494187.correct : P16108428066764494187.Spec := by
  intro n
  simp only [A398168, Nat.add_sub_cancel]

end A398168

/-! ## A398168.P8380340965390216049

`record[A367699(n+1)/A051903(n+2)]`
-/

namespace A398168.P8380340965390216049
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A367699 (n + 1) : ℚ) / (A051903 (n + 2) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A398168.P8380340965390216049

namespace A398168

/-- `record[A367699(n+1)/A051903(n+2)]` -/
def P8380340965390216049.Spec : Prop :=
  ∀ n, P8380340965390216049.a n = (A398168 (n + 1) : ℚ)

end A398168

/-! ## A398168.P16257058557216864041

`eq[A008834(n+1), A351313(n+2)]+1`
-/

namespace A398168.P16257058557216864041
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008834 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351313 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A398168.P16257058557216864041

namespace A398168

/-- `eq[A008834(n+1), A351313(n+2)]+1` -/
def P16257058557216864041.Spec : Prop :=
  ∀ n, (P16257058557216864041.a n : ℤ) = A398168 (n + 1)

end A398168

/-! ## A398168.P15105430462160025910

`eq[A294333(n), A375360(n+1)]`
-/

namespace A398168.P15105430462160025910
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294333 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375360 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A398168.P15105430462160025910

namespace A398168

/-- `eq[A294333(n), A375360(n+1)]` -/
def P15105430462160025910.Spec : Prop :=
  ∀ n, (P15105430462160025910.a n : ℤ) = A398168 (n + 1)

end A398168

/-! ## A398168.P1692924122677080912

`eq[A008966(n+2), A062821(A385005(n+1))]+1`
-/

namespace A398168.P1692924122677080912
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008966 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062821 (A385005 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A398168.P1692924122677080912

namespace A398168

/-- `eq[A008966(n+2), A062821(A385005(n+1))]+1` -/
def P1692924122677080912.Spec : Prop :=
  ∀ n, (P1692924122677080912.a n : ℤ) = A398168 (n + 1)

end A398168

/-! ## A398168.P9807711830263281058

`eq[A051903(n+2), A053735(A256692(n+1))]+1`
-/

namespace A398168.P9807711830263281058
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051903 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053735 (A256692 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A398168.P9807711830263281058

namespace A398168

/-- `eq[A051903(n+2), A053735(A256692(n+1))]+1` -/
def P9807711830263281058.Spec : Prop :=
  ∀ n, (P9807711830263281058.a n : ℤ) = A398168 (n + 1)

end A398168

/-!
# A398169: Squarefree numbers k such that k+1 is an exponentially odd number.

The programs for A398169, the canonical program `A398169.P3202459588062377713` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A398169 has offset 1).

The definition of A398169 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8348 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A398169.P12279717139954164975

`record[A007947(A367695(n+1))]`
-/

namespace A398169.P12279717139954164975
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (A367695 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A398169.P12279717139954164975

namespace A398169

/-- `record[A007947(A367695(n+1))]` -/
def P12279717139954164975.Spec : Prop :=
  ∀ n, P12279717139954164975.a n = A398169 (n + 1)

end A398169

/-! ## A398169.P10657907724153635809

`filter[A367695(n+1), A008966(#)]`
-/

namespace A398169.P10657907724153635809
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367695 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A008966 (f1 j).toNat = 1) n)

end

end A398169.P10657907724153635809

namespace A398169

/-- `filter[A367695(n+1), A008966(#)]` -/
def P10657907724153635809.Spec : Prop :=
  ∀ n, P10657907724153635809.a n = A398169 (n + 1)

end A398169

/-! ## A398169.P3202459588062377713

`filter[A367695(n+1), A212793(#)]`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A398169

/-- `filter[A367695(n+1), A212793(#)]` -/
def P3202459588062377713.Spec : Prop :=
  ∀ n, P3202459588062377713.a n = A398169 (n + 1)

theorem P3202459588062377713.correct : P3202459588062377713.Spec := by
  intro n
  simp only [A398169, Nat.add_sub_cancel]

end A398169

/-! ## A398169.P6564530397179696931

`filter[A367695(n+1), A323154(#)]`
-/

namespace A398169.P6564530397179696931
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367695 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323154 (f1 j).toNat = 1) n)

end

end A398169.P6564530397179696931

namespace A398169

/-- `filter[A367695(n+1), A323154(#)]` -/
def P6564530397179696931.Spec : Prop :=
  ∀ n, P6564530397179696931.a n = A398169 (n + 1)

end A398169

/-! ## A398169.P838706264411651526

`filter[A367695(n+1), A355823(#)]`
-/

namespace A398169.P838706264411651526
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367695 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A355823 (f1 j).toNat = 1) n)

end

end A398169.P838706264411651526

namespace A398169

/-- `filter[A367695(n+1), A355823(#)]` -/
def P838706264411651526.Spec : Prop :=
  ∀ n, P838706264411651526.a n = A398169 (n + 1)

end A398169

/-! ## A398169.P2768367143328079407

`filter[A367695(n+1), A359471(#)]`
-/

namespace A398169.P2768367143328079407
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367695 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359471 (f1 j).toNat = 1) n)

end

end A398169.P2768367143328079407

namespace A398169

/-- `filter[A367695(n+1), A359471(#)]` -/
def P2768367143328079407.Spec : Prop :=
  ∀ n, P2768367143328079407.a n = A398169 (n + 1)

end A398169

/-! ## A398169.P15776802625712336441

`∩[A005117(n+1), A367695(n+1)]`
-/

namespace A398169.P15776802625712336441
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005117 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367695 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A398169.P15776802625712336441

namespace A398169

/-- `∩[A005117(n+1), A367695(n+1)]` -/
def P15776802625712336441.Spec : Prop :=
  ∀ n, (P15776802625712336441.a n : ℤ) = A398169 (n + 1)

end A398169

/-! ## A398169.P449847986423242613

`∩[A064594(n+1), A367695(n+1)]`
-/

namespace A398169.P449847986423242613
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064594 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367695 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A398169.P449847986423242613

namespace A398169

/-- `∩[A064594(n+1), A367695(n+1)]` -/
def P449847986423242613.Spec : Prop :=
  ∀ n, (P449847986423242613.a n : ℤ) = A398169 (n + 1)

end A398169

/-! ## A398169.P12353876678902005032

`∩[A167207(n+1), A367695(n+1)]`
-/

namespace A398169.P12353876678902005032
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167207 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367695 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A398169.P12353876678902005032

namespace A398169

/-- `∩[A167207(n+1), A367695(n+1)]` -/
def P12353876678902005032.Spec : Prop :=
  ∀ n, (P12353876678902005032.a n : ℤ) = A398169 (n + 1)

end A398169

/-! ## A398169.P17792636559454089224

`∩[A210490(n+1), A367695(n+1)]`
-/

namespace A398169.P17792636559454089224
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210490 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367695 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A398169.P17792636559454089224

namespace A398169

/-- `∩[A210490(n+1), A367695(n+1)]` -/
def P17792636559454089224.Spec : Prop :=
  ∀ n, (P17792636559454089224.a n : ℤ) = A398169 (n + 1)

end A398169

/-! ## A398169.P2472416083562808029

`∩[A078779(n+1), A367695(n+1)]`
-/

namespace A398169.P2472416083562808029
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078779 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367695 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A398169.P2472416083562808029

namespace A398169

/-- `∩[A078779(n+1), A367695(n+1)]` -/
def P2472416083562808029.Spec : Prop :=
  ∀ n, (P2472416083562808029.a n : ℤ) = A398169 (n + 1)

end A398169

/-! ## A398169.P14423063867988877265

`∩[A121684(n+1), A367695(n+1)]`
-/

namespace A398169.P14423063867988877265
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121684 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367695 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A398169.P14423063867988877265

namespace A398169

/-- `∩[A121684(n+1), A367695(n+1)]` -/
def P14423063867988877265.Spec : Prop :=
  ∀ n, (P14423063867988877265.a n : ℤ) = A398169 (n + 1)

end A398169

/-! ## A398169.P280628231036571300

`∩[A048107(n+1), A367695(n+1)]`
-/

namespace A398169.P280628231036571300
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048107 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367695 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A398169.P280628231036571300

namespace A398169

/-- `∩[A048107(n+1), A367695(n+1)]` -/
def P280628231036571300.Spec : Prop :=
  ∀ n, (P280628231036571300.a n : ℤ) = A398169 (n + 1)

end A398169

/-! ## A398169.P3974570763152192345

`∩[A179983(n+1), A367695(n+1)]`
-/

namespace A398169.P3974570763152192345
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179983 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367695 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A398169.P3974570763152192345

namespace A398169

/-- `∩[A179983(n+1), A367695(n+1)]` -/
def P3974570763152192345.Spec : Prop :=
  ∀ n, (P3974570763152192345.a n : ℤ) = A398169 (n + 1)

end A398169

/-! ## A398169.P12842979830339427257

`∩[A004709(n+1), A367695(n+1)]`
-/

namespace A398169.P12842979830339427257
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004709 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367695 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A398169.P12842979830339427257

namespace A398169

/-- `∩[A004709(n+1), A367695(n+1)]` -/
def P12842979830339427257.Spec : Prop :=
  ∀ n, (P12842979830339427257.a n : ℤ) = A398169 (n + 1)

end A398169

/-! ## A398169.P9229033341026973283

`∩[A138302(n+1), A367695(n+1)]`
-/

namespace A398169.P9229033341026973283
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138302 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367695 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A398169.P9229033341026973283

namespace A398169

/-- `∩[A138302(n+1), A367695(n+1)]` -/
def P9229033341026973283.Spec : Prop :=
  ∀ n, (P9229033341026973283.a n : ℤ) = A398169 (n + 1)

end A398169

/-! ## A398169.P17144694703264172499

`∩[A220218(n+1), A367695(n+1)]`
-/

namespace A398169.P17144694703264172499
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220218 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367695 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A398169.P17144694703264172499

namespace A398169

/-- `∩[A220218(n+1), A367695(n+1)]` -/
def P17144694703264172499.Spec : Prop :=
  ∀ n, (P17144694703264172499.a n : ℤ) = A398169 (n + 1)

end A398169

/-! ## A398169.P10982971951759201380

`eq[A255326(n), A295316(n+1)]`
-/

namespace A398169.P10982971951759201380
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255326 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295316 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A398169.P10982971951759201380

namespace A398169

/-- `eq[A255326(n), A295316(n+1)]` -/
def P10982971951759201380.Spec : Prop :=
  ∀ n, (P10982971951759201380.a n : ℤ) = A398169 (n + 1)

end A398169

/-! ## A398169.P1771827928782588367

`eq[A255326(n), A351568(n+1)]`
-/

namespace A398169.P1771827928782588367
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255326 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351568 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A398169.P1771827928782588367

namespace A398169

/-- `eq[A255326(n), A351568(n+1)]` -/
def P1771827928782588367.Spec : Prop :=
  ∀ n, (P1771827928782588367.a n : ℤ) = A398169 (n + 1)

end A398169

/-! ## A398169.P2381227271802984060

`eq[A255326(n), A360161(n+1)]`
-/

namespace A398169.P2381227271802984060
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255326 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360161 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A398169.P2381227271802984060

namespace A398169

/-- `eq[A255326(n), A360161(n+1)]` -/
def P2381227271802984060.Spec : Prop :=
  ∀ n, (P2381227271802984060.a n : ℤ) = A398169 (n + 1)

end A398169

/-!
# A398170: Exponentially odd numbers k such that k+1 is squarefree.

The programs for A398170, the canonical program `A398170.P13804662410558317611` is in `Seq.B007.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A398170 has offset 1).

The definition of A398170 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3952 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A398170.P8427614475456025396

`∩[A367695(n+1), A398162(n+1)]`
-/

namespace A398170.P8427614475456025396
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367695 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A398162 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A398170.P8427614475456025396

namespace A398170

/-- `∩[A367695(n+1), A398162(n+1)]` -/
def P8427614475456025396.Spec : Prop :=
  ∀ n, (P8427614475456025396.a n : ℤ) = A398170 (n + 1)

end A398170

/-! ## A398170.P9675313879803680892

`∩[A005117(n+1)-1, A398162(n+1)]`
-/

namespace A398170.P9675313879803680892
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005117 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A398162 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A398170.P9675313879803680892

namespace A398170

/-- `∩[A005117(n+1)-1, A398162(n+1)]` -/
def P9675313879803680892.Spec : Prop :=
  ∀ n, (P9675313879803680892.a n : ℤ) = A398170 (n + 1)

end A398170

/-! ## A398170.P4196088210694871856

`record[A331737(A005117(n+2)-1)]`
-/

namespace A398170.P4196088210694871856
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331737 (A005117 (n + 2) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A398170.P4196088210694871856

namespace A398170

/-- `record[A331737(A005117(n+2)-1)]` -/
def P4196088210694871856.Spec : Prop :=
  ∀ n, P4196088210694871856.a n = A398170 (n + 1)

end A398170

/-! ## A398170.P13804662410558317611

`record[A350389(n+1)/A162510(n+2)]`

The canonical program, it is in `Seq.B007.C001`.
-/

namespace A398170

/-- `record[A350389(n+1)/A162510(n+2)]` -/
def P13804662410558317611.Spec : Prop :=
  ∀ n, P13804662410558317611.a n = (A398170 (n + 1) : ℚ)

end A398170

/-!
# A398171: a(n) is the number of positive integers that are less than or equal to and relatively prime to exactly one divisor of n.

The programs for A398171, there is no canonical definition to state claims against.
-/

/-! ## A398171.P3985106048779318695

`A397786(A054519(n))`
-/

namespace A398171.P3985106048779318695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A397786 (A054519 n).toNat

end

end A398171.P3985106048779318695

/-!
# A398173: a(n) is the minimum size of a subset of Z/pZ with at least 2 elements and no unique sum, where p is the n-th odd prime.

The programs for A398173, there is no canonical definition to state claims against.
-/

/-! ## A398173.P1828718735595279554

`A293137(A310786(n+1))`
-/

namespace A398173.P1828718735595279554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293137 (A310786 (n + 1)).toNat

end

end A398173.P1828718735595279554

/-! ## A398173.P660235812864895601

`A094192(A086917(n+2))`
-/

namespace A398173.P660235812864895601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094192 (A086917 (n + 2)).toNat

end

end A398173.P660235812864895601

/-! ## A398173.P15982533415934100598

`A132914(A059788(n+2))`
-/

namespace A398173.P15982533415934100598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132914 (A059788 (n + 2)).toNat

end

end A398173.P15982533415934100598

/-! ## A398173.P5489923731443143645

`A132914(A174635(n+2))`
-/

namespace A398173.P5489923731443143645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132914 (A174635 (n + 2)).toNat

end

end A398173.P5489923731443143645

/-! ## A398173.P13593661215427945041

`A002024(A363134(n+2))`
-/

namespace A398173.P13593661215427945041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 (A363134 (n + 2)).toNat

end

end A398173.P13593661215427945041

/-!
# A398182: Degree of the minimal polynomial whose root is the sidelength of the largest n-cube that fits inside a unit (n+1)-cube.

The programs for A398182, the canonical program `A398182.P11134999281923761976` is in `Seq.B001.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A398182 has offset 0).

The definition of A398182 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 168 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A398182.P11134999281923761976

`2*A395822(n)`

The canonical program, it is in `Seq.B001.C014`.
-/

namespace A398182

/-- `2*A395822(n)` -/
def P11134999281923761976.Spec : Prop :=
  ∀ n, P11134999281923761976.a n = A398182 n

theorem P11134999281923761976.correct : P11134999281923761976.Spec := by
  intro n
  simp only [A398182]

end A398182

/-! ## A398182.P13549496227053415790

`A080588(A395822(n))`
-/

namespace A398182.P13549496227053415790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080588 (A395822 n).toNat

end

end A398182.P13549496227053415790

namespace A398182

/-- `A080588(A395822(n))` -/
def P13549496227053415790.Spec : Prop :=
  ∀ n, P13549496227053415790.a n = A398182 n

end A398182

/-! ## A398182.P2145226824482086719

`A005843(A395822(n))`
-/

namespace A398182.P2145226824482086719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A395822 n).toNat

end

end A398182.P2145226824482086719

namespace A398182

/-- `A005843(A395822(n))` -/
def P2145226824482086719.Spec : Prop :=
  ∀ n, P2145226824482086719.a n = A398182 n

end A398182

/-!
# A398185: Triangular array: T(n,m) gives the number of numerical semigroups of Frobenius number n and multiplicity k for n>=1, 2<=k<=n+1.

The programs for A398185, there is no canonical definition to state claims against.
-/

/-! ## A398185.P14094430059495497502

`A175799(A343095(n+1))`
-/

namespace A398185.P14094430059495497502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175799 (A343095 (n + 1)).toNat

end

end A398185.P14094430059495497502

/-! ## A398185.P2970202907086184721

`A170976(A292506(n+1))`
-/

namespace A398185.P2970202907086184721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A170976 (A292506 (n + 1)).toNat

end

end A398185.P2970202907086184721

/-! ## A398185.P12021886704646486847

`A325336(A221255(n+1))`
-/

namespace A398185.P12021886704646486847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325336 (A221255 (n + 1)).toNat

end

end A398185.P12021886704646486847

/-! ## A398185.P11750347590892732170

`A321923(A226540(n+2))`
-/

namespace A398185.P11750347590892732170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321923 (A226540 (n + 2)).toNat

end

end A398185.P11750347590892732170

/-! ## A398185.P12629225262816942940

`A341025(A277444(n+2))`
-/

namespace A398185.P12629225262816942940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341025 ((A277444 (n + 2)).toNat + 120)

end

end A398185.P12629225262816942940

/-!
# A398186: a(n) = (1/n) * Sum_{k=0..n-1} A000897(k) * A000897(n-1-k), where A000897(k) = (4*k)!/((2*k)!*k!^2).

The programs for A398186, the canonical program `A398186.P9841724747001061415` is in `Seq.B002.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A398186 has offset 1).

The definition of A398186 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A398186.P17030655196907944891

`A000108(n)*A143583(n)`
-/

namespace A398186.P17030655196907944891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 n * A143583 n

end

end A398186.P17030655196907944891

namespace A398186

/-- `A000108(n)*A143583(n)` -/
def P17030655196907944891.Spec : Prop :=
  ∀ n, P17030655196907944891.a n = A398186 (n + 1)

end A398186

/-! ## A398186.P9841724747001061415

`1/(n+1)*∑{#}[n, A000897(#)*A000897(n-#)]`

The canonical program, it is in `Seq.B002.C007`.
-/

namespace A398186

/-- `1/(n+1)*∑{#}[n, A000897(#)*A000897(n-#)]` -/
def P9841724747001061415.Spec : Prop :=
  ∀ n, P9841724747001061415.a n = (A398186 (n + 1) : ℚ)

end A398186

/-! ## A398186.P8909448141412104394

`A028304(2*n)*A143583(n)`
-/

namespace A398186.P8909448141412104394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028304 (2 * n) * A143583 n

end

end A398186.P8909448141412104394

namespace A398186

/-- `A028304(2*n)*A143583(n)` -/
def P8909448141412104394.Spec : Prop :=
  ∀ n, P8909448141412104394.a n = A398186 (n + 1)

end A398186

/-! ## A398186.P16137609305080099180

`A143583(n)*A208355(2*n)`
-/

namespace A398186.P16137609305080099180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143583 n * A208355 (2 * n)

end

end A398186.P16137609305080099180

namespace A398186

/-- `A143583(n)*A208355(2*n)` -/
def P16137609305080099180.Spec : Prop :=
  ∀ n, P16137609305080099180.a n = A398186 (n + 1)

end A398186

/-! ## A398186.P12181976356749420866

`A060693(A000217(n))*A143583(n)`
-/

namespace A398186.P12181976356749420866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060693 (A000217 n).toNat * A143583 n

end

end A398186.P12181976356749420866

namespace A398186

/-- `A060693(A000217(n))*A143583(n)` -/
def P12181976356749420866.Spec : Prop :=
  ∀ n, P12181976356749420866.a n = A398186 (n + 1)

end A398186

/-! ## A398186.P428201268667859422

`A089408(A028310(2*n+1))*A143583(n)`
-/

namespace A398186.P428201268667859422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089408 (A028310 (2 * n + 1)).toNat * A143583 n

end

end A398186.P428201268667859422

namespace A398186

/-- `A089408(A028310(2*n+1))*A143583(n)` -/
def P428201268667859422.Spec : Prop :=
  ∀ n, P428201268667859422.a n = A398186 (n + 1)

end A398186

/-!
# A398187: Triangle read by rows: T(n, k) = Sum_{j=0..n-k} ((n - k)! / j!) * n^j.

The programs for A398187, there is no canonical definition to state claims against.
-/

/-! ## A398187.P8595526015344509257

`A398192(n)/A008279(n)`
-/

namespace A398187.P8595526015344509257
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A398192 n : ℚ) / (A008279 n : ℚ)

end

end A398187.P8595526015344509257

/-! ## A398187.P8776423049149441388

`A364870(n)*A398192(n)/A398136(n)`
-/

namespace A398187.P8776423049149441388
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A364870 n * A398192 n : ℚ) / (A398136 n : ℚ)

end

end A398187.P8776423049149441388

/-! ## A398187.P4977370495222815014

`A364870(n)*A398484(n)/A398485(n)`
-/

namespace A398187.P4977370495222815014
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A364870 n * A398484 n : ℚ) / (A398485 n : ℚ)

end

end A398187.P4977370495222815014

/-!
# A398188: a(n) = Sum_{k=0..n} A398187(n, k).

The programs for A398188, there is no canonical definition to state claims against.
-/

/-! ## A398188.P14887874105075751107

`∑{#}[n, A398187(C(n+1, 2)+#)]`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A398188.P14887874105075751107
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), A398187 (Nat.choose (n + 1) 2 + k)

end

end A398188.P14887874105075751107

/-!
# A398189: Table read by rows: T(n, k) = v2(A398187(n, k)) where v2(m) is the 2-adic valuation of m.

The programs for A398189, there is no canonical definition to state claims against.
-/

/-! ## A398189.P3906639926948902278

`val(A398187(n), 2)`
-/

namespace A398189.P3906639926948902278
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A398187 n).toNat 2

end

end A398189.P3906639926948902278

/-! ## A398189.P14210871692731751084

`A191255(A398187(n))`
-/

namespace A398189.P14210871692731751084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191255 (A398187 n).toNat

end

end A398189.P14210871692731751084

/-! ## A398189.P13848857884471353294

`A007814(xor(A140633(2*(n+1)), A398187(n))+1)`
-/

namespace A398189.P13848857884471353294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (Int.xor (A140633 (2 * (n + 1))) (A398187 n) + 1).toNat

end

end A398189.P13848857884471353294

/-! ## A398189.P7872333267950183092

`A016123(A094824(n+1))%A237593(3*n+5)`
-/

namespace A398189.P7872333267950183092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A016123 (A094824 (n + 1)).toNat) (A237593 (3 * n + 5))

end

end A398189.P7872333267950183092

/-! ## A398189.P8578788472426040274

`A007814(A398187(n))`
-/

namespace A398189.P8578788472426040274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (A398187 n).toNat

end

end A398189.P8578788472426040274

/-!
# A398190: a(n) = exp(2 * n) * Gamma(1 + n, 2 * n). Central terms of A398187.

The programs for A398190, the canonical program `A398190.P18190335037349440086` is in `Seq.B000.C050`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A398190 has offset 0).

The definition of A398190 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A398190.P18190335037349440086

`n!*∑{#}[n, (2*n)^#/#!]`

The canonical program, it is in `Seq.B000.C050`.
-/

namespace A398190

/-- `n!*∑{#}[n, (2*n)^#/#!]` -/
def P18190335037349440086.Spec : Prop :=
  ∀ n, P18190335037349440086.a n = (A398190 n : ℚ)

end A398190

/-! ## A398190.P15118213492611165847

`A398187(∑[4*n])`
-/

namespace A398190.P15118213492611165847
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A398187 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A398190.P15118213492611165847

namespace A398190

/-- `A398187(∑[4*n])` -/
def P15118213492611165847.Spec : Prop :=
  ∀ n, P15118213492611165847.a n = A398190 n

end A398190

/-! ## A398190.P6445793162616748215

`A080955(A062725(n))`
-/

namespace A398190.P6445793162616748215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080955 (A062725 n).toNat

end

end A398190.P6445793162616748215

namespace A398190

/-- `A080955(A062725(n))` -/
def P6445793162616748215.Spec : Prop :=
  ∀ n, P6445793162616748215.a n = A398190 n

end A398190

/-!
# A398191: a(n) = n! * Sum_{j=0..n} (n + 4)^j / j!. Column 4 of A398187.

The programs for A398191, the canonical program `A398191.P10111208085503777003` is in `Seq.B000.C050`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A398191 has offset 0).

The definition of A398191 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A398191.P10111208085503777003

`n!*∑{#}[n, (n+4)^#/#!]`

The canonical program, it is in `Seq.B000.C050`.
-/

namespace A398191

/-- `n!*∑{#}[n, (n+4)^#/#!]` -/
def P10111208085503777003.Spec : Prop :=
  ∀ n, P10111208085503777003.a n = (A398191 n : ℚ)

end A398191

/-! ## A398191.P11152207153362920588

`A080955(A090288(n+1))`
-/

namespace A398191.P11152207153362920588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080955 (A090288 (n + 1)).toNat

end

end A398191.P11152207153362920588

namespace A398191

/-- `A080955(A090288(n+1))` -/
def P11152207153362920588.Spec : Prop :=
  ∀ n, P11152207153362920588.a n = A398191 n

end A398191

/-! ## A398191.P14346849083008839041

`A080955(A028310(3*n+4)+A000217(2*n+3))`
-/

namespace A398191.P14346849083008839041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080955 (A028310 (3 * n + 4) + A000217 (2 * n + 3)).toNat

end

end A398191.P14346849083008839041

namespace A398191

/-- `A080955(A028310(3*n+4)+A000217(2*n+3))` -/
def P14346849083008839041.Spec : Prop :=
  ∀ n, P14346849083008839041.a n = A398191 n

end A398191

/-!
# A398192: Triangle read by rows: T(n, k) = n! * Sum_{j=0..n-k} n^j / j!.

The programs for A398192, there is no canonical definition to state claims against.
-/

/-! ## A398192.P98859394256697221

`A008279(n)*A398187(n)`
-/

namespace A398192.P98859394256697221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008279 n * A398187 n

end

end A398192.P98859394256697221

/-! ## A398192.P9403351597287874873

`A398136(n)*A398187(n)/A364870(n)`
-/

namespace A398192.P9403351597287874873
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A398136 n * A398187 n : ℚ) / (A364870 n : ℚ)

end

end A398192.P9403351597287874873

/-! ## A398192.P13554105271837523602

`A398136(n)*A398484(n)/A398485(n)`
-/

namespace A398192.P13554105271837523602
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A398136 n * A398484 n : ℚ) / (A398485 n : ℚ)

end

end A398192.P13554105271837523602

/-!
# A398196: Lower (2/5,1) midsequence of triangular numbers (A000217) and squares (A000290); see Comments.

The programs for A398196, the canonical program `A398196.P18069537770610953232` is in `Seq.B000.C050`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A398196 has offset 0).

The definition of A398196 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A398196.P3242902093582157215

`ogf((x+3x^2+2x^3+3x^4+2x^5+x^6)/(1-2x+x^2-x^5+2x^6-x^7))`
-/

namespace A398196.P3242902093582157215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1, 3, 2, 3, 2, 1] [1, -2, 1, 0, 0, -1, 2, -1] n

end

end A398196.P3242902093582157215

namespace A398196

/-- `ogf((x+3x^2+2x^3+3x^4+2x^5+x^6)/(1-2x+x^2-x^5+2x^6-x^7))` -/
def P3242902093582157215.Spec : Prop :=
  ∀ n, P3242902093582157215.a n = A398196 n

end A398196

/-! ## A398196.P18069537770610953232

`2*a(n-1)-a(n-2)+a(n-5)-2*a(n-6)+a(n-7)` with `a(0)=0, a(1)=1, a(2)=5, a(3)=11, a(4)=20, a(5)=31, a(6)=44`

The canonical program, it is in `Seq.B000.C050`.
-/

namespace A398196

/-- `2*a(n-1)-a(n-2)+a(n-5)-2*a(n-6)+a(n-7)` -/
def P18069537770610953232.Spec : Prop :=
  ∀ n, P18069537770610953232.a n = A398196 n

theorem P18069537770610953232.correct : P18069537770610953232.Spec := by
  intro n
  simp only [A398196]

end A398196

/-! ## A398196.P7095855329675404440

`floor((6*n²+n)/5)`
-/

namespace A398196.P7095855329675404440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(6 * n ^ 2 + n : ℚ) / 5⌋

end

end A398196.P7095855329675404440

namespace A398196

/-- `floor((6*n²+n)/5)` -/
def P7095855329675404440.Spec : Prop :=
  ∀ n, P7095855329675404440.a n = A398196 n

end A398196

/-! ## A398196.P4322357426585223991

`∑[a(n-5)+12]` with `a(0)=0, a(1)=1, a(2)=4, a(3)=6, a(4)=9, a(5)=11`
-/

namespace A398196.P4322357426585223991
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 4, 6, 9, 11] fun n f1 =>
  f1 (n - 5) + 12

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A398196.P4322357426585223991

namespace A398196

/-- `∑[a(n-5)+12]` -/
def P4322357426585223991.Spec : Prop :=
  ∀ n, (P4322357426585223991.a n : ℤ) = A398196 n

end A398196

/-! ## A398196.P17642886595634654076

`round(A049453(n)/5)`
-/

namespace A398196.P17642886595634654076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A049453 n : ℚ) / 5)

end

end A398196.P17642886595634654076

namespace A398196

/-- `round(A049453(n)/5)` -/
def P17642886595634654076.Spec : Prop :=
  ∀ n, P17642886595634654076.a n = A398196 n

end A398196

/-! ## A398196.P6411264781351616406

`A011858(n+1)+n²`
-/

namespace A398196.P6411264781351616406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011858 (n + 1) + (n ^ 2 : ℤ)

end

end A398196.P6411264781351616406

namespace A398196

/-- `A011858(n+1)+n²` -/
def P6411264781351616406.Spec : Prop :=
  ∀ n, P6411264781351616406.a n = A398196 n

end A398196

/-! ## A398196.P12786286710672706374

`∑[A312928(n)]-(n+1)²`
-/

namespace A398196.P12786286710672706374
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312928 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - ((n + 1) ^ 2 : ℤ)

end

end A398196.P12786286710672706374

namespace A398196

/-- `∑[A312928(n)]-(n+1)²` -/
def P12786286710672706374.Spec : Prop :=
  ∀ n, P12786286710672706374.a n = A398196 n

end A398196

/-! ## A398196.P12548035939985698647

`A005475(n)-A398199(n)`
-/

namespace A398196.P12548035939985698647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005475 n - A398199 n

end

end A398196.P12548035939985698647

namespace A398196

/-- `A005475(n)-A398199(n)` -/
def P12548035939985698647.Spec : Prop :=
  ∀ n, P12548035939985698647.a n = A398196 n

end A398196

/-! ## A398196.P3375818160772937494

`A014105(n)-A008738(2*n+1)`
-/

namespace A398196.P3375818160772937494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014105 n - A008738 (2 * n + 1)

end

end A398196.P3375818160772937494

namespace A398196

/-- `A014105(n)-A008738(2*n+1)` -/
def P3375818160772937494.Spec : Prop :=
  ∀ n, P3375818160772937494.a n = A398196 n

end A398196

/-! ## A398196.P10922934867492694950

`A033437(2*n)-A130520(2*n+1)`
-/

namespace A398196.P10922934867492694950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033437 (2 * n) - A130520 (2 * n + 1)

end

end A398196.P10922934867492694950

namespace A398196

/-- `A033437(2*n)-A130520(2*n+1)` -/
def P10922934867492694950.Spec : Prop :=
  ∀ n, P10922934867492694950.a n = A398196 n

end A398196

/-! ## A398196.P1198886048900646324

`A011883(A016921(n))`
-/

namespace A398196.P1198886048900646324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011883 (A016921 n).toNat

end

end A398196.P1198886048900646324

namespace A398196

/-- `A011883(A016921(n))` -/
def P1198886048900646324.Spec : Prop :=
  ∀ n, P1198886048900646324.a n = A398196 n

end A398196

/-! ## A398196.P17851564800193472157

`A011883(A271114(n))`
-/

namespace A398196.P17851564800193472157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011883 (A271114 n).toNat

end

end A398196.P17851564800193472157

namespace A398196

/-- `A011883(A271114(n))` -/
def P17851564800193472157.Spec : Prop :=
  ∀ n, P17851564800193472157.a n = A398196 n

end A398196

/-! ## A398196.P6430580877787834995

`A211524(A016957(n))`
-/

namespace A398196.P6430580877787834995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211524 (A016957 n).toNat

end

end A398196.P6430580877787834995

namespace A398196

/-- `A211524(A016957(n))` -/
def P6430580877787834995.Spec : Prop :=
  ∀ n, P6430580877787834995.a n = A398196 n

end A398196

/-! ## A398196.P9778203152971217894

`A008613(A017605(n))`
-/

namespace A398196.P9778203152971217894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008613 (A017605 n).toNat

end

end A398196.P9778203152971217894

namespace A398196

/-- `A008613(A017605(n))` -/
def P9778203152971217894.Spec : Prop :=
  ∀ n, P9778203152971217894.a n = A398196 n

end A398196

/-! ## A398196.P3064967542998817622

`A319973(A017581(n))`
-/

namespace A398196.P3064967542998817622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319973 (A017581 n).toNat

end

end A398196.P3064967542998817622

namespace A398196

/-- `A319973(A017581(n))` -/
def P3064967542998817622.Spec : Prop :=
  ∀ n, P3064967542998817622.a n = A398196 n

end A398196

/-! ## A398196.P11347447944470308978

`A057354(∑[n])+n²`
-/

namespace A398196.P11347447944470308978
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057354 (∑ j ∈ Finset.range (n + 1), f1 j) + (n ^ 2 : ℤ)

end

end A398196.P11347447944470308978

namespace A398196

/-- `A057354(∑[n])+n²` -/
def P11347447944470308978.Spec : Prop :=
  ∀ n, P11347447944470308978.a n = A398196 n

end A398196

/-! ## A398196.P16507883826157684657

`A288156(∑[n])+n²`
-/

namespace A398196.P16507883826157684657
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288156 (∑ j ∈ Finset.range (n + 1), f1 j) + (n ^ 2 : ℤ)

end

end A398196.P16507883826157684657

namespace A398196

/-- `A288156(∑[n])+n²` -/
def P16507883826157684657.Spec : Prop :=
  ∀ n, P16507883826157684657.a n = A398196 n

end A398196

/-!
# A398197: Upper (2/5,1) midsequence of triangular numbers (A000217) and squares (A000290); see Comments.

The programs for A398197, the canonical program `A398197.P8402238629596888663` is in `Seq.B000.C050`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A398197 has offset 0).

The definition of A398197 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A398197.P16142073162637236521

`ogf((2x+2x^2+2x^3+2x^4+3x^5+x^6)/(1-2x+x^2-x^5+2x^6-x^7))`
-/

namespace A398197.P16142073162637236521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 2, 2, 2, 2, 3, 1] [1, -2, 1, 0, 0, -1, 2, -1] n

end

end A398197.P16142073162637236521

namespace A398197

/-- `ogf((2x+2x^2+2x^3+2x^4+3x^5+x^6)/(1-2x+x^2-x^5+2x^6-x^7))` -/
def P16142073162637236521.Spec : Prop :=
  ∀ n, P16142073162637236521.a n = A398197 n

end A398197

/-! ## A398197.P8402238629596888663

`2*a(n-1)-a(n-2)+a(n-5)-2*a(n-6)+a(n-7)` with `a(0)=0, a(1)=2, a(2)=6, a(3)=12, a(4)=20, a(5)=31, a(6)=45`

The canonical program, it is in `Seq.B000.C050`.
-/

namespace A398197

/-- `2*a(n-1)-a(n-2)+a(n-5)-2*a(n-6)+a(n-7)` -/
def P8402238629596888663.Spec : Prop :=
  ∀ n, P8402238629596888663.a n = A398197 n

theorem P8402238629596888663.correct : P8402238629596888663.Spec := by
  intro n
  simp only [A398197]

end A398197

/-! ## A398197.P15394980769984048579

`ceil(n*(6*n+1)/5)`
-/

namespace A398197.P15394980769984048579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n * (6 * n + 1) : ℚ) / 5⌉

end

end A398197.P15394980769984048579

namespace A398197

/-- `ceil(n*(6*n+1)/5)` -/
def P15394980769984048579.Spec : Prop :=
  ∀ n, P15394980769984048579.a n = A398197 n

end A398197

/-! ## A398197.P4236550019427664328

`∑[comp[a(n-2)+7]+n]` with `a(0)=5, a(1)=7`
-/

namespace A398197.P4236550019427664328
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [5, 7] fun n f2 =>
  f2 (n - 2) + 7

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n + n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A398197.P4236550019427664328

namespace A398197

/-- `∑[comp[a(n-2)+7]+n]` -/
def P4236550019427664328.Spec : Prop :=
  ∀ n, (P4236550019427664328.a n : ℤ) = A398197 n

end A398197

/-! ## A398197.P13833360457450108042

`A265078(n)-(n+1)`
-/

namespace A398197.P13833360457450108042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265078 n - (n + 1 : ℤ)

end

end A398197.P13833360457450108042

namespace A398197

/-- `A265078(n)-(n+1)` -/
def P13833360457450108042.Spec : Prop :=
  ∀ n, P13833360457450108042.a n = A398197 n

end A398197

/-! ## A398197.P13617393414622749173

`A398055(n)+A130520(n)`
-/

namespace A398197.P13617393414622749173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A398055 n + A130520 n

end

end A398197.P13617393414622749173

namespace A398197

/-- `A398055(n)+A130520(n)` -/
def P13617393414622749173.Spec : Prop :=
  ∀ n, P13617393414622749173.a n = A398197 n

end A398197

/-! ## A398197.P3726623118282548411

`A014105(n)-A281151(n)`
-/

namespace A398197.P3726623118282548411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014105 n - A281151 n

end

end A398197.P3726623118282548411

namespace A398197

/-- `A014105(n)-A281151(n)` -/
def P3726623118282548411.Spec : Prop :=
  ∀ n, P3726623118282548411.a n = A398197 n

end A398197

/-! ## A398197.P6123908783245640771

`A033951(n)-A301719(n)`
-/

namespace A398197.P6123908783245640771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033951 n - A301719 n

end

end A398197.P6123908783245640771

namespace A398197

/-- `A033951(n)-A301719(n)` -/
def P6123908783245640771.Spec : Prop :=
  ∀ n, P6123908783245640771.a n = A398197 n

end A398197

/-! ## A398197.P15102840651575223134

`A005475(n)-A398198(n)`
-/

namespace A398197.P15102840651575223134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005475 n - A398198 n

end

end A398197.P15102840651575223134

namespace A398197

/-- `A005475(n)-A398198(n)` -/
def P15102840651575223134.Spec : Prop :=
  ∀ n, P15102840651575223134.a n = A398197 n

end A398197

/-! ## A398197.P13964070011965577196

`A000217(2*n)-A281151(n)`
-/

namespace A398197.P13964070011965577196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (2 * n) - A281151 n

end

end A398197.P13964070011965577196

namespace A398197

/-- `A000217(2*n)-A281151(n)` -/
def P13964070011965577196.Spec : Prop :=
  ∀ n, P13964070011965577196.a n = A398197 n

end A398197

/-! ## A398197.P981877659876133712

`A398055(n)+(n+1)²-A398052(n+1)`
-/

namespace A398197.P981877659876133712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A398055 n + ((n + 1) ^ 2 : ℤ) - A398052 (n + 1)

end

end A398197.P981877659876133712

namespace A398197

/-- `A398055(n)+(n+1)²-A398052(n+1)` -/
def P981877659876133712.Spec : Prop :=
  ∀ n, P981877659876133712.a n = A398197 n

end A398197

/-! ## A398197.P132349094025632563

`A131242(2*n)+A002620(2*n+1)`
-/

namespace A398197.P132349094025632563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131242 (2 * n) + A002620 (2 * n + 1)

end

end A398197.P132349094025632563

namespace A398197

/-- `A131242(2*n)+A002620(2*n+1)` -/
def P132349094025632563.Spec : Prop :=
  ∀ n, P132349094025632563.a n = A398197 n

end A398197

/-! ## A398197.P12713351999303093314

`∑[A072154(n)-1]`
-/

namespace A398197.P12713351999303093314
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072154 n - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A398197.P12713351999303093314

namespace A398197

/-- `∑[A072154(n)-1]` -/
def P12713351999303093314.Spec : Prop :=
  ∀ n, P12713351999303093314.a n = A398197 n

end A398197

/-! ## A398197.P6905940020301727467

`∑[A314685(n)]-(n+1)²`
-/

namespace A398197.P6905940020301727467
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314685 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - ((n + 1) ^ 2 : ℤ)

end

end A398197.P6905940020301727467

namespace A398197

/-- `∑[A314685(n)]-(n+1)²` -/
def P6905940020301727467.Spec : Prop :=
  ∀ n, P6905940020301727467.a n = A398197 n

end A398197

/-!
# A398198: Lower (3/5,1) midsequence of triangular numbers (A000217) and squares (A000290); see Comments.

The programs for A398198, the canonical program `A398198.P10368690461500215663` is in `Seq.B000.C050`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A398198 has offset 0).

The definition of A398198 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A398198.P6292516511996663019

`ogf((x+3x^2+3x^3+3x^4+2x^5+x^6)/(1-2x+x^2-x^5+2x^6-x^7))`
-/

namespace A398198.P6292516511996663019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1, 3, 3, 3, 2, 1] [1, -2, 1, 0, 0, -1, 2, -1] n

end

end A398198.P6292516511996663019

namespace A398198

/-- `ogf((x+3x^2+3x^3+3x^4+2x^5+x^6)/(1-2x+x^2-x^5+2x^6-x^7))` -/
def P6292516511996663019.Spec : Prop :=
  ∀ n, P6292516511996663019.a n = A398198 n

end A398198

/-! ## A398198.P10368690461500215663

`2*a(n-1)-a(n-2)+a(n-5)-2*a(n-6)+a(n-7)` with `a(0)=0, a(1)=1, a(2)=5, a(3)=12, a(4)=22, a(5)=34, a(6)=48`

The canonical program, it is in `Seq.B000.C050`.
-/

namespace A398198

/-- `2*a(n-1)-a(n-2)+a(n-5)-2*a(n-6)+a(n-7)` -/
def P10368690461500215663.Spec : Prop :=
  ∀ n, P10368690461500215663.a n = A398198 n

theorem P10368690461500215663.correct : P10368690461500215663.Spec := by
  intro n
  simp only [A398198]

end A398198

/-! ## A398198.P15507711296157985560

`floor(3/5*∑[n])+n²`
-/

namespace A398198.P15507711296157985560
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(3 : ℚ) / 5 * ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ)⌋ + (n ^ 2 : ℤ)

end

end A398198.P15507711296157985560

namespace A398198

/-- `floor(3/5*∑[n])+n²` -/
def P15507711296157985560.Spec : Prop :=
  ∀ n, P15507711296157985560.a n = A398198 n

end A398198

/-! ## A398198.P17764409794176014782

`∑[A008574(n)-A047309(n+1)]`
-/

namespace A398198.P17764409794176014782
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 n - A047309 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A398198.P17764409794176014782

namespace A398198

/-- `∑[A008574(n)-A047309(n+1)]` -/
def P17764409794176014782.Spec : Prop :=
  ∀ n, P17764409794176014782.a n = A398198 n

end A398198

/-! ## A398198.P3779528395386457119

`∑[A250120(2*n)-(7*n+1)]`
-/

namespace A398198.P3779528395386457119
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250120 (2 * n) - (7 * n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A398198.P3779528395386457119

namespace A398198

/-- `∑[A250120(2*n)-(7*n+1)]` -/
def P3779528395386457119.Spec : Prop :=
  ∀ n, P3779528395386457119.a n = A398198 n

end A398198

/-! ## A398198.P18223170699795348999

`∑[A004277(2*n)-A047309(n+1)]`
-/

namespace A398198.P18223170699795348999
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (2 * n) - A047309 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A398198.P18223170699795348999

namespace A398198

/-- `∑[A004277(2*n)-A047309(n+1)]` -/
def P18223170699795348999.Spec : Prop :=
  ∀ n, P18223170699795348999.a n = A398198 n

end A398198

/-! ## A398198.P12980505989436383138

`∑[A301718(n)-A000027(3*n+1)]`
-/

namespace A398198.P12980505989436383138
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301718 n - A000027 (3 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A398198.P12980505989436383138

namespace A398198

/-- `∑[A301718(n)-A000027(3*n+1)]` -/
def P12980505989436383138.Spec : Prop :=
  ∀ n, P12980505989436383138.a n = A398198 n

end A398198

/-! ## A398198.P10546372991962073976

`∑[A004525(A310512(n))-1]`
-/

namespace A398198.P10546372991962073976
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A310512 n).toNat - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A398198.P10546372991962073976

namespace A398198

/-- `∑[A004525(A310512(n))-1]` -/
def P10546372991962073976.Spec : Prop :=
  ∀ n, P10546372991962073976.a n = A398198 n

end A398198

/-! ## A398198.P7791175936943103255

`∑[A004525(A310518(n))-1]`
-/

namespace A398198.P7791175936943103255
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A310518 n).toNat - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A398198.P7791175936943103255

namespace A398198

/-- `∑[A004525(A310518(n))-1]` -/
def P7791175936943103255.Spec : Prop :=
  ∀ n, P7791175936943103255.a n = A398198 n

end A398198

/-!
# A398199: Upper (3/5,1) midsequence of triangular numbers (A000217) and squares (A000290); see Comments.

The programs for A398199, the canonical program `A398199.P5789237725707641896` is in `Seq.B000.C050`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A398199 has offset 0).

The definition of A398199 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A398199.P16738700401189545135

`ogf((2x+2x^2+3x^3+2x^4+3x^5+x^6)/(1-2x+x^2-x^5+2x^6-x^7))`
-/

namespace A398199.P16738700401189545135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 2, 2, 3, 2, 3, 1] [1, -2, 1, 0, 0, -1, 2, -1] n

end

end A398199.P16738700401189545135

namespace A398199

/-- `ogf((2x+2x^2+3x^3+2x^4+3x^5+x^6)/(1-2x+x^2-x^5+2x^6-x^7))` -/
def P16738700401189545135.Spec : Prop :=
  ∀ n, P16738700401189545135.a n = A398199 n

end A398199

/-! ## A398199.P5789237725707641896

`2*a(n-1)-a(n-2)+a(n-5)-2*a(n-6)+a(n-7)` with `a(0)=0, a(1)=2, a(2)=6, a(3)=13, a(4)=22, a(5)=34, a(6)=49`

The canonical program, it is in `Seq.B000.C050`.
-/

namespace A398199

/-- `2*a(n-1)-a(n-2)+a(n-5)-2*a(n-6)+a(n-7)` -/
def P5789237725707641896.Spec : Prop :=
  ∀ n, P5789237725707641896.a n = A398199 n

theorem P5789237725707641896.correct : P5789237725707641896.Spec := by
  intro n
  simp only [A398199]

end A398199

/-! ## A398199.P14836773287927941602

`A398055(n)+A011858(n)`
-/

namespace A398199.P14836773287927941602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A398055 n + A011858 n

end

end A398199.P14836773287927941602

namespace A398199

/-- `A398055(n)+A011858(n)` -/
def P14836773287927941602.Spec : Prop :=
  ∀ n, P14836773287927941602.a n = A398199 n

end A398199

/-! ## A398199.P8277080690858974087

`A005475(n)-A398196(n)`
-/

namespace A398199.P8277080690858974087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005475 n - A398196 n

end

end A398199.P8277080690858974087

namespace A398199

/-- `A005475(n)-A398196(n)` -/
def P8277080690858974087.Spec : Prop :=
  ∀ n, P8277080690858974087.a n = A398199 n

end A398199

/-! ## A398199.P9676828555353024638

`∑[floor((A033627(n+1)+A250120(n))/3)]`
-/

namespace A398199.P9676828555353024638
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A033627 (n + 1) + A250120 n : ℚ) / 3⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A398199.P9676828555353024638

namespace A398199

/-- `∑[floor((A033627(n+1)+A250120(n))/3)]` -/
def P9676828555353024638.Spec : Prop :=
  ∀ n, P9676828555353024638.a n = A398199 n

end A398199

/-! ## A398199.P14546072756559224781

`∑[A314840(n)]-(n+1)²`
-/

namespace A398199.P14546072756559224781
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314840 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - ((n + 1) ^ 2 : ℤ)

end

end A398199.P14546072756559224781

namespace A398199

/-- `∑[A314840(n)]-(n+1)²` -/
def P14546072756559224781.Spec : Prop :=
  ∀ n, P14546072756559224781.a n = A398199 n

end A398199

