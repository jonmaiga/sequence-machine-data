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
import Seq.B000.C029
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C035
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C007
import Seq.B001.C009
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C005
import Seq.B002.C006
import Seq.B003.C000
import Seq.B003.C001
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
import Seq.B006.C002
import Seq.B007.C000
import Seq.B007.C001
import Seq.B008.C000
import Seq.B008.C001
import Seq.B009.C000
import Seq.B009.C001
import Seq.B010.C000
import Seq.B011.C000
import Seq.B011.C001
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
# A374100: Number of solutions to n^2 = x^2 + 3*x*y + y^2 with 0 < x < y.

The programs for A374100, the canonical program `A374100.P4752939942100127846` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A374100 has offset 0).

The definition of A374100 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 101 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A374100.P4752939942100127846

`∑{p}[n, val(#²-1, 5)]`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A374100

/-- `∑{p}[n, val(#²-1, 5)]` -/
def P4752939942100127846.Spec : Prop :=
  ∀ n, (P4752939942100127846.a n : ℤ) = A374100 n

theorem P4752939942100127846.correct : P4752939942100127846.Spec := by
  intro n
  simp only [A374100]

end A374100

/-! ## A374100.P1613460545339006387

`val(∏{p}[n, #²-1], 5)`
-/

namespace A374100.P1613460545339006387
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (∏ p ∈ Nat.primeFactors (f1 n), ((p ^ 2 : ℤ) - 1)).toNat 5

end

end A374100.P1613460545339006387

namespace A374100

/-- `val(∏{p}[n, #²-1], 5)` -/
def P1613460545339006387.Spec : Prop :=
  ∀ n, (P1613460545339006387.a n : ℤ) = A374100 n

end A374100

/-! ## A374100.P1713155452205372561

`∑{p}[n, (#²%5)%2]`
-/

namespace A374100.P1713155452205372561
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), p ^ 2 % 5 % 2

end

end A374100.P1713155452205372561

namespace A374100

/-- `∑{p}[n, (#²%5)%2]` -/
def P1713155452205372561.Spec : Prop :=
  ∀ n, (P1713155452205372561.a n : ℤ) = A374100 n

end A374100

/-! ## A374100.P17731243462025365101

`log2(A374276(n²))`
-/

namespace A374100.P17731243462025365101
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A374276 (n ^ 2) : ℝ)

end

end A374100.P17731243462025365101

namespace A374100

/-- `log2(A374276(n²))` -/
def P17731243462025365101.Spec : Prop :=
  ∀ n, P17731243462025365101.a n = (A374100 n : ℝ)

end A374100

/-! ## A374100.P14662849467848813839

`∑{p}[n, A374093(#)]`
-/

namespace A374100.P14662849467848813839
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), A374093 p

end

end A374100.P14662849467848813839

namespace A374100

/-- `∑{p}[n, A374093(#)]` -/
def P14662849467848813839.Spec : Prop :=
  ∀ n, P14662849467848813839.a n = A374100 n

end A374100

/-! ## A374100.P10798476385739817247

`A374089(n²)/2`
-/

namespace A374100.P10798476385739817247
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A374089 (n ^ 2) : ℚ) / 2

end

end A374100.P10798476385739817247

namespace A374100

/-- `A374089(n²)/2` -/
def P10798476385739817247.Spec : Prop :=
  ∀ n, P10798476385739817247.a n = (A374100 n : ℚ)

end A374100

/-! ## A374100.P5919653841372272477

`char[A065126(n+1)]`
-/

namespace A374100.P5919653841372272477
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065126 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A374100.P5919653841372272477

namespace A374100

/-- `char[A065126(n+1)]` -/
def P5919653841372272477.Spec : Prop :=
  ∀ n, (P5919653841372272477.a n : ℤ) = A374100 n

end A374100

/-! ## A374100.P15198884852625174643

`A374276(n*n)-1`
-/

namespace A374100.P15198884852625174643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374276 (n * n) - 1

end

end A374100.P15198884852625174643

namespace A374100

/-- `A374276(n*n)-1` -/
def P15198884852625174643.Spec : Prop :=
  ∀ n, P15198884852625174643.a n = A374100 n

end A374100

/-! ## A374100.P915562901152918655

`A374093(A109375(n))`
-/

namespace A374100.P915562901152918655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374093 (A109375 n).toNat

end

end A374100.P915562901152918655

namespace A374100

/-- `A374093(A109375(n))` -/
def P915562901152918655.Spec : Prop :=
  ∀ n, P915562901152918655.a n = A374100 n

end A374100

/-!
# A374101: Numbers k such that k and k+2 are both self numbers (A003052).

The programs for A374101, there is no canonical definition to state claims against.
-/

/-! ## A374101.P13721874683949706568

`A382380(n+1)-2`
-/

namespace A374101.P13721874683949706568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382380 (n + 1) - 2

end

end A374101.P13721874683949706568

/-! ## A374101.P5490189214931619661

`∩[A003052(n+1)-2, A003052(n+1)]`
-/

namespace A374101.P5490189214931619661
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003052 (n + 1) - 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003052 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A374101.P5490189214931619661

/-! ## A374101.P2863201827624236893

`∩[a(n-1)+A163139(n)+1, A163128(n+1)+1+n]` with `a(0)=0, a(1)=1`
-/

namespace A374101.P2863201827624236893
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n f1 =>
  f1 (n - 1) + (A163139 n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163128 (n + 1) + 1 + (n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A374101.P2863201827624236893

/-! ## A374101.P13271959286464166972

`A023444(A382380(n+1))`
-/

namespace A374101.P13271959286464166972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023444 (A382380 (n + 1)).toNat

end

end A374101.P13271959286464166972

/-! ## A374101.P7982038003769861992

`∩[A003052(n+1), A289207(A003052(n+1))]`
-/

namespace A374101.P7982038003769861992
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003052 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289207 (A003052 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A374101.P7982038003769861992

/-!
# A374102: Prime binary self (or Colombian) numbers: primes not expressible as the sum of an integer and its binary weight.

The programs for A374102, the canonical program `A374102.P10809450866151071324` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A374102 has offset 1).

The definition of A374102 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 976 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A374102.P10809450866151071324

`p?[A010061(n+1)]`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A374102

/-- `p?[A010061(n+1)]` -/
def P10809450866151071324.Spec : Prop :=
  ∀ n, P10809450866151071324.a n = A374102 (n + 1)

theorem P10809450866151071324.correct : P10809450866151071324.Spec := by
  intro n
  simp only [A374102, Nat.add_sub_cancel]

end A374102

/-! ## A374102.P2873540250648147060

`filter[A010061(n+1), A010051(#)]`
-/

namespace A374102.P2873540250648147060
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010061 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A374102.P2873540250648147060

namespace A374102

/-- `filter[A010061(n+1), A010051(#)]` -/
def P2873540250648147060.Spec : Prop :=
  ∀ n, P2873540250648147060.a n = A374102 (n + 1)

end A374102

/-! ## A374102.P12642811427504110514

`∩[A000040(n+1), A010061(n+1)]`
-/

namespace A374102.P12642811427504110514
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010061 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A374102.P12642811427504110514

namespace A374102

/-- `∩[A000040(n+1), A010061(n+1)]` -/
def P12642811427504110514.Spec : Prop :=
  ∀ n, (P12642811427504110514.a n : ℤ) = A374102 (n + 1)

end A374102

/-! ## A374102.P9269280655403683316

`∩[A004139(n+1), A010061(n+1)]`
-/

namespace A374102.P9269280655403683316
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004139 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010061 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A374102.P9269280655403683316

namespace A374102

/-- `∩[A004139(n+1), A010061(n+1)]` -/
def P9269280655403683316.Spec : Prop :=
  ∀ n, (P9269280655403683316.a n : ℤ) = A374102 (n + 1)

end A374102

/-! ## A374102.P2671498378491570773

`∩[A010061(n+1), A045319(n+1)]`
-/

namespace A374102.P2671498378491570773
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010061 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A374102.P2671498378491570773

namespace A374102

/-- `∩[A010061(n+1), A045319(n+1)]` -/
def P2671498378491570773.Spec : Prop :=
  ∀ n, (P2671498378491570773.a n : ℤ) = A374102 (n + 1)

end A374102

/-! ## A374102.P12214026453453888447

`∩[A010061(n+1), A045344(n+1)]`
-/

namespace A374102.P12214026453453888447
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010061 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045344 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A374102.P12214026453453888447

namespace A374102

/-- `∩[A010061(n+1), A045344(n+1)]` -/
def P12214026453453888447.Spec : Prop :=
  ∀ n, (P12214026453453888447.a n : ℤ) = A374102 (n + 1)

end A374102

/-! ## A374102.P2560421272354062570

`∩[A010061(n+1), A065091(n+1)]`
-/

namespace A374102.P2560421272354062570
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010061 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A374102.P2560421272354062570

namespace A374102

/-- `∩[A010061(n+1), A065091(n+1)]` -/
def P2560421272354062570.Spec : Prop :=
  ∀ n, (P2560421272354062570.a n : ℤ) = A374102 (n + 1)

end A374102

/-! ## A374102.P18099486939564090897

`∩[A010061(n+1), A065396(n+1)]`
-/

namespace A374102.P18099486939564090897
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010061 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065396 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A374102.P18099486939564090897

namespace A374102

/-- `∩[A010061(n+1), A065396(n+1)]` -/
def P18099486939564090897.Spec : Prop :=
  ∀ n, (P18099486939564090897.a n : ℤ) = A374102 (n + 1)

end A374102

/-! ## A374102.P15372681507315468621

`∩[A010061(n+1), A071621(n+1)]`
-/

namespace A374102.P15372681507315468621
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010061 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071621 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A374102.P15372681507315468621

namespace A374102

/-- `∩[A010061(n+1), A071621(n+1)]` -/
def P15372681507315468621.Spec : Prop :=
  ∀ n, (P15372681507315468621.a n : ℤ) = A374102 (n + 1)

end A374102

/-! ## A374102.P16559784792352626492

`∩[A010061(n+1), A083249(n+1)]`
-/

namespace A374102.P16559784792352626492
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010061 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083249 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A374102.P16559784792352626492

namespace A374102

/-- `∩[A010061(n+1), A083249(n+1)]` -/
def P16559784792352626492.Spec : Prop :=
  ∀ n, (P16559784792352626492.a n : ℤ) = A374102 (n + 1)

end A374102

/-! ## A374102.P12190471396571319602

`∩[A010061(n+1), A106118(n+1)]`
-/

namespace A374102.P12190471396571319602
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010061 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106118 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A374102.P12190471396571319602

namespace A374102

/-- `∩[A010061(n+1), A106118(n+1)]` -/
def P12190471396571319602.Spec : Prop :=
  ∀ n, (P12190471396571319602.a n : ℤ) = A374102 (n + 1)

end A374102

/-! ## A374102.P5368445079469213956

`∩[A010061(n+1), A108719(n+1)]`
-/

namespace A374102.P5368445079469213956
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010061 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108719 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A374102.P5368445079469213956

namespace A374102

/-- `∩[A010061(n+1), A108719(n+1)]` -/
def P5368445079469213956.Spec : Prop :=
  ∀ n, (P5368445079469213956.a n : ℤ) = A374102 (n + 1)

end A374102

/-! ## A374102.P13563529355651304752

`∩[A162788(n+1), A010061(n+1)]`
-/

namespace A374102.P13563529355651304752
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162788 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010061 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A374102.P13563529355651304752

namespace A374102

/-- `∩[A162788(n+1), A010061(n+1)]` -/
def P13563529355651304752.Spec : Prop :=
  ∀ n, (P13563529355651304752.a n : ℤ) = A374102 (n + 1)

end A374102

/-! ## A374102.P165007465599608406

`eq[A175126(n), A227643(n)]`
-/

namespace A374102.P165007465599608406
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175126 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227643 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A374102.P165007465599608406

namespace A374102

/-- `eq[A175126(n), A227643(n)]` -/
def P165007465599608406.Spec : Prop :=
  ∀ n, (P165007465599608406.a n : ℤ) = A374102 (n + 1)

end A374102

/-! ## A374102.P6455195961351789113

`filter[A010061(n+1), A171387(#)]`
-/

namespace A374102.P6455195961351789113
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010061 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A171387 (f1 j).toNat = 1) n)

end

end A374102.P6455195961351789113

namespace A374102

/-- `filter[A010061(n+1), A171387(#)]` -/
def P6455195961351789113.Spec : Prop :=
  ∀ n, P6455195961351789113.a n = A374102 (n + 1)

end A374102

/-! ## A374102.P2025713637179129192

`filter[A010061(n+2), A080339(#)]`
-/

namespace A374102.P2025713637179129192
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010061 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A080339 (f1 j).toNat = 1) n)

end

end A374102.P2025713637179129192

namespace A374102

/-- `filter[A010061(n+2), A080339(#)]` -/
def P2025713637179129192.Spec : Prop :=
  ∀ n, P2025713637179129192.a n = A374102 (n + 1)

end A374102

/-! ## A374102.P761777665092321934

`filter[A010061(n+2), A080545(#)]`
-/

namespace A374102.P761777665092321934
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010061 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A080545 (f1 j).toNat = 1) n)

end

end A374102.P761777665092321934

namespace A374102

/-- `filter[A010061(n+2), A080545(#)]` -/
def P761777665092321934.Spec : Prop :=
  ∀ n, P761777665092321934.a n = A374102 (n + 1)

end A374102

/-! ## A374102.P933961522348527387

`p?[n-A228086(n)²]`
-/

namespace A374102.P933961522348527387
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A228086 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A374102.P933961522348527387

namespace A374102

/-- `p?[n-A228086(n)²]` -/
def P933961522348527387.Spec : Prop :=
  ∀ n, P933961522348527387.a n = A374102 (n + 1)

end A374102

/-! ## A374102.P15147699837876429910

`p?[n-A228087(n)²]`
-/

namespace A374102.P15147699837876429910
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A228087 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A374102.P15147699837876429910

namespace A374102

/-- `p?[n-A228087(n)²]` -/
def P15147699837876429910.Spec : Prop :=
  ∀ n, P15147699837876429910.a n = A374102 (n + 1)

end A374102

/-! ## A374102.P10587638298873390283

`eq[A007920(n), A228086(n)]`
-/

namespace A374102.P10587638298873390283
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007920 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228086 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A374102.P10587638298873390283

namespace A374102

/-- `eq[A007920(n), A228086(n)]` -/
def P10587638298873390283.Spec : Prop :=
  ∀ n, (P10587638298873390283.a n : ℤ) = A374102 (n + 1)

end A374102

/-!
# A374103: Numbers k such that k and k+2 are both prime binary self (or Colombian) numbers (A374102).

The programs for A374103, the canonical program `A374103.P10994597095959919858` is in `Seq.B002.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A374103 has offset 1).

The definition of A374103 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 435 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A374103.P10994597095959919858

`∩[A374102(n+1)-2, A374102(n+1)]`

The canonical program, it is in `Seq.B002.C006`.
-/

namespace A374103

/-- `∩[A374102(n+1)-2, A374102(n+1)]` -/
def P10994597095959919858.Spec : Prop :=
  ∀ n, (P10994597095959919858.a n : ℤ) = A374103 (n + 1)

theorem P10994597095959919858.correct : P10994597095959919858.Spec := by
  intro n
  simp only [A374103, Nat.add_sub_cancel]

end A374103

/-! ## A374103.P2258166841509143922

`∩[A339216(n+1), A087693(n)]`
-/

namespace A374103.P2258166841509143922
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339216 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087693 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A374103.P2258166841509143922

namespace A374103

/-- `∩[A339216(n+1), A087693(n)]` -/
def P2258166841509143922.Spec : Prop :=
  ∀ n, (P2258166841509143922.a n : ℤ) = A374103 (n + 1)

end A374103

/-! ## A374103.P6035129418389965263

`∩[A001359(n+1), A339216(n+1)]`
-/

namespace A374103.P6035129418389965263
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001359 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339216 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A374103.P6035129418389965263

namespace A374103

/-- `∩[A001359(n+1), A339216(n+1)]` -/
def P6035129418389965263.Spec : Prop :=
  ∀ n, (P6035129418389965263.a n : ℤ) = A374103 (n + 1)

end A374103

/-! ## A374103.P14691429910535877564

`∩[A111166(n+1), A339216(n+1)]`
-/

namespace A374103.P14691429910535877564
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111166 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339216 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A374103.P14691429910535877564

namespace A374103

/-- `∩[A111166(n+1), A339216(n+1)]` -/
def P14691429910535877564.Spec : Prop :=
  ∀ n, (P14691429910535877564.a n : ℤ) = A374103 (n + 1)

end A374103

/-! ## A374103.P13341492142579299225

`∩[A124588(n+1), A339216(n+1)]`
-/

namespace A374103.P13341492142579299225
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124588 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339216 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A374103.P13341492142579299225

namespace A374103

/-- `∩[A124588(n+1), A339216(n+1)]` -/
def P13341492142579299225.Spec : Prop :=
  ∀ n, (P13341492142579299225.a n : ℤ) = A374103 (n + 1)

end A374103

/-! ## A374103.P6663379655401558469

`∩[A126193(n+1), A339216(n+1)]`
-/

namespace A374103.P6663379655401558469
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126193 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339216 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A374103.P6663379655401558469

namespace A374103

/-- `∩[A126193(n+1), A339216(n+1)]` -/
def P6663379655401558469.Spec : Prop :=
  ∀ n, (P6663379655401558469.a n : ℤ) = A374103 (n + 1)

end A374103

/-! ## A374103.P18438570963714136343

`∩[A181747(n+1), A339216(n+1)]`
-/

namespace A374103.P18438570963714136343
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181747 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339216 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A374103.P18438570963714136343

namespace A374103

/-- `∩[A181747(n+1), A339216(n+1)]` -/
def P18438570963714136343.Spec : Prop :=
  ∀ n, (P18438570963714136343.a n : ℤ) = A374103 (n + 1)

end A374103

/-! ## A374103.P17441489557290452497

`∩[A238528(n+1), A339216(n+1)]`
-/

namespace A374103.P17441489557290452497
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238528 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339216 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A374103.P17441489557290452497

namespace A374103

/-- `∩[A238528(n+1), A339216(n+1)]` -/
def P17441489557290452497.Spec : Prop :=
  ∀ n, (P17441489557290452497.a n : ℤ) = A374103 (n + 1)

end A374103

/-!
# A374104: a(n) = A075860(A075860(n) + 2) + 2.

The programs for A374104, there is no canonical definition to state claims against.
-/

/-! ## A374104.P3493281453955228219

`A075860(A075860(n+1)+2)+2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A374104.P3493281453955228219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075860 (A075860 (n + 1) + 2).toNat + 2

end

end A374104.P3493281453955228219

/-!
# A374105: Numbers k such that (9^k + 3^k + 1)/13 is prime.

The programs for A374105, there is no canonical definition to state claims against.
-/

/-! ## A374105.P3900460970667658928

`A162575(A107241(n+1))`
-/

namespace A374105.P3900460970667658928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162575 (A107241 (n + 1)).toNat

end

end A374105.P3900460970667658928

/-!
# A374106: a(n) = gcd(A113177(n), A328845(n)), where A113177 is fully additive with a(p) = Fibonacci(p) and A328845 is the first Fibonacci-based variant of the arithmetic derivative.

The programs for A374106, there is no canonical definition to state claims against.
-/

/-! ## A374106.P3110137124904149547

`gcd(A113177(n+1), A328845(n+1))`
-/

namespace A374106.P3110137124904149547
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A113177 (n + 1)) (A328845 (n + 1))

end

end A374106.P3110137124904149547

/-!
# A374107: a(n) = 1 if A113177(n) and A328845(n) are both even, otherwise 0, where A113177 is fully additive with a(p) = Fibonacci(p) and A328845 is the first Fibonacci-based variant of the arithmetic derivative.

The programs for A374107, the canonical program `A374107.P2581602008718152725` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A374107 has offset 1).

The definition of A374107 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A373585, A374045, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A374107.P2581602008718152725

`A373585(n+1)*A374045(n+1)`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A374107

/-- `A373585(n+1)*A374045(n+1)` -/
def P2581602008718152725.Spec : Prop :=
  ∀ n, P2581602008718152725.a n = A374107 (n + 1)

theorem P2581602008718152725.correct : P2581602008718152725.Spec := by
  intro n
  simp only [A374107, Nat.add_sub_cancel]

end A374107

/-! ## A374107.P7927296393140453064

`and(A005286(n), A373585(n+1))`
-/

namespace A374107.P7927296393140453064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A005286 n) (A373585 (n + 1))

end

end A374107.P7927296393140453064

namespace A374107

/-- `and(A005286(n), A373585(n+1))` -/
def P7927296393140453064.Spec : Prop :=
  ∀ n, P7927296393140453064.a n = A374107 (n + 1)

end A374107

/-! ## A374107.P18253187770217598353

`and(A019303(n), A373585(n+1))`
-/

namespace A374107.P18253187770217598353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A019303 n) (A373585 (n + 1))

end

end A374107.P18253187770217598353

namespace A374107

/-- `and(A019303(n), A373585(n+1))` -/
def P18253187770217598353.Spec : Prop :=
  ∀ n, P18253187770217598353.a n = A374107 (n + 1)

end A374107

/-! ## A374107.P8346782095404493856

`and(A027378(n), A373585(n+1))`
-/

namespace A374107.P8346782095404493856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A027378 n) (A373585 (n + 1))

end

end A374107.P8346782095404493856

namespace A374107

/-- `and(A027378(n), A373585(n+1))` -/
def P8346782095404493856.Spec : Prop :=
  ∀ n, P8346782095404493856.a n = A374107 (n + 1)

end A374107

/-! ## A374107.P7464971262502264682

`and(A035104(n), A373585(n+1))`
-/

namespace A374107.P7464971262502264682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A035104 n) (A373585 (n + 1))

end

end A374107.P7464971262502264682

namespace A374107

/-- `and(A035104(n), A373585(n+1))` -/
def P7464971262502264682.Spec : Prop :=
  ∀ n, P7464971262502264682.a n = A374107 (n + 1)

end A374107

/-! ## A374107.P11656796297195146399

`and(A057979(n), A373585(n+1))`
-/

namespace A374107.P11656796297195146399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A057979 n) (A373585 (n + 1))

end

end A374107.P11656796297195146399

namespace A374107

/-- `and(A057979(n), A373585(n+1))` -/
def P11656796297195146399.Spec : Prop :=
  ∀ n, P11656796297195146399.a n = A374107 (n + 1)

end A374107

/-! ## A374107.P16209791797382564997

`and(A100119(n), A373585(n+1))`
-/

namespace A374107.P16209791797382564997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A100119 n) (A373585 (n + 1))

end

end A374107.P16209791797382564997

namespace A374107

/-- `and(A100119(n), A373585(n+1))` -/
def P16209791797382564997.Spec : Prop :=
  ∀ n, P16209791797382564997.a n = A374107 (n + 1)

end A374107

/-! ## A374107.P16743894401808491710

`and(A131379(n), A373585(n+1))`
-/

namespace A374107.P16743894401808491710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A131379 n) (A373585 (n + 1))

end

end A374107.P16743894401808491710

namespace A374107

/-- `and(A131379(n), A373585(n+1))` -/
def P16743894401808491710.Spec : Prop :=
  ∀ n, P16743894401808491710.a n = A374107 (n + 1)

end A374107

/-! ## A374107.P907699792930249930

`and(A136395(n), A373585(n+1))`
-/

namespace A374107.P907699792930249930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A136395 n) (A373585 (n + 1))

end

end A374107.P907699792930249930

namespace A374107

/-- `and(A136395(n), A373585(n+1))` -/
def P907699792930249930.Spec : Prop :=
  ∀ n, P907699792930249930.a n = A374107 (n + 1)

end A374107

/-! ## A374107.P11591893653944789515

`and(A160769(n), A373585(n+1))`
-/

namespace A374107.P11591893653944789515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A160769 n) (A373585 (n + 1))

end

end A374107.P11591893653944789515

namespace A374107

/-- `and(A160769(n), A373585(n+1))` -/
def P11591893653944789515.Spec : Prop :=
  ∀ n, P11591893653944789515.a n = A374107 (n + 1)

end A374107

/-! ## A374107.P2943563912471760764

`and(A160841(n), A373585(n+1))`
-/

namespace A374107.P2943563912471760764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A160841 n) (A373585 (n + 1))

end

end A374107.P2943563912471760764

namespace A374107

/-- `and(A160841(n), A373585(n+1))` -/
def P2943563912471760764.Spec : Prop :=
  ∀ n, P2943563912471760764.a n = A374107 (n + 1)

end A374107

/-! ## A374107.P1360167387064580859

`and(A160863(n), A373585(n+1))`
-/

namespace A374107.P1360167387064580859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A160863 n) (A373585 (n + 1))

end

end A374107.P1360167387064580859

namespace A374107

/-- `and(A160863(n), A373585(n+1))` -/
def P1360167387064580859.Spec : Prop :=
  ∀ n, P1360167387064580859.a n = A374107 (n + 1)

end A374107

/-! ## A374107.P4539536359657043305

`and(A165355(n), A373585(n+1))`
-/

namespace A374107.P4539536359657043305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A165355 n) (A373585 (n + 1))

end

end A374107.P4539536359657043305

namespace A374107

/-- `and(A165355(n), A373585(n+1))` -/
def P4539536359657043305.Spec : Prop :=
  ∀ n, P4539536359657043305.a n = A374107 (n + 1)

end A374107

/-! ## A374107.P6954357576807388943

`and(A166445(n), A373585(n+1))`
-/

namespace A374107.P6954357576807388943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A166445 n) (A373585 (n + 1))

end

end A374107.P6954357576807388943

namespace A374107

/-- `and(A166445(n), A373585(n+1))` -/
def P6954357576807388943.Spec : Prop :=
  ∀ n, P6954357576807388943.a n = A374107 (n + 1)

end A374107

/-! ## A374107.P17046119339170217079

`and(A174029(n), A373585(n+1))`
-/

