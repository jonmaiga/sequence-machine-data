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
import Seq.B000.C031
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C036
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C008
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C005
import Seq.B003.C000
import Seq.B003.C001
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
import Seq.B007.C001
import Seq.B008.C000
import Seq.B009.C000
import Seq.B009.C001
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
# A079500: Number of compositions of the integer n in which the first part is >= the other parts.

The programs for A079500, there is no canonical definition to state claims against.
-/

/-! ## A079500.P8893934396379041168

`∑[A368279(n)]`
-/

namespace A079500.P8893934396379041168
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368279 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A079500.P8893934396379041168

/-! ## A079500.P11144981800634235231

`A007059(n+1)`
-/

namespace A079500.P11144981800634235231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007059 (n + 1)

end

end A079500.P11144981800634235231

/-! ## A079500.P15985379038397858585

`∑[abs(Δ[A007059(n)])]`
-/

namespace A079500.P15985379038397858585
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007059 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f2 (n + 1) - f2 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A079500.P15985379038397858585

/-! ## A079500.P17168917513993086241

`A048888(A028310(n)-1)+1`
-/

namespace A079500.P17168917513993086241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048888 (A028310 n - 1).toNat + 1

end

end A079500.P17168917513993086241

/-! ## A079500.P17508564741363996287

`A368279(n+1)+A188541(n)`
-/

namespace A079500.P17508564741363996287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368279 (n + 1) + A188541 n

end

end A079500.P17508564741363996287

/-! ## A079500.P9074807147872394795

`Δ[A186537(n)]`
-/

namespace A079500.P9074807147872394795
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186537 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A079500.P9074807147872394795

/-! ## A079500.P18009812612063569206

`A186537(n+1)-A186537(n)`
-/

namespace A079500.P18009812612063569206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186537 (n + 1) - A186537 n

end

end A079500.P18009812612063569206

/-! ## A079500.P2174338683832988388

`record[A186537(A152271(n))]-A186537(n)`
-/

namespace A079500.P2174338683832988388
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186537 (A152271 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A186537 n

end

end A079500.P2174338683832988388

/-! ## A079500.P10605452636678264673

`∑[Δ[A336482(n)]-A336482(n)]`
-/

namespace A079500.P10605452636678264673
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336482 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n - A336482 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A079500.P10605452636678264673

/-! ## A079500.P15453522636192561161

`A336482(n+1)-∑[A336482(n)]`
-/

namespace A079500.P15453522636192561161
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336482 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336482 (n + 1) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A079500.P15453522636192561161

/-! ## A079500.P16135505361492803206

`A238345(C(n, 2)+1)`
-/

namespace A079500.P16135505361492803206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238345 (Nat.choose n 2 + 1)

end

end A079500.P16135505361492803206

/-! ## A079500.P16634413996972163573

`A238345(∑[abs(1-n)])`
-/

namespace A079500.P16634413996972163573
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - (n : ℤ)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238345 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A079500.P16634413996972163573

/-!
# A079501: Number of compositions of the integer n with strictly smallest part in the first position.

The programs for A079501, there is no canonical definition to state claims against.
-/

/-! ## A079501.P12859491321554407715

`A171682(n+2)-2^n`
-/

namespace A079501.P12859491321554407715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171682 (n + 2) - (2 ^ n : ℤ)

end

end A079501.P12859491321554407715

/-! ## A079501.P10345111701576480723

`A008930(n+1)+A238859(n+1)-A000079(n)`
-/

namespace A079501.P10345111701576480723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008930 (n + 1) + (A238859 (n + 1) - A000079 n)

end

end A079501.P10345111701576480723

/-! ## A079501.P2902025013839049799

`A008930(n+1)+A238859(n+1)-A011782(n+1)`
-/

namespace A079501.P2902025013839049799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008930 (n + 1) + (A238859 (n + 1) - A011782 (n + 1))

end

end A079501.P2902025013839049799

/-! ## A079501.P2812459650610382548

`∑[Δ[A336484(n)]-A336484(n)]`
-/

namespace A079501.P2812459650610382548
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336484 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n - A336484 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A079501.P2812459650610382548

/-! ## A079501.P5384971256675177152

`A336484(n+1)-∑[A336484(n)]`
-/

namespace A079501.P5384971256675177152
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336484 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336484 (n + 1) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A079501.P5384971256675177152

/-! ## A079501.P12223095937886568160

`A097939(n+2)-(A097939(n+1)+A000079(n))`
-/

namespace A079501.P12223095937886568160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097939 (n + 2) - (A097939 (n + 1) + A000079 n)

end

end A079501.P12223095937886568160

/-!
# A079503: a(n) = (n-1)^3*((n-2)^2 - 2*(n-3)).

The programs for A079503, the canonical program `A079503.P1950486112413046831` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A079503 has offset 1).

The definition of A079503 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n^3*((n-1)²-2*(n-2))` (program `A079503.P1950486112413046831`, by `A079503.P1950486112413046831.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A079503.P1950486112413046831

`n^3*((n-1)²-2*(n-2))`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A079503

/-- `n^3*((n-1)²-2*(n-2))` -/
def P1950486112413046831.Spec : Prop :=
  ∀ n, P1950486112413046831.a n = A079503 (n + 1)

theorem P1950486112413046831.correct : P1950486112413046831.Spec := by
  intro n
  simp only [A079503, Nat.add_sub_cancel]

end A079503

/-! ## A079503.P16261749293380176230

`n^3/sin(acot(2-n))²`
-/

namespace A079503.P16261749293380176230
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (n ^ 3 : ℝ) / Real.sin (SequenceMachineLib.acot (2 - (n : ℤ) : ℝ)) ^ 2

end

end A079503.P16261749293380176230

namespace A079503

/-- `n^3/sin(acot(2-n))²` -/
def P16261749293380176230.Spec : Prop :=
  ∀ n, P16261749293380176230.a n = (A079503 (n + 1) : ℝ)

end A079503

/-! ## A079503.P6070942449176787155

`A133073(n)-A000384(n)²`
-/

namespace A079503.P6070942449176787155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133073 n - A000384 n ^ 2

end

end A079503.P6070942449176787155

namespace A079503

/-- `A133073(n)-A000384(n)²` -/
def P6070942449176787155.Spec : Prop :=
  ∀ n, P6070942449176787155.a n = A079503 (n + 1)

end A079503

/-! ## A079503.P6866617996249782889

`A133073(n)-(n-A001105(n))²`
-/

namespace A079503.P6866617996249782889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133073 n - ((n : ℤ) - A001105 n) ^ 2

end

end A079503.P6866617996249782889

namespace A079503

/-- `A133073(n)-(n-A001105(n))²` -/
def P6866617996249782889.Spec : Prop :=
  ∀ n, P6866617996249782889.a n = A079503 (n + 1)

end A079503

/-! ## A079503.P11873274052786673835

`(2*n²+1)*A162607(n)-A162607(n)`
-/

namespace A079503.P11873274052786673835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n ^ 2 + 1 : ℤ) * A162607 n - A162607 n

end

end A079503.P11873274052786673835

namespace A079503

/-- `(2*n²+1)*A162607(n)-A162607(n)` -/
def P11873274052786673835.Spec : Prop :=
  ∀ n, P11873274052786673835.a n = A079503 (n + 1)

end A079503

/-!
# A079504: a(n) = 8*n^3*((2*n-1)^2 - 4*n + 4).

The programs for A079504, the canonical program `A079504.P5727349004942314891` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A079504 has offset 0).

The definition of A079504 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `8*n^3*((2*n-1)²-4*n+4)` (program `A079504.P5727349004942314891`, by `A079504.P5727349004942314891.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A079504.P5727349004942314891

`8*n^3*((2*n-1)²-4*n+4)`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A079504

/-- `8*n^3*((2*n-1)²-4*n+4)` -/
def P5727349004942314891.Spec : Prop :=
  ∀ n, P5727349004942314891.a n = A079504 n

theorem P5727349004942314891.correct : P5727349004942314891.Spec := by
  intro n
  simp only [A079504]

end A079504

/-! ## A079504.P13854091353264511605

`A079503(Δ[n²])`
-/

namespace A079504.P13854091353264511605
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079503 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A079504.P13854091353264511605

namespace A079504

/-- `A079503(Δ[n²])` -/
def P13854091353264511605.Spec : Prop :=
  ∀ n, P13854091353264511605.a n = A079504 n

end A079504

/-! ## A079504.P10501978127300027467

`lcm(2, A079503(2*n+1))`
-/

namespace A079504.P10501978127300027467
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A079503 (2 * n + 1))

end

end A079504.P10501978127300027467

namespace A079504

/-- `lcm(2, A079503(2*n+1))` -/
def P10501978127300027467.Spec : Prop :=
  ∀ n, (P10501978127300027467.a n : ℤ) = A079504 n

end A079504

/-! ## A079504.P9926236962288326454

`record[A079503(A000265(n+1))]`
-/

namespace A079504.P9926236962288326454
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079503 (A000265 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A079504.P9926236962288326454

namespace A079504

/-- `record[A079503(A000265(n+1))]` -/
def P9926236962288326454.Spec : Prop :=
  ∀ n, P9926236962288326454.a n = A079504 n

end A079504

/-! ## A079504.P4438216034563590675

`A133073(2*n)-A000384(2*n)²`
-/

namespace A079504.P4438216034563590675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133073 (2 * n) - A000384 (2 * n) ^ 2

end

end A079504.P4438216034563590675

namespace A079504

/-- `A133073(2*n)-A000384(2*n)²` -/
def P4438216034563590675.Spec : Prop :=
  ∀ n, P4438216034563590675.a n = A079504 n

end A079504

/-! ## A079504.P14552438415563795577

`A079503(n+1+n)+A000007(n+1)`
-/

namespace A079504.P14552438415563795577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079503 (n + 1 + n) + A000007 (n + 1)

end

end A079504.P14552438415563795577

namespace A079504

/-- `A079503(n+1+n)+A000007(n+1)` -/
def P14552438415563795577.Spec : Prop :=
  ∀ n, P14552438415563795577.a n = A079504 n

end A079504

/-! ## A079504.P16215504159773073350

`A151878(A013632(n))+A079503(n+1+n)`
-/

namespace A079504.P16215504159773073350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151878 (A013632 n).toNat + A079503 (n + 1 + n)

end

end A079504.P16215504159773073350

namespace A079504

/-- `A151878(A013632(n))+A079503(n+1+n)` -/
def P16215504159773073350.Spec : Prop :=
  ∀ n, P16215504159773073350.a n = A079504 n

end A079504

/-! ## A079504.P9551214990867123868

`A151878(A256489(n+1))+A079503(n+1+n)`
-/

namespace A079504.P9551214990867123868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151878 (A256489 (n + 1)).toNat + A079503 (n + 1 + n)

end

end A079504.P9551214990867123868

namespace A079504

/-- `A151878(A256489(n+1))+A079503(n+1+n)` -/
def P9551214990867123868.Spec : Prop :=
  ∀ n, P9551214990867123868.a n = A079504 n

end A079504

/-! ## A079504.P7590916047291709550

`A079503(2*n+1)/A014963(A016825(n))`
-/

namespace A079504.P7590916047291709550
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A079503 (2 * n + 1) : ℚ) / (A014963 (A016825 n).toNat : ℚ)

end

end A079504.P7590916047291709550

namespace A079504

/-- `A079503(2*n+1)/A014963(A016825(n))` -/
def P7590916047291709550.Spec : Prop :=
  ∀ n, P7590916047291709550.a n = (A079504 n : ℚ)

end A079504

/-! ## A079504.P9023834942660913784

`record[A079503(A204154(n+1))]`
-/

namespace A079504.P9023834942660913784
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079503 (A204154 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A079504.P9023834942660913784

namespace A079504

/-- `record[A079503(A204154(n+1))]` -/
def P9023834942660913784.Spec : Prop :=
  ∀ n, P9023834942660913784.a n = A079504 n

end A079504

/-!
# A079505: The last number for which a determinant of base-n numbers is nonzero.

The programs for A079505, the canonical program `A079505.P14286108358455786490` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A079505 has offset 2).

The definition of A079505 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A079505.P14286108358455786490

`4*a(n-1)-6*a(n-2)+4*a(n-3)-a(n-4)` with `a(0)=14, a(1)=25, a(2)=61, a(3)=121, a(4)=211`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A079505

/-- `4*a(n-1)-6*a(n-2)+4*a(n-3)-a(n-4)` -/
def P14286108358455786490.Spec : Prop :=
  ∀ n, P14286108358455786490.a n = A079505 (n + 2)

theorem P14286108358455786490.correct : P14286108358455786490.Spec := by
  intro n
  simp only [A079505, Nat.add_sub_cancel]

end A079505

/-! ## A079505.P17841714653403550736

`Δ[A166941(n)]/A040002(n)`
-/

namespace A079505.P17841714653403550736
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166941 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n : ℚ) / (A040002 n : ℚ)

end

end A079505.P17841714653403550736

namespace A079505

/-- `Δ[A166941(n)]/A040002(n)` -/
def P17841714653403550736.Spec : Prop :=
  ∀ n, P17841714653403550736.a n = (A079505 (n + 2) : ℚ)

end A079505

/-! ## A079505.P6719874336721049178

`A054977(n)*A068601(n+2)-n`
-/

namespace A079505.P6719874336721049178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054977 n * A068601 (n + 2) - (n : ℤ)

end

end A079505.P6719874336721049178

namespace A079505

/-- `A054977(n)*A068601(n+2)-n` -/
def P6719874336721049178.Spec : Prop :=
  ∀ n, P6719874336721049178.a n = A079505 (n + 2)

end A079505

/-! ## A079505.P6351692637605911915

`A014973(2*(n+2))*A061600(n+2)`
-/

namespace A079505.P6351692637605911915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014973 (2 * (n + 2)) * A061600 (n + 2)

end

end A079505.P6351692637605911915

namespace A079505

/-- `A014973(2*(n+2))*A061600(n+2)` -/
def P6351692637605911915.Spec : Prop :=
  ∀ n, P6351692637605911915.a n = A079505 (n + 2)

end A079505

/-! ## A079505.P10559838085310248569

`(A126420(n+2)+2)*A014963(A088977(n+1))`
-/

namespace A079505.P10559838085310248569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A126420 (n + 2) + 2) * A014963 (A088977 (n + 1)).toNat

end

end A079505.P10559838085310248569

namespace A079505

/-- `(A126420(n+2)+2)*A014963(A088977(n+1))` -/
def P10559838085310248569.Spec : Prop :=
  ∀ n, P10559838085310248569.a n = A079505 (n + 2)

end A079505

/-! ## A079505.P1170250687270240820

`A014963(A048618(n+2))*A061600(n+2)`
-/

namespace A079505.P1170250687270240820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A048618 (n + 2)).toNat * A061600 (n + 2)

end

end A079505.P1170250687270240820

namespace A079505

/-- `A014963(A048618(n+2))*A061600(n+2)` -/
def P1170250687270240820.Spec : Prop :=
  ∀ n, P1170250687270240820.a n = A079505 (n + 2)

end A079505

/-! ## A079505.P18370575539229229264

`A035214(A074148(n+1))*A061600(n+2)`
-/

namespace A079505.P18370575539229229264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035214 (A074148 (n + 1)).toNat * A061600 (n + 2)

end

end A079505.P18370575539229229264

namespace A079505

/-- `A035214(A074148(n+1))*A061600(n+2)` -/
def P18370575539229229264.Spec : Prop :=
  ∀ n, P18370575539229229264.a n = A079505 (n + 2)

end A079505

/-! ## A079505.P1920103381995286014

`A035214(2*n²)*A061600(n+2)`
-/

namespace A079505.P1920103381995286014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035214 (2 * n ^ 2) * A061600 (n + 2)

end

end A079505.P1920103381995286014

namespace A079505

/-- `A035214(2*n²)*A061600(n+2)` -/
def P1920103381995286014.Spec : Prop :=
  ∀ n, P1920103381995286014.a n = A079505 (n + 2)

end A079505

/-!
# A079508: Triangle T(n,k) (n >= 2, k >= 1) of Raney numbers read by rows.

The programs for A079508, there is no canonical definition to state claims against.
-/

/-! ## A079508.P4582029448369840924

`A326774(A113953(n))%A182838(2*(n+2))`
-/

namespace A079508.P4582029448369840924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A326774 (A113953 n).toNat) (A182838 (2 * (n + 2)))

end

end A079508.P4582029448369840924

/-! ## A079508.P1855395885556678624

`A285189(A110509(n)²)`
-/

namespace A079508.P1855395885556678624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285189 (A110509 n ^ 2).toNat

end

end A079508.P1855395885556678624

/-! ## A079508.P6995458076317300421

`A285189(A113953(n)²)`
-/

namespace A079508.P6995458076317300421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285189 (A113953 n ^ 2).toNat

end

end A079508.P6995458076317300421

/-! ## A079508.P6701332213153074314

`A219648(A319574(n))%A122726(2*n+5)`
-/

namespace A079508.P6701332213153074314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A219648 (A319574 n).toNat) (A122726 (2 * n + 5))

end

end A079508.P6701332213153074314

/-! ## A079508.P15699706130829846780

`A111490(A319574(n))%A325067(3*n+5)`
-/

namespace A079508.P15699706130829846780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A111490 (A319574 n).toNat) (A325067 (3 * n + 5))

end

end A079508.P15699706130829846780

/-!
# A079510: Triangle T(n,k) read by rows; related to number of preorders.

The programs for A079510, there is no canonical definition to state claims against.
-/

/-! ## A079510.P5849467839283646146

`A226288(n+1)*A347707(A004895(n+1))`
-/

namespace A079510.P5849467839283646146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226288 (n + 1) * A347707 (A004895 (n + 1)).toNat

end

end A079510.P5849467839283646146

/-! ## A079510.P8380580142050306393

`(A178580(A329703(n))+A008305(n+1))*A026729(n)`
-/

namespace A079510.P8380580142050306393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A178580 (A329703 n).toNat + A008305 (n + 1)) * A026729 n

end

end A079510.P8380580142050306393

/-! ## A079510.P12250102478440671320

`(A303837(A228902(n))+A008305(n+1))*A026729(n)`
-/

namespace A079510.P12250102478440671320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A303837 (A228902 n).toNat + A008305 (n + 1)) * A026729 n

end

end A079510.P12250102478440671320

/-! ## A079510.P12902226042375242306

`(A217897(A262307(n+1))+A008305(n+1))*A026729(n)`
-/

namespace A079510.P12902226042375242306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A217897 (A262307 (n + 1)).toNat + A008305 (n + 1)) * A026729 n

end

end A079510.P12902226042375242306

/-!
# A079511: a(n) = constant arising in game of n-times nim.

The programs for A079511, there is no canonical definition to state claims against.
-/

/-! ## A079511.P7843580988494400169

`floor(∑[sqrt((n²-1)%Δ[n²]+3)])`
-/

namespace A079511.P7843580988494400169
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (Int.tmod ((n ^ 2 : ℤ) - 1) ((f2 (n + 1) : ℤ) - (f2 n : ℤ)) + 3 : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊∑ j ∈ Finset.range (n + 1), f1 j⌋

end

end A079511.P7843580988494400169

/-! ## A079511.P14043649133094067188

`floor(n*(sqrt(floor(n/2)+10)-1))+1`
-/

namespace A079511.P14043649133094067188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℝ) * (Real.sqrt (⌊(n : ℚ) / 2⌋ + 10 : ℝ) - 1)⌋ + 1

end

end A079511.P14043649133094067188

/-! ## A079511.P18311933385825151186

`or(ceil(sqrt((n+1)^3)/2+n), char[12])`
-/

namespace A079511.P18311933385825151186
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  12

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ⌈Real.sqrt ((n + 1) ^ 3 : ℝ) / 2 + (n : ℝ)⌉ ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A079511.P18311933385825151186

/-! ## A079511.P15223827845088873159

`∑[ceil((∑{p}[n+1, #*val(n+1, #)]+4)/4)]`
-/

namespace A079511.P15223827845088873159
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((∑ p ∈ Nat.primeFactors (f2 n), p * SequenceMachineLib.valuation (n + 1) p + 4 : ℕ) : ℚ) / 4⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A079511.P15223827845088873159

/-! ## A079511.P8105044558798445218

`∑[a(A128112(n))+1]` with `a(0)=1`
-/

namespace A079511.P8105044558798445218
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f1 =>
  f1 (A128112 n).toNat + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A079511.P8105044558798445218

/-!
# A079512: a(0)=1, a(1)=1; for n>1, a(n) = Sum_{i=0..n/2} binomial(n-i-1,i)*a(n-2i-1) + ((n+1) mod 2).

The programs for A079512, there is no canonical definition to state claims against.
-/

/-! ## A079512.P14019730441990174467

`A261104(A171711(n+1)+1)`
-/

namespace A079512.P14019730441990174467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261104 (A171711 (n + 1) + 1).toNat

end

end A079512.P14019730441990174467

/-! ## A079512.P17981289031704506658

`A262689(or(n+2, A346056(n)))`
-/

namespace A079512.P17981289031704506658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262689 (Int.lor (n + 2 : ℤ) (A346056 n)).toNat

end

end A079512.P17981289031704506658

/-! ## A079512.P17632208685065997106

`A262689(A346056(n)+A127155(n))`
-/

namespace A079512.P17632208685065997106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262689 (A346056 n + A127155 n).toNat

end

end A079512.P17632208685065997106

/-! ## A079512.P10422820207903169459

`A262689(A346056(n)+A271439(n))`
-/

namespace A079512.P10422820207903169459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262689 (A346056 n + A271439 n).toNat

end

end A079512.P10422820207903169459

/-!
# A079513: Triangular array (a Riordan array) related to tennis ball problem, read by rows.

The programs for A079513, there is no canonical definition to state claims against.
-/

/-! ## A079513.P14574047903750366779

`A130167(n)+A050870(A131630(n))`
-/

namespace A079513.P14574047903750366779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130167 n + A050870 (A131630 n).toNat

end

end A079513.P14574047903750366779

/-!
# A079514: Second column of triangular array in A079513.

The programs for A079514, there is no canonical definition to state claims against.
-/

/-! ## A079514.P11164459611306208678

`A079513(∑[n+1]+1)`
-/

namespace A079514.P11164459611306208678
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079513 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A079514.P11164459611306208678

/-! ## A079514.P7850523294631614260

`A079513(A134869(n+1))^ceil(sin(n)²)`
-/

namespace A079514.P7850523294631614260
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A079513 (A134869 (n + 1)).toNat : ℚ) ^ (⌈Real.sin (n : ℝ) ^ 2⌉ : ℤ)

end

end A079514.P7850523294631614260

/-! ## A079514.P6951959976784710740

`A079513(A134869(n+1))+A000007(n)`
-/

namespace A079514.P6951959976784710740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079513 (A134869 (n + 1)).toNat + A000007 n

end

end A079514.P6951959976784710740

/-! ## A079514.P15221014162156377139

`A079513(A134869(n+1))^abs(A057428(n))`
-/

namespace A079514.P15221014162156377139
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A079513 (A134869 (n + 1)).toNat : ℚ) ^ (|A057428 n| : ℤ)

end

end A079514.P15221014162156377139

/-! ## A079514.P714692106010348417

`A079513(A134869(n+1))+1-A057427(n)`
-/

namespace A079514.P714692106010348417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079513 (A134869 (n + 1)).toNat + 1 - A057427 n

end

end A079514.P714692106010348417

/-! ## A079514.P16759719414582646955

`a(A047486(((-1)^n)²))*A079513(A134869(n+1))` with `a(0)=1`
-/

namespace A079514.P16759719414582646955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (A047486 (((-1) ^ n) ^ 2).toNat).toNat * A079513 (A134869 (n + 1)).toNat

end

end A079514.P16759719414582646955

/-! ## A079514.P1761103699620912071

`A079513(A134869(n+1))+A000035(A004277(n))`
-/

namespace A079514.P1761103699620912071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079513 (A134869 (n + 1)).toNat + A000035 (A004277 n).toNat

end

end A079514.P1761103699620912071

/-! ## A079514.P17425386098373711118

`A079513(A134869(n+1))+A035363(A008578(n+2))`
-/

namespace A079514.P17425386098373711118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079513 (A134869 (n + 1)).toNat + A035363 (A008578 (n + 2)).toNat

end

end A079514.P17425386098373711118

/-! ## A079514.P6853771393862992366

`A079513(A134869(n+1))+val(A242169(n+1), 2)`
-/

namespace A079514.P6853771393862992366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079513 (A134869 (n + 1)).toNat + (SequenceMachineLib.valuation (A242169 (n + 1)).toNat 2 : ℤ)

end

end A079514.P6853771393862992366

/-!
# A079515: Coefficients related to tennis ball problem.

The programs for A079515, there is no canonical definition to state claims against.
-/

/-! ## A079515.P12080932295821372787

`A079522(Δ[n²])`
-/

namespace A079515.P12080932295821372787
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079522 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A079515.P12080932295821372787

/-! ## A079515.P14883013579120742536

`record[A079522(n^(n%2))]`
-/

namespace A079515.P14883013579120742536
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079522 (n ^ (n % 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A079515.P14883013579120742536

/-! ## A079515.P12730526469235218530

`record[A079522((n+1)/2^val(n+1, 2))]`
-/

namespace A079515.P12730526469235218530
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079522 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (2 ^ SequenceMachineLib.valuation (n + 1) 2 : ℚ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A079515.P12730526469235218530

/-! ## A079515.P4600785717871726014

`A078990(A028872(n+2))`
-/

namespace A079515.P4600785717871726014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078990 (A028872 (n + 2)).toNat

end

end A079515.P4600785717871726014

/-! ## A079515.P15524120244665312579

`A078990(A123968(n+2))`
-/

namespace A079515.P15524120244665312579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078990 (A123968 (n + 2)).toNat

end

end A079515.P15524120244665312579

/-! ## A079515.P11835090206318284614

`record[A079522(gcd(n, A035363(n)))]`
-/

namespace A079515.P11835090206318284614
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079522 (Int.gcd (n : ℤ) (A035363 n))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A079515.P11835090206318284614

/-! ## A079515.P16477830653803556513

`A079489(n+1)-2*A066357(n+1)`
-/

namespace A079515.P16477830653803556513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079489 (n + 1) - 2 * A066357 (n + 1)

end

end A079515.P16477830653803556513

/-! ## A079515.P15052951519319407945

`A079521((n+1)*Δ[n²])`
-/

namespace A079515.P15052951519319407945
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079521 ((n + 1 : ℤ) * ((f1 (n + 1) : ℤ) - (f1 n : ℤ))).toNat

end

end A079515.P15052951519319407945

/-! ## A079515.P1963207543817668300

`A079520((n+2)*Δ[n²])`
-/

namespace A079515.P1963207543817668300
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079520 ((n + 2 : ℤ) * ((f1 (n + 1) : ℤ) - (f1 n : ℤ))).toNat

end

end A079515.P1963207543817668300

/-! ## A079515.P7989181993098066283

`record[gcd(A079513(n), A079521(n))]`
-/

namespace A079515.P7989181993098066283
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A079513 n) (A079521 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A079515.P7989181993098066283

/-!
# A079516: Coefficients related to tennis ball problem.

The programs for A079516, there is no canonical definition to state claims against.
-/

/-! ## A079516.P7219176250823873536

`A079520(A091823(n+1))`
-/

namespace A079516.P7219176250823873536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079520 (A091823 (n + 1)).toNat

end

end A079516.P7219176250823873536

/-! ## A079516.P17894571340112757240

`record[gcd(A079520(n), A108561(n))]`
-/

namespace A079516.P17894571340112757240
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A079520 n) (A108561 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A079516.P17894571340112757240

/-! ## A079516.P6563833523467327493

`A079520(A000096(2*(n+1))-1)`
-/

namespace A079516.P6563833523467327493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079520 (A000096 (2 * (n + 1)) - 1).toNat

end

end A079516.P6563833523467327493

/-! ## A079516.P1061924462027860534

`A079520(A046691(2*n+1)+2)`
-/

namespace A079516.P1061924462027860534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079520 (A046691 (2 * n + 1) + 2).toNat

end

end A079516.P1061924462027860534

/-! ## A079516.P11437323759798793462

`A079520(A000217(2*n+3)-2)`
-/

namespace A079516.P11437323759798793462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079520 (A000217 (2 * n + 3) - 2).toNat

end

end A079516.P11437323759798793462

/-!
# A079517: Coefficients related to tennis ball problem.

The programs for A079517, there is no canonical definition to state claims against.
-/

/-! ## A079517.P8403826801994170482

`A079520((n+1)*(2*n+7))`
-/

namespace A079517.P8403826801994170482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079520 ((n + 1) * (2 * n + 7))

end

end A079517.P8403826801994170482

/-! ## A079517.P14468711931549041387

`A079513(A091823(n+2)+7)`
-/

namespace A079517.P14468711931549041387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079513 (A091823 (n + 2) + 7).toNat

end

end A079517.P14468711931549041387

/-! ## A079517.P10472526474212361255

`A079513(eq[6, A140756(n+1)])`
-/

namespace A079517.P10472526474212361255
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140756 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079513 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A079517.P10472526474212361255

/-! ## A079517.P4426309126859497758

`A079513(A000096(2*(n+2))+6)`
-/

namespace A079517.P4426309126859497758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079513 (A000096 (2 * (n + 2)) + 6).toNat

end

end A079517.P4426309126859497758

/-! ## A079517.P5625048846097417322

`A079513(A100038(n+2))`
-/

namespace A079517.P5625048846097417322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079513 (A100038 (n + 2)).toNat

end

end A079517.P5625048846097417322

/-!
# A079518: Coefficients related to tennis ball problem.

The programs for A079518, there is no canonical definition to state claims against.
-/

/-! ## A079518.P6855706371429551264

`A079522(2*(n+2))%A079515(n+1)`
-/

namespace A079518.P6855706371429551264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A079522 (2 * (n + 2))) (A079515 (n + 1))

end

end A079518.P6855706371429551264

/-! ## A079518.P14132215650186625696

`A079520(A091823(n+2)-2)`
-/

namespace A079518.P14132215650186625696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079520 (A091823 (n + 2) - 2).toNat

end

end A079518.P14132215650186625696

/-! ## A079518.P7489366563326970846

`A079520(A046691(2*n+3))`
-/

namespace A079518.P7489366563326970846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079520 (A046691 (2 * n + 3)).toNat

end

end A079518.P7489366563326970846

/-! ## A079518.P17567831500861804414

`A079513(eq[7, A140756(n+1)])`
-/

namespace A079518.P17567831500861804414
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140756 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079513 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A079518.P17567831500861804414

/-! ## A079518.P12108155133540928500

`A079520(A142463(n+2)+n)`
-/

namespace A079518.P12108155133540928500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079520 (A142463 (n + 2) + (n : ℤ)).toNat

end

end A079518.P12108155133540928500

/-!
# A079520: Triangular array related to tennis ball problem, read by rows.

The programs for A079520, there is no canonical definition to state claims against.
-/

/-! ## A079520.P5149485932871240855

`A156042(n+1)-A005136(A003506(n+1))`
-/

namespace A079520.P5149485932871240855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156042 (n + 1) - A005136 (A003506 (n + 1)).toNat

end

end A079520.P5149485932871240855

/-! ## A079520.P15148479912469701083

`A156080(A208918(n+1))`
-/

namespace A079520.P15148479912469701083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156080 (A208918 (n + 1)).toNat

end

end A079520.P15148479912469701083

/-! ## A079520.P14826900442987614291

`A097805(A245300(n))-A121373(A214828(n))`
-/

namespace A079520.P14826900442987614291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097805 (A245300 n).toNat - A121373 (A214828 n).toNat

end

end A079520.P14826900442987614291

/-! ## A079520.P12149341948392518642

`A301471(A059579(n+1))%A153438(n)`
-/

namespace A079520.P12149341948392518642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A301471 (A059579 (n + 1)).toNat) (A153438 n)

end

end A079520.P12149341948392518642

/-! ## A079520.P358669965611746866

`A287697(n)%A163255(A081549(n+1))`
-/

namespace A079520.P358669965611746866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A287697 n) (A163255 (A081549 (n + 1)).toNat)

end

end A079520.P358669965611746866

/-!
# A079522: Diagonal of triangular array in A079520.

The programs for A079522, there is no canonical definition to state claims against.
-/

/-! ## A079522.P7380063691438481381

`A079521(∑[n])`
-/

namespace A079522.P7380063691438481381
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079521 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A079522.P7380063691438481381

/-! ## A079522.P3277443444596709272

`or(char[1], A079521(A000217(n)))`
-/

namespace A079522.P3277443444596709272
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A079521 (A000217 n).toNat)

end

end A079522.P3277443444596709272

/-! ## A079522.P1944079175074976315

`record[A079521(gcd(n, A079520(n)))]`
-/

namespace A079522.P1944079175074976315
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079521 (Int.gcd (n : ℤ) (A079520 n))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A079522.P1944079175074976315

/-! ## A079522.P4078527313017316363

`abs(A209661(n+1))*A079521(A000217(n))`
-/

namespace A079522.P4078527313017316363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A209661 (n + 1)| * A079521 (A000217 n).toNat

end

end A079522.P4078527313017316363

/-! ## A079522.P16883465285991595858

`A079520(∑[n]+n)`
-/

namespace A079522.P16883465285991595858
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079520 (∑ j ∈ Finset.range (n + 1), f1 j + n)

end

end A079522.P16883465285991595858

/-! ## A079522.P5446783039317626510

`A079513(∑[n+2]+4)`
-/

namespace A079522.P5446783039317626510
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079513 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A079522.P5446783039317626510

/-! ## A079522.P16792372924261059701

`record[(1-A079520(n))*A079521(n)]`
-/

namespace A079522.P16792372924261059701
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A079520 n) * A079521 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A079522.P16792372924261059701

/-! ## A079522.P12197336519760295104

`record[A079521(n)/A079502(n)]`
-/

namespace A079522.P12197336519760295104
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A079521 n : ℚ) / (A079502 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A079522.P12197336519760295104

/-!
# A079523: Utterly odd numbers: numbers whose binary representation ends in an odd number of ones.

The programs for A079523, the canonical program `A079523.P16371928625451652770` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A079523 has offset 1).

The definition of A079523 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A081706, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A079523.P332398952355656385

`2*A003159(n+1)-1`
-/

namespace A079523.P332398952355656385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A003159 (n + 1) - 1

end

end A079523.P332398952355656385

namespace A079523

/-- `2*A003159(n+1)-1` -/
def P332398952355656385.Spec : Prop :=
  ∀ n, P332398952355656385.a n = A079523 (n + 1)

end A079523

/-! ## A079523.P291585139280968492

`A003158(n+1)-(n+1)`
-/

namespace A079523.P291585139280968492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003158 (n + 1) - (n + 1 : ℤ)

end

end A079523.P291585139280968492

namespace A079523

/-- `A003158(n+1)-(n+1)` -/
def P291585139280968492.Spec : Prop :=
  ∀ n, P291585139280968492.a n = A079523 (n + 1)

end A079523

/-! ## A079523.P16371928625451652770

`1/2*A081706(2*n+1)`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A079523

/-- `1/2*A081706(2*n+1)` -/
def P16371928625451652770.Spec : Prop :=
  ∀ n, P16371928625451652770.a n = (A079523 (n + 1) : ℚ)

end A079523

/-! ## A079523.P16030916322669969012

`lt[0, val(n+1, 2)%2]`
-/

namespace A079523.P16030916322669969012
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (n + 1) 2 % 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A079523.P16030916322669969012

namespace A079523

/-- `lt[0, val(n+1, 2)%2]` -/
def P16030916322669969012.Spec : Prop :=
  ∀ n, (P16030916322669969012.a n : ℤ) = A079523 (n + 1)

end A079523

/-! ## A079523.P488215247047535918

`eq[1, gcd(2, val(n+1, 2))]`
-/

