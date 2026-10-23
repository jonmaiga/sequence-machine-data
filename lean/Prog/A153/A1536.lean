import SequenceMachineLib
import Mathlib.Tactic
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C003
import Seq.B000.C004
import Seq.B000.C005
import Seq.B000.C006
import Seq.B000.C009
import Seq.B000.C013
import Seq.B000.C014
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C030
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C036
import Seq.B001.C000
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C008
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C003
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
import Seq.B007.C001
import Seq.B008.C000
import Seq.B009.C000
import Seq.B010.C000
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
# A153600: a(n) = ((9 + sqrt(3))^n - (9 - sqrt(3))^n)/(2*sqrt(3)).

The programs for A153600, the canonical program `A153600.P4439100457705882290` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A153600 has offset 1).

The definition of A153600 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A153600.P4439100457705882290

`18*a(n-1)-78*a(n-2)` with `a(0)=1, a(1)=18`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A153600

/-- `18*a(n-1)-78*a(n-2)` -/
def P4439100457705882290.Spec : Prop :=
  ∀ n, P4439100457705882290.a n = A153600 (n + 1)

theorem P4439100457705882290.correct : P4439100457705882290.Spec := by
  intro n
  simp only [A153600, Nat.add_sub_cancel]

end A153600

/-! ## A153600.P16801355231539878701

`((9+sqrt(3))^(n+1)-(9-sqrt(3))^(n+1))/(2*sqrt(3))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A153600.P16801355231539878701
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((9 + Real.sqrt (3 : ℝ)) ^ (n + 1) - (9 - Real.sqrt (3 : ℝ)) ^ (n + 1)) / (2 * Real.sqrt (3 : ℝ))

end

end A153600.P16801355231539878701

namespace A153600

/-- `((9+sqrt(3))^(n+1)-(9-sqrt(3))^(n+1))/(2*sqrt(3))` -/
def P16801355231539878701.Spec : Prop :=
  ∀ n, P16801355231539878701.a n = (A153600 (n + 1) : ℝ)

end A153600

/-! ## A153600.P16058498698055149643

`A152056(n)+9*a(n-1)` with `a(0)=1`
-/

namespace A153600.P16058498698055149643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A152056 n + 9 * a (n - 1)

end

end A153600.P16058498698055149643

namespace A153600

/-- `A152056(n)+9*a(n-1)` -/
def P16058498698055149643.Spec : Prop :=
  ∀ n, P16058498698055149643.a n = A153600 (n + 1)

end A153600

/-!
# A153601: Numbers representable as Phi(k,2), the k-th cyclotomic polynomial evaluated at 2, for some k>0.

The programs for A153601, there is no canonical definition to state claims against.
-/

/-! ## A153601.P11639464696402761338

`A105603(A206710(n+2))`
-/

namespace A153601.P11639464696402761338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105603 (A206710 (n + 2)).toNat

end

end A153601.P11639464696402761338

/-! ## A153601.P4804101897431664723

`eq[1, char[A019320(n+1)]]`
-/

namespace A153601.P4804101897431664723
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019320 (n + 1)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A153601.P4804101897431664723

/-! ## A153601.P4225895867710850730

`eq[1, char[A105603(n+1)]]`
-/

namespace A153601.P4225895867710850730
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105603 (n + 1)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A153601.P4225895867710850730

/-! ## A153601.P12484218702128595537

`lt[A000007(n), char[A019320(n+1)]]`
-/

namespace A153601.P12484218702128595537
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019320 (n + 1)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A153601.P12484218702128595537

/-! ## A153601.P11761918457657861194

`lt[A000038(n), char[A019320(n+1)]]`
-/

namespace A153601.P11761918457657861194
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019320 (n + 1)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A153601.P11761918457657861194

/-!
# A153602: Primes in A153601.

The programs for A153602, there is no canonical definition to state claims against.
-/

/-! ## A153602.P10187838822083512387

`∩[A144755(n+1), A153601(n+1)]`
-/

namespace A153602.P10187838822083512387
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144755 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153601 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A153602.P10187838822083512387

/-! ## A153602.P14352490352499312431

`p?[A153601(n+1)]`
-/

namespace A153602.P14352490352499312431
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153601 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A153602.P14352490352499312431

/-! ## A153602.P2309256602946762124

`record[∑{p}[A153601(n+2), #]]`
-/

namespace A153602.P2309256602946762124
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153601 (n + 2)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n).natAbs, p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A153602.P2309256602946762124

/-! ## A153602.P8025311214927368044

`p?[record[A153601(A082854(n))]]`
-/

namespace A153602.P8025311214927368044
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153601 (A082854 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A153602.P8025311214927368044

/-! ## A153602.P9664234526569841018

`p?[record[A153601(A133310(n))]]`
-/

namespace A153602.P9664234526569841018
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153601 (A133310 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A153602.P9664234526569841018

/-!
# A153608: Decimal expansion of log_18 (6).

The programs for A153608, there is no canonical definition to state claims against.
-/

/-! ## A153608.P2661237505786622371

`9-A153021(n)`
-/

namespace A153608.P2661237505786622371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 - A153021 n

end

end A153608.P2661237505786622371

/-!
# A153614: Decimal expansion of log_24 (6).

The programs for A153614, there is no canonical definition to state claims against.
-/

/-! ## A153614.P5711635195135661473

`9-A153200(n)`
-/

namespace A153614.P5711635195135661473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 - A153200 n

end

end A153614.P5711635195135661473

/-!
# A153615: Decimal expansion of log_4 (7).

The programs for A153615, there is no canonical definition to state claims against.
-/

/-! ## A153615.P8027965176688491783

`A153201(n)+A154464(n)-A154155(n)`
-/

namespace A153615.P8027965176688491783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153201 (n + 1) + (A154464 (n + 1) - A154155 (n + 1))

end

end A153615.P8027965176688491783

/-! ## A153615.P8637740763426515670

`A153460(n)+A154464(n)-A154197(n)`
-/

namespace A153615.P8637740763426515670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153460 (n + 1) + (A154464 (n + 1) - A154197 (n + 1))

end

end A153615.P8637740763426515670

/-!
# A153624: Decimal expansion of log_14 (7).

The programs for A153624, there is no canonical definition to state claims against.
-/

/-! ## A153624.P5087071688274049726

`9-A152780(n)`
-/

namespace A153624.P5087071688274049726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 - A152780 n

end

end A153624.P5087071688274049726

/-!
# A153631: Numbers k such that k modulo (product of digits of k) = (sum of digits of k).

The programs for A153631, there is no canonical definition to state claims against.
-/

/-! ## A153631.P16840032034447272257

`A085820(2*(n+5))`
-/

namespace A153631.P16840032034447272257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085820 (2 * (n + 5))

end

end A153631.P16840032034447272257

/-! ## A153631.P8108783860178688416

`A118759(A344375(n+1))`
-/

namespace A153631.P8108783860178688416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118759 (A344375 (n + 1)).toNat

end

end A153631.P8108783860178688416

/-! ## A153631.P5294369977588682049

`A000188(A344375(n+1)²)`
-/

namespace A153631.P5294369977588682049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000188 (A344375 (n + 1) ^ 2).toNat

end

end A153631.P5294369977588682049

/-! ## A153631.P7210730911449528150

`A000194(A344375(n+1)²)`
-/

namespace A153631.P7210730911449528150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000194 (A344375 (n + 1) ^ 2).toNat

end

end A153631.P7210730911449528150

/-! ## A153631.P3275987258460474393

`∩[A075821(n+1), A344375(n+1)]`
-/

namespace A153631.P3275987258460474393
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075821 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344375 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A153631.P3275987258460474393

/-!
# A153632: Decimal expansion of log_21 (7).

The programs for A153632, there is no canonical definition to state claims against.
-/

/-! ## A153632.P15254955155394237996

`9-A153097(n)`
-/

namespace A153632.P15254955155394237996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 - A153097 n

end

end A153632.P15254955155394237996

/-!
# A153635: Primes of the form 4*x^3 + 27*y^2, with x positive or negative.

The programs for A153635, there is no canonical definition to state claims against.
-/

/-! ## A153635.P12971896415598647840

`∪[A006530(A153636(n+1)), A154291(n+1)]`
-/

namespace A153635.P12971896415598647840
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A153636 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154291 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A153635.P12971896415598647840

/-! ## A153635.P11065067453634483729

`∩[A076503(n+1), A106312(n+1)]`
-/

namespace A153635.P11065067453634483729
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076503 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106312 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A153635.P11065067453634483729

/-! ## A153635.P9641295873091906877

`∩[A106312(n+1), A129806(n+1)]`
-/

namespace A153635.P9641295873091906877
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106312 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129806 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A153635.P9641295873091906877

/-!
# A153636: Primes of the form 4x^3 + 27y^2, with x>0.

The programs for A153636, there is no canonical definition to state claims against.
-/

/-! ## A153636.P14313673972034013994

`A153635(A120722(2*n+3)-A203568(n))`
-/

namespace A153636.P14313673972034013994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153635 (A120722 (2 * n + 3) - A203568 n).toNat

end

end A153636.P14313673972034013994

/-!
# A153637: A triangular sequence with row sums (3^(n - 1)*(n + 1)!) starting at n=1 which was calculated by steps.

The programs for A153637, there is no canonical definition to state claims against.
-/

/-! ## A153637.P14608999914144076941

`A107753(A032934(n+2))`
-/

namespace A153637.P14608999914144076941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107753 (A032934 (n + 2)).toNat

end

end A153637.P14608999914144076941

/-!
# A153638: Odiousness of triangular numbers.

The programs for A153638, the canonical program `A153638.P5475355786844467178` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A153638 has offset 0).

The definition of A153638 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A153638.P7568954491367333865

`1-A153639(n)`
-/

namespace A153638.P7568954491367333865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A153639 n

end

end A153638.P7568954491367333865

namespace A153638

/-- `1-A153639(n)` -/
def P7568954491367333865.Spec : Prop :=
  ∀ n, P7568954491367333865.a n = A153638 n

end A153638

/-! ## A153638.P5475355786844467178

`A050493(n)%2`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A153638

/-- `A050493(n)%2` -/
def P5475355786844467178.Spec : Prop :=
  ∀ n, P5475355786844467178.a n = A153638 n

theorem P5475355786844467178.correct : P5475355786844467178.Spec := by
  intro n
  simp only [A153638]

end A153638

/-! ## A153638.P17485203855573071763

`1-A228039(Δ[n²])`
-/

namespace A153638.P17485203855573071763
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A228039 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A153638.P17485203855573071763

namespace A153638

/-- `1-A228039(Δ[n²])` -/
def P17485203855573071763.Spec : Prop :=
  ∀ n, P17485203855573071763.a n = A153638 n

end A153638

/-! ## A153638.P7345212657036937638

`A000035(A050493(n))`
-/

namespace A153638.P7345212657036937638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A050493 n).toNat

end

end A153638.P7345212657036937638

namespace A153638

/-- `A000035(A050493(n))` -/
def P7345212657036937638.Spec : Prop :=
  ∀ n, P7345212657036937638.a n = A153638 n

end A153638

/-! ## A153638.P10381716135363849950

`and(A016760(n), A050493(n))`
-/

namespace A153638.P10381716135363849950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A016760 n) (A050493 n)

