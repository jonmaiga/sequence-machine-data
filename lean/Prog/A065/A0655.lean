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
import Seq.B000.C020
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C033
import Seq.B000.C036
import Seq.B000.C038
import Seq.B000.C041
import Seq.B000.C043
import Seq.B000.C044
import Seq.B000.C046
import Seq.B000.C047
import Seq.B000.C048
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
import Seq.B001.C012
import Seq.B001.C013
import Seq.B002.C000
import Seq.B002.C001
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
import Seq.Opaque.C023
import Seq.Opaque.C024
import SequenceMachineLib.Triangle

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A065500: Number of distinct functions from a set with n^n elements to itself that can be defined naturally (in n) by typed lambda-calculus expressions.

The programs for A065500, the canonical program `A065500.P15680724649823238369` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A065500 has offset 0).

The definition of A065500 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 233 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A065500.P15680724649823238369

`lcm(n, a(n-1)-(n-2))+n-1` with `a(0)=1, a(1)=1`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A065500

/-- `lcm(n, a(n-1)-(n-2))+n-1` -/
def P15680724649823238369.Spec : Prop :=
  ∀ n, P15680724649823238369.a n = A065500 n

theorem P15680724649823238369.correct : P15680724649823238369.Spec := by
  intro n
  simp only [A065500]

end A065500

/-! ## A065500.P3186387430163723666

`A070198(abs(1-n))+n`
-/

namespace A065500.P3186387430163723666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070198 |1 - (n : ℤ)|.toNat + (n : ℤ)

end

end A065500.P3186387430163723666

namespace A065500

/-- `A070198(abs(1-n))+n` -/
def P3186387430163723666.Spec : Prop :=
  ∀ n, P3186387430163723666.a n = A065500 n

end A065500

/-! ## A065500.P17856774935600431899

`A060401(round(sqrt(n²+1)))-1`
-/

namespace A065500.P17856774935600431899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060401 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat - 1

end

end A065500.P17856774935600431899

namespace A065500

/-- `A060401(round(sqrt(n²+1)))-1` -/
def P17856774935600431899.Spec : Prop :=
  ∀ n, P17856774935600431899.a n = A065500 n

end A065500

/-! ## A065500.P9269589481349537677

`A003418(n)+row(floor(n²/2))`
-/

namespace A065500.P9269589481349537677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003418 n + (SequenceMachineLib.triRow ⌊(n ^ 2 : ℚ) / 2⌋.toNat : ℤ)

end

end A065500.P9269589481349537677

namespace A065500

/-- `A003418(n)+row(floor(n²/2))` -/
def P9269589481349537677.Spec : Prop :=
  ∀ n, P9269589481349537677.a n = A065500 n

end A065500

/-! ## A065500.P3780240915248006020

`A003418(abs(1-n)+1)+n-1`
-/

namespace A065500.P3780240915248006020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003418 (|1 - (n : ℤ)| + 1).toNat + ((n : ℤ) - 1)

end

end A065500.P3780240915248006020

namespace A065500

/-- `A003418(abs(1-n)+1)+n-1` -/
def P3780240915248006020.Spec : Prop :=
  ∀ n, P3780240915248006020.a n = A065500 n

end A065500

/-! ## A065500.P1326770537767651917

`A195507(A028310(n)+1)-2`
-/

namespace A065500.P1326770537767651917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195507 (A028310 n + 1).toNat - 2

end

end A065500.P1326770537767651917

namespace A065500

/-- `A195507(A028310(n)+1)-2` -/
def P1326770537767651917.Spec : Prop :=
  ∀ n, P1326770537767651917.a n = A065500 n

end A065500

/-! ## A065500.P14524367147899196810

`A195507(n+1)-A040000(n)`
-/

namespace A065500.P14524367147899196810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195507 (n + 1) - A040000 n

end

end A065500.P14524367147899196810

namespace A065500

/-- `A195507(n+1)-A040000(n)` -/
def P14524367147899196810.Spec : Prop :=
  ∀ n, P14524367147899196810.a n = A065500 n

end A065500

/-! ## A065500.P12356342894863196417

`A028310(n)+A075059(n)-2`
-/

namespace A065500.P12356342894863196417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 n + (A075059 n - 2)

end

end A065500.P12356342894863196417

namespace A065500

/-- `A028310(n)+A075059(n)-2` -/
def P12356342894863196417.Spec : Prop :=
  ∀ n, P12356342894863196417.a n = A065500 n

end A065500

/-! ## A065500.P13802453882354777825

`A195507(n+1)-A036453(n+1)`
-/

namespace A065500.P13802453882354777825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195507 (n + 1) - A036453 (n + 1)

end

end A065500.P13802453882354777825

namespace A065500

/-- `A195507(n+1)-A036453(n+1)` -/
def P13802453882354777825.Spec : Prop :=
  ∀ n, P13802453882354777825.a n = A065500 n

end A065500

/-! ## A065500.P18076717233287007186

`A140106(2*n+1)+A003418(n)`
-/

namespace A065500.P18076717233287007186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140106 (2 * n + 1) + A003418 n

end

end A065500.P18076717233287007186

namespace A065500

/-- `A140106(2*n+1)+A003418(n)` -/
def P18076717233287007186.Spec : Prop :=
  ∀ n, P18076717233287007186.a n = A065500 n

end A065500

/-! ## A065500.P8242025461619580718

`∏[A014963(∏{p}[n, #])]+A028310(n)-1`
-/

namespace A065500.P8242025461619580718
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (∏ p ∈ Nat.primeFactors (f2 n), p)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j + (A028310 n - 1)

end

end A065500.P8242025461619580718

namespace A065500

/-- `∏[A014963(∏{p}[n, #])]+A028310(n)-1` -/
def P8242025461619580718.Spec : Prop :=
  ∀ n, P8242025461619580718.a n = A065500 n

end A065500

/-! ## A065500.P11067279988150927511

`A004273(n)+∏[A014963(∏{p}[n, #])]-n`
-/

namespace A065500.P11067279988150927511
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (∏ p ∈ Nat.primeFactors (f2 n), p)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 n + ∏ j ∈ Finset.range (n + 1), f1 j - (n : ℤ)

end

end A065500.P11067279988150927511

namespace A065500

/-- `A004273(n)+∏[A014963(∏{p}[n, #])]-n` -/
def P11067279988150927511.Spec : Prop :=
  ∀ n, P11067279988150927511.a n = A065500 n

end A065500

/-! ## A065500.P8388195899590012324

`A140106(2*n+1)+A139550(2*n)`
-/

namespace A065500.P8388195899590012324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140106 (2 * n + 1) + A139550 (2 * n)

end

end A065500.P8388195899590012324

namespace A065500

/-- `A140106(2*n+1)+A139550(2*n)` -/
def P8388195899590012324.Spec : Prop :=
  ∀ n, P8388195899590012324.a n = A065500 n

end A065500

/-! ## A065500.P811544149282211757

`A195507(n+1)-gcd(2, A339905(n+1))`
-/

namespace A065500.P811544149282211757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195507 (n + 1) - (Int.gcd 2 (A339905 (n + 1)) : ℤ)

end

end A065500.P811544149282211757

namespace A065500

/-- `A195507(n+1)-gcd(2, A339905(n+1))` -/
def P811544149282211757.Spec : Prop :=
  ∀ n, P811544149282211757.a n = A065500 n

end A065500

/-! ## A065500.P15745158023706863279

`A003418(n)-A001221(A000015(n+1))+n`
-/

namespace A065500.P15745158023706863279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003418 n - A001221 (A000015 (n + 1)).toNat + (n : ℤ)

end

end A065500.P15745158023706863279

namespace A065500

/-- `A003418(n)-A001221(A000015(n+1))+n` -/
def P15745158023706863279.Spec : Prop :=
  ∀ n, P15745158023706863279.a n = A065500 n

end A065500

/-! ## A065500.P16603639402091600149

`A003418(n)-A001221(A000961(n+1))+n`
-/

namespace A065500.P16603639402091600149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003418 n - A001221 (A000961 (n + 1)).toNat + (n : ℤ)

end

end A065500.P16603639402091600149

namespace A065500

/-- `A003418(n)-A001221(A000961(n+1))+n` -/
def P16603639402091600149.Spec : Prop :=
  ∀ n, P16603639402091600149.a n = A065500 n

end A065500

/-! ## A065500.P10211449189517117481

`A003418(n)-A001221(A008578(n+1))+n`
-/

namespace A065500.P10211449189517117481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003418 n - A001221 (A008578 (n + 1)).toNat + (n : ℤ)

end

end A065500.P10211449189517117481

namespace A065500

/-- `A003418(n)-A001221(A008578(n+1))+n` -/
def P10211449189517117481.Spec : Prop :=
  ∀ n, P10211449189517117481.a n = A065500 n

end A065500

/-! ## A065500.P4338271012669384357

`∑[or(1, A119944(n))]-A119944(n)`
-/

namespace A065500.P4338271012669384357
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A119944 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A119944 n

end

end A065500.P4338271012669384357

namespace A065500

/-- `∑[or(1, A119944(n))]-A119944(n)` -/
def P4338271012669384357.Spec : Prop :=
  ∀ n, P4338271012669384357.a n = A065500 n

end A065500

/-! ## A065500.P11107016422151747767

`A259361(n²)+A003418(n)`
-/

namespace A065500.P11107016422151747767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259361 (n ^ 2) + A003418 n

end

end A065500.P11107016422151747767

namespace A065500

/-- `A259361(n²)+A003418(n)` -/
def P11107016422151747767.Spec : Prop :=
  ∀ n, P11107016422151747767.a n = A065500 n

end A065500

/-!
# A065502: Positive numbers divisible by 2 or 5; 1/n not purely periodic after decimal point.

The programs for A065502, the canonical program `A065502.P11895620844329027807` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A065502 has offset 1).

The definition of A065502 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A065502.P11895620844329027807

`ogf((2+x^2+2x^4)/(1-2x+2x^2-2x^3+2x^4-2x^5+x^6))`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A065502

/-- `ogf((2+x^2+2x^4)/(1-2x+2x^2-2x^3+2x^4-2x^5+x^6))` -/
def P11895620844329027807.Spec : Prop :=
  ∀ n, P11895620844329027807.a n = A065502 (n + 1)

theorem P11895620844329027807.correct : P11895620844329027807.Spec := by
  intro n
  simp only [A065502, Nat.add_sub_cancel]

end A065502

/-! ## A065502.P12845643096428173296

`lt[lcm(10, n), 6*n]`
-/

namespace A065502.P12845643096428173296
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 10 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6 * n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A065502.P12845643096428173296

namespace A065502

/-- `lt[lcm(10, n), 6*n]` -/
def P12845643096428173296.Spec : Prop :=
  ∀ n, (P12845643096428173296.a n : ℤ) = A065502 (n + 1)

end A065502

/-! ## A065502.P18407143754448853163

`lt[n, n*gcd(10, n)]`
-/

namespace A065502.P18407143754448853163
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * Nat.gcd 10 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A065502.P18407143754448853163

namespace A065502

/-- `lt[n, n*gcd(10, n)]` -/
def P18407143754448853163.Spec : Prop :=
  ∀ n, (P18407143754448853163.a n : ℤ) = A065502 (n + 1)

end A065502

/-! ## A065502.P5235369730986077167

`∪[2*(n+1), 5*(n+1)]`
-/

namespace A065502.P5235369730986077167
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5 * (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∨ ∃ j, f2 j = x) n

end

end A065502.P5235369730986077167

namespace A065502

/-- `∪[2*(n+1), 5*(n+1)]` -/
def P5235369730986077167.Spec : Prop :=
  ∀ n, (P5235369730986077167.a n : ℤ) = A065502 (n + 1)

end A065502

/-! ## A065502.P3220560023528864676

`∑[((or(1, n)%3)²+1)%3]`
-/

namespace A065502.P3220560023528864676
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((Nat.lor 1 n % 3) ^ 2 + 1) % 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A065502.P3220560023528864676

namespace A065502

/-- `∑[((or(1, n)%3)²+1)%3]` -/
def P3220560023528864676.Spec : Prop :=
  ∀ n, (P3220560023528864676.a n : ℤ) = A065502 (n + 1)

end A065502

/-! ## A065502.P11218267039190577300

`∑[(∑[n]-a(n-3))%3]` with `a(0)=2, a(1)=2, a(2)=1`
-/

namespace A065502.P11218267039190577300
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.rec [2, 2, 1] fun n f1 =>
  Int.tmod (((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) - f1 (n - 3)) 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A065502.P11218267039190577300

namespace A065502

/-- `∑[(∑[n]-a(n-3))%3]` -/
def P11218267039190577300.Spec : Prop :=
  ∀ n, P11218267039190577300.a n = A065502 (n + 1)

end A065502

/-! ## A065502.P17311852033322807562

`comp[(2*n+1)%lcm(5, 2*n+1)]`
-/

namespace A065502.P17311852033322807562
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (2 * n + 1) % Nat.lcm 5 (2 * n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A065502.P17311852033322807562

namespace A065502

/-- `comp[(2*n+1)%lcm(5, 2*n+1)]` -/
def P17311852033322807562.Spec : Prop :=
  ∀ n, (P17311852033322807562.a n : ℤ) = A065502 (n + 1)

end A065502

/-! ## A065502.P4676856549752299324

`a(n-1)+gcd(2, floor(n/2)%3)` with `a(0)=2`
-/

namespace A065502.P4676856549752299324
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [2] fun n a =>
  a (n - 1) + Int.gcd 2 (Int.tmod ⌊(n : ℚ) / 2⌋ 3)

end

end A065502.P4676856549752299324

namespace A065502

/-- `a(n-1)+gcd(2, floor(n/2)%3)` -/
def P4676856549752299324.Spec : Prop :=
  ∀ n, (P4676856549752299324.a n : ℤ) = A065502 (n + 1)

end A065502

/-! ## A065502.P13996626041436284375

`∑[5-(a(n-2)+a(n-4))]` with `a(0)=2, a(1)=2, a(2)=1, a(3)=1`
-/

namespace A065502.P13996626041436284375
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [2, 2, 1, 1] fun n f1 =>
  5 - (f1 (n - 2) + f1 (n - 4))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A065502.P13996626041436284375

namespace A065502

/-- `∑[5-(a(n-2)+a(n-4))]` -/
def P13996626041436284375.Spec : Prop :=
  ∀ n, P13996626041436284375.a n = A065502 (n + 1)

end A065502

/-! ## A065502.P5247926650319030748

`∑[5-a(n-2)-a(n-4)]` with `a(0)=2, a(1)=2, a(2)=1, a(3)=1`
-/

namespace A065502.P5247926650319030748
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [2, 2, 1, 1] fun n f1 =>
  5 - f1 (n - 2) - f1 (n - 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A065502.P5247926650319030748

namespace A065502

/-- `∑[5-a(n-2)-a(n-4)]` -/
def P5247926650319030748.Spec : Prop :=
  ∀ n, P5247926650319030748.a n = A065502 (n + 1)

end A065502

/-! ## A065502.P8116661274668678393

`∑[abs(A134668(n))+1]`
-/

namespace A065502.P8116661274668678393
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A134668 n| + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A065502.P8116661274668678393

namespace A065502

/-- `∑[abs(A134668(n))+1]` -/
def P8116661274668678393.Spec : Prop :=
  ∀ n, P8116661274668678393.a n = A065502 (n + 1)

end A065502

/-! ## A065502.P3020666021440429582

`∑[abs(A309970(n))+1]`
-/

namespace A065502.P3020666021440429582
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A309970 n| + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A065502.P3020666021440429582

namespace A065502

/-- `∑[abs(A309970(n))+1]` -/
def P3020666021440429582.Spec : Prop :=
  ∀ n, P3020666021440429582.a n = A065502 (n + 1)

end A065502

/-! ## A065502.P8143957277660741889

`∑[gcd(2, ∑[A087509(n)])]`
-/

namespace A065502.P8143957277660741889
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087509 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 2 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A065502.P8143957277660741889

namespace A065502

/-- `∑[gcd(2, ∑[A087509(n)])]` -/
def P8143957277660741889.Spec : Prop :=
  ∀ n, (P8143957277660741889.a n : ℤ) = A065502 (n + 1)

end A065502

/-! ## A065502.P10619194779815720308

`∑[3-A096285(n+3)]`
-/

namespace A065502.P10619194779815720308
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 - A096285 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A065502.P10619194779815720308

namespace A065502

/-- `∑[3-A096285(n+3)]` -/
def P10619194779815720308.Spec : Prop :=
  ∀ n, P10619194779815720308.a n = A065502 (n + 1)

end A065502

/-! ## A065502.P9460224995514519851

`A323735(n+2)+1+n`
-/

namespace A065502.P9460224995514519851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323735 (n + 2) + 1 + (n : ℤ)

end

end A065502.P9460224995514519851

namespace A065502

/-- `A323735(n+2)+1+n` -/
def P9460224995514519851.Spec : Prop :=
  ∀ n, P9460224995514519851.a n = A065502 (n + 1)

end A065502

/-! ## A065502.P12703002794535752168

`∑[char[A047260(n+1)]+1]`
-/

namespace A065502.P12703002794535752168
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047260 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f2 j = (n : ℤ) then 1 else 0) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A065502.P12703002794535752168

namespace A065502

/-- `∑[char[A047260(n+1)]+1]` -/
def P12703002794535752168.Spec : Prop :=
  ∀ n, (P12703002794535752168.a n : ℤ) = A065502 (n + 1)

end A065502

/-! ## A065502.P16235229639943537698

`∑[2-char[A047243(n+1)]]`
-/

namespace A065502.P16235229639943537698
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047243 (n + 1)

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - ((if ∃ j, f2 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A065502.P16235229639943537698

namespace A065502

/-- `∑[2-char[A047243(n+1)]]` -/
def P16235229639943537698.Spec : Prop :=
  ∀ n, P16235229639943537698.a n = A065502 (n + 1)

end A065502

/-! ## A065502.P700342518807313115

`∑[2/A010136(2*n+1)]`
-/

namespace A065502.P700342518807313115
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 / (A010136 (2 * n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A065502.P700342518807313115

namespace A065502

/-- `∑[2/A010136(2*n+1)]` -/
def P700342518807313115.Spec : Prop :=
  ∀ n, P700342518807313115.a n = (A065502 (n + 1) : ℚ)

end A065502

/-! ## A065502.P12069497440948654957

`∑[A144110(∑[A132367(n)])]`
-/

namespace A065502.P12069497440948654957
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132367 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144110 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A065502.P12069497440948654957

namespace A065502

/-- `∑[A144110(∑[A132367(n)])]` -/
def P12069497440948654957.Spec : Prop :=
  ∀ n, P12069497440948654957.a n = A065502 (n + 1)

end A065502

/-! ## A065502.P9566993908241534368

`∑[A107030(∑[A184334(n)])]`
-/

namespace A065502.P9566993908241534368
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184334 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107030 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A065502.P9566993908241534368

namespace A065502

/-- `∑[A107030(∑[A184334(n)])]` -/
def P9566993908241534368.Spec : Prop :=
  ∀ n, P9566993908241534368.a n = A065502 (n + 1)

end A065502

/-!
# A065503: Indices k of primes p(k) such that p(k) is in A060213.

The programs for A065503, the canonical program `A065503.P1374180502062588867` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A065503 has offset 1).

The definition of A065503 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 107 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A065503.P1374180502062588867

`filter[A020936(n+1), A100821(#)]`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A065503

/-- `filter[A020936(n+1), A100821(#)]` -/
def P1374180502062588867.Spec : Prop :=
  ∀ n, P1374180502062588867.a n = A065503 (n + 1)

theorem P1374180502062588867.correct : P1374180502062588867.Spec := by
  intro n
  simp only [A065503, Nat.add_sub_cancel]

end A065503

/-! ## A065503.P606423011555565226

`A000720(A060213(n+1))`
-/

namespace A065503.P606423011555565226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A060213 (n + 1)).toNat

end

end A065503.P606423011555565226

namespace A065503

/-- `A000720(A060213(n+1))` -/
def P606423011555565226.Spec : Prop :=
  ∀ n, P606423011555565226.a n = A065503 (n + 1)

end A065503

/-! ## A065503.P11214298570138117851

`A000720(A171179(1+n))`
-/

namespace A065503.P11214298570138117851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A171179 (1 + n)).toNat

end

end A065503.P11214298570138117851

namespace A065503

/-- `A000720(A171179(1+n))` -/
def P11214298570138117851.Spec : Prop :=
  ∀ n, P11214298570138117851.a n = A065503 (n + 1)

end A065503

/-! ## A065503.P10811585024658127275

`A061395(A171179(n+1)-1)`
-/

namespace A065503.P10811585024658127275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (A171179 (n + 1) - 1).toNat

end

end A065503.P10811585024658127275

namespace A065503

/-- `A061395(A171179(n+1)-1)` -/
def P10811585024658127275.Spec : Prop :=
  ∀ n, P10811585024658127275.a n = A065503 (n + 1)

end A065503

/-! ## A065503.P16273290912822200380

`A000720(6*A060212(n+1))`
-/

namespace A065503.P16273290912822200380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (6 * A060212 (n + 1)).toNat

end

end A065503.P16273290912822200380

namespace A065503

/-- `A000720(6*A060212(n+1))` -/
def P16273290912822200380.Spec : Prop :=
  ∀ n, P16273290912822200380.a n = A065503 (n + 1)

end A065503

/-! ## A065503.P8350243731309270896

`A061395(A154272(n+5)+A060213(n+1))`
-/

namespace A065503.P8350243731309270896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (A154272 (n + 5) + A060213 (n + 1)).toNat

end

end A065503.P8350243731309270896

namespace A065503

/-- `A061395(A154272(n+5)+A060213(n+1))` -/
def P8350243731309270896.Spec : Prop :=
  ∀ n, P8350243731309270896.a n = A065503 (n + 1)

end A065503

/-! ## A065503.P7726780027686366333

`A061395(A069843(2*(n+1))+A060213(n+1))`
-/

namespace A065503.P7726780027686366333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (A069843 (2 * (n + 1)) + A060213 (n + 1)).toNat

end

end A065503.P7726780027686366333

namespace A065503

/-- `A061395(A069843(2*(n+1))+A060213(n+1))` -/
def P7726780027686366333.Spec : Prop :=
  ∀ n, P7726780027686366333.a n = A065503 (n + 1)

end A065503

/-! ## A065503.P11507418042431609084

`A061395(A349447(2*(n+2))+A060213(n+1))`
-/

namespace A065503.P11507418042431609084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (A349447 (2 * (n + 2)) + A060213 (n + 1)).toNat

end

end A065503.P11507418042431609084

namespace A065503

/-- `A061395(A349447(2*(n+2))+A060213(n+1))` -/
def P11507418042431609084.Spec : Prop :=
  ∀ n, P11507418042431609084.a n = A065503 (n + 1)

end A065503

/-! ## A065503.P13090018828228737945

`A061395(2*A060213(n+1))`
-/

namespace A065503.P13090018828228737945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (2 * A060213 (n + 1)).toNat

end

end A065503.P13090018828228737945

namespace A065503

/-- `A061395(2*A060213(n+1))` -/
def P13090018828228737945.Spec : Prop :=
  ∀ n, P13090018828228737945.a n = A065503 (n + 1)

end A065503

/-!
# A065504: a(n+1) = a(n) + n + the number of a(k)'s <= n, 1 <= k <= n and a(1) = 1.

The programs for A065504, there is no canonical definition to state claims against.
-/

/-! ## A065504.P6309334202878049516

`∑[A143344(n+1)]-n`
-/

namespace A065504.P6309334202878049516
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143344 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ)

end

end A065504.P6309334202878049516

/-! ## A065504.P7497948803501160015

`A294398(n)+1-A028310(n)`
-/

namespace A065504.P7497948803501160015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294398 n + (1 - A028310 n)

end

end A065504.P7497948803501160015

/-! ## A065504.P2891369679149699302

`A022443(n+1)-A184985(n+1)`
-/

namespace A065504.P2891369679149699302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022443 (n + 1) - A184985 (n + 1)

end

end A065504.P2891369679149699302

/-! ## A065504.P10002237372389477406

`A022941(n+2)-(n+1)`
-/

namespace A065504.P10002237372389477406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022941 (n + 2) - (n + 1 : ℤ)

end

end A065504.P10002237372389477406

/-! ## A065504.P12670355016296180176

`∑[A156031(Δ[n²])]-n`
-/

namespace A065504.P12670355016296180176
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156031 ((f2 (n + 1) : ℤ) - (f2 n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ)

end

end A065504.P12670355016296180176

/-! ## A065504.P13230442613818050911

`A156031(2*(n+1))-(n+1)`
-/

namespace A065504.P13230442613818050911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156031 (2 * (n + 1)) - (n + 1 : ℤ)

end

end A065504.P13230442613818050911

/-! ## A065504.P12622728292679598385

`A232748(A022940(n+2))`
-/

namespace A065504.P12622728292679598385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232748 (A022940 (n + 2)).toNat

end

end A065504.P12622728292679598385

/-! ## A065504.P6657258419693842829

`A232748(A022941(n+2))`
-/

namespace A065504.P6657258419693842829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232748 (A022941 (n + 2)).toNat

end

end A065504.P6657258419693842829

/-! ## A065504.P9533247833928019354

`A225850(A156031(2*(n+1)))/2`
-/

namespace A065504.P9533247833928019354
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A225850 (A156031 (2 * (n + 1))).toNat : ℚ) / 2

end

end A065504.P9533247833928019354

/-!
# A065506: Number of (binary) bit strings of length n having an even length block of 0's followed by an odd length block of 1's.

The programs for A065506, the canonical program `A065506.P12524710124335100545` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A065506 has offset 3).

The definition of A065506 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A065506.P12524710124335100545

`2^(n+3)-A065455(n+3)`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A065506

/-- `2^(n+3)-A065455(n+3)` -/
def P12524710124335100545.Spec : Prop :=
  ∀ n, P12524710124335100545.a n = A065506 (n + 3)

theorem P12524710124335100545.correct : P12524710124335100545.Spec := by
  intro n
  simp only [A065506, Nat.add_sub_cancel]

end A065506

/-! ## A065506.P14259301750471683360

`ogf(1/(1-2x-3x^2+5x^3+2x^4))`
-/

namespace A065506.P14259301750471683360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1] [1, -2, -3, 5, 2] n