namespace A079523.P488215247047535918
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd 2 (SequenceMachineLib.valuation (n + 1) 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A079523.P488215247047535918

namespace A079523

/-- `eq[1, gcd(2, val(n+1, 2))]` -/
def P488215247047535918.Spec : Prop :=
  ∀ n, (P488215247047535918.a n : ℤ) = A079523 (n + 1)

end A079523

/-! ## A079523.P725525187996303516

`eq[0, xor(n, n+1)%3]`
-/

namespace A079523.P725525187996303516
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor n (n + 1) % 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A079523.P725525187996303516

namespace A079523

/-- `eq[0, xor(n, n+1)%3]` -/
def P725525187996303516.Spec : Prop :=
  ∀ n, (P725525187996303516.a n : ℤ) = A079523 (n + 1)

end A079523

/-! ## A079523.P18413756814767634293

`lt[1, gcd(3, xor(n, n+1))]`
-/

namespace A079523.P18413756814767634293
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd 3 (Nat.xor n (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A079523.P18413756814767634293

namespace A079523

/-- `lt[1, gcd(3, xor(n, n+1))]` -/
def P18413756814767634293.Spec : Prop :=
  ∀ n, (P18413756814767634293.a n : ℤ) = A079523 (n + 1)

end A079523

/-! ## A079523.P12256458203317970795

`comp[n*and(n, -n)-1]`
-/

namespace A079523.P12256458203317970795
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * Int.land (n : ℤ) (-(n : ℤ)) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A079523.P12256458203317970795

namespace A079523

/-- `comp[n*and(n, -n)-1]` -/
def P12256458203317970795.Spec : Prop :=
  ∀ n, (P12256458203317970795.a n : ℤ) = A079523 (n + 1)

end A079523

/-! ## A079523.P8745420013537870625

`lt[(-1)^val(n+1, 2), 0]`
-/

namespace A079523.P8745420013537870625
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ SequenceMachineLib.valuation (n + 1) 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A079523.P8745420013537870625

namespace A079523

/-- `lt[(-1)^val(n+1, 2), 0]` -/
def P8745420013537870625.Spec : Prop :=
  ∀ n, (P8745420013537870625.a n : ℤ) = A079523 (n + 1)

end A079523

/-! ## A079523.P11719968355758791718

`eq[(-1)^val(n+1, 2), -1]`
-/

namespace A079523.P11719968355758791718
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ SequenceMachineLib.valuation (n + 1) 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A079523.P11719968355758791718

namespace A079523

/-- `eq[(-1)^val(n+1, 2), -1]` -/
def P11719968355758791718.Spec : Prop :=
  ∀ n, (P11719968355758791718.a n : ℤ) = A079523 (n + 1)

end A079523

/-! ## A079523.P752091459039003718

`comp[or(n, val(n+2, 2))]+1`
-/

namespace A079523.P752091459039003718
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor n (SequenceMachineLib.valuation (n + 2) 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + 1

end

end A079523.P752091459039003718

namespace A079523

/-- `comp[or(n, val(n+2, 2))]+1` -/
def P752091459039003718.Spec : Prop :=
  ∀ n, (P752091459039003718.a n : ℤ) = A079523 (n + 1)

end A079523

/-! ## A079523.P16075102942864984550

`comp[n*(-1)^val(n+1, 2)]`
-/

namespace A079523.P16075102942864984550
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (-1) ^ SequenceMachineLib.valuation (n + 1) 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A079523.P16075102942864984550

namespace A079523

/-- `comp[n*(-1)^val(n+1, 2)]` -/
def P16075102942864984550.Spec : Prop :=
  ∀ n, (P16075102942864984550.a n : ℤ) = A079523 (n + 1)

end A079523

/-! ## A079523.P9868830866065948557

`eq[0, xor(n, n-1)%3]-1`
-/

namespace A079523.P9868830866065948557
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (Int.xor (n : ℤ) ((n : ℤ) - 1)) 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n : ℤ) - 1

end

end A079523.P9868830866065948557

namespace A079523

/-- `eq[0, xor(n, n-1)%3]-1` -/
def P9868830866065948557.Spec : Prop :=
  ∀ n, P9868830866065948557.a n = A079523 (n + 1)

end A079523

/-! ## A079523.P5461415429229067861

`A162648(n+1)+1`
-/

namespace A079523.P5461415429229067861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162648 (n + 1) + 1

end

end A079523.P5461415429229067861

namespace A079523

/-- `A162648(n+1)+1` -/
def P5461415429229067861.Spec : Prop :=
  ∀ n, P5461415429229067861.a n = A079523 (n + 1)

end A079523

/-! ## A079523.P1868889601254346514

`A036554(n+1)-1`
-/

namespace A079523.P1868889601254346514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036554 (n + 1) - 1

end

end A079523.P1868889601254346514

namespace A079523

/-- `A036554(n+1)-1` -/
def P1868889601254346514.Spec : Prop :=
  ∀ n, P1868889601254346514.a n = A079523 (n + 1)

end A079523

/-! ## A079523.P15397719722379895987

`A072939(n+1)-2`
-/

namespace A079523.P15397719722379895987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072939 (n + 1) - 2

end

end A079523.P15397719722379895987

namespace A079523

/-- `A072939(n+1)-2` -/
def P15397719722379895987.Spec : Prop :=
  ∀ n, P15397719722379895987.a n = A079523 (n + 1)

end A079523

/-! ## A079523.P13528640802297419167

`eq[0, A035263(n+1)]`
-/

namespace A079523.P13528640802297419167
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035263 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A079523.P13528640802297419167

namespace A079523

/-- `eq[0, A035263(n+1)]` -/
def P13528640802297419167.Spec : Prop :=
  ∀ n, (P13528640802297419167.a n : ℤ) = A079523 (n + 1)

end A079523

/-! ## A079523.P8315463073492953727

`eq[1, A191254(n+1)]`
-/

namespace A079523.P8315463073492953727
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191254 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A079523.P8315463073492953727

namespace A079523

/-- `eq[1, A191254(n+1)]` -/
def P8315463073492953727.Spec : Prop :=
  ∀ n, (P8315463073492953727.a n : ℤ) = A079523 (n + 1)

end A079523

/-!
# A079524: Expansion of (x + b*x^2 - b*x^3)/((1 - x^2)*(1 - x)^2) with b=2.

The programs for A079524, the canonical program `A079524.P3834706986573524991` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A079524 has offset 0).

The definition of A079524 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A079524.P10773480501559533640

`(2*n*(n+6)-3*(1-(-1)^n))/8`
-/

namespace A079524.P10773480501559533640
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((2 * (n * (n + 6)) : ℤ) - 3 * (1 - (-1) ^ n) : ℚ) / 8

end

end A079524.P10773480501559533640

namespace A079524

/-- `(2*n*(n+6)-3*(1-(-1)^n))/8` -/
def P10773480501559533640.Spec : Prop :=
  ∀ n, P10773480501559533640.a n = (A079524 n : ℚ)

theorem P10773480501559533640.correct : P10773480501559533640.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 | 3 =>
      simp [A079524, Nat.add_sub_cancel, A079524.P10773480501559533640.a, A079524.P3834706986573524991.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 4 =>
      have h1 := ih (m + 3) (by omega)
      have h3 := ih (m + 1) (by omega)
      have h4 := ih m (by omega)
      simp only [A079524, Nat.add_sub_cancel, A079524.P10773480501559533640.a, A079524.P3834706986573524991.a, SequenceMachineLib.memo_apply] at h1 h3 h4 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 4 - 1 = m + 3 by omega, show m + 4 - 3 = m + 1 by omega, show m + 4 - 4 = m by omega, show m + 3 < m + 4 by omega, show m + 1 < m + 4 by omega, show m < m + 4 by omega, ↓reduceIte]
      push_cast at h1 h3 h4 ⊢
      rw [← h1, ← h3, ← h4]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A079524

/-! ## A079524.P3834706986573524991

`2*a(n-1)-2*a(n-3)+a(n-4)` with `a(0)=0, a(1)=1, a(2)=4, a(3)=6`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A079524

/-- `2*a(n-1)-2*a(n-3)+a(n-4)` -/
def P3834706986573524991.Spec : Prop :=
  ∀ n, P3834706986573524991.a n = A079524 n

theorem P3834706986573524991.correct : P3834706986573524991.Spec := by
  intro n
  simp only [A079524]

end A079524

/-! ## A079524.P7493817691113819442

`∑[∑[n]%(gcd(2, n)+n)]`
-/

namespace A079524.P7493817691113819442
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f2 j) % (Nat.gcd 2 n + n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A079524.P7493817691113819442

namespace A079524

/-- `∑[∑[n]%(gcd(2, n)+n)]` -/
def P7493817691113819442.Spec : Prop :=
  ∀ n, (P7493817691113819442.a n : ℤ) = A079524 n

end A079524

/-! ## A079524.P11364670132657093209

`∑[ceil(n/2)]+and(n, -2)`
-/

namespace A079524.P11364670132657093209
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n : ℚ) / 2⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + Int.land (n : ℤ) (-2)

end

end A079524.P11364670132657093209

namespace A079524

/-- `∑[ceil(n/2)]+and(n, -2)` -/
def P11364670132657093209.Spec : Prop :=
  ∀ n, P11364670132657093209.a n = A079524 n

end A079524

/-! ## A079524.P16960444924111931401

`∑[a(n-2)+1]` with `a(0)=0, a(1)=1, a(2)=3`
-/

namespace A079524.P16960444924111931401
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 3] fun n f1 =>
  f1 (n - 2) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A079524.P16960444924111931401

namespace A079524

/-- `∑[a(n-2)+1]` -/
def P16960444924111931401.Spec : Prop :=
  ∀ n, (P16960444924111931401.a n : ℤ) = A079524 n

end A079524

/-! ## A079524.P7108245648697887020

`n+2+a(n-2)` with `a(0)=0, a(1)=1`
-/

namespace A079524.P7108245648697887020
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n a =>
  n + 2 + a (n - 2)

end

end A079524.P7108245648697887020

namespace A079524

/-- `n+2+a(n-2)` -/
def P7108245648697887020.Spec : Prop :=
  ∀ n, (P7108245648697887020.a n : ℤ) = A079524 n

end A079524

/-! ## A079524.P229831834433978936

`ceil(record[((n-3)/2)²-3])`
-/

namespace A079524.P229831834433978936
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((n : ℤ) - 3 : ℚ) / 2) ^ 2 - 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)⌉

end

end A079524.P229831834433978936

namespace A079524

/-- `ceil(record[((n-3)/2)²-3])` -/
def P229831834433978936.Spec : Prop :=
  ∀ n, P229831834433978936.a n = A079524 n

end A079524

/-! ## A079524.P375308870984969086

`floor(cot((2/(n+1))²)+n)`
-/

namespace A079524.P375308870984969086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.cot ((2 / (n + 1 : ℚ)) ^ 2 : ℝ) + (n : ℝ)⌋

end

end A079524.P375308870984969086

namespace A079524

/-- `floor(cot((2/(n+1))²)+n)` -/
def P375308870984969086.Spec : Prop :=
  ∀ n, P375308870984969086.a n = A079524 n

end A079524

/-! ## A079524.P14430646773280707979

`round(cot(2/(n+1))²+n)`
-/

namespace A079524.P14430646773280707979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.cot (2 / (n + 1 : ℚ) : ℝ) ^ 2 + (n : ℝ))

end

end A079524.P14430646773280707979

namespace A079524

/-- `round(cot(2/(n+1))²+n)` -/
def P14430646773280707979.Spec : Prop :=
  ∀ n, P14430646773280707979.a n = A079524 n

end A079524

/-! ## A079524.P11620597675687132524

`∑[∑[1-a(n-1)]]` with `a(0)=0, a(1)=1, a(2)=2`
-/

namespace A079524.P11620597675687132524
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 2] fun n f2 =>
  1 - f2 (n - 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A079524.P11620597675687132524

namespace A079524

/-- `∑[∑[1-a(n-1)]]` -/
def P11620597675687132524.Spec : Prop :=
  ∀ n, P11620597675687132524.a n = A079524 n

end A079524

/-! ## A079524.P1227588977290979296

`ogf((x+2x^2-2x^3)/(1-2x+2x^3-x^4))`
-/

namespace A079524.P1227588977290979296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1, 2, -2] [1, -2, 0, 2, -1] n

end

end A079524.P1227588977290979296

namespace A079524

/-- `ogf((x+2x^2-2x^3)/(1-2x+2x^3-x^4))` -/
def P1227588977290979296.Spec : Prop :=
  ∀ n, P1227588977290979296.a n = A079524 n

end A079524

/-! ## A079524.P3550520427078543764

`∪[(n+2)²-3, n*(n+3)]`
-/

namespace A079524.P3550520427078543764
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 2) ^ 2 : ℤ) - 3

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (n + 3)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = x) n

end

end A079524.P3550520427078543764

namespace A079524

/-- `∪[(n+2)²-3, n*(n+3)]` -/
def P3550520427078543764.Spec : Prop :=
  ∀ n, (P3550520427078543764.a n : ℤ) = A079524 n

end A079524

/-! ## A079524.P8324198416637246540

`3-floor(1-a(n-2)-n)` with `a(0)=0, a(1)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A079524.P8324198416637246540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  3 - (1 - a (n - 2) - (n : ℤ))

end

end A079524.P8324198416637246540

namespace A079524

/-- `3-floor(1-a(n-2)-n)` -/
def P8324198416637246540.Spec : Prop :=
  ∀ n, P8324198416637246540.a n = A079524 n

end A079524

/-! ## A079524.P15017770715533824600

`floor(((2-C(n+3, 2))/(n+2))²)`
-/

namespace A079524.P15017770715533824600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((2 - (Nat.choose (n + 3) 2 : ℤ) : ℚ) / (n + 2 : ℚ)) ^ 2⌋

end

end A079524.P15017770715533824600

namespace A079524

/-- `floor(((2-C(n+3, 2))/(n+2))²)` -/
def P15017770715533824600.Spec : Prop :=
  ∀ n, P15017770715533824600.a n = A079524 n

end A079524

/-! ## A079524.P3480429818872882905

`floor(((C(n+2, 2)+n)/(n+2))²)`
-/

namespace A079524.P3480429818872882905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((Nat.choose (n + 2) 2 + n : ℚ) / (n + 2 : ℚ)) ^ 2⌋

end

end A079524.P3480429818872882905

namespace A079524

/-- `floor(((C(n+2, 2)+n)/(n+2))²)` -/
def P3480429818872882905.Spec : Prop :=
  ∀ n, P3480429818872882905.a n = A079524 n

end A079524

/-! ## A079524.P14578683939858951216

`4-(4/2-a(n-2)-n)` with `a(0)=0, a(1)=1`
-/

namespace A079524.P14578683939858951216
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [0, 1] fun n a =>
  4 - ((4 : ℚ) / 2 - a (n - 2) - (n : ℚ))

end

end A079524.P14578683939858951216

namespace A079524

/-- `4-(4/2-a(n-2)-n)` -/
def P14578683939858951216.Spec : Prop :=
  ∀ n, P14578683939858951216.a n = (A079524 n : ℚ)

end A079524

/-! ## A079524.P14901855830627545156

`2-(n-2*n-a(n-2))` with `a(0)=0, a(1)=1`
-/

namespace A079524.P14901855830627545156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  2 - ((n : ℤ) - (2 * n : ℤ) - a (n - 2))

end

end A079524.P14901855830627545156

namespace A079524

/-- `2-(n-2*n-a(n-2))` -/
def P14901855830627545156.Spec : Prop :=
  ∀ n, P14901855830627545156.a n = A079524 n

end A079524

/-! ## A079524.P15197724756261105840

`Δ[A361272(n)]+n`
-/

namespace A079524.P15197724756261105840
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361272 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + (n : ℤ)

end

end A079524.P15197724756261105840

namespace A079524

/-- `Δ[A361272(n)]+n` -/
def P15197724756261105840.Spec : Prop :=
  ∀ n, P15197724756261105840.a n = A079524 n

end A079524

/-! ## A079524.P10043270747015419472

`A184676(n+1)-1`
-/

namespace A079524.P10043270747015419472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184676 (n + 1) - 1

end

end A079524.P10043270747015419472

namespace A079524

/-- `A184676(n+1)-1` -/
def P10043270747015419472.Spec : Prop :=
  ∀ n, P10043270747015419472.a n = A079524 n

end A079524

/-! ## A079524.P5356941848282772791

`A198442(n+1)+n`
-/

namespace A079524.P5356941848282772791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198442 (n + 1) + (n : ℤ)

end

end A079524.P5356941848282772791

namespace A079524

/-- `A198442(n+1)+n` -/
def P5356941848282772791.Spec : Prop :=
  ∀ n, P5356941848282772791.a n = A079524 n

end A079524

/-!
# A079526: a(n) = floor( exp(H_n)*log(H_n) ) - sigma(n).

The programs for A079526, there is no canonical definition to state claims against.
-/

/-! ## A079526.P6580745208994667520

`A079527(n+1)-Δ[A160664(n)]`
-/

namespace A079526.P6580745208994667520
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160664 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079527 (n + 1) - (f1 (n + 1) - f1 n)

end

end A079526.P6580745208994667520

/-! ## A079526.P16062874900852347370

`A079527(n+1)-A000203(n+1)`
-/

namespace A079526.P16062874900852347370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079527 (n + 1) - A000203 (n + 1)

end

end A079526.P16062874900852347370

/-! ## A079526.P12067457026852144395

`A079527(n+1)-abs(A143348(n+1))`
-/

namespace A079526.P12067457026852144395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079527 (n + 1) - |A143348 (n + 1)|

end

end A079526.P12067457026852144395

/-! ## A079526.P12331838353728859768

`A079527(n+1)-sqrt(A072861(n+1))`
-/

namespace A079526.P12331838353728859768
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A079527 (n + 1) : ℝ) - Real.sqrt (A072861 (n + 1) : ℝ)

end

end A079526.P12331838353728859768

/-! ## A079526.P6976912758604340748

`A079527(n+1)-A245092(2*n+1)`
-/

namespace A079526.P6976912758604340748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079527 (n + 1) - A245092 (2 * n + 1)

end

end A079526.P6976912758604340748

/-! ## A079526.P1755843829391039066

`A079527(n+1)-A074400(n+1)/2`
-/

namespace A079526.P1755843829391039066
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A079527 (n + 1) : ℚ) - (A074400 (n + 1) : ℚ) / 2

end

end A079526.P1755843829391039066

/-! ## A079526.P8554333317564713781

`A079527(n+1)-A272027(n+1)/3`
-/

namespace A079526.P8554333317564713781
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A079527 (n + 1) : ℚ) - (A272027 (n + 1) : ℚ) / 3

end

end A079526.P8554333317564713781

/-! ## A079526.P9333116898367724727

`A079527(n+1)-floor(sqrt(A258974(n+1)))`
-/

namespace A079526.P9333116898367724727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079527 (n + 1) - Int.sqrt (A258974 (n + 1))

end

end A079526.P9333116898367724727

/-! ## A079526.P11062462319056026058

`A057641(n+1)+A079527(n+1)-A057640(n+1)`
-/

namespace A079526.P11062462319056026058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057641 (n + 1) + (A079527 (n + 1) - A057640 (n + 1))

end

end A079526.P11062462319056026058

/-! ## A079526.P2912308010131489715

`A074400(n+1)+A079527(n+1)-A272027(n+1)`
-/

namespace A079526.P2912308010131489715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074400 (n + 1) + (A079527 (n + 1) - A272027 (n + 1))

end

end A079526.P2912308010131489715

/-! ## A079526.P11165632918482774281

`A079527(n+1)-A127057(A000124(n))`
-/

namespace A079526.P11165632918482774281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079527 (n + 1) - A127057 (A000124 n).toNat

end

end A079526.P11165632918482774281

/-!
# A079527: a(n) = floor( exp(H_n)*log(H_n) ).

The programs for A079527, there is no canonical definition to state claims against.
-/

/-! ## A079527.P15494195842834532122

`A079526(n+1)+Δ[A160664(n)]`
-/

namespace A079527.P15494195842834532122
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160664 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079526 (n + 1) + (f1 (n + 1) - f1 n)

end

end A079527.P15494195842834532122

/-! ## A079527.P3506050020755604295

`A079526(n+1)+A000203(n+1)`
-/

namespace A079527.P3506050020755604295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079526 (n + 1) + A000203 (n + 1)

end

end A079527.P3506050020755604295

/-! ## A079527.P11667999914505827102

`A079526(n+1)+A074400(n+1)/2`
-/

namespace A079527.P11667999914505827102
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A079526 (n + 1) : ℚ) + (A074400 (n + 1) : ℚ) / 2

end

end A079527.P11667999914505827102

/-! ## A079527.P11867627896124263819

`A057640(n+1)+A079526(n+1)-A057641(n+1)`
-/

namespace A079527.P11867627896124263819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057640 (n + 1) + (A079526 (n + 1) - A057641 (n + 1))

end

end A079527.P11867627896124263819

/-! ## A079527.P15824119351406641030

`A079526(n+1)+A026741(A074400(n+1))`
-/

namespace A079527.P15824119351406641030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079526 (n + 1) + A026741 (A074400 (n + 1)).toNat

end

end A079527.P15824119351406641030

/-!
# A079528: a(n) = sigma(n) - ceiling(n + sqrt n).

The programs for A079528, the canonical program `A079528.P452950104392790503` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A079528 has offset 1).

The definition of A079528 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A079528.P7474582652182292366

`∑{d}[n+1, #]-(comp[n²+n]+1)`
-/

namespace A079528.P7474582652182292366
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2 + n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ d ∈ Nat.divisors (f1 n), d : ℕ) : ℤ) - (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n + 1 : ℤ)

end

end A079528.P7474582652182292366

namespace A079528

/-- `∑{d}[n+1, #]-(comp[n²+n]+1)` -/
def P7474582652182292366.Spec : Prop :=
  ∀ n, P7474582652182292366.a n = A079528 (n + 1)

end A079528

/-! ## A079528.P2543716841202502242

`∑{d}[n+1, #]-(n+1)-∑[char[n²]]`
-/

namespace A079528.P2543716841202502242
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ d ∈ Nat.divisors (f1 n), d : ℕ) : ℤ) - (n + 1 : ℤ) - ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)

end

end A079528.P2543716841202502242

namespace A079528

/-- `∑{d}[n+1, #]-(n+1)-∑[char[n²]]` -/
def P2543716841202502242.Spec : Prop :=
  ∀ n, P2543716841202502242.a n = A079528 (n + 1)

end A079528

/-! ## A079528.P14724452766295337877

`-(comp[n*(n+1)]-∑{d}[n+1, #]+1)`
-/

namespace A079528.P14724452766295337877
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - ((∑ d ∈ Nat.divisors (f2 n), d : ℕ) : ℤ) + 1)

end

end A079528.P14724452766295337877

namespace A079528

/-- `-(comp[n*(n+1)]-∑{d}[n+1, #]+1)` -/
def P14724452766295337877.Spec : Prop :=
  ∀ n, P14724452766295337877.a n = A079528 (n + 1)

end A079528

/-! ## A079528.P8184142745862674181

`A001065(n+1)-∑[char[n²]]`
-/

namespace A079528.P8184142745862674181
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001065 (n + 1) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A079528.P8184142745862674181

namespace A079528

/-- `A001065(n+1)-∑[char[n²]]` -/
def P8184142745862674181.Spec : Prop :=
  ∀ n, P8184142745862674181.a n = A079528 (n + 1)

end A079528

/-! ## A079528.P4184210908332644922

`n-floor(sqrt(n))-A033879(n+1)`
-/

namespace A079528.P4184210908332644922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (Nat.sqrt n : ℤ) - A033879 (n + 1)

end

end A079528.P4184210908332644922

namespace A079528

/-- `n-floor(sqrt(n))-A033879(n+1)` -/
def P4184210908332644922.Spec : Prop :=
  ∀ n, P4184210908332644922.a n = A079528 (n + 1)

end A079528

/-! ## A079528.P6533741689270065322

`A000203(n+1)-∑[char[n²]+1]`
-/

namespace A079528.P6533741689270065322
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f2 j = n then 1 else 0) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A079528.P6533741689270065322

namespace A079528

/-- `A000203(n+1)-∑[char[n²]+1]` -/
def P6533741689270065322.Spec : Prop :=
  ∀ n, P6533741689270065322.a n = A079528 (n + 1)

end A079528

/-! ## A079528.P452950104392790503

`A033880(n+1)+A028391(n)`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A079528

/-- `A033880(n+1)+A028391(n)` -/
def P452950104392790503.Spec : Prop :=
  ∀ n, P452950104392790503.a n = A079528 (n + 1)

theorem P452950104392790503.correct : P452950104392790503.Spec := by
  intro n
  simp only [A079528, Nat.add_sub_cancel]

end A079528

/-! ## A079528.P15564681687828666324

`A079532(n+1)+A051709(n+1)`
-/

namespace A079528.P15564681687828666324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079532 (n + 1) + A051709 (n + 1)

end

end A079528.P15564681687828666324

namespace A079528

/-- `A079532(n+1)+A051709(n+1)` -/
def P15564681687828666324.Spec : Prop :=
  ∀ n, P15564681687828666324.a n = A079528 (n + 1)

end A079528

/-! ## A079528.P3267704035219313347

`A228947(n+1)+A079530(n+1)`
-/

namespace A079528.P3267704035219313347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228947 (n + 1) + A079530 (n + 1)

end

end A079528.P3267704035219313347

namespace A079528

/-- `A228947(n+1)+A079530(n+1)` -/
def P3267704035219313347.Spec : Prop :=
  ∀ n, P3267704035219313347.a n = A079528 (n + 1)

end A079528

/-! ## A079528.P17461259578323955948

`A033880(n+1)+n-A000196(n)`
-/

namespace A079528.P17461259578323955948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033880 (n + 1) + ((n : ℤ) - A000196 n)

end

end A079528.P17461259578323955948

namespace A079528

/-- `A033880(n+1)+n-A000196(n)` -/
def P17461259578323955948.Spec : Prop :=
  ∀ n, P17461259578323955948.a n = A079528 (n + 1)

end A079528

/-! ## A079528.P723450136533004819

`n-(A033879(n+1)+A000196(n))`
-/

namespace A079528.P723450136533004819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (A033879 (n + 1) + A000196 n)

end

end A079528.P723450136533004819

namespace A079528

/-- `n-(A033879(n+1)+A000196(n))` -/
def P723450136533004819.Spec : Prop :=
  ∀ n, P723450136533004819.a n = A079528 (n + 1)

end A079528

/-!
# A079529: a(n) = sigma(n) - ceiling(n + sqrt n) as n runs through the composite numbers A002808.

The programs for A079529, the canonical program `A079529.P10814540628979390956` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A079529 has offset 1).

The definition of A079529 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8770 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A079529.P10814540628979390956

`A079528(Δ[A053767(n)])`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A079529

/-- `A079528(Δ[A053767(n)])` -/
def P10814540628979390956.Spec : Prop :=
  ∀ n, P10814540628979390956.a n = A079529 (n + 1)

theorem P10814540628979390956.correct : P10814540628979390956.Spec := by
  intro n
  simp only [A079529, Nat.add_sub_cancel]

end A079529

/-! ## A079529.P13904069491513040585

`A079528(A002808(n+1))`
-/

namespace A079529.P13904069491513040585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079528 (A002808 (n + 1)).toNat

end

end A079529.P13904069491513040585

namespace A079529

/-- `A079528(A002808(n+1))` -/
def P13904069491513040585.Spec : Prop :=
  ∀ n, P13904069491513040585.a n = A079529 (n + 1)

end A079529

/-! ## A079529.P8680433123745851179

`A079528(A018252(n+2))`
-/

namespace A079529.P8680433123745851179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079528 (A018252 (n + 2)).toNat

end

end A079529.P8680433123745851179

namespace A079529

/-- `A079528(A018252(n+2))` -/
def P8680433123745851179.Spec : Prop :=
  ∀ n, P8680433123745851179.a n = A079529 (n + 1)

end A079529

/-! ## A079529.P1320266362358945557

`A079528(lt[1, A003415(n)])`
-/

namespace A079529.P1320266362358945557
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079528 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A079529.P1320266362358945557

namespace A079529

/-- `A079528(lt[1, A003415(n)])` -/
def P1320266362358945557.Spec : Prop :=
  ∀ n, P1320266362358945557.a n = A079529 (n + 1)

end A079529

/-! ## A079529.P9535746815986761392

`A079528(comp[C(A006530(n+1), n)])`
-/

namespace A079529.P9535746815986761392
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A006530 (n + 1)).toNat n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079528 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A079529.P9535746815986761392

namespace A079529

/-- `A079528(comp[C(A006530(n+1), n)])` -/
def P9535746815986761392.Spec : Prop :=
  ∀ n, P9535746815986761392.a n = A079529 (n + 1)

end A079529

/-! ## A079529.P14076800632899593809

`A079528(comp[C(A020639(n+1), n)])`
-/

namespace A079529.P14076800632899593809
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A020639 (n + 1)).toNat n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079528 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A079529.P14076800632899593809

namespace A079529

/-- `A079528(comp[C(A020639(n+1), n)])` -/
def P14076800632899593809.Spec : Prop :=
  ∀ n, P14076800632899593809.a n = A079529 (n + 1)

end A079529

/-! ## A079529.P13548596783406564247

`A079528(lt[1, A001222(n+1)]+1)`
-/

namespace A079529.P13548596783406564247
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079528 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1)

end

end A079529.P13548596783406564247

namespace A079529

/-- `A079528(lt[1, A001222(n+1)]+1)` -/
def P13548596783406564247.Spec : Prop :=
  ∀ n, P13548596783406564247.a n = A079529 (n + 1)

end A079529

/-! ## A079529.P14536682870747324355

`A079528(lt[2, A000005(n+1)]+1)`
-/

namespace A079529.P14536682870747324355
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079528 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1)

end

end A079529.P14536682870747324355

namespace A079529

/-- `A079528(lt[2, A000005(n+1)]+1)` -/
def P14536682870747324355.Spec : Prop :=
  ∀ n, P14536682870747324355.a n = A079529 (n + 1)

end A079529

/-! ## A079529.P6358710317442632777

`A079528(lt[A000010(n+1), n]+1)`
-/

namespace A079529.P6358710317442632777
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079528 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1)

end

end A079529.P6358710317442632777

namespace A079529

/-- `A079528(lt[A000010(n+1), n]+1)` -/
def P6358710317442632777.Spec : Prop :=
  ∀ n, P6358710317442632777.a n = A079529 (n + 1)

end A079529

/-! ## A079529.P2562809729172613572

`A079528(lt[1, A325830(n)])`
-/

namespace A079529.P2562809729172613572
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325830 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079528 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A079529.P2562809729172613572

namespace A079529

/-- `A079528(lt[1, A325830(n)])` -/
def P2562809729172613572.Spec : Prop :=
  ∀ n, P2562809729172613572.a n = A079529 (n + 1)

end A079529

/-!
# A079530: a(n) = phi(n) - ceiling(sqrt(n)).

The programs for A079530, the canonical program `A079530.P12744078454568212387` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A079530 has offset 1).

The definition of A079530 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A079530.P11260840273348532219

`(n+1)/∏{p}[n+1, #]*∏{p}[n+1, #-1]-∑[char[n²]]`
-/

namespace A079530.P11260840273348532219
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f4 j = n then 1 else 0

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ) * ((∏ p ∈ Nat.primeFactors (f2 n), ((p : ℤ) - 1) : ℤ) : ℚ) - ((∑ j ∈ Finset.range (n + 1), f3 j : ℕ) : ℚ)

end

end A079530.P11260840273348532219

namespace A079530

/-- `(n+1)/∏{p}[n+1, #]*∏{p}[n+1, #-1]-∑[char[n²]]` -/
def P11260840273348532219.Spec : Prop :=
  ∀ n, P11260840273348532219.a n = (A079530 (n + 1) : ℚ)

end A079530

/-! ## A079530.P9913226401757003805

`(n+1)/∏{p}[n+1, #]*∏{p}[n+1, #-1]-1-floor(sqrt(n))`
-/

namespace A079530.P9913226401757003805
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ) * ((∏ p ∈ Nat.primeFactors (f2 n), ((p : ℤ) - 1) : ℤ) : ℚ) - 1 - (Nat.sqrt n : ℚ)

end

end A079530.P9913226401757003805

namespace A079530

/-- `(n+1)/∏{p}[n+1, #]*∏{p}[n+1, #-1]-1-floor(sqrt(n))` -/
def P9913226401757003805.Spec : Prop :=
  ∀ n, P9913226401757003805.a n = (A079530 (n + 1) : ℚ)

end A079530

/-! ## A079530.P9591772507796601734

`A109606(n+1)-floor(sqrt(n))`
-/

namespace A079530.P9591772507796601734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109606 (n + 1) - (Nat.sqrt n : ℤ)

end

end A079530.P9591772507796601734

namespace A079530

/-- `A109606(n+1)-floor(sqrt(n))` -/
def P9591772507796601734.Spec : Prop :=
  ∀ n, P9591772507796601734.a n = A079530 (n + 1)

end A079530

/-! ## A079530.P6182953616697221763

`Δ[A002088(n)]-(floor(sqrt(n))+1)`
-/

namespace A079530.P6182953616697221763
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002088 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - (Nat.sqrt n + 1 : ℤ)

end

end A079530.P6182953616697221763

namespace A079530

/-- `Δ[A002088(n)]-(floor(sqrt(n))+1)` -/
def P6182953616697221763.Spec : Prop :=
  ∀ n, P6182953616697221763.a n = A079530 (n + 1)

end A079530

/-! ## A079530.P17217608374242159184

`Δ[A005728(n)]-ceil(sqrt(n+1))`
-/

namespace A079530.P17217608374242159184
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005728 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - ⌈Real.sqrt (n + 1 : ℝ)⌉

end

end A079530.P17217608374242159184

namespace A079530

/-- `Δ[A005728(n)]-ceil(sqrt(n+1))` -/
def P17217608374242159184.Spec : Prop :=
  ∀ n, P17217608374242159184.a n = A079530 (n + 1)

end A079530

/-! ## A079530.P8248742400515776396

`A000010(n+1)-∑[char[n²]]`
-/

namespace A079530.P8248742400515776396
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A079530.P8248742400515776396

namespace A079530

/-- `A000010(n+1)-∑[char[n²]]` -/
def P8248742400515776396.Spec : Prop :=
  ∀ n, P8248742400515776396.a n = A079530 (n + 1)

end A079530

/-! ## A079530.P7989618290069971085

`A039649(n+1)-2-floor(sqrt(n))`
-/

namespace A079530.P7989618290069971085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039649 (n + 1) - 2 - (Nat.sqrt n : ℤ)

end

end A079530.P7989618290069971085

namespace A079530

/-- `A039649(n+1)-2-floor(sqrt(n))` -/
def P7989618290069971085.Spec : Prop :=
  ∀ n, P7989618290069971085.a n = A079530 (n + 1)

end A079530

/-! ## A079530.P13271102659112280989

`floor((n+1)/∏{p}[n+1, #]*∏{p}[n+1, #-1]-A003059(n+1))`
-/

namespace A079530.P13271102659112280989
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ) * ((∏ p ∈ Nat.primeFactors (f2 n), ((p : ℤ) - 1) : ℤ) : ℚ) - (A003059 (n + 1) : ℚ)⌋

end

end A079530.P13271102659112280989

namespace A079530

/-- `floor((n+1)/∏{p}[n+1, #]*∏{p}[n+1, #-1]-A003059(n+1))` -/
def P13271102659112280989.Spec : Prop :=
  ∀ n, P13271102659112280989.a n = A079530 (n + 1)

end A079530

/-! ## A079530.P15680791680220526685

`A028391(n)-A051953(n+1)`
-/

namespace A079530.P15680791680220526685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028391 n - A051953 (n + 1)

end

end A079530.P15680791680220526685

namespace A079530

/-- `A028391(n)-A051953(n+1)` -/
def P15680791680220526685.Spec : Prop :=
  ∀ n, P15680791680220526685.a n = A079530 (n + 1)

end A079530

/-! ## A079530.P15768711044386005272

`A083254(n+1)+A079532(n+1)`
-/