end

end A153638.P10381716135363849950

namespace A153638

/-- `and(A016760(n), A050493(n))` -/
def P10381716135363849950.Spec : Prop :=
  ∀ n, P10381716135363849950.a n = A153638 n

end A153638

/-! ## A153638.P13053354823921813216

`and(A016820(n), A050493(n))`
-/

namespace A153638.P13053354823921813216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A016820 n) (A050493 n)

end

end A153638.P13053354823921813216

namespace A153638

/-- `and(A016820(n), A050493(n))` -/
def P13053354823921813216.Spec : Prop :=
  ∀ n, P13053354823921813216.a n = A153638 n

end A153638

/-! ## A153638.P13539809458742749296

`and(A017080(n), A050493(n))`
-/

namespace A153638.P13539809458742749296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A017080 n) (A050493 n)

end

end A153638.P13539809458742749296

namespace A153638

/-- `and(A017080(n), A050493(n))` -/
def P13539809458742749296.Spec : Prop :=
  ∀ n, P13539809458742749296.a n = A153638 n

end A153638

/-! ## A153638.P4480217320660811379

`and(A050493(n), A179645(n+1))`
-/

namespace A153638.P4480217320660811379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A050493 n) (A179645 (n + 1))

end

end A153638.P4480217320660811379

namespace A153638

/-- `and(A050493(n), A179645(n+1))` -/
def P4480217320660811379.Spec : Prop :=
  ∀ n, P4480217320660811379.a n = A153638 n

end A153638

/-! ## A153638.P8239371018923568379

`A285406(2*n+1)%2`
-/

namespace A153638.P8239371018923568379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A285406 (2 * n + 1)) 2

end

end A153638.P8239371018923568379

namespace A153638

/-- `A285406(2*n+1)%2` -/
def P8239371018923568379.Spec : Prop :=
  ∀ n, P8239371018923568379.a n = A153638 n

end A153638

/-! ## A153638.P6389717509128122703

`and(1, A065359(∑[n]))`
-/

namespace A153638.P6389717509128122703
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A065359 (∑ j ∈ Finset.range (n + 1), f1 j))

end

end A153638.P6389717509128122703

namespace A153638

/-- `and(1, A065359(∑[n]))` -/
def P6389717509128122703.Spec : Prop :=
  ∀ n, P6389717509128122703.a n = A153638 n

end A153638

/-! ## A153638.P6757849372893704620

`and(A000051(n), A050493(n))`
-/

namespace A153638.P6757849372893704620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A000051 n) (A050493 n)

end

end A153638.P6757849372893704620

namespace A153638

/-- `and(A000051(n), A050493(n))` -/
def P6757849372893704620.Spec : Prop :=
  ∀ n, P6757849372893704620.a n = A153638 n

end A153638

/-! ## A153638.P14866038222333643231

`and(A050493(n), A195744(n))`
-/

namespace A153638.P14866038222333643231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A050493 n) (A195744 n)

end

end A153638.P14866038222333643231

namespace A153638

/-- `and(A050493(n), A195744(n))` -/
def P14866038222333643231.Spec : Prop :=
  ∀ n, P14866038222333643231.a n = A153638 n

end A153638

/-! ## A153638.P2902962435215428772

`and(A050493(n), A206371(n))`
-/

namespace A153638.P2902962435215428772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A050493 n) (A206371 n)

end

end A153638.P2902962435215428772

namespace A153638

/-- `and(A050493(n), A206371(n))` -/
def P2902962435215428772.Spec : Prop :=
  ∀ n, P2902962435215428772.a n = A153638 n

end A153638

/-! ## A153638.P2820108267410961305

`and(A050493(n), A305155(n))`
-/

namespace A153638.P2820108267410961305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A050493 n) (A305155 n)

end

end A153638.P2820108267410961305

namespace A153638

/-- `and(A050493(n), A305155(n))` -/
def P2820108267410961305.Spec : Prop :=
  ∀ n, P2820108267410961305.a n = A153638 n

end A153638

/-! ## A153638.P16632236256455105780

`and(A050493(n), A305158(n))`
-/

namespace A153638.P16632236256455105780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A050493 n) (A305158 n)

end

end A153638.P16632236256455105780

namespace A153638

/-- `and(A050493(n), A305158(n))` -/
def P16632236256455105780.Spec : Prop :=
  ∀ n, P16632236256455105780.a n = A153638 n

end A153638

/-! ## A153638.P5670871606719198642

`and(A050493(n), A122041(n+1))`
-/

namespace A153638.P5670871606719198642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A050493 n) (A122041 (n + 1))

end

end A153638.P5670871606719198642

namespace A153638

/-- `and(A050493(n), A122041(n+1))` -/
def P5670871606719198642.Spec : Prop :=
  ∀ n, P5670871606719198642.a n = A153638 n

end A153638

/-! ## A153638.P5861390382590284783

`and(A050493(n), A196657(n))`
-/

namespace A153638.P5861390382590284783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A050493 n) (A196657 n)

end

end A153638.P5861390382590284783

namespace A153638

/-- `and(A050493(n), A196657(n))` -/
def P5861390382590284783.Spec : Prop :=
  ∀ n, P5861390382590284783.a n = A153638 n

end A153638

/-! ## A153638.P15130851778076951279

`and(A050493(n), A305262(n))`
-/

namespace A153638.P15130851778076951279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A050493 n) (A305262 n)

end

end A153638.P15130851778076951279

namespace A153638

/-- `and(A050493(n), A305262(n))` -/
def P15130851778076951279.Spec : Prop :=
  ∀ n, P15130851778076951279.a n = A153638 n

end A153638

/-! ## A153638.P11644299531992820737

`and(A050493(n), A305269(n))`
-/

namespace A153638.P11644299531992820737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A050493 n) (A305269 n)

end

end A153638.P11644299531992820737

namespace A153638

/-- `and(A050493(n), A305269(n))` -/
def P11644299531992820737.Spec : Prop :=
  ∀ n, P11644299531992820737.a n = A153638 n

end A153638

/-! ## A153638.P6440724229189257629

`and(A050493(n), A345109(n+1))`
-/

namespace A153638.P6440724229189257629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A050493 n) (A345109 (n + 1))

end

end A153638.P6440724229189257629

namespace A153638

/-- `and(A050493(n), A345109(n+1))` -/
def P6440724229189257629.Spec : Prop :=
  ∀ n, P6440724229189257629.a n = A153638 n

end A153638

/-!
# A153639: Evilness of triangular numbers.

The programs for A153639, the canonical program `A153639.P65248954018329175` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A153639 has offset 0).

The definition of A153639 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A153639.P65248954018329175

`1-A153638(n)`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A153639

/-- `1-A153638(n)` -/
def P65248954018329175.Spec : Prop :=
  ∀ n, P65248954018329175.a n = A153639 n

theorem P65248954018329175.correct : P65248954018329175.Spec := by
  intro n
  simp only [A153639]

end A153639

/-! ## A153639.P8653543957853798269

`A228039(Δ[n²])`
-/

namespace A153639.P8653543957853798269
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228039 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A153639.P8653543957853798269

namespace A153639

/-- `A228039(Δ[n²])` -/
def P8653543957853798269.Spec : Prop :=
  ∀ n, P8653543957853798269.a n = A153639 n

end A153639

/-! ## A153639.P6674548103630813470

`log2(gcd(2, A050493(n)))`
-/

namespace A153639.P6674548103630813470
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (Int.gcd 2 (A050493 n) : ℝ)

end

end A153639.P6674548103630813470

namespace A153639

/-- `log2(gcd(2, A050493(n)))` -/
def P6674548103630813470.Spec : Prop :=
  ∀ n, P6674548103630813470.a n = (A153639 n : ℝ)

end A153639

/-! ## A153639.P4716601017447913109

`A159918(2*n+1)%2`
-/

namespace A153639.P4716601017447913109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A159918 (2 * n + 1)) 2

end

end A153639.P4716601017447913109

namespace A153639

/-- `A159918(2*n+1)%2` -/
def P4716601017447913109.Spec : Prop :=
  ∀ n, P4716601017447913109.a n = A153639 n

end A153639