namespace A374107.P17046119339170217079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A174029 n) (A373585 (n + 1))

end

end A374107.P17046119339170217079

namespace A374107

/-- `and(A174029(n), A373585(n+1))` -/
def P17046119339170217079.Spec : Prop :=
  ∀ n, P17046119339170217079.a n = A374107 (n + 1)

end A374107

/-! ## A374107.P10680468770688119137

`and(A174239(n), A373585(n+1))`
-/

namespace A374107.P10680468770688119137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A174239 n) (A373585 (n + 1))

end

end A374107.P10680468770688119137

namespace A374107

/-- `and(A174239(n), A373585(n+1))` -/
def P10680468770688119137.Spec : Prop :=
  ∀ n, P10680468770688119137.a n = A374107 (n + 1)

end A374107

/-! ## A374107.P8675801889484509155

`A373585(A216972(n+1))`
-/

namespace A374107.P8675801889484509155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373585 (A216972 (n + 1)).toNat

end

end A374107.P8675801889484509155

namespace A374107

/-- `A373585(A216972(n+1))` -/
def P8675801889484509155.Spec : Prop :=
  ∀ n, P8675801889484509155.a n = A374107 (n + 1)

end A374107

/-! ## A374107.P540728029932345823

`and(A123901(n), A373585(n+1))`
-/

namespace A374107.P540728029932345823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A123901 n) (A373585 (n + 1))

end

end A374107.P540728029932345823

namespace A374107

/-- `and(A123901(n), A373585(n+1))` -/
def P540728029932345823.Spec : Prop :=
  ∀ n, P540728029932345823.a n = A374107 (n + 1)

end A374107

/-! ## A374107.P15834553885132131253

`and(A124782(n), A373585(n+1))`
-/

namespace A374107.P15834553885132131253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A124782 n) (A373585 (n + 1))

end

end A374107.P15834553885132131253

namespace A374107

/-- `and(A124782(n), A373585(n+1))` -/
def P15834553885132131253.Spec : Prop :=
  ∀ n, P15834553885132131253.a n = A374107 (n + 1)

end A374107

/-! ## A374107.P14721497568823445876

`and(A112835(n), A373585(n+1))`
-/

namespace A374107.P14721497568823445876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A112835 n) (A373585 (n + 1))

end

end A374107.P14721497568823445876

namespace A374107

/-- `and(A112835(n), A373585(n+1))` -/
def P14721497568823445876.Spec : Prop :=
  ∀ n, P14721497568823445876.a n = A374107 (n + 1)

end A374107

/-!
# A374108: Numbers k such that A113177(k) and A328845(k) are both even, where A113177 is fully additive with a(p) = Fibonacci(p) and A328845 is the first Fibonacci-based variant of the arithmetic derivative.

The programs for A374108, the canonical program `A374108.P14839641477557879055` is in `Seq.B007.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A374108 has offset 1).

The definition of A374108 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7256 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A374108.P12186582586363376077

`eq[1, A374107(n+1)]+1`
-/

namespace A374108.P12186582586363376077
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374107 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A374108.P12186582586363376077

namespace A374108

/-- `eq[1, A374107(n+1)]+1` -/
def P12186582586363376077.Spec : Prop :=
  ∀ n, (P12186582586363376077.a n : ℤ) = A374108 (n + 1)

end A374108

/-! ## A374108.P4406833157476130013

`lt[A374107(2*(n+1)), A374107(n+1)]+1`
-/

namespace A374108.P4406833157476130013
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374107 (2 * (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374107 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A374108.P4406833157476130013

namespace A374108

/-- `lt[A374107(2*(n+1)), A374107(n+1)]+1` -/
def P4406833157476130013.Spec : Prop :=
  ∀ n, (P4406833157476130013.a n : ℤ) = A374108 (n + 1)

end A374108

/-! ## A374108.P4273899948046831449

`filter[A374046(n+2), A373585(#)]`
-/

namespace A374108.P4273899948046831449
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374046 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373585 (f1 j).toNat = 1) n)

end

end A374108.P4273899948046831449

namespace A374108

/-- `filter[A374046(n+2), A373585(#)]` -/
def P4273899948046831449.Spec : Prop :=
  ∀ n, P4273899948046831449.a n = A374108 (n + 1)

end A374108

/-! ## A374108.P9682244674201051971

`filter[A374046(n+2), A374107(#)]`
-/

namespace A374108.P9682244674201051971
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374046 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A374107 (f1 j).toNat = 1) n)

end

end A374108.P9682244674201051971

namespace A374108

/-- `filter[A374046(n+2), A374107(#)]` -/
def P9682244674201051971.Spec : Prop :=
  ∀ n, P9682244674201051971.a n = A374108 (n + 1)

end A374108

/-! ## A374108.P14839641477557879055

`filter[A373586(n+1), A152822(#)]`

The canonical program, it is in `Seq.B007.C001`.
-/

namespace A374108

/-- `filter[A373586(n+1), A152822(#)]` -/
def P14839641477557879055.Spec : Prop :=
  ∀ n, P14839641477557879055.a n = A374108 (n + 1)

theorem P14839641477557879055.correct : P14839641477557879055.Spec := by
  intro n
  simp only [A374108, Nat.add_sub_cancel]

end A374108

/-! ## A374108.P9054371203909523917

`filter[A373586(n+1), A374045(#)]`
-/

namespace A374108.P9054371203909523917
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373586 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A374045 (f1 j).toNat = 1) n)

end

end A374108.P9054371203909523917

namespace A374108

/-- `filter[A373586(n+1), A374045(#)]` -/
def P9054371203909523917.Spec : Prop :=
  ∀ n, P9054371203909523917.a n = A374108 (n + 1)

end A374108

/-! ## A374108.P2617184894532690625

`filter[A373586(n+1), A374107(#)]`
-/

namespace A374108.P2617184894532690625
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373586 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A374107 (f1 j).toNat = 1) n)

end

end A374108.P2617184894532690625

namespace A374108

/-- `filter[A373586(n+1), A374107(#)]` -/
def P2617184894532690625.Spec : Prop :=
  ∀ n, P2617184894532690625.a n = A374108 (n + 1)

end A374108

/-! ## A374108.P14170063201559795853

`∩[A373586(n+1), A374046(n+1)]`
-/

namespace A374108.P14170063201559795853
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373586 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374046 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A374108.P14170063201559795853

namespace A374108

/-- `∩[A373586(n+1), A374046(n+1)]` -/
def P14170063201559795853.Spec : Prop :=
  ∀ n, (P14170063201559795853.a n : ℤ) = A374108 (n + 1)

end A374108

/-! ## A374108.P9429425556739295384

`filter[A107750(n+1), A373585(#)]`
-/

namespace A374108.P9429425556739295384
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107750 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373585 (f1 j).toNat = 1) n)

end

end A374108.P9429425556739295384

namespace A374108

/-- `filter[A107750(n+1), A373585(#)]` -/
def P9429425556739295384.Spec : Prop :=
  ∀ n, P9429425556739295384.a n = A374108 (n + 1)

end A374108

/-! ## A374108.P12808780400642918931

`filter[A107750(n+1), A374107(#)]`
-/

namespace A374108.P12808780400642918931
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107750 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A374107 (f1 j).toNat = 1) n)

end

end A374108.P12808780400642918931

namespace A374108

/-- `filter[A107750(n+1), A374107(#)]` -/
def P12808780400642918931.Spec : Prop :=
  ∀ n, P12808780400642918931.a n = A374108 (n + 1)

end A374108

/-! ## A374108.P15573342327696746559

`filter[A042965(n+2), A373585(#)]`
-/

namespace A374108.P15573342327696746559
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042965 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373585 (f1 j).toNat = 1) n)

end

end A374108.P15573342327696746559

namespace A374108

/-- `filter[A042965(n+2), A373585(#)]` -/
def P15573342327696746559.Spec : Prop :=
  ∀ n, P15573342327696746559.a n = A374108 (n + 1)

end A374108

/-! ## A374108.P7570585213620073683

`filter[A042965(n+2), A374107(#)]`
-/

namespace A374108.P7570585213620073683
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042965 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A374107 (f1 j).toNat = 1) n)

end

end A374108.P7570585213620073683

namespace A374108

/-- `filter[A042965(n+2), A374107(#)]` -/
def P7570585213620073683.Spec : Prop :=
  ∀ n, P7570585213620073683.a n = A374108 (n + 1)

end A374108

/-! ## A374108.P17506961344211551054

`∩[A042965(n+1), A373586(n+1)]`
-/

namespace A374108.P17506961344211551054
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042965 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373586 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A374108.P17506961344211551054

namespace A374108

/-- `∩[A042965(n+1), A373586(n+1)]` -/
def P17506961344211551054.Spec : Prop :=
  ∀ n, (P17506961344211551054.a n : ℤ) = A374108 (n + 1)

end A374108

/-! ## A374108.P10824827340360900417

`∩[A373586(n+1), A107750(n)]`
-/

namespace A374108.P10824827340360900417
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373586 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107750 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A374108.P10824827340360900417

namespace A374108

/-- `∩[A373586(n+1), A107750(n)]` -/
def P10824827340360900417.Spec : Prop :=
  ∀ n, (P10824827340360900417.a n : ℤ) = A374108 (n + 1)

end A374108

/-! ## A374108.P18365015910990478070

`filter[A171581(n+1), A374107(#)]`
-/

namespace A374108.P18365015910990478070
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171581 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A374107 (f1 j).toNat = 1) n)

end

end A374108.P18365015910990478070

namespace A374108

/-- `filter[A171581(n+1), A374107(#)]` -/
def P18365015910990478070.Spec : Prop :=
  ∀ n, P18365015910990478070.a n = A374108 (n + 1)

end A374108

/-! ## A374108.P663305770280125955

`filter[A171085(n+1), A374107(#)]`
-/

namespace A374108.P663305770280125955
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171085 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A374107 (f1 j).toNat = 1) n)

end

end A374108.P663305770280125955

namespace A374108

/-- `filter[A171085(n+1), A374107(#)]` -/
def P663305770280125955.Spec : Prop :=
  ∀ n, P663305770280125955.a n = A374108 (n + 1)

end A374108

/-! ## A374108.P16975080527306387240

`filter[A121543(n+1), A374107(#)]`
-/

namespace A374108.P16975080527306387240
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121543 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A374107 (f1 j).toNat = 1) n)

end

end A374108.P16975080527306387240

namespace A374108

/-- `filter[A121543(n+1), A374107(#)]` -/
def P16975080527306387240.Spec : Prop :=
  ∀ n, P16975080527306387240.a n = A374108 (n + 1)

end A374108

/-! ## A374108.P13169060665273391530

`filter[A122906(n+1), A374107(#)]`
-/

namespace A374108.P13169060665273391530
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122906 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A374107 (f1 j).toNat = 1) n)

end

end A374108.P13169060665273391530

namespace A374108

/-- `filter[A122906(n+1), A374107(#)]` -/
def P13169060665273391530.Spec : Prop :=
  ∀ n, P13169060665273391530.a n = A374108 (n + 1)

end A374108

/-! ## A374108.P15837830576394536685

`filter[A101513(n+1), A374107(#)]`
-/

namespace A374108.P15837830576394536685
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101513 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A374107 (f1 j).toNat = 1) n)

end

end A374108.P15837830576394536685

namespace A374108

/-- `filter[A101513(n+1), A374107(#)]` -/
def P15837830576394536685.Spec : Prop :=
  ∀ n, P15837830576394536685.a n = A374108 (n + 1)

end A374108

/-! ## A374108.P10695218914442284861

`filter[A156657(n+2), A374107(#)]`
-/

namespace A374108.P10695218914442284861
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156657 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A374107 (f1 j).toNat = 1) n)

end

end A374108.P10695218914442284861

namespace A374108

/-- `filter[A156657(n+2), A374107(#)]` -/
def P10695218914442284861.Spec : Prop :=
  ∀ n, P10695218914442284861.a n = A374108 (n + 1)

end A374108

/-!
# A374109: Numbers k such that A113177(k) and A328845(k) are not both even, where A113177 is fully additive with a(p) = Fibonacci(p) and A328845 is the first Fibonacci-based variant of the arithmetic derivative.

The programs for A374109, the canonical program `A374109.P10190102552975969900` is in `Seq.B008.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A374109 has offset 1).

The definition of A374109 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A374109.P13893048304703082790

`eq[0, A374107(n+1)]+1`
-/

namespace A374109.P13893048304703082790
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374107 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A374109.P13893048304703082790

namespace A374109

/-- `eq[0, A374107(n+1)]+1` -/
def P13893048304703082790.Spec : Prop :=
  ∀ n, (P13893048304703082790.a n : ℤ) = A374109 (n + 1)

end A374109

/-! ## A374109.P10190102552975969900

`∪[A373587(n+1), A016825(n)]`

The canonical program, it is in `Seq.B008.C001`.
-/

namespace A374109

/-- `∪[A373587(n+1), A016825(n)]` -/
def P10190102552975969900.Spec : Prop :=
  ∀ n, (P10190102552975969900.a n : ℤ) = A374109 (n + 1)

theorem P10190102552975969900.correct : P10190102552975969900.Spec := by
  intro n
  simp only [A374109, Nat.add_sub_cancel]

end A374109

/-! ## A374109.P4219335562396154255

`∪[A073760(n+1), A373587(n+1)]`
-/

namespace A374109.P4219335562396154255
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073760 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373587 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A374109.P4219335562396154255

namespace A374109

/-- `∪[A073760(n+1), A373587(n+1)]` -/
def P4219335562396154255.Spec : Prop :=
  ∀ n, (P4219335562396154255.a n : ℤ) = A374109 (n + 1)

end A374109

/-! ## A374109.P14637312131237589855

`∪[A190035(n+1), A373587(n+1)]`
-/

namespace A374109.P14637312131237589855
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190035 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373587 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A374109.P14637312131237589855

namespace A374109

/-- `∪[A190035(n+1), A373587(n+1)]` -/
def P14637312131237589855.Spec : Prop :=
  ∀ n, (P14637312131237589855.a n : ℤ) = A374109 (n + 1)

end A374109

/-! ## A374109.P16155155572324446747

`∪[A373587(n+1), A374047(n+1)]`
-/

namespace A374109.P16155155572324446747
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373587 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374047 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A374109.P16155155572324446747

namespace A374109

/-- `∪[A373587(n+1), A374047(n+1)]` -/
def P16155155572324446747.Spec : Prop :=
  ∀ n, (P16155155572324446747.a n : ℤ) = A374109 (n + 1)

end A374109

/-!
# A374110: a(n) = 1 if A113177(n) and A328845(n) are both multiples of 3, otherwise 0, where A113177 is fully additive with a(p) = Fibonacci(p) and A328845 is the first Fibonacci-based variant of the arithmetic derivative.

The programs for A374110, there is no canonical definition to state claims against.
-/

/-! ## A374110.P292407761514942581

`A374051(n+1)*A374121(n+1)`
-/

namespace A374110.P292407761514942581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374051 (n + 1) * A374121 (n + 1)

end

end A374110.P292407761514942581

/-! ## A374110.P13976633669276459485

`char[A374111(n+1)-1]`
-/

namespace A374110.P13976633669276459485
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374111 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A374110.P13976633669276459485

/-! ## A374110.P1886071238453057635

`A005369(A269606(n+1)+4)`
-/

namespace A374110.P1886071238453057635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005369 (A269606 (n + 1) + 4).toNat

end

end A374110.P1886071238453057635

/-! ## A374110.P10393323459412624458

`and(A105257(n), A266837(n))`
-/

namespace A374110.P10393323459412624458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A105257 n) (A266837 n)

end

end A374110.P10393323459412624458

/-! ## A374110.P10564909293103219212

`and(A105257(n), A374051(n+1))`
-/

namespace A374110.P10564909293103219212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A105257 n) (A374051 (n + 1))

end

end A374110.P10564909293103219212

/-!
# A374111: Numbers k such that A113177(k) and A328845(k) are both multiples of 3, where A113177 is fully additive with a(p) = Fibonacci(p) and A328845 is the first Fibonacci-based variant of the arithmetic derivative.

The programs for A374111, there is no canonical definition to state claims against.
-/

/-! ## A374111.P6530893578807426402

`record[(n+1)*A374110(n+1)]`
-/

namespace A374111.P6530893578807426402
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A374110 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A374111.P6530893578807426402

/-! ## A374111.P7184190545393120166

`record[A374051(n+1)*A374121(n+1)*(n+1)]`
-/

namespace A374111.P7184190545393120166
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374051 (n + 1) * A374121 (n + 1) * (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A374111.P7184190545393120166

/-! ## A374111.P6615054343615249824

`eq[1, A374110(n+1)]+1`
-/

namespace A374111.P6615054343615249824
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374110 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A374111.P6615054343615249824

/-! ## A374111.P13756300909690245345

`∩[A374052(n+1), A374122(n+1)]`
-/

namespace A374111.P13756300909690245345
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374052 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374122 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A374111.P13756300909690245345

/-! ## A374111.P1151952607136605912

`filter[A374122(n+2), A374051(#)]`
-/

namespace A374111.P1151952607136605912
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374122 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A374051 (f1 j).toNat = 1) n)

end

end A374111.P1151952607136605912

/-! ## A374111.P9991443982974373087

`filter[A374122(n+2), A374110(#)]`
-/

namespace A374111.P9991443982974373087
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374122 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A374110 (f1 j).toNat = 1) n)

end

end A374111.P9991443982974373087

/-! ## A374111.P4386764132170162969

`filter[A374052(n+1), A374110(#)]`
-/

namespace A374111.P4386764132170162969
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374052 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A374110 (f1 j).toNat = 1) n)

end

end A374111.P4386764132170162969

/-! ## A374111.P17145284493205772088

`filter[A374052(n+1), A374121(#)]`
-/

namespace A374111.P17145284493205772088
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374052 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A374121 (f1 j).toNat = 1) n)

end

end A374111.P17145284493205772088

/-! ## A374111.P4023325351414327195

`filter[A074232(n+1), A374110(#)]`
-/

namespace A374111.P4023325351414327195
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074232 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A374110 (f1 j).toNat = 1) n)

end

end A374111.P4023325351414327195

/-! ## A374111.P14878899564919726229

`filter[A257586(n+1), A374110(#)]`
-/

namespace A374111.P14878899564919726229
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257586 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A374110 (f1 j).toNat = 1) n)

end

end A374111.P14878899564919726229

/-! ## A374111.P1061387915419919972

`filter[A056653(n+1), A374110(#)]`
-/

namespace A374111.P1061387915419919972
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056653 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A374110 (f1 j).toNat = 1) n)

end

end A374111.P1061387915419919972

/-! ## A374111.P16256228186696401374

`filter[A018252(n+1), A374110(#)]`
-/

namespace A374111.P16256228186696401374
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A374110 (f1 j).toNat = 1) n)

end

end A374111.P16256228186696401374

/-! ## A374111.P4184519651048114148

`filter[A065090(n+1), A374110(#)]`
-/

namespace A374111.P4184519651048114148
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065090 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A374110 (f1 j).toNat = 1) n)

end

end A374111.P4184519651048114148

/-! ## A374111.P5966255509191066036

`filter[A073900(n+1), A374110(#)]`
-/

namespace A374111.P5966255509191066036
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073900 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A374110 (f1 j).toNat = 1) n)

end

end A374111.P5966255509191066036

/-! ## A374111.P13872189225879192811

`filter[A121543(n+1), A374110(#)]`
-/

namespace A374111.P13872189225879192811
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121543 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A374110 (f1 j).toNat = 1) n)

end

end A374111.P13872189225879192811

/-!
# A374112: a(n) = gcd(A113177(n), A276085(n)), where A113177 and A276085 are fully additive with a(p) = Fibonacci(p) and a(p) = p#/p, respectively.

The programs for A374112, there is no canonical definition to state claims against.
-/

/-! ## A374112.P8766406934857238661

`gcd(A113177(n+1), A276085(n+1))`
-/

namespace A374112.P8766406934857238661
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A113177 (n + 1)) (A276085 (n + 1))

end

end A374112.P8766406934857238661

/-! ## A374112.P222989584712003667

`A056239(n+1)^A067742(A113176(n+1))`
-/

namespace A374112.P222989584712003667
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A056239 (n + 1) : ℚ) ^ (A067742 (A113176 (n + 1)).toNat : ℤ)

end

end A374112.P222989584712003667

/-! ## A374112.P2463325818315937804

`gcd(A019269(n+1), A033865(A048675(n+1)))`
-/

namespace A374112.P2463325818315937804
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A019269 (n + 1)) (A033865 (A048675 (n + 1)).toNat)

end

end A374112.P2463325818315937804

/-! ## A374112.P5505127930191493106

`val(A063108(A276085(n+1)+1), 2)`
-/

namespace A374112.P5505127930191493106
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A063108 (A276085 (n + 1) + 1).toNat).toNat 2

end

end A374112.P5505127930191493106

/-! ## A374112.P14633514052205101773

`A001222(A108951(n+1))^∏{p}[n+1, floor(3/#)]`
-/

namespace A374112.P14633514052205101773
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001222 (A108951 (n + 1)).toNat : ℚ) ^ (∏ p ∈ Nat.primeFactors (f1 n), ⌊3 / (p : ℚ)⌋ : ℤ)

end

end A374112.P14633514052205101773

/-!
# A374113: a(n) = 1 if A113177(n) and A276085(n) are both even, otherwise 0, where A113177 and A276085 are fully additive with a(p) = Fibonacci(p) and a(p) = p#/p, respectively.

The programs for A374113, the canonical program `A374113.P12323162382327089993` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A374113 has offset 1).

The definition of A374113 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A373585, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A374113.P12323162382327089993

`A035263(n+1)*A373585(n+1)`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A374113

/-- `A035263(n+1)*A373585(n+1)` -/
def P12323162382327089993.Spec : Prop :=
  ∀ n, P12323162382327089993.a n = A374113 (n + 1)

theorem P12323162382327089993.correct : P12323162382327089993.Spec := by
  intro n
  simp only [A374113, Nat.add_sub_cancel]

end A374113

/-! ## A374113.P15249453920682115154

`A059841(A374112(n+1))`
-/

namespace A374113.P15249453920682115154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059841 (A374112 (n + 1)).toNat

end

end A374113.P15249453920682115154

namespace A374113

/-- `A059841(A374112(n+1))` -/
def P15249453920682115154.Spec : Prop :=
  ∀ n, P15249453920682115154.a n = A374113 (n + 1)

end A374113

/-! ## A374113.P18001154770604112656

`A374045(A007913(n+1))`
-/

namespace A374113.P18001154770604112656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374045 (A007913 (n + 1)).toNat

end

end A374113.P18001154770604112656

namespace A374113

/-- `A374045(A007913(n+1))` -/
def P18001154770604112656.Spec : Prop :=
  ∀ n, P18001154770604112656.a n = A374113 (n + 1)

end A374113

/-! ## A374113.P16163921848944611923

`A353374(A038502(n+1))`
-/

namespace A374113.P16163921848944611923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353374 (A038502 (n + 1)).toNat

end

end A374113.P16163921848944611923

namespace A374113

/-- `A353374(A038502(n+1))` -/
def P16163921848944611923.Spec : Prop :=
  ∀ n, P16163921848944611923.a n = A374113 (n + 1)

end A374113

/-! ## A374113.P15405521700210560817

`A374107(A038387(n+1))`
-/

namespace A374113.P15405521700210560817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374107 (A038387 (n + 1)).toNat

end

end A374113.P15405521700210560817

namespace A374113

/-- `A374107(A038387(n+1))` -/
def P15405521700210560817.Spec : Prop :=
  ∀ n, P15405521700210560817.a n = A374113 (n + 1)

end A374113

/-! ## A374113.P6022265320066484705

`A374045(A065883(n+1))`
-/

namespace A374113.P6022265320066484705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374045 (A065883 (n + 1)).toNat

end

end A374113.P6022265320066484705

namespace A374113

/-- `A374045(A065883(n+1))` -/
def P6022265320066484705.Spec : Prop :=
  ∀ n, P6022265320066484705.a n = A374113 (n + 1)

end A374113

/-! ## A374113.P1840432470539771247

`A374107(A066990(n+1))`
-/

namespace A374113.P1840432470539771247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374107 (A066990 (n + 1)).toNat

end

end A374113.P1840432470539771247

namespace A374113

/-- `A374107(A066990(n+1))` -/
def P1840432470539771247.Spec : Prop :=
  ∀ n, P1840432470539771247.a n = A374113 (n + 1)

end A374113

/-! ## A374113.P15687030153194200427

`A374107(A365296(n+1))`
-/

namespace A374113.P15687030153194200427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374107 (A365296 (n + 1)).toNat

end

end A374113.P15687030153194200427

namespace A374113

/-- `A374107(A365296(n+1))` -/
def P15687030153194200427.Spec : Prop :=
  ∀ n, P15687030153194200427.a n = A374113 (n + 1)

end A374113

/-! ## A374113.P11109610687156793240

`and(A059134(n), A373585(n+1))`
-/

namespace A374113.P11109610687156793240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A059134 n) (A373585 (n + 1))

end

end A374113.P11109610687156793240

namespace A374113

/-- `and(A059134(n), A373585(n+1))` -/
def P11109610687156793240.Spec : Prop :=
  ∀ n, P11109610687156793240.a n = A374113 (n + 1)

end A374113

/-! ## A374113.P14248315314584805483

`and(A059141(n), A373585(n+1))`
-/

namespace A374113.P14248315314584805483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A059141 n) (A373585 (n + 1))

end

end A374113.P14248315314584805483

namespace A374113

/-- `and(A059141(n), A373585(n+1))` -/
def P14248315314584805483.Spec : Prop :=
  ∀ n, P14248315314584805483.a n = A374113 (n + 1)

end A374113

/-! ## A374113.P9553363035529122715

`and(A059144(n), A373585(n+1))`
-/

namespace A374113.P9553363035529122715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A059144 n) (A373585 (n + 1))

end

end A374113.P9553363035529122715

namespace A374113