namespace A079530.P15768711044386005272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083254 (n + 1) + A079532 (n + 1)

end

end A079530.P15768711044386005272

namespace A079530

/-- `A083254(n+1)+A079532(n+1)` -/
def P15768711044386005272.Spec : Prop :=
  ∀ n, P15768711044386005272.a n = A079530 (n + 1)

end A079530

/-! ## A079530.P12744078454568212387

`A121048(n+1)-A135668(n+1)`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A079530

/-- `A121048(n+1)-A135668(n+1)` -/
def P12744078454568212387.Spec : Prop :=
  ∀ n, P12744078454568212387.a n = A079530 (n + 1)

theorem P12744078454568212387.correct : P12744078454568212387.Spec := by
  intro n
  simp only [A079530, Nat.add_sub_cancel]

end A079530

/-! ## A079530.P14042685251055756285

`A079528(n+1)-A228947(n+1)`
-/

namespace A079530.P14042685251055756285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079528 (n + 1) - A228947 (n + 1)

end

end A079530.P14042685251055756285

namespace A079530

/-- `A079528(n+1)-A228947(n+1)` -/
def P14042685251055756285.Spec : Prop :=
  ∀ n, P14042685251055756285.a n = A079530 (n + 1)

end A079530

/-! ## A079530.P2549598088201381659

`A039649(n+1)-(A000196(n)+2)`
-/

namespace A079530.P2549598088201381659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039649 (n + 1) - (A000196 n + 2)

end

end A079530.P2549598088201381659

namespace A079530

/-- `A039649(n+1)-(A000196(n)+2)` -/
def P2549598088201381659.Spec : Prop :=
  ∀ n, P2549598088201381659.a n = A079530 (n + 1)

end A079530

/-! ## A079530.P16709863921426734123

`n-(A051953(n+1)+A000196(n))`
-/

namespace A079530.P16709863921426734123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (A051953 (n + 1) + A000196 n)

end

end A079530.P16709863921426734123

namespace A079530

/-- `n-(A051953(n+1)+A000196(n))` -/
def P16709863921426734123.Spec : Prop :=
  ∀ n, P16709863921426734123.a n = A079530 (n + 1)

end A079530

/-! ## A079530.P10234233635206441387

`A000010(n+1)-A078358(n+1)+n`
-/

namespace A079530.P10234233635206441387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1) - A078358 (n + 1) + (n : ℤ)

end

end A079530.P10234233635206441387

namespace A079530

/-- `A000010(n+1)-A078358(n+1)+n` -/
def P10234233635206441387.Spec : Prop :=
  ∀ n, P10234233635206441387.a n = A079530 (n + 1)

end A079530

/-! ## A079530.P1661541505724635494

`A015614(n+1)-(A002088(n)+A000196(n))`
-/

namespace A079530.P1661541505724635494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015614 (n + 1) - (A002088 n + A000196 n)

end

end A079530.P1661541505724635494

namespace A079530

/-- `A015614(n+1)-(A002088(n)+A000196(n))` -/
def P1661541505724635494.Spec : Prop :=
  ∀ n, P1661541505724635494.a n = A079530 (n + 1)

end A079530

/-! ## A079530.P5901231582194649972

`A049633(n)-A049632(n)-ceil(sqrt(n+1))`
-/

namespace A079530.P5901231582194649972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049633 n - A049632 n - ⌈Real.sqrt (n + 1 : ℝ)⌉

end

end A079530.P5901231582194649972

namespace A079530

/-- `A049633(n)-A049632(n)-ceil(sqrt(n+1))` -/
def P5901231582194649972.Spec : Prop :=
  ∀ n, P5901231582194649972.a n = A079530 (n + 1)

end A079530

/-! ## A079530.P5569273937922122567

`A000196(A109606(n+1)²)-A000196(n)`
-/

namespace A079530.P5569273937922122567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A109606 (n + 1) ^ 2).toNat - A000196 n

end

end A079530.P5569273937922122567

namespace A079530

/-- `A000196(A109606(n+1)²)-A000196(n)` -/
def P5569273937922122567.Spec : Prop :=
  ∀ n, P5569273937922122567.a n = A079530 (n + 1)

end A079530

/-!
# A079531: a(n) = phi(n) - ceiling(n^(2/3)).

The programs for A079531, the canonical program `A079531.P14474375639325813386` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A079531 has offset 1).

The definition of A079531 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A079531.P1046643848222271845

`A135672(n+1)-A051953(n+1)`
-/

namespace A079531.P1046643848222271845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135672 (n + 1) - A051953 (n + 1)

end

end A079531.P1046643848222271845

namespace A079531

/-- `A135672(n+1)-A051953(n+1)` -/
def P1046643848222271845.Spec : Prop :=
  ∀ n, P1046643848222271845.a n = A079531 (n + 1)

end A079531

/-! ## A079531.P14474375639325813386

`A121048(n+1)-A135673(n+1)`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A079531

/-- `A121048(n+1)-A135673(n+1)` -/
def P14474375639325813386.Spec : Prop :=
  ∀ n, P14474375639325813386.a n = A079531 (n + 1)

theorem P14474375639325813386.correct : P14474375639325813386.Spec := by
  intro n
  simp only [A079531, Nat.add_sub_cancel]

end A079531

/-! ## A079531.P6755815601306292799

`A000010(n+1)-∑[char[A000093(n)]]`
-/

namespace A079531.P6755815601306292799
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000093 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A079531.P6755815601306292799

namespace A079531

/-- `A000010(n+1)-∑[char[A000093(n)]]` -/
def P6755815601306292799.Spec : Prop :=
  ∀ n, P6755815601306292799.a n = A079531 (n + 1)

end A079531

/-! ## A079531.P18279327850685011181

`A000010(n+1)-A186145(n+1)+n`
-/

namespace A079531.P18279327850685011181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1) - A186145 (n + 1) + (n : ℤ)

end

end A079531.P18279327850685011181

namespace A079531

/-- `A000010(n+1)-A186145(n+1)+n` -/
def P18279327850685011181.Spec : Prop :=
  ∀ n, P18279327850685011181.a n = A079531 (n + 1)

end A079531

/-! ## A079531.P17041243538360276399

`A000010(n+1)+n+1-A135673(n+1)`
-/

namespace A079531.P17041243538360276399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1) + ((n + 1 : ℤ) - A135673 (n + 1))

end

end A079531.P17041243538360276399

namespace A079531

/-- `A000010(n+1)+n+1-A135673(n+1)` -/
def P17041243538360276399.Spec : Prop :=
  ∀ n, P17041243538360276399.a n = A079531 (n + 1)

end A079531

/-! ## A079531.P16990864683619162075

`A000010(n+1)-(n+1-A135672(n+1))`
-/

namespace A079531.P16990864683619162075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1) - ((n + 1 : ℤ) - A135672 (n + 1))

end

end A079531.P16990864683619162075

namespace A079531

/-- `A000010(n+1)-(n+1-A135672(n+1))` -/
def P16990864683619162075.Spec : Prop :=
  ∀ n, P16990864683619162075.a n = A079531 (n + 1)

end A079531

/-! ## A079531.P16852494796532052313

`A000010(n+1)-A134914((n+1)²)`
-/

namespace A079531.P16852494796532052313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1) - A134914 ((n + 1) ^ 2)

end

end A079531.P16852494796532052313

namespace A079531

/-- `A000010(n+1)-A134914((n+1)²)` -/
def P16852494796532052313.Spec : Prop :=
  ∀ n, P16852494796532052313.a n = A079531 (n + 1)

end A079531

/-!
# A079532: a(n) = floor(n - sqrt(n)) - phi(n).

The programs for A079532, the canonical program `A079532.P14893760689655914217` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A079532 has offset 1).

The definition of A079532 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A079532.P9398448229090719629

`n+1-(n+1)/∏{p}[n+1, #]*∏{p}[n+1, #-1]-∑[char[n²]]`
-/

namespace A079532.P9398448229090719629
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f4 j = n then 1 else 0

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) - (n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ) * ((∏ p ∈ Nat.primeFactors (f2 n), ((p : ℤ) - 1) : ℤ) : ℚ) - ((∑ j ∈ Finset.range (n + 1), f3 j : ℕ) : ℚ)

end

end A079532.P9398448229090719629

namespace A079532

/-- `n+1-(n+1)/∏{p}[n+1, #]*∏{p}[n+1, #-1]-∑[char[n²]]` -/
def P9398448229090719629.Spec : Prop :=
  ∀ n, P9398448229090719629.a n = (A079532 (n + 1) : ℚ)

end A079532

/-! ## A079532.P7885321002816399116

`A051953(n+1)-∑[char[n²]]`
-/

namespace A079532.P7885321002816399116
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051953 (n + 1) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A079532.P7885321002816399116

namespace A079532

/-- `A051953(n+1)-∑[char[n²]]` -/
def P7885321002816399116.Spec : Prop :=
  ∀ n, P7885321002816399116.a n = A079532 (n + 1)

end A079532

/-! ## A079532.P1477448668476105532

`n-floor(sqrt(n))-A000010(n+1)`
-/

namespace A079532.P1477448668476105532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (Nat.sqrt n : ℤ) - A000010 (n + 1)

end

end A079532.P1477448668476105532

namespace A079532

/-- `n-floor(sqrt(n))-A000010(n+1)` -/
def P1477448668476105532.Spec : Prop :=
  ∀ n, P1477448668476105532.a n = A079532 (n + 1)

end A079532

/-! ## A079532.P3177215256150912843

`A028391(n)-Δ[A002088(n)]`
-/

namespace A079532.P3177215256150912843
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002088 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028391 n - (f1 (n + 1) - f1 n)

end

end A079532.P3177215256150912843

namespace A079532

/-- `A028391(n)-Δ[A002088(n)]` -/
def P3177215256150912843.Spec : Prop :=
  ∀ n, P3177215256150912843.a n = A079532 (n + 1)

end A079532

/-! ## A079532.P8567093973425301871

`A219428(n+1)-A000196(n)`
-/

namespace A079532.P8567093973425301871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219428 (n + 1) - A000196 n

end

end A079532.P8567093973425301871

namespace A079532

/-- `A219428(n+1)-A000196(n)` -/
def P8567093973425301871.Spec : Prop :=
  ∀ n, P8567093973425301871.a n = A079532 (n + 1)

end A079532

/-! ## A079532.P6535002336807623561

`n-(A000196(n)+Δ[A002088(n)])`
-/

namespace A079532.P6535002336807623561
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002088 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (A000196 n + (f1 (n + 1) - f1 n))

end

end A079532.P6535002336807623561

namespace A079532

/-- `n-(A000196(n)+Δ[A002088(n)])` -/
def P6535002336807623561.Spec : Prop :=
  ∀ n, P6535002336807623561.a n = A079532 (n + 1)

end A079532

/-! ## A079532.P6971125750311970393

`A079528(n+1)-A051709(n+1)`
-/

namespace A079532.P6971125750311970393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079528 (n + 1) - A051709 (n + 1)

end

end A079532.P6971125750311970393

namespace A079532

/-- `A079528(n+1)-A051709(n+1)` -/
def P6971125750311970393.Spec : Prop :=
  ∀ n, P6971125750311970393.a n = A079532 (n + 1)

end A079532

/-! ## A079532.P4319521023580962752

`A079530(n+1)-A083254(n+1)`
-/

namespace A079532.P4319521023580962752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079530 (n + 1) - A083254 (n + 1)

end

end A079532.P4319521023580962752

namespace A079532

/-- `A079530(n+1)-A083254(n+1)` -/
def P4319521023580962752.Spec : Prop :=
  ∀ n, P4319521023580962752.a n = A079532 (n + 1)

end A079532

/-! ## A079532.P14893760689655914217

`A053158(n+1)-A135668(n+1)`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A079532

/-- `A053158(n+1)-A135668(n+1)` -/
def P14893760689655914217.Spec : Prop :=
  ∀ n, P14893760689655914217.a n = A079532 (n + 1)

theorem P14893760689655914217.correct : P14893760689655914217.Spec := by
  intro n
  simp only [A079532, Nat.add_sub_cancel]

end A079532

/-! ## A079532.P1656587168747003963

`n-(A000196(n)+A000010(n+1))`
-/

namespace A079532.P1656587168747003963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (A000196 n + A000010 (n + 1))

end

end A079532.P1656587168747003963

namespace A079532

/-- `n-(A000196(n)+A000010(n+1))` -/
def P1656587168747003963.Spec : Prop :=
  ∀ n, P1656587168747003963.a n = A079532 (n + 1)

end A079532

/-! ## A079532.P2750580975782032953

`∑[A049240(n+1)]-(A049240(n+1)+A000010(n+1))`
-/

namespace A079532.P2750580975782032953
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049240 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (A049240 (n + 1) + A000010 (n + 1))

end

end A079532.P2750580975782032953

namespace A079532

/-- `∑[A049240(n+1)]-(A049240(n+1)+A000010(n+1))` -/
def P2750580975782032953.Spec : Prop :=
  ∀ n, P2750580975782032953.a n = A079532 (n + 1)

end A079532

/-!
# A079533: Floor(k - sqrt(k)) - phi(k) as k runs through the composite numbers (A002808).

The programs for A079533, the canonical program `A079533.P15741439843851512584` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A079533 has offset 1).

The definition of A079533 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8770 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A079533.P15741439843851512584

`A079532(A002808(n+1))`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A079533

/-- `A079532(A002808(n+1))` -/
def P15741439843851512584.Spec : Prop :=
  ∀ n, P15741439843851512584.a n = A079533 (n + 1)

theorem P15741439843851512584.correct : P15741439843851512584.Spec := by
  intro n
  simp only [A079533, Nat.add_sub_cancel]

end A079533

/-! ## A079533.P9045426463070714646

`A079532(A018252(n+2))`
-/

namespace A079533.P9045426463070714646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079532 (A018252 (n + 2)).toNat

end

end A079533.P9045426463070714646

namespace A079533

/-- `A079532(A018252(n+2))` -/
def P9045426463070714646.Spec : Prop :=
  ∀ n, P9045426463070714646.a n = A079533 (n + 1)

end A079533

/-! ## A079533.P16089140349404491189

`A079532(lt[1, A003415(n)])`
-/

namespace A079533.P16089140349404491189
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079532 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A079533.P16089140349404491189

namespace A079533

/-- `A079532(lt[1, A003415(n)])` -/
def P16089140349404491189.Spec : Prop :=
  ∀ n, P16089140349404491189.a n = A079533 (n + 1)

end A079533

/-! ## A079533.P16953281623678983749

`A079532(lt[1, A018783(n)])`
-/

namespace A079533.P16953281623678983749
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018783 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079532 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A079533.P16953281623678983749

namespace A079533

/-- `A079532(lt[1, A018783(n)])` -/
def P16953281623678983749.Spec : Prop :=
  ∀ n, P16953281623678983749.a n = A079533 (n + 1)

end A079533

/-! ## A079533.P17003766098952942169

`A079532(lt[1, A032741(n)])`
-/

namespace A079533.P17003766098952942169
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079532 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A079533.P17003766098952942169

namespace A079533

/-- `A079532(lt[1, A032741(n)])` -/
def P17003766098952942169.Spec : Prop :=
  ∀ n, P17003766098952942169.a n = A079533 (n + 1)

end A079533

/-! ## A079533.P18190125371175191360

`A079532(lt[n, A039653(n)])`
-/

namespace A079533.P18190125371175191360
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039653 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079532 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A079533.P18190125371175191360

namespace A079533

/-- `A079532(lt[n, A039653(n)])` -/
def P18190125371175191360.Spec : Prop :=
  ∀ n, P18190125371175191360.a n = A079533 (n + 1)

end A079533

/-! ## A079533.P15883420257758260786

`A079532(A079696(n+1)-1)`
-/

namespace A079533.P15883420257758260786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079532 (A079696 (n + 1) - 1).toNat

end

end A079533.P15883420257758260786

namespace A079533

/-- `A079532(A079696(n+1)-1)` -/
def P15883420257758260786.Spec : Prop :=
  ∀ n, P15883420257758260786.a n = A079533 (n + 1)

end A079533

/-! ## A079533.P2426290270487147689

`A079532(comp[C(A006530(n+1), n)])`
-/

namespace A079533.P2426290270487147689
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A006530 (n + 1)).toNat n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079532 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A079533.P2426290270487147689

namespace A079533

/-- `A079532(comp[C(A006530(n+1), n)])` -/
def P2426290270487147689.Spec : Prop :=
  ∀ n, P2426290270487147689.a n = A079533 (n + 1)

end A079533

/-! ## A079533.P4534869013641747970

`A079532(comp[C(A020639(n+1), n)])`
-/

namespace A079533.P4534869013641747970
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A020639 (n + 1)).toNat n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079532 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A079533.P4534869013641747970

namespace A079533

/-- `A079532(comp[C(A020639(n+1), n)])` -/
def P4534869013641747970.Spec : Prop :=
  ∀ n, P4534869013641747970.a n = A079533 (n + 1)

end A079533

/-! ## A079533.P9617717237034159316

`A079532(lt[1, A325830(n)])`
-/

namespace A079533.P9617717237034159316
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325830 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079532 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A079533.P9617717237034159316

namespace A079533

/-- `A079532(lt[1, A325830(n)])` -/
def P9617717237034159316.Spec : Prop :=
  ∀ n, P9617717237034159316.a n = A079533 (n + 1)

end A079533

/-!
# A079534: a(n) = phi(n) - ceiling( (log 2 / 2) * (n / log n) ).

The programs for A079534, there is no canonical definition to state claims against.
-/

/-! ## A079534.P15014544184069924306

`A000010(n+2)-A055642(A191919(3*n+1))`
-/

namespace A079534.P15014544184069924306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 2) - A055642 (A191919 (3 * n + 1)).toNat

end

end A079534.P15014544184069924306

/-! ## A079534.P2818237395949395802

`A000010(n+2)-A055642(A331912(3*n+2))`
-/

namespace A079534.P2818237395949395802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 2) - A055642 (A331912 (3 * n + 2)).toNat

end

end A079534.P2818237395949395802

/-! ## A079534.P6316031403343257286

`A000010(n+2)-A110591(A204315(n+1)^A278657(n))`
-/

namespace A079534.P6316031403343257286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 2) - A110591 (SequenceMachineLib.roundAway ((A204315 (n + 1) : ℚ) ^ (A278657 n : ℤ))).toNat

end

end A079534.P6316031403343257286

/-! ## A079534.P16245958628356995235

`A000010(n+2)-A055642(A141109(n+1))`
-/

namespace A079534.P16245958628356995235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 2) - A055642 (A141109 (n + 1)).toNat

end

end A079534.P16245958628356995235

/-! ## A079534.P2197817000241162105

`A225530(n+2)-A055642(A141109(n+1))`
-/

namespace A079534.P2197817000241162105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225530 (n + 2) - A055642 (A141109 (n + 1)).toNat

end

end A079534.P2197817000241162105

/-!
# A079535: a(n) = phi(n)*d(n) - n.

The programs for A079535, the canonical program `A079535.P10555966214279870086` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A079535 has offset 1).

The definition of A079535 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A079535.P10555966214279870086

`(n+1)/∏{p}[n+1, #]*∏{p}[n+1, #-1]*∏{e}[n+1, #+1]-(n+1)`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A079535

/-- `(n+1)/∏{p}[n+1, #]*∏{p}[n+1, #-1]*∏{e}[n+1, #+1]-(n+1)` -/
def P10555966214279870086.Spec : Prop :=
  ∀ n, P10555966214279870086.a n = (A079535 (n + 1) : ℚ)

end A079535

/-! ## A079535.P17956661237624609147

`A062816(n+1)+1+n`
-/

namespace A079535.P17956661237624609147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062816 (n + 1) + 1 + (n : ℤ)

end

end A079535.P17956661237624609147

namespace A079535

/-- `A062816(n+1)+1+n` -/
def P17956661237624609147.Spec : Prop :=
  ∀ n, P17956661237624609147.a n = A079535 (n + 1)

end A079535

/-! ## A079535.P6014984578900048931

`A062355(n+1)-(n+1)`
-/

namespace A079535.P6014984578900048931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062355 (n + 1) - (n + 1 : ℤ)

end

end A079535.P6014984578900048931

namespace A079535

/-- `A062355(n+1)-(n+1)` -/
def P6014984578900048931.Spec : Prop :=
  ∀ n, P6014984578900048931.a n = A079535 (n + 1)

end A079535

/-! ## A079535.P6472440401767536632

`A079536(n+1)+A001065(n+1)`
-/

namespace A079535.P6472440401767536632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079536 (n + 1) + A001065 (n + 1)

end

end A079535.P6472440401767536632

namespace A079535

/-- `A079536(n+1)+A001065(n+1)` -/
def P6472440401767536632.Spec : Prop :=
  ∀ n, P6472440401767536632.a n = A079535 (n + 1)

end A079535

/-! ## A079535.P5239092113343668348

`∑{d}[n+1, A000010(n+1)-A000010(#)]`
-/

namespace A079535.P5239092113343668348
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (A000010 (n + 1) - A000010 d)

end

end A079535.P5239092113343668348

namespace A079535

/-- `∑{d}[n+1, A000010(n+1)-A000010(#)]` -/
def P5239092113343668348.Spec : Prop :=
  ∀ n, P5239092113343668348.a n = A079535 (n + 1)

end A079535

/-! ## A079535.P17864417951289894190

`A079536(n+1)+∑[A340793(n+1)-1]`
-/

namespace A079535.P17864417951289894190
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340793 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079536 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A079535.P17864417951289894190

namespace A079535

/-- `A079536(n+1)+∑[A340793(n+1)-1]` -/
def P17864417951289894190.Spec : Prop :=
  ∀ n, P17864417951289894190.a n = A079535 (n + 1)

end A079535

/-! ## A079535.P9010884530800651922

`A079536(n+1)+A000203(n+1)-(n+1)`
-/

namespace A079535.P9010884530800651922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079536 (n + 1) + (A000203 (n + 1) - (n + 1 : ℤ))

end

end A079535.P9010884530800651922

namespace A079535

/-- `A079536(n+1)+A000203(n+1)-(n+1)` -/
def P9010884530800651922.Spec : Prop :=
  ∀ n, P9010884530800651922.a n = A079535 (n + 1)

end A079535

/-! ## A079535.P2140240641481402591

`A079536(n+1)+n+1-A033879(n+1)`
-/

namespace A079535.P2140240641481402591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079536 (n + 1) + ((n + 1 : ℤ) - A033879 (n + 1))

end

end A079535.P2140240641481402591

namespace A079535

/-- `A079536(n+1)+n+1-A033879(n+1)` -/
def P2140240641481402591.Spec : Prop :=
  ∀ n, P2140240641481402591.a n = A079535 (n + 1)

end A079535

/-! ## A079535.P11649020824413305920

`A000005(n+1)*A000010(n+1)-(n+1)`
-/

namespace A079535.P11649020824413305920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) * A000010 (n + 1) - (n + 1 : ℤ)

end

end A079535.P11649020824413305920

namespace A079535

/-- `A000005(n+1)*A000010(n+1)-(n+1)` -/
def P11649020824413305920.Spec : Prop :=
  ∀ n, P11649020824413305920.a n = A079535 (n + 1)

end A079535

/-! ## A079535.P9858597008962477344

`(A039649(n+1)-1)*A000005(n+1)-(n+1)`
-/

namespace A079535.P9858597008962477344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A039649 (n + 1) - 1) * A000005 (n + 1) - (n + 1 : ℤ)

end

end A079535.P9858597008962477344

namespace A079535

/-- `(A039649(n+1)-1)*A000005(n+1)-(n+1)` -/
def P9858597008962477344.Spec : Prop :=
  ∀ n, P9858597008962477344.a n = A079535 (n + 1)

end A079535

/-! ## A079535.P14065829341244377589

`A007503(n+1)+A079536(n+1)-A062249(n+1)`
-/

namespace A079535.P14065829341244377589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007503 (n + 1) + (A079536 (n + 1) - A062249 (n + 1))

end

end A079535.P14065829341244377589

namespace A079535

/-- `A007503(n+1)+A079536(n+1)-A062249(n+1)` -/
def P14065829341244377589.Spec : Prop :=
  ∀ n, P14065829341244377589.a n = A079535 (n + 1)

end A079535

/-! ## A079535.P6662055034676819329

`A079536(n+1)+A326126(n+1)-A326128(n+1)`
-/

namespace A079535.P6662055034676819329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079536 (n + 1) + (A326126 (n + 1) - A326128 (n + 1))

end

end A079535.P6662055034676819329

namespace A079535

/-- `A079536(n+1)+A326126(n+1)-A326128(n+1)` -/
def P6662055034676819329.Spec : Prop :=
  ∀ n, P6662055034676819329.a n = A079535 (n + 1)

end A079535

/-! ## A079535.P3117341517675454978

`A000010(n+1)*A032741(n+1)-A051953(n+1)`
-/

namespace A079535.P3117341517675454978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1) * A032741 (n + 1) - A051953 (n + 1)

end

end A079535.P3117341517675454978

namespace A079535

/-- `A000010(n+1)*A032741(n+1)-A051953(n+1)` -/
def P3117341517675454978.Spec : Prop :=
  ∀ n, P3117341517675454978.a n = A079535 (n + 1)

end A079535

/-! ## A079535.P11246624699942881508

`A023443(A062355(n+1)-n)`
-/

namespace A079535.P11246624699942881508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A062355 (n + 1) - (n : ℤ)).toNat

end

end A079535.P11246624699942881508

namespace A079535

/-- `A023443(A062355(n+1)-n)` -/
def P11246624699942881508.Spec : Prop :=
  ∀ n, P11246624699942881508.a n = A079535 (n + 1)

end A079535

/-!
# A079536: a(n) = phi(n)*d(n) - sigma(n).

The programs for A079536, the canonical program `A079536.P18436205178809017812` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A079536 has offset 1).

The definition of A079536 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A079536.P17837986387445801346

`∑{d}[n+1, A000010(n+1)-#]`
-/

namespace A079536.P17837986387445801346
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (A000010 (n + 1) - (d : ℤ))

end

end A079536.P17837986387445801346

namespace A079536

/-- `∑{d}[n+1, A000010(n+1)-#]` -/
def P17837986387445801346.Spec : Prop :=
  ∀ n, P17837986387445801346.a n = A079536 (n + 1)

end A079536

/-! ## A079536.P11834874152166327197

`A062816(n+1)+A033879(n+1)`
-/

namespace A079536.P11834874152166327197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062816 (n + 1) + A033879 (n + 1)

end

end A079536.P11834874152166327197

namespace A079536

/-- `A062816(n+1)+A033879(n+1)` -/
def P11834874152166327197.Spec : Prop :=
  ∀ n, P11834874152166327197.a n = A079536 (n + 1)

end A079536

/-! ## A079536.P3589504605902476641

`A062355(n+1)-A000203(n+1)`
-/

namespace A079536.P3589504605902476641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062355 (n + 1) - A000203 (n + 1)

end

end A079536.P3589504605902476641

namespace A079536

/-- `A062355(n+1)-A000203(n+1)` -/
def P3589504605902476641.Spec : Prop :=
  ∀ n, P3589504605902476641.a n = A079536 (n + 1)

end A079536

/-! ## A079536.P18436205178809017812

`A079535(n+1)-A001065(n+1)`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A079536

/-- `A079535(n+1)-A001065(n+1)` -/
def P18436205178809017812.Spec : Prop :=
  ∀ n, P18436205178809017812.a n = A079536 (n + 1)

theorem P18436205178809017812.correct : P18436205178809017812.Spec := by
  intro n
  simp only [A079536, Nat.add_sub_cancel]

end A079536

/-! ## A079536.P9306495892386320518

`A062816(n+1)-A033880(n+1)`
-/

namespace A079536.P9306495892386320518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062816 (n + 1) - A033880 (n + 1)

end

end A079536.P9306495892386320518

namespace A079536

/-- `A062816(n+1)-A033880(n+1)` -/
def P9306495892386320518.Spec : Prop :=
  ∀ n, P9306495892386320518.a n = A079536 (n + 1)

end A079536

/-! ## A079536.P5253847459134801667

`A079535(n+1)-A091818(n+1)/2`
-/

namespace A079536.P5253847459134801667
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A079535 (n + 1) : ℚ) - (A091818 (n + 1) : ℚ) / 2

end

end A079536.P5253847459134801667

namespace A079536

/-- `A079535(n+1)-A091818(n+1)/2` -/
def P5253847459134801667.Spec : Prop :=
  ∀ n, P5253847459134801667.a n = (A079536 (n + 1) : ℚ)

end A079536

/-! ## A079536.P11657105765641627601

`A079535(n+1)-(A237588(n+1)+n)`
-/

namespace A079536.P11657105765641627601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079535 (n + 1) - (A237588 (n + 1) + (n : ℤ))

end

end A079536.P11657105765641627601

namespace A079536

/-- `A079535(n+1)-(A237588(n+1)+n)` -/
def P11657105765641627601.Spec : Prop :=
  ∀ n, P11657105765641627601.a n = A079536 (n + 1)

end A079536

/-! ## A079536.P7817863849142996272

`A079535(n+1)-(A039653(n+1)-n)`
-/

namespace A079536.P7817863849142996272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079535 (n + 1) - (A039653 (n + 1) - (n : ℤ))

end

end A079536.P7817863849142996272

namespace A079536

/-- `A079535(n+1)-(A039653(n+1)-n)` -/
def P7817863849142996272.Spec : Prop :=
  ∀ n, P7817863849142996272.a n = A079536 (n + 1)

end A079536

/-! ## A079536.P5977132097462296413

`A079535(n+1)-floor(A294015(n+1)/2)`
-/

namespace A079536.P5977132097462296413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079535 (n + 1) - ⌊(A294015 (n + 1) : ℚ) / 2⌋

end

end A079536.P5977132097462296413

namespace A079536

/-- `A079535(n+1)-floor(A294015(n+1)/2)` -/
def P5977132097462296413.Spec : Prop :=
  ∀ n, P5977132097462296413.a n = A079536 (n + 1)

end A079536

/-! ## A079536.P13569301674654888215

`A079535(n+1)-(A000203(n+1)-(n+1))`
-/

namespace A079536.P13569301674654888215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079535 (n + 1) - (A000203 (n + 1) - (n + 1 : ℤ))

end

end A079536.P13569301674654888215

namespace A079536

/-- `A079535(n+1)-(A000203(n+1)-(n+1))` -/
def P13569301674654888215.Spec : Prop :=
  ∀ n, P13569301674654888215.a n = A079536 (n + 1)

end A079536

/-! ## A079536.P18427581132531334247

`A079535(n+1)-(n+1-A033879(n+1))`
-/

namespace A079536.P18427581132531334247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079535 (n + 1) - ((n + 1 : ℤ) - A033879 (n + 1))

end

end A079536.P18427581132531334247

namespace A079536

/-- `A079535(n+1)-(n+1-A033879(n+1))` -/
def P18427581132531334247.Spec : Prop :=
  ∀ n, P18427581132531334247.a n = A079536 (n + 1)

end A079536

/-! ## A079536.P13171538767559795482

`A079535(n+1)-(A064987(n+1)/(n+1)-(n+1))`
-/

namespace A079536.P13171538767559795482
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A079535 (n + 1) : ℚ) - ((A064987 (n + 1) : ℚ) / (n + 1 : ℚ) - (n + 1 : ℚ))

end

end A079536.P13171538767559795482

namespace A079536

/-- `A079535(n+1)-(A064987(n+1)/(n+1)-(n+1))` -/
def P13171538767559795482.Spec : Prop :=
  ∀ n, P13171538767559795482.a n = (A079536 (n + 1) : ℚ)

end A079536

/-! ## A079536.P3673969068110843139

`A024816(n+1)+A079535(n+1)-A000217(n)`
-/

namespace A079536.P3673969068110843139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024816 (n + 1) + (A079535 (n + 1) - A000217 n)

end

end A079536.P3673969068110843139

namespace A079536

/-- `A024816(n+1)+A079535(n+1)-A000217(n)` -/
def P3673969068110843139.Spec : Prop :=
  ∀ n, P3673969068110843139.a n = A079536 (n + 1)

end A079536

/-! ## A079536.P5457995223577408940

`A035116(n+1)+A062355(n+1)-A162664(n+1)`
-/

namespace A079536.P5457995223577408940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035116 (n + 1) + (A062355 (n + 1) - A162664 (n + 1))

end

end A079536.P5457995223577408940

namespace A079536

/-- `A035116(n+1)+A062355(n+1)-A162664(n+1)` -/
def P5457995223577408940.Spec : Prop :=
  ∀ n, P5457995223577408940.a n = A079536 (n + 1)

end A079536

/-! ## A079536.P17246935418975189086

`A062354(n+1)-(A391701(n+1)+A000203(n+1))`
-/

namespace A079536.P17246935418975189086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062354 (n + 1) - (A391701 (n + 1) + A000203 (n + 1))

end

end A079536.P17246935418975189086

namespace A079536

/-- `A062354(n+1)-(A391701(n+1)+A000203(n+1))` -/
def P17246935418975189086.Spec : Prop :=
  ∀ n, P17246935418975189086.a n = A079536 (n + 1)

end A079536

/-! ## A079536.P11223017016998218440

`A000005(n+1)*A000010(n+1)-A000203(n+1)`
-/

namespace A079536.P11223017016998218440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) * A000010 (n + 1) - A000203 (n + 1)

end

end A079536.P11223017016998218440

namespace A079536

/-- `A000005(n+1)*A000010(n+1)-A000203(n+1)` -/
def P11223017016998218440.Spec : Prop :=
  ∀ n, P11223017016998218440.a n = A079536 (n + 1)

end A079536

/-! ## A079536.P10092946240967342110

`A062355(n+1)-A062354(n+1)/A000010(n+1)`
-/

namespace A079536.P10092946240967342110
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A062355 (n + 1) : ℚ) - (A062354 (n + 1) : ℚ) / (A000010 (n + 1) : ℚ)

end

end A079536.P10092946240967342110

namespace A079536

/-- `A062355(n+1)-A062354(n+1)/A000010(n+1)` -/
def P10092946240967342110.Spec : Prop :=
  ∀ n, P10092946240967342110.a n = (A079536 (n + 1) : ℚ)

end A079536

/-! ## A079536.P1629634494211851161

`A062355(n+1)-A309153(n+1)/A001227(n+1)`
-/

namespace A079536.P1629634494211851161
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A062355 (n + 1) : ℚ) - (A309153 (n + 1) : ℚ) / (A001227 (n + 1) : ℚ)

end

end A079536.P1629634494211851161

namespace A079536

/-- `A062355(n+1)-A309153(n+1)/A001227(n+1)` -/
def P1629634494211851161.Spec : Prop :=
  ∀ n, P1629634494211851161.a n = (A079536 (n + 1) : ℚ)

end A079536

/-! ## A079536.P9014437086411847015

`A079535(n+1)-Δ[A244048(n+1)]`
-/

namespace A079536.P9014437086411847015
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244048 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079535 (n + 1) - (f1 (n + 1) - f1 n)

end

end A079536.P9014437086411847015

namespace A079536

/-- `A079535(n+1)-Δ[A244048(n+1)]` -/
def P9014437086411847015.Spec : Prop :=
  ∀ n, P9014437086411847015.a n = A079536 (n + 1)

end A079536

/-! ## A079536.P7900840196408772388

`A000005(n+1)*A000010(n+1)-A326041(A003961(n+1))`
-/

namespace A079536.P7900840196408772388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) * A000010 (n + 1) - A326041 (A003961 (n + 1)).toNat

end

end A079536.P7900840196408772388

namespace A079536

/-- `A000005(n+1)*A000010(n+1)-A326041(A003961(n+1))` -/
def P7900840196408772388.Spec : Prop :=
  ∀ n, P7900840196408772388.a n = A079536 (n + 1)

end A079536

/-!
# A079537: a(n) = phi(2*n+1)*d(2*n+1) - sigma(2*n+1).

The programs for A079537, the canonical program `A079537.P3492315687404907307` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A079537 has offset 0).

The definition of A079537 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A079537.P15145838776964485599