/-! ## A153639.P9312792715152379476

`A285717(2*n+1)%2`
-/

namespace A153639.P9312792715152379476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A285717 (2 * n + 1)) 2

end

end A153639.P9312792715152379476

namespace A153639

/-- `A285717(2*n+1)%2` -/
def P9312792715152379476.Spec : Prop :=
  ∀ n, P9312792715152379476.a n = A153639 n

end A153639

/-! ## A153639.P16594640399463903482

`A254651(∑[2*n])`
-/

namespace A153639.P16594640399463903482
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254651 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A153639.P16594640399463903482

namespace A153639

/-- `A254651(∑[2*n])` -/
def P16594640399463903482.Spec : Prop :=
  ∀ n, P16594640399463903482.a n = A153639 n

end A153639

/-! ## A153639.P11636255478238672774

`1-A254379(∑[2*n])`
-/

namespace A153639.P11636255478238672774
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A254379 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A153639.P11636255478238672774

namespace A153639

/-- `1-A254379(∑[2*n])` -/
def P11636255478238672774.Spec : Prop :=
  ∀ n, P11636255478238672774.a n = A153639 n

end A153639

/-! ## A153639.P10739472347282579889

`1-A316828(∑[2*n])`
-/

namespace A153639.P10739472347282579889
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A316828 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A153639.P10739472347282579889

namespace A153639

/-- `1-A316828(∑[2*n])` -/
def P10739472347282579889.Spec : Prop :=
  ∀ n, P10739472347282579889.a n = A153639 n

end A153639

/-! ## A153639.P7209067198083616472

`A151666(A001316(n²+n))`
-/

namespace A153639.P7209067198083616472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151666 (A001316 (n ^ 2 + n)).toNat

end

end A153639.P7209067198083616472

namespace A153639

/-- `A151666(A001316(n²+n))` -/
def P7209067198083616472.Spec : Prop :=
  ∀ n, P7209067198083616472.a n = A153639 n

end A153639

/-! ## A153639.P11569342914343490119

`1-A010060(∑[n])`
-/

namespace A153639.P11569342914343490119
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A010060 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A153639.P11569342914343490119

namespace A153639

/-- `1-A010060(∑[n])` -/
def P11569342914343490119.Spec : Prop :=
  ∀ n, P11569342914343490119.a n = A153639 n

end A153639

/-! ## A153639.P2806843776446998107

`A010060(xor(1, ∑[n]))`
-/

namespace A153639.P2806843776446998107
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010060 (Nat.xor 1 (∑ j ∈ Finset.range (n + 1), f1 j))

end

end A153639.P2806843776446998107

namespace A153639

/-- `A010060(xor(1, ∑[n]))` -/
def P2806843776446998107.Spec : Prop :=
  ∀ n, P2806843776446998107.a n = A153639 n

end A153639

/-! ## A153639.P6396398963231092723

`A010059(∑[n])`
-/

namespace A153639.P6396398963231092723
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010059 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A153639.P6396398963231092723

namespace A153639

/-- `A010059(∑[n])` -/
def P6396398963231092723.Spec : Prop :=
  ∀ n, P6396398963231092723.a n = A153639 n

end A153639

/-! ## A153639.P1450254024324319176

`2-A001285(∑[n])`
-/

namespace A153639.P1450254024324319176
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A001285 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A153639.P1450254024324319176

namespace A153639

/-- `2-A001285(∑[n])` -/
def P1450254024324319176.Spec : Prop :=
  ∀ n, P1450254024324319176.a n = A153639 n

end A153639

/-! ## A153639.P3353857085424410989

`A101925(∑[n])%2`
-/

namespace A153639.P3353857085424410989
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A101925 (∑ j ∈ Finset.range (n + 1), f1 j)) 2

end

end A153639.P3353857085424410989

namespace A153639

/-- `A101925(∑[n])%2` -/
def P3353857085424410989.Spec : Prop :=
  ∀ n, P3353857085424410989.a n = A153639 n

end A153639

/-! ## A153639.P4405745417787775720

`A000069(∑[n]+1)%2`
-/

namespace A153639.P4405745417787775720
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000069 (∑ j ∈ Finset.range (n + 1), f1 j + 1)) 2

end

end A153639.P4405745417787775720

namespace A153639

/-- `A000069(∑[n]+1)%2` -/
def P4405745417787775720.Spec : Prop :=
  ∀ n, P4405745417787775720.a n = A153639 n

end A153639

/-! ## A153639.P14382838577375514341

`A003278(∑[n]+1)%2`
-/

namespace A153639.P14382838577375514341
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A003278 (∑ j ∈ Finset.range (n + 1), f1 j + 1)) 2

end

end A153639.P14382838577375514341

namespace A153639

/-- `A003278(∑[n]+1)%2` -/
def P14382838577375514341.Spec : Prop :=
  ∀ n, P14382838577375514341.a n = A153639 n

end A153639

/-! ## A153639.P3922633943858736301

`A000120(xor(1, ∑[n]))%2`
-/

namespace A153639.P3922633943858736301
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000120 (Nat.xor 1 (∑ j ∈ Finset.range (n + 1), f1 j))) 2

end

end A153639.P3922633943858736301

namespace A153639

/-- `A000120(xor(1, ∑[n]))%2` -/
def P3922633943858736301.Spec : Prop :=
  ∀ n, P3922633943858736301.a n = A153639 n

end A153639

/-! ## A153639.P8298763819098314792

`A228495(Δ[n²]²)`
-/

namespace A153639.P8298763819098314792
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228495 (((f1 (n + 1) : ℤ) - (f1 n : ℤ)) ^ 2).toNat

end

end A153639.P8298763819098314792

namespace A153639

/-- `A228495(Δ[n²]²)` -/
def P8298763819098314792.Spec : Prop :=
  ∀ n, P8298763819098314792.a n = A153639 n

end A153639

/-! ## A153639.P10243749901264275259

`A163538(Δ[n²]²)²`
-/

namespace A153639.P10243749901264275259
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163538 (((f1 (n + 1) : ℤ) - (f1 n : ℤ)) ^ 2).toNat ^ 2

end

end A153639.P10243749901264275259

namespace A153639

/-- `A163538(Δ[n²]²)²` -/
def P10243749901264275259.Spec : Prop :=
  ∀ n, P10243749901264275259.a n = A153639 n

end A153639

/-! ## A153639.P4819373695368966060

`A010060(∑[2*n]+1)`
-/

namespace A153639.P4819373695368966060
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010060 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A153639.P4819373695368966060

namespace A153639

/-- `A010060(∑[2*n]+1)` -/
def P4819373695368966060.Spec : Prop :=
  ∀ n, P4819373695368966060.a n = A153639 n

end A153639

/-!
# A153640: Primes made up of a nonprime number of only nonprime digits.

The programs for A153640, there is no canonical definition to state claims against.
-/

/-! ## A153640.P4933052899459418092

`A034844(n+31)`
-/

namespace A153640.P4933052899459418092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034844 (n + 31)

end

end A153640.P4933052899459418092

/-! ## A153640.P4635373567524909567

`p?[A034844(31-A001489(n))]`
-/