end

end A065506.P14259301750471683360

namespace A065506

/-- `ogf(1/(1-2x-3x^2+5x^3+2x^4))` -/
def P14259301750471683360.Spec : Prop :=
  ∀ n, P14259301750471683360.a n = A065506 (n + 3)

end A065506

/-! ## A065506.P10518061196449679528

`A052931(n)+2*a(n-1)` with `a(0)=1`
-/

namespace A065506.P10518061196449679528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A052931 n + 2 * a (n - 1)

end

end A065506.P10518061196449679528

namespace A065506

/-- `A052931(n)+2*a(n-1)` -/
def P10518061196449679528.Spec : Prop :=
  ∀ n, P10518061196449679528.a n = A065506 (n + 3)

end A065506

/-! ## A065506.P6413830652600677869

`Δ[A188021(n+1)]+2*a(n-1)` with `a(0)=1`
-/

namespace A065506.P6413830652600677869
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188021 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  f1 (n + 1) - f1 n + 2 * a (n - 1)

end

end A065506.P6413830652600677869

namespace A065506

/-- `Δ[A188021(n+1)]+2*a(n-1)` -/
def P6413830652600677869.Spec : Prop :=
  ∀ n, P6413830652600677869.a n = A065506 (n + 3)

end A065506

/-! ## A065506.P7825640498600346180

`and(-A065455(n+3), A000225(n+3))`
-/

namespace A065506.P7825640498600346180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-A065455 (n + 3)) (A000225 (n + 3))

end

end A065506.P7825640498600346180

namespace A065506

/-- `and(-A065455(n+3), A000225(n+3))` -/
def P7825640498600346180.Spec : Prop :=
  ∀ n, P7825640498600346180.a n = A065506 (n + 3)

end A065506

/-!
# A065507: Smallest prime q such that (p^q+1)/(p+1) is a prime, where p = prime(n).

The programs for A065507, there is no canonical definition to state claims against.
-/

/-! ## A065507.P2238495644488531243

`A084742(p?[xor(1, n)])`
-/

namespace A065507.P2238495644488531243
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084742 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A065507.P2238495644488531243

/-! ## A065507.P11377509861840278629

`A084742(∏{p}[p?[round(8*n/7)]², #])`
-/

namespace A065507.P11377509861840278629
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (8 * ((n : ℚ) / 7))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084742 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, p)

end

end A065507.P11377509861840278629

/-! ## A065507.P12943028037048142231

`A126659(floor(p?[xor(1, n)+1]/2)+1)`
-/

namespace A065507.P12943028037048142231
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126659 (⌊(f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) : ℚ) / 2⌋ + 1).toNat

end

end A065507.P12943028037048142231

/-! ## A065507.P6889265216606763253

`A126659(floor(p?[n%3+n]/2)+1)`
-/

namespace A065507.P6889265216606763253
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n % 3 + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126659 (⌊(f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) : ℚ) / 2⌋ + 1).toNat

end

end A065507.P6889265216606763253

/-! ## A065507.P12392041566403304129

`A084742(∪[p?[2*n+1-(n-1)%7], p?[2*n+1]])`
-/

namespace A065507.P12392041566403304129
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n + 1 : ℤ) - Int.tmod ((n : ℤ) - 1) 7

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f4 (SequenceMachineLib.nth (fun j => (f4 j).Prime) n)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084742 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f3 j = x) n)

end

end A065507.P12392041566403304129

/-!
# A065508: Primes p such that p^2 - p + 1 is prime.

The programs for A065508, there is no canonical definition to state claims against.
-/

/-! ## A065508.P3946745396485592286

`A136240(1+n)+1`
-/

namespace A065508.P3946745396485592286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136240 (1 + n) + 1

end

end A065508.P3946745396485592286

/-! ## A065508.P2895033013272136207

`ceil(sqrt(A074268(n+1)))`
-/

namespace A065508.P2895033013272136207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (A074268 (n + 1) : ℝ)⌉

end

end A065508.P2895033013272136207

/-! ## A065508.P11286718529956632377

`A190275(n+1)/A074268(n+1)`
-/

namespace A065508.P11286718529956632377
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A190275 (n + 1) : ℚ) / (A074268 (n + 1) : ℚ)

end

end A065508.P11286718529956632377

/-! ## A065508.P6050243130598665536

`p?[A259145(n+1)]`
-/

namespace A065508.P6050243130598665536
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259145 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A065508.P6050243130598665536

/-! ## A065508.P16284505070570256453

`p?[ceil(sqrt(A258435(n+1)))]`
-/

namespace A065508.P16284505070570256453
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (A258435 (n + 1) : ℝ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A065508.P16284505070570256453

/-! ## A065508.P11034973561712841794

`∩[A259145(n+1), A373789(n+1)]`
-/

namespace A065508.P11034973561712841794
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259145 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373789 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A065508.P11034973561712841794

/-! ## A065508.P17891150523653903042

`∩[A045331(n+1), A259145(n+1)]`
-/

namespace A065508.P17891150523653903042
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045331 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259145 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A065508.P17891150523653903042

/-! ## A065508.P1500712267009107087

`∩[A259145(n+1), A348283(n+1)]`
-/

namespace A065508.P1500712267009107087
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259145 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348283 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A065508.P1500712267009107087

/-! ## A065508.P6034553053010196412

`∩[A259145(n+1), A380468(n+1)]`
-/

namespace A065508.P6034553053010196412
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259145 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380468 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A065508.P6034553053010196412

/-! ## A065508.P13853025774306192648

`∩[A040116(n+1), A259145(n+1)]`
-/

namespace A065508.P13853025774306192648
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040116 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259145 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A065508.P13853025774306192648

/-! ## A065508.P4183340087498478928

`∩[A009087(n+1), A259145(n+1)]`
-/

namespace A065508.P4183340087498478928
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009087 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259145 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A065508.P4183340087498478928

/-! ## A065508.P3948788415421380973

`∩[A045320(n+1), A259145(n+1)]`
-/

namespace A065508.P3948788415421380973
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045320 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259145 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A065508.P3948788415421380973

/-! ## A065508.P6777260303877295081

`∩[A259145(n+1), A336547(n+1)]`
-/

namespace A065508.P6777260303877295081
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259145 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336547 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A065508.P6777260303877295081

/-! ## A065508.P3858665093916954455

`∩[A106118(n+1), A259145(n+1)]`
-/

namespace A065508.P3858665093916954455
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106118 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259145 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A065508.P3858665093916954455

/-! ## A065508.P941469697466992075

`∩[A045319(n+1), A259145(n+1)]`
-/

namespace A065508.P941469697466992075
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259145 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A065508.P941469697466992075

/-! ## A065508.P7276773803172647003

`∩[A000040(n+1), A259145(n+1)]`
-/

namespace A065508.P7276773803172647003
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259145 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A065508.P7276773803172647003

/-! ## A065508.P10807537835393562522

`∩[A008578(n+1), A259145(n+1)]`
-/

namespace A065508.P10807537835393562522
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259145 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A065508.P10807537835393562522

/-! ## A065508.P9834933583904654085

`∩[A033946(n+1), A259145(n+1)]`
-/

namespace A065508.P9834933583904654085
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033946 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259145 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A065508.P9834933583904654085

/-! ## A065508.P1643777654505134491

`∩[A046022(n+1), A259145(n+1)]`
-/

namespace A065508.P1643777654505134491
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046022 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259145 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A065508.P1643777654505134491

/-! ## A065508.P12024617346618109684

`∩[A051948(n+1), A259145(n+1)]`
-/

namespace A065508.P12024617346618109684
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051948 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259145 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A065508.P12024617346618109684

/-!
# A065509: Primes p such that p^4 + p^3 + p^2 + p + 1 is prime.

The programs for A065509, there is no canonical definition to state claims against.
-/

/-! ## A065509.P15298419957957697397

`floor(sqrt(sqrt(A190527(n+1))))`
-/

namespace A065509.P15298419957957697397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.sqrt (Real.sqrt (A190527 (n + 1) : ℝ))⌋

end

end A065509.P15298419957957697397

/-! ## A065509.P8142106363533598251

`p?[A049409(n+1)]`
-/

namespace A065509.P8142106363533598251
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049409 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A065509.P8142106363533598251

/-! ## A065509.P9584055846485120949

`p?[round(root(A088548(n+1), 4))]`
-/

namespace A065509.P9584055846485120949
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A088548 (n + 1) : ℝ) ^ (1 / (4 : ℝ)))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A065509.P9584055846485120949

/-! ## A065509.P17593177300261638329

`∩[A049409(n+1), A348283(n+1)]`
-/

namespace A065509.P17593177300261638329
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049409 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348283 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A065509.P17593177300261638329

/-! ## A065509.P17571942850236040385

`∩[A042991(n+1), A049409(n+1)]`
-/

namespace A065509.P17571942850236040385
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042991 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049409 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A065509.P17571942850236040385

/-! ## A065509.P17162373021931028365

`∩[A045327(n+1), A049409(n+1)]`
-/

namespace A065509.P17162373021931028365
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045327 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049409 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A065509.P17162373021931028365

/-! ## A065509.P5996872714516678277

`∩[A049409(n+1), A049557(n+1)]`
-/

namespace A065509.P5996872714516678277
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049409 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049557 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A065509.P5996872714516678277

/-! ## A065509.P11205566950237899566

`∩[A040179(n+1), A049409(n+1)]`
-/

namespace A065509.P11205566950237899566
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040179 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049409 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A065509.P11205566950237899566

/-! ## A065509.P15102493009933224311

`∩[A040159(n+1), A049409(n+1)]`
-/

namespace A065509.P15102493009933224311
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040159 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049409 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A065509.P15102493009933224311

/-! ## A065509.P2902585311030288404

`∩[A040161(n+1), A049409(n+1)]`
-/

namespace A065509.P2902585311030288404
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040161 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049409 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A065509.P2902585311030288404

/-! ## A065509.P5178775179260622652

`∩[A040165(n+1), A049409(n+1)]`
-/

namespace A065509.P5178775179260622652
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040165 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049409 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A065509.P5178775179260622652

/-! ## A065509.P13499489355495389139

`∩[A040169(n+1), A049409(n+1)]`
-/

namespace A065509.P13499489355495389139
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040169 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049409 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A065509.P13499489355495389139

/-! ## A065509.P11802520572339956941

`∩[A040171(n+1), A049409(n+1)]`
-/

namespace A065509.P11802520572339956941
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040171 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049409 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A065509.P11802520572339956941

/-! ## A065509.P11766109427159832400

`∩[A040177(n+1), A049409(n+1)]`
-/

namespace A065509.P11766109427159832400
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040177 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049409 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A065509.P11766109427159832400

/-! ## A065509.P9486501079736408475

`∩[A040184(n+1), A049409(n+1)]`
-/

namespace A065509.P9486501079736408475
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040184 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049409 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A065509.P9486501079736408475

/-! ## A065509.P1593357298637371661

`∩[A040970(n+1), A049409(n+1)]`
-/

namespace A065509.P1593357298637371661
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040970 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049409 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A065509.P1593357298637371661

/-! ## A065509.P7315392808347827753

`∩[A040972(n+1), A049409(n+1)]`
-/

namespace A065509.P7315392808347827753
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040972 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049409 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A065509.P7315392808347827753

/-! ## A065509.P11681576116670496777

`∩[A040974(n+1), A049409(n+1)]`
-/

namespace A065509.P11681576116670496777
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040974 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049409 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A065509.P11681576116670496777

/-! ## A065509.P3021330618889846575

`∩[A040978(n+1), A049409(n+1)]`
-/

namespace A065509.P3021330618889846575
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040978 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049409 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A065509.P3021330618889846575

/-! ## A065509.P9598001472252538570

`∩[A040980(n+1), A049409(n+1)]`
-/

namespace A065509.P9598001472252538570
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040980 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049409 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A065509.P9598001472252538570

/-!
# A065510: Primes p such that p^4 - p^3 + p^2 - p + 1 is prime.

The programs for A065510, there is no canonical definition to state claims against.
-/

/-! ## A065510.P6272665435908523313

`p?[A065817(n+1)]`
-/

namespace A065510.P6272665435908523313
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065817 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A065510.P6272665435908523313

/-! ## A065510.P7810416503395406214

`∩[A015919(n+1), A065817(n+1)]`
-/

namespace A065510.P7810416503395406214
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015919 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065817 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A065510.P7810416503395406214

/-! ## A065510.P6550509721098493787

`∩[A065817(n+1), A073485(n+1)]`
-/

namespace A065510.P6550509721098493787
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065817 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073485 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A065510.P6550509721098493787

/-! ## A065510.P7220234975549217685

`∩[A065817(n+1), A066720(n+1)]`
-/

namespace A065510.P7220234975549217685
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065817 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066720 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A065510.P7220234975549217685

/-! ## A065510.P13426114780599449022

`∩[A065817(n+1), A380468(n+1)]`
-/

namespace A065510.P13426114780599449022
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065817 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380468 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A065510.P13426114780599449022

/-! ## A065510.P1986754659903114374

`∩[A065817(n+1), A380525(n+1)]`
-/

namespace A065510.P1986754659903114374
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065817 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380525 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A065510.P1986754659903114374

/-! ## A065510.P4278861831894927655

`p?[A246392(n+1)]`
-/

namespace A065510.P4278861831894927655
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246392 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A065510.P4278861831894927655

/-! ## A065510.P15026718141151719072

`p?[ceil(root(A259257(n+1), 4))]`
-/

namespace A065510.P15026718141151719072
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A259257 (n + 1) : ℝ) ^ (1 / (4 : ℝ))⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A065510.P15026718141151719072

/-! ## A065510.P1165229292892088212

`∩[A042986(n+1), A065817(n+1)]`
-/

namespace A065510.P1165229292892088212
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042986 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065817 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A065510.P1165229292892088212

/-! ## A065510.P17103127476253594786

`∩[A042986(n+1), A246392(n+1)]`
-/

namespace A065510.P17103127476253594786
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042986 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246392 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A065510.P17103127476253594786

/-! ## A065510.P298107731434812035

`∩[A065817(n+1), A339819(n+1)]`
-/

namespace A065510.P298107731434812035
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065817 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339819 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A065510.P298107731434812035

/-! ## A065510.P1506454149391962024

`∩[A000040(n+1), A065817(n+1)]`
-/

namespace A065510.P1506454149391962024
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065817 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A065510.P1506454149391962024

/-! ## A065510.P5547073057087900187

`∩[A008578(n+1), A065817(n+1)]`
-/

namespace A065510.P5547073057087900187
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065817 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A065510.P5547073057087900187

/-! ## A065510.P835580227461615052

`∩[A053813(n+1), A065817(n+1)]`
-/

namespace A065510.P835580227461615052
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053813 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065817 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A065510.P835580227461615052

/-! ## A065510.P12834223285673553576

`∩[A065817(n+1), A116974(n+1)]`
-/

namespace A065510.P12834223285673553576
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065817 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116974 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A065510.P12834223285673553576

/-! ## A065510.P12258412985433090605

`∩[A065817(n+1), A158611(n+1)]`
-/

namespace A065510.P12258412985433090605
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065817 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158611 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A065510.P12258412985433090605

/-! ## A065510.P9818708970044338036

`∩[A000040(n+1), A246392(n+1)]`
-/

namespace A065510.P9818708970044338036
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246392 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A065510.P9818708970044338036

/-! ## A065510.P2044074245780311812

`∩[A065817(n+1), A182986(n+1)]`
-/

namespace A065510.P2044074245780311812
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065817 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182986 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A065510.P2044074245780311812

/-! ## A065510.P10933946253677023395

`∩[A008578(n+1), A246392(n+1)]`
-/

namespace A065510.P10933946253677023395
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246392 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A065510.P10933946253677023395

/-! ## A065510.P12500702509978667292

`∩[A046022(n+1), A246392(n+1)]`
-/

namespace A065510.P12500702509978667292
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046022 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246392 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A065510.P12500702509978667292

/-!
# A065512: Numbers k such that sigma(k) + 1 is prime.

The programs for A065512, the canonical program `A065512.P5672657743991023653` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A065512 has offset 1).

The definition of A065512 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A065512.P7808472910095615073

`eq[1, A066421(n+1)]+1`
-/

namespace A065512.P7808472910095615073
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066421 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A065512.P7808472910095615073

namespace A065512

/-- `eq[1, A066421(n+1)]+1` -/
def P7808472910095615073.Spec : Prop :=
  ∀ n, (P7808472910095615073.a n : ℤ) = A065512 (n + 1)

end A065512

/-! ## A065512.P13995597886090709793

`eq[2, A296092(n+1)]+1`
-/

namespace A065512.P13995597886090709793
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296092 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A065512.P13995597886090709793

namespace A065512

/-- `eq[2, A296092(n+1)]+1` -/
def P13995597886090709793.Spec : Prop :=
  ∀ n, (P13995597886090709793.a n : ℤ) = A065512 (n + 1)

end A065512

/-! ## A065512.P5672657743991023653

`record[(n+1)*A296212(n+1)]`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A065512

/-- `record[(n+1)*A296212(n+1)]` -/
def P5672657743991023653.Spec : Prop :=
  ∀ n, P5672657743991023653.a n = A065512 (n + 1)

theorem P5672657743991023653.correct : P5672657743991023653.Spec := by
  intro n
  simp only [A065512, Nat.add_sub_cancel]

end A065512

/-! ## A065512.P3174775349810235977

`lt[n+1, A336924(n+1)]+1`
-/

namespace A065512.P3174775349810235977
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336924 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A065512.P3174775349810235977

namespace A065512

/-- `lt[n+1, A336924(n+1)]+1` -/
def P3174775349810235977.Spec : Prop :=
  ∀ n, (P3174775349810235977.a n : ℤ) = A065512 (n + 1)

end A065512

/-! ## A065512.P4031982233335506986

`eq[1, A001222(A000203(n+1)+1)]+1`
-/

namespace A065512.P4031982233335506986
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A000203 (n + 1) + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A065512.P4031982233335506986

namespace A065512

/-- `eq[1, A001222(A000203(n+1)+1)]+1` -/
def P4031982233335506986.Spec : Prop :=
  ∀ n, (P4031982233335506986.a n : ℤ) = A065512 (n + 1)

end A065512

/-! ## A065512.P12009742807399147967

`eq[2, A000005(A000203(n+1)+1)]+1`
-/

namespace A065512.P12009742807399147967
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A000203 (n + 1) + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A065512.P12009742807399147967

namespace A065512

/-- `eq[2, A000005(A000203(n+1)+1)]+1` -/
def P12009742807399147967.Spec : Prop :=
  ∀ n, (P12009742807399147967.a n : ℤ) = A065512 (n + 1)

end A065512

/-! ## A065512.P7644860482774526785

`lt[A000203(n+1), A006530(A000203(n+1)+1)]+1`
-/

namespace A065512.P7644860482774526785
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A000203 (n + 1) + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A065512.P7644860482774526785

namespace A065512

/-- `lt[A000203(n+1), A006530(A000203(n+1)+1)]+1` -/
def P7644860482774526785.Spec : Prop :=
  ∀ n, (P7644860482774526785.a n : ℤ) = A065512 (n + 1)

end A065512

/-! ## A065512.P8505342213390877837

`lt[A001222(A155085(n+1)-n), 2]+1`
-/

namespace A065512.P8505342213390877837
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A155085 (n + 1) - (n : ℤ)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A065512.P8505342213390877837

namespace A065512

/-- `lt[A001222(A155085(n+1)-n), 2]+1` -/
def P8505342213390877837.Spec : Prop :=
  ∀ n, (P8505342213390877837.a n : ℤ) = A065512 (n + 1)

end A065512

/-! ## A065512.P17686208922791767857

`eq[1, A072341(n+1)]+1`
-/

namespace A065512.P17686208922791767857
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072341 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A065512.P17686208922791767857

namespace A065512

/-- `eq[1, A072341(n+1)]+1` -/
def P17686208922791767857.Spec : Prop :=
  ∀ n, (P17686208922791767857.a n : ℤ) = A065512 (n + 1)

end A065512

/-! ## A065512.P11239275647511115332

`record[(n+1)/A072918(n+1)]`
-/

namespace A065512.P11239275647511115332
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A072918 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A065512.P11239275647511115332

namespace A065512

/-- `record[(n+1)/A072918(n+1)]` -/
def P11239275647511115332.Spec : Prop :=
  ∀ n, P11239275647511115332.a n = (A065512 (n + 1) : ℚ)

end A065512

/-! ## A065512.P11458709528238114884

`filter[A164514(n+1), A296212(#)]`
-/

namespace A065512.P11458709528238114884
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164514 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A296212 (f1 j).toNat = 1) n)

end

end A065512.P11458709528238114884

namespace A065512

/-- `filter[A164514(n+1), A296212(#)]` -/
def P11458709528238114884.Spec : Prop :=
  ∀ n, P11458709528238114884.a n = A065512 (n + 1)

end A065512

/-! ## A065512.P9879828821076630444

`filter[A183300(n+1), A296212(#)]`
-/

namespace A065512.P9879828821076630444
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183300 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A296212 (f1 j).toNat = 1) n)

end

end A065512.P9879828821076630444

namespace A065512

/-- `filter[A183300(n+1), A296212(#)]` -/
def P9879828821076630444.Spec : Prop :=
  ∀ n, P9879828821076630444.a n = A065512 (n + 1)

end A065512

/-! ## A065512.P14036909461160174467

`filter[A213367(n+1), A296212(#)]`
-/

namespace A065512.P14036909461160174467
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213367 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A296212 (f1 j).toNat = 1) n)

end

end A065512.P14036909461160174467

namespace A065512

/-- `filter[A213367(n+1), A296212(#)]` -/
def P14036909461160174467.Spec : Prop :=
  ∀ n, P14036909461160174467.a n = A065512 (n + 1)

end A065512

/-! ## A065512.P14571971210714026498

`filter[A138591(n+1), A296212(#)]`
-/

namespace A065512.P14571971210714026498
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138591 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A296212 (f1 j).toNat = 1) n)

end

end A065512.P14571971210714026498

namespace A065512

/-- `filter[A138591(n+1), A296212(#)]` -/
def P14571971210714026498.Spec : Prop :=
  ∀ n, P14571971210714026498.a n = A065512 (n + 1)

end A065512

/-! ## A065512.P8100715091544250816

`filter[A163162(n+1), A296212(#)]`
-/

namespace A065512.P8100715091544250816
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163162 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A296212 (f1 j).toNat = 1) n)

end

end A065512.P8100715091544250816

namespace A065512

/-- `filter[A163162(n+1), A296212(#)]` -/
def P8100715091544250816.Spec : Prop :=
  ∀ n, P8100715091544250816.a n = A065512 (n + 1)

end A065512

/-! ## A065512.P15761594729502458128

`eq[1, A001222(∑{d}[n+1, #]+1)]+1`
-/

namespace A065512.P15761594729502458128
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (∑ d ∈ Nat.divisors (f3 n), d + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A065512.P15761594729502458128

namespace A065512

/-- `eq[1, A001222(∑{d}[n+1, #]+1)]+1` -/
def P15761594729502458128.Spec : Prop :=
  ∀ n, (P15761594729502458128.a n : ℤ) = A065512 (n + 1)

end A065512

/-! ## A065512.P3620082877614401300

`filter[A143051(n+1), A296212(#)]`
-/

namespace A065512.P3620082877614401300
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143051 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A296212 (f1 j).toNat = 1) n)

end

end A065512.P3620082877614401300

namespace A065512

/-- `filter[A143051(n+1), A296212(#)]` -/
def P3620082877614401300.Spec : Prop :=
  ∀ n, P3620082877614401300.a n = A065512 (n + 1)

end A065512

/-! ## A065512.P6001998702852022655

`filter[A153152(n+1), A296212(#)]`
-/

namespace A065512.P6001998702852022655
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153152 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A296212 (f1 j).toNat = 1) n)

end

end A065512.P6001998702852022655

namespace A065512

/-- `filter[A153152(n+1), A296212(#)]` -/
def P6001998702852022655.Spec : Prop :=
  ∀ n, P6001998702852022655.a n = A065512 (n + 1)

end A065512

/-! ## A065512.P661295915981314214

`eq[2, A000005(A088580(n+1))]+1`
-/

namespace A065512.P661295915981314214
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A088580 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A065512.P661295915981314214

namespace A065512

/-- `eq[2, A000005(A088580(n+1))]+1` -/
def P661295915981314214.Spec : Prop :=
  ∀ n, (P661295915981314214.a n : ℤ) = A065512 (n + 1)

end A065512

/-! ## A065512.P7339257132695030879

`lt[A001222(A245092(2*n+1)+1), 2]+1`
-/

namespace A065512.P7339257132695030879
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A245092 (2 * n + 1) + 1).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A065512.P7339257132695030879

namespace A065512

/-- `lt[A001222(A245092(2*n+1)+1), 2]+1` -/
def P7339257132695030879.Spec : Prop :=
  ∀ n, (P7339257132695030879.a n : ℤ) = A065512 (n + 1)