`∑{d}[2*n+1, A037225(n)-#]`
-/

namespace A079537.P15145838776964485599
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (A037225 n - (d : ℤ))

end

end A079537.P15145838776964485599

namespace A079537

/-- `∑{d}[2*n+1, A037225(n)-#]` -/
def P15145838776964485599.Spec : Prop :=
  ∀ n, P15145838776964485599.a n = A079537 n

end A079537

/-! ## A079537.P8652066980885832966

`∑{d}[2*n+1, A000010(2*n+1)-#]`
-/

namespace A079537.P8652066980885832966
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (A000010 (2 * n + 1) - (d : ℤ))

end

end A079537.P8652066980885832966

namespace A079537

/-- `∑{d}[2*n+1, A000010(2*n+1)-#]` -/
def P8652066980885832966.Spec : Prop :=
  ∀ n, P8652066980885832966.a n = A079537 n

end A079537

/-! ## A079537.P4538370959734677969

`∑{d}[2*n+1, A062570(2*n+1)-#]`
-/

namespace A079537.P4538370959734677969
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (A062570 (2 * n + 1) - (d : ℤ))

end

end A079537.P4538370959734677969

namespace A079537

/-- `∑{d}[2*n+1, A062570(2*n+1)-#]` -/
def P4538370959734677969.Spec : Prop :=
  ∀ n, P4538370959734677969.a n = A079537 n

end A079537

/-! ## A079537.P14402127204104079189

`A062355(2*n+1)-A000203(2*n+1)`
-/

namespace A079537.P14402127204104079189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062355 (2 * n + 1) - A000203 (2 * n + 1)

end

end A079537.P14402127204104079189

namespace A079537

/-- `A062355(2*n+1)-A000203(2*n+1)` -/
def P14402127204104079189.Spec : Prop :=
  ∀ n, P14402127204104079189.a n = A079537 n

end A079537

/-! ## A079537.P6313672076745892541

`A000005(2*n+1)*A000010(2*n+1)-A000203(2*n+1)`
-/

namespace A079537.P6313672076745892541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (2 * n + 1) * A000010 (2 * n + 1) - A000203 (2 * n + 1)

end

end A079537.P6313672076745892541

namespace A079537

/-- `A000005(2*n+1)*A000010(2*n+1)-A000203(2*n+1)` -/
def P6313672076745892541.Spec : Prop :=
  ∀ n, P6313672076745892541.a n = A079537 n

end A079537

/-! ## A079537.P4681687031488239799

`A000010(2*n+1)*A320111(2*n+1)-A000203(2*n+1)`
-/

namespace A079537.P4681687031488239799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (2 * n + 1) * A320111 (2 * n + 1) - A000203 (2 * n + 1)

end

end A079537.P4681687031488239799

namespace A079537

/-- `A000010(2*n+1)*A320111(2*n+1)-A000203(2*n+1)` -/
def P4681687031488239799.Spec : Prop :=
  ∀ n, P4681687031488239799.a n = A079537 n

end A079537

/-! ## A079537.P3492315687404907307

`A079536(Δ[n²])`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A079537

/-- `A079536(Δ[n²])` -/
def P3492315687404907307.Spec : Prop :=
  ∀ n, P3492315687404907307.a n = A079537 n

theorem P3492315687404907307.correct : P3492315687404907307.Spec := by
  intro n
  simp only [A079537]

end A079537

/-! ## A079537.P3980945404914269912

`abs(A079536(2*n+1))`
-/

namespace A079537.P3980945404914269912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A079536 (2 * n + 1)|

end

end A079537.P3980945404914269912

namespace A079537

/-- `abs(A079536(2*n+1))` -/
def P3980945404914269912.Spec : Prop :=
  ∀ n, P3980945404914269912.a n = A079537 n

end A079537

/-! ## A079537.P14399628677832173144

`∑{d}[2*n+1, A162728(2*n+1)-#]`
-/

namespace A079537.P14399628677832173144
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (A162728 (2 * n + 1) - (d : ℤ))

end

end A079537.P14399628677832173144

namespace A079537

/-- `∑{d}[2*n+1, A162728(2*n+1)-#]` -/
def P14399628677832173144.Spec : Prop :=
  ∀ n, P14399628677832173144.a n = A079537 n

end A079537

/-! ## A079537.P10493559039275047303

`∑{d}[2*n+1, A326305(2*n+1)-#]`
-/

namespace A079537.P10493559039275047303
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (A326305 (2 * n + 1) - (d : ℤ))

end

end A079537.P10493559039275047303

namespace A079537

/-- `∑{d}[2*n+1, A326305(2*n+1)-#]` -/
def P10493559039275047303.Spec : Prop :=
  ∀ n, P10493559039275047303.a n = A079537 n

end A079537

/-! ## A079537.P8035610267192323552

`A062816(2*n+1)+A033879(2*n+1)`
-/

namespace A079537.P8035610267192323552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062816 (2 * n + 1) + A033879 (2 * n + 1)

end

end A079537.P8035610267192323552

namespace A079537

/-- `A062816(2*n+1)+A033879(2*n+1)` -/
def P8035610267192323552.Spec : Prop :=
  ∀ n, P8035610267192323552.a n = A079537 n

end A079537

/-! ## A079537.P6907741645340928171

`A062355(2*n+1)-A000593(2*n+1)`
-/

namespace A079537.P6907741645340928171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062355 (2 * n + 1) - A000593 (2 * n + 1)

end

end A079537.P6907741645340928171

namespace A079537

/-- `A062355(2*n+1)-A000593(2*n+1)` -/
def P6907741645340928171.Spec : Prop :=
  ∀ n, P6907741645340928171.a n = A079537 n

end A079537

/-! ## A079537.P14138442999003451063

`A079535(2*n+1)-A001065(2*n+1)`
-/

namespace A079537.P14138442999003451063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079535 (2 * n + 1) - A001065 (2 * n + 1)

end

end A079537.P14138442999003451063

namespace A079537

/-- `A079535(2*n+1)-A001065(2*n+1)` -/
def P14138442999003451063.Spec : Prop :=
  ∀ n, P14138442999003451063.a n = A079537 n

end A079537

/-! ## A079537.P13004536747390157057

`A062816(2*n+1)-A033880(2*n+1)`
-/

namespace A079537.P13004536747390157057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062816 (2 * n + 1) - A033880 (2 * n + 1)

end

end A079537.P13004536747390157057

namespace A079537

/-- `A062816(2*n+1)-A033880(2*n+1)` -/
def P13004536747390157057.Spec : Prop :=
  ∀ n, P13004536747390157057.a n = A079537 n

end A079537

/-! ## A079537.P690275057399478882

`A327169(2*n+3)+A079536(2*n+1)`
-/

namespace A079537.P690275057399478882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327169 (2 * n + 3) + A079536 (2 * n + 1)

end

end A079537.P690275057399478882

namespace A079537

/-- `A327169(2*n+3)+A079536(2*n+1)` -/
def P690275057399478882.Spec : Prop :=
  ∀ n, P690275057399478882.a n = A079537 n

end A079537

/-! ## A079537.P8951164468882372716

`A079536(A005408(n))%A000124(n)`
-/

namespace A079537.P8951164468882372716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A079536 (A005408 n).toNat) (A000124 n)

end

end A079537.P8951164468882372716

namespace A079537

/-- `A079536(A005408(n))%A000124(n)` -/
def P8951164468882372716.Spec : Prop :=
  ∀ n, P8951164468882372716.a n = A079537 n

end A079537

/-! ## A079537.P14179404121884278882

`A000010(2*n+1)*A001227(2*n+1)-A000203(2*n+1)`
-/

namespace A079537.P14179404121884278882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (2 * n + 1) * A001227 (2 * n + 1) - A000203 (2 * n + 1)

end

end A079537.P14179404121884278882

namespace A079537

/-- `A000010(2*n+1)*A001227(2*n+1)-A000203(2*n+1)` -/
def P14179404121884278882.Spec : Prop :=
  ∀ n, P14179404121884278882.a n = A079537 n

end A079537

/-! ## A079537.P12340388162512582641

`filter[A079536(2*n+1), A267442(#)]`
-/

namespace A079537.P12340388162512582641
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079536 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A267442 (f1 j).toNat = 1) n)

end

end A079537.P12340388162512582641

namespace A079537

/-- `filter[A079536(2*n+1), A267442(#)]` -/
def P12340388162512582641.Spec : Prop :=
  ∀ n, P12340388162512582641.a n = A079537 n

end A079537

/-! ## A079537.P5224819800203403450

`filter[A079536(2*n+1), A267773(#)]`
-/

namespace A079537.P5224819800203403450
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079536 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A267773 (f1 j).toNat = 1) n)

end

end A079537.P5224819800203403450

namespace A079537

/-- `filter[A079536(2*n+1), A267773(#)]` -/
def P5224819800203403450.Spec : Prop :=
  ∀ n, P5224819800203403450.a n = A079537 n

end A079537

/-! ## A079537.P13570367340133776173

`filter[A079536(2*n+1), A267922(#)]`
-/

namespace A079537.P13570367340133776173
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079536 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A267922 (f1 j).toNat = 1) n)

end

end A079537.P13570367340133776173

namespace A079537

/-- `filter[A079536(2*n+1), A267922(#)]` -/
def P13570367340133776173.Spec : Prop :=
  ∀ n, P13570367340133776173.a n = A079537 n

end A079537

/-!
# A079538: a(n) = sigma[k](n) - phi(n)^k - d(n)^k for k=2.

The programs for A079538, the canonical program `A079538.P11266938155067841056` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A079538 has offset 1).

The definition of A079538 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A079538.P11266938155067841056

`A001157(n+1)-(A127473(n+1)+A035116(n+1))`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A079538

/-- `A001157(n+1)-(A127473(n+1)+A035116(n+1))` -/
def P11266938155067841056.Spec : Prop :=
  ∀ n, P11266938155067841056.a n = A079538 (n + 1)

theorem P11266938155067841056.correct : P11266938155067841056.Spec := by
  intro n
  simp only [A079538, Nat.add_sub_cancel]

end A079538

/-! ## A079538.P17048223478967144689

`A001157(n+1)-(A000005(n+1)²+A000010(n+1)²)`
-/

namespace A079538.P17048223478967144689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001157 (n + 1) - (A000005 (n + 1) ^ 2 + A000010 (n + 1) ^ 2)

end

end A079538.P17048223478967144689

namespace A079538

/-- `A001157(n+1)-(A000005(n+1)²+A000010(n+1)²)` -/
def P17048223478967144689.Spec : Prop :=
  ∀ n, P17048223478967144689.a n = A079538 (n + 1)

end A079538

/-!
# A079540: a(n) = phi(n) + d(n)*(n - phi(n)) - sigma(n).

The programs for A079540, the canonical program `A079540.P3773335379213122735` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A079540 has offset 1).

The definition of A079540 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A079540.P3773335379213122735

`A345892(n+1)-(A094181(n+1)+A000203(n+1))`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A079540

/-- `A345892(n+1)-(A094181(n+1)+A000203(n+1))` -/
def P3773335379213122735.Spec : Prop :=
  ∀ n, P3773335379213122735.a n = A079540 (n + 1)

theorem P3773335379213122735.correct : P3773335379213122735.Spec := by
  intro n
  simp only [A079540, Nat.add_sub_cancel]

end A079540

/-! ## A079540.P16557746228561685890

`A032741(n+1)*A051953(n+1)-A001065(n+1)`
-/

namespace A079540.P16557746228561685890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 (n + 1) * A051953 (n + 1) - A001065 (n + 1)

end

end A079540.P16557746228561685890

namespace A079540

/-- `A032741(n+1)*A051953(n+1)-A001065(n+1)` -/
def P16557746228561685890.Spec : Prop :=
  ∀ n, P16557746228561685890.a n = A079540 (n + 1)

end A079540

/-! ## A079540.P12897260318750395114

`A000005(n+1)*A051953(n+1)-A051612(n+1)`
-/

namespace A079540.P12897260318750395114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) * A051953 (n + 1) - A051612 (n + 1)

end

end A079540.P12897260318750395114

namespace A079540

/-- `A000005(n+1)*A051953(n+1)-A051612(n+1)` -/
def P12897260318750395114.Spec : Prop :=
  ∀ n, P12897260318750395114.a n = A079540 (n + 1)

end A079540

/-! ## A079540.P1499141603050963735

`A094471(n+1)-A000010(n+1)*A032741(n+1)`
-/

namespace A079540.P1499141603050963735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094471 (n + 1) - A000010 (n + 1) * A032741 (n + 1)

end

end A079540.P1499141603050963735

namespace A079540

/-- `A094471(n+1)-A000010(n+1)*A032741(n+1)` -/
def P1499141603050963735.Spec : Prop :=
  ∀ n, P1499141603050963735.a n = A079540 (n + 1)

end A079540

/-! ## A079540.P15608559732043435281

`A051953(n+1)*A070824(n+1)-A051709(n+1)`
-/

namespace A079540.P15608559732043435281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051953 (n + 1) * A070824 (n + 1) - A051709 (n + 1)

end

end A079540.P15608559732043435281

namespace A079540

/-- `A051953(n+1)*A070824(n+1)-A051709(n+1)` -/
def P15608559732043435281.Spec : Prop :=
  ∀ n, P15608559732043435281.a n = A079540 (n + 1)

end A079540

/-! ## A079540.P14987810130503683502

`(A000005(n+1)-1)*A051953(n+1)-A001065(n+1)`
-/

namespace A079540.P14987810130503683502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000005 (n + 1) - 1) * A051953 (n + 1) - A001065 (n + 1)

end

end A079540.P14987810130503683502

namespace A079540

/-- `(A000005(n+1)-1)*A051953(n+1)-A001065(n+1)` -/
def P14987810130503683502.Spec : Prop :=
  ∀ n, P14987810130503683502.a n = A079540 (n + 1)

end A079540

/-!
# A079542: Triangular array: T(n,1) = T(n,n) = n and T(n,k) = lcm(T(n-1,k-1), T(n-1,k)) for 1 < k < n.

The programs for A079542, there is no canonical definition to state claims against.
-/

/-! ## A079542.P14629784640423936263

`lcm(A080045(n+1), A274353(A155452(n)))`
-/

namespace A079542.P14629784640423936263
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A080045 (n + 1)) (A274353 (A155452 n).toNat)

end

end A079542.P14629784640423936263

/-! ## A079542.P14800263318007545302

`A290103(∏{p}[A317644(n), #])`
-/

namespace A079542.P14800263318007545302
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317644 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290103 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, p)

end

end A079542.P14800263318007545302

/-! ## A079542.P14925104915828806702

`A290103(A317644(n))`
-/

namespace A079542.P14925104915828806702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290103 (A317644 n).toNat

end

end A079542.P14925104915828806702

/-! ## A079542.P4453435835045620740

`A316431(2*A317644(n))`
-/

namespace A079542.P4453435835045620740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316431 (2 * A317644 n).toNat

end

end A079542.P4453435835045620740

/-! ## A079542.P10065741767649806578

`A321648(A098350(n+1)*A167034(n))`
-/

namespace A079542.P10065741767649806578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321648 (A098350 (n + 1) * A167034 n).toNat

end

end A079542.P10065741767649806578

/-!
# A079544: Primes of the form x^2 + y^2 + 1, x>0, y>0.

The programs for A079544, the canonical program `A079544.P5332634671618239026` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A079544 has offset 1).

The definition of A079544 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1617 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A079544.P5332634671618239026

`p?[2*A001983(n+1)+1]`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A079544

/-- `p?[2*A001983(n+1)+1]` -/
def P5332634671618239026.Spec : Prop :=
  ∀ n, P5332634671618239026.a n = A079544 (n + 1)

theorem P5332634671618239026.correct : P5332634671618239026.Spec := by
  intro n
  simp only [A079544, Nat.add_sub_cancel]

end A079544

/-! ## A079544.P988170233681755834

`p?[A166265(n+1)]`
-/

namespace A079544.P988170233681755834
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166265 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A079544.P988170233681755834

namespace A079544

/-- `p?[A166265(n+1)]` -/
def P988170233681755834.Spec : Prop :=
  ∀ n, P988170233681755834.a n = A079544 (n + 1)

end A079544

/-! ## A079544.P15406233545534125006

`p?[A000404(n+1)+1]`
-/

namespace A079544.P15406233545534125006
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000404 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A079544.P15406233545534125006

namespace A079544

/-- `p?[A000404(n+1)+1]` -/
def P15406233545534125006.Spec : Prop :=
  ∀ n, P15406233545534125006.a n = A079544 (n + 1)

end A079544

/-! ## A079544.P12095928062541612471

`filter[A166265(n+1), A010051(#)]`
-/

namespace A079544.P12095928062541612471
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166265 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A079544.P12095928062541612471

namespace A079544

/-- `filter[A166265(n+1), A010051(#)]` -/
def P12095928062541612471.Spec : Prop :=
  ∀ n, P12095928062541612471.a n = A079544 (n + 1)

end A079544

/-! ## A079544.P14869534380239531249

`record[A006530(A000404(n+1)+1)]`
-/

namespace A079544.P14869534380239531249
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A000404 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A079544.P14869534380239531249

namespace A079544

/-- `record[A006530(A000404(n+1)+1)]` -/
def P14869534380239531249.Spec : Prop :=
  ∀ n, P14869534380239531249.a n = A079544 (n + 1)

end A079544

/-! ## A079544.P4041272301893204924

`record[A020639(A000404(n+1)+1)]`
-/

namespace A079544.P4041272301893204924
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A000404 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A079544.P4041272301893204924

namespace A079544

/-- `record[A020639(A000404(n+1)+1)]` -/
def P4041272301893204924.Spec : Prop :=
  ∀ n, P4041272301893204924.a n = A079544 (n + 1)

end A079544

/-! ## A079544.P11992453601141296832

`∩[A000040(n+1), A166265(n+1)]`
-/

namespace A079544.P11992453601141296832
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166265 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A079544.P11992453601141296832

namespace A079544

/-- `∩[A000040(n+1), A166265(n+1)]` -/
def P11992453601141296832.Spec : Prop :=
  ∀ n, (P11992453601141296832.a n : ℤ) = A079544 (n + 1)

end A079544

/-! ## A079544.P11055771651003141013

`∩[A004139(n+1), A166265(n+1)]`
-/

namespace A079544.P11055771651003141013
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004139 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166265 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A079544.P11055771651003141013

namespace A079544

/-- `∩[A004139(n+1), A166265(n+1)]` -/
def P11055771651003141013.Spec : Prop :=
  ∀ n, (P11055771651003141013.a n : ℤ) = A079544 (n + 1)

end A079544

/-! ## A079544.P16384793954622380547

`∩[A006005(n+1), A166265(n+1)]`
-/

namespace A079544.P16384793954622380547
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006005 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166265 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A079544.P16384793954622380547

namespace A079544

/-- `∩[A006005(n+1), A166265(n+1)]` -/
def P16384793954622380547.Spec : Prop :=
  ∀ n, (P16384793954622380547.a n : ℤ) = A079544 (n + 1)

end A079544

/-! ## A079544.P8907920287542635778

`∩[A008578(n+1), A166265(n+1)]`
-/

namespace A079544.P8907920287542635778
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166265 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A079544.P8907920287542635778

namespace A079544

/-- `∩[A008578(n+1), A166265(n+1)]` -/
def P8907920287542635778.Spec : Prop :=
  ∀ n, (P8907920287542635778.a n : ℤ) = A079544 (n + 1)

end A079544

/-! ## A079544.P10770720409752012050

`∩[A042998(n+1), A166265(n+1)]`
-/

namespace A079544.P10770720409752012050
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042998 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166265 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A079544.P10770720409752012050

namespace A079544

/-- `∩[A042998(n+1), A166265(n+1)]` -/
def P10770720409752012050.Spec : Prop :=
  ∀ n, (P10770720409752012050.a n : ℤ) = A079544 (n + 1)

end A079544

/-! ## A079544.P12378091633905538999

`∩[A045319(n+1), A166265(n+1)]`
-/

namespace A079544.P12378091633905538999
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166265 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A079544.P12378091633905538999

namespace A079544

/-- `∩[A045319(n+1), A166265(n+1)]` -/
def P12378091633905538999.Spec : Prop :=
  ∀ n, (P12378091633905538999.a n : ℤ) = A079544 (n + 1)

end A079544

/-! ## A079544.P5198630297500043949

`∩[A045403(n+1), A166265(n+1)]`
-/

namespace A079544.P5198630297500043949
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045403 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166265 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A079544.P5198630297500043949

namespace A079544

/-- `∩[A045403(n+1), A166265(n+1)]` -/
def P5198630297500043949.Spec : Prop :=
  ∀ n, (P5198630297500043949.a n : ℤ) = A079544 (n + 1)

end A079544

/-! ## A079544.P9200193581901977716

`∩[A046022(n+1), A166265(n+1)]`
-/

namespace A079544.P9200193581901977716
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046022 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166265 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A079544.P9200193581901977716

namespace A079544

/-- `∩[A046022(n+1), A166265(n+1)]` -/
def P9200193581901977716.Spec : Prop :=
  ∀ n, (P9200193581901977716.a n : ℤ) = A079544 (n + 1)

end A079544

/-! ## A079544.P12608237780277329443

`∩[A058853(n+1), A166265(n+1)]`
-/

namespace A079544.P12608237780277329443
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058853 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166265 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A079544.P12608237780277329443

namespace A079544

/-- `∩[A058853(n+1), A166265(n+1)]` -/
def P12608237780277329443.Spec : Prop :=
  ∀ n, (P12608237780277329443.a n : ℤ) = A079544 (n + 1)

end A079544

/-! ## A079544.P15868930596131543960

`∩[A062972(n+1), A166265(n+1)]`
-/

namespace A079544.P15868930596131543960
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062972 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166265 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A079544.P15868930596131543960

namespace A079544

/-- `∩[A062972(n+1), A166265(n+1)]` -/
def P15868930596131543960.Spec : Prop :=
  ∀ n, (P15868930596131543960.a n : ℤ) = A079544 (n + 1)

end A079544

/-! ## A079544.P13509489272732339137

`∩[A065091(n+1), A166265(n+1)]`
-/

namespace A079544.P13509489272732339137
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166265 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A079544.P13509489272732339137

namespace A079544

/-- `∩[A065091(n+1), A166265(n+1)]` -/
def P13509489272732339137.Spec : Prop :=
  ∀ n, (P13509489272732339137.a n : ℤ) = A079544 (n + 1)

end A079544

/-! ## A079544.P2399783574918846495

`∩[A065376(n+1), A166265(n+1)]`
-/

namespace A079544.P2399783574918846495
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065376 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166265 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A079544.P2399783574918846495

namespace A079544

/-- `∩[A065376(n+1), A166265(n+1)]` -/
def P2399783574918846495.Spec : Prop :=
  ∀ n, (P2399783574918846495.a n : ℤ) = A079544 (n + 1)

end A079544

/-!
# A079545: Primes of the form x^2 + y^2 + 1 with x,y >= 0.

The programs for A079545, the canonical program `A079545.P17952290838055275497` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A079545 has offset 1).

The definition of A079545 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A079545.P17952290838055275497

`∪[A002496(n+1), A079544(n+1)]`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A079545

/-- `∪[A002496(n+1), A079544(n+1)]` -/
def P17952290838055275497.Spec : Prop :=
  ∀ n, (P17952290838055275497.a n : ℤ) = A079545 (n + 1)

theorem P17952290838055275497.correct : P17952290838055275497.Spec := by
  intro n
  simp only [A079545, Nat.add_sub_cancel]

end A079545

/-! ## A079545.P6021163523059610295

`∪[A079544(n+1), A163588(n+1)]`
-/

namespace A079545.P6021163523059610295
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079544 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163588 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A079545.P6021163523059610295

namespace A079545

/-- `∪[A079544(n+1), A163588(n+1)]` -/
def P6021163523059610295.Spec : Prop :=
  ∀ n, (P6021163523059610295.a n : ℤ) = A079545 (n + 1)

end A079545

/-! ## A079545.P3073717557667584389

`∪[A079544(n+1), A249410(n+1)]`
-/

namespace A079545.P3073717557667584389
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079544 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249410 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A079545.P3073717557667584389

namespace A079545

/-- `∪[A079544(n+1), A249410(n+1)]` -/
def P3073717557667584389.Spec : Prop :=
  ∀ n, (P3073717557667584389.a n : ℤ) = A079545 (n + 1)

end A079545

/-! ## A079545.P2609788572928484163

`p?[A128106(n+1)+1]`
-/

namespace A079545.P2609788572928484163
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128106 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A079545.P2609788572928484163

namespace A079545

/-- `p?[A128106(n+1)+1]` -/
def P2609788572928484163.Spec : Prop :=
  ∀ n, P2609788572928484163.a n = A079545 (n + 1)

end A079545

/-! ## A079545.P3629585954425565323

`record[A006530(A128106(n+1)+1)]`
-/

namespace A079545.P3629585954425565323
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A128106 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A079545.P3629585954425565323

namespace A079545

/-- `record[A006530(A128106(n+1)+1)]` -/
def P3629585954425565323.Spec : Prop :=
  ∀ n, P3629585954425565323.a n = A079545 (n + 1)

end A079545

/-! ## A079545.P18096665409690448825

`p?[(n+1)*A229062(n)]`
-/

namespace A079545.P18096665409690448825
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A229062 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A079545.P18096665409690448825

namespace A079545

/-- `p?[(n+1)*A229062(n)]` -/
def P18096665409690448825.Spec : Prop :=
  ∀ n, P18096665409690448825.a n = A079545 (n + 1)

end A079545

/-! ## A079545.P5443000900326847084

`p?[A333909(n+1)]`
-/

namespace A079545.P5443000900326847084
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333909 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A079545.P5443000900326847084

namespace A079545

/-- `p?[A333909(n+1)]` -/
def P5443000900326847084.Spec : Prop :=
  ∀ n, P5443000900326847084.a n = A079545 (n + 1)

end A079545

/-! ## A079545.P15538496060145955774

`record[A006530(A333909(n+2))]`
-/

namespace A079545.P15538496060145955774
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A333909 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A079545.P15538496060145955774

namespace A079545

/-- `record[A006530(A333909(n+2))]` -/
def P15538496060145955774.Spec : Prop :=
  ∀ n, P15538496060145955774.a n = A079545 (n + 1)

end A079545

/-! ## A079545.P12321974073017300157

`filter[A333909(n+1), A010051(#)]`
-/

namespace A079545.P12321974073017300157
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333909 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A079545.P12321974073017300157

namespace A079545

/-- `filter[A333909(n+1), A010051(#)]` -/
def P12321974073017300157.Spec : Prop :=
  ∀ n, P12321974073017300157.a n = A079545 (n + 1)

end A079545

/-! ## A079545.P8574683074547637446

`∩[A000040(n+1), A333909(n+1)]`
-/

namespace A079545.P8574683074547637446
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333909 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A079545.P8574683074547637446

namespace A079545

/-- `∩[A000040(n+1), A333909(n+1)]` -/
def P8574683074547637446.Spec : Prop :=
  ∀ n, (P8574683074547637446.a n : ℤ) = A079545 (n + 1)

end A079545

/-! ## A079545.P1091841547016332784

`∩[A042998(n+1), A333909(n+1)]`
-/

namespace A079545.P1091841547016332784
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042998 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333909 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A079545.P1091841547016332784

namespace A079545

/-- `∩[A042998(n+1), A333909(n+1)]` -/
def P1091841547016332784.Spec : Prop :=
  ∀ n, (P1091841547016332784.a n : ℤ) = A079545 (n + 1)

end A079545

/-! ## A079545.P15810749594981047761

`∩[A058853(n+1), A333909(n+1)]`
-/

namespace A079545.P15810749594981047761
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058853 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333909 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A079545.P15810749594981047761

namespace A079545

/-- `∩[A058853(n+1), A333909(n+1)]` -/
def P15810749594981047761.Spec : Prop :=
  ∀ n, (P15810749594981047761.a n : ℤ) = A079545 (n + 1)

end A079545

/-! ## A079545.P17927557445137968604

`∩[A182986(n+1), A333909(n+1)]`
-/

namespace A079545.P17927557445137968604
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182986 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333909 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A079545.P17927557445137968604

namespace A079545

/-- `∩[A182986(n+1), A333909(n+1)]` -/
def P17927557445137968604.Spec : Prop :=
  ∀ n, (P17927557445137968604.a n : ℤ) = A079545 (n + 1)

end A079545

/-! ## A079545.P17362766187907296134

`p?[A166687(n+1)]`
-/

namespace A079545.P17362766187907296134
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166687 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A079545.P17362766187907296134

namespace A079545

/-- `p?[A166687(n+1)]` -/
def P17362766187907296134.Spec : Prop :=
  ∀ n, P17362766187907296134.a n = A079545 (n + 1)

end A079545

/-! ## A079545.P17800177484403533785

`p?[A001481(n+1)+1]`
-/

namespace A079545.P17800177484403533785
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001481 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A079545.P17800177484403533785

namespace A079545

/-- `p?[A001481(n+1)+1]` -/
def P17800177484403533785.Spec : Prop :=
  ∀ n, P17800177484403533785.a n = A079545 (n + 1)

end A079545

/-! ## A079545.P6321725492467363114

`p?[Δ[A173256(n+1)]+1]`
-/

namespace A079545.P6321725492467363114
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173256 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A079545.P6321725492467363114

namespace A079545

/-- `p?[Δ[A173256(n+1)]+1]` -/
def P6321725492467363114.Spec : Prop :=
  ∀ n, P6321725492467363114.a n = A079545 (n + 1)

end A079545

/-! ## A079545.P18098935478340410427

`record[A006530(A166687(n+2))]`
-/

namespace A079545.P18098935478340410427
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A166687 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A079545.P18098935478340410427

namespace A079545

/-- `record[A006530(A166687(n+2))]` -/
def P18098935478340410427.Spec : Prop :=
  ∀ n, P18098935478340410427.a n = A079545 (n + 1)

end A079545

/-! ## A079545.P5844372800118479284

`filter[A166687(n+1), A010051(#)]`
-/

namespace A079545.P5844372800118479284
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166687 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A079545.P5844372800118479284

namespace A079545

/-- `filter[A166687(n+1), A010051(#)]` -/
def P5844372800118479284.Spec : Prop :=
  ∀ n, P5844372800118479284.a n = A079545 (n + 1)

end A079545

/-! ## A079545.P835597905214662556

`record[A006530(A001481(n+2)+1)]`
-/

namespace A079545.P835597905214662556
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A001481 (n + 2) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A079545.P835597905214662556

namespace A079545

/-- `record[A006530(A001481(n+2)+1)]` -/
def P835597905214662556.Spec : Prop :=
  ∀ n, P835597905214662556.a n = A079545 (n + 1)

end A079545

/-!
# A079546: a(n) = sigma(n) - 4*phi(n).

The programs for A079546, the canonical program `A079546.P3272410509726425478` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A079546 has offset 1).

The definition of A079546 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A079546.P3272410509726425478

`Δ[A160664(n)-A100449(n)]`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A079546

/-- `Δ[A160664(n)-A100449(n)]` -/
def P3272410509726425478.Spec : Prop :=
  ∀ n, P3272410509726425478.a n = A079546 (n + 1)

theorem P3272410509726425478.correct : P3272410509726425478.Spec := by
  intro n
  simp only [A079546, Nat.add_sub_cancel]

end A079546

/-! ## A079546.P5272764388378458654

`A000203(n+1)-Δ[A100449(n)]`
-/

namespace A079546.P5272764388378458654
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100449 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) - (f1 (n + 1) - f1 n)

end

end A079546.P5272764388378458654

namespace A079546

/-- `A000203(n+1)-Δ[A100449(n)]` -/
def P5272764388378458654.Spec : Prop :=
  ∀ n, P5272764388378458654.a n = A079546 (n + 1)

end A079546

/-! ## A079546.P10250875704580307466

`A245092(Δ[n²])-Δ[A100449(n)]`
-/

namespace A079546.P10250875704580307466
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100449 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245092 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat - (f2 (n + 1) - f2 n)

end

end A079546.P10250875704580307466

namespace A079546

/-- `A245092(Δ[n²])-Δ[A100449(n)]` -/
def P10250875704580307466.Spec : Prop :=
  ∀ n, P10250875704580307466.a n = A079546 (n + 1)

end A079546

/-! ## A079546.P13124464076039236211

`A051612(n+1)-A200905(n+1)`
-/

namespace A079546.P13124464076039236211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051612 (n + 1) - A200905 (n + 1)

end

end A079546.P13124464076039236211

namespace A079546

/-- `A051612(n+1)-A200905(n+1)` -/
def P13124464076039236211.Spec : Prop :=
  ∀ n, P13124464076039236211.a n = A079546 (n + 1)

end A079546

/-! ## A079546.P12696858582681367764

`abs(A143348(n+1))-Δ[A100449(n)]`
-/

namespace A079546.P12696858582681367764
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100449 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A143348 (n + 1)| - (f1 (n + 1) - f1 n)

end

end A079546.P12696858582681367764

namespace A079546

/-- `abs(A143348(n+1))-Δ[A100449(n)]` -/
def P12696858582681367764.Spec : Prop :=
  ∀ n, P12696858582681367764.a n = A079546 (n + 1)

end A079546

/-! ## A079546.P12589738419430950266

`∑[A340793(n+1)]-Δ[A100449(n)]`
-/

namespace A079546.P12589738419430950266
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340793 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100449 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (f2 (n + 1) - f2 n)

end

end A079546.P12589738419430950266

namespace A079546

/-- `∑[A340793(n+1)]-Δ[A100449(n)]` -/
def P12589738419430950266.Spec : Prop :=
  ∀ n, P12589738419430950266.a n = A079546 (n + 1)

end A079546

/-! ## A079546.P7189382529907735722

`A074400(n+1)/2-Δ[A100449(n)]`
-/

namespace A079546.P7189382529907735722
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100449 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A074400 (n + 1) : ℚ) / 2 - (f1 (n + 1) - f1 n : ℚ)

end

end A079546.P7189382529907735722

namespace A079546

/-- `A074400(n+1)/2-Δ[A100449(n)]` -/
def P7189382529907735722.Spec : Prop :=
  ∀ n, P7189382529907735722.a n = (A079546 (n + 1) : ℚ)

end A079546

/-! ## A079546.P15655397577479078904

`A033880(n+1)-2*A083254(n+1)`
-/

namespace A079546.P15655397577479078904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033880 (n + 1) - 2 * A083254 (n + 1)

end

end A079546.P15655397577479078904

namespace A079546

/-- `A033880(n+1)-2*A083254(n+1)` -/
def P15655397577479078904.Spec : Prop :=
  ∀ n, P15655397577479078904.a n = A079546 (n + 1)

end A079546

/-! ## A079546.P211556201582086186

`A000203(n+1)-4*A000010(n+1)`
-/

namespace A079546.P211556201582086186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) - 4 * A000010 (n + 1)

end

end A079546.P211556201582086186

namespace A079546

/-- `A000203(n+1)-4*A000010(n+1)` -/
def P211556201582086186.Spec : Prop :=
  ∀ n, P211556201582086186.a n = A079546 (n + 1)

end A079546

/-! ## A079546.P14456231712757006618

`A001065(n+1)+1+n-Δ[A100449(n)]`
-/

namespace A079546.P14456231712757006618
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100449 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001065 (n + 1) + 1 + (n : ℤ) - (f1 (n + 1) - f1 n)

end

end A079546.P14456231712757006618

namespace A079546

/-- `A001065(n+1)+1+n-Δ[A100449(n)]` -/
def P14456231712757006618.Spec : Prop :=
  ∀ n, P14456231712757006618.a n = A079546 (n + 1)

end A079546

/-! ## A079546.P2585129363120807771

`A000203(n+1)-A008574(A000010(n+1))`
-/

namespace A079546.P2585129363120807771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) - A008574 (A000010 (n + 1)).toNat

end

end A079546.P2585129363120807771

namespace A079546