namespace A153640.P4635373567524909567
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034844 (31 - A001489 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A153640.P4635373567524909567

/-! ## A153640.P3908898758478736475

`∑{d}[A034844(31-A001489(n)), A000010(#)]`
-/

namespace A153640.P3908898758478736475
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034844 (31 - A001489 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d

end

end A153640.P3908898758478736475

/-! ## A153640.P7469228186959374561

`∏{d}[A034844(31-A001489(n)), A014963(#)]`
-/

namespace A153640.P7469228186959374561
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034844 (31 - A001489 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n).natAbs, A014963 d

end

end A153640.P7469228186959374561

/-! ## A153640.P834589011868172912

`∏{d}[A034844(31-A001489(n)), A020639(#)]`
-/

namespace A153640.P834589011868172912
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034844 (31 - A001489 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n).natAbs, A020639 d

end

end A153640.P834589011868172912

/-!
# A153641: Nonzero coefficients of the Swiss-Knife polynomials for the computation of Euler, tangent, and Bernoulli numbers (triangle read by rows).

The programs for A153641, there is no canonical definition to state claims against.
-/

/-! ## A153641.P13044869964788938875

`A081658(n-floor(sqrt(n))+n)`
-/

namespace A153641.P13044869964788938875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081658 ((n : ℤ) - (Nat.sqrt n : ℤ) + (n : ℤ)).toNat

end

end A153641.P13044869964788938875

/-! ## A153641.P16718000229491251345

`A363394(eq[A010054(n), A363393(n)])`
-/

namespace A153641.P16718000229491251345
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363393 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363394 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A153641.P16718000229491251345

/-! ## A153641.P1766647269088732634

`A363394(eq[A081658(n), A363394(n)])`
-/

namespace A153641.P1766647269088732634
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081658 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363394 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363394 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A153641.P1766647269088732634

/-!
# A153642: a(n) = 4*n^2 + 24*n + 8.

The programs for A153642, the canonical program `A153642.P12528095769088069103` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A153642 has offset 1).

The definition of A153642 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `4*(n+1)²+24*(n+1)+8` (program `A153642.P12528095769088069103`, by `A153642.P12528095769088069103.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A153642.P6926297367214451772

`4*(n+4)²-28`
-/

namespace A153642.P6926297367214451772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (4 * (n + 4) ^ 2 : ℤ) - 28

end

end A153642.P6926297367214451772

namespace A153642

/-- `4*(n+4)²-28` -/
def P6926297367214451772.Spec : Prop :=
  ∀ n, P6926297367214451772.a n = A153642 (n + 1)

theorem P6926297367214451772.correct : P6926297367214451772.Spec := by
  intro n
  simp only [A153642, Nat.add_sub_cancel, A153642.P6926297367214451772.a, A153642.P12528095769088069103.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A153642

/-! ## A153642.P12528095769088069103

`4*(n+1)²+24*(n+1)+8`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A153642

/-- `4*(n+1)²+24*(n+1)+8` -/
def P12528095769088069103.Spec : Prop :=
  ∀ n, (P12528095769088069103.a n : ℤ) = A153642 (n + 1)

theorem P12528095769088069103.correct : P12528095769088069103.Spec := by
  intro n
  simp only [A153642, Nat.add_sub_cancel]

end A153642

/-! ## A153642.P18187830691970513434

`4*A028881(n+4)`
-/

namespace A153642.P18187830691970513434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A028881 (n + 4)

end

end A153642.P18187830691970513434

namespace A153642

/-- `4*A028881(n+4)` -/
def P18187830691970513434.Spec : Prop :=
  ∀ n, P18187830691970513434.a n = A153642 (n + 1)

end A153642

/-! ## A153642.P4769755321762830358

`A155136(2*(n+1)+7)`
-/

namespace A153642.P4769755321762830358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155136 (2 * (n + 1) + 7)

end

end A153642.P4769755321762830358

namespace A153642

/-- `A155136(2*(n+1)+7)` -/
def P4769755321762830358.Spec : Prop :=
  ∀ n, P4769755321762830358.a n = A153642 (n + 1)

end A153642

/-! ## A153642.P4408027328381373128

`A155135(2*(n+1)+8)`
-/

namespace A153642.P4408027328381373128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155135 (2 * (n + 1) + 8)

end

end A153642.P4408027328381373128

namespace A153642

/-- `A155135(2*(n+1)+8)` -/
def P4408027328381373128.Spec : Prop :=
  ∀ n, P4408027328381373128.a n = A153642 (n + 1)

end A153642

/-! ## A153642.P2483662137214068944

`∑[a(n-1)+8]` with `a(0)=36, a(1)=36`
-/

namespace A153642.P2483662137214068944
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [36, 36] fun n f1 =>
  f1 (n - 1) + 8

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A153642.P2483662137214068944

namespace A153642

/-- `∑[a(n-1)+8]` -/
def P2483662137214068944.Spec : Prop :=
  ∀ n, (P2483662137214068944.a n : ℤ) = A153642 (n + 1)

end A153642

/-! ## A153642.P10103183433458265463

`record[4*((3-n)²-2*n)]`
-/

namespace A153642.P10103183433458265463
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * ((3 - (n : ℤ)) ^ 2 - (2 * n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A153642.P10103183433458265463

namespace A153642

/-- `record[4*((3-n)²-2*n)]` -/
def P10103183433458265463.Spec : Prop :=
  ∀ n, P10103183433458265463.a n = A153642 (n + 1)

end A153642

/-! ## A153642.P13920679010591934352

`lcm(A010713(n), A154575(n+1))`
-/

namespace A153642.P13920679010591934352
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A010713 n) (A154575 (n + 1))

end

end A153642.P13920679010591934352

namespace A153642

/-- `lcm(A010713(n), A154575(n+1))` -/
def P13920679010591934352.Spec : Prop :=
  ∀ n, (P13920679010591934352.a n : ℤ) = A153642 (n + 1)

end A153642

/-! ## A153642.P17721947274081022052

`∑{d}[n+1, A000038(#-1)*A154575((n+1)/#)]`
-/

namespace A153642.P17721947274081022052
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000038 (d - 1) * A154575 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A153642.P17721947274081022052

namespace A153642

/-- `∑{d}[n+1, A000038(#-1)*A154575((n+1)/#)]` -/
def P17721947274081022052.Spec : Prop :=
  ∀ n, P17721947274081022052.a n = A153642 (n + 1)

end A153642

/-!
# A153643: Jacobsthal numbers A001045 incremented by 2.

The programs for A153643, the canonical program `A153643.P14203287351863856257` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A153643 has offset 0).

The definition of A153643 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A153643.P14203287351863856257

`2*a(n-1)+a(n-2)-2*a(n-3)` with `a(0)=2, a(1)=3, a(2)=3`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A153643

/-- `2*a(n-1)+a(n-2)-2*a(n-3)` -/
def P14203287351863856257.Spec : Prop :=
  ∀ n, P14203287351863856257.a n = A153643 n

theorem P14203287351863856257.correct : P14203287351863856257.Spec := by
  intro n
  simp only [A153643]

end A153643

/-! ## A153643.P5057151848969260589

`1+A128209(n)`
-/

namespace A153643.P5057151848969260589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 + A128209 n

end

end A153643.P5057151848969260589

namespace A153643

/-- `1+A128209(n)` -/
def P5057151848969260589.Spec : Prop :=
  ∀ n, P5057151848969260589.a n = A153643 n

end A153643

/-! ## A153643.P17659038107783257664

`2+A001045(n)`
-/

namespace A153643.P17659038107783257664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 + A001045 n

end

end A153643.P17659038107783257664

namespace A153643

/-- `2+A001045(n)` -/
def P17659038107783257664.Spec : Prop :=
  ∀ n, P17659038107783257664.a n = A153643 n

end A153643

/-! ## A153643.P13159372895775748545

`∑[ogf((-2+x+5x^2)/(-1+x+2x^2))]`
-/

namespace A153643.P13159372895775748545
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2, -1, -5] [1, -1, -2] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A153643.P13159372895775748545

namespace A153643

/-- `∑[ogf((-2+x+5x^2)/(-1+x+2x^2))]` -/
def P13159372895775748545.Spec : Prop :=
  ∀ n, P13159372895775748545.a n = A153643 n

end A153643

/-! ## A153643.P15743123386268989235

`ogf((-2+x+5x^2)/(-1+2x+x^2-2x^3))`
-/

namespace A153643.P15743123386268989235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2, -1, -5] [1, -2, -1, 2] n

end

end A153643.P15743123386268989235

namespace A153643

/-- `ogf((-2+x+5x^2)/(-1+2x+x^2-2x^3))` -/
def P15743123386268989235.Spec : Prop :=
  ∀ n, P15743123386268989235.a n = A153643 n

end A153643

/-! ## A153643.P8986208285742416029

`a(n-2)+2^(n-2)` with `a(0)=2, a(1)=3`
-/

namespace A153643.P8986208285742416029
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [2, 3] fun n a =>
  a (n - 2) + (2 : ℚ) ^ ((n : ℤ) - 2 : ℤ)

end

end A153643.P8986208285742416029

namespace A153643

/-- `a(n-2)+2^(n-2)` -/
def P8986208285742416029.Spec : Prop :=
  ∀ n, P8986208285742416029.a n = (A153643 n : ℚ)

end A153643

/-! ## A153643.P3948221286143056624

`2^(n-1)-(a(n-1)-4)` with `a(0)=2`
-/

namespace A153643.P3948221286143056624
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [2] fun n a =>
  (2 : ℚ) ^ ((n : ℤ) - 1 : ℤ) - (a (n - 1) - 4)

end

end A153643.P3948221286143056624

namespace A153643

/-- `2^(n-1)-(a(n-1)-4)` -/
def P3948221286143056624.Spec : Prop :=
  ∀ n, P3948221286143056624.a n = (A153643 n : ℚ)

end A153643

/-! ## A153643.P4346729347663288620

`2*(a(n-1)-gcd(2, n))+1` with `a(0)=2`
-/

namespace A153643.P4346729347663288620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  2 * (a (n - 1) - (Nat.gcd 2 n : ℤ)) + 1

end

end A153643.P4346729347663288620

namespace A153643

/-- `2*(a(n-1)-gcd(2, n))+1` -/
def P4346729347663288620.Spec : Prop :=
  ∀ n, P4346729347663288620.a n = A153643 n

end A153643

/-! ## A153643.P13598785505715315305

`2*(a(n-1)+n%2)-3` with `a(0)=2`
-/

namespace A153643.P13598785505715315305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  2 * (a (n - 1) + ((n % 2 : ℕ) : ℤ)) - 3

end

end A153643.P13598785505715315305

namespace A153643

/-- `2*(a(n-1)+n%2)-3` -/
def P13598785505715315305.Spec : Prop :=
  ∀ n, P13598785505715315305.a n = A153643 n

end A153643

/-! ## A153643.P9313122506890136329

`a(n-1)+2*a(n-2)-4` with `a(0)=2, a(1)=3`
-/

namespace A153643.P9313122506890136329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 3] fun n a =>
  a (n - 1) + 2 * a (n - 2) - 4

end

end A153643.P9313122506890136329

namespace A153643

/-- `a(n-1)+2*a(n-2)-4` -/
def P9313122506890136329.Spec : Prop :=
  ∀ n, P9313122506890136329.a n = A153643 n

end A153643

/-! ## A153643.P17427723220198469483

`2*a(n-2)-(4-a(n-1))` with `a(0)=2, a(1)=3`
-/

namespace A153643.P17427723220198469483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 3] fun n a =>
  2 * a (n - 2) - (4 - a (n - 1))

end

end A153643.P17427723220198469483

namespace A153643

/-- `2*a(n-2)-(4-a(n-1))` -/
def P17427723220198469483.Spec : Prop :=
  ∀ n, P17427723220198469483.a n = A153643 n

end A153643

/-! ## A153643.P13899749819077828174

`a(n-2)+a(n-1)+a(n-2)-4` with `a(0)=2, a(1)=3`
-/

namespace A153643.P13899749819077828174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 3] fun n a =>
  a (n - 2) + (a (n - 1) + a (n - 2)) - 4

end

end A153643.P13899749819077828174

namespace A153643