end A065512

/-!
# A065513: Number of endofunctions of [n] with a cycle a->b->c->a and for all x in [n], some iterate f^k(x)=a.

The programs for A065513, the canonical program `A065513.P14657863283366386969` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A065513 has offset 3).

The definition of A065513 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A065513.P14657863283366386969

`(n+2)*(n+1)*(n+3)^n`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A065513

/-- `(n+2)*(n+1)*(n+3)^n` -/
def P14657863283366386969.Spec : Prop :=
  ∀ n, (P14657863283366386969.a n : ℤ) = A065513 (n + 3)

theorem P14657863283366386969.correct : P14657863283366386969.Spec := by
  intro n
  simp only [A065513, Nat.add_sub_cancel]

end A065513

/-! ## A065513.P15303595779195624466

`A201685(∑[n+2]+4)`
-/

namespace A065513.P15303595779195624466
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201685 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A065513.P15303595779195624466

namespace A065513

/-- `A201685(∑[n+2]+4)` -/
def P15303595779195624466.Spec : Prop :=
  ∀ n, P15303595779195624466.a n = A065513 (n + 3)

end A065513

/-! ## A065513.P7122023534357271361

`record[2*A098909(n+3)]`
-/

namespace A065513.P7122023534357271361
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A098909 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A065513.P7122023534357271361

namespace A065513

/-- `record[2*A098909(n+3)]` -/
def P7122023534357271361.Spec : Prop :=
  ∀ n, P7122023534357271361.a n = A065513 (n + 3)

end A065513

/-! ## A065513.P14350955347997279938

`A066324(A167614(n+1))/3`
-/

namespace A065513.P14350955347997279938
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A066324 (A167614 (n + 1)).toNat : ℚ) / 3

end

end A065513.P14350955347997279938

namespace A065513

/-- `A066324(A167614(n+1))/3` -/
def P14350955347997279938.Spec : Prop :=
  ∀ n, P14350955347997279938.a n = (A065513 (n + 3) : ℚ)

end A065513

/-! ## A065513.P10078309657202081512

`A055861(n+2)-A089946(n+1)`
-/

namespace A065513.P10078309657202081512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055861 (n + 2) - A089946 (n + 1)

end

end A065513.P10078309657202081512

namespace A065513

/-- `A055861(n+2)-A089946(n+1)` -/
def P10078309657202081512.Spec : Prop :=
  ∀ n, P10078309657202081512.a n = A065513 (n + 3)

end A065513

/-! ## A065513.P6671833443446900383

`A053507(n+3)+A053507(n+3)`
-/

namespace A065513.P6671833443446900383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053507 (n + 3) + A053507 (n + 3)

end

end A065513.P6671833443446900383

namespace A065513

/-- `A053507(n+3)+A053507(n+3)` -/
def P6671833443446900383.Spec : Prop :=
  ∀ n, P6671833443446900383.a n = A065513 (n + 3)

end A065513

/-! ## A065513.P1181432254022593507

`A000169(n+3)-A367255(n+2)`
-/

namespace A065513.P1181432254022593507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000169 (n + 3) - A367255 (n + 2)

end

end A065513.P1181432254022593507

namespace A065513

/-- `A000169(n+3)-A367255(n+2)` -/
def P1181432254022593507.Spec : Prop :=
  ∀ n, P1181432254022593507.a n = A065513 (n + 3)

end A065513

/-! ## A065513.P10111973101563874195

`(n+1)*A053506(n+3)/(n+3)`
-/

namespace A065513.P10111973101563874195
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 1 : ℤ) * A053506 (n + 3) : ℚ) / (n + 3 : ℚ)

end

end A065513.P10111973101563874195

namespace A065513

/-- `(n+1)*A053506(n+3)/(n+3)` -/
def P10111973101563874195.Spec : Prop :=
  ∀ n, P10111973101563874195.a n = (A065513 (n + 3) : ℚ)

end A065513

/-!
# A065514: Largest power of a prime < prime(n).

The programs for A065514, the canonical program `A065514.P8687628977882783365` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A065514 has offset 1).

The definition of A065514 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9891 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A065514.P9269428672992285097

`A377781(n)+a(n-1)` with `a(0)=1`
-/

namespace A065514.P9269428672992285097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A377781 n + a (n - 1)

end

end A065514.P9269428672992285097

namespace A065514

/-- `A377781(n)+a(n-1)` -/
def P9269428672992285097.Spec : Prop :=
  ∀ n, P9269428672992285097.a n = A065514 (n + 1)

end A065514

/-! ## A065514.P13718247194999699836

`∑[A377781(floor(sqrt(n²+1)))]`
-/

namespace A065514.P13718247194999699836
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377781 (Nat.sqrt (n ^ 2 + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A065514.P13718247194999699836

namespace A065514

/-- `∑[A377781(floor(sqrt(n²+1)))]` -/
def P13718247194999699836.Spec : Prop :=
  ∀ n, P13718247194999699836.a n = A065514 (n + 1)

end A065514

/-! ## A065514.P11729223745448778424

`A000040(n+1)-A377289(n+1)`
-/

namespace A065514.P11729223745448778424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) - A377289 (n + 1)

end

end A065514.P11729223745448778424

namespace A065514

/-- `A000040(n+1)-A377289(n+1)` -/
def P11729223745448778424.Spec : Prop :=
  ∀ n, P11729223745448778424.a n = A065514 (n + 1)

theorem P11729223745448778424.correct : P11729223745448778424.Spec := by
  intro n
  simp only [A065514, Nat.add_sub_cancel, A065514.P11729223745448778424.a, A065514.P8687628977882783365.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A000961, A000961.P15008477845107890738.f1, A000961.P15008477845107890738.f2, A000961.P15008477845107890738.a, A027883, A027883.P3043507636580154283.a, A377289, A377289.P15347818859736990215.a, A000079, A000079.P10855139691139572931.a, A024620, A024620.P8536977387799856667.a, A061345, A061345.P12671314331313567408.f1, A061345.P12671314331313567408.a, A065515, A065515.P15129427044826637405.a, A081061, A081061.P11142281922485975947.f1, A081061.P11142281922485975947.a, A374134, A374134.P15663071369572716484.f1, A374134.P15663071369572716484.a, A025528, A025528.P16801658268274976616.f1, A025528.P16801658268274976616.a, A073491, A073491.P6445803315451258056.f1, A073491.P6445803315451258056.f2, A073491.P6445803315451258056.a, A340363, A340363.P15438000431600784952.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A065514

/-! ## A065514.P8177181159696128316

`A008578(n+2)-A377289(n+1)`
-/

namespace A065514.P8177181159696128316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 2) - A377289 (n + 1)

end

end A065514.P8177181159696128316

namespace A065514

/-- `A008578(n+2)-A377289(n+1)` -/
def P8177181159696128316.Spec : Prop :=
  ∀ n, P8177181159696128316.a n = A065514 (n + 1)

end A065514

/-! ## A065514.P8687628977882783365

`A000961(A027883(n+1))`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A065514

/-- `A000961(A027883(n+1))` -/
def P8687628977882783365.Spec : Prop :=
  ∀ n, P8687628977882783365.a n = A065514 (n + 1)

theorem P8687628977882783365.correct : P8687628977882783365.Spec := by
  intro n
  simp only [A065514, Nat.add_sub_cancel]

end A065514

/-! ## A065514.P9509785562510850513

`A000961(A024620(n+1)-1)`
-/

namespace A065514.P9509785562510850513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000961 (A024620 (n + 1) - 1).toNat

end

end A065514.P9509785562510850513

namespace A065514

/-- `A000961(A024620(n+1)-1)` -/
def P9509785562510850513.Spec : Prop :=
  ∀ n, P9509785562510850513.a n = A065514 (n + 1)

end A065514

/-! ## A065514.P1262075848089600160

`A000961(A025528(A000040(n+1)))`
-/

namespace A065514.P1262075848089600160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000961 (A025528 (A000040 (n + 1)).toNat).toNat

end

end A065514.P1262075848089600160

namespace A065514

/-- `A000961(A025528(A000040(n+1)))` -/
def P1262075848089600160.Spec : Prop :=
  ∀ n, P1262075848089600160.a n = A065514 (n + 1)

theorem P1262075848089600160.correct : P1262075848089600160.Spec := by
  intro n
  simp only [A065514, Nat.add_sub_cancel, A065514.P1262075848089600160.a, A065514.P8687628977882783365.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A000961, A000961.P15008477845107890738.f1, A000961.P15008477845107890738.f2, A000961.P15008477845107890738.a, A025528, A025528.P16801658268274976616.f1, A025528.P16801658268274976616.a, A027883, A027883.P3043507636580154283.a, A000079, A000079.P10855139691139572931.a, A001222, A001222.P667907507343207792.f1, A001222.P667907507343207792.a, A002321, A002321.P7713085837087473323.f2, A002321.P7713085837087473323.f1, A002321.P7713085837087473323.a, A024620, A024620.P8536977387799856667.a, A061345, A061345.P12671314331313567408.f1, A061345.P12671314331313567408.a, A065515, A065515.P15129427044826637405.a, A081061, A081061.P11142281922485975947.f1, A081061.P11142281922485975947.a, A374134, A374134.P15663071369572716484.f1, A374134.P15663071369572716484.a, A073491, A073491.P6445803315451258056.f1, A073491.P6445803315451258056.f2, A073491.P6445803315451258056.a, A340363, A340363.P15438000431600784952.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A065514

/-! ## A065514.P11213930368805554372

`A322990(Δ[A007504(n)])`
-/

namespace A065514.P11213930368805554372
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322990 (f1 (n + 1) - f1 n).toNat

end

end A065514.P11213930368805554372

namespace A065514

/-- `A322990(Δ[A007504(n)])` -/
def P11213930368805554372.Spec : Prop :=
  ∀ n, P11213930368805554372.a n = A065514 (n + 1)

end A065514

/-! ## A065514.P12931384713536552026

`A322990(A000040(n+1))`
-/

namespace A065514.P12931384713536552026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322990 (A000040 (n + 1)).toNat

end

end A065514.P12931384713536552026

namespace A065514

/-- `A322990(A000040(n+1))` -/
def P12931384713536552026.Spec : Prop :=
  ∀ n, P12931384713536552026.a n = A065514 (n + 1)

end A065514

/-! ## A065514.P2569658704034357180

`A322990(p?[comp[n²]])`
-/

namespace A065514.P2569658704034357180
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322990 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A065514.P2569658704034357180

namespace A065514

/-- `A322990(p?[comp[n²]])` -/
def P2569658704034357180.Spec : Prop :=
  ∀ n, P2569658704034357180.a n = A065514 (n + 1)

end A065514

/-! ## A065514.P9380993996252397325

`record[∏{p}[n, A136623(#)]]`
-/

namespace A065514.P9380993996252397325
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), A136623 p

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A065514.P9380993996252397325

namespace A065514

/-- `record[∏{p}[n, A136623(#)]]` -/
def P9380993996252397325.Spec : Prop :=
  ∀ n, P9380993996252397325.a n = A065514 (n + 1)

end A065514

/-! ## A065514.P14947349240875225129

`A120636(Δ[A007504(n)])`
-/

namespace A065514.P14947349240875225129
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120636 (f1 (n + 1) - f1 n).toNat

end

end A065514.P14947349240875225129

namespace A065514

/-- `A120636(Δ[A007504(n)])` -/
def P14947349240875225129.Spec : Prop :=
  ∀ n, P14947349240875225129.a n = A065514 (n + 1)

end A065514

/-! ## A065514.P17071904442450313104

`A136623(Δ[A007504(n)])`
-/

namespace A065514.P17071904442450313104
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136623 (f1 (n + 1) - f1 n).toNat

end

end A065514.P17071904442450313104

namespace A065514

/-- `A136623(Δ[A007504(n)])` -/
def P17071904442450313104.Spec : Prop :=
  ∀ n, P17071904442450313104.a n = A065514 (n + 1)

end A065514

/-! ## A065514.P15754903811089164853

`A031218(A006093(n+1))`
-/

namespace A065514.P15754903811089164853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031218 (A006093 (n + 1)).toNat

end

end A065514.P15754903811089164853

namespace A065514

/-- `A031218(A006093(n+1))` -/
def P15754903811089164853.Spec : Prop :=
  ∀ n, P15754903811089164853.a n = A065514 (n + 1)

end A065514

/-! ## A065514.P1401567193141717551

`A120636(A000040(n+1))`
-/

namespace A065514.P1401567193141717551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120636 (A000040 (n + 1)).toNat

end

end A065514.P1401567193141717551

namespace A065514

/-- `A120636(A000040(n+1))` -/
def P1401567193141717551.Spec : Prop :=
  ∀ n, P1401567193141717551.a n = A065514 (n + 1)

end A065514

/-! ## A065514.P17020910653499627499

`A120636(A006005(n+1))`
-/

namespace A065514.P17020910653499627499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120636 (A006005 (n + 1)).toNat

end

end A065514.P17020910653499627499

namespace A065514

/-- `A120636(A006005(n+1))` -/
def P17020910653499627499.Spec : Prop :=
  ∀ n, P17020910653499627499.a n = A065514 (n + 1)

end A065514

/-! ## A065514.P11289154476166994517

`A120636(A008578(n+2))`
-/

namespace A065514.P11289154476166994517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120636 (A008578 (n + 2)).toNat

end

end A065514.P11289154476166994517

namespace A065514

/-- `A120636(A008578(n+2))` -/
def P11289154476166994517.Spec : Prop :=
  ∀ n, P11289154476166994517.a n = A065514 (n + 1)

end A065514

/-! ## A065514.P3083938943246786099

`A120636(A075643(n+2))`
-/

namespace A065514.P3083938943246786099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120636 (A075643 (n + 2)).toNat

end

end A065514.P3083938943246786099

namespace A065514

/-- `A120636(A075643(n+2))` -/
def P3083938943246786099.Spec : Prop :=
  ∀ n, P3083938943246786099.a n = A065514 (n + 1)

end A065514

/-! ## A065514.P2058148578434249095

`A120636(A182986(n+2))`
-/

namespace A065514.P2058148578434249095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120636 (A182986 (n + 2)).toNat

end

end A065514.P2058148578434249095

namespace A065514

/-- `A120636(A182986(n+2))` -/
def P2058148578434249095.Spec : Prop :=
  ∀ n, P2058148578434249095.a n = A065514 (n + 1)

end A065514

/-! ## A065514.P15366124599338718492

`A031218(A000040(n+1)-1)`
-/

namespace A065514.P15366124599338718492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031218 (A000040 (n + 1) - 1).toNat

end

end A065514.P15366124599338718492

namespace A065514

/-- `A031218(A000040(n+1)-1)` -/
def P15366124599338718492.Spec : Prop :=
  ∀ n, P15366124599338718492.a n = A065514 (n + 1)

end A065514

/-!
# A065515: Number of prime powers <= n.

The programs for A065515, the canonical program `A065515.P15129427044826637405` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A065515 has offset 1).

The definition of A065515 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A025528, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A065515.P15129427044826637405

`A025528(n+1)+1`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A065515

/-- `A025528(n+1)+1` -/
def P15129427044826637405.Spec : Prop :=
  ∀ n, P15129427044826637405.a n = A065515 (n + 1)

theorem P15129427044826637405.correct : P15129427044826637405.Spec := by
  intro n
  simp only [A065515, Nat.add_sub_cancel]

end A065515

/-! ## A065515.P15071167607153706717

`∑[round(n/∏{e}[n+1, #+n])]+1`
-/