/-- `A000203(n+1)-A008574(A000010(n+1))` -/
def P2585129363120807771.Spec : Prop :=
  ∀ n, P2585129363120807771.a n = A079546 (n + 1)

end A079546

/-! ## A079546.P4921384904823016932

`A000203(n+1)+A100449(n)-A100449(n+1)`
-/

namespace A079546.P4921384904823016932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) + (A100449 n - A100449 (n + 1))

end

end A079546.P4921384904823016932

namespace A079546

/-- `A000203(n+1)+A100449(n)-A100449(n+1)` -/
def P4921384904823016932.Spec : Prop :=
  ∀ n, P4921384904823016932.a n = A079546 (n + 1)

end A079546

/-! ## A079546.P12521844983610174296

`A000203(n+1)-(A200905(n+1)+A000010(n+1))`
-/

namespace A079546.P12521844983610174296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) - (A200905 (n + 1) + A000010 (n + 1))

end

end A079546.P12521844983610174296

namespace A079546

/-- `A000203(n+1)-(A200905(n+1)+A000010(n+1))` -/
def P12521844983610174296.Spec : Prop :=
  ∀ n, P12521844983610174296.a n = A079546 (n + 1)

end A079546

/-! ## A079546.P2205531657192272300

`A228947(n+1)+A324048(n+1)-A065387(n+1)`
-/

namespace A079546.P2205531657192272300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228947 (n + 1) + (A324048 (n + 1) - A065387 (n + 1))

end

end A079546.P2205531657192272300

namespace A079546

/-- `A228947(n+1)+A324048(n+1)-A065387(n+1)` -/
def P2205531657192272300.Spec : Prop :=
  ∀ n, P2205531657192272300.a n = A079546 (n + 1)

end A079546

/-! ## A079546.P12450585372964192360

`A004525(A146076(2*(n+1)))-A005843(A319998(2*(n+1)))`
-/

namespace A079546.P12450585372964192360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A146076 (2 * (n + 1))).toNat - A005843 (A319998 (2 * (n + 1))).toNat

end

end A079546.P12450585372964192360

namespace A079546

/-- `A004525(A146076(2*(n+1)))-A005843(A319998(2*(n+1)))` -/
def P12450585372964192360.Spec : Prop :=
  ∀ n, P12450585372964192360.a n = A079546 (n + 1)

end A079546

/-! ## A079546.P10357312997226117468

`A000203(n+1)-Δ[2*A206297(n+1)]`
-/

namespace A079546.P10357312997226117468
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A206297 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) - (f1 (n + 1) - f1 n)

end

end A079546.P10357312997226117468

namespace A079546

/-- `A000203(n+1)-Δ[2*A206297(n+1)]` -/
def P10357312997226117468.Spec : Prop :=
  ∀ n, P10357312997226117468.a n = A079546 (n + 1)

end A079546

/-!
# A079547: a(n) = ((n^6 - (n-1)^6) - (n^2 - (n-1)^2))/60.

The programs for A079547, the canonical program `A079547.P6760666080980648222` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A079547 has offset 1).

The definition of A079547 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A079547.P6760666080980648222

`((n+1)^6-n^6-((n+1)²-n²))/60`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A079547

/-- `((n+1)^6-n^6-((n+1)²-n²))/60` -/
def P6760666080980648222.Spec : Prop :=
  ∀ n, P6760666080980648222.a n = (A079547 (n + 1) : ℚ)

end A079547

/-! ## A079547.P184188391854583920

`∑[C(n²+1, 2)]`
-/

namespace A079547.P184188391854583920
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (n ^ 2 + 1) 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A079547.P184188391854583920

namespace A079547

/-- `∑[C(n²+1, 2)]` -/
def P184188391854583920.Spec : Prop :=
  ∀ n, (P184188391854583920.a n : ℤ) = A079547 (n + 1)

end A079547

/-! ## A079547.P1662666299691619139

`a(n-1)+C(n²+1, 2)` with `a(0)=0`
-/

namespace A079547.P1662666299691619139
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) + Nat.choose (n ^ 2 + 1) 2

end

end A079547.P1662666299691619139

namespace A079547

/-- `a(n-1)+C(n²+1, 2)` -/
def P1662666299691619139.Spec : Prop :=
  ∀ n, (P1662666299691619139.a n : ℤ) = A079547 (n + 1)

end A079547

/-! ## A079547.P3760250306377532067

`∑[A037270(n)]`
-/

namespace A079547.P3760250306377532067
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037270 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A079547.P3760250306377532067

namespace A079547

/-- `∑[A037270(n)]` -/
def P3760250306377532067.Spec : Prop :=
  ∀ n, P3760250306377532067.a n = A079547 (n + 1)

end A079547

/-! ## A079547.P2503073891033268819

`∑[A071253(n)/2]`
-/

namespace A079547.P2503073891033268819
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A071253 n : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A079547.P2503073891033268819

namespace A079547

/-- `∑[A071253(n)/2]` -/
def P2503073891033268819.Spec : Prop :=
  ∀ n, P2503073891033268819.a n = (A079547 (n + 1) : ℚ)

end A079547

/-! ## A079547.P12265192233907906728

`∑[n*A006003(n)]`
-/

namespace A079547.P12265192233907906728
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A006003 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A079547.P12265192233907906728

namespace A079547

/-- `∑[n*A006003(n)]` -/
def P12265192233907906728.Spec : Prop :=
  ∀ n, P12265192233907906728.a n = A079547 (n + 1)

end A079547

/-! ## A079547.P9986362406638973525

`∑[A163102(n)]-∑[n]²`
-/

namespace A079547.P9986362406638973525
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163102 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (((∑ j ∈ Finset.range (n + 1), f2 j) ^ 2 : ℕ) : ℤ)

end

end A079547.P9986362406638973525

namespace A079547

/-- `∑[A163102(n)]-∑[n]²` -/
def P9986362406638973525.Spec : Prop :=
  ∀ n, P9986362406638973525.a n = A079547 (n + 1)

end A079547

/-! ## A079547.P5147310768938269832

`A164938(n+1)-A176060(n)`
-/

namespace A079547.P5147310768938269832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164938 (n + 1) - A176060 n

end

end A079547.P5147310768938269832

namespace A079547

/-- `A164938(n+1)-A176060(n)` -/
def P5147310768938269832.Spec : Prop :=
  ∀ n, P5147310768938269832.a n = A079547 (n + 1)

end A079547

/-! ## A079547.P13840302897603872723

`2*A024166(n)-A000537(n)`
-/

namespace A079547.P13840302897603872723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A024166 n - A000537 n

end

end A079547.P13840302897603872723

namespace A079547

/-- `2*A024166(n)-A000537(n)` -/
def P13840302897603872723.Spec : Prop :=
  ∀ n, P13840302897603872723.a n = A079547 (n + 1)

end A079547

/-! ## A079547.P11129533122220519215

`A000330(n)+A303916(n)/2`
-/

namespace A079547.P11129533122220519215
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000330 n : ℚ) + (A303916 n : ℚ) / 2

end

end A079547.P11129533122220519215

namespace A079547

/-- `A000330(n)+A303916(n)/2` -/
def P11129533122220519215.Spec : Prop :=
  ∀ n, P11129533122220519215.a n = (A079547 (n + 1) : ℚ)

end A079547

/-! ## A079547.P6990022360798797306

`2*A024166(n)-A000217(n)²`
-/

namespace A079547.P6990022360798797306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A024166 n - A000217 n ^ 2

end

end A079547.P6990022360798797306

namespace A079547

/-- `2*A024166(n)-A000217(n)²` -/
def P6990022360798797306.Spec : Prop :=
  ∀ n, P6990022360798797306.a n = A079547 (n + 1)

end A079547

/-! ## A079547.P4451829793703282302

`∑[A000537(abs(1-n))+A000537(n)]-1`
-/

namespace A079547.P4451829793703282302
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000537 |1 - (n : ℤ)|.toNat + A000537 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A079547.P4451829793703282302

namespace A079547

/-- `∑[A000537(abs(1-n))+A000537(n)]-1` -/
def P4451829793703282302.Spec : Prop :=
  ∀ n, P4451829793703282302.a n = A079547 (n + 1)

end A079547

/-! ## A079547.P16606375714296471660

`∑[A317714(2*n+1)]`
-/

namespace A079547.P16606375714296471660
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317714 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A079547.P16606375714296471660

namespace A079547

/-- `∑[A317714(2*n+1)]` -/
def P16606375714296471660.Spec : Prop :=
  ∀ n, P16606375714296471660.a n = A079547 (n + 1)

end A079547

/-! ## A079547.P4863253312462633572

`∑[A000217(n²)]`
-/

namespace A079547.P4863253312462633572
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (n ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A079547.P4863253312462633572

namespace A079547

/-- `∑[A000217(n²)]` -/
def P4863253312462633572.Spec : Prop :=
  ∀ n, P4863253312462633572.a n = A079547 (n + 1)

end A079547

/-! ## A079547.P4457661641730529262

`∑[A341736(∑[n])]`
-/

namespace A079547.P4457661641730529262
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341736 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A079547.P4457661641730529262

namespace A079547

/-- `∑[A341736(∑[n])]` -/
def P4457661641730529262.Spec : Prop :=
  ∀ n, P4457661641730529262.a n = A079547 (n + 1)

end A079547

/-! ## A079547.P7532772594480450677

`∑[record[∑[n]*char[n²]]]`
-/

namespace A079547.P7532772594480450677
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f3 j) * (if ∃ j, f4 j = n then 1 else 0)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A079547.P7532772594480450677

namespace A079547

/-- `∑[record[∑[n]*char[n²]]]` -/
def P7532772594480450677.Spec : Prop :=
  ∀ n, (P7532772594480450677.a n : ℤ) = A079547 (n + 1)

end A079547

/-!
# A079548: Array T(m,n) = n*phi(m) - phi(mn) (m,n >= 1), read by antidiagonals.

The programs for A079548, there is no canonical definition to state claims against.
-/

/-! ## A079548.P18411311867381769541

`A079549(gcd(A010816(n), A038722(n+1)))`
-/

namespace A079548.P18411311867381769541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079549 (Int.gcd (A010816 n) (A038722 (n + 1)))

end

end A079548.P18411311867381769541

/-! ## A079548.P5797369622348424722

`A079549(∑[char[∑[n]]]²-n)`
-/

namespace A079548.P5797369622348424722
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079549 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 - n)

end

end A079548.P5797369622348424722

/-! ## A079548.P3145047240879212462

`A057427(n)*A079549(A038722(n+1))`
-/

namespace A079548.P3145047240879212462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n * A079549 (A038722 (n + 1)).toNat

end

end A079548.P3145047240879212462

/-! ## A079548.P16841071612928764425

`lcm(A033999(n), A079549(A038722(n+1)))`
-/

namespace A079548.P16841071612928764425
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A079549 (A038722 (n + 1)).toNat)

end

end A079548.P16841071612928764425

/-! ## A079548.P6834940708966476034

`A005117(abs((-1)^n))*A079549(A038722(n+1))`
-/

namespace A079548.P6834940708966476034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005117 |(-1) ^ n|.toNat * A079549 (A038722 (n + 1)).toNat

end

end A079548.P6834940708966476034

/-!
# A079549: Array T(m,n) = m*phi(n) - phi(mn) (m,n >= 1), read by antidiagonals.

The programs for A079549, there is no canonical definition to state claims against.
-/

/-! ## A079549.P449703087101090100

`A079548(∑[char[∑[n]]]²-n)`
-/

namespace A079549.P449703087101090100
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079548 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 - n)

end

end A079549.P449703087101090100

/-! ## A079549.P529083967878740671

`A057427(n)*A079548(A038722(n+1))`
-/

namespace A079549.P529083967878740671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n * A079548 (A038722 (n + 1)).toNat

end

end A079549.P529083967878740671

/-! ## A079549.P1717086805798821997

`lcm(A033999(n), A079548(A038722(n+1)))`
-/

namespace A079549.P1717086805798821997
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A079548 (A038722 (n + 1)).toNat)

end

end A079549.P1717086805798821997

/-! ## A079549.P5843890825902179924

`A000045(gcd(n, n+1))*A079548(A038722(n+1))`
-/

namespace A079549.P5843890825902179924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (Nat.gcd n (n + 1)) * A079548 (A038722 (n + 1)).toNat

end

end A079549.P5843890825902179924

/-! ## A079549.P13717868462686802566

`A000005((-1)^(2*n))*A079548(A038722(n+1))`
-/

namespace A079549.P13717868462686802566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 ((-1) ^ (2 * n)).toNat * A079548 (A038722 (n + 1)).toNat

end

end A079549.P13717868462686802566

/-! ## A079549.P17236786320375019025

`A079548(A038722(n+1))+A008683(27*A000040(n+1))`
-/

namespace A079549.P17236786320375019025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079548 (A038722 (n + 1)).toNat + A008683 (27 * A000040 (n + 1)).toNat

end

end A079549.P17236786320375019025

/-! ## A079549.P11669809572652636165

`and(A078485(n), A079548(A038722(n+1)))`
-/

namespace A079549.P11669809572652636165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A078485 n) (A079548 (A038722 (n + 1)).toNat)

end

end A079549.P11669809572652636165

/-!
# A079551: a(n) = Sum_{primes p <= n} d(p-1), where d() = A000005.

The programs for A079551, the canonical program `A079551.P1605593596487844367` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A079551 has offset 0).

The definition of A079551 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A079551.P5399729527698897018

`A079552(A230980(n))`
-/

namespace A079551.P5399729527698897018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079552 (A230980 n).toNat

end

end A079551.P5399729527698897018

namespace A079551

/-- `A079552(A230980(n))` -/
def P5399729527698897018.Spec : Prop :=
  ∀ n, P5399729527698897018.a n = A079551 n

end A079551

/-! ## A079551.P6553542166286978124

`A079552(A095117(n)-n)`
-/

namespace A079551.P6553542166286978124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079552 (A095117 n - (n : ℤ)).toNat

end

end A079551.P6553542166286978124

namespace A079551

/-- `A079552(A095117(n)-n)` -/
def P6553542166286978124.Spec : Prop :=
  ∀ n, P6553542166286978124.a n = A079551 n

end A079551

/-! ## A079551.P13183338238823251188

`A079552(∑[char[A000040(n+1)]])`
-/

namespace A079551.P13183338238823251188
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079552 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A079551.P13183338238823251188

namespace A079551

/-- `A079552(∑[char[A000040(n+1)]])` -/
def P13183338238823251188.Spec : Prop :=
  ∀ n, P13183338238823251188.a n = A079551 n

end A079551

/-! ## A079551.P16919836988755844722

`A079552(∑[char[A020482(n+2)]])`
-/

namespace A079551.P16919836988755844722
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020482 (n + 2)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079552 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A079551.P16919836988755844722

namespace A079551

/-- `A079552(∑[char[A020482(n+2)]])` -/
def P16919836988755844722.Spec : Prop :=
  ∀ n, P16919836988755844722.a n = A079551 n

end A079551

/-! ## A079551.P1605593596487844367

`∑[char[A000040(n+1)]*A274010(n)]`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A079551

/-- `∑[char[A000040(n+1)]*A274010(n)]` -/
def P1605593596487844367.Spec : Prop :=
  ∀ n, P1605593596487844367.a n = A079551 n

theorem P1605593596487844367.correct : P1605593596487844367.Spec := by
  intro n
  simp only [A079551]

end A079551

/-! ## A079551.P5245441651851159216

`A079552(A000720(n+1-A010051(n+1)))`
-/

namespace A079551.P5245441651851159216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079552 (A000720 ((n + 1 : ℤ) - A010051 (n + 1)).toNat).toNat

end

end A079551.P5245441651851159216

namespace A079551

/-- `A079552(A000720(n+1-A010051(n+1)))` -/
def P5245441651851159216.Spec : Prop :=
  ∀ n, P5245441651851159216.a n = A079551 n

end A079551

/-!
# A079552: Record values in A079551.

The programs for A079552, the canonical program `A079552.P14816231143647664336` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A079552 has offset 0).

The definition of A079552 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000005, A006093, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A079552.P14816231143647664336

`A000005(A006093(n))+a(n-1)` with `a(0)=0`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A079552

/-- `A000005(A006093(n))+a(n-1)` -/
def P14816231143647664336.Spec : Prop :=
  ∀ n, P14816231143647664336.a n = A079552 n

theorem P14816231143647664336.correct : P14816231143647664336.Spec := by
  intro n
  simp only [A079552]

end A079552

/-! ## A079552.P16533730905849038179

`∑[A008328(n+1)]-A008328(n+1)`
-/

namespace A079552.P16533730905849038179
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008328 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A008328 (n + 1)

end

end A079552.P16533730905849038179

namespace A079552

/-- `∑[A008328(n+1)]-A008328(n+1)` -/
def P16533730905849038179.Spec : Prop :=
  ∀ n, P16533730905849038179.a n = A079552 n

end A079552

/-! ## A079552.P8494272818784537059

`A000005(A000040(n)-1)+a(n-1)` with `a(0)=0`
-/

namespace A079552.P8494272818784537059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A000005 (A000040 n - 1).toNat + a (n - 1)

end

end A079552.P8494272818784537059

namespace A079552

/-- `A000005(A000040(n)-1)+a(n-1)` -/
def P8494272818784537059.Spec : Prop :=
  ∀ n, P8494272818784537059.a n = A079552 n

end A079552

/-! ## A079552.P8932609642949380724

`A000005(eq[n+1, A006530(n+1)])+a(n-1)` with `a(0)=0`
-/

namespace A079552.P8932609642949380724
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A000005 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n) + a (n - 1)

end

end A079552.P8932609642949380724

namespace A079552

/-- `A000005(eq[n+1, A006530(n+1)])+a(n-1)` -/
def P8932609642949380724.Spec : Prop :=
  ∀ n, P8932609642949380724.a n = A079552 n

end A079552

/-! ## A079552.P18276019563182380548

`∑[∏{e}[record[A060681(n+1)], #+1]]-1`
-/

namespace A079552.P18276019563182380548
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060681 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (SequenceMachineLib.nth (fun j => ∀ l < j, f3 l < f3 j) n)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n).natAbs, (Nat.factorization (f2 n).natAbs p + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 1

end

end A079552.P18276019563182380548

namespace A079552

/-- `∑[∏{e}[record[A060681(n+1)], #+1]]-1` -/
def P18276019563182380548.Spec : Prop :=
  ∀ n, P18276019563182380548.a n = A079552 n

end A079552

/-! ## A079552.P4902983877819744829

`A079551(A162800(n))`
-/

namespace A079552.P4902983877819744829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079551 (A162800 n).toNat

end

end A079552.P4902983877819744829

namespace A079552

/-- `A079551(A162800(n))` -/
def P4902983877819744829.Spec : Prop :=
  ∀ n, P4902983877819744829.a n = A079552 n

end A079552

/-! ## A079552.P1068178602773192701

`A079551(A008578(n+1))`
-/

namespace A079552.P1068178602773192701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079551 (A008578 (n + 1)).toNat

end

end A079552.P1068178602773192701

namespace A079552

/-- `A079551(A008578(n+1))` -/
def P1068178602773192701.Spec : Prop :=
  ∀ n, P1068178602773192701.a n = A079552 n

end A079552

/-! ## A079552.P3339363997930968868

`A079551(A065514(n+1))`
-/

namespace A079552.P3339363997930968868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079551 (A065514 (n + 1)).toNat

end

end A079552.P3339363997930968868

namespace A079552

/-- `A079551(A065514(n+1))` -/
def P3339363997930968868.Spec : Prop :=
  ∀ n, P3339363997930968868.a n = A079552 n

end A079552

/-! ## A079552.P7012007189516880072

`A079551(A182986(n+1))`
-/

namespace A079552.P7012007189516880072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079551 (A182986 (n + 1)).toNat

end

end A079552.P7012007189516880072

namespace A079552

/-- `A079551(A182986(n+1))` -/
def P7012007189516880072.Spec : Prop :=
  ∀ n, P7012007189516880072.a n = A079552 n

end A079552

/-! ## A079552.P14161530383130896198

`A079551(A028815(n)-1)`
-/

namespace A079552.P14161530383130896198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079551 (A028815 n - 1).toNat

end

end A079552.P14161530383130896198

namespace A079552

/-- `A079551(A028815(n)-1)` -/
def P14161530383130896198.Spec : Prop :=
  ∀ n, P14161530383130896198.a n = A079552 n

end A079552

/-! ## A079552.P1590958490634136449

`A079551(A158611(n+2))`
-/

namespace A079552.P1590958490634136449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079551 (A158611 (n + 2)).toNat

end

end A079552.P1590958490634136449

namespace A079552

/-- `A079551(A158611(n+2))` -/
def P1590958490634136449.Spec : Prop :=
  ∀ n, P1590958490634136449.a n = A079552 n

end A079552

/-! ## A079552.P10756494745216801415

`A079551(A335402(n+2))`
-/

namespace A079552.P10756494745216801415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079551 (A335402 (n + 2)).toNat

end

end A079552.P10756494745216801415

namespace A079552

/-- `A079551(A335402(n+2))` -/
def P10756494745216801415.Spec : Prop :=
  ∀ n, P10756494745216801415.a n = A079552 n

end A079552

/-! ## A079552.P13546593340475551317

`A079551(record[A006530(n+1)])`
-/

namespace A079552.P13546593340475551317
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079551 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A079552.P13546593340475551317

namespace A079552

/-- `A079551(record[A006530(n+1)])` -/
def P13546593340475551317.Spec : Prop :=
  ∀ n, P13546593340475551317.a n = A079552 n

end A079552

/-! ## A079552.P8609629695688058389

`A079551(record[A014963(n+1)])`
-/

namespace A079552.P8609629695688058389
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079551 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A079552.P8609629695688058389

namespace A079552

/-- `A079551(record[A014963(n+1)])` -/
def P8609629695688058389.Spec : Prop :=
  ∀ n, P8609629695688058389.a n = A079552 n

end A079552

/-! ## A079552.P11524215450792822872

`A079551(record[A020639(n+1)])`
-/

namespace A079552.P11524215450792822872
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079551 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A079552.P11524215450792822872

namespace A079552

/-- `A079551(record[A020639(n+1)])` -/
def P11524215450792822872.Spec : Prop :=
  ∀ n, P11524215450792822872.a n = A079552 n

end A079552

/-! ## A079552.P14073607631820441301

`A079551(A001747(n+1)/2)`
-/

namespace A079552.P14073607631820441301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079551 (SequenceMachineLib.roundAway ((A001747 (n + 1) : ℚ) / 2)).toNat

end

end A079552.P14073607631820441301

namespace A079552

/-- `A079551(A001747(n+1)/2)` -/
def P14073607631820441301.Spec : Prop :=
  ∀ n, P14073607631820441301.a n = A079552 n

end A079552

/-! ## A079552.P9435592585255929979

`record[gcd(A079551(n+1), A079551(n))]`
-/

namespace A079552.P9435592585255929979
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A079551 (n + 1)) (A079551 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A079552.P9435592585255929979

namespace A079552

/-- `record[gcd(A079551(n+1), A079551(n))]` -/
def P9435592585255929979.Spec : Prop :=
  ∀ n, (P9435592585255929979.a n : ℤ) = A079552 n

end A079552

/-! ## A079552.P218541712078550254

`A000005(eq[n+1, A014963(n+1)])+a(n-1)` with `a(0)=0`
-/

namespace A079552.P218541712078550254
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A000005 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n) + a (n - 1)

end

end A079552.P218541712078550254

namespace A079552

/-- `A000005(eq[n+1, A014963(n+1)])+a(n-1)` -/
def P218541712078550254.Spec : Prop :=
  ∀ n, P218541712078550254.a n = A079552 n

end A079552

/-! ## A079552.P5773114081833640163

`A079551(A006093(n+1))`
-/

namespace A079552.P5773114081833640163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079551 (A006093 (n + 1)).toNat

end

end A079552.P5773114081833640163

namespace A079552

/-- `A079551(A006093(n+1))` -/
def P5773114081833640163.Spec : Prop :=
  ∀ n, P5773114081833640163.a n = A079552 n

end A079552

/-! ## A079552.P13008949902947947932

`A079551(A112925(n+1))`
-/

namespace A079552.P13008949902947947932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079551 (A112925 (n + 1)).toNat

end

end A079552.P13008949902947947932

namespace A079552

/-- `A079551(A112925(n+1))` -/
def P13008949902947947932.Spec : Prop :=
  ∀ n, P13008949902947947932.a n = A079552 n

end A079552

/-!
# A079553: a(n) = floor( d(n^2) / d(n) ), where d() = A000005.

The programs for A079553, the canonical program `A079553.P850658963084864876` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A079553 has offset 1).

The definition of A079553 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A079553.P850658963084864876

`floor(A048691(n+1)/Δ[A006218(n)])`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A079553

/-- `floor(A048691(n+1)/Δ[A006218(n)])` -/
def P850658963084864876.Spec : Prop :=
  ∀ n, P850658963084864876.a n = A079553 (n + 1)

theorem P850658963084864876.correct : P850658963084864876.Spec := by
  intro n
  simp only [A079553, Nat.add_sub_cancel]

end A079553

/-! ## A079553.P17048094309297800944

`floor(A048691(n+1)/A000005(n+1))`
-/

namespace A079553.P17048094309297800944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A048691 (n + 1) : ℚ) / (A000005 (n + 1) : ℚ)⌋

end

end A079553.P17048094309297800944

namespace A079553

/-- `floor(A048691(n+1)/A000005(n+1))` -/
def P17048094309297800944.Spec : Prop :=
  ∀ n, P17048094309297800944.a n = A079553 (n + 1)

end A079553

/-! ## A079553.P4710054144467628790

`floor(A048691(n+1)/sqrt(A035116(n+1)))`
-/

namespace A079553.P4710054144467628790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A048691 (n + 1) : ℝ) / Real.sqrt (A035116 (n + 1) : ℝ)⌋

end

end A079553.P4710054144467628790

namespace A079553

/-- `floor(A048691(n+1)/sqrt(A035116(n+1)))` -/
def P4710054144467628790.Spec : Prop :=
  ∀ n, P4710054144467628790.a n = A079553 (n + 1)

end A079553

/-! ## A079553.P575022533409034180

`floor(A048691(n+1)/(A032741(n+1)+1))`
-/

namespace A079553.P575022533409034180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A048691 (n + 1) : ℚ) / (A032741 (n + 1) + 1 : ℚ)⌋

end

end A079553.P575022533409034180

namespace A079553

/-- `floor(A048691(n+1)/(A032741(n+1)+1))` -/
def P575022533409034180.Spec : Prop :=
  ∀ n, P575022533409034180.a n = A079553 (n + 1)

end A079553

/-! ## A079553.P12912939622679800921

`floor(A068074(4*(n+1))/A000005(n+1))`
-/

namespace A079553.P12912939622679800921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A068074 (4 * (n + 1)) : ℚ) / (A000005 (n + 1) : ℚ)⌋

end

end A079553.P12912939622679800921

namespace A079553

/-- `floor(A068074(4*(n+1))/A000005(n+1))` -/
def P12912939622679800921.Spec : Prop :=
  ∀ n, P12912939622679800921.a n = A079553 (n + 1)

end A079553

/-! ## A079553.P9256999682998098800

`floor(A000005((n+1)²)/A000005(n+1))`
-/

namespace A079553.P9256999682998098800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A000005 ((n + 1) ^ 2) : ℚ) / (A000005 (n + 1) : ℚ)⌋

end

end A079553.P9256999682998098800

namespace A079553

/-- `floor(A000005((n+1)²)/A000005(n+1))` -/
def P9256999682998098800.Spec : Prop :=
  ∀ n, P9256999682998098800.a n = A079553 (n + 1)

end A079553

/-! ## A079553.P17951278404461948227

`A010553(A000196(2*A179926(n+1)))`
-/

namespace A079553.P17951278404461948227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010553 (A000196 (2 * A179926 (n + 1)).toNat).toNat

end

end A079553.P17951278404461948227

namespace A079553

/-- `A010553(A000196(2*A179926(n+1)))` -/
def P17951278404461948227.Spec : Prop :=
  ∀ n, P17951278404461948227.a n = A079553 (n + 1)

end A079553

/-! ## A079553.P12916467507246235622

`A001221(C(5, 5^(n+1))+n+1)`
-/

namespace A079553.P12916467507246235622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (Nat.choose 5 (5 ^ (n + 1)) + (n + 1))

end

end A079553.P12916467507246235622

namespace A079553

/-- `A001221(C(5, 5^(n+1))+n+1)` -/
def P12916467507246235622.Spec : Prop :=
  ∀ n, P12916467507246235622.a n = A079553 (n + 1)

end A079553

/-! ## A079553.P16166927403445762374

`gcd(A001221(n+1), A003948(n))`
-/

namespace A079553.P16166927403445762374
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A001221 (n + 1)) (A003948 n)

end

end A079553.P16166927403445762374

namespace A079553

/-- `gcd(A001221(n+1), A003948(n))` -/
def P16166927403445762374.Spec : Prop :=
  ∀ n, (P16166927403445762374.a n : ℤ) = A079553 (n + 1)

end A079553

/-! ## A079553.P1081849882299957030

`A005361(A000005(A007947(A285769(n+1))))`
-/

namespace A079553.P1081849882299957030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005361 (A000005 (A007947 (A285769 (n + 1)).toNat).toNat).toNat

end

end A079553.P1081849882299957030

namespace A079553

/-- `A005361(A000005(A007947(A285769(n+1))))` -/
def P1081849882299957030.Spec : Prop :=
  ∀ n, P1081849882299957030.a n = A079553 (n + 1)

end A079553

/-! ## A079553.P9672330545184524906

`A001221(A004736(C(n, 2)+1)+1)`
-/

namespace A079553.P9672330545184524906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A004736 (Nat.choose n 2 + 1) + 1).toNat

end

end A079553.P9672330545184524906

namespace A079553

/-- `A001221(A004736(C(n, 2)+1)+1)` -/
def P9672330545184524906.Spec : Prop :=
  ∀ n, P9672330545184524906.a n = A079553 (n + 1)

end A079553

/-! ## A079553.P16976514636401626138

`A001221(A004736(∑[n-1]+2)+1)`
-/

namespace A079553.P16976514636401626138
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A004736 (∑ j ∈ Finset.range (n + 1), f1 j + 2).toNat + 1).toNat

end

end A079553.P16976514636401626138

namespace A079553

/-- `A001221(A004736(∑[n-1]+2)+1)` -/
def P16976514636401626138.Spec : Prop :=
  ∀ n, P16976514636401626138.a n = A079553 (n + 1)

end A079553

/-! ## A079553.P16707103016161244106

`and(11, A001221(A002024(C(n, 2)+1)+1))`
-/

namespace A079553.P16707103016161244106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 11 (A001221 (A002024 (Nat.choose n 2 + 1) + 1).toNat)

end

end A079553.P16707103016161244106

namespace A079553

/-- `and(11, A001221(A002024(C(n, 2)+1)+1))` -/
def P16707103016161244106.Spec : Prop :=
  ∀ n, P16707103016161244106.a n = A079553 (n + 1)

end A079553

/-! ## A079553.P3197261160216281191

`A001221(A002024(C(n+1, 2)-n+1)+1)`
-/

namespace A079553.P3197261160216281191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A002024 ((Nat.choose (n + 1) 2 : ℤ) - (n : ℤ) + 1).toNat + 1).toNat

end

end A079553.P3197261160216281191

namespace A079553

/-- `A001221(A002024(C(n+1, 2)-n+1)+1)` -/
def P3197261160216281191.Spec : Prop :=
  ∀ n, P3197261160216281191.a n = A079553 (n + 1)

end A079553

/-! ## A079553.P10848910000068164773

`A001222(∏{p}[A004736(C(n+1, 2)-n+1)+1, #])`
-/

namespace A079553.P10848910000068164773
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 ((Nat.choose (n + 1) 2 : ℤ) - (n : ℤ) + 1).toNat + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, p)

end

end A079553.P10848910000068164773

namespace A079553

/-- `A001222(∏{p}[A004736(C(n+1, 2)-n+1)+1, #])` -/
def P10848910000068164773.Spec : Prop :=
  ∀ n, P10848910000068164773.a n = A079553 (n + 1)

end A079553

/-! ## A079553.P14536498069960316133

`A001221(A102515(∑[n]))`
-/

namespace A079553.P14536498069960316133
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A102515 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A079553.P14536498069960316133

namespace A079553

/-- `A001221(A102515(∑[n]))` -/
def P14536498069960316133.Spec : Prop :=
  ∀ n, P14536498069960316133.a n = A079553 (n + 1)

end A079553

/-! ## A079553.P8645956728558826738

`A001221(A140668((n+1)²))`
-/

namespace A079553.P8645956728558826738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A140668 ((n + 1) ^ 2)).toNat

end

end A079553.P8645956728558826738

namespace A079553

/-- `A001221(A140668((n+1)²))` -/
def P8645956728558826738.Spec : Prop :=
  ∀ n, P8645956728558826738.a n = A079553 (n + 1)

end A079553

/-! ## A079553.P17820202976782273849

`A001221(A002024(∑[xor(1, n)]+1))`
-/

namespace A079553.P17820202976782273849
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A002024 (∑ j ∈ Finset.range (n + 1), f1 j + 1)).toNat

end

end A079553.P17820202976782273849

namespace A079553

/-- `A001221(A002024(∑[xor(1, n)]+1))` -/
def P17820202976782273849.Spec : Prop :=
  ∀ n, P17820202976782273849.a n = A079553 (n + 1)

end A079553

/-! ## A079553.P6490449406599956390

`A001221(A004277(∑[n])+n+1)`
-/

namespace A079553.P6490449406599956390
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A004277 (∑ j ∈ Finset.range (n + 1), f1 j) + (n : ℤ) + 1).toNat

end

end A079553.P6490449406599956390

namespace A079553

/-- `A001221(A004277(∑[n])+n+1)` -/
def P6490449406599956390.Spec : Prop :=
  ∀ n, P6490449406599956390.a n = A079553 (n + 1)

end A079553

/-! ## A079553.P14433549541926369199

`A287847(A055998(n)-n)+A001221(n+1)`
-/

namespace A079553.P14433549541926369199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287847 (A055998 n - (n : ℤ)).toNat + A001221 (n + 1)

end

end A079553.P14433549541926369199

namespace A079553

/-- `A287847(A055998(n)-n)+A001221(n+1)` -/
def P14433549541926369199.Spec : Prop :=
  ∀ n, P14433549541926369199.a n = A079553 (n + 1)

end A079553

/-!
# A079554: a(n) = floor( d(n) * log(n) / 2 ), where d() = A000005.

The programs for A079554, the canonical program `A079554.P8662581786073618916` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A079554 has offset 1).

The definition of A079554 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A079554.P8662581786073618916

`floor(∑{d}[n+1, log(#)])`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A079554

/-- `floor(∑{d}[n+1, log(#)])` -/
def P8662581786073618916.Spec : Prop :=
  ∀ n, P8662581786073618916.a n = A079554 (n + 1)

theorem P8662581786073618916.correct : P8662581786073618916.Spec := by
  intro n
  simp only [A079554, Nat.add_sub_cancel]

end A079554

/-! ## A079554.P5238812786631381680

`floor(log(∏{d}[n+1, #]))`
-/

namespace A079554.P5238812786631381680
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.log ((∏ d ∈ Nat.divisors (f1 n), d : ℕ) : ℝ)⌋

end

end A079554.P5238812786631381680

namespace A079554

/-- `floor(log(∏{d}[n+1, #]))` -/
def P5238812786631381680.Spec : Prop :=
  ∀ n, P5238812786631381680.a n = A079554 (n + 1)

end A079554

/-! ## A079554.P534541990859851237

`-ceil(log(acot(∏{d}[n+1, #])))`
-/

namespace A079554.P534541990859851237
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -⌈Real.log (SequenceMachineLib.acot ((∏ d ∈ Nat.divisors (f1 n), d : ℕ) : ℝ))⌉

end

end A079554.P534541990859851237

namespace A079554

/-- `-ceil(log(acot(∏{d}[n+1, #])))` -/
def P534541990859851237.Spec : Prop :=
  ∀ n, P534541990859851237.a n = A079554 (n + 1)

