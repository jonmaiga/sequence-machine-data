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
import Seq.B000.C039
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C009
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C005
import Seq.B002.C006
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
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
import Seq.B008.C001
import Seq.B009.C000
import Seq.B010.C000
import Seq.B011.C000
import Seq.B012.C000
import Seq.B013.C000
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
# A014701: Number of multiplications to compute n-th power by the Chandah-sutra method.

The programs for A014701, the canonical program `A014701.P12214863752987612616` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A014701 has offset 1).

The definition of A014701 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A014701.P12214863752987612616

`A056792(n+1)-1`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A014701

/-- `A056792(n+1)-1` -/
def P12214863752987612616.Spec : Prop :=
  ∀ n, P12214863752987612616.a n = A014701 (n + 1)

theorem P12214863752987612616.correct : P12214863752987612616.Spec := by
  intro n
  simp only [A014701, Nat.add_sub_cancel]

end A014701

/-! ## A014701.P7312023476843911664

`A056791(n+1)-2`
-/

namespace A014701.P7312023476843911664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056791 (n + 1) - 2

end

end A014701.P7312023476843911664

namespace A014701

/-- `A056791(n+1)-2` -/
def P7312023476843911664.Spec : Prop :=
  ∀ n, P7312023476843911664.a n = A014701 (n + 1)

theorem P7312023476843911664.correct : P7312023476843911664.Spec := by
  intro n
  simp only [A014701, Nat.add_sub_cancel, A014701.P7312023476843911664.a, A014701.P12214863752987612616.a, A056791, A056791.P10588008937732959129.a, A056792, A056792.P13266386025487519892.a, A000120, A000120.P2816527436160941581.a, A070939, A070939.P14677302147902843740.a, A005187, A005187.P3874015513960485494.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A014701

/-! ## A014701.P1581967846444080515

`a(lcm(2, 1-n)/2)+1` with `a(0)=0`
-/

namespace A014701.P1581967846444080515
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  a (SequenceMachineLib.roundAway ((Int.lcm 2 (1 - (n : ℤ)) : ℚ) / 2)).toNat + 1

end

end A014701.P1581967846444080515

namespace A014701

/-- `a(lcm(2, 1-n)/2)+1` -/
def P1581967846444080515.Spec : Prop :=
  ∀ n, (P1581967846444080515.a n : ℤ) = A014701 (n + 1)

end A014701

/-! ## A014701.P11093668121586166167

`a(gcd(n-1, C(n, 2)))+1` with `a(0)=0`
-/

namespace A014701.P11093668121586166167
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  a (Int.gcd ((n : ℤ) - 1) (Nat.choose n 2 : ℤ)) + 1

end

end A014701.P11093668121586166167

namespace A014701

/-- `a(gcd(n-1, C(n, 2)))+1` -/
def P11093668121586166167.Spec : Prop :=
  ∀ n, (P11093668121586166167.a n : ℤ) = A014701 (n + 1)

end A014701

/-! ## A014701.P13272222380328560700

`a(floor((n-1)/2))+gcd(2, n)` with `a(0)=0`
-/

namespace A014701.P13272222380328560700
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  a ⌊((n : ℤ) - 1 : ℚ) / 2⌋.toNat + Nat.gcd 2 n

end

end A014701.P13272222380328560700

namespace A014701

/-- `a(floor((n-1)/2))+gcd(2, n)` -/
def P13272222380328560700.Spec : Prop :=
  ∀ n, (P13272222380328560700.a n : ℤ) = A014701 (n + 1)

end A014701

/-! ## A014701.P2404672532384498926

`2-(n%2-a(floor((n-1)/2)))` with `a(0)=0`
-/

namespace A014701.P2404672532384498926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  2 - (((n % 2 : ℕ) : ℤ) - a ⌊((n : ℤ) - 1 : ℚ) / 2⌋.toNat)

end

end A014701.P2404672532384498926

namespace A014701

/-- `2-(n%2-a(floor((n-1)/2)))` -/
def P2404672532384498926.Spec : Prop :=
  ∀ n, P2404672532384498926.a n = A014701 (n + 1)

end A014701

/-! ## A014701.P17746245495892590173

`floor(log2(n+1))+n-∑[val(n+1, 2)]`
-/

namespace A014701.P17746245495892590173
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (n + 1) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.log 2 (n + 1) : ℤ) + ((n : ℤ) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ))

end

end A014701.P17746245495892590173

namespace A014701

/-- `floor(log2(n+1))+n-∑[val(n+1, 2)]` -/
def P17746245495892590173.Spec : Prop :=
  ∀ n, P17746245495892590173.a n = A014701 (n + 1)

end A014701

/-! ## A014701.P8736202051796365759

`floor(log2(A048678(n+1)))`
-/

namespace A014701.P8736202051796365759
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.log 2 (A048678 (n + 1)).toNat

end

end A014701.P8736202051796365759

namespace A014701

/-- `floor(log2(A048678(n+1)))` -/
def P8736202051796365759.Spec : Prop :=
  ∀ n, (P8736202051796365759.a n : ℤ) = A014701 (n + 1)

end A014701

/-! ## A014701.P16474787900327400470

`n-∑[log2(A135517(n))]`
-/

namespace A014701.P16474787900327400470
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A135517 n : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (n : ℝ) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A014701.P16474787900327400470

namespace A014701

/-- `n-∑[log2(A135517(n))]` -/
def P16474787900327400470.Spec : Prop :=
  ∀ n, P16474787900327400470.a n = (A014701 (n + 1) : ℝ)

end A014701

/-! ## A014701.P9609655721363214292

`∑[2-A091090(n)]-1`
-/

namespace A014701.P9609655721363214292
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A091090 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A014701.P9609655721363214292

namespace A014701

/-- `∑[2-A091090(n)]-1` -/
def P9609655721363214292.Spec : Prop :=
  ∀ n, P9609655721363214292.a n = A014701 (n + 1)

end A014701

/-! ## A014701.P14647570777750897702

`2*n-A376116(n+1)`
-/

namespace A014701.P14647570777750897702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) - A376116 (n + 1)

end

end A014701.P14647570777750897702

namespace A014701

/-- `2*n-A376116(n+1)` -/
def P14647570777750897702.Spec : Prop :=
  ∀ n, P14647570777750897702.a n = A014701 (n + 1)

theorem P14647570777750897702.correct : P14647570777750897702.Spec := by
  intro n
  simp only [A014701, Nat.add_sub_cancel, A014701.P14647570777750897702.a, A014701.P12214863752987612616.a, A056792, A056792.P13266386025487519892.a, A376116, A376116.P15301336638265797168.a, A000120, A000120.P2816527436160941581.a, A070939, A070939.P14677302147902843740.a, A005187, A005187.P3874015513960485494.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A014701

/-! ## A014701.P16626107510689436148

`floor(log2(A124108(n+1)))-1`
-/

namespace A014701.P16626107510689436148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.log 2 (A124108 (n + 1)).toNat : ℤ) - 1

end

end A014701.P16626107510689436148

namespace A014701

/-- `floor(log2(A124108(n+1)))-1` -/
def P16626107510689436148.Spec : Prop :=
  ∀ n, P16626107510689436148.a n = A014701 (n + 1)

end A014701

/-! ## A014701.P5177875884141514269

`floor(log2(A196168(n+1)))-1`
-/

namespace A014701.P5177875884141514269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.log 2 (A196168 (n + 1)).toNat : ℤ) - 1

end

end A014701.P5177875884141514269

namespace A014701

/-- `floor(log2(A196168(n+1)))-1` -/
def P5177875884141514269.Spec : Prop :=
  ∀ n, P5177875884141514269.a n = A014701 (n + 1)

end A014701

/-! ## A014701.P13298748853367273628

`A023444(A056791(n+1))`
-/

namespace A014701.P13298748853367273628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023444 (A056791 (n + 1)).toNat

end

end A014701.P13298748853367273628

namespace A014701

/-- `A023444(A056791(n+1))` -/
def P13298748853367273628.Spec : Prop :=
  ∀ n, P13298748853367273628.a n = A014701 (n + 1)

end A014701

/-! ## A014701.P15858934052807887485

`A056792(A029578(n+1))`
-/

namespace A014701.P15858934052807887485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056792 (A029578 (n + 1)).toNat

end

end A014701.P15858934052807887485

namespace A014701

/-- `A056792(A029578(n+1))` -/
def P15858934052807887485.Spec : Prop :=
  ∀ n, P15858934052807887485.a n = A014701 (n + 1)

end A014701

/-! ## A014701.P12991024018796995979

`A119387(n)+A000120(n)`
-/

namespace A014701.P12991024018796995979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119387 n + A000120 n

end

end A014701.P12991024018796995979

namespace A014701

/-- `A119387(n)+A000120(n)` -/
def P12991024018796995979.Spec : Prop :=
  ∀ n, P12991024018796995979.a n = A014701 (n + 1)

end A014701

/-! ## A014701.P9628494760743381840

`A065423(2*A056792(n+1))`
-/

namespace A014701.P9628494760743381840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065423 (2 * A056792 (n + 1)).toNat

end

end A014701.P9628494760743381840

namespace A014701

/-- `A065423(2*A056792(n+1))` -/
def P9628494760743381840.Spec : Prop :=
  ∀ n, P9628494760743381840.a n = A014701 (n + 1)

end A014701

/-! ## A014701.P4464952963084437013

`A048881(n)+A000523(n+1)`
-/

namespace A014701.P4464952963084437013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048881 n + A000523 (n + 1)

end

end A014701.P4464952963084437013

namespace A014701

/-- `A048881(n)+A000523(n+1)` -/
def P4464952963084437013.Spec : Prop :=
  ∀ n, P4464952963084437013.a n = A014701 (n + 1)

end A014701

/-! ## A014701.P15406870771091566084

`A000523(n+1)+log2(A048896(n))`
-/

namespace A014701.P15406870771091566084
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A000523 (n + 1) : ℝ) + Real.logb 2 (A048896 n : ℝ)

end

end A014701.P15406870771091566084

namespace A014701

/-- `A000523(n+1)+log2(A048896(n))` -/
def P15406870771091566084.Spec : Prop :=
  ∀ n, P15406870771091566084.a n = (A014701 (n + 1) : ℝ)

end A014701

/-! ## A014701.P11022068390247012464

`Δ[A083652(n)+A000788(n)]-2`
-/

namespace A014701.P11022068390247012464
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083652 n + A000788 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - 2

end

end A014701.P11022068390247012464

namespace A014701

/-- `Δ[A083652(n)+A000788(n)]-2` -/
def P11022068390247012464.Spec : Prop :=
  ∀ n, P11022068390247012464.a n = A014701 (n + 1)

end A014701

/-!
# A014702: Inverse of 693rd cyclotomic polynomial.

The programs for A014702, there is no canonical definition to state claims against.
-/

/-! ## A014702.P16483662125045634642

`A010892(n)*A015395(n)`
-/

namespace A014702.P16483662125045634642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010892 n * A015395 n

end

end A014702.P16483662125045634642

/-!
# A014705: Expansion of ((theta_2)^4 + (theta_3)^4) / eta(z/2)^4.

The programs for A014705, there is no canonical definition to state claims against.
-/

/-! ## A014705.P8866221303912393767

`A101127(2*n)`
-/

namespace A014705.P8866221303912393767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101127 (2 * n)

end

end A014705.P8866221303912393767

/-! ## A014705.P13439730412757204347

`record[A007259(n)]`
-/

namespace A014705.P13439730412757204347
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007259 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A014705.P13439730412757204347

/-! ## A014705.P16508496736449121327

`A007259(2*n)`
-/

namespace A014705.P16508496736449121327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007259 (2 * n)

end

end A014705.P16508496736449121327

/-! ## A014705.P13127136189612111141

`A227175(4*n)`
-/

namespace A014705.P13127136189612111141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227175 (4 * n)

end

end A014705.P13127136189612111141

/-! ## A014705.P11409017926066053279

`A286352(A187989(n+1))`
-/

namespace A014705.P11409017926066053279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286352 (A187989 (n + 1)).toNat

end

end A014705.P11409017926066053279

/-!
# A014706: Inverse of 697th cyclotomic polynomial.

The programs for A014706, there is no canonical definition to state claims against.
-/

/-! ## A014706.P16148747204340122206

`A015403(n)*A033999(n)`
-/

namespace A014706.P16148747204340122206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015403 n * A033999 n

end

end A014706.P16148747204340122206

/-!
# A014707: a(4n) = 0, a(4n+2) = 1, a(2n+1) = a(n).

The programs for A014707, the canonical program `A014707.P14309168736324698614` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A014707 has offset 0).

The definition of A014707 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A014707.P17190085924481722401

`char[or(n, n-1)+n]`
-/

namespace A014707.P17190085924481722401
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (n : ℤ) ((n : ℤ) - 1) + (n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A014707.P17190085924481722401

namespace A014707

/-- `char[or(n, n-1)+n]` -/
def P17190085924481722401.Spec : Prop :=
  ∀ n, (P17190085924481722401.a n : ℤ) = A014707 n

end A014707

/-! ## A014707.P6600473972802295061

`floor(ratio[acot(xor(n, 2*n))])`
-/

namespace A014707.P6600473972802295061
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.acot (Nat.xor n (2 * n) : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊f1 (n + 1) / f1 n⌋

end

end A014707.P6600473972802295061

namespace A014707

/-- `floor(ratio[acot(xor(n, 2*n))])` -/
def P6600473972802295061.Spec : Prop :=
  ∀ n, P6600473972802295061.a n = A014707 n

end A014707

/-! ## A014707.P17024371744487022758

`char[comp[and(n, n+1)+n]]`
-/

namespace A014707.P17024371744487022758
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land n (n + 1) + n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A014707.P17024371744487022758

namespace A014707

/-- `char[comp[and(n, n+1)+n]]` -/
def P17024371744487022758.Spec : Prop :=
  ∀ n, (P17024371744487022758.a n : ℤ) = A014707 n

end A014707

/-! ## A014707.P11909183184838479228

`log2(ceil(ratio[acot(xor(n, 2*n))]))`
-/

namespace A014707.P11909183184838479228
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.acot (Nat.xor n (2 * n) : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (⌈f1 (n + 1) / f1 n⌉ : ℝ)

end

end A014707.P11909183184838479228

namespace A014707

/-- `log2(ceil(ratio[acot(xor(n, 2*n))]))` -/
def P11909183184838479228.Spec : Prop :=
  ∀ n, P11909183184838479228.a n = (A014707 n : ℝ)

end A014707

/-! ## A014707.P783945861864341780

`1-char[and(n, n+1)+n]`
-/

namespace A014707.P783945861864341780
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land n (n + 1) + n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A014707.P783945861864341780

namespace A014707

/-- `1-char[and(n, n+1)+n]` -/
def P783945861864341780.Spec : Prop :=
  ∀ n, P783945861864341780.a n = A014707 n

end A014707

/-! ## A014707.P2758656282241570461

`char[or(n, n+1)+1+n]`
-/

namespace A014707.P2758656282241570461
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor n (n + 1) + 1 + n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A014707.P2758656282241570461

namespace A014707

/-- `char[or(n, n+1)+1+n]` -/
def P2758656282241570461.Spec : Prop :=
  ∀ n, (P2758656282241570461.a n : ℤ) = A014707 n

end A014707

/-! ## A014707.P16267854480455865228

`floor(ratio[acot(or(n, 2*n+1))])`
-/

namespace A014707.P16267854480455865228
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.acot (Nat.lor n (2 * n + 1) : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊f1 (n + 1) / f1 n⌋

end

end A014707.P16267854480455865228

namespace A014707

/-- `floor(ratio[acot(or(n, 2*n+1))])` -/
def P16267854480455865228.Spec : Prop :=
  ∀ n, P16267854480455865228.a n = A014707 n

end A014707

/-! ## A014707.P16069748479722360041

`ceil(Δ[acot(xor(n, 2*n+1))])`
-/

namespace A014707.P16069748479722360041
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.acot (Nat.xor n (2 * n + 1) : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈f1 (n + 1) - f1 n⌉

end

end A014707.P16069748479722360041

namespace A014707

/-- `ceil(Δ[acot(xor(n, 2*n+1))])` -/
def P16069748479722360041.Spec : Prop :=
  ∀ n, P16069748479722360041.a n = A014707 n

end A014707

/-! ## A014707.P1808700427022330133

`(1-Δ[xor(n, 2*n)]%2)/2`
-/

namespace A014707.P1808700427022330133
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor n (2 * n)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 - Int.tmod ((f1 (n + 1) : ℤ) - (f1 n : ℤ)) 2 : ℚ) / 2

end

end A014707.P1808700427022330133

namespace A014707

/-- `(1-Δ[xor(n, 2*n)]%2)/2` -/
def P1808700427022330133.Spec : Prop :=
  ∀ n, P1808700427022330133.a n = (A014707 n : ℚ)

end A014707

/-! ## A014707.P14309168736324698614

`floor((Δ[and(n, 2*n)]+n)/(n+1))`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A014707

/-- `floor((Δ[and(n, 2*n)]+n)/(n+1))` -/
def P14309168736324698614.Spec : Prop :=
  ∀ n, P14309168736324698614.a n = A014707 n

theorem P14309168736324698614.correct : P14309168736324698614.Spec := by
  intro n
  simp only [A014707]

end A014707

/-! ## A014707.P9140582272464195827

`(((n+1)/2^val(n+1, 2)-1)/2)%2`
-/

namespace A014707.P9140582272464195827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway (((n + 1 : ℚ) / (2 ^ SequenceMachineLib.valuation (n + 1) 2 : ℚ) - 1) / 2)) 2

end

end A014707.P9140582272464195827

namespace A014707

/-- `(((n+1)/2^val(n+1, 2)-1)/2)%2` -/
def P9140582272464195827.Spec : Prop :=
  ∀ n, P9140582272464195827.a n = A014707 n

end A014707

/-! ## A014707.P14558474226743480732

`log2(A014709(n))`
-/

namespace A014707.P14558474226743480732
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A014709 n : ℝ)

end

end A014707.P14558474226743480732

namespace A014707

/-- `log2(A014709(n))` -/
def P14558474226743480732.Spec : Prop :=
  ∀ n, P14558474226743480732.a n = (A014707 n : ℝ)

end A014707

/-! ## A014707.P5733858702180822853

`char[A255068(n)]`
-/

namespace A014707.P5733858702180822853
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255068 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A014707.P5733858702180822853

namespace A014707

/-- `char[A255068(n)]` -/
def P5733858702180822853.Spec : Prop :=
  ∀ n, (P5733858702180822853.a n : ℤ) = A014707 n

end A014707

/-! ## A014707.P160399242235350472

`char[A341522(n)]`
-/

namespace A014707.P160399242235350472
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341522 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A014707.P160399242235350472

namespace A014707

/-- `char[A341522(n)]` -/
def P160399242235350472.Spec : Prop :=
  ∀ n, (P160399242235350472.a n : ℤ) = A014707 n

end A014707

/-! ## A014707.P1266344105315919068

`A038189(n+1)`
-/

namespace A014707.P1266344105315919068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038189 (n + 1)

end

end A014707.P1266344105315919068

namespace A014707

/-- `A038189(n+1)` -/
def P1266344105315919068.Spec : Prop :=
  ∀ n, P1266344105315919068.a n = A014707 n

end A014707

/-! ## A014707.P13689385894311017044

`1-A014577(n)`
-/

namespace A014707.P13689385894311017044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A014577 n

end

end A014707.P13689385894311017044

namespace A014707

/-- `1-A014577(n)` -/
def P13689385894311017044.Spec : Prop :=
  ∀ n, P13689385894311017044.a n = A014707 n

theorem P13689385894311017044.correct : P13689385894311017044.Spec := by
  intro n
  simp only [A014707, Nat.add_sub_cancel, A014707.P13689385894311017044.a, A014707.P14309168736324698614.f1, A014707.P14309168736324698614.a, A014577, A014577.P18150949447596937918.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A014707

/-! ## A014707.P10334350324706260505

`2-A014710(n)`
-/

namespace A014707.P10334350324706260505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A014710 n

end

end A014707.P10334350324706260505

namespace A014707

/-- `2-A014710(n)` -/
def P10334350324706260505.Spec : Prop :=
  ∀ n, P10334350324706260505.a n = A014707 n

end A014707

/-! ## A014707.P11494364093325391640

`A025480(n)%2`
-/

namespace A014707.P11494364093325391640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A025480 n) 2

end

end A014707.P11494364093325391640

namespace A014707

/-- `A025480(n)%2` -/
def P11494364093325391640.Spec : Prop :=
  ∀ n, P11494364093325391640.a n = A014707 n

end A014707

/-! ## A014707.P15068272496248378790

`floor(log(A343180(n)))`
-/

namespace A014707.P15068272496248378790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.log (A343180 n : ℝ)⌋

end

end A014707.P15068272496248378790

namespace A014707

/-- `floor(log(A343180(n)))` -/
def P15068272496248378790.Spec : Prop :=
  ∀ n, P15068272496248378790.a n = A014707 n

end A014707

/-! ## A014707.P18372928717366057191

`A057168(n+1)%2`
-/

namespace A014707.P18372928717366057191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A057168 (n + 1)) 2

end

end A014707.P18372928717366057191

namespace A014707

/-- `A057168(n+1)%2` -/
def P18372928717366057191.Spec : Prop :=
  ∀ n, P18372928717366057191.a n = A014707 n

end A014707

/-!
# A014708: Coefficients of the modular function J = j - 744.

The programs for A014708, there is no canonical definition to state claims against.
-/

/-! ## A014708.P14733406461186430566

`ceil(1/A289063(n))*A289063(n)`
-/

namespace A014708.P14733406461186430566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈1 / (A289063 n : ℚ)⌉ * A289063 n

end

end A014708.P14733406461186430566

/-!
# A014709: The regular paper-folding (or dragon curve) sequence. Alphabet {1,2}.

The programs for A014709, the canonical program `A014709.P15262916818477165101` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A014709 has offset 0).

The definition of A014709 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A014709.P3101704455858709130

`ceil(ratio[acot(xor(n, 2*n))])`
-/

namespace A014709.P3101704455858709130
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.acot (Nat.xor n (2 * n) : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈f1 (n + 1) / f1 n⌉

end

end A014709.P3101704455858709130

namespace A014709

/-- `ceil(ratio[acot(xor(n, 2*n))])` -/
def P3101704455858709130.Spec : Prop :=
  ∀ n, P3101704455858709130.a n = A014709 n

end A014709

/-! ## A014709.P7141923215406985631

`2-char[and(n, n+1)+n]`
-/

namespace A014709.P7141923215406985631
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land n (n + 1) + n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A014709.P7141923215406985631

namespace A014709

/-- `2-char[and(n, n+1)+n]` -/
def P7141923215406985631.Spec : Prop :=
  ∀ n, P7141923215406985631.a n = A014709 n

end A014709

/-! ## A014709.P6856726242932124942

`char[or(n, n-1)+n]+1`
-/

namespace A014709.P6856726242932124942
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (n : ℤ) ((n : ℤ) - 1) + (n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f1 j = (n : ℤ) then 1 else 0) + 1

end

end A014709.P6856726242932124942

namespace A014709

/-- `char[or(n, n-1)+n]+1` -/
def P6856726242932124942.Spec : Prop :=
  ∀ n, (P6856726242932124942.a n : ℤ) = A014709 n

end A014709

/-! ## A014709.P3357734987955500904

`log2(3-Δ[xor(n, 2*n)]%2)`
-/

namespace A014709.P3357734987955500904
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor n (2 * n)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (3 - Int.tmod ((f1 (n + 1) : ℤ) - (f1 n : ℤ)) 2 : ℝ)

end

end A014709.P3357734987955500904

namespace A014709

/-- `log2(3-Δ[xor(n, 2*n)]%2)` -/
def P3357734987955500904.Spec : Prop :=
  ∀ n, P3357734987955500904.a n = (A014709 n : ℝ)

end A014709

/-! ## A014709.P5426218391086325443

`char[comp[and(n, n+1)+n]]+1`
-/

namespace A014709.P5426218391086325443
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land n (n + 1) + n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f1 j = n then 1 else 0) + 1

end

end A014709.P5426218391086325443

namespace A014709

/-- `char[comp[and(n, n+1)+n]]+1` -/
def P5426218391086325443.Spec : Prop :=
  ∀ n, (P5426218391086325443.a n : ℤ) = A014709 n

end A014709

/-! ## A014709.P2948502052059703455

`char[or(n, n+1)+1+n]+1`
-/

namespace A014709.P2948502052059703455
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor n (n + 1) + 1 + n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f1 j = n then 1 else 0) + 1

end

end A014709.P2948502052059703455

namespace A014709

/-- `char[or(n, n+1)+1+n]+1` -/
def P2948502052059703455.Spec : Prop :=
  ∀ n, (P2948502052059703455.a n : ℤ) = A014709 n

end A014709

/-! ## A014709.P3131167501617038984

`2/(char[and(n, n+1)+n]+1)`
-/

namespace A014709.P3131167501617038984
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land n (n + 1) + n

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 / (((if ∃ j, f1 j = n then 1 else 0) + 1 : ℕ) : ℚ)

end

end A014709.P3131167501617038984

namespace A014709

/-- `2/(char[and(n, n+1)+n]+1)` -/
def P3131167501617038984.Spec : Prop :=
  ∀ n, P3131167501617038984.a n = (A014709 n : ℚ)

end A014709

/-! ## A014709.P14957727591656461520

`C(2, char[and(n, n+1)+n]+1)`
-/

namespace A014709.P14957727591656461520
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land n (n + 1) + n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 2 ((if ∃ j, f1 j = n then 1 else 0) + 1)

end

end A014709.P14957727591656461520

namespace A014709

/-- `C(2, char[and(n, n+1)+n]+1)` -/
def P14957727591656461520.Spec : Prop :=
  ∀ n, (P14957727591656461520.a n : ℤ) = A014709 n

end A014709

/-! ## A014709.P15262916818477165101

`floor((Δ[and(n, 2*n)]+2*n+1)/(n+1))`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A014709

/-- `floor((Δ[and(n, 2*n)]+2*n+1)/(n+1))` -/
def P15262916818477165101.Spec : Prop :=
  ∀ n, P15262916818477165101.a n = A014709 n

theorem P15262916818477165101.correct : P15262916818477165101.Spec := by
  intro n
  simp only [A014709]

end A014709

/-! ## A014709.P13512640927404842880

`A014707(n)+1`
-/

namespace A014709.P13512640927404842880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014707 n + 1

end

end A014709.P13512640927404842880

namespace A014709

/-- `A014707(n)+1` -/
def P13512640927404842880.Spec : Prop :=
  ∀ n, P13512640927404842880.a n = A014709 n

end A014709

/-! ## A014709.P1798117028471109883

`2-A014577(n)`
-/

namespace A014709.P1798117028471109883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A014577 n

end

end A014709.P1798117028471109883

namespace A014709

/-- `2-A014577(n)` -/
def P1798117028471109883.Spec : Prop :=
  ∀ n, P1798117028471109883.a n = A014709 n

end A014709

/-! ## A014709.P3810267280522570815

`3-A014710(n)`
-/

namespace A014709.P3810267280522570815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 - A014710 n

end

end A014709.P3810267280522570815

namespace A014709

/-- `3-A014710(n)` -/
def P3810267280522570815.Spec : Prop :=
  ∀ n, P3810267280522570815.a n = A014709 n

end A014709

/-! ## A014709.P16338654914040647769

`round(sqrt(A343180(n)))`
-/

namespace A014709.P16338654914040647769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (A343180 n : ℝ))

end

end A014709.P16338654914040647769

namespace A014709

/-- `round(sqrt(A343180(n)))` -/
def P16338654914040647769.Spec : Prop :=
  ∀ n, P16338654914040647769.a n = A014709 n

end A014709

/-! ## A014709.P2626474491083029026

`abs(A317335(n+1))`
-/

namespace A014709.P2626474491083029026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A317335 (n + 1)|

end

end A014709.P2626474491083029026

namespace A014709

/-- `abs(A317335(n+1))` -/
def P2626474491083029026.Spec : Prop :=
  ∀ n, P2626474491083029026.a n = A014709 n

end A014709

/-! ## A014709.P15104818368511148116

`and(2, A153733(n))!`
-/

namespace A014709.P15104818368511148116
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (Int.land 2 (A153733 n)).toNat

end

end A014709.P15104818368511148116

namespace A014709

/-- `and(2, A153733(n))!` -/
def P15104818368511148116.Spec : Prop :=
  ∀ n, (P15104818368511148116.a n : ℤ) = A014709 n

end A014709

/-! ## A014709.P4323997658468884520

`char[A255068(n)]+1`
-/

namespace A014709.P4323997658468884520
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255068 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f1 j = (n : ℤ) then 1 else 0) + 1

end

end A014709.P4323997658468884520

namespace A014709

/-- `char[A255068(n)]+1` -/
def P4323997658468884520.Spec : Prop :=
  ∀ n, (P4323997658468884520.a n : ℤ) = A014709 n

end A014709

/-! ## A014709.P8336097251201988712

`char[A341522(n)]+1`
-/

namespace A014709.P8336097251201988712
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341522 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f1 j = (n : ℤ) then 1 else 0) + 1

end

end A014709.P8336097251201988712

namespace A014709

/-- `char[A341522(n)]+1` -/
def P8336097251201988712.Spec : Prop :=
  ∀ n, (P8336097251201988712.a n : ℤ) = A014709 n

end A014709

/-! ## A014709.P4481409629251455223

`1+A038189(n+1)`
-/

namespace A014709.P4481409629251455223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 + A038189 (n + 1)

end

end A014709.P4481409629251455223

namespace A014709

/-- `1+A038189(n+1)` -/
def P4481409629251455223.Spec : Prop :=
  ∀ n, P4481409629251455223.a n = A014709 n

end A014709

/-! ## A014709.P7547507400925407046

`gcd(2, A003602(n+1))`
-/

namespace A014709.P7547507400925407046
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 2 (A003602 (n + 1))

end

end A014709.P7547507400925407046

namespace A014709

/-- `gcd(2, A003602(n+1))` -/
def P7547507400925407046.Spec : Prop :=
  ∀ n, (P7547507400925407046.a n : ℤ) = A014709 n

end A014709

/-! ## A014709.P12117800644905221722

`A317332(n+1)%4`
-/

namespace A014709.P12117800644905221722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A317332 (n + 1)) 4

end

end A014709.P12117800644905221722

namespace A014709

/-- `A317332(n+1)%4` -/
def P12117800644905221722.Spec : Prop :=
  ∀ n, P12117800644905221722.a n = A014709 n

end A014709

/-!
# A014710: The regular paper-folding (or dragon curve) sequence. Alphabet {2,1}.

The programs for A014710, the canonical program `A014710.P3356605544329119667` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A014710 has offset 0).

The definition of A014710 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A014710.P17805979927393749962

`char[and(n, n+1)+n]+1`
-/

namespace A014710.P17805979927393749962
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land n (n + 1) + n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f1 j = n then 1 else 0) + 1

end

end A014710.P17805979927393749962

namespace A014710

/-- `char[and(n, n+1)+n]+1` -/
def P17805979927393749962.Spec : Prop :=
  ∀ n, (P17805979927393749962.a n : ℤ) = A014710 n

end A014710

/-! ## A014710.P971807570381970849

`2-char[or(n, n-1)+n]`
-/

namespace A014710.P971807570381970849
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (n : ℤ) ((n : ℤ) - 1) + (n : ℤ)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A014710.P971807570381970849

namespace A014710

/-- `2-char[or(n, n-1)+n]` -/
def P971807570381970849.Spec : Prop :=
  ∀ n, P971807570381970849.a n = A014710 n

end A014710

/-! ## A014710.P13541062025983960008

`ceil(ratio[sqrt(or(n, 2*n+1))])`
-/

namespace A014710.P13541062025983960008
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (Nat.lor n (2 * n + 1) : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈f1 (n + 1) / f1 n⌉

end

end A014710.P13541062025983960008

namespace A014710

/-- `ceil(ratio[sqrt(or(n, 2*n+1))])` -/
def P13541062025983960008.Spec : Prop :=
  ∀ n, P13541062025983960008.a n = A014710 n

end A014710

/-! ## A014710.P1075997512710545630

`ceil(ratio[sqrt(xor(n, 2*n+1))])`
-/

namespace A014710.P1075997512710545630
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (Nat.xor n (2 * n + 1) : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈f1 (n + 1) / f1 n⌉

end

end A014710.P1075997512710545630

namespace A014710

/-- `ceil(ratio[sqrt(xor(n, 2*n+1))])` -/
def P1075997512710545630.Spec : Prop :=
  ∀ n, P1075997512710545630.a n = A014710 n

end A014710

/-! ## A014710.P15830704806090768542

`ceil(ratio[atan(or(n, 2*n+1))])`
-/

namespace A014710.P15830704806090768542
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.arctan (Nat.lor n (2 * n + 1) : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈f1 (n + 1) / f1 n⌉

end

end A014710.P15830704806090768542

namespace A014710

/-- `ceil(ratio[atan(or(n, 2*n+1))])` -/
def P15830704806090768542.Spec : Prop :=
  ∀ n, P15830704806090768542.a n = A014710 n

end A014710

/-! ## A014710.P8414294254083931660

`ceil(ratio[atan(xor(n, 2*n+1))])`
-/

namespace A014710.P8414294254083931660
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.arctan (Nat.xor n (2 * n + 1) : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈f1 (n + 1) / f1 n⌉

end

end A014710.P8414294254083931660

namespace A014710

/-- `ceil(ratio[atan(xor(n, 2*n+1))])` -/
def P8414294254083931660.Spec : Prop :=
  ∀ n, P8414294254083931660.a n = A014710 n

end A014710

/-! ## A014710.P16249085061665078155

`(Δ[xor(n, 2*n)]%2+3)/2`
-/

namespace A014710.P16249085061665078155
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor n (2 * n)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.tmod ((f1 (n + 1) : ℤ) - (f1 n : ℤ)) 2 + 3 : ℚ) / 2

end

end A014710.P16249085061665078155

namespace A014710

/-- `(Δ[xor(n, 2*n)]%2+3)/2` -/
def P16249085061665078155.Spec : Prop :=
  ∀ n, P16249085061665078155.a n = (A014710 n : ℚ)

end A014710

/-! ## A014710.P3356605544329119667

`floor(Δ[2*n-and(n, 2*n)/(n+1)])`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A014710

/-- `floor(Δ[2*n-and(n, 2*n)/(n+1)])` -/
def P3356605544329119667.Spec : Prop :=
  ∀ n, P3356605544329119667.a n = A014710 n

theorem P3356605544329119667.correct : P3356605544329119667.Spec := by
  intro n
  simp only [A014710]

end A014710

/-! ## A014710.P3238864986763174755

`A014577(n)+1`
-/

namespace A014710.P3238864986763174755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014577 n + 1

end

end A014710.P3238864986763174755

namespace A014710

/-- `A014577(n)+1` -/
def P3238864986763174755.Spec : Prop :=
  ∀ n, P3238864986763174755.a n = A014710 n

end A014710

/-! ## A014710.P15824158159755107727

`2-A014707(n)`
-/

namespace A014710.P15824158159755107727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A014707 n

end

end A014710.P15824158159755107727

namespace A014710

/-- `2-A014707(n)` -/
def P15824158159755107727.Spec : Prop :=
  ∀ n, P15824158159755107727.a n = A014710 n

end A014710

/-! ## A014710.P17460714794279537691

`3-A014709(n)`
-/

namespace A014710.P17460714794279537691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 - A014709 n

end

end A014710.P17460714794279537691

namespace A014710

/-- `3-A014709(n)` -/
def P17460714794279537691.Spec : Prop :=
  ∀ n, P17460714794279537691.a n = A014710 n

end A014710

/-! ## A014710.P12702113099939081717

`gcd(2, A025480(n))`
-/

namespace A014710.P12702113099939081717
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 2 (A025480 n)

end

end A014710.P12702113099939081717

namespace A014710

/-- `gcd(2, A025480(n))` -/
def P12702113099939081717.Spec : Prop :=
  ∀ n, (P12702113099939081717.a n : ℤ) = A014710 n

end A014710

/-! ## A014710.P3810126507264334719

`ceil(ratio[A073334(n)])`
-/

namespace A014710.P3810126507264334719
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073334 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(f1 (n + 1) : ℚ) / (f1 n : ℚ)⌉

end

end A014710.P3810126507264334719

namespace A014710

/-- `ceil(ratio[A073334(n)])` -/
def P3810126507264334719.Spec : Prop :=
  ∀ n, P3810126507264334719.a n = A014710 n

end A014710

/-! ## A014710.P14401722740433629693

`ceil(ratio[A080950(n)])`
-/

namespace A014710.P14401722740433629693
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080950 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(f1 (n + 1) : ℚ) / (f1 n : ℚ)⌉

end

end A014710.P14401722740433629693

namespace A014710

/-- `ceil(ratio[A080950(n)])` -/
def P14401722740433629693.Spec : Prop :=
  ∀ n, P14401722740433629693.a n = A014710 n

end A014710

/-! ## A014710.P12266968888533609576

`ceil(ratio[A088748(n)])`
-/

namespace A014710.P12266968888533609576
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088748 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(f1 (n + 1) : ℚ) / (f1 n : ℚ)⌉

end

end A014710.P12266968888533609576

namespace A014710

/-- `ceil(ratio[A088748(n)])` -/
def P12266968888533609576.Spec : Prop :=
  ∀ n, P12266968888533609576.a n = A014710 n

end A014710

/-! ## A014710.P3234133846073157997

`ceil(ratio[A382255(n)])`
-/

namespace A014710.P3234133846073157997
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382255 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(f1 (n + 1) : ℚ) / (f1 n : ℚ)⌉

end

end A014710.P3234133846073157997

namespace A014710

/-- `ceil(ratio[A382255(n)])` -/
def P3234133846073157997.Spec : Prop :=
  ∀ n, P3234133846073157997.a n = A014710 n

end A014710

/-! ## A014710.P4323503272267650882

`ceil(ratio[A396674(n)])`
-/

namespace A014710.P4323503272267650882
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A396674 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(f1 (n + 1) : ℚ) / (f1 n : ℚ)⌉

end

end A014710.P4323503272267650882

namespace A014710

/-- `ceil(ratio[A396674(n)])` -/
def P4323503272267650882.Spec : Prop :=
  ∀ n, P4323503272267650882.a n = A014710 n

end A014710

/-! ## A014710.P2957470853244470084

`2-char[A255068(n)]`
-/

namespace A014710.P2957470853244470084
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255068 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A014710.P2957470853244470084

namespace A014710

/-- `2-char[A255068(n)]` -/
def P2957470853244470084.Spec : Prop :=
  ∀ n, P2957470853244470084.a n = A014710 n

end A014710

/-! ## A014710.P14733496206580085319

`2-char[A341522(n)]`
-/

namespace A014710.P14733496206580085319
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341522 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A014710.P14733496206580085319

namespace A014710

/-- `2-char[A341522(n)]` -/
def P14733496206580085319.Spec : Prop :=
  ∀ n, P14733496206580085319.a n = A014710 n

end A014710

/-! ## A014710.P13820872623425406186

`2-A038189(n+1)`
-/

namespace A014710.P13820872623425406186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A038189 (n + 1)

end

end A014710.P13820872623425406186

namespace A014710

/-- `2-A038189(n+1)` -/
def P13820872623425406186.Spec : Prop :=
  ∀ n, P13820872623425406186.a n = A014710 n

end A014710

/-!
# A014711: Theta series of 16-dimensional 2-modular lattice with min norm 3 and det 256 (the "odd Barnes-Wall lattice").

The programs for A014711, there is no canonical definition to state claims against.
-/

/-! ## A014711.P10192366794306159090

`A239917(n)-A014713(n)`
-/

namespace A014711.P10192366794306159090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239917 n - A014713 n

end

end A014711.P10192366794306159090

/-! ## A014711.P16512646292596645011

`A239917(n)-4^n*A344340(A358213(n))`
-/

namespace A014711.P16512646292596645011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239917 n - (4 ^ n : ℤ) * A344340 (A358213 n).toNat

end

end A014711.P16512646292596645011

/-!
# A014712: Inverse of 703rd cyclotomic polynomial.

The programs for A014712, there is no canonical definition to state claims against.
-/

/-! ## A014712.P8003621347232164251

`(-1)^n*A015415(n)`
-/

namespace A014712.P8003621347232164251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A015415 n

end

end A014712.P8003621347232164251

/-!
# A014713: Theta series of shadow of lattice described in A014711.

The programs for A014713, there is no canonical definition to state claims against.
-/

/-! ## A014713.P17853401227881587076

`A239917(n)-A014711(n)`
-/

namespace A014713.P17853401227881587076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239917 n - A014711 n

end

end A014713.P17853401227881587076

/-! ## A014713.P2837984569621009719

`4^n*A344340(A358213(n))`
-/

namespace A014713.P2837984569621009719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (4 ^ n : ℤ) * A344340 (A358213 n).toNat

end

end A014713.P2837984569621009719

/-!
# A014714: Inverse of 705th cyclotomic polynomial.

The programs for A014714, there is no canonical definition to state claims against.
-/

/-! ## A014714.P906670884909873779

`A015419(n)*A033999(n)`
-/

namespace A014714.P906670884909873779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015419 n * A033999 n

end

end A014714.P906670884909873779

/-!
# A014717: a(n) = (F(n+1) + L(n))^2 where F(n) are the Fibonacci numbers (A000045) and L(n) are the Lucas numbers (A000032).

The programs for A014717, the canonical program `A014717.P6446320460849760249` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A014717 has offset 0).

The definition of A014717 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A014717.P6446320460849760249

`2*a(n-1)+2*a(n-2)-a(n-3)` with `a(0)=9, a(1)=4, a(2)=25`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A014717

/-- `2*a(n-1)+2*a(n-2)-a(n-3)` -/
def P6446320460849760249.Spec : Prop :=
  ∀ n, P6446320460849760249.a n = A014717 n

theorem P6446320460849760249.correct : P6446320460849760249.Spec := by
  intro n
  simp only [A014717]

end A014717

/-! ## A014717.P13842298439776997905

`A013655(n)²`
-/

namespace A014717.P13842298439776997905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013655 n ^ 2

end

end A014717.P13842298439776997905

namespace A014717

/-- `A013655(n)²` -/
def P13842298439776997905.Spec : Prop :=
  ∀ n, P13842298439776997905.a n = A014717 n

end A014717

/-! ## A014717.P11724143056284308428

`3*a(n-1)-a(n-2)+22*(-1)^n` with `a(0)=9, a(1)=4`
-/

namespace A014717.P11724143056284308428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [9, 4] fun n a =>
  3 * a (n - 1) - a (n - 2) + 22 * (-1) ^ n

end

end A014717.P11724143056284308428

namespace A014717

/-- `3*a(n-1)-a(n-2)+22*(-1)^n` -/
def P11724143056284308428.Spec : Prop :=
  ∀ n, P11724143056284308428.a n = A014717 n

end A014717

/-! ## A014717.P6718661206742830787

`Δ[a(n-2)-a(n-1)]²` with `a(0)=4, a(1)=1`
-/

namespace A014717.P6718661206742830787
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [4, 1] fun n f1 =>
  f1 (n - 2) - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) ^ 2

end

end A014717.P6718661206742830787

namespace A014717

/-- `Δ[a(n-2)-a(n-1)]²` -/
def P6718661206742830787.Spec : Prop :=
  ∀ n, P6718661206742830787.a n = A014717 n

end A014717

/-! ## A014717.P17017831296071048823

`∑[a(n-1)+a(n-2)]²` with `a(0)=3, a(1)=-1, a(2)=3`
-/

namespace A014717.P17017831296071048823
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [3, -1, 3] fun n f1 =>
  f1 (n - 1) + f1 (n - 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2

end

end A014717.P17017831296071048823

namespace A014717

/-- `∑[a(n-1)+a(n-2)]²` -/
def P17017831296071048823.Spec : Prop :=
  ∀ n, P17017831296071048823.a n = A014717 n

end A014717

/-! ## A014717.P16177905759757827998

`(2-(∑[a(n-1)-(1-a(n-2))]-n))²` with `a(0)=5, a(1)=0`
-/

namespace A014717.P16177905759757827998
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [5, 0] fun n f1 =>
  f1 (n - 1) - (1 - f1 (n - 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - (∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ))) ^ 2

end

end A014717.P16177905759757827998

namespace A014717

/-- `(2-(∑[a(n-1)-(1-a(n-2))]-n))²` -/
def P16177905759757827998.Spec : Prop :=
  ∀ n, P16177905759757827998.a n = A014717 n

end A014717

/-! ## A014717.P570539288580218115

`Δ[A001060(n)]²`
-/

namespace A014717.P570539288580218115
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001060 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) ^ 2

end

end A014717.P570539288580218115

namespace A014717

/-- `Δ[A001060(n)]²` -/
def P570539288580218115.Spec : Prop :=
  ∀ n, P570539288580218115.a n = A014717 n

end A014717

/-! ## A014717.P12519867585068394020

`Δ[A022318(n)]²`
-/

namespace A014717.P12519867585068394020
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022318 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) ^ 2

end

end A014717.P12519867585068394020

namespace A014717

/-- `Δ[A022318(n)]²` -/
def P12519867585068394020.Spec : Prop :=
  ∀ n, P12519867585068394020.a n = A014717 n

end A014717

/-! ## A014717.P17826852744796687294

`A396201(n+1)²`
-/

namespace A014717.P17826852744796687294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A396201 (n + 1) ^ 2

end

end A014717.P17826852744796687294

namespace A014717

/-- `A396201(n+1)²` -/
def P17826852744796687294.Spec : Prop :=
  ∀ n, P17826852744796687294.a n = A014717 n

end A014717

/-! ## A014717.P16592114788248158856

`(n-A013915(n))²`
-/

namespace A014717.P16592114788248158856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - A013915 n) ^ 2

end

end A014717.P16592114788248158856

namespace A014717

/-- `(n-A013915(n))²` -/
def P16592114788248158856.Spec : Prop :=
  ∀ n, P16592114788248158856.a n = A014717 n

end A014717

/-! ## A014717.P3084707315289518031

`Δ[Δ[A192761(n)]]²`
-/

namespace A014717.P3084707315289518031
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192761 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) ^ 2

end

end A014717.P3084707315289518031

namespace A014717

/-- `Δ[Δ[A192761(n)]]²` -/
def P3084707315289518031.Spec : Prop :=
  ∀ n, P3084707315289518031.a n = A014717 n

end A014717

/-! ## A014717.P16904556606929545608

`Δ[Δ[A192969(n)]]²`
-/

namespace A014717.P16904556606929545608
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192969 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) ^ 2

end

end A014717.P16904556606929545608

namespace A014717

/-- `Δ[Δ[A192969(n)]]²` -/
def P16904556606929545608.Spec : Prop :=
  ∀ n, P16904556606929545608.a n = A014717 n

end A014717

/-! ## A014717.P17297908458582561866

`Δ[Δ[A192979(n)]]²`
-/

namespace A014717.P17297908458582561866
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192979 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) ^ 2

end

end A014717.P17297908458582561866

namespace A014717

/-- `Δ[Δ[A192979(n)]]²` -/
def P17297908458582561866.Spec : Prop :=
  ∀ n, P17297908458582561866.a n = A014717 n

end A014717

/-! ## A014717.P18290749738536457692

`Δ[A187890(n+3)]²`
-/

namespace A014717.P18290749738536457692
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187890 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) ^ 2

end

end A014717.P18290749738536457692

namespace A014717

/-- `Δ[A187890(n+3)]²` -/
def P18290749738536457692.Spec : Prop :=
  ∀ n, P18290749738536457692.a n = A014717 n

end A014717

/-! ## A014717.P13268747741763487719

`Δ[A022382(n)/2]²`
-/

namespace A014717.P13268747741763487719
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A022382 n : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) ^ 2

end

end A014717.P13268747741763487719

namespace A014717

/-- `Δ[A022382(n)/2]²` -/
def P13268747741763487719.Spec : Prop :=
  ∀ n, P13268747741763487719.a n = (A014717 n : ℚ)

end A014717

/-! ## A014717.P9169899115324142309

`Δ[A022408(n)/2]²`
-/

namespace A014717.P9169899115324142309
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A022408 n : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) ^ 2

end

end A014717.P9169899115324142309

namespace A014717

/-- `Δ[A022408(n)/2]²` -/
def P9169899115324142309.Spec : Prop :=
  ∀ n, P9169899115324142309.a n = (A014717 n : ℚ)

end A014717

/-! ## A014717.P8029684982356378212

`(n-sqrt(A014718(n)))²`
-/

namespace A014717.P8029684982356378212
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((n : ℝ) - Real.sqrt (A014718 n : ℝ)) ^ 2

end

end A014717.P8029684982356378212

namespace A014717

/-- `(n-sqrt(A014718(n)))²` -/
def P8029684982356378212.Spec : Prop :=
  ∀ n, P8029684982356378212.a n = (A014717 n : ℝ)

end A014717

/-! ## A014717.P15318359965805462669

`Δ[A174562(Δ[n²])]²`
-/

namespace A014717.P15318359965805462669
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174562 ((f2 (n + 1) : ℤ) - (f2 n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) ^ 2

end

end A014717.P15318359965805462669

namespace A014717

/-- `Δ[A174562(Δ[n²])]²` -/
def P15318359965805462669.Spec : Prop :=
  ∀ n, P15318359965805462669.a n = A014717 n

end A014717

/-! ## A014717.P1435127730486325702

`(1-A187890(n+2))²`
-/

namespace A014717.P1435127730486325702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A187890 (n + 2)) ^ 2

end

end A014717.P1435127730486325702

namespace A014717

/-- `(1-A187890(n+2))²` -/
def P1435127730486325702.Spec : Prop :=
  ∀ n, P1435127730486325702.a n = A014717 n

end A014717

/-! ## A014717.P10745237858871280098

`A174562(2*(n+1))²`
-/

namespace A014717.P10745237858871280098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174562 (2 * (n + 1)) ^ 2

end

end A014717.P10745237858871280098

namespace A014717

/-- `A174562(2*(n+1))²` -/
def P10745237858871280098.Spec : Prop :=
  ∀ n, P10745237858871280098.a n = A014717 n

end A014717

/-!
# A014718: a(n) = (F(n+1)+L(n)+n)^2 where F(n) are the Fibonacci numbers (A000045) and L(n) are the Lucas numbers (A000032).

The programs for A014718, the canonical program `A014718.P5433606107759610678` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A014718 has offset 0).

The definition of A014718 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 239 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A014718.P5433606107759610678

`∑[a(n-1)+a(n-2)-1]²` with `a(0)=3, a(1)=0, a(2)=4`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A014718

/-- `∑[a(n-1)+a(n-2)-1]²` -/
def P5433606107759610678.Spec : Prop :=
  ∀ n, P5433606107759610678.a n = A014718 n

theorem P5433606107759610678.correct : P5433606107759610678.Spec := by
  intro n
  simp only [A014718]

end A014718

/-! ## A014718.P44003255067948231

`∑[a(n-1)-(1-a(n-2))]²` with `a(0)=3, a(1)=0, a(2)=4`
-/

namespace A014718.P44003255067948231
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [3, 0, 4] fun n f1 =>
  f1 (n - 1) - (1 - f1 (n - 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2

end

end A014718.P44003255067948231

namespace A014718

/-- `∑[a(n-1)-(1-a(n-2))]²` -/
def P44003255067948231.Spec : Prop :=
  ∀ n, P44003255067948231.a n = A014718 n

theorem P44003255067948231.correct : P44003255067948231.Spec := by
  intro n
  simp only [A014718, Nat.add_sub_cancel, A014718.P44003255067948231.f1, A014718.P44003255067948231.a, A014718.P5433606107759610678.f1, A014718.P5433606107759610678.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A014718

/-! ## A014718.P4114157913576039932

`A013915(n)²`
-/

namespace A014718.P4114157913576039932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013915 n ^ 2

end

end A014718.P4114157913576039932

namespace A014718

/-- `A013915(n)²` -/
def P4114157913576039932.Spec : Prop :=
  ∀ n, P4114157913576039932.a n = A014718 n

end A014718

/-! ## A014718.P15660468199730547634

`(A013655(n)+n)²`
-/

namespace A014718.P15660468199730547634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A013655 n + (n : ℤ)) ^ 2

end

end A014718.P15660468199730547634

namespace A014718

/-- `(A013655(n)+n)²` -/
def P15660468199730547634.Spec : Prop :=
  ∀ n, P15660468199730547634.a n = A014718 n

end A014718

/-! ## A014718.P6908564376834117464

`(sqrt(A014717(n))+n)²`
-/

namespace A014718.P6908564376834117464
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (Real.sqrt (A014717 n : ℝ) + (n : ℝ)) ^ 2

end

end A014718.P6908564376834117464

namespace A014718

/-- `(sqrt(A014717(n))+n)²` -/
def P6908564376834117464.Spec : Prop :=
  ∀ n, P6908564376834117464.a n = (A014718 n : ℝ)

end A014718

/-! ## A014718.P9167663048923891740

`(Δ[A001060(n)]+n)²`
-/

namespace A014718.P9167663048923891740
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001060 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n + (n : ℤ)) ^ 2

end

end A014718.P9167663048923891740

namespace A014718

/-- `(Δ[A001060(n)]+n)²` -/
def P9167663048923891740.Spec : Prop :=
  ∀ n, P9167663048923891740.a n = A014718 n

end A014718

/-! ## A014718.P3682001810970563096

`(Δ[A022318(n)]+n)²`
-/

namespace A014718.P3682001810970563096
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022318 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n + (n : ℤ)) ^ 2

end

end A014718.P3682001810970563096

namespace A014718

/-- `(Δ[A022318(n)]+n)²` -/
def P3682001810970563096.Spec : Prop :=
  ∀ n, P3682001810970563096.a n = A014718 n

end A014718

/-! ## A014718.P1606570000069526662

`(Δ[Δ[A192761(n)]]+n)²`
-/

namespace A014718.P1606570000069526662
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192761 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n + (n : ℤ)) ^ 2

end

end A014718.P1606570000069526662

namespace A014718

/-- `(Δ[Δ[A192761(n)]]+n)²` -/
def P1606570000069526662.Spec : Prop :=
  ∀ n, P1606570000069526662.a n = A014718 n

end A014718

/-! ## A014718.P9623823046047135604

`(Δ[Δ[A192969(n)]]+n)²`
-/

namespace A014718.P9623823046047135604
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192969 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n + (n : ℤ)) ^ 2

end

end A014718.P9623823046047135604

namespace A014718

/-- `(Δ[Δ[A192969(n)]]+n)²` -/
def P9623823046047135604.Spec : Prop :=
  ∀ n, P9623823046047135604.a n = A014718 n

end A014718

/-! ## A014718.P2257471293412593595

`(Δ[Δ[A192979(n)]]+n)²`
-/

namespace A014718.P2257471293412593595
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192979 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n + (n : ℤ)) ^ 2

end

end A014718.P2257471293412593595

namespace A014718

/-- `(Δ[Δ[A192979(n)]]+n)²` -/
def P2257471293412593595.Spec : Prop :=
  ∀ n, P2257471293412593595.a n = A014718 n

end A014718

/-! ## A014718.P4481326081911971693

`(Δ[A187890(n+3)]+n)²`
-/

namespace A014718.P4481326081911971693
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187890 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n + (n : ℤ)) ^ 2

end

end A014718.P4481326081911971693

namespace A014718

/-- `(Δ[A187890(n+3)]+n)²` -/
def P4481326081911971693.Spec : Prop :=
  ∀ n, P4481326081911971693.a n = A014718 n

end A014718

/-! ## A014718.P14836410531894081875

`(A187890(n+2)+n-1)²`
-/

namespace A014718.P14836410531894081875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A187890 (n + 2) + ((n : ℤ) - 1)) ^ 2

end

end A014718.P14836410531894081875

namespace A014718

/-- `(A187890(n+2)+n-1)²` -/
def P14836410531894081875.Spec : Prop :=
  ∀ n, P14836410531894081875.a n = A014718 n

end A014718

/-! ## A014718.P1489132611529031828

`(A174562(2*(n+1))+n)²`
-/

namespace A014718.P1489132611529031828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A174562 (2 * (n + 1)) + (n : ℤ)) ^ 2

end

end A014718.P1489132611529031828

namespace A014718

/-- `(A174562(2*(n+1))+n)²` -/
def P1489132611529031828.Spec : Prop :=
  ∀ n, P1489132611529031828.a n = A014718 n

end A014718

/-! ## A014718.P9830160276822769467

`A013915(A028310(n))^2`
-/

namespace A014718.P9830160276822769467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013915 (A028310 n).toNat ^ 2

end

end A014718.P9830160276822769467

namespace A014718

/-- `A013915(A028310(n))^2` -/
def P9830160276822769467.Spec : Prop :=
  ∀ n, P9830160276822769467.a n = A014718 n

end A014718

/-! ## A014718.P6808795914603402290

`(A081659(n)+A000032(n))²`
-/

namespace A014718.P6808795914603402290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A081659 n + A000032 n) ^ 2

end

end A014718.P6808795914603402290

namespace A014718

/-- `(A081659(n)+A000032(n))²` -/
def P6808795914603402290.Spec : Prop :=
  ∀ n, P6808795914603402290.a n = A014718 n

end A014718

/-! ## A014718.P9040046067627602900

`(A104449(n)+A002062(n))²`
-/

namespace A014718.P9040046067627602900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A104449 n + A002062 n) ^ 2

end

end A014718.P9040046067627602900

namespace A014718

/-- `(A104449(n)+A002062(n))²` -/
def P9040046067627602900.Spec : Prop :=
  ∀ n, P9040046067627602900.a n = A014718 n

end A014718

/-! ## A014718.P8602206662694981297

`(A001489(n)-A013655(n))²`
-/

namespace A014718.P8602206662694981297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A001489 n - A013655 n) ^ 2

end

end A014718.P8602206662694981297

namespace A014718

/-- `(A001489(n)-A013655(n))²` -/
def P8602206662694981297.Spec : Prop :=
  ∀ n, P8602206662694981297.a n = A014718 n

end A014718

/-! ## A014718.P2255624542497621385

`(A048577(n)-A210673(n))²`
-/

namespace A014718.P2255624542497621385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A048577 n - A210673 n) ^ 2

end

end A014718.P2255624542497621385

namespace A014718

/-- `(A048577(n)-A210673(n))²` -/
def P2255624542497621385.Spec : Prop :=
  ∀ n, P2255624542497621385.a n = A014718 n

end A014718

/-! ## A014718.P5504986019928053100

`(A118658(n)+∑[A001611(n)])²`
-/

namespace A014718.P5504986019928053100
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001611 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A118658 n + ∑ j ∈ Finset.range (n + 1), f1 j) ^ 2

end

end A014718.P5504986019928053100

namespace A014718

/-- `(A118658(n)+∑[A001611(n)])²` -/
def P5504986019928053100.Spec : Prop :=
  ∀ n, P5504986019928053100.a n = A014718 n

end A014718

/-! ## A014718.P18131474203298418018

`(A000045(n)+A104449(n)+n)²`
-/

namespace A014718.P18131474203298418018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000045 n + (A104449 n + (n : ℤ))) ^ 2

end

end A014718.P18131474203298418018

namespace A014718

/-- `(A000045(n)+A104449(n)+n)²` -/
def P18131474203298418018.Spec : Prop :=
  ∀ n, P18131474203298418018.a n = A014718 n

end A014718

/-!
# A014719: Squares of elements in Pascal triangle (by row) that are not 1.

The programs for A014719, the canonical program `A014719.P3871794258725070210` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A014719 has offset 2).

The definition of A014719 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A014719.P3871794258725070210

`A014410(n+2)²`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A014719

/-- `A014410(n+2)²` -/
def P3871794258725070210.Spec : Prop :=
  ∀ n, P3871794258725070210.a n = A014719 (n + 2)

theorem P3871794258725070210.correct : P3871794258725070210.Spec := by
  intro n
  simp only [A014719, Nat.add_sub_cancel]

end A014719

/-! ## A014719.P8876715658131968674

`(A014430(n)+1)²`
-/

namespace A014719.P8876715658131968674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A014430 n + 1) ^ 2

end

end A014719.P8876715658131968674

namespace A014719

/-- `(A014430(n)+1)²` -/
def P8876715658131968674.Spec : Prop :=
  ∀ n, P8876715658131968674.a n = A014719 (n + 2)

theorem P8876715658131968674.correct : P8876715658131968674.Spec := by
  intro n
  simp only [A014719, Nat.add_sub_cancel, A014719.P8876715658131968674.a, A014719.P3871794258725070210.a, A014410, A014410.P12420516935091573692.a, A014430, A014430.P11701806938926061192.a, A003057, A003057.P16308936517940939054.a, A004736, A004736.P10337537277358081527.a, A000217, A000217.P10269402890581615239.a, A002024, A002024.P11700297927830783882.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A014719

/-! ## A014719.P16312287197597818004

`(A028327(n)/2)²`
-/

namespace A014719.P16312287197597818004
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A028327 n : ℚ) / 2) ^ 2

end

end A014719.P16312287197597818004

namespace A014719

/-- `(A028327(n)/2)²` -/
def P16312287197597818004.Spec : Prop :=
  ∀ n, P16312287197597818004.a n = (A014719 (n + 2) : ℚ)

theorem P16312287197597818004.correct : P16312287197597818004.Spec := by
  intro n
  simp only [A014719, Nat.add_sub_cancel, A014719.P16312287197597818004.a, A014719.P3871794258725070210.a, A014410, A014410.P12420516935091573692.a, A028327, A028327.P9835590816428302231.a, A003057, A003057.P16308936517940939054.a, A004736, A004736.P10337537277358081527.a, A014430, A014430.P11701806938926061192.a, A000217, A000217.P10269402890581615239.a, A002024, A002024.P11700297927830783882.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A014719

/-! ## A014719.P8061751119144610243

`ceil(sqrt(A065420(n)))²`
-/

namespace A014719.P8061751119144610243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (A065420 n : ℝ)⌉ ^ 2

end

end A014719.P8061751119144610243

namespace A014719

/-- `ceil(sqrt(A065420(n)))²` -/
def P8061751119144610243.Spec : Prop :=
  ∀ n, P8061751119144610243.a n = A014719 (n + 2)

end A014719

/-! ## A014719.P11553652525495486813

`A074909(comp[∑[n]])²`
-/

namespace A014719.P11553652525495486813
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074909 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n) ^ 2

end

end A014719.P11553652525495486813

namespace A014719

/-- `A074909(comp[∑[n]])²` -/
def P11553652525495486813.Spec : Prop :=
  ∀ n, P11553652525495486813.a n = A014719 (n + 2)

end A014719

/-! ## A014719.P14102200143528889621

`C(comp[∑[n]]-n, A002260(n+1))²`
-/

namespace A014719.P14102200143528889621
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)).toNat (A002260 (n + 1)).toNat ^ 2

end

end A014719.P14102200143528889621

namespace A014719

/-- `C(comp[∑[n]]-n, A002260(n+1))²` -/
def P14102200143528889621.Spec : Prop :=
  ∀ n, (P14102200143528889621.a n : ℤ) = A014719 (n + 2)

end A014719

/-! ## A014719.P8641235105433758

`(A051597(n)+A007318(n))²`
-/

namespace A014719.P8641235105433758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A051597 n + A007318 n) ^ 2

end

end A014719.P8641235105433758

namespace A014719

/-- `(A051597(n)+A007318(n))²` -/
def P8641235105433758.Spec : Prop :=
  ∀ n, P8641235105433758.a n = A014719 (n + 2)

theorem P8641235105433758.correct : P8641235105433758.Spec := by
  intro n
  simp only [A014719, Nat.add_sub_cancel, A014719.P8641235105433758.a, A014719.P3871794258725070210.a, A007318, A007318.P302227728145965961.a, A014410, A014410.P12420516935091573692.a, A051597, A051597.P4383731425265306086.a, A003057, A003057.P16308936517940939054.a, A004736, A004736.P10337537277358081527.a, A014430, A014430.P11701806938926061192.a, A014473, A014473.P9301799580602651200.a, A259525, A259525.P15603515225238104540.f1, A259525.P15603515225238104540.a, A000217, A000217.P10269402890581615239.a, A002024, A002024.P11700297927830783882.a, A003056, A003056.P5318256527314048597.a, A074909, A074909.P6707642907239843837.f1, A074909.P6707642907239843837.a, A002262, A002262.P12129691700837801527.a, A010054, A010054.P18347828677204923252.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A014719

/-! ## A014719.P12689413263927943533

`(A051601(n)+A028326(n))²`
-/

namespace A014719.P12689413263927943533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A051601 n + A028326 n) ^ 2

end

end A014719.P12689413263927943533

namespace A014719

/-- `(A051601(n)+A028326(n))²` -/
def P12689413263927943533.Spec : Prop :=
  ∀ n, P12689413263927943533.a n = A014719 (n + 2)

theorem P12689413263927943533.correct : P12689413263927943533.Spec := by
  intro n
  simp only [A014719, Nat.add_sub_cancel, A014719.P12689413263927943533.a, A014719.P3871794258725070210.a, A014410, A014410.P12420516935091573692.a, A028326, A028326.P16610217584664895500.a, A051601, A051601.P16211897946955376091.a, A003057, A003057.P16308936517940939054.a, A004736, A004736.P10337537277358081527.a, A007318, A007318.P302227728145965961.a, A028276, A028276.P15109551320821074576.a, A028327, A028327.P9835590816428302231.a, A000217, A000217.P10269402890581615239.a, A002024, A002024.P11700297927830783882.a, A014430, A014430.P11701806938926061192.a, A028263, A028263.P3177418721069471964.a, A259525, A259525.P15603515225238104540.f1, A259525.P15603515225238104540.a, A003056, A003056.P5318256527314048597.a, A074909, A074909.P6707642907239843837.f1, A074909.P6707642907239843837.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A014719

/-! ## A014719.P4779565422588774178

`(A007318(n)-A028263(n))²`
-/

namespace A014719.P4779565422588774178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A007318 n - A028263 n) ^ 2

end

end A014719.P4779565422588774178

namespace A014719

/-- `(A007318(n)-A028263(n))²` -/
def P4779565422588774178.Spec : Prop :=
  ∀ n, P4779565422588774178.a n = A014719 (n + 2)

theorem P4779565422588774178.correct : P4779565422588774178.Spec := by
  intro n
  simp only [A014719, Nat.add_sub_cancel, A014719.P4779565422588774178.a, A014719.P3871794258725070210.a, A007318, A007318.P302227728145965961.a, A014410, A014410.P12420516935091573692.a, A028263, A028263.P3177418721069471964.a, A003057, A003057.P16308936517940939054.a, A004736, A004736.P10337537277358081527.a, A014430, A014430.P11701806938926061192.a, A259525, A259525.P15603515225238104540.f1, A259525.P15603515225238104540.a, A000217, A000217.P10269402890581615239.a, A002024, A002024.P11700297927830783882.a, A003056, A003056.P5318256527314048597.a, A074909, A074909.P6707642907239843837.f1, A074909.P6707642907239843837.a, A002262, A002262.P12129691700837801527.a, A010054, A010054.P18347828677204923252.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A014719

/-! ## A014719.P8371366174706424504

`A065420(n)+A014410(n+2)`
-/

namespace A014719.P8371366174706424504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065420 n + A014410 (n + 2)

end

end A014719.P8371366174706424504

namespace A014719

/-- `A065420(n)+A014410(n+2)` -/
def P8371366174706424504.Spec : Prop :=
  ∀ n, P8371366174706424504.a n = A014719 (n + 2)

theorem P8371366174706424504.correct : P8371366174706424504.Spec := by
  intro n
  simp only [A014719, Nat.add_sub_cancel, A014719.P8371366174706424504.a, A014719.P3871794258725070210.a, A014410, A014410.P12420516935091573692.a, A065420, A065420.P14835865265555642949.a, A003057, A003057.P16308936517940939054.a, A004736, A004736.P10337537277358081527.a, A143418, A143418.P1053362496203516466.a, A000217, A000217.P10269402890581615239.a, A002024, A002024.P11700297927830783882.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A014719

/-! ## A014719.P8776614330360592848

`(A074909(n+1)+A074909(n))²`
-/

namespace A014719.P8776614330360592848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A074909 (n + 1) + A074909 n) ^ 2

end

end A014719.P8776614330360592848

namespace A014719

/-- `(A074909(n+1)+A074909(n))²` -/
def P8776614330360592848.Spec : Prop :=
  ∀ n, P8776614330360592848.a n = A014719 (n + 2)

end A014719

/-! ## A014719.P4650051010299176569

`(A051601(n)+2*A007318(n))²`
-/

namespace A014719.P4650051010299176569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A051601 n + 2 * A007318 n) ^ 2

end

end A014719.P4650051010299176569

namespace A014719

/-- `(A051601(n)+2*A007318(n))²` -/
def P4650051010299176569.Spec : Prop :=
  ∀ n, P4650051010299176569.a n = A014719 (n + 2)

theorem P4650051010299176569.correct : P4650051010299176569.Spec := by
  intro n
  simp only [A014719, Nat.add_sub_cancel, A014719.P4650051010299176569.a, A014719.P3871794258725070210.a, A007318, A007318.P302227728145965961.a, A014410, A014410.P12420516935091573692.a, A051601, A051601.P16211897946955376091.a, A003057, A003057.P16308936517940939054.a, A004736, A004736.P10337537277358081527.a, A028276, A028276.P15109551320821074576.a, A028327, A028327.P9835590816428302231.a, A259525, A259525.P15603515225238104540.f1, A259525.P15603515225238104540.a, A000217, A000217.P10269402890581615239.a, A002024, A002024.P11700297927830783882.a, A003056, A003056.P5318256527314048597.a, A014430, A014430.P11701806938926061192.a, A028263, A028263.P3177418721069471964.a, A074909, A074909.P6707642907239843837.f1, A074909.P6707642907239843837.a, A002262, A002262.P12129691700837801527.a, A010054, A010054.P18347828677204923252.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A014719

/-! ## A014719.P1595283849077287237

`(2*A007318(n)-A028276(n))²`
-/

namespace A014719.P1595283849077287237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * A007318 n - A028276 n) ^ 2

end

end A014719.P1595283849077287237

namespace A014719

/-- `(2*A007318(n)-A028276(n))²` -/
def P1595283849077287237.Spec : Prop :=
  ∀ n, P1595283849077287237.a n = A014719 (n + 2)

theorem P1595283849077287237.correct : P1595283849077287237.Spec := by
  intro n
  simp only [A014719, Nat.add_sub_cancel, A014719.P1595283849077287237.a, A014719.P3871794258725070210.a, A007318, A007318.P302227728145965961.a, A014410, A014410.P12420516935091573692.a, A028276, A028276.P15109551320821074576.a, A003057, A003057.P16308936517940939054.a, A004736, A004736.P10337537277358081527.a, A028263, A028263.P3177418721069471964.a, A259525, A259525.P15603515225238104540.f1, A259525.P15603515225238104540.a, A000217, A000217.P10269402890581615239.a, A002024, A002024.P11700297927830783882.a, A003056, A003056.P5318256527314048597.a, A014430, A014430.P11701806938926061192.a, A074909, A074909.P6707642907239843837.f1, A074909.P6707642907239843837.a, A002262, A002262.P12129691700837801527.a, A010054, A010054.P18347828677204923252.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A014719

/-! ## A014719.P6970589621971366460

`(2*A051597(n)-A051601(n))²`
-/

namespace A014719.P6970589621971366460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * A051597 n - A051601 n) ^ 2

end

end A014719.P6970589621971366460

namespace A014719

/-- `(2*A051597(n)-A051601(n))²` -/
def P6970589621971366460.Spec : Prop :=
  ∀ n, P6970589621971366460.a n = A014719 (n + 2)

theorem P6970589621971366460.correct : P6970589621971366460.Spec := by
  intro n
  simp only [A014719, Nat.add_sub_cancel, A014719.P6970589621971366460.a, A014719.P3871794258725070210.a, A014410, A014410.P12420516935091573692.a, A051597, A051597.P4383731425265306086.a, A051601, A051601.P16211897946955376091.a, A003057, A003057.P16308936517940939054.a, A004736, A004736.P10337537277358081527.a, A014430, A014430.P11701806938926061192.a, A014473, A014473.P9301799580602651200.a, A028276, A028276.P15109551320821074576.a, A028327, A028327.P9835590816428302231.a, A000217, A000217.P10269402890581615239.a, A002024, A002024.P11700297927830783882.a, A007318, A007318.P302227728145965961.a, A028263, A028263.P3177418721069471964.a, A259525, A259525.P15603515225238104540.f1, A259525.P15603515225238104540.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A014719

/-! ## A014719.P9654741642850819195

`(A028263(n)-A028326(n)/2)²`
-/

namespace A014719.P9654741642850819195
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A028263 n : ℚ) - (A028326 n : ℚ) / 2) ^ 2

end

end A014719.P9654741642850819195

namespace A014719

/-- `(A028263(n)-A028326(n)/2)²` -/
def P9654741642850819195.Spec : Prop :=
  ∀ n, P9654741642850819195.a n = (A014719 (n + 2) : ℚ)

theorem P9654741642850819195.correct : P9654741642850819195.Spec := by
  intro n
  simp only [A014719, Nat.add_sub_cancel, A014719.P9654741642850819195.a, A014719.P3871794258725070210.a, A014410, A014410.P12420516935091573692.a, A028263, A028263.P3177418721069471964.a, A028326, A028326.P16610217584664895500.a, A003057, A003057.P16308936517940939054.a, A004736, A004736.P10337537277358081527.a, A007318, A007318.P302227728145965961.a, A014430, A014430.P11701806938926061192.a, A000217, A000217.P10269402890581615239.a, A002024, A002024.P11700297927830783882.a, A259525, A259525.P15603515225238104540.f1, A259525.P15603515225238104540.a, A003056, A003056.P5318256527314048597.a, A074909, A074909.P6707642907239843837.f1, A074909.P6707642907239843837.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A014719

/-! ## A014719.P9985334907046416129

`(A051597(n)+A028263(n))²/4`
-/

namespace A014719.P9985334907046416129
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A051597 n + A028263 n) ^ 2 : ℚ) / 4

end

end A014719.P9985334907046416129

namespace A014719

/-- `(A051597(n)+A028263(n))²/4` -/
def P9985334907046416129.Spec : Prop :=
  ∀ n, P9985334907046416129.a n = (A014719 (n + 2) : ℚ)

theorem P9985334907046416129.correct : P9985334907046416129.Spec := by
  intro n
  simp only [A014719, Nat.add_sub_cancel, A014719.P9985334907046416129.a, A014719.P3871794258725070210.a, A014410, A014410.P12420516935091573692.a, A028263, A028263.P3177418721069471964.a, A051597, A051597.P4383731425265306086.a, A003057, A003057.P16308936517940939054.a, A004736, A004736.P10337537277358081527.a, A007318, A007318.P302227728145965961.a, A014430, A014430.P11701806938926061192.a, A014473, A014473.P9301799580602651200.a, A000217, A000217.P10269402890581615239.a, A002024, A002024.P11700297927830783882.a, A259525, A259525.P15603515225238104540.f1, A259525.P15603515225238104540.a, A003056, A003056.P5318256527314048597.a, A074909, A074909.P6707642907239843837.f1, A074909.P6707642907239843837.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A014719

/-! ## A014719.P9339372089221437521

`A014410(n+2)^A020639(2*(n+1))`
-/

namespace A014719.P9339372089221437521
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A014410 (n + 2) : ℚ) ^ (A020639 (2 * (n + 1)) : ℤ)

end

end A014719.P9339372089221437521

namespace A014719

/-- `A014410(n+2)^A020639(2*(n+1))` -/
def P9339372089221437521.Spec : Prop :=
  ∀ n, P9339372089221437521.a n = (A014719 (n + 2) : ℚ)

end A014719

/-! ## A014719.P14874279913505067856

`A007318(lt[1, A007318(n)])²`
-/

namespace A014719.P14874279913505067856
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n) ^ 2

end

end A014719.P14874279913505067856

namespace A014719

/-- `A007318(lt[1, A007318(n)])²` -/
def P14874279913505067856.Spec : Prop :=
  ∀ n, P14874279913505067856.a n = A014719 (n + 2)

end A014719

/-! ## A014719.P13869037887760144553

`A135278(A007401(n+1))²`
-/

namespace A014719.P13869037887760144553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135278 (A007401 (n + 1)).toNat ^ 2

end

end A014719.P13869037887760144553

namespace A014719

/-- `A135278(A007401(n+1))²` -/
def P13869037887760144553.Spec : Prop :=
  ∀ n, P13869037887760144553.a n = A014719 (n + 2)

end A014719

/-! ## A014719.P13059324386171510182

`A135278(lt[1, A135278(n)])²`
-/

namespace A014719.P13059324386171510182
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135278 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135278 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n) ^ 2

end

end A014719.P13059324386171510182

namespace A014719

/-- `A135278(lt[1, A135278(n)])²` -/
def P13059324386171510182.Spec : Prop :=
  ∀ n, P13059324386171510182.a n = A014719 (n + 2)

end A014719

/-!
# A014720: Squares of elements to right of central element in Pascal triangle (by row) that are not 1.

The programs for A014720, the canonical program `A014720.P13939622138793062824` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A014720 has offset 1).

The definition of A014720 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A014411, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A014720.P13939622138793062824

`A014411(n+1)²`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A014720

/-- `A014411(n+1)²` -/
def P13939622138793062824.Spec : Prop :=
  ∀ n, P13939622138793062824.a n = A014720 (n + 1)

theorem P13939622138793062824.correct : P13939622138793062824.Spec := by
  intro n
  simp only [A014720, Nat.add_sub_cancel]

end A014720

/-! ## A014720.P7547123182653884826

`(A028331(n)/2)²`
-/

namespace A014720.P7547123182653884826
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A028331 n : ℚ) / 2) ^ 2

end

end A014720.P7547123182653884826

namespace A014720

/-- `(A028331(n)/2)²` -/
def P7547123182653884826.Spec : Prop :=
  ∀ n, P7547123182653884826.a n = (A014720 (n + 1) : ℚ)

theorem P7547123182653884826.correct : P7547123182653884826.Spec := by
  intro n
  simp only [A014720, Nat.add_sub_cancel, A014720.P7547123182653884826.a, A014720.P13939622138793062824.a, A014411, A014411.P10381451059067802495.f1, A014411.P10381451059067802495.f2, A014411.P10381451059067802495.a, A028331, A028331.P79324678744647748.a, A008311, A008311.P16507071146551103518.a, A008314, A008314.P17030209366717782596.a, A028391, A028391.P17198271841435315725.a, A082375, A082375.P11690082017939293058.a, A000034, A000034.P10773112074177680709.a, A034868, A034868.P12965043593595847904.a, A070824, A070824.P6802822783910193033.f1, A070824.P6802822783910193033.a, A122197, A122197.P4223396972267691169.a, A199474, A199474.P17289938978720021697.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A014720

/-! ## A014720.P7376961944809633842

`A014721(A049068(n+1))`
-/

namespace A014720.P7376961944809633842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014721 (A049068 (n + 1)).toNat

end

end A014720.P7376961944809633842

namespace A014720

/-- `A014721(A049068(n+1))` -/
def P7376961944809633842.Spec : Prop :=
  ∀ n, P7376961944809633842.a n = A014720 (n + 1)

end A014720

/-! ## A014720.P1917049152143068571

`(A028285(n)-A028330(n))²`
-/

namespace A014720.P1917049152143068571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A028285 n - A028330 n) ^ 2

end

end A014720.P1917049152143068571

namespace A014720

/-- `(A028285(n)-A028330(n))²` -/
def P1917049152143068571.Spec : Prop :=
  ∀ n, P1917049152143068571.a n = A014720 (n + 1)

theorem P1917049152143068571.correct : P1917049152143068571.Spec := by
  intro n
  simp only [A014720, Nat.add_sub_cancel, A014720.P1917049152143068571.a, A014720.P13939622138793062824.a, A014411, A014411.P10381451059067802495.f1, A014411.P10381451059067802495.f2, A014411.P10381451059067802495.a, A028285, A028285.P5292532840332202507.a, A028330, A028330.P6625420377303343371.a, A008311, A008311.P16507071146551103518.a, A014413, A014413.P14567634354021645646.f1, A014413.P14567634354021645646.f2, A014413.P14567634354021645646.a, A028272, A028272.P16658782118669179364.a, A007318, A007318.P302227728145965961.a, A008314, A008314.P17030209366717782596.a, A028391, A028391.P17198271841435315725.a, A082375, A082375.P11690082017939293058.a, A340507, A340507.P13308749696070402216.a, A000034, A000034.P10773112074177680709.a, A003056, A003056.P5318256527314048597.a, A034868, A034868.P12965043593595847904.a, A070824, A070824.P6802822783910193033.f1, A070824.P6802822783910193033.a, A122197, A122197.P4223396972267691169.a, A199474, A199474.P17289938978720021697.a, A259525, A259525.P15603515225238104540.f1, A259525.P15603515225238104540.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A014720

/-! ## A014720.P7668730103799349374

`(A029633(n)-A029663(n))²`
-/

namespace A014720.P7668730103799349374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A029633 n - A029663 n) ^ 2

end

end A014720.P7668730103799349374

namespace A014720

/-- `(A029633(n)-A029663(n))²` -/
def P7668730103799349374.Spec : Prop :=
  ∀ n, P7668730103799349374.a n = A014720 (n + 1)

theorem P7668730103799349374.correct : P7668730103799349374.Spec := by
  intro n
  simp only [A014720, Nat.add_sub_cancel, A014720.P7668730103799349374.a, A014720.P13939622138793062824.a, A014411, A014411.P10381451059067802495.f1, A014411.P10381451059067802495.f2, A014411.P10381451059067802495.a, A029633, A029633.P3103712161572054441.a, A029663, A029663.P14112828887232245740.a, A008311, A008311.P16507071146551103518.a, A029632, A029632.P1805722220011820677.f1, A029632.P1805722220011820677.f2, A029632.P1805722220011820677.a, A183569, A183569.P5499308566454369165.a, A008314, A008314.P17030209366717782596.a, A028391, A028391.P17198271841435315725.a, A029620, A029620.P6209062257735337057.f2, A029620.P6209062257735337057.f1, A029620.P6209062257735337057.a, A029621, A029621.P3765941121051379767.a, A082375, A082375.P11690082017939293058.a, A000034, A000034.P10773112074177680709.a, A029618, A029618.P143499929436318524.a, A029655, A029655.P14912270738703485013.a, A034868, A034868.P12965043593595847904.a, A070824, A070824.P6802822783910193033.f1, A070824.P6802822783910193033.a, A122197, A122197.P4223396972267691169.a, A199474, A199474.P17289938978720021697.a, A206735, A206735.P9027577083690455181.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A014720

/-! ## A014720.P5688503576293172208

`A014721(A000267(n)+2+n)`
-/

namespace A014720.P5688503576293172208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014721 (A000267 n + 2 + (n : ℤ)).toNat

end

end A014720.P5688503576293172208

namespace A014720

/-- `A014721(A000267(n)+2+n)` -/
def P5688503576293172208.Spec : Prop :=
  ∀ n, P5688503576293172208.a n = A014720 (n + 1)

end A014720

/-! ## A014720.P11727833110753092763

`(A028330(A183569(n+1))/2)²`
-/

namespace A014720.P11727833110753092763
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A028330 (A183569 (n + 1)).toNat : ℚ) / 2) ^ 2

end

end A014720.P11727833110753092763

namespace A014720

/-- `(A028330(A183569(n+1))/2)²` -/
def P11727833110753092763.Spec : Prop :=
  ∀ n, P11727833110753092763.a n = (A014720 (n + 1) : ℚ)

end A014720

/-! ## A014720.P930048599079902505

`A014413(A000267(n)+2+n)²`
-/

namespace A014720.P930048599079902505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014413 (A000267 n + 2 + (n : ℤ)).toNat ^ 2

end

end A014720.P930048599079902505

namespace A014720

/-- `A014413(A000267(n)+2+n)²` -/
def P930048599079902505.Spec : Prop :=
  ∀ n, P930048599079902505.a n = A014720 (n + 1)

end A014720

/-! ## A014720.P6787495063518477093

`(A014413(n+1)-A028272(n))²`
-/

namespace A014720.P6787495063518477093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A014413 (n + 1) - A028272 n) ^ 2

end

end A014720.P6787495063518477093

namespace A014720

/-- `(A014413(n+1)-A028272(n))²` -/
def P6787495063518477093.Spec : Prop :=
  ∀ n, P6787495063518477093.a n = A014720 (n + 1)

theorem P6787495063518477093.correct : P6787495063518477093.Spec := by
  intro n
  simp only [A014720, Nat.add_sub_cancel, A014720.P6787495063518477093.a, A014720.P13939622138793062824.a, A014411, A014411.P10381451059067802495.f1, A014411.P10381451059067802495.f2, A014411.P10381451059067802495.a, A014413, A014413.P14567634354021645646.f1, A014413.P14567634354021645646.f2, A014413.P14567634354021645646.a, A028272, A028272.P16658782118669179364.a, A007318, A007318.P302227728145965961.a, A008311, A008311.P16507071146551103518.a, A340507, A340507.P13308749696070402216.a, A003056, A003056.P5318256527314048597.a, A008314, A008314.P17030209366717782596.a, A028391, A028391.P17198271841435315725.a, A082375, A082375.P11690082017939293058.a, A259525, A259525.P15603515225238104540.f1, A259525.P15603515225238104540.a, A000034, A000034.P10773112074177680709.a, A034868, A034868.P12965043593595847904.a, A070824, A070824.P6802822783910193033.f1, A070824.P6802822783910193033.a, A074909, A074909.P6707642907239843837.f1, A074909.P6707642907239843837.a, A122197, A122197.P4223396972267691169.a, A199474, A199474.P17289938978720021697.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A014720

/-! ## A014720.P4849170621429044371

`(A029615(n+1)-A029649(n))²`
-/

namespace A014720.P4849170621429044371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A029615 (n + 1) - A029649 n) ^ 2

end

end A014720.P4849170621429044371

namespace A014720

/-- `(A029615(n+1)-A029649(n))²` -/
def P4849170621429044371.Spec : Prop :=
  ∀ n, P4849170621429044371.a n = A014720 (n + 1)

theorem P4849170621429044371.correct : P4849170621429044371.Spec := by
  intro n
  simp only [A014720, Nat.add_sub_cancel, A014720.P4849170621429044371.a, A014720.P13939622138793062824.a, A014411, A014411.P10381451059067802495.f1, A014411.P10381451059067802495.f2, A014411.P10381451059067802495.a, A029615, A029615.P6413097162909646570.a, A029649, A029649.P9567198299936449511.a, A008311, A008311.P16507071146551103518.a, A029663, A029663.P14112828887232245740.a, A008314, A008314.P17030209366717782596.a, A028391, A028391.P17198271841435315725.a, A029633, A029633.P3103712161572054441.a, A082375, A082375.P11690082017939293058.a, A000034, A000034.P10773112074177680709.a, A029632, A029632.P1805722220011820677.f1, A029632.P1805722220011820677.f2, A029632.P1805722220011820677.a, A034868, A034868.P12965043593595847904.a, A070824, A070824.P6802822783910193033.f1, A070824.P6802822783910193033.a, A122197, A122197.P4223396972267691169.a, A183569, A183569.P5499308566454369165.a, A199474, A199474.P17289938978720021697.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A014720

/-! ## A014720.P4872729795203239251

`(2*A028272(n)-A028285(n))²`
-/

namespace A014720.P4872729795203239251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * A028272 n - A028285 n) ^ 2

end

end A014720.P4872729795203239251

namespace A014720

/-- `(2*A028272(n)-A028285(n))²` -/
def P4872729795203239251.Spec : Prop :=
  ∀ n, P4872729795203239251.a n = A014720 (n + 1)

theorem P4872729795203239251.correct : P4872729795203239251.Spec := by
  intro n
  simp only [A014720, Nat.add_sub_cancel, A014720.P4872729795203239251.a, A014720.P13939622138793062824.a, A014411, A014411.P10381451059067802495.f1, A014411.P10381451059067802495.f2, A014411.P10381451059067802495.a, A028272, A028272.P16658782118669179364.a, A028285, A028285.P5292532840332202507.a, A008311, A008311.P16507071146551103518.a, A014413, A014413.P14567634354021645646.f1, A014413.P14567634354021645646.f2, A014413.P14567634354021645646.a, A007318, A007318.P302227728145965961.a, A008314, A008314.P17030209366717782596.a, A028391, A028391.P17198271841435315725.a, A082375, A082375.P11690082017939293058.a, A340507, A340507.P13308749696070402216.a, A000034, A000034.P10773112074177680709.a, A003056, A003056.P5318256527314048597.a, A034868, A034868.P12965043593595847904.a, A070824, A070824.P6802822783910193033.f1, A070824.P6802822783910193033.a, A122197, A122197.P4223396972267691169.a, A199474, A199474.P17289938978720021697.a, A259525, A259525.P15603515225238104540.f1, A259525.P15603515225238104540.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A014720

/-! ## A014720.P13074027915199140502

`(A028272(n)-A028330(n)/2)²`
-/

namespace A014720.P13074027915199140502
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A028272 n : ℚ) - (A028330 n : ℚ) / 2) ^ 2

end

end A014720.P13074027915199140502

namespace A014720

/-- `(A028272(n)-A028330(n)/2)²` -/
def P13074027915199140502.Spec : Prop :=
  ∀ n, P13074027915199140502.a n = (A014720 (n + 1) : ℚ)

theorem P13074027915199140502.correct : P13074027915199140502.Spec := by
  intro n
  simp only [A014720, Nat.add_sub_cancel, A014720.P13074027915199140502.a, A014720.P13939622138793062824.a, A014411, A014411.P10381451059067802495.f1, A014411.P10381451059067802495.f2, A014411.P10381451059067802495.a, A028272, A028272.P16658782118669179364.a, A028330, A028330.P6625420377303343371.a, A008311, A008311.P16507071146551103518.a, A014413, A014413.P14567634354021645646.f1, A014413.P14567634354021645646.f2, A014413.P14567634354021645646.a, A007318, A007318.P302227728145965961.a, A008314, A008314.P17030209366717782596.a, A028391, A028391.P17198271841435315725.a, A082375, A082375.P11690082017939293058.a, A340507, A340507.P13308749696070402216.a, A000034, A000034.P10773112074177680709.a, A003056, A003056.P5318256527314048597.a, A034868, A034868.P12965043593595847904.a, A070824, A070824.P6802822783910193033.f1, A070824.P6802822783910193033.a, A122197, A122197.P4223396972267691169.a, A199474, A199474.P17289938978720021697.a, A259525, A259525.P15603515225238104540.f1, A259525.P15603515225238104540.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A014720

/-! ## A014720.P3136110988297409489

`(2*A014413(n+1)-A028285(n))²`
-/

namespace A014720.P3136110988297409489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * A014413 (n + 1) - A028285 n) ^ 2

end

end A014720.P3136110988297409489

namespace A014720

/-- `(2*A014413(n+1)-A028285(n))²` -/
def P3136110988297409489.Spec : Prop :=
  ∀ n, P3136110988297409489.a n = A014720 (n + 1)

theorem P3136110988297409489.correct : P3136110988297409489.Spec := by
  intro n
  simp only [A014720, Nat.add_sub_cancel, A014720.P3136110988297409489.a, A014720.P13939622138793062824.a, A014411, A014411.P10381451059067802495.f1, A014411.P10381451059067802495.f2, A014411.P10381451059067802495.a, A014413, A014413.P14567634354021645646.f1, A014413.P14567634354021645646.f2, A014413.P14567634354021645646.a, A028285, A028285.P5292532840332202507.a, A007318, A007318.P302227728145965961.a, A008311, A008311.P16507071146551103518.a, A028272, A028272.P16658782118669179364.a, A340507, A340507.P13308749696070402216.a, A003056, A003056.P5318256527314048597.a, A008314, A008314.P17030209366717782596.a, A028391, A028391.P17198271841435315725.a, A082375, A082375.P11690082017939293058.a, A259525, A259525.P15603515225238104540.f1, A259525.P15603515225238104540.a, A000034, A000034.P10773112074177680709.a, A034868, A034868.P12965043593595847904.a, A070824, A070824.P6802822783910193033.f1, A070824.P6802822783910193033.a, A074909, A074909.P6707642907239843837.f1, A074909.P6707642907239843837.a, A122197, A122197.P4223396972267691169.a, A199474, A199474.P17289938978720021697.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A014720

/-! ## A014720.P4874640254728514472

`A014411(n+1)^A020639(2*(n+1))`
-/

namespace A014720.P4874640254728514472
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A014411 (n + 1) : ℚ) ^ (A020639 (2 * (n + 1)) : ℤ)

end

end A014720.P4874640254728514472

namespace A014720

/-- `A014411(n+1)^A020639(2*(n+1))` -/
def P4874640254728514472.Spec : Prop :=
  ∀ n, P4874640254728514472.a n = (A014720 (n + 1) : ℚ)

end A014720

/-! ## A014720.P16843847257813069963

`A014721(A000037(A000037(n+1)))`
-/

namespace A014720.P16843847257813069963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014721 (A000037 (A000037 (n + 1)).toNat).toNat

end

end A014720.P16843847257813069963

namespace A014720

/-- `A014721(A000037(A000037(n+1)))` -/
def P16843847257813069963.Spec : Prop :=
  ∀ n, P16843847257813069963.a n = A014720 (n + 1)

end A014720

/-! ## A014720.P8846462943356117342

`A014411(n+1)^A001222(2*A000040(n+1))`
-/

namespace A014720.P8846462943356117342
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A014411 (n + 1) : ℚ) ^ (A001222 (2 * A000040 (n + 1)).toNat : ℤ)

end

end A014720.P8846462943356117342

namespace A014720

/-- `A014411(n+1)^A001222(2*A000040(n+1))` -/
def P8846462943356117342.Spec : Prop :=
  ∀ n, P8846462943356117342.a n = (A014720 (n + 1) : ℚ)

end A014720

/-! ## A014720.P11209979878801518216

`A007318(lt[A038722(n+2), n])²`
-/

namespace A014720.P11209979878801518216
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038722 (n + 2)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n) ^ 2

end

end A014720.P11209979878801518216

namespace A014720

/-- `A007318(lt[A038722(n+2), n])²` -/
def P11209979878801518216.Spec : Prop :=
  ∀ n, P11209979878801518216.a n = A014720 (n + 1)

end A014720

/-! ## A014720.P3127984204495323836

`A007318(lt[1, A212363(n)])²`
-/

namespace A014720.P3127984204495323836
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212363 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n) ^ 2

end

end A014720.P3127984204495323836

namespace A014720

/-- `A007318(lt[1, A212363(n)])²` -/
def P3127984204495323836.Spec : Prop :=
  ∀ n, P3127984204495323836.a n = A014720 (n + 1)

end A014720

/-! ## A014720.P4384667988292416765

`A007318(lt[1, A026729(n)])²`
-/

namespace A014720.P4384667988292416765
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026729 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n) ^ 2

end

end A014720.P4384667988292416765

namespace A014720

/-- `A007318(lt[1, A026729(n)])²` -/
def P4384667988292416765.Spec : Prop :=
  ∀ n, P4384667988292416765.a n = A014720 (n + 1)

end A014720

/-! ## A014720.P12543619367402496675

`A007318(lt[1, A098158(n)])²`
-/

namespace A014720.P12543619367402496675
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098158 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n) ^ 2

end

end A014720.P12543619367402496675

namespace A014720

/-- `A007318(lt[1, A098158(n)])²` -/
def P12543619367402496675.Spec : Prop :=
  ∀ n, P12543619367402496675.a n = A014720 (n + 1)

end A014720

/-!
# A014721: Squares of elements to left of the central element in Pascal triangle (by row).

The programs for A014721, the canonical program `A014721.P14394062809074516665` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A014721 has offset 1).

The definition of A014721 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A014413, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A014721.P14394062809074516665

`A014413(n+1)²`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A014721

/-- `A014413(n+1)²` -/
def P14394062809074516665.Spec : Prop :=
  ∀ n, P14394062809074516665.a n = A014721 (n + 1)

theorem P14394062809074516665.correct : P14394062809074516665.Spec := by
  intro n
  simp only [A014721, Nat.add_sub_cancel]

end A014721

/-! ## A014721.P4065761077109571614

`(A028330(n)/2)²`
-/

namespace A014721.P4065761077109571614
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A028330 n : ℚ) / 2) ^ 2

end

end A014721.P4065761077109571614

namespace A014721

/-- `(A028330(n)/2)²` -/
def P4065761077109571614.Spec : Prop :=
  ∀ n, P4065761077109571614.a n = (A014721 (n + 1) : ℚ)

theorem P4065761077109571614.correct : P4065761077109571614.Spec := by
  intro n
  simp only [A014721, Nat.add_sub_cancel, A014721.P4065761077109571614.a, A014721.P14394062809074516665.a, A014413, A014413.P14567634354021645646.f1, A014413.P14567634354021645646.f2, A014413.P14567634354021645646.a, A028330, A028330.P6625420377303343371.a, A007318, A007318.P302227728145965961.a, A340507, A340507.P13308749696070402216.a, A003056, A003056.P5318256527314048597.a, A259525, A259525.P15603515225238104540.f1, A259525.P15603515225238104540.a, A074909, A074909.P6707642907239843837.f1, A074909.P6707642907239843837.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A014721

/-! ## A014721.P12347953030303707138

`A008311(A078358(n+1))²`
-/

namespace A014721.P12347953030303707138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008311 (A078358 (n + 1)).toNat ^ 2

end

end A014721.P12347953030303707138

namespace A014721

/-- `A008311(A078358(n+1))²` -/
def P12347953030303707138.Spec : Prop :=
  ∀ n, P12347953030303707138.a n = A014721 (n + 1)

end A014721

/-! ## A014721.P7218573210248092492

`(A028272(n)-A028285(n))²`
-/

namespace A014721.P7218573210248092492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A028272 n - A028285 n) ^ 2

end

end A014721.P7218573210248092492

namespace A014721

/-- `(A028272(n)-A028285(n))²` -/
def P7218573210248092492.Spec : Prop :=
  ∀ n, P7218573210248092492.a n = A014721 (n + 1)

theorem P7218573210248092492.correct : P7218573210248092492.Spec := by
  intro n
  simp only [A014721, Nat.add_sub_cancel, A014721.P7218573210248092492.a, A014721.P14394062809074516665.a, A014413, A014413.P14567634354021645646.f1, A014413.P14567634354021645646.f2, A014413.P14567634354021645646.a, A028272, A028272.P16658782118669179364.a, A028285, A028285.P5292532840332202507.a, A007318, A007318.P302227728145965961.a, A014411, A014411.P10381451059067802495.f1, A014411.P10381451059067802495.f2, A014411.P10381451059067802495.a, A340507, A340507.P13308749696070402216.a, A003056, A003056.P5318256527314048597.a, A008311, A008311.P16507071146551103518.a, A259525, A259525.P15603515225238104540.f1, A259525.P15603515225238104540.a, A008314, A008314.P17030209366717782596.a, A028391, A028391.P17198271841435315725.a, A074909, A074909.P6707642907239843837.f1, A074909.P6707642907239843837.a, A082375, A082375.P11690082017939293058.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A014721

/-! ## A014721.P7919952741611833499

`(A028285(n)-A028324(n))²`
-/

namespace A014721.P7919952741611833499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A028285 n - A028324 n) ^ 2

end

end A014721.P7919952741611833499

namespace A014721

/-- `(A028285(n)-A028324(n))²` -/
def P7919952741611833499.Spec : Prop :=
  ∀ n, P7919952741611833499.a n = A014721 (n + 1)

theorem P7919952741611833499.correct : P7919952741611833499.Spec := by
  intro n
  simp only [A014721, Nat.add_sub_cancel, A014721.P7919952741611833499.a, A014721.P14394062809074516665.a, A014413, A014413.P14567634354021645646.f1, A014413.P14567634354021645646.f2, A014413.P14567634354021645646.a, A028285, A028285.P5292532840332202507.a, A028324, A028324.P3744947203801218243.a, A007318, A007318.P302227728145965961.a, A028272, A028272.P16658782118669179364.a, A340507, A340507.P13308749696070402216.a, A003056, A003056.P5318256527314048597.a, A014411, A014411.P10381451059067802495.f1, A014411.P10381451059067802495.f2, A014411.P10381451059067802495.a, A259525, A259525.P15603515225238104540.f1, A259525.P15603515225238104540.a, A008311, A008311.P16507071146551103518.a, A074909, A074909.P6707642907239843837.f1, A074909.P6707642907239843837.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A014721

/-! ## A014721.P9867490099074101607

`(A029614(n)-A029648(n))²`
-/

namespace A014721.P9867490099074101607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A029614 n - A029648 n) ^ 2

end

end A014721.P9867490099074101607

namespace A014721

/-- `(A029614(n)-A029648(n))²` -/
def P9867490099074101607.Spec : Prop :=
  ∀ n, P9867490099074101607.a n = A014721 (n + 1)

theorem P9867490099074101607.correct : P9867490099074101607.Spec := by
  intro n
  simp only [A014721, Nat.add_sub_cancel, A014721.P9867490099074101607.a, A014721.P14394062809074516665.a, A014413, A014413.P14567634354021645646.f1, A014413.P14567634354021645646.f2, A014413.P14567634354021645646.a, A029614, A029614.P3750468161563103685.a, A029648, A029648.P5252646046348079995.a, A007318, A007318.P302227728145965961.a, A008313, A008313.P7466062722273303324.a, A029632, A029632.P1805722220011820677.f1, A029632.P1805722220011820677.f2, A029632.P1805722220011820677.a, A029666, A029666.P12567084913895410295.a, A340507, A340507.P13308749696070402216.a, A003056, A003056.P5318256527314048597.a, A008311, A008311.P16507071146551103518.a, A029620, A029620.P6209062257735337057.f2, A029620.P6209062257735337057.f1, A029620.P6209062257735337057.a, A029621, A029621.P3765941121051379767.a, A259525, A259525.P15603515225238104540.f1, A259525.P15603515225238104540.a, A008314, A008314.P17030209366717782596.a, A028391, A028391.P17198271841435315725.a, A029618, A029618.P143499929436318524.a, A029655, A029655.P14912270738703485013.a, A074909, A074909.P6707642907239843837.f1, A074909.P6707642907239843837.a, A082375, A082375.P11690082017939293058.a, A206735, A206735.P9027577083690455181.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A014721

/-! ## A014721.P11367226372925246841

`(A029632(n)-A029666(n))²`
-/

namespace A014721.P11367226372925246841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A029632 n - A029666 n) ^ 2

end

end A014721.P11367226372925246841

namespace A014721

/-- `(A029632(n)-A029666(n))²` -/
def P11367226372925246841.Spec : Prop :=
  ∀ n, P11367226372925246841.a n = A014721 (n + 1)

theorem P11367226372925246841.correct : P11367226372925246841.Spec := by
  intro n
  simp only [A014721, Nat.add_sub_cancel, A014721.P11367226372925246841.a, A014721.P14394062809074516665.a, A014413, A014413.P14567634354021645646.f1, A014413.P14567634354021645646.f2, A014413.P14567634354021645646.a, A029632, A029632.P1805722220011820677.f1, A029632.P1805722220011820677.f2, A029632.P1805722220011820677.a, A029666, A029666.P12567084913895410295.a, A007318, A007318.P302227728145965961.a, A029620, A029620.P6209062257735337057.f2, A029620.P6209062257735337057.f1, A029620.P6209062257735337057.a, A029621, A029621.P3765941121051379767.a, A340507, A340507.P13308749696070402216.a, A003056, A003056.P5318256527314048597.a, A029618, A029618.P143499929436318524.a, A029655, A029655.P14912270738703485013.a, A206735, A206735.P9027577083690455181.a, A259525, A259525.P15603515225238104540.f1, A259525.P15603515225238104540.a, A029600, A029600.P6364138794063411097.a, A061579, A061579.P7462537595056690109.a, A074909, A074909.P6707642907239843837.f1, A074909.P6707642907239843837.a, A153861, A153861.P2940504812879242112.a, A325191, A325191.P1948114789834443761.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A014721

/-! ## A014721.P15572286703751189692

`(A029648(n)-A034869(n))²`
-/

namespace A014721.P15572286703751189692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A029648 n - A034869 n) ^ 2

end

end A014721.P15572286703751189692

namespace A014721

/-- `(A029648(n)-A034869(n))²` -/
def P15572286703751189692.Spec : Prop :=
  ∀ n, P15572286703751189692.a n = A014721 (n + 1)

end A014721

/-! ## A014721.P3851960043449230186

`(A014411(n+1)-A028272(n))²`
-/

namespace A014721.P3851960043449230186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A014411 (n + 1) - A028272 n) ^ 2

end

end A014721.P3851960043449230186

namespace A014721

/-- `(A014411(n+1)-A028272(n))²` -/
def P3851960043449230186.Spec : Prop :=
  ∀ n, P3851960043449230186.a n = A014721 (n + 1)

theorem P3851960043449230186.correct : P3851960043449230186.Spec := by
  intro n
  simp only [A014721, Nat.add_sub_cancel, A014721.P3851960043449230186.a, A014721.P14394062809074516665.a, A014411, A014411.P10381451059067802495.f1, A014411.P10381451059067802495.f2, A014411.P10381451059067802495.a, A014413, A014413.P14567634354021645646.f1, A014413.P14567634354021645646.f2, A014413.P14567634354021645646.a, A028272, A028272.P16658782118669179364.a, A007318, A007318.P302227728145965961.a, A008311, A008311.P16507071146551103518.a, A340507, A340507.P13308749696070402216.a, A003056, A003056.P5318256527314048597.a, A008314, A008314.P17030209366717782596.a, A028391, A028391.P17198271841435315725.a, A082375, A082375.P11690082017939293058.a, A259525, A259525.P15603515225238104540.f1, A259525.P15603515225238104540.a, A000034, A000034.P10773112074177680709.a, A034868, A034868.P12965043593595847904.a, A070824, A070824.P6802822783910193033.f1, A070824.P6802822783910193033.a, A074909, A074909.P6707642907239843837.f1, A074909.P6707642907239843837.a, A122197, A122197.P4223396972267691169.a, A199474, A199474.P17289938978720021697.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A014721

/-! ## A014721.P4410878438565961044

`((A034869(n)+A029666(n))/2)²`
-/

namespace A014721.P4410878438565961044
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A034869 n + A029666 n : ℚ) / 2) ^ 2

end

end A014721.P4410878438565961044

namespace A014721

/-- `((A034869(n)+A029666(n))/2)²` -/
def P4410878438565961044.Spec : Prop :=
  ∀ n, P4410878438565961044.a n = (A014721 (n + 1) : ℚ)

theorem P4410878438565961044.correct : P4410878438565961044.Spec := by
  intro n
  simp only [A014721, Nat.add_sub_cancel, A014721.P4410878438565961044.a, A014721.P14394062809074516665.a, A014413, A014413.P14567634354021645646.f1, A014413.P14567634354021645646.f2, A014413.P14567634354021645646.a, A029666, A029666.P12567084913895410295.a, A034869, A034869.P2608600676671799699.a, A007318, A007318.P302227728145965961.a, A028330, A028330.P6625420377303343371.a, A029632, A029632.P1805722220011820677.f1, A029632.P1805722220011820677.f2, A029632.P1805722220011820677.a, A340507, A340507.P13308749696070402216.a, A003056, A003056.P5318256527314048597.a, A029620, A029620.P6209062257735337057.f2, A029620.P6209062257735337057.f1, A029620.P6209062257735337057.a, A029621, A029621.P3765941121051379767.a, A259525, A259525.P15603515225238104540.f1, A259525.P15603515225238104540.a, A029618, A029618.P143499929436318524.a, A029655, A029655.P14912270738703485013.a, A074909, A074909.P6707642907239843837.f1, A074909.P6707642907239843837.a, A206735, A206735.P9027577083690455181.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A014721

/-! ## A014721.P10633327806573608840

`((A028272(n)-A028324(n))/2)²`
-/

namespace A014721.P10633327806573608840
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A028272 n - A028324 n : ℚ) / 2) ^ 2

end

end A014721.P10633327806573608840

namespace A014721

/-- `((A028272(n)-A028324(n))/2)²` -/
def P10633327806573608840.Spec : Prop :=
  ∀ n, P10633327806573608840.a n = (A014721 (n + 1) : ℚ)

theorem P10633327806573608840.correct : P10633327806573608840.Spec := by
  intro n
  simp only [A014721, Nat.add_sub_cancel, A014721.P10633327806573608840.a, A014721.P14394062809074516665.a, A014413, A014413.P14567634354021645646.f1, A014413.P14567634354021645646.f2, A014413.P14567634354021645646.a, A028272, A028272.P16658782118669179364.a, A028324, A028324.P3744947203801218243.a, A007318, A007318.P302227728145965961.a, A014411, A014411.P10381451059067802495.f1, A014411.P10381451059067802495.f2, A014411.P10381451059067802495.a, A028285, A028285.P5292532840332202507.a, A340507, A340507.P13308749696070402216.a, A003056, A003056.P5318256527314048597.a, A008311, A008311.P16507071146551103518.a, A259525, A259525.P15603515225238104540.f1, A259525.P15603515225238104540.a, A008314, A008314.P17030209366717782596.a, A028391, A028391.P17198271841435315725.a, A074909, A074909.P6707642907239843837.f1, A074909.P6707642907239843837.a, A082375, A082375.P11690082017939293058.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A014721

/-! ## A014721.P3353101342579558214

`((A029614(n)-A034869(n))/2)²`
-/

namespace A014721.P3353101342579558214
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A029614 n - A034869 n : ℚ) / 2) ^ 2

end

end A014721.P3353101342579558214

namespace A014721

/-- `((A029614(n)-A034869(n))/2)²` -/
def P3353101342579558214.Spec : Prop :=
  ∀ n, P3353101342579558214.a n = (A014721 (n + 1) : ℚ)

end A014721

/-! ## A014721.P18066968962935905200

`(A046207(n+1)/A027434(n+1))²`
-/

namespace A014721.P18066968962935905200
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A046207 (n + 1) : ℚ) / (A027434 (n + 1) : ℚ)) ^ 2

end

end A014721.P18066968962935905200

namespace A014721

/-- `(A046207(n+1)/A027434(n+1))²` -/
def P18066968962935905200.Spec : Prop :=
  ∀ n, P18066968962935905200.a n = (A014721 (n + 1) : ℚ)

end A014721

/-! ## A014721.P15182604130335837955

`((A014411(n+1)-A028285(n))/2)²`
-/

namespace A014721.P15182604130335837955
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A014411 (n + 1) - A028285 n : ℚ) / 2) ^ 2

end

end A014721.P15182604130335837955

namespace A014721

/-- `((A014411(n+1)-A028285(n))/2)²` -/
def P15182604130335837955.Spec : Prop :=
  ∀ n, P15182604130335837955.a n = (A014721 (n + 1) : ℚ)

theorem P15182604130335837955.correct : P15182604130335837955.Spec := by
  intro n
  simp only [A014721, Nat.add_sub_cancel, A014721.P15182604130335837955.a, A014721.P14394062809074516665.a, A014411, A014411.P10381451059067802495.f1, A014411.P10381451059067802495.f2, A014411.P10381451059067802495.a, A014413, A014413.P14567634354021645646.f1, A014413.P14567634354021645646.f2, A014413.P14567634354021645646.a, A028285, A028285.P5292532840332202507.a, A007318, A007318.P302227728145965961.a, A008311, A008311.P16507071146551103518.a, A028272, A028272.P16658782118669179364.a, A340507, A340507.P13308749696070402216.a, A003056, A003056.P5318256527314048597.a, A008314, A008314.P17030209366717782596.a, A028391, A028391.P17198271841435315725.a, A082375, A082375.P11690082017939293058.a, A259525, A259525.P15603515225238104540.f1, A259525.P15603515225238104540.a, A000034, A000034.P10773112074177680709.a, A034868, A034868.P12965043593595847904.a, A070824, A070824.P6802822783910193033.f1, A070824.P6802822783910193033.a, A074909, A074909.P6707642907239843837.f1, A074909.P6707642907239843837.a, A122197, A122197.P4223396972267691169.a, A199474, A199474.P17289938978720021697.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A014721

/-! ## A014721.P7806720568376083135

`A014413(n+1)^A020639(2*(n+1))`
-/

namespace A014721.P7806720568376083135
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A014413 (n + 1) : ℚ) ^ (A020639 (2 * (n + 1)) : ℤ)

end

end A014721.P7806720568376083135

namespace A014721

/-- `A014413(n+1)^A020639(2*(n+1))` -/
def P7806720568376083135.Spec : Prop :=
  ∀ n, P7806720568376083135.a n = (A014721 (n + 1) : ℚ)

end A014721

/-! ## A014721.P16400515853110086018

`(A028330(n)/2)^A020639(4*(n+1))`
-/

namespace A014721.P16400515853110086018
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A028330 n : ℚ) / 2) ^ (A020639 (4 * (n + 1)) : ℤ)

end

end A014721.P16400515853110086018

namespace A014721

/-- `(A028330(n)/2)^A020639(4*(n+1))` -/
def P16400515853110086018.Spec : Prop :=
  ∀ n, P16400515853110086018.a n = (A014721 (n + 1) : ℚ)

end A014721

/-! ## A014721.P12712174987702840954

`A014413(n+1)^A000005(C(2, n)+2)`
-/

namespace A014721.P12712174987702840954
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A014413 (n + 1) : ℚ) ^ (A000005 (Nat.choose 2 n + 2) : ℤ)

end

end A014721.P12712174987702840954

namespace A014721

/-- `A014413(n+1)^A000005(C(2, n)+2)` -/
def P12712174987702840954.Spec : Prop :=
  ∀ n, P12712174987702840954.a n = (A014721 (n + 1) : ℚ)

end A014721

/-! ## A014721.P11477571639816937629

`A178300(A091995(n+1))²`
-/

namespace A014721.P11477571639816937629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178300 (A091995 (n + 1)).toNat ^ 2

end

end A014721.P11477571639816937629

namespace A014721

/-- `A178300(A091995(n+1))²` -/
def P11477571639816937629.Spec : Prop :=
  ∀ n, P11477571639816937629.a n = A014721 (n + 1)

end A014721

/-! ## A014721.P14609182589410205676

`A007318(eq[1, A340507(n)])²`
-/

namespace A014721.P14609182589410205676
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340507 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n) ^ 2

end

end A014721.P14609182589410205676

namespace A014721

/-- `A007318(eq[1, A340507(n)])²` -/
def P14609182589410205676.Spec : Prop :=
  ∀ n, P14609182589410205676.a n = A014721 (n + 1)

theorem P14609182589410205676.correct : P14609182589410205676.Spec := by
  intro n
  simp only [A014721, Nat.add_sub_cancel, A014721.P14609182589410205676.f1, A014721.P14609182589410205676.f2, A014721.P14609182589410205676.a, A014721.P14394062809074516665.a, A007318, A007318.P302227728145965961.a, A014413, A014413.P14567634354021645646.f1, A014413.P14567634354021645646.f2, A014413.P14567634354021645646.a, A340507, A340507.P13308749696070402216.a, A003056, A003056.P5318256527314048597.a, A259525, A259525.P15603515225238104540.f1, A259525.P15603515225238104540.a, A074909, A074909.P6707642907239843837.f1, A074909.P6707642907239843837.a, A002262, A002262.P12129691700837801527.a, A010054, A010054.P18347828677204923252.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A014721

/-! ## A014721.P5581422759521502356

`A007318(eq[0, A052553(n)])²`
-/

namespace A014721.P5581422759521502356
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052553 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n) ^ 2

end

end A014721.P5581422759521502356

namespace A014721

/-- `A007318(eq[0, A052553(n)])²` -/
def P5581422759521502356.Spec : Prop :=
  ∀ n, P5581422759521502356.a n = A014721 (n + 1)

end A014721

/-!
# A014722: Inverse of 713th cyclotomic polynomial.

The programs for A014722, there is no canonical definition to state claims against.
-/

/-! ## A014722.P16760609808917598602

`A015435(n)*A033999(n)`
-/

namespace A014722.P16760609808917598602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015435 n * A033999 n

end

end A014722.P16760609808917598602

/-!
# A014723: Inverse of 714th cyclotomic polynomial.

The programs for A014723, there is no canonical definition to state claims against.
-/

/-! ## A014723.P14256998438933321473

`A014366(n)*A033999(n)`
-/

namespace A014723.P14256998438933321473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014366 n * A033999 n

end

end A014723.P14256998438933321473

/-!
# A014724: Inverse of 715th cyclotomic polynomial.

The programs for A014724, there is no canonical definition to state claims against.
-/

/-! ## A014724.P14220452789095758220

`A015439(n)*A033999(n)`
-/

namespace A014724.P14220452789095758220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015439 n * A033999 n

end

end A014724.P14220452789095758220

/-!
# A014725: Squares of odd elements in Pascal triangle that are not 1.

The programs for A014725, the canonical program `A014725.P11893219493432893868` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A014725 has offset 1).

The definition of A014725 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A014414, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A014725.P11893219493432893868

`A014414(n+1)²`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A014725

/-- `A014414(n+1)²` -/
def P11893219493432893868.Spec : Prop :=
  ∀ n, P11893219493432893868.a n = A014725 (n + 1)

theorem P11893219493432893868.correct : P11893219493432893868.Spec := by
  intro n
  simp only [A014725, Nat.add_sub_cancel]

end A014725

/-! ## A014725.P6386871118087662785

`A014726(lt[1, A014421(n)])`
-/

namespace A014725.P6386871118087662785
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014421 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014726 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A014725.P6386871118087662785

namespace A014725

/-- `A014726(lt[1, A014421(n)])` -/
def P6386871118087662785.Spec : Prop :=
  ∀ n, P6386871118087662785.a n = A014725 (n + 1)

end A014725

/-! ## A014725.P3392008988192274926

`A014726(lt[1, A014726(n)])`
-/

namespace A014725.P3392008988192274926
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014726 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014726 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A014725.P3392008988192274926

namespace A014725

/-- `A014726(lt[1, A014726(n)])` -/
def P3392008988192274926.Spec : Prop :=
  ∀ n, P3392008988192274926.a n = A014725 (n + 1)

end A014725

/-! ## A014725.P8016225047232127358

`A014421(lt[1, A014421(n)])²`
-/

namespace A014725.P8016225047232127358
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014421 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014421 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n) ^ 2

end

end A014725.P8016225047232127358

namespace A014725

/-- `A014421(lt[1, A014421(n)])²` -/
def P8016225047232127358.Spec : Prop :=
  ∀ n, P8016225047232127358.a n = A014725 (n + 1)

end A014725

/-! ## A014725.P14554255022868616768

`A014414(n+1)^A000034(2*n+1)`
-/

namespace A014725.P14554255022868616768
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A014414 (n + 1) : ℚ) ^ (A000034 (2 * n + 1) : ℤ)

end

end A014725.P14554255022868616768

namespace A014725

/-- `A014414(n+1)^A000034(2*n+1)` -/
def P14554255022868616768.Spec : Prop :=
  ∀ n, P14554255022868616768.a n = (A014725 (n + 1) : ℚ)

end A014725

/-! ## A014725.P13111970884473769153

`A014414(n+1)^A020639(2*(n+1))`
-/

namespace A014725.P13111970884473769153
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A014414 (n + 1) : ℚ) ^ (A020639 (2 * (n + 1)) : ℤ)

end

end A014725.P13111970884473769153

namespace A014725

/-- `A014414(n+1)^A020639(2*(n+1))` -/
def P13111970884473769153.Spec : Prop :=
  ∀ n, P13111970884473769153.a n = (A014725 (n + 1) : ℚ)

end A014725

/-! ## A014725.P3860284225826806188

`A014414(n+1)^A001316(A001316(n))`
-/

namespace A014725.P3860284225826806188
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A014414 (n + 1) : ℚ) ^ (A001316 (A001316 n).toNat : ℤ)

end

end A014725.P3860284225826806188

namespace A014725

/-- `A014414(n+1)^A001316(A001316(n))` -/
def P3860284225826806188.Spec : Prop :=
  ∀ n, P3860284225826806188.a n = (A014725 (n + 1) : ℚ)

end A014725

/-! ## A014725.P7681414125778225803

`A014414(A000027(n+1))*A014414(n+1)`
-/

namespace A014725.P7681414125778225803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014414 (A000027 (n + 1)).toNat * A014414 (n + 1)

end

end A014725.P7681414125778225803

namespace A014725

/-- `A014414(A000027(n+1))*A014414(n+1)` -/
def P7681414125778225803.Spec : Prop :=
  ∀ n, P7681414125778225803.a n = A014725 (n + 1)

end A014725

/-! ## A014725.P3217239710789380256

`A014414(n+1)^A006530(A307313(n+1))`
-/

namespace A014725.P3217239710789380256
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A014414 (n + 1) : ℚ) ^ (A006530 (A307313 (n + 1)).toNat : ℤ)

end

end A014725.P3217239710789380256

namespace A014725

/-- `A014414(n+1)^A006530(A307313(n+1))` -/
def P3217239710789380256.Spec : Prop :=
  ∀ n, P3217239710789380256.a n = (A014725 (n + 1) : ℚ)

end A014725

/-! ## A014725.P10875798547486586284

`A014414(n+1)^A135517(A004766(n+1))`
-/

namespace A014725.P10875798547486586284
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A014414 (n + 1) : ℚ) ^ (A135517 (A004766 (n + 1)).toNat : ℤ)

end

end A014725.P10875798547486586284

namespace A014725

/-- `A014414(n+1)^A135517(A004766(n+1))` -/
def P10875798547486586284.Spec : Prop :=
  ∀ n, P10875798547486586284.a n = (A014725 (n + 1) : ℚ)

end A014725

/-! ## A014725.P3051647107316284589

`A007318(lt[1, A143333(n)])²`
-/

namespace A014725.P3051647107316284589
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143333 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n) ^ 2

end

end A014725.P3051647107316284589

namespace A014725

/-- `A007318(lt[1, A143333(n)])²` -/
def P3051647107316284589.Spec : Prop :=
  ∀ n, P3051647107316284589.a n = A014725 (n + 1)

end A014725

/-! ## A014725.P16838885783392334707

`A143333(lt[1, A143333(n)])²`
-/

namespace A014725.P16838885783392334707
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143333 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143333 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n) ^ 2

end

end A014725.P16838885783392334707

namespace A014725

/-- `A143333(lt[1, A143333(n)])²` -/
def P16838885783392334707.Spec : Prop :=
  ∀ n, P16838885783392334707.a n = A014725 (n + 1)

end A014725

/-! ## A014725.P14761699875491470305

`A007318(eq[A035214(n), A050600(n)])²`
-/

namespace A014725.P14761699875491470305
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035214 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050600 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n) ^ 2

end

end A014725.P14761699875491470305

namespace A014725

/-- `A007318(eq[A035214(n), A050600(n)])²` -/
def P14761699875491470305.Spec : Prop :=
  ∀ n, P14761699875491470305.a n = A014725 (n + 1)

end A014725

/-! ## A014725.P7561357769703737007

`A007318(eq[A004198(n), A103451(n)])²`
-/

namespace A014725.P7561357769703737007
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004198 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103451 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n) ^ 2

end

end A014725.P7561357769703737007

namespace A014725

/-- `A007318(eq[A004198(n), A103451(n)])²` -/
def P7561357769703737007.Spec : Prop :=
  ∀ n, P7561357769703737007.a n = A014725 (n + 1)

end A014725

/-! ## A014725.P12411491390775992771

`A007318(eq[A050600(n), A131843(n)])²`
-/

namespace A014725.P12411491390775992771
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050600 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131843 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n) ^ 2

end

end A014725.P12411491390775992771

namespace A014725

/-- `A007318(eq[A050600(n), A131843(n)])²` -/
def P12411491390775992771.Spec : Prop :=
  ∀ n, P12411491390775992771.a n = A014725 (n + 1)

end A014725

/-! ## A014725.P16560206465719216487

`A014414(n+1)^A000005(record[A014963(n+2)])`
-/

namespace A014725.P16560206465719216487
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A014414 (n + 1) : ℚ) ^ (A000005 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat : ℤ)

end

end A014725.P16560206465719216487

namespace A014725

/-- `A014414(n+1)^A000005(record[A014963(n+2)])` -/
def P16560206465719216487.Spec : Prop :=
  ∀ n, P16560206465719216487.a n = (A014725 (n + 1) : ℚ)

end A014725

/-!
# A014726: Squares of odd elements in Pascal triangle.

The programs for A014726, the canonical program `A014726.P17215168887441712385` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A014726 has offset 0).

The definition of A014726 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A014421, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A014726.P17215168887441712385

`A014421(n)²`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A014726

/-- `A014421(n)²` -/
def P17215168887441712385.Spec : Prop :=
  ∀ n, P17215168887441712385.a n = A014726 n

theorem P17215168887441712385.correct : P17215168887441712385.Spec := by
  intro n
  simp only [A014726]

end A014726

/-! ## A014726.P6554955167935083948

`A014421(n)^A014963(A001316(n))`
-/

namespace A014726.P6554955167935083948
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A014421 n : ℚ) ^ (A014963 (A001316 n).toNat : ℤ)

end

end A014726.P6554955167935083948

namespace A014726

/-- `A014421(n)^A014963(A001316(n))` -/
def P6554955167935083948.Spec : Prop :=
  ∀ n, P6554955167935083948.a n = (A014726 n : ℚ)

end A014726

/-! ## A014726.P16681745217857149779

`A007318(A268231(n+1))²`
-/

namespace A014726.P16681745217857149779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (A268231 (n + 1)).toNat ^ 2

end

end A014726.P16681745217857149779

namespace A014726

/-- `A007318(A268231(n+1))²` -/
def P16681745217857149779.Spec : Prop :=
  ∀ n, P16681745217857149779.a n = A014726 n

end A014726

/-! ## A014726.P15193469751420689024

`A007318(eq[1, A047999(n)])²`
-/

namespace A014726.P15193469751420689024
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047999 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n) ^ 2

end

end A014726.P15193469751420689024

namespace A014726

/-- `A007318(eq[1, A047999(n)])²` -/
def P15193469751420689024.Spec : Prop :=
  ∀ n, P15193469751420689024.a n = A014726 n

end A014726

/-! ## A014726.P13638469422586655519

`A007318(comp[A268232(n+1)])²`
-/

namespace A014726.P13638469422586655519
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268232 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n) ^ 2

end

end A014726.P13638469422586655519

namespace A014726

/-- `A007318(comp[A268232(n+1)])²` -/
def P13638469422586655519.Spec : Prop :=
  ∀ n, P13638469422586655519.a n = A014726 n

end A014726

/-! ## A014726.P7455779033300144642

`A007318(lt[0, A007318(n)%2])²`
-/

namespace A014726.P7455779033300144642
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A007318 n) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n) ^ 2

end

end A014726.P7455779033300144642

namespace A014726

/-- `A007318(lt[0, A007318(n)%2])²` -/
def P7455779033300144642.Spec : Prop :=
  ∀ n, P7455779033300144642.a n = A014726 n

end A014726

/-! ## A014726.P9573385841198218395

`A007318(eq[1, gcd(2, A007318(n))])²`
-/

namespace A014726.P9573385841198218395
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 2 (A007318 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n) ^ 2

end

end A014726.P9573385841198218395

namespace A014726

/-- `A007318(eq[1, gcd(2, A007318(n))])²` -/
def P9573385841198218395.Spec : Prop :=
  ∀ n, P9573385841198218395.a n = A014726 n

end A014726

/-! ## A014726.P7205890642865442843

`A007318(eq[0, val(A007318(n), 2)])²`
-/

namespace A014726.P7205890642865442843
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A007318 n).toNat 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n) ^ 2

end

end A014726.P7205890642865442843

namespace A014726

/-- `A007318(eq[0, val(A007318(n), 2)])²` -/
def P7205890642865442843.Spec : Prop :=
  ∀ n, P7205890642865442843.a n = A014726 n

end A014726

/-! ## A014726.P10920853105663663928

`A007318(lt[val(A007318(n), 2), 1])²`
-/

namespace A014726.P10920853105663663928
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A007318 n).toNat 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n) ^ 2

end

end A014726.P10920853105663663928

namespace A014726

/-- `A007318(lt[val(A007318(n), 2), 1])²` -/
def P10920853105663663928.Spec : Prop :=
  ∀ n, P10920853105663663928.a n = A014726 n

end A014726

/-! ## A014726.P12203307735598519977

`A007318(lt[0, and(1, A007318(n))])²`
-/

namespace A014726.P12203307735598519977
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A007318 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n) ^ 2

end

end A014726.P12203307735598519977

namespace A014726

/-- `A007318(lt[0, and(1, A007318(n))])²` -/
def P12203307735598519977.Spec : Prop :=
  ∀ n, P12203307735598519977.a n = A014726 n

end A014726

/-! ## A014726.P14165882838880352056

`A007318(eq[1, and(1, A007318(n))])²`
-/

namespace A014726.P14165882838880352056
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A007318 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n) ^ 2

end

end A014726.P14165882838880352056

namespace A014726

/-- `A007318(eq[1, and(1, A007318(n))])²` -/
def P14165882838880352056.Spec : Prop :=
  ∀ n, P14165882838880352056.a n = A014726 n

end A014726

/-! ## A014726.P3848892998335882503

`A008459(A268231(n+1))`
-/

namespace A014726.P3848892998335882503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008459 (A268231 (n + 1)).toNat

end

end A014726.P3848892998335882503

namespace A014726

/-- `A008459(A268231(n+1))` -/
def P3848892998335882503.Spec : Prop :=
  ∀ n, P3848892998335882503.a n = A014726 n

end A014726

/-! ## A014726.P1832875307242744704

`A007318(eq[0, A004198(n)])²`
-/

namespace A014726.P1832875307242744704
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004198 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n) ^ 2

end

end A014726.P1832875307242744704

namespace A014726

/-- `A007318(eq[0, A004198(n)])²` -/
def P1832875307242744704.Spec : Prop :=
  ∀ n, P1832875307242744704.a n = A014726 n

end A014726

/-! ## A014726.P6183458479987854

`A007318(lt[A004198(n), 1])²`
-/

namespace A014726.P6183458479987854
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004198 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n) ^ 2

end

end A014726.P6183458479987854

namespace A014726

/-- `A007318(lt[A004198(n), 1])²` -/
def P6183458479987854.Spec : Prop :=
  ∀ n, P6183458479987854.a n = A014726 n

end A014726

/-! ## A014726.P14144119286744885071

`A007318(eq[A007318(n), A143333(n)])²`
-/

namespace A014726.P14144119286744885071
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143333 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n) ^ 2

end

end A014726.P14144119286744885071

namespace A014726

/-- `A007318(eq[A007318(n), A143333(n)])²` -/
def P14144119286744885071.Spec : Prop :=
  ∀ n, P14144119286744885071.a n = A014726 n

end A014726

/-! ## A014726.P5434030043314319605

`A007318(eq[A007318(n), A319861(n)])²`
-/

namespace A014726.P5434030043314319605
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319861 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n) ^ 2

end

end A014726.P5434030043314319605

namespace A014726

/-- `A007318(eq[A007318(n), A319861(n)])²` -/
def P5434030043314319605.Spec : Prop :=
  ∀ n, P5434030043314319605.a n = A014726 n

end A014726

/-! ## A014726.P16589849200168913973

`A007318(eq[A050600(n)², A050600(n)])²`
-/

namespace A014726.P16589849200168913973
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050600 n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050600 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n) ^ 2

end

end A014726.P16589849200168913973

namespace A014726

/-- `A007318(eq[A050600(n)², A050600(n)])²` -/
def P16589849200168913973.Spec : Prop :=
  ∀ n, P16589849200168913973.a n = A014726 n

end A014726

/-! ## A014726.P9841115023042354228

`A007318(eq[1, A307433(n)])²`
-/

namespace A014726.P9841115023042354228
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307433 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n) ^ 2

end

end A014726.P9841115023042354228

namespace A014726

/-- `A007318(eq[1, A307433(n)])²` -/
def P9841115023042354228.Spec : Prop :=
  ∀ n, P9841115023042354228.a n = A014726 n

end A014726

/-! ## A014726.P7822063956147448620

`A007318(lt[A307433(n), 2])²`
-/

namespace A014726.P7822063956147448620
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307433 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n) ^ 2

end

end A014726.P7822063956147448620

namespace A014726

/-- `A007318(lt[A307433(n), 2])²` -/
def P7822063956147448620.Spec : Prop :=
  ∀ n, P7822063956147448620.a n = A014726 n

end A014726

/-! ## A014726.P2296162210728906675

`A014421(n)^A020639(A014428(n+1))`
-/

namespace A014726.P2296162210728906675
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A014421 n : ℚ) ^ (A020639 (A014428 (n + 1)).toNat : ℤ)

end

end A014726.P2296162210728906675

namespace A014726

/-- `A014421(n)^A020639(A014428(n+1))` -/
def P2296162210728906675.Spec : Prop :=
  ∀ n, P2296162210728906675.a n = (A014726 n : ℚ)

end A014726

/-!
# A014727: Squares of even elements in Pascal's triangle A007318.

The programs for A014727, the canonical program `A014727.P2848132402637456183` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A014727 has offset 0).

The definition of A014727 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A014428, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A014727.P2848132402637456183

`A014428(n+1)²`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A014727

/-- `A014428(n+1)²` -/
def P2848132402637456183.Spec : Prop :=
  ∀ n, P2848132402637456183.a n = A014727 n

theorem P2848132402637456183.correct : P2848132402637456183.Spec := by
  intro n
  simp only [A014727]

end A014727

/-! ## A014727.P3126492236080127845

`(A051429(n)-A051434(n))²`
-/

namespace A014727.P3126492236080127845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A051429 n - A051434 n) ^ 2

end

end A014727.P3126492236080127845

namespace A014727

/-- `(A051429(n)-A051434(n))²` -/
def P3126492236080127845.Spec : Prop :=
  ∀ n, P3126492236080127845.a n = A014727 n

theorem P3126492236080127845.correct : P3126492236080127845.Spec := by
  intro n
  simp only [A014727, Nat.add_sub_cancel, A014727.P3126492236080127845.a, A014727.P2848132402637456183.a, A014428, A014428.P4888485289418456815.a, A051429, A051429.P11525553807131597753.a, A051434, A051434.P18205378062709367027.a, A007318, A007318.P302227728145965961.a, A029659, A029659.P14042741699956388996.a, A268232, A268232.P6386950122841436999.f1, A268232.P6386950122841436999.f2, A268232.P6386950122841436999.a, A000217, A000217.P10269402890581615239.a, A029607, A029607.P1574991405031157313.f1, A029607.P1574991405031157313.f2, A029607.P1574991405031157313.a, A080098, A080098.P7543541268193481793.a, A259525, A259525.P15603515225238104540.f1, A259525.P15603515225238104540.a, A002262, A002262.P12129691700837801527.a, A003056, A003056.P5318256527314048597.a, A029605, A029605.P7080579544809329854.f1, A029605.P7080579544809329854.f2, A029605.P7080579544809329854.a, A074909, A074909.P6707642907239843837.f1, A074909.P6707642907239843837.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A014727

/-! ## A014727.P12824241109455939406

`(A051456(n)-A051468(n))²`
-/

namespace A014727.P12824241109455939406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A051456 n - A051468 n) ^ 2

end

end A014727.P12824241109455939406

namespace A014727

/-- `(A051456(n)-A051468(n))²` -/
def P12824241109455939406.Spec : Prop :=
  ∀ n, P12824241109455939406.a n = A014727 n

theorem P12824241109455939406.correct : P12824241109455939406.Spec := by
  intro n
  simp only [A014727, Nat.add_sub_cancel, A014727.P12824241109455939406.a, A014727.P2848132402637456183.a, A014428, A014428.P4888485289418456815.a, A051456, A051456.P8737044778690682288.a, A051468, A051468.P6533800774819959610.a, A007318, A007318.P302227728145965961.a, A029625, A029625.P8414473659430485930.f1, A029625.P8414473659430485930.f2, A029625.P8414473659430485930.a, A268232, A268232.P6386950122841436999.f1, A268232.P6386950122841436999.f2, A268232.P6386950122841436999.a, A000217, A000217.P10269402890581615239.a, A029623, A029623.P11351172865891342749.f1, A029623.P11351172865891342749.f2, A029623.P11351172865891342749.a, A080098, A080098.P7543541268193481793.a, A259525, A259525.P15603515225238104540.f1, A259525.P15603515225238104540.a, A002262, A002262.P12129691700837801527.a, A003056, A003056.P5318256527314048597.a, A029618, A029618.P143499929436318524.a, A074909, A074909.P6707642907239843837.f1, A074909.P6707642907239843837.a, A290452, A290452.P1449433213042397141.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A014727

/-! ## A014727.P2082807180979131742

`A014428(n+1)^A001316(A001316(n))`
-/

namespace A014727.P2082807180979131742
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A014428 (n + 1) : ℚ) ^ (A001316 (A001316 n).toNat : ℤ)

end

end A014727.P2082807180979131742

namespace A014727

/-- `A014428(n+1)^A001316(A001316(n))` -/
def P2082807180979131742.Spec : Prop :=
  ∀ n, P2082807180979131742.a n = (A014727 n : ℚ)

end A014727

/-! ## A014727.P2805821703011989923

`(A028326(A268232(n+1))/2)²`
-/

namespace A014727.P2805821703011989923
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A028326 (A268232 (n + 1)).toNat : ℚ) / 2) ^ 2

end

end A014727.P2805821703011989923

namespace A014727

/-- `(A028326(A268232(n+1))/2)²` -/
def P2805821703011989923.Spec : Prop :=
  ∀ n, P2805821703011989923.a n = (A014727 n : ℚ)

theorem P2805821703011989923.correct : P2805821703011989923.Spec := by
  intro n
  simp only [A014727, Nat.add_sub_cancel, A014727.P2805821703011989923.a, A014727.P2848132402637456183.a, A014428, A014428.P4888485289418456815.a, A028326, A028326.P16610217584664895500.a, A268232, A268232.P6386950122841436999.f1, A268232.P6386950122841436999.f2, A268232.P6386950122841436999.a, A000217, A000217.P10269402890581615239.a, A007318, A007318.P302227728145965961.a, A080098, A080098.P7543541268193481793.a, A002262, A002262.P12129691700837801527.a, A003056, A003056.P5318256527314048597.a, A259525, A259525.P15603515225238104540.f1, A259525.P15603515225238104540.a, A057944, A057944.P16851463738746886639.a, A074909, A074909.P6707642907239843837.f1, A074909.P6707642907239843837.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A014727

/-! ## A014727.P6597870147236471125

`A007318(A268232(n+1))²`
-/

namespace A014727.P6597870147236471125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (A268232 (n + 1)).toNat ^ 2

end

end A014727.P6597870147236471125

namespace A014727

/-- `A007318(A268232(n+1))²` -/
def P6597870147236471125.Spec : Prop :=
  ∀ n, P6597870147236471125.a n = A014727 n

end A014727

/-! ## A014727.P12133859801335891773

`A007318(eq[0, A047999(n)])²`
-/

namespace A014727.P12133859801335891773
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047999 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n) ^ 2

end

end A014727.P12133859801335891773

namespace A014727

/-- `A007318(eq[0, A047999(n)])²` -/
def P12133859801335891773.Spec : Prop :=
  ∀ n, P12133859801335891773.a n = A014727 n

end A014727

/-! ## A014727.P3775103922107304898

`A007318(lt[A047999(n), 1])²`
-/

namespace A014727.P3775103922107304898
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047999 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n) ^ 2

end

end A014727.P3775103922107304898

namespace A014727

/-- `A007318(lt[A047999(n), 1])²` -/
def P3775103922107304898.Spec : Prop :=
  ∀ n, P3775103922107304898.a n = A014727 n

end A014727

/-! ## A014727.P3292239723779363976

`A007318(comp[A268231(n+1)])²`
-/

namespace A014727.P3292239723779363976
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268231 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n) ^ 2

end

end A014727.P3292239723779363976

namespace A014727

/-- `A007318(comp[A268231(n+1)])²` -/
def P3292239723779363976.Spec : Prop :=
  ∀ n, P3292239723779363976.a n = A014727 n

end A014727

/-! ## A014727.P11224313662230403840

`A007318(eq[0, A007318(n)%2])²`
-/

namespace A014727.P11224313662230403840
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A007318 n) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n) ^ 2

end

end A014727.P11224313662230403840

namespace A014727

/-- `A007318(eq[0, A007318(n)%2])²` -/
def P11224313662230403840.Spec : Prop :=
  ∀ n, P11224313662230403840.a n = A014727 n

end A014727

/-! ## A014727.P13408202191536007611

`A007318(eq[2, gcd(2, A007318(n))])²`
-/

namespace A014727.P13408202191536007611
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 2 (A007318 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n) ^ 2

end

end A014727.P13408202191536007611

namespace A014727

/-- `A007318(eq[2, gcd(2, A007318(n))])²` -/
def P13408202191536007611.Spec : Prop :=
  ∀ n, P13408202191536007611.a n = A014727 n

end A014727

/-! ## A014727.P16278100592056545091

`A007318(eq[0, and(1, A007318(n))])²`
-/

namespace A014727.P16278100592056545091
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A007318 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n) ^ 2

end

end A014727.P16278100592056545091

namespace A014727

/-- `A007318(eq[0, and(1, A007318(n))])²` -/
def P16278100592056545091.Spec : Prop :=
  ∀ n, P16278100592056545091.a n = A014727 n

end A014727

/-! ## A014727.P12301522114802914304

`A008459(A268232(n+1))`
-/

namespace A014727.P12301522114802914304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008459 (A268232 (n + 1)).toNat

end

end A014727.P12301522114802914304

namespace A014727

/-- `A008459(A268232(n+1))` -/
def P12301522114802914304.Spec : Prop :=
  ∀ n, P12301522114802914304.a n = A014727 n

end A014727

/-! ## A014727.P3050135105240689012

`A007318(eq[1, A219463(n)])²`
-/

namespace A014727.P3050135105240689012
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219463 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n) ^ 2

end

end A014727.P3050135105240689012

namespace A014727

/-- `A007318(eq[1, A219463(n)])²` -/
def P3050135105240689012.Spec : Prop :=
  ∀ n, P3050135105240689012.a n = A014727 n

end A014727

/-! ## A014727.P3638916445468415952

`A007318(lt[A143333(n), 1])²`
-/

namespace A014727.P3638916445468415952
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143333 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n) ^ 2

end

end A014727.P3638916445468415952

namespace A014727

/-- `A007318(lt[A143333(n), 1])²` -/
def P3638916445468415952.Spec : Prop :=
  ∀ n, P3638916445468415952.a n = A014727 n

end A014727

/-! ## A014727.P7703170871967559259

`A007318(lt[1, A307433(n)])²`
-/

namespace A014727.P7703170871967559259
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307433 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n) ^ 2

end

end A014727.P7703170871967559259

namespace A014727

/-- `A007318(lt[1, A307433(n)])²` -/
def P7703170871967559259.Spec : Prop :=
  ∀ n, P7703170871967559259.a n = A014727 n

end A014727

/-! ## A014727.P6789467407738950005

`A007318(eq[2, A020639(A007318(n))])²`
-/

namespace A014727.P6789467407738950005
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A007318 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n) ^ 2

end

end A014727.P6789467407738950005

namespace A014727

/-- `A007318(eq[2, A020639(A007318(n))])²` -/
def P6789467407738950005.Spec : Prop :=
  ∀ n, P6789467407738950005.a n = A014727 n

end A014727

/-!
# A014728: Squares of odd Fibonacci numbers.

The programs for A014728, the canonical program `A014728.P2908315296679547555` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A014728 has offset 0).

The definition of A014728 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A014728.P2908315296679547555

`A014437(n)²`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A014728

/-- `A014437(n)²` -/
def P2908315296679547555.Spec : Prop :=
  ∀ n, P2908315296679547555.a n = A014728 n

theorem P2908315296679547555.correct : P2908315296679547555.Spec := by
  intro n
  simp only [A014728]

end A014728

/-! ## A014728.P14706146779368529228

`A007598(comp[3*n])`
-/

namespace A014728.P14706146779368529228
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007598 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A014728.P14706146779368529228

namespace A014728

/-- `A007598(comp[3*n])` -/
def P14706146779368529228.Spec : Prop :=
  ∀ n, P14706146779368529228.a n = A014728 n

end A014728

/-! ## A014728.P17839006084646148185

`A000045(comp[3*n])²`
-/

namespace A014728.P17839006084646148185
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n) ^ 2

end

end A014728.P17839006084646148185

namespace A014728

/-- `A000045(comp[3*n])²` -/
def P17839006084646148185.Spec : Prop :=
  ∀ n, P17839006084646148185.a n = A014728 n

end A014728

/-! ## A014728.P15029467496864663472

`A212804(∑[gcd(2, n)])²`
-/

namespace A014728.P15029467496864663472
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd 2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212804 (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2

end

end A014728.P15029467496864663472

namespace A014728

/-- `A212804(∑[gcd(2, n)])²` -/
def P15029467496864663472.Spec : Prop :=
  ∀ n, P15029467496864663472.a n = A014728 n

end A014728

/-! ## A014728.P1862369345058612696

`or(1, record[A167808(n)²])`
-/

namespace A014728.P1862369345058612696
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167808 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))

end

end A014728.P1862369345058612696

namespace A014728

/-- `or(1, record[A167808(n)²])` -/
def P1862369345058612696.Spec : Prop :=
  ∀ n, P1862369345058612696.a n = A014728 n

end A014728

/-! ## A014728.P18262485382350045728

`A103609(3*n+2)²`
-/

namespace A014728.P18262485382350045728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103609 (3 * n + 2) ^ 2

end

end A014728.P18262485382350045728

namespace A014728

/-- `A103609(3*n+2)²` -/
def P18262485382350045728.Spec : Prop :=
  ∀ n, P18262485382350045728.a n = A014728 n

end A014728

/-! ## A014728.P4913282495197181691

`A006498(3*n-and(1, n))`
-/

namespace A014728.P4913282495197181691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006498 (3 * n - Nat.land 1 n)

end

end A014728.P4913282495197181691

namespace A014728

/-- `A006498(3*n-and(1, n))` -/
def P4913282495197181691.Spec : Prop :=
  ∀ n, P4913282495197181691.a n = A014728 n

end A014728

/-! ## A014728.P15858234882827400073

`(A001611(comp[3*n])-1)²`
-/

namespace A014728.P15858234882827400073
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A001611 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n) - 1) ^ 2

end

end A014728.P15858234882827400073

namespace A014728

/-- `(A001611(comp[3*n])-1)²` -/
def P15858234882827400073.Spec : Prop :=
  ∀ n, P15858234882827400073.a n = A014728 n

end A014728

/-! ## A014728.P6778060929895450837

`(1-2*A107857(n+1))²`
-/

namespace A014728.P6778060929895450837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - 2 * A107857 (n + 1)) ^ 2

end

end A014728.P6778060929895450837

namespace A014728

/-- `(1-2*A107857(n+1))²` -/
def P6778060929895450837.Spec : Prop :=
  ∀ n, P6778060929895450837.a n = A014728 n

end A014728

/-! ## A014728.P12773793872888023219

`A006498(4*n+1-or(1, n+1))`
-/

namespace A014728.P12773793872888023219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006498 (4 * n + 1 - Nat.lor 1 (n + 1))

end

end A014728.P12773793872888023219

namespace A014728

/-- `A006498(4*n+1-or(1, n+1))` -/
def P12773793872888023219.Spec : Prop :=
  ∀ n, P12773793872888023219.a n = A014728 n

end A014728

/-! ## A014728.P7953156096332502253

`A103610(A017545(n))²`
-/

namespace A014728.P7953156096332502253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103610 (A017545 n).toNat ^ 2

end

end A014728.P7953156096332502253

namespace A014728

/-- `A103610(A017545(n))²` -/
def P7953156096332502253.Spec : Prop :=
  ∀ n, P7953156096332502253.a n = A014728 n

end A014728

/-! ## A014728.P746280507943447692

`A103610(A017581(n))²`
-/

namespace A014728.P746280507943447692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103610 (A017581 n).toNat ^ 2

end

end A014728.P746280507943447692

namespace A014728

/-- `A103610(A017581(n))²` -/
def P746280507943447692.Spec : Prop :=
  ∀ n, P746280507943447692.a n = A014728 n

end A014728

/-! ## A014728.P9070742391045353711

`A103610(A017617(n))²`
-/

namespace A014728.P9070742391045353711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103610 (A017617 n).toNat ^ 2

end

end A014728.P9070742391045353711

namespace A014728

/-- `A103610(A017617(n))²` -/
def P9070742391045353711.Spec : Prop :=
  ∀ n, P9070742391045353711.a n = A014728 n

end A014728

/-! ## A014728.P7213160667804042058

`A071679(A267528(n))²`
-/

namespace A014728.P7213160667804042058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071679 (A267528 n).toNat ^ 2

end

end A014728.P7213160667804042058

namespace A014728

/-- `A071679(A267528(n))²` -/
def P7213160667804042058.Spec : Prop :=
  ∀ n, P7213160667804042058.a n = A014728 n

end A014728

/-! ## A014728.P5568992195066557654

`A324969(A114119(n))²`
-/

namespace A014728.P5568992195066557654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324969 (A114119 n).toNat ^ 2

end

end A014728.P5568992195066557654

namespace A014728

/-- `A324969(A114119(n))²` -/
def P5568992195066557654.Spec : Prop :=
  ∀ n, P5568992195066557654.a n = A014728 n

end A014728

/-! ## A014728.P5594513643832074436

`A327035(A261953(n))²`
-/

namespace A014728.P5594513643832074436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327035 (A261953 n).toNat ^ 2

end

end A014728.P5594513643832074436

namespace A014728

/-- `A327035(A261953(n))²` -/
def P5594513643832074436.Spec : Prop :=
  ∀ n, P5594513643832074436.a n = A014728 n

end A014728

/-! ## A014728.P3663328022323925736

`A006498(A047238(n+1))`
-/

namespace A014728.P3663328022323925736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006498 (A047238 (n + 1)).toNat

end

end A014728.P3663328022323925736

namespace A014728

/-- `A006498(A047238(n+1))` -/
def P3663328022323925736.Spec : Prop :=
  ∀ n, P3663328022323925736.a n = A014728 n

end A014728

/-! ## A014728.P1272796707972477614

`A074677(A047241(n+1))`
-/

namespace A014728.P1272796707972477614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074677 (A047241 (n + 1)).toNat

end

end A014728.P1272796707972477614

namespace A014728

/-- `A074677(A047241(n+1))` -/
def P1272796707972477614.Spec : Prop :=
  ∀ n, P1272796707972477614.a n = A014728 n

end A014728

/-! ## A014728.P675941736312999541

`A152192(A047235(n+1))`
-/

namespace A014728.P675941736312999541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152192 (A047235 (n + 1)).toNat

end

end A014728.P675941736312999541

namespace A014728

/-- `A152192(A047235(n+1))` -/
def P675941736312999541.Spec : Prop :=
  ∀ n, P675941736312999541.a n = A014728 n

end A014728

/-!
# A014729: Squares of even Fibonacci numbers.

The programs for A014729, the canonical program `A014729.P12363565627862594585` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A014729 has offset 0).

The definition of A014729 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A014729.P12363565627862594585

`A014445(n)²`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A014729

/-- `A014445(n)²` -/
def P12363565627862594585.Spec : Prop :=
  ∀ n, P12363565627862594585.a n = A014729 n

theorem P12363565627862594585.correct : P12363565627862594585.Spec := by
  intro n
  simp only [A014729]

end A014729

/-! ## A014729.P4246928581805716152

`A007598(3*n)`
-/

namespace A014729.P4246928581805716152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007598 (3 * n)

end

end A014729.P4246928581805716152

namespace A014729

/-- `A007598(3*n)` -/
def P4246928581805716152.Spec : Prop :=
  ∀ n, P4246928581805716152.a n = A014729 n

end A014729

/-! ## A014729.P14639631231314338568

`4*A099279(n)`
-/

namespace A014729.P14639631231314338568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A099279 n

end

end A014729.P14639631231314338568

namespace A014729

/-- `4*A099279(n)` -/
def P14639631231314338568.Spec : Prop :=
  ∀ n, P14639631231314338568.a n = A014729 n

end A014729

/-! ## A014729.P10484389088294264515

`record[A102875(n)²]`
-/

namespace A014729.P10484389088294264515
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102875 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A014729.P10484389088294264515

namespace A014729

/-- `record[A102875(n)²]` -/
def P10484389088294264515.Spec : Prop :=
  ∀ n, P10484389088294264515.a n = A014729 n

end A014729

/-! ## A014729.P5102494488389184378

`(2*A001076(n))²`
-/

namespace A014729.P5102494488389184378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * A001076 n) ^ 2

end

end A014729.P5102494488389184378

namespace A014729

/-- `(2*A001076(n))²` -/
def P5102494488389184378.Spec : Prop :=
  ∀ n, P5102494488389184378.a n = A014729 n

end A014729

/-! ## A014729.P8441936098644562164

`A117647(2*n)²`
-/

namespace A014729.P8441936098644562164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117647 (2 * n) ^ 2

end

end A014729.P8441936098644562164

namespace A014729

/-- `A117647(2*n)²` -/
def P8441936098644562164.Spec : Prop :=
  ∀ n, P8441936098644562164.a n = A014729 n

end A014729

/-! ## A014729.P14457447818858086384

`A000045(3*n)²`
-/

namespace A014729.P14457447818858086384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (3 * n) ^ 2

end

end A014729.P14457447818858086384

namespace A014729

/-- `A000045(3*n)²` -/
def P14457447818858086384.Spec : Prop :=
  ∀ n, P14457447818858086384.a n = A014729 n

end A014729

/-! ## A014729.P13684399636960390550

`A104221(3*n)²`
-/

namespace A014729.P13684399636960390550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104221 (3 * n) ^ 2

end

end A014729.P13684399636960390550

namespace A014729

/-- `A104221(3*n)²` -/
def P13684399636960390550.Spec : Prop :=
  ∀ n, P13684399636960390550.a n = A014729 n

end A014729

/-! ## A014729.P10273466469251360023

`A116585(3*n)²`
-/

namespace A014729.P10273466469251360023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116585 (3 * n) ^ 2

end

end A014729.P10273466469251360023

namespace A014729

/-- `A116585(3*n)²` -/
def P10273466469251360023.Spec : Prop :=
  ∀ n, P10273466469251360023.a n = A014729 n

end A014729

/-!
# A014730: Squares of odd Lucas numbers.

The programs for A014730, the canonical program `A014730.P174668344449865089` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A014730 has offset 0).

The definition of A014730 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 160 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A014730.P174668344449865089

`A014447(n)²`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A014730

/-- `A014447(n)²` -/
def P174668344449865089.Spec : Prop :=
  ∀ n, P174668344449865089.a n = A014730 n

theorem P174668344449865089.correct : P174668344449865089.Spec := by
  intro n
  simp only [A014730]

end A014730

/-! ## A014730.P3171711369352127428

`A000032(comp[3*n])²`
-/

namespace A014730.P3171711369352127428
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n) ^ 2

end

end A014730.P3171711369352127428

namespace A014730

/-- `A000032(comp[3*n])²` -/
def P3171711369352127428.Spec : Prop :=
  ∀ n, P3171711369352127428.a n = A014730 n

end A014730

/-! ## A014730.P10782854272527309435

`A061084(∑[gcd(2, n)])²`
-/

namespace A014730.P10782854272527309435
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd 2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061084 (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2

end

end A014730.P10782854272527309435

namespace A014730

/-- `A061084(∑[gcd(2, n)])²` -/
def P10782854272527309435.Spec : Prop :=
  ∀ n, P10782854272527309435.a n = A014730 n

end A014730

/-! ## A014730.P16469465166664978432

`record[(lcm(2, A000032(n))/2)²]`
-/

namespace A014730.P16469465166664978432
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((Int.lcm 2 (A000032 n) : ℚ) / 2) ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A014730.P16469465166664978432

namespace A014730

/-- `record[(lcm(2, A000032(n))/2)²]` -/
def P16469465166664978432.Spec : Prop :=
  ∀ n, P16469465166664978432.a n = (A014730 n : ℚ)

end A014730

/-! ## A014730.P469963276109299232

`record[A000032((n+1)/3^val(n+1, 3))²]`
-/

namespace A014730.P469963276109299232
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (3 ^ SequenceMachineLib.valuation (n + 1) 3 : ℚ))).toNat ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A014730.P469963276109299232

namespace A014730

/-- `record[A000032((n+1)/3^val(n+1, 3))²]` -/
def P469963276109299232.Spec : Prop :=
  ∀ n, P469963276109299232.a n = A014730 n

end A014730

/-! ## A014730.P17888075145034096972

`A254729(A114119(n))²`
-/

namespace A014730.P17888075145034096972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254729 (A114119 n).toNat ^ 2

end

end A014730.P17888075145034096972

namespace A014730

/-- `A254729(A114119(n))²` -/
def P17888075145034096972.Spec : Prop :=
  ∀ n, P17888075145034096972.a n = A014730 n

end A014730

/-! ## A014730.P5913363735551649892

`A001254(A001651(n+1))`
-/

namespace A014730.P5913363735551649892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001254 (A001651 (n + 1)).toNat

end

end A014730.P5913363735551649892

namespace A014730

/-- `A001254(A001651(n+1))` -/
def P5913363735551649892.Spec : Prop :=
  ∀ n, P5913363735551649892.a n = A014730 n

end A014730

/-! ## A014730.P4782747703758577908

`A001638(A047235(n+1))`
-/

namespace A014730.P4782747703758577908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001638 (A047235 (n + 1)).toNat

end

end A014730.P4782747703758577908

namespace A014730

/-- `A001638(A047235(n+1))` -/
def P4782747703758577908.Spec : Prop :=
  ∀ n, P4782747703758577908.a n = A014730 n

end A014730

/-! ## A014730.P7826900881895048625

`A006499(A047238(n+1))`
-/

namespace A014730.P7826900881895048625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006499 (A047238 (n + 1)).toNat

end

end A014730.P7826900881895048625

namespace A014730

/-- `A006499(A047238(n+1))` -/
def P7826900881895048625.Spec : Prop :=
  ∀ n, P7826900881895048625.a n = A014730 n

end A014730

/-! ## A014730.P6222780586671224532

`record[A000032(A004482(n))²]`
-/

namespace A014730.P6222780586671224532
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 (A004482 n).toNat ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A014730.P6222780586671224532

namespace A014730

/-- `record[A000032(A004482(n))²]` -/
def P6222780586671224532.Spec : Prop :=
  ∀ n, P6222780586671224532.a n = A014730 n

end A014730

/-! ## A014730.P8531017867650437029

`A090244(A047264(n+1))²`
-/

namespace A014730.P8531017867650437029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090244 (A047264 (n + 1)).toNat ^ 2

end

end A014730.P8531017867650437029

namespace A014730

/-- `A090244(A047264(n+1))²` -/
def P8531017867650437029.Spec : Prop :=
  ∀ n, P8531017867650437029.a n = A014730 n

end A014730

/-! ## A014730.P3526471938160184527

`A302126(A047270(n+1))²`
-/

namespace A014730.P3526471938160184527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302126 (A047270 (n + 1)).toNat ^ 2

end

end A014730.P3526471938160184527

namespace A014730

/-- `A302126(A047270(n+1))²` -/
def P3526471938160184527.Spec : Prop :=
  ∀ n, P3526471938160184527.a n = A014730 n

end A014730

/-! ## A014730.P2542255613976574678

`A000204(A008619(3*n))²`
-/

namespace A014730.P2542255613976574678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000204 (A008619 (3 * n)).toNat ^ 2

end

end A014730.P2542255613976574678

namespace A014730

/-- `A000204(A008619(3*n))²` -/
def P2542255613976574678.Spec : Prop :=
  ∀ n, P2542255613976574678.a n = A014730 n

end A014730

/-! ## A014730.P8956828931999233381

`A000204(A008619(n)+n)²`
-/

namespace A014730.P8956828931999233381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000204 (A008619 n + (n : ℤ)).toNat ^ 2

end

end A014730.P8956828931999233381

namespace A014730

/-- `A000204(A008619(n)+n)²` -/
def P8956828931999233381.Spec : Prop :=
  ∀ n, P8956828931999233381.a n = A014730 n

end A014730

/-! ## A014730.P11668276053376308015

`record[A000032(A030065(n+1))²]`
-/

namespace A014730.P11668276053376308015
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 (A030065 (n + 1)).toNat ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A014730.P11668276053376308015

namespace A014730

/-- `record[A000032(A030065(n+1))²]` -/
def P11668276053376308015.Spec : Prop :=
  ∀ n, P11668276053376308015.a n = A014730 n

end A014730

/-! ## A014730.P3122711600187155212

`record[A000032(A038502(n+1))²]`
-/

namespace A014730.P3122711600187155212
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 (A038502 (n + 1)).toNat ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A014730.P3122711600187155212

namespace A014730

/-- `record[A000032(A038502(n+1))²]` -/
def P3122711600187155212.Spec : Prop :=
  ∀ n, P3122711600187155212.a n = A014730 n

end A014730

/-! ## A014730.P5410486134005118875

`record[A000032(A051176(n+1))²]`
-/

namespace A014730.P5410486134005118875
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 (A051176 (n + 1)).toNat ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A014730.P5410486134005118875

namespace A014730

/-- `record[A000032(A051176(n+1))²]` -/
def P5410486134005118875.Spec : Prop :=
  ∀ n, P5410486134005118875.a n = A014730 n

end A014730

/-! ## A014730.P6922327759091897231

`record[A000032(A091684(n+1))²]`
-/

namespace A014730.P6922327759091897231
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 (A091684 (n + 1)).toNat ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A014730.P6922327759091897231

namespace A014730

/-- `record[A000032(A091684(n+1))²]` -/
def P6922327759091897231.Spec : Prop :=
  ∀ n, P6922327759091897231.a n = A014730 n

end A014730

/-! ## A014730.P14792474077709919043

`record[A000032(A106610(n+1))²]`
-/

namespace A014730.P14792474077709919043
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 (A106610 (n + 1)).toNat ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A014730.P14792474077709919043

namespace A014730

/-- `record[A000032(A106610(n+1))²]` -/
def P14792474077709919043.Spec : Prop :=
  ∀ n, P14792474077709919043.a n = A014730 n

end A014730

/-! ## A014730.P17135029798189676930

`record[A000032(A143097(n+1))²]`
-/

namespace A014730.P17135029798189676930
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 (A143097 (n + 1)).toNat ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A014730.P17135029798189676930

namespace A014730

/-- `record[A000032(A143097(n+1))²]` -/
def P17135029798189676930.Spec : Prop :=
  ∀ n, P17135029798189676930.a n = A014730 n

end A014730

/-!
# A014731: Squares of even Lucas numbers.

The programs for A014731, the canonical program `A014731.P10936954909110187507` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A014731 has offset 0).

The definition of A014731 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A014731.P10936954909110187507

`17*a(n-1)+17*a(n-2)-a(n-3)` with `a(0)=4, a(1)=16, a(2)=324`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A014731

/-- `17*a(n-1)+17*a(n-2)-a(n-3)` -/
def P10936954909110187507.Spec : Prop :=
  ∀ n, P10936954909110187507.a n = A014731 n

theorem P10936954909110187507.correct : P10936954909110187507.Spec := by
  intro n
  simp only [A014731]

end A014731

/-! ## A014731.P8342968443050087372

`2*(-1)^n+(9+4*sqrt(5))^-n+(9+4*sqrt(5))^n`
-/

namespace A014731.P8342968443050087372
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (2 * (-1) ^ n : ℝ) + (9 + 4 * Real.sqrt (5 : ℝ)) ^ (-(n : ℤ) : ℤ) + (9 + 4 * Real.sqrt (5 : ℝ)) ^ n

end

end A014731.P8342968443050087372

namespace A014731

/-- `2*(-1)^n+(9+4*sqrt(5))^-n+(9+4*sqrt(5))^n` -/
def P8342968443050087372.Spec : Prop :=
  ∀ n, P8342968443050087372.a n = (A014731 n : ℝ)

end A014731

/-! ## A014731.P9153509991917331617

`A014448(n)²`
-/

namespace A014731.P9153509991917331617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014448 n ^ 2

end

end A014731.P9153509991917331617

namespace A014731

/-- `A014448(n)²` -/
def P9153509991917331617.Spec : Prop :=
  ∀ n, P9153509991917331617.a n = A014731 n

end A014731

/-! ## A014731.P11131533808151468221

`round(ϕ^floor(3/acot(n)))²`
-/

namespace A014731.P11131533808151468221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.goldenRatio ^ (⌊3 / SequenceMachineLib.acot (n : ℝ)⌋ : ℤ)) ^ 2

end

end A014731.P11131533808151468221

namespace A014731

/-- `round(ϕ^floor(3/acot(n)))²` -/
def P11131533808151468221.Spec : Prop :=
  ∀ n, P11131533808151468221.a n = A014731 n

end A014731

/-! ## A014731.P12610119040100635185

`A001254(3*n)`
-/

namespace A014731.P12610119040100635185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001254 (3 * n)

end

end A014731.P12610119040100635185

namespace A014731

/-- `A001254(3*n)` -/
def P12610119040100635185.Spec : Prop :=
  ∀ n, P12610119040100635185.a n = A014731 n

end A014731

/-! ## A014731.P7065232584692332758

`A001638(6*n)`
-/

namespace A014731.P7065232584692332758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001638 (6 * n)

end

end A014731.P7065232584692332758

namespace A014731

/-- `A001638(6*n)` -/
def P7065232584692332758.Spec : Prop :=
  ∀ n, P7065232584692332758.a n = A014731 n

end A014731

/-! ## A014731.P12058390629528495277

`(A100233(n)+1)²`
-/

namespace A014731.P12058390629528495277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A100233 n + 1) ^ 2

end

end A014731.P12058390629528495277

namespace A014731

/-- `(A100233(n)+1)²` -/
def P12058390629528495277.Spec : Prop :=
  ∀ n, P12058390629528495277.a n = A014731 n

end A014731

/-! ## A014731.P3047247188702144581

`(2*A001077(n))²`
-/

namespace A014731.P3047247188702144581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * A001077 n) ^ 2

end

end A014731.P3047247188702144581

namespace A014731

/-- `(2*A001077(n))²` -/
def P3047247188702144581.Spec : Prop :=
  ∀ n, P3047247188702144581.a n = A014731 n

end A014731

/-! ## A014731.P7513735034543035892

`A000032(3*n)²`
-/

namespace A014731.P7513735034543035892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 (3 * n) ^ 2

end

end A014731.P7513735034543035892

namespace A014731

/-- `A000032(3*n)²` -/
def P7513735034543035892.Spec : Prop :=
  ∀ n, P7513735034543035892.a n = A014731 n

end A014731

/-! ## A014731.P2273728669873487731

`record[(A174506(n)+1)²]`
-/

namespace A014731.P2273728669873487731
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A174506 n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A014731.P2273728669873487731

namespace A014731

/-- `record[(A174506(n)+1)²]` -/
def P2273728669873487731.Spec : Prop :=
  ∀ n, P2273728669873487731.a n = A014731 n

end A014731

/-!
# A014732: Squares of numbers in triangle of Eulerian numbers that are not 1.

The programs for A014732, there is no canonical definition to state claims against.
-/

/-! ## A014732.P7709679231101198463

`A014449(n+1)²`
-/

namespace A014732.P7709679231101198463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014449 (n + 1) ^ 2

end

end A014732.P7709679231101198463

/-! ## A014732.P8222359931828337983

`A008292(lt[1, A179454(n)])²`
-/

namespace A014732.P8222359931828337983
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179454 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008292 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n) ^ 2

end

end A014732.P8222359931828337983

/-! ## A014732.P7925011781498483237

`A123125(lt[1, A122935(n)])²`
-/

namespace A014732.P7925011781498483237
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122935 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123125 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n) ^ 2

end

end A014732.P7925011781498483237

/-! ## A014732.P5161416397189161251

`A123125(lt[1, A123125(n)])²`
-/

namespace A014732.P5161416397189161251
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123125 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123125 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n) ^ 2

end

end A014732.P5161416397189161251

/-! ## A014732.P10317047469145130170

`A173018(lt[1, A173018(n)])²`
-/

namespace A014732.P10317047469145130170
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173018 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173018 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n) ^ 2

end

end A014732.P10317047469145130170

/-! ## A014732.P11050763604244966529

`A008292(lt[2, A059268(n)])²`
-/

namespace A014732.P11050763604244966529
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059268 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008292 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n) ^ 2

end

end A014732.P11050763604244966529

/-! ## A014732.P1556637565240002504

`A014449(n+1)^A020639(2*(n+1))`
-/

namespace A014732.P1556637565240002504
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A014449 (n + 1) : ℚ) ^ (A020639 (2 * (n + 1)) : ℤ)

end

end A014732.P1556637565240002504

/-! ## A014732.P4347673298987825236

`A014449(n+1)^A014963(3-(-1)^n)`
-/

namespace A014732.P4347673298987825236
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A014449 (n + 1) : ℚ) ^ (A014963 (3 - (-1) ^ n).toNat : ℤ)

end

end A014732.P4347673298987825236

/-! ## A014732.P2111501052525849747

`A008292(lt[A056857(n+1), A033306(n)])²`
-/

namespace A014732.P2111501052525849747
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056857 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033306 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008292 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n) ^ 2

end

end A014732.P2111501052525849747

/-! ## A014732.P1964923596143300595

`A014449(n+1)*A014449(A061579(n)+1)`
-/

namespace A014732.P1964923596143300595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014449 (n + 1) * A014449 (A061579 n + 1).toNat

end

end A014732.P1964923596143300595

/-! ## A014732.P6130046230560525780

`A014449(n+1)^A000005(A014442(n+1))`
-/

namespace A014732.P6130046230560525780
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A014449 (n + 1) : ℚ) ^ (A000005 (A014442 (n + 1)).toNat : ℤ)

end

end A014732.P6130046230560525780

/-! ## A014732.P11067447016571845055

`A008292(lt[2, A008305(n+1)])²`
-/

namespace A014732.P11067447016571845055
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008305 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008292 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n) ^ 2

end

end A014732.P11067447016571845055

/-!
# A014733: Squares of even numbers in triangle of Eulerian numbers.

The programs for A014733, there is no canonical definition to state claims against.
-/

/-! ## A014733.P14996875845063408463

`A014450(n+1)²`
-/

namespace A014733.P14996875845063408463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014450 (n + 1) ^ 2

end

end A014733.P14996875845063408463

/-! ## A014733.P6665564650087267596

`4*A051476(n)`
-/

namespace A014733.P6665564650087267596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A051476 n

end

end A014733.P6665564650087267596

/-! ## A014733.P18036551125327506612

`(2*A051474(n))²`
-/

namespace A014733.P18036551125327506612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * A051474 n) ^ 2

end

end A014733.P18036551125327506612

/-! ## A014733.P12236135942644041082

`A008292(A268232(n+1)+1)²`
-/

namespace A014733.P12236135942644041082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008292 (A268232 (n + 1) + 1).toNat ^ 2

end

end A014733.P12236135942644041082

/-! ## A014733.P4523840861474993619

`A008292(comp[A268231(n+1)]+1)²`
-/

namespace A014733.P4523840861474993619
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268231 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008292 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1) ^ 2

end

end A014733.P4523840861474993619

/-! ## A014733.P8049503292100939470

`A014450(n+1)^A020639(2*(n+1))`
-/

namespace A014733.P8049503292100939470
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A014450 (n + 1) : ℚ) ^ (A020639 (2 * (n + 1)) : ℤ)

end

end A014733.P8049503292100939470

/-! ## A014733.P17433188401468430578

`A014450(n+1)^A001316(A001316(n))`
-/

namespace A014733.P17433188401468430578
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A014450 (n + 1) : ℚ) ^ (A001316 (A001316 n).toNat : ℤ)

end

end A014733.P17433188401468430578

/-! ## A014733.P17769661553277805647

`(A051474(n)+A051476(n)/A051474(n))²`
-/

namespace A014733.P17769661553277805647
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A051474 n : ℚ) + (A051476 n : ℚ) / (A051474 n : ℚ)) ^ 2

end

end A014733.P17769661553277805647

/-! ## A014733.P11668033787779974912

`A014450(n+1)^A000005(A014442(n+1))`
-/

namespace A014733.P11668033787779974912
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A014450 (n + 1) : ℚ) ^ (A000005 (A014442 (n + 1)).toNat : ℤ)

end

end A014733.P11668033787779974912

/-!
# A014734: Squares of odd numbers in triangle of Eulerian numbers.

The programs for A014734, there is no canonical definition to state claims against.
-/

/-! ## A014734.P18424674520400166600

`A014459(n+1)²`
-/

namespace A014734.P18424674520400166600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014459 (n + 1) ^ 2

end

end A014734.P18424674520400166600

/-! ## A014734.P2686000838450919537

`A008292(A268231(n+1)+1)²`
-/

namespace A014734.P2686000838450919537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008292 (A268231 (n + 1) + 1).toNat ^ 2

end

end A014734.P2686000838450919537

/-! ## A014734.P12925564053619958862

`A014459(n+1)^A020639(2*(n+1))`
-/

namespace A014734.P12925564053619958862
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A014459 (n + 1) : ℚ) ^ (A020639 (2 * (n + 1)) : ℤ)

end

end A014734.P12925564053619958862

/-! ## A014734.P15968145229909775905

`A014459(n+1)^A014963(A001316(n))`
-/

namespace A014734.P15968145229909775905
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A014459 (n + 1) : ℚ) ^ (A014963 (A001316 n).toNat : ℤ)

end

end A014734.P15968145229909775905

/-! ## A014734.P17711838926457134833

`A014459(n+1)^A001222(A001358(n+1))`
-/

namespace A014734.P17711838926457134833
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A014459 (n + 1) : ℚ) ^ (A001222 (A001358 (n + 1)).toNat : ℤ)

end

end A014734.P17711838926457134833

/-! ## A014734.P3080266573885587264

`A014459(n+1)^A000040(A014963(∑[n+1]))`
-/

namespace A014734.P3080266573885587264
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A014459 (n + 1) : ℚ) ^ (A000040 (A014963 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat : ℤ)

end

end A014734.P3080266573885587264

/-! ## A014734.P7139436813065813787

`A014459(n+1)^A000005(A002148(n))`
-/

namespace A014734.P7139436813065813787
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A014459 (n + 1) : ℚ) ^ (A000005 (A002148 n).toNat : ℤ)

end

end A014734.P7139436813065813787

/-!
# A014735: Squares of odd numbers in triangle of Eulerian numbers that are not 1.

The programs for A014735, there is no canonical definition to state claims against.
-/

/-! ## A014735.P2878794583540412204

`A014461(n+1)²`
-/

namespace A014735.P2878794583540412204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014461 (n + 1) ^ 2

end

end A014735.P2878794583540412204

/-! ## A014735.P838316254488515567

`A014461(n+1)^A000034(2*n+1)`
-/

namespace A014735.P838316254488515567
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A014461 (n + 1) : ℚ) ^ (A000034 (2 * n + 1) : ℤ)

end

end A014735.P838316254488515567

/-! ## A014735.P15573143829679339007

`A014461(n+1)^A020639(2*(n+1))`
-/

namespace A014735.P15573143829679339007
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A014461 (n + 1) : ℚ) ^ (A020639 (2 * (n + 1)) : ℤ)

end

end A014735.P15573143829679339007

/-! ## A014735.P14246060102056682312

`A014461(n+1)^A001222(A001358(n+1))`
-/

namespace A014735.P14246060102056682312
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A014461 (n + 1) : ℚ) ^ (A001222 (A001358 (n + 1)).toNat : ℤ)

end

end A014735.P14246060102056682312

/-! ## A014735.P8503356983083530456

`A014461(n+1)^A000005(A014442(n+1))`
-/

namespace A014735.P8503356983083530456
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A014461 (n + 1) : ℚ) ^ (A000005 (A014442 (n + 1)).toNat : ℤ)

end

end A014735.P8503356983083530456

/-!
# A014736: Squares of odd triangular numbers.

The programs for A014736, the canonical program `A014736.P16265389494604714146` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A014736 has offset 0).

The definition of A014736 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A014736.P16265389494604714146

`A014493(n+1)²`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A014736

/-- `A014493(n+1)²` -/
def P16265389494604714146.Spec : Prop :=
  ∀ n, P16265389494604714146.a n = A014736 n

theorem P16265389494604714146.correct : P16265389494604714146.Spec := by
  intro n
  simp only [A014736]

end A014736

/-! ## A014736.P1836319605635624893

`record[C(or(2, n), 2)²]`
-/

namespace A014736.P1836319605635624893
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (Nat.lor 2 n) 2 ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A014736.P1836319605635624893

namespace A014736

/-- `record[C(or(2, n), 2)²]` -/
def P1836319605635624893.Spec : Prop :=
  ∀ n, (P1836319605635624893.a n : ℤ) = A014736 n

end A014736

/-! ## A014736.P11631547270420026714

`(or(1, n)*Δ[n²])²`
-/

namespace A014736.P11631547270420026714
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((Nat.lor 1 n : ℤ) * ((f1 (n + 1) : ℤ) - (f1 n : ℤ))) ^ 2

end

end A014736.P11631547270420026714

namespace A014736

/-- `(or(1, n)*Δ[n²])²` -/
def P11631547270420026714.Spec : Prop :=
  ∀ n, P11631547270420026714.a n = A014736 n

end A014736

/-! ## A014736.P13150359252504818403

`((2*n+1)*or(1, n))²`
-/

namespace A014736.P13150359252504818403
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((2 * n + 1) * Nat.lor 1 n) ^ 2

end

end A014736.P13150359252504818403

namespace A014736

/-- `((2*n+1)*or(1, n))²` -/
def P13150359252504818403.Spec : Prop :=
  ∀ n, (P13150359252504818403.a n : ℤ) = A014736 n

end A014736

/-! ## A014736.P2187065883484294527

`C(gcd(2, n)+2*n, 2)²`
-/

namespace A014736.P2187065883484294527
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (Nat.gcd 2 n + 2 * n) 2 ^ 2

end

end A014736.P2187065883484294527

namespace A014736

/-- `C(gcd(2, n)+2*n, 2)²` -/
def P2187065883484294527.Spec : Prop :=
  ∀ n, (P2187065883484294527.a n : ℤ) = A014736 n

end A014736

/-! ## A014736.P7056298968938896360

`C(or(1, n)+1+n, 2)²`
-/

namespace A014736.P7056298968938896360
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (Nat.lor 1 n + 1 + n) 2 ^ 2

end

end A014736.P7056298968938896360

namespace A014736

/-- `C(or(1, n)+1+n, 2)²` -/
def P7056298968938896360.Spec : Prop :=
  ∀ n, (P7056298968938896360.a n : ℤ) = A014736 n

end A014736

/-! ## A014736.P1368748208966822735

`or(1, n*or(3, 2*n))²`
-/

namespace A014736.P1368748208966822735
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (n * Nat.lor 3 (2 * n)) ^ 2

end

end A014736.P1368748208966822735

namespace A014736

/-- `or(1, n*or(3, 2*n))²` -/
def P1368748208966822735.Spec : Prop :=
  ∀ n, (P1368748208966822735.a n : ℤ) = A014736 n

end A014736

/-! ## A014736.P354594531523513056

`lcm(n+1+n, or(1, n))²`
-/

namespace A014736.P354594531523513056
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm (n + 1 + n) (Nat.lor 1 n) ^ 2

end

end A014736.P354594531523513056

namespace A014736

/-- `lcm(n+1+n, or(1, n))²` -/
def P354594531523513056.Spec : Prop :=
  ∀ n, (P354594531523513056.a n : ℤ) = A014736 n

end A014736

/-! ## A014736.P16303684769147144280

`C(eq[n-2, and(n, n-2)], 2)²`
-/

namespace A014736.P16303684769147144280
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) ((n : ℤ) - 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (SequenceMachineLib.nth (fun j => f1 j = f2 j) n) 2 ^ 2

end

end A014736.P16303684769147144280

namespace A014736

/-- `C(eq[n-2, and(n, n-2)], 2)²` -/
def P16303684769147144280.Spec : Prop :=
  ∀ n, (P16303684769147144280.a n : ℤ) = A014736 n

end A014736

/-! ## A014736.P18068740654452598745

`((2*n+1)*(1-Δ[lcm(2, n)]))²`
-/

namespace A014736.P18068740654452598745
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((2 * n + 1 : ℤ) * (1 - ((f1 (n + 1) : ℤ) - (f1 n : ℤ)))) ^ 2

end

end A014736.P18068740654452598745

namespace A014736

/-- `((2*n+1)*(1-Δ[lcm(2, n)]))²` -/
def P18068740654452598745.Spec : Prop :=
  ∀ n, P18068740654452598745.a n = A014736 n

end A014736

/-! ## A014736.P4172531151431251747

`((2*n+1)*Δ[n*and(1, n)])²`
-/

namespace A014736.P4172531151431251747
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * Nat.land 1 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((2 * n + 1 : ℤ) * ((f1 (n + 1) : ℤ) - (f1 n : ℤ))) ^ 2

end

end A014736.P4172531151431251747

namespace A014736

/-- `((2*n+1)*Δ[n*and(1, n)])²` -/
def P4172531151431251747.Spec : Prop :=
  ∀ n, P4172531151431251747.a n = A014736 n

end A014736

/-! ## A014736.P16014993822037930618

`((2*n+1)*(∑[(-1)^n]+n))²`
-/

namespace A014736.P16014993822037930618
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((2 * n + 1 : ℤ) * (∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ))) ^ 2

end

end A014736.P16014993822037930618

namespace A014736

/-- `((2*n+1)*(∑[(-1)^n]+n))²` -/
def P16014993822037930618.Spec : Prop :=
  ∀ n, P16014993822037930618.a n = A014736 n

end A014736

/-! ## A014736.P475110265970353992

`or(1, n)²*A016754(n)`
-/

namespace A014736.P475110265970353992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.lor 1 n ^ 2 : ℤ) * A016754 n

end

end A014736.P475110265970353992

namespace A014736

/-- `or(1, n)²*A016754(n)` -/
def P475110265970353992.Spec : Prop :=
  ∀ n, P475110265970353992.a n = A014736 n

end A014736

/-! ## A014736.P12112659910817190841

`A109613(n)²*A016754(n)`
-/

namespace A014736.P12112659910817190841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109613 n ^ 2 * A016754 n

end

end A014736.P12112659910817190841

namespace A014736

/-- `A109613(n)²*A016754(n)` -/
def P12112659910817190841.Spec : Prop :=
  ∀ n, P12112659910817190841.a n = A014736 n

end A014736

/-! ## A014736.P1789861615486526728

`A016754(A004526(n))*A016754(n)`
-/

namespace A014736.P1789861615486526728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016754 (A004526 n).toNat * A016754 n

end

end A014736.P1789861615486526728

namespace A014736

/-- `A016754(A004526(n))*A016754(n)` -/
def P1789861615486526728.Spec : Prop :=
  ∀ n, P1789861615486526728.a n = A014736 n

end A014736

/-! ## A014736.P3809555016861063774

`record[Δ[A051176(n)²]²]`
-/

namespace A014736.P3809555016861063774
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051176 n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) - f2 n) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A014736.P3809555016861063774

namespace A014736

/-- `record[Δ[A051176(n)²]²]` -/
def P3809555016861063774.Spec : Prop :=
  ∀ n, P3809555016861063774.a n = A014736 n

end A014736

/-! ## A014736.P10783424305153892659

`record[∑[n]^and(2, n+1)]`
-/

namespace A014736.P10783424305153892659
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f2 j) ^ Nat.land 2 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A014736.P10783424305153892659

namespace A014736

/-- `record[∑[n]^and(2, n+1)]` -/
def P10783424305153892659.Spec : Prop :=
  ∀ n, (P10783424305153892659.a n : ℤ) = A014736 n

end A014736

/-! ## A014736.P6279265094930330082

`A000537(or(1, n)+n)`
-/

namespace A014736.P6279265094930330082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000537 (Nat.lor 1 n + n)

end

end A014736.P6279265094930330082

namespace A014736

/-- `A000537(or(1, n)+n)` -/
def P6279265094930330082.Spec : Prop :=
  ∀ n, P6279265094930330082.a n = A014736 n

end A014736

/-! ## A014736.P8734721187520851488

`A000537(A042963(n+1))`
-/

namespace A014736.P8734721187520851488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000537 (A042963 (n + 1)).toNat

end

end A014736.P8734721187520851488

namespace A014736

/-- `A000537(A042963(n+1))` -/
def P8734721187520851488.Spec : Prop :=
  ∀ n, P8734721187520851488.a n = A014736 n

end A014736

/-! ## A014736.P8174817700215763351

`A000537(A116966(2*n))`
-/

namespace A014736.P8174817700215763351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000537 (A116966 (2 * n)).toNat

end

end A014736.P8174817700215763351

namespace A014736

/-- `A000537(A116966(2*n))` -/
def P8174817700215763351.Spec : Prop :=
  ∀ n, P8174817700215763351.a n = A014736 n

end A014736

/-!
# A014737: Inverse of 728th cyclotomic polynomial.

The programs for A014737, there is no canonical definition to state claims against.
-/

/-! ## A014737.P15017880226836269585

`A014373(n/gcd(2, n))`
-/

namespace A014737.P15017880226836269585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014373 (SequenceMachineLib.roundAway ((n : ℚ) / (Nat.gcd 2 n : ℚ))).toNat

end

end A014737.P15017880226836269585

/-!
# A014738: Squares of even triangular numbers.

The programs for A014738, the canonical program `A014738.P8106903443389737204` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A014738 has offset 0).

The definition of A014738 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A014738.P8106903443389737204

`A014494(n+1)²`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A014738

/-- `A014494(n+1)²` -/
def P8106903443389737204.Spec : Prop :=
  ∀ n, P8106903443389737204.a n = A014738 n

theorem P8106903443389737204.correct : P8106903443389737204.Spec := by
  intro n
  simp only [A014738]

end A014738

/-! ## A014738.P4802516582879021561

`C(or(1, n)+n+3, 2)²`
-/

namespace A014738.P4802516582879021561
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (Nat.lor 1 n + (n + 3)) 2 ^ 2

end

end A014738.P4802516582879021561

namespace A014738

/-- `C(or(1, n)+n+3, 2)²` -/
def P4802516582879021561.Spec : Prop :=
  ∀ n, (P4802516582879021561.a n : ℤ) = A014738 n

end A014738

/-! ## A014738.P13139165880617427010

`∑[lcm(2, lcm(2, n+1)+n+1)]²`
-/

namespace A014738.P13139165880617427010
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 2 (Nat.lcm 2 (n + 1) + (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2

end

end A014738.P13139165880617427010

namespace A014738

/-- `∑[lcm(2, lcm(2, n+1)+n+1)]²` -/
def P13139165880617427010.Spec : Prop :=
  ∀ n, (P13139165880617427010.a n : ℤ) = A014738 n

end A014738

/-! ## A014738.P9316612536837014370

`4*∑[(n+1)*gcd(3, n%2)]²`
-/

namespace A014738.P9316612536837014370
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) * Nat.gcd 3 (n % 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2

end

end A014738.P9316612536837014370

namespace A014738

/-- `4*∑[(n+1)*gcd(3, n%2)]²` -/
def P9316612536837014370.Spec : Prop :=
  ∀ n, (P9316612536837014370.a n : ℤ) = A014738 n

end A014738

/-! ## A014738.P4349591238947443749

`∑[2*(n+1)*((-1)^n+2)]²`
-/

namespace A014738.P4349591238947443749
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * ((n + 1 : ℤ) * ((-1) ^ n + 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2

end

end A014738.P4349591238947443749

namespace A014738

/-- `∑[2*(n+1)*((-1)^n+2)]²` -/
def P4349591238947443749.Spec : Prop :=
  ∀ n, P4349591238947443749.a n = A014738 n

end A014738

/-! ## A014738.P5766498279580900896

`4*A051515(n+1)`
-/

namespace A014738.P5766498279580900896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A051515 (n + 1)

end

end A014738.P5766498279580900896

namespace A014738

/-- `4*A051515(n+1)` -/
def P5766498279580900896.Spec : Prop :=
  ∀ n, P5766498279580900896.a n = A014738 n

end A014738

/-! ## A014738.P11027661880004838322

`(A352115(n+1)-A352115(n))*A014494(n+1)`
-/

namespace A014738.P11027661880004838322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A352115 (n + 1) - A352115 n) * A014494 (n + 1)

end

end A014738.P11027661880004838322

namespace A014738

/-- `(A352115(n+1)-A352115(n))*A014494(n+1)` -/
def P11027661880004838322.Spec : Prop :=
  ∀ n, P11027661880004838322.a n = A014738 n

end A014738

/-! ## A014738.P12770985861046944967

`A014494(n+1)*A193867(n+2)-A014494(n+1)`
-/

namespace A014738.P12770985861046944967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014494 (n + 1) * A193867 (n + 2) - A014494 (n + 1)

end

end A014738.P12770985861046944967

namespace A014738

/-- `A014494(n+1)*A193867(n+2)-A014494(n+1)` -/
def P12770985861046944967.Spec : Prop :=
  ∀ n, P12770985861046944967.a n = A014738 n

theorem P12770985861046944967.correct : P12770985861046944967.Spec := by
  intro n
  simp only [A014738, Nat.add_sub_cancel, A014738.P12770985861046944967.a, A014738.P8106903443389737204.a, A014494, A014494.P4970245120649333827.a, A193867, A193867.P15975463476327367108.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A014738

/-! ## A014738.P17370266781230832822

`(A219257(n+2)+A036666(n+2))*A074378(n+1)`
-/

namespace A014738.P17370266781230832822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A219257 (n + 2) + A036666 (n + 2)) * A074378 (n + 1)

end

end A014738.P17370266781230832822

namespace A014738

/-- `(A219257(n+2)+A036666(n+2))*A074378(n+1)` -/
def P17370266781230832822.Spec : Prop :=
  ∀ n, P17370266781230832822.a n = A014738 n

end A014738

/-! ## A014738.P10917855495079137089

`A250813(A042963(n+1))`
-/

namespace A014738.P10917855495079137089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250813 (A042963 (n + 1)).toNat

end

end A014738.P10917855495079137089

namespace A014738

/-- `A250813(A042963(n+1))` -/
def P10917855495079137089.Spec : Prop :=
  ∀ n, P10917855495079137089.a n = A014738 n

end A014738

/-! ## A014738.P17942774456390079141

`A000537(A014601(n+1))`
-/

namespace A014738.P17942774456390079141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000537 (A014601 (n + 1)).toNat

end

end A014738.P17942774456390079141

namespace A014738

/-- `A000537(A014601(n+1))` -/
def P17942774456390079141.Spec : Prop :=
  ∀ n, P17942774456390079141.a n = A014738 n

end A014738

/-! ## A014738.P6642557624098059513

`A000537(A154708(n+1))`
-/

namespace A014738.P6642557624098059513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000537 (A154708 (n + 1)).toNat

end

end A014738.P6642557624098059513

namespace A014738

/-- `A000537(A154708(n+1))` -/
def P6642557624098059513.Spec : Prop :=
  ∀ n, P6642557624098059513.a n = A014738 n

end A014738

/-! ## A014738.P16451010834908431200

`A000537(A042963(n+1)+2)`
-/

namespace A014738.P16451010834908431200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000537 (A042963 (n + 1) + 2).toNat

end

end A014738.P16451010834908431200

namespace A014738

/-- `A000537(A042963(n+1)+2)` -/
def P16451010834908431200.Spec : Prop :=
  ∀ n, P16451010834908431200.a n = A014738 n

end A014738

/-! ## A014738.P12230039217886404987

`A000537(A116966(2*n+1))`
-/

namespace A014738.P12230039217886404987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000537 (A116966 (2 * n + 1)).toNat

end

end A014738.P12230039217886404987

namespace A014738

/-- `A000537(A116966(2*n+1))` -/
def P12230039217886404987.Spec : Prop :=
  ∀ n, P12230039217886404987.a n = A014738 n

end A014738

/-! ## A014738.P13162403169883517413

`A000537(A014695(2*n+1)+2*n+1)`
-/

namespace A014738.P13162403169883517413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000537 (A014695 (2 * n + 1) + (2 * n + 1 : ℤ)).toNat

end

end A014738.P13162403169883517413

namespace A014738

/-- `A000537(A014695(2*n+1)+2*n+1)` -/
def P13162403169883517413.Spec : Prop :=
  ∀ n, P13162403169883517413.a n = A014738 n

end A014738

/-! ## A014738.P12705720772176689393

`A059403(A047522(n+2))`
-/

namespace A014738.P12705720772176689393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059403 (A047522 (n + 2)).toNat

end

end A014738.P12705720772176689393

namespace A014738

/-- `A059403(A047522(n+2))` -/
def P12705720772176689393.Spec : Prop :=
  ∀ n, P12705720772176689393.a n = A014738 n

end A014738

/-! ## A014738.P9347403200680525476

`∩[2*n, ∑[n+1]]^2`
-/

namespace A014738.P9347403200680525476
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = x) n ^ 2

end

end A014738.P9347403200680525476

namespace A014738

/-- `∩[2*n, ∑[n+1]]^2` -/
def P9347403200680525476.Spec : Prop :=
  ∀ n, (P9347403200680525476.a n : ℤ) = A014738 n

end A014738

/-! ## A014738.P14264132346621682026

`∩[(2*(n+1))², ∑[n]²]`
-/

namespace A014738.P14264132346621682026
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (2 * (n + 1)) ^ 2

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f3 j) ^ 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = x) n

end

end A014738.P14264132346621682026

namespace A014738

/-- `∩[(2*(n+1))², ∑[n]²]` -/
def P14264132346621682026.Spec : Prop :=
  ∀ n, (P14264132346621682026.a n : ℤ) = A014738 n

end A014738

/-!
# A014739: Expansion of (1+x^2)/(1-2*x+x^3).

The programs for A014739, the canonical program `A014739.P6366722670631811608` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A014739 has offset 0).

The definition of A014739 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1+x^2)/(1-2x+x^3))` (program `A014739.P6366722670631811608`, by `A014739.P6366722670631811608.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A014739.P6366722670631811608

`ogf((1+x^2)/(1-2x+x^3))`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A014739

/-- `ogf((1+x^2)/(1-2x+x^3))` -/
def P6366722670631811608.Spec : Prop :=
  ∀ n, P6366722670631811608.a n = A014739 n

theorem P6366722670631811608.correct : P6366722670631811608.Spec := by
  intro n
  simp only [A014739]

end A014739

/-! ## A014739.P2931835097315206784

`2*a(n-1)-a(n-3)` with `a(0)=1, a(1)=2, a(2)=5`
-/

namespace A014739.P2931835097315206784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 5] fun n a =>
  2 * a (n - 1) - a (n - 3)

end

end A014739.P2931835097315206784

namespace A014739

/-- `2*a(n-1)-a(n-3)` -/
def P2931835097315206784.Spec : Prop :=
  ∀ n, P2931835097315206784.a n = A014739 n

end A014739

/-! ## A014739.P13665993415161185196

`A001610(n+1)-1`
-/

namespace A014739.P13665993415161185196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001610 (n + 1) - 1

end

end A014739.P13665993415161185196

namespace A014739

/-- `A001610(n+1)-1` -/
def P13665993415161185196.Spec : Prop :=
  ∀ n, P13665993415161185196.a n = A014739 n

end A014739

/-! ## A014739.P5270029023703806218

`A000032(n+2)-2`
-/

namespace A014739.P5270029023703806218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 (n + 2) - 2

end

end A014739.P5270029023703806218

namespace A014739

/-- `A000032(n+2)-2` -/
def P5270029023703806218.Spec : Prop :=
  ∀ n, P5270029023703806218.a n = A014739 n

end A014739

/-! ## A014739.P1191329412032723857

`A000071(n+1)+A000071(n+3)`
-/

namespace A014739.P1191329412032723857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000071 (n + 1) + A000071 (n + 3)

end

end A014739.P1191329412032723857

namespace A014739

/-- `A000071(n+1)+A000071(n+3)` -/
def P1191329412032723857.Spec : Prop :=
  ∀ n, P1191329412032723857.a n = A014739 n

end A014739

/-! ## A014739.P17542324157737587025

`floor(∑[ϕ^n])`
-/

namespace A014739.P17542324157737587025
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.goldenRatio ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊∑ j ∈ Finset.range (n + 1), f1 j⌋

end

end A014739.P17542324157737587025

namespace A014739

/-- `floor(∑[ϕ^n])` -/
def P17542324157737587025.Spec : Prop :=
  ∀ n, P17542324157737587025.a n = A014739 n

end A014739

/-! ## A014739.P16718041165633176916

`ceil(ϕ^(n+2)-sinh(ϕ))`
-/

namespace A014739.P16718041165633176916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.goldenRatio ^ (n + 2) - Real.sinh Real.goldenRatio⌉

end

end A014739.P16718041165633176916

namespace A014739

/-- `ceil(ϕ^(n+2)-sinh(ϕ))` -/
def P16718041165633176916.Spec : Prop :=
  ∀ n, P16718041165633176916.a n = A014739 n

end A014739

/-! ## A014739.P177812182859539128

`round(a(n-1)+ϕ^n)` with `a(0)=1, a(1)=2`
-/

namespace A014739.P177812182859539128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  SequenceMachineLib.roundAway ((a (n - 1) : ℝ) + Real.goldenRatio ^ n)

end

end A014739.P177812182859539128

namespace A014739

/-- `round(a(n-1)+ϕ^n)` -/
def P177812182859539128.Spec : Prop :=
  ∀ n, P177812182859539128.a n = A014739 n

end A014739

/-! ## A014739.P16513183064858649876

`round(ϕ^(n+2)-gcd(2, 2*n))`
-/

namespace A014739.P16513183064858649876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.goldenRatio ^ (n + 2) - (Nat.gcd 2 (2 * n) : ℝ))

end

end A014739.P16513183064858649876

namespace A014739

/-- `round(ϕ^(n+2)-gcd(2, 2*n))` -/
def P16513183064858649876.Spec : Prop :=
  ∀ n, P16513183064858649876.a n = A014739 n

end A014739

/-! ## A014739.P12891435028326577747

`round(ϕ^C(n+2, n+1))-2`
-/

namespace A014739.P12891435028326577747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.goldenRatio ^ Nat.choose (n + 2) (n + 1)) - 2

end

end A014739.P12891435028326577747

namespace A014739

/-- `round(ϕ^C(n+2, n+1))-2` -/
def P12891435028326577747.Spec : Prop :=
  ∀ n, P12891435028326577747.a n = A014739 n

end A014739

/-! ## A014739.P17738125819861290316

`2+a(n-1)+a(n-2)` with `a(0)=1, a(1)=2`
-/

namespace A014739.P17738125819861290316
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2] fun n a =>
  2 + (a (n - 1) + a (n - 2))

end

end A014739.P17738125819861290316

namespace A014739

/-- `2+a(n-1)+a(n-2)` -/
def P17738125819861290316.Spec : Prop :=
  ∀ n, (P17738125819861290316.a n : ℤ) = A014739 n

end A014739

/-! ## A014739.P784012618306455841

`3-floor(1-a(n-1)-a(n-2))` with `a(0)=1, a(1)=2`

`floor` is left out, it is the identity on integers.
-/

namespace A014739.P784012618306455841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  3 - (1 - a (n - 1) - a (n - 2))

end

end A014739.P784012618306455841

namespace A014739

/-- `3-floor(1-a(n-1)-a(n-2))` -/
def P784012618306455841.Spec : Prop :=
  ∀ n, P784012618306455841.a n = A014739 n

end A014739

/-! ## A014739.P4525716221993872262

`n-∑[a(n-1)-(1-a(n-2))]` with `a(0)=-1, a(1)=0`
-/

namespace A014739.P4525716221993872262
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [-1, 0] fun n f1 =>
  f1 (n - 1) - (1 - f1 (n - 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A014739.P4525716221993872262

namespace A014739

/-- `n-∑[a(n-1)-(1-a(n-2))]` -/
def P4525716221993872262.Spec : Prop :=
  ∀ n, P4525716221993872262.a n = A014739 n

end A014739

/-! ## A014739.P7568973861382847456

`4-(4/2-a(n-1)-a(n-2))` with `a(0)=1, a(1)=2`
-/

namespace A014739.P7568973861382847456
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 2] fun n a =>
  4 - ((4 : ℚ) / 2 - a (n - 1) - a (n - 2))

end

end A014739.P7568973861382847456

namespace A014739

/-- `4-(4/2-a(n-1)-a(n-2))` -/
def P7568973861382847456.Spec : Prop :=
  ∀ n, P7568973861382847456.a n = (A014739 n : ℚ)

end A014739

/-! ## A014739.P11454287614067947338

`3-((1-a(n-1))%a(n-1)-a(n-2))` with `a(0)=1, a(1)=2`
-/

namespace A014739.P11454287614067947338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  3 - (Int.tmod (1 - a (n - 1)) (a (n - 1)) - a (n - 2))

end

end A014739.P11454287614067947338

namespace A014739

/-- `3-((1-a(n-1))%a(n-1)-a(n-2))` -/
def P11454287614067947338.Spec : Prop :=
  ∀ n, P11454287614067947338.a n = A014739 n

end A014739

/-! ## A014739.P7332512902070462961

`∑[A000032(n)]-1`
-/

namespace A014739.P7332512902070462961
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A014739.P7332512902070462961

namespace A014739

/-- `∑[A000032(n)]-1` -/
def P7332512902070462961.Spec : Prop :=
  ∀ n, P7332512902070462961.a n = A014739 n

end A014739

/-! ## A014739.P10532368090610660000

`A324015(n+2)-1`
-/

namespace A014739.P10532368090610660000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324015 (n + 2) - 1

end

end A014739.P10532368090610660000

namespace A014739

/-- `A324015(n+2)-1` -/
def P10532368090610660000.Spec : Prop :=
  ∀ n, P10532368090610660000.a n = A014739 n

end A014739

/-! ## A014739.P18283440437823068437

`A000204(n+2)-2`
-/

namespace A014739.P18283440437823068437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000204 (n + 2) - 2

end

end A014739.P18283440437823068437

namespace A014739

/-- `A000204(n+2)-2` -/
def P18283440437823068437.Spec : Prop :=
  ∀ n, P18283440437823068437.a n = A014739 n

end A014739

/-! ## A014739.P14885044628218195271

`A080023(n+2)-2`
-/

namespace A014739.P14885044628218195271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080023 (n + 2) - 2

end

end A014739.P14885044628218195271

namespace A014739

/-- `A080023(n+2)-2` -/
def P14885044628218195271.Spec : Prop :=
  ∀ n, P14885044628218195271.a n = A014739 n

end A014739

/-! ## A014739.P10840799781815710492

`A169985(n+2)-2`
-/

namespace A014739.P10840799781815710492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169985 (n + 2) - 2

end

end A014739.P10840799781815710492

namespace A014739

/-- `A169985(n+2)-2` -/
def P10840799781815710492.Spec : Prop :=
  ∀ n, P10840799781815710492.a n = A014739 n

end A014739

/-!
# A014740: Inverse of 731st cyclotomic polynomial.

The programs for A014740, there is no canonical definition to state claims against.
-/

/-! ## A014740.P4693518405028144708

`A015471(n)*A033999(n)`
-/

namespace A014740.P4693518405028144708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015471 n * A033999 n

end

end A014740.P4693518405028144708

/-!
# A014741: Numbers k such that k divides 2^(k+1) - 2.

The programs for A014741, there is no canonical definition to state claims against.
-/

/-! ## A014741.P5703497385460357387

`A014963(A001316(n))*A014945(A028310(n))`
-/

namespace A014741.P5703497385460357387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A001316 n).toNat * A014945 (A028310 n).toNat

end

end A014741.P5703497385460357387

/-! ## A014741.P4920784215535860723

`record[A000034(n)*A014945(A302032(n+1))]`
-/

namespace A014741.P4920784215535860723
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 n * A014945 (A302032 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A014741.P4920784215535860723

/-! ## A014741.P6547919005672202308

`A020639(A067945(n+1))*A014945(A028310(n))`
-/

namespace A014741.P6547919005672202308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A067945 (n + 1)).toNat * A014945 (A028310 n).toNat

end

end A014741.P6547919005672202308

/-!
# A014742: Expansion of (1+x^2)/(1 - 2*x - 2*x^2 + x^3).

The programs for A014742, the canonical program `A014742.P2145781323708842398` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A014742 has offset 0).

The definition of A014742 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1+x^2)/(1-2x-2x^2+x^3))` (program `A014742.P2145781323708842398`, by `A014742.P2145781323708842398.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A014742.P2145781323708842398

`ogf((1+x^2)/(1-2x-2x^2+x^3))`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A014742

/-- `ogf((1+x^2)/(1-2x-2x^2+x^3))` -/
def P2145781323708842398.Spec : Prop :=
  ∀ n, P2145781323708842398.a n = A014742 n

theorem P2145781323708842398.correct : P2145781323708842398.Spec := by
  intro n
  simp only [A014742]

end A014742

/-! ## A014742.P8502161246795288881

`2*(a(n-1)+a(n-2))-a(n-3)` with `a(0)=1, a(1)=2, a(2)=7`
-/

namespace A014742.P8502161246795288881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 7] fun n a =>
  2 * (a (n - 1) + a (n - 2)) - a (n - 3)

end

end A014742.P8502161246795288881

namespace A014742

/-- `2*(a(n-1)+a(n-2))-a(n-3)` -/
def P8502161246795288881.Spec : Prop :=
  ∀ n, P8502161246795288881.a n = A014742 n

end A014742

/-! ## A014742.P14430571852234920069

`∑[A295690(2*n)]-1`
-/

namespace A014742.P14430571852234920069
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295690 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A014742.P14430571852234920069

namespace A014742

/-- `∑[A295690(2*n)]-1` -/
def P14430571852234920069.Spec : Prop :=
  ∀ n, P14430571852234920069.a n = A014742 n

end A014742

/-! ## A014742.P2082661383059380915

`∑[A099016(n)]-n%2`
-/

namespace A014742.P2082661383059380915
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099016 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - ((n % 2 : ℕ) : ℤ)

end

end A014742.P2082661383059380915

namespace A014742

/-- `∑[A099016(n)]-n%2` -/
def P2082661383059380915.Spec : Prop :=
  ∀ n, P2082661383059380915.a n = A014742 n

end A014742

/-! ## A014742.P2624274428735609767

`∑[A295682(2*n+1)]-1`
-/

namespace A014742.P2624274428735609767
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295682 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A014742.P2624274428735609767

namespace A014742

/-- `∑[A295682(2*n+1)]-1` -/
def P2624274428735609767.Spec : Prop :=
  ∀ n, P2624274428735609767.a n = A014742 n

end A014742

/-! ## A014742.P10719763895760546364

`A362388(A004273(n))`
-/

namespace A014742.P10719763895760546364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362388 (A004273 n).toNat

end

end A014742.P10719763895760546364

namespace A014742

/-- `A362388(A004273(n))` -/
def P10719763895760546364.Spec : Prop :=
  ∀ n, P10719763895760546364.a n = A014742 n

end A014742

/-! ## A014742.P3974196977184134030

`A120718(n)+A033999(n)`
-/

namespace A014742.P3974196977184134030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120718 n + A033999 n

end

end A014742.P3974196977184134030

namespace A014742

/-- `A120718(n)+A033999(n)` -/
def P3974196977184134030.Spec : Prop :=
  ∀ n, P3974196977184134030.a n = A014742 n

end A014742

/-! ## A014742.P15513782115318575615

`A236428(n)+A001654(n)`
-/

namespace A014742.P15513782115318575615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236428 n + A001654 n

end

end A014742.P15513782115318575615

namespace A014742

/-- `A236428(n)+A001654(n)` -/
def P15513782115318575615.Spec : Prop :=
  ∀ n, P15513782115318575615.a n = A014742 n

end A014742

/-! ## A014742.P5788726439367449250

`A192916(n)+A128534(n)`
-/

namespace A014742.P5788726439367449250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192916 n + A128534 n

end

end A014742.P5788726439367449250

namespace A014742

/-- `A192916(n)+A128534(n)` -/
def P5788726439367449250.Spec : Prop :=
  ∀ n, P5788726439367449250.a n = A014742 n

end A014742

/-! ## A014742.P1218031173463923845

`A192914(n)+A175395(n)`
-/

namespace A014742.P1218031173463923845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192914 n + A175395 n

end

end A014742.P1218031173463923845

namespace A014742

/-- `A192914(n)+A175395(n)` -/
def P1218031173463923845.Spec : Prop :=
  ∀ n, P1218031173463923845.a n = A014742 n

end A014742

/-! ## A014742.P10372921095769912051

`A007598(n+1)+A001906(n)`
-/

namespace A014742.P10372921095769912051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007598 (n + 1) + A001906 n

end

end A014742.P10372921095769912051

namespace A014742

/-- `A007598(n+1)+A001906(n)` -/
def P10372921095769912051.Spec : Prop :=
  ∀ n, P10372921095769912051.a n = A014742 n

end A014742

/-! ## A014742.P15448461603428501064

`A110035(n)+A059840(n+1)`
-/

namespace A014742.P15448461603428501064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110035 n + A059840 (n + 1)

end

end A014742.P15448461603428501064

namespace A014742

/-- `A110035(n)+A059840(n+1)` -/
def P15448461603428501064.Spec : Prop :=
  ∀ n, P15448461603428501064.a n = A014742 n

end A014742

/-! ## A014742.P14419883826891644601

`A088305(n+1)-A007598(n)`
-/

namespace A014742.P14419883826891644601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088305 (n + 1) - A007598 n

end

end A014742.P14419883826891644601

namespace A014742

/-- `A088305(n+1)-A007598(n)` -/
def P14419883826891644601.Spec : Prop :=
  ∀ n, P14419883826891644601.a n = A014742 n

end A014742

/-! ## A014742.P16112313033448372411

`A122931(n+1)-A056014(n)`
-/

namespace A014742.P16112313033448372411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122931 (n + 1) - A056014 n

end

end A014742.P16112313033448372411

namespace A014742

/-- `A122931(n+1)-A056014(n)` -/
def P16112313033448372411.Spec : Prop :=
  ∀ n, P16112313033448372411.a n = A014742 n

end A014742

/-! ## A014742.P7600964231325418354

`A301809(n+2)-A005207(n)`
-/

namespace A014742.P7600964231325418354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301809 (n + 2) - A005207 n

end

end A014742.P7600964231325418354

namespace A014742

/-- `A301809(n+2)-A005207(n)` -/
def P7600964231325418354.Spec : Prop :=
  ∀ n, P7600964231325418354.a n = A014742 n

end A014742

/-! ## A014742.P16979342463726641935

`A006498(2*n)+A001906(n)`
-/

namespace A014742.P16979342463726641935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006498 (2 * n) + A001906 n

end

end A014742.P16979342463726641935

namespace A014742

/-- `A006498(2*n)+A001906(n)` -/
def P16979342463726641935.Spec : Prop :=
  ∀ n, P16979342463726641935.a n = A014742 n

end A014742

/-! ## A014742.P6022474998129363458

`A147600(2*n)-A007598(n)`
-/

namespace A014742.P6022474998129363458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147600 (2 * n) - A007598 n

end

end A014742.P6022474998129363458

namespace A014742

/-- `A147600(2*n)-A007598(n)` -/
def P6022474998129363458.Spec : Prop :=
  ∀ n, P6022474998129363458.a n = A014742 n

end A014742

/-! ## A014742.P5700574310478019601

`∑[A122367(n)]-A000045(n)²`
-/

namespace A014742.P5700574310478019601
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122367 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A000045 n ^ 2

end

end A014742.P5700574310478019601

namespace A014742

/-- `∑[A122367(n)]-A000045(n)²` -/
def P5700574310478019601.Spec : Prop :=
  ∀ n, P5700574310478019601.a n = A014742 n

end A014742

/-! ## A014742.P11511305261635706694

`A001906(n)+A000045(n+1)²`
-/

namespace A014742.P11511305261635706694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001906 n + A000045 (n + 1) ^ 2

end

end A014742.P11511305261635706694

namespace A014742

/-- `A001906(n)+A000045(n+1)²` -/
def P11511305261635706694.Spec : Prop :=
  ∀ n, P11511305261635706694.a n = A014742 n

end A014742

/-! ## A014742.P572498184824231544

`A088305(n+1)-A000045(n)²`
-/

namespace A014742.P572498184824231544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088305 (n + 1) - A000045 n ^ 2

end

end A014742.P572498184824231544

namespace A014742

/-- `A088305(n+1)-A000045(n)²` -/
def P572498184824231544.Spec : Prop :=
  ∀ n, P572498184824231544.a n = A014742 n

end A014742

/-!
# A014743: Expansion of (1+x)/(1-x-x^2-x^4-x^5).

The programs for A014743, the canonical program `A014743.P3301962396233097745` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A014743 has offset 0).

The definition of A014743 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1+x)/(1-x-x^2-x^4-x^5))` (program `A014743.P3301962396233097745`, by `A014743.P3301962396233097745.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A014743.P3301962396233097745

`ogf((1+x)/(1-x-x^2-x^4-x^5))`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A014743

/-- `ogf((1+x)/(1-x-x^2-x^4-x^5))` -/
def P3301962396233097745.Spec : Prop :=
  ∀ n, P3301962396233097745.a n = A014743 n

theorem P3301962396233097745.correct : P3301962396233097745.Spec := by
  intro n
  simp only [A014743]

end A014743

/-! ## A014743.P812673677614029723

`A164387(n-2)+a(n-1)` with `a(0)=1, a(1)=2`
-/

namespace A014743.P812673677614029723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  A164387 (n - 2) + a (n - 1)

end

end A014743.P812673677614029723

namespace A014743

/-- `A164387(n-2)+a(n-1)` -/
def P812673677614029723.Spec : Prop :=
  ∀ n, P812673677614029723.a n = A014743 n

end A014743

/-! ## A014743.P12759624102504766672

`∑[A164387(A289207(n))]`
-/

namespace A014743.P12759624102504766672
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164387 (A289207 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A014743.P12759624102504766672

namespace A014743

/-- `∑[A164387(A289207(n))]` -/
def P12759624102504766672.Spec : Prop :=
  ∀ n, P12759624102504766672.a n = A014743 n

end A014743

/-! ## A014743.P1494599601385056985

`∑[A164387(A004275(n)-n)]`
-/

namespace A014743.P1494599601385056985
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164387 (A004275 n - (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A014743.P1494599601385056985

namespace A014743

/-- `∑[A164387(A004275(n)-n)]` -/
def P1494599601385056985.Spec : Prop :=
  ∀ n, P1494599601385056985.a n = A014743 n

end A014743

/-! ## A014743.P6637167602199466497

`∑[A164387(A233583(n+1)-2)]`
-/

namespace A014743.P6637167602199466497
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164387 (A233583 (n + 1) - 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A014743.P6637167602199466497

namespace A014743

/-- `∑[A164387(A233583(n+1)-2)]` -/
def P6637167602199466497.Spec : Prop :=
  ∀ n, P6637167602199466497.a n = A014743 n

end A014743

/-! ## A014743.P4411966484364410310

`A164387(n+2)-A079976(n+3)`
-/

namespace A014743.P4411966484364410310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164387 (n + 2) - A079976 (n + 3)

end

end A014743.P4411966484364410310

namespace A014743

/-- `A164387(n+2)-A079976(n+3)` -/
def P4411966484364410310.Spec : Prop :=
  ∀ n, P4411966484364410310.a n = A014743 n

end A014743

/-! ## A014743.P8260667116836016811

`∑[A164387(log2(A076736(2*n+1)))]`
-/

namespace A014743.P8260667116836016811
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164387 (SequenceMachineLib.roundAway (Real.logb 2 (A076736 (2 * n + 1) : ℝ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A014743.P8260667116836016811

namespace A014743

/-- `∑[A164387(log2(A076736(2*n+1)))]` -/
def P8260667116836016811.Spec : Prop :=
  ∀ n, P8260667116836016811.a n = A014743 n

end A014743

/-! ## A014743.P11992207784186533648

`∑[A164387(A014473(A152947(n+1)))]`
-/

namespace A014743.P11992207784186533648
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164387 (A014473 (A152947 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A014743.P11992207784186533648

namespace A014743

/-- `∑[A164387(A014473(A152947(n+1)))]` -/
def P11992207784186533648.Spec : Prop :=
  ∀ n, P11992207784186533648.a n = A014743 n

end A014743

/-!
# A014744: Inverse of 735th cyclotomic polynomial.

The programs for A014744, there is no canonical definition to state claims against.
-/

/-! ## A014744.P14022236822746453873

`A014954(A272574(n))`
-/

namespace A014744.P14022236822746453873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014954 (A272574 n).toNat

end

end A014744.P14022236822746453873

/-!
# A014746: Inverse of 737th cyclotomic polynomial.

The programs for A014746, there is no canonical definition to state claims against.
-/

/-! ## A014746.P18100688583946044656

`A015483(n)*A033999(n)`
-/

namespace A014746.P18100688583946044656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015483 n * A033999 n

end

end A014746.P18100688583946044656

/-!
# A014747: Theta series of lattice D20+.

The programs for A014747, there is no canonical definition to state claims against.
-/

/-! ## A014747.P6249436222635940913

`(A319308(n)+A022073(n))/2`
-/

namespace A014747.P6249436222635940913
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A319308 n + A022073 n : ℚ) / 2

end

end A014747.P6249436222635940913

/-!
# A014748: Squares of numbers in array formed from elements to the right of middle of rows of triangle of Eulerian numbers.

The programs for A014748, there is no canonical definition to state claims against.
-/

/-! ## A014748.P6580484843925837837

`A014467(n+1)²`
-/

namespace A014748.P6580484843925837837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014467 (n + 1) ^ 2

end

end A014748.P6580484843925837837

/-! ## A014748.P14414778308026118192

`A177823(A274428(n+1))`
-/

namespace A014748.P14414778308026118192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177823 (A274428 (n + 1)).toNat

end

end A014748.P14414778308026118192

/-! ## A014748.P16210417801979381418

`A008292(comp[A245300(n)]+1)²`
-/

namespace A014748.P16210417801979381418
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245300 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008292 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1) ^ 2

end

end A014748.P16210417801979381418

/-! ## A014748.P16600143830147405762

`A014467(n+1)^A020639(2*(n+1))`
-/

namespace A014748.P16600143830147405762
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A014467 (n + 1) : ℚ) ^ (A020639 (2 * (n + 1)) : ℤ)

end

end A014748.P16600143830147405762

/-! ## A014748.P16120714494116470587

`A173018(lt[A293024(n), A145460(n)])²`
-/

namespace A014748.P16120714494116470587
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293024 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145460 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173018 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n) ^ 2

end

end A014748.P16120714494116470587

/-! ## A014748.P5086544886049078090

`A014467(n+1)^A001222(A087112(n+1))`
-/

namespace A014748.P5086544886049078090
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A014467 (n + 1) : ℚ) ^ (A001222 (A087112 (n + 1)).toNat : ℤ)

end

end A014748.P5086544886049078090

/-! ## A014748.P11126764558913063333

`A173018(eq[A026794(n+1), A079308(n+1)])²`
-/

namespace A014748.P11126764558913063333
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026794 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079308 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173018 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n) ^ 2

end

end A014748.P11126764558913063333

/-! ## A014748.P15334620536393321124

`A173018(lt[A008292(n+2), A008292(n+1)])²`
-/

namespace A014748.P15334620536393321124
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008292 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008292 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173018 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n) ^ 2

end

end A014748.P15334620536393321124

/-! ## A014748.P15123283211598126428

`A173018(eq[A079308(n+1)², A079308(n+1)])²`
-/

namespace A014748.P15123283211598126428
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079308 (n + 1) ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079308 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173018 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n) ^ 2

end

end A014748.P15123283211598126428

/-! ## A014748.P1507529583839992571

`A014467(n+1)^A000040(A014963(∑[n+1]))`
-/

namespace A014748.P1507529583839992571
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A014467 (n + 1) : ℚ) ^ (A000040 (A014963 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat : ℤ)

end

end A014748.P1507529583839992571

/-! ## A014748.P5710310425980569044

`A014467(n+1)^A130321(A055999(n)+4)`
-/

namespace A014748.P5710310425980569044
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A014467 (n + 1) : ℚ) ^ (A130321 (A055999 n + 4).toNat : ℤ)

end

end A014748.P5710310425980569044

/-!
# A014749: Squares of numbers in array formed from elements to the right of middle of rows of triangle of Eulerian numbers that are not 1.

The programs for A014749, there is no canonical definition to state claims against.
-/

/-! ## A014749.P4666569862553936166

`A014468(n+1)²`
-/

namespace A014749.P4666569862553936166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014468 (n + 1) ^ 2

end

end A014749.P4666569862553936166

/-! ## A014749.P12010234089848636795

`A014748(A183569(n+1))`
-/

namespace A014749.P12010234089848636795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014748 (A183569 (n + 1)).toNat

end

end A014749.P12010234089848636795

/-! ## A014749.P13842047197666011662

`A014732(A274428(n+1))`
-/

namespace A014749.P13842047197666011662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014732 (A274428 (n + 1)).toNat

end

end A014749.P13842047197666011662

/-! ## A014749.P15442414170390073646

`A014748(lt[1, A014748(n)])`
-/

namespace A014749.P15442414170390073646
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014748 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014748 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A014749.P15442414170390073646

/-! ## A014749.P7827287701337206806

`A014467(A049068(n+1))²`
-/

namespace A014749.P7827287701337206806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014467 (A049068 (n + 1)).toNat ^ 2

end

end A014749.P7827287701337206806

/-! ## A014749.P461552440626643897

`A014467(lt[1, A014462(n+1)])²`
-/

namespace A014749.P461552440626643897
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014462 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014467 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n) ^ 2

end

end A014749.P461552440626643897

/-! ## A014749.P3105242385352683836

`A014468(n+1)^A209675(2*n+1)`
-/

namespace A014749.P3105242385352683836
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A014468 (n + 1) : ℚ) ^ (A209675 (2 * n + 1) : ℤ)

end

end A014749.P3105242385352683836

/-! ## A014749.P12546305209652937957

`A123125(eq[A079308(n+1), A182062(n)])²`
-/

namespace A014749.P12546305209652937957
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079308 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182062 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123125 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n) ^ 2

end

end A014749.P12546305209652937957

/-! ## A014749.P9261793192557106901

`A014468(A000027(n+1))*A014468(n+1)`
-/

namespace A014749.P9261793192557106901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014468 (A000027 (n + 1)).toNat * A014468 (n + 1)

end

end A014749.P9261793192557106901

/-! ## A014749.P2676442982603423995

`A014468(A028242(2*n))*A014468(n+1)`
-/

namespace A014749.P2676442982603423995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014468 (A028242 (2 * n)).toNat * A014468 (n + 1)

end

end A014749.P2676442982603423995

/-! ## A014749.P10773827637186652437

`A014468(n+1)^A001222(A001358(n+1))`
-/

namespace A014749.P10773827637186652437
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A014468 (n + 1) : ℚ) ^ (A001222 (A001358 (n + 1)).toNat : ℤ)

end

end A014749.P10773827637186652437

/-! ## A014749.P7143318338534055589

`A014468(n+1)^A000002(A156242(n+1))`
-/

namespace A014749.P7143318338534055589
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A014468 (n + 1) : ℚ) ^ (A000002 (A156242 (n + 1)).toNat : ℤ)

end

end A014749.P7143318338534055589

/-! ## A014749.P1979957331120122383

`A014468(n+1)^A020639(A157502(n+1))`
-/

namespace A014749.P1979957331120122383
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A014468 (n + 1) : ℚ) ^ (A020639 (A157502 (n + 1)).toNat : ℤ)

end

end A014749.P1979957331120122383

/-! ## A014749.P15248320604358337519

`A123125(eq[A079308(n+1)², A169803(n)])²`
-/

namespace A014749.P15248320604358337519
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079308 (n + 1) ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169803 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123125 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n) ^ 2

end

end A014749.P15248320604358337519

/-! ## A014749.P11409779097564215121

`A014468(n+1)^A098189(p?[A184813(n+1)])`
-/

namespace A014749.P11409779097564215121
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184813 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A014468 (n + 1) : ℚ) ^ (A098189 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat : ℤ)

end

end A014749.P11409779097564215121

/-! ## A014749.P10655951595286357312

`A014468(n+1)^A000005(A014442(n+1))`
-/

namespace A014749.P10655951595286357312
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A014468 (n + 1) : ℚ) ^ (A000005 (A014442 (n + 1)).toNat : ℤ)

end

end A014749.P10655951595286357312

/-!
# A014750: Inverse of 741st cyclotomic polynomial.

The programs for A014750, there is no canonical definition to state claims against.
-/

/-! ## A014750.P12769599562148944866

`A016232(3*n)`
-/

namespace A014750.P12769599562148944866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016232 (3 * n)

end

end A014750.P12769599562148944866

/-!
# A014751: Inverse of 742nd cyclotomic polynomial.

The programs for A014751, there is no canonical definition to state claims against.
-/

/-! ## A014751.P17175615413926578012

`A015493(2*n)`
-/

namespace A014751.P17175615413926578012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015493 (2 * n)

end

end A014751.P17175615413926578012

/-!
# A014752: Primes of the form x^2 + 27y^2.

The programs for A014752, there is no canonical definition to state claims against.
-/

/-! ## A014752.P8476584097473256394

`p?[A016108(n+1)]`
-/

namespace A014752.P8476584097473256394
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016108 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A014752.P8476584097473256394

/-! ## A014752.P2842810176796291118

`∩[A002476(n+1), A016108(n+1)]`
-/

namespace A014752.P2842810176796291118
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002476 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016108 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A014752.P2842810176796291118

/-! ## A014752.P2214928584198704539

`∩[A007645(n+1), A016108(n+1)]`
-/

namespace A014752.P2214928584198704539
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007645 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016108 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A014752.P2214928584198704539

/-! ## A014752.P4187100617064358240

`∩[A016108(n+1), A045375(n+1)]`
-/

namespace A014752.P4187100617064358240
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016108 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045375 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A014752.P4187100617064358240

/-! ## A014752.P12377154111384229517

`∩[A016108(n+1), A045331(n+1)]`
-/

namespace A014752.P12377154111384229517
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016108 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045331 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A014752.P12377154111384229517

/-! ## A014752.P14731897847149890219

`∩[A016108(n+1), A279815(n+1)]`
-/

namespace A014752.P14731897847149890219
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016108 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279815 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A014752.P14731897847149890219

/-! ## A014752.P18370002656081944220

`∩[A016108(n+1), A055664(n+1)]`
-/

namespace A014752.P18370002656081944220
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016108 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055664 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A014752.P18370002656081944220

/-! ## A014752.P3530705688103543741

`∩[A016108(n+1), A133290(n+1)]`
-/

namespace A014752.P3530705688103543741
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016108 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133290 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A014752.P3530705688103543741

/-! ## A014752.P9846361204649636871

`∩[A016108(n+1), A137827(n+1)]`
-/

namespace A014752.P9846361204649636871
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016108 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137827 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A014752.P9846361204649636871

/-! ## A014752.P5225313644789942047

`∩[A016108(n+1), A216838(n+1)]`
-/

namespace A014752.P5225313644789942047
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016108 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216838 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A014752.P5225313644789942047

/-! ## A014752.P10246538900626798507

`∩[A002476(n+1), A040028(n+1)]`
-/

namespace A014752.P10246538900626798507
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002476 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040028 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A014752.P10246538900626798507

/-! ## A014752.P7710871266905654910

`∩[A016108(n+1), A040028(n+1)]`
-/

namespace A014752.P7710871266905654910
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016108 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040028 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A014752.P7710871266905654910

/-! ## A014752.P8581843998856481562

`∩[A040028(n+1), A123365(n+1)]`
-/

namespace A014752.P8581843998856481562
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040028 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123365 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A014752.P8581843998856481562

/-! ## A014752.P12852409640894707979

`∩[A040028(n+1), A133290(n+1)]`
-/

namespace A014752.P12852409640894707979
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040028 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133290 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A014752.P12852409640894707979

/-! ## A014752.P6491364007743629218

`∩[A040028(n+1), A137827(n+1)]`
-/

namespace A014752.P6491364007743629218
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040028 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137827 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A014752.P6491364007743629218

/-! ## A014752.P944804373890890966

`∩[A040028(n+1), A374135(n+1)]`
-/

namespace A014752.P944804373890890966
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040028 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374135 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A014752.P944804373890890966

/-! ## A014752.P6744446572121634999

`∪[A059899(n+1), A059914(n+1)]`
-/

namespace A014752.P6744446572121634999
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059899 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059914 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A014752.P6744446572121634999

/-! ## A014752.P7916649395551026184

`∩[A016108(n+1), A040116(n+1)]`
-/

namespace A014752.P7916649395551026184
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016108 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040116 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A014752.P7916649395551026184

/-! ## A014752.P4453379517456772085

`∩[A016108(n+1), A325143(n+1)]`
-/

namespace A014752.P4453379517456772085
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016108 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325143 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A014752.P4453379517456772085

/-! ## A014752.P6386748110654360158

`∩[A009087(n+1), A016108(n+1)]`
-/

namespace A014752.P6386748110654360158
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009087 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016108 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A014752.P6386748110654360158

/-!
# A014753: Primes p==1 (mod 6) such that 3 and -3 are both cubes (one implies other) modulo p.

The programs for A014753, there is no canonical definition to state claims against.
-/

/-! ## A014753.P538430744844554411

`p?[A002476(n+1)-A162397(A002339(n+1))]`
-/

namespace A014753.P538430744844554411
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002476 (n + 1) - A162397 (A002339 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A014753.P538430744844554411

/-! ## A014753.P5759700740269747167

`∩[A002476(n+1), A040036(n+1)]`
-/

namespace A014753.P5759700740269747167
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002476 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040036 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A014753.P5759700740269747167

/-! ## A014753.P4673461751915590236

`∩[A040036(n+1), A123365(n+1)]`
-/

namespace A014753.P4673461751915590236
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040036 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123365 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A014753.P4673461751915590236

/-! ## A014753.P8011376321893009733

`∩[A040036(n+1), A133290(n+1)]`
-/

namespace A014753.P8011376321893009733
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040036 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133290 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A014753.P8011376321893009733

/-! ## A014753.P14593982508869301487

`∩[A040036(n+1), A137827(n+1)]`
-/

namespace A014753.P14593982508869301487
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040036 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137827 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A014753.P14593982508869301487

/-! ## A014753.P17287676940402367644

`∩[A040036(n+1), A374135(n+1)]`
-/

namespace A014753.P17287676940402367644
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040036 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374135 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A014753.P17287676940402367644

/-! ## A014753.P1097412910722101653

`filter[A040036(n+1), A070563(#)]`
-/

namespace A014753.P1097412910722101653
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040036 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A070563 (f1 j).toNat = 1) n)

end

end A014753.P1097412910722101653

/-! ## A014753.P13834046253366192743

`∩[A040036(n+1), A107925(n+1)]`
-/

namespace A014753.P13834046253366192743
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040036 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107925 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A014753.P13834046253366192743

/-! ## A014753.P9100535655552645967

`∩[A004611(n+1), A040036(n+1)]`
-/

namespace A014753.P9100535655552645967
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004611 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040036 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A014753.P9100535655552645967

/-! ## A014753.P5459222088603552971

`∩[A040036(n+1), A129904(n+1)]`
-/

namespace A014753.P5459222088603552971
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040036 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129904 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A014753.P5459222088603552971

/-! ## A014753.P11573958375888957054

`∩[A040036(n+1), A348932(n+1)]`
-/

namespace A014753.P11573958375888957054
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040036 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348932 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A014753.P11573958375888957054

/-! ## A014753.P857530744223993885

`∩[A040036(n+1), A260682(n+1)]`
-/

namespace A014753.P857530744223993885
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040036 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260682 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A014753.P857530744223993885

/-! ## A014753.P4892227665081740949

`filter[A040036(n+1), A354982(#)]`
-/

namespace A014753.P4892227665081740949
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040036 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354982 (f1 j).toNat = 1) n)

end

end A014753.P4892227665081740949

/-! ## A014753.P5501217061580034393

`filter[A040036(n+3), A353815(#)]`
-/

namespace A014753.P5501217061580034393
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040036 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353815 (f1 j).toNat = 1) n)

end

end A014753.P5501217061580034393

/-! ## A014753.P11347903850795324602

`filter[A040036(n+3), A353816(#)]`
-/

namespace A014753.P11347903850795324602
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040036 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353816 (f1 j).toNat = 1) n)

end

end A014753.P11347903850795324602

/-! ## A014753.P13344031888104616611

`∩[A040036(n+1), A074628(n+1)]`
-/

namespace A014753.P13344031888104616611
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040036 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074628 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A014753.P13344031888104616611

/-! ## A014753.P10633627066377890474

`∩[A040036(n+1), A202822(n+1)]`
-/

namespace A014753.P10633627066377890474
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040036 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202822 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A014753.P10633627066377890474

/-! ## A014753.P18428550426683426286

`filter[A040036(n+1), A319691(#)]`
-/

namespace A014753.P18428550426683426286
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040036 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A319691 (f1 j).toNat = 1) n)

end

end A014753.P18428550426683426286

/-!
# A014754: Primes p == 1 mod 8 such that 2 and -2 are both 4th powers (one implies other) mod p.

The programs for A014754, there is no canonical definition to state claims against.
-/

/-! ## A014754.P13653550027897009841

`∩[A004625(n+1), A040098(n+1)]`
-/

namespace A014754.P13653550027897009841
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004625 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040098 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A014754.P13653550027897009841

/-! ## A014754.P16795290317016213793

`∩[A007519(n+1), A040098(n+1)]`
-/

namespace A014754.P16795290317016213793
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007519 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040098 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A014754.P16795290317016213793

/-! ## A014754.P7626105676808898100

`∩[A008846(n+1), A040098(n+1)]`
-/

namespace A014754.P7626105676808898100
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008846 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040098 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A014754.P7626105676808898100

/-! ## A014754.P7320347221514922393

`∩[A040098(n+1), A191218(n+1)]`
-/

namespace A014754.P7320347221514922393
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040098 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191218 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A014754.P7320347221514922393

/-! ## A014754.P17075109743058137452

`∩[A040098(n+1), A209544(n+1)]`
-/

namespace A014754.P17075109743058137452
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040098 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209544 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A014754.P17075109743058137452

/-! ## A014754.P2308177927587572598

`∩[A040098(n+1), A242663(n+1)]`
-/

namespace A014754.P2308177927587572598
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040098 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242663 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A014754.P2308177927587572598

/-! ## A014754.P11488372354078895970

`∩[A040098(n+1), A332226(n+1)]`
-/

namespace A014754.P11488372354078895970
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040098 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332226 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A014754.P11488372354078895970

/-! ## A014754.P4281816858196048968

`∩[A040098(n+1), A332227(n+1)]`
-/

namespace A014754.P4281816858196048968
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040098 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332227 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A014754.P4281816858196048968

/-! ## A014754.P15127001813819676319

`∩[A040098(n+1), A045390(n+3)]`
-/

namespace A014754.P15127001813819676319
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040098 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045390 (n + 3)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A014754.P15127001813819676319

/-! ## A014754.P10187287690789618920

`∩[A004625(n+1), A051071(n+1)]`
-/

namespace A014754.P10187287690789618920
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004625 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051071 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A014754.P10187287690789618920

/-! ## A014754.P13779028049672131550

`∩[A007519(n+1), A051071(n+1)]`
-/

namespace A014754.P13779028049672131550
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007519 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051071 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A014754.P13779028049672131550

/-! ## A014754.P14106557129352668842

`∩[A008846(n+1), A051071(n+1)]`
-/

namespace A014754.P14106557129352668842
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008846 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051071 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A014754.P14106557129352668842

/-! ## A014754.P971653601273298768

`∩[A051071(n+1), A191218(n+1)]`
-/

namespace A014754.P971653601273298768
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051071 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191218 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A014754.P971653601273298768

/-! ## A014754.P7729803845130674193

`∩[A051071(n+1), A242663(n+1)]`
-/

namespace A014754.P7729803845130674193
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051071 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242663 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A014754.P7729803845130674193

/-! ## A014754.P12685434380341709859

`∩[A051071(n+1), A332226(n+1)]`
-/

namespace A014754.P12685434380341709859
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051071 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332226 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A014754.P12685434380341709859

/-! ## A014754.P1538608916857504482

`∩[A040098(n+1), A263011(n+1)]`
-/

namespace A014754.P1538608916857504482
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040098 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263011 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A014754.P1538608916857504482

/-! ## A014754.P6018107080696597764

`∩[A051071(n+1), A263011(n+1)]`
-/

namespace A014754.P6018107080696597764
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051071 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263011 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A014754.P6018107080696597764

/-! ## A014754.P18125136460707516925

`∩[A001132(n+1), A051071(n+1)]`
-/

namespace A014754.P18125136460707516925
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001132 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051071 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A014754.P18125136460707516925

/-! ## A014754.P17348998399899456788

`∩[A002144(n+1), A040098(n+1)]`
-/

namespace A014754.P17348998399899456788
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002144 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040098 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A014754.P17348998399899456788

/-! ## A014754.P11648344818251874194

`∩[A002144(n+1), A051071(n+1)]`
-/

namespace A014754.P11648344818251874194
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002144 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051071 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A014754.P11648344818251874194

/-!
# A014755: 3 and -3 are both 4th powers (one implies other) mod these primes p=1 mod 8.

The programs for A014755, there is no canonical definition to state claims against.
-/

/-! ## A014755.P12385215095776486079

`∩[A107008(n+1), A107142(n+1)]`
-/

namespace A014755.P12385215095776486079
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107008 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107142 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A014755.P12385215095776486079

/-! ## A014755.P5295698666574212123

`p?[and(-5, A107142(n+1))]`
-/

namespace A014755.P5295698666574212123
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-5) (A107142 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A014755.P5295698666574212123

/-! ## A014755.P5777529909242267446

`∩[A107142(n+1), A332227(n+1)]`
-/

namespace A014755.P5777529909242267446
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107142 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332227 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A014755.P5777529909242267446

/-! ## A014755.P13148093558851815259

`∩[A107142(n+1), A242663(n+1)]`
-/

namespace A014755.P13148093558851815259
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107142 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242663 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A014755.P13148093558851815259

/-! ## A014755.P11636051776040283783

`∩[A033199(n+1), A107142(n+1)]`
-/

namespace A014755.P11636051776040283783
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033199 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107142 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A014755.P11636051776040283783

/-! ## A014755.P3254669785585532244

`∩[A007519(n+1), A107142(n+1)]`
-/

namespace A014755.P3254669785585532244
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007519 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107142 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A014755.P3254669785585532244

/-! ## A014755.P8557436141764875637

`∩[A045390(n+1), A107142(n+1)]`
-/

namespace A014755.P8557436141764875637
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045390 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107142 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A014755.P8557436141764875637

/-! ## A014755.P9152825134638113146

`∩[A107142(n+1), A209544(n+1)]`
-/

namespace A014755.P9152825134638113146
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107142 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209544 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A014755.P9152825134638113146

/-! ## A014755.P7307634960644686926

`∩[A107142(n+1), A354084(n+1)]`
-/

namespace A014755.P7307634960644686926
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107142 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354084 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A014755.P7307634960644686926

/-! ## A014755.P11485695545502387132

`∩[A107142(n+1), A130063(n+1)]`
-/

namespace A014755.P11485695545502387132
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107142 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130063 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A014755.P11485695545502387132

/-! ## A014755.P1449459007821618933

`∩[A106950(n+1), A107142(n+1)]`
-/

namespace A014755.P1449459007821618933
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106950 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107142 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A014755.P1449459007821618933

/-! ## A014755.P15414880089765352536

`∩[A107142(n+1), A141170(n+1)]`
-/

namespace A014755.P15414880089765352536
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107142 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141170 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A014755.P15414880089765352536

/-! ## A014755.P12018629202038794395

`∩[A107142(n+1), A332226(n+1)]`
-/

namespace A014755.P12018629202038794395
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107142 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332226 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A014755.P12018629202038794395

/-! ## A014755.P402088493476512882

`∩[A004625(n+1), A107142(n+1)]`
-/

namespace A014755.P402088493476512882
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004625 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107142 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A014755.P402088493476512882

/-! ## A014755.P16612559335564566196

`∩[A004625(n+1), A040101(n+1)]`
-/

namespace A014755.P16612559335564566196
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004625 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040101 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A014755.P16612559335564566196

/-! ## A014755.P15297475185964004501

`∩[A007519(n+1), A040101(n+1)]`
-/

namespace A014755.P15297475185964004501
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007519 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040101 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A014755.P15297475185964004501

/-! ## A014755.P17299940601210763653

`∩[A033199(n+1), A040101(n+1)]`
-/

namespace A014755.P17299940601210763653
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033199 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040101 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A014755.P17299940601210763653

/-! ## A014755.P17342491277484142924

`∩[A040101(n+1), A106950(n+1)]`
-/

namespace A014755.P17342491277484142924
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040101 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106950 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A014755.P17342491277484142924

/-! ## A014755.P1085237465941508365

`∩[A040101(n+1), A107008(n+1)]`
-/

namespace A014755.P1085237465941508365
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040101 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107008 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A014755.P1085237465941508365

/-! ## A014755.P14142536692970404127

`∩[A040101(n+1), A107142(n+1)]`
-/

namespace A014755.P14142536692970404127
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040101 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107142 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A014755.P14142536692970404127

/-!
# A014756: Squares of numbers in array formed from odd elements to the right of middle of rows of triangle of Eulerian numbers.

The programs for A014756, there is no canonical definition to state claims against.
-/

/-! ## A014756.P2416825253906822881

`A014469(n+1)²`
-/

namespace A014756.P2416825253906822881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014469 (n + 1) ^ 2

end

end A014756.P2416825253906822881

/-! ## A014756.P1183729274699491253

`A014469(n+1)^(2%A000040(n+1))`
-/

namespace A014756.P1183729274699491253
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A014469 (n + 1) : ℚ) ^ (Int.tmod 2 (A000040 (n + 1)) : ℤ)

end

end A014756.P1183729274699491253

/-! ## A014756.P5042484555245832927

`A014469(n+1)^A000034(Δ[or(1, n)]+1)`
-/

namespace A014756.P5042484555245832927
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A014469 (n + 1) : ℚ) ^ (A000034 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) + 1).toNat : ℤ)

end

end A014756.P5042484555245832927

/-! ## A014756.P11140255939260512806

`A014469(n+1)^A020639(A000118(n))`
-/

namespace A014756.P11140255939260512806
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A014469 (n + 1) : ℚ) ^ (A020639 (A000118 n).toNat : ℤ)

end

end A014756.P11140255939260512806

/-! ## A014756.P4465973410468880574

`A014469(n+1)^A000034(A000040(n+1))`
-/

namespace A014756.P4465973410468880574
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A014469 (n + 1) : ℚ) ^ (A000034 (A000040 (n + 1)).toNat : ℤ)

end

end A014756.P4465973410468880574

/-! ## A014756.P16822186817861999451

`A014469(n+1)^A000005(A139841(n+1))`
-/

namespace A014756.P16822186817861999451
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A014469 (n + 1) : ℚ) ^ (A000005 (A139841 (n + 1)).toNat : ℤ)

end

end A014756.P16822186817861999451

/-! ## A014756.P8566726490619624927

`A014469(n+1)^A001221(2*A000040(n+1))`
-/

namespace A014756.P8566726490619624927
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A014469 (n + 1) : ℚ) ^ (A001221 (2 * A000040 (n + 1)).toNat : ℤ)

end

end A014756.P8566726490619624927

/-! ## A014756.P1784339172692674005

`A014469(n+1)^A020639(2*A000040(n+1))`
-/

namespace A014756.P1784339172692674005
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A014469 (n + 1) : ℚ) ^ (A020639 (2 * A000040 (n + 1)).toNat : ℤ)

end

end A014756.P1784339172692674005

/-! ## A014756.P8516999008374056223

`A014469(n+1)^A130321(A055999(n)+4)`
-/

namespace A014756.P8516999008374056223
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A014469 (n + 1) : ℚ) ^ (A130321 (A055999 n + 4).toNat : ℤ)

end

end A014756.P8516999008374056223

/-!
# A014757: Inverse of 748th cyclotomic polynomial.

The programs for A014757, there is no canonical definition to state claims against.
-/

/-! ## A014757.P5422332041361925291

`A015505(A022998(n))`
-/

namespace A014757.P5422332041361925291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015505 (A022998 n).toNat

end

end A014757.P5422332041361925291

/-!
# A014758: Squares of numbers in array formed from odd elements to the right of middle of rows of triangle of Eulerian numbers that are not 1.

The programs for A014758, there is no canonical definition to state claims against.
-/

/-! ## A014758.P17290635370747724585

`A014470(n+1)²`
-/

namespace A014758.P17290635370747724585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014470 (n + 1) ^ 2

end

end A014758.P17290635370747724585

/-! ## A014758.P259016571281181004

`A014470(n+1)^gcd(2, A008776(n))`
-/

namespace A014758.P259016571281181004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014470 (n + 1) ^ Int.gcd 2 (A008776 n)

end

end A014758.P259016571281181004

/-! ## A014758.P14847332323597891747

`A014470(n+1)^A020639(2*(n+1))`
-/

namespace A014758.P14847332323597891747
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A014470 (n + 1) : ℚ) ^ (A020639 (2 * (n + 1)) : ℤ)

end

end A014758.P14847332323597891747

/-! ## A014758.P4018637764686866059

`A014470(n+1)^A000005(A014442(n+1))`
-/

namespace A014758.P4018637764686866059
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A014470 (n + 1) : ℚ) ^ (A000005 (A014442 (n + 1)).toNat : ℤ)

end

end A014758.P4018637764686866059

/-! ## A014758.P8072234488106312520

`A014470(n+1)^A000005(A047934(n+1))`
-/

namespace A014758.P8072234488106312520
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A014470 (n + 1) : ℚ) ^ (A000005 (A047934 (n + 1)).toNat : ℤ)

end

end A014758.P8072234488106312520

/-! ## A014758.P17671276848361853570

`A014470(n+1)^A000005(A052034(n+1))`
-/

namespace A014758.P17671276848361853570
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A014470 (n + 1) : ℚ) ^ (A000005 (A052034 (n + 1)).toNat : ℤ)

end

end A014758.P17671276848361853570

/-!
# A014759: Squares of numbers in array formed from even elements to the right of middle of rows of triangle of Eulerian numbers.

The programs for A014759, there is no canonical definition to state claims against.
-/

/-! ## A014759.P13884157367853310932

`A014472(n+1)²`
-/

namespace A014759.P13884157367853310932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014472 (n + 1) ^ 2

end

end A014759.P13884157367853310932

/-! ## A014759.P2348422887316878549

`4*A051477(n)`
-/

namespace A014759.P2348422887316878549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A051477 n

end

end A014759.P2348422887316878549

/-! ## A014759.P12269853884656399371

`(2*A051475(n))²`
-/

namespace A014759.P12269853884656399371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * A051475 n) ^ 2

end

end A014759.P12269853884656399371

/-! ## A014759.P5496717421816406806

`(A051475(n)+A051477(n)/A051475(n))²`
-/

namespace A014759.P5496717421816406806
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A051475 n : ℚ) + (A051477 n : ℚ) / (A051475 n : ℚ)) ^ 2

end

end A014759.P5496717421816406806

/-! ## A014759.P10174522382142177895

`A014472(n+1)^A000005(A014442(n+1))`
-/

namespace A014759.P10174522382142177895
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A014472 (n + 1) : ℚ) ^ (A000005 (A014442 (n + 1)).toNat : ℤ)

end

end A014759.P10174522382142177895

/-! ## A014759.P4666947969316242116

`A014472(n+1)^A020639(A157502(n+1))`
-/

namespace A014759.P4666947969316242116
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A014472 (n + 1) : ℚ) ^ (A020639 (A157502 (n + 1)).toNat : ℤ)

end

end A014759.P4666947969316242116

/-!
# A014760: Squares of numbers in array formed from odd elements to the right of middle of rows of Pascal triangle that are not 1.

The programs for A014760, the canonical program `A014760.P5591794879927673891` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A014760 has offset 0).

The definition of A014760 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1506 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A014760.P5997246920074899820

`A014761(lt[1, A014761(n+1)]+1)`
-/

namespace A014760.P5997246920074899820
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014761 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014761 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1)

end

end A014760.P5997246920074899820

namespace A014760

/-- `A014761(lt[1, A014761(n+1)]+1)` -/
def P5997246920074899820.Spec : Prop :=
  ∀ n, P5997246920074899820.a n = A014760 n

end A014760

/-! ## A014760.P12187466797174705039

`A014761(comp[eq[1, A014761(n+1)]]+1)`
-/

namespace A014760.P12187466797174705039
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014761 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014761 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + 1)

end

end A014760.P12187466797174705039

namespace A014760

/-- `A014761(comp[eq[1, A014761(n+1)]]+1)` -/
def P12187466797174705039.Spec : Prop :=
  ∀ n, P12187466797174705039.a n = A014760 n

end A014760

/-! ## A014760.P7721012819554609981

`A014761(eq[4, 4%A014761(n+1)]+1)`
-/

namespace A014760.P7721012819554609981
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod 4 (A014761 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014761 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A014760.P7721012819554609981

namespace A014760

/-- `A014761(eq[4, 4%A014761(n+1)]+1)` -/
def P7721012819554609981.Spec : Prop :=
  ∀ n, P7721012819554609981.a n = A014760 n

end A014760

/-! ## A014760.P5591794879927673891

`A014475(eq[2, 2%A014475(n+1)]+1)²`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A014760

/-- `A014475(eq[2, 2%A014475(n+1)]+1)²` -/
def P5591794879927673891.Spec : Prop :=
  ∀ n, P5591794879927673891.a n = A014760 n

theorem P5591794879927673891.correct : P5591794879927673891.Spec := by
  intro n
  simp only [A014760]

end A014760

/-! ## A014760.P7769105734018131376

`A014726(lt[A014421(n+1), A014421(n)])`
-/

namespace A014760.P7769105734018131376
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014421 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014421 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014726 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A014760.P7769105734018131376

namespace A014760

/-- `A014726(lt[A014421(n+1), A014421(n)])` -/
def P7769105734018131376.Spec : Prop :=
  ∀ n, P7769105734018131376.a n = A014760 n

end A014760

/-! ## A014760.P4668151771878846525

`A014726(lt[A014726(n+1), A014726(n)])`
-/

namespace A014760.P4668151771878846525
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014726 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014726 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014726 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A014760.P4668151771878846525

namespace A014760

/-- `A014726(lt[A014726(n+1), A014726(n)])` -/
def P4668151771878846525.Spec : Prop :=
  ∀ n, P4668151771878846525.a n = A014760 n

end A014760

/-!
# A014761: Squares of numbers in array formed from odd elements to the right of middle of rows of Pascal triangle.

The programs for A014761, the canonical program `A014761.P9492238368805406279` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A014761 has offset 1).

The definition of A014761 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A014475, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A014761.P9492238368805406279

`A014475(n+1)²`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A014761

/-- `A014475(n+1)²` -/
def P9492238368805406279.Spec : Prop :=
  ∀ n, P9492238368805406279.a n = A014761 (n + 1)

theorem P9492238368805406279.correct : P9492238368805406279.Spec := by
  intro n
  simp only [A014761, Nat.add_sub_cancel]

end A014761

/-! ## A014761.P1531795230175311955

`A014475(n+1)^A020639(A000118(n))`
-/

namespace A014761.P1531795230175311955
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A014475 (n + 1) : ℚ) ^ (A020639 (A000118 n).toNat : ℤ)

end

end A014761.P1531795230175311955

namespace A014761

/-- `A014475(n+1)^A020639(A000118(n))` -/
def P1531795230175311955.Spec : Prop :=
  ∀ n, P1531795230175311955.a n = (A014761 (n + 1) : ℚ)

end A014761

/-! ## A014761.P5925660508915001236

`A014475(n+1)^A000005(A139841(n+1))`
-/

namespace A014761.P5925660508915001236
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A014475 (n + 1) : ℚ) ^ (A000005 (A139841 (n + 1)).toNat : ℤ)

end

end A014761.P5925660508915001236

namespace A014761

/-- `A014475(n+1)^A000005(A139841(n+1))` -/
def P5925660508915001236.Spec : Prop :=
  ∀ n, P5925660508915001236.a n = (A014761 (n + 1) : ℚ)

end A014761

/-! ## A014761.P6862347065013002067

`A007318(eq[A065040(n), A089627(n)])²`
-/

namespace A014761.P6862347065013002067
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065040 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089627 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n) ^ 2

end

end A014761.P6862347065013002067

namespace A014761

/-- `A007318(eq[A065040(n), A089627(n)])²` -/
def P6862347065013002067.Spec : Prop :=
  ∀ n, P6862347065013002067.a n = A014761 (n + 1)

end A014761

/-! ## A014761.P2209794636238233039

`A007318(eq[A004198(n), A089627(n)])²`
-/

namespace A014761.P2209794636238233039
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004198 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089627 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n) ^ 2

end

end A014761.P2209794636238233039

namespace A014761

/-- `A007318(eq[A004198(n), A089627(n)])²` -/
def P2209794636238233039.Spec : Prop :=
  ∀ n, P2209794636238233039.a n = A014761 (n + 1)

end A014761

/-! ## A014761.P9330558105298152515

`A143333(eq[A004198(n), A089627(n)])²`
-/

namespace A014761.P9330558105298152515
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004198 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089627 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143333 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n) ^ 2

end

end A014761.P9330558105298152515

namespace A014761

/-- `A143333(eq[A004198(n), A089627(n)])²` -/
def P9330558105298152515.Spec : Prop :=
  ∀ n, P9330558105298152515.a n = A014761 (n + 1)

end A014761

/-! ## A014761.P2043258717991271369

`A007318(eq[A061896(n), A219463(n)])²`
-/

namespace A014761.P2043258717991271369
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061896 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219463 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n) ^ 2

end

end A014761.P2043258717991271369

namespace A014761

/-- `A007318(eq[A061896(n), A219463(n)])²` -/
def P2043258717991271369.Spec : Prop :=
  ∀ n, P2043258717991271369.a n = A014761 (n + 1)

end A014761

/-! ## A014761.P8431073183993407673

`A007318(eq[A089627(n), A219463(n)])²`
-/

namespace A014761.P8431073183993407673
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089627 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219463 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n) ^ 2

end

end A014761.P8431073183993407673

namespace A014761

/-- `A007318(eq[A089627(n), A219463(n)])²` -/
def P8431073183993407673.Spec : Prop :=
  ∀ n, P8431073183993407673.a n = A014761 (n + 1)

end A014761

/-! ## A014761.P10682546370578523318

`A143333(eq[A061896(n), A219463(n)])²`
-/

namespace A014761.P10682546370578523318
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061896 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219463 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143333 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n) ^ 2

end

end A014761.P10682546370578523318

namespace A014761

/-- `A143333(eq[A061896(n), A219463(n)])²` -/
def P10682546370578523318.Spec : Prop :=
  ∀ n, P10682546370578523318.a n = A014761 (n + 1)

end A014761

/-! ## A014761.P10258633525280638655

`A143333(eq[A089627(n), A219463(n)])²`
-/

namespace A014761.P10258633525280638655
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089627 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219463 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143333 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n) ^ 2

end

end A014761.P10258633525280638655

namespace A014761

/-- `A143333(eq[A089627(n), A219463(n)])²` -/
def P10258633525280638655.Spec : Prop :=
  ∀ n, P10258633525280638655.a n = A014761 (n + 1)

end A014761

/-! ## A014761.P4750799704183313735

`A007318(eq[A004198(n)², A061896(n)])²`
-/

namespace A014761.P4750799704183313735
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004198 n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061896 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n) ^ 2

end

end A014761.P4750799704183313735

namespace A014761

/-- `A007318(eq[A004198(n)², A061896(n)])²` -/
def P4750799704183313735.Spec : Prop :=
  ∀ n, P4750799704183313735.a n = A014761 (n + 1)

end A014761

/-! ## A014761.P15828442573960870086

`A014475(n+1)^A130321(A055999(n)+4)`
-/

namespace A014761.P15828442573960870086
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A014475 (n + 1) : ℚ) ^ (A130321 (A055999 n + 4).toNat : ℤ)

end

end A014761.P15828442573960870086

namespace A014761

/-- `A014475(n+1)^A130321(A055999(n)+4)` -/
def P15828442573960870086.Spec : Prop :=
  ∀ n, P15828442573960870086.a n = (A014761 (n + 1) : ℚ)

end A014761

/-!
# A014762: Squares of numbers in array formed from even elements to the right of middle of rows of Pascal triangle.

The programs for A014762, there is no canonical definition to state claims against.
-/

/-! ## A014762.P11959474155330012411

`A014476(n+1)²`
-/

namespace A014762.P11959474155330012411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014476 (n + 1) ^ 2

end

end A014762.P11959474155330012411

/-! ## A014762.P6965149802996732452

`4*A051514(n)`
-/

namespace A014762.P6965149802996732452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A051514 n

end

end A014762.P6965149802996732452

/-! ## A014762.P516861151457397740

`(2*A051497(n+1))²`
-/

namespace A014762.P516861151457397740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * A051497 (n + 1)) ^ 2

end

end A014762.P516861151457397740

/-! ## A014762.P8658686486066978007

`(A051497(n+1)+sqrt(A051514(n)))²`
-/

namespace A014762.P8658686486066978007
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((A051497 (n + 1) : ℝ) + Real.sqrt (A051514 n : ℝ)) ^ 2

end

end A014762.P8658686486066978007

/-! ## A014762.P13250101645845585305

`2*A014476(n+1)*A051497(n+1)`
-/

namespace A014762.P13250101645845585305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A014476 (n + 1) * A051497 (n + 1))

end

end A014762.P13250101645845585305

/-! ## A014762.P7992589372492571956

`A014476(n+1)^A020639(2*(n+1))`
-/

namespace A014762.P7992589372492571956
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A014476 (n + 1) : ℚ) ^ (A020639 (2 * (n + 1)) : ℤ)

end

end A014762.P7992589372492571956

/-! ## A014762.P6302450162898468903

`A014476(n+1)^A000005(A139841(n+1))`
-/

namespace A014762.P6302450162898468903
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A014476 (n + 1) : ℚ) ^ (A000005 (A139841 (n + 1)).toNat : ℤ)

end

end A014762.P6302450162898468903

/-! ## A014762.P3662582772225896729

`A014476(n+1)^A130321(A055999(n)+4)`
-/

namespace A014762.P3662582772225896729
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A014476 (n + 1) : ℚ) ^ (A130321 (A055999 n + 4).toNat : ℤ)

end

end A014762.P3662582772225896729

/-!
# A014763: Inverse of 754th cyclotomic polynomial.

The programs for A014763, there is no canonical definition to state claims against.
-/

/-! ## A014763.P17178701085133448819

`A014386(n)*A033999(n)`
-/

namespace A014763.P17178701085133448819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014386 n * A033999 n

end

end A014763.P17178701085133448819

/-!
# A014764: Squares of distinct elements in Pascal triangle.

The programs for A014764, there is no canonical definition to state claims against.
-/

/-! ## A014764.P11484664728564826423

`A014631(n+1)²`
-/

namespace A014764.P11484664728564826423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014631 (n + 1) ^ 2

end

end A014764.P11484664728564826423

/-! ## A014764.P11861311409704666587

`(A028328(n)/2)²`
-/

namespace A014764.P11861311409704666587
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A028328 n : ℚ) / 2) ^ 2

end

end A014764.P11861311409704666587

/-! ## A014764.P5449336220073395752

`A014631(C(n+1, n))^2`
-/

namespace A014764.P5449336220073395752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014631 (Nat.choose (n + 1) n) ^ 2

end

end A014764.P5449336220073395752

/-! ## A014764.P5497586570249126612

`A014631(A000027(n+1))^2`
-/

namespace A014764.P5497586570249126612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014631 (A000027 (n + 1)).toNat ^ 2

end

end A014764.P5497586570249126612

/-! ## A014764.P5016726198204516381

`A014631(A000027(n+1))*A014631(n+1)`
-/

namespace A014764.P5016726198204516381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014631 (A000027 (n + 1)).toNat * A014631 (n + 1)

end

end A014764.P5016726198204516381

/-! ## A014764.P13663812339887810763

`A014631(n+1)^A001222(2*A000040(n+1))`
-/

namespace A014764.P13663812339887810763
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A014631 (n + 1) : ℚ) ^ (A001222 (2 * A000040 (n + 1)).toNat : ℤ)

end

end A014764.P13663812339887810763

/-! ## A014764.P922377472481804364

`A014631(n+1)^A000034(2*n+1)`
-/

namespace A014764.P922377472481804364
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A014631 (n + 1) : ℚ) ^ (A000034 (2 * n + 1) : ℤ)

end

end A014764.P922377472481804364

/-! ## A014764.P10657065267400783901

`A014631(n+1)^A000005(A019378(n+1))`
-/

namespace A014764.P10657065267400783901
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A014631 (n + 1) : ℚ) ^ (A000005 (A019378 (n + 1)).toNat : ℤ)

end

end A014764.P10657065267400783901

/-! ## A014764.P16513759542905162464

`A014631(n+1)^A001285(A128309(n+1))`
-/

namespace A014764.P16513759542905162464
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A014631 (n + 1) : ℚ) ^ (A001285 (A128309 (n + 1)).toNat : ℤ)

end

end A014764.P16513759542905162464

/-! ## A014764.P6909840785883507389

`A014631(n+1)^A001281(A007318(∑[n]))`
-/

namespace A014764.P6909840785883507389
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A014631 (n + 1) : ℚ) ^ (A001281 (A007318 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat : ℤ)

end

end A014764.P6909840785883507389

/-!
# A014765: Squares of distinct elements in triangle of Eulerian numbers.

The programs for A014765, there is no canonical definition to state claims against.
-/

/-! ## A014765.P5858277931662177310

`A014630(n+1)²`
-/

namespace A014765.P5858277931662177310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014630 (n + 1) ^ 2

end

end A014765.P5858277931662177310

/-! ## A014765.P12920244275266672313

`A173018(eq[A010054(n), A026729(n)])²`
-/

namespace A014765.P12920244275266672313
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026729 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173018 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n) ^ 2

end

end A014765.P12920244275266672313

/-! ## A014765.P8728309419093749115

`A173018(eq[A010816(n), A026729(n)])²`
-/

namespace A014765.P8728309419093749115
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010816 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026729 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173018 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n) ^ 2

end

end A014765.P8728309419093749115

/-! ## A014765.P16339767358690664218

`A173018(eq[A010054(n), A098158(n)])²`
-/

namespace A014765.P16339767358690664218
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098158 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173018 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n) ^ 2

end

end A014765.P16339767358690664218

/-! ## A014765.P1188872696268027202

`A173018(eq[A010816(n), A098158(n)])²`
-/

namespace A014765.P1188872696268027202
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010816 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098158 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173018 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n) ^ 2

end

end A014765.P1188872696268027202

/-! ## A014765.P14465448307876706939

`A173018(eq[A000007(n), A145460(n)])²`
-/

namespace A014765.P14465448307876706939
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145460 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173018 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n) ^ 2

end

end A014765.P14465448307876706939

/-! ## A014765.P6174067231695122592

`A173018(eq[A026729(n), A198954(n)])²`
-/

namespace A014765.P6174067231695122592
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026729 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198954 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173018 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n) ^ 2

end

end A014765.P6174067231695122592

/-! ## A014765.P14063539570386958074

`A173018(eq[A098158(n), A198954(n)])²`
-/

namespace A014765.P14063539570386958074
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098158 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198954 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173018 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n) ^ 2

end

end A014765.P14063539570386958074

/-!
# A014766: Numbers k such that the 3k shuffle group does not accomplish a perfect shuffle.

The programs for A014766, the canonical program `A014766.P15193863746706197252` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A014766 has offset 1).

The definition of A014766 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5003 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A014766.P11305811372935520138

`filter[A231960(n+1), A319710(#)]`
-/

namespace A014766.P11305811372935520138
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231960 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A319710 (f1 j).toNat = 1) n)

end

end A014766.P11305811372935520138

namespace A014766

/-- `filter[A231960(n+1), A319710(#)]` -/
def P11305811372935520138.Spec : Prop :=
  ∀ n, P11305811372935520138.a n = A014766 (n + 1)

end A014766

/-! ## A014766.P15193863746706197252

`filter[A231960(n+3), A152822(#)]`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A014766

/-- `filter[A231960(n+3), A152822(#)]` -/
def P15193863746706197252.Spec : Prop :=
  ∀ n, P15193863746706197252.a n = A014766 (n + 1)

theorem P15193863746706197252.correct : P15193863746706197252.Spec := by
  intro n
  simp only [A014766, Nat.add_sub_cancel]

end A014766

/-! ## A014766.P10504610697851739495

`filter[A231960(n+3), A374045(#)]`
-/

namespace A014766.P10504610697851739495
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231960 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A374045 (f1 j).toNat = 1) n)

end

end A014766.P10504610697851739495

namespace A014766

/-- `filter[A231960(n+3), A374045(#)]` -/
def P10504610697851739495.Spec : Prop :=
  ∀ n, P10504610697851739495.a n = A014766 (n + 1)

end A014766

/-! ## A014766.P1179696247368964056

`∩[A231960(n+1), A283050(n+1)]`
-/

namespace A014766.P1179696247368964056
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231960 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283050 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A014766.P1179696247368964056

namespace A014766

/-- `∩[A231960(n+1), A283050(n+1)]` -/
def P1179696247368964056.Spec : Prop :=
  ∀ n, (P1179696247368964056.a n : ℤ) = A014766 (n + 1)

end A014766

/-! ## A014766.P17567951807496994825

`∩[A231960(n+1), A072154(n+2)]`
-/

namespace A014766.P17567951807496994825
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231960 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072154 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A014766.P17567951807496994825

namespace A014766

/-- `∩[A231960(n+1), A072154(n+2)]` -/
def P17567951807496994825.Spec : Prop :=
  ∀ n, (P17567951807496994825.a n : ℤ) = A014766 (n + 1)

end A014766

/-! ## A014766.P5328048634426352384

`filter[A231960(n+3), A141260(#)]`
-/

namespace A014766.P5328048634426352384
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231960 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A141260 (f1 j).toNat = 1) n)

end

end A014766.P5328048634426352384

namespace A014766

/-- `filter[A231960(n+3), A141260(#)]` -/
def P5328048634426352384.Spec : Prop :=
  ∀ n, P5328048634426352384.a n = A014766 (n + 1)

end A014766

/-! ## A014766.P1287798874116003622

`filter[A231960(n+3), A359379(#)]`
-/

namespace A014766.P1287798874116003622
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231960 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359379 (f1 j).toNat = 1) n)

end

end A014766.P1287798874116003622

namespace A014766

/-- `filter[A231960(n+3), A359379(#)]` -/
def P1287798874116003622.Spec : Prop :=
  ∀ n, P1287798874116003622.a n = A014766 (n + 1)

end A014766

/-!
# A014767: Order of shuffle group on n cards {0..n-1} generated by i->n-1-i and i->min{2i,2n-1-2i}.

The programs for A014767, there is no canonical definition to state claims against.
-/

/-! ## A014767.P2774120264432153597

`record[floor(sqrt(8*n+1))%2*A337993(n+1)]`
-/

namespace A014767.P2774120264432153597
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((Nat.sqrt (8 * n + 1) % 2 : ℕ) : ℤ) * A337993 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A014767.P2774120264432153597

/-! ## A014767.P16273868083958888357

`A337993(lt[0, ∑{p}[2*n, 4-#]]+floor(n/2))`
-/

namespace A014767.P16273868083958888357
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f3 n), (4 - (p : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337993 ((SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n : ℤ) + ⌊(n : ℚ) / 2⌋).toNat

end

end A014767.P16273868083958888357

/-! ## A014767.P12729392909578131612

`A351500(A075049(n+1))`
-/

namespace A014767.P12729392909578131612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351500 (A075049 (n + 1)).toNat

end

end A014767.P12729392909578131612

/-!
# A014768: Inverse of 759th cyclotomic polynomial.

The programs for A014768, there is no canonical definition to state claims against.
-/

/-! ## A014768.P14605921585868648199

`A016286(3*n)`
-/

namespace A014768.P14605921585868648199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016286 (3 * n)

end

end A014768.P14605921585868648199

/-! ## A014768.P9001185128179295928

`A015527(n)*A033999(n)`
-/

namespace A014768.P9001185128179295928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015527 n * A033999 n

end

end A014768.P9001185128179295928

/-!
# A014769: Squares of odd pentagonal numbers.

The programs for A014769, the canonical program `A014769.P15242849491866263109` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A014769 has offset 0).

The definition of A014769 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A014769.P15242849491866263109

`A014632(n)²`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A014769

/-- `A014632(n)²` -/
def P15242849491866263109.Spec : Prop :=
  ∀ n, P15242849491866263109.a n = A014769 n

theorem P15242849491866263109.correct : P15242849491866263109.Spec := by
  intro n
  simp only [A014769]

end A014769

/-! ## A014769.P7135504128809129739

`(A014633(n)-(A179741(n)+2))²`
-/

namespace A014769.P7135504128809129739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A014633 n - (A179741 n + 2)) ^ 2

end

end A014769.P7135504128809129739

namespace A014769

/-- `(A014633(n)-(A179741(n)+2))²` -/
def P7135504128809129739.Spec : Prop :=
  ∀ n, P7135504128809129739.a n = A014769 n

end A014769

/-! ## A014769.P3708686298998462277

`(A014493(n+1)+A042948(n)*A042963(n+1))²`
-/

namespace A014769.P3708686298998462277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A014493 (n + 1) + A042948 n * A042963 (n + 1)) ^ 2

end

end A014769.P3708686298998462277

namespace A014769

/-- `(A014493(n+1)+A042948(n)*A042963(n+1))²` -/
def P3708686298998462277.Spec : Prop :=
  ∀ n, P3708686298998462277.a n = A014769 n

end A014769

/-! ## A014769.P15044055624674096917

`A014632(A110654(2*n))*A014632(n)`
-/

namespace A014769.P15044055624674096917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014632 (A110654 (2 * n)).toNat * A014632 n

end

end A014769.P15044055624674096917

namespace A014769

/-- `A014632(A110654(2*n))*A014632(n)` -/
def P15044055624674096917.Spec : Prop :=
  ∀ n, P15044055624674096917.a n = A014769 n

end A014769

/-! ## A014769.P16617398941126085752

`A100255(or(1, n)+n)`
-/

namespace A014769.P16617398941126085752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100255 (Nat.lor 1 n + n)

end

end A014769.P16617398941126085752

namespace A014769

/-- `A100255(or(1, n)+n)` -/
def P16617398941126085752.Spec : Prop :=
  ∀ n, P16617398941126085752.a n = A014769 n

end A014769

/-! ## A014769.P11754662149760821319

`A000326(or(1, n)+n)²`
-/

namespace A014769.P11754662149760821319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000326 (Nat.lor 1 n + n) ^ 2

end

end A014769.P11754662149760821319

namespace A014769

/-- `A000326(or(1, n)+n)²` -/
def P11754662149760821319.Spec : Prop :=
  ∀ n, P11754662149760821319.a n = A014769 n

end A014769

/-! ## A014769.P12342169905520334971

`A100255(A042963(n+1))`
-/

namespace A014769.P12342169905520334971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100255 (A042963 (n + 1)).toNat

end

end A014769.P12342169905520334971

namespace A014769

/-- `A100255(A042963(n+1))` -/
def P12342169905520334971.Spec : Prop :=
  ∀ n, P12342169905520334971.a n = A014769 n

end A014769

/-! ## A014769.P12454955712218923698

`A000326(Δ[A014848(n)])²`
-/

namespace A014769.P12454955712218923698
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014848 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000326 (f1 (n + 1) - f1 n).toNat ^ 2

end

end A014769.P12454955712218923698

namespace A014769

/-- `A000326(Δ[A014848(n)])²` -/
def P12454955712218923698.Spec : Prop :=
  ∀ n, P12454955712218923698.a n = A014769 n

end A014769

/-! ## A014769.P2340038939157700735

`A000326(A042948(n)+1)²`
-/

namespace A014769.P2340038939157700735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000326 (A042948 n + 1).toNat ^ 2

end

end A014769.P2340038939157700735

namespace A014769

/-- `A000326(A042948(n)+1)²` -/
def P2340038939157700735.Spec : Prop :=
  ∀ n, P2340038939157700735.a n = A014769 n

end A014769

/-! ## A014769.P17994733519396470991

`A000326(A098180(2*n))²`
-/

namespace A014769.P17994733519396470991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000326 (A098180 (2 * n)).toNat ^ 2

end

end A014769.P17994733519396470991

namespace A014769

/-- `A000326(A098180(2*n))²` -/
def P17994733519396470991.Spec : Prop :=
  ∀ n, P17994733519396470991.a n = A014769 n

end A014769

/-! ## A014769.P1662196689148625444

`A000326(A109613(n)+n)²`
-/

namespace A014769.P1662196689148625444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000326 (A109613 n + (n : ℤ)).toNat ^ 2

end

end A014769.P1662196689148625444

namespace A014769

/-- `A000326(A109613(n)+n)²` -/
def P1662196689148625444.Spec : Prop :=
  ∀ n, P1662196689148625444.a n = A014769 n

end A014769

/-! ## A014769.P17732281487393421768

`A100255(A014601(n+1)-2)`
-/

namespace A014769.P17732281487393421768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100255 (A014601 (n + 1) - 2).toNat

end

end A014769.P17732281487393421768

namespace A014769

/-- `A100255(A014601(n+1)-2)` -/
def P17732281487393421768.Spec : Prop :=
  ∀ n, P17732281487393421768.a n = A014769 n

end A014769

/-! ## A014769.P15039963491961355977

`A000326(A014601(n+1)-2)²`
-/

namespace A014769.P15039963491961355977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000326 (A014601 (n + 1) - 2).toNat ^ 2

end

end A014769.P15039963491961355977

namespace A014769

/-- `A000326(A014601(n+1)-2)²` -/
def P15039963491961355977.Spec : Prop :=
  ∀ n, P15039963491961355977.a n = A014769 n

end A014769

/-! ## A014769.P14671091159978502842

`A100255(Δ[A267682(n+1)]-2)`
-/

namespace A014769.P14671091159978502842
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267682 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100255 (f1 (n + 1) - f1 n - 2).toNat

end

end A014769.P14671091159978502842

namespace A014769

/-- `A100255(Δ[A267682(n+1)]-2)` -/
def P14671091159978502842.Spec : Prop :=
  ∀ n, P14671091159978502842.a n = A014769 n

end A014769

/-! ## A014769.P14171188196573471681

`A000326(A047241(n+1)-n)²`
-/

namespace A014769.P14171188196573471681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000326 (A047241 (n + 1) - (n : ℤ)).toNat ^ 2

end

end A014769.P14171188196573471681

namespace A014769

/-- `A000326(A047241(n+1)-n)²` -/
def P14171188196573471681.Spec : Prop :=
  ∀ n, P14171188196573471681.a n = A014769 n

end A014769

/-! ## A014769.P8488444659141267494

`A100255(A085046(n+1)-n²)`
-/

namespace A014769.P8488444659141267494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100255 (A085046 (n + 1) - (n ^ 2 : ℤ)).toNat

end

end A014769.P8488444659141267494

namespace A014769

/-- `A100255(A085046(n+1)-n²)` -/
def P8488444659141267494.Spec : Prop :=
  ∀ n, P8488444659141267494.a n = A014769 n

end A014769

/-! ## A014769.P13870223788460006448

`A000326(A004525(2*n+1)+n)²`
-/

namespace A014769.P13870223788460006448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000326 (A004525 (2 * n + 1) + (n : ℤ)).toNat ^ 2

end

end A014769.P13870223788460006448

namespace A014769

/-- `A000326(A004525(2*n+1)+n)²` -/
def P13870223788460006448.Spec : Prop :=
  ∀ n, P13870223788460006448.a n = A014769 n

end A014769

/-! ## A014769.P6338218605535403710

`A000326(A186421(2*n+1)+n)²`
-/

namespace A014769.P6338218605535403710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000326 (A186421 (2 * n + 1) + (n : ℤ)).toNat ^ 2

end

end A014769.P6338218605535403710

namespace A014769

/-- `A000326(A186421(2*n+1)+n)²` -/
def P6338218605535403710.Spec : Prop :=
  ∀ n, P6338218605535403710.a n = A014769 n

end A014769

/-! ## A014769.P5979267199812210627

`A000326(A047255(2*n+1)-n)²`
-/

namespace A014769.P5979267199812210627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000326 (A047255 (2 * n + 1) - (n : ℤ)).toNat ^ 2

end

end A014769.P5979267199812210627

namespace A014769

/-- `A000326(A047255(2*n+1)-n)²` -/
def P5979267199812210627.Spec : Prop :=
  ∀ n, P5979267199812210627.a n = A014769 n

end A014769

/-! ## A014769.P10721647129299588250

`(A032528(lt[A004443(n+1), n])-n)²`
-/

namespace A014769.P10721647129299588250
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004443 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A032528 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n) - (n : ℤ)) ^ 2

end

end A014769.P10721647129299588250

namespace A014769

/-- `(A032528(lt[A004443(n+1), n])-n)²` -/
def P10721647129299588250.Spec : Prop :=
  ∀ n, P10721647129299588250.a n = A014769 n

end A014769

/-!
# A014770: Squares of even pentagonal numbers.

The programs for A014770, the canonical program `A014770.P1747506718973092349` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A014770 has offset 0).

The definition of A014770 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A014770.P1747506718973092349

`A014633(n)²`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A014770

/-- `A014633(n)²` -/
def P1747506718973092349.Spec : Prop :=
  ∀ n, P1747506718973092349.a n = A014770 n

theorem P1747506718973092349.correct : P1747506718973092349.Spec := by
  intro n
  simp only [A014770]

end A014770

/-! ## A014770.P4817322622155021973

`(2*A193866(n))²`
-/

namespace A014770.P4817322622155021973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * A193866 n) ^ 2

end

end A014770.P4817322622155021973

namespace A014770

/-- `(2*A193866(n))²` -/
def P4817322622155021973.Spec : Prop :=
  ∀ n, P4817322622155021973.a n = A014770 n

end A014770

/-! ## A014770.P11728322485195617889

`(2*(A062725(n)-A322462(n)))²`
-/

namespace A014770.P11728322485195617889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * (A062725 n - A322462 n)) ^ 2

end

end A014770.P11728322485195617889

namespace A014770

/-- `(2*(A062725(n)-A322462(n)))²` -/
def P11728322485195617889.Spec : Prop :=
  ∀ n, P11728322485195617889.a n = A014770 n

end A014770

/-! ## A014770.P2245546946265476050

`(2*(A095894(n)-A298037(n)))²`
-/

namespace A014770.P2245546946265476050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * (A095894 n - A298037 n)) ^ 2

end

end A014770.P2245546946265476050

namespace A014770

/-- `(2*(A095894(n)-A298037(n)))²` -/
def P2245546946265476050.Spec : Prop :=
  ∀ n, P2245546946265476050.a n = A014770 n

end A014770

/-! ## A014770.P17280799346342855028

`A014633(n)^A020639(2*(n+1))`
-/

namespace A014770.P17280799346342855028
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A014633 n : ℚ) ^ (A020639 (2 * (n + 1)) : ℤ)

end

end A014770.P17280799346342855028

namespace A014770

/-- `A014633(n)^A020639(2*(n+1))` -/
def P17280799346342855028.Spec : Prop :=
  ∀ n, P17280799346342855028.a n = (A014770 n : ℚ)

end A014770

/-! ## A014770.P16795229669672731509

`(2*(A274757(n+1)-A014601(n)))²`
-/

namespace A014770.P16795229669672731509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * (A274757 (n + 1) - A014601 n)) ^ 2

end

end A014770.P16795229669672731509

namespace A014770

/-- `(2*(A274757(n+1)-A014601(n)))²` -/
def P16795229669672731509.Spec : Prop :=
  ∀ n, P16795229669672731509.a n = A014770 n

end A014770

/-! ## A014770.P15646692012555715201

`(2*A153285(n+1)*A014682(n))²`
-/

namespace A014770.P15646692012555715201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * A153285 (n + 1) * A014682 n) ^ 2

end

end A014770.P15646692012555715201

namespace A014770

/-- `(2*A153285(n+1)*A014682(n))²` -/
def P15646692012555715201.Spec : Prop :=
  ∀ n, P15646692012555715201.a n = A014770 n

end A014770

/-! ## A014770.P2962926539179591297

`A014633(n)^A014963(A001316(n))`
-/

namespace A014770.P2962926539179591297
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A014633 n : ℚ) ^ (A014963 (A001316 n).toNat : ℤ)

end

end A014770.P2962926539179591297

namespace A014770

/-- `A014633(n)^A014963(A001316(n))` -/
def P2962926539179591297.Spec : Prop :=
  ∀ n, P2962926539179591297.a n = (A014770 n : ℚ)

end A014770

/-! ## A014770.P12011447172702437802

`A014633(A014682(2*n))*A014633(n)`
-/

namespace A014770.P12011447172702437802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014633 (A014682 (2 * n)).toNat * A014633 n

end

end A014770.P12011447172702437802

namespace A014770

/-- `A014633(A014682(2*n))*A014633(n)` -/
def P12011447172702437802.Spec : Prop :=
  ∀ n, P12011447172702437802.a n = A014770 n

end A014770

/-! ## A014770.P13672036235111612552

`A100255(and(1, n)+2*n)`
-/

namespace A014770.P13672036235111612552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100255 (Nat.land 1 n + 2 * n)

end

end A014770.P13672036235111612552

namespace A014770

/-- `A100255(and(1, n)+2*n)` -/
def P13672036235111612552.Spec : Prop :=
  ∀ n, P13672036235111612552.a n = A014770 n

end A014770

/-! ## A014770.P5514315527846065430

`A100255(or(2*n, and(1, n)))`
-/

namespace A014770.P5514315527846065430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100255 (Nat.lor (2 * n) (Nat.land 1 n))

end

end A014770.P5514315527846065430

namespace A014770

/-- `A100255(or(2*n, and(1, n)))` -/
def P5514315527846065430.Spec : Prop :=
  ∀ n, P5514315527846065430.a n = A014770 n

end A014770

/-! ## A014770.P16514749167297199519

`A100255(xor(2*n, and(1, n)))`
-/

namespace A014770.P16514749167297199519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100255 (Nat.xor (2 * n) (Nat.land 1 n))

end

end A014770.P16514749167297199519

namespace A014770

/-- `A100255(xor(2*n, and(1, n)))` -/
def P16514749167297199519.Spec : Prop :=
  ∀ n, P16514749167297199519.a n = A014770 n

end A014770

/-! ## A014770.P7119679903276444391

`A100255(A014601(n))`
-/

namespace A014770.P7119679903276444391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100255 (A014601 n).toNat

end

end A014770.P7119679903276444391

namespace A014770

/-- `A100255(A014601(n))` -/
def P7119679903276444391.Spec : Prop :=
  ∀ n, P7119679903276444391.a n = A014770 n

end A014770

/-! ## A014770.P12895295587880206629

`A100255(Δ[A267682(n)])`
-/

namespace A014770.P12895295587880206629
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267682 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100255 (f1 (n + 1) - f1 n).toNat

end

end A014770.P12895295587880206629

namespace A014770

/-- `A100255(Δ[A267682(n)])` -/
def P12895295587880206629.Spec : Prop :=
  ∀ n, P12895295587880206629.a n = A014770 n

end A014770

/-! ## A014770.P10636700721895733023

`A000326(comp[Δ[A014848(n)]])²`
-/

namespace A014770.P10636700721895733023
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014848 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000326 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n) ^ 2

end

end A014770.P10636700721895733023

namespace A014770

/-- `A000326(comp[Δ[A014848(n)]])²` -/
def P10636700721895733023.Spec : Prop :=
  ∀ n, P10636700721895733023.a n = A014770 n

end A014770

/-! ## A014770.P8595424994197405543

`A100255(A042963(n+2)-2)`
-/

namespace A014770.P8595424994197405543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100255 (A042963 (n + 2) - 2).toNat

end

end A014770.P8595424994197405543

namespace A014770

/-- `A100255(A042963(n+2)-2)` -/
def P8595424994197405543.Spec : Prop :=
  ∀ n, P8595424994197405543.a n = A014770 n

end A014770

/-! ## A014770.P12784805758131427779

`A000326(A042948(n+1)-1)²`
-/

namespace A014770.P12784805758131427779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000326 (A042948 (n + 1) - 1).toNat ^ 2

end

end A014770.P12784805758131427779

namespace A014770

/-- `A000326(A042948(n+1)-1)²` -/
def P12784805758131427779.Spec : Prop :=
  ∀ n, P12784805758131427779.a n = A014770 n

end A014770

/-! ## A014770.P10158858268340589139

`A000326(A016777(n)-A109613(n))²`
-/

namespace A014770.P10158858268340589139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000326 (A016777 n - A109613 n).toNat ^ 2

end

end A014770.P10158858268340589139

namespace A014770

/-- `A000326(A016777(n)-A109613(n))²` -/
def P10158858268340589139.Spec : Prop :=
  ∀ n, P10158858268340589139.a n = A014770 n

end A014770

/-! ## A014770.P6130552727854761429

`A100255(A267682(n+1)-A267682(n))`
-/

namespace A014770.P6130552727854761429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100255 (A267682 (n + 1) - A267682 n).toNat

end

end A014770.P6130552727854761429

namespace A014770

/-- `A100255(A267682(n+1)-A267682(n))` -/
def P6130552727854761429.Spec : Prop :=
  ∀ n, P6130552727854761429.a n = A014770 n

end A014770

/-! ## A014770.P2488511814341095664

`A000326(A003815(2*n))²`
-/

namespace A014770.P2488511814341095664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000326 (A003815 (2 * n)).toNat ^ 2

end

end A014770.P2488511814341095664

namespace A014770

/-- `A000326(A003815(2*n))²` -/
def P2488511814341095664.Spec : Prop :=
  ∀ n, P2488511814341095664.a n = A014770 n

end A014770

/-!
# A014771: Squares of odd hexagonal numbers.

The programs for A014771, the canonical program `A014771.P15166460962546886426` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A014771 has offset 1).

The definition of A014771 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A014771.P15166460962546886426

`(2*(n+1)-1)²*(4*(n+1)-3)²`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A014771

/-- `(2*(n+1)-1)²*(4*(n+1)-3)²` -/
def P15166460962546886426.Spec : Prop :=
  ∀ n, P15166460962546886426.a n = A014771 (n + 1)

theorem P15166460962546886426.correct : P15166460962546886426.Spec := by
  intro n
  simp only [A014771, Nat.add_sub_cancel]

end A014771

/-! ## A014771.P5292469890402181019

`C(4*n+2, 2)²`
-/

namespace A014771.P5292469890402181019
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (4 * n + 2) 2 ^ 2

end

end A014771.P5292469890402181019

namespace A014771

/-- `C(4*n+2, 2)²` -/
def P5292469890402181019.Spec : Prop :=
  ∀ n, (P5292469890402181019.a n : ℤ) = A014771 (n + 1)

theorem P5292469890402181019.correct : P5292469890402181019.Spec := by
  intro n
  simp only [A014771, Nat.add_sub_cancel, A014771.P5292469890402181019.a, A014771.P15166460962546886426.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A014771

/-! ## A014771.P15206376791266106311

`record[C(lcm(2, n+1), 2)²]`
-/

namespace A014771.P15206376791266106311
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (Nat.lcm 2 (n + 1)) 2 ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A014771.P15206376791266106311

namespace A014771

/-- `record[C(lcm(2, n+1), 2)²]` -/
def P15206376791266106311.Spec : Prop :=
  ∀ n, (P15206376791266106311.a n : ℤ) = A014771 (n + 1)

end A014771

/-! ## A014771.P15693310905605854447

`∑[a(n-1)+16]²` with `a(0)=1, a(1)=14`
-/

namespace A014771.P15693310905605854447
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 14] fun n f1 =>
  f1 (n - 1) + 16

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2

end

end A014771.P15693310905605854447

namespace A014771

/-- `∑[a(n-1)+16]²` -/
def P15693310905605854447.Spec : Prop :=
  ∀ n, (P15693310905605854447.a n : ℤ) = A014771 (n + 1)

end A014771

/-! ## A014771.P11314332537840736446

`record[((2*n+1)*xor(1, n))²]`
-/

namespace A014771.P11314332537840736446
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((2 * n + 1) * Nat.xor 1 n) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A014771.P11314332537840736446

namespace A014771

/-- `record[((2*n+1)*xor(1, n))²]` -/
def P11314332537840736446.Spec : Prop :=
  ∀ n, (P11314332537840736446.a n : ℤ) = A014771 (n + 1)

end A014771

/-! ## A014771.P10005206797761814042

`record[C(2*n, 2*n%2)²]`
-/

namespace A014771.P10005206797761814042
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (2 * n) (2 * (n % 2)) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A014771.P10005206797761814042

namespace A014771

/-- `record[C(2*n, 2*n%2)²]` -/
def P10005206797761814042.Spec : Prop :=
  ∀ n, (P10005206797761814042.a n : ℤ) = A014771 (n + 1)

end A014771

/-! ## A014771.P14305107183318996161

`(Δ[C(2*n, 2)]*Δ[n²])²`
-/

namespace A014771.P14305107183318996161
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (2 * n) 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((f1 (n + 1) : ℤ) - (f1 n : ℤ)) * ((f2 (n + 1) : ℤ) - (f2 n : ℤ))) ^ 2

end

end A014771.P14305107183318996161

namespace A014771

/-- `(Δ[C(2*n, 2)]*Δ[n²])²` -/
def P14305107183318996161.Spec : Prop :=
  ∀ n, P14305107183318996161.a n = A014771 (n + 1)

theorem P14305107183318996161.correct : P14305107183318996161.Spec := by
  intro n
  simp only [A014771, Nat.add_sub_cancel, A014771.P14305107183318996161.f1, A014771.P14305107183318996161.f2, A014771.P14305107183318996161.a, A014771.P15166460962546886426.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A014771

/-! ## A014771.P757974343079003905

`or(1, ((2*n+1)*(4*n+1))²)`
-/

namespace A014771.P757974343079003905
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (((2 * n + 1) * (4 * n + 1)) ^ 2)

end

end A014771.P757974343079003905

namespace A014771

/-- `or(1, ((2*n+1)*(4*n+1))²)` -/
def P757974343079003905.Spec : Prop :=
  ∀ n, (P757974343079003905.a n : ℤ) = A014771 (n + 1)

end A014771

/-! ## A014771.P3534375557457185778

`A014634(n)²`
-/

namespace A014771.P3534375557457185778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014634 n ^ 2

end

end A014771.P3534375557457185778

namespace A014771

/-- `A014634(n)²` -/
def P3534375557457185778.Spec : Prop :=
  ∀ n, P3534375557457185778.a n = A014771 (n + 1)

theorem P3534375557457185778.correct : P3534375557457185778.Spec := by
  intro n
  simp only [A014771, Nat.add_sub_cancel, A014771.P3534375557457185778.a, A014771.P15166460962546886426.a, A014634, A014634.P13834563675282914036.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A014771

/-! ## A014771.P5318671893375449554

`(A033587(n)+1)²`
-/

namespace A014771.P5318671893375449554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A033587 n + 1) ^ 2

end

end A014771.P5318671893375449554

namespace A014771

/-- `(A033587(n)+1)²` -/
def P5318671893375449554.Spec : Prop :=
  ∀ n, P5318671893375449554.a n = A014771 (n + 1)

theorem P5318671893375449554.correct : P5318671893375449554.Spec := by
  intro n
  simp only [A014771, Nat.add_sub_cancel, A014771.P5318671893375449554.a, A014771.P15166460962546886426.a, A033587, A033587.P16272004082571904291.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A014771

/-! ## A014771.P6773322173397775458

`(A157870(n)/2)²`
-/

namespace A014771.P6773322173397775458
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A157870 n : ℚ) / 2) ^ 2

end

end A014771.P6773322173397775458

namespace A014771

/-- `(A157870(n)/2)²` -/
def P6773322173397775458.Spec : Prop :=
  ∀ n, P6773322173397775458.a n = (A014771 (n + 1) : ℚ)

theorem P6773322173397775458.correct : P6773322173397775458.Spec := by
  intro n
  simp only [A014771, Nat.add_sub_cancel, A014771.P6773322173397775458.a, A014771.P15166460962546886426.a, A157870, A157870.P6469800247760931367.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A014771

/-! ## A014771.P2489138756549548090

`(n-A194268(n))²`
-/

namespace A014771.P2489138756549548090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - A194268 n) ^ 2

end

end A014771.P2489138756549548090

namespace A014771

/-- `(n-A194268(n))²` -/
def P2489138756549548090.Spec : Prop :=
  ∀ n, P2489138756549548090.a n = A014771 (n + 1)

theorem P2489138756549548090.correct : P2489138756549548090.Spec := by
  intro n
  simp only [A014771, Nat.add_sub_cancel, A014771.P2489138756549548090.a, A014771.P15166460962546886426.a, A194268, A194268.P13709870917259288745.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A014771

/-! ## A014771.P16789856477018262258

`(n²-A016778(n))²`
-/

namespace A014771.P16789856477018262258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n ^ 2 : ℤ) - A016778 n) ^ 2

end

end A014771.P16789856477018262258

namespace A014771

/-- `(n²-A016778(n))²` -/
def P16789856477018262258.Spec : Prop :=
  ∀ n, P16789856477018262258.a n = A014771 (n + 1)

theorem P16789856477018262258.correct : P16789856477018262258.Spec := by
  intro n
  simp only [A014771, Nat.add_sub_cancel, A014771.P16789856477018262258.a, A014771.P15166460962546886426.a, A016778, A016778.P16000663877604072744.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A014771

/-! ## A014771.P6290391215283488536

`(A139277(n)+n+1)²`
-/

namespace A014771.P6290391215283488536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A139277 n + (n + 1 : ℤ)) ^ 2

end

end A014771.P6290391215283488536

namespace A014771

/-- `(A139277(n)+n+1)²` -/
def P6290391215283488536.Spec : Prop :=
  ∀ n, P6290391215283488536.a n = A014771 (n + 1)

theorem P6290391215283488536.correct : P6290391215283488536.Spec := by
  intro n
  simp only [A014771, Nat.add_sub_cancel, A014771.P6290391215283488536.a, A014771.P15166460962546886426.a, A139277, A139277.P7712727305449482595.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A014771

/-! ## A014771.P5100420725453866462

`((A016777(n+1)+n-1)*2*n+1)^2`
-/

namespace A014771.P5100420725453866462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((A016777 (n + 1) + ((n : ℤ) - 1)) * (2 * n : ℤ) + 1) ^ 2

end

end A014771.P5100420725453866462

namespace A014771

/-- `((A016777(n+1)+n-1)*2*n+1)^2` -/
def P5100420725453866462.Spec : Prop :=
  ∀ n, P5100420725453866462.a n = A014771 (n + 1)

theorem P5100420725453866462.correct : P5100420725453866462.Spec := by
  intro n
  simp only [A014771, Nat.add_sub_cancel, A014771.P5100420725453866462.a, A014771.P15166460962546886426.a, A016777, A016777.P9931792138852554157.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A014771

/-! ## A014771.P2354386984842768262

`A014799(n)/A016814(n)`
-/

namespace A014771.P2354386984842768262
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A014799 n : ℚ) / (A016814 n : ℚ)

end

end A014771.P2354386984842768262

namespace A014771

/-- `A014799(n)/A016814(n)` -/
def P2354386984842768262.Spec : Prop :=
  ∀ n, P2354386984842768262.a n = (A014771 (n + 1) : ℚ)

theorem P2354386984842768262.correct : P2354386984842768262.Spec := by
  intro n
  simp only [A014771, Nat.add_sub_cancel, A014771.P2354386984842768262.a, A014771.P15166460962546886426.a, A014799, A014799.P10410546948635018073.a, A016814, A016814.P5668709183610020667.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A014771

/-! ## A014771.P9382816078184735205

`lcm(A015223(n), A016754(n))`
-/

namespace A014771.P9382816078184735205
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A015223 n) (A016754 n)

end

end A014771.P9382816078184735205

namespace A014771

/-- `lcm(A015223(n), A016754(n))` -/
def P9382816078184735205.Spec : Prop :=
  ∀ n, (P9382816078184735205.a n : ℤ) = A014771 (n + 1)

end A014771

/-! ## A014771.P12311933014742159866

`lcm(A016814(n), A280059(n))`
-/

namespace A014771.P12311933014742159866
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A016814 n) (A280059 n)

end

end A014771.P12311933014742159866

namespace A014771

/-- `lcm(A016814(n), A280059(n))` -/
def P12311933014742159866.Spec : Prop :=
  ∀ n, (P12311933014742159866.a n : ℤ) = A014771 (n + 1)

end A014771

/-! ## A014771.P7014401373189913883

`A000217(A016813(n))²`
-/

namespace A014771.P7014401373189913883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A016813 n).toNat ^ 2

end

end A014771.P7014401373189913883

namespace A014771

/-- `A000217(A016813(n))²` -/
def P7014401373189913883.Spec : Prop :=
  ∀ n, P7014401373189913883.a n = A014771 (n + 1)

end A014771

/-! ## A014771.P7684643387161774768

`sqrt(A016756(2*n)*A016756(n))`
-/

namespace A014771.P7684643387161774768
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A016756 (2 * n) * A016756 n : ℝ)

end

end A014771.P7684643387161774768

namespace A014771

/-- `sqrt(A016756(2*n)*A016756(n))` -/
def P7684643387161774768.Spec : Prop :=
  ∀ n, P7684643387161774768.a n = (A014771 (n + 1) : ℝ)

end A014771

/-!
# A014772: Squares of even hexagonal numbers.

The programs for A014772, the canonical program `A014772.P8367061891044236608` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A014772 has offset 1).

The definition of A014772 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A014772.P8367061891044236608

`∑[16*n+6]²`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A014772

/-- `∑[16*n+6]²` -/
def P8367061891044236608.Spec : Prop :=
  ∀ n, (P8367061891044236608.a n : ℤ) = A014772 (n + 1)

theorem P8367061891044236608.correct : P8367061891044236608.Spec := by
  intro n
  simp only [A014772, Nat.add_sub_cancel]

end A014772

/-! ## A014772.P8951481828471381847

`∑[xor(6, 16*n)]^2`
-/

namespace A014772.P8951481828471381847
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 6 (16 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2

end

end A014772.P8951481828471381847

namespace A014772

/-- `∑[xor(6, 16*n)]^2` -/
def P8951481828471381847.Spec : Prop :=
  ∀ n, (P8951481828471381847.a n : ℤ) = A014772 (n + 1)

end A014772

/-! ## A014772.P3020799436425918682

`C(4*(n+1), 2)^2`
-/

namespace A014772.P3020799436425918682
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (4 * (n + 1)) 2 ^ 2

end

end A014772.P3020799436425918682

namespace A014772

/-- `C(4*(n+1), 2)^2` -/
def P3020799436425918682.Spec : Prop :=
  ∀ n, (P3020799436425918682.a n : ℤ) = A014772 (n + 1)

end A014772

/-! ## A014772.P12313514597091451187

`4*∑[or(3, 8*n)]²`
-/

namespace A014772.P12313514597091451187
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 3 (8 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2

end

end A014772.P12313514597091451187

namespace A014772

/-- `4*∑[or(3, 8*n)]²` -/
def P12313514597091451187.Spec : Prop :=
  ∀ n, (P12313514597091451187.a n : ℤ) = A014772 (n + 1)

end A014772

/-! ## A014772.P12607967780936154714

`record[((n+2)*xor(3, 2*n))²]`
-/

namespace A014772.P12607967780936154714
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((n + 2) * Nat.xor 3 (2 * n)) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A014772.P12607967780936154714

namespace A014772

/-- `record[((n+2)*xor(3, 2*n))²]` -/
def P12607967780936154714.Spec : Prop :=
  ∀ n, (P12607967780936154714.a n : ℤ) = A014772 (n + 1)

end A014772

/-! ## A014772.P8325667920787320379

`Δ[lcm(2*n+1, 2*n)]²*(n+1)²`
-/

namespace A014772.P8325667920787320379
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm (2 * n + 1) (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((f1 (n + 1) : ℤ) - (f1 n : ℤ)) ^ 2 * ((n + 1) ^ 2 : ℤ)

end

end A014772.P8325667920787320379

namespace A014772

/-- `Δ[lcm(2*n+1, 2*n)]²*(n+1)²` -/
def P8325667920787320379.Spec : Prop :=
  ∀ n, P8325667920787320379.a n = A014772 (n + 1)

end A014772

/-! ## A014772.P3669133321743229368

`(n+1)²*A017138(n)`
-/

namespace A014772.P3669133321743229368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℤ) * A017138 n

end

end A014772.P3669133321743229368

namespace A014772

/-- `(n+1)²*A017138(n)` -/
def P3669133321743229368.Spec : Prop :=
  ∀ n, P3669133321743229368.a n = A014772 (n + 1)

end A014772

/-! ## A014772.P4504344539030623320

`A016742(n+1)*(4*n+3)²`
-/

namespace A014772.P4504344539030623320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016742 (n + 1) * ((4 * n + 3) ^ 2 : ℤ)

end

end A014772.P4504344539030623320

namespace A014772

/-- `A016742(n+1)*(4*n+3)²` -/
def P4504344539030623320.Spec : Prop :=
  ∀ n, P4504344539030623320.a n = A014772 (n + 1)

end A014772

/-! ## A014772.P8817499941079008237

`A014635(n+1)*A014635(n+1)`
-/

namespace A014772.P8817499941079008237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014635 (n + 1) * A014635 (n + 1)

end

end A014772.P8817499941079008237

namespace A014772

/-- `A014635(n+1)*A014635(n+1)` -/
def P8817499941079008237.Spec : Prop :=
  ∀ n, P8817499941079008237.a n = A014772 (n + 1)

end A014772

/-! ## A014772.P17720863963803826838

`A014738(2*n)`
-/

namespace A014772.P17720863963803826838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014738 (2 * n)

end

end A014772.P17720863963803826838

namespace A014772

/-- `A014738(2*n)` -/
def P17720863963803826838.Spec : Prop :=
  ∀ n, P17720863963803826838.a n = A014772 (n + 1)

end A014772

/-! ## A014772.P10056427766275762829

`4*A051515(2*n+1)`
-/

namespace A014772.P10056427766275762829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A051515 (2 * n + 1)

end

end A014772.P10056427766275762829

namespace A014772

/-- `4*A051515(2*n+1)` -/
def P10056427766275762829.Spec : Prop :=
  ∀ n, P10056427766275762829.a n = A014772 (n + 1)

end A014772

/-! ## A014772.P3723630064453738793

`∑[2*n+1]*A016826(2*n+1)`
-/

namespace A014772.P3723630064453738793
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) * A016826 (2 * n + 1)

end

end A014772.P3723630064453738793

namespace A014772

/-- `∑[2*n+1]*A016826(2*n+1)` -/
def P3723630064453738793.Spec : Prop :=
  ∀ n, P3723630064453738793.a n = A014772 (n + 1)

end A014772

/-! ## A014772.P17764637658132365661

`A014494(2*n+1)*A014494(2*n+1)`
-/

namespace A014772.P17764637658132365661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014494 (2 * n + 1) * A014494 (2 * n + 1)

end

end A014772.P17764637658132365661

namespace A014772

/-- `A014494(2*n+1)*A014494(2*n+1)` -/
def P17764637658132365661.Spec : Prop :=
  ∀ n, P17764637658132365661.a n = A014772 (n + 1)

end A014772

/-! ## A014772.P4091040783282454000

`∑[A027603(4*n)]`
-/

namespace A014772.P4091040783282454000
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027603 (4 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A014772.P4091040783282454000

namespace A014772

/-- `∑[A027603(4*n)]` -/
def P4091040783282454000.Spec : Prop :=
  ∀ n, P4091040783282454000.a n = A014772 (n + 1)

end A014772

/-! ## A014772.P891334522415958240

`A207363(4*n+2)`
-/

namespace A014772.P891334522415958240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207363 (4 * n + 2)

end

end A014772.P891334522415958240

namespace A014772

/-- `A207363(4*n+2)` -/
def P891334522415958240.Spec : Prop :=
  ∀ n, P891334522415958240.a n = A014772 (n + 1)

end A014772

/-! ## A014772.P15207533662706318209

`A000537(4*n+3)`
-/

namespace A014772.P15207533662706318209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000537 (4 * n + 3)

end

end A014772.P15207533662706318209

namespace A014772

/-- `A000537(4*n+3)` -/
def P15207533662706318209.Spec : Prop :=
  ∀ n, P15207533662706318209.a n = A014772 (n + 1)

end A014772

/-! ## A014772.P18282064061035058837

`sqrt(A059977(4*n+2))`
-/

namespace A014772.P18282064061035058837
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A059977 (4 * n + 2) : ℝ)

end

end A014772.P18282064061035058837

namespace A014772

/-- `sqrt(A059977(4*n+2))` -/
def P18282064061035058837.Spec : Prop :=
  ∀ n, P18282064061035058837.a n = (A014772 (n + 1) : ℝ)

end A014772

/-! ## A014772.P2438587286160571697

`A250813(3*n+n+1)`
-/

namespace A014772.P2438587286160571697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250813 (3 * n + (n + 1))

end

end A014772.P2438587286160571697

namespace A014772

/-- `A250813(3*n+n+1)` -/
def P2438587286160571697.Spec : Prop :=
  ∀ n, P2438587286160571697.a n = A014772 (n + 1)

end A014772

/-! ## A014772.P903601260381344185

`∩[A207363(n+1), A014738(n)]`
-/

namespace A014772.P903601260381344185
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207363 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014738 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A014772.P903601260381344185

namespace A014772

/-- `∩[A207363(n+1), A014738(n)]` -/
def P903601260381344185.Spec : Prop :=
  ∀ n, (P903601260381344185.a n : ℤ) = A014772 (n + 1)

end A014772

/-! ## A014772.P12735865635974475160

`A059403(A004771(n))`
-/

namespace A014772.P12735865635974475160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059403 (A004771 n).toNat

end

end A014772.P12735865635974475160

namespace A014772

/-- `A059403(A004771(n))` -/
def P12735865635974475160.Spec : Prop :=
  ∀ n, P12735865635974475160.a n = A014772 (n + 1)

end A014772

/-!
# A014773: Squares of odd heptagonal numbers.

The programs for A014773, the canonical program `A014773.P6939107552307873484` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A014773 has offset 1).

The definition of A014773 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A014773.P6939107552307873484

`A014637(n)²`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A014773

/-- `A014637(n)²` -/
def P6939107552307873484.Spec : Prop :=
  ∀ n, P6939107552307873484.a n = A014773 (n + 1)

theorem P6939107552307873484.correct : P6939107552307873484.Spec := by
  intro n
  simp only [A014773, Nat.add_sub_cancel]

end A014773

/-! ## A014773.P7963214433456486651

`(2*A014632(n)-A014493(n+1))²`
-/

namespace A014773.P7963214433456486651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * A014632 n - A014493 (n + 1)) ^ 2

end

end A014773.P7963214433456486651

namespace A014773

/-- `(2*A014632(n)-A014493(n+1))²` -/
def P7963214433456486651.Spec : Prop :=
  ∀ n, P7963214433456486651.a n = A014773 (n + 1)

end A014773

/-! ## A014773.P9227806072220263342

`A000566(and(n, -2)+n+1)²`
-/

namespace A014773.P9227806072220263342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000566 (Int.land (n : ℤ) (-2) + (n + 1 : ℤ)).toNat ^ 2

end

end A014773.P9227806072220263342

namespace A014773

/-- `A000566(and(n, -2)+n+1)²` -/
def P9227806072220263342.Spec : Prop :=
  ∀ n, P9227806072220263342.a n = A014773 (n + 1)

end A014773

/-! ## A014773.P16838055866458122820

`A000566(record[and(2, n)+1+n])²`
-/

namespace A014773.P16838055866458122820
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 2 n + 1 + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000566 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) ^ 2

end

end A014773.P16838055866458122820

namespace A014773

/-- `A000566(record[and(2, n)+1+n])²` -/
def P16838055866458122820.Spec : Prop :=
  ∀ n, P16838055866458122820.a n = A014773 (n + 1)

end A014773

/-! ## A014773.P3818315593475394735

`A000566(Δ[A014848(n)])²`
-/

namespace A014773.P3818315593475394735
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014848 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000566 (f1 (n + 1) - f1 n).toNat ^ 2

end

end A014773.P3818315593475394735

namespace A014773

/-- `A000566(Δ[A014848(n)])²` -/
def P3818315593475394735.Spec : Prop :=
  ∀ n, P3818315593475394735.a n = A014773 (n + 1)

end A014773

/-! ## A014773.P16016670572173312363

`A000566(A042948(n)+1)²`
-/

namespace A014773.P16016670572173312363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000566 (A042948 n + 1).toNat ^ 2

end

end A014773.P16016670572173312363

namespace A014773

/-- `A000566(A042948(n)+1)²` -/
def P16016670572173312363.Spec : Prop :=
  ∀ n, P16016670572173312363.a n = A014773 (n + 1)

end A014773

/-! ## A014773.P18388718510455661890

`A000566(A042963(n+1))²`
-/

namespace A014773.P18388718510455661890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000566 (A042963 (n + 1)).toNat ^ 2

end

end A014773.P18388718510455661890

namespace A014773

/-- `A000566(A042963(n+1))²` -/
def P18388718510455661890.Spec : Prop :=
  ∀ n, P18388718510455661890.a n = A014773 (n + 1)

end A014773

/-! ## A014773.P16195655597937963727

`A000566(xor(1, A014601(n)))²`
-/

namespace A014773.P16195655597937963727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000566 (Int.xor 1 (A014601 n)).toNat ^ 2

end

end A014773.P16195655597937963727

namespace A014773

/-- `A000566(xor(1, A014601(n)))²` -/
def P16195655597937963727.Spec : Prop :=
  ∀ n, P16195655597937963727.a n = A014773 (n + 1)

end A014773

/-! ## A014773.P16339864024460757786

`A000566(A109613(n)+n)²`
-/

namespace A014773.P16339864024460757786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000566 (A109613 n + (n : ℤ)).toNat ^ 2

end

end A014773.P16339864024460757786

namespace A014773

/-- `A000566(A109613(n)+n)²` -/
def P16339864024460757786.Spec : Prop :=
  ∀ n, P16339864024460757786.a n = A014773 (n + 1)

end A014773

/-! ## A014773.P12345017427314687585

`A000566(A014601(n+1)-2)²`
-/

namespace A014773.P12345017427314687585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000566 (A014601 (n + 1) - 2).toNat ^ 2

end

end A014773.P12345017427314687585

namespace A014773

/-- `A000566(A014601(n+1)-2)²` -/
def P12345017427314687585.Spec : Prop :=
  ∀ n, P12345017427314687585.a n = A014773 (n + 1)

end A014773

/-! ## A014773.P11575363247787278039

`A000566(A080412(2*n)+1)²`
-/

namespace A014773.P11575363247787278039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000566 (A080412 (2 * n) + 1).toNat ^ 2

end

end A014773.P11575363247787278039

namespace A014773

/-- `A000566(A080412(2*n)+1)²` -/
def P11575363247787278039.Spec : Prop :=
  ∀ n, P11575363247787278039.a n = A014773 (n + 1)

end A014773

/-! ## A014773.P11320314382534281578

`A000566(A047241(n+1)-n)²`
-/

namespace A014773.P11320314382534281578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000566 (A047241 (n + 1) - (n : ℤ)).toNat ^ 2

end

end A014773.P11320314382534281578

namespace A014773

/-- `A000566(A047241(n+1)-n)²` -/
def P11320314382534281578.Spec : Prop :=
  ∀ n, P11320314382534281578.a n = A014773 (n + 1)

end A014773

/-! ## A014773.P7721495314289382569

`A000566(A047461(n+1)-2*n)²`
-/

namespace A014773.P7721495314289382569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000566 (A047461 (n + 1) - (2 * n : ℤ)).toNat ^ 2

end

end A014773.P7721495314289382569

namespace A014773

/-- `A000566(A047461(n+1)-2*n)²` -/
def P7721495314289382569.Spec : Prop :=
  ∀ n, P7721495314289382569.a n = A014773 (n + 1)

end A014773

/-! ## A014773.P6130840763339936005

`(A273982(2*n+1)-A014640(n))²`
-/

namespace A014773.P6130840763339936005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A273982 (2 * n + 1) - A014640 n) ^ 2

end

end A014773.P6130840763339936005

namespace A014773

/-- `(A273982(2*n+1)-A014640(n))²` -/
def P6130840763339936005.Spec : Prop :=
  ∀ n, P6130840763339936005.a n = A014773 (n + 1)

end A014773

/-! ## A014773.P15149553406370633596

`A085787(A047471(n+1))²`
-/

namespace A014773.P15149553406370633596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085787 (A047471 (n + 1)).toNat ^ 2

end

end A014773.P15149553406370633596

namespace A014773

/-- `A085787(A047471(n+1))²` -/
def P15149553406370633596.Spec : Prop :=
  ∀ n, P15149553406370633596.a n = A014773 (n + 1)

end A014773

/-!
# A014774: Inverse of 765th cyclotomic polynomial.

The programs for A014774, there is no canonical definition to state claims against.
-/

/-! ## A014774.P16203799837790201842

`A010892(n)*A015539(n)`
-/

namespace A014774.P16203799837790201842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010892 n * A015539 n

end

end A014774.P16203799837790201842

/-!
# A014775: Expansion of exp ( - x - (1/2)*x^2 - (1/6)*x^3).

The programs for A014775, there is no canonical definition to state claims against.
-/

/-! ## A014775.P17258398719037765750

`A295343(eq[A185012(n), A309896(n+3)])`
-/

namespace A014775.P17258398719037765750
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185012 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309896 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295343 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A014775.P17258398719037765750

/-!
# A014776: Inverse of 767th cyclotomic polynomial.

The programs for A014776, there is no canonical definition to state claims against.
-/

/-! ## A014776.P16893617967296861274

`A015966(A095274(n)+A060594(n+1))`
-/

namespace A014776.P16893617967296861274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015966 (A095274 n + A060594 (n + 1)).toNat

end

end A014776.P16893617967296861274

/-!
# A014777: Position of the start of the first occurrence of n after the decimal point in Pi = 3.14159265358979323846264338327950288...

The programs for A014777, there is no canonical definition to state claims against.
-/

/-! ## A014777.P15149905312095321452

`A256521(∑[n]+n)`
-/

namespace A014777.P15149905312095321452
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256521 (∑ j ∈ Finset.range (n + 1), f1 j + n)

end

end A014777.P15149905312095321452

/-! ## A014777.P16361282076312233618

`or(char[1], A256521(A000096(n)))`
-/

namespace A014777.P16361282076312233618
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A256521 (A000096 n).toNat)

end

end A014777.P16361282076312233618

/-! ## A014777.P4867259515502978601

`A256521(A000096(n))%A196657(n)`
-/

namespace A014777.P4867259515502978601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A256521 (A000096 n).toNat) (A196657 n)

end

end A014777.P4867259515502978601

/-! ## A014777.P9604322984459461448

`gcd(A176341(n), A256521(A000096(n)))`
-/

namespace A014777.P9604322984459461448
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A176341 n) (A256521 (A000096 n).toNat)

end

end A014777.P9604322984459461448

/-! ## A014777.P1661973093840624737

`∑{d}[A256521(A000096(n)), A000010(#)]`
-/

namespace A014777.P1661973093840624737
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256521 (A000096 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d

end

end A014777.P1661973093840624737

/-!
# A014778: Numbers k equal to the number of 1's in the decimal digits of all numbers <= k.

The programs for A014778, there is no canonical definition to state claims against.
-/

/-! ## A014778.P2330568577512232255

`record[A216400(A299483(n+1))]`
-/

namespace A014778.P2330568577512232255
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216400 (A299483 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A014778.P2330568577512232255

/-! ## A014778.P14442737739336141809

`record[A216400(A319847(n+1))]`
-/

namespace A014778.P14442737739336141809
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216400 (A319847 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A014778.P14442737739336141809

/-! ## A014778.P18262175472940428121

`record[A216400(A332266(n+1))]`
-/

namespace A014778.P18262175472940428121
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216400 (A332266 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A014778.P18262175472940428121

/-! ## A014778.P2313778639884834801

`A216400(n+1)%A101640(n+9)`
-/

namespace A014778.P2313778639884834801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A216400 (n + 1)) (A101640 (n + 9))

end

end A014778.P2313778639884834801

/-! ## A014778.P13246157328002951222

`A216400(n+1)+A000007(A017911(n))`
-/

namespace A014778.P13246157328002951222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216400 (n + 1) + A000007 (A017911 n).toNat

end

end A014778.P13246157328002951222

/-!
# A014779: Inverse of 770th cyclotomic polynomial.

The programs for A014779, there is no canonical definition to state claims against.
-/

/-! ## A014779.P9210084842495209153

`A014394(n)*A033999(n)`
-/

namespace A014779.P9210084842495209153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014394 n * A033999 n

end

end A014779.P9210084842495209153

/-!
# A014783: Triangle of numbers associated with Genocchi numbers.

The programs for A014783, there is no canonical definition to state claims against.
-/

/-! ## A014783.P9287110417346598763

`A014780(A118011(n+1))`
-/

namespace A014783.P9287110417346598763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014780 (A118011 (n + 1)).toNat

end

end A014783.P9287110417346598763

/-! ## A014783.P10581399081568472621

`A014780(A195437(n)+1)`
-/

namespace A014783.P10581399081568472621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014780 (A195437 n + 1).toNat

end

end A014783.P10581399081568472621

/-! ## A014783.P14430120339966915834

`A014780(∑[A035214(n)+1])`
-/

namespace A014783.P14430120339966915834
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035214 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014780 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A014783.P14430120339966915834

/-! ## A014783.P13655264286052681706

`A014780(A000037(2*(n+1)))`
-/

namespace A014783.P13655264286052681706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014780 (A000037 (2 * (n + 1))).toNat

end

end A014783.P13655264286052681706

/-! ## A014783.P361058397134636252

`A014780(A080036(n+1)+n)`
-/

namespace A014783.P361058397134636252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014780 (A080036 (n + 1) + (n : ℤ)).toNat

end

end A014783.P361058397134636252

/-! ## A014783.P15319282762590385483

`A014780(A014132(n+2)+n)`
-/

namespace A014783.P15319282762590385483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014780 (A014132 (n + 2) + (n : ℤ)).toNat

end

end A014783.P15319282762590385483

/-! ## A014783.P2589006893236862117

`A014782(A056847(2*(n+1))+2)`
-/

namespace A014783.P2589006893236862117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014782 (A056847 (2 * (n + 1)) + 2).toNat

end

end A014783.P2589006893236862117

/-! ## A014783.P14661422819807211792

`A014780(A002024(n+1)+2*(n+1))`
-/

namespace A014783.P14661422819807211792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014780 (A002024 (n + 1) + (2 * (n + 1) : ℤ)).toNat

end

end A014783.P14661422819807211792

/-!
# A014784: Triangle of numbers associated with Genocchi numbers.

The programs for A014784, there is no canonical definition to state claims against.
-/

/-! ## A014784.P4539630200635513416

`A376665(A059446(n))`
-/

namespace A014784.P4539630200635513416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376665 (A059446 n).toNat

end

end A014784.P4539630200635513416

/-! ## A014784.P16665495959701842022

`A388999(A298854(n))`
-/

namespace A014784.P16665495959701842022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A388999 (A298854 n).toNat

end

end A014784.P16665495959701842022

/-! ## A014784.P8904615110679152426

`A239218(A048601(n+1))`
-/

namespace A014784.P8904615110679152426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239218 (A048601 (n + 1)).toNat

end

end A014784.P8904615110679152426

/-! ## A014784.P6284160894832096222

`A088705(A061993(n))+A048601(n+1)`
-/

namespace A014784.P6284160894832096222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088705 (A061993 n).toNat + A048601 (n + 1)

end

end A014784.P6284160894832096222

/-! ## A014784.P4165879159434508957

`A196082(A048601(n+1))+A055642(n)`
-/

namespace A014784.P4165879159434508957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196082 (A048601 (n + 1)).toNat + A055642 n

end

end A014784.P4165879159434508957

/-!
# A014785: a(n) = Sum_{0<=k<=n} ceiling(k^2/n).

The programs for A014785, there is no canonical definition to state claims against.
-/

/-! ## A014785.P13671670481282164067

`A014811(n+1)+1+n`
-/

namespace A014785.P13671670481282164067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014811 (n + 1) + 1 + (n : ℤ)

end

end A014785.P13671670481282164067

/-! ## A014785.P8721031926450262405

`∑[n+1]-A344552(n+1)`
-/

namespace A014785.P8721031926450262405
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - A344552 (n + 1)

end

end A014785.P8721031926450262405

/-! ## A014785.P14244204104225215533

`A000096(n)+1-A344552(n+1)`
-/

namespace A014785.P14244204104225215533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000096 n + (1 - A344552 (n + 1))

end

end A014785.P14244204104225215533

/-! ## A014785.P14288045206601384178

`A000124(n)-A344552(n+1)+n`
-/

namespace A014785.P14288045206601384178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000124 n - A344552 (n + 1) + (n : ℤ)

end

end A014785.P14288045206601384178

/-! ## A014785.P15630191235905383564

`A014817(n+1)-A057918(n+1)+n`
-/

namespace A014785.P15630191235905383564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014817 (n + 1) - A057918 (n + 1) + (n : ℤ)

end

end A014785.P15630191235905383564

/-! ## A014785.P13001874480301584808

`A014817(n+1)-A000188(n+1)+1+n`
-/

namespace A014785.P13001874480301584808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014817 (n + 1) - A000188 (n + 1) + 1 + (n : ℤ)

end

end A014785.P13001874480301584808

/-! ## A014785.P10525617126185127048

`record[A328399(n)+A014811(A328399(n))]`
-/

namespace A014785.P10525617126185127048
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328399 n + A014811 (A328399 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A014785.P10525617126185127048

/-! ## A014785.P5685045363318815818

`record[A126759(n)+A014811(A126759(n))]`
-/

namespace A014785.P5685045363318815818
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126759 n + A014811 (A126759 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A014785.P5685045363318815818

/-! ## A014785.P12614310154645958998

`A280653(A000217(n+2))/8+1+n`
-/

namespace A014785.P12614310154645958998
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A280653 (A000217 (n + 2)).toNat : ℚ) / 8 + 1 + (n : ℚ)

end

end A014785.P12614310154645958998

/-!
# A014786: Inverse of 777th cyclotomic polynomial.

The programs for A014786, there is no canonical definition to state claims against.
-/

/-! ## A014786.P17896522285525234686

`(xor(1, n)-n)*A015563(n)`
-/

namespace A014786.P17896522285525234686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((Nat.xor 1 n : ℤ) - (n : ℤ)) * A015563 n

end

end A014786.P17896522285525234686

/-!
# A014787: Expansion of Jacobi theta constant (theta_2/2)^12.

The programs for A014787, there is no canonical definition to state claims against.
-/

/-! ## A014787.P12996430554136164616

`(A001160(2*n+3)-A000735(n+1))/256`
-/

namespace A014787.P12996430554136164616
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001160 (2 * n + 3) - A000735 (n + 1) : ℚ) / 256

end

end A014787.P12996430554136164616

/-! ## A014787.P3480522696937345052

`A286399(2*n+3)/8`
-/

namespace A014787.P3480522696937345052
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A286399 (2 * n + 3) : ℚ) / 8

end

end A014787.P3480522696937345052

/-! ## A014787.P635967654023775396

`A286180(A000217(n+12)+n)`
-/

namespace A014787.P635967654023775396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286180 (A000217 (n + 12) + (n : ℤ)).toNat

end

end A014787.P635967654023775396

/-! ## A014787.P5977748339633228800

`A286180(A167614(n+10)+A144396(n+4))`
-/

namespace A014787.P5977748339633228800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286180 (A167614 (n + 10) + A144396 (n + 4)).toNat

end

end A014787.P5977748339633228800

/-! ## A014787.P11922510843126267537

`A286180(A167499(n+8)+A008574(n+7))`
-/

namespace A014787.P11922510843126267537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286180 (A167499 (n + 8) + A008574 (n + 7)).toNat

end

end A014787.P11922510843126267537

/-! ## A014787.P18032526774232468753

`A286180(A133263(n+11)+A005843(n+5))`
-/

namespace A014787.P18032526774232468753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286180 (A133263 (n + 11) + A005843 (n + 5)).toNat

end

end A014787.P18032526774232468753

/-!
# A014788: Inverse of 779th cyclotomic polynomial.

The programs for A014788, there is no canonical definition to state claims against.
-/

/-! ## A014788.P17361337126226661194

`A015567(n)*A033999(n)`
-/

namespace A014788.P17361337126226661194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015567 n * A033999 n

end

end A014788.P17361337126226661194

/-!
# A014789: Inverse of 780th cyclotomic polynomial.

The programs for A014789, there is no canonical definition to state claims against.
-/

/-! ## A014789.P6486688554903461674

`A015179(A006368(n))`
-/

namespace A014789.P6486688554903461674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015179 (A006368 n).toNat

end

end A014789.P6486688554903461674

/-!
# A014790: Inverse of 781st cyclotomic polynomial.

The programs for A014790, there is no canonical definition to state claims against.
-/

/-! ## A014790.P9204806168618288833

`A015571(n)*A033999(n)`
-/

namespace A014790.P9204806168618288833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015571 n * A033999 n

end

end A014790.P9204806168618288833

/-!
# A014791: Inverse of 782nd cyclotomic polynomial.

The programs for A014791, there is no canonical definition to state claims against.
-/

/-! ## A014791.P8176012817371969513

`A014400(n)*A033999(n)`
-/

namespace A014791.P8176012817371969513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014400 n * A033999 n

end

end A014791.P8176012817371969513

/-!
# A014792: Squares of even heptagonal numbers.

The programs for A014792, the canonical program `A014792.P5188408009213786689` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A014792 has offset 0).

The definition of A014792 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A014792.P5188408009213786689

`A014640(n)²`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A014792

/-- `A014640(n)²` -/
def P5188408009213786689.Spec : Prop :=
  ∀ n, P5188408009213786689.a n = A014792 n

theorem P5188408009213786689.correct : P5188408009213786689.Spec := by
  intro n
  simp only [A014792]

end A014792

/-! ## A014792.P16057023751558635228

`A014640((n+n)/2)^2`
-/

namespace A014792.P16057023751558635228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014640 (SequenceMachineLib.roundAway ((n + n : ℚ) / 2)).toNat ^ 2

end

end A014792.P16057023751558635228

namespace A014792

/-- `A014640((n+n)/2)^2` -/
def P16057023751558635228.Spec : Prop :=
  ∀ n, P16057023751558635228.a n = A014792 n

end A014792

/-! ## A014792.P18076085374688689866

`A014640(n)*A014640(n%A005279(n+1))`
-/

namespace A014792.P18076085374688689866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014640 n * A014640 (Int.tmod (n : ℤ) (A005279 (n + 1))).toNat

end

end A014792.P18076085374688689866

namespace A014792

/-- `A014640(n)*A014640(n%A005279(n+1))` -/
def P18076085374688689866.Spec : Prop :=
  ∀ n, P18076085374688689866.a n = A014792 n

end A014792

/-! ## A014792.P3693127263414313655

`A000566(A014601(n))²`
-/

namespace A014792.P3693127263414313655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000566 (A014601 n).toNat ^ 2

end

end A014792.P3693127263414313655

namespace A014792

/-- `A000566(A014601(n))²` -/
def P3693127263414313655.Spec : Prop :=
  ∀ n, P3693127263414313655.a n = A014792 n

end A014792

/-! ## A014792.P17012122377197882276

`A000566(A042948(n+1)-1)²`
-/

namespace A014792.P17012122377197882276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000566 (A042948 (n + 1) - 1).toNat ^ 2

end

end A014792.P17012122377197882276

namespace A014792

/-- `A000566(A042948(n+1)-1)²` -/
def P17012122377197882276.Spec : Prop :=
  ∀ n, P17012122377197882276.a n = A014792 n

end A014792

/-! ## A014792.P12931253603241776361

`A000566(A042963(n+2)-2)²`
-/

namespace A014792.P12931253603241776361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000566 (A042963 (n + 2) - 2).toNat ^ 2

end

end A014792.P12931253603241776361

namespace A014792

/-- `A000566(A042963(n+2)-2)²` -/
def P12931253603241776361.Spec : Prop :=
  ∀ n, P12931253603241776361.a n = A014792 n

end A014792

/-! ## A014792.P7104226832871105774

`A000566(A047233(n+1)-n)²`
-/

namespace A014792.P7104226832871105774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000566 (A047233 (n + 1) - (n : ℤ)).toNat ^ 2

end

end A014792.P7104226832871105774

namespace A014792

/-- `A000566(A047233(n+1)-n)²` -/
def P7104226832871105774.Spec : Prop :=
  ∀ n, P7104226832871105774.a n = A014792 n

end A014792

/-! ## A014792.P1864531460090082602

`A000566(A007310(n+1)-(n+1))²`
-/

namespace A014792.P1864531460090082602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000566 (A007310 (n + 1) - (n + 1 : ℤ)).toNat ^ 2

end

end A014792.P1864531460090082602

namespace A014792

/-- `A000566(A007310(n+1)-(n+1))²` -/
def P1864531460090082602.Spec : Prop :=
  ∀ n, P1864531460090082602.a n = A014792 n

end A014792

/-! ## A014792.P8037881834269717322

`A000566(A003815(2*n))²`
-/

namespace A014792.P8037881834269717322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000566 (A003815 (2 * n)).toNat ^ 2

end

end A014792.P8037881834269717322

namespace A014792

/-- `A000566(A003815(2*n))²` -/
def P8037881834269717322.Spec : Prop :=
  ∀ n, P8037881834269717322.a n = A014792 n

end A014792

/-! ## A014792.P7183457141797172580

`(A273982(2*n+1)-A014637(n))²`
-/

namespace A014792.P7183457141797172580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A273982 (2 * n + 1) - A014637 n) ^ 2

end

end A014792.P7183457141797172580

namespace A014792

/-- `(A273982(2*n+1)-A014637(n))²` -/
def P7183457141797172580.Spec : Prop :=
  ∀ n, P7183457141797172580.a n = A014792 n

end A014792

/-!
# A014793: Squares of odd octagonal numbers.

The programs for A014793, the canonical program `A014793.P5355221106888417536` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A014793 has offset 0).

The definition of A014793 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A014793.P5355221106888417536

`(12*n²+8*n+1)²`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A014793

/-- `(12*n²+8*n+1)²` -/
def P5355221106888417536.Spec : Prop :=
  ∀ n, (P5355221106888417536.a n : ℤ) = A014793 n

theorem P5355221106888417536.correct : P5355221106888417536.Spec := by
  intro n
  simp only [A014793]

end A014793

/-! ## A014793.P15518699623406975191

`ceil(∑[a(n-1)+24]²)` with `a(0)=1, a(1)=20`

`ceil` is left out, it is the identity on integers.
-/

namespace A014793.P15518699623406975191
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 20] fun n f1 =>
  f1 (n - 1) + 24

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2

end

end A014793.P15518699623406975191

namespace A014793

/-- `ceil(∑[a(n-1)+24]²)` -/
def P15518699623406975191.Spec : Prop :=
  ∀ n, (P15518699623406975191.a n : ℤ) = A014793 n

end A014793

/-! ## A014793.P1151794744954949477

`or(1, A014641(n)²)`
-/

namespace A014793.P1151794744954949477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A014641 n ^ 2)

end

end A014793.P1151794744954949477

namespace A014793

/-- `or(1, A014641(n)²)` -/
def P1151794744954949477.Spec : Prop :=
  ∀ n, P1151794744954949477.a n = A014793 n

end A014793

/-! ## A014793.P8240047820569665706

`Δ[n²]²*A016922(n)`
-/

namespace A014793.P8240047820569665706
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((f1 (n + 1) : ℤ) - (f1 n : ℤ)) ^ 2 * A016922 n

end

end A014793.P8240047820569665706

namespace A014793

/-- `Δ[n²]²*A016922(n)` -/
def P8240047820569665706.Spec : Prop :=
  ∀ n, P8240047820569665706.a n = A014793 n

theorem P8240047820569665706.correct : P8240047820569665706.Spec := by
  intro n
  simp only [A014793, Nat.add_sub_cancel, A014793.P8240047820569665706.f1, A014793.P8240047820569665706.a, A014793.P5355221106888417536.a, A016922, A016922.P12735287873668454303.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A014793

/-! ## A014793.P15337164981259543223

`lcm(A016754(n), A016922(n))`
-/

namespace A014793.P15337164981259543223
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A016754 n) (A016922 n)

end

end A014793.P15337164981259543223

namespace A014793

/-- `lcm(A016754(n), A016922(n))` -/
def P15337164981259543223.Spec : Prop :=
  ∀ n, (P15337164981259543223.a n : ℤ) = A014793 n

end A014793

/-! ## A014793.P9894927914819495411

`A000567(comp[2*n])^2`
-/

namespace A014793.P9894927914819495411
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000567 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n) ^ 2

end

end A014793.P9894927914819495411

namespace A014793

/-- `A000567(comp[2*n])^2` -/
def P9894927914819495411.Spec : Prop :=
  ∀ n, P9894927914819495411.a n = A014793 n

end A014793

/-! ## A014793.P2384107430995235184

`or(1, A000567(2*n+1)²)`
-/

namespace A014793.P2384107430995235184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A000567 (2 * n + 1) ^ 2)

end

end A014793.P2384107430995235184

namespace A014793

/-- `or(1, A000567(2*n+1)²)` -/
def P2384107430995235184.Spec : Prop :=
  ∀ n, P2384107430995235184.a n = A014793 n

end A014793

/-! ## A014793.P10124421969886262629

`(2*n+1)*A100165(2*n+1)`
-/

namespace A014793.P10124421969886262629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n + 1 : ℤ) * A100165 (2 * n + 1)

end

end A014793.P10124421969886262629

namespace A014793

/-- `(2*n+1)*A100165(2*n+1)` -/
def P10124421969886262629.Spec : Prop :=
  ∀ n, P10124421969886262629.a n = A014793 n

theorem P10124421969886262629.correct : P10124421969886262629.Spec := by
  intro n
  simp only [A014793, Nat.add_sub_cancel, A014793.P10124421969886262629.a, A014793.P5355221106888417536.a, A100165, A100165.P5468383146734630604.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A014793

/-! ## A014793.P9985744030701862036

`A016754(n)*A016778(2*n)`
-/

namespace A014793.P9985744030701862036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016754 n * A016778 (2 * n)

end

end A014793.P9985744030701862036

namespace A014793

/-- `A016754(n)*A016778(2*n)` -/
def P9985744030701862036.Spec : Prop :=
  ∀ n, P9985744030701862036.a n = A014793 n

theorem P9985744030701862036.correct : P9985744030701862036.Spec := by
  intro n
  simp only [A014793, Nat.add_sub_cancel, A014793.P9985744030701862036.a, A014793.P5355221106888417536.a, A016754, A016754.P2987865549988322084.a, A016778, A016778.P16000663877604072744.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A014793

/-! ## A014793.P11261900323487222584

`A000290(2*n+1)*A016778(2*n)`
-/

namespace A014793.P11261900323487222584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 (2 * n + 1) * A016778 (2 * n)

end

end A014793.P11261900323487222584

namespace A014793

/-- `A000290(2*n+1)*A016778(2*n)` -/
def P11261900323487222584.Spec : Prop :=
  ∀ n, P11261900323487222584.a n = A014793 n

theorem P11261900323487222584.correct : P11261900323487222584.Spec := by
  intro n
  simp only [A014793, Nat.add_sub_cancel, A014793.P11261900323487222584.a, A014793.P5355221106888417536.a, A000290, A000290.P12206242496348924484.a, A016778, A016778.P16000663877604072744.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A014793

/-! ## A014793.P5288563976994012901

`A016777(2*n)*A100176(2*n+1)`
-/

namespace A014793.P5288563976994012901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016777 (2 * n) * A100176 (2 * n + 1)

end

end A014793.P5288563976994012901

namespace A014793

/-- `A016777(2*n)*A100176(2*n+1)` -/
def P5288563976994012901.Spec : Prop :=
  ∀ n, P5288563976994012901.a n = A014793 n

theorem P5288563976994012901.correct : P5288563976994012901.Spec := by
  intro n
  simp only [A014793, Nat.add_sub_cancel, A014793.P5288563976994012901.a, A014793.P5355221106888417536.a, A016777, A016777.P9931792138852554157.a, A100176, A100176.P16581623128881660207.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A014793

/-! ## A014793.P3957066791664718792

`A000290(2*n+1)*A104777(2*n+1)`
-/

namespace A014793.P3957066791664718792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 (2 * n + 1) * A104777 (2 * n + 1)

end

end A014793.P3957066791664718792

namespace A014793

/-- `A000290(2*n+1)*A104777(2*n+1)` -/
def P3957066791664718792.Spec : Prop :=
  ∀ n, P3957066791664718792.a n = A014793 n

end A014793

/-! ## A014793.P3218088200242132600

`A074155(2*n+1)*A074155(2*n+1)`
-/

namespace A014793.P3218088200242132600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074155 (2 * n + 1) * A074155 (2 * n + 1)

end

end A014793.P3218088200242132600

namespace A014793

/-- `A074155(2*n+1)*A074155(2*n+1)` -/
def P3218088200242132600.Spec : Prop :=
  ∀ n, P3218088200242132600.a n = A014793 n

end A014793

/-! ## A014793.P12166630534606948778

`A329404(2*n+1)*A329404(2*n+1)`
-/

namespace A014793.P12166630534606948778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329404 (2 * n + 1) * A329404 (2 * n + 1)

end

end A014793.P12166630534606948778

namespace A014793

/-- `A329404(2*n+1)*A329404(2*n+1)` -/
def P12166630534606948778.Spec : Prop :=
  ∀ n, P12166630534606948778.a n = A014793 n

end A014793

/-! ## A014793.P16496311059977544759

`A014641(n)²%A272133(2*n+3)`
-/

namespace A014793.P16496311059977544759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A014641 n ^ 2) (A272133 (2 * n + 3))

end

end A014793.P16496311059977544759

namespace A014793

/-- `A014641(n)²%A272133(2*n+3)` -/
def P16496311059977544759.Spec : Prop :=
  ∀ n, P16496311059977544759.a n = A014793 n

end A014793

/-! ## A014793.P12126275638301549248

`or(1, A014255(4*n)²)`
-/

namespace A014793.P12126275638301549248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A014255 (4 * n) ^ 2)

end

end A014793.P12126275638301549248

namespace A014793

/-- `or(1, A014255(4*n)²)` -/
def P12126275638301549248.Spec : Prop :=
  ∀ n, P12126275638301549248.a n = A014793 n

end A014793

/-! ## A014793.P4627916257932720126

`A212506(3*n+n+1)`
-/

namespace A014793.P4627916257932720126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212506 (3 * n + (n + 1))

end

end A014793.P4627916257932720126

namespace A014793

/-- `A212506(3*n+n+1)` -/
def P4627916257932720126.Spec : Prop :=
  ∀ n, P4627916257932720126.a n = A014793 n

end A014793

/-! ## A014793.P18292752434657266060

`A057524(12*n)`
-/

namespace A014793.P18292752434657266060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057524 (12 * n)

end

end A014793.P18292752434657266060

namespace A014793

/-- `A057524(12*n)` -/
def P18292752434657266060.Spec : Prop :=
  ∀ n, P18292752434657266060.a n = A014793 n

end A014793

/-! ## A014793.P15238714324736691364

`A218506(A103214(n))`
-/

namespace A014793.P15238714324736691364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218506 (A103214 n).toNat

end

end A014793.P15238714324736691364

namespace A014793

/-- `A218506(A103214(n))` -/
def P15238714324736691364.Spec : Prop :=
  ∀ n, P15238714324736691364.a n = A014793 n

end A014793

/-!
# A014794: Squares of even octagonal numbers.

The programs for A014794, the canonical program `A014794.P2843377247047508214` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A014794 has offset 0).

The definition of A014794 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A014794.P2843377247047508214

`16*n²*(3*n-1)²`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A014794

/-- `16*n²*(3*n-1)²` -/
def P2843377247047508214.Spec : Prop :=
  ∀ n, P2843377247047508214.a n = A014794 n

theorem P2843377247047508214.correct : P2843377247047508214.Spec := by
  intro n
  simp only [A014794]

end A014794

/-! ## A014794.P7263822038867473119

`(8*(C(n, 2)+n²))²`
-/

namespace A014794.P7263822038867473119
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (8 * (Nat.choose n 2 + n ^ 2)) ^ 2

end

end A014794.P7263822038867473119

namespace A014794

/-- `(8*(C(n, 2)+n²))²` -/
def P7263822038867473119.Spec : Prop :=
  ∀ n, (P7263822038867473119.a n : ℤ) = A014794 n

theorem P7263822038867473119.correct : P7263822038867473119.Spec := by
  intro n
  simp only [A014794, Nat.add_sub_cancel, A014794.P7263822038867473119.a, A014794.P2843377247047508214.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A014794

/-! ## A014794.P16436621570162526222

`A014642(n)²`
-/

namespace A014794.P16436621570162526222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014642 n ^ 2

end

end A014794.P16436621570162526222

namespace A014794

/-- `A014642(n)²` -/
def P16436621570162526222.Spec : Prop :=
  ∀ n, P16436621570162526222.a n = A014794 n

theorem P16436621570162526222.correct : P16436621570162526222.Spec := by
  intro n
  simp only [A014794, Nat.add_sub_cancel, A014794.P16436621570162526222.a, A014794.P2843377247047508214.a, A014642, A014642.P1230047363248524840.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A014794

/-! ## A014794.P16398672666988280904

`(2*A033579(n))²`
-/

namespace A014794.P16398672666988280904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * A033579 n) ^ 2

end

end A014794.P16398672666988280904

namespace A014794

/-- `(2*A033579(n))²` -/
def P16398672666988280904.Spec : Prop :=
  ∀ n, P16398672666988280904.a n = A014794 n

theorem P16398672666988280904.correct : P16398672666988280904.Spec := by
  intro n
  simp only [A014794, Nat.add_sub_cancel, A014794.P16398672666988280904.a, A014794.P2843377247047508214.a, A033579, A033579.P8592719016639374159.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A014794

/-! ## A014794.P3696211147375115642

`(4*A049450(n))²`
-/

namespace A014794.P3696211147375115642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (4 * A049450 n) ^ 2

end

end A014794.P3696211147375115642

namespace A014794

/-- `(4*A049450(n))²` -/
def P3696211147375115642.Spec : Prop :=
  ∀ n, P3696211147375115642.a n = A014794 n

theorem P3696211147375115642.correct : P3696211147375115642.Spec := by
  intro n
  simp only [A014794, Nat.add_sub_cancel, A014794.P3696211147375115642.a, A014794.P2843377247047508214.a, A049450, A049450.P1815257678583562472.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A014794

/-! ## A014794.P17739993554578276705

`(A396291(n)+n)²`
-/

namespace A014794.P17739993554578276705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A396291 n + (n : ℤ)) ^ 2

end

end A014794.P17739993554578276705

namespace A014794

/-- `(A396291(n)+n)²` -/
def P17739993554578276705.Spec : Prop :=
  ∀ n, P17739993554578276705.a n = A014794 n

theorem P17739993554578276705.correct : P17739993554578276705.Spec := by
  intro n
  simp only [A014794, Nat.add_sub_cancel, A014794.P17739993554578276705.a, A014794.P2843377247047508214.a, A396291, A396291.P2280103338649089632.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A014794

/-! ## A014794.P17870090741546556029

`(n-A062783(n))²`
-/

namespace A014794.P17870090741546556029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - A062783 n) ^ 2

end

end A014794.P17870090741546556029

namespace A014794

/-- `(n-A062783(n))²` -/
def P17870090741546556029.Spec : Prop :=
  ∀ n, P17870090741546556029.a n = A014794 n

theorem P17870090741546556029.correct : P17870090741546556029.Spec := by
  intro n
  simp only [A014794, Nat.add_sub_cancel, A014794.P17870090741546556029.a, A014794.P2843377247047508214.a, A062783, A062783.P15889295991207525073.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A014794

/-! ## A014794.P8228735263483598467

`(∑[n+1]-A081587(n))²`
-/

namespace A014794.P8228735263483598467
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - A081587 n) ^ 2

end

end A014794.P8228735263483598467

namespace A014794

/-- `(∑[n+1]-A081587(n))²` -/
def P8228735263483598467.Spec : Prop :=
  ∀ n, P8228735263483598467.a n = A014794 n

end A014794

/-! ## A014794.P17390756980425664434

`(n+1-A244802(n+1))²`
-/

namespace A014794.P17390756980425664434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1 : ℤ) - A244802 (n + 1)) ^ 2

end

end A014794.P17390756980425664434

namespace A014794

/-- `(n+1-A244802(n+1))²` -/
def P17390756980425664434.Spec : Prop :=
  ∀ n, P17390756980425664434.a n = A014794 n

theorem P17390756980425664434.correct : P17390756980425664434.Spec := by
  intro n
  simp only [A014794, Nat.add_sub_cancel, A014794.P17390756980425664434.a, A014794.P2843377247047508214.a, A244802, A244802.P1468068994303542896.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A014794

/-! ## A014794.P12254323870087852062

`A000567(2*n)²`
-/

namespace A014794.P12254323870087852062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000567 (2 * n) ^ 2

end

end A014794.P12254323870087852062

namespace A014794

/-- `A000567(2*n)²` -/
def P12254323870087852062.Spec : Prop :=
  ∀ n, P12254323870087852062.a n = A014794 n

theorem P12254323870087852062.correct : P12254323870087852062.Spec := by
  intro n
  simp only [A014794, Nat.add_sub_cancel, A014794.P12254323870087852062.a, A014794.P2843377247047508214.a, A000567, A000567.P17850767079432249295.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A014794

/-! ## A014794.P2414209928188587764

`record[(record[A001281(n)]*A025480(n))²]`
-/

namespace A014794.P2414209928188587764
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n) * A025480 n) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A014794.P2414209928188587764

namespace A014794

/-- `record[(record[A001281(n)]*A025480(n))²]` -/
def P2414209928188587764.Spec : Prop :=
  ∀ n, P2414209928188587764.a n = A014794 n

end A014794

/-! ## A014794.P4653896298952253339

`A319128(4*n)²`
-/

namespace A014794.P4653896298952253339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319128 (4 * n) ^ 2

end

end A014794.P4653896298952253339

namespace A014794

/-- `A319128(4*n)²` -/
def P4653896298952253339.Spec : Prop :=
  ∀ n, P4653896298952253339.a n = A014794 n

end A014794

/-! ## A014794.P9572692355883727581

`A174709(12*n)²`
-/

namespace A014794.P9572692355883727581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174709 (12 * n) ^ 2

end

end A014794.P9572692355883727581

namespace A014794

/-- `A174709(12*n)²` -/
def P9572692355883727581.Spec : Prop :=
  ∀ n, P9572692355883727581.a n = A014794 n

end A014794

/-! ## A014794.P8173848682484136635

`(n*(4-12*n))^ceil(atan(exp(n)))`
-/

namespace A014794.P8173848682484136635
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) * (4 - (12 * n : ℤ)) : ℚ) ^ (⌈Real.arctan (Real.exp (n : ℝ))⌉ : ℤ)

end

end A014794.P8173848682484136635

namespace A014794

/-- `(n*(4-12*n))^ceil(atan(exp(n)))` -/
def P8173848682484136635.Spec : Prop :=
  ∀ n, P8173848682484136635.a n = (A014794 n : ℚ)

end A014794

/-! ## A014794.P6667139499481760930

`(2*A279432(∑[n+1]))²`
-/

namespace A014794.P6667139499481760930
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * A279432 (∑ j ∈ Finset.range (n + 1), f1 j)) ^ 2

end

end A014794.P6667139499481760930

namespace A014794

/-- `(2*A279432(∑[n+1]))²` -/
def P6667139499481760930.Spec : Prop :=
  ∀ n, P6667139499481760930.a n = A014794 n

end A014794

/-!
# A014795: Squares of odd tetrahedral numbers.

The programs for A014795, the canonical program `A014795.P7148713119067802734` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A014795 has offset 0).

The definition of A014795 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A014795.P7148713119067802734

`((4*n+1)*(4*n+2)*(4*n+3)/6)²`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A014795

/-- `((4*n+1)*(4*n+2)*(4*n+3)/6)²` -/
def P7148713119067802734.Spec : Prop :=
  ∀ n, P7148713119067802734.a n = (A014795 n : ℚ)

end A014795

/-! ## A014795.P4096316134378946930

`record[C(xor(3, n), 3)²]`
-/

namespace A014795.P4096316134378946930
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (Nat.xor 3 n) 3 ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A014795.P4096316134378946930

namespace A014795

/-- `record[C(xor(3, n), 3)²]` -/
def P4096316134378946930.Spec : Prop :=
  ∀ n, (P4096316134378946930.a n : ℤ) = A014795 n

end A014795

/-! ## A014795.P17240984232967756063

`record[C(xor(3, n), 3)^2]`
-/

namespace A014795.P17240984232967756063
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (Nat.xor 3 n) 3 ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A014795.P17240984232967756063

namespace A014795

/-- `record[C(xor(3, n), 3)^2]` -/
def P17240984232967756063.Spec : Prop :=
  ∀ n, (P17240984232967756063.a n : ℤ) = A014795 n

end A014795

/-! ## A014795.P9271885074628842140

`A015219(n)*A015219(n)`
-/

namespace A014795.P9271885074628842140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015219 n * A015219 n

end

end A014795.P9271885074628842140

namespace A014795

/-- `A015219(n)*A015219(n)` -/
def P9271885074628842140.Spec : Prop :=
  ∀ n, P9271885074628842140.a n = A014795 n

end A014795

/-! ## A014795.P13396701140190517462

`C(A004767(n), 3)²%A179645(n+1)`
-/

namespace A014795.P13396701140190517462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (Nat.choose (A004767 n).toNat 3 ^ 2 : ℤ) (A179645 (n + 1))

end

end A014795.P13396701140190517462

namespace A014795

/-- `C(A004767(n), 3)²%A179645(n+1)` -/
def P13396701140190517462.Spec : Prop :=
  ∀ n, P13396701140190517462.a n = A014795 n

end A014795

/-! ## A014795.P2896323510620788264

`A000447(2*n+1)*A000447(2*n+1)`
-/

namespace A014795.P2896323510620788264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000447 (2 * n + 1) * A000447 (2 * n + 1)

end

end A014795.P2896323510620788264

namespace A014795

/-- `A000447(2*n+1)*A000447(2*n+1)` -/
def P2896323510620788264.Spec : Prop :=
  ∀ n, P2896323510620788264.a n = A014795 n

end A014795

/-! ## A014795.P9027667716665799087

`A001249(4*n)`
-/

namespace A014795.P9027667716665799087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001249 (4 * n)

end

end A014795.P9027667716665799087

namespace A014795

/-- `A001249(4*n)` -/
def P9027667716665799087.Spec : Prop :=
  ∀ n, P9027667716665799087.a n = A014795 n

end A014795

/-! ## A014795.P14067557638173128520

`A331574(A017137(n))`
-/

namespace A014795.P14067557638173128520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331574 (A017137 n).toNat

end

end A014795.P14067557638173128520

namespace A014795

/-- `A331574(A017137(n))` -/
def P14067557638173128520.Spec : Prop :=
  ∀ n, P14067557638173128520.a n = A014795 n

end A014795

/-!
# A014796: Squares of even tetrahedral numbers (A015220).

The programs for A014796, the canonical program `A014796.P14216913093135967788` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A014796 has offset 0).

The definition of A014796 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A014796.P14216913093135967788

`A015220(n)²`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A014796

/-- `A015220(n)²` -/
def P14216913093135967788.Spec : Prop :=
  ∀ n, P14216913093135967788.a n = A014796 n

theorem P14216913093135967788.correct : P14216913093135967788.Spec := by
  intro n
  simp only [A014796]

end A014796

/-! ## A014796.P2908489854247567866

`C(floor(4*(n+2)/3), 3)²`
-/

namespace A014796.P2908489854247567866
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose ⌊4 * ((n + 2 : ℚ) / 3)⌋.toNat 3 ^ 2

end

end A014796.P2908489854247567866

namespace A014796

/-- `C(floor(4*(n+2)/3), 3)²` -/
def P2908489854247567866.Spec : Prop :=
  ∀ n, (P2908489854247567866.a n : ℤ) = A014796 n

end A014796

/-! ## A014796.P6645870310833842406

`C(comp[4*n+1]+2, 3)^2`
-/

namespace A014796.P6645870310833842406
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + 2) 3 ^ 2

end

end A014796.P6645870310833842406

namespace A014796

/-- `C(comp[4*n+1]+2, 3)^2` -/
def P6645870310833842406.Spec : Prop :=
  ∀ n, (P6645870310833842406.a n : ℤ) = A014796 n

end A014796

/-! ## A014796.P3032998187544478826

`record[C(n+3, 3)²*ceil(and(3, n)/3)]`
-/

namespace A014796.P3032998187544478826
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (n + 3) 3 ^ 2 : ℤ) * ⌈(Nat.land 3 n : ℚ) / 3⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A014796.P3032998187544478826

namespace A014796

/-- `record[C(n+3, 3)²*ceil(and(3, n)/3)]` -/
def P3032998187544478826.Spec : Prop :=
  ∀ n, P3032998187544478826.a n = A014796 n

end A014796

/-! ## A014796.P16963225238232872280

`∪[A002492(n), A267031(n)]²`
-/

namespace A014796.P16963225238232872280
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002492 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267031 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n ^ 2

end

end A014796.P16963225238232872280

namespace A014796

/-- `∪[A002492(n), A267031(n)]²` -/
def P16963225238232872280.Spec : Prop :=
  ∀ n, (P16963225238232872280.a n : ℤ) = A014796 n

end A014796

/-! ## A014796.P3936612867897636036

`A015220(n)*A015220(A028310(n))`
-/

namespace A014796.P3936612867897636036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015220 n * A015220 (A028310 n).toNat

end

end A014796.P3936612867897636036

namespace A014796

/-- `A015220(n)*A015220(A028310(n))` -/
def P3936612867897636036.Spec : Prop :=
  ∀ n, P3936612867897636036.a n = A014796 n

end A014796

/-! ## A014796.P18366348589250300088

`A000292(comp[4*n+1])²`
-/

namespace A014796.P18366348589250300088
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n + 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000292 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n) ^ 2

end

end A014796.P18366348589250300088

namespace A014796

/-- `A000292(comp[4*n+1])²` -/
def P18366348589250300088.Spec : Prop :=
  ∀ n, P18366348589250300088.a n = A014796 n

end A014796

/-! ## A014796.P2533334969977698899

`record[(A000292(n+1)*A166486(n))²]`
-/

namespace A014796.P2533334969977698899
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000292 (n + 1) * A166486 n) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A014796.P2533334969977698899

namespace A014796

/-- `record[(A000292(n+1)*A166486(n))²]` -/
def P2533334969977698899.Spec : Prop :=
  ∀ n, P2533334969977698899.a n = A014796 n

end A014796

/-! ## A014796.P1207154796418171087

`record[(A040669(n)%2*C(A028242(n+3), 3))²]`
-/

namespace A014796.P1207154796418171087
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.tmod (A040669 n) 2 * (Nat.choose (A028242 (n + 3)).toNat 3 : ℤ)) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A014796.P1207154796418171087

namespace A014796

/-- `record[(A040669(n)%2*C(A028242(n+3), 3))²]` -/
def P1207154796418171087.Spec : Prop :=
  ∀ n, P1207154796418171087.a n = A014796 n

end A014796

/-! ## A014796.P5862439823188265068

`∩[2*n, ∑[∑[n]]]²`
-/

namespace A014796.P5862439823188265068
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = x) n ^ 2

end

end A014796.P5862439823188265068

namespace A014796

/-- `∩[2*n, ∑[∑[n]]]²` -/
def P5862439823188265068.Spec : Prop :=
  ∀ n, (P5862439823188265068.a n : ℤ) = A014796 n

end A014796

/-!
# A014797: Squares of odd square pyramidal numbers.

The programs for A014797, the canonical program `A014797.P4579357030622814890` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A014797 has offset 0).

The definition of A014797 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A014797.P4579357030622814890

`A015221(n)²`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A014797

/-- `A015221(n)²` -/
def P4579357030622814890.Spec : Prop :=
  ∀ n, P4579357030622814890.a n = A014797 n

theorem P4579357030622814890.correct : P4579357030622814890.Spec := by
  intro n
  simp only [A014797]

end A014797

/-! ## A014797.P6647988501461309275

`record[∑[n²]^and(2, n+1)]`
-/

namespace A014797.P6647988501461309275
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f2 j) ^ Nat.land 2 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A014797.P6647988501461309275

namespace A014797

/-- `record[∑[n²]^and(2, n+1)]` -/
def P6647988501461309275.Spec : Prop :=
  ∀ n, (P6647988501461309275.a n : ℤ) = A014797 n

end A014797

/-! ## A014797.P13398300637936964454

`A000330(or(1, n)+n)²`
-/

namespace A014797.P13398300637936964454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000330 (Nat.lor 1 n + n) ^ 2

end

end A014797.P13398300637936964454

namespace A014797

/-- `A000330(or(1, n)+n)²` -/
def P13398300637936964454.Spec : Prop :=
  ∀ n, P13398300637936964454.a n = A014797 n

end A014797

/-! ## A014797.P13090812982865409793

`A271535(A042963(n+1))`
-/

namespace A014797.P13090812982865409793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271535 (A042963 (n + 1)).toNat

end

end A014797.P13090812982865409793

namespace A014797

/-- `A271535(A042963(n+1))` -/
def P13090812982865409793.Spec : Prop :=
  ∀ n, P13090812982865409793.a n = A014797 n

end A014797

/-! ## A014797.P10898478198178990714

`A000330(Δ[A014848(n)])²`
-/

namespace A014797.P10898478198178990714
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014848 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000330 (f1 (n + 1) - f1 n).toNat ^ 2

end

end A014797.P10898478198178990714

namespace A014797

/-- `A000330(Δ[A014848(n)])²` -/
def P10898478198178990714.Spec : Prop :=
  ∀ n, P10898478198178990714.a n = A014797 n

end A014797

/-! ## A014797.P5326704945240900537

`A000330(A042948(n)+1)²`
-/

namespace A014797.P5326704945240900537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000330 (A042948 n + 1).toNat ^ 2

end

end A014797.P5326704945240900537

namespace A014797

/-- `A000330(A042948(n)+1)²` -/
def P5326704945240900537.Spec : Prop :=
  ∀ n, P5326704945240900537.a n = A014797 n

end A014797

/-! ## A014797.P2908684824912742132

`A000330(A116966(2*n))²`
-/

namespace A014797.P2908684824912742132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000330 (A116966 (2 * n)).toNat ^ 2

end

end A014797.P2908684824912742132

namespace A014797

/-- `A000330(A116966(2*n))²` -/
def P2908684824912742132.Spec : Prop :=
  ∀ n, P2908684824912742132.a n = A014797 n

end A014797

/-! ## A014797.P6835122987173178822

`A000330(xor(1, A014601(n)))²`
-/

namespace A014797.P6835122987173178822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000330 (Int.xor 1 (A014601 n)).toNat ^ 2

end

end A014797.P6835122987173178822

namespace A014797

/-- `A000330(xor(1, A014601(n)))²` -/
def P6835122987173178822.Spec : Prop :=
  ∀ n, P6835122987173178822.a n = A014797 n

end A014797

/-! ## A014797.P9210297402836688614

`A000330(A109613(n)+n)²`
-/

namespace A014797.P9210297402836688614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000330 (A109613 n + (n : ℤ)).toNat ^ 2

end

end A014797.P9210297402836688614

namespace A014797

/-- `A000330(A109613(n)+n)²` -/
def P9210297402836688614.Spec : Prop :=
  ∀ n, P9210297402836688614.a n = A014797 n

end A014797

/-! ## A014797.P5911796758118966339

`A271535(A014601(n+1)-2)`
-/

namespace A014797.P5911796758118966339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271535 (A014601 (n + 1) - 2).toNat

end

end A014797.P5911796758118966339

namespace A014797

/-- `A271535(A014601(n+1)-2)` -/
def P5911796758118966339.Spec : Prop :=
  ∀ n, P5911796758118966339.a n = A014797 n

end A014797

/-! ## A014797.P7768946535272631831

`A271535(A154708(n+1)-2)`
-/

namespace A014797.P7768946535272631831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271535 (A154708 (n + 1) - 2).toNat

end

end A014797.P7768946535272631831

namespace A014797

/-- `A271535(A154708(n+1)-2)` -/
def P7768946535272631831.Spec : Prop :=
  ∀ n, P7768946535272631831.a n = A014797 n

end A014797

/-! ## A014797.P5825347607194855262

`A000330(∑[A176040(n)]-2)²`
-/

namespace A014797.P5825347607194855262
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176040 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000330 (∑ j ∈ Finset.range (n + 1), f1 j - 2).toNat ^ 2

end

end A014797.P5825347607194855262

namespace A014797

/-- `A000330(∑[A176040(n)]-2)²` -/
def P5825347607194855262.Spec : Prop :=
  ∀ n, P5825347607194855262.a n = A014797 n

end A014797

/-! ## A014797.P3821732094357635534

`A000330(record[A092486(n)-2])²`
-/

namespace A014797.P3821732094357635534
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092486 n - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000330 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat ^ 2

end

end A014797.P3821732094357635534

namespace A014797

/-- `A000330(record[A092486(n)-2])²` -/
def P3821732094357635534.Spec : Prop :=
  ∀ n, P3821732094357635534.a n = A014797 n

end A014797

/-! ## A014797.P3468329017175921018

`A000330(Δ[A000982(n)]+n)²`
-/

namespace A014797.P3468329017175921018
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000982 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000330 (f1 (n + 1) - f1 n + (n : ℤ)).toNat ^ 2

end

end A014797.P3468329017175921018

namespace A014797

/-- `A000330(Δ[A000982(n)]+n)²` -/
def P3468329017175921018.Spec : Prop :=
  ∀ n, P3468329017175921018.a n = A014797 n

end A014797

/-! ## A014797.P8753558201662123189

`A000330(A014601(n+1)-2)²`
-/

namespace A014797.P8753558201662123189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000330 (A014601 (n + 1) - 2).toNat ^ 2

end

end A014797.P8753558201662123189

namespace A014797

/-- `A000330(A014601(n+1)-2)²` -/
def P8753558201662123189.Spec : Prop :=
  ∀ n, P8753558201662123189.a n = A014797 n

end A014797

/-! ## A014797.P8725288703620003088

`A000330(A154708(n+1)-2)²`
-/

namespace A014797.P8725288703620003088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000330 (A154708 (n + 1) - 2).toNat ^ 2

end

end A014797.P8725288703620003088

namespace A014797

/-- `A000330(A154708(n+1)-2)²` -/
def P8725288703620003088.Spec : Prop :=
  ∀ n, P8725288703620003088.a n = A014797 n

end A014797

/-! ## A014797.P692641214777708848

`A000330(A080412(2*n)+1)²`
-/

namespace A014797.P692641214777708848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000330 (A080412 (2 * n) + 1).toNat ^ 2

end

end A014797.P692641214777708848

namespace A014797

/-- `A000330(A080412(2*n)+1)²` -/
def P692641214777708848.Spec : Prop :=
  ∀ n, P692641214777708848.a n = A014797 n

end A014797

/-! ## A014797.P2578370116060718550

`A000330(A284307(2*n+1))²`
-/

namespace A014797.P2578370116060718550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000330 (A284307 (2 * n + 1)).toNat ^ 2

end

end A014797.P2578370116060718550

namespace A014797

/-- `A000330(A284307(2*n+1))²` -/
def P2578370116060718550.Spec : Prop :=
  ∀ n, P2578370116060718550.a n = A014797 n

end A014797

/-! ## A014797.P11392119680850800548

`A000330(A047241(n+1)-n)²`
-/

namespace A014797.P11392119680850800548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000330 (A047241 (n + 1) - (n : ℤ)).toNat ^ 2

end

end A014797.P11392119680850800548

namespace A014797

/-- `A000330(A047241(n+1)-n)²` -/
def P11392119680850800548.Spec : Prop :=
  ∀ n, P11392119680850800548.a n = A014797 n

end A014797

/-! ## A014797.P15844314464350962793

`A000330(2*n+A000035(n+1))²`
-/

namespace A014797.P15844314464350962793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000330 ((2 * n : ℤ) + A000035 (n + 1)).toNat ^ 2

end

end A014797.P15844314464350962793

namespace A014797

/-- `A000330(2*n+A000035(n+1))²` -/
def P15844314464350962793.Spec : Prop :=
  ∀ n, P15844314464350962793.a n = A014797 n

end A014797

/-!
# A014798: Squares of even square pyramidal numbers.

The programs for A014798, the canonical program `A014798.P13163875346793599077` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A014798 has offset 0).

The definition of A014798 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A014798.P13163875346793599077

`A015222(n+1)²`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A014798

/-- `A015222(n+1)²` -/
def P13163875346793599077.Spec : Prop :=
  ∀ n, P13163875346793599077.a n = A014798 n

theorem P13163875346793599077.correct : P13163875346793599077.Spec := by
  intro n
  simp only [A014798]

end A014798

/-! ## A014798.P2337117612628241617

`A000330(record[xor(2, n)+1])²`
-/

namespace A014798.P2337117612628241617
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 2 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000330 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) ^ 2

end

end A014798.P2337117612628241617

namespace A014798

/-- `A000330(record[xor(2, n)+1])²` -/
def P2337117612628241617.Spec : Prop :=
  ∀ n, P2337117612628241617.a n = A014798 n

end A014798

/-! ## A014798.P18173932471259428355

`A000330(∑[4-a(n-1)])²` with `a(0)=3`
-/

namespace A014798.P18173932471259428355
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [3] fun n f1 =>
  4 - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000330 (∑ j ∈ Finset.range (n + 1), f1 j).toNat ^ 2

end

end A014798.P18173932471259428355

namespace A014798

/-- `A000330(∑[4-a(n-1)])²` -/
def P18173932471259428355.Spec : Prop :=
  ∀ n, P18173932471259428355.a n = A014798 n

end A014798

/-! ## A014798.P8344593233367884857

`A000330(∑[A176040(n)])²`
-/

namespace A014798.P8344593233367884857
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176040 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000330 (∑ j ∈ Finset.range (n + 1), f1 j).toNat ^ 2

end

end A014798.P8344593233367884857

namespace A014798

/-- `A000330(∑[A176040(n)])²` -/
def P8344593233367884857.Spec : Prop :=
  ∀ n, P8344593233367884857.a n = A014798 n

end A014798

/-! ## A014798.P6282850503260949213

`A000330(record[A092486(n)])²`
-/

namespace A014798.P6282850503260949213
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092486 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000330 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat ^ 2

end

end A014798.P6282850503260949213

namespace A014798

/-- `A000330(record[A092486(n)])²` -/
def P6282850503260949213.Spec : Prop :=
  ∀ n, P6282850503260949213.a n = A014798 n

end A014798

/-! ## A014798.P12613119991061678485

`A000330(A014601(n+1))²`
-/

namespace A014798.P12613119991061678485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000330 (A014601 (n + 1)).toNat ^ 2

end

end A014798.P12613119991061678485

namespace A014798

/-- `A000330(A014601(n+1))²` -/
def P12613119991061678485.Spec : Prop :=
  ∀ n, P12613119991061678485.a n = A014798 n

end A014798

/-! ## A014798.P16650689618166142814

`A000330(A154708(n+1))²`
-/

namespace A014798.P16650689618166142814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000330 (A154708 (n + 1)).toNat ^ 2

end

end A014798.P16650689618166142814

namespace A014798

/-- `A000330(A154708(n+1))²` -/
def P16650689618166142814.Spec : Prop :=
  ∀ n, P16650689618166142814.a n = A014798 n

end A014798

/-! ## A014798.P6052643084016268720

`A000330(lt[1, A136480(n)])²`
-/

namespace A014798.P6052643084016268720
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136480 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000330 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n) ^ 2

end

end A014798.P6052643084016268720

namespace A014798

/-- `A000330(lt[1, A136480(n)])²` -/
def P6052643084016268720.Spec : Prop :=
  ∀ n, P6052643084016268720.a n = A014798 n

end A014798

/-! ## A014798.P2459843545330838632

`A000330(∑[A010684(n+1)])²`
-/

namespace A014798.P2459843545330838632
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010684 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000330 (∑ j ∈ Finset.range (n + 1), f1 j).toNat ^ 2

end

end A014798.P2459843545330838632

namespace A014798

/-- `A000330(∑[A010684(n+1)])²` -/
def P2459843545330838632.Spec : Prop :=
  ∀ n, P2459843545330838632.a n = A014798 n

end A014798

/-! ## A014798.P16698426657485911920

`A000330(Δ[A014848(n)]+2)²`
-/

namespace A014798.P16698426657485911920
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014848 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000330 (f1 (n + 1) - f1 n + 2).toNat ^ 2

end

end A014798.P16698426657485911920

namespace A014798

/-- `A000330(Δ[A014848(n)]+2)²` -/
def P16698426657485911920.Spec : Prop :=
  ∀ n, P16698426657485911920.a n = A014798 n

end A014798

/-! ## A014798.P14369515308650225442

`A000330(A042963(n+1)+2)²`
-/

namespace A014798.P14369515308650225442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000330 (A042963 (n + 1) + 2).toNat ^ 2

end

end A014798.P14369515308650225442

namespace A014798

/-- `A000330(A042963(n+1)+2)²` -/
def P14369515308650225442.Spec : Prop :=
  ∀ n, P14369515308650225442.a n = A014798 n

end A014798

/-! ## A014798.P2639514620317616345

`A000330(A116966(2*n+1))²`
-/

namespace A014798.P2639514620317616345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000330 (A116966 (2 * n + 1)).toNat ^ 2

end

end A014798.P2639514620317616345

namespace A014798

/-- `A000330(A116966(2*n+1))²` -/
def P2639514620317616345.Spec : Prop :=
  ∀ n, P2639514620317616345.a n = A014798 n

end A014798

/-! ## A014798.P14173159625501852119

`A000330(A298364(2*(n+1)))²`
-/

namespace A014798.P14173159625501852119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000330 (A298364 (2 * (n + 1))).toNat ^ 2

end

end A014798.P14173159625501852119

namespace A014798

/-- `A000330(A298364(2*(n+1)))²` -/
def P14173159625501852119.Spec : Prop :=
  ∀ n, P14173159625501852119.a n = A014798 n

end A014798

/-! ## A014798.P218262320251076256

`A000330(A047270(n+1)-n)²`
-/

namespace A014798.P218262320251076256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000330 (A047270 (n + 1) - (n : ℤ)).toNat ^ 2

end

end A014798.P218262320251076256

namespace A014798

/-- `A000330(A047270(n+1)-n)²` -/
def P218262320251076256.Spec : Prop :=
  ∀ n, P218262320251076256.a n = A014798 n

end A014798

/-! ## A014798.P3590812924432910316

`A000330(A080412(2*n+1)+1)²`
-/

namespace A014798.P3590812924432910316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000330 (A080412 (2 * n + 1) + 1).toNat ^ 2

end

end A014798.P3590812924432910316

namespace A014798

/-- `A000330(A080412(2*n+1)+1)²` -/
def P3590812924432910316.Spec : Prop :=
  ∀ n, P3590812924432910316.a n = A014798 n

end A014798

/-! ## A014798.P5014977088542717990

`A000330(A007310(n+2)-(n+2))²`
-/

namespace A014798.P5014977088542717990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000330 (A007310 (n + 2) - (n + 2 : ℤ)).toNat ^ 2

end

end A014798.P5014977088542717990

namespace A014798

/-- `A000330(A007310(n+2)-(n+2))²` -/
def P5014977088542717990.Spec : Prop :=
  ∀ n, P5014977088542717990.a n = A014798 n

end A014798

/-! ## A014798.P1458799659388244478

`A271535(A014601(n+1))`
-/

namespace A014798.P1458799659388244478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271535 (A014601 (n + 1)).toNat

end

end A014798.P1458799659388244478

namespace A014798

/-- `A271535(A014601(n+1))` -/
def P1458799659388244478.Spec : Prop :=
  ∀ n, P1458799659388244478.a n = A014798 n

end A014798

/-! ## A014798.P4392912788641370353

`A271535(A154708(n+1))`
-/

namespace A014798.P4392912788641370353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271535 (A154708 (n + 1)).toNat

end

end A014798.P4392912788641370353

namespace A014798

/-- `A271535(A154708(n+1))` -/
def P4392912788641370353.Spec : Prop :=
  ∀ n, P4392912788641370353.a n = A014798 n

end A014798

/-! ## A014798.P11959501883081812111

`A271535(A042963(n+1)+2)`
-/

namespace A014798.P11959501883081812111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271535 (A042963 (n + 1) + 2).toNat

end

end A014798.P11959501883081812111

namespace A014798

/-- `A271535(A042963(n+1)+2)` -/
def P11959501883081812111.Spec : Prop :=
  ∀ n, P11959501883081812111.a n = A014798 n

end A014798

/-! ## A014798.P13468025526196983491

`A115391(A292576(A056699(2*n+1)))²`
-/

namespace A014798.P13468025526196983491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115391 (A292576 (A056699 (2 * n + 1)).toNat).toNat ^ 2

end

end A014798.P13468025526196983491

namespace A014798

/-- `A115391(A292576(A056699(2*n+1)))²` -/
def P13468025526196983491.Spec : Prop :=
  ∀ n, P13468025526196983491.a n = A014798 n

end A014798

/-!
# A014799: Squares of odd pentagonal pyramidal numbers.

The programs for A014799, the canonical program `A014799.P10410546948635018073` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A014799 has offset 0).

The definition of A014799 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A014799.P10410546948635018073

`(1+2*n)²*(1+4*n)^4`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A014799

/-- `(1+2*n)²*(1+4*n)^4` -/
def P10410546948635018073.Spec : Prop :=
  ∀ n, (P10410546948635018073.a n : ℤ) = A014799 n

theorem P10410546948635018073.correct : P10410546948635018073.Spec := by
  intro n
  simp only [A014799]

end A014799

/-! ## A014799.P7147875224532212165

`A015223(n)²`
-/

namespace A014799.P7147875224532212165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015223 n ^ 2

end

end A014799.P7147875224532212165

namespace A014799

/-- `A015223(n)²` -/
def P7147875224532212165.Spec : Prop :=
  ∀ n, P7147875224532212165.a n = A014799 n

theorem P7147875224532212165.correct : P7147875224532212165.Spec := by
  intro n
  simp only [A014799, Nat.add_sub_cancel, A014799.P7147875224532212165.a, A014799.P10410546948635018073.a, A015223, A015223.P4177858037070881700.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A014799

/-! ## A014799.P8889334379844649240

`((2*n+1)*Δ[C(2*n, 2)]²)²`
-/

namespace A014799.P8889334379844649240
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (2 * n) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((2 * n + 1 : ℤ) * ((f1 (n + 1) : ℤ) - (f1 n : ℤ)) ^ 2) ^ 2

end

end A014799.P8889334379844649240

namespace A014799

/-- `((2*n+1)*Δ[C(2*n, 2)]²)²` -/
def P8889334379844649240.Spec : Prop :=
  ∀ n, P8889334379844649240.a n = A014799 n

theorem P8889334379844649240.correct : P8889334379844649240.Spec := by
  intro n
  simp only [A014799, Nat.add_sub_cancel, A014799.P8889334379844649240.f1, A014799.P8889334379844649240.a, A014799.P10410546948635018073.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A014799

/-! ## A014799.P12264767713149660039

`lcm(A016754(n), A016816(n))`
-/

namespace A014799.P12264767713149660039
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A016754 n) (A016816 n)

end

end A014799.P12264767713149660039

namespace A014799

/-- `lcm(A016754(n), A016816(n))` -/
def P12264767713149660039.Spec : Prop :=
  ∀ n, (P12264767713149660039.a n : ℤ) = A014799 n

end A014799

/-! ## A014799.P12729963160704594328

`lcm(A016814(n)², A280059(n))`
-/

namespace A014799.P12729963160704594328
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A016814 n ^ 2) (A280059 n)

end

end A014799.P12729963160704594328

namespace A014799

/-- `lcm(A016814(n)², A280059(n))` -/
def P12729963160704594328.Spec : Prop :=
  ∀ n, (P12729963160704594328.a n : ℤ) = A014799 n

end A014799

/-! ## A014799.P11088183339545675322

`A014634(n)²²/A016754(n)`
-/

namespace A014799.P11088183339545675322
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A014634 n ^ 2) ^ 2 : ℚ) / (A016754 n : ℚ)

end

end A014799.P11088183339545675322

namespace A014799

/-- `A014634(n)²²/A016754(n)` -/
def P11088183339545675322.Spec : Prop :=
  ∀ n, P11088183339545675322.a n = (A014799 n : ℚ)

theorem P11088183339545675322.correct : P11088183339545675322.Spec := by
  intro n
  simp only [A014799, Nat.add_sub_cancel, A014799.P11088183339545675322.a, A014799.P10410546948635018073.a, A014634, A014634.P13834563675282914036.a, A016754, A016754.P2987865549988322084.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A014799

/-! ## A014799.P4821338754218774178

`A014771(n+1)²/A016754(n)`
-/

namespace A014799.P4821338754218774178
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A014771 (n + 1) ^ 2 : ℚ) / (A016754 n : ℚ)

end

end A014799.P4821338754218774178

namespace A014799

/-- `A014771(n+1)²/A016754(n)` -/
def P4821338754218774178.Spec : Prop :=
  ∀ n, P4821338754218774178.a n = (A014799 n : ℚ)

theorem P4821338754218774178.correct : P4821338754218774178.Spec := by
  intro n
  simp only [A014799, Nat.add_sub_cancel, A014799.P4821338754218774178.a, A014799.P10410546948635018073.a, A014771, A014771.P15166460962546886426.a, A016754, A016754.P2987865549988322084.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A014799

/-! ## A014799.P986015035199287633

`A139757(2*n)²`
-/

namespace A014799.P986015035199287633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139757 (2 * n) ^ 2

end

end A014799.P986015035199287633

namespace A014799

/-- `A139757(2*n)²` -/
def P986015035199287633.Spec : Prop :=
  ∀ n, P986015035199287633.a n = A014799 n

theorem P986015035199287633.correct : P986015035199287633.Spec := by
  intro n
  simp only [A014799, Nat.add_sub_cancel, A014799.P986015035199287633.a, A014799.P10410546948635018073.a, A139757, A139757.P12680836282204562874.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A014799

/-! ## A014799.P3677597835594324330

`A014493(2*n+1)²²/(2*n+1)²`
-/

namespace A014799.P3677597835594324330
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A014493 (2 * n + 1) ^ 2) ^ 2 : ℚ) / ((2 * n + 1) ^ 2 : ℚ)

end

end A014799.P3677597835594324330

namespace A014799

/-- `A014493(2*n+1)²²/(2*n+1)²` -/
def P3677597835594324330.Spec : Prop :=
  ∀ n, P3677597835594324330.a n = (A014799 n : ℚ)

end A014799

/-! ## A014799.P8917075846532406701

`A002411(A016813(n))²`
-/

namespace A014799.P8917075846532406701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002411 (A016813 n).toNat ^ 2

end

end A014799.P8917075846532406701

namespace A014799

/-- `A002411(A016813(n))²` -/
def P8917075846532406701.Spec : Prop :=
  ∀ n, P8917075846532406701.a n = A014799 n

end A014799

/-! ## A014799.P12844738175543213489

`A086500(A109613(4*n))²`
-/

namespace A014799.P12844738175543213489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086500 (A109613 (4 * n)).toNat ^ 2

end

end A014799.P12844738175543213489

namespace A014799

/-- `A086500(A109613(4*n))²` -/
def P12844738175543213489.Spec : Prop :=
  ∀ n, P12844738175543213489.a n = A014799 n

end A014799

/-! ## A014799.P12847336656362040890

`A002411(A060747(2*n+1))²`
-/

namespace A014799.P12847336656362040890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002411 (A060747 (2 * n + 1)).toNat ^ 2

end

end A014799.P12847336656362040890

namespace A014799

/-- `A002411(A060747(2*n+1))²` -/
def P12847336656362040890.Spec : Prop :=
  ∀ n, P12847336656362040890.a n = A014799 n

end A014799