namespace A065515.P15071167607153706717
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((n : ℚ) / ((∏ p ∈ Nat.primeFactors (f2 n), (Nat.factorization (f2 n) p + n) : ℕ) : ℚ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A065515.P15071167607153706717

namespace A065515

/-- `∑[round(n/∏{e}[n+1, #+n])]+1` -/
def P15071167607153706717.Spec : Prop :=
  ∀ n, P15071167607153706717.a n = A065515 (n + 1)

end A065515

/-! ## A065515.P2094046938499232739

`∑[C(n+1-∑{p}[n+1, gcd(n, #)], n)]`
-/

namespace A065515.P2094046938499232739
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose ((n + 1 : ℤ) - ((∑ p ∈ Nat.primeFactors (f2 n), Nat.gcd n p : ℕ) : ℤ)).toNat n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A065515.P2094046938499232739

namespace A065515

/-- `∑[C(n+1-∑{p}[n+1, gcd(n, #)], n)]` -/
def P2094046938499232739.Spec : Prop :=
  ∀ n, (P2094046938499232739.a n : ℤ) = A065515 (n + 1)

end A065515

/-! ## A065515.P10945310732533081577

`∑[(∑{e}[1+n, #]!%2)^(∑{e}[n+1, #]!/∏{e}[n+1, #!]-1)]`
-/

namespace A065515.P10945310732533081577
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1 + n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((Nat.factorial (∑ p ∈ Nat.primeFactors (f2 n), Nat.factorization (f2 n) p) % 2 : ℕ) : ℝ) ^ ((Nat.factorial (∑ p ∈ Nat.primeFactors (f3 n), Nat.factorization (f3 n) p) : ℚ) / ((∏ p ∈ Nat.primeFactors (f4 n), Nat.factorial (Nat.factorization (f4 n) p) : ℕ) : ℚ) - 1 : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A065515.P10945310732533081577

namespace A065515

/-- `∑[(∑{e}[1+n, #]!%2)^(∑{e}[n+1, #]!/∏{e}[n+1, #!]-1)]` -/
def P10945310732533081577.Spec : Prop :=
  ∀ n, P10945310732533081577.a n = (A065515 (n + 1) : ℝ)

end A065515

/-! ## A065515.P3498175087096574810

`∑[A010055(1+n)]`
-/

namespace A065515.P3498175087096574810
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010055 (1 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A065515.P3498175087096574810

namespace A065515

/-- `∑[A010055(1+n)]` -/
def P3498175087096574810.Spec : Prop :=
  ∀ n, P3498175087096574810.a n = A065515 (n + 1)

end A065515

/-! ## A065515.P8403824394433101046

`∑[char[A181062(n+1)]]`
-/

namespace A065515.P8403824394433101046
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181062 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A065515.P8403824394433101046

namespace A065515

/-- `∑[char[A181062(n+1)]]` -/
def P8403824394433101046.Spec : Prop :=
  ∀ n, (P8403824394433101046.a n : ℤ) = A065515 (n + 1)

end A065515

/-! ## A065515.P11340344587169356991

`∑[A069513(n+1)]+1`
-/

namespace A065515.P11340344587169356991
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069513 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A065515.P11340344587169356991

namespace A065515

/-- `∑[A069513(n+1)]+1` -/
def P11340344587169356991.Spec : Prop :=
  ∀ n, P11340344587169356991.a n = A065515 (n + 1)

end A065515

/-! ## A065515.P11769810341078203197

`∑[1-A143731(n+1)]`
-/

namespace A065515.P11769810341078203197
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A143731 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A065515.P11769810341078203197

namespace A065515

/-- `∑[1-A143731(n+1)]` -/
def P11769810341078203197.Spec : Prop :=
  ∀ n, P11769810341078203197.a n = A065515 (n + 1)

end A065515

/-! ## A065515.P6750783674529685979

`∑[A354924(2*(n+1))]`
-/

namespace A065515.P6750783674529685979
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354924 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A065515.P6750783674529685979

namespace A065515

/-- `∑[A354924(2*(n+1))]` -/
def P6750783674529685979.Spec : Prop :=
  ∀ n, P6750783674529685979.a n = A065515 (n + 1)

end A065515

/-! ## A065515.P10920353174593806213

`∑[and(1, A007875(n+1))]`
-/

namespace A065515.P10920353174593806213
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A007875 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A065515.P10920353174593806213

namespace A065515

/-- `∑[and(1, A007875(n+1))]` -/
def P10920353174593806213.Spec : Prop :=
  ∀ n, P10920353174593806213.a n = A065515 (n + 1)

end A065515

/-! ## A065515.P293603306922065971

`1-A085970(n+1)+n`
-/

namespace A065515.P293603306922065971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A085970 (n + 1) + (n : ℤ)

end

end A065515.P293603306922065971

namespace A065515

/-- `1-A085970(n+1)+n` -/
def P293603306922065971.Spec : Prop :=
  ∀ n, P293603306922065971.a n = A065515 (n + 1)

end A065515

/-! ## A065515.P9448597970781778887

`2-A356068(n+1)+n`
-/

namespace A065515.P9448597970781778887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A356068 (n + 1) + (n : ℤ)

end

end A065515.P9448597970781778887

namespace A065515

/-- `2-A356068(n+1)+n` -/
def P9448597970781778887.Spec : Prop :=
  ∀ n, P9448597970781778887.a n = A065515 (n + 1)

end A065515

/-! ## A065515.P1410883632411033147

`∑[1-A079872(n+1)²]`
-/

namespace A065515.P1410883632411033147
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A079872 (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A065515.P1410883632411033147

namespace A065515

/-- `∑[1-A079872(n+1)²]` -/
def P1410883632411033147.Spec : Prop :=
  ∀ n, P1410883632411033147.a n = A065515 (n + 1)

end A065515

/-! ## A065515.P18008331839921496666

`∑[floor(1/A303759(n+1))]`
-/

namespace A065515.P18008331839921496666
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊1 / (A303759 (n + 1) : ℚ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A065515.P18008331839921496666

namespace A065515

/-- `∑[floor(1/A303759(n+1))]` -/
def P18008331839921496666.Spec : Prop :=
  ∀ n, P18008331839921496666.a n = A065515 (n + 1)

end A065515

/-! ## A065515.P14926260805239094697

`∑[round(1/A080214(n+1))]`
-/

namespace A065515.P14926260805239094697
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (1 / (A080214 (n + 1) : ℚ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A065515.P14926260805239094697

namespace A065515

/-- `∑[round(1/A080214(n+1))]` -/
def P14926260805239094697.Spec : Prop :=
  ∀ n, P14926260805239094697.a n = A065515 (n + 1)

end A065515

/-! ## A065515.P10073657494436642267

`∑[A001221(n+1)!%2]`
-/

namespace A065515.P10073657494436642267
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A001221 (n + 1)).toNat % 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A065515.P10073657494436642267

namespace A065515

/-- `∑[A001221(n+1)!%2]` -/
def P10073657494436642267.Spec : Prop :=
  ∀ n, (P10073657494436642267.a n : ℤ) = A065515 (n + 1)

end A065515

/-! ## A065515.P12009550126741143351

`∑[char[A000961(n+1)-1]]`
-/

namespace A065515.P12009550126741143351
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000961 (n + 1) - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A065515.P12009550126741143351

namespace A065515

/-- `∑[char[A000961(n+1)-1]]` -/
def P12009550126741143351.Spec : Prop :=
  ∀ n, (P12009550126741143351.a n : ℤ) = A065515 (n + 1)

end A065515

/-! ## A065515.P9596577086943506799

`∑[1-char[A080765(n+1)]]`
-/

namespace A065515.P9596577086943506799
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080765 (n + 1)

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ((if ∃ j, f2 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A065515.P9596577086943506799

namespace A065515

/-- `∑[1-char[A080765(n+1)]]` -/
def P9596577086943506799.Spec : Prop :=
  ∀ n, P9596577086943506799.a n = A065515 (n + 1)

end A065515

/-!
# A065516: Differences between products of 2 primes.

The programs for A065516, the canonical program `A065516.P1921636422831940081` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A065516 has offset 1).

The definition of A065516 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001358, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A065516.P1921636422831940081

`A001358(n+2)-A001358(n+1)`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A065516

/-- `A001358(n+2)-A001358(n+1)` -/
def P1921636422831940081.Spec : Prop :=
  ∀ n, P1921636422831940081.a n = A065516 (n + 1)

theorem P1921636422831940081.correct : P1921636422831940081.Spec := by
  intro n
  simp only [A065516, Nat.add_sub_cancel]

end A065516

/-! ## A065516.P8322804201834660884

`Δ[A001358(1+n)]`
-/

namespace A065516.P8322804201834660884
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001358 (1 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A065516.P8322804201834660884

namespace A065516

/-- `Δ[A001358(1+n)]` -/
def P8322804201834660884.Spec : Prop :=
  ∀ n, P8322804201834660884.a n = A065516 (n + 1)

theorem P8322804201834660884.correct : P8322804201834660884.Spec := by
  intro n
  simp only [A065516, Nat.add_sub_cancel, A065516.P8322804201834660884.f1, A065516.P8322804201834660884.a, A065516.P1921636422831940081.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A065516

/-! ## A065516.P2561105417219839141

`Δ[eq[2, A001222(n+1)]]`
-/

namespace A065516.P2561105417219839141
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A065516.P2561105417219839141

namespace A065516

/-- `Δ[eq[2, A001222(n+1)]]` -/
def P2561105417219839141.Spec : Prop :=
  ∀ n, P2561105417219839141.a n = A065516 (n + 1)

end A065516

/-! ## A065516.P1017573304344844949

`A113784(n)-a(n-1)` with `a(0)=2`
-/

namespace A065516.P1017573304344844949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A113784 n - a (n - 1)

end

end A065516.P1017573304344844949

namespace A065516

/-- `A113784(n)-a(n-1)` -/
def P1017573304344844949.Spec : Prop :=
  ∀ n, P1017573304344844949.a n = A065516 (n + 1)

end A065516

/-! ## A065516.P3216048589244765220

`Δ[A118717(n)-a(n-1)]` with `a(0)=4`
-/

namespace A065516.P3216048589244765220
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [4] fun n f1 =>
  A118717 n - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A065516.P3216048589244765220

namespace A065516

/-- `Δ[A118717(n)-a(n-1)]` -/
def P3216048589244765220.Spec : Prop :=
  ∀ n, P3216048589244765220.a n = A065516 (n + 1)

end A065516

/-! ## A065516.P2776885992935690342

`abs(Δ[-A001358(ϕ²-(ϕ-n))])`
-/

namespace A065516.P2776885992935690342
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A001358 (SequenceMachineLib.roundAway (Real.goldenRatio ^ 2 - (Real.goldenRatio - (n : ℝ)))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A065516.P2776885992935690342

namespace A065516

/-- `abs(Δ[-A001358(ϕ²-(ϕ-n))])` -/
def P2776885992935690342.Spec : Prop :=
  ∀ n, P2776885992935690342.a n = A065516 (n + 1)

end A065516

/-! ## A065516.P11090769124080702651

`Δ[eq[0, 2-A001222(2*n-(n-1))]]`
-/

namespace A065516.P11090769124080702651
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A001222 ((2 * n : ℤ) - ((n : ℤ) - 1)).toNat

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A065516.P11090769124080702651

namespace A065516

/-- `Δ[eq[0, 2-A001222(2*n-(n-1))]]` -/
def P11090769124080702651.Spec : Prop :=
  ∀ n, P11090769124080702651.a n = A065516 (n + 1)

end A065516

/-! ## A065516.P7619791801989032358

`Δ[record[n/a(A001222(n))]-(n+1)]+1` with `a(0)=4, a(1)=2`
-/

namespace A065516.P7619791801989032358
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.rec [4, 2] fun n f2 =>
  (n : ℚ) / f2 (A001222 n).toNat

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n) - (n + 1 : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + 1

end

end A065516.P7619791801989032358

namespace A065516

/-- `Δ[record[n/a(A001222(n))]-(n+1)]+1` -/
def P7619791801989032358.Spec : Prop :=
  ∀ n, P7619791801989032358.a n = (A065516 (n + 1) : ℚ)

end A065516

/-! ## A065516.P17869020211345399573

`Δ[∪[A099980(n), A099981(n)]]`
-/

namespace A065516.P17869020211345399573
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099980 n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099981 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = (x : ℤ)) ∨ ∃ j, f3 j = (x : ℤ)) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A065516.P17869020211345399573

namespace A065516

/-- `Δ[∪[A099980(n), A099981(n)]]` -/
def P17869020211345399573.Spec : Prop :=
  ∀ n, P17869020211345399573.a n = A065516 (n + 1)

end A065516

/-! ## A065516.P6452722299729979184

`Δ[∪[A006881(n+1), A033476(n)]]`
-/

namespace A065516.P6452722299729979184
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006881 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033476 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = (x : ℤ)) ∨ ∃ j, f3 j = (x : ℤ)) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A065516.P6452722299729979184

namespace A065516

/-- `Δ[∪[A006881(n+1), A033476(n)]]` -/
def P6452722299729979184.Spec : Prop :=
  ∀ n, P6452722299729979184.a n = A065516 (n + 1)

end A065516

/-! ## A065516.P2210131524456435575

`A118717(n+1)-A075818(n+1)`
-/

namespace A065516.P2210131524456435575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118717 (n + 1) - A075818 (n + 1)

end

end A065516.P2210131524456435575

namespace A065516

/-- `A118717(n+1)-A075818(n+1)` -/
def P2210131524456435575.Spec : Prop :=
  ∀ n, P2210131524456435575.a n = A065516 (n + 1)

theorem P2210131524456435575.correct : P2210131524456435575.Spec := by
  intro n
  simp only [A065516, Nat.add_sub_cancel, A065516.P2210131524456435575.a, A065516.P1921636422831940081.a, A001358, A001358.P632087320844056370.a, A075818, A075818.P6886237212657486754.a, A118717, A118717.P5086267492730795154.a, A088707, A088707.P7291141647877559993.a, A100493, A100493.P3342029395979233194.f1, A100493.P3342029395979233194.a, A072000, A072000.P3706059858088101648.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A065516

/-! ## A065516.P13279781389366499518

`A118717(n+1)%A001358(n+1)`
-/

namespace A065516.P13279781389366499518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A118717 (n + 1)) (A001358 (n + 1))

end

end A065516.P13279781389366499518

namespace A065516

/-- `A118717(n+1)%A001358(n+1)` -/
def P13279781389366499518.Spec : Prop :=
  ∀ n, P13279781389366499518.a n = A065516 (n + 1)

end A065516

/-! ## A065516.P4529986483998995068

`A001358(A000027(n+2))%A001358(n+1)`
-/

namespace A065516.P4529986483998995068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001358 (A000027 (n + 2)).toNat) (A001358 (n + 1))

end

end A065516.P4529986483998995068

namespace A065516

/-- `A001358(A000027(n+2))%A001358(n+1)` -/
def P4529986483998995068.Spec : Prop :=
  ∀ n, P4529986483998995068.a n = A065516 (n + 1)

end A065516

/-! ## A065516.P16794545399937085463

`Δ[A088707(1+n)]`
-/

namespace A065516.P16794545399937085463
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088707 (1 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A065516.P16794545399937085463

namespace A065516

/-- `Δ[A088707(1+n)]` -/
def P16794545399937085463.Spec : Prop :=
  ∀ n, P16794545399937085463.a n = A065516 (n + 1)

end A065516

/-! ## A065516.P12579906566935337887

`Δ[A186621(1+n)]`
-/

namespace A065516.P12579906566935337887
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186621 (1 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A065516.P12579906566935337887

namespace A065516

/-- `Δ[A186621(1+n)]` -/
def P12579906566935337887.Spec : Prop :=
  ∀ n, P12579906566935337887.a n = A065516 (n + 1)

end A065516

/-! ## A065516.P15279547626265902190

`Δ[sqrt(A074985(n+1))]`
-/

namespace A065516.P15279547626265902190
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A074985 (n + 1) : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A065516.P15279547626265902190

namespace A065516

/-- `Δ[sqrt(A074985(n+1))]` -/
def P15279547626265902190.Spec : Prop :=
  ∀ n, P15279547626265902190.a n = (A065516 (n + 1) : ℝ)

end A065516

/-! ## A065516.P9774395740247689352

`Δ[A175708(n+1)]+1`
-/

namespace A065516.P9774395740247689352
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175708 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + 1

end

end A065516.P9774395740247689352

namespace A065516

/-- `Δ[A175708(n+1)]+1` -/
def P9774395740247689352.Spec : Prop :=
  ∀ n, P9774395740247689352.a n = A065516 (n + 1)

theorem P9774395740247689352.correct : P9774395740247689352.Spec := by
  intro n
  simp only [A065516, Nat.add_sub_cancel, A065516.P9774395740247689352.f1, A065516.P9774395740247689352.a, A065516.P1921636422831940081.a, A001358, A001358.P632087320844056370.a, A175708, A175708.P9200072279870982.a, A000027, A000027.P10331202704469894836.a, A088707, A088707.P7291141647877559993.a, A100493, A100493.P3342029395979233194.f1, A100493.P3342029395979233194.a, A072000, A072000.P3706059858088101648.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A065516

/-! ## A065516.P9617072716168917997

`Δ[A100493(n+1)]-1`
-/

namespace A065516.P9617072716168917997
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100493 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - 1

end

end A065516.P9617072716168917997

namespace A065516

/-- `Δ[A100493(n+1)]-1` -/
def P9617072716168917997.Spec : Prop :=
  ∀ n, P9617072716168917997.a n = A065516 (n + 1)

theorem P9617072716168917997.correct : P9617072716168917997.Spec := by
  intro n
  simp only [A065516, Nat.add_sub_cancel, A065516.P9617072716168917997.f1, A065516.P9617072716168917997.a, A065516.P1921636422831940081.a, A001358, A001358.P632087320844056370.a, A100493, A100493.P3342029395979233194.f1, A100493.P3342029395979233194.a, A072000, A072000.P3706059858088101648.a, A088707, A088707.P7291141647877559993.a, A056811, A056811.P3378557342044572151.a, A072613, A072613.P13158909735510187267.f1, A072613.P13158909735510187267.a, A000196, A000196.P15434771586934192083.a, A000720, A000720.P1755771944745605250.f2, A000720.P1755771944745605250.f1, A000720.P1755771944745605250.a, A230595, A230595.P9035268919760195541.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A065516

/-! ## A065516.P1910554090146275598

`Δ[A075818(n+1)/2]`
-/

namespace A065516.P1910554090146275598
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A075818 (n + 1) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A065516.P1910554090146275598

namespace A065516

/-- `Δ[A075818(n+1)/2]` -/
def P1910554090146275598.Spec : Prop :=
  ∀ n, P1910554090146275598.a n = (A065516 (n + 1) : ℚ)

theorem P1910554090146275598.correct : P1910554090146275598.Spec := by
  intro n
  simp only [A065516, Nat.add_sub_cancel, A065516.P1910554090146275598.f1, A065516.P1910554090146275598.a, A065516.P1921636422831940081.a, A001358, A001358.P632087320844056370.a, A075818, A075818.P6886237212657486754.a, A088707, A088707.P7291141647877559993.a, A100493, A100493.P3342029395979233194.f1, A100493.P3342029395979233194.a, A072000, A072000.P3706059858088101648.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A065516

/-! ## A065516.P8665611001599324795

`A001281(Δ[A075818(n+1)])`
-/

namespace A065516.P8665611001599324795
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (f1 (n + 1) - f1 n).toNat

end

end A065516.P8665611001599324795

namespace A065516

/-- `A001281(Δ[A075818(n+1)])` -/
def P8665611001599324795.Spec : Prop :=
  ∀ n, P8665611001599324795.a n = A065516 (n + 1)

end A065516

/-! ## A065516.P4042595980083516254

`Δ[eq[2, ∑{e}[n+1, #]]]`
-/

namespace A065516.P4042595980083516254
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f4 n), Nat.factorization (f4 n) p

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j = f3 j) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A065516.P4042595980083516254

namespace A065516

/-- `Δ[eq[2, ∑{e}[n+1, #]]]` -/
def P4042595980083516254.Spec : Prop :=
  ∀ n, P4042595980083516254.a n = A065516 (n + 1)

end A065516

/-!
# A065517: Numerator of n/(sum of the digits of n).

The programs for A065517, the canonical program `A065517.P5073572171385677951` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A065517 has offset 1).

The definition of A065517 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A065517.P5073572171385677951

`(n+1)/gcd(n+1, ∑{digits}[n+1, #])`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A065517

/-- `(n+1)/gcd(n+1, ∑{digits}[n+1, #])` -/
def P5073572171385677951.Spec : Prop :=
  ∀ n, P5073572171385677951.a n = (A065517 (n + 1) : ℚ)

end A065517

/-! ## A065517.P11504984278974409342

`(n+1)/A066750(n+1)`
-/

namespace A065517.P11504984278974409342
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A066750 (n + 1) : ℚ)

end

end A065517.P11504984278974409342

namespace A065517

/-- `(n+1)/A066750(n+1)` -/
def P11504984278974409342.Spec : Prop :=
  ∀ n, P11504984278974409342.a n = (A065517 (n + 1) : ℚ)

end A065517

/-! ## A065517.P8756307162234285702

`(n+1)/gcd(n+1, A007953(n+1))`
-/

namespace A065517.P8756307162234285702
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (Int.gcd (n + 1 : ℤ) (A007953 (n + 1)) : ℚ)

end

end A065517.P8756307162234285702

namespace A065517

/-- `(n+1)/gcd(n+1, A007953(n+1))` -/
def P8756307162234285702.Spec : Prop :=
  ∀ n, P8756307162234285702.a n = (A065517 (n + 1) : ℚ)

end A065517

/-! ## A065517.P15364465403330860690

`A099469(n+1)/A007953(n+1)`
-/

namespace A065517.P15364465403330860690
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A099469 (n + 1) : ℚ) / (A007953 (n + 1) : ℚ)

end

end A065517.P15364465403330860690

namespace A065517

/-- `A099469(n+1)/A007953(n+1)` -/
def P15364465403330860690.Spec : Prop :=
  ∀ n, P15364465403330860690.a n = (A065517 (n + 1) : ℚ)

end A065517

/-! ## A065517.P15064516108673875316

`(n+1)*A065518(n+1)/A007953(n+1)`
-/

namespace A065517.P15064516108673875316
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 1 : ℤ) * A065518 (n + 1) : ℚ) / (A007953 (n + 1) : ℚ)

end

end A065517.P15064516108673875316

namespace A065517

/-- `(n+1)*A065518(n+1)/A007953(n+1)` -/
def P15064516108673875316.Spec : Prop :=
  ∀ n, P15064516108673875316.a n = (A065517 (n + 1) : ℚ)

end A065517

/-! ## A065517.P14958503599535767104

`lcm(A000027(n+1), A007953(n+1))/A007953(n+1)`
-/

namespace A065517.P14958503599535767104
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm (A000027 (n + 1)) (A007953 (n + 1)) : ℚ) / (A007953 (n + 1) : ℚ)

end

end A065517.P14958503599535767104

namespace A065517

/-- `lcm(A000027(n+1), A007953(n+1))/A007953(n+1)` -/
def P14958503599535767104.Spec : Prop :=
  ∀ n, P14958503599535767104.a n = (A065517 (n + 1) : ℚ)

end A065517

/-! ## A065517.P3071774297571580406

`A054531(A007953(n+1)+∑[n])`
-/

namespace A065517.P3071774297571580406
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054531 (A007953 (n + 1) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)).toNat

end

end A065517.P3071774297571580406

namespace A065517

/-- `A054531(A007953(n+1)+∑[n])` -/
def P3071774297571580406.Spec : Prop :=
  ∀ n, P3071774297571580406.a n = A065517 (n + 1)

end A065517

/-!
# A065518: Denominator of n/(sum of the digits of n).

The programs for A065518, the canonical program `A065518.P8717308048095452008` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A065518 has offset 1).

The definition of A065518 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A065518.P8717308048095452008

`lcm(n+1, ∑{digits}[n+1, #])/(n+1)`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A065518

/-- `lcm(n+1, ∑{digits}[n+1, #])/(n+1)` -/
def P8717308048095452008.Spec : Prop :=
  ∀ n, P8717308048095452008.a n = (A065518 (n + 1) : ℚ)

end A065518

/-! ## A065518.P11579853382050511296

`A099469(n+1)/(n+1)`
-/

namespace A065518.P11579853382050511296
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A099469 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A065518.P11579853382050511296

namespace A065518

/-- `A099469(n+1)/(n+1)` -/
def P11579853382050511296.Spec : Prop :=
  ∀ n, P11579853382050511296.a n = (A065518 (n + 1) : ℚ)

end A065518

/-! ## A065518.P14639473713666608882

`A007953(n+1)/A066750(n+1)`
-/

namespace A065518.P14639473713666608882
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007953 (n + 1) : ℚ) / (A066750 (n + 1) : ℚ)

end

end A065518.P14639473713666608882

namespace A065518

/-- `A007953(n+1)/A066750(n+1)` -/
def P14639473713666608882.Spec : Prop :=
  ∀ n, P14639473713666608882.a n = (A065518 (n + 1) : ℚ)

end A065518

/-! ## A065518.P781382005010127297

`A007953(n+1)/gcd(A000027(n+1), A007953(n+1))`
-/

namespace A065518.P781382005010127297
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007953 (n + 1) : ℚ) / (Int.gcd (A000027 (n + 1)) (A007953 (n + 1)) : ℚ)

end

end A065518.P781382005010127297

namespace A065518

/-- `A007953(n+1)/gcd(A000027(n+1), A007953(n+1))` -/
def P781382005010127297.Spec : Prop :=
  ∀ n, P781382005010127297.a n = (A065518 (n + 1) : ℚ)

end A065518

/-! ## A065518.P16317834430280712892

`lcm(A007953(n+1), A136613(n+1))/A136613(n+1)`
-/

namespace A065518.P16317834430280712892
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm (A007953 (n + 1)) (A136613 (n + 1)) : ℚ) / (A136613 (n + 1) : ℚ)

end

end A065518.P16317834430280712892

namespace A065518

/-- `lcm(A007953(n+1), A136613(n+1))/A136613(n+1)` -/
def P16317834430280712892.Spec : Prop :=
  ∀ n, P16317834430280712892.a n = (A065518 (n + 1) : ℚ)

end A065518

/-! ## A065518.P17981190185931241462

`A062329(10*(n+1))/A066750(n+1)`
-/

namespace A065518.P17981190185931241462
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A062329 (10 * (n + 1)) : ℚ) / (A066750 (n + 1) : ℚ)

end

end A065518.P17981190185931241462

namespace A065518

/-- `A062329(10*(n+1))/A066750(n+1)` -/
def P17981190185931241462.Spec : Prop :=
  ∀ n, P17981190185931241462.a n = (A065518 (n + 1) : ℚ)

end A065518

/-!
# A065519: a(n) = A064413(n)-n.

The programs for A065519, there is no canonical definition to state claims against.
-/

/-! ## A065519.P6206745560328707785