end A079554

/-! ## A079554.P17388289108668378462

`floor(log(abs(∏{d}[2*n-(n-1), -#])))`
-/

namespace A079554.P17388289108668378462
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) - ((n : ℤ) - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.log ((|∏ d ∈ Nat.divisors (f1 n).natAbs, (-(d : ℤ))| : ℤ) : ℝ)⌋

end

end A079554.P17388289108668378462

namespace A079554

/-- `floor(log(abs(∏{d}[2*n-(n-1), -#])))` -/
def P17388289108668378462.Spec : Prop :=
  ∀ n, P17388289108668378462.a n = A079554 (n + 1)

end A079554

/-! ## A079554.P6356393863190533769

`floor(log(A007955(n+1)))`
-/

namespace A079554.P6356393863190533769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.log (A007955 (n + 1) : ℝ)⌋

end

end A079554.P6356393863190533769

namespace A079554

/-- `floor(log(A007955(n+1)))` -/
def P6356393863190533769.Spec : Prop :=
  ∀ n, P6356393863190533769.a n = A079554 (n + 1)

end A079554

/-! ## A079554.P3486882885145905472

`floor(log(sqrt(n+1)^A000005(n+1)))`
-/

namespace A079554.P3486882885145905472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.log (Real.sqrt (n + 1 : ℝ) ^ (A000005 (n + 1) : ℤ))⌋

end

end A079554.P3486882885145905472

namespace A079554

/-- `floor(log(sqrt(n+1)^A000005(n+1)))` -/
def P3486882885145905472.Spec : Prop :=
  ∀ n, P3486882885145905472.a n = A079554 (n + 1)

end A079554

/-! ## A079554.P1529343502805594934

`floor(log((n+1)^(A000005(2*n+1-n)/2)))`
-/

namespace A079554.P1529343502805594934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.log ((n + 1 : ℝ) ^ ((A000005 (2 * n + 1 - n) : ℚ) / 2 : ℝ))⌋

end

end A079554.P1529343502805594934

namespace A079554

/-- `floor(log((n+1)^(A000005(2*n+1-n)/2)))` -/
def P1529343502805594934.Spec : Prop :=
  ∀ n, P1529343502805594934.a n = A079554 (n + 1)

end A079554

/-! ## A079554.P18206283893496967191

`floor(log(sqrt(A062758(n+1))))`
-/

namespace A079554.P18206283893496967191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.log (Real.sqrt (A062758 (n + 1) : ℝ))⌋

end

end A079554.P18206283893496967191

namespace A079554

/-- `floor(log(sqrt(A062758(n+1))))` -/
def P18206283893496967191.Spec : Prop :=
  ∀ n, P18206283893496967191.a n = A079554 (n + 1)

end A079554

/-! ## A079554.P4325373896011947104

`floor(log(sqrt(A174937(n+1))))`
-/

namespace A079554.P4325373896011947104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.log (Real.sqrt (A174937 (n + 1) : ℝ))⌋

end

end A079554.P4325373896011947104

namespace A079554

/-- `floor(log(sqrt(A174937(n+1))))` -/
def P4325373896011947104.Spec : Prop :=
  ∀ n, P4325373896011947104.a n = A079554 (n + 1)

end A079554

/-!
# A079556: a(1) = a(2) = 2; for n>2, a(n) = a(n-2)^a(n-1).

The programs for A079556, the canonical program `A079556.P8156326235085895054` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A079556 has offset 1).

The definition of A079556 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-2)^a(n-1)` (program `A079556.P8156326235085895054`, by `A079556.P8156326235085895054.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A079556.P8156326235085895054

`a(n-2)^a(n-1)` with `a(0)=2, a(1)=2`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A079556

/-- `a(n-2)^a(n-1)` -/
def P8156326235085895054.Spec : Prop :=
  ∀ n, (P8156326235085895054.a n : ℤ) = A079556 (n + 1)

theorem P8156326235085895054.correct : P8156326235085895054.Spec := by
  intro n
  simp only [A079556, Nat.add_sub_cancel]

end A079556

/-!
# A079557: Numerator for global rational approximations.

The programs for A079557, there is no canonical definition to state claims against.
-/

/-! ## A079557.P14907445978133693114

`A328504(n)+A123229(A200404(n+1))`
-/

namespace A079557.P14907445978133693114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328504 n + A123229 (A200404 (n + 1)).toNat

end

end A079557.P14907445978133693114

/-!
# A079559: Number of partitions of n into distinct parts of the form 2^j-1, j=1,2,....

The programs for A079559, the canonical program `A079559.P11581718101175624469` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A079559 has offset 0).

The definition of A079559 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A079559.P11581718101175624469

`A043545(n+1)*a(n+1-A053644(n+1))` with `a(0)=1`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A079559

/-- `A043545(n+1)*a(n+1-A053644(n+1))` -/
def P11581718101175624469.Spec : Prop :=
  ∀ n, P11581718101175624469.a n = A079559 n

theorem P11581718101175624469.correct : P11581718101175624469.Spec := by
  intro n
  simp only [A079559]

end A079559

/-! ## A079559.P17531964893914538984

`char[a(floor(n/2))+n]` with `a(0)=0`
-/

namespace A079559.P17531964893914538984
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0] fun n f1 =>
  f1 ⌊(n : ℚ) / 2⌋.toNat + n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A079559.P17531964893914538984

namespace A079559

/-- `char[a(floor(n/2))+n]` -/
def P17531964893914538984.Spec : Prop :=
  ∀ n, (P17531964893914538984.a n : ℤ) = A079559 n

end A079559

/-! ## A079559.P9915536310569400441

`char[abs(a(n-1)+val(n, 2))]` with `a(0)=0`
-/

namespace A079559.P9915536310569400441
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0] fun n f1 =>
  f1 (n - 1) + SequenceMachineLib.valuation n 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A079559.P9915536310569400441

namespace A079559

/-- `char[abs(a(n-1)+val(n, 2))]` -/
def P9915536310569400441.Spec : Prop :=
  ∀ n, (P9915536310569400441.a n : ℤ) = A079559 n

end A079559

/-! ## A079559.P2166703193568422419

`char[-(a(n-1)+val(n, 2))]` with `a(0)=0`
-/

namespace A079559.P2166703193568422419
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f1 =>
  -(f1 (n - 1) + (SequenceMachineLib.valuation n 2 : ℤ))

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A079559.P2166703193568422419

namespace A079559

/-- `char[-(a(n-1)+val(n, 2))]` -/
def P2166703193568422419.Spec : Prop :=
  ∀ n, (P2166703193568422419.a n : ℤ) = A079559 n

end A079559

/-! ## A079559.P7929473646957223828

`char[floor(a(n-1)+val(n, 2))]` with `a(0)=0`

`floor` is left out, it is the identity on integers.
-/

namespace A079559.P7929473646957223828
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0] fun n f1 =>
  f1 (n - 1) + SequenceMachineLib.valuation n 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A079559.P7929473646957223828

namespace A079559

/-- `char[floor(a(n-1)+val(n, 2))]` -/
def P7929473646957223828.Spec : Prop :=
  ∀ n, (P7929473646957223828.a n : ℤ) = A079559 n

end A079559

/-! ## A079559.P11310243109369094579

`char[ceil(a(n-1)+val(n, 2))]` with `a(0)=0`

`ceil` is left out, it is the identity on integers.
-/

namespace A079559.P11310243109369094579
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0] fun n f1 =>
  f1 (n - 1) + SequenceMachineLib.valuation n 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A079559.P11310243109369094579

namespace A079559

/-- `char[ceil(a(n-1)+val(n, 2))]` -/
def P11310243109369094579.Spec : Prop :=
  ∀ n, (P11310243109369094579.a n : ℤ) = A079559 n

end A079559

/-! ## A079559.P17563883606145581534

`char[round(a(n-1)+val(n, 2))]` with `a(0)=0`

`round` is left out, it is the identity on integers.
-/

namespace A079559.P17563883606145581534
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0] fun n f1 =>
  f1 (n - 1) + SequenceMachineLib.valuation n 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A079559.P17563883606145581534

namespace A079559

/-- `char[round(a(n-1)+val(n, 2))]` -/
def P17563883606145581534.Spec : Prop :=
  ∀ n, (P17563883606145581534.a n : ℤ) = A079559 n

end A079559

/-! ## A079559.P4049191907656633920

`char[record[val(n, 2)-a(n-1)]]` with `a(0)=0`
-/

namespace A079559.P4049191907656633920
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f2 =>
  (SequenceMachineLib.valuation n 2 : ℤ) - f2 (n - 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A079559.P4049191907656633920

namespace A079559

/-- `char[record[val(n, 2)-a(n-1)]]` -/
def P4049191907656633920.Spec : Prop :=
  ∀ n, (P4049191907656633920.a n : ℤ) = A079559 n

end A079559

/-! ## A079559.P10861364696592493193

`char[A005187(n)]`
-/

namespace A079559.P10861364696592493193
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005187 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A079559.P10861364696592493193

namespace A079559

/-- `char[A005187(n)]` -/
def P10861364696592493193.Spec : Prop :=
  ∀ n, (P10861364696592493193.a n : ℤ) = A079559 n

end A079559

/-! ## A079559.P17495268600163590706

`A082386(n)%2`
-/

namespace A079559.P17495268600163590706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A082386 n) 2

end

end A079559.P17495268600163590706

namespace A079559

/-- `A082386(n)%2` -/
def P17495268600163590706.Spec : Prop :=
  ∀ n, P17495268600163590706.a n = A079559 n

end A079559

/-! ## A079559.P2646454888756292269

`A151550(n)%2`
-/

namespace A079559.P2646454888756292269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A151550 n) 2

end

end A079559.P2646454888756292269

namespace A079559

/-- `A151550(n)%2` -/
def P2646454888756292269.Spec : Prop :=
  ∀ n, P2646454888756292269.a n = A079559 n

end A079559

/-! ## A079559.P7660972331456394269

`A151555(n)%2`
-/

namespace A079559.P7660972331456394269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A151555 n) 2

end

end A079559.P7660972331456394269

namespace A079559

/-- `A151555(n)%2` -/
def P7660972331456394269.Spec : Prop :=
  ∀ n, P7660972331456394269.a n = A079559 n

end A079559

/-! ## A079559.P14600859218990284360

`A151862(n)%2`
-/

namespace A079559.P14600859218990284360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A151862 n) 2

end

end A079559.P14600859218990284360

namespace A079559

/-- `A151862(n)%2` -/
def P14600859218990284360.Spec : Prop :=
  ∀ n, P14600859218990284360.a n = A079559 n

end A079559

/-! ## A079559.P5955026853720327933

`A151866(n)%2`
-/

namespace A079559.P5955026853720327933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A151866 n) 2

end

end A079559.P5955026853720327933

namespace A079559

/-- `A151866(n)%2` -/
def P5955026853720327933.Spec : Prop :=
  ∀ n, P5955026853720327933.a n = A079559 n

end A079559

/-! ## A079559.P8060474362288642167

`floor(sqrt(A257265(n)))`
-/

namespace A079559.P8060474362288642167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A257265 n)

end

end A079559.P8060474362288642167

namespace A079559

/-- `floor(sqrt(A257265(n)))` -/
def P8060474362288642167.Spec : Prop :=
  ∀ n, P8060474362288642167.a n = A079559 n

end A079559

/-! ## A079559.P1569514292263861463

`char[A155689(n+1)]`
-/

namespace A079559.P1569514292263861463
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155689 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A079559.P1569514292263861463

namespace A079559

/-- `char[A155689(n+1)]` -/
def P1569514292263861463.Spec : Prop :=
  ∀ n, (P1569514292263861463.a n : ℤ) = A079559 n

end A079559

/-! ## A079559.P10939501891656318007

`char[A101925(n)-1]`
-/

namespace A079559.P10939501891656318007
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101925 n - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A079559.P10939501891656318007

namespace A079559

/-- `char[A101925(n)-1]` -/
def P10939501891656318007.Spec : Prop :=
  ∀ n, (P10939501891656318007.a n : ℤ) = A079559 n

end A079559

/-! ## A079559.P12618202586829104388

`and(1, ∑[A152980(n)])`
-/

namespace A079559.P12618202586829104388
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152980 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A079559.P12618202586829104388

namespace A079559

/-- `and(1, ∑[A152980(n)])` -/
def P12618202586829104388.Spec : Prop :=
  ∀ n, P12618202586829104388.a n = A079559 n

end A079559

/-! ## A079559.P11385520536691238676

`char[A004134(n)-n]`
-/

namespace A079559.P11385520536691238676
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004134 n - (n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A079559.P11385520536691238676

namespace A079559

/-- `char[A004134(n)-n]` -/
def P11385520536691238676.Spec : Prop :=
  ∀ n, (P11385520536691238676.a n : ℤ) = A079559 n

end A079559

/-!
# A079560: Number of divisors of n-th term of Look and Say Sequence A005150.

The programs for A079560, there is no canonical definition to state claims against.
-/

/-! ## A079560.P13628952271656003963

`2^A079562(n+1)`
-/

namespace A079560.P13628952271656003963
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A079562 (n + 1) : ℤ)

end

end A079560.P13628952271656003963

/-! ## A079560.P256071475200810634

`A059268(A079562(n+1)+∑[n])`
-/

namespace A079560.P256071475200810634
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059268 (A079562 (n + 1) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)).toNat

end

end A079560.P256071475200810634

/-! ## A079560.P17076480252559922965

`A000079(abs(abs(A079562(n+1)-n)-n))`
-/

namespace A079560.P17076480252559922965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 |(|A079562 (n + 1) - (n : ℤ)| - (n : ℤ))|.toNat

end

end A079560.P17076480252559922965

/-! ## A079560.P15238300674894476345

`A000079(A079562(n+1)+A061858(n))`
-/

namespace A079560.P15238300674894476345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (A079562 (n + 1) + A061858 n).toNat

end

end A079560.P15238300674894476345

/-! ## A079560.P7629407209495403333

`A000079(A105514(n)+A079562(n+1))`
-/

namespace A079560.P7629407209495403333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (A105514 n + A079562 (n + 1)).toNat

end

end A079560.P7629407209495403333

/-!
# A079561: Sum of divisors of n-th term of Look and Say Sequence A005150.

The programs for A079561, there is no canonical definition to state claims against.
-/

/-! ## A079561.P9185030458454868484

`∑{d}[A005150(n+1), #]`
-/

namespace A079561.P9185030458454868484
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005150 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, d

end

end A079561.P9185030458454868484

/-! ## A079561.P7759394805546707347

`record[∑{d}[A005150(A221057(n)), #]]`
-/

namespace A079561.P7759394805546707347
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005150 (A221057 n).toNat

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n).natAbs, d

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A079561.P7759394805546707347

/-!
# A079562: Number of distinct prime factors of n-th term of Look and Say Sequence A005150.

The programs for A079562, there is no canonical definition to state claims against.
-/

/-! ## A079562.P6729820740763076319

`log2(A079560(n+1))`
-/

namespace A079562.P6729820740763076319
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A079560 (n + 1) : ℝ)

end

end A079562.P6729820740763076319

/-! ## A079562.P3065483266939924989

`A000120(A079560(n+1)-1)`
-/

namespace A079562.P3065483266939924989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A079560 (n + 1) - 1).toNat

end

end A079562.P3065483266939924989

/-! ## A079562.P17418748414918003842

`A002487(A079560(n+1)-1)`
-/

namespace A079562.P17418748414918003842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002487 (A079560 (n + 1) - 1).toNat

end

end A079562.P17418748414918003842

/-! ## A079562.P1874956081694955858

`A136167(2*A079560(n+1))`
-/

namespace A079562.P1874956081694955858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136167 (2 * A079560 (n + 1)).toNat

end

end A079562.P1874956081694955858

/-! ## A079562.P14848819835646556290

`A140748(2*A079560(n+1))`
-/

namespace A079562.P14848819835646556290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140748 (2 * A079560 (n + 1)).toNat

end

end A079562.P14848819835646556290

/-!
# A079563: a(n) = a(n,m) = Sum_{k=0..n} binomial(m*k,k)*binomial(m*(n-k),n-k) for m=7.

The programs for A079563, there is no canonical definition to state claims against.
-/

/-! ## A079563.P3423820796199647796

`A358050(A052905(n+4)+n+5)`
-/

namespace A079563.P3423820796199647796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358050 (A052905 (n + 4) + (n + 5 : ℤ)).toNat

end

end A079563.P3423820796199647796

/-!
# A079564: Number of unlabeled connected simple graphs on n vertices with no induced subgraphs isomorphic to a P5 or complement of a P5 (P5 = path on 5 vertices.).

The programs for A079564, there is no canonical definition to state claims against.
-/

/-! ## A079564.P5205489285199763892

`A140357(A289599(n+1))`
-/

namespace A079564.P5205489285199763892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140357 (A289599 (n + 1)).toNat

end

end A079564.P5205489285199763892

/-! ## A079564.P1262944981089642698

`A008611(A008611(∑[floor((n+1)^(n/2+1))]))`
-/

namespace A079564.P1262944981089642698
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n + 1 : ℝ) ^ ((n : ℚ) / 2 + 1 : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008611 (A008611 (∑ j ∈ Finset.range (n + 1), f1 j).toNat).toNat

end

end A079564.P1262944981089642698

/-! ## A079564.P2193279829839567389

`A334708(A001006(n))+A001168(n)`
-/

namespace A079564.P2193279829839567389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334708 (A001006 n).toNat + A001168 n

end

end A079564.P2193279829839567389

/-!
# A079565: Number of unlabeled and connected graphs on n vertices which are either bipartite or co-bipartite.

The programs for A079565, there is no canonical definition to state claims against.
-/

/-! ## A079565.P11351362182895197768

`A157271(p?[A157301(n+2)])`
-/

namespace A079565.P11351362182895197768
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157301 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157271 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A079565.P11351362182895197768

/-! ## A079565.P13508081858809378844

`A364656(n)%A316980(n)+1`
-/

namespace A079565.P13508081858809378844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A364656 n) (A316980 n) + 1

end

end A079565.P13508081858809378844

/-!
# A079566: Number of unlabeled, connected graphs on n vertices which have no induced subgraph isomorphic to a C4 (cycle on 4 vertices.)

The programs for A079566, there is no canonical definition to state claims against.
-/

/-! ## A079566.P17545650772580989439

`A244991(A159603(n))-A159603(n)`
-/

namespace A079566.P17545650772580989439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244991 (A159603 n).toNat - A159603 n

end

end A079566.P17545650772580989439

/-! ## A079566.P12933884052506483614

`A345673(C(n, ∏{e}[n+1, #]))`
-/

namespace A079566.P12933884052506483614
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345673 (Nat.choose n (∏ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p))

end

end A079566.P12933884052506483614

/-! ## A079566.P15969747792013819042

`A345673(lcm(n, ceil(xor(1, n)/4)))`
-/

namespace A079566.P15969747792013819042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345673 (Int.lcm (n : ℤ) ⌈(Nat.xor 1 n : ℚ) / 4⌉)

end

end A079566.P15969747792013819042

/-!
# A079568: Number of unlabeled, connected graphs on n nodes which have no induced subgraph isomorphic to a P5, P5-bar or C5 and are not bipartite nor cobipartite nor split and are primes.

The programs for A079568, there is no canonical definition to state claims against.
-/

/-! ## A079568.P15947551436258209819

`lcm(2, A165190(A132785(n)))`
-/

namespace A079568.P15947551436258209819
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A165190 (A132785 n).toNat)

end

end A079568.P15947551436258209819

/-! ## A079568.P17612723073872004366

`A025443(A135401(n)+A003422(n))`
-/

namespace A079568.P17612723073872004366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025443 (A135401 n + A003422 n).toNat

end

end A079568.P17612723073872004366

/-! ## A079568.P4606985085591906722

`and(A000918(n), A364670(A324736(n)))`
-/

namespace A079568.P4606985085591906722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A000918 n) (A364670 (A324736 n).toNat)

end

end A079568.P4606985085591906722

/-! ## A079568.P6953826399098747586

`A001222(n+3)*A165190(A132785(n))`
-/

namespace A079568.P6953826399098747586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 3) * A165190 (A132785 n).toNat

end

end A079568.P6953826399098747586

/-! ## A079568.P8062927823440452928

`A001221(A017017(n))*A165190(A132785(n))`
-/

namespace A079568.P8062927823440452928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A017017 n).toNat * A165190 (A132785 n).toNat

end

end A079568.P8062927823440452928

/-!
# A079569: Number of unlabeled, connected graphs on n vertices which have no induced subgraph isomorphic to a P5 and are chordal and prime.

The programs for A079569, there is no canonical definition to state claims against.
-/

/-! ## A079569.P11994004629031279103

`A152467(A286472(n+1)+A068718(n))`
-/

namespace A079569.P11994004629031279103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152467 (A286472 (n + 1) + A068718 n).toNat

end

end A079569.P11994004629031279103

/-! ## A079569.P5793054108531865184

`A033099(A000110(n)-A326466(3*n+2))`
-/

namespace A079569.P5793054108531865184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033099 (A000110 n - A326466 (3 * n + 2)).toNat

end

end A079569.P5793054108531865184

/-!
# A079570: Number of unlabeled, connected graphs on n vertices which have no induced subgraph isomorphic to a cricket graph (open bow-tie graph).

The programs for A079570, there is no canonical definition to state claims against.
-/

/-! ## A079570.P9025896818925797828

`A008615(∑[n*a(n-1)+1])` with `a(0)=2`
-/

namespace A079570.P9025896818925797828
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [2] fun n f1 =>
  n * f1 (n - 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008615 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A079570.P9025896818925797828

/-! ## A079570.P17848660515376770717

`A097992(∑[n*(a(n-1)+1)])` with `a(0)=2, a(1)=2`
-/

namespace A079570.P17848660515376770717
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [2, 2] fun n f1 =>
  n * (f1 (n - 1) + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097992 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A079570.P17848660515376770717

/-! ## A079570.P2339198465422574432

`A008615(∑[1-floor(-n*a(n-1))])` with `a(0)=2`

`floor` is left out, it is the identity on integers.
-/

namespace A079570.P2339198465422574432
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [2] fun n f1 =>
  1 - (-((n : ℤ) * f1 (n - 1)))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008615 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A079570.P2339198465422574432

/-!
# A079571: Number of unlabeled, connected graphs on n vertices whose complements are bipartite.

The programs for A079571, there is no canonical definition to state claims against.
-/

/-! ## A079571.P3294599691715565467

`A033995(n)-floor(n/2)`
-/

namespace A079571.P3294599691715565467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033995 n - ⌊(n : ℚ) / 2⌋

end

end A079571.P3294599691715565467

/-! ## A079571.P3088445564393161223

`(2*n)%2+A033995(n)-A004526(n)`
-/

namespace A079571.P3088445564393161223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((2 * n % 2 : ℕ) : ℤ) + (A033995 n - A004526 n)

end

end A079571.P3088445564393161223

/-! ## A079571.P18385359746270526219

`A076278(round(sqrt(n²+1)))+1-A004526(n)`
-/

namespace A079571.P18385359746270526219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076278 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat + 1 - A004526 n

end

end A079571.P18385359746270526219

/-! ## A079571.P14440137182063234270

`A076278(round(sqrt(n²+1)))+1-A002265(2*n)`
-/

namespace A079571.P14440137182063234270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076278 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat + 1 - A002265 (2 * n)

end

end A079571.P14440137182063234270

/-! ## A079571.P9728354549259195557

`(A033995(n)-A004526(n))/A007318(val(n+1, 5))`
-/

namespace A079571.P9728354549259195557
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A033995 n - A004526 n : ℚ) / (A007318 (SequenceMachineLib.valuation (n + 1) 5) : ℚ)

end

end A079571.P9728354549259195557

/-!
# A079572: Number of unlabeled, connected graphs on n vertices with no induced subgraph isomorphic to a paw, where the paw is the graph on 4 vertices, 3 of which form a triangle and the 4th vertex is adjacent to exactly one of those 3.

The programs for A079572, there is no canonical definition to state claims against.
-/

/-! ## A079572.P4704516224113077333

`A024607(n+1)+A004250(n+1)`
-/

namespace A079572.P4704516224113077333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024607 (n + 1) + A004250 (n + 1)

end

end A079572.P4704516224113077333

/-!
# A079573: Number of unlabeled, connected graphs on n vertices with no induced subgraph isomorphic to a diamond, where a diamond is the graph on four vertices formed by removing an edge from the complete graph K4.

The programs for A079573, there is no canonical definition to state claims against.
-/

/-! ## A079573.P10869885178232725077

`A363981(A042695(n))`
-/

namespace A079573.P10869885178232725077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363981 (A042695 n).toNat

end

end A079573.P10869885178232725077

/-! ## A079573.P256213345358412465

`A352695(A382373(n))`
-/

namespace A079573.P256213345358412465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352695 (A382373 n).toNat

end

end A079573.P256213345358412465

/-! ## A079573.P6531084561333970545

`A191225(A150293(n+1))`
-/

namespace A079573.P6531084561333970545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191225 (A150293 (n + 1)).toNat

end

end A079573.P6531084561333970545

/-!
# A079574: Number of unlabeled, connected graphs on n vertices with no induced subgraph isomorphic to a K_4, where a K_4 is the complete graph on four vertices.

The programs for A079574, there is no canonical definition to state claims against.
-/

/-! ## A079574.P1300058922619630804

`A001349(n+1)-A243244(n+1)`
-/

namespace A079574.P1300058922619630804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001349 (n + 1) - A243244 (n + 1)

end

end A079574.P1300058922619630804

/-! ## A079574.P5967894864695964370

`A201922(A000124(n))-A243244(n+1)`
-/

namespace A079574.P5967894864695964370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201922 (A000124 n).toNat - A243244 (n + 1)

end

end A079574.P5967894864695964370

/-! ## A079574.P9956421485784664119

`A024607(n+1)+A128240(n+1)-A243244(n+1)`
-/

namespace A079574.P9956421485784664119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024607 (n + 1) + (A128240 (n + 1) - A243244 (n + 1))

end

end A079574.P9956421485784664119

/-! ## A079574.P8836576335535719565

`A003049(n+1)+A158007(n+1)-A243244(n+1)`
-/

namespace A079574.P8836576335535719565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003049 (n + 1) + (A158007 (n + 1) - A243244 (n + 1))

end

end A079574.P8836576335535719565

/-! ## A079574.P14152059068580641634

`A048192(n+1)+A241843(n+1)-A243244(n+1)`
-/

namespace A079574.P14152059068580641634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048192 (n + 1) + (A241843 (n + 1) - A243244 (n + 1))

end

end A079574.P14152059068580641634

/-!
# A079575: Number of unlabeled, connected graphs on n vertices with no induced subgraph isomorphic to a bull-graph.

The programs for A079575, there is no canonical definition to state claims against.
-/

/-! ## A079575.P15029529886644555526

`A359209(A237770(n))+A279555(n)`
-/

namespace A079575.P15029529886644555526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359209 (A237770 n).toNat + A279555 n

end

end A079575.P15029529886644555526

/-! ## A079575.P10157494644772290437

`A008621(xor(A000522(n), A328432(n)))`
-/

namespace A079575.P10157494644772290437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008621 (Int.xor (A000522 n) (A328432 n)).toNat

end

end A079575.P10157494644772290437

/-! ## A079575.P1580944034862775870

`A318813(n+1)+A003141(A326179(n))`
-/

namespace A079575.P1580944034862775870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318813 (n + 1) + A003141 (A326179 n).toNat

end

end A079575.P1580944034862775870

/-!
# A079576: Number of unlabeled, connected graphs on n vertices that have no induced subgraph isomorphic to a gem, where a gem is a 4-path with a fifth vertex adjacent to all four of the vertices in the path.

The programs for A079576, there is no canonical definition to state claims against.
-/

/-! ## A079576.P15584006682655043291

`A156253(A112975(n!))`
-/

namespace A079576.P15584006682655043291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156253 (A112975 (Nat.factorial n)).toNat

end

end A079576.P15584006682655043291

/-! ## A079576.P17203859740736080749

`A008616(7*A192744(n))`
-/

namespace A079576.P17203859740736080749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008616 (7 * A192744 n).toNat

end

end A079576.P17203859740736080749

/-! ## A079576.P17789859790352869996

`A109497(ceil(sqrt(A376041(n))))`
-/

namespace A079576.P17789859790352869996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109497 ⌈Real.sqrt (A376041 n : ℝ)⌉.toNat

end

end A079576.P17789859790352869996

/-!
# A079577: Number of unlabeled, connected graphs on n vertices that have no induced subgraph isomorphic to a bull, a P5 or a P5-bar.

The programs for A079577, there is no canonical definition to state claims against.
-/

/-! ## A079577.P4522883806132395372

`Δ[A230418(A276852(n))]`
-/

namespace A079577.P4522883806132395372
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230418 (A276852 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A079577.P4522883806132395372

/-! ## A079577.P13839771239228989835

`A105516(A001834(n))+(n+1)/∏{p}[n+1, #]`
-/

namespace A079577.P13839771239228989835
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A105516 (A001834 n).toNat : ℚ) + (n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ)

end

end A079577.P13839771239228989835

/-! ## A079577.P6482594214393975112

`A345913(A006252(n))+A000110(n)`
-/

namespace A079577.P6482594214393975112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345913 (A006252 n).toNat + A000110 n

end

end A079577.P6482594214393975112

/-!
# A079578: Least number coprime to n and greater than n+1.

The programs for A079578, there is no canonical definition to state claims against.
-/

/-! ## A079578.P4331244808807704960

`n+1+A053669(n+1)`
-/

namespace A079578.P4331244808807704960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) + A053669 (n + 1)

end

end A079578.P4331244808807704960

/-! ## A079578.P15918153571425682100

`(A116934(n+1)-(n+1))/A116933(n+1)`
-/

namespace A079578.P15918153571425682100
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A116934 (n + 1) - (n + 1 : ℤ) : ℚ) / (A116933 (n + 1) : ℚ)

end

end A079578.P15918153571425682100

/-! ## A079578.P6968693604798680437

`A071222(n)+2+n`
-/

namespace A079578.P6968693604798680437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071222 n + 2 + (n : ℤ)

end

end A079578.P6968693604798680437

/-! ## A079578.P8235688537418692079

`n+1+sqrt(A089090(n+1))`
-/

namespace A079578.P8235688537418692079
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℝ) + Real.sqrt (A089090 (n + 1) : ℝ)

end

end A079578.P8235688537418692079

/-! ## A079578.P12319683892608510773

`A087560(n+1)/(n+1)+n+1`
-/

namespace A079578.P12319683892608510773
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A087560 (n + 1) : ℚ) / (n + 1 : ℚ) + (n + 1 : ℚ)

end

end A079578.P12319683892608510773

/-! ## A079578.P12507711940661473963

`n+1+A020639(A328571(n+1))`
-/

namespace A079578.P12507711940661473963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) + A020639 (A328571 (n + 1)).toNat

end

end A079578.P12507711940661473963

/-! ## A079578.P17383280347326954410

`A003557(A382248(n+1))+n+1`
-/

namespace A079578.P17383280347326954410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003557 (A382248 (n + 1)).toNat + (n + 1 : ℤ)

end

end A079578.P17383280347326954410

/-! ## A079578.P15994092009773773581

`A020639(A381805(n+1))+n+1`
-/

namespace A079578.P15994092009773773581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A381805 (n + 1)).toNat + (n + 1 : ℤ)

end

end A079578.P15994092009773773581

/-! ## A079578.P13941022078922183641

`A020639(A382767(n+1))+n+1`
-/

namespace A079578.P13941022078922183641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A382767 (n + 1)).toNat + (n + 1 : ℤ)

end

end A079578.P13941022078922183641

/-! ## A079578.P3665194048674093668

`A346563(n+1)+A061853(n+1)`
-/

namespace A079578.P3665194048674093668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346563 (n + 1) + A061853 (n + 1)

end

end A079578.P3665194048674093668

/-! ## A079578.P8993418450438859145

`A117366(A329900(n+1))+1+n`
-/

namespace A079578.P8993418450438859145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117366 (A329900 (n + 1)).toNat + 1 + (n : ℤ)

end

end A079578.P8993418450438859145

/-! ## A079578.P7980480817600809319

`A000203(A096014(n+1)/A020639(n+1))+n`
-/

namespace A079578.P7980480817600809319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (SequenceMachineLib.roundAway ((A096014 (n + 1) : ℚ) / (A020639 (n + 1) : ℚ))).toNat + (n : ℤ)

end

end A079578.P7980480817600809319

/-! ## A079578.P8009400430239790806

`A346563(A071222(n)+n)`
-/

namespace A079578.P8009400430239790806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346563 (A071222 n + (n : ℤ)).toNat

end

end A079578.P8009400430239790806

/-! ## A079578.P17440899947125210792

`A004442(A053669(n+1)+n)`
-/

namespace A079578.P17440899947125210792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004442 (A053669 (n + 1) + (n : ℤ)).toNat

end

end A079578.P17440899947125210792

/-! ## A079578.P877431390338023227

`A085230(A053669(n+1)+n)`
-/

namespace A079578.P877431390338023227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085230 (A053669 (n + 1) + (n : ℤ)).toNat

end

end A079578.P877431390338023227

/-! ## A079578.P17057037589710032709

`A109613(A053669(n+1)+n)`
-/

namespace A079578.P17057037589710032709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109613 (A053669 (n + 1) + (n : ℤ)).toNat

end

end A079578.P17057037589710032709

/-! ## A079578.P10672552398619154617

`A077664(∑[n]+2)`
-/

namespace A079578.P10672552398619154617
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077664 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A079578.P10672552398619154617

/-! ## A079578.P7078425021665257024

`A007978((n+1)²)+1+n`
-/

namespace A079578.P7078425021665257024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007978 ((n + 1) ^ 2) + 1 + (n : ℤ)

end

end A079578.P7078425021665257024

/-! ## A079578.P14014986829268999345

`A214720((n+1)²)+n+1`
-/

namespace A079578.P14014986829268999345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214720 ((n + 1) ^ 2) + (n + 1 : ℤ)

end

end A079578.P14014986829268999345

/-! ## A079578.P12051435949691934876

`A258115((n+1)²)+n+1`
-/

namespace A079578.P12051435949691934876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258115 ((n + 1) ^ 2) + (n + 1 : ℤ)

end

end A079578.P12051435949691934876

/-!
# A079579: Totally multiplicative with p -> (p-1)*p, p prime.

The programs for A079579, the canonical program `A079579.P7960359697621555488` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A079579 has offset 1).

The definition of A079579 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003958, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A079579.P7960359697621555488

`(n+1)*A003958(n+1)`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A079579

/-- `(n+1)*A003958(n+1)` -/
def P7960359697621555488.Spec : Prop :=
  ∀ n, P7960359697621555488.a n = A079579 (n + 1)

theorem P7960359697621555488.correct : P7960359697621555488.Spec := by
  intro n
  simp only [A079579, Nat.add_sub_cancel]

end A079579

/-! ## A079579.P3333496743680436994

`abs((n+1)*A125131(n+1))`
-/

namespace A079579.P3333496743680436994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(n + 1 : ℤ) * A125131 (n + 1)|

end

end A079579.P3333496743680436994

namespace A079579

/-- `abs((n+1)*A125131(n+1))` -/
def P3333496743680436994.Spec : Prop :=
  ∀ n, P3333496743680436994.a n = A079579 (n + 1)

end A079579

/-! ## A079579.P14432130492347265754

`(n+1)*sqrt(A167343(n+1))`
-/

namespace A079579.P14432130492347265754
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℝ) * Real.sqrt (A167343 (n + 1) : ℝ)

end

end A079579.P14432130492347265754

namespace A079579

/-- `(n+1)*sqrt(A167343(n+1))` -/
def P14432130492347265754.Spec : Prop :=
  ∀ n, P14432130492347265754.a n = (A079579 (n + 1) : ℝ)

end A079579

/-! ## A079579.P9804811280827328986

`(n+1)*(n+1-A322582(n+1))`
-/