/-- `a(n-2)+a(n-1)+a(n-2)-4` -/
def P13899749819077828174.Spec : Prop :=
  ∀ n, P13899749819077828174.a n = A153643 n

end A153643

/-! ## A153643.P1788968750489043141

`floor(a(n-1))-(4-a(n-2)-a(n-2))` with `a(0)=2, a(1)=3`

`floor` is left out, it is the identity on integers.
-/

namespace A153643.P1788968750489043141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 3] fun n a =>
  a (n - 1) - (4 - a (n - 2) - a (n - 2))

end

end A153643.P1788968750489043141

namespace A153643

/-- `floor(a(n-1))-(4-a(n-2)-a(n-2))` -/
def P1788968750489043141.Spec : Prop :=
  ∀ n, P1788968750489043141.a n = A153643 n

end A153643

/-! ## A153643.P4268631625598535642

`A167030(n)+3`
-/

namespace A153643.P4268631625598535642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167030 n + 3

end

end A153643.P4268631625598535642

namespace A153643

/-- `A167030(n)+3` -/
def P4268631625598535642.Spec : Prop :=
  ∀ n, P4268631625598535642.a n = A153643 n

end A153643

/-! ## A153643.P2210189180178279438

`A328284(n+3)+2`
-/

namespace A153643.P2210189180178279438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328284 (n + 3) + 2

end

end A153643.P2210189180178279438

namespace A153643

/-- `A328284(n+3)+2` -/
def P2210189180178279438.Spec : Prop :=
  ∀ n, P2210189180178279438.a n = A153643 n

end A153643

/-! ## A153643.P17069299286620053042

`A133684(2*n)+2`
-/

namespace A153643.P17069299286620053042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133684 (2 * n) + 2

end

end A153643.P17069299286620053042

namespace A153643

/-- `A133684(2*n)+2` -/
def P17069299286620053042.Spec : Prop :=
  ∀ n, P17069299286620053042.a n = A153643 n

end A153643

/-! ## A153643.P11161538518767155470

`A092808(xor(1, n))+2`
-/

namespace A153643.P11161538518767155470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092808 (Nat.xor 1 n) + 2

end

end A153643.P11161538518767155470

namespace A153643

/-- `A092808(xor(1, n))+2` -/
def P11161538518767155470.Spec : Prop :=
  ∀ n, P11161538518767155470.a n = A153643 n

end A153643

/-! ## A153643.P14772014221499579618

`A155944(n)+gcd(2, n)`
-/

namespace A153643.P14772014221499579618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155944 n + (Nat.gcd 2 n : ℤ)

end

end A153643.P14772014221499579618

namespace A153643

/-- `A155944(n)+gcd(2, n)` -/
def P14772014221499579618.Spec : Prop :=
  ∀ n, P14772014221499579618.a n = A153643 n

end A153643

/-! ## A153643.P7146919028761992802

`A133730(Δ[n²])+2`
-/

namespace A153643.P7146919028761992802
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133730 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat + 2

end

end A153643.P7146919028761992802

namespace A153643

/-- `A133730(Δ[n²])+2` -/
def P7146919028761992802.Spec : Prop :=
  ∀ n, P7146919028761992802.a n = A153643 n

end A153643

/-! ## A153643.P7990076349904342788

`abs(1-A084247(n))+2`
-/

namespace A153643.P7990076349904342788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - A084247 n| + 2

end

end A153643.P7990076349904342788

namespace A153643

/-- `abs(1-A084247(n))+2` -/
def P7990076349904342788.Spec : Prop :=
  ∀ n, P7990076349904342788.a n = A153643 n

end A153643

/-!
# A153644: a(n) = 4*n^2 + 28*n + 10.

The programs for A153644, the canonical program `A153644.P16369926169379387003` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A153644 has offset 1).