`A064413(n+1)-(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A065519.P6206745560328707785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064413 (n + 1) - (n + 1 : ℤ)

end

end A065519.P6206745560328707785

/-! ## A065519.P5072451361509534571

`Δ[A065057(n)]-(n+1)`
-/

namespace A065519.P5072451361509534571
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065057 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - (n + 1 : ℤ)

end

end A065519.P5072451361509534571

/-! ## A065519.P7692836288006207273

`sqrt(A104125(1+n))-(n+1)`
-/

namespace A065519.P7692836288006207273
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A104125 (1 + n) : ℝ) - (n + 1 : ℝ)

end

end A065519.P7692836288006207273

/-! ## A065519.P5970363100215275707

`A064413(-xor(n, -1))-1-n`
-/

namespace A065519.P5970363100215275707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064413 (-Int.xor (n : ℤ) (-1)).toNat - 1 - (n : ℤ)

end

end A065519.P5970363100215275707

/-! ## A065519.P6690118040128448142

`A064426(n)+a(n-1)-1` with `a(0)=0, a(1)=0`
-/

namespace A065519.P6690118040128448142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0] fun n a =>
  A064426 n + a (n - 1) - 1

end

end A065519.P6690118040128448142

/-! ## A065519.P7090350754643350430

`∑[A064426(A028310(n))-1]`
-/

namespace A065519.P7090350754643350430
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064426 (A028310 n).toNat - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A065519.P7090350754643350430

/-! ## A065519.P9272303762026500617

`∑[A064426(A000007(n)+n)]-(n+1)`
-/

namespace A065519.P9272303762026500617
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064426 (A000007 n + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (n + 1 : ℤ)

end

end A065519.P9272303762026500617

/-! ## A065519.P4439691085459968132

`∑[A064426(n+1)]-(A064426(n+1)+n)`
-/

namespace A065519.P4439691085459968132
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064426 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (A064426 (n + 1) + (n : ℤ))

end

end A065519.P4439691085459968132

/-! ## A065519.P3206326952932002759

`A023443(Δ[A065057(n)])-n`
-/

namespace A065519.P3206326952932002759
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065057 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (f1 (n + 1) - f1 n).toNat - (n : ℤ)

end

end A065519.P3206326952932002759

/-! ## A065519.P14177043229622003226

`A023443(A064413(n+1))-n`
-/

namespace A065519.P14177043229622003226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A064413 (n + 1)).toNat - (n : ℤ)

end

end A065519.P14177043229622003226

/-! ## A065519.P15097480967585176662

`A185586(A185413(n+1))-(n+1)`
-/

namespace A065519.P15097480967585176662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185586 (A185413 (n + 1)).toNat - (n + 1 : ℤ)

end

end A065519.P15097480967585176662

/-!
# A065520: Numbers n with the property that if m is formed from n by dropping any number (possibly zero) of initial or final digits then there is a prime ending with m.

The programs for A065520, there is no canonical definition to state claims against.
-/

/-! ## A065520.P14638427417430685320

`record[A106647(n)%A106623(A106621(n))]`
-/

namespace A065520.P14638427417430685320
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A106647 n) (A106623 (A106621 n).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A065520.P14638427417430685320

/-! ## A065520.P5983669792618709770

`lt[A034457(n+1), A158972(n+1)²]`
-/

namespace A065520.P5983669792618709770
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034457 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158972 (n + 1) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A065520.P5983669792618709770

/-! ## A065520.P11608400357081394841

`∑[A068068(∑[A225646(n)])]`
-/

namespace A065520.P11608400357081394841
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225646 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068068 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A065520.P11608400357081394841

/-! ## A065520.P2766887090495019927

`eq[1, A116933(A325789(n+1)+n)]`
-/

namespace A065520.P2766887090495019927
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116933 (A325789 (n + 1) + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A065520.P2766887090495019927

/-! ## A065520.P17862060837689529319

`lt[A034457(n+1), A158972(n+1)]`
-/

namespace A065520.P17862060837689529319
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034457 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158972 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A065520.P17862060837689529319

/-!
# A065521: a(n) = floor(prime(n) / n) * n - prime(n) mod n.

The programs for A065521, the canonical program `A065521.P230305916375850587` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A065521 has offset 1).

The definition of A065521 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(A000040(n+1)/(n+1))*(n+1)-A000040(n+1)%(n+1)` (program `A065521.P230305916375850587`, by `A065521.P230305916375850587.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A065521.P6065621227112558167

`A038605(n+1)*(n+1)-A004648(n+1)`
-/

namespace A065521.P6065621227112558167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038605 (n + 1) * (n + 1 : ℤ) - A004648 (n + 1)

end

end A065521.P6065621227112558167

namespace A065521

/-- `A038605(n+1)*(n+1)-A004648(n+1)` -/
def P6065621227112558167.Spec : Prop :=
  ∀ n, P6065621227112558167.a n = A065521 (n + 1)

end A065521

/-! ## A065521.P230305916375850587

`floor(A000040(n+1)/(n+1))*(n+1)-A000040(n+1)%(n+1)`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A065521

/-- `floor(A000040(n+1)/(n+1))*(n+1)-A000040(n+1)%(n+1)` -/
def P230305916375850587.Spec : Prop :=
  ∀ n, P230305916375850587.a n = A065521 (n + 1)

theorem P230305916375850587.correct : P230305916375850587.Spec := by
  intro n
  simp only [A065521, Nat.add_sub_cancel]

end A065521

/-! ## A065521.P17671407189220414493

`A000040(n+1)-2*A004648(n+1)`
-/

namespace A065521.P17671407189220414493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) - 2 * A004648 (n + 1)

end

end A065521.P17671407189220414493

namespace A065521

/-- `A000040(n+1)-2*A004648(n+1)` -/
def P17671407189220414493.Spec : Prop :=
  ∀ n, P17671407189220414493.a n = A065521 (n + 1)

end A065521

/-! ## A065521.P10042566199800726500

`A000040(n+1)-A005843(A004648(n+1))`
-/

namespace A065521.P10042566199800726500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) - A005843 (A004648 (n + 1)).toNat

end

end A065521.P10042566199800726500

namespace A065521

/-- `A000040(n+1)-A005843(A004648(n+1))` -/
def P10042566199800726500.Spec : Prop :=
  ∀ n, P10042566199800726500.a n = A065521 (n + 1)

end A065521

/-! ## A065521.P17658533759056356418

`A008864(n+1)-A005408(A004648(n+1))`
-/

namespace A065521.P17658533759056356418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008864 (n + 1) - A005408 (A004648 (n + 1)).toNat

end

end A065521.P17658533759056356418

namespace A065521

/-- `A008864(n+1)-A005408(A004648(n+1))` -/
def P17658533759056356418.Spec : Prop :=
  ∀ n, P17658533759056356418.a n = A065521 (n + 1)

end A065521

/-! ## A065521.P10618934684409509733

`A000040(n+1)-A005843(A000040(n+1)%(n+1))`
-/

namespace A065521.P10618934684409509733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) - A005843 (Int.tmod (A000040 (n + 1)) (n + 1 : ℤ)).toNat

end

end A065521.P10618934684409509733

namespace A065521

/-- `A000040(n+1)-A005843(A000040(n+1)%(n+1))` -/
def P10618934684409509733.Spec : Prop :=
  ∀ n, P10618934684409509733.a n = A065521 (n + 1)

end A065521

/-! ## A065521.P14095689736267188392

`A008578(n+2)-2*A004648(n+1)`
-/

namespace A065521.P14095689736267188392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 2) - 2 * A004648 (n + 1)

end

end A065521.P14095689736267188392

namespace A065521

/-- `A008578(n+2)-2*A004648(n+1)` -/
def P14095689736267188392.Spec : Prop :=
  ∀ n, P14095689736267188392.a n = A065521 (n + 1)

end A065521

/-! ## A065521.P5682952517773408178

`p?[A004280(n+1)]-2*A004648(n+1)`
-/

namespace A065521.P5682952517773408178
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004280 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - 2 * A004648 (n + 1)

end

end A065521.P5682952517773408178

namespace A065521

/-- `p?[A004280(n+1)]-2*A004648(n+1)` -/
def P5682952517773408178.Spec : Prop :=
  ∀ n, P5682952517773408178.a n = A065521 (n + 1)

end A065521

/-! ## A065521.P11039577255251268385

`p?[A004280(n+1)]-A005843(A004648(n+1))`
-/

namespace A065521.P11039577255251268385
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004280 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - A005843 (A004648 (n + 1)).toNat

end

end A065521.P11039577255251268385

namespace A065521

/-- `p?[A004280(n+1)]-A005843(A004648(n+1))` -/
def P11039577255251268385.Spec : Prop :=
  ∀ n, P11039577255251268385.a n = A065521 (n + 1)

end A065521

/-! ## A065521.P5752477382374208652

`p?[A089026(n+1)]-2*A004648(n+1)`
-/

namespace A065521.P5752477382374208652
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089026 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - 2 * A004648 (n + 1)

end

end A065521.P5752477382374208652

namespace A065521

/-- `p?[A089026(n+1)]-2*A004648(n+1)` -/
def P5752477382374208652.Spec : Prop :=
  ∀ n, P5752477382374208652.a n = A065521 (n + 1)

end A065521

/-! ## A065521.P8867461789288967829

`p?[A284307(n+1)]-2*A004648(n+1)`
-/

namespace A065521.P8867461789288967829
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284307 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - 2 * A004648 (n + 1)

end

end A065521.P8867461789288967829

namespace A065521

/-- `p?[A284307(n+1)]-2*A004648(n+1)` -/
def P8867461789288967829.Spec : Prop :=
  ∀ n, P8867461789288967829.a n = A065521 (n + 1)

end A065521

/-! ## A065521.P14600443732947617327

`p?[A089026(n+1)]-A005843(A004648(n+1))`
-/

namespace A065521.P14600443732947617327
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089026 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - A005843 (A004648 (n + 1)).toNat

end

end A065521.P14600443732947617327

namespace A065521

/-- `p?[A089026(n+1)]-A005843(A004648(n+1))` -/
def P14600443732947617327.Spec : Prop :=
  ∀ n, P14600443732947617327.a n = A065521 (n + 1)

end A065521

/-! ## A065521.P1546253091212105242

`p?[A284307(n+1)]-A005843(A004648(n+1))`
-/

namespace A065521.P1546253091212105242
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284307 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - A005843 (A004648 (n + 1)).toNat

end

end A065521.P1546253091212105242

namespace A065521

/-- `p?[A284307(n+1)]-A005843(A004648(n+1))` -/
def P1546253091212105242.Spec : Prop :=
  ∀ n, P1546253091212105242.a n = A065521 (n + 1)

end A065521

/-! ## A065521.P15221057982191117593

`A000040(n+1)-2*A101257(A033286(n+1))`
-/

namespace A065521.P15221057982191117593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) - 2 * A101257 (A033286 (n + 1)).toNat

end

end A065521.P15221057982191117593

namespace A065521

/-- `A000040(n+1)-2*A101257(A033286(n+1))` -/
def P15221057982191117593.Spec : Prop :=
  ∀ n, P15221057982191117593.a n = A065521 (n + 1)

end A065521

/-!
# A065522: Numbers k such that sigma(k) and sigma(k+1) are nontrivial powers (A065496).

The programs for A065522, there is no canonical definition to state claims against.
-/

/-! ## A065522.P5577678356798370739

`∩[A065496(n+1)-1, A065496(n+1)]`
-/

namespace A065522.P5577678356798370739
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065496 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065496 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A065522.P5577678356798370739

/-! ## A065522.P6321750912394710626

`∩[A065496(n+1), A023443(A065496(n+1))]`
-/

namespace A065522.P6321750912394710626
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065496 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A065496 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A065522.P6321750912394710626

/-!
# A065523: Numbers n such that sigma(n) is a prime power (A025475).

The programs for A065523, there is no canonical definition to state claims against.
-/

/-! ## A065523.P15299353088803938917

`∩[A065496(n+1), A070763(n+1)]`
-/

namespace A065523.P15299353088803938917
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065496 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070763 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A065523.P15299353088803938917

/-! ## A065523.P12821596211359260003

`∩[A070763(n+1), A234638(n+1)]`
-/

namespace A065523.P12821596211359260003
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070763 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234638 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A065523.P12821596211359260003

/-! ## A065523.P6750596613506386471

`∩[A070763(n+1), A180097(n+1)]`
-/

namespace A065523.P6750596613506386471
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070763 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180097 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A065523.P6750596613506386471

/-! ## A065523.P716270735668003119

`∩[A070763(n+1), A387727(n+1)]`
-/

namespace A065523.P716270735668003119
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070763 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387727 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A065523.P716270735668003119

/-! ## A065523.P755128461263347172

`∩[A070763(n+1), A163162(n+1)]`
-/

namespace A065523.P755128461263347172
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070763 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163162 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A065523.P755128461263347172

/-!
# A065524: The (5^n)-th composite number.

The programs for A065524, the canonical program `A065524.P4182551559051557307` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A065524 has offset 0).

The definition of A065524 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A065524.P4182551559051557307

`A002808(5^n)`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A065524

/-- `A002808(5^n)` -/
def P4182551559051557307.Spec : Prop :=
  ∀ n, P4182551559051557307.a n = A065524 n

theorem P4182551559051557307.correct : P4182551559051557307.Spec := by
  intro n
  simp only [A065524]

end A065524

/-! ## A065524.P2032629182076910045

`A018252(1+5^n)`
-/

namespace A065524.P2032629182076910045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (1 + 5 ^ n)

end

end A065524.P2032629182076910045

namespace A065524

/-- `A018252(1+5^n)` -/
def P2032629182076910045.Spec : Prop :=
  ∀ n, P2032629182076910045.a n = A065524 n

end A065524

/-! ## A065524.P12181831323285134105

`A141468(5^n+2)`
-/

namespace A065524.P12181831323285134105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141468 (5 ^ n + 2)

end

end A065524.P12181831323285134105

namespace A065524

/-- `A141468(5^n+2)` -/
def P12181831323285134105.Spec : Prop :=
  ∀ n, P12181831323285134105.a n = A065524 n

end A065524

/-!
# A065525: The (6^n)-th composite number.

The programs for A065525, the canonical program `A065525.P5304963212479784431` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A065525 has offset 0).

The definition of A065525 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A065525.P5304963212479784431

`A002808(6^n)`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A065525

/-- `A002808(6^n)` -/
def P5304963212479784431.Spec : Prop :=
  ∀ n, P5304963212479784431.a n = A065525 n

theorem P5304963212479784431.correct : P5304963212479784431.Spec := by
  intro n
  simp only [A065525]

end A065525

/-! ## A065525.P3719640821721576956

`A018252(6^n+1)`
-/

namespace A065525.P3719640821721576956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (6 ^ n + 1)

end

end A065525.P3719640821721576956

namespace A065525

/-- `A018252(6^n+1)` -/
def P3719640821721576956.Spec : Prop :=
  ∀ n, P3719640821721576956.a n = A065525 n

end A065525

/-!
# A065526: The (11^n)-th composite number.

The programs for A065526, there is no canonical definition to state claims against.
-/

/-! ## A065526.P8613609896710399375

`A002808(11^n)`
-/

namespace A065526.P8613609896710399375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002808 (11 ^ n)

end

end A065526.P8613609896710399375

/-!
# A065528: Numbers n such that phi(n) is a nontrivial power b^c where b > 1 and c > 1.

The programs for A065528, there is no canonical definition to state claims against.
-/

/-! ## A065528.P18124216242965277762

`A166955(n+3)`
-/

namespace A065528.P18124216242965277762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166955 (n + 3)

end

end A065528.P18124216242965277762

/-! ## A065528.P7649299363211551354

`record[A166955(A194960(A092486(n)))]`
-/

namespace A065528.P7649299363211551354
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166955 (A194960 (A092486 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A065528.P7649299363211551354

/-! ## A065528.P11711903081753471819

`record[A166955(A262672(n))]`
-/

namespace A065528.P11711903081753471819
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166955 (A262672 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A065528.P11711903081753471819

/-! ## A065528.P7388784411478412821

`eq[0, A132350(A000010(n+1))]+1`
-/

namespace A065528.P7388784411478412821
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132350 (A000010 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A065528.P7388784411478412821

/-! ## A065528.P5851170735505729392

`lt[2, A295920(A109606(n+1)+1)]+1`
-/

namespace A065528.P5851170735505729392
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295920 (A109606 (n + 1) + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A065528.P5851170735505729392

/-! ## A065528.P312177029368156691

`eq[0, A132350(A225530(n))]`
-/

namespace A065528.P312177029368156691
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132350 (A225530 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A065528.P312177029368156691

/-!
# A065530: If n is odd then a(n) = n, else a(n) = n*(n+2).

The programs for A065530, the canonical program `A065530.P295616064296752458` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A065530 has offset 0).

The definition of A065530 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A065530.P9934343923599092854

`ogf((x+8x^2-x^5)/(1-3x^2+3x^4-x^6))`
-/

namespace A065530.P9934343923599092854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1, 8, 0, 0, -1] [1, 0, -3, 0, 3, 0, -1] n

end

end A065530.P9934343923599092854

namespace A065530

/-- `ogf((x+8x^2-x^5)/(1-3x^2+3x^4-x^6))` -/
def P9934343923599092854.Spec : Prop :=
  ∀ n, P9934343923599092854.a n = A065530 n

end A065530

/-! ## A065530.P295616064296752458

`3*a(n-2)-3*a(n-4)+a(n-6)` with `a(0)=0, a(1)=1, a(2)=8, a(3)=3, a(4)=24, a(5)=5`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A065530

/-- `3*a(n-2)-3*a(n-4)+a(n-6)` -/
def P295616064296752458.Spec : Prop :=
  ∀ n, P295616064296752458.a n = A065530 n

theorem P295616064296752458.correct : P295616064296752458.Spec := by
  intro n
  simp only [A065530]

end A065530

/-! ## A065530.P10786244962101986006

`(n+1)^gcd(2, n)-1`
-/

namespace A065530.P10786244962101986006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ Nat.gcd 2 n : ℤ) - 1

end

end A065530.P10786244962101986006

namespace A065530

/-- `(n+1)^gcd(2, n)-1` -/
def P10786244962101986006.Spec : Prop :=
  ∀ n, P10786244962101986006.a n = A065530 n

end A065530

/-! ## A065530.P7223416369941000907

`(lcm(2, n+1)-n)*n`
-/

namespace A065530.P7223416369941000907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((Nat.lcm 2 (n + 1) : ℤ) - (n : ℤ)) * (n : ℤ)

end

end A065530.P7223416369941000907

namespace A065530

/-- `(lcm(2, n+1)-n)*n` -/
def P7223416369941000907.Spec : Prop :=
  ∀ n, P7223416369941000907.a n = A065530 n

end A065530

/-! ## A065530.P8930086930111069622

`n*gcd(n+2, n%2)`
-/

namespace A065530.P8930086930111069622
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * Nat.gcd (n + 2) (n % 2)

end

end A065530.P8930086930111069622

namespace A065530

/-- `n*gcd(n+2, n%2)` -/
def P8930086930111069622.Spec : Prop :=
  ∀ n, (P8930086930111069622.a n : ℤ) = A065530 n

end A065530

/-! ## A065530.P11488768207786495504

`n*(C(xor(1, n), n)+1)`
-/

namespace A065530.P11488768207786495504
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (Nat.choose (Nat.xor 1 n) n + 1)

end

end A065530.P11488768207786495504

namespace A065530

/-- `n*(C(xor(1, n), n)+1)` -/
def P11488768207786495504.Spec : Prop :=
  ∀ n, (P11488768207786495504.a n : ℤ) = A065530 n

end A065530

/-! ## A065530.P10831655283895475029

`2*lcm(n, ∑[n])-n²`
-/

namespace A065530.P10831655283895475029
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * Nat.lcm n (∑ j ∈ Finset.range (n + 1), f1 j) : ℤ) - (n ^ 2 : ℤ)

end

end A065530.P10831655283895475029

namespace A065530

/-- `2*lcm(n, ∑[n])-n²` -/
def P10831655283895475029.Spec : Prop :=
  ∀ n, P10831655283895475029.a n = A065530 n

end A065530

/-! ## A065530.P13382810477574558600

`n*n²%(2*(n+1))`
-/

namespace A065530.P13382810477574558600
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (n ^ 2 % (2 * (n + 1)))

end

end A065530.P13382810477574558600

namespace A065530

/-- `n*n²%(2*(n+1))` -/
def P13382810477574558600.Spec : Prop :=
  ∀ n, (P13382810477574558600.a n : ℤ) = A065530 n

end A065530

/-! ## A065530.P2415931492329050584

`((-1)^n+1)*∑[n]+n`
-/

namespace A065530.P2415931492329050584
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((-1) ^ n + 1) * ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) + (n : ℤ)

end

end A065530.P2415931492329050584

namespace A065530

/-- `((-1)^n+1)*∑[n]+n` -/
def P2415931492329050584.Spec : Prop :=
  ∀ n, P2415931492329050584.a n = A065530 n

end A065530

/-! ## A065530.P15567736868557998727

`n*(n+2)^((n+1)%2)`
-/

namespace A065530.P15567736868557998727
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (n + 2) ^ ((n + 1) % 2)

end

end A065530.P15567736868557998727

namespace A065530

/-- `n*(n+2)^((n+1)%2)` -/
def P15567736868557998727.Spec : Prop :=
  ∀ n, (P15567736868557998727.a n : ℤ) = A065530 n

end A065530

/-! ## A065530.P14426733947702609037

`n*(n+2)^and(1, n+1)`
-/

namespace A065530.P14426733947702609037
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (n + 2) ^ Nat.land 1 (n + 1)

end

end A065530.P14426733947702609037

namespace A065530

/-- `n*(n+2)^and(1, n+1)` -/
def P14426733947702609037.Spec : Prop :=
  ∀ n, (P14426733947702609037.a n : ℤ) = A065530 n

end A065530

/-! ## A065530.P10087271035761728875

`n/(n+2)^(and(1, n)-1)`
-/

namespace A065530.P10087271035761728875
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / (n + 2 : ℚ) ^ ((Nat.land 1 n : ℤ) - 1 : ℤ)

end

end A065530.P10087271035761728875

namespace A065530

/-- `n/(n+2)^(and(1, n)-1)` -/
def P10087271035761728875.Spec : Prop :=
  ∀ n, P10087271035761728875.a n = (A065530 n : ℚ)

end A065530

/-! ## A065530.P10882918236768973068

`n*C(n+2, (n+3)%2)`
-/

namespace A065530.P10882918236768973068
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * Nat.choose (n + 2) ((n + 3) % 2)

end

end A065530.P10882918236768973068

namespace A065530

/-- `n*C(n+2, (n+3)%2)` -/
def P10882918236768973068.Spec : Prop :=
  ∀ n, (P10882918236768973068.a n : ℤ) = A065530 n

end A065530

/-! ## A065530.P9848646477790334966

`n*C(n+2, and(1, n+1))`
-/

namespace A065530.P9848646477790334966
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * Nat.choose (n + 2) (Nat.land 1 (n + 1))

end

end A065530.P9848646477790334966

namespace A065530

/-- `n*C(n+2, and(1, n+1))` -/
def P9848646477790334966.Spec : Prop :=
  ∀ n, (P9848646477790334966.a n : ℤ) = A065530 n

end A065530

/-! ## A065530.P7985085458222490442

`n*C(n+2, or(1, n+1))`
-/

namespace A065530.P7985085458222490442
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * Nat.choose (n + 2) (Nat.lor 1 (n + 1))

end

end A065530.P7985085458222490442

namespace A065530

/-- `n*C(n+2, or(1, n+1))` -/
def P7985085458222490442.Spec : Prop :=
  ∀ n, (P7985085458222490442.a n : ℤ) = A065530 n

end A065530

/-! ## A065530.P3254811555857266203

`gcd(n*and(1, n), n*(n+2))`
-/

namespace A065530.P3254811555857266203
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd (n * Nat.land 1 n) (n * (n + 2))

end

end A065530.P3254811555857266203

namespace A065530

/-- `gcd(n*and(1, n), n*(n+2))` -/
def P3254811555857266203.Spec : Prop :=
  ∀ n, (P3254811555857266203.a n : ℤ) = A065530 n

end A065530

/-! ## A065530.P10522668218617032556

`n*(n+2)^val(n²+2, 2)`
-/

namespace A065530.P10522668218617032556
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (n + 2) ^ SequenceMachineLib.valuation (n ^ 2 + 2) 2

end

end A065530.P10522668218617032556

namespace A065530

/-- `n*(n+2)^val(n²+2, 2)` -/
def P10522668218617032556.Spec : Prop :=
  ∀ n, (P10522668218617032556.a n : ℤ) = A065530 n

end A065530

/-! ## A065530.P11053732600708733099

`n/(n+2)^-and(1, n+1)`
-/

namespace A065530.P11053732600708733099
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / (n + 2 : ℚ) ^ (-(Nat.land 1 (n + 1) : ℤ) : ℤ)

end

end A065530.P11053732600708733099

namespace A065530

/-- `n/(n+2)^-and(1, n+1)` -/
def P11053732600708733099.Spec : Prop :=
  ∀ n, P11053732600708733099.a n = (A065530 n : ℚ)

end A065530

/-! ## A065530.P8522925641388564276

`n*gcd((n+2)², xor(1, n+3))`
-/

namespace A065530.P8522925641388564276
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * Nat.gcd ((n + 2) ^ 2) (Nat.xor 1 (n + 3))

end

end A065530.P8522925641388564276

namespace A065530

/-- `n*gcd((n+2)², xor(1, n+3))` -/
def P8522925641388564276.Spec : Prop :=
  ∀ n, (P8522925641388564276.a n : ℤ) = A065530 n

end A065530

/-! ## A065530.P6075747835559561383

`∏{d}[or(2*n, -3), n-1+#]`
-/

namespace A065530.P6075747835559561383
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (2 * n : ℤ) (-3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n).natAbs, ((n : ℤ) - 1 + (d : ℤ))

end

end A065530.P6075747835559561383

namespace A065530

/-- `∏{d}[or(2*n, -3), n-1+#]` -/
def P6075747835559561383.Spec : Prop :=
  ∀ n, P6075747835559561383.a n = A065530 n

end A065530

/-!
# A065531: Number of palindromes in all base b representations for n, for 2<=b<=n.

The programs for A065531, there is no canonical definition to state claims against.
-/

/-! ## A065531.P16193912779973877020

`A135551(3-(2-n)%(n+1))`
-/

namespace A065531.P16193912779973877020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135551 (3 - Int.tmod (2 - (n : ℤ)) (n + 1 : ℤ)).toNat

end

end A065531.P16193912779973877020

/-! ## A065531.P4720000230856406422

`A135551(A000038(n)+1+n)`
-/

namespace A065531.P4720000230856406422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135551 (A000038 n + 1 + (n : ℤ)).toNat

end

end A065531.P4720000230856406422

/-! ## A065531.P6626187987262783151

`A135551(gcd(4, A045532(n+1))+n)`
-/

namespace A065531.P6626187987262783151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135551 (Int.gcd 4 (A045532 (n + 1)) + n)

end

end A065531.P6626187987262783151

/-! ## A065531.P11053598125265140012

`A135551(floor(2/A249735(n+1)+n+1))`
-/

namespace A065531.P11053598125265140012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135551 ⌊2 / (A249735 (n + 1) : ℚ) + (n + 1 : ℚ)⌋.toNat

end

end A065531.P11053598125265140012

/-! ## A065531.P16180114804883831466

`A171624(2*(n+1))+A135551(n+1)-A171624(2*n+1)`
-/

namespace A065531.P16180114804883831466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171624 (2 * (n + 1)) + (A135551 (n + 1) - A171624 (2 * n + 1))

end

end A065531.P16180114804883831466

/-! ## A065531.P14623099493829603356

`A126071(n+1)+A057428(n)`
-/

namespace A065531.P14623099493829603356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126071 (n + 1) + A057428 n

end

end A065531.P14623099493829603356

/-! ## A065531.P13986703113091370914

`A126071(n+1)-A057427(n)`
-/

namespace A065531.P13986703113091370914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126071 (n + 1) - A057427 n

end

end A065531.P13986703113091370914

/-! ## A065531.P7426222196368057583

`A126071(n+1)-A178226(2*n)`
-/

namespace A065531.P7426222196368057583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126071 (n + 1) - A178226 (2 * n)

end

end A065531.P7426222196368057583

/-! ## A065531.P15411625828224855581

`A126071(n+1)-A135551(A016038(n+3))`
-/

namespace A065531.P15411625828224855581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126071 (n + 1) - A135551 (A016038 (n + 3)).toNat

end

end A065531.P15411625828224855581

/-! ## A065531.P16016959430869435896

`A126071(n+1)-A131576(eq[n, A000010(n+1)]+1)`
-/

namespace A065531.P16016959430869435896
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126071 (n + 1) - A131576 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A065531.P16016959430869435896

/-!
# A065532: a(n) = 48*n^2 - 1.

The programs for A065532, the canonical program `A065532.P11573010565156108803` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A065532 has offset 0).

The definition of A065532 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `48*n²-1` (program `A065532.P11573010565156108803`, by `A065532.P11573010565156108803.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A065532.P11573010565156108803

`48*n²-1`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A065532

/-- `48*n²-1` -/
def P11573010565156108803.Spec : Prop :=
  ∀ n, P11573010565156108803.a n = A065532 n

theorem P11573010565156108803.correct : P11573010565156108803.Spec := by
  intro n
  simp only [A065532]

end A065532

/-! ## A065532.P4474080958244341467

`ogf((-1+50x+47x^2)/(1-3x+3x^2-x^3))`
-/

namespace A065532.P4474080958244341467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [-1, 50, 47] [1, -3, 3, -1] n

end

end A065532.P4474080958244341467

namespace A065532

/-- `ogf((-1+50x+47x^2)/(1-3x+3x^2-x^3))` -/
def P4474080958244341467.Spec : Prop :=
  ∀ n, P4474080958244341467.a n = A065532 n

end A065532

/-! ## A065532.P8286801383110387516

`A158463(2*n)`
-/

namespace A065532.P8286801383110387516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158463 (2 * n)

end

end A065532.P8286801383110387516

namespace A065532

/-- `A158463(2*n)` -/
def P8286801383110387516.Spec : Prop :=
  ∀ n, P8286801383110387516.a n = A065532 n

theorem P8286801383110387516.correct : P8286801383110387516.Spec := by
  intro n
  simp only [A065532, Nat.add_sub_cancel, A065532.P8286801383110387516.a, A065532.P11573010565156108803.a, A158463, A158463.P7007655217700314725.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A065532

/-! ## A065532.P8176887227495632969

`or(3, 6*n*8*n-1)`
-/

namespace A065532.P8176887227495632969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 3 ((6 * n * (8 * n) : ℤ) - 1)

end

end A065532.P8176887227495632969

namespace A065532

/-- `or(3, 6*n*8*n-1)` -/
def P8176887227495632969.Spec : Prop :=
  ∀ n, P8176887227495632969.a n = A065532 n

end A065532

/-! ## A065532.P15405123073415634207

`Δ[8*(n-1)*C(2*n, 2)+11-n]`
-/

namespace A065532.P15405123073415634207
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  8 * (((n : ℤ) - 1) * (Nat.choose (2 * n) 2 : ℤ)) + 11 - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A065532.P15405123073415634207

namespace A065532

/-- `Δ[8*(n-1)*C(2*n, 2)+11-n]` -/
def P15405123073415634207.Spec : Prop :=
  ∀ n, P15405123073415634207.a n = A065532 n

theorem P15405123073415634207.correct : P15405123073415634207.Spec := by
  intro n
  simp only [A065532, Nat.add_sub_cancel, A065532.P15405123073415634207.f1, A065532.P15405123073415634207.a, A065532.P11573010565156108803.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A065532

/-! ## A065532.P7856803412257344023

`xor(1, A158638(n)-3)`
-/

namespace A065532.P7856803412257344023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A158638 n - 3)

end

end A065532.P7856803412257344023

namespace A065532

/-- `xor(1, A158638(n)-3)` -/
def P7856803412257344023.Spec : Prop :=
  ∀ n, P7856803412257344023.a n = A065532 n

end A065532

/-! ## A065532.P7336337979577630346

`record[A158463(n)/(1-4/2)^n]`
-/

namespace A065532.P7336337979577630346
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A158463 n : ℚ) / (1 - (4 : ℚ) / 2) ^ n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A065532.P7336337979577630346

namespace A065532

/-- `record[A158463(n)/(1-4/2)^n]` -/
def P7336337979577630346.Spec : Prop :=
  ∀ n, P7336337979577630346.a n = (A065532 n : ℚ)

end A065532

/-! ## A065532.P11094504742741255544

`floor(A140811(4*n)/2)`
-/

namespace A065532.P11094504742741255544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A140811 (4 * n) : ℚ) / 2⌋

end

end A065532.P11094504742741255544

namespace A065532

/-- `floor(A140811(4*n)/2)` -/
def P11094504742741255544.Spec : Prop :=
  ∀ n, P11094504742741255544.a n = A065532 n

end A065532

/-! ## A065532.P15760961490362215389

`A331952(8*n)`
-/

namespace A065532.P15760961490362215389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331952 (8 * n)

end

end A065532.P15760961490362215389

namespace A065532

/-- `A331952(8*n)` -/
def P15760961490362215389.Spec : Prop :=
  ∀ n, P15760961490362215389.a n = A065532 n

end A065532

/-! ## A065532.P3642166730186235381

`A183010(2*n²)`
-/

namespace A065532.P3642166730186235381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183010 (2 * n ^ 2)

end

end A065532.P3642166730186235381

namespace A065532

/-- `A183010(2*n²)` -/
def P3642166730186235381.Spec : Prop :=
  ∀ n, P3642166730186235381.a n = A065532 n

theorem P3642166730186235381.correct : P3642166730186235381.Spec := by
  intro n
  simp only [A065532, Nat.add_sub_cancel, A065532.P3642166730186235381.a, A065532.P11573010565156108803.a, A183010, A183010.P1615208601139071033.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A065532

/-!
# A065534: a(n) is smallest prime > 10*a(n-1), a(1) = 5.

The programs for A065534, there is no canonical definition to state claims against.
-/

/-! ## A065534.P12515733227449773395

`A218255(a(n-1))` with `a(0)=5`
-/

namespace A065534.P12515733227449773395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [5] fun n a =>
  A218255 (a (n - 1)).toNat

end

end A065534.P12515733227449773395

/-!
# A065540: a(n) is smallest prime > 3*a(n-1), a(1) = 3.

The programs for A065540, there is no canonical definition to state claims against.
-/

/-! ## A065540.P5720633853211388858

`A151800(3*a(n-1))` with `a(0)=3`
-/

namespace A065540.P5720633853211388858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  A151800 (3 * a (n - 1)).toNat

end

end A065540.P5720633853211388858

/-! ## A065540.P13181604527256959814

`A151800(a(n-1)/cot(atan(3)))` with `a(0)=3`
-/

namespace A065540.P13181604527256959814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  A151800 (SequenceMachineLib.roundAway ((a (n - 1) : ℝ) / Real.cot (Real.arctan (3 : ℝ)))).toNat

end

end A065540.P13181604527256959814

/-! ## A065540.P11640291184214113003

`A151800(a(n-1)/sqrt(1/9))` with `a(0)=3`
-/

namespace A065540.P11640291184214113003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  A151800 (SequenceMachineLib.roundAway ((a (n - 1) : ℝ) / Real.sqrt ((1 : ℚ) / 9 : ℝ))).toNat

end

end A065540.P11640291184214113003

/-! ## A065540.P4726659411288362673

`record[A151800(lcm(3, a(n-1))+1)]` with `a(0)=3, a(1)=0`
-/

namespace A065540.P4726659411288362673
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [3, 0] fun n f1 =>
  A151800 (Int.lcm 3 (f1 (n - 1)) + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A065540.P4726659411288362673

/-! ## A065540.P3503116235896051027

`A151800(a(n-1)/(1-2/3)+1)` with `a(0)=3`
-/

namespace A065540.P3503116235896051027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  A151800 (SequenceMachineLib.roundAway ((a (n - 1) : ℚ) / (1 - (2 : ℚ) / 3) + 1)).toNat

end

end A065540.P3503116235896051027

/-!
# A065541: a(n) is the smallest prime > 5*a(n-1), a(1) = 5.

The programs for A065541, there is no canonical definition to state claims against.
-/

/-! ## A065541.P8463701226501054699

`A151800(5*a(n-1))` with `a(0)=5`
-/

namespace A065541.P8463701226501054699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [5] fun n a =>
  A151800 (5 * a (n - 1)).toNat

end

end A065541.P8463701226501054699

/-! ## A065541.P14118975503767831363

`A151800(a(n-1)/(1-4/5)+1)` with `a(0)=5`
-/

namespace A065541.P14118975503767831363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [5] fun n a =>
  A151800 (SequenceMachineLib.roundAway ((a (n - 1) : ℚ) / (1 - (4 : ℚ) / 5) + 1)).toNat

end

end A065541.P14118975503767831363

/-! ## A065541.P2573768682851011129

`A000040(A000720(5*a(n-1))+1)` with `a(0)=5`
-/

namespace A065541.P2573768682851011129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [5] fun n a =>
  A000040 (A000720 (5 * a (n - 1)).toNat + 1).toNat

end

end A065541.P2573768682851011129

/-!
# A065542: a(n) is smallest prime > 7*a(n-1), a(1) = 7.

The programs for A065542, there is no canonical definition to state claims against.
-/

/-! ## A065542.P8245541596178428689

`A151800(7*a(n-1))` with `a(0)=7`
-/

namespace A065542.P8245541596178428689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [7] fun n a =>
  A151800 (7 * a (n - 1)).toNat

end

end A065542.P8245541596178428689

/-!
# A065545: a(n) is smallest prime > 2*a(n-1), a(1) = 3.

The programs for A065545, there is no canonical definition to state claims against.
-/

/-! ## A065545.P10054511542104008756

`A110930(n+2)`
-/

namespace A065545.P10054511542104008756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110930 (n + 2)

end

end A065545.P10054511542104008756

/-! ## A065545.P16927323805376457227

`a(n-1)+A335266(n)+a(n-1)` with `a(0)=3`
-/

namespace A065545.P16927323805376457227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  a (n - 1) + (A335266 n + a (n - 1))

end

end A065545.P16927323805376457227

/-! ## A065545.P15513742505289287177

`record[A110930(A133310(A007599(n)))]`
-/

namespace A065545.P15513742505289287177
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110930 (A133310 (A007599 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A065545.P15513742505289287177

/-! ## A065545.P12910469236763808542

`record[A110930(A133310(A008624(n)))]`
-/

namespace A065545.P12910469236763808542
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110930 (A133310 (A008624 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A065545.P12910469236763808542

/-! ## A065545.P7646274984805214534

`record[A110930(A133310(A020915(n)))]`
-/

namespace A065545.P7646274984805214534
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110930 (A133310 (A020915 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A065545.P7646274984805214534

/-! ## A065545.P6043109522246829239

`record[A110930(A141256(A028242(n)))]`
-/

namespace A065545.P6043109522246829239
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110930 (A141256 (A028242 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A065545.P6043109522246829239

/-! ## A065545.P251072995131959685

`record[A110930(A133310(A057979(n)))]`
-/

namespace A065545.P251072995131959685
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110930 (A133310 (A057979 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A065545.P251072995131959685

/-! ## A065545.P14283910072743017193

`record[A110930(A141256(A065033(n)))]`
-/

namespace A065545.P14283910072743017193
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110930 (A141256 (A065033 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A065545.P14283910072743017193

/-! ## A065545.P12539928096778029302

`record[A110930(A133310(A133310(n)))]`
-/

namespace A065545.P12539928096778029302
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110930 (A133310 (A133310 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A065545.P12539928096778029302

/-! ## A065545.P4921313975244904001

`record[A110930(A324380(A324380(n)))]`
-/

namespace A065545.P4921313975244904001
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110930 (A324380 (A324380 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A065545.P4921313975244904001

/-!
# A065546: a(n) is smallest prime > 2*a(n-1), a(1) = 13.

The programs for A065546, there is no canonical definition to state claims against.
-/

/-! ## A065546.P7587865007563803103

`A151800(2*a(n-1))` with `a(0)=13`
-/

namespace A065546.P7587865007563803103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [13] fun n a =>
  A151800 (2 * a (n - 1)).toNat

end

end A065546.P7587865007563803103

/-! ## A065546.P6822067395083565959

`A151800(a(n-1)+a(n-1))` with `a(0)=13`
-/

namespace A065546.P6822067395083565959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [13] fun n a =>
  A151800 (a (n - 1) + a (n - 1)).toNat

end

end A065546.P6822067395083565959

/-! ## A065546.P4282458266862610360

`A065091(A000720(2*a(n-1)))` with `a(0)=13`
-/

namespace A065546.P4282458266862610360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [13] fun n a =>
  A065091 (A000720 (2 * a (n - 1)).toNat).toNat

end

end A065546.P4282458266862610360

/-! ## A065546.P3630598721572941998

`A045344(A000720(lcm(2, a(n-1))))` with `a(0)=13`
-/

namespace A065546.P3630598721572941998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [13] fun n a =>
  A045344 (A000720 (Int.lcm 2 (a (n - 1)))).toNat

end

end A065546.P3630598721572941998

/-! ## A065546.P2949553305270033832

`A000040(A000720(2*a(n-1))+1)` with `a(0)=13`
-/

namespace A065546.P2949553305270033832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [13] fun n a =>
  A000040 (A000720 (2 * a (n - 1)).toNat + 1).toNat

end

end A065546.P2949553305270033832

/-!
# A065547: Triangle of Salie numbers.

The programs for A065547, there is no canonical definition to state claims against.
-/

/-! ## A065547.P5334065093523191232

`A085707(A061579(n))*A097807(n)`
-/

namespace A065547.P5334065093523191232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085707 (A061579 n).toNat * A097807 n

end

end A065547.P5334065093523191232

/-! ## A065547.P6384901834576411150

`A117414(n)/A167314(A057728(n+1))`
-/

namespace A065547.P6384901834576411150
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A117414 n : ℚ) / (A167314 (A057728 (n + 1)).toNat : ℚ)

end

end A065547.P6384901834576411150

/-! ## A065547.P15629670719455195724

`A117414(n)/A167314(A130321(n))`
-/

namespace A065547.P15629670719455195724
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A117414 n : ℚ) / (A167314 (A130321 n).toNat : ℚ)

end

end A065547.P15629670719455195724

/-! ## A065547.P3129486017046140607

`A122850(n)-A241541(A287480(n)²)`
-/

namespace A065547.P3129486017046140607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122850 n - A241541 (A287480 n ^ 2).toNat

end

end A065547.P3129486017046140607

/-!
# A065548: a(1) = 1 and, for n > 0, a(2*n) = sum{a(i) | 0 < i <= n}, a(2*n+1) = a(n)^2.

The programs for A065548, there is no canonical definition to state claims against.
-/

/-! ## A065548.P5338142776653638297

`gcd(A114092(n), A218629(A050932(n)))`
-/

namespace A065548.P5338142776653638297
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A114092 n) (A218629 (A050932 n).toNat)

end

end A065548.P5338142776653638297

/-! ## A065548.P17327090249445027558

`A008620(A325966(n+1)%A202240(n+2))`
-/

namespace A065548.P17327090249445027558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008620 (Int.tmod (A325966 (n + 1)) (A202240 (n + 2))).toNat

end

end A065548.P17327090249445027558

/-! ## A065548.P13363891629434158316

`and(A000120(A211529(n+1)), A211503(n+1))`
-/

namespace A065548.P13363891629434158316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A000120 (A211529 (n + 1)).toNat) (A211503 (n + 1))

end

end A065548.P13363891629434158316

/-!
# A065549: a(1) = 1; for n > 1, a(n) = 2^((A000043(n) - 1)/2).

The programs for A065549, there is no canonical definition to state claims against.
-/

/-! ## A065549.P8378807827271369014

`2^((A000043(n+2)-1)/2)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A065549.P8378807827271369014
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (2 : ℝ) ^ ((A000043 (n + 2) - 1 : ℚ) / 2 : ℝ)

end

end A065549.P8378807827271369014

/-! ## A065549.P11851187371457990907

`2^A146768(n+1)`
-/

namespace A065549.P11851187371457990907
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A146768 (n + 1) : ℤ)

end

end A065549.P11851187371457990907

/-! ## A065549.P8161809898758598370

`sqrt(2)^A090748(n+2)`
-/

namespace A065549.P8161809898758598370
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (2 : ℝ) ^ (A090748 (n + 2) : ℤ)

end

end A065549.P8161809898758598370

/-! ## A065549.P2271802920915796309

`(A197594(n+2)+1)/2`
-/

namespace A065549.P2271802920915796309
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A197594 (n + 2) + 1 : ℚ) / 2