namespace A079579.P9804811280827328986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * ((n + 1 : ℤ) - A322582 (n + 1))

end

end A079579.P9804811280827328986

namespace A079579

/-- `(n+1)*(n+1-A322582(n+1))` -/
def P9804811280827328986.Spec : Prop :=
  ∀ n, P9804811280827328986.a n = A079579 (n + 1)

end A079579

/-! ## A079579.P10262374586961439188

`A061019(n+1)*A125131(n+1)`
-/

namespace A079579.P10262374586961439188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061019 (n + 1) * A125131 (n + 1)

end

end A079579.P10262374586961439188

namespace A079579

/-- `A061019(n+1)*A125131(n+1)` -/
def P10262374586961439188.Spec : Prop :=
  ∀ n, P10262374586961439188.a n = A079579 (n + 1)

end A079579

/-! ## A079579.P11857862254084934015

`(n+1)*A333787(A000265(n+1))`
-/

namespace A079579.P11857862254084934015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A333787 (A000265 (n + 1)).toNat

end

end A079579.P11857862254084934015

namespace A079579

/-- `(n+1)*A333787(A000265(n+1))` -/
def P11857862254084934015.Spec : Prop :=
  ∀ n, P11857862254084934015.a n = A079579 (n + 1)

end A079579

/-! ## A079579.P17231096181448079466

`(n+1)*A339905(A064989(n+1))`
-/

namespace A079579.P17231096181448079466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A339905 (A064989 (n + 1)).toNat

end

end A079579.P17231096181448079466

namespace A079579

/-- `(n+1)*A339905(A064989(n+1))` -/
def P17231096181448079466.Spec : Prop :=
  ∀ n, P17231096181448079466.a n = A079579 (n + 1)

end A079579

/-! ## A079579.P15767085755873665337

`abs(A325126(n+1))*Δ[A002088(n)]`
-/

namespace A079579.P15767085755873665337
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002088 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A325126 (n + 1)| * (f1 (n + 1) - f1 n)

end

end A079579.P15767085755873665337

namespace A079579

/-- `abs(A325126(n+1))*Δ[A002088(n)]` -/
def P15767085755873665337.Spec : Prop :=
  ∀ n, P15767085755873665337.a n = A079579 (n + 1)

end A079579

/-! ## A079579.P3802980662835800712

`abs(A325126(n+1))*Δ[A005728(n)]`
-/

namespace A079579.P3802980662835800712
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005728 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A325126 (n + 1)| * (f1 (n + 1) - f1 n)

end

end A079579.P3802980662835800712

namespace A079579

/-- `abs(A325126(n+1))*Δ[A005728(n)]` -/
def P3802980662835800712.Spec : Prop :=
  ∀ n, P3802980662835800712.a n = A079579 (n + 1)

end A079579

/-! ## A079579.P2320460201141116736

`abs(A000010(n+1)*A325126(n+1))`
-/

namespace A079579.P2320460201141116736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A000010 (n + 1) * A325126 (n + 1)|

end

end A079579.P2320460201141116736

namespace A079579

/-- `abs(A000010(n+1)*A325126(n+1))` -/
def P2320460201141116736.Spec : Prop :=
  ∀ n, P2320460201141116736.a n = A079579 (n + 1)

end A079579

/-! ## A079579.P11346180476883943039

`(n+1)*∏{d}[n+1, A000010(A014963(#))]`
-/

namespace A079579.P11346180476883943039
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (∏ d ∈ Nat.divisors (f1 n), A000010 (A014963 d).toNat)

end

end A079579.P11346180476883943039

namespace A079579

/-- `(n+1)*∏{d}[n+1, A000010(A014963(#))]` -/
def P11346180476883943039.Spec : Prop :=
  ∀ n, P11346180476883943039.a n = A079579 (n + 1)

end A079579

/-! ## A079579.P11388651633378231396

`A000010(n+1)*A007947(n+1)*A326297(n+1)`
-/

namespace A079579.P11388651633378231396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1) * A007947 (n + 1) * A326297 (n + 1)

end

end A079579.P11388651633378231396

namespace A079579

/-- `A000010(n+1)*A007947(n+1)*A326297(n+1)` -/
def P11388651633378231396.Spec : Prop :=
  ∀ n, P11388651633378231396.a n = A079579 (n + 1)

end A079579

/-! ## A079579.P529719932012221428

`A166624(n+1)/A165824(n+1)²*A166633(n+1)`
-/

namespace A079579.P529719932012221428
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A166624 (n + 1) : ℚ) / (A165824 (n + 1) ^ 2 : ℚ) * (A166633 (n + 1) : ℚ)

end

end A079579.P529719932012221428

namespace A079579

/-- `A166624(n+1)/A165824(n+1)²*A166633(n+1)` -/
def P529719932012221428.Spec : Prop :=
  ∀ n, P529719932012221428.a n = (A079579 (n + 1) : ℚ)

end A079579

/-! ## A079579.P2865925410718595896

`A166625(n+1)/A165825(n+1)²*A166634(n+1)`
-/

namespace A079579.P2865925410718595896
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A166625 (n + 1) : ℚ) / (A165825 (n + 1) ^ 2 : ℚ) * (A166634 (n + 1) : ℚ)

end

end A079579.P2865925410718595896

namespace A079579

/-- `A166625(n+1)/A165825(n+1)²*A166634(n+1)` -/
def P2865925410718595896.Spec : Prop :=
  ∀ n, P2865925410718595896.a n = (A079579 (n + 1) : ℚ)

end A079579

/-! ## A079579.P2413767673076139337

`A161151(2*n+1)*A333787(n+1)`
-/

namespace A079579.P2413767673076139337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161151 (2 * n + 1) * A333787 (n + 1)

end

end A079579.P2413767673076139337

namespace A079579

/-- `A161151(2*n+1)*A333787(n+1)` -/
def P2413767673076139337.Spec : Prop :=
  ∀ n, P2413767673076139337.a n = A079579 (n + 1)

end A079579

/-! ## A079579.P12311224775479164797

`A003958(A008619(2*n))*A008619(2*n)`
-/

namespace A079579.P12311224775479164797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003958 (A008619 (2 * n)).toNat * A008619 (2 * n)

end

end A079579.P12311224775479164797

namespace A079579

/-- `A003958(A008619(2*n))*A008619(2*n)` -/
def P12311224775479164797.Spec : Prop :=
  ∀ n, P12311224775479164797.a n = A079579 (n + 1)

end A079579

/-! ## A079579.P12511011688604761342

`A003958(A028242(2*n))*A028242(2*n)`
-/

namespace A079579.P12511011688604761342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003958 (A028242 (2 * n)).toNat * A028242 (2 * n)

end

end A079579.P12511011688604761342

namespace A079579

/-- `A003958(A028242(2*n))*A028242(2*n)` -/
def P12511011688604761342.Spec : Prop :=
  ∀ n, P12511011688604761342.a n = A079579 (n + 1)

end A079579

/-! ## A079579.P13827239954629761222

`A003958(A242112(2*n))*A242112(2*n)`
-/

namespace A079579.P13827239954629761222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003958 (A242112 (2 * n)).toNat * A242112 (2 * n)

end

end A079579.P13827239954629761222

namespace A079579

/-- `A003958(A242112(2*n))*A242112(2*n)` -/
def P13827239954629761222.Spec : Prop :=
  ∀ n, P13827239954629761222.a n = A079579 (n + 1)

end A079579

/-! ## A079579.P5982340259009671382

`abs(A325126(n+1))*Δ[A206297(n+1)/2]`
-/

namespace A079579.P5982340259009671382
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A206297 (n + 1) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (|A325126 (n + 1)| : ℚ) * (f1 (n + 1) - f1 n)

end

end A079579.P5982340259009671382

namespace A079579

/-- `abs(A325126(n+1))*Δ[A206297(n+1)/2]` -/
def P5982340259009671382.Spec : Prop :=
  ∀ n, P5982340259009671382.a n = (A079579 (n + 1) : ℚ)

end A079579

/-! ## A079579.P9486675906167046559

`(n+1)*A003963(A290641(n+1))`
-/

namespace A079579.P9486675906167046559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A003963 (A290641 (n + 1)).toNat

end

end A079579.P9486675906167046559

namespace A079579

/-- `(n+1)*A003963(A290641(n+1))` -/
def P9486675906167046559.Spec : Prop :=
  ∀ n, P9486675906167046559.a n = A079579 (n + 1)

end A079579

/-!
# A079580: a(n)= Sum_{d divides n} a(abs(n/d-d)).

The programs for A079580, there is no canonical definition to state claims against.
-/

/-! ## A079580.P705980611964813259

`A194640(A347575(n)+A274230(n))`
-/

namespace A079580.P705980611964813259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194640 (A347575 (n + 36) + A274230 n).toNat

end

end A079580.P705980611964813259

/-! ## A079580.P7344360059958631826

`A194640(A194632(n+3)-A027193(n))`
-/

namespace A079580.P7344360059958631826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194640 (A194632 (n + 3) - A027193 n).toNat

end

end A079580.P7344360059958631826

/-! ## A079580.P11468214057101144962

`A229219(A063032(n+1))`
-/

namespace A079580.P11468214057101144962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229219 (A063032 (n + 1)).toNat

end

end A079580.P11468214057101144962

/-! ## A079580.P14634391167918936227

`A005041(A318226(n+1))`
-/

namespace A079580.P14634391167918936227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005041 (A318226 (n + 1)).toNat

end

end A079580.P14634391167918936227

/-! ## A079580.P14779879316657068544

`A172471(A221834(n+1)²)`
-/

namespace A079580.P14779879316657068544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172471 (A221834 (n + 1) ^ 2).toNat

end

end A079580.P14779879316657068544

/-!
# A079581: Consider pairs (r,s) such that the polynomial (x^r+1) divides (x^s+1) and 1 <= r < s. This sequence gives the s values; A079673 gives the r values.

The programs for A079581, the canonical program `A079581.P5471739432654139222` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A079581 has offset 1).

The definition of A079581 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A079581.P5471739432654139222

`comp[∑[∑{d}[n, #%2]]]-n`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A079581

/-- `comp[∑[∑{d}[n, #%2]]]-n` -/
def P5471739432654139222.Spec : Prop :=
  ∀ n, P5471739432654139222.a n = A079581 (n + 1)

theorem P5471739432654139222.correct : P5471739432654139222.Spec := by
  intro n
  simp only [A079581, Nat.add_sub_cancel]

end A079581

/-! ## A079581.P9525725967771106311

`comp[∑[∑{d}[n, and(1, #)]]]-n`
-/

namespace A079581.P9525725967771106311
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f3 n), Nat.land 1 d

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)

end

end A079581.P9525725967771106311

namespace A079581

/-- `comp[∑[∑{d}[n, and(1, #)]]]-n` -/
def P9525725967771106311.Spec : Prop :=
  ∀ n, P9525725967771106311.a n = A079581 (n + 1)

end A079581

/-! ## A079581.P4166138257499455632

`comp[∑[∑{d}[n, 2-gcd(2, #)]]]-n`
-/

namespace A079581.P4166138257499455632
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f3 n), (2 - (Nat.gcd 2 d : ℤ))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) - (n : ℤ)

end

end A079581.P4166138257499455632

namespace A079581

/-- `comp[∑[∑{d}[n, 2-gcd(2, #)]]]-n` -/
def P4166138257499455632.Spec : Prop :=
  ∀ n, P4166138257499455632.a n = A079581 (n + 1)

end A079581

/-! ## A079581.P9910154779954346173

`comp[A060831(n)]-n`
-/

namespace A079581.P9910154779954346173
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060831 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) - (n : ℤ)

end

end A079581.P9910154779954346173

namespace A079581

/-- `comp[A060831(n)]-n` -/
def P9910154779954346173.Spec : Prop :=
  ∀ n, P9910154779954346173.a n = A079581 (n + 1)

end A079581

/-! ## A079581.P13952756389283433476

`comp[A248517(n)+n]-n`
-/

namespace A079581.P13952756389283433476
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248517 n + (n : ℤ)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) - (n : ℤ)

end

end A079581.P13952756389283433476

namespace A079581

/-- `comp[A248517(n)+n]-n` -/
def P13952756389283433476.Spec : Prop :=
  ∀ n, P13952756389283433476.a n = A079581 (n + 1)

end A079581

/-! ## A079581.P14021925636126075395

`comp[∑[A069283(n)]+n]-n`
-/

namespace A079581.P14021925636126075395
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069283 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + (n : ℤ)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) - (n : ℤ)

end

end A079581.P14021925636126075395

namespace A079581

/-- `comp[∑[A069283(n)]+n]-n` -/
def P14021925636126075395.Spec : Prop :=
  ∀ n, P14021925636126075395.a n = A079581 (n + 1)

end A079581

/-! ## A079581.P9559106714969189812

`comp[A091954(2*n)+a(n-1)]-n+1` with `a(0)=0, a(1)=0`
-/

namespace A079581.P9559106714969189812
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 0] fun n f1 =>
  A091954 (2 * n) + f1 (n - 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) - (n : ℤ) + 1

end

end A079581.P9559106714969189812

namespace A079581

/-- `comp[A091954(2*n)+a(n-1)]-n+1` -/
def P9559106714969189812.Spec : Prop :=
  ∀ n, P9559106714969189812.a n = A079581 (n + 1)

end A079581

/-! ## A079581.P1474298849639780424

`A057716(∑[char[A248517(n)]])`
-/

namespace A079581.P1474298849639780424
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248517 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057716 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A079581.P1474298849639780424

namespace A079581

/-- `A057716(∑[char[A248517(n)]])` -/
def P1474298849639780424.Spec : Prop :=
  ∀ n, P1474298849639780424.a n = A079581 (n + 1)

end A079581

/-! ## A079581.P10787315692765970416

`lt[1, A182469(n+1)]-n`
-/

namespace A079581.P10787315692765970416
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182469 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n : ℤ) - (n : ℤ)

end

end A079581.P10787315692765970416

namespace A079581

/-- `lt[1, A182469(n+1)]-n` -/
def P10787315692765970416.Spec : Prop :=
  ∀ n, P10787315692765970416.a n = A079581 (n + 1)

end A079581

/-!
# A079582: Least positive k such that the distance from k to closest prime = n.

The programs for A079582, there is no canonical definition to state claims against.
-/

/-! ## A079582.P17865696653545180105

`A226005(A055671(A000217(n)))+A077019(n)`
-/

namespace A079582.P17865696653545180105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226005 (A055671 (A000217 n).toNat).toNat + A077019 n

end

end A079582.P17865696653545180105

/-! ## A079582.P2473591320439750972

`A336364(∑[n+1])`
-/

namespace A079582.P2473591320439750972
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336364 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A079582.P2473591320439750972

/-! ## A079582.P488544072842112003

`gcd(A077019(n), A331739(A240764(n+1)))`
-/

namespace A079582.P488544072842112003
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A077019 n) (A331739 (A240764 (n + 1)).toNat)

end

end A079582.P488544072842112003

/-!
# A079583: a(n) = 3*2^n - n - 2.

The programs for A079583, the canonical program `A079583.P11090677438827926540` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A079583 has offset 0).

The definition of A079583 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A079583.P11090677438827926540

`2*a(n-1)+n` with `a(0)=1`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A079583

/-- `2*a(n-1)+n` -/
def P11090677438827926540.Spec : Prop :=
  ∀ n, (P11090677438827926540.a n : ℤ) = A079583 n

theorem P11090677438827926540.correct : P11090677438827926540.Spec := by
  intro n
  simp only [A079583]

end A079583

/-! ## A079583.P15287790639116556123

`A000225(n)+A000325(n+1)`
-/

namespace A079583.P15287790639116556123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 n + A000325 (n + 1)

end

end A079583.P15287790639116556123

namespace A079583

/-- `A000225(n)+A000325(n+1)` -/
def P15287790639116556123.Spec : Prop :=
  ∀ n, P15287790639116556123.a n = A079583 n

end A079583

/-! ## A079583.P3468360669887757556

`(A227712(n)-1)/3`
-/

namespace A079583.P3468360669887757556
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A227712 n - 1 : ℚ) / 3

end

end A079583.P3468360669887757556

namespace A079583

/-- `(A227712(n)-1)/3` -/
def P3468360669887757556.Spec : Prop :=
  ∀ n, P3468360669887757556.a n = (A079583 n : ℚ)

end A079583

/-! ## A079583.P12447071836725944732

`3*2^n-(n+2)`
-/

namespace A079583.P12447071836725944732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 * 2 ^ n : ℤ) - (n + 2 : ℤ)

end

end A079583.P12447071836725944732

namespace A079583

/-- `3*2^n-(n+2)` -/
def P12447071836725944732.Spec : Prop :=
  ∀ n, P12447071836725944732.a n = A079583 n

theorem P12447071836725944732.correct : P12447071836725944732.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A079583, Nat.add_sub_cancel, A079583.P12447071836725944732.a, A079583.P11090677438827926540.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A079583, Nat.add_sub_cancel, A079583.P12447071836725944732.a, A079583.P11090677438827926540.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [← h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A079583

/-! ## A079583.P14409818198419263322

`∑[ogf((1-x+x^2)/(1-3x+2x^2))]`
-/

namespace A079583.P14409818198419263322
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -1, 1] [1, -3, 2] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A079583.P14409818198419263322

namespace A079583

/-- `∑[ogf((1-x+x^2)/(1-3x+2x^2))]` -/
def P14409818198419263322.Spec : Prop :=
  ∀ n, P14409818198419263322.a n = A079583 n

end A079583

/-! ## A079583.P4463681407546165649

`ogf((1-x+x^2)/(1-4x+5x^2-2x^3))`
-/

namespace A079583.P4463681407546165649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -1, 1] [1, -4, 5, -2] n

end

end A079583.P4463681407546165649

namespace A079583

/-- `ogf((1-x+x^2)/(1-4x+5x^2-2x^3))` -/
def P4463681407546165649.Spec : Prop :=
  ∀ n, P4463681407546165649.a n = A079583 n

end A079583

/-! ## A079583.P8504882775326567506

`abs(lcm(3, 2^n)-(n+2))`
-/

namespace A079583.P8504882775326567506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(Nat.lcm 3 (2 ^ n) : ℤ) - (n + 2 : ℤ)|

end

end A079583.P8504882775326567506

namespace A079583

/-- `abs(lcm(3, 2^n)-(n+2))` -/
def P8504882775326567506.Spec : Prop :=
  ∀ n, P8504882775326567506.a n = A079583 n

end A079583

/-! ## A079583.P11767353838318858299

`∑[or(1, 2*a(n-1))]` with `a(0)=1, a(1)=2`
-/

namespace A079583.P11767353838318858299
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 2] fun n f1 =>
  Nat.lor 1 (2 * f1 (n - 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A079583.P11767353838318858299

namespace A079583

/-- `∑[or(1, 2*a(n-1))]` -/
def P11767353838318858299.Spec : Prop :=
  ∀ n, (P11767353838318858299.a n : ℤ) = A079583 n

end A079583

/-! ## A079583.P14078708501885237188

`∑[xor(1, 2*a(n-1))]` with `a(0)=1, a(1)=2`
-/

namespace A079583.P14078708501885237188
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 2] fun n f1 =>
  Nat.xor 1 (2 * f1 (n - 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A079583.P14078708501885237188

namespace A079583

/-- `∑[xor(1, 2*a(n-1))]` -/
def P14078708501885237188.Spec : Prop :=
  ∀ n, (P14078708501885237188.a n : ℤ) = A079583 n

end A079583

/-! ## A079583.P4480566062544992180

`∑[∑[2*a(n-1)]]` with `a(0)=1, a(1)=1, a(2)=3`
-/

namespace A079583.P4480566062544992180
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 3] fun n f2 =>
  2 * f2 (n - 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A079583.P4480566062544992180

namespace A079583

/-- `∑[∑[2*a(n-1)]]` -/
def P4480566062544992180.Spec : Prop :=
  ∀ n, (P4480566062544992180.a n : ℤ) = A079583 n

end A079583

/-! ## A079583.P17691699757268825612

`2*(n-(n/2-a(n-1)))` with `a(0)=1`
-/

namespace A079583.P17691699757268825612
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  2 * ((n : ℚ) - ((n : ℚ) / 2 - a (n - 1)))

end

end A079583.P17691699757268825612

namespace A079583

/-- `2*(n-(n/2-a(n-1)))` -/
def P17691699757268825612.Spec : Prop :=
  ∀ n, P17691699757268825612.a n = (A079583 n : ℚ)

end A079583

/-! ## A079583.P7146151182832352041

`abs(a(n-1)+a(n-1)+n)` with `a(0)=1`
-/

namespace A079583.P7146151182832352041
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (a (n - 1) + n)

end

end A079583.P7146151182832352041

namespace A079583

/-- `abs(a(n-1)+a(n-1)+n)` -/
def P7146151182832352041.Spec : Prop :=
  ∀ n, (P7146151182832352041.a n : ℤ) = A079583 n

theorem P7146151182832352041.correct : P7146151182832352041.Spec := by
  intro n
  simp only [A079583, Nat.add_sub_cancel, A079583.P7146151182832352041.a, A079583.P11090677438827926540.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A079583

/-! ## A079583.P15433029656500094028

`floor(a(n-1)+a(n-1)+n)` with `a(0)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A079583.P15433029656500094028
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (a (n - 1) + n)

end

end A079583.P15433029656500094028

namespace A079583

/-- `floor(a(n-1)+a(n-1)+n)` -/
def P15433029656500094028.Spec : Prop :=
  ∀ n, (P15433029656500094028.a n : ℤ) = A079583 n

theorem P15433029656500094028.correct : P15433029656500094028.Spec := by
  intro n
  simp only [A079583, Nat.add_sub_cancel, A079583.P15433029656500094028.a, A079583.P11090677438827926540.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A079583

/-! ## A079583.P679661304993630767

`ceil(a(n-1)+a(n-1)+n)` with `a(0)=1`

`ceil` is left out, it is the identity on integers.
-/

namespace A079583.P679661304993630767
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (a (n - 1) + n)

end

end A079583.P679661304993630767

namespace A079583

/-- `ceil(a(n-1)+a(n-1)+n)` -/
def P679661304993630767.Spec : Prop :=
  ∀ n, (P679661304993630767.a n : ℤ) = A079583 n

theorem P679661304993630767.correct : P679661304993630767.Spec := by
  intro n
  simp only [A079583, Nat.add_sub_cancel, A079583.P679661304993630767.a, A079583.P11090677438827926540.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A079583

/-! ## A079583.P6336187541192978768

`round(a(n-1)+a(n-1)+n)` with `a(0)=1`

`round` is left out, it is the identity on integers.
-/

namespace A079583.P6336187541192978768
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (a (n - 1) + n)

end

end A079583.P6336187541192978768

namespace A079583

/-- `round(a(n-1)+a(n-1)+n)` -/
def P6336187541192978768.Spec : Prop :=
  ∀ n, (P6336187541192978768.a n : ℤ) = A079583 n

theorem P6336187541192978768.correct : P6336187541192978768.Spec := by
  intro n
  simp only [A079583, Nat.add_sub_cancel, A079583.P6336187541192978768.a, A079583.P11090677438827926540.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A079583

/-! ## A079583.P12654465978873676610

`floor(n-(2*(1-a(n-1))-2))` with `a(0)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A079583.P12654465978873676610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (n : ℤ) - (2 * (1 - a (n - 1)) - 2)

end

end A079583.P12654465978873676610

namespace A079583

/-- `floor(n-(2*(1-a(n-1))-2))` -/
def P12654465978873676610.Spec : Prop :=
  ∀ n, P12654465978873676610.a n = A079583 n

end A079583

/-! ## A079583.P7322930585803266845

`floor(n-a(n-1)/(1/2-1))` with `a(0)=1`
-/

namespace A079583.P7322930585803266845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ⌊(n : ℚ) - (a (n - 1) : ℚ) / ((1 : ℚ) / 2 - 1)⌋

end

end A079583.P7322930585803266845

namespace A079583

/-- `floor(n-a(n-1)/(1/2-1))` -/
def P7322930585803266845.Spec : Prop :=
  ∀ n, P7322930585803266845.a n = A079583 n

end A079583

/-! ## A079583.P4832169427130551630

`∑[a(n-1)+a(n-1)+1]` with `a(0)=1, a(1)=2`
-/

namespace A079583.P4832169427130551630
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 2] fun n f1 =>
  f1 (n - 1) + (f1 (n - 1) + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A079583.P4832169427130551630

namespace A079583

/-- `∑[a(n-1)+a(n-1)+1]` -/
def P4832169427130551630.Spec : Prop :=
  ∀ n, (P4832169427130551630.a n : ℤ) = A079583 n

end A079583

/-! ## A079583.P5159169399930151649

`(a(n-1)+n/2)/(1-1/2)` with `a(0)=1`
-/

namespace A079583.P5159169399930151649
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (a (n - 1) + (n : ℚ) / 2) / (1 - (1 : ℚ) / 2)

end

end A079583.P5159169399930151649

namespace A079583

/-- `(a(n-1)+n/2)/(1-1/2)` -/
def P5159169399930151649.Spec : Prop :=
  ∀ n, P5159169399930151649.a n = (A079583 n : ℚ)

end A079583

/-! ## A079583.P13645660290952834126

`∑[A083329(n)]`
-/

namespace A079583.P13645660290952834126
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083329 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A079583.P13645660290952834126

namespace A079583

/-- `∑[A083329(n)]` -/
def P13645660290952834126.Spec : Prop :=
  ∀ n, P13645660290952834126.a n = A079583 n

end A079583

/-!
# A079584: Number of ones in the binary expansion of n!.

The programs for A079584, there is no canonical definition to state claims against.
-/

/-! ## A079584.P10891063610131022738

`A072831(n)-A078565(n)`
-/

namespace A079584.P10891063610131022738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072831 n - A078565 n

end

end A079584.P10891063610131022738

/-! ## A079584.P11787160950757957735

`A067850(n)+1-A078565(n)`
-/

namespace A079584.P11787160950757957735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067850 n + (1 - A078565 n)

end

end A079584.P11787160950757957735

/-! ## A079584.P12710836425617546999

`A000027(1-(A078565(n)-A067850(n)))`
-/

namespace A079584.P12710836425617546999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (1 - (A078565 n - A067850 n)).toNat

end

end A079584.P12710836425617546999

/-! ## A079584.P13792880405193958285

`((-A062157(n)²)^n)²²-(A078565(n)-A067850(n))`
-/

namespace A079584.P13792880405193958285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((-(A062157 n ^ 2)) ^ n) ^ 2) ^ 2 - (A078565 n - A067850 n)

end

end A079584.P13792880405193958285

/-! ## A079584.P12276970940313705382

`(A062157(2*n)^n)²²-(A078565(n)-A067850(n))`
-/

namespace A079584.P12276970940313705382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((A062157 (2 * n) ^ n) ^ 2) ^ 2 - (A078565 n - A067850 n)

end

end A079584.P12276970940313705382

/-! ## A079584.P11179077167617732252

`A305439(A060191(n))-(A078565(n)-A067850(n))`
-/

namespace A079584.P11179077167617732252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305439 (A060191 n).toNat - (A078565 n - A067850 n)

end

end A079584.P11179077167617732252

/-! ## A079584.P1124931924805800188

`n!-A245087(n)`
-/

namespace A079584.P1124931924805800188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) - A245087 n

end

end A079584.P1124931924805800188

/-! ## A079584.P5902616474373211530

`A000142(n)-A245087(n)`
-/

namespace A079584.P5902616474373211530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 n - A245087 n

end

end A079584.P5902616474373211530

/-! ## A079584.P17124185616979636872

`∏[A028310(n)]-A245087(n)`
-/

namespace A079584.P17124185616979636872
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j - A245087 n

end

end A079584.P17124185616979636872

/-!
# A079585: Decimal expansion of c = (7-sqrt(5))/2.

The programs for A079585, there is no canonical definition to state claims against.
-/

/-! ## A079585.P16838910509832219414

`A109866(n+1)%A040030(n)`
-/

namespace A079585.P16838910509832219414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A109866 (n + 1)) (A040030 n)

end

end A079585.P16838910509832219414

/-! ## A079585.P10566336490366257928

`gcd(A000038(n), A109866(n+1))`
-/

namespace A079585.P10566336490366257928
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A109866 (n + 1))

end

end A079585.P10566336490366257928

/-! ## A079585.P16731550801888765248

`(A057427(n)+2)²-A104457(n)`
-/

namespace A079585.P16731550801888765248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A057427 n + 2) ^ 2 - A104457 (n + 1)

end

end A079585.P16731550801888765248

/-! ## A079585.P10903621631723789901

`A109866(n+1)/(2-A057427(n))²`
-/

namespace A079585.P10903621631723789901
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A109866 (n + 1) : ℚ) / ((2 - A057427 n) ^ 2 : ℚ)

end

end A079585.P10903621631723789901

/-! ## A079585.P17422361497802922437

`A109866(A307721(a(n-1)+1)+n+1)` with `a(0)=2`
-/

namespace A079585.P17422361497802922437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A109866 (A307721 (a (n - 1) + 1).toNat + (n : ℤ) + 1).toNat

end

end A079585.P17422361497802922437

/-! ## A079585.P2701506420905372383

`A109866(n^A094102(a(n-1)²+1)+1)` with `a(0)=2`
-/

namespace A079585.P2701506420905372383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A109866 (SequenceMachineLib.roundAway ((n : ℚ) ^ (A094102 (a (n - 1) ^ 2 + 1).toNat : ℤ) + 1)).toNat

end

end A079585.P2701506420905372383

/-! ## A079585.P16900527505568608763

`A109866(n+1)^A008288(A008288(a(n-1)))` with `a(0)=2`
-/

namespace A079585.P16900527505568608763
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [2] fun n a =>
  (A109866 (n + 1) : ℚ) ^ (A008288 (A008288 (SequenceMachineLib.roundAway (a (n - 1))).toNat).toNat : ℤ)

end

end A079585.P16900527505568608763

/-! ## A079585.P362507180677519749

`9-A038573(A220777(a(n-1)))*A104457(n)` with `a(0)=2`
-/

namespace A079585.P362507180677519749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  9 - A038573 (A220777 (a (n - 1)).toNat).toNat * A104457 (n + 1)

end

end A079585.P362507180677519749

/-! ## A079585.P15254046056821321678

`9-A002802(A326626(a(n-1)))*A104457(n)` with `a(0)=2`
-/

namespace A079585.P15254046056821321678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  9 - A002802 (A326626 (a (n - 1)).toNat).toNat * A104457 (n + 1)

end

end A079585.P15254046056821321678

/-! ## A079585.P2965812822054515697

`A109866(n+1)^A094102(A060969(a(n-1))+1)` with `a(0)=2`
-/

namespace A079585.P2965812822054515697
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [2] fun n a =>
  (A109866 (n + 1) : ℚ) ^ (A094102 (A060969 (SequenceMachineLib.roundAway (a (n - 1))).toNat + 1).toNat : ℤ)

end

end A079585.P2965812822054515697

/-! ## A079585.P909758162647487367

`9-(A179006(A000720(a(n-1)+1))+A104457(n))` with `a(0)=2`
-/

namespace A079585.P909758162647487367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  9 - (A179006 (A000720 (a (n - 1) + 1).toNat).toNat + A104457 (n + 1))

end

end A079585.P909758162647487367

/-! ## A079585.P9816546547302697673

`A094874(n)+A019590(n+2)`
-/

namespace A079585.P9816546547302697673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094874 (n + 1) + A019590 (n + 2)

end

end A079585.P9816546547302697673

/-! ## A079585.P16709786665439921976

`floor(A094874(n)+1/A068156(n))`
-/

namespace A079585.P16709786665439921976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A094874 (n + 1) : ℚ) + 1 / (A068156 n : ℚ)⌋

end

end A079585.P16709786665439921976

/-! ## A079585.P6250070671404955000

`a(n-1)-A095943(n)` with `a(0)=2, a(1)=3`
-/

namespace A079585.P6250070671404955000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 3] fun n a =>
  a (n - 1) - A095943 n

end

end A079585.P6250070671404955000

/-!
# A079589: a(n) = C(5*n+1,n).

The programs for A079589, there is no canonical definition to state claims against.
-/

/-! ## A079589.P5952826902203363622

`A102428(2*n)`
-/

namespace A079589.P5952826902203363622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102428 (2 * n)

end

end A079589.P5952826902203363622

/-! ## A079589.P5131063437614613170

`A051052(5*n+1)`
-/

namespace A079589.P5131063437614613170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051052 (5 * n + 1)

end

end A079589.P5131063437614613170

/-! ## A079589.P5399757401812248568

`Δ[n²]*A118969(n)`
-/

namespace A079589.P5399757401812248568
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((f1 (n + 1) : ℤ) - (f1 n : ℤ)) * A118969 n

end

end A079589.P5399757401812248568

/-! ## A079589.P5016748485606580506

`(5*n+1)*A002294(n)`
-/

namespace A079589.P5016748485606580506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (5 * n + 1 : ℤ) * A002294 n

end

end A079589.P5016748485606580506

/-! ## A079589.P11378084705882570478

`A002294(n)*A016861(n)`
-/

namespace A079589.P11378084705882570478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002294 n * A016861 n

end

end A079589.P11378084705882570478

/-! ## A079589.P3040088310986323189

`A001449(n)+n*A002294(n)`
-/

namespace A079589.P3040088310986323189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001449 n + (n : ℤ) * A002294 n

end

end A079589.P3040088310986323189

/-! ## A079589.P1875325298055024420

`A001449(n)/Δ[A000384(n)]*A016861(n)`
-/

namespace A079589.P1875325298055024420
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000384 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001449 n : ℚ) / (f1 (n + 1) - f1 n : ℚ) * (A016861 n : ℚ)

end

end A079589.P1875325298055024420

/-! ## A079589.P12968508251361037268

`C(5*n+1, n)`
-/

namespace A079589.P12968508251361037268
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (5 * n + 1) n

end

end A079589.P12968508251361037268

/-! ## A079589.P4083942686586383691

`record[C(n+1, lcm(5, n)/gcd(5, n))]`
-/

namespace A079589.P4083942686586383691
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (n + 1) (SequenceMachineLib.roundAway ((Nat.lcm 5 n : ℚ) / (Nat.gcd 5 n : ℚ))).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A079589.P4083942686586383691

/-!
# A079590: a(n) = C(6*n+1,n).

The programs for A079590, there is no canonical definition to state claims against.
-/

/-! ## A079590.P15926171717230167865

`(6*n+1)*A002295(n)`
-/

namespace A079590.P15926171717230167865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (6 * n + 1 : ℤ) * A002295 n

end

end A079590.P15926171717230167865

/-! ## A079590.P15726309315811997830

`A051053(A016921(n))`
-/

namespace A079590.P15726309315811997830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051053 (A016921 n).toNat

end

end A079590.P15726309315811997830

/-! ## A079590.P16268658014982374972

`A051053(A271114(n))`
-/

namespace A079590.P16268658014982374972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051053 (A271114 n).toNat

end

end A079590.P16268658014982374972

/-! ## A079590.P9915564490504678842

`record[A051053(A165355(n))]`
-/

namespace A079590.P9915564490504678842
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051053 (A165355 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A079590.P9915564490504678842

/-! ## A079590.P11018771832741693434

`A051053(A008458(n)+1)`
-/

namespace A079590.P11018771832741693434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051053 (A008458 n + 1).toNat

end

end A079590.P11018771832741693434

/-! ## A079590.P10264514145828031625

`A051053(A016945(n)-2)`
-/

namespace A079590.P10264514145828031625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051053 (A016945 n - 2).toNat

end

end A079590.P10264514145828031625

/-! ## A079590.P12020586215743349346

`A051053(A165355(2*n))`
-/

namespace A079590.P12020586215743349346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051053 (A165355 (2 * n)).toNat

end

end A079590.P12020586215743349346

/-! ## A079590.P13012148950541023302

`A051053(A004442(6*n))`
-/

namespace A079590.P13012148950541023302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051053 (A004442 (6 * n)).toNat

end

end A079590.P13012148950541023302

/-! ## A079590.P11093189174653837645

`A051053(or(1, A008458(n)))`
-/

namespace A079590.P11093189174653837645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051053 (Int.lor 1 (A008458 n)).toNat

end

end A079590.P11093189174653837645

/-! ## A079590.P1824290940700262388

`A002295(n)*A016921(n)`
-/

namespace A079590.P1824290940700262388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002295 n * A016921 n

end

end A079590.P1824290940700262388

/-!
# A079592: Primes p such that floor(Pi*p) is prime.

The programs for A079592, the canonical program `A079592.P15799637742897185009` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A079592 has offset 1).