/-- `and(A059144(n), A373585(n+1))` -/
def P9553363035529122715.Spec : Prop :=
  ∀ n, P9553363035529122715.a n = A374113 (n + 1)

end A374113

/-! ## A374113.P17784339916467634573

`and(A059134(n), A374107(n+1))`
-/

namespace A374113.P17784339916467634573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A059134 n) (A374107 (n + 1))

end

end A374113.P17784339916467634573

namespace A374113

/-- `and(A059134(n), A374107(n+1))` -/
def P17784339916467634573.Spec : Prop :=
  ∀ n, P17784339916467634573.a n = A374113 (n + 1)

end A374113

/-! ## A374113.P9672600589820727006

`and(A059141(n), A374107(n+1))`
-/

namespace A374113.P9672600589820727006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A059141 n) (A374107 (n + 1))

end

end A374113.P9672600589820727006

namespace A374113

/-- `and(A059141(n), A374107(n+1))` -/
def P9672600589820727006.Spec : Prop :=
  ∀ n, P9672600589820727006.a n = A374113 (n + 1)

end A374113

/-! ## A374113.P13220729525489596948

`and(A059144(n), A374107(n+1))`
-/

namespace A374113.P13220729525489596948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A059144 n) (A374107 (n + 1))

end

end A374113.P13220729525489596948

namespace A374113

/-- `and(A059144(n), A374107(n+1))` -/
def P13220729525489596948.Spec : Prop :=
  ∀ n, P13220729525489596948.a n = A374113 (n + 1)

end A374113

/-! ## A374113.P6658621264794542867

`A035263(n+1)*A374107(n+1)`
-/

namespace A374113.P6658621264794542867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035263 (n + 1) * A374107 (n + 1)

end

end A374113.P6658621264794542867

namespace A374113

/-- `A035263(n+1)*A374107(n+1)` -/
def P6658621264794542867.Spec : Prop :=
  ∀ n, P6658621264794542867.a n = A374113 (n + 1)

end A374113

/-! ## A374113.P16493950977133234210

`and(A082958(n), A373585(n+1))`
-/

namespace A374113.P16493950977133234210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A082958 n) (A373585 (n + 1))

end

end A374113.P16493950977133234210

namespace A374113

/-- `and(A082958(n), A373585(n+1))` -/
def P16493950977133234210.Spec : Prop :=
  ∀ n, P16493950977133234210.a n = A374113 (n + 1)

end A374113

/-! ## A374113.P904889647820389074

`and(A005213(n), A373585(n+1))`
-/

namespace A374113.P904889647820389074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A005213 n) (A373585 (n + 1))

end

end A374113.P904889647820389074

namespace A374113

/-- `and(A005213(n), A373585(n+1))` -/
def P904889647820389074.Spec : Prop :=
  ∀ n, P904889647820389074.a n = A374113 (n + 1)

end A374113

/-! ## A374113.P2255219489914053833

`and(A005213(n), A374107(n+1))`
-/

namespace A374113.P2255219489914053833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A005213 n) (A374107 (n + 1))

end

end A374113.P2255219489914053833

namespace A374113

/-- `and(A005213(n), A374107(n+1))` -/
def P2255219489914053833.Spec : Prop :=
  ∀ n, P2255219489914053833.a n = A374113 (n + 1)

end A374113

/-! ## A374113.P2151783995058357790

`and(A249908(n+1), A373585(n+1))`
-/

namespace A374113.P2151783995058357790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A249908 (n + 1)) (A373585 (n + 1))

end

end A374113.P2151783995058357790

namespace A374113

/-- `and(A249908(n+1), A373585(n+1))` -/
def P2151783995058357790.Spec : Prop :=
  ∀ n, P2151783995058357790.a n = A374113 (n + 1)

end A374113

/-! ## A374113.P1188208873056575681

`and(A249908(n+1), A374107(n+1))`
-/

namespace A374113.P1188208873056575681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A249908 (n + 1)) (A374107 (n + 1))

end

end A374113.P1188208873056575681

namespace A374113

/-- `and(A249908(n+1), A374107(n+1))` -/
def P1188208873056575681.Spec : Prop :=
  ∀ n, P1188208873056575681.a n = A374113 (n + 1)

end A374113

/-!
# A374114: Numbers k such that A113177(k) and A276085(k) are both even, where A113177 and A276085 are fully additive with a(p) = Fibonacci(p) and a(p) = p#/p, respectively.

The programs for A374114, the canonical program `A374114.P4158927788412466770` is in `Seq.B008.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A374114 has offset 1).

The definition of A374114 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8656 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A374114.P9820776250932119698

`record[(n+1)*A374113(n+1)]`
-/

namespace A374114.P9820776250932119698
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A374113 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A374114.P9820776250932119698

namespace A374114

/-- `record[(n+1)*A374113(n+1)]` -/
def P9820776250932119698.Spec : Prop :=
  ∀ n, P9820776250932119698.a n = A374114 (n + 1)

end A374114

/-! ## A374114.P4470544582730175611

`eq[A089608(n+1), A374107(n+1)]+1`
-/

namespace A374114.P4470544582730175611
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089608 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374107 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A374114.P4470544582730175611

namespace A374114

/-- `eq[A089608(n+1), A374107(n+1)]+1` -/
def P4470544582730175611.Spec : Prop :=
  ∀ n, (P4470544582730175611.a n : ℤ) = A374114 (n + 1)

end A374114

/-! ## A374114.P4158927788412466770

`filter[A374108(n+1), A035263(#)]`

The canonical program, it is in `Seq.B008.C001`.
-/

namespace A374114

/-- `filter[A374108(n+1), A035263(#)]` -/
def P4158927788412466770.Spec : Prop :=
  ∀ n, P4158927788412466770.a n = A374114 (n + 1)

theorem P4158927788412466770.correct : P4158927788412466770.Spec := by
  intro n
  simp only [A374114, Nat.add_sub_cancel]

end A374114

/-! ## A374114.P3612403245745898942

`filter[A374108(n+1), A374113(#)]`
-/

namespace A374114.P3612403245745898942
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374108 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A374113 (f1 j).toNat = 1) n)

end

end A374114.P3612403245745898942

namespace A374114

/-- `filter[A374108(n+1), A374113(#)]` -/
def P3612403245745898942.Spec : Prop :=
  ∀ n, P3612403245745898942.a n = A374114 (n + 1)

end A374114

/-! ## A374114.P1007758199157920027

`filter[A374046(n+2), A374113(#)]`
-/

namespace A374114.P1007758199157920027
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374046 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A374113 (f1 j).toNat = 1) n)

end

end A374114.P1007758199157920027

namespace A374114

/-- `filter[A374046(n+2), A374113(#)]` -/
def P1007758199157920027.Spec : Prop :=
  ∀ n, P1007758199157920027.a n = A374114 (n + 1)

end A374114

/-! ## A374114.P7718933821237924179

`filter[A373586(n+1), A035263(#)]`
-/

namespace A374114.P7718933821237924179
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373586 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A035263 (f1 j).toNat = 1) n)

end

end A374114.P7718933821237924179

namespace A374114

/-- `filter[A373586(n+1), A035263(#)]` -/
def P7718933821237924179.Spec : Prop :=
  ∀ n, P7718933821237924179.a n = A374114 (n + 1)

end A374114

/-! ## A374114.P8746477726540944228

`filter[A373586(n+1), A374113(#)]`
-/

namespace A374114.P8746477726540944228
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373586 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A374113 (f1 j).toNat = 1) n)

end

end A374114.P8746477726540944228

namespace A374114

/-- `filter[A373586(n+1), A374113(#)]` -/
def P8746477726540944228.Spec : Prop :=
  ∀ n, P8746477726540944228.a n = A374114 (n + 1)

end A374114

/-! ## A374114.P16741710545843680790

`filter[A003159(n+1), A373585(#)]`
-/

namespace A374114.P16741710545843680790
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003159 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373585 (f1 j).toNat = 1) n)

end

end A374114.P16741710545843680790

namespace A374114

/-- `filter[A003159(n+1), A373585(#)]` -/
def P16741710545843680790.Spec : Prop :=
  ∀ n, P16741710545843680790.a n = A374114 (n + 1)

end A374114

/-! ## A374114.P6278627326167381754

`filter[A003159(n+1), A374107(#)]`
-/

namespace A374114.P6278627326167381754
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003159 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A374107 (f1 j).toNat = 1) n)

end

end A374114.P6278627326167381754

namespace A374114

/-- `filter[A003159(n+1), A374107(#)]` -/
def P6278627326167381754.Spec : Prop :=
  ∀ n, P6278627326167381754.a n = A374114 (n + 1)

end A374114

/-! ## A374114.P7794522796064182613

`filter[A003159(n+1), A374113(#)]`
-/

namespace A374114.P7794522796064182613
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003159 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A374113 (f1 j).toNat = 1) n)

end

end A374114.P7794522796064182613

namespace A374114

/-- `filter[A003159(n+1), A374113(#)]` -/
def P7794522796064182613.Spec : Prop :=
  ∀ n, P7794522796064182613.a n = A374114 (n + 1)

end A374114

/-! ## A374114.P10988399313358430295

`∩[A003159(n+1), A373586(n+1)]`
-/

namespace A374114.P10988399313358430295
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003159 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373586 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A374114.P10988399313358430295

namespace A374114

/-- `∩[A003159(n+1), A373586(n+1)]` -/
def P10988399313358430295.Spec : Prop :=
  ∀ n, (P10988399313358430295.a n : ℤ) = A374114 (n + 1)

end A374114

/-! ## A374114.P6468820089828795656

`∩[A003159(n+1), A374108(n+1)]`
-/

namespace A374114.P6468820089828795656
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003159 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374108 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A374114.P6468820089828795656

namespace A374114

/-- `∩[A003159(n+1), A374108(n+1)]` -/
def P6468820089828795656.Spec : Prop :=
  ∀ n, (P6468820089828795656.a n : ℤ) = A374114 (n + 1)

end A374114

/-! ## A374114.P15126672763255638601

`filter[A260401(n+1), A374113(#)]`
-/

namespace A374114.P15126672763255638601
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260401 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A374113 (f1 j).toNat = 1) n)

end

end A374114.P15126672763255638601

namespace A374114

/-- `filter[A260401(n+1), A374113(#)]` -/
def P15126672763255638601.Spec : Prop :=
  ∀ n, P15126672763255638601.a n = A374114 (n + 1)

end A374114

/-! ## A374114.P10929896686645001981

`filter[A107750(n+1), A374113(#)]`
-/

namespace A374114.P10929896686645001981
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107750 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A374113 (f1 j).toNat = 1) n)

end

end A374114.P10929896686645001981

namespace A374114

/-- `filter[A107750(n+1), A374113(#)]` -/
def P10929896686645001981.Spec : Prop :=
  ∀ n, P10929896686645001981.a n = A374114 (n + 1)

end A374114

/-! ## A374114.P5479988006279923051

`filter[A171581(n+1), A374113(#)]`
-/

namespace A374114.P5479988006279923051
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171581 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A374113 (f1 j).toNat = 1) n)

end

end A374114.P5479988006279923051

namespace A374114

/-- `filter[A171581(n+1), A374113(#)]` -/
def P5479988006279923051.Spec : Prop :=
  ∀ n, P5479988006279923051.a n = A374114 (n + 1)

end A374114

/-! ## A374114.P5505770566541982118

`filter[A121543(n+1), A374113(#)]`
-/

namespace A374114.P5505770566541982118
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121543 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A374113 (f1 j).toNat = 1) n)

end

end A374114.P5505770566541982118

namespace A374114

/-- `filter[A121543(n+1), A374113(#)]` -/
def P5505770566541982118.Spec : Prop :=
  ∀ n, P5505770566541982118.a n = A374114 (n + 1)

end A374114

/-! ## A374114.P7995009889043591862

`filter[A122906(n+1), A374113(#)]`
-/

namespace A374114.P7995009889043591862
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122906 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A374113 (f1 j).toNat = 1) n)

end

end A374114.P7995009889043591862

namespace A374114

/-- `filter[A122906(n+1), A374113(#)]` -/
def P7995009889043591862.Spec : Prop :=
  ∀ n, P7995009889043591862.a n = A374114 (n + 1)

end A374114

/-! ## A374114.P14292747436234564009

`filter[n+1, A374113(#)]`
-/

namespace A374114.P14292747436234564009
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A374113 (f1 j) = 1) n)

end

end A374114.P14292747436234564009

namespace A374114

/-- `filter[n+1, A374113(#)]` -/
def P14292747436234564009.Spec : Prop :=
  ∀ n, (P14292747436234564009.a n : ℤ) = A374114 (n + 1)

end A374114

/-! ## A374114.P9368800144783564990

`record[A214682(A373586(n+1))]`
-/

namespace A374114.P9368800144783564990
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214682 (A373586 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A374114.P9368800144783564990

namespace A374114

/-- `record[A214682(A373586(n+1))]` -/
def P9368800144783564990.Spec : Prop :=
  ∀ n, P9368800144783564990.a n = A374114 (n + 1)

end A374114

/-! ## A374114.P1782116230252574522

`filter[A036552(2*n+1), A373585(#)]`
-/

namespace A374114.P1782116230252574522
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036552 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373585 (f1 j).toNat = 1) n)

end

end A374114.P1782116230252574522

namespace A374114

/-- `filter[A036552(2*n+1), A373585(#)]` -/
def P1782116230252574522.Spec : Prop :=
  ∀ n, P1782116230252574522.a n = A374114 (n + 1)

end A374114

/-!
# A374115: Numbers k such that A113177(k) and A276085(k) are not both even, where A113177 and A276085 are fully additive with a(p) = Fibonacci(p) and a(p) = p#/p, respectively.

The programs for A374115, the canonical program `A374115.P14378622944131692428` is in `Seq.B008.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A374115 has offset 1).

The definition of A374115 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A374115.P2904384624047466610

`eq[0, A374113(n+1)]+1`
-/

namespace A374115.P2904384624047466610
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374113 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A374115.P2904384624047466610

namespace A374115

/-- `eq[0, A374113(n+1)]+1` -/
def P2904384624047466610.Spec : Prop :=
  ∀ n, (P2904384624047466610.a n : ℤ) = A374115 (n + 1)

end A374115

/-! ## A374115.P1971031465540512472

`comp[A374114(n+1)-1]+1`
-/

namespace A374115.P1971031465540512472
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374114 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A374115.P1971031465540512472

namespace A374115

/-- `comp[A374114(n+1)-1]+1` -/
def P1971031465540512472.Spec : Prop :=
  ∀ n, (P1971031465540512472.a n : ℤ) = A374115 (n + 1)

end A374115

/-! ## A374115.P14378622944131692428

`∪[A036554(n+1), A373587(n+1)]`

The canonical program, it is in `Seq.B008.C001`.
-/

namespace A374115

/-- `∪[A036554(n+1), A373587(n+1)]` -/
def P14378622944131692428.Spec : Prop :=
  ∀ n, (P14378622944131692428.a n : ℤ) = A374115 (n + 1)

theorem P14378622944131692428.correct : P14378622944131692428.Spec := by
  intro n
  simp only [A374115, Nat.add_sub_cancel]

end A374115

/-! ## A374115.P8958472517734715180

`∪[A036554(n+1), A374109(n+1)]`
-/

namespace A374115.P8958472517734715180
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036554 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374109 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A374115.P8958472517734715180

namespace A374115

/-- `∪[A036554(n+1), A374109(n+1)]` -/
def P8958472517734715180.Spec : Prop :=
  ∀ n, (P8958472517734715180.a n : ℤ) = A374115 (n + 1)

end A374115

/-! ## A374115.P5106821265378387219

`eq[char[A374114(n+1)], A143757(2*(n+1))]`
-/

namespace A374115.P5106821265378387219
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374114 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143757 (2 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A374115.P5106821265378387219

namespace A374115

/-- `eq[char[A374114(n+1)], A143757(2*(n+1))]` -/
def P5106821265378387219.Spec : Prop :=
  ∀ n, (P5106821265378387219.a n : ℤ) = A374115 (n + 1)

end A374115

/-!
# A374116: a(n) = gcd(A328768(n), A328845(n)), where A328768 is the first primorial based variant and A328845 is the first Fibonacci-based variant of the arithmetic derivative, respectively.

The programs for A374116, there is no canonical definition to state claims against.
-/

/-! ## A374116.P16236087039734523935

`gcd(A328768(n), A328845(n))`
-/

namespace A374116.P16236087039734523935
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A328768 n) (A328845 n)

end

end A374116.P16236087039734523935

/-!
# A374117: a(n) = 1 if A328768(n) and A328845(n) are both multiples of 3, otherwise 0, where A328768 is the first primorial based variant and A328845 is the first Fibonacci-based variant of the arithmetic derivative, respectively.

The programs for A374117, there is no canonical definition to state claims against.
-/

/-! ## A374117.P13695771744009801347

`A373991(n)*A374121(n)`
-/

namespace A374117.P13695771744009801347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373991 n * A374121 n

end

end A374117.P13695771744009801347

/-! ## A374117.P11336417886168419338

`A079978(A374116(n))`
-/

namespace A374117.P11336417886168419338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079978 (A374116 n).toNat

end

end A374117.P11336417886168419338

/-! ## A374117.P12593833480105048013

`char[A374118(n+1)]`
-/

namespace A374117.P12593833480105048013
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374118 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A374117.P12593833480105048013

/-! ## A374117.P2310630052623239939

`A373991(3*A374116(n))`
-/

namespace A374117.P2310630052623239939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373991 (3 * A374116 n).toNat

end

end A374117.P2310630052623239939

/-! ## A374117.P18376392149581927896

`A374121(3*A374116(n))`
-/

namespace A374117.P18376392149581927896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374121 (3 * A374116 n).toNat

end

end A374117.P18376392149581927896

/-! ## A374117.P16274780375124408381

`C(A000086(A093127(n)), A093150(n))`
-/

namespace A374117.P16274780375124408381
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A000086 (A093127 n).toNat).toNat (A093150 n).toNat

end

end A374117.P16274780375124408381

/-!
# A374118: Numbers k such that A328768(k) and A328845(k) are both multiples of 3, where A328768 is the first primorial based variant and A328845 is the first Fibonacci-based variant of the arithmetic derivative, respectively.

The programs for A374118, there is no canonical definition to state claims against.
-/

/-! ## A374118.P5063912729046190241

`lt[0, A374117(n)]`
-/

namespace A374118.P5063912729046190241
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374117 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A374118.P5063912729046190241

/-! ## A374118.P4291287450968931419

`filter[A374122(n+1), A373991(#)]`
-/

namespace A374118.P4291287450968931419
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374122 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373991 (f1 j).toNat = 1) n)

end

end A374118.P4291287450968931419

/-! ## A374118.P16267046997244971505

`filter[A374122(n+1), A374117(#)]`
-/

namespace A374118.P16267046997244971505
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374122 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A374117 (f1 j).toNat = 1) n)

end

end A374118.P16267046997244971505

/-! ## A374118.P15499971313116582365

`∩[A373992(n+1), A374122(n+1)]`
-/

namespace A374118.P15499971313116582365
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373992 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374122 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A374118.P15499971313116582365

/-! ## A374118.P4680025065505451244

`filter[A373992(n+1), A374117(#)]`
-/

namespace A374118.P4680025065505451244
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373992 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A374117 (f1 j).toNat = 1) n)

end

end A374118.P4680025065505451244

/-! ## A374118.P10190665448203038931

`filter[A373992(n+1), A374121(#)]`
-/

namespace A374118.P10190665448203038931
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373992 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A374121 (f1 j).toNat = 1) n)

end

end A374118.P10190665448203038931

/-! ## A374118.P4034187388372562627

`filter[A141468(n+1), A374117(#)]`
-/

namespace A374118.P4034187388372562627
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141468 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A374117 (f1 j).toNat = 1) n)

end

end A374118.P4034187388372562627

/-! ## A374118.P9504321581181795463

`filter[A173905(n+1), A374117(#)]`
-/

namespace A374118.P9504321581181795463
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173905 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A374117 (f1 j).toNat = 1) n)

end

end A374118.P9504321581181795463

/-! ## A374118.P2013510117406993529

`eq[A329684(n), A374117(n)]`
-/

namespace A374118.P2013510117406993529
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329684 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374117 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A374118.P2013510117406993529

/-! ## A374118.P15044168329269514679

`eq[A045496(n+1), A374117(n)]`
-/

namespace A374118.P15044168329269514679
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045496 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374117 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A374118.P15044168329269514679

/-! ## A374118.P17350239987641355333

`eq[A059811(n+1), A374117(n)]`
-/

namespace A374118.P17350239987641355333
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059811 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374117 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A374118.P17350239987641355333

/-! ## A374118.P12917652959609934801

`eq[A125846(n+1), A374117(n)]`
-/

namespace A374118.P12917652959609934801
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125846 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374117 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A374118.P12917652959609934801

/-! ## A374118.P15295322607217854272

`eq[A283149(n+1), A374117(n)]`
-/

namespace A374118.P15295322607217854272
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283149 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374117 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A374118.P15295322607217854272

/-! ## A374118.P17573543322877304680

`eq[A214709(n+1), A374117(n)]`
-/

namespace A374118.P17573543322877304680
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214709 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374117 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A374118.P17573543322877304680

/-! ## A374118.P7017677750293771782

`lt[2, A089128(A374116(n))]`
-/

namespace A374118.P7017677750293771782
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089128 (A374116 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A374118.P7017677750293771782

/-!
# A374119: a(n) = 1 if A113177(n) and A276085(n) are both multiples of 3, otherwise 0, where A113177 and A276085 are fully additive with a(p) = Fibonacci(p) and a(p) = p#/p, respectively.

The programs for A374119, the canonical program `A374119.P18024338057745193586` is in `Seq.B005.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A374119 has offset 1).

The definition of A374119 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A372573, A374051, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A374119.P18024338057745193586

`A372573(n+1)*A374051(n+1)`

The canonical program, it is in `Seq.B005.C002`.
-/

namespace A374119

/-- `A372573(n+1)*A374051(n+1)` -/
def P18024338057745193586.Spec : Prop :=
  ∀ n, P18024338057745193586.a n = A374119 (n + 1)

theorem P18024338057745193586.correct : P18024338057745193586.Spec := by
  intro n
  simp only [A374119, Nat.add_sub_cancel]

end A374119

/-! ## A374119.P8568330514693804937

`A079978(A374112(n+1))`
-/

namespace A374119.P8568330514693804937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079978 (A374112 (n + 1)).toNat

end

end A374119.P8568330514693804937

namespace A374119

/-- `A079978(A374112(n+1))` -/
def P8568330514693804937.Spec : Prop :=
  ∀ n, P8568330514693804937.a n = A374119 (n + 1)

end A374119

/-! ## A374119.P17695303038481066278

`char[A374120(n+1)-1]`
-/

namespace A374119.P17695303038481066278
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374120 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A374119.P17695303038481066278

namespace A374119

/-- `char[A374120(n+1)-1]` -/
def P17695303038481066278.Spec : Prop :=
  ∀ n, (P17695303038481066278.a n : ℤ) = A374119 (n + 1)

end A374119

/-! ## A374119.P16306929601172550561

`A079978(A374124(n+1))*A372573(n+1)`
-/

namespace A374119.P16306929601172550561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079978 (A374124 (n + 1)).toNat * A372573 (n + 1)

end

end A374119.P16306929601172550561

namespace A374119

/-- `A079978(A374124(n+1))*A372573(n+1)` -/
def P16306929601172550561.Spec : Prop :=
  ∀ n, P16306929601172550561.a n = A374119 (n + 1)

end A374119

/-! ## A374119.P13697779071341820471

`A374117(6*A374112(n+1))`
-/

namespace A374119.P13697779071341820471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374117 (6 * A374112 (n + 1)).toNat

end

end A374119.P13697779071341820471

namespace A374119

/-- `A374117(6*A374112(n+1))` -/
def P13697779071341820471.Spec : Prop :=
  ∀ n, P13697779071341820471.a n = A374119 (n + 1)

end A374119

/-! ## A374119.P2337604930715977552

`A261083(A374112(n+1))^A005251(n)`
-/

namespace A374119.P2337604930715977552
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A261083 (A374112 (n + 1)).toNat : ℚ) ^ (A005251 n : ℤ)

end

end A374119.P2337604930715977552

namespace A374119

/-- `A261083(A374112(n+1))^A005251(n)` -/
def P2337604930715977552.Spec : Prop :=
  ∀ n, P2337604930715977552.a n = (A374119 (n + 1) : ℚ)

end A374119

/-!
# A374120: Numbers k such that A113177(k) and A276085(k) are both multiples of 3, where A113177 and A276085 are fully additive with a(p) = Fibonacci(p) and a(p) = p#/p, respectively.

The programs for A374120, the canonical program `A374120.P17872071964718822810` is in `Seq.B006.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A374120 has offset 1).

The definition of A374120 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A374120.P17872071964718822810

`record[(n+1)*A374119(n+1)]`

The canonical program, it is in `Seq.B006.C002`.
-/

namespace A374120

/-- `record[(n+1)*A374119(n+1)]` -/
def P17872071964718822810.Spec : Prop :=
  ∀ n, P17872071964718822810.a n = A374120 (n + 1)

theorem P17872071964718822810.correct : P17872071964718822810.Spec := by
  intro n
  simp only [A374120, Nat.add_sub_cancel]

end A374120

/-! ## A374120.P5214062210662600832

`lt[0, A374119(n+1)]+1`
-/

namespace A374120.P5214062210662600832
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374119 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A374120.P5214062210662600832

namespace A374120

/-- `lt[0, A374119(n+1)]+1` -/
def P5214062210662600832.Spec : Prop :=
  ∀ n, (P5214062210662600832.a n : ℤ) = A374120 (n + 1)

end A374120

/-! ## A374120.P14895106366817722682

`filter[A374052(n+1), A372573(#)]`
-/

namespace A374120.P14895106366817722682
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374052 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A372573 (f1 j).toNat = 1) n)

end

end A374120.P14895106366817722682

namespace A374120