end

end A065549.P2271802920915796309

/-! ## A065549.P448538698726718292

`2^(A138576(n+1)-1)`
-/

namespace A065549.P448538698726718292
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A138576 (n + 1) - 1 : ℤ)

end

end A065549.P448538698726718292

/-!
# A065551: Triangle of Faulhaber numbers (numerators) read by rows.

The programs for A065551, there is no canonical definition to state claims against.
-/

/-! ## A065551.P9724214117893828748

`A238683(n)%A242340(A101494(n))`
-/

namespace A065551.P9724214117893828748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A238683 n) (A242340 (A101494 n).toNat)

end

end A065551.P9724214117893828748

/-! ## A065551.P4699077178303818301

`A139377(A256117(n))-A139366(n+1)`
-/

namespace A065551.P4699077178303818301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139377 (A256117 n).toNat - A139366 (n + 1)

end

end A065551.P4699077178303818301

/-! ## A065551.P9636952033287170609

`A048993(n*A172538(n+1))-A139366(n+1)`
-/

namespace A065551.P9636952033287170609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048993 ((n : ℤ) * A172538 (n + 1)).toNat - A139366 (n + 1)

end

end A065551.P9636952033287170609

/-! ## A065551.P14750867546602364732

`A048993(n)^A172538(n+1)-A139366(n+1)`
-/

namespace A065551.P14750867546602364732
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A048993 n : ℚ) ^ (A172538 (n + 1) : ℤ) - (A139366 (n + 1) : ℚ)

end

end A065551.P14750867546602364732

/-! ## A065551.P9733147006471966094

`A238683(A049872(n))`
-/

namespace A065551.P9733147006471966094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238683 (A049872 n).toNat

end

end A065551.P9733147006471966094

/-!
# A065552: a(n) = floor(sqrt(phi(10^n)*sigma(10^n) + 10^(3*n))).

The programs for A065552, the canonical program `A065552.P7008903542737235417` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A065552 has offset 0).

The definition of A065552 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(sqrt(A000010(10^n)*A000203(10^n)+10^(3*n)))` (program `A065552.P7008903542737235417`, by `A065552.P7008903542737235417.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A065552.P7008903542737235417

`floor(sqrt(A000010(10^n)*A000203(10^n)+10^(3*n)))`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A065552

/-- `floor(sqrt(A000010(10^n)*A000203(10^n)+10^(3*n)))` -/
def P7008903542737235417.Spec : Prop :=
  ∀ n, P7008903542737235417.a n = A065552 n

theorem P7008903542737235417.correct : P7008903542737235417.Spec := by
  intro n
  simp only [A065552]

end A065552

/-!
# A065553: Triangle of Faulhaber numbers (denominators) read by rows.

The programs for A065553, there is no canonical definition to state claims against.
-/

/-! ## A065553.P7785836901512997801

`gcd(A180281(n+1), A246839(A155803(n)))`
-/

namespace A065553.P7785836901512997801
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A180281 (n + 1)) (A246839 (A155803 n).toNat)

end

end A065553.P7785836901512997801

/-! ## A065553.P9166811852018186293

`A103905(n+1)%A053836(A181236(n+1))`
-/

namespace A065553.P9166811852018186293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A103905 (n + 1)) (A053836 (A181236 (n + 1)).toNat)

end

end A065553.P9166811852018186293

/-! ## A065553.P7179788554691102158

`A132813(n)/A316622(A049872(n))`
-/

namespace A065553.P7179788554691102158
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A132813 n : ℚ) / (A316622 (A049872 n).toNat : ℚ)

end

end A065553.P7179788554691102158

/-! ## A065553.P1839708444197374014

`gcd(A063007(n), A089088(A017919(n)))`
-/

namespace A065553.P1839708444197374014
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A063007 n) (A089088 (A017919 n).toNat)

end

end A065553.P1839708444197374014

/-! ## A065553.P10130923882294332212

`gcd(A124493(A124497(n)), A132813(n))`
-/

namespace A065553.P10130923882294332212
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A124493 (A124497 n).toNat) (A132813 n)

end

end A065553.P10130923882294332212

/-!
# A065554: Numbers k such that floor((3/2)^(k+1))/floor((3/2)^k) = 3/2.

The programs for A065554, the canonical program `A065554.P874369825482619796` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A065554 has offset 1).

The definition of A065554 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 165 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A065554.P4959829428144410796

`lt[2, A052901(A170827(n+1))]`
-/

namespace A065554.P4959829428144410796
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052901 (A170827 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A065554.P4959829428144410796

namespace A065554

/-- `lt[2, A052901(A170827(n+1))]` -/
def P4959829428144410796.Spec : Prop :=
  ∀ n, (P4959829428144410796.a n : ℤ) = A065554 (n + 1)

end A065554

/-! ## A065554.P18150569303467944445

`eq[3, A052901(A170827(n+2))]+1`
-/

namespace A065554.P18150569303467944445
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052901 (A170827 (n + 2)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A065554.P18150569303467944445

namespace A065554

/-- `eq[3, A052901(A170827(n+2))]+1` -/
def P18150569303467944445.Spec : Prop :=
  ∀ n, (P18150569303467944445.a n : ℤ) = A065554 (n + 1)

end A065554

/-! ## A065554.P753350882305677797

`lt[A038502(A170827(n+1)), A375396(3*(n+1))]`
-/

namespace A065554.P753350882305677797
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038502 (A170827 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375396 (3 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A065554.P753350882305677797

namespace A065554

/-- `lt[A038502(A170827(n+1)), A375396(3*(n+1))]` -/
def P753350882305677797.Spec : Prop :=
  ∀ n, (P753350882305677797.a n : ℤ) = A065554 (n + 1)

end A065554

/-! ## A065554.P874369825482619796

`eq[0, A002379(n+1)%3]`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A065554

/-- `eq[0, A002379(n+1)%3]` -/
def P874369825482619796.Spec : Prop :=
  ∀ n, (P874369825482619796.a n : ℤ) = A065554 (n + 1)

theorem P874369825482619796.correct : P874369825482619796.Spec := by
  intro n
  simp only [A065554, Nat.add_sub_cancel]

end A065554

/-! ## A065554.P6458236288890385376

`eq[2, A259796(n+1)%3]`
-/

namespace A065554.P6458236288890385376
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A259796 (n + 1)) 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A065554.P6458236288890385376

namespace A065554

/-- `eq[2, A259796(n+1)%3]` -/
def P6458236288890385376.Spec : Prop :=
  ∀ n, (P6458236288890385376.a n : ℤ) = A065554 (n + 1)

end A065554

/-! ## A065554.P1634813022184457914

`eq[3, gcd(3, A002380(n+1))]`
-/

namespace A065554.P1634813022184457914
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 3 (A002380 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A065554.P1634813022184457914

namespace A065554

/-- `eq[3, gcd(3, A002380(n+1))]` -/
def P1634813022184457914.Spec : Prop :=
  ∀ n, (P1634813022184457914.a n : ℤ) = A065554 (n + 1)

end A065554

/-! ## A065554.P14567765314589618847

`eq[2, A018886(n+1)%3]`
-/

namespace A065554.P14567765314589618847
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A018886 (n + 1)) 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A065554.P14567765314589618847

namespace A065554

/-- `eq[2, A018886(n+1)%3]` -/
def P14567765314589618847.Spec : Prop :=
  ∀ n, (P14567765314589618847.a n : ℤ) = A065554 (n + 1)

end A065554

/-!
# A065555: Numbers k such that phi(phi(k)) = phi(sigma(k)) where phi is Euler's totient and sigma is the multiplicative sum-of-divisors function.

The programs for A065555, there is no canonical definition to state claims against.
-/

/-! ## A065555.P16641317309328258687

`eq[A010554(n+1), A062401(n+1)]+1`
-/

namespace A065555.P16641317309328258687
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010554 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062401 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A065555.P16641317309328258687

/-! ## A065555.P13094960935853525914

`eq[A000010(A000010(n+1)), A062401(n+1)]+1`
-/

namespace A065555.P13094960935853525914
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A000010 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062401 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A065555.P13094960935853525914

/-! ## A065555.P6978748583861113711

`eq[A000010((A002659(n+1)+1)/2), A010554(n+1)]+1`
-/

namespace A065555.P6978748583861113711
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (SequenceMachineLib.roundAway ((A002659 (n + 1) + 1 : ℚ) / 2)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010554 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A065555.P6978748583861113711

/-!
# A065557: Solutions k of the equation phi(k) = phi(k-1) + phi(k-2). Also known as Phibonacci numbers.

The programs for A065557, there is no canonical definition to state claims against.
-/

/-! ## A065557.P11435551249290773840

`A229552(n+1)+2`
-/

namespace A065557.P11435551249290773840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229552 (n + 1) + 2

end

end A065557.P11435551249290773840

/-! ## A065557.P5234400373358144546

`∪[A065572(n+1), A266164(n+1)]`
-/

namespace A065557.P5234400373358144546
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065572 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266164 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A065557.P5234400373358144546

/-! ## A065557.P12872728992428319807

`A076529(n+1)+1`
-/

namespace A065557.P12872728992428319807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076529 (n + 1) + 1

end

end A065557.P12872728992428319807

/-! ## A065557.P11994742822551394743

`or(1, A076529(Δ[n²]-n))`
-/

namespace A065557.P11994742822551394743
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A076529 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) - (n : ℤ)).toNat)

end

end A065557.P11994742822551394743

/-! ## A065557.P6730622635199240492

`record[or(1, A076529(A152271(n)))]`
-/

namespace A065557.P6730622635199240492
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A076529 (A152271 n).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A065557.P6730622635199240492

/-! ## A065557.P7158394345281536716

`xor(1, A076529(A008619(2*n)))`
-/

namespace A065557.P7158394345281536716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A076529 (A008619 (2 * n)).toNat)

end

end A065557.P7158394345281536716

/-! ## A065557.P9260241619919646643

`xor(1, A076529(A008611(3*n)))`
-/

namespace A065557.P9260241619919646643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A076529 (A008611 (3 * n)).toNat)

end

end A065557.P9260241619919646643

/-! ## A065557.P2481377483265756590

`xor(A033999(n)², A076529(Δ[n²]-n))`
-/

namespace A065557.P2481377483265756590
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A033999 n ^ 2) (A076529 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) - (n : ℤ)).toNat)

end

end A065557.P2481377483265756590

/-!
# A065558: Let G_n be the group of invertible 2 X 2 matrices mod n (sequence A000252). a(n) is the maximal degree of an irreducible representation of G_n.

The programs for A065558, there is no canonical definition to state claims against.
-/

/-! ## A065558.P1274122529940005908

`A007897(n+1)*A049599(n+1)`
-/

namespace A065558.P1274122529940005908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007897 (n + 1) * A049599 (n + 1)

end

end A065558.P1274122529940005908

/-! ## A065558.P9581183123701888403

`A007897(n+1)*A282446(n+1)`
-/

namespace A065558.P9581183123701888403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007897 (n + 1) * A282446 (n + 1)

end

end A065558.P9581183123701888403

/-! ## A065558.P12203990783039116953

`A007897(n+1)*A353898(n+1)`
-/

namespace A065558.P12203990783039116953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007897 (n + 1) * A353898 (n + 1)

end

end A065558.P12203990783039116953

/-! ## A065558.P2276985126110513835

`A073184(n+1)*A290731(n+1)`
-/

namespace A065558.P2276985126110513835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073184 (n + 1) * A290731 (n + 1)

end

end A065558.P2276985126110513835

/-! ## A065558.P11494391327165197137

`A007897(n+1)*A365551(n+1)`
-/

namespace A065558.P11494391327165197137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007897 (n + 1) * A365551 (n + 1)

end

end A065558.P11494391327165197137

/-!
# A065559: Smallest k such that tau(n+k) = tau(k).

The programs for A065559, there is no canonical definition to state claims against.
-/

/-! ## A065559.P12592095776437216517

`A123317(n+2)+A029646(A123317(A097546(n+5)))`
-/

namespace A065559.P12592095776437216517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123317 (n + 2) + A029646 (A123317 (A097546 (n + 5)).toNat).toNat

end

end A065559.P12592095776437216517

/-! ## A065559.P16766659331602026722

`A053669(n+1)^A326038(ceil(2^(n-1)))`
-/

namespace A065559.P16766659331602026722
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A053669 (n + 1) : ℚ) ^ (A326038 ⌈(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉.toNat : ℤ)

end

end A065559.P16766659331602026722

/-! ## A065559.P12355228408109985859

`A342309(n+1)^A326038(ceil(2^(n-1)))`
-/

namespace A065559.P12355228408109985859
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A342309 (n + 1) : ℚ) ^ (A326038 ⌈(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉.toNat : ℤ)

end

end A065559.P12355228408109985859

/-! ## A065559.P11599917016133728634

`A015886(A076084(n+1))%A016885(n)`
-/

namespace A065559.P11599917016133728634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A015886 (A076084 (n + 1)).toNat) (A016885 n)

end

end A065559.P11599917016133728634

/-! ## A065559.P14374327090993898926

`A015886(A255408(n+1))%A016885(n)`
-/

namespace A065559.P14374327090993898926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A015886 (A255408 (n + 1)).toNat) (A016885 n)

end

end A065559.P14374327090993898926

/-!
# A065560: a(n) is the smallest integer k such that floor((1+1/n)^(k+1))/floor((1+1/n)^k) = 1+1/n.

The programs for A065560, there is no canonical definition to state claims against.
-/

/-! ## A065560.P6123230133532621299

`A333733(A276543(2*(n+2)))+A265899(n+1)`
-/

namespace A065560.P6123230133532621299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333733 (A276543 (2 * (n + 2))).toNat + A265899 (n + 1)

end

end A065560.P6123230133532621299

/-! ## A065560.P15026940651934364954

`∑[A107286(A055775(n+2)+n)+1]`
-/

namespace A065560.P15026940651934364954
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107286 (A055775 (n + 2) + (n : ℤ)).toNat + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A065560.P15026940651934364954

/-! ## A065560.P15627642054497847803

`A117707(A084376(n))+A005408(n)`
-/

namespace A065560.P15627642054497847803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117707 (A084376 n).toNat + A005408 n

end

end A065560.P15627642054497847803

/-!
# A065562: a(n) = b(n)-th highest positive integer not equal to any a(k), 1 <= k < n, where {b(n)} = 1, 1, 2, 1, 2, 3, 1, 2, 3, 4, 1, 2, 3, 4, 5, ... (sequence A002260).

The programs for A065562, there is no canonical definition to state claims against.
-/

/-! ## A065562.P5499162957404845965

`A347696(2*A118416(n+1))`
-/

namespace A065562.P5499162957404845965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347696 (2 * A118416 (n + 1)).toNat

end

end A065562.P5499162957404845965

/-! ## A065562.P2042419327815690738

`A347697(2*A118416(n+1))`
-/

namespace A065562.P2042419327815690738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347697 (2 * A118416 (n + 1)).toNat

end

end A065562.P2042419327815690738

/-! ## A065562.P15881850691413612283

`A347696(lcm(A054582(n), A140513(n)))`
-/