The definition of A079592 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 982 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A079592.P15799637742897185009

`p?[A062408(n)]`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A079592

/-- `p?[A062408(n)]` -/
def P15799637742897185009.Spec : Prop :=
  ∀ n, P15799637742897185009.a n = A079592 (n + 1)

theorem P15799637742897185009.correct : P15799637742897185009.Spec := by
  intro n
  simp only [A079592, Nat.add_sub_cancel]

end A079592

/-! ## A079592.P5870653159450963506

`p?[ceil(A077546(n+1)/π)]`
-/

namespace A079592.P5870653159450963506
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A077546 (n + 1) : ℝ) / Real.pi⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A079592.P5870653159450963506

namespace A079592

/-- `p?[ceil(A077546(n+1)/π)]` -/
def P5870653159450963506.Spec : Prop :=
  ∀ n, P5870653159450963506.a n = A079592 (n + 1)

end A079592

/-! ## A079592.P14471164162292325471

`∩[A004139(n+1), A062408(n)]`
-/

namespace A079592.P14471164162292325471
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004139 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062408 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A079592.P14471164162292325471

namespace A079592

/-- `∩[A004139(n+1), A062408(n)]` -/
def P14471164162292325471.Spec : Prop :=
  ∀ n, (P14471164162292325471.a n : ℤ) = A079592 (n + 1)

end A079592

/-! ## A079592.P3989426567837951125

`∩[A045319(n+1), A062408(n)]`
-/

namespace A079592.P3989426567837951125
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062408 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A079592.P3989426567837951125

namespace A079592

/-- `∩[A045319(n+1), A062408(n)]` -/
def P3989426567837951125.Spec : Prop :=
  ∀ n, (P3989426567837951125.a n : ℤ) = A079592 (n + 1)

end A079592

/-! ## A079592.P14989980756573318569

`∩[A045344(n+1), A062408(n)]`
-/

namespace A079592.P14989980756573318569
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045344 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062408 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A079592.P14989980756573318569

namespace A079592

/-- `∩[A045344(n+1), A062408(n)]` -/
def P14989980756573318569.Spec : Prop :=
  ∀ n, (P14989980756573318569.a n : ℤ) = A079592 (n + 1)

end A079592

/-! ## A079592.P3490677479257230252

`∩[A065091(n+1), A062408(n)]`
-/

namespace A079592.P3490677479257230252
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062408 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A079592.P3490677479257230252

namespace A079592

/-- `∩[A065091(n+1), A062408(n)]` -/
def P3490677479257230252.Spec : Prop :=
  ∀ n, (P3490677479257230252.a n : ℤ) = A079592 (n + 1)

end A079592

/-! ## A079592.P1533640605924160641

`∩[A108719(n+1), A062408(n)]`
-/

namespace A079592.P1533640605924160641
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108719 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062408 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A079592.P1533640605924160641

namespace A079592

/-- `∩[A108719(n+1), A062408(n)]` -/
def P1533640605924160641.Spec : Prop :=
  ∀ n, (P1533640605924160641.a n : ℤ) = A079592 (n + 1)

end A079592

/-! ## A079592.P5173656580339497732

`∩[A157996(n+1), A062408(n)]`
-/

namespace A079592.P5173656580339497732
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157996 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062408 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A079592.P5173656580339497732

namespace A079592

/-- `∩[A157996(n+1), A062408(n)]` -/
def P5173656580339497732.Spec : Prop :=
  ∀ n, (P5173656580339497732.a n : ℤ) = A079592 (n + 1)

end A079592

/-! ## A079592.P2894103719247921439

`∩[A197636(n+1), A062408(n)]`
-/

namespace A079592.P2894103719247921439
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197636 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062408 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A079592.P2894103719247921439

namespace A079592

/-- `∩[A197636(n+1), A062408(n)]` -/
def P2894103719247921439.Spec : Prop :=
  ∀ n, (P2894103719247921439.a n : ℤ) = A079592 (n + 1)

end A079592

/-! ## A079592.P8999297934137184909

`∩[A215848(n+1), A062408(n)]`
-/

namespace A079592.P8999297934137184909
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215848 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062408 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A079592.P8999297934137184909

namespace A079592

/-- `∩[A215848(n+1), A062408(n)]` -/
def P8999297934137184909.Spec : Prop :=
  ∀ n, (P8999297934137184909.a n : ℤ) = A079592 (n + 1)

end A079592

/-! ## A079592.P15772294714438000374

`∩[A000040(n+1), A062408(n)]`
-/

namespace A079592.P15772294714438000374
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062408 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A079592.P15772294714438000374

namespace A079592

/-- `∩[A000040(n+1), A062408(n)]` -/
def P15772294714438000374.Spec : Prop :=
  ∀ n, (P15772294714438000374.a n : ℤ) = A079592 (n + 1)

end A079592

/-! ## A079592.P5600021758841801224

`∩[A051948(n+1), A062408(n)]`
-/

namespace A079592.P5600021758841801224
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051948 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062408 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A079592.P5600021758841801224

namespace A079592

/-- `∩[A051948(n+1), A062408(n)]` -/
def P5600021758841801224.Spec : Prop :=
  ∀ n, (P5600021758841801224.a n : ℤ) = A079592 (n + 1)

end A079592

/-! ## A079592.P9208394086021494692

`∩[A053813(n+1), A062408(n)]`
-/

namespace A079592.P9208394086021494692
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053813 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062408 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A079592.P9208394086021494692

namespace A079592

/-- `∩[A053813(n+1), A062408(n)]` -/
def P9208394086021494692.Spec : Prop :=
  ∀ n, (P9208394086021494692.a n : ℤ) = A079592 (n + 1)

end A079592

/-! ## A079592.P3340202105493442425

`∩[A066542(n+1), A062408(n)]`
-/

namespace A079592.P3340202105493442425
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066542 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062408 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A079592.P3340202105493442425

namespace A079592

/-- `∩[A066542(n+1), A062408(n)]` -/
def P3340202105493442425.Spec : Prop :=
  ∀ n, (P3340202105493442425.a n : ℤ) = A079592 (n + 1)

end A079592

/-! ## A079592.P12982665016663887022

`∩[A083249(n+1), A062408(n)]`
-/

namespace A079592.P12982665016663887022
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083249 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062408 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A079592.P12982665016663887022

namespace A079592

/-- `∩[A083249(n+1), A062408(n)]` -/
def P12982665016663887022.Spec : Prop :=
  ∀ n, (P12982665016663887022.a n : ℤ) = A079592 (n + 1)

end A079592

/-! ## A079592.P11000885463808573812

`∩[A116974(n+1), A062408(n)]`
-/

namespace A079592.P11000885463808573812
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116974 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062408 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A079592.P11000885463808573812

namespace A079592

/-- `∩[A116974(n+1), A062408(n)]` -/
def P11000885463808573812.Spec : Prop :=
  ∀ n, (P11000885463808573812.a n : ℤ) = A079592 (n + 1)

end A079592

/-! ## A079592.P16218353371490796673

`∩[A161346(n+1), A062408(n)]`
-/

namespace A079592.P16218353371490796673
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161346 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062408 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A079592.P16218353371490796673

namespace A079592

/-- `∩[A161346(n+1), A062408(n)]` -/
def P16218353371490796673.Spec : Prop :=
  ∀ n, (P16218353371490796673.a n : ℤ) = A079592 (n + 1)

end A079592

/-! ## A079592.P17794609045828448282

`∩[A161428(n+1), A062408(n)]`
-/

namespace A079592.P17794609045828448282
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161428 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062408 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A079592.P17794609045828448282

namespace A079592

/-- `∩[A161428(n+1), A062408(n)]` -/
def P17794609045828448282.Spec : Prop :=
  ∀ n, (P17794609045828448282.a n : ℤ) = A079592 (n + 1)

end A079592

/-! ## A079592.P16991489123218905980

`∩[A175787(n+1), A062408(n)]`
-/

namespace A079592.P16991489123218905980
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175787 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062408 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A079592.P16991489123218905980

namespace A079592

/-- `∩[A175787(n+1), A062408(n)]` -/
def P16991489123218905980.Spec : Prop :=
  ∀ n, (P16991489123218905980.a n : ℤ) = A079592 (n + 1)

end A079592

/-! ## A079592.P16811893923493118619

`∩[A182986(n+1), A062408(n)]`
-/

namespace A079592.P16811893923493118619
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182986 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062408 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A079592.P16811893923493118619

namespace A079592

/-- `∩[A182986(n+1), A062408(n)]` -/
def P16811893923493118619.Spec : Prop :=
  ∀ n, (P16811893923493118619.a n : ℤ) = A079592 (n + 1)

end A079592

/-!
# A079593: Primes equal to floor(Pi*x) where x is prime.

The programs for A079593, the canonical program `A079593.P22308540367719002` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A079593 has offset 1).

The definition of A079593 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 982 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A079593.P22308540367719002

`floor(π*p?[A062408(n)])`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A079593

/-- `floor(π*p?[A062408(n)])` -/
def P22308540367719002.Spec : Prop :=
  ∀ n, P22308540367719002.a n = A079593 (n + 1)

theorem P22308540367719002.correct : P22308540367719002.Spec := by
  intro n
  simp only [A079593, Nat.add_sub_cancel]

end A079593

/-! ## A079593.P13280787256602118102

`p?[floor(π*p?[2*n+1])]`
-/

namespace A079593.P13280787256602118102
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.pi * (f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n) : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A079593.P13280787256602118102

namespace A079593

/-- `p?[floor(π*p?[2*n+1])]` -/
def P13280787256602118102.Spec : Prop :=
  ∀ n, P13280787256602118102.a n = A079593 (n + 1)

end A079593

/-! ## A079593.P4097172876607632463

`p?[A097426(n+1)]`
-/

namespace A079593.P4097172876607632463
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097426 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A079593.P4097172876607632463

namespace A079593

/-- `p?[A097426(n+1)]` -/
def P4097172876607632463.Spec : Prop :=
  ∀ n, P4097172876607632463.a n = A079593 (n + 1)

end A079593

/-! ## A079593.P10787713944437086167

`∩[A077546(n+1), A097426(n+1)]`
-/

namespace A079593.P10787713944437086167
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077546 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097426 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A079593.P10787713944437086167

namespace A079593

/-- `∩[A077546(n+1), A097426(n+1)]` -/
def P10787713944437086167.Spec : Prop :=
  ∀ n, (P10787713944437086167.a n : ℤ) = A079593 (n + 1)

end A079593

/-! ## A079593.P314454116764393488

`∩[A070754(n+1), A097426(n+1)]`
-/

namespace A079593.P314454116764393488
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070754 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097426 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A079593.P314454116764393488

namespace A079593

/-- `∩[A070754(n+1), A097426(n+1)]` -/
def P314454116764393488.Spec : Prop :=
  ∀ n, (P314454116764393488.a n : ℤ) = A079593 (n + 1)

end A079593

/-! ## A079593.P6687882819172515024

`∩[A000040(n+1), A097426(n+1)]`
-/

namespace A079593.P6687882819172515024
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097426 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A079593.P6687882819172515024

namespace A079593

/-- `∩[A000040(n+1), A097426(n+1)]` -/
def P6687882819172515024.Spec : Prop :=
  ∀ n, (P6687882819172515024.a n : ℤ) = A079593 (n + 1)

end A079593

/-! ## A079593.P10016391230931504047

`∩[A004139(n+1), A097426(n+1)]`
-/

namespace A079593.P10016391230931504047
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004139 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097426 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A079593.P10016391230931504047

namespace A079593

/-- `∩[A004139(n+1), A097426(n+1)]` -/
def P10016391230931504047.Spec : Prop :=
  ∀ n, (P10016391230931504047.a n : ℤ) = A079593 (n + 1)

end A079593

/-! ## A079593.P15001565486720307442

`∩[A006005(n+1), A097426(n+1)]`
-/

namespace A079593.P15001565486720307442
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006005 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097426 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A079593.P15001565486720307442

namespace A079593

/-- `∩[A006005(n+1), A097426(n+1)]` -/
def P15001565486720307442.Spec : Prop :=
  ∀ n, (P15001565486720307442.a n : ℤ) = A079593 (n + 1)

end A079593

/-! ## A079593.P4550431938582977394

`∩[A008578(n+1), A097426(n+1)]`
-/

namespace A079593.P4550431938582977394
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097426 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A079593.P4550431938582977394

namespace A079593

/-- `∩[A008578(n+1), A097426(n+1)]` -/
def P4550431938582977394.Spec : Prop :=
  ∀ n, (P4550431938582977394.a n : ℤ) = A079593 (n + 1)

end A079593

/-! ## A079593.P2527855508630125372

`∩[A038672(n+1), A097426(n+1)]`
-/

namespace A079593.P2527855508630125372
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038672 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097426 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A079593.P2527855508630125372

namespace A079593

/-- `∩[A038672(n+1), A097426(n+1)]` -/
def P2527855508630125372.Spec : Prop :=
  ∀ n, (P2527855508630125372.a n : ℤ) = A079593 (n + 1)

end A079593

/-! ## A079593.P14766490609282782441

`∩[A045319(n+1), A097426(n+1)]`
-/

namespace A079593.P14766490609282782441
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097426 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A079593.P14766490609282782441

namespace A079593

/-- `∩[A045319(n+1), A097426(n+1)]` -/
def P14766490609282782441.Spec : Prop :=
  ∀ n, (P14766490609282782441.a n : ℤ) = A079593 (n + 1)

end A079593

/-! ## A079593.P1665469925272684090

`∩[A045344(n+1), A097426(n+1)]`
-/

namespace A079593.P1665469925272684090
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045344 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097426 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A079593.P1665469925272684090

namespace A079593

/-- `∩[A045344(n+1), A097426(n+1)]` -/
def P1665469925272684090.Spec : Prop :=
  ∀ n, (P1665469925272684090.a n : ℤ) = A079593 (n + 1)

end A079593

/-! ## A079593.P3670474319066069625

`∩[A046022(n+1), A097426(n+1)]`
-/

namespace A079593.P3670474319066069625
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046022 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097426 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A079593.P3670474319066069625

namespace A079593

/-- `∩[A046022(n+1), A097426(n+1)]` -/
def P3670474319066069625.Spec : Prop :=
  ∀ n, (P3670474319066069625.a n : ℤ) = A079593 (n + 1)

end A079593

/-! ## A079593.P1783202344792694078

`∩[A054723(n+1), A097426(n+1)]`
-/

namespace A079593.P1783202344792694078
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054723 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097426 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A079593.P1783202344792694078

namespace A079593

/-- `∩[A054723(n+1), A097426(n+1)]` -/
def P1783202344792694078.Spec : Prop :=
  ∀ n, (P1783202344792694078.a n : ℤ) = A079593 (n + 1)

end A079593

/-! ## A079593.P7225869634330472266

`∩[A065091(n+1), A097426(n+1)]`
-/

namespace A079593.P7225869634330472266
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097426 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A079593.P7225869634330472266

namespace A079593

/-- `∩[A065091(n+1), A097426(n+1)]` -/
def P7225869634330472266.Spec : Prop :=
  ∀ n, (P7225869634330472266.a n : ℤ) = A079593 (n + 1)

end A079593

/-! ## A079593.P12978171443174802106

`∩[A065376(n+1), A097426(n+1)]`
-/

namespace A079593.P12978171443174802106
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065376 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097426 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A079593.P12978171443174802106

namespace A079593

/-- `∩[A065376(n+1), A097426(n+1)]` -/
def P12978171443174802106.Spec : Prop :=
  ∀ n, (P12978171443174802106.a n : ℤ) = A079593 (n + 1)

end A079593

/-! ## A079593.P17917269552852632403

`∩[A065396(n+1), A097426(n+1)]`
-/

namespace A079593.P17917269552852632403
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065396 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097426 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A079593.P17917269552852632403

namespace A079593

/-- `∩[A065396(n+1), A097426(n+1)]` -/
def P17917269552852632403.Spec : Prop :=
  ∀ n, (P17917269552852632403.a n : ℤ) = A079593 (n + 1)

end A079593

/-! ## A079593.P9076335958906251152

`∩[A097426(n+1), A140826(n+1)]`
-/

namespace A079593.P9076335958906251152
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097426 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140826 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A079593.P9076335958906251152

namespace A079593

/-- `∩[A097426(n+1), A140826(n+1)]` -/
def P9076335958906251152.Spec : Prop :=
  ∀ n, (P9076335958906251152.a n : ℤ) = A079593 (n + 1)

end A079593

/-! ## A079593.P3065741957920930296

`∩[A097426(n+1), A210494(n+1)]`
-/

namespace A079593.P3065741957920930296
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097426 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210494 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A079593.P3065741957920930296

namespace A079593

/-- `∩[A097426(n+1), A210494(n+1)]` -/
def P3065741957920930296.Spec : Prop :=
  ∀ n, (P3065741957920930296.a n : ℤ) = A079593 (n + 1)

end A079593

/-! ## A079593.P14922185082686145357

`∩[A097426(n+1), A268391(n+1)]`
-/

namespace A079593.P14922185082686145357
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097426 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268391 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A079593.P14922185082686145357

namespace A079593

/-- `∩[A097426(n+1), A268391(n+1)]` -/
def P14922185082686145357.Spec : Prop :=
  ∀ n, (P14922185082686145357.a n : ℤ) = A079593 (n + 1)

end A079593

/-!
# A079594: Primes p such that floor(p^Pi) is prime.

The programs for A079594, there is no canonical definition to state claims against.
-/

/-! ## A079594.P169885520907088416

`p?[A074217(n+1)]`
-/

namespace A079594.P169885520907088416
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074217 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A079594.P169885520907088416

/-! ## A079594.P10565728851620135007

`p?[ceil(root(A074218(n+1), π))]`
-/

namespace A079594.P10565728851620135007
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A074218 (n + 1) : ℝ) ^ (1 / Real.pi)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A079594.P10565728851620135007

/-! ## A079594.P1161930828810016964

`p?[round(root(A074218(((-1)^n)²+n), π))]`
-/

namespace A079594.P1161930828810016964
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A074218 (((-1) ^ n) ^ 2 + (n : ℤ)).toNat : ℝ) ^ (1 / Real.pi))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A079594.P1161930828810016964

/-! ## A079594.P285530408910336306

`∩[A000040(n+1), A074217(n+1)]`
-/

namespace A079594.P285530408910336306
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074217 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A079594.P285530408910336306

/-! ## A079594.P11324694923846119386

`∩[A004139(n+1), A074217(n+1)]`
-/

namespace A079594.P11324694923846119386
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004139 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074217 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A079594.P11324694923846119386

/-! ## A079594.P13204854853896127193

`∩[A006005(n+1), A074217(n+1)]`
-/

namespace A079594.P13204854853896127193
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006005 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074217 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A079594.P13204854853896127193

/-! ## A079594.P12412856493465987704

`∩[A008578(n+1), A074217(n+1)]`
-/

namespace A079594.P12412856493465987704
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074217 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A079594.P12412856493465987704

/-! ## A079594.P99449099503643198

`∩[A045319(n+1), A074217(n+1)]`
-/

namespace A079594.P99449099503643198
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074217 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A079594.P99449099503643198

/-! ## A079594.P5616342558467685761

`∩[A046022(n+1), A074217(n+1)]`
-/

namespace A079594.P5616342558467685761
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046022 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074217 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A079594.P5616342558467685761

/-! ## A079594.P7339024417619013528

`∩[A051948(n+1), A074217(n+1)]`
-/

namespace A079594.P7339024417619013528
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051948 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074217 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A079594.P7339024417619013528

/-! ## A079594.P8245305965326341526

`∩[A053813(n+1), A074217(n+1)]`
-/

namespace A079594.P8245305965326341526
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053813 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074217 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A079594.P8245305965326341526

/-! ## A079594.P15153966963243485342

`∩[A065396(n+1), A074217(n+1)]`
-/

namespace A079594.P15153966963243485342
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065396 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074217 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A079594.P15153966963243485342

/-! ## A079594.P7851238874197190477

`filter[A074217(n+1), A010051(#)]`
-/

namespace A079594.P7851238874197190477
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074217 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A079594.P7851238874197190477

/-!
# A079595: Primes of the form floor(x^Pi) where x is prime.

The programs for A079595, there is no canonical definition to state claims against.
-/

/-! ## A079595.P6693581327817613603

`A061294(A079594(n+1))`
-/

namespace A079595.P6693581327817613603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061294 (A079594 (n + 1)).toNat

end

end A079595.P6693581327817613603

/-!
# A079597: a(n) = 2^((n-1)*(2^n-1)).

The programs for A079597, the canonical program `A079597.P14506043753193398973` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A079597 has offset 0).

The definition of A079597 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A079597.P14506043753193398973

`2^((n-1)*(2^n-1))`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A079597

/-- `2^((n-1)*(2^n-1))` -/
def P14506043753193398973.Spec : Prop :=
  ∀ n, P14506043753193398973.a n = (A079597 n : ℚ)

end A079597

/-! ## A079597.P11718799856311737146

`ceil(2^(n-1)^or(1, 2^n-1))`
-/

namespace A079597.P11718799856311737146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)) ^ (Int.lor 1 ((2 ^ n : ℤ) - 1) : ℤ)⌉

end

end A079597.P11718799856311737146

namespace A079597

/-- `ceil(2^(n-1)^or(1, 2^n-1))` -/
def P11718799856311737146.Spec : Prop :=
  ∀ n, P11718799856311737146.a n = A079597 n

end A079597

/-! ## A079597.P13860183048508504562

`A000079(A000337(n)-n)`
-/

namespace A079597.P13860183048508504562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (A000337 n - (n : ℤ)).toNat

end

end A079597.P13860183048508504562

namespace A079597

/-- `A000079(A000337(n)-n)` -/
def P13860183048508504562.Spec : Prop :=
  ∀ n, P13860183048508504562.a n = A079597 n

end A079597

/-!
# A079598: a(n) = 2^(4*n+1) - 2^(2*n).

The programs for A079598, the canonical program `A079598.P264499161233108813` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A079598 has offset 0).

The definition of A079598 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2^(4*n+1)-2^(2*n)` (program `A079598.P264499161233108813`, by `A079598.P264499161233108813.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A079598.P18400942181361005207

`2^(4*n+1)-4^n`
-/

namespace A079598.P18400942181361005207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ (4 * n + 1) : ℤ) - (4 ^ n : ℤ)

end

end A079598.P18400942181361005207

namespace A079598

/-- `2^(4*n+1)-4^n` -/
def P18400942181361005207.Spec : Prop :=
  ∀ n, P18400942181361005207.a n = A079598 n

end A079598

/-! ## A079598.P264499161233108813

`2^(4*n+1)-2^(2*n)`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A079598

/-- `2^(4*n+1)-2^(2*n)` -/
def P264499161233108813.Spec : Prop :=
  ∀ n, P264499161233108813.a n = A079598 n

theorem P264499161233108813.correct : P264499161233108813.Spec := by
  intro n
  simp only [A079598]

end A079598

/-! ## A079598.P17019017827641469595

`C(2*4^n, 2)`
-/

namespace A079598.P17019017827641469595
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (2 * 4 ^ n) 2

end

end A079598.P17019017827641469595

namespace A079598

/-- `C(2*4^n, 2)` -/
def P17019017827641469595.Spec : Prop :=
  ∀ n, (P17019017827641469595.a n : ℤ) = A079598 n

end A079598

/-! ## A079598.P10916499923772132263

`record[C(2^xor(1, n), 2)]`
-/

namespace A079598.P10916499923772132263
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (2 ^ Nat.xor 1 n) 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A079598.P10916499923772132263

namespace A079598

/-- `record[C(2^xor(1, n), 2)]` -/
def P10916499923772132263.Spec : Prop :=
  ∀ n, (P10916499923772132263.a n : ℤ) = A079598 n

end A079598

/-! ## A079598.P15334661375887356022

`record[C(2^C(or(1, n), n), 2)]`
-/

namespace A079598.P15334661375887356022
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (2 ^ Nat.choose (Nat.lor 1 n) n) 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A079598.P15334661375887356022

namespace A079598

/-- `record[C(2^C(or(1, n), n), 2)]` -/
def P15334661375887356022.Spec : Prop :=
  ∀ n, (P15334661375887356022.a n : ℤ) = A079598 n

end A079598

/-! ## A079598.P11009891214543300887

`lcm(2*4^n-1, 4^n)`
-/

namespace A079598.P11009891214543300887
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm ((2 * 4 ^ n : ℤ) - 1) (4 ^ n : ℤ)

end

end A079598.P11009891214543300887

namespace A079598

/-- `lcm(2*4^n-1, 4^n)` -/
def P11009891214543300887.Spec : Prop :=
  ∀ n, (P11009891214543300887.a n : ℤ) = A079598 n

end A079598

/-! ## A079598.P7041618435605263446

`record[C(2^(n+1-val(n+1, 2)), 2)]`
-/

namespace A079598.P7041618435605263446
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (SequenceMachineLib.roundAway ((2 : ℚ) ^ ((n + 1 : ℤ) - (SequenceMachineLib.valuation (n + 1) 2 : ℤ) : ℤ))).toNat 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A079598.P7041618435605263446

namespace A079598

/-- `record[C(2^(n+1-val(n+1, 2)), 2)]` -/
def P7041618435605263446.Spec : Prop :=
  ∀ n, (P7041618435605263446.a n : ℤ) = A079598 n

end A079598

/-! ## A079598.P8198947648032875837

`record[C(2^n, abs((-2)^n+1)-1)]`
-/

namespace A079598.P8198947648032875837
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (2 ^ n) (|(-2) ^ n + 1| - 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A079598.P8198947648032875837

namespace A079598

/-- `record[C(2^n, abs((-2)^n+1)-1)]` -/
def P8198947648032875837.Spec : Prop :=
  ∀ n, (P8198947648032875837.a n : ℤ) = A079598 n

end A079598

/-! ## A079598.P16291834874481183826

`or(8^n-4^n, 8^n*∑[2^n])`
-/

namespace A079598.P16291834874481183826
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((8 ^ n : ℤ) - (4 ^ n : ℤ)) ((8 ^ n * (∑ j ∈ Finset.range (n + 1), f1 j) : ℕ) : ℤ)

end

end A079598.P16291834874481183826

namespace A079598

/-- `or(8^n-4^n, 8^n*∑[2^n])` -/
def P16291834874481183826.Spec : Prop :=
  ∀ n, P16291834874481183826.a n = A079598 n

end A079598

/-! ## A079598.P1430813042573590613

`record[-(6*a(n-1)+8*a(n-2))]` with `a(0)=1, a(1)=0, a(2)=1`
-/

namespace A079598.P1430813042573590613
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 1] fun n f1 =>
  -(6 * f1 (n - 1) + 8 * f1 (n - 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A079598.P1430813042573590613

namespace A079598

/-- `record[-(6*a(n-1)+8*a(n-2))]` -/
def P1430813042573590613.Spec : Prop :=
  ∀ n, P1430813042573590613.a n = A079598 n

end A079598

/-!
# A079599: Numbers n for which the n-th impartial game is a second player win.

The programs for A079599, the canonical program `A079599.P6982259626820945045` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A079599 has offset 0).

The definition of A079599 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4096 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A079599.P6982259626820945045

`record[n*(1-A115971(n))]`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A079599

/-- `record[n*(1-A115971(n))]` -/
def P6982259626820945045.Spec : Prop :=
  ∀ n, P6982259626820945045.a n = A079599 n

theorem P6982259626820945045.correct : P6982259626820945045.Spec := by
  intro n
  simp only [A079599]

end A079599

/-! ## A079599.P6277037714261292658

`eq[A000217(n+5)*A115971(n), A115971(n)]`
-/

namespace A079599.P6277037714261292658
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (n + 5) * A115971 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115971 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A079599.P6277037714261292658

namespace A079599

/-- `eq[A000217(n+5)*A115971(n), A115971(n)]` -/
def P6277037714261292658.Spec : Prop :=
  ∀ n, (P6277037714261292658.a n : ℤ) = A079599 n

end A079599

/-! ## A079599.P17086334702699727637

`eq[A115971(n)+A043529(n), A043529(n)]`
-/

namespace A079599.P17086334702699727637
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115971 n + A043529 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043529 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A079599.P17086334702699727637

namespace A079599

/-- `eq[A115971(n)+A043529(n), A043529(n)]` -/
def P17086334702699727637.Spec : Prop :=
  ∀ n, (P17086334702699727637.a n : ℤ) = A079599 n

end A079599

/-! ## A079599.P1187977345912093743

`eq[0, A034798(n)]`
-/

namespace A079599.P1187977345912093743
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034798 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A079599.P1187977345912093743

namespace A079599

/-- `eq[0, A034798(n)]` -/
def P1187977345912093743.Spec : Prop :=
  ∀ n, (P1187977345912093743.a n : ℤ) = A079599 n

end A079599

/-! ## A079599.P145016067047422936

`record[n*A236677(n)]`
-/

namespace A079599.P145016067047422936
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A236677 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A079599.P145016067047422936

namespace A079599

/-- `record[n*A236677(n)]` -/
def P145016067047422936.Spec : Prop :=
  ∀ n, P145016067047422936.a n = A079599 n

end A079599

/-! ## A079599.P12487080142902982517

`filter[2*n, A236677(#)]`
-/

namespace A079599.P12487080142902982517
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A236677 (f1 j) = 1) n)

end

end A079599.P12487080142902982517

namespace A079599

/-- `filter[2*n, A236677(#)]` -/
def P12487080142902982517.Spec : Prop :=
  ∀ n, (P12487080142902982517.a n : ℤ) = A079599 n

end A079599

/-! ## A079599.P5245788507697534531

`eq[A002483(n), A115971(n)]`
-/

namespace A079599.P5245788507697534531
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002483 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115971 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A079599.P5245788507697534531

namespace A079599

/-- `eq[A002483(n), A115971(n)]` -/
def P5245788507697534531.Spec : Prop :=
  ∀ n, (P5245788507697534531.a n : ℤ) = A079599 n

end A079599

/-! ## A079599.P3387427234993446555

`eq[A028920(n), A236677(n)]`
-/

namespace A079599.P3387427234993446555
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028920 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236677 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A079599.P3387427234993446555

namespace A079599

/-- `eq[A028920(n), A236677(n)]` -/
def P3387427234993446555.Spec : Prop :=
  ∀ n, (P3387427234993446555.a n : ℤ) = A079599 n

end A079599

/-! ## A079599.P15080829097902222080

`eq[A062557(n), A236677(n)]`
-/

namespace A079599.P15080829097902222080
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062557 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236677 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A079599.P15080829097902222080

namespace A079599

/-- `eq[A062557(n), A236677(n)]` -/
def P15080829097902222080.Spec : Prop :=
  ∀ n, (P15080829097902222080.a n : ℤ) = A079599 n

end A079599

/-! ## A079599.P5594131659781842845

`eq[cos(A115971(n)), A057979(n)]`
-/

namespace A079599.P5594131659781842845
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.cos (A115971 n : ℝ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057979 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (f2 j : ℝ)) n

end

end A079599.P5594131659781842845

namespace A079599

/-- `eq[cos(A115971(n)), A057979(n)]` -/
def P5594131659781842845.Spec : Prop :=
  ∀ n, (P5594131659781842845.a n : ℤ) = A079599 n

end A079599

/-! ## A079599.P1067213158511096375

`eq[A053399(n+1), A115971(n)]`
-/

namespace A079599.P1067213158511096375
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053399 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115971 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A079599.P1067213158511096375

namespace A079599

/-- `eq[A053399(n+1), A115971(n)]` -/
def P1067213158511096375.Spec : Prop :=
  ∀ n, (P1067213158511096375.a n : ℤ) = A079599 n

end A079599

/-! ## A079599.P6631764628692950912

`eq[A115971(n), A146076(n+1)]`
-/

namespace A079599.P6631764628692950912
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115971 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146076 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A079599.P6631764628692950912

namespace A079599

/-- `eq[A115971(n), A146076(n+1)]` -/
def P6631764628692950912.Spec : Prop :=
  ∀ n, (P6631764628692950912.a n : ℤ) = A079599 n

end A079599

/-! ## A079599.P17808539545476639188

`eq[A115971(n), A225350(n+1)]`
-/

namespace A079599.P17808539545476639188
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115971 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225350 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A079599.P17808539545476639188

namespace A079599

/-- `eq[A115971(n), A225350(n+1)]` -/
def P17808539545476639188.Spec : Prop :=
  ∀ n, (P17808539545476639188.a n : ℤ) = A079599 n

end A079599

/-! ## A079599.P9333166202994493585

`eq[A115971(n), A225351(n+1)]`
-/

namespace A079599.P9333166202994493585
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115971 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225351 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A079599.P9333166202994493585

namespace A079599

/-- `eq[A115971(n), A225351(n+1)]` -/
def P9333166202994493585.Spec : Prop :=
  ∀ n, (P9333166202994493585.a n : ℤ) = A079599 n

end A079599

/-! ## A079599.P1152797834489903668

`eq[A225350(n+1), A345021(n)]`
-/

namespace A079599.P1152797834489903668
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225350 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345021 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A079599.P1152797834489903668

namespace A079599

/-- `eq[A225350(n+1), A345021(n)]` -/
def P1152797834489903668.Spec : Prop :=
  ∀ n, (P1152797834489903668.a n : ℤ) = A079599 n

end A079599

/-! ## A079599.P16930955072555818459

`eq[A225351(n+1), A345021(n)]`
-/

namespace A079599.P16930955072555818459
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225351 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345021 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A079599.P16930955072555818459

namespace A079599

/-- `eq[A225351(n+1), A345021(n)]` -/
def P16930955072555818459.Spec : Prop :=
  ∀ n, (P16930955072555818459.a n : ℤ) = A079599 n

end A079599

/-! ## A079599.P2515046812125115276

`eq[A055396(n+2), A236677(n)]`
-/

namespace A079599.P2515046812125115276
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055396 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236677 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A079599.P2515046812125115276

namespace A079599

/-- `eq[A055396(n+2), A236677(n)]` -/
def P2515046812125115276.Spec : Prop :=
  ∀ n, (P2515046812125115276.a n : ℤ) = A079599 n

end A079599

/-! ## A079599.P1125236673844669040

`eq[0, A115971(n)/A019565(n)]`
-/

namespace A079599.P1125236673844669040
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A115971 n : ℚ) / (A019565 n : ℚ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℚ) = f2 j) n

end

end A079599.P1125236673844669040

namespace A079599

/-- `eq[0, A115971(n)/A019565(n)]` -/
def P1125236673844669040.Spec : Prop :=
  ∀ n, (P1125236673844669040.a n : ℤ) = A079599 n

end A079599

/-! ## A079599.P14401800892188347629

`eq[A000122(n+5), A115971(n)]`
-/

namespace A079599.P14401800892188347629
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000122 (n + 5)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115971 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A079599.P14401800892188347629

namespace A079599

/-- `eq[A000122(n+5), A115971(n)]` -/
def P14401800892188347629.Spec : Prop :=
  ∀ n, (P14401800892188347629.a n : ℤ) = A079599 n

end A079599

/-! ## A079599.P17470663785530766693

`eq[n*A010673(n), A115971(n)]`
-/

namespace A079599.P17470663785530766693
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A010673 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115971 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A079599.P17470663785530766693

namespace A079599

/-- `eq[n*A010673(n), A115971(n)]` -/
def P17470663785530766693.Spec : Prop :=
  ∀ n, (P17470663785530766693.a n : ℤ) = A079599 n

end A079599