/-- `filter[A374052(n+1), A372573(#)]` -/
def P14895106366817722682.Spec : Prop :=
  ∀ n, P14895106366817722682.a n = A374120 (n + 1)

end A374120

/-! ## A374120.P6060426004907155894

`filter[A374052(n+1), A374119(#)]`
-/

namespace A374120.P6060426004907155894
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374052 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A374119 (f1 j).toNat = 1) n)

end

end A374120.P6060426004907155894

namespace A374120

/-- `filter[A374052(n+1), A374119(#)]` -/
def P6060426004907155894.Spec : Prop :=
  ∀ n, P6060426004907155894.a n = A374120 (n + 1)

end A374120

/-! ## A374120.P12232706319630404750

`filter[A339746(n+1), A374051(#)]`
-/

namespace A374120.P12232706319630404750
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339746 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A374051 (f1 j).toNat = 1) n)

end

end A374120.P12232706319630404750

namespace A374120

/-- `filter[A339746(n+1), A374051(#)]` -/
def P12232706319630404750.Spec : Prop :=
  ∀ n, P12232706319630404750.a n = A374120 (n + 1)

end A374120

/-! ## A374120.P11406548035002827290

`filter[A339746(n+1), A374119(#)]`
-/

namespace A374120.P11406548035002827290
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339746 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A374119 (f1 j).toNat = 1) n)

end

end A374120.P11406548035002827290

namespace A374120

/-- `filter[A339746(n+1), A374119(#)]` -/
def P11406548035002827290.Spec : Prop :=
  ∀ n, P11406548035002827290.a n = A374120 (n + 1)

end A374120

/-! ## A374120.P7783369205581449619

`∩[A339746(n+1), A374052(n+1)]`
-/

namespace A374120.P7783369205581449619
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339746 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374052 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A374120.P7783369205581449619

namespace A374120

/-- `∩[A339746(n+1), A374052(n+1)]` -/
def P7783369205581449619.Spec : Prop :=
  ∀ n, (P7783369205581449619.a n : ℤ) = A374120 (n + 1)

end A374120

/-!
# A374121: a(n) = 1 if A328845(n) is a multiple of 3, otherwise 0, where A328845 is the first Fibonacci-based variant of the arithmetic derivative.

The programs for A374121, there is no canonical definition to state claims against.
-/

/-! ## A374121.P17827208322192533854

`char[A374122(n+1)]`
-/

namespace A374121.P17827208322192533854
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374122 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A374121.P17827208322192533854

/-! ## A374121.P4637325821995572416

`A079978(A374125(n))`
-/

namespace A374121.P4637325821995572416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079978 (A374125 n).toNat

end

end A374121.P4637325821995572416

/-! ## A374121.P15613180561621965973

`A359430(3*A374125(n))`
-/

namespace A374121.P15613180561621965973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359430 (3 * A374125 n).toNat

end

end A374121.P15613180561621965973

/-! ## A374121.P16618251650591362526

`A374117(3*A374125(n))`
-/

namespace A374121.P16618251650591362526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374117 (3 * A374125 n).toNat

end

end A374121.P16618251650591362526

/-! ## A374121.P10608977166720273781

`(A133263(A374125(n)+7)+1)%3`
-/

namespace A374121.P10608977166720273781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A133263 (A374125 n + 7).toNat + 1) 3

end

end A374121.P10608977166720273781

/-! ## A374121.P17872394656940866058

`val(A328845(n)²+6, 3)`
-/

namespace A374121.P17872394656940866058
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A328845 n ^ 2 + 6).toNat 3

end

end A374121.P17872394656940866058

/-!
# A374122: Numbers k for which A328845(k) is a multiple of 3, where A328845 is the first Fibonacci-based variant of the arithmetic derivative.

The programs for A374122, there is no canonical definition to state claims against.
-/

/-! ## A374122.P590973044454949378

`lt[0, A374121(n)]`
-/

namespace A374122.P590973044454949378
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374121 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A374122.P590973044454949378

/-! ## A374122.P17263525408036971254

`filter[A141468(n+1), A374121(#)]`
-/

namespace A374122.P17263525408036971254
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141468 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A374121 (f1 j).toNat = 1) n)

end

end A374122.P17263525408036971254

/-! ## A374122.P12286442469230353568

`filter[A173905(n+1), A374121(#)]`
-/

namespace A374122.P12286442469230353568
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173905 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A374121 (f1 j).toNat = 1) n)

end

end A374122.P12286442469230353568

/-! ## A374122.P4262541335655703947

`filter[A156657(n+1), A374121(#)]`
-/

namespace A374122.P4262541335655703947
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156657 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A374121 (f1 j).toNat = 1) n)

end

end A374122.P4262541335655703947

/-! ## A374122.P6672312751105352573

`filter[A045762(n+1), A374121(#)]`
-/

namespace A374122.P6672312751105352573
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045762 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A374121 (f1 j).toNat = 1) n)

end

end A374122.P6672312751105352573

/-! ## A374122.P7964681076955431160

`eq[A329684(n), A374121(n)]`
-/

namespace A374122.P7964681076955431160
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329684 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374121 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A374122.P7964681076955431160

/-! ## A374122.P6859972474025138583

`eq[A045496(n+1), A374121(n)]`
-/

namespace A374122.P6859972474025138583
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045496 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374121 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A374122.P6859972474025138583

/-! ## A374122.P1516737118556467458

`eq[A059811(n+1), A374121(n)]`
-/

namespace A374122.P1516737118556467458
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059811 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374121 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A374122.P1516737118556467458

/-! ## A374122.P3796273737461994681

`eq[A125846(n+1), A374121(n)]`
-/

namespace A374122.P3796273737461994681
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125846 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374121 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A374122.P3796273737461994681

/-! ## A374122.P8367901454336161106

`eq[A283149(n+1), A374121(n)]`
-/

namespace A374122.P8367901454336161106
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283149 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374121 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A374122.P8367901454336161106

/-! ## A374122.P7235465463453941155

`filter[A179005(n+1), A374121(#)]`
-/

namespace A374122.P7235465463453941155
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179005 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A374121 (f1 j).toNat = 1) n)

end

end A374122.P7235465463453941155

/-!
# A374123: a(n) = A328768(n) mod 360, where A328768 is the first primorial based variant of the arithmetic derivative.

The programs for A374123, there is no canonical definition to state claims against.
-/

/-! ## A374123.P13845872188191289727

`A328768(n)%360`
-/

namespace A374123.P13845872188191289727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A328768 n) 360

end

end A374123.P13845872188191289727

/-!
# A374124: a(n) = A113177(n) mod 360, where A113177 is fully additive with a(p) = Fibonacci(p).

The programs for A374124, the canonical program `A374124.P11400155404206202133` is in `Seq.B002.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A374124 has offset 1).

The definition of A374124 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A113177, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A374124.P11400155404206202133

`A113177(n+1)%360`

The canonical program, it is in `Seq.B002.C006`.
-/

namespace A374124

/-- `A113177(n+1)%360` -/
def P11400155404206202133.Spec : Prop :=
  ∀ n, P11400155404206202133.a n = A374124 (n + 1)

theorem P11400155404206202133.correct : P11400155404206202133.Spec := by
  intro n
  simp only [A374124, Nat.add_sub_cancel]

end A374124

/-!
# A374125: a(n) = A328845(n) mod 360, where A328845 is the first Fibonacci-based variant of the arithmetic derivative.

The programs for A374125, there is no canonical definition to state claims against.
-/

/-! ## A374125.P16868161163553618151

`A328845(n)%360`
-/

namespace A374125.P16868161163553618151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A328845 n) 360

end

end A374125.P16868161163553618151

/-!
# A374126: a(n) = gcd(sigma(n), sopfr(n)), where sigma is the sum of divisors, and sopfr is the sum of prime factors with repetition.

The programs for A374126, the canonical program `A374126.P13314813627365371655` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A374126 has offset 1).

The definition of A374126 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A374126.P13314813627365371655

`gcd(∑{d}[n+1, #], ∑{p}[n+1, #*val(n+1, #)])`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A374126

/-- `gcd(∑{d}[n+1, #], ∑{p}[n+1, #*val(n+1, #)])` -/
def P13314813627365371655.Spec : Prop :=
  ∀ n, (P13314813627365371655.a n : ℤ) = A374126 (n + 1)

theorem P13314813627365371655.correct : P13314813627365371655.Spec := by
  intro n
  simp only [A374126, Nat.add_sub_cancel]

end A374126

/-! ## A374126.P4310249250801075983

`gcd((-1)^n*∑{d}[n+1, #], A086665(n+1))`
-/

namespace A374126.P4310249250801075983
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd ((-1) ^ n * ((∑ d ∈ Nat.divisors (f1 n), d : ℕ) : ℤ)) (A086665 (n + 1))

end

end A374126.P4310249250801075983

namespace A374126

/-- `gcd((-1)^n*∑{d}[n+1, #], A086665(n+1))` -/
def P4310249250801075983.Spec : Prop :=
  ∀ n, (P4310249250801075983.a n : ℤ) = A374126 (n + 1)

end A374126

/-! ## A374126.P16486137246313453597

`gcd(Δ[A025281(n)], A000203(n+1))`
-/

namespace A374126.P16486137246313453597
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025281 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (f1 (n + 1) - f1 n) (A000203 (n + 1))

end

end A374126.P16486137246313453597

namespace A374126

/-- `gcd(Δ[A025281(n)], A000203(n+1))` -/
def P16486137246313453597.Spec : Prop :=
  ∀ n, (P16486137246313453597.a n : ℤ) = A374126 (n + 1)

end A374126

/-! ## A374126.P7968170746252921383

`gcd(Δ[A160664(n)], A001414(n+1))`
-/

namespace A374126.P7968170746252921383
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160664 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (f1 (n + 1) - f1 n) (A001414 (n + 1))

end

end A374126.P7968170746252921383

namespace A374126

/-- `gcd(Δ[A160664(n)], A001414(n+1))` -/
def P7968170746252921383.Spec : Prop :=
  ∀ n, (P7968170746252921383.a n : ℤ) = A374126 (n + 1)

end A374126

/-! ## A374126.P17974369008288594621

`gcd(A086665(n+1), A143348(n+1))`
-/

namespace A374126.P17974369008288594621
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A086665 (n + 1)) (A143348 (n + 1))

end

end A374126.P17974369008288594621

namespace A374126

/-- `gcd(A086665(n+1), A143348(n+1))` -/
def P17974369008288594621.Spec : Prop :=
  ∀ n, (P17974369008288594621.a n : ℤ) = A374126 (n + 1)

end A374126

/-! ## A374126.P4449785975842859948

`gcd(∑{d}[n+1, #-A120007(#)], A352167(n+1))`
-/

namespace A374126.P4449785975842859948
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (∑ d ∈ Nat.divisors (f1 n), ((d : ℤ) - A120007 d)) (A352167 (n + 1))

end

end A374126.P4449785975842859948

namespace A374126

/-- `gcd(∑{d}[n+1, #-A120007(#)], A352167(n+1))` -/
def P4449785975842859948.Spec : Prop :=
  ∀ n, (P4449785975842859948.a n : ℤ) = A374126 (n + 1)

end A374126

/-!
# A374127: a(n) = (sigma(n) - sopfr(n)) - n, where sigma is the sum of divisors, and sopfr is the sum of prime factors (with repetition).

The programs for A374127, the canonical program `A374127.P1125013145374094504` is in `Seq.B002.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A374127 has offset 1).

The definition of A374127 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A075254, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A374127.P4608929482296116170

`A086665(n+1)-(n+1)`
-/

namespace A374127.P4608929482296116170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086665 (n + 1) - (n + 1 : ℤ)

end

end A374127.P4608929482296116170

namespace A374127

/-- `A086665(n+1)-(n+1)` -/
def P4608929482296116170.Spec : Prop :=
  ∀ n, P4608929482296116170.a n = A374127 (n + 1)

end A374127

/-! ## A374127.P1125013145374094504

`A000203(n+1)-A075254(n+1)`

The canonical program, it is in `Seq.B002.C006`.
-/

namespace A374127

/-- `A000203(n+1)-A075254(n+1)` -/
def P1125013145374094504.Spec : Prop :=
  ∀ n, P1125013145374094504.a n = A374127 (n + 1)

theorem P1125013145374094504.correct : P1125013145374094504.Spec := by
  intro n
  simp only [A374127, Nat.add_sub_cancel]

end A374127

/-! ## A374127.P6651848395726643974

`∑{d}[n+1, #]-∑{p}[n+1, #*val(n+1, #)]-(n+1)`
-/

namespace A374127.P6651848395726643974
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ d ∈ Nat.divisors (f1 n), d : ℕ) : ℤ) - ((∑ p ∈ Nat.primeFactors (f2 n), p * SequenceMachineLib.valuation (n + 1) p : ℕ) : ℤ) - (n + 1 : ℤ)

end

end A374127.P6651848395726643974

namespace A374127

/-- `∑{d}[n+1, #]-∑{p}[n+1, #*val(n+1, #)]-(n+1)` -/
def P6651848395726643974.Spec : Prop :=
  ∀ n, P6651848395726643974.a n = A374127 (n + 1)

end A374127

/-! ## A374127.P16358998601577410666

`A075255(n+1)+A033880(n+1)`
-/

namespace A374127.P16358998601577410666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075255 (n + 1) + A033880 (n + 1)

end

end A374127.P16358998601577410666

namespace A374127

/-- `A075255(n+1)+A033880(n+1)` -/
def P16358998601577410666.Spec : Prop :=
  ∀ n, P16358998601577410666.a n = A374127 (n + 1)

end A374127

/-! ## A374127.P8977859669051932192

`A001065(n+1)-A001414(n+1)`
-/

namespace A374127.P8977859669051932192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001065 (n + 1) - A001414 (n + 1)

end

end A374127.P8977859669051932192

namespace A374127

/-- `A001065(n+1)-A001414(n+1)` -/
def P8977859669051932192.Spec : Prop :=
  ∀ n, P8977859669051932192.a n = A374127 (n + 1)

end A374127

/-! ## A374127.P13644480560419854137

`A075255(n+1)-A033879(n+1)`
-/

namespace A374127.P13644480560419854137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075255 (n + 1) - A033879 (n + 1)

end

end A374127.P13644480560419854137

namespace A374127

/-- `A075255(n+1)-A033879(n+1)` -/
def P13644480560419854137.Spec : Prop :=
  ∀ n, P13644480560419854137.a n = A374127 (n + 1)

end A374127

/-! ## A374127.P11260982892492076894

`A001065(n+1)-(A352167(n+1)+A061397(n+1))`
-/

namespace A374127.P11260982892492076894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001065 (n + 1) - (A352167 (n + 1) + A061397 (n + 1))

end

end A374127.P11260982892492076894

namespace A374127

/-- `A001065(n+1)-(A352167(n+1)+A061397(n+1))` -/
def P11260982892492076894.Spec : Prop :=
  ∀ n, P11260982892492076894.a n = A374127 (n + 1)

end A374127

/-!
# A374128: a(n) = 1 if gcd(A075255(n), A374127(n)) = abs(A374127(n)), otherwise 0.

The programs for A374128, there is no canonical definition to state claims against.
-/

/-! ## A374128.P15732179983795283806

`char[A374129(n+1)-1]`
-/

namespace A374128.P15732179983795283806
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374129 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A374128.P15732179983795283806

/-! ## A374128.P10106779868881172127

`A381101(A039930(n+1))`
-/

namespace A374128.P10106779868881172127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381101 (A039930 (n + 1)).toNat

end

end A374128.P10106779868881172127

/-! ## A374128.P9309726293696210206

`A078588(A283986(n+1)%A037290(n+1))`
-/

namespace A374128.P9309726293696210206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078588 (Int.tmod (A283986 (n + 1)) (A037290 (n + 1))).toNat

end

end A374128.P9309726293696210206

/-! ## A374128.P237353137494654277

`A113685(A355905(3*(n+1))+A001222(n+1))`
-/

namespace A374128.P237353137494654277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113685 (A355905 (3 * (n + 1)) + A001222 (n + 1)).toNat

end

end A374128.P237353137494654277

/-! ## A374128.P4351378954367558551

`A286222(A355905(3*(n+1))+A001222(n+1))`
-/

namespace A374128.P4351378954367558551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286222 (A355905 (3 * (n + 1)) + A001222 (n + 1)).toNat

end

end A374128.P4351378954367558551

/-!
# A374129: Numbers k for which gcd(A075255(k), A374127(k)) = abs(A374127(k)); numbers k such that A075255(k) is a multiple of A374127(k).

The programs for A374129, there is no canonical definition to state claims against.
-/

/-! ## A374129.P16547236697445059221

`filter[A070915(n+1), A374128(#)]`
-/

namespace A374129.P16547236697445059221
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070915 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A374128 (f1 j).toNat = 1) n)

end

end A374129.P16547236697445059221

/-! ## A374129.P12220179543953882925

`filter[A361232(n+1), A374128(#)]`
-/

namespace A374129.P12220179543953882925
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361232 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A374128 (f1 j).toNat = 1) n)

end

end A374129.P12220179543953882925

/-! ## A374129.P14474492610835872619

`filter[A342523(n+1), A374128(#)]`
-/

namespace A374129.P14474492610835872619
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342523 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A374128 (f1 j).toNat = 1) n)

end

end A374129.P14474492610835872619

/-! ## A374129.P5787898500929679503

`filter[A027855(n+1), A374128(#)]`
-/

namespace A374129.P5787898500929679503
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027855 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A374128 (f1 j).toNat = 1) n)

end

end A374129.P5787898500929679503

/-! ## A374129.P2458764738013145964

`filter[A109425(n+1), A374128(#)]`
-/

namespace A374129.P2458764738013145964
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109425 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A374128 (f1 j).toNat = 1) n)

end

end A374129.P2458764738013145964

/-! ## A374129.P18268596151462451524

`filter[A263837(n+1), A374128(#)]`
-/

namespace A374129.P18268596151462451524
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263837 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A374128 (f1 j).toNat = 1) n)

end

end A374129.P18268596151462451524

/-! ## A374129.P15658624133258100865

`filter[A392650(n+1), A374128(#)]`
-/

namespace A374129.P15658624133258100865
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392650 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A374128 (f1 j).toNat = 1) n)

end

end A374129.P15658624133258100865

/-! ## A374129.P10214803617163061248

`filter[A085235(n+1), A374128(#)]`
-/

namespace A374129.P10214803617163061248
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085235 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A374128 (f1 j).toNat = 1) n)

end

end A374129.P10214803617163061248

/-! ## A374129.P11497225692272011392

`filter[A285100(n+1), A374128(#)]`
-/

namespace A374129.P11497225692272011392
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285100 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A374128 (f1 j).toNat = 1) n)

end

end A374129.P11497225692272011392

/-! ## A374129.P14502785986032631479

`filter[A348577(n+1), A374128(#)]`
-/

namespace A374129.P14502785986032631479
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348577 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A374128 (f1 j).toNat = 1) n)

end

end A374129.P14502785986032631479

/-! ## A374129.P18008084294025705505

`filter[A028261(n+1), A374128(#)]`
-/

namespace A374129.P18008084294025705505
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028261 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A374128 (f1 j).toNat = 1) n)

end

end A374129.P18008084294025705505

/-! ## A374129.P3089989382558565722

`filter[A299702(n+1), A374128(#)]`
-/

namespace A374129.P3089989382558565722
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299702 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A374128 (f1 j).toNat = 1) n)

end

end A374129.P3089989382558565722

/-! ## A374129.P11455979286934560078

`filter[A122132(n+1), A374128(#)]`
-/

namespace A374129.P11455979286934560078
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122132 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A374128 (f1 j).toNat = 1) n)

end

end A374129.P11455979286934560078

/-! ## A374129.P16878373252554029133

`filter[A325360(n+1), A374128(#)]`
-/

namespace A374129.P16878373252554029133
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325360 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A374128 (f1 j).toNat = 1) n)

end

end A374129.P16878373252554029133

/-! ## A374129.P18099893824231751107

`filter[A353511(n+1), A374128(#)]`
-/

namespace A374129.P18099893824231751107
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353511 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A374128 (f1 j).toNat = 1) n)

end

end A374129.P18099893824231751107

/-! ## A374129.P7366430352885946578

`filter[A383397(n+1), A374128(#)]`
-/

namespace A374129.P7366430352885946578
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383397 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A374128 (f1 j).toNat = 1) n)

end

end A374129.P7366430352885946578

/-! ## A374129.P15875715813867784964

`filter[A364461(n+1), A374128(#)]`
-/

namespace A374129.P15875715813867784964
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364461 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A374128 (f1 j).toNat = 1) n)

end

end A374129.P15875715813867784964

/-! ## A374129.P142220312058565620

`filter[A317468(n+2), A374128(#)]`
-/

namespace A374129.P142220312058565620
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317468 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A374128 (f1 j).toNat = 1) n)

end

end A374129.P142220312058565620

/-! ## A374129.P13057832619849512310

`filter[A375396(n+1), A374128(#)]`
-/

namespace A374129.P13057832619849512310
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375396 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A374128 (f1 j).toNat = 1) n)

end

end A374129.P13057832619849512310

/-! ## A374129.P5749192675349017180

`filter[A168183(n+1), A374128(#)]`
-/

namespace A374129.P5749192675349017180
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168183 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A374128 (f1 j).toNat = 1) n)

end

end A374129.P5749192675349017180

/-!
# A374130: a(n) = 1 if bitwise-XOR of the exponents of primes in the prime factorization of n is equal to 1, otherwise 0.