namespace A065562.P15881850691413612283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347696 (Int.lcm (A054582 n) (A140513 n))

end

end A065562.P15881850691413612283

/-! ## A065562.P3545074280463527996

`A347696(A140513(n)*A158405(n+1))`
-/

namespace A065562.P3545074280463527996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347696 (A140513 n * A158405 (n + 1)).toNat

end

end A065562.P3545074280463527996

/-! ## A065562.P10791298886681385031

`A347697(A140513(n)*A158405(n+1))`
-/

namespace A065562.P10791298886681385031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347697 (A140513 n * A158405 (n + 1)).toNat

end

end A065562.P10791298886681385031

/-!
# A065563: Product of three consecutive Fibonacci numbers.

The programs for A065563, the canonical program `A065563.P5350296318441326914` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A065563 has offset 1).

The definition of A065563 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A065563.P15941673105173561347

`ogf(2/(1-3x-6x^2+3x^3+x^4))`
-/

namespace A065563.P15941673105173561347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2] [1, -3, -6, 3, 1] n

end

end A065563.P15941673105173561347

namespace A065563

/-- `ogf(2/(1-3x-6x^2+3x^3+x^4))` -/
def P15941673105173561347.Spec : Prop :=
  ∀ n, P15941673105173561347.a n = A065563 (n + 1)

end A065563

/-! ## A065563.P5350296318441326914

`3*a(n-1)+6*a(n-2)-3*a(n-3)-a(n-4)` with `a(0)=2, a(1)=6, a(2)=30, a(3)=120`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A065563

/-- `3*a(n-1)+6*a(n-2)-3*a(n-3)-a(n-4)` -/
def P5350296318441326914.Spec : Prop :=
  ∀ n, P5350296318441326914.a n = A065563 (n + 1)

theorem P5350296318441326914.correct : P5350296318441326914.Spec := by
  intro n
  simp only [A065563, Nat.add_sub_cancel]

end A065563

/-! ## A065563.P17559870167864515511

`2*A001655(n)`
-/

namespace A065563.P17559870167864515511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A001655 n

end

end A065563.P17559870167864515511

namespace A065563

/-- `2*A001655(n)` -/
def P17559870167864515511.Spec : Prop :=
  ∀ n, P17559870167864515511.a n = A065563 (n + 1)

end A065563

/-! ## A065563.P5872327515797480250

`A000045(n+2)^3-(-1)^(n+1)*A000045(n+2)`
-/

namespace A065563.P5872327515797480250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (n + 2) ^ 3 - (-1) ^ (n + 1) * A000045 (n + 2)

end

end A065563.P5872327515797480250

namespace A065563

/-- `A000045(n+2)^3-(-1)^(n+1)*A000045(n+2)` -/
def P5872327515797480250.Spec : Prop :=
  ∀ n, P5872327515797480250.a n = A065563 (n + 1)

end A065563

/-! ## A065563.P8669797716111960466

`A000045(n+1)*A000045(n+2)*A000045(n+3)`
-/

namespace A065563.P8669797716111960466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (n + 1) * A000045 (n + 2) * A000045 (n + 3)

end

end A065563.P8669797716111960466

namespace A065563

/-- `A000045(n+1)*A000045(n+2)*A000045(n+3)` -/
def P8669797716111960466.Spec : Prop :=
  ∀ n, P8669797716111960466.a n = A065563 (n + 1)

end A065563

/-! ## A065563.P1997012376251039139

`∑[2*A066258(n+1)]`
-/

namespace A065563.P1997012376251039139
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A066258 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A065563.P1997012376251039139

namespace A065563

/-- `∑[2*A066258(n+1)]` -/
def P1997012376251039139.Spec : Prop :=
  ∀ n, P1997012376251039139.a n = A065563 (n + 1)

end A065563

/-! ## A065563.P13525708615122701810

`Δ[A064831(n)]*A020695(n)`
-/

namespace A065563.P13525708615122701810
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064831 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A020695 n

end

end A065563.P13525708615122701810

namespace A065563

/-- `Δ[A064831(n)]*A020695(n)` -/
def P13525708615122701810.Spec : Prop :=
  ∀ n, P13525708615122701810.a n = A065563 (n + 1)

end A065563

/-! ## A065563.P584299291991835207

`A350473(n+1)+A220363(n)`
-/

namespace A065563.P584299291991835207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350473 (n + 1) + A220363 n

end

end A065563.P584299291991835207

namespace A065563

/-- `A350473(n+1)+A220363(n)` -/
def P584299291991835207.Spec : Prop :=
  ∀ n, P584299291991835207.a n = A065563 (n + 1)

end A065563

/-! ## A065563.P13968135474406319310

`A001654(n+1)*A020695(n)`
-/

namespace A065563.P13968135474406319310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001654 (n + 1) * A020695 n

end

end A065563.P13968135474406319310

namespace A065563

/-- `A001654(n+1)*A020695(n)` -/
def P13968135474406319310.Spec : Prop :=
  ∀ n, P13968135474406319310.a n = A065563 (n + 1)

end A065563

/-! ## A065563.P3490625463384845644

`A001655(n)+∑[A066258(n+1)]`
-/

namespace A065563.P3490625463384845644
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066258 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001655 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A065563.P3490625463384845644

namespace A065563

/-- `A001655(n)+∑[A066258(n+1)]` -/
def P3490625463384845644.Spec : Prop :=
  ∀ n, P3490625463384845644.a n = A065563 (n + 1)

end A065563

/-! ## A065563.P12611980821539569394

`Δ[A020701(n)]*A001654(n+1)`
-/

namespace A065563.P12611980821539569394
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020701 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A001654 (n + 1)

end

end A065563.P12611980821539569394

namespace A065563

/-- `Δ[A020701(n)]*A001654(n+1)` -/
def P12611980821539569394.Spec : Prop :=
  ∀ n, P12611980821539569394.a n = A065563 (n + 1)

end A065563

/-! ## A065563.P5660290163294740651

`∑[A212804(n)]*A001654(n+2)`
-/

namespace A065563.P5660290163294740651
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212804 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A001654 (n + 2)

end

end A065563.P5660290163294740651

namespace A065563

/-- `∑[A212804(n)]*A001654(n+2)` -/
def P5660290163294740651.Spec : Prop :=
  ∀ n, P5660290163294740651.a n = A065563 (n + 1)

end A065563

/-! ## A065563.P13497926115251391875

`2*(A097924(n)-Δ[A099014(n)])`
-/

namespace A065563.P13497926115251391875
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099014 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A097924 n - (f1 (n + 1) - f1 n))

end

end A065563.P13497926115251391875

namespace A065563

/-- `2*(A097924(n)-Δ[A099014(n)])` -/
def P13497926115251391875.Spec : Prop :=
  ∀ n, P13497926115251391875.a n = A065563 (n + 1)

end A065563

/-! ## A065563.P12499171791904737424

`∑[∑[A212804(n)]²]*A020695(n)`
-/

namespace A065563.P12499171791904737424
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212804 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f2 j) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A020695 n

end

end A065563.P12499171791904737424

namespace A065563

/-- `∑[∑[A212804(n)]²]*A020695(n)` -/
def P12499171791904737424.Spec : Prop :=
  ∀ n, P12499171791904737424.a n = A065563 (n + 1)

end A065563

/-! ## A065563.P11688212901705195638

`A066259(n+1)+A066258(n+1)`
-/

namespace A065563.P11688212901705195638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066259 (n + 1) + A066258 (n + 1)

end

end A065563.P11688212901705195638

namespace A065563

/-- `A066259(n+1)+A066258(n+1)` -/
def P11688212901705195638.Spec : Prop :=
  ∀ n, P11688212901705195638.a n = A065563 (n + 1)

end A065563

/-! ## A065563.P4169420069639380382

`A000045(n+1)*A001654(n+2)`
-/

namespace A065563.P4169420069639380382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (n + 1) * A001654 (n + 2)

end

end A065563.P4169420069639380382

namespace A065563

/-- `A000045(n+1)*A001654(n+2)` -/
def P4169420069639380382.Spec : Prop :=
  ∀ n, P4169420069639380382.a n = A065563 (n + 1)

end A065563

/-! ## A065563.P9428337944653957798

`(A001911(n)+2)*A001654(n+1)`
-/

namespace A065563.P9428337944653957798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A001911 n + 2) * A001654 (n + 1)

end

end A065563.P9428337944653957798

namespace A065563

/-- `(A001911(n)+2)*A001654(n+1)` -/
def P9428337944653957798.Spec : Prop :=
  ∀ n, P9428337944653957798.a n = A065563 (n + 1)

end A065563

/-! ## A065563.P8569794322874689979

`A000045(n+2)*A059929(n+1)`
-/

namespace A065563.P8569794322874689979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (n + 2) * A059929 (n + 1)

end

end A065563.P8569794322874689979

namespace A065563

/-- `A000045(n+2)*A059929(n+1)` -/
def P8569794322874689979.Spec : Prop :=
  ∀ n, P8569794322874689979.a n = A065563 (n + 1)

end A065563

/-! ## A065563.P1885669501059003226

`A001654(n+2)*A212804(n+2)`
-/

namespace A065563.P1885669501059003226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001654 (n + 2) * A212804 (n + 2)

end

end A065563.P1885669501059003226

namespace A065563

/-- `A001654(n+2)*A212804(n+2)` -/
def P1885669501059003226.Spec : Prop :=
  ∀ n, P1885669501059003226.a n = A065563 (n + 1)

end A065563

/-! ## A065563.P14191883203706026623

`A006498(2*n+1)*A020695(n)`
-/

namespace A065563.P14191883203706026623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006498 (2 * n + 1) * A020695 n

end

end A065563.P14191883203706026623

namespace A065563

/-- `A006498(2*n+1)*A020695(n)` -/
def P14191883203706026623.Spec : Prop :=
  ∀ n, P14191883203706026623.a n = A065563 (n + 1)

end A065563

/-!
# A065564: Numbers k such that floor((4/3)^(k+1))/floor((4/3)^k) = 4/3.

The programs for A065564, the canonical program `A065564.P8392613647808291143` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A065564 has offset 1).

The definition of A065564 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 188 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A065564.P8392613647808291143

`eq[0, A064628(n+1)%4]`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A065564

/-- `eq[0, A064628(n+1)%4]` -/
def P8392613647808291143.Spec : Prop :=
  ∀ n, (P8392613647808291143.a n : ℤ) = A065564 (n + 1)

theorem P8392613647808291143.correct : P8392613647808291143.Spec := by
  intro n
  simp only [A065564, Nat.add_sub_cancel]

end A065564

/-! ## A065564.P14329201059945718459

`lt[1, val(A064628(n+2)+4, 2)]+1`
-/

namespace A065564.P14329201059945718459
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A064628 (n + 2) + 4).toNat 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A065564.P14329201059945718459

namespace A065564

/-- `lt[1, val(A064628(n+2)+4, 2)]+1` -/
def P14329201059945718459.Spec : Prop :=
  ∀ n, (P14329201059945718459.a n : ℤ) = A065564 (n + 1)

end A065564

/-! ## A065564.P11537621977486864940

`eq[0, A064536(n+1)%4]`
-/

namespace A065564.P11537621977486864940
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A064536 (n + 1)) 4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A065564.P11537621977486864940

namespace A065564

/-- `eq[0, A064536(n+1)%4]` -/
def P11537621977486864940.Spec : Prop :=
  ∀ n, (P11537621977486864940.a n : ℤ) = A065564 (n + 1)

end A065564

/-!
# A065565: a(n) = floor((5/4)^n).

The programs for A065565, the canonical program `A065565.P8726398307398812924` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A065565 has offset 0).

The definition of A065565 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1032 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A065565.P8726398307398812924

`floor((5/4)^n)`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A065565

/-- `floor((5/4)^n)` -/
def P8726398307398812924.Spec : Prop :=
  ∀ n, P8726398307398812924.a n = A065565 n

theorem P8726398307398812924.correct : P8726398307398812924.Spec := by
  intro n
  simp only [A065565]

end A065565

/-! ## A065565.P2838072159954178612

`or(floor(A241203(n+1)/5), A000007(n))`
-/

namespace A065565.P2838072159954178612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ⌊(A241203 (n + 1) : ℚ) / 5⌋ (A000007 n)

end

end A065565.P2838072159954178612

namespace A065565

/-- `or(floor(A241203(n+1)/5), A000007(n))` -/
def P2838072159954178612.Spec : Prop :=
  ∀ n, P2838072159954178612.a n = A065565 n

end A065565

/-! ## A065565.P1821752755068121841

`floor(A241203(n+1)/5)*A014963(A008458(n))`
-/

namespace A065565.P1821752755068121841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A241203 (n + 1) : ℚ) / 5⌋ * A014963 (A008458 n).toNat

end

end A065565.P1821752755068121841

namespace A065565

/-- `floor(A241203(n+1)/5)*A014963(A008458(n))` -/
def P1821752755068121841.Spec : Prop :=
  ∀ n, P1821752755068121841.a n = A065565 n

end A065565

/-! ## A065565.P17694962360426843772

`A297199(A027689(n))+floor(A241203(n+1)/5)`
-/

namespace A065565.P17694962360426843772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297199 (A027689 n).toNat + ⌊(A241203 (n + 1) : ℚ) / 5⌋

end

end A065565.P17694962360426843772

namespace A065565

/-- `A297199(A027689(n))+floor(A241203(n+1)/5)` -/
def P17694962360426843772.Spec : Prop :=
  ∀ n, P17694962360426843772.a n = A065565 n

end A065565

/-! ## A065565.P13671725473287151462

`ceil(A155626(n)/4^n)`
-/

namespace A065565.P13671725473287151462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A155626 n : ℚ) / (4 ^ n : ℚ)⌉

end

end A065565.P13671725473287151462

namespace A065565

/-- `ceil(A155626(n)/4^n)` -/
def P13671725473287151462.Spec : Prop :=
  ∀ n, P13671725473287151462.a n = A065565 n

end A065565

/-! ## A065565.P7680609215918835139

`A000027(floor(A241203(n+1)/5))`
-/

namespace A065565.P7680609215918835139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 ⌊(A241203 (n + 1) : ℚ) / 5⌋.toNat

end

end A065565.P7680609215918835139

namespace A065565

/-- `A000027(floor(A241203(n+1)/5))` -/
def P7680609215918835139.Spec : Prop :=
  ∀ n, P7680609215918835139.a n = A065565 n

end A065565

/-! ## A065565.P15101880317177655324

`A000027(floor(A000351(n)/A000302(n)))`
-/

namespace A065565.P15101880317177655324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 ⌊(A000351 n : ℚ) / (A000302 n : ℚ)⌋.toNat

end

end A065565.P15101880317177655324

namespace A065565

/-- `A000027(floor(A000351(n)/A000302(n)))` -/
def P15101880317177655324.Spec : Prop :=
  ∀ n, P15101880317177655324.a n = A065565 n

end A065565

/-! ## A065565.P3374846167649090967

`A000027(floor(A001869(n)/A001868(n)))`
-/

namespace A065565.P3374846167649090967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 ⌊(A001869 n : ℚ) / (A001868 n : ℚ)⌋.toNat

end

end A065565.P3374846167649090967

namespace A065565

/-- `A000027(floor(A001869(n)/A001868(n)))` -/
def P3374846167649090967.Spec : Prop :=
  ∀ n, P3374846167649090967.a n = A065565 n

end A065565

/-!
# A065568: Sum over all subsets of {1,..,n} of the GCD of the subset.

The programs for A065568, the canonical program `A065568.P15370231775331297256` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A065568 has offset 1).

The definition of A065568 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 332 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A065568.P17207196278541183507

`∑[∑{#}[n, 2^(gcd(#+1, n+1)-1)]]`
-/

namespace A065568.P17207196278541183507
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f2 n + 1), (2 : ℚ) ^ ((Nat.gcd (k + 1) (n + 1) : ℤ) - 1 : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A065568.P17207196278541183507

namespace A065568

/-- `∑[∑{#}[n, 2^(gcd(#+1, n+1)-1)]]` -/
def P17207196278541183507.Spec : Prop :=
  ∀ n, P17207196278541183507.a n = (A065568 (n + 1) : ℚ)

end A065568

/-! ## A065568.P15107219482777507691

`∑[A034738(1+n)]`
-/

namespace A065568.P15107219482777507691
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034738 (1 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A065568.P15107219482777507691

namespace A065568

/-- `∑[A034738(1+n)]` -/
def P15107219482777507691.Spec : Prop :=
  ∀ n, P15107219482777507691.a n = A065568 (n + 1)

end A065568

/-! ## A065568.P11318909528052563629

`∑[A053635(n+1)/2]`
-/

namespace A065568.P11318909528052563629
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A053635 (n + 1) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A065568.P11318909528052563629

namespace A065568

/-- `∑[A053635(n+1)/2]` -/
def P11318909528052563629.Spec : Prop :=
  ∀ n, P11318909528052563629.a n = (A065568 (n + 1) : ℚ)

end A065568

/-! ## A065568.P15370231775331297256

`∑[A393352(n+1)+n]`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A065568

/-- `∑[A393352(n+1)+n]` -/
def P15370231775331297256.Spec : Prop :=
  ∀ n, P15370231775331297256.a n = A065568 (n + 1)

theorem P15370231775331297256.correct : P15370231775331297256.Spec := by
  intro n
  simp only [A065568, Nat.add_sub_cancel]

end A065568

/-! ## A065568.P11229113122882087043

`∑[(n+1)/2*A000031(n+1)]`
-/

namespace A065568.P11229113122882087043
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / 2 * (A000031 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A065568.P11229113122882087043

namespace A065568

/-- `∑[(n+1)/2*A000031(n+1)]` -/
def P11229113122882087043.Spec : Prop :=
  ∀ n, P11229113122882087043.a n = (A065568 (n + 1) : ℚ)

end A065568

/-! ## A065568.P14035180874814160084

`∑[record[A034738(1-(A053644(n)-n))]]`
-/

namespace A065568.P14035180874814160084
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034738 (1 - (A053644 n - (n : ℤ))).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A065568.P14035180874814160084

namespace A065568

/-- `∑[record[A034738(1-(A053644(n)-n))]]` -/
def P14035180874814160084.Spec : Prop :=
  ∀ n, P14035180874814160084.a n = A065568 (n + 1)

end A065568

/-! ## A065568.P13245584179341550853

`∑[A160619(n+1)/4]`
-/

namespace A065568.P13245584179341550853
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A160619 (n + 1) : ℚ) / 4

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A065568.P13245584179341550853

namespace A065568

/-- `∑[A160619(n+1)/4]` -/
def P13245584179341550853.Spec : Prop :=
  ∀ n, P13245584179341550853.a n = (A065568 (n + 1) : ℚ)

end A065568

/-!
# A065569: Smallest k such that omega(n+k) = omega(k).

The programs for A065569, there is no canonical definition to state claims against.
-/

/-! ## A065569.P3685330916610515277

`A377282(n+2)+A000035(A284379(n+1))`
-/

namespace A065569.P3685330916610515277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377282 (n + 2) + A000035 (A284379 (n + 1)).toNat

end

end A065569.P3685330916610515277

/-! ## A065569.P14762591927047388882

`A000015(n+3)-A052330(A052331(n+1))`
-/

namespace A065569.P14762591927047388882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000015 (n + 3) - A052330 (A052331 (n + 1)).toNat

end

end A065569.P14762591927047388882

/-! ## A065569.P934811325456039833

`A377282(n+2)+A001492(A001504(n+3))`
-/

namespace A065569.P934811325456039833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377282 (n + 2) + A001492 (A001504 (n + 3)).toNat

end

end A065569.P934811325456039833

/-! ## A065569.P12375515547394554728

`A377282(n+2)+A019427(A067724(2*(n+2)))`
-/

namespace A065569.P12375515547394554728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377282 (n + 2) + A019427 (A067724 (2 * (n + 2))).toNat

end

end A065569.P12375515547394554728

/-! ## A065569.P11597413309169010597

`A188666(2*n+5)-A052330(A052331(n+1))`
-/

namespace A065569.P11597413309169010597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188666 (2 * n + 5) - A052330 (A052331 (n + 1)).toNat

end

end A065569.P11597413309169010597

/-!
# A065571: Numbers whose decimal digits can be permuted to give a multiple of 11.

The programs for A065571, there is no canonical definition to state claims against.
-/

/-! ## A065571.P8746473740993261934

`A064544(n)-A184955(A306024(n))`
-/

namespace A065571.P8746473740993261934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064544 n - A184955 (A306024 n).toNat

end

end A065571.P8746473740993261934

/-! ## A065571.P7922575113673704317

`A064544(n)-A112802(A304320(n+1))`
-/

namespace A065571.P7922575113673704317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064544 n - A112802 (A304320 (n + 1)).toNat

end

end A065571.P7922575113673704317

/-!
# A065572: Composite numbers k such that phi(k) = phi(k-1) + phi(k-2).

The programs for A065572, there is no canonical definition to state claims against.
-/

/-! ## A065572.P11995201112537665162

`filter[A065557(n+1), A354108(#)]`
-/

namespace A065572.P11995201112537665162
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065557 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354108 (f1 j).toNat = 1) n)

end

end A065572.P11995201112537665162

/-! ## A065572.P12672196793618677881

`filter[A065557(n+1), A354353(#)]`
-/

namespace A065572.P12672196793618677881
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065557 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354353 (f1 j).toNat = 1) n)

end

end A065572.P12672196793618677881

/-! ## A065572.P18288095553125690846

`filter[A065557(n+1), A354819(#)]`
-/

namespace A065572.P18288095553125690846
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065557 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354819 (f1 j).toNat = 1) n)

end

end A065572.P18288095553125690846

/-!
# A065574: Numbers k such that the first k decimal digits < 6 of Pi, read as a base-6 number, form a prime.

The programs for A065574, there is no canonical definition to state claims against.
-/

/-! ## A065574.P15808629855018376931

`record[A144150(3*n+2)%A216824(n+1)]`
-/

namespace A065574.P15808629855018376931
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A144150 (3 * n + 2)) (A216824 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A065574.P15808629855018376931

/-! ## A065574.P17014490107137114486

`A143976(A242574(n+1)+and(n, floor(-(n/2))))`
-/

namespace A065574.P17014490107137114486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143976 (A242574 (n + 1) + Int.land (n : ℤ) ⌊-((n : ℚ) / 2)⌋).toNat

end

end A065574.P17014490107137114486

/-!
# A065577: Number of Goldbach partitions of 10^n.

The programs for A065577, there is no canonical definition to state claims against.
-/

/-! ## A065577.P1789790219011684969

`ceil(A107318(n+1)/2)`
-/

namespace A065577.P1789790219011684969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A107318 (n + 1) : ℚ) / 2⌉

end

end A065577.P1789790219011684969

/-! ## A065577.P4672554291757372203

`round(A107318(n+1)/A040000(n+4))`
-/

namespace A065577.P4672554291757372203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A107318 (n + 1) : ℚ) / (A040000 (n + 4) : ℚ))

end

end A065577.P4672554291757372203

/-! ## A065577.P3590790599640073268

`round(A107318(n+1)/A107279(2*(n+1)))`
-/

namespace A065577.P3590790599640073268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A107318 (n + 1) : ℚ) / (A107279 (2 * (n + 1)) : ℚ))

end

end A065577.P3590790599640073268

/-! ## A065577.P2329257994441555695

`floor((A107318(n+1)+A003849(3*n+4))/2)`
-/

namespace A065577.P2329257994441555695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A107318 (n + 1) + A003849 (3 * n + 4) : ℚ) / 2⌋

end

end A065577.P2329257994441555695

/-! ## A065577.P11466572032019530432

`round(A107318(n+1)/A000005(A124013(n+1)))`
-/

namespace A065577.P11466572032019530432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A107318 (n + 1) : ℚ) / (A000005 (A124013 (n + 1)).toNat : ℚ))

end

end A065577.P11466572032019530432

/-!
# A065580: Smallest prime ending in exactly n 3's.

The programs for A065580, there is no canonical definition to state claims against.
-/

/-! ## A065580.P9411763619521522959

`A245193(A020988(n+1))`
-/

namespace A065580.P9411763619521522959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245193 (A020988 (n + 1)).toNat

end

end A065580.P9411763619521522959

/-!
# A065582: Smallest prime ending in exactly n 9's.

The programs for A065582, there is no canonical definition to state claims against.
-/

/-! ## A065582.P8332965670332616362

`A037071(∑[A287022(n)])`
-/

namespace A065582.P8332965670332616362
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287022 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037071 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A065582.P8332965670332616362

/-! ## A065582.P12915542633961852088

`A037071(∑[A290544(n)])`
-/

namespace A065582.P12915542633961852088
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290544 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037071 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A065582.P12915542633961852088

/-! ## A065582.P9620273364976509128

`A037071(A037336(n+1))`
-/

namespace A065582.P9620273364976509128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037071 (A037336 (n + 1)).toNat

end

end A065582.P9620273364976509128

/-! ## A065582.P12765715743194722293

`A037071(A037443(n+1))`
-/

namespace A065582.P12765715743194722293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037071 (A037443 (n + 1)).toNat

end

end A065582.P12765715743194722293

/-!
# A065583: Sum of numbers which in base n have (n-1) distinct nonzero digits.

The programs for A065583, the canonical program `A065583.P14868295771357926147` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A065583 has offset 1).

The definition of A065583 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A065583.P14868295771357926147

`A001710(n+1)*A060072(n+1)`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A065583

/-- `A001710(n+1)*A060072(n+1)` -/
def P14868295771357926147.Spec : Prop :=
  ∀ n, P14868295771357926147.a n = A065583 (n + 1)

theorem P14868295771357926147.correct : P14868295771357926147.Spec := by
  intro n
  simp only [A065583, Nat.add_sub_cancel]