The definition of A153644 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `4*(n+1)²+28*(n+1)+10` (program `A153644.P16369926169379387003`, by `A153644.P16369926169379387003.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A153644.P13164495945531613358

`4*(n+1)*(n+8)+10`
-/

namespace A153644.P13164495945531613358
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * (n + 1) * (n + 8) + 10

end

end A153644.P13164495945531613358

namespace A153644

/-- `4*(n+1)*(n+8)+10` -/
def P13164495945531613358.Spec : Prop :=
  ∀ n, (P13164495945531613358.a n : ℤ) = A153644 (n + 1)

theorem P13164495945531613358.correct : P13164495945531613358.Spec := by
  intro n
  simp only [A153644, Nat.add_sub_cancel, A153644.P13164495945531613358.a, A153644.P16369926169379387003.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A153644

/-! ## A153644.P16369926169379387003

`4*(n+1)²+28*(n+1)+10`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A153644

/-- `4*(n+1)²+28*(n+1)+10` -/
def P16369926169379387003.Spec : Prop :=
  ∀ n, (P16369926169379387003.a n : ℤ) = A153644 (n + 1)

theorem P16369926169379387003.correct : P16369926169379387003.Spec := by
  intro n
  simp only [A153644, Nat.add_sub_cancel]

end A153644

/-! ## A153644.P17442165028899231372

`∑[a(n-1)+8]` with `a(0)=42, a(1)=40`
-/

namespace A153644.P17442165028899231372
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [42, 40] fun n f1 =>
  f1 (n - 1) + 8

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A153644.P17442165028899231372

namespace A153644

/-- `∑[a(n-1)+8]` -/
def P17442165028899231372.Spec : Prop :=
  ∀ n, (P17442165028899231372.a n : ℤ) = A153644 (n + 1)

end A153644

/-! ## A153644.P13728358762646421946

`2*A154576(n+1)`
-/

namespace A153644.P13728358762646421946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A154576 (n + 1)

end

end A153644.P13728358762646421946

namespace A153644

/-- `2*A154576(n+1)` -/
def P13728358762646421946.Spec : Prop :=
  ∀ n, P13728358762646421946.a n = A153644 (n + 1)

end A153644

/-! ## A153644.P3463875426707377431

`2*(A241851(n)+A098850(n))`
-/

namespace A153644.P3463875426707377431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A241851 n + A098850 n)

end

end A153644.P3463875426707377431

namespace A153644

/-- `2*(A241851(n)+A098850(n))` -/
def P3463875426707377431.Spec : Prop :=
  ∀ n, P3463875426707377431.a n = A153644 (n + 1)

end A153644

/-! ## A153644.P13908501356274451302

`2*(A139581(n)-A023463(n))`
-/

namespace A153644.P13908501356274451302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A139581 n - A023463 n)

end

end A153644.P13908501356274451302

namespace A153644

/-- `2*(A139581(n)-A023463(n))` -/
def P13908501356274451302.Spec : Prop :=
  ∀ n, P13908501356274451302.a n = A153644 (n + 1)

end A153644

/-! ## A153644.P9135532793825843398

`2*(A277108(n+1)-A152813(n))`
-/

namespace A153644.P9135532793825843398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A277108 (n + 1) - A152813 n)

end

end A153644.P9135532793825843398

namespace A153644

/-- `2*(A277108(n+1)-A152813(n))` -/
def P9135532793825843398.Spec : Prop :=
  ∀ n, P9135532793825843398.a n = A153644 (n + 1)

end A153644

/-! ## A153644.P3479356093446781940

`2*(A056237(n+2)+n)`
-/

namespace A153644.P3479356093446781940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A056237 (n + 2) + (n : ℤ))

end

end A153644.P3479356093446781940

namespace A153644

/-- `2*(A056237(n+2)+n)` -/
def P3479356093446781940.Spec : Prop :=
  ∀ n, P3479356093446781940.a n = A153644 (n + 1)

end A153644

/-! ## A153644.P12563487831340202525

`2*(A033537(n+2)+A016885(n))`
-/

namespace A153644.P12563487831340202525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A033537 (n + 2) + A016885 n)

end

end A153644.P12563487831340202525

namespace A153644

/-- `2*(A033537(n+2)+A016885(n))` -/
def P12563487831340202525.Spec : Prop :=
  ∀ n, P12563487831340202525.a n = A153644 (n + 1)

end A153644

/-! ## A153644.P11113885323547794087

`A017089(∑[n+3]+n+2)`
-/

namespace A153644.P11113885323547794087
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017089 (∑ j ∈ Finset.range (n + 1), f1 j + (n + 2))

end

end A153644.P11113885323547794087

namespace A153644

/-- `A017089(∑[n+3]+n+2)` -/
def P11113885323547794087.Spec : Prop :=
  ∀ n, P11113885323547794087.a n = A153644 (n + 1)

end A153644

/-! ## A153644.P10230454803547055895

`2*A004766(A052905(n+1))`
-/

namespace A153644.P10230454803547055895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A004766 (A052905 (n + 1)).toNat

end

end A153644.P10230454803547055895

namespace A153644

/-- `2*A004766(A052905(n+1))` -/
def P10230454803547055895.Spec : Prop :=
  ∀ n, P10230454803547055895.a n = A153644 (n + 1)

end A153644

/-! ## A153644.P8223210333028325817

`A016825(2*A052905(n+1))`
-/

namespace A153644.P8223210333028325817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016825 (2 * A052905 (n + 1)).toNat

end

end A153644.P8223210333028325817

namespace A153644

/-- `A016825(2*A052905(n+1))` -/
def P8223210333028325817.Spec : Prop :=
  ∀ n, P8223210333028325817.a n = A153644 (n + 1)

end A153644

/-! ## A153644.P7225775832056435829

`A016825(A028884(n+1)+n+2)`
-/

namespace A153644.P7225775832056435829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016825 (A028884 (n + 1) + (n + 2 : ℤ)).toNat

end

end A153644.P7225775832056435829

namespace A153644

/-- `A016825(A028884(n+1)+n+2)` -/
def P7225775832056435829.Spec : Prop :=
  ∀ n, P7225775832056435829.a n = A153644 (n + 1)

end A153644

/-! ## A153644.P355726053933805430

`A016825(A027689(n)+8*n+6)`
-/

namespace A153644.P355726053933805430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016825 (A027689 n + (8 * n + 6 : ℤ)).toNat

end

end A153644.P355726053933805430

namespace A153644

/-- `A016825(A027689(n)+8*n+6)` -/
def P355726053933805430.Spec : Prop :=
  ∀ n, P355726053933805430.a n = A153644 (n + 1)

end A153644

/-!
# A153645: Primes p such that p^2 + 4 and p^2 + 4p + 2 are also prime.

The programs for A153645, there is no canonical definition to state claims against.
-/

/-! ## A153645.P331542212179829191

`∩[A028870(n+1)-2, A062324(n+1)]`
-/

namespace A153645.P331542212179829191
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028870 (n + 1) - 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062324 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A153645.P331542212179829191

/-! ## A153645.P10642717490653537025

`p?[∩[A007591(n+1), A028870(n+1)-2]]`
-/

namespace A153645.P10642717490653537025
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007591 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028870 (n + 1) - 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = (x : ℤ)) ∧ ∃ j, f3 j = (x : ℤ)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A153645.P10642717490653537025

/-! ## A153645.P6687833112852258424

`∩[A007591(A000961(n+1)), A299956(n+1)]`
-/

namespace A153645.P6687833112852258424
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007591 (A000961 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299956 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A153645.P6687833112852258424

/-! ## A153645.P10443924101250163521

`p?[Δ[A087051(n)]*A007591(n+1)]`
-/

namespace A153645.P10443924101250163521
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087051 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) - f2 n) * A007591 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A153645.P10443924101250163521

/-! ## A153645.P1358385370337773845

`A006530(A105476(n)*A173641(n+1))`
-/

namespace A153645.P1358385370337773845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A105476 n * A173641 (n + 1)).toNat

end

end A153645.P1358385370337773845

/-!
# A153647: a(n) = 3^n*(n + 2)!.

The programs for A153647, the canonical program `A153647.P8827689901360160188` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A153647 has offset 0).

The definition of A153647 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `3^n*(n+2)!` (program `A153647.P8827689901360160188`, by `A153647.P8827689901360160188.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A153647.P8827689901360160188

`3^n*(n+2)!`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A153647

/-- `3^n*(n+2)!` -/
def P8827689901360160188.Spec : Prop :=
  ∀ n, (P8827689901360160188.a n : ℤ) = A153647 n

theorem P8827689901360160188.correct : P8827689901360160188.Spec := by
  intro n
  simp only [A153647]

end A153647

/-! ## A153647.P1598841798403874040

`2*A051606(n)`
-/

namespace A153647.P1598841798403874040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A051606 n

end

end A153647.P1598841798403874040

namespace A153647

/-- `2*A051606(n)` -/
def P1598841798403874040.Spec : Prop :=
  ∀ n, P1598841798403874040.a n = A153647 n

end A153647

/-! ## A153647.P17872628883285301348

`∏[3*(n+2)]/3`
-/

namespace A153647.P17872628883285301348
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * (n + 2)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∏ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / 3

end

end A153647.P17872628883285301348

namespace A153647

/-- `∏[3*(n+2)]/3` -/
def P17872628883285301348.Spec : Prop :=
  ∀ n, P17872628883285301348.a n = (A153647 n : ℚ)

end A153647

/-! ## A153647.P8449644236446060629

`∏[a(n-1)+3]` with `a(0)=2, a(1)=9`
-/

namespace A153647.P8449644236446060629
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [2, 9] fun n f1 =>
  f1 (n - 1) + 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A153647.P8449644236446060629

namespace A153647

/-- `∏[a(n-1)+3]` -/
def P8449644236446060629.Spec : Prop :=
  ∀ n, (P8449644236446060629.a n : ℤ) = A153647 n

end A153647

/-! ## A153647.P7076392226426124286

`lcm(2, 3^n*∏[n+2])`
-/

namespace A153647.P7076392226426124286
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 2 (3 ^ n * (∏ j ∈ Finset.range (n + 1), f1 j))

end

end A153647.P7076392226426124286

namespace A153647

/-- `lcm(2, 3^n*∏[n+2])` -/
def P7076392226426124286.Spec : Prop :=
  ∀ n, (P7076392226426124286.a n : ℤ) = A153647 n

end A153647

/-! ## A153647.P10862468137014725577

`or(1, 3^n)*∏[n+2]`
-/

namespace A153647.P10862468137014725577
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (3 ^ n) * (∏ j ∈ Finset.range (n + 1), f1 j)

end

end A153647.P10862468137014725577

namespace A153647

/-- `or(1, 3^n)*∏[n+2]` -/
def P10862468137014725577.Spec : Prop :=
  ∀ n, (P10862468137014725577.a n : ℤ) = A153647 n

end A153647

/-! ## A153647.P6049122941653250082

`round((n+2)!/3^-n)`
-/

namespace A153647.P6049122941653250082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((Nat.factorial (n + 2) : ℚ) / (3 : ℚ) ^ (-(n : ℤ) : ℤ))

end

end A153647.P6049122941653250082

namespace A153647

/-- `round((n+2)!/3^-n)` -/
def P6049122941653250082.Spec : Prop :=
  ∀ n, P6049122941653250082.a n = A153647 n

end A153647

/-! ## A153647.P13441112043502843479

`3*(n+2)*a(n-1)` with `a(0)=2`
-/

namespace A153647.P13441112043502843479
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [2] fun n a =>
  3 * ((n + 2) * a (n - 1))

end

end A153647.P13441112043502843479

namespace A153647

/-- `3*(n+2)*a(n-1)` -/
def P13441112043502843479.Spec : Prop :=
  ∀ n, (P13441112043502843479.a n : ℤ) = A153647 n

end A153647

/-! ## A153647.P3217629501449615818

`∏[(n+2)*3%(n+2)!]`
-/

namespace A153647.P3217629501449615818
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 2) * (3 % Nat.factorial (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A153647.P3217629501449615818

namespace A153647

/-- `∏[(n+2)*3%(n+2)!]` -/
def P3217629501449615818.Spec : Prop :=
  ∀ n, (P3217629501449615818.a n : ℤ) = A153647 n

end A153647

/-! ## A153647.P17602516960236132810

`∏[(n+2)*gcd(3, (n+2)!)]`
-/

namespace A153647.P17602516960236132810
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 2) * Nat.gcd 3 (Nat.factorial (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A153647.P17602516960236132810

namespace A153647

/-- `∏[(n+2)*gcd(3, (n+2)!)]` -/
def P17602516960236132810.Spec : Prop :=
  ∀ n, (P17602516960236132810.a n : ℤ) = A153647 n

end A153647

/-!
# A153648: Triangle T(n, k) = T(n-1, k) + T(n-1, k-1) + j*prime(j)*T(n-2, k-1) with j=3, read by rows.

The programs for A153648, there is no canonical definition to state claims against.
-/

/-! ## A153648.P2352277081640442048

`A153518(n+1)+A081157(A201384(n+1))`
-/

namespace A153648.P2352277081640442048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153518 (n + 1) + A081157 (A201384 (n + 1)).toNat

end

end A153648.P2352277081640442048

/-! ## A153648.P18140913689612221847

`A347323(A324094(n+1))+A153518(n+1)`
-/

namespace A153648.P18140913689612221847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347323 (A324094 (n + 1)).toNat + A153518 (n + 1)

end

end A153648.P18140913689612221847

/-!
# A153651: Triangle T(n, k) = T(n-1, k) + T(n-1, k-1) + (j+5)*prime(j)*T(n-2, k-1) with j=6, read by rows.

The programs for A153651, there is no canonical definition to state claims against.
-/

/-! ## A153651.P11211836994833860093

`A237264(A374525(n+1))`
-/

namespace A153651.P11211836994833860093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237264 (A374525 (n + 1)).toNat

end

end A153651.P11211836994833860093

/-!
# A153652: Triangle T(n, k, j) = T(n-1, k, j) + T(n-1, k-1, j) + (2*j + 1)*prime(j)*T(n-2, k-1, j) with T(2, k, j) = prime(j) and j = 7, read by rows.

The programs for A153652, there is no canonical definition to state claims against.
-/

/-! ## A153652.P14847235651918736257

`A238377(A258222(n+3)^A258222(n+3))`
-/

namespace A153652.P14847235651918736257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238377 (SequenceMachineLib.roundAway ((A258222 (n + 3) : ℚ) ^ (A258222 (n + 3) : ℤ))).toNat

end

end A153652.P14847235651918736257

/-!
# A153654: Triangle T(n, k, j) = T(n-1, k, j) + T(n-1, k-1, j) + (2*j + 1)*prime(j)*T(n-2, k-1, j) with T(2, k, j) = prime(j) and j = 9, read by rows.

The programs for A153654, there is no canonical definition to state claims against.
-/

/-! ## A153654.P16370447563116374381

`A153656(A032555(n+1))`
-/

namespace A153654.P16370447563116374381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153656 (A032555 (n + 1)).toNat

end

end A153654.P16370447563116374381

/-! ## A153654.P8880295581799776417

`A153656(A032557(n+1))`
-/

namespace A153654.P8880295581799776417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153656 (A032557 (n + 1)).toNat

end

end A153654.P8880295581799776417

/-! ## A153654.P2363070009071336687

`A153656(A032559(n+1))`
-/

namespace A153654.P2363070009071336687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153656 (A032559 (n + 1)).toNat

end

end A153654.P2363070009071336687

/-! ## A153654.P7517812120489533378

`A153656(A032565(n+1))`
-/

namespace A153654.P7517812120489533378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153656 (A032565 (n + 1)).toNat

end

end A153654.P7517812120489533378

/-! ## A153654.P5376168141825914359

`A153656(A077739(n+1))`
-/

namespace A153654.P5376168141825914359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153656 (A077739 (n + 1)).toNat

end

end A153654.P5376168141825914359

/-!
# A153655: Triangle T(n, k, j) = T(n-1, k, j) + T(n-1, k-1, j) + (2*j + 1)*prime(j)*T(n-2, k-1, j) with T(2, k, j) = prime(j) and j = 10, read by rows.

The programs for A153655, there is no canonical definition to state claims against.
-/

/-! ## A153655.P3761973346909105257

`A153657(C(comp[∑{digits}[n, 10^#]], n))`
-/

namespace A153655.P3761973346909105257
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f2 n)).map fun (x : ℕ) => 10 ^ x).sum

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153657 (Nat.choose (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n) n)