The programs for A374130, the canonical program `A374130.P6626531398769690699` is in `Seq.B013.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A374130 has offset 1).

The definition of A374130 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A374130.P7401074334127044290

`char[eq[1, A268386(n+1)]]`
-/

namespace A374130.P7401074334127044290
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268386 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A374130.P7401074334127044290

namespace A374130

/-- `char[eq[1, A268386(n+1)]]` -/
def P7401074334127044290.Spec : Prop :=
  ∀ n, (P7401074334127044290.a n : ℤ) = A374130 (n + 1)

end A374130

/-! ## A374130.P2807965579321390154

`char[eq[1, A268387(n+1)]]`
-/

namespace A374130.P2807965579321390154
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268387 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A374130.P2807965579321390154

namespace A374130

/-- `char[eq[1, A268387(n+1)]]` -/
def P2807965579321390154.Spec : Prop :=
  ∀ n, (P2807965579321390154.a n : ℤ) = A374130 (n + 1)

end A374130

/-! ## A374130.P17624518951647229719

`A025465(A268387(n+1)+8)`
-/

namespace A374130.P17624518951647229719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025465 (A268387 (n + 1) + 8).toNat

end

end A374130.P17624518951647229719

namespace A374130

/-- `A025465(A268387(n+1)+8)` -/
def P17624518951647229719.Spec : Prop :=
  ∀ n, P17624518951647229719.a n = A374130 (n + 1)

end A374130

/-! ## A374130.P1034479532853922179

`A078442(2^A268387(n+1))`
-/

namespace A374130.P1034479532853922179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078442 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A268387 (n + 1) : ℤ))).toNat

end

end A374130.P1034479532853922179

namespace A374130

/-- `A078442(2^A268387(n+1))` -/
def P1034479532853922179.Spec : Prop :=
  ∀ n, P1034479532853922179.a n = A374130 (n + 1)

end A374130

/-! ## A374130.P6626531398769690699

`A099777(A293442(n+1))%2`

The canonical program, it is in `Seq.B013.C000`.
-/

namespace A374130

/-- `A099777(A293442(n+1))%2` -/
def P6626531398769690699.Spec : Prop :=
  ∀ n, P6626531398769690699.a n = A374130 (n + 1)

theorem P6626531398769690699.correct : P6626531398769690699.Spec := by
  intro n
  simp only [A374130, Nat.add_sub_cancel]

end A374130

/-! ## A374130.P10297426904390369716

`A000073(C(2, A268387(n+1)))`
-/

namespace A374130.P10297426904390369716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000073 (Nat.choose 2 (A268387 (n + 1)).toNat)

end

end A374130.P10297426904390369716

namespace A374130

/-- `A000073(C(2, A268387(n+1)))` -/
def P10297426904390369716.Spec : Prop :=
  ∀ n, P10297426904390369716.a n = A374130 (n + 1)

end A374130

/-! ## A374130.P7760044920481841773

`and(A152271(2*(n+1)), A178501(A268387(n+1)))`
-/

namespace A374130.P7760044920481841773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A152271 (2 * (n + 1))) (A178501 (A268387 (n + 1)).toNat)

end

end A374130.P7760044920481841773

namespace A374130

/-- `and(A152271(2*(n+1)), A178501(A268387(n+1)))` -/
def P7760044920481841773.Spec : Prop :=
  ∀ n, P7760044920481841773.a n = A374130 (n + 1)

end A374130

/-! ## A374130.P4763485316344775109

`and(1, A178501(A268387(n+1)²))`
-/

namespace A374130.P4763485316344775109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A178501 (A268387 (n + 1) ^ 2).toNat)

end

end A374130.P4763485316344775109

namespace A374130

/-- `and(1, A178501(A268387(n+1)²))` -/
def P4763485316344775109.Spec : Prop :=
  ∀ n, P4763485316344775109.a n = A374130 (n + 1)

end A374130

/-! ## A374130.P12909166827957504715

`A010052(2*A253139(n+1))`
-/

namespace A374130.P12909166827957504715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010052 (2 * A253139 (n + 1)).toNat

end

end A374130.P12909166827957504715

namespace A374130

/-- `A010052(2*A253139(n+1))` -/
def P12909166827957504715.Spec : Prop :=
  ∀ n, P12909166827957504715.a n = A374130 (n + 1)

end A374130

/-! ## A374130.P11975751238710557374

`A374466(n+1)+A000007(A062718(n+1))`
-/

namespace A374130.P11975751238710557374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374466 (n + 1) + A000007 (A062718 (n + 1)).toNat

end

end A374130.P11975751238710557374

namespace A374130

/-- `A374466(n+1)+A000007(A062718(n+1))` -/
def P11975751238710557374.Spec : Prop :=
  ∀ n, P11975751238710557374.a n = A374130 (n + 1)

end A374130

/-!
# A374131: Lexicographically earliest infinite sequence such that for all i, j >= 1, a(i) = a(j) => f(i) = f(j), where f(1) = 1, and for n > 1, f(n) = [A083345(n), A374132(n), A374133(n)], where A083345 is the numerator of the fully additive function with a(p) = 1/p, and A374132 and A374133 are the 2- and 3-adic valuations of A276085, which is fully additive with a(p) = p#/p.

The programs for A374131, there is no canonical definition to state claims against.
-/

/-! ## A374131.P4960070365106111709

`A305900(n+1)-A043545(A024493(n))`
-/

namespace A374131.P4960070365106111709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305900 (n + 1) - A043545 (A024493 n).toNat

end

end A374131.P4960070365106111709

/-! ## A374131.P16547771580246887622

`A305900(n+1)-A095792(A005578(n))`
-/

namespace A374131.P16547771580246887622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305900 (n + 1) - A095792 (A005578 n).toNat

end

end A374131.P16547771580246887622

/-! ## A374131.P964782167833181461

`A305900(n+1)-A023532(A212501(n))`
-/

namespace A374131.P964782167833181461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305900 (n + 1) - A023532 (A212501 n).toNat

end

end A374131.P964782167833181461

/-! ## A374131.P15262566990118992057

`A374040(n+1)-A179184(A011782(n))`
-/

namespace A374131.P15262566990118992057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374040 (n + 1) - A179184 (A011782 n).toNat

end

end A374131.P15262566990118992057

/-! ## A374131.P1365225878652384102

`A305900(n+1)-A023532(A212517(n+1))`
-/

namespace A374131.P1365225878652384102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305900 (n + 1) - A023532 (A212517 (n + 1)).toNat

end

end A374131.P1365225878652384102

/-!
# A374132: The 2-adic valuation of A276085(n), where A276085 is the primorial base log-function.

The programs for A374132, there is no canonical definition to state claims against.
-/

/-! ## A374132.P5530051174406538997

`A007814(A276085(n+2))`
-/

namespace A374132.P5530051174406538997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (A276085 (n + 2)).toNat

end

end A374132.P5530051174406538997

/-! ## A374132.P17085221730806414515

`val(A395059(n+2), 2)`
-/

namespace A374132.P17085221730806414515
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A395059 (n + 2)).toNat 2

end

end A374132.P17085221730806414515

/-! ## A374132.P14641034388943350982

`A276085(gcd(A102376(n), A276085(n+2)))`
-/

namespace A374132.P14641034388943350982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276085 (Int.gcd (A102376 n) (A276085 (n + 2)))

end

end A374132.P14641034388943350982

/-! ## A374132.P17648747793842568974

`A007814((2*n+1)*A372576(n+2))`
-/

namespace A374132.P17648747793842568974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 ((2 * n + 1 : ℤ) * A372576 (n + 2)).toNat

end

end A374132.P17648747793842568974

/-!
# A374133: The 3-adic valuation of A276085(n), where A276085 is the primorial base log-function.

The programs for A374133, there is no canonical definition to state claims against.
-/

/-! ## A374133.P4729042848230009534

`val(A276085(n+2), 3)`
-/

namespace A374133.P4729042848230009534
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A276085 (n + 2)).toNat 3

end

end A374133.P4729042848230009534

/-! ## A374133.P15585738076717440899

`A167156(2*n+3)+A007949(A372576(n+2))`
-/

namespace A374133.P15585738076717440899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167156 (2 * n + 3) + A007949 (A372576 (n + 2)).toNat

end

end A374133.P15585738076717440899

/-! ## A374133.P6096575600644532970

`A372573(A212759(n+1))`
-/

namespace A374133.P6096575600644532970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372573 (A212759 (n + 1)).toNat

end

end A374133.P6096575600644532970

/-! ## A374133.P15005638600982211526

`A372573(A212763(n+1))`
-/

namespace A374133.P15005638600982211526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372573 (A212763 (n + 1)).toNat

end

end A374133.P15005638600982211526

/-! ## A374133.P13209636863530030776

`A372573(A061537(n+2))`
-/

namespace A374133.P13209636863530030776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372573 (A061537 (n + 2)).toNat

end

end A374133.P13209636863530030776

/-!
# A374134: a(n) = 1 if 2*phi(n) > n, otherwise 0, where phi is Euler's totient function phi, A000010.

The programs for A374134, the canonical program `A374134.P15663071369572716484` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A374134 has offset 1).

The definition of A374134 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A374134.P15663071369572716484

`floor(∏{p}[n+1, #/(#-1)])!%2`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A374134

/-- `floor(∏{p}[n+1, #/(#-1)])!%2` -/
def P15663071369572716484.Spec : Prop :=
  ∀ n, (P15663071369572716484.a n : ℤ) = A374134 (n + 1)

theorem P15663071369572716484.correct : P15663071369572716484.Spec := by
  intro n
  simp only [A374134, Nat.add_sub_cancel]

end A374134

/-! ## A374134.P13309050496895044321

`and(1, floor(∏{p}[n+1, #/(#-1)])!)`
-/

namespace A374134.P13309050496895044321
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 1 (Nat.factorial ⌊∏ p ∈ Nat.primeFactors (f1 n), (p : ℚ) / ((p : ℤ) - 1 : ℚ)⌋.toNat)

end

end A374134.P13309050496895044321

namespace A374134

/-- `and(1, floor(∏{p}[n+1, #/(#-1)])!)` -/
def P13309050496895044321.Spec : Prop :=
  ∀ n, (P13309050496895044321.a n : ℤ) = A374134 (n + 1)

theorem P13309050496895044321.correct : P13309050496895044321.Spec := by
  intro n
  simp only [A374134, Nat.add_sub_cancel, A374134.P13309050496895044321.f1, A374134.P13309050496895044321.a, A374134.P15663071369572716484.f1, A374134.P15663071369572716484.a, SequenceMachineLib.memo_apply]
  try simp

end A374134

/-! ## A374134.P10501055376770437215

`floor(floor(∏{p}[n+1, #/(#-1)])^(-2))`
-/

namespace A374134.P10501055376770437215
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(⌊∏ p ∈ Nat.primeFactors (f1 n), (p : ℚ) / ((p : ℤ) - 1 : ℚ)⌋ : ℚ) ^ (-2 : ℤ)⌋

end

end A374134.P10501055376770437215

namespace A374134

/-- `floor(floor(∏{p}[n+1, #/(#-1)])^(-2))` -/
def P10501055376770437215.Spec : Prop :=
  ∀ n, P10501055376770437215.a n = A374134 (n + 1)

end A374134

/-! ## A374134.P4765257242262524859

`round(∏{p}[n+1, #-1]/(∏{p}[n+1, #]+1))`
-/

namespace A374134.P4765257242262524859
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (((∏ p ∈ Nat.primeFactors (f1 n), ((p : ℤ) - 1) : ℤ) : ℚ) / ((∏ p ∈ Nat.primeFactors (f2 n), p + 1 : ℕ) : ℚ))

end

end A374134.P4765257242262524859

namespace A374134

/-- `round(∏{p}[n+1, #-1]/(∏{p}[n+1, #]+1))` -/
def P4765257242262524859.Spec : Prop :=
  ∀ n, P4765257242262524859.a n = A374134 (n + 1)

end A374134

/-! ## A374134.P1117365722999180385

`floor((n+1)*(n+1)/∏{p}[n+1, #]*∏{p}[n+1, #-1]/((floor(n/2)+2)*(n-1)+3))`
-/

namespace A374134.P1117365722999180385
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n + 1 : ℚ) * ((n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ) * ((∏ p ∈ Nat.primeFactors (f2 n), ((p : ℤ) - 1) : ℤ) : ℚ)) / ((⌊(n : ℚ) / 2⌋ + 2) * ((n : ℤ) - 1) + 3 : ℚ)⌋

end

end A374134.P1117365722999180385

namespace A374134

/-- `floor((n+1)*(n+1)/∏{p}[n+1, #]*∏{p}[n+1, #-1]/((floor(n/2)+2)*(n-1)+3))` -/
def P1117365722999180385.Spec : Prop :=
  ∀ n, P1117365722999180385.a n = A374134 (n + 1)

end A374134

/-! ## A374134.P944698862777723782

`char[A089684(n+1)-1]`
-/

namespace A374134.P944698862777723782
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089684 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A374134.P944698862777723782

namespace A374134

/-- `char[A089684(n+1)-1]` -/
def P944698862777723782.Spec : Prop :=
  ∀ n, (P944698862777723782.a n : ℤ) = A374134 (n + 1)

end A374134

/-! ## A374134.P10456775112177460889

`ceil(A083254(n+1)/(n+1))`
-/

namespace A374134.P10456775112177460889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A083254 (n + 1) : ℚ) / (n + 1 : ℚ)⌉

end

end A374134.P10456775112177460889

namespace A374134

/-- `ceil(A083254(n+1)/(n+1))` -/
def P10456775112177460889.Spec : Prop :=
  ∀ n, P10456775112177460889.a n = A374134 (n + 1)

end A374134

/-! ## A374134.P13956605468783325249

`round(A000010(n+1)/(n+2))`
-/

namespace A374134.P13956605468783325249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A000010 (n + 1) : ℚ) / (n + 2 : ℚ))

end

end A374134.P13956605468783325249

namespace A374134

/-- `round(A000010(n+1)/(n+2))` -/
def P13956605468783325249.Spec : Prop :=
  ∀ n, P13956605468783325249.a n = A374134 (n + 1)

end A374134

/-! ## A374134.P16144920049822429740

`floor(A000010(n+1)/(A110654(n)+1))`
-/

namespace A374134.P16144920049822429740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A000010 (n + 1) : ℚ) / (A110654 n + 1 : ℚ)⌋

end

end A374134.P16144920049822429740

namespace A374134

/-- `floor(A000010(n+1)/(A110654(n)+1))` -/
def P16144920049822429740.Spec : Prop :=
  ∀ n, P16144920049822429740.a n = A374134 (n + 1)

end A374134

/-! ## A374134.P8589589768004959531

`A062356(n+1)%A062356(3*n+2)`
-/

namespace A374134.P8589589768004959531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A062356 (n + 1)) (A062356 (3 * n + 2))

end

end A374134.P8589589768004959531

namespace A374134

/-- `A062356(n+1)%A062356(3*n+2)` -/
def P8589589768004959531.Spec : Prop :=
  ∀ n, P8589589768004959531.a n = A374134 (n + 1)

end A374134

/-! ## A374134.P8428877807626051935

`and(n+1, A246146(A317145(n+1)))`
-/

namespace A374134.P8428877807626051935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n + 1 : ℤ) (A246146 (A317145 (n + 1)).toNat)

end

end A374134.P8428877807626051935

namespace A374134

/-- `and(n+1, A246146(A317145(n+1)))` -/
def P8428877807626051935.Spec : Prop :=
  ∀ n, P8428877807626051935.a n = A374134 (n + 1)

end A374134

/-!
# A374135: Nonmultiples of 3 whose sum of divisors is also a nonmultiple of 3.

The programs for A374135, the canonical program `A374135.P13347825855800962703` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A374135 has offset 1).

The definition of A374135 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9598 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A374135.P13347825855800962703

`filter[A202822(n+1), A070563(#)]`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A374135

/-- `filter[A202822(n+1), A070563(#)]` -/
def P13347825855800962703.Spec : Prop :=
  ∀ n, P13347825855800962703.a n = A374135 (n + 1)

theorem P13347825855800962703.correct : P13347825855800962703.Spec := by
  intro n
  simp only [A374135, Nat.add_sub_cancel]

end A374135

/-! ## A374135.P15468596726035912491

`filter[A202822(n+1), A353815(#)]`
-/

namespace A374135.P15468596726035912491
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202822 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353815 (f1 j).toNat = 1) n)

end

end A374135.P15468596726035912491

namespace A374135

/-- `filter[A202822(n+1), A353815(#)]` -/
def P15468596726035912491.Spec : Prop :=
  ∀ n, P15468596726035912491.a n = A374135 (n + 1)

end A374135

/-! ## A374135.P10418549021364261945

`filter[A243175(n+2), A070563(#)]`
-/

namespace A374135.P10418549021364261945
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243175 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A070563 (f1 j).toNat = 1) n)

end

end A374135.P10418549021364261945

namespace A374135

/-- `filter[A243175(n+2), A070563(#)]` -/
def P10418549021364261945.Spec : Prop :=
  ∀ n, P10418549021364261945.a n = A374135 (n + 1)

end A374135

/-! ## A374135.P12475359642092461732

`filter[A329963(n+1), A070563(#)]`
-/

namespace A374135.P12475359642092461732
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329963 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A070563 (f1 j).toNat = 1) n)

end

end A374135.P12475359642092461732

namespace A374135

/-- `filter[A329963(n+1), A070563(#)]` -/
def P12475359642092461732.Spec : Prop :=
  ∀ n, P12475359642092461732.a n = A374135 (n + 1)

end A374135

/-! ## A374135.P5569100833058626296

`filter[A329963(n+1), A187074(#)]`
-/

namespace A374135.P5569100833058626296
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329963 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A187074 (f1 j).toNat = 1) n)

end

end A374135.P5569100833058626296

namespace A374135

/-- `filter[A329963(n+1), A187074(#)]` -/
def P5569100833058626296.Spec : Prop :=
  ∀ n, P5569100833058626296.a n = A374135 (n + 1)

end A374135

/-! ## A374135.P7655045283936755127

`filter[A329963(n+1), A373155(#)]`
-/

namespace A374135.P7655045283936755127
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329963 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373155 (f1 j).toNat = 1) n)

end

end A374135.P7655045283936755127

namespace A374135

/-- `filter[A329963(n+1), A373155(#)]` -/
def P7655045283936755127.Spec : Prop :=
  ∀ n, P7655045283936755127.a n = A374135 (n + 1)

end A374135

/-! ## A374135.P9683699443264621012

`∩[A202822(n+1), A329963(n+1)]`
-/

namespace A374135.P9683699443264621012
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202822 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329963 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A374135.P9683699443264621012

namespace A374135

/-- `∩[A202822(n+1), A329963(n+1)]` -/
def P9683699443264621012.Spec : Prop :=
  ∀ n, (P9683699443264621012.a n : ℤ) = A374135 (n + 1)

end A374135

/-! ## A374135.P17432028218288968844

`eq[1, A070563(n+1)]+1`
-/

namespace A374135.P17432028218288968844
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070563 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A374135.P17432028218288968844

namespace A374135

/-- `eq[1, A070563(n+1)]+1` -/
def P17432028218288968844.Spec : Prop :=
  ∀ n, (P17432028218288968844.a n : ℤ) = A374135 (n + 1)

end A374135

/-! ## A374135.P1843744207183770396

`filter[A097503(n+1), A070563(#)]`
-/

namespace A374135.P1843744207183770396
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097503 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A070563 (f1 j).toNat = 1) n)

end

end A374135.P1843744207183770396

namespace A374135

/-- `filter[A097503(n+1), A070563(#)]` -/
def P1843744207183770396.Spec : Prop :=
  ∀ n, P1843744207183770396.a n = A374135 (n + 1)

end A374135

/-! ## A374135.P1563896440717260497

`filter[A003136(n+2), A070563(#)]`
-/

namespace A374135.P1563896440717260497
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003136 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A070563 (f1 j).toNat = 1) n)

end

end A374135.P1563896440717260497

namespace A374135

/-- `filter[A003136(n+2), A070563(#)]` -/
def P1563896440717260497.Spec : Prop :=
  ∀ n, P1563896440717260497.a n = A374135 (n + 1)

end A374135

/-! ## A374135.P319643580503520787

`filter[A084089(n+1), A070563(#)]`
-/

namespace A374135.P319643580503520787
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084089 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A070563 (f1 j).toNat = 1) n)

end

end A374135.P319643580503520787

namespace A374135

/-- `filter[A084089(n+1), A070563(#)]` -/
def P319643580503520787.Spec : Prop :=
  ∀ n, P319643580503520787.a n = A374135 (n + 1)

end A374135

/-! ## A374135.P11693502743414050123

`filter[A084089(n+1), A353815(#)]`
-/

namespace A374135.P11693502743414050123
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084089 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353815 (f1 j).toNat = 1) n)

end

end A374135.P11693502743414050123

namespace A374135

/-- `filter[A084089(n+1), A353815(#)]` -/
def P11693502743414050123.Spec : Prop :=
  ∀ n, P11693502743414050123.a n = A374135 (n + 1)

end A374135

/-! ## A374135.P11058383669662966512

`∩[A084089(n+1), A329963(n+1)]`
-/

namespace A374135.P11058383669662966512
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084089 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329963 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A374135.P11058383669662966512

namespace A374135

/-- `∩[A084089(n+1), A329963(n+1)]` -/
def P11058383669662966512.Spec : Prop :=
  ∀ n, (P11058383669662966512.a n : ℤ) = A374135 (n + 1)

end A374135

/-! ## A374135.P12002190871701464281

`filter[A035246(n+1), A070563(#)]`
-/

namespace A374135.P12002190871701464281
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035246 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A070563 (f1 j).toNat = 1) n)

end

end A374135.P12002190871701464281

namespace A374135

/-- `filter[A035246(n+1), A070563(#)]` -/
def P12002190871701464281.Spec : Prop :=
  ∀ n, P12002190871701464281.a n = A374135 (n + 1)

end A374135

/-! ## A374135.P2087166943427218097

`filter[A016777(n), A070563(#)]`
-/

namespace A374135.P2087166943427218097
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016777 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A070563 (f1 j).toNat = 1) n)

end

end A374135.P2087166943427218097

namespace A374135

/-- `filter[A016777(n), A070563(#)]` -/
def P2087166943427218097.Spec : Prop :=
  ∀ n, P2087166943427218097.a n = A374135 (n + 1)

end A374135

/-! ## A374135.P2789939779251357464

`filter[A016777(n), A353815(#)]`
-/

namespace A374135.P2789939779251357464
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016777 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353815 (f1 j).toNat = 1) n)

end

end A374135.P2789939779251357464

namespace A374135

/-- `filter[A016777(n), A353815(#)]` -/
def P2789939779251357464.Spec : Prop :=
  ∀ n, P2789939779251357464.a n = A374135 (n + 1)

end A374135

/-! ## A374135.P2879148402514153479

`filter[A033627(n+1), A070563(#)]`
-/

namespace A374135.P2879148402514153479
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033627 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A070563 (f1 j).toNat = 1) n)

end

end A374135.P2879148402514153479

namespace A374135

/-- `filter[A033627(n+1), A070563(#)]` -/
def P2879148402514153479.Spec : Prop :=
  ∀ n, P2879148402514153479.a n = A374135 (n + 1)

end A374135

/-! ## A374135.P16073594585013356365

`filter[A033627(n+1), A353815(#)]`
-/

namespace A374135.P16073594585013356365
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033627 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353815 (f1 j).toNat = 1) n)

end

end A374135.P16073594585013356365

namespace A374135

/-- `filter[A033627(n+1), A353815(#)]` -/
def P16073594585013356365.Spec : Prop :=
  ∀ n, P16073594585013356365.a n = A374135 (n + 1)

end A374135

/-! ## A374135.P15241891666284993486

`filter[A230240(n+2), A070563(#)]`
-/

namespace A374135.P15241891666284993486
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230240 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A070563 (f1 j).toNat = 1) n)

end

end A374135.P15241891666284993486

namespace A374135

/-- `filter[A230240(n+2), A070563(#)]` -/
def P15241891666284993486.Spec : Prop :=
  ∀ n, P15241891666284993486.a n = A374135 (n + 1)

end A374135

/-! ## A374135.P10927974799564297282

`∩[A329963(n+1), A016777(n)]`
-/

namespace A374135.P10927974799564297282
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329963 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016777 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A374135.P10927974799564297282

namespace A374135

/-- `∩[A329963(n+1), A016777(n)]` -/
def P10927974799564297282.Spec : Prop :=
  ∀ n, (P10927974799564297282.a n : ℤ) = A374135 (n + 1)

end A374135

/-!
# A374139: a(n) is the determinant of the symmetric Toeplitz matrix of order n whose element (i,j) equals abs(i-j) or 1 if i = j.

The programs for A374139, the canonical program `A374139.P545362409678022340` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A374139 has offset 0).

The definition of A374139 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A374139.P545362409678022340

`a(n-1)-2*a(n-2)+2*a(n-3)-a(n-4)+a(n-5)` with `a(0)=1, a(1)=1, a(2)=0, a(3)=-1, a(4)=1`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A374139

/-- `a(n-1)-2*a(n-2)+2*a(n-3)-a(n-4)+a(n-5)` -/
def P545362409678022340.Spec : Prop :=
  ∀ n, P545362409678022340.a n = A374139 n

theorem P545362409678022340.correct : P545362409678022340.Spec := by
  intro n
  simp only [A374139]

end A374139

/-! ## A374139.P6528075121984797056

`∑[-xor(1, a(n-2))]+1` with `a(0)=0, a(1)=0`
-/

namespace A374139.P6528075121984797056
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 0] fun n f1 =>
  -Int.xor 1 (f1 (n - 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A374139.P6528075121984797056

namespace A374139

/-- `∑[-xor(1, a(n-2))]+1` -/
def P6528075121984797056.Spec : Prop :=
  ∀ n, P6528075121984797056.a n = A374139 n

end A374139

/-! ## A374139.P7236816652028514090

`∑[-a(n-2)]-a(n-2)` with `a(0)=1, a(1)=1`
-/

namespace A374139.P7236816652028514090
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n f1 =>
  -f1 (n - 2)

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  ∑ j ∈ Finset.range (n + 1), f1 j - a (n - 2)

end

end A374139.P7236816652028514090

namespace A374139

/-- `∑[-a(n-2)]-a(n-2)` -/
def P7236816652028514090.Spec : Prop :=
  ∀ n, P7236816652028514090.a n = A374139 n

end A374139

/-! ## A374139.P12101190902083992610

`gcd(4, n+1)%4-a(n-2)` with `a(0)=1, a(1)=1`
-/

namespace A374139.P12101190902083992610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  ((Nat.gcd 4 (n + 1) % 4 : ℕ) : ℤ) - a (n - 2)

end

end A374139.P12101190902083992610

namespace A374139

/-- `gcd(4, n+1)%4-a(n-2)` -/
def P12101190902083992610.Spec : Prop :=
  ∀ n, P12101190902083992610.a n = A374139 n

end A374139

/-! ## A374139.P16933271497796969954

`(or(1, ∑[n*(1-and(2, n))])+1)/2`
-/

namespace A374139.P16933271497796969954
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (1 - (Nat.land 2 n : ℤ))

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lor 1 (∑ j ∈ Finset.range (n + 1), f1 j) + 1 : ℚ) / 2

end

end A374139.P16933271497796969954

namespace A374139

/-- `(or(1, ∑[n*(1-and(2, n))])+1)/2` -/
def P16933271497796969954.Spec : Prop :=
  ∀ n, P16933271497796969954.a n = (A374139 n : ℚ)

end A374139

/-! ## A374139.P1078285077776048649

`1-(a(n-2)+(n*a(n-2))%2)` with `a(0)=1, a(1)=1`
-/

namespace A374139.P1078285077776048649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  1 - (a (n - 2) + Int.tmod ((n : ℤ) * a (n - 2)) 2)

end

end A374139.P1078285077776048649

namespace A374139

/-- `1-(a(n-2)+(n*a(n-2))%2)` -/
def P1078285077776048649.Spec : Prop :=
  ∀ n, P1078285077776048649.a n = A374139 n

end A374139

/-! ## A374139.P9978880784660556882

`∑[a(n-2)-2*a(n-2)]-a(n-2)` with `a(0)=1, a(1)=1`
-/

namespace A374139.P9978880784660556882
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n f1 =>
  f1 (n - 2) - 2 * f1 (n - 2)

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  ∑ j ∈ Finset.range (n + 1), f1 j - a (n - 2)

end

end A374139.P9978880784660556882

namespace A374139

/-- `∑[a(n-2)-2*a(n-2)]-a(n-2)` -/
def P9978880784660556882.Spec : Prop :=
  ∀ n, P9978880784660556882.a n = A374139 n

end A374139

/-! ## A374139.P7496286806290643935

`∑[a(n-2)-2/a(n-2)]-a(n-2)` with `a(0)=1, a(1)=1`
-/

namespace A374139.P7496286806290643935
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [1, 1] fun n f1 =>
  f1 (n - 2) - 2 / f1 (n - 2)

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 1] fun n a =>
  ∑ j ∈ Finset.range (n + 1), f1 j - a (n - 2)

end

end A374139.P7496286806290643935

namespace A374139

/-- `∑[a(n-2)-2/a(n-2)]-a(n-2)` -/
def P7496286806290643935.Spec : Prop :=
  ∀ n, P7496286806290643935.a n = (A374139 n : ℚ)

end A374139

/-! ## A374139.P907005832853630539

`ceil(A009001(n)/2)`
-/

namespace A374139.P907005832853630539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A009001 n : ℚ) / 2⌉

end

end A374139.P907005832853630539

namespace A374139

/-- `ceil(A009001(n)/2)` -/
def P907005832853630539.Spec : Prop :=
  ∀ n, P907005832853630539.a n = A374139 n

end A374139

/-! ## A374139.P3300453088293132368

`∑[A127365(n)]+1`
-/

namespace A374139.P3300453088293132368
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127365 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A374139.P3300453088293132368

namespace A374139

/-- `∑[A127365(n)]+1` -/
def P3300453088293132368.Spec : Prop :=
  ∀ n, P3300453088293132368.a n = A374139 n

end A374139

/-! ## A374139.P17026311936951941974

`A166445((n-1)%(n+1))`
-/

namespace A374139.P17026311936951941974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166445 (Int.tmod ((n : ℤ) - 1) (n + 1 : ℤ)).toNat

end

end A374139.P17026311936951941974

namespace A374139

/-- `A166445((n-1)%(n+1))` -/
def P17026311936951941974.Spec : Prop :=
  ∀ n, P17026311936951941974.a n = A374139 n