end A065583

/-! ## A065583.P18105791637837959294

`C(n+1, 2)*∑{#}[n-1, (n+1)^#*(n-1)!]`
-/

namespace A065583.P18105791637837959294
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (n + 1) 2 * (∑ k ∈ Finset.range (f1 n + 1).toNat, (n + 1) ^ k * Nat.factorial ((n : ℤ) - 1).toNat)

end

end A065583.P18105791637837959294

namespace A065583

/-- `C(n+1, 2)*∑{#}[n-1, (n+1)^#*(n-1)!]` -/
def P18105791637837959294.Spec : Prop :=
  ∀ n, (P18105791637837959294.a n : ℤ) = A065583 (n + 1)

end A065583

/-! ## A065583.P7209612823232974935

`n/2*A059522(n+1)`
-/

namespace A065583.P7209612823232974935
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / 2 * (A059522 (n + 1) : ℚ)

end

end A065583.P7209612823232974935

namespace A065583

/-- `n/2*A059522(n+1)` -/
def P7209612823232974935.Spec : Prop :=
  ∀ n, P7209612823232974935.a n = (A065583 (n + 1) : ℚ)

end A065583

/-! ## A065583.P17657359107835420834

`(n+1)!/2*A060072(n+1)`
-/

namespace A065583.P17657359107835420834
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (n + 1) : ℚ) / 2 * (A060072 (n + 1) : ℚ)

end

end A065583.P17657359107835420834

namespace A065583

/-- `(n+1)!/2*A060072(n+1)` -/
def P17657359107835420834.Spec : Prop :=
  ∀ n, P17657359107835420834.a n = (A065583 (n + 1) : ℚ)

end A065583

/-! ## A065583.P7395393743177722961

`Δ[A093468(n+1)]*A060072(n+1)`
-/

namespace A065583.P7395393743177722961
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093468 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A060072 (n + 1)

end

end A065583.P7395393743177722961

namespace A065583

/-- `Δ[A093468(n+1)]*A060072(n+1)` -/
def P7395393743177722961.Spec : Prop :=
  ∀ n, P7395393743177722961.a n = A065583 (n + 1)

end A065583

/-!
# A065584: Smallest prime beginning with exactly n 1's.

The programs for A065584, there is no canonical definition to state claims against.
-/

/-! ## A065584.P4003519565694735945

`A096497(n+1)%A046883(A046879(n))`
-/

namespace A065584.P4003519565694735945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A096497 (n + 1)) (A046883 (A046879 n).toNat)

end

end A065584.P4003519565694735945

/-!
# A065585: Smallest prime beginning with exactly n 2's.

The programs for A065585, there is no canonical definition to state claims against.
-/

/-! ## A065585.P5429753868136571975

`A068103(n)+A000035(A000165(n))`
-/

namespace A065585.P5429753868136571975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068103 n + A000035 (A000165 n).toNat

end

end A065585.P5429753868136571975

/-! ## A065585.P7785159320986515910

`A068103(n)+A000035(A000172(n))`
-/

namespace A065585.P7785159320986515910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068103 n + A000035 (A000172 n).toNat

end

end A065585.P7785159320986515910

/-!
# A065589: Smallest prime beginning with exactly n 6's.

The programs for A065589, there is no canonical definition to state claims against.
-/

/-! ## A065589.P8045652870160939052

`A018800(or(2, floor(2/3*10^n)))`
-/

namespace A065589.P8045652870160939052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018800 (Int.lor 2 ⌊(2 : ℚ) / 3 * (10 ^ n : ℚ)⌋).toNat

end

end A065589.P8045652870160939052

/-!
# A065590: Smallest prime beginning with exactly n 7's.

The programs for A065590, there is no canonical definition to state claims against.
-/

/-! ## A065590.P13260425560665530649

`A018800(or(A002281(n), A246398(n)))`
-/

namespace A065590.P13260425560665530649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018800 (Int.lor (A002281 n) (A246398 n)).toNat

end

end A065590.P13260425560665530649

/-!
# A065592: Smallest prime beginning with exactly n 9's.

The programs for A065592, there is no canonical definition to state claims against.
-/

/-! ## A065592.P1155270826695480614

`A018800(A288538(10^n))`
-/

namespace A065592.P1155270826695480614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018800 (A288538 (10 ^ n)).toNat

end

end A065592.P1155270826695480614

/-!
# A065593: First re-appearance of first n digits in decimal expansion of Pi.

The programs for A065593, there is no canonical definition to state claims against.
-/

/-! ## A065593.P16968610471424869974

`A081876(n+1)+1`
-/

namespace A065593.P16968610471424869974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081876 (n + 1) + 1

end

end A065593.P16968610471424869974

/-! ## A065593.P5327667450144395734

`A392937(∑[n]+1)`
-/

namespace A065593.P5327667450144395734
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392937 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A065593.P5327667450144395734

/-! ## A065593.P16162779673599514832

`record[A392937(n+1)]`
-/

namespace A065593.P16162779673599514832
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392937 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A065593.P16162779673599514832

/-!
# A065594: a(n) = A036981(n)/(2n)!.

The programs for A065594, there is no canonical definition to state claims against.
-/

/-! ## A065594.P17313048779090768303

`A036981(n)/(2*n)!`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A065594.P17313048779090768303
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A036981 n : ℚ) / (Nat.factorial (2 * n) : ℚ)

end

end A065594.P17313048779090768303

/-! ## A065594.P1123064942376121153

`(2*n+1)*A000438(n+1)`
-/

namespace A065594.P1123064942376121153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n + 1 : ℤ) * A000438 (n + 1)

end

end A065594.P1123064942376121153

/-!
# A065595: a(n) = (sum of first n primes)^2 - sum of squares of first n primes.

The programs for A065595, the canonical program `A065595.P17601801696022809177` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A065595 has offset 1).

The definition of A065595 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A065595.P17601801696022809177

`A007504(n+1)²-A024450(n+1)`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A065595

/-- `A007504(n+1)²-A024450(n+1)` -/
def P17601801696022809177.Spec : Prop :=
  ∀ n, P17601801696022809177.a n = A065595 (n + 1)

theorem P17601801696022809177.correct : P17601801696022809177.Spec := by
  intro n
  simp only [A065595, Nat.add_sub_cancel]

end A065595

/-! ## A065595.P2495089217866518805

`2*A024447(n+1)`
-/

namespace A065595.P2495089217866518805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A024447 (n + 1)

end

end A065595.P2495089217866518805

namespace A065595

/-- `2*A024447(n+1)` -/
def P2495089217866518805.Spec : Prop :=
  ∀ n, P2495089217866518805.a n = A065595 (n + 1)

end A065595

/-! ## A065595.P6772945303477389706

`∑[2*A339194(1+n)]`
-/

namespace A065595.P6772945303477389706
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A339194 (1 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A065595.P6772945303477389706

namespace A065595

/-- `∑[2*A339194(1+n)]` -/
def P6772945303477389706.Spec : Prop :=
  ∀ n, P6772945303477389706.a n = A065595 (n + 1)

end A065595

/-! ## A065595.P4121122242449047341

`∑[A007504(n)*A100484(n+1)]`
-/

namespace A065595.P4121122242449047341
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n * A100484 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A065595.P4121122242449047341

namespace A065595

/-- `∑[A007504(n)*A100484(n+1)]` -/
def P4121122242449047341.Spec : Prop :=
  ∀ n, P4121122242449047341.a n = A065595 (n + 1)

end A065595

/-! ## A065595.P16183929655958077382

`A024447(n+1)+∑[A339194(n+1)]`
-/

namespace A065595.P16183929655958077382
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339194 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024447 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A065595.P16183929655958077382

namespace A065595

/-- `A024447(n+1)+∑[A339194(n+1)]` -/
def P16183929655958077382.Spec : Prop :=
  ∀ n, P16183929655958077382.a n = A065595 (n + 1)

end A065595

/-! ## A065595.P1837192441024945219

`∑[A034960(n+1)]-A024450(n+1)`
-/

namespace A065595.P1837192441024945219
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034960 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A024450 (n + 1)

end

end A065595.P1837192441024945219

namespace A065595

/-- `∑[A034960(n+1)]-A024450(n+1)` -/
def P1837192441024945219.Spec : Prop :=
  ∀ n, P1837192441024945219.a n = A065595 (n + 1)

end A065595

/-! ## A065595.P5989269523047469544

`∑[2*A000040(n+1)*A007504(n)]`
-/

namespace A065595.P5989269523047469544
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A000040 (n + 1) * A007504 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A065595.P5989269523047469544

namespace A065595

/-- `∑[2*A000040(n+1)*A007504(n)]` -/
def P5989269523047469544.Spec : Prop :=
  ∀ n, P5989269523047469544.a n = A065595 (n + 1)

end A065595

/-! ## A065595.P3872860435972557528

`∑[Δ[A007504(n)²]-A001248(n+1)]`
-/

namespace A065595.P3872860435972557528
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n - A001248 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A065595.P3872860435972557528

namespace A065595

/-- `∑[Δ[A007504(n)²]-A001248(n+1)]` -/
def P3872860435972557528.Spec : Prop :=
  ∀ n, P3872860435972557528.a n = A065595 (n + 1)

end A065595

/-! ## A065595.P15686624846578312978

`A065762(n+1)-2*A024450(n+1)`
-/

namespace A065595.P15686624846578312978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065762 (n + 1) - 2 * A024450 (n + 1)

end

end A065595.P15686624846578312978

namespace A065595

/-- `A065762(n+1)-2*A024450(n+1)` -/
def P15686624846578312978.Spec : Prop :=
  ∀ n, P15686624846578312978.a n = A065595 (n + 1)

theorem P15686624846578312978.correct : P15686624846578312978.Spec := by
  intro n
  simp only [A065595, Nat.add_sub_cancel, A065595.P15686624846578312978.a, A065595.P17601801696022809177.a, A007504, A007504.P14310834286015847203.a, A024450, A024450.P15958741677867055762.a, A065762, A065762.P7191930492121283132.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A014284, A014284.P18183547548072881472.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A065595

/-! ## A065595.P525554478350829207

`2*(A357251(n+1)-A024450(n+1))`
-/

namespace A065595.P525554478350829207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A357251 (n + 1) - A024450 (n + 1))

end

end A065595.P525554478350829207

namespace A065595

/-- `2*(A357251(n+1)-A024450(n+1))` -/
def P525554478350829207.Spec : Prop :=
  ∀ n, P525554478350829207.a n = A065595 (n + 1)

end A065595

/-! ## A065595.P12242304524622302779

`∑[2*(A034960(n+1)-A143215(n+1))]`
-/

namespace A065595.P12242304524622302779
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A034960 (n + 1) - A143215 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A065595.P12242304524622302779

namespace A065595

/-- `∑[2*(A034960(n+1)-A143215(n+1))]` -/
def P12242304524622302779.Spec : Prop :=
  ∀ n, P12242304524622302779.a n = A065595 (n + 1)

end A065595

/-! ## A065595.P10280060277229409804

`2*(A024522(n+2)-∑[A000040(n+1)])`
-/

namespace A065595.P10280060277229409804
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A024522 (n + 2) - ∑ j ∈ Finset.range (n + 1), f1 j)

end

end A065595.P10280060277229409804

namespace A065595

/-- `2*(A024522(n+2)-∑[A000040(n+1)])` -/
def P10280060277229409804.Spec : Prop :=
  ∀ n, P10280060277229409804.a n = A065595 (n + 1)

end A065595

/-! ## A065595.P9458433241137385740

`∑[A000040(n+1)]²-∑[A001248(n+1)]`
-/

namespace A065595.P9458433241137385740
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001248 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 - ∑ j ∈ Finset.range (n + 1), f2 j

end

end A065595.P9458433241137385740

namespace A065595

/-- `∑[A000040(n+1)]²-∑[A001248(n+1)]` -/
def P9458433241137385740.Spec : Prop :=
  ∀ n, P9458433241137385740.a n = A065595 (n + 1)

end A065595

/-! ## A065595.P15753432507175965846

`A024447(n+1)+A357251(n+1)-A024450(n+1)`
-/

namespace A065595.P15753432507175965846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024447 (n + 1) + (A357251 (n + 1) - A024450 (n + 1))

end

end A065595.P15753432507175965846

namespace A065595

/-- `A024447(n+1)+A357251(n+1)-A024450(n+1)` -/
def P15753432507175965846.Spec : Prop :=
  ∀ n, P15753432507175965846.a n = A065595 (n + 1)

end A065595

/-!
# A065597: a(0)=0, a(1)=1, a(2)=1; for n >= 3, a(n) = 2*a(n-1)*a(n-2) - a(n-3).

The programs for A065597, the canonical program `A065597.P9393336464240022364` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A065597 has offset 0).

The definition of A065597 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2*a(n-1)*a(n-2)-a(n-3)` (program `A065597.P9393336464240022364`, by `A065597.P9393336464240022364.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A065597.P9393336464240022364

`2*a(n-1)*a(n-2)-a(n-3)` with `a(0)=0, a(1)=1, a(2)=1, a(3)=2, a(4)=3`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A065597

/-- `2*a(n-1)*a(n-2)-a(n-3)` -/
def P9393336464240022364.Spec : Prop :=
  ∀ n, P9393336464240022364.a n = A065597 n

theorem P9393336464240022364.correct : P9393336464240022364.Spec := by
  intro n
  simp only [A065597]

end A065597

/-! ## A065597.P18361835080151231271

`2*a(n-1)*a(n-2)-a(n-3)` with `a(0)=0, a(1)=1, a(2)=1`
-/

namespace A065597.P18361835080151231271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 1] fun n a =>
  2 * (a (n - 1) * a (n - 2)) - a (n - 3)

end

end A065597.P18361835080151231271

namespace A065597

/-- `2*a(n-1)*a(n-2)-a(n-3)` -/
def P18361835080151231271.Spec : Prop :=
  ∀ n, P18361835080151231271.a n = A065597 n

end A065597

/-!
# A065598: a(0)=0, a(1)=1, a(2)=2; for n >= 3, a(n) = 2*a(n-1)*a(n-2) - a(n-3).

The programs for A065598, the canonical program `A065598.P18110081213714271515` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A065598 has offset 0).

The definition of A065598 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2*a(n-1)*a(n-2)-a(n-3)` (program `A065598.P18110081213714271515`, by `A065598.P18110081213714271515.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A065598.P18110081213714271515

`2*a(n-1)*a(n-2)-a(n-3)` with `a(0)=0, a(1)=1, a(2)=2`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A065598

/-- `2*a(n-1)*a(n-2)-a(n-3)` -/
def P18110081213714271515.Spec : Prop :=
  ∀ n, P18110081213714271515.a n = A065598 n

theorem P18110081213714271515.correct : P18110081213714271515.Spec := by
  intro n
  simp only [A065598]

end A065598

/-! ## A065598.P14475971885722082949

`A164878(∏[∏{p}[n+1, #+1]])`
-/

namespace A065598.P14475971885722082949
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), (p + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164878 (∏ j ∈ Finset.range (n + 1), f1 j)

end

end A065598.P14475971885722082949

namespace A065598

/-- `A164878(∏[∏{p}[n+1, #+1]])` -/
def P14475971885722082949.Spec : Prop :=
  ∀ n, P14475971885722082949.a n = A065598 n

end A065598

/-!
# A065599: If n odd, a(n) = n^2 else a(n) = n.

The programs for A065599, the canonical program `A065599.P7928286075118809615` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A065599 has offset 0).

The definition of A065599 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A065599.P2452141179188144921

`n^(n%2+1)`
-/

namespace A065599.P2452141179188144921
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ (n % 2 + 1)

end

end A065599.P2452141179188144921

namespace A065599

/-- `n^(n%2+1)` -/
def P2452141179188144921.Spec : Prop :=
  ∀ n, (P2452141179188144921.a n : ℤ) = A065599 n

end A065599

/-! ## A065599.P16465454291925987661

`ogf((x+2x^2+6x^3-2x^4+x^5)/(1-3x^2+3x^4-x^6))`
-/

namespace A065599.P16465454291925987661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1, 2, 6, -2, 1] [1, 0, -3, 0, 3, 0, -1] n

end

end A065599.P16465454291925987661

namespace A065599

/-- `ogf((x+2x^2+6x^3-2x^4+x^5)/(1-3x^2+3x^4-x^6))` -/
def P16465454291925987661.Spec : Prop :=
  ∀ n, P16465454291925987661.a n = A065599 n

end A065599

/-! ## A065599.P17087028497026263924

`n*(n+1-(n-1)*(-1)^n)/2`
-/

namespace A065599.P17087028497026263924
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) * ((n + 1 : ℤ) - ((n : ℤ) - 1) * (-1) ^ n) : ℚ) / 2

end

end A065599.P17087028497026263924

namespace A065599

/-- `n*(n+1-(n-1)*(-1)^n)/2` -/
def P17087028497026263924.Spec : Prop :=
  ∀ n, P17087028497026263924.a n = (A065599 n : ℚ)

theorem P17087028497026263924.correct : P17087028497026263924.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 | 3 | 4 | 5 =>
      simp [A065599, Nat.add_sub_cancel, A065599.P17087028497026263924.a, A065599.P7928286075118809615.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 6 =>
      have h2 := ih (m + 4) (by omega)
      have h4 := ih (m + 2) (by omega)
      have h6 := ih m (by omega)
      simp only [A065599, Nat.add_sub_cancel, A065599.P17087028497026263924.a, A065599.P7928286075118809615.a, SequenceMachineLib.memo_apply] at h2 h4 h6 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 6 - 2 = m + 4 by omega, show m + 6 - 4 = m + 2 by omega, show m + 6 - 6 = m by omega, show m + 4 < m + 6 by omega, show m + 2 < m + 6 by omega, show m < m + 6 by omega, ↓reduceIte]
      push_cast at h2 h4 h6 ⊢
      rw [← h2, ← h4, ← h6]
      first | ring1 | ring_nf | (field_simp; (first | ring1 | ring_nf)) | omega | (push_cast; ring_nf) | nlinarith

end A065599

/-! ## A065599.P7928286075118809615

`3*a(n-2)-3*a(n-4)+a(n-6)` with `a(0)=0, a(1)=1, a(2)=2, a(3)=9, a(4)=4, a(5)=25`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A065599

/-- `3*a(n-2)-3*a(n-4)+a(n-6)` -/
def P7928286075118809615.Spec : Prop :=
  ∀ n, P7928286075118809615.a n = A065599 n

theorem P7928286075118809615.correct : P7928286075118809615.Spec := by
  intro n
  simp only [A065599]

end A065599

/-! ## A065599.P15520484507350888864

`root(n, gcd(2, n))²`
-/

namespace A065599.P15520484507350888864
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((n : ℝ) ^ (1 / (Nat.gcd 2 n : ℝ))) ^ 2

end

end A065599.P15520484507350888864

namespace A065599

/-- `root(n, gcd(2, n))²` -/
def P15520484507350888864.Spec : Prop :=
  ∀ n, P15520484507350888864.a n = (A065599 n : ℝ)

end A065599

/-! ## A065599.P8654740204862772884

`n^(1+n%2)`
-/

namespace A065599.P8654740204862772884
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ (1 + n % 2)

end

end A065599.P8654740204862772884

namespace A065599

/-- `n^(1+n%2)` -/
def P8654740204862772884.Spec : Prop :=
  ∀ n, (P8654740204862772884.a n : ℤ) = A065599 n

end A065599

/-! ## A065599.P5474572781154065744

`n^(and(1, n)+1)`
-/

namespace A065599.P5474572781154065744
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ (Nat.land 1 n + 1)

end

end A065599.P5474572781154065744

namespace A065599

/-- `n^(and(1, n)+1)` -/
def P5474572781154065744.Spec : Prop :=
  ∀ n, (P5474572781154065744.a n : ℤ) = A065599 n

end A065599

/-! ## A065599.P10903481042601259308

`n^2^and(1, n)`
-/

namespace A065599.P10903481042601259308
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2 ^ Nat.land 1 n

end

end A065599.P10903481042601259308

namespace A065599

/-- `n^2^and(1, n)` -/
def P10903481042601259308.Spec : Prop :=
  ∀ n, (P10903481042601259308.a n : ℤ) = A065599 n

end A065599

/-! ## A065599.P7251919066767202979

`n*C(n, and(1, n))`
-/

namespace A065599.P7251919066767202979
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * Nat.choose n (Nat.land 1 n)

end

end A065599.P7251919066767202979

namespace A065599

/-- `n*C(n, and(1, n))` -/
def P7251919066767202979.Spec : Prop :=
  ∀ n, (P7251919066767202979.a n : ℤ) = A065599 n

end A065599

/-! ## A065599.P16193522595226435875

`n^Δ[or(1, n)]!`
-/

namespace A065599.P16193522595226435875
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ Nat.factorial ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A065599.P16193522595226435875

namespace A065599

/-- `n^Δ[or(1, n)]!` -/
def P16193522595226435875.Spec : Prop :=
  ∀ n, (P16193522595226435875.a n : ℤ) = A065599 n

end A065599

/-! ## A065599.P15704223450707457416

`n^gcd(4, n²+1)`
-/

namespace A065599.P15704223450707457416
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ Nat.gcd 4 (n ^ 2 + 1)

end

end A065599.P15704223450707457416

namespace A065599

/-- `n^gcd(4, n²+1)` -/
def P15704223450707457416.Spec : Prop :=
  ∀ n, (P15704223450707457416.a n : ℤ) = A065599 n

end A065599

/-! ## A065599.P10366479505666770738

`root(n, 2-and(1, n))²`
-/

namespace A065599.P10366479505666770738
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((n : ℝ) ^ (1 / (2 - (Nat.land 1 n : ℤ) : ℝ))) ^ 2

end

end A065599.P10366479505666770738

namespace A065599

/-- `root(n, 2-and(1, n))²` -/
def P10366479505666770738.Spec : Prop :=
  ∀ n, P10366479505666770738.a n = (A065599 n : ℝ)

end A065599

/-! ## A065599.P6276731541917983006

`n^(or(n, -2)+3)`
-/

namespace A065599.P6276731541917983006
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) ^ (Int.lor (n : ℤ) (-2) + 3 : ℤ)

end

end A065599.P6276731541917983006

namespace A065599

/-- `n^(or(n, -2)+3)` -/
def P6276731541917983006.Spec : Prop :=
  ∀ n, P6276731541917983006.a n = (A065599 n : ℚ)

end A065599

/-! ## A065599.P8117167993476707418

`n^((2*n)%4)!`
-/

namespace A065599.P8117167993476707418
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ Nat.factorial (2 * n % 4)

end

end A065599.P8117167993476707418

namespace A065599

/-- `n^((2*n)%4)!` -/
def P8117167993476707418.Spec : Prop :=
  ∀ n, (P8117167993476707418.a n : ℤ) = A065599 n

end A065599

/-! ## A065599.P5002767131186485326

`n^C(2, n²%2)`
-/

namespace A065599.P5002767131186485326
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ Nat.choose 2 (n ^ 2 % 2)

end

end A065599.P5002767131186485326

namespace A065599

/-- `n^C(2, n²%2)` -/
def P5002767131186485326.Spec : Prop :=
  ∀ n, (P5002767131186485326.a n : ℤ) = A065599 n

end A065599

/-! ## A065599.P13600239208987821628

`gcd(n*or(1, n), n²)`
-/

namespace A065599.P13600239208987821628
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd (n * Nat.lor 1 n) (n ^ 2)

end

end A065599.P13600239208987821628

namespace A065599

/-- `gcd(n*or(1, n), n²)` -/
def P13600239208987821628.Spec : Prop :=
  ∀ n, (P13600239208987821628.a n : ℤ) = A065599 n

end A065599

/-! ## A065599.P7507799108297924252

`n*C(n, (n+2)%2)`
-/

namespace A065599.P7507799108297924252
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * Nat.choose n ((n + 2) % 2)

end

end A065599.P7507799108297924252

namespace A065599

/-- `n*C(n, (n+2)%2)` -/
def P7507799108297924252.Spec : Prop :=
  ∀ n, (P7507799108297924252.a n : ℤ) = A065599 n

end A065599

/-! ## A065599.P18204858937176785960

`n*gcd(2*n, or(1, n))`
-/

namespace A065599.P18204858937176785960
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * Nat.gcd (2 * n) (Nat.lor 1 n)

end

end A065599.P18204858937176785960

namespace A065599

/-- `n*gcd(2*n, or(1, n))` -/
def P18204858937176785960.Spec : Prop :=
  ∀ n, (P18204858937176785960.a n : ℤ) = A065599 n

end A065599

/-! ## A065599.P1688818816675178271

`n*C(n, Δ[floor(n/2)])`
-/

namespace A065599.P1688818816675178271
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℚ) / 2⌋

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * Nat.choose n (f1 (n + 1) - f1 n).toNat

end

end A065599.P1688818816675178271

namespace A065599

/-- `n*C(n, Δ[floor(n/2)])` -/
def P1688818816675178271.Spec : Prop :=
  ∀ n, (P1688818816675178271.a n : ℤ) = A065599 n

end A065599

/-! ## A065599.P11883586532446694419

`sqrt(n^(xor(1, n+3)-n))`
-/

namespace A065599.P11883586532446694419
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt ((n : ℚ) ^ ((Nat.xor 1 (n + 3) : ℤ) - (n : ℤ) : ℤ) : ℝ)

end

end A065599.P11883586532446694419

namespace A065599

/-- `sqrt(n^(xor(1, n+3)-n))` -/
def P11883586532446694419.Spec : Prop :=
  ∀ n, P11883586532446694419.a n = (A065599 n : ℝ)

end A065599