end

end A153655.P3761973346909105257

/-! ## A153655.P6760141694790068454

`A153657(A032555(n+1))`
-/

namespace A153655.P6760141694790068454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153657 (A032555 (n + 1)).toNat

end

end A153655.P6760141694790068454

/-! ## A153655.P17809186791952838658

`A153657(A032557(n+1))`
-/

namespace A153655.P17809186791952838658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153657 (A032557 (n + 1)).toNat

end

end A153655.P17809186791952838658

/-! ## A153655.P17892145257355352236

`A153657(A032559(n+1))`
-/

namespace A153655.P17892145257355352236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153657 (A032559 (n + 1)).toNat

end

end A153655.P17892145257355352236

/-! ## A153655.P15877484851256744078

`A153657(A032565(n+1))`
-/

namespace A153655.P15877484851256744078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153657 (A032565 (n + 1)).toNat

end

end A153655.P15877484851256744078

/-!
# A153659: Triangle read by rows. A074206 interleaved with k-1 zeros in the k-th column.

The programs for A153659, there is no canonical definition to state claims against.
-/

/-! ## A153659.P698905147373583963

`A074206(A126988(n+1))`
-/

namespace A153659.P698905147373583963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074206 (A126988 (n + 1)).toNat

end

end A153659.P698905147373583963

/-! ## A153659.P7814887315427904919

`∑{d}[A126988(n+1), A174725(#)]`
-/

namespace A153659.P7814887315427904919
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126988 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A174725 d

end

end A153659.P7814887315427904919

/-! ## A153659.P10896597442144004116

`A074206(A010766(n+1)*A051731(n+1))`
-/

namespace A153659.P10896597442144004116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074206 (A010766 (n + 1) * A051731 (n + 1)).toNat

end

end A153659.P10896597442144004116

/-! ## A153659.P9650868573313160928

`A074206(A049834(n+1)*A051731(n+1))`
-/

namespace A153659.P9650868573313160928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074206 (A049834 (n + 1) * A051731 (n + 1)).toNat

end

end A153659.P9650868573313160928

/-! ## A153659.P12025431353031747500

`A074206(A051537(n+1)*A051731(n+1))`
-/

namespace A153659.P12025431353031747500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074206 (A051537 (n + 1) * A051731 (n + 1)).toNat

end

end A153659.P12025431353031747500

/-! ## A153659.P10127022722794675101

`A074206(A051731(n+1)*A054531(n+1))`
-/

namespace A153659.P10127022722794675101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074206 (A051731 (n + 1) * A054531 (n + 1)).toNat

end

end A153659.P10127022722794675101

/-! ## A153659.P9958227036483927319

`A074206(A127446(n+1)/A050873(n+1))`
-/

namespace A153659.P9958227036483927319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074206 (SequenceMachineLib.roundAway ((A127446 (n + 1) : ℚ) / (A050873 (n + 1) : ℚ))).toNat

end

end A153659.P9958227036483927319

/-! ## A153659.P8287327679395498768

`and(A172097(A305565(n+1)²), A305565(n+1))`
-/

namespace A153659.P8287327679395498768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A172097 (A305565 (n + 1) ^ 2).toNat) (A305565 (n + 1))

end

end A153659.P8287327679395498768

/-! ## A153659.P4442402161224411216

`and(A172097(n), A305565(n+1))`
-/

namespace A153659.P4442402161224411216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A172097 n) (A305565 (n + 1))

end

end A153659.P4442402161224411216

/-! ## A153659.P8966427162395297354

`and(A305550(n), A305565(n+1))`
-/

namespace A153659.P8966427162395297354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A305550 n) (A305565 (n + 1))

end

end A153659.P8966427162395297354

/-!
# A153662: Numbers k such that the fractional part of (3/2)^k is less than 1/k.

The programs for A153662, there is no canonical definition to state claims against.
-/

/-! ## A153662.P9381779199418716104

`A296612(3^A161412(n))`
-/

namespace A153662.P9381779199418716104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296612 (SequenceMachineLib.roundAway ((3 : ℚ) ^ (A161412 n : ℤ))).toNat

end

end A153662.P9381779199418716104

/-!
# A153664: Numbers k such that the fractional part of (3/2)^k is greater than 1-(1/k).

The programs for A153664, there is no canonical definition to state claims against.
-/

/-! ## A153664.P3002768438364256442

`A153663(A045979(n+1)-n)`
-/

namespace A153664.P3002768438364256442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153663 (A045979 (n + 1) - (n : ℤ)).toNat

end

end A153664.P3002768438364256442

/-!
# A153665: Greatest number m such that the fractional part of (3/2)^A081464(n) <= 1/m.

The programs for A153665, there is no canonical definition to state claims against.
-/

/-! ## A153665.P1748655329572442272

`record[A071353(n+1)]`
-/

namespace A153665.P1748655329572442272
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071353 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A153665.P1748655329572442272

/-! ## A153665.P51633666851466237

`A071353(A081464(n+1))`
-/

namespace A153665.P51633666851466237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071353 (A081464 (n + 1)).toNat

end

end A153665.P51633666851466237

/-!
# A153666: Greatest number m such that the fractional part of (3/2)^A153662(n) <= 1/m.

The programs for A153666, there is no canonical definition to state claims against.
-/

/-! ## A153666.P14440764493611780526

`A288560(A055231(n+1))+A002522(n)`
-/

namespace A153666.P14440764493611780526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288560 (A055231 (n + 1)).toNat + A002522 n

end

end A153666.P14440764493611780526

/-!
# A153668: Greatest number m such that the fractional part of (3/2)^A153664(n) >= 1-(1/m).

The programs for A153668, there is no canonical definition to state claims against.
-/

/-! ## A153668.P22067094922256266

`A153667(A323044(n+1))`
-/

namespace A153668.P22067094922256266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153667 (A323044 (n + 1)).toNat

end

end A153668.P22067094922256266

/-!
# A153670: Numbers k such that the fractional part of (101/100)^k is less than 1/k.

The programs for A153670, there is no canonical definition to state claims against.
-/

/-! ## A153670.P10614916087370682366

`lcm(n+1, A146687(round(ϕ*a(n-2))))` with `a(0)=1, a(1)=2`
-/

namespace A153670.P10614916087370682366
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2] fun n a =>
  Int.lcm (n + 1 : ℤ) (A146687 (SequenceMachineLib.roundAway (Real.goldenRatio * (a (n - 2) : ℝ))).toNat)

end

end A153670.P10614916087370682366

/-! ## A153670.P398996629200193918

`(n+1)*A002487(A072170(A052133(n)))`
-/

namespace A153670.P398996629200193918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A002487 (A072170 (A052133 n).toNat).toNat

end

end A153670.P398996629200193918

/-! ## A153670.P3097576696417953918

`(n+1)*A171128(A211357(A303931(n)))`
-/

namespace A153670.P3097576696417953918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A171128 (A211357 (A303931 n).toNat).toNat

end

end A153670.P3097576696417953918

/-! ## A153670.P3127718471919939107

`A053166(A007955(n+1)*A282765(n+1))`
-/

namespace A153670.P3127718471919939107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053166 (A007955 (n + 1) * A282765 (n + 1)).toNat

end

end A153670.P3127718471919939107

/-! ## A153670.P9204595127900362298

`lcm(A088568(A022327(n+1)), A282765(n+1))`
-/

namespace A153670.P9204595127900362298
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A088568 (A022327 (n + 1)).toNat) (A282765 (n + 1))

end

end A153670.P9204595127900362298

/-!
# A153675: Greatest number m such that the fractional part of (101/100)^A153671(m) >= 1-(1/m).

The programs for A153675, there is no canonical definition to state claims against.
-/

/-! ## A153675.P11834218776842728520

`ceil(A304714(n+1)/A296882(3*n+2))`
-/

namespace A153675.P11834218776842728520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A304714 (n + 1) : ℚ) / (A296882 (3 * n + 2) : ℚ)⌉

end

end A153675.P11834218776842728520

/-! ## A153675.P8251112412076134329

`ceil(A324749(n)/A001097(n+1))`
-/

namespace A153675.P8251112412076134329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A324749 n : ℚ) / (A001097 (n + 1) : ℚ)⌉

end

end A153675.P8251112412076134329

/-! ## A153675.P14420395387537837918

`ceil(A324749(n)/A255609(n+1))`
-/

namespace A153675.P14420395387537837918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A324749 n : ℚ) / (A255609 (n + 1) : ℚ)⌉

end

end A153675.P14420395387537837918

/-! ## A153675.P6578603784545498886

`A132924(floor(A241314(n)/A162643(2*(n+2)))+1)`
-/

namespace A153675.P6578603784545498886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132924 (⌊(A241314 n : ℚ) / (A162643 (2 * (n + 2)) : ℚ)⌋ + 1).toNat