end A374139

/-! ## A374139.P2817818445255994830

`A166445(A263313(n))`
-/

namespace A374139.P2817818445255994830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166445 (A263313 n).toNat

end

end A374139.P2817818445255994830

namespace A374139

/-- `A166445(A263313(n))` -/
def P2817818445255994830.Spec : Prop :=
  ∀ n, P2817818445255994830.a n = A374139 n

end A374139

/-! ## A374139.P7125110280232544962

`A166445(A338824(n+1))`
-/

namespace A374139.P7125110280232544962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166445 (A338824 (n + 1)).toNat

end

end A374139.P7125110280232544962

namespace A374139

/-- `A166445(A338824(n+1))` -/
def P7125110280232544962.Spec : Prop :=
  ∀ n, P7125110280232544962.a n = A374139 n

end A374139

/-! ## A374139.P16081990990959816548

`A077140(n+1)%A373011(n)`
-/

namespace A374139.P16081990990959816548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A077140 (n + 1)) (A373011 n)

end

end A374139.P16081990990959816548

namespace A374139

/-- `A077140(n+1)%A373011(n)` -/
def P16081990990959816548.Spec : Prop :=
  ∀ n, P16081990990959816548.a n = A374139 n

end A374139

/-! ## A374139.P11461333221947351531

`A166445(A289207(n+1))`
-/

namespace A374139.P11461333221947351531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166445 (A289207 (n + 1)).toNat

end

end A374139.P11461333221947351531

namespace A374139

/-- `A166445(A289207(n+1))` -/
def P11461333221947351531.Spec : Prop :=
  ∀ n, P11461333221947351531.a n = A374139 n

end A374139

/-! ## A374139.P15405274277419753080

`A166445(n)-A127365(n+1)`
-/

namespace A374139.P15405274277419753080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166445 n - A127365 (n + 1)

end

end A374139.P15405274277419753080

namespace A374139

/-- `A166445(n)-A127365(n+1)` -/
def P15405274277419753080.Spec : Prop :=
  ∀ n, P15405274277419753080.a n = A374139 n

end A374139

/-! ## A374139.P15208141676531134796

`A166445(A165754(n))`
-/

namespace A374139.P15208141676531134796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166445 (A165754 n).toNat

end

end A374139.P15208141676531134796

namespace A374139

/-- `A166445(A165754(n))` -/
def P15208141676531134796.Spec : Prop :=
  ∀ n, P15208141676531134796.a n = A374139 n

end A374139

/-! ## A374139.P4880042437910518072

`A166445(A289207(2*n)/2)`
-/

namespace A374139.P4880042437910518072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166445 (SequenceMachineLib.roundAway ((A289207 (2 * n) : ℚ) / 2)).toNat

end

end A374139.P4880042437910518072

namespace A374139

/-- `A166445(A289207(2*n)/2)` -/
def P4880042437910518072.Spec : Prop :=
  ∀ n, P4880042437910518072.a n = A374139 n

end A374139

/-!
# A374145: Number of length-n binary words whose subword complexity is bounded by 2i for 1<=i<=n, and containing no blocks of exponent > 5/2.

The programs for A374145, there is no canonical definition to state claims against.
-/

/-! ## A374145.P12137404288788973896

`A117332(A143184(n+1))`
-/

namespace A374145.P12137404288788973896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117332 (A143184 (n + 1)).toNat

end

end A374145.P12137404288788973896

/-! ## A374145.P8532212220185622954

`A117332(A306145(n+1))`
-/

namespace A374145.P8532212220185622954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117332 (A306145 (n + 1)).toNat

end

end A374145.P8532212220185622954

/-! ## A374145.P17276028781231309821

`A098151(n)-A051516(A014137(n))`
-/

namespace A374145.P17276028781231309821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098151 n - A051516 (A014137 n).toNat

end

end A374145.P17276028781231309821

/-! ## A374145.P6891030100286524193

`A261204(n)+A000122(A101695(n+1))`
-/

namespace A374145.P6891030100286524193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261204 n + A000122 (A101695 (n + 1)).toNat

end

end A374145.P6891030100286524193

/-! ## A374145.P15779549349348341260

`A335240(n+1)+A011371(A321728(n+4))`
-/

namespace A374145.P15779549349348341260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335240 (n + 1) + A011371 (A321728 (n + 4)).toNat

end

end A374145.P15779549349348341260

/-!
# A374146: a(n) = prime(g) mod g where prime gap g = prime(n+1) - prime(n).

The programs for A374146, the canonical program `A374146.P10192998287508786538` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A374146 has offset 1).

The definition of A374146 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001223, A004648, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A374146.P10192998287508786538

`A004648(A001223(n+1))`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A374146

/-- `A004648(A001223(n+1))` -/
def P10192998287508786538.Spec : Prop :=
  ∀ n, P10192998287508786538.a n = A374146 (n + 1)

theorem P10192998287508786538.correct : P10192998287508786538.Spec := by
  intro n
  simp only [A374146, Nat.add_sub_cancel]

end A374146

/-! ## A374146.P6298334950667175457

`A004648(A075526(n+1))`
-/

namespace A374146.P6298334950667175457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004648 (A075526 (n + 1)).toNat

end

end A374146.P6298334950667175457

namespace A374146

/-- `A004648(A075526(n+1))` -/
def P6298334950667175457.Spec : Prop :=
  ∀ n, P6298334950667175457.a n = A374146 (n + 1)

end A374146

/-! ## A374146.P7264124400753810172

`A065134(A082910(n+1))`
-/

namespace A374146.P7264124400753810172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065134 (A082910 (n + 1)).toNat

end

end A374146.P7264124400753810172

namespace A374146

/-- `A065134(A082910(n+1))` -/
def P7264124400753810172.Spec : Prop :=
  ∀ n, P7264124400753810172.a n = A374146 (n + 1)

end A374146

/-! ## A374146.P7064187408289645356

`A004648(A054541(n+2))`
-/

namespace A374146.P7064187408289645356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004648 (A054541 (n + 2)).toNat

end

end A374146.P7064187408289645356

namespace A374146

/-- `A004648(A054541(n+2))` -/
def P7064187408289645356.Spec : Prop :=
  ∀ n, P7064187408289645356.a n = A374146 (n + 1)

end A374146

/-! ## A374146.P4363083620576369305

`A004648(A125266(n+2))`
-/

namespace A374146.P4363083620576369305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004648 (A125266 (n + 2)).toNat

end

end A374146.P4363083620576369305

namespace A374146

/-- `A004648(A125266(n+2))` -/
def P4363083620576369305.Spec : Prop :=
  ∀ n, P4363083620576369305.a n = A374146 (n + 1)

end A374146

/-! ## A374146.P1746846327672798743

`A004648(A230846(n+2)-1)`
-/

namespace A374146.P1746846327672798743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004648 (A230846 (n + 2) - 1).toNat

end

end A374146.P1746846327672798743

namespace A374146

/-- `A004648(A230846(n+2)-1)` -/
def P1746846327672798743.Spec : Prop :=
  ∀ n, P1746846327672798743.a n = A374146 (n + 1)

end A374146

/-! ## A374146.P7117861699651613108

`A082910(n+1)%A001223(n+1)`
-/

namespace A374146.P7117861699651613108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A082910 (n + 1)) (A001223 (n + 1))

end

end A374146.P7117861699651613108

namespace A374146

/-- `A082910(n+1)%A001223(n+1)` -/
def P7117861699651613108.Spec : Prop :=
  ∀ n, P7117861699651613108.a n = A374146 (n + 1)

end A374146

/-!
# A374148: Integer part of (2^(n - 1) - 1)*sqrt(3) + 1.

The programs for A374148, there is no canonical definition to state claims against.
-/

/-! ## A374148.P10838930951547106536

`floor((A000225(n)-1)/2*sqrt(3))+1`
-/

namespace A374148.P10838930951547106536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((A000225 n - 1 : ℚ) / 2 : ℝ) * Real.sqrt (3 : ℝ)⌋ + 1

end

end A374148.P10838930951547106536

/-! ## A374148.P16792390339492708763

`floor((eq[1, A331856(n+1)]-1)/2*sqrt(3))+1`
-/

namespace A374148.P16792390339492708763
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331856 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(((SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n : ℤ) - 1 : ℚ) / 2 : ℝ) * Real.sqrt (3 : ℝ)⌋ + 1

end

end A374148.P16792390339492708763

/-! ## A374148.P1779719563118395315

`A004526(round(sqrt(A003945(2*n+1)+1)))-1`
-/

namespace A374148.P1779719563118395315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (SequenceMachineLib.roundAway (Real.sqrt (A003945 (2 * n + 1) + 1 : ℝ))).toNat - 1

end

end A374148.P1779719563118395315

/-! ## A374148.P12292947831750610559

`lt[A330925(A057904(n+1)), A057934(n+1)]`
-/

namespace A374148.P12292947831750610559
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330925 (A057904 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057934 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A374148.P12292947831750610559

/-!
# A374150: a(n) is the (2^n)-th prime-indexed prime.

The programs for A374150, the canonical program `A374150.P2027937700261000642` is in `Seq.B002.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A374150 has offset 0).

The definition of A374150 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006450, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A374150.P2027937700261000642

`A006450(2^n)`

The canonical program, it is in `Seq.B002.C006`.
-/

namespace A374150

/-- `A006450(2^n)` -/
def P2027937700261000642.Spec : Prop :=
  ∀ n, P2027937700261000642.a n = A374150 n

theorem P2027937700261000642.correct : P2027937700261000642.Spec := by
  intro n
  simp only [A374150]

end A374150

/-! ## A374150.P9131535832930011649

`A000040(A033844(n))`
-/

namespace A374150.P9131535832930011649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A033844 n).toNat

end

end A374150.P9131535832930011649

namespace A374150

/-- `A000040(A033844(n))` -/
def P9131535832930011649.Spec : Prop :=
  ∀ n, P9131535832930011649.a n = A374150 n

end A374150

/-! ## A374150.P10726553833961787291

`record[A006450(A059268(n))]`
-/

namespace A374150.P10726553833961787291
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006450 (A059268 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A374150.P10726553833961787291

namespace A374150

/-- `record[A006450(A059268(n))]` -/
def P10726553833961787291.Spec : Prop :=
  ∀ n, P10726553833961787291.a n = A374150 n

end A374150

/-! ## A374150.P15724065025862477265

`record[A006450(A068009(n))]`
-/

namespace A374150.P15724065025862477265
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006450 (A068009 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A374150.P15724065025862477265

namespace A374150

/-- `record[A006450(A068009(n))]` -/
def P15724065025862477265.Spec : Prop :=
  ∀ n, P15724065025862477265.a n = A374150 n

end A374150

/-! ## A374150.P8192937362805847385

`record[A006450(A088975(n))]`
-/

namespace A374150.P8192937362805847385
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006450 (A088975 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A374150.P8192937362805847385

namespace A374150

/-- `record[A006450(A088975(n))]` -/
def P8192937362805847385.Spec : Prop :=
  ∀ n, P8192937362805847385.a n = A374150 n

end A374150

/-!
# A374151: The number of prime-indexed primes below 2^n.

The programs for A374151, the canonical program `A374151.P5800413158960378192` is in `Seq.B004.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A374151 has offset 0).

The definition of A374151 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A132090, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A374151.P5800413158960378192

`A132090(2^n)`

The canonical program, it is in `Seq.B004.C003`.
-/

namespace A374151

/-- `A132090(2^n)` -/
def P5800413158960378192.Spec : Prop :=
  ∀ n, P5800413158960378192.a n = A374151 n

theorem P5800413158960378192.correct : P5800413158960378192.Spec := by
  intro n
  simp only [A374151]

end A374151

/-! ## A374151.P3551085521770625299

`A000720(A126279(∑[abs(1-n)]))`
-/

namespace A374151.P3551085521770625299
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - (n : ℤ)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A126279 (∑ j ∈ Finset.range (n + 1), f1 j).toNat).toNat

end

end A374151.P3551085521770625299

namespace A374151

/-- `A000720(A126279(∑[abs(1-n)]))` -/
def P3551085521770625299.Spec : Prop :=
  ∀ n, P3551085521770625299.a n = A374151 n

end A374151

/-! ## A374151.P15528743477093249405

`A000720(A007053(n)+floor(1/(n+1)))`
-/

namespace A374151.P15528743477093249405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A007053 n + ⌊1 / (n + 1 : ℚ)⌋).toNat

end

end A374151.P15528743477093249405

namespace A374151

/-- `A000720(A007053(n)+floor(1/(n+1)))` -/
def P15528743477093249405.Spec : Prop :=
  ∀ n, P15528743477093249405.a n = A374151 n

end A374151

/-! ## A374151.P15740640481440081018

`A000720(A007053(n)^floor(n^(1/5)))`
-/

namespace A374151.P15740640481440081018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (SequenceMachineLib.roundAway ((A007053 n : ℚ) ^ (⌊(n : ℝ) ^ ((1 : ℚ) / 5 : ℝ)⌋ : ℤ))).toNat

end

end A374151.P15740640481440081018

namespace A374151

/-- `A000720(A007053(n)^floor(n^(1/5)))` -/
def P15740640481440081018.Spec : Prop :=
  ∀ n, P15740640481440081018.a n = A374151 n

end A374151

/-! ## A374151.P10082249019381610082

`A000720(A007053(A000007(n)+n))`
-/

namespace A374151.P10082249019381610082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A007053 (A000007 n + (n : ℤ)).toNat).toNat

end

end A374151.P10082249019381610082

namespace A374151

/-- `A000720(A007053(A000007(n)+n))` -/
def P10082249019381610082.Spec : Prop :=
  ∀ n, P10082249019381610082.a n = A374151 n

end A374151

/-!
# A374153: Number of domino tilings of the order n Aztec diamond which are diagonally symmetric.

The programs for A374153, there is no canonical definition to state claims against.
-/

/-! ## A374153.P11506327784856543995

`A000720(A166886(n+1))+A000142(n)`
-/

namespace A374153.P11506327784856543995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A166886 (n + 1)).toNat + A000142 n

end

end A374153.P11506327784856543995

/-! ## A374153.P13519338542224660287

`A008619(A231057(n+1)+A023811(n+1))`
-/

namespace A374153.P13519338542224660287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A231057 (n + 1) + A023811 (n + 1)).toNat

end

end A374153.P13519338542224660287

/-!
# A374154: Number of domino tilings of the order n Aztec diamond which are diagonally and antidiagonally symmetric.

The programs for A374154, there is no canonical definition to state claims against.
-/

/-! ## A374154.P8343458141423601643

`A089576(A081151(n))+A070939(n)`
-/

namespace A374154.P8343458141423601643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089576 (A081151 n).toNat + A070939 n

end

end A374154.P8343458141423601643

/-! ## A374154.P7871753310612343776

`A351006(A320324(n+1)+A062482(n))`
-/

namespace A374154.P7871753310612343776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351006 (A320324 (n + 1) + A062482 n).toNat

end

end A374154.P7871753310612343776

/-! ## A374154.P11272609659168234961

`A359402(A292553(n+1))+A115617(n)`
-/

namespace A374154.P11272609659168234961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359402 (A292553 (n + 1)).toNat + A115617 n

end

end A374154.P11272609659168234961

/-!
# A374155: a(n) is the least prime that is a quadratic residue modulo prime(n). First column of A373751.

The programs for A374155, there is no canonical definition to state claims against.
-/

/-! ## A374155.P3147509468100937924

`A373751(∑[n]+1)`
-/

namespace A374155.P3147509468100937924
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373751 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A374155.P3147509468100937924

/-! ## A374155.P1671458448808228592

`A306530(n+1)%A019323(n)`
-/

namespace A374155.P1671458448808228592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A306530 (n + 1)) (A019323 n)

end

end A374155.P1671458448808228592

/-! ## A374155.P9337064139528557757

`A373751(A000124(n))%A078370(n)`
-/

namespace A374155.P9337064139528557757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A373751 (A000124 n).toNat) (A078370 n)

end

end A374155.P9337064139528557757

/-! ## A374155.P11997154774437063005

`A373751(A000124(n))/and(1, A033999(n))`
-/

namespace A374155.P11997154774437063005
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A373751 (A000124 n).toNat : ℚ) / (Int.land 1 (A033999 n) : ℚ)

end

end A374155.P11997154774437063005

/-! ## A374155.P9582143495952853777

`A373751(A000124(n))-A057427(n+1)+1`
-/

namespace A374155.P9582143495952853777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373751 (A000124 n).toNat - A057427 (n + 1) + 1

end

end A374155.P9582143495952853777

/-! ## A374155.P5318704659613986073

`A052126(A000040(n+1)*A306530(n+1))`
-/

namespace A374155.P5318704659613986073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052126 (A000040 (n + 1) * A306530 (n + 1)).toNat

end

end A374155.P5318704659613986073

/-! ## A374155.P10526016743973680293

`A067695(A000040(n+1)*A306530(n+1))`
-/

namespace A374155.P10526016743973680293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067695 (A000040 (n + 1) * A306530 (n + 1)).toNat

end

end A374155.P10526016743973680293

/-! ## A374155.P3470721562427100476

`A373751(A000124(n))+A316341(2*n+3)`
-/

namespace A374155.P3470721562427100476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373751 (A000124 n).toNat + A316341 (2 * n + 3)

end

end A374155.P3470721562427100476

/-!
# A374156: Primes p that are quadratic residues modulo 59. Row 17 of A373751.

The programs for A374156, there is no canonical definition to state claims against.
-/

/-! ## A374156.P3916974104657084573

`∪[A020468(n+1), A191038(n+1)]`
-/

namespace A374156.P3916974104657084573
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020468 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191038 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A374156.P3916974104657084573

/-! ## A374156.P7475114234852216315

`∪[A106919(n+1), A106922(n+1)]`
-/

namespace A374156.P7475114234852216315
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106919 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106922 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A374156.P7475114234852216315

/-! ## A374156.P5593159624337062367

`∪[A033238(n+1), A191038(n+1)]`
-/

namespace A374156.P5593159624337062367
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033238 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191038 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A374156.P5593159624337062367

/-! ## A374156.P148897185574245837

`∪[A059705(n+1), A191038(n+1)]`
-/

namespace A374156.P148897185574245837
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059705 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191038 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A374156.P148897185574245837

/-! ## A374156.P3866514408701767313

`∪[A083821(n+1), A191038(n+1)]`
-/

namespace A374156.P3866514408701767313
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083821 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191038 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A374156.P3866514408701767313

/-! ## A374156.P8481622911786149191

`∪[A086082(n+1), A191038(n+1)]`
-/

namespace A374156.P8481622911786149191
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086082 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191038 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A374156.P8481622911786149191

/-! ## A374156.P16032673030594274244

`∪[A087535(n+1), A191038(n+1)]`
-/

namespace A374156.P16032673030594274244
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087535 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191038 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A374156.P16032673030594274244

/-! ## A374156.P558738055784679633

`∪[A094489(n+1), A191038(n+1)]`
-/

namespace A374156.P558738055784679633
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094489 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191038 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A374156.P558738055784679633

/-! ## A374156.P12498521968289445119

`∪[A106922(n+1), A191038(n+1)]`
-/

namespace A374156.P12498521968289445119
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106922 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191038 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A374156.P12498521968289445119

/-! ## A374156.P2385252677073182139

`∪[A114353(n+1), A191038(n+1)]`
-/

namespace A374156.P2385252677073182139
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114353 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191038 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A374156.P2385252677073182139

/-!
# A374157: a(n) = (-1)^floor(n/2)*n.

The programs for A374157, the canonical program `A374157.P5715907988378515051` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A374157 has offset 0).

The definition of A374157 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A374157.P5715907988378515051

`(-1)^floor(n/2)*n`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A374157

/-- `(-1)^floor(n/2)*n` -/
def P5715907988378515051.Spec : Prop :=
  ∀ n, P5715907988378515051.a n = (A374157 n : ℚ)

end A374157

/-! ## A374157.P10187064784273138226

`n/(1-and(2, n))`
-/

namespace A374157.P10187064784273138226
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / (1 - (Nat.land 2 n : ℤ) : ℚ)

end

end A374157.P10187064784273138226

namespace A374157

/-- `n/(1-and(2, n))` -/
def P10187064784273138226.Spec : Prop :=
  ∀ n, P10187064784273138226.a n = (A374157 n : ℚ)

end A374157

/-! ## A374157.P495457861536641890

`n/(-1)^C(n, 2)`
-/

namespace A374157.P495457861536641890
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / ((-1) ^ Nat.choose n 2 : ℚ)

end

end A374157.P495457861536641890

namespace A374157

/-- `n/(-1)^C(n, 2)` -/
def P495457861536641890.Spec : Prop :=
  ∀ n, P495457861536641890.a n = (A374157 n : ℚ)

end A374157

/-! ## A374157.P17192463633278339838

`n/or(1, -and(2, n))`
-/

namespace A374157.P17192463633278339838
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / (Int.lor 1 (-(Nat.land 2 n : ℤ)) : ℚ)

end

end A374157.P17192463633278339838

namespace A374157

/-- `n/or(1, -and(2, n))` -/
def P17192463633278339838.Spec : Prop :=
  ∀ n, P17192463633278339838.a n = (A374157 n : ℚ)

end A374157

/-! ## A374157.P6876586291558560762

`n/xor(1, -and(2, n))`
-/

namespace A374157.P6876586291558560762
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / (Int.xor 1 (-(Nat.land 2 n : ℤ)) : ℚ)

end

end A374157.P6876586291558560762

namespace A374157

/-- `n/xor(1, -and(2, n))` -/
def P6876586291558560762.Spec : Prop :=
  ∀ n, P6876586291558560762.a n = (A374157 n : ℚ)

end A374157

/-! ## A374157.P5119630208992248417

`n/(or(2, n)-(n+1))`
-/

namespace A374157.P5119630208992248417
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / ((Nat.lor 2 n : ℤ) - (n + 1 : ℤ) : ℚ)

end

end A374157.P5119630208992248417

namespace A374157

/-- `n/(or(2, n)-(n+1))` -/
def P5119630208992248417.Spec : Prop :=
  ∀ n, P5119630208992248417.a n = (A374157 n : ℚ)

end A374157

/-! ## A374157.P6229341683261506834

`2*n/(xor(2, n)-n)`
-/

namespace A374157.P6229341683261506834
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 * n : ℚ) / ((Nat.xor 2 n : ℤ) - (n : ℤ) : ℚ)

end

end A374157.P6229341683261506834

namespace A374157

/-- `2*n/(xor(2, n)-n)` -/
def P6229341683261506834.Spec : Prop :=
  ∀ n, P6229341683261506834.a n = (A374157 n : ℚ)

end A374157

/-! ## A374157.P17658235830430898727

`n/∏[-a(n-1)]` with `a(0)=1, a(1)=1`
-/

namespace A374157.P17658235830430898727
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n f1 =>
  -f1 (n - 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / ((∏ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ)

end

end A374157.P17658235830430898727

namespace A374157

/-- `n/∏[-a(n-1)]` -/
def P17658235830430898727.Spec : Prop :=
  ∀ n, P17658235830430898727.a n = (A374157 n : ℚ)

end A374157

/-! ## A374157.P10658608880284792372

`n/(1-(n²-n)%4)`
-/

namespace A374157.P10658608880284792372
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / (1 - Int.tmod ((n ^ 2 : ℤ) - (n : ℤ)) 4 : ℚ)

end

end A374157.P10658608880284792372

namespace A374157

/-- `n/(1-(n²-n)%4)` -/
def P10658608880284792372.Spec : Prop :=
  ∀ n, P10658608880284792372.a n = (A374157 n : ℚ)

end A374157

/-! ## A374157.P3243244151757840019

`n/(gcd(4, n-n²)-3)`
-/

namespace A374157.P3243244151757840019
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / ((Int.gcd 4 ((n : ℤ) - (n ^ 2 : ℤ)) : ℤ) - 3 : ℚ)

end

end A374157.P3243244151757840019

namespace A374157

/-- `n/(gcd(4, n-n²)-3)` -/
def P3243244151757840019.Spec : Prop :=
  ∀ n, P3243244151757840019.a n = (A374157 n : ℚ)

end A374157

/-! ## A374157.P6818377284748619230

`n*or(2, n)-∑[2*n]`
-/

namespace A374157.P6818377284748619230
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n * Nat.lor 2 n : ℤ) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A374157.P6818377284748619230

namespace A374157

/-- `n*or(2, n)-∑[2*n]` -/
def P6818377284748619230.Spec : Prop :=
  ∀ n, P6818377284748619230.a n = A374157 n

end A374157

/-! ## A374157.P949124440614445995

`n*(n-n²)%4+n`
-/

namespace A374157.P949124440614445995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * Int.tmod ((n : ℤ) - (n ^ 2 : ℤ)) 4 + (n : ℤ)

end

end A374157.P949124440614445995

namespace A374157

/-- `n*(n-n²)%4+n` -/
def P949124440614445995.Spec : Prop :=
  ∀ n, P949124440614445995.a n = A374157 n

end A374157

/-! ## A374157.P17376764736782614284

`(2*n)%(2*or(2, n))-n`
-/

namespace A374157.P17376764736782614284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((2 * n % (2 * Nat.lor 2 n) : ℕ) : ℤ) - (n : ℤ)

end

end A374157.P17376764736782614284

namespace A374157

/-- `(2*n)%(2*or(2, n))-n` -/
def P17376764736782614284.Spec : Prop :=
  ∀ n, P17376764736782614284.a n = A374157 n

end A374157

/-! ## A374157.P9427017929680786215

`gcd(and(2, n), Δ[n²])-(n+1)`
-/

namespace A374157.P9427017929680786215
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.gcd (Nat.land 2 n : ℤ) ((f1 (n + 1) : ℤ) - (f1 n : ℤ)) : ℤ) - (n + 1 : ℤ)

end

end A374157.P9427017929680786215

namespace A374157

/-- `gcd(and(2, n), Δ[n²])-(n+1)` -/
def P9427017929680786215.Spec : Prop :=
  ∀ n, P9427017929680786215.a n = A374157 n

end A374157

/-! ## A374157.P12947388803711721163

`n-n*(n*n-n)%4`
-/

namespace A374157.P12947388803711721163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (n : ℤ) * Int.tmod ((n * n : ℤ) - (n : ℤ)) 4

end

end A374157.P12947388803711721163

namespace A374157

/-- `n-n*(n*n-n)%4` -/
def P12947388803711721163.Spec : Prop :=
  ∀ n, P12947388803711721163.a n = A374157 n

end A374157

/-!
# A374159: a(n) is the smallest nonnegative integer k where exactly n pairs of positive integers (x, y) exist such that x^2 + 7*y^2 = k.

The programs for A374159, there is no canonical definition to state claims against.
-/

/-! ## A374159.P17579352652812637837

`A198147(a(n-2)+2)` with `a(0)=0, a(1)=8`
-/

namespace A374159.P17579352652812637837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 8] fun n a =>
  A198147 (a (n - 2) + 2).toNat

end

end A374159.P17579352652812637837

/-!
# A374160: a(n) is the smallest nonnegative integer k where exactly n pairs of positive integers (x, y) exist such that x^2 + 11*y^2 = k.

The programs for A374160, there is no canonical definition to state claims against.
-/

/-! ## A374160.P7943580099234317619

`A004178(3*A135507(n+1))`
-/

namespace A374160.P7943580099234317619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004178 (3 * A135507 (n + 1)).toNat

end

end A374160.P7943580099234317619

/-! ## A374160.P15884580645578089117

`lcm(record[A067169(3*(n+1))], A068911(2*n))`
-/

namespace A374160.P15884580645578089117
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067169 (3 * (n + 1) + 11)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) (A068911 (2 * n))

end

end A374160.P15884580645578089117

/-!
# A374162: a(n) is the number of permutations of size n ending with n whose n left-to-right maxima are consecutive and nonadjacent.

The programs for A374162, there is no canonical definition to state claims against.
-/

/-! ## A374162.P1634075071240158672

`A033183(A355352(n)+8)`
-/

namespace A374162.P1634075071240158672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033183 (A355352 n + 8).toNat

end

end A374162.P1634075071240158672

/-! ## A374162.P14905193478455376709

`A065715((n+1)!+(2*n+1)*abs(1-n)!-A009454(n))`
-/

namespace A374162.P14905193478455376709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065715 ((Nat.factorial (n + 1) + (2 * n + 1) * Nat.factorial |1 - (n : ℤ)|.toNat : ℤ) - A009454 n).toNat

end

end A374162.P14905193478455376709

/-! ## A374162.P10612580317076146216

`A182394(A007226(n))+A002807(n)`
-/

namespace A374162.P10612580317076146216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182394 (A007226 n).toNat + A002807 n

end

end A374162.P10612580317076146216

/-!
# A374163: a(1) = 1; for n>1 a(n) is the minimum value of k > 0 such that sigma^{k}(n)-1 is prime, if such a k exists; otherwise -1, where sigma^{k} is the k-th iteration of sigma=A000203.

The programs for A374163, there is no canonical definition to state claims against.
-/

/-! ## A374163.P10038099783248267043

`gcd(A006385(n), A266012(n+1))`
-/

namespace A374163.P10038099783248267043
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A006385 n) (A266012 (n + 1))

end

end A374163.P10038099783248267043

/-! ## A374163.P17224748004322973945

`gcd(A004001(A379543(n)), A182850(n+1))`
-/

namespace A374163.P17224748004322973945
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A004001 (A379543 n).toNat) (A182850 (n + 1))

end

end A374163.P17224748004322973945

/-! ## A374163.P5741823428428652182

`A000002(A111123(n+2))^A336107(n+1)`
-/

namespace A374163.P5741823428428652182
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000002 (A111123 (n + 2)).toNat : ℚ) ^ (A336107 (n + 1) : ℤ)

end

end A374163.P5741823428428652182

/-! ## A374163.P16879013373482155929

`gcd(A331965(A322427(n+1)), A356230(n+1))`
-/

namespace A374163.P16879013373482155929
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A331965 (A322427 (n + 1)).toNat) (A356230 (n + 1))

end

end A374163.P16879013373482155929

/-!
# A374165: Expansion of g.f. (1 - x)*(1 - 2*x)(1 - 4*x)/(1 - 8*x + 20*x^2 - 18*x^3 + 3*x^4).

The programs for A374165, there is no canonical definition to state claims against.
-/

/-! ## A374165.P9227588241987027066

`A248180(A238578(n))`
-/

namespace A374165.P9227588241987027066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248180 (A238578 n).toNat

end

end A374165.P9227588241987027066

/-! ## A374165.P15392254948978321068

`A355616(A162985(n+1))`
-/

namespace A374165.P15392254948978321068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355616 (A162985 (n + 1)).toNat

end

end A374165.P15392254948978321068

/-! ## A374165.P8028661581657334998

`A008616(2*A296217(n))`
-/

namespace A374165.P8028661581657334998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008616 (2 * A296217 n).toNat

end

end A374165.P8028661581657334998

/-!
# A374166: The set of primes p such that, for all integers m, the prime p divides at least one term of the recursive sequence (b_0, b_1, b_2, ...) given by b_0 = m and b_{k+1} = b_k^2 - 1 for k >= 0.

The programs for A374166, there is no canonical definition to state claims against.
-/

/-! ## A374166.P18146215227542166474

`A377544(A138744(n+2))`
-/

namespace A374166.P18146215227542166474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377544 (A138744 (n + 2)).toNat

end

end A374166.P18146215227542166474

/-!
# A374175: a(n) is the conjectured number of occurrences of n in A373330.

The programs for A374175, there is no canonical definition to state claims against.
-/

/-! ## A374175.P17747596492812612306

`A097035(n+1)%A345996(n+1)`
-/

namespace A374175.P17747596492812612306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A097035 (n + 1)) (A345996 (n + 1))

end

end A374175.P17747596492812612306

/-! ## A374175.P60146152842208098

`A229098(n+1)%A345996(n+1)`
-/

namespace A374175.P60146152842208098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A229098 (n + 1)) (A345996 (n + 1))

end

end A374175.P60146152842208098

/-! ## A374175.P1388169551013394160

`A277200(n+1)%A345996(n+1)`
-/

namespace A374175.P1388169551013394160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A277200 (n + 1)) (A345996 (n + 1))

end

end A374175.P1388169551013394160

/-! ## A374175.P5010434245608212623

`A000122(A199530(n+2)+A007091(n))`
-/

namespace A374175.P5010434245608212623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000122 (A199530 (n + 2) + A007091 n).toNat

end

end A374175.P5010434245608212623

/-! ## A374175.P7884321128925290338

`A000122(lcm(A177413(3*n+4), A376652(n+1)))`
-/

namespace A374175.P7884321128925290338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000122 (Int.lcm (A177413 (3 * n + 4)) (A376652 (n + 1)))

end

end A374175.P7884321128925290338

/-!
# A374176: a(n) is the maximum number of consecutive bit changes in the binary representation of n.

The programs for A374176, the canonical program `A374176.P17733740990044206540` is in `Seq.B013.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A374176 has offset 1).

The definition of A374176 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8191 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A374176.P17733740990044206540

`A087117(A180201(n+1))`

The canonical program, it is in `Seq.B013.C000`.
-/

namespace A374176

/-- `A087117(A180201(n+1))` -/
def P17733740990044206540.Spec : Prop :=
  ∀ n, P17733740990044206540.a n = A374176 (n + 1)

theorem P17733740990044206540.correct : P17733740990044206540.Spec := by
  intro n
  simp only [A374176, Nat.add_sub_cancel]

end A374176

/-! ## A374176.P9194671799138598556

`A043276(A129594(n+1))-1`
-/

namespace A374176.P9194671799138598556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043276 (A129594 (n + 1)).toNat - 1

end

end A374176.P9194671799138598556

namespace A374176

/-- `A043276(A129594(n+1))-1` -/
def P9194671799138598556.Spec : Prop :=
  ∀ n, P9194671799138598556.a n = A374176 (n + 1)

end A374176

/-! ## A374176.P8951877004436044221

`A045715(A019320(n))%A005811(n+1)`
-/

namespace A374176.P8951877004436044221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A045715 (A019320 n).toNat) (A005811 (n + 1))

end

end A374176.P8951877004436044221

namespace A374176

/-- `A045715(A019320(n))%A005811(n+1)` -/
def P8951877004436044221.Spec : Prop :=
  ∀ n, P8951877004436044221.a n = A374176 (n + 1)

end A374176

/-! ## A374176.P2824560793609147993

`gcd(A033264(A183065(n)), A037834(n+1))`
-/

namespace A374176.P2824560793609147993
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A033264 (A183065 n).toNat) (A037834 (n + 1))

end

end A374176.P2824560793609147993

namespace A374176

/-- `gcd(A033264(A183065(n)), A037834(n+1))` -/
def P2824560793609147993.Spec : Prop :=
  ∀ n, (P2824560793609147993.a n : ℤ) = A374176 (n + 1)

end A374176

/-! ## A374176.P17247681440317142245

`A045715(A068911(n))%A005811(n+1)`
-/

namespace A374176.P17247681440317142245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A045715 (A068911 n).toNat) (A005811 (n + 1))

end

end A374176.P17247681440317142245

namespace A374176

/-- `A045715(A068911(n))%A005811(n+1)` -/
def P17247681440317142245.Spec : Prop :=
  ∀ n, P17247681440317142245.a n = A374176 (n + 1)

end A374176

/-!
# A374178: a(n) is the least prime p such that p and the next prime > p have exactly n common 1's in their binary expansion.

The programs for A374178, there is no canonical definition to state claims against.
-/

/-! ## A374178.P3535149265587186914

`A067364(A014466(n)+n)`
-/

namespace A374178.P3535149265587186914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067364 (A014466 n + (n : ℤ)).toNat

end

end A374178.P3535149265587186914

/-!
# A374179: a(n) is the least prime p such that the binary expansions of p and of the next prime q > p differ at exactly n positions, and p and q have the same binary length.

The programs for A374179, there is no canonical definition to state claims against.
-/

/-! ## A374179.P12087971784829298407

`∩[A045266(n+1), A242776(n+1)]`
-/

namespace A374179.P12087971784829298407
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045266 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242776 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A374179.P12087971784829298407

/-!
# A374180: Numbers k such that K(3 / k) != K((-1)^floor(k/2)*k / 3), where K(a/b) is the Kronecker symbol. Row 1 of A374188.

The programs for A374180, the canonical program `A374180.P6463857009267516425` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A374180 has offset 1).

The definition of A374180 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1662 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A374180.P14897339423817551553

`eq[A010124(n), A090678(n)]`
-/

namespace A374180.P14897339423817551553
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010124 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090678 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A374180.P14897339423817551553

namespace A374180

/-- `eq[A010124(n), A090678(n)]` -/
def P14897339423817551553.Spec : Prop :=
  ∀ n, (P14897339423817551553.a n : ℤ) = A374180 (n + 1)

end A374180

/-! ## A374180.P7326517901142859862

`eq[A010138(n), A090678(n)]`
-/

namespace A374180.P7326517901142859862
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010138 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090678 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A374180.P7326517901142859862

namespace A374180

/-- `eq[A010138(n), A090678(n)]` -/
def P7326517901142859862.Spec : Prop :=
  ∀ n, (P7326517901142859862.a n : ℤ) = A374180 (n + 1)

end A374180

/-! ## A374180.P4450254629939530132

`eq[A010140(n), A090678(n)]`
-/

namespace A374180.P4450254629939530132
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010140 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090678 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A374180.P4450254629939530132

namespace A374180

/-- `eq[A010140(n), A090678(n)]` -/
def P4450254629939530132.Spec : Prop :=
  ∀ n, (P4450254629939530132.a n : ℤ) = A374180 (n + 1)

end A374180

/-! ## A374180.P7229011706391532595

`eq[A010149(n), A090678(n)]`
-/

namespace A374180.P7229011706391532595
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010149 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090678 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A374180.P7229011706391532595

namespace A374180

/-- `eq[A010149(n), A090678(n)]` -/
def P7229011706391532595.Spec : Prop :=
  ∀ n, (P7229011706391532595.a n : ℤ) = A374180 (n + 1)

end A374180

/-! ## A374180.P12071308692856896055

`eq[A010173(n), A090678(n)]`
-/

namespace A374180.P12071308692856896055
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010173 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090678 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A374180.P12071308692856896055

namespace A374180

/-- `eq[A010173(n), A090678(n)]` -/
def P12071308692856896055.Spec : Prop :=
  ∀ n, (P12071308692856896055.a n : ℤ) = A374180 (n + 1)

end A374180

/-! ## A374180.P15225054892056108712

`eq[A010222(n), A090678(n)]`
-/

namespace A374180.P15225054892056108712
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010222 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090678 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A374180.P15225054892056108712

namespace A374180

/-- `eq[A010222(n), A090678(n)]` -/
def P15225054892056108712.Spec : Prop :=
  ∀ n, (P15225054892056108712.a n : ℤ) = A374180 (n + 1)

end A374180

/-! ## A374180.P2290025329375656471

`eq[A040250(n), A090678(n)]`
-/

namespace A374180.P2290025329375656471
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040250 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090678 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A374180.P2290025329375656471

namespace A374180

/-- `eq[A040250(n), A090678(n)]` -/
def P2290025329375656471.Spec : Prop :=
  ∀ n, (P2290025329375656471.a n : ℤ) = A374180 (n + 1)

end A374180

/-! ## A374180.P8082838017004024955

`eq[A040276(n), A090678(n)]`
-/

namespace A374180.P8082838017004024955
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040276 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090678 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A374180.P8082838017004024955

namespace A374180

/-- `eq[A040276(n), A090678(n)]` -/
def P8082838017004024955.Spec : Prop :=
  ∀ n, (P8082838017004024955.a n : ℤ) = A374180 (n + 1)

end A374180

/-! ## A374180.P12824607389926329125

`eq[A040278(n), A090678(n)]`
-/

namespace A374180.P12824607389926329125
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040278 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090678 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A374180.P12824607389926329125

namespace A374180

/-- `eq[A040278(n), A090678(n)]` -/
def P12824607389926329125.Spec : Prop :=
  ∀ n, (P12824607389926329125.a n : ℤ) = A374180 (n + 1)

end A374180

/-! ## A374180.P6463857009267516425

`eq[A040351(n), A090678(n)]`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A374180

/-- `eq[A040351(n), A090678(n)]` -/
def P6463857009267516425.Spec : Prop :=
  ∀ n, (P6463857009267516425.a n : ℤ) = A374180 (n + 1)

theorem P6463857009267516425.correct : P6463857009267516425.Spec := by
  intro n
  simp only [A374180, Nat.add_sub_cancel]

end A374180

/-! ## A374180.P5154269096892996546

`eq[A040354(n), A090678(n)]`
-/

namespace A374180.P5154269096892996546
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040354 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090678 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A374180.P5154269096892996546

namespace A374180

/-- `eq[A040354(n), A090678(n)]` -/
def P5154269096892996546.Spec : Prop :=
  ∀ n, (P5154269096892996546.a n : ℤ) = A374180 (n + 1)

end A374180

/-! ## A374180.P3393887936881325204

`eq[A040386(n), A090678(n)]`
-/

namespace A374180.P3393887936881325204
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040386 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090678 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A374180.P3393887936881325204

namespace A374180

/-- `eq[A040386(n), A090678(n)]` -/
def P3393887936881325204.Spec : Prop :=
  ∀ n, (P3393887936881325204.a n : ℤ) = A374180 (n + 1)

end A374180

/-! ## A374180.P18365400501199829817

`eq[A040434(n), A090678(n)]`
-/

namespace A374180.P18365400501199829817
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040434 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090678 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A374180.P18365400501199829817

namespace A374180

/-- `eq[A040434(n), A090678(n)]` -/
def P18365400501199829817.Spec : Prop :=
  ∀ n, (P18365400501199829817.a n : ℤ) = A374180 (n + 1)

end A374180

/-! ## A374180.P4532936071679101437

`eq[A040476(n), A090678(n)]`
-/

namespace A374180.P4532936071679101437
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040476 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090678 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A374180.P4532936071679101437

namespace A374180

/-- `eq[A040476(n), A090678(n)]` -/
def P4532936071679101437.Spec : Prop :=
  ∀ n, (P4532936071679101437.a n : ℤ) = A374180 (n + 1)

end A374180

/-! ## A374180.P9084219393066799482

`eq[A040521(n), A090678(n)]`
-/

namespace A374180.P9084219393066799482
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040521 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090678 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A374180.P9084219393066799482

namespace A374180

/-- `eq[A040521(n), A090678(n)]` -/
def P9084219393066799482.Spec : Prop :=
  ∀ n, (P9084219393066799482.a n : ℤ) = A374180 (n + 1)

end A374180

/-! ## A374180.P11279427757059936081

`eq[A040522(n), A090678(n)]`
-/

namespace A374180.P11279427757059936081
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040522 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090678 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A374180.P11279427757059936081

namespace A374180

/-- `eq[A040522(n), A090678(n)]` -/
def P11279427757059936081.Spec : Prop :=
  ∀ n, (P11279427757059936081.a n : ℤ) = A374180 (n + 1)

end A374180

/-! ## A374180.P17027235553426348533

`eq[A040616(n), A090678(n)]`
-/

namespace A374180.P17027235553426348533
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040616 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090678 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A374180.P17027235553426348533

namespace A374180

/-- `eq[A040616(n), A090678(n)]` -/
def P17027235553426348533.Spec : Prop :=
  ∀ n, (P17027235553426348533.a n : ℤ) = A374180 (n + 1)

end A374180

/-! ## A374180.P14899963840399936937

`eq[A040663(n), A090678(n)]`
-/

namespace A374180.P14899963840399936937
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040663 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090678 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A374180.P14899963840399936937

namespace A374180

/-- `eq[A040663(n), A090678(n)]` -/
def P14899963840399936937.Spec : Prop :=
  ∀ n, (P14899963840399936937.a n : ℤ) = A374180 (n + 1)

end A374180

/-! ## A374180.P3479707536734262200

`eq[A010124(n), A121241(n)]`
-/

namespace A374180.P3479707536734262200
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010124 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121241 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A374180.P3479707536734262200

namespace A374180

/-- `eq[A010124(n), A121241(n)]` -/
def P3479707536734262200.Spec : Prop :=
  ∀ n, (P3479707536734262200.a n : ℤ) = A374180 (n + 1)

end A374180

/-! ## A374180.P12543694228821366996

`eq[A010138(n), A121241(n)]`
-/

namespace A374180.P12543694228821366996
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010138 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121241 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A374180.P12543694228821366996

namespace A374180

/-- `eq[A010138(n), A121241(n)]` -/
def P12543694228821366996.Spec : Prop :=
  ∀ n, (P12543694228821366996.a n : ℤ) = A374180 (n + 1)

end A374180

/-!
# A374181: Numbers k such that K(7 / k) != K((-1)^floor(k/2)*k / 7), where K(a/b) is the Kronecker symbol. Row 2 of A374188.

The programs for A374181, the canonical program `A374181.P5817940139700194880` is in `Seq.B002.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A374181 has offset 1).

The definition of A374181 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2137 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A374181.P17376576182500219265

`eq[A089129(n), A090678(n)]`
-/

namespace A374181.P17376576182500219265
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089129 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090678 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A374181.P17376576182500219265

namespace A374181

/-- `eq[A089129(n), A090678(n)]` -/
def P17376576182500219265.Spec : Prop :=
  ∀ n, (P17376576182500219265.a n : ℤ) = A374181 (n + 1)

end A374181

/-! ## A374181.P5817940139700194880

`eq[A089129(n), A121241(n)]`

The canonical program, it is in `Seq.B002.C006`.
-/

namespace A374181

/-- `eq[A089129(n), A121241(n)]` -/
def P5817940139700194880.Spec : Prop :=
  ∀ n, (P5817940139700194880.a n : ℤ) = A374181 (n + 1)

theorem P5817940139700194880.correct : P5817940139700194880.Spec := by
  intro n
  simp only [A374181, Nat.add_sub_cancel]

end A374181

/-! ## A374181.P88054157787344288

`filter[A374189(n+1), A109720(#)]`
-/

namespace A374181.P88054157787344288
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374189 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A109720 (f1 j).toNat = 1) n)

end

end A374181.P88054157787344288

namespace A374181

/-- `filter[A374189(n+1), A109720(#)]` -/
def P88054157787344288.Spec : Prop :=
  ∀ n, P88054157787344288.a n = A374181 (n + 1)

end A374181

/-! ## A374181.P14902342128951110680

`∩[2*A047304(n+1), A374189(n+1)]`
-/

namespace A374181.P14902342128951110680
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A047304 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374189 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A374181.P14902342128951110680

namespace A374181

/-- `∩[2*A047304(n+1), A374189(n+1)]` -/
def P14902342128951110680.Spec : Prop :=
  ∀ n, (P14902342128951110680.a n : ℤ) = A374181 (n + 1)

end A374181

/-! ## A374181.P14355473381155948095

`∩[A047304(n+1), A374189(n+1)]`
-/

namespace A374181.P14355473381155948095
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047304 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374189 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A374181.P14355473381155948095

namespace A374181

/-- `∩[A047304(n+1), A374189(n+1)]` -/
def P14355473381155948095.Spec : Prop :=
  ∀ n, (P14355473381155948095.a n : ℤ) = A374181 (n + 1)

end A374181

/-!
# A374182: Numbers k such that K(11 / k) != K((-1)^floor(k/2)*k / 11), where K(a/b) is the Kronecker symbol. Row 3 of A374188.

The programs for A374182, there is no canonical definition to state claims against.
-/

/-! ## A374182.P14325802627457370800

`filter[A374189(n+1), A145568(#)]`
-/

namespace A374182.P14325802627457370800
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374189 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A145568 (f1 j).toNat = 1) n)

end

end A374182.P14325802627457370800

/-! ## A374182.P14037468915907050131

`∩[2*A010784(n+1), A374189(n+1)]`
-/

namespace A374182.P14037468915907050131
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A010784 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374189 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A374182.P14037468915907050131

/-! ## A374182.P5188771595242525140

`∩[2*A043096(n+1), A374189(n+1)]`
-/

namespace A374182.P5188771595242525140
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A043096 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374189 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A374182.P5188771595242525140

/-! ## A374182.P6023909371074516889

`∩[2*A059543(n+1), A374189(n+1)]`
-/

namespace A374182.P6023909371074516889
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A059543 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374189 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A374182.P6023909371074516889

/-! ## A374182.P9631630714627820265

`∩[2*A160542(n+1), A374189(n+1)]`
-/

namespace A374182.P9631630714627820265
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A160542 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374189 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A374182.P9631630714627820265

/-!
# A374183: Numbers k such that K(15 / k) != K((-1)^floor(k/2)*k / 15), where K(a/b) is the Kronecker symbol. Row 4 of A374188.

The programs for A374183, the canonical program `A374183.P5104469556233860384` is in `Seq.B004.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A374183 has offset 1).

The definition of A374183 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8004 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A374183.P5104469556233860384

`filter[A374180(n+1), A011558(#)]`

The canonical program, it is in `Seq.B004.C003`.
-/

namespace A374183

/-- `filter[A374180(n+1), A011558(#)]` -/
def P5104469556233860384.Spec : Prop :=
  ∀ n, P5104469556233860384.a n = A374183 (n + 1)

theorem P5104469556233860384.correct : P5104469556233860384.Spec := by
  intro n
  simp only [A374183, Nat.add_sub_cancel]

end A374183

/-! ## A374183.P5846626542395903626

`∩[A217562(n+1), A374180(n+1)]`
-/

namespace A374183.P5846626542395903626
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217562 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374180 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A374183.P5846626542395903626

namespace A374183

/-- `∩[A217562(n+1), A374180(n+1)]` -/
def P5846626542395903626.Spec : Prop :=
  ∀ n, (P5846626542395903626.a n : ℤ) = A374183 (n + 1)

end A374183

/-! ## A374183.P13423700713131723100

`∩[2*A047201(n+1), A374180(n+1)]`
-/

namespace A374183.P13423700713131723100
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A047201 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374180 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A374183.P13423700713131723100

namespace A374183

/-- `∩[2*A047201(n+1), A374180(n+1)]` -/
def P13423700713131723100.Spec : Prop :=
  ∀ n, (P13423700713131723100.a n : ℤ) = A374183 (n + 1)

end A374183

/-! ## A374183.P5243194065696236888

`∩[A374180(n+1), A374277(n+1)]`
-/

namespace A374183.P5243194065696236888
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374180 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374277 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A374183.P5243194065696236888

namespace A374183

/-- `∩[A374180(n+1), A374277(n+1)]` -/
def P5243194065696236888.Spec : Prop :=
  ∀ n, (P5243194065696236888.a n : ℤ) = A374183 (n + 1)

end A374183

/-! ## A374183.P16477571735194505194

`∩[A229829(n+1), A374180(n+1)]`
-/

namespace A374183.P16477571735194505194
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229829 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374180 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A374183.P16477571735194505194

namespace A374183

/-- `∩[A229829(n+1), A374180(n+1)]` -/
def P16477571735194505194.Spec : Prop :=
  ∀ n, (P16477571735194505194.a n : ℤ) = A374183 (n + 1)

end A374183

/-! ## A374183.P15290188973841046074

`∩[A047201(n+1), A374180(n+1)]`
-/

namespace A374183.P15290188973841046074
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047201 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374180 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A374183.P15290188973841046074

namespace A374183

/-- `∩[A047201(n+1), A374180(n+1)]` -/
def P15290188973841046074.Spec : Prop :=
  ∀ n, (P15290188973841046074.a n : ℤ) = A374183 (n + 1)

end A374183

/-! ## A374183.P3391153891940842482

`∩[A067251(n+1), A374180(n+1)]`
-/

namespace A374183.P3391153891940842482
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067251 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374180 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A374183.P3391153891940842482

namespace A374183

/-- `∩[A067251(n+1), A374180(n+1)]` -/
def P3391153891940842482.Spec : Prop :=
  ∀ n, (P3391153891940842482.a n : ℤ) = A374183 (n + 1)

end A374183

/-! ## A374183.P15838925310527454494

`∩[A342851(n+1), A374180(n+1)]`
-/

namespace A374183.P15838925310527454494
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342851 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374180 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A374183.P15838925310527454494

namespace A374183

/-- `∩[A342851(n+1), A374180(n+1)]` -/
def P15838925310527454494.Spec : Prop :=
  ∀ n, (P15838925310527454494.a n : ℤ) = A374183 (n + 1)

end A374183

/-! ## A374183.P1396889224168494930

`filter[A374180(n+1), A168184(#)]`
-/

namespace A374183.P1396889224168494930
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374180 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A168184 (f1 j).toNat = 1) n)