end

end A153675.P6578603784545498886

/-! ## A153675.P9411519058121763507

`ceil(A147706(n+1)/A085987(n+1))`
-/

namespace A153675.P9411519058121763507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A147706 (n + 1) : ℚ) / (A085987 (n + 1) : ℚ)⌉

end

end A153675.P9411519058121763507

/-! ## A153675.P13074715379316346524

`ceil(A340693(n)/A095375(2*(n+1)))`
-/

namespace A153675.P13074715379316346524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A340693 n : ℚ) / (A095375 (2 * (n + 1)) : ℚ)⌉

end

end A153675.P13074715379316346524

/-! ## A153675.P13057250856864953489

`ceil(ceil(∑[A115012(n+1)]/98)/98)`
-/

namespace A153675.P13057250856864953489
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115012 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(⌈((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / 98⌉ : ℚ) / 98⌉

end

end A153675.P13057250856864953489

/-! ## A153675.P2840327756696864380

`ceil(A266686(n)/A340788(n+1))`
-/

namespace A153675.P2840327756696864380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A266686 n : ℚ) / (A340788 (n + 1) : ℚ)⌉

end

end A153675.P2840327756696864380

/-!
# A153678: Numbers k such that the fractional part of (1024/1000)^k is less than 1/k.

The programs for A153678, there is no canonical definition to state claims against.
-/

/-! ## A153678.P13958841736338890526

`A008988(C(n, 5))+n`
-/

namespace A153678.P13958841736338890526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008988 (Nat.choose n 5) + (n : ℤ)

end

end A153678.P13958841736338890526

/-! ## A153678.P526789738910825407

`A081433(A303368(n+2))`
-/

namespace A153678.P526789738910825407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081433 (A303368 (n + 2)).toNat

end

end A153678.P526789738910825407

/-! ## A153678.P3376056075484234874

`A008988(A145455(n))+n`
-/

namespace A153678.P3376056075484234874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008988 (A145455 n).toNat + (n : ℤ)

end

end A153678.P3376056075484234874

/-!
# A153679: Minimal exponents m such that the fractional part of (1024/1000)^m obtains a maximum (when starting with m=1).

The programs for A153679, there is no canonical definition to state claims against.
-/

/-! ## A153679.P7184342135705328279

`record[gcd(C((n+1)², 3), A226537(n+1))]`
-/

namespace A153679.P7184342135705328279
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (Nat.choose ((n + 1) ^ 2) 3 : ℤ) (A226537 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A153679.P7184342135705328279

/-! ## A153679.P8192298447298349568

`A056588(A210709(n))+n`
-/

namespace A153679.P8192298447298349568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056588 (A210709 n).toNat + (n : ℤ)

end

end A153679.P8192298447298349568

/-! ## A153679.P17193643915311560452

`A025523(∑[A210709(n)])+n`
-/

namespace A153679.P17193643915311560452
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210709 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025523 (∑ j ∈ Finset.range (n + 1), f1 j).toNat + (n : ℤ)

end

end A153679.P17193643915311560452

/-! ## A153679.P11555523755301617618

`A326498(A185255(n+1))+n`
-/

namespace A153679.P11555523755301617618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326498 (A185255 (n + 1)).toNat + (n : ℤ)

end

end A153679.P11555523755301617618

/-! ## A153679.P4776624092801521250

`gcd(A124180(2*n+3), A234368(n+1))+n`
-/

namespace A153679.P4776624092801521250
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A124180 (2 * n + 3)) (A234368 (n + 1)) + n

end

end A153679.P4776624092801521250

/-!
# A153685: Minimal exponents m such that the fractional part of (11/10)^m obtains a minimum (when starting with m=1).

The programs for A153685, there is no canonical definition to state claims against.
-/

/-! ## A153685.P4133427007379837166

`filter[A153686(n+1), A267673(#)]`
-/

namespace A153685.P4133427007379837166
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153686 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A267673 (f1 j).toNat = 1) n)

end

end A153685.P4133427007379837166

/-! ## A153685.P15120832522832801937

`A153686(A352829(n)+A265509(n))`
-/

namespace A153685.P15120832522832801937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153686 (A352829 n + A265509 n).toNat

end

end A153685.P15120832522832801937

/-!
# A153687: Minimal exponents m such that the fractional part of (11/10)^m obtains a maximum (when starting with m=1).

The programs for A153687, there is no canonical definition to state claims against.
-/

/-! ## A153687.P12881321379169650211

`or(A049455(A294764(n)), A177862(n))`
-/

namespace A153687.P12881321379169650211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A049455 (A294764 n).toNat) (A177862 n)

end

end A153687.P12881321379169650211

/-! ## A153687.P14810447949416707480

`∑[A083716((n+1)^4+1)]`
-/

namespace A153687.P14810447949416707480
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083716 ((n + 1) ^ 4 + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A153687.P14810447949416707480

/-! ## A153687.P10983827920758852808

`A122154(A010354(n+1))`
-/

namespace A153687.P10983827920758852808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122154 (A010354 (n + 1)).toNat

end

end A153687.P10983827920758852808

/-! ## A153687.P3539783614931897422

`∑[A141020(A008763(n)²)]`
-/

namespace A153687.P3539783614931897422
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141020 (A008763 n ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A153687.P3539783614931897422

/-! ## A153687.P2635302162957683037

`∑[A141020(∑[A115981(n)])]`
-/

namespace A153687.P2635302162957683037
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115981 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141020 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A153687.P2635302162957683037

/-!
# A153688: Numbers k such that the fractional part of (11/10)^k is greater than 1-(1/k).

The programs for A153688, there is no canonical definition to state claims against.
-/

/-! ## A153688.P7868152774456561525

`A153687(or(A153663(n+1), A280817(n+4)))`
-/

namespace A153688.P7868152774456561525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153687 (Int.lor (A153663 (n + 1)) (A280817 (n + 4))).toNat

end

end A153688.P7868152774456561525

/-!
# A153689: Greatest number m such that the fractional part of (11/10)^A153685(n) <= 1/m.

The programs for A153689, there is no canonical definition to state claims against.
-/

/-! ## A153689.P2949144037778226292

`record[A153690(n+1)]`
-/

namespace A153689.P2949144037778226292
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153690 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A153689.P2949144037778226292

/-! ## A153689.P595473846500374089

`record[A153690(A060384(n))]*A229889(n)`
-/

namespace A153689.P595473846500374089
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153690 (A060384 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) * A229889 n

end

end A153689.P595473846500374089

/-!
# A153690: Greatest number m such that the fractional part of (11/10)^A153686(n) <= 1/m.

The programs for A153690, there is no canonical definition to state claims against.
-/

/-! ## A153690.P13010001020374242208

`A071831(3*n+1)+A000608(A204661(n+1))`
-/

namespace A153690.P13010001020374242208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071831 (3 * n + 1) + A000608 (A204661 (n + 1)).toNat

end

end A153690.P13010001020374242208

/-!
# A153692: Greatest number m such that the fractional part of (11/10)^A153688(n) >= 1-(1/m).

The programs for A153692, there is no canonical definition to state claims against.
-/

/-! ## A153692.P13499409298691481

`A153691(A120944(n+1)-A244832(n+1))`
-/

namespace A153692.P13499409298691481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153691 (A120944 (n + 1) - A244832 (n + 1)).toNat

end

end A153692.P13499409298691481

/-! ## A153692.P9314586527596404482

`A153691(A074261(n+1)-A333254(n+1))`
-/

namespace A153692.P9314586527596404482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153691 (A074261 (n + 1) - A333254 (n + 1)).toNat

end

end A153692.P9314586527596404482

/-!
# A153693: Minimal exponents m such that the fractional part of (10/9)^m obtains a minimum (when starting with m=1).

The programs for A153693, there is no canonical definition to state claims against.
-/

/-! ## A153693.P2115023009703140744

`A059897(A291000(2*n))+A001107(n)`
-/

namespace A153693.P2115023009703140744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059897 (A291000 (2 * n)).toNat + A001107 n

end

end A153693.P2115023009703140744

/-!
# A153694: Numbers k such that the fractional part of (10/9)^k is less than 1/k.

The programs for A153694, there is no canonical definition to state claims against.
-/

/-! ## A153694.P17826265548620227314

`A053036(A087224(n))`
-/

namespace A153694.P17826265548620227314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053036 (A087224 n).toNat

end

end A153694.P17826265548620227314

/-!
# A153699: Greatest number m such that the fractional part of (10/9)^A153695(m) >= 1-(1/m).

The programs for A153699, there is no canonical definition to state claims against.
-/

/-! ## A153699.P5259083735796123625

`A201223(A166517(2^(a(n-2)-1)))` with `a(0)=1, a(1)=1, a(2)=1, a(3)=2`
-/

namespace A153699.P5259083735796123625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 1, 2] fun n a =>
  A201223 (A166517 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (a (n - 2) - 1 : ℤ))).toNat).toNat

end

end A153699.P5259083735796123625

/-! ## A153699.P6419469247396011946

`A003557(n+1)*A169894(A362293(n))`
-/

namespace A153699.P6419469247396011946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003557 (n + 1) * A169894 (A362293 n).toNat

end

end A153699.P6419469247396011946

/-! ## A153699.P10807390780494883004

`A268708(A206424(n)*A350019(n+1))`
-/

namespace A153699.P10807390780494883004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268708 (A206424 n * A350019 (n + 1)).toNat

end

end A153699.P10807390780494883004

/-! ## A153699.P9693915080857984321

`A056239(A184316(n+2)+A008284(n+1))`
-/

namespace A153699.P9693915080857984321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056239 (A184316 (n + 2) + A008284 (n + 1)).toNat

end

end A153699.P9693915080857984321