end

end A374183.P1396889224168494930

namespace A374183

/-- `filter[A374180(n+1), A168184(#)]` -/
def P1396889224168494930.Spec : Prop :=
  ∀ n, P1396889224168494930.a n = A374183 (n + 1)

end A374183

/-!
# A374184: Numbers k such that K(19 / k) != K((-1)^floor(k/2)*k / 19), where K(a/b) is the Kronecker symbol. Row 5 of A374188.

The programs for A374184, there is no canonical definition to state claims against.
-/

/-! ## A374184.P15668793507138584650

`A374189(comp[n²!-∑[n+1]])`
-/

namespace A374184.P15668793507138584650
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (n ^ 2) : ℤ) - ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374189 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A374184.P15668793507138584650

/-! ## A374184.P9434268483831536334

`∩[A374189(n+1), A195126(n)]`
-/

namespace A374184.P9434268483831536334
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374189 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195126 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A374184.P9434268483831536334

/-! ## A374184.P15627078414517845305

`A374189(or(A076084(n+1), A342720(n+3)))`
-/

namespace A374184.P15627078414517845305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374189 (Int.lor (A076084 (n + 1)) (A342720 (n + 3))).toNat

end

end A374184.P15627078414517845305

/-! ## A374184.P18091823418747050784

`A097448(A374189(n+1))`
-/

namespace A374184.P18091823418747050784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097448 (A374189 (n + 1)).toNat

end

end A374184.P18091823418747050784

/-! ## A374184.P2198051831336729636

`A374189(A076084(n+2)-1)`
-/

namespace A374184.P2198051831336729636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374189 (A076084 (n + 2) - 1).toNat

end

end A374184.P2198051831336729636

/-!
# A374185: a(n) = floor(Integral_{t=0..n} floor(exp(t)) dt). The Waldvogel sequence.

The programs for A374185, there is no canonical definition to state claims against.
-/

/-! ## A374185.P15509693514768608408

`∑[floor(Δ[exp(n-1)])]`
-/

namespace A374185.P15509693514768608408
noncomputable section

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.exp ((n : ℤ) - 1 : ℝ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊f2 (n + 1) - f2 n⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A374185.P15509693514768608408

/-! ## A374185.P4888162381384869401

`floor(exp(n)-A226143(n+1))`
-/

namespace A374185.P4888162381384869401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.exp (n : ℝ) - (A226143 (n + 1) : ℝ)⌋

end

end A374185.P4888162381384869401

/-! ## A374185.P3023727828657646822

`A374186(n)-floor(n^(1/5))`
-/

namespace A374185.P3023727828657646822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374186 n - ⌊(n : ℝ) ^ ((1 : ℚ) / 5 : ℝ)⌋

end

end A374185.P3023727828657646822

/-! ## A374185.P14197227631318534935

`floor(exp(n))-∑[A142724(2*(n+2))]`
-/

namespace A374185.P14197227631318534935
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142724 (2 * (n + 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.exp (n : ℝ)⌋ - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A374185.P14197227631318534935

/-!
# A374186: a(n) = ceiling(Integral_{t=0..n} floor(exp(t)) dt). The Waldvogel sequence.

The programs for A374186, there is no canonical definition to state claims against.
-/

/-! ## A374186.P4589425390766495022

`ceil(exp(n)-∑[n+1]/(n+1))`
-/

namespace A374186.P4589425390766495022
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.exp (n : ℝ) - (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / (n + 1 : ℚ) : ℝ)⌉

end

end A374186.P4589425390766495022

/-! ## A374186.P7915831513420128114

`A245285(n)%floor(Δ[exp(n)])`
-/

namespace A374186.P7915831513420128114
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.exp (n : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A245285 n) ⌊f1 (n + 1) - f1 n⌋

end

end A374186.P7915831513420128114

/-!
# A374189: The values of A374188, seen as an ordered set.

The programs for A374189, there is no canonical definition to state claims against.
-/

/-! ## A374189.P4245329868407806160

`2*lt[1, A123725(n)]`
-/

namespace A374189.P4245329868407806160
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123725 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A374189.P4245329868407806160

/-! ## A374189.P16911975080344036677

`eq[2, Δ[A007400(2*n)]]`
-/

namespace A374189.P16911975080344036677
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007400 (2 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A374189.P16911975080344036677

/-! ## A374189.P17829336396945330609

`eq[1, A301850(n+1)+2]`
-/

namespace A374189.P17829336396945330609
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301850 (n + 1) + 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A374189.P17829336396945330609

/-! ## A374189.P17097655868862752261

`eq[1, A073097(3*n+1)]`
-/

namespace A374189.P17097655868862752261
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073097 (3 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A374189.P17097655868862752261

/-! ## A374189.P10534464490553257110

`∩[2*(n+1), 2*n-A073089(n+1)]`
-/

namespace A374189.P10534464490553257110
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) - A073089 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A374189.P10534464490553257110

/-! ## A374189.P255065422496119641

`filter[A003485(n), A379728(#)]`
-/

namespace A374189.P255065422496119641
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003485 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A379728 (f1 j).toNat = 1) n)

end

end A374189.P255065422496119641

/-! ## A374189.P13584298725991993847

`filter[A004277(n), A379728(#)]`
-/

namespace A374189.P13584298725991993847
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A379728 (f1 j).toNat = 1) n)

end

end A374189.P13584298725991993847

/-! ## A374189.P13118551926555203677

`eq[A019426(n), A090678(n)]`
-/

namespace A374189.P13118551926555203677
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019426 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090678 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A374189.P13118551926555203677

/-!
# A374190: Complement of A374189 in A005843.

The programs for A374190, there is no canonical definition to state claims against.
-/

/-! ## A374190.P17060482861636994599

`eq[0, and(1-2*n, and(2*n+1, n+2))]`
-/

namespace A374190.P17060482861636994599
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (1 - (2 * n : ℤ)) (Nat.land (2 * n + 1) (n + 2) : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A374190.P17060482861636994599

/-! ## A374190.P12274638745782035734

`2*lt[A123725(n), 2]`
-/

namespace A374190.P12274638745782035734
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123725 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A374190.P12274638745782035734

/-! ## A374190.P986119771412751702

`record[n*A073097(n+1)]`
-/

namespace A374190.P986119771412751702
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A073097 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A374190.P986119771412751702

/-! ## A374190.P2357327925329698017

`eq[-1, A073097(3*n+1)]`
-/

namespace A374190.P2357327925329698017
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073097 (3 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A374190.P2357327925329698017

/-! ## A374190.P9330243910437373661

`record[2*n*A073089(n+1)]`
-/

namespace A374190.P9330243910437373661
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) * A073089 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A374190.P9330243910437373661

/-! ## A374190.P5306907161136762219

`eq[ceil(n/4)-floor(n/4), A038189(2*n-n%2)]`
-/

namespace A374190.P5306907161136762219
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n : ℚ) / 4⌉ - ⌊(n : ℚ) / 4⌋

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038189 (2 * n - n % 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A374190.P5306907161136762219

/-! ## A374190.P14291773149954675609

`eq[2*a(n-2)-a(n-4), A004200(n)]` with `a(0)=0, a(1)=0, a(2)=3, a(3)=4, a(4)=3`
-/

namespace A374190.P14291773149954675609
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 0, 3, 4, 3] fun n f1 =>
  2 * f1 (n - 2) - f1 (n - 4)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004200 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A374190.P14291773149954675609

/-! ## A374190.P4207629093859404471

`eq[A004200(n), A060445(n)]`
-/

namespace A374190.P4207629093859404471
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004200 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060445 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A374190.P4207629093859404471

/-! ## A374190.P4936354633171704660

`eq[A067018(n), A090678(n)]`
-/

namespace A374190.P4936354633171704660
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067018 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090678 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A374190.P4936354633171704660

/-! ## A374190.P17541027013153518983

`eq[A006464(n), A158515(n)]`
-/

namespace A374190.P17541027013153518983
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006464 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158515 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A374190.P17541027013153518983

/-!
# A374191: Triangle read by rows: T(n) is a permutation of [0, 1, 2, ..., n] subject to an extended Sigrist condition (A280864).

The programs for A374191, there is no canonical definition to state claims against.
-/

/-! ## A374191.P11037007076611795181

`A330524(n+1)-A069291(A302094(n+1))`
-/

namespace A374191.P11037007076611795181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330524 (n + 1) - A069291 (A302094 (n + 1)).toNat

end

end A374191.P11037007076611795181

/-! ## A374191.P11632063645899210203

`A307597(A376028(n+1))+A307597(n)`
-/

namespace A374191.P11632063645899210203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307597 (A376028 (n + 1)).toNat + A307597 n

end

end A374191.P11632063645899210203

/-! ## A374191.P15439168602644265973

`A322440(A002113(n+1))%A347643(n)`
-/

namespace A374191.P15439168602644265973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A322440 (A002113 (n + 1)).toNat) (A347643 n)

end

end A374191.P15439168602644265973

/-! ## A374191.P10098550072514076647

`A000120(n+2)%A000120(A181822(n+1))`
-/

namespace A374191.P10098550072514076647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000120 (n + 2)) (A000120 (A181822 (n + 1)).toNat)

end

end A374191.P10098550072514076647

/-!
# A374195: Row sums of A373917.

The programs for A374195, there is no canonical definition to state claims against.
-/

/-! ## A374195.P12700185057939392962

`A050187(n+1)%A125300(A347047(3*n+5))`
-/

namespace A374195.P12700185057939392962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A050187 (n + 1)) (A125300 (A347047 (3 * n + 5)).toNat)

end

end A374195.P12700185057939392962

/-! ## A374195.P17851886973401895901

`A030190(A214761(n))*A050187(n+1)`
-/

namespace A374195.P17851886973401895901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030190 (A214761 n).toNat * A050187 (n + 1)

end

end A374195.P17851886973401895901

/-! ## A374195.P12195848724818815014

`A065363(A003462(n+1))*A343754(n)`
-/

namespace A374195.P12195848724818815014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065363 (A003462 (n + 1)).toNat * A343754 n

end

end A374195.P12195848724818815014

/-! ## A374195.P15010785044697591200

`A050187(n+1)%A353313(A004110(n))`
-/

namespace A374195.P15010785044697591200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A050187 (n + 1)) (A353313 (A004110 n).toNat)

end

end A374195.P15010785044697591200

/-! ## A374195.P3821359621506202554

`and(A000217(n), A085884(A060633(n+1)))`
-/

namespace A374195.P3821359621506202554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A000217 n) (A085884 (A060633 (n + 1)).toNat)

end

end A374195.P3821359621506202554

/-!
# A374196: a(n) is the minimum value of A017666 that it obtains among divisors of n larger than 1. By convention a(1) = 1.

The programs for A374196, there is no canonical definition to state claims against.
-/

/-! ## A374196.P16243282468324965726

`ceil(A020639(n+1)/A325469(n+1))`
-/

namespace A374196.P16243282468324965726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A020639 (n + 1) : ℚ) / (A325469 (n + 1) : ℚ)⌉

end

end A374196.P16243282468324965726

/-! ## A374196.P16089683261646068053

`ceil(A020639(n+1)/A325470(n+1))`
-/

namespace A374196.P16089683261646068053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A020639 (n + 1) : ℚ) / (A325470 (n + 1) : ℚ)⌉

end

end A374196.P16089683261646068053

/-! ## A374196.P13937049322199299943

`ceil(A020639(n+1)/A325471(n+1))`
-/

namespace A374196.P13937049322199299943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A020639 (n + 1) : ℚ) / (A325471 (n + 1) : ℚ)⌉

end

end A374196.P13937049322199299943

/-! ## A374196.P15451665961251103211

`A028310(A020639(n+1)-A080225(n+1))`
-/

namespace A374196.P15451665961251103211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A020639 (n + 1) - A080225 (n + 1)).toNat

end

end A374196.P15451665961251103211

/-! ## A374196.P10423081894605752878

`gcd(A020639(n+1), A156552(A326698(n+1)))`
-/

namespace A374196.P10423081894605752878
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A020639 (n + 1)) (A156552 (A326698 (n + 1)).toNat)

end

end A374196.P10423081894605752878

/-!
# A374197: a(n) is 1 if the minimum value of A017666 that it obtains among divisors of n larger than 1 is 1, otherwise 0. By convention a(1) = 1.

The programs for A374197, the canonical program `A374197.P14528323584285491207` is in `Seq.B002.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A374197 has offset 1).

The definition of A374197 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A374197.P14528323584285491207

`1-a(A080225(n+1))` with `a(0)=1`

The canonical program, it is in `Seq.B002.C006`.
-/

namespace A374197

/-- `1-a(A080225(n+1))` -/
def P14528323584285491207.Spec : Prop :=
  ∀ n, P14528323584285491207.a n = A374197 (n + 1)

theorem P14528323584285491207.correct : P14528323584285491207.Spec := by
  intro n
  simp only [A374197, Nat.add_sub_cancel]

end A374197

/-! ## A374197.P13065321421801429832

`A004530(A374196(n+1))`
-/

namespace A374197.P13065321421801429832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004530 (A374196 (n + 1)).toNat

end

end A374197.P13065321421801429832

namespace A374197

/-- `A004530(A374196(n+1))` -/
def P13065321421801429832.Spec : Prop :=
  ∀ n, P13065321421801429832.a n = A374197 (n + 1)

end A374197

/-! ## A374197.P6518133614187690942

`A057427(A325470(n+1)-A057427(n))`
-/

namespace A374197.P6518133614187690942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (A325470 (n + 1) - A057427 n).toNat

end

end A374197.P6518133614187690942

namespace A374197

/-- `A057427(A325470(n+1)-A057427(n))` -/
def P6518133614187690942.Spec : Prop :=
  ∀ n, P6518133614187690942.a n = A374197 (n + 1)

end A374197

/-! ## A374197.P9574754447972732409

`and(A092809(n), A374196(n+1))`
-/

namespace A374197.P9574754447972732409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A092809 n) (A374196 (n + 1))

end

end A374197.P9574754447972732409

namespace A374197

/-- `and(A092809(n), A374196(n+1))` -/
def P9574754447972732409.Spec : Prop :=
  ∀ n, P9574754447972732409.a n = A374197 (n + 1)

end A374197

/-! ## A374197.P5877199977971490069

`and(A157780(n), A374196(n+1))`
-/

namespace A374197.P5877199977971490069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A157780 n) (A374196 (n + 1))

end

end A374197.P5877199977971490069

namespace A374197

/-- `and(A157780(n), A374196(n+1))` -/
def P5877199977971490069.Spec : Prop :=
  ∀ n, P5877199977971490069.a n = A374197 (n + 1)

end A374197

/-! ## A374197.P8277259931173482083

`and(A092398(n), A374196(n+1))`
-/

namespace A374197.P8277259931173482083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A092398 n) (A374196 (n + 1))

end

end A374197.P8277259931173482083

namespace A374197

/-- `and(A092398(n), A374196(n+1))` -/
def P8277259931173482083.Spec : Prop :=
  ∀ n, P8277259931173482083.a n = A374197 (n + 1)

end A374197

/-!
# A374198: After initial 1, numbers k such that at least one of their divisors is a multiply-perfect number (A007691) larger than one.

The programs for A374198, the canonical program `A374198.P8695164487489042083` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A374198 has offset 1).

The definition of A374198 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A374198.P8695164487489042083

`record[(n+1)*A374197(n+1)]`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A374198

/-- `record[(n+1)*A374197(n+1)]` -/
def P8695164487489042083.Spec : Prop :=
  ∀ n, P8695164487489042083.a n = A374198 (n + 1)

theorem P8695164487489042083.correct : P8695164487489042083.Spec := by
  intro n
  simp only [A374198, Nat.add_sub_cancel]

end A374198

/-! ## A374198.P9094186109981717433

`eq[1, A374196(n+1)]+1`
-/

namespace A374198.P9094186109981717433
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374196 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A374198.P9094186109981717433

namespace A374198

/-- `eq[1, A374196(n+1)]+1` -/
def P9094186109981717433.Spec : Prop :=
  ∀ n, (P9094186109981717433.a n : ℤ) = A374198 (n + 1)

end A374198

/-! ## A374198.P2389953513146496758

`filter[A103288(n+1), A374197(#)]`
-/

namespace A374198.P2389953513146496758
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103288 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A374197 (f1 j).toNat = 1) n)

end

end A374198.P2389953513146496758

namespace A374198

/-- `filter[A103288(n+1), A374197(#)]` -/
def P2389953513146496758.Spec : Prop :=
  ∀ n, P2389953513146496758.a n = A374198 (n + 1)

end A374198

/-! ## A374198.P17451988653380073871

`filter[A004277(n), A374197(#)]`
-/

namespace A374198.P17451988653380073871
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A374197 (f1 j).toNat = 1) n)

end

end A374198.P17451988653380073871

namespace A374198

/-- `filter[A004277(n), A374197(#)]` -/
def P17451988653380073871.Spec : Prop :=
  ∀ n, P17451988653380073871.a n = A374198 (n + 1)

end A374198

/-! ## A374198.P6942386964187748995

`filter[A103517(n), A374197(#)]`
-/

namespace A374198.P6942386964187748995
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103517 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A374197 (f1 j).toNat = 1) n)

end

end A374198.P6942386964187748995

namespace A374198

/-- `filter[A103517(n), A374197(#)]` -/
def P6942386964187748995.Spec : Prop :=
  ∀ n, P6942386964187748995.a n = A374198 (n + 1)

end A374198

/-! ## A374198.P1232359231974079182

`filter[A004275(n+1), A374197(#)]`
-/

namespace A374198.P1232359231974079182
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004275 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A374197 (f1 j).toNat = 1) n)

end

end A374198.P1232359231974079182

namespace A374198

/-- `filter[A004275(n+1), A374197(#)]` -/
def P1232359231974079182.Spec : Prop :=
  ∀ n, P1232359231974079182.a n = A374198 (n + 1)

end A374198

/-! ## A374198.P13553543739081971824

`filter[A092535(n+1), A374197(#)]`
-/

namespace A374198.P13553543739081971824
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092535 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A374197 (f1 j).toNat = 1) n)

end

end A374198.P13553543739081971824

namespace A374198

/-- `filter[A092535(n+1), A374197(#)]` -/
def P13553543739081971824.Spec : Prop :=
  ∀ n, P13553543739081971824.a n = A374198 (n + 1)

end A374198

/-! ## A374198.P9401369771572365582

`filter[A316571(n+1), A374197(#)]`
-/

namespace A374198.P9401369771572365582
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316571 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A374197 (f1 j).toNat = 1) n)

end

end A374198.P9401369771572365582

namespace A374198

/-- `filter[A316571(n+1), A374197(#)]` -/
def P9401369771572365582.Spec : Prop :=
  ∀ n, P9401369771572365582.a n = A374198 (n + 1)

end A374198

/-! ## A374198.P16491521173783477720

`lt[A371734(n+1), A325470(n+1)]+1`
-/

namespace A374198.P16491521173783477720
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371734 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325470 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A374198.P16491521173783477720

namespace A374198

/-- `lt[A371734(n+1), A325470(n+1)]+1` -/
def P16491521173783477720.Spec : Prop :=
  ∀ n, (P16491521173783477720.a n : ℤ) = A374198 (n + 1)

end A374198

/-! ## A374198.P4736610892466260818

`filter[A004279(n), A374197(#)]`
-/

namespace A374198.P4736610892466260818
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004279 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A374197 (f1 j).toNat = 1) n)

end

end A374198.P4736610892466260818

namespace A374198

/-- `filter[A004279(n), A374197(#)]` -/
def P4736610892466260818.Spec : Prop :=
  ∀ n, P4736610892466260818.a n = A374198 (n + 1)

end A374198

/-! ## A374198.P11053435526151381482

`filter[A004271(n+1), A374197(#)]`
-/

namespace A374198.P11053435526151381482
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004271 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A374197 (f1 j).toNat = 1) n)

end

end A374198.P11053435526151381482

namespace A374198

/-- `filter[A004271(n+1), A374197(#)]` -/
def P11053435526151381482.Spec : Prop :=
  ∀ n, P11053435526151381482.a n = A374198 (n + 1)

end A374198

/-! ## A374198.P7587620047636259801

`filter[A004272(n+1), A374197(#)]`
-/

namespace A374198.P7587620047636259801
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004272 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A374197 (f1 j).toNat = 1) n)

end

end A374198.P7587620047636259801

namespace A374198

/-- `filter[A004272(n+1), A374197(#)]` -/
def P7587620047636259801.Spec : Prop :=
  ∀ n, P7587620047636259801.a n = A374198 (n + 1)

end A374198

/-! ## A374198.P4097553400895275681

`filter[A004278(n+1), A374197(#)]`
-/

namespace A374198.P4097553400895275681
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004278 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A374197 (f1 j).toNat = 1) n)

end

end A374198.P4097553400895275681

namespace A374198

/-- `filter[A004278(n+1), A374197(#)]` -/
def P4097553400895275681.Spec : Prop :=
  ∀ n, P4097553400895275681.a n = A374198 (n + 1)

end A374198

/-! ## A374198.P17586710556571719039

`filter[A300576(n+1), A374197(#)]`
-/

namespace A374198.P17586710556571719039
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300576 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A374197 (f1 j).toNat = 1) n)

end

end A374198.P17586710556571719039

namespace A374198

/-- `filter[A300576(n+1), A374197(#)]` -/
def P17586710556571719039.Spec : Prop :=
  ∀ n, P17586710556571719039.a n = A374198 (n + 1)

end A374198

/-! ## A374198.P16636313136264095550

`filter[A058992(n+2), A374197(#)]`
-/

namespace A374198.P16636313136264095550
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058992 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A374197 (f1 j).toNat = 1) n)

end

end A374198.P16636313136264095550

namespace A374198

/-- `filter[A058992(n+2), A374197(#)]` -/
def P16636313136264095550.Spec : Prop :=
  ∀ n, P16636313136264095550.a n = A374198 (n + 1)

end A374198

/-! ## A374198.P348298045358314633

`filter[A064745(n+1), A374197(#)]`
-/

namespace A374198.P348298045358314633
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064745 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A374197 (f1 j).toNat = 1) n)

end

end A374198.P348298045358314633

namespace A374198

/-- `filter[A064745(n+1), A374197(#)]` -/
def P348298045358314633.Spec : Prop :=
  ∀ n, P348298045358314633.a n = A374198 (n + 1)

end A374198

/-! ## A374198.P2701454722774861216

`filter[A171086(n+1), A374197(#)]`
-/

namespace A374198.P2701454722774861216
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171086 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A374197 (f1 j).toNat = 1) n)

end

end A374198.P2701454722774861216

namespace A374198

/-- `filter[A171086(n+1), A374197(#)]` -/
def P2701454722774861216.Spec : Prop :=
  ∀ n, P2701454722774861216.a n = A374198 (n + 1)

end A374198

/-! ## A374198.P8130651727436983346

`filter[A225850(n+1), A374197(#)]`
-/

namespace A374198.P8130651727436983346
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225850 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A374197 (f1 j).toNat = 1) n)

end

end A374198.P8130651727436983346

namespace A374198

/-- `filter[A225850(n+1), A374197(#)]` -/
def P8130651727436983346.Spec : Prop :=
  ∀ n, P8130651727436983346.a n = A374198 (n + 1)

end A374198

/-! ## A374198.P10328571925456415065

`filter[A246352(n+1), A374197(#)]`
-/

namespace A374198.P10328571925456415065
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246352 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A374197 (f1 j).toNat = 1) n)

end

end A374198.P10328571925456415065

namespace A374198

/-- `filter[A246352(n+1), A374197(#)]` -/
def P10328571925456415065.Spec : Prop :=
  ∀ n, P10328571925456415065.a n = A374198 (n + 1)

end A374198

/-! ## A374198.P8523981711614029015

`filter[A372771(n+1), A374197(#)]`
-/

namespace A374198.P8523981711614029015
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372771 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A374197 (f1 j).toNat = 1) n)

end

end A374198.P8523981711614029015

namespace A374198

/-- `filter[A372771(n+1), A374197(#)]` -/
def P8523981711614029015.Spec : Prop :=
  ∀ n, P8523981711614029015.a n = A374198 (n + 1)

end A374198

/-!
# A374199: Divisors of 19679625.

The programs for A374199, there is no canonical definition to state claims against.
-/

/-! ## A374199.P7193616070326847189

`∩[A010420(n+1), A305409(n+1)]`
-/

namespace A374199.P7193616070326847189
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010420 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305409 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A374199.P7193616070326847189

/-! ## A374199.P3742255984934780649

`∩[A010420(n+1), A342572(n+1)]`
-/

namespace A374199.P3742255984934780649
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010420 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342572 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A374199.P3742255984934780649

/-! ## A374199.P7619265908361415869

`∩[A010420(n+1), A376857(n+1)]`
-/

namespace A374199.P7619265908361415869
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010420 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376857 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A374199.P7619265908361415869

/-! ## A374199.P13538561462867538062

`∩[A252474(n+1), A342572(n+1)]`
-/

namespace A374199.P13538561462867538062
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252474 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342572 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A374199.P13538561462867538062

/-! ## A374199.P13862112182023299801

`∩[A252474(n+1), A376857(n+1)]`
-/

namespace A374199.P13862112182023299801
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252474 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376857 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A374199.P13862112182023299801

