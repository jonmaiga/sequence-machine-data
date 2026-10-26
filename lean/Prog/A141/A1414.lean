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
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C009
import Seq.B001.C010
import Seq.B001.C011
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C005
import Seq.B002.C006
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
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
import Seq.B008.C000
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
import Seq.Opaque.C025
import SequenceMachineLib.Triangle

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A141400: Numbers k such that 16*k^4 + 81 is prime.

The programs for A141400, there is no canonical definition to state claims against.
-/

/-! ## A141400.P5842441421964575627

`∑[A090002(A159772(n+1))]`
-/

namespace A141400.P5842441421964575627
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090002 (A159772 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A141400.P5842441421964575627

/-!
# A141402: Triangle T(n, k) = n^2 + (2*k*(n-k))^2, read by rows.

The programs for A141402, the canonical program `A141402.P1622332327337828175` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A141402 has offset 0).

The definition of A141402 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `row(n)²+(2*col(n)*(row(n)-col(n)))²` (program `A141402.P1622332327337828175`, by `A141402.P1622332327337828175.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A141402.P1622332327337828175

`row(n)²+(2*col(n)*(row(n)-col(n)))²`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A141402

/-- `row(n)²+(2*col(n)*(row(n)-col(n)))²` -/
def P1622332327337828175.Spec : Prop :=
  ∀ n, P1622332327337828175.a n = A141402 n

theorem P1622332327337828175.correct : P1622332327337828175.Spec := by
  intro n
  simp only [A141402]

end A141402

/-! ## A141402.P11541787477727072780

`(2*A004247(n))²+log2(A137688(n))²`
-/

namespace A141402.P11541787477727072780
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((2 * A004247 n) ^ 2 : ℝ) + Real.logb 2 (A137688 n : ℝ) ^ 2

end

end A141402.P11541787477727072780

namespace A141402

/-- `(2*A004247(n))²+log2(A137688(n))²` -/
def P11541787477727072780.Spec : Prop :=
  ∀ n, P11541787477727072780.a n = (A141402 n : ℝ)

end A141402

/-! ## A141402.P9393171065598840802

`A281385(n)+A033991(A004247(n))`
-/

namespace A141402.P9393171065598840802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281385 n + A033991 (A004247 n).toNat

end

end A141402.P9393171065598840802

namespace A141402

/-- `A281385(n)+A033991(A004247(n))` -/
def P9393171065598840802.Spec : Prop :=
  ∀ n, P9393171065598840802.a n = A141402 n

end A141402

/-! ## A141402.P1092358202357288515

`A016742(A004247(n))+A003056(n)²`
-/

namespace A141402.P1092358202357288515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016742 (A004247 n).toNat + A003056 n ^ 2

end

end A141402.P1092358202357288515

namespace A141402

/-- `A016742(A004247(n))+A003056(n)²` -/
def P1092358202357288515.Spec : Prop :=
  ∀ n, P1092358202357288515.a n = A141402 n

end A141402

/-! ## A141402.P5753205155196370891

`(A003056(n)-A141387(n))²+A003056(n)²`
-/

namespace A141402.P5753205155196370891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A003056 n - A141387 n) ^ 2 + A003056 n ^ 2

end

end A141402.P5753205155196370891

namespace A141402

/-- `(A003056(n)-A141387(n))²+A003056(n)²` -/
def P5753205155196370891.Spec : Prop :=
  ∀ n, P5753205155196370891.a n = A141402 n

end A141402

/-! ## A141402.P595221638036385672

`(1-A002024(n+1))²+2*A004247(n)*2*A004247(n)`
-/

namespace A141402.P595221638036385672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A002024 (n + 1)) ^ 2 + 2 * A004247 n * (2 * A004247 n)

end

end A141402.P595221638036385672

namespace A141402

/-- `(1-A002024(n+1))²+2*A004247(n)*2*A004247(n)` -/
def P595221638036385672.Spec : Prop :=
  ∀ n, P595221638036385672.a n = A141402 n

end A141402

/-!
# A141406: Numbers n where the sum of all of its divisors < sqrt(n) exceeds the sum of all the divisors of m < sqrt(m) for all m

The programs for A141406, there is no canonical definition to state claims against.
-/

/-! ## A141406.P13124818002063185371

`record[A110500(record[A023900(n+1)])]`
-/

namespace A141406.P13124818002063185371
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023900 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110500 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A141406.P13124818002063185371

/-! ## A141406.P12669544973966864450

`record[A110500(record[A097945(n+1)])]`
-/

namespace A141406.P12669544973966864450
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097945 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110500 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A141406.P12669544973966864450

/-! ## A141406.P12142759145239573895

`record[A129628(A067587(4*n+1))]`
-/

namespace A141406.P12142759145239573895
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129628 (A067587 (4 * n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A141406.P12142759145239573895

/-! ## A141406.P1469366242237168863

`record[gcd(A070939(n)!, A328594(n+1))]`
-/

namespace A141406.P1469366242237168863
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (Nat.factorial (A070939 n).toNat : ℤ) (A328594 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A141406.P1469366242237168863

/-! ## A141406.P2347258970125605650

`record[(A001221(A324922(n+1))+1)*A124758(n)]`
-/

namespace A141406.P2347258970125605650
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A001221 (A324922 (n + 1)).toNat + 1) * A124758 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A141406.P2347258970125605650

/-!
# A141407: a(n) = binomial(n+7,7)*6^n.

The programs for A141407, the canonical program `A141407.P16985543083532074927` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A141407 has offset 0).

The definition of A141407 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `C(n+7, 7)*6^n` (program `A141407.P16985543083532074927`, by `A141407.P16985543083532074927.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A141407.P3761284978510622443

`6^n*C(n+7, 7)`
-/

namespace A141407.P3761284978510622443
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6 ^ n * Nat.choose (n + 7) 7

end

end A141407.P3761284978510622443

namespace A141407

/-- `6^n*C(n+7, 7)` -/
def P3761284978510622443.Spec : Prop :=
  ∀ n, (P3761284978510622443.a n : ℤ) = A141407 n

theorem P3761284978510622443.correct : P3761284978510622443.Spec := by
  intro n
  simp only [A141407, Nat.add_sub_cancel, A141407.P3761284978510622443.a, A141407.P16985543083532074927.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A141407

/-! ## A141407.P16985543083532074927

`C(n+7, 7)*6^n`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A141407

/-- `C(n+7, 7)*6^n` -/
def P16985543083532074927.Spec : Prop :=
  ∀ n, (P16985543083532074927.a n : ℤ) = A141407 n

theorem P16985543083532074927.correct : P16985543083532074927.Spec := by
  intro n
  simp only [A141407]

end A141407

/-! ## A141407.P18244305776899982819

`6*(7/n+1)*a(n-1)` with `a(0)=1`
-/

namespace A141407.P18244305776899982819
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  6 * ((7 / (n : ℚ) + 1) * a (n - 1))

end

end A141407.P18244305776899982819

namespace A141407

/-- `6*(7/n+1)*a(n-1)` -/
def P18244305776899982819.Spec : Prop :=
  ∀ n, P18244305776899982819.a n = (A141407 n : ℚ)

end A141407

/-! ## A141407.P2935323570860746761

`3^n*A054851(n+7)`
-/

namespace A141407.P2935323570860746761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 ^ n : ℤ) * A054851 (n + 7)

end

end A141407.P2935323570860746761

namespace A141407

/-- `3^n*A054851(n+7)` -/
def P2935323570860746761.Spec : Prop :=
  ∀ n, P2935323570860746761.a n = A141407 n

end A141407

/-! ## A141407.P730271367655373082

`6^n*A000580(n+7)`
-/

namespace A141407.P730271367655373082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (6 ^ n : ℤ) * A000580 (n + 7)

end

end A141407.P730271367655373082

namespace A141407

/-- `6^n*A000580(n+7)` -/
def P730271367655373082.Spec : Prop :=
  ∀ n, P730271367655373082.a n = A141407 n

theorem P730271367655373082.correct : P730271367655373082.Spec := by
  intro n
  simp only [A141407, Nat.add_sub_cancel, A141407.P730271367655373082.a, A141407.P16985543083532074927.a, A000580, A000580.P16667415707980948191.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A141407

/-! ## A141407.P7759916220852279311

`6^n*∑[A000579(n+6)]`
-/

namespace A141407.P7759916220852279311
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000579 (n + 6)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (6 ^ n : ℤ) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A141407.P7759916220852279311

namespace A141407

/-- `6^n*∑[A000579(n+6)]` -/
def P7759916220852279311.Spec : Prop :=
  ∀ n, P7759916220852279311.a n = A141407 n

end A141407

/-! ## A141407.P8237701825257155415

`A000079(n)*A036221(n)`
-/

namespace A141407.P8237701825257155415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n * A036221 n

end

end A141407.P8237701825257155415

namespace A141407

/-- `A000079(n)*A036221(n)` -/
def P8237701825257155415.Spec : Prop :=
  ∀ n, P8237701825257155415.a n = A141407 n

end A141407

/-! ## A141407.P9814165960898839199

`A082141(n)*A099856(n)`
-/

namespace A141407.P9814165960898839199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082141 n * A099856 n

end

end A141407.P9814165960898839199

namespace A141407

/-- `A082141(n)*A099856(n)` -/
def P9814165960898839199.Spec : Prop :=
  ∀ n, P9814165960898839199.a n = A141407 n

end A141407

/-! ## A141407.P11298473861405105135

`∑[A209404(n)]*A000244(n)`
-/

namespace A141407.P11298473861405105135
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209404 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A000244 n

end

end A141407.P11298473861405105135

namespace A141407

/-- `∑[A209404(n)]*A000244(n)` -/
def P11298473861405105135.Spec : Prop :=
  ∀ n, P11298473861405105135.a n = A141407 n

end A141407

/-! ## A141407.P9025440764508902690

`Δ[A000051(n)]*A036221(n)`
-/

namespace A141407.P9025440764508902690
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000051 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A036221 n

end

end A141407.P9025440764508902690

namespace A141407

/-- `Δ[A000051(n)]*A036221(n)` -/
def P9025440764508902690.Spec : Prop :=
  ∀ n, P9025440764508902690.a n = A141407 n

end A141407

/-! ## A141407.P13994843075500817315

`lcm(A036221(n), A054851(n+7))`
-/

namespace A141407.P13994843075500817315
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A036221 n) (A054851 (n + 7))

end

end A141407.P13994843075500817315

namespace A141407

/-- `lcm(A036221(n), A054851(n+7))` -/
def P13994843075500817315.Spec : Prop :=
  ∀ n, (P13994843075500817315.a n : ℤ) = A141407 n

end A141407

/-!
# A141408: Primes p = A007947(m) such that p+6 is also prime and p + 1 = A007947(m + 1).

The programs for A141408, the canonical program `A141408.P6799354960942837233` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A141408 has offset 1).

The definition of A141408 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2428 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A141408.P6799354960942837233

`∩[A015914(n+1), A049097(n+1)]`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A141408

/-- `∩[A015914(n+1), A049097(n+1)]` -/
def P6799354960942837233.Spec : Prop :=
  ∀ n, (P6799354960942837233.a n : ℤ) = A141408 (n + 1)

theorem P6799354960942837233.correct : P6799354960942837233.Spec := by
  intro n
  simp only [A141408, Nat.add_sub_cancel]

end A141408

/-! ## A141408.P4794778252661170765

`∩[A023201(n+1), A049097(n+1)]`
-/

namespace A141408.P4794778252661170765
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023201 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049097 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141408.P4794778252661170765

namespace A141408

/-- `∩[A023201(n+1), A049097(n+1)]` -/
def P4794778252661170765.Spec : Prop :=
  ∀ n, (P4794778252661170765.a n : ℤ) = A141408 (n + 1)

end A141408

/-! ## A141408.P916175486441910709

`∩[A049097(n+1), A262084(n+1)]`
-/

namespace A141408.P916175486441910709
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049097 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262084 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141408.P916175486441910709

namespace A141408

/-- `∩[A049097(n+1), A262084(n+1)]` -/
def P916175486441910709.Spec : Prop :=
  ∀ n, (P916175486441910709.a n : ℤ) = A141408 (n + 1)

end A141408

/-! ## A141408.P11284196322602763750

`∩[A015914(n+1), A065301(n+1)]`
-/

namespace A141408.P11284196322602763750
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015914 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065301 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141408.P11284196322602763750

namespace A141408

/-- `∩[A015914(n+1), A065301(n+1)]` -/
def P11284196322602763750.Spec : Prop :=
  ∀ n, (P11284196322602763750.a n : ℤ) = A141408 (n + 1)

end A141408

/-! ## A141408.P3897715474562228049

`∩[A023201(n+1), A065301(n+1)]`
-/

namespace A141408.P3897715474562228049
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023201 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065301 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141408.P3897715474562228049

namespace A141408

/-- `∩[A023201(n+1), A065301(n+1)]` -/
def P3897715474562228049.Spec : Prop :=
  ∀ n, (P3897715474562228049.a n : ℤ) = A141408 (n + 1)

end A141408

/-! ## A141408.P14387619099116017057

`∩[A065301(n+1), A262084(n+1)]`
-/

namespace A141408.P14387619099116017057
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065301 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262084 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141408.P14387619099116017057

namespace A141408

/-- `∩[A065301(n+1), A262084(n+1)]` -/
def P14387619099116017057.Spec : Prop :=
  ∀ n, (P14387619099116017057.a n : ℤ) = A141408 (n + 1)

end A141408

/-! ## A141408.P12342371187260318990

`∩[A015914(n+1), A386424(n+1)]`
-/

namespace A141408.P12342371187260318990
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015914 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386424 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141408.P12342371187260318990

namespace A141408

/-- `∩[A015914(n+1), A386424(n+1)]` -/
def P12342371187260318990.Spec : Prop :=
  ∀ n, (P12342371187260318990.a n : ℤ) = A141408 (n + 1)

end A141408

/-! ## A141408.P5481400375840415060

`∩[A023201(n+1), A386424(n+1)]`
-/

namespace A141408.P5481400375840415060
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023201 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386424 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141408.P5481400375840415060

namespace A141408

/-- `∩[A023201(n+1), A386424(n+1)]` -/
def P5481400375840415060.Spec : Prop :=
  ∀ n, (P5481400375840415060.a n : ℤ) = A141408 (n + 1)

end A141408

/-! ## A141408.P1257318526483030077

`∩[A023201(n+1), A065300(n+1)]`
-/

namespace A141408.P1257318526483030077
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023201 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065300 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141408.P1257318526483030077

namespace A141408

/-- `∩[A023201(n+1), A065300(n+1)]` -/
def P1257318526483030077.Spec : Prop :=
  ∀ n, (P1257318526483030077.a n : ℤ) = A141408 (n + 1)

end A141408

/-! ## A141408.P1279854547382762976

`∩[A049097(n+1), A086304(n+1)]`
-/

namespace A141408.P1279854547382762976
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049097 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086304 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141408.P1279854547382762976

namespace A141408

/-- `∩[A049097(n+1), A086304(n+1)]` -/
def P1279854547382762976.Spec : Prop :=
  ∀ n, (P1279854547382762976.a n : ℤ) = A141408 (n + 1)

end A141408

/-! ## A141408.P12446626376312909452

`∩[A049097(n+1), A118538(n+1)]`
-/

namespace A141408.P12446626376312909452
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049097 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118538 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141408.P12446626376312909452

namespace A141408

/-- `∩[A049097(n+1), A118538(n+1)]` -/
def P12446626376312909452.Spec : Prop :=
  ∀ n, (P12446626376312909452.a n : ℤ) = A141408 (n + 1)

end A141408

/-! ## A141408.P12826002931778871137

`record[A007913(A023201(n+1)+1)]-1`
-/

namespace A141408.P12826002931778871137
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (A023201 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - 1

end

end A141408.P12826002931778871137

namespace A141408

/-- `record[A007913(A023201(n+1)+1)]-1` -/
def P12826002931778871137.Spec : Prop :=
  ∀ n, P12826002931778871137.a n = A141408 (n + 1)

end A141408

/-! ## A141408.P11665467300715161181

`record[A083346(A023201(n+1)+1)-1]`
-/

namespace A141408.P11665467300715161181
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083346 (A023201 (n + 1) + 1).toNat - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A141408.P11665467300715161181

namespace A141408

/-- `record[A083346(A023201(n+1)+1)-1]` -/
def P11665467300715161181.Spec : Prop :=
  ∀ n, P11665467300715161181.a n = A141408 (n + 1)

end A141408

/-! ## A141408.P15235267630699478663

`∩[A049097(n+1), A282391(n+1)]`
-/

namespace A141408.P15235267630699478663
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049097 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282391 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141408.P15235267630699478663

namespace A141408

/-- `∩[A049097(n+1), A282391(n+1)]` -/
def P15235267630699478663.Spec : Prop :=
  ∀ n, (P15235267630699478663.a n : ℤ) = A141408 (n + 1)

end A141408

/-! ## A141408.P6292933519422907980

`∩[A007674(n+1), A015914(n+1)]`
-/

namespace A141408.P6292933519422907980
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007674 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015914 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141408.P6292933519422907980

namespace A141408

/-- `∩[A007674(n+1), A015914(n+1)]` -/
def P6292933519422907980.Spec : Prop :=
  ∀ n, (P6292933519422907980.a n : ℤ) = A141408 (n + 1)

end A141408

/-! ## A141408.P16863403767747892552

`∩[A007674(n+1), A023201(n+1)]`
-/

namespace A141408.P16863403767747892552
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007674 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023201 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141408.P16863403767747892552

namespace A141408

/-- `∩[A007674(n+1), A023201(n+1)]` -/
def P16863403767747892552.Spec : Prop :=
  ∀ n, (P16863403767747892552.a n : ℤ) = A141408 (n + 1)

end A141408

/-! ## A141408.P3359027611356804779

`∩[A015914(n+1), A081083(n+1)]`
-/

namespace A141408.P3359027611356804779
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015914 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081083 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141408.P3359027611356804779

namespace A141408

/-- `∩[A015914(n+1), A081083(n+1)]` -/
def P3359027611356804779.Spec : Prop :=
  ∀ n, (P3359027611356804779.a n : ℤ) = A141408 (n + 1)

end A141408

/-! ## A141408.P5268924450800272846

`∩[A023201(n+1), A081083(n+1)]`
-/

namespace A141408.P5268924450800272846
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023201 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081083 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141408.P5268924450800272846

namespace A141408

/-- `∩[A023201(n+1), A081083(n+1)]` -/
def P5268924450800272846.Spec : Prop :=
  ∀ n, (P5268924450800272846.a n : ℤ) = A141408 (n + 1)

end A141408

/-! ## A141408.P17913128362863650020

`p?[p?[A344314(n+1)+6]-6]`
-/

namespace A141408.P17913128362863650020
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344314 (n + 1) + 6

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n) - 6

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A141408.P17913128362863650020

namespace A141408

/-- `p?[p?[A344314(n+1)+6]-6]` -/
def P17913128362863650020.Spec : Prop :=
  ∀ n, P17913128362863650020.a n = A141408 (n + 1)

end A141408

/-! ## A141408.P4505059423657140773

`∩[A023201(n+1), A344314(n+1)]`
-/

namespace A141408.P4505059423657140773
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023201 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344314 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141408.P4505059423657140773

namespace A141408

/-- `∩[A023201(n+1), A344314(n+1)]` -/
def P4505059423657140773.Spec : Prop :=
  ∀ n, (P4505059423657140773.a n : ℤ) = A141408 (n + 1)

end A141408

/-!
# A141409: Prime numbers that cannot be formed by the concatenation of previous terms.

The programs for A141409, there is no canonical definition to state claims against.
-/

/-! ## A141409.P15194973127796285469

`A061340(A238647(n+1))`
-/

namespace A141409.P15194973127796285469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061340 (A238647 (n + 1)).toNat

end

end A141409.P15194973127796285469

/-!
# A141410: Denominator of A027760(n+1)/n.

The programs for A141410, there is no canonical definition to state claims against.
-/

/-! ## A141410.P3050923007226915484

`(n+2)/gcd(n+2, A079612(n+3))`
-/

namespace A141410.P3050923007226915484
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℚ) / (Int.gcd (n + 2 : ℤ) (A079612 (n + 3)) : ℚ)

end

end A141410.P3050923007226915484

/-! ## A141410.P14203461328388078712

`gcd((n%2+1)*(n+2)/2, A228926(n+2))`
-/

namespace A141410.P14203461328388078712
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (SequenceMachineLib.roundAway (((n % 2 + 1 : ℕ) : ℚ) * ((n + 2 : ℚ) / 2))) (A228926 (n + 2))

end

end A141410.P14203461328388078712

/-! ## A141410.P12222254940810174292

`A026741(gcd(n+2, A228926(n+2)))`
-/

namespace A141410.P12222254940810174292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (Int.gcd (n + 2 : ℤ) (A228926 (n + 2)))

end

end A141410.P12222254940810174292

/-! ## A141410.P9647605016175200039

`gcd(lcm(2, n+2)/2, A177690(2*(n+2)/gcd(4, n)))`
-/

namespace A141410.P9647605016175200039
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (SequenceMachineLib.roundAway ((Nat.lcm 2 (n + 2) : ℚ) / 2)) (A177690 (SequenceMachineLib.roundAway (2 * ((n + 2 : ℚ) / (Nat.gcd 4 n : ℚ)))).toNat)

end

end A141410.P9647605016175200039

/-! ## A141410.P14216908756858051771

`A003570(A285543(n))`
-/

namespace A141410.P14216908756858051771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003570 (A285543 n).toNat

end

end A141410.P14216908756858051771

/-!
# A141411: Defined in comments.

The programs for A141411, there is no canonical definition to state claims against.
-/

/-! ## A141411.P2426093199941455525

`A347205(A026274(n+1)+A011557(n))`
-/

namespace A141411.P2426093199941455525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347205 (A026274 (n + 1) + A011557 n).toNat

end

end A141411.P2426093199941455525

/-!
# A141412: Triangle c(n,k) of the denominators of coefficients [x^k] P(n,x) of the polynomials P(n,x) of A129891.

The programs for A141412, the canonical program `A141412.P1807454739439104391` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A141412 has offset 0).

The definition of A141412 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2415 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A141412.P1807454739439104391

`A173333(n+1)/A008275(n+1)*A140749(n)`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A141412

/-- `A173333(n+1)/A008275(n+1)*A140749(n)` -/
def P1807454739439104391.Spec : Prop :=
  ∀ n, P1807454739439104391.a n = (A141412 n : ℚ)

end A141412

/-! ## A141412.P16890381655364473813

`A173333(n+1)/gcd(A130534(n), A173333(n+1))`
-/

namespace A141412.P16890381655364473813
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A173333 (n + 1) : ℚ) / (Int.gcd (A130534 n) (A173333 (n + 1)) : ℚ)

end

end A141412.P16890381655364473813

namespace A141412

/-- `A173333(n+1)/gcd(A130534(n), A173333(n+1))` -/
def P16890381655364473813.Spec : Prop :=
  ∀ n, P16890381655364473813.a n = (A141412 n : ℚ)

end A141412

/-! ## A141412.P8105286077655715754

`lcm(A130534(n), A173333(n+1))/A130534(n)`
-/

namespace A141412.P8105286077655715754
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm (A130534 n) (A173333 (n + 1)) : ℚ) / (A130534 n : ℚ)

end

end A141412.P8105286077655715754

namespace A141412

/-- `lcm(A130534(n), A173333(n+1))/A130534(n)` -/
def P8105286077655715754.Spec : Prop :=
  ∀ n, P8105286077655715754.a n = (A141412 n : ℚ)

end A141412

/-! ## A141412.P7397130218315599894

`gcd(A051043(A063656(n)), A208920(n+1))`
-/

namespace A141412.P7397130218315599894
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A051043 (A063656 n).toNat) (A208920 (n + 1))

end

end A141412.P7397130218315599894

namespace A141412

/-- `gcd(A051043(A063656(n)), A208920(n+1))` -/
def P7397130218315599894.Spec : Prop :=
  ∀ n, (P7397130218315599894.a n : ℤ) = A141412 n

end A141412

/-! ## A141412.P12501979158092574855

`gcd(A002062(A262705(n)), A210558(n+1))`
-/

namespace A141412.P12501979158092574855
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002062 (A262705 n).toNat) (A210558 (n + 1))

end

end A141412.P12501979158092574855

namespace A141412

/-- `gcd(A002062(A262705(n)), A210558(n+1))` -/
def P12501979158092574855.Spec : Prop :=
  ∀ n, (P12501979158092574855.a n : ℤ) = A141412 n

end A141412

/-!
# A141413: Inverse binomial transform of A140962.

The programs for A141413, the canonical program `A141413.P8716011503116370157` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A141413 has offset 0).

The definition of A141413 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 212 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A141413.P8716011503116370157

`floor((-3)^(n-2))`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A141413

/-- `floor((-3)^(n-2))` -/
def P8716011503116370157.Spec : Prop :=
  ∀ n, P8716011503116370157.a n = A141413 n

theorem P8716011503116370157.correct : P8716011503116370157.Spec := by
  intro n
  simp only [A141413]

end A141413

/-! ## A141413.P4190320795592049416

`ogf((-x-2x^2)/(1+3x))`
-/

namespace A141413.P4190320795592049416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, -1, -2] [1, 3] n

end

end A141413.P4190320795592049416

namespace A141413

/-- `ogf((-x-2x^2)/(1+3x))` -/
def P4190320795592049416.Spec : Prop :=
  ∀ n, P4190320795592049416.a n = A141413 n

end A141413

/-! ## A141413.P648438770144701193

`round((C(2, n)-3)^(n-2))`
-/

namespace A141413.P648438770144701193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (((Nat.choose 2 n : ℤ) - 3 : ℚ) ^ ((n : ℤ) - 2 : ℤ))

end

end A141413.P648438770144701193

namespace A141413

/-- `round((C(2, n)-3)^(n-2))` -/
def P648438770144701193.Spec : Prop :=
  ∀ n, P648438770144701193.a n = A141413 n

end A141413

/-! ## A141413.P6814786493040693574

`-(3*a(n-1))` with `a(0)=0, a(1)=-1, a(2)=1`
-/

namespace A141413.P6814786493040693574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, -1, 1] fun n a =>
  -(3 * a (n - 1))

end

end A141413.P6814786493040693574

namespace A141413

/-- `-(3*a(n-1))` -/
def P6814786493040693574.Spec : Prop :=
  ∀ n, P6814786493040693574.a n = A141413 n

end A141413

/-! ## A141413.P15078875705566209305

`9*a(n-2)` with `a(0)=0, a(1)=-1, a(2)=1, a(3)=-3`
-/

namespace A141413.P15078875705566209305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, -1, 1, -3] fun n a =>
  9 * a (n - 2)

end

end A141413.P15078875705566209305

namespace A141413

/-- `9*a(n-2)` -/
def P15078875705566209305.Spec : Prop :=
  ∀ n, P15078875705566209305.a n = A141413 n

end A141413

/-! ## A141413.P2401496407196553220

`(-3^a(2%n))^(n-2)` with `a(0)=0`
-/

namespace A141413.P2401496407196553220
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.rec [0] fun n a =>
  (-((3 : ℝ) ^ (a (2 % n)))) ^ ((n : ℤ) - 2 : ℤ)

end

end A141413.P2401496407196553220

namespace A141413

/-- `(-3^a(2%n))^(n-2)` -/
def P2401496407196553220.Spec : Prop :=
  ∀ n, P2401496407196553220.a n = (A141413 n : ℝ)

end A141413

/-! ## A141413.P15604253933107882805

`round((val(2*n+1, n+2)-3)^(n-2))`
-/

namespace A141413.P15604253933107882805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (((SequenceMachineLib.valuation (2 * n + 1) (n + 2) : ℤ) - 3 : ℚ) ^ ((n : ℤ) - 2 : ℤ))

end

end A141413.P15604253933107882805

namespace A141413

/-- `round((val(2*n+1, n+2)-3)^(n-2))` -/
def P15604253933107882805.Spec : Prop :=
  ∀ n, P15604253933107882805.a n = A141413 n

end A141413

/-! ## A141413.P13927730004264064498

`Δ[1-a(n-1)-a(n-1)-a(n-1)]` with `a(0)=1, a(1)=1, a(2)=0`
-/

namespace A141413.P13927730004264064498
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 0] fun n f1 =>
  1 - f1 (n - 1) - f1 (n - 1) - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A141413.P13927730004264064498

namespace A141413

/-- `Δ[1-a(n-1)-a(n-1)-a(n-1)]` -/
def P13927730004264064498.Spec : Prop :=
  ∀ n, P13927730004264064498.a n = A141413 n

end A141413

/-! ## A141413.P14255883160789874860

`A352779(n)%A026097(n)`
-/

namespace A141413.P14255883160789874860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A352779 n) (A026097 n)

end

end A141413.P14255883160789874860

namespace A141413

/-- `A352779(n)%A026097(n)` -/
def P14255883160789874860.Spec : Prop :=
  ∀ n, P14255883160789874860.a n = A141413 n

end A141413

/-! ## A141413.P9536194972072896022

`A091103(n)%A025579(n+1)`
-/

namespace A141413.P9536194972072896022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A091103 n) (A025579 (n + 1))

end

end A141413.P9536194972072896022

namespace A141413

/-- `A091103(n)%A025579(n+1)` -/
def P9536194972072896022.Spec : Prop :=
  ∀ n, P9536194972072896022.a n = A141413 n

end A141413

/-! ## A141413.P4129264173500921664

`a(n-1)²/a(n-2)` with `a(0)=0, a(1)=-1, a(2)=1, a(3)=-3`
-/

namespace A141413.P4129264173500921664
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [0, -1, 1, -3] fun n a =>
  a (n - 1) ^ 2 / a (n - 2)

end

end A141413.P4129264173500921664

namespace A141413

/-- `a(n-1)²/a(n-2)` -/
def P4129264173500921664.Spec : Prop :=
  ∀ n, P4129264173500921664.a n = (A141413 n : ℚ)

end A141413

/-!
# A141414: Least k for which A140361(n) = k.

The programs for A141414, there is no canonical definition to state claims against.
-/

/-! ## A141414.P18080846283516256826

`A265166(A119330(n))`
-/

namespace A141414.P18080846283516256826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265166 (A119330 n).toNat

end

end A141414.P18080846283516256826

/-! ## A141414.P16032032126652607478

`A265166(A352902(n))`
-/

namespace A141414.P16032032126652607478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265166 (A352902 n).toNat

end

end A141414.P16032032126652607478

/-!
# A141416: First differences of A133730.

The programs for A141416, the canonical program `A141416.P454711086932109045` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A141416 has offset 0).

The definition of A141416 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 668 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A141416.P3354676049789238169

`ogf((1+x-3x^2-x^3)/(-1+x^2+2x^4))`
-/

namespace A141416.P3354676049789238169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [-1, -1, 3, 1] [1, 0, -1, 0, -2] n

end

end A141416.P3354676049789238169

namespace A141416

/-- `ogf((1+x-3x^2-x^3)/(-1+x^2+2x^4))` -/
def P3354676049789238169.Spec : Prop :=
  ∀ n, P3354676049789238169.a n = A141416 n

end A141416

/-! ## A141416.P454711086932109045

`a(n-2)+2*a(n-4)` with `a(0)=-1, a(1)=-1, a(2)=2, a(3)=0`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A141416

/-- `a(n-2)+2*a(n-4)` -/
def P454711086932109045.Spec : Prop :=
  ∀ n, P454711086932109045.a n = A141416 n

theorem P454711086932109045.correct : P454711086932109045.Spec := by
  intro n
  simp only [A141416]

end A141416

/-! ## A141416.P10029760322405162608

`a(n-4)+a(n-2)+a(n-4)` with `a(0)=-1, a(1)=-1, a(2)=2, a(3)=0`
-/

namespace A141416.P10029760322405162608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [-1, -1, 2, 0] fun n a =>
  a (n - 4) + (a (n - 2) + a (n - 4))

end

end A141416.P10029760322405162608

namespace A141416

/-- `a(n-4)+a(n-2)+a(n-4)` -/
def P10029760322405162608.Spec : Prop :=
  ∀ n, P10029760322405162608.a n = A141416 n

end A141416

/-! ## A141416.P17769075561359765142

`Δ[A133730(n)]`
-/

namespace A141416.P17769075561359765142
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133730 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A141416.P17769075561359765142

namespace A141416

/-- `Δ[A133730(n)]` -/
def P17769075561359765142.Spec : Prop :=
  ∀ n, P17769075561359765142.a n = A141416 n

end A141416

/-! ## A141416.P13873888593564553325

`A133730(n+1)-A133730(n)`
-/

namespace A141416.P13873888593564553325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133730 (n + 1) - A133730 n

end

end A141416.P13873888593564553325

namespace A141416

/-- `A133730(n+1)-A133730(n)` -/
def P13873888593564553325.Spec : Prop :=
  ∀ n, P13873888593564553325.a n = A141416 n

end A141416

/-! ## A141416.P17588547452023878542

`Δ[Δ[A133684(n)]]`
-/

namespace A141416.P17588547452023878542
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133684 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A141416.P17588547452023878542

namespace A141416

/-- `Δ[Δ[A133684(n)]]` -/
def P17588547452023878542.Spec : Prop :=
  ∀ n, P17588547452023878542.a n = A141416 n

end A141416

/-! ## A141416.P15601156207654369629

`Δ[Δ[A016116(n-2)-a(n-2)]]` with `a(0)=0, a(1)=1`
-/

namespace A141416.P15601156207654369629
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n f2 =>
  A016116 (n - 2) - f2 (n - 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A141416.P15601156207654369629

namespace A141416

/-- `Δ[Δ[A016116(n-2)-a(n-2)]]` -/
def P15601156207654369629.Spec : Prop :=
  ∀ n, P15601156207654369629.a n = A141416 n

end A141416

/-! ## A141416.P8881965309079859539

`A016116(n)-(A133684(n+1)+A133684(n+1))`
-/

namespace A141416.P8881965309079859539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016116 n - (A133684 (n + 1) + A133684 (n + 1))

end

end A141416.P8881965309079859539

namespace A141416

/-- `A016116(n)-(A133684(n+1)+A133684(n+1))` -/
def P8881965309079859539.Spec : Prop :=
  ∀ n, P8881965309079859539.a n = A141416 n

end A141416

/-! ## A141416.P7953756040771550301

`Δ[Δ[A135318(n)-A230096(n)]]`
-/

namespace A141416.P7953756040771550301
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135318 n - A230096 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A141416.P7953756040771550301

namespace A141416

/-- `Δ[Δ[A135318(n)-A230096(n)]]` -/
def P7953756040771550301.Spec : Prop :=
  ∀ n, P7953756040771550301.a n = A141416 n

end A141416

/-! ## A141416.P2626247545492087262

`A356050(n)-(A056594(n)+A016116(n+1))`
-/

namespace A141416.P2626247545492087262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356050 n - (A056594 n + A016116 (n + 1))

end

end A141416.P2626247545492087262

namespace A141416

/-- `A356050(n)-(A056594(n)+A016116(n+1))` -/
def P2626247545492087262.Spec : Prop :=
  ∀ n, P2626247545492087262.a n = A141416 n

end A141416

/-!
# A141417: (-1)^(n+1)*A091137(n)*a(0,n), where a(i,j) = Integral_{x=i..i+1} x*(x-1)*(x-2)*...*(x-j+1)/j! dx.

The programs for A141417, there is no canonical definition to state claims against.
-/

/-! ## A141417.P16758598704798181721

`A002657(A004905(n+1))-A195287(n)`
-/

namespace A141417.P16758598704798181721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002657 (A004905 (n + 1)).toNat - A195287 n

end

end A141417.P16758598704798181721

/-! ## A141417.P9667717009758593382

`A002657(n)-A195287(A003100(n))`
-/

namespace A141417.P9667717009758593382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002657 n - A195287 (A003100 n).toNat

end

end A141417.P9667717009758593382

/-! ## A141417.P7781941356221868596

`A002657(n)-A195287(A056143(n))`
-/

namespace A141417.P7781941356221868596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002657 n - A195287 (A056143 n).toNat

end

end A141417.P7781941356221868596

/-! ## A141417.P6618714158405108877

`A002657(n)-A195287(A181352(n))`
-/

namespace A141417.P6618714158405108877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002657 n - A195287 (A181352 n).toNat

end

end A141417.P6618714158405108877

/-! ## A141417.P14125051417771928167

`A002657(A145461(n+1))-A195287(n)`
-/

namespace A141417.P14125051417771928167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002657 (A145461 (n + 1)).toNat - A195287 n

end

end A141417.P14125051417771928167

/-!
# A141418: Triangle read by rows: T(n,k) = k * (2*n - k - 1) / 2, 1 <= k <= n.

The programs for A141418, the canonical program `A141418.P4080118135524004049` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A141418 has offset 1).

The definition of A141418 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(col(n)+1)*(2*(row(n)+1)-(col(n)+1)-1)/2` (program `A141418.P16103118710698348226`, by `A141418.P16103118710698348226.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A141418.P16103118710698348226

`(col(n)+1)*(2*(row(n)+1)-(col(n)+1)-1)/2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A141418.P16103118710698348226
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.triCol n + 1 : ℤ) * ((2 * (SequenceMachineLib.triRow n + 1) : ℤ) - (SequenceMachineLib.triCol n + 1 : ℤ) - 1) : ℚ) / 2

end

end A141418.P16103118710698348226

namespace A141418

/-- `(col(n)+1)*(2*(row(n)+1)-(col(n)+1)-1)/2` -/
def P16103118710698348226.Spec : Prop :=
  ∀ n, P16103118710698348226.a n = (A141418 (n + 1) : ℚ)

theorem P16103118710698348226.correct : P16103118710698348226.Spec := by
  intro n
  simp only [A141418, Nat.add_sub_cancel, A141418.P16103118710698348226.a, A141418.P4080118135524004049.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A141418

/-! ## A141418.P6052929295247523126

`T(n-1,k-1)+row(n)` with `a(0)=0`
-/

namespace A141418.P6052929295247523126
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  SequenceMachineLib.triUpLeft a n + SequenceMachineLib.triRow n

end

end A141418.P6052929295247523126

namespace A141418

/-- `T(n-1,k-1)+row(n)` -/
def P6052929295247523126.Spec : Prop :=
  ∀ n, (P6052929295247523126.a n : ℤ) = A141418 (n + 1)

end A141418

/-! ## A141418.P14668177959612356557

`row(n)*(col(n)+1)-(col(n)+1)*col(n)/2`
-/

namespace A141418.P14668177959612356557
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.triRow n * (SequenceMachineLib.triCol n + 1) : ℚ) - ((SequenceMachineLib.triCol n + 1) * SequenceMachineLib.triCol n : ℚ) / 2

end

end A141418.P14668177959612356557

namespace A141418

/-- `row(n)*(col(n)+1)-(col(n)+1)*col(n)/2` -/
def P14668177959612356557.Spec : Prop :=
  ∀ n, P14668177959612356557.a n = (A141418 (n + 1) : ℚ)

end A141418

/-! ## A141418.P4080118135524004049

`C(col(n)+1, 2)+(row(n)-col(n))*(col(n)+1)`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A141418

/-- `C(col(n)+1, 2)+(row(n)-col(n))*(col(n)+1)` -/
def P4080118135524004049.Spec : Prop :=
  ∀ n, P4080118135524004049.a n = A141418 (n + 1)

theorem P4080118135524004049.correct : P4080118135524004049.Spec := by
  intro n
  simp only [A141418, Nat.add_sub_cancel]

end A141418

/-! ## A141418.P6942744045173616337

`A309559(n)-1`
-/

namespace A141418.P6942744045173616337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309559 n - 1

end

end A141418.P6942744045173616337

namespace A141418

/-- `A309559(n)-1` -/
def P6942744045173616337.Spec : Prop :=
  ∀ n, P6942744045173616337.a n = A141418 (n + 1)

end A141418

/-! ## A141418.P17593825678012507988

`∑[char[∑[n+1]]]+A303273(n)-1`
-/

namespace A141418.P17593825678012507988
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) + (A303273 n - 1)

end

end A141418.P17593825678012507988

namespace A141418

/-- `∑[char[∑[n+1]]]+A303273(n)-1` -/
def P17593825678012507988.Spec : Prop :=
  ∀ n, P17593825678012507988.a n = A141418 (n + 1)

end A141418

/-! ## A141418.P1248540440773242944

`A023443(A309559(n))`
-/

namespace A141418.P1248540440773242944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A309559 n).toNat

end

end A141418.P1248540440773242944

namespace A141418

/-- `A023443(A309559(n))` -/
def P1248540440773242944.Spec : Prop :=
  ∀ n, P1248540440773242944.a n = A141418 (n + 1)

end A141418

/-! ## A141418.P5517368692564182345

`A087401(n)+A003056(n)`
-/

namespace A141418.P5517368692564182345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087401 n + A003056 n

end

end A141418.P5517368692564182345

namespace A141418

/-- `A087401(n)+A003056(n)` -/
def P5517368692564182345.Spec : Prop :=
  ∀ n, P5517368692564182345.a n = A141418 (n + 1)

end A141418

/-! ## A141418.P5048737975322553021

`A112367(n)+A094053(n+1)`
-/

namespace A141418.P5048737975322553021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112367 n + A094053 (n + 1)

end

end A141418.P5048737975322553021

namespace A141418

/-- `A112367(n)+A094053(n+1)` -/
def P5048737975322553021.Spec : Prop :=
  ∀ n, P5048737975322553021.a n = A141418 (n + 1)

end A141418

/-! ## A141418.P12831550135462474737

`A105020(n)-A141419(n+1)`
-/

namespace A141418.P12831550135462474737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105020 n - A141419 (n + 1)

end

end A141418.P12831550135462474737

namespace A141418

/-- `A105020(n)-A141419(n+1)` -/
def P12831550135462474737.Spec : Prop :=
  ∀ n, P12831550135462474737.a n = A141418 (n + 1)

end A141418

/-! ## A141418.P11558816814321830669

`A057944(n)-C(A025581(n), 2)`
-/

namespace A141418.P11558816814321830669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057944 n - (Nat.choose (A025581 n).toNat 2 : ℤ)

end

end A141418.P11558816814321830669

namespace A141418

/-- `A057944(n)-C(A025581(n), 2)` -/
def P11558816814321830669.Spec : Prop :=
  ∀ n, P11558816814321830669.a n = A141418 (n + 1)

end A141418

/-! ## A141418.P657450012860874062

`A087401(n)+log2(A140513(n))-1`
-/

namespace A141418.P657450012860874062
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A087401 n : ℝ) + (Real.logb 2 (A140513 n : ℝ) - 1)

end

end A141418.P657450012860874062

namespace A141418

/-- `A087401(n)+log2(A140513(n))-1` -/
def P657450012860874062.Spec : Prop :=
  ∀ n, P657450012860874062.a n = (A141418 (n + 1) : ℝ)

end A141418

/-! ## A141418.P13994550244633368698

`∑[A010054(n)]+A087401(n)-1`
-/

namespace A141418.P13994550244633368698
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (A087401 n - 1)

end

end A141418.P13994550244633368698

namespace A141418

/-- `∑[A010054(n)]+A087401(n)-1` -/
def P13994550244633368698.Spec : Prop :=
  ∀ n, P13994550244633368698.a n = A141418 (n + 1)

end A141418

/-! ## A141418.P17548426189678916888

`A002024(n+1)+A087401(n)-1`
-/

namespace A141418.P17548426189678916888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 (n + 1) + (A087401 n - 1)

end

end A141418.P17548426189678916888

namespace A141418

/-- `A002024(n+1)+A087401(n)-1` -/
def P17548426189678916888.Spec : Prop :=
  ∀ n, P17548426189678916888.a n = A141418 (n + 1)

end A141418

/-! ## A141418.P3714230756626942575

`A070543(n+1)-(A059036(n)+1)`
-/

namespace A141418.P3714230756626942575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070543 (n + 1) - (A059036 n + 1)

end

end A141418.P3714230756626942575

namespace A141418

/-- `A070543(n+1)-(A059036(n)+1)` -/
def P3714230756626942575.Spec : Prop :=
  ∀ n, P3714230756626942575.a n = A141418 (n + 1)

end A141418

/-! ## A141418.P2766441168741440582

`A141419(n+1)-A002260(n+1)`
-/

namespace A141418.P2766441168741440582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141419 (n + 1) - A002260 (n + 1)

end

end A141418.P2766441168741440582

namespace A141418

/-- `A141419(n+1)-A002260(n+1)` -/
def P2766441168741440582.Spec : Prop :=
  ∀ n, P2766441168741440582.a n = A141418 (n + 1)

end A141418

/-! ## A141418.P16888229934687234783

`A141419(n+1)-(A002262(n)+1)`
-/

namespace A141418.P16888229934687234783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141419 (n + 1) - (A002262 n + 1)

end

end A141418.P16888229934687234783

namespace A141418

/-- `A141419(n+1)-(A002262(n)+1)` -/
def P16888229934687234783.Spec : Prop :=
  ∀ n, P16888229934687234783.a n = A141418 (n + 1)

end A141418

/-! ## A141418.P10692330720042488484

`A081493(n+1)-(A112367(n)+1)`
-/

namespace A141418.P10692330720042488484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081493 (n + 1) - (A112367 n + 1)

end

end A141418.P10692330720042488484

namespace A141418

/-- `A081493(n+1)-(A112367(n)+1)` -/
def P10692330720042488484.Spec : Prop :=
  ∀ n, P10692330720042488484.a n = A141418 (n + 1)

end A141418

/-! ## A141418.P17960991437864250875

`A193973(n)-(A158405(n+1)+1)`
-/

namespace A141418.P17960991437864250875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193973 n - (A158405 (n + 1) + 1)

end

end A141418.P17960991437864250875

namespace A141418

/-- `A193973(n)-(A158405(n+1)+1)` -/
def P17960991437864250875.Spec : Prop :=
  ∀ n, P17960991437864250875.a n = A141418 (n + 1)

end A141418

/-! ## A141418.P5776539166397614611

`A193973(n)-2*A002260(n+1)`
-/

namespace A141418.P5776539166397614611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193973 n - 2 * A002260 (n + 1)

end

end A141418.P5776539166397614611

namespace A141418

/-- `A193973(n)-2*A002260(n+1)` -/
def P5776539166397614611.Spec : Prop :=
  ∀ n, P5776539166397614611.a n = A141418 (n + 1)

end A141418

/-!
# A141419: Triangle read by rows: T(n, k) = A000217(n) - A000217(n - k) with 1 <= k <= n.

The programs for A141419, the canonical program `A141419.P17579868509754619633` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A141419 has offset 1).

The definition of A141419 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000217(row(n)+1)-A000217(row(n)+1-(col(n)+1))` (program `A141419.P17579868509754619633`, by `A141419.P17579868509754619633.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A141419.P17579868509754619633

`A000217(row(n)+1)-A000217(row(n)+1-(col(n)+1))`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A141419

/-- `A000217(row(n)+1)-A000217(row(n)+1-(col(n)+1))` -/
def P17579868509754619633.Spec : Prop :=
  ∀ n, P17579868509754619633.a n = A141419 (n + 1)

theorem P17579868509754619633.correct : P17579868509754619633.Spec := by
  intro n
  simp only [A141419, Nat.add_sub_cancel]

end A141419

/-! ## A141419.P3002921021194677012

`1+T(n-1,k-1)+row(n)` with `a(0)=1`
-/

namespace A141419.P3002921021194677012
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  1 + (SequenceMachineLib.triUpLeft a n + SequenceMachineLib.triRow n)

end

end A141419.P3002921021194677012

namespace A141419

/-- `1+T(n-1,k-1)+row(n)` -/
def P3002921021194677012.Spec : Prop :=
  ∀ n, (P3002921021194677012.a n : ℤ) = A141419 (n + 1)

end A141419

/-! ## A141419.P12609894760360721976

`T(n,k-1)+row(n)+1-col(n)` with `a(0)=1`
-/

namespace A141419.P12609894760360721976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  SequenceMachineLib.triLeft a n + ((SequenceMachineLib.triRow n + 1 : ℤ) - (SequenceMachineLib.triCol n : ℤ))

end

end A141419.P12609894760360721976

namespace A141419

/-- `T(n,k-1)+row(n)+1-col(n)` -/
def P12609894760360721976.Spec : Prop :=
  ∀ n, P12609894760360721976.a n = A141419 (n + 1)

end A141419

/-! ## A141419.P11000392076604308965

`(row(n)+1)*(col(n)+1)-(col(n)+1)*col(n)/2`
-/

namespace A141419.P11000392076604308965
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.triRow n + 1) * (SequenceMachineLib.triCol n + 1) : ℚ) - ((SequenceMachineLib.triCol n + 1) * SequenceMachineLib.triCol n : ℚ) / 2

end

end A141419.P11000392076604308965

namespace A141419

/-- `(row(n)+1)*(col(n)+1)-(col(n)+1)*col(n)/2` -/
def P11000392076604308965.Spec : Prop :=
  ∀ n, P11000392076604308965.a n = (A141419 (n + 1) : ℚ)

end A141419

/-! ## A141419.P6666803835829470373

`C(col(n)+1, 2)+(row(n)-col(n)+1)*(col(n)+1)`
-/

namespace A141419.P6666803835829470373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (SequenceMachineLib.triCol n + 1) 2 : ℤ) + ((SequenceMachineLib.triRow n : ℤ) - (SequenceMachineLib.triCol n : ℤ) + 1) * (SequenceMachineLib.triCol n + 1 : ℤ)

end

end A141419.P6666803835829470373

namespace A141419

/-- `C(col(n)+1, 2)+(row(n)-col(n)+1)*(col(n)+1)` -/
def P6666803835829470373.Spec : Prop :=
  ∀ n, P6666803835829470373.a n = A141419 (n + 1)

end A141419

/-! ## A141419.P13935125868249528284

`n+1-C(A025581(n), 2)`
-/

namespace A141419.P13935125868249528284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - (Nat.choose (A025581 n).toNat 2 : ℤ)

end

end A141419.P13935125868249528284

namespace A141419

/-- `n+1-C(A025581(n), 2)` -/
def P13935125868249528284.Spec : Prop :=
  ∀ n, P13935125868249528284.a n = A141419 (n + 1)

end A141419

/-! ## A141419.P13107967776974070298

`n+1-C(A004736(n+1)-1, 2)`
-/

namespace A141419.P13107967776974070298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - (Nat.choose (A004736 (n + 1) - 1).toNat 2 : ℤ)

end

end A141419.P13107967776974070298

namespace A141419

/-- `n+1-C(A004736(n+1)-1, 2)` -/
def P13107967776974070298.Spec : Prop :=
  ∀ n, P13107967776974070298.a n = A141419 (n + 1)

end A141419

/-! ## A141419.P308505515633222907

`n+1-A161680(C(comp[∑[n]]-n, 2)-(n+1))`
-/

namespace A141419.P308505515633222907
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A161680 (Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 - (n + 1))

end

end A141419.P308505515633222907

namespace A141419

/-- `n+1-A161680(C(comp[∑[n]]-n, 2)-(n+1))` -/
def P308505515633222907.Spec : Prop :=
  ∀ n, P308505515633222907.a n = A141419 (n + 1)

end A141419

/-! ## A141419.P2485622905096145275

`A080956(A025581(n))+n`
-/

namespace A141419.P2485622905096145275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080956 (A025581 n).toNat + (n : ℤ)

end

end A141419.P2485622905096145275

namespace A141419

/-- `A080956(A025581(n))+n` -/
def P2485622905096145275.Spec : Prop :=
  ∀ n, P2485622905096145275.a n = A141419 (n + 1)

end A141419

/-! ## A141419.P12020427553413733491

`A309559(n)+A002262(n)`
-/

namespace A141419.P12020427553413733491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309559 n + A002262 n

end

end A141419.P12020427553413733491

namespace A141419

/-- `A309559(n)+A002262(n)` -/
def P12020427553413733491.Spec : Prop :=
  ∀ n, P12020427553413733491.a n = A141419 (n + 1)

end A141419

/-! ## A141419.P3476657323228808793

`A303273(n)+A051162(n)`
-/

namespace A141419.P3476657323228808793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303273 n + A051162 n

end

end A141419.P3476657323228808793

namespace A141419

/-- `A303273(n)+A051162(n)` -/
def P3476657323228808793.Spec : Prop :=
  ∀ n, P3476657323228808793.a n = A141419 (n + 1)

end A141419

/-! ## A141419.P13171303106894146167

`A386319(n)+A123578(n)`
-/

namespace A141419.P13171303106894146167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386319 n + A123578 n

end

end A141419.P13171303106894146167

namespace A141419

/-- `A386319(n)+A123578(n)` -/
def P13171303106894146167.Spec : Prop :=
  ∀ n, P13171303106894146167.a n = A141419 (n + 1)

end A141419

/-! ## A141419.P13896475681712864292

`A112367(n)+A003991(n+1)`
-/

namespace A141419.P13896475681712864292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112367 n + A003991 (n + 1)

end

end A141419.P13896475681712864292

namespace A141419

/-- `A112367(n)+A003991(n+1)` -/
def P13896475681712864292.Spec : Prop :=
  ∀ n, P13896475681712864292.a n = A141419 (n + 1)

end A141419

/-! ## A141419.P7693470689010561923

`A051162(n)+A087401(n)+1`
-/

namespace A141419.P7693470689010561923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051162 n + (A087401 n + 1)

end

end A141419.P7693470689010561923

namespace A141419

/-- `A051162(n)+A087401(n)+1` -/
def P7693470689010561923.Spec : Prop :=
  ∀ n, P7693470689010561923.a n = A141419 (n + 1)

end A141419

/-! ## A141419.P10334727628827062564

`A059036(n)+A112367(n)+1`
-/

namespace A141419.P10334727628827062564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059036 n + (A112367 n + 1)

end

end A141419.P10334727628827062564

namespace A141419

/-- `A059036(n)+A112367(n)+1` -/
def P10334727628827062564.Spec : Prop :=
  ∀ n, P10334727628827062564.a n = A141419 (n + 1)

end A141419

/-! ## A141419.P8892384572391784305

`A094727(n+1)+A087401(n)`
-/

namespace A141419.P8892384572391784305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094727 (n + 1) + A087401 n

end

end A141419.P8892384572391784305

namespace A141419

/-- `A094727(n+1)+A087401(n)` -/
def P8892384572391784305.Spec : Prop :=
  ∀ n, P8892384572391784305.a n = A141419 (n + 1)

end A141419

/-! ## A141419.P5107435465712486864

`A075362(n+1)-A112367(n)`
-/

namespace A141419.P5107435465712486864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075362 (n + 1) - A112367 n

end

end A141419.P5107435465712486864

namespace A141419

/-- `A075362(n+1)-A112367(n)` -/
def P5107435465712486864.Spec : Prop :=
  ∀ n, P5107435465712486864.a n = A141419 (n + 1)

end A141419

/-! ## A141419.P152477735298953463

`A193973(n)-A002260(n+1)`
-/

namespace A141419.P152477735298953463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193973 n - A002260 (n + 1)

end

end A141419.P152477735298953463

namespace A141419

/-- `A193973(n)-A002260(n+1)` -/
def P152477735298953463.Spec : Prop :=
  ∀ n, P152477735298953463.a n = A141419 (n + 1)

end A141419

/-! ## A141419.P13335330858444124356

`A105020(n)-A141418(n+1)`
-/

namespace A141419.P13335330858444124356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105020 n - A141418 (n + 1)

end

end A141419.P13335330858444124356

namespace A141419

/-- `A105020(n)-A141418(n+1)` -/
def P13335330858444124356.Spec : Prop :=
  ∀ n, P13335330858444124356.a n = A141419 (n + 1)

end A141419

/-! ## A141419.P1625091792718603465

`A105020(n)+1-A309559(n)`
-/

namespace A141419.P1625091792718603465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105020 n + (1 - A309559 n)

end

end A141419.P1625091792718603465

namespace A141419

/-- `A105020(n)+1-A309559(n)` -/
def P1625091792718603465.Spec : Prop :=
  ∀ n, P1625091792718603465.a n = A141419 (n + 1)

end A141419

/-!
# A141420: Numbers that occur at least once in the differences between consecutive terms of A020697.

The programs for A141420, there is no canonical definition to state claims against.
-/

/-! ## A141420.P9323483912031699727

`record[Δ[A020697(n+1)]*A230093(n)]`
-/

namespace A141420.P9323483912031699727
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020697 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) - f2 n) * A230093 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A141420.P9323483912031699727

/-! ## A141420.P16987755219394148811

`record[Δ[A020697(n+1)]%A052552(n)]`
-/

namespace A141420.P16987755219394148811
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020697 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f2 (n + 1) - f2 n) (A052552 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A141420.P16987755219394148811

/-! ## A141420.P5078401547393309651

`record[Δ[A020697(n+1)]/A000188(n+1)]`
-/

namespace A141420.P5078401547393309651
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020697 (n + 1)

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) - f2 n : ℚ) / (A000188 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A141420.P5078401547393309651

/-! ## A141420.P17749191839773421379

`record[Δ[A020697(n+1)]/A001511(n+1)]`
-/

namespace A141420.P17749191839773421379
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020697 (n + 1)

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) - f2 n : ℚ) / (A001511 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A141420.P17749191839773421379

/-! ## A141420.P7202653120195469155

`record[A008683(n+1)²*Δ[A020697(n+1)]]`
-/

namespace A141420.P7202653120195469155
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020697 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (n + 1) ^ 2 * (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A141420.P7202653120195469155

/-!
# A141421: First bisection of A091137.

The programs for A141421, the canonical program `A141421.P5964235470016357993` is in `Seq.B013.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A141421 has offset 0).

The definition of A141421 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A091137, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A141421.P5964235470016357993

`A091137(2*n)`

The canonical program, it is in `Seq.B013.C000`.
-/

namespace A141421

/-- `A091137(2*n)` -/
def P5964235470016357993.Spec : Prop :=
  ∀ n, P5964235470016357993.a n = A141421 n

theorem P5964235470016357993.correct : P5964235470016357993.Spec := by
  intro n
  simp only [A141421]

end A141421

/-! ## A141421.P8697797424576254027

`∏[2*A002445(n)]/2`
-/

namespace A141421.P8697797424576254027
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A002445 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∏ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / 2

end

end A141421.P8697797424576254027

namespace A141421

/-- `∏[2*A002445(n)]/2` -/
def P8697797424576254027.Spec : Prop :=
  ∀ n, P8697797424576254027.a n = (A141421 n : ℚ)

end A141421

/-! ## A141421.P11862594743619031200

`A165823(2*n+1)/2`
-/

namespace A141421.P11862594743619031200
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A165823 (2 * n + 1) : ℚ) / 2

end

end A141421.P11862594743619031200

namespace A141421

/-- `A165823(2*n+1)/2` -/
def P11862594743619031200.Spec : Prop :=
  ∀ n, P11862594743619031200.a n = (A141421 n : ℚ)

end A141421

/-! ## A141421.P17119038446763721953

`A165313((n+1)*Δ[n²])`
-/

namespace A141421.P17119038446763721953
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165313 ((n + 1 : ℤ) * ((f1 (n + 1) : ℤ) - (f1 n : ℤ))).toNat

end

end A141421.P17119038446763721953

namespace A141421

/-- `A165313((n+1)*Δ[n²])` -/
def P17119038446763721953.Spec : Prop :=
  ∀ n, P17119038446763721953.a n = A141421 n

end A141421

/-! ## A141421.P6526541240607102067

`6^n*∏[A285068(2*n)]`
-/

namespace A141421.P6526541240607102067
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285068 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (6 ^ n : ℤ) * (∏ j ∈ Finset.range (n + 1), f1 j)

end

end A141421.P6526541240607102067

namespace A141421

/-- `6^n*∏[A285068(2*n)]` -/
def P6526541240607102067.Spec : Prop :=
  ∀ n, P6526541240607102067.a n = A141421 n

end A141421

/-!
# A141422: Positions of highly powerful numbers in the EKG sequence.

The programs for A141422, there is no canonical definition to state claims against.
-/

/-! ## A141422.P16147454924171264034

`∑{d}[A005934(n+1), A304526(#)]`
-/

namespace A141422.P16147454924171264034
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005934 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A304526 d

end

end A141422.P16147454924171264034

/-! ## A141422.P14045467506717121729

`A064664(A005934(n+1))`
-/

namespace A141422.P14045467506717121729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064664 (A005934 (n + 1)).toNat

end

end A141422.P14045467506717121729

/-! ## A141422.P15336509065783401076

`A064664(A085629(n+1)%A128340(n+1))`
-/

namespace A141422.P15336509065783401076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064664 (Int.tmod (A085629 (n + 1)) (A128340 (n + 1))).toNat

end

end A141422.P15336509065783401076

/-!
# A141423: Conjectured to be complete list of numbers not of the form 3*x^2 + 4*y^2 + triangular number.

The programs for A141423, there is no canonical definition to state claims against.
-/

/-! ## A141423.P4455406682474511363

`A025581(18*2^n*∑[2^n])`
-/

namespace A141423.P4455406682474511363
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 (18 * (2 ^ n * (∑ j ∈ Finset.range (n + 1), f1 j)))

end

end A141423.P4455406682474511363

/-!
# A141424: Numerators of second column of the inverse of the triangle of polynomial coefficients P(0,x)=1, 2P(n,x)=(1+x)*[(1+x)^(n-1)+x^(n-1)].

The programs for A141424, there is no canonical definition to state claims against.
-/

/-! ## A141424.P17001413613896618473

`(-1)^n*A233808(n+2)`
-/

namespace A141424.P17001413613896618473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A233808 (n + 2)

end

end A141424.P17001413613896618473

/-! ## A141424.P5325404346284333686

`A233808(n+2)/A033999(n)`
-/

namespace A141424.P5325404346284333686
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A233808 (n + 2) : ℚ) / (A033999 n : ℚ)

end

end A141424.P5325404346284333686

/-! ## A141424.P2740584928891690531

`A233808(n+2)/(2-A010684(n))`
-/

namespace A141424.P2740584928891690531
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A233808 (n + 2) : ℚ) / (2 - A010684 n : ℚ)

end

end A141424.P2740584928891690531

/-! ## A141424.P16719046021257165272

`A140216(∑[n+1]+1)`
-/

namespace A141424.P16719046021257165272
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140216 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A141424.P16719046021257165272

/-!
# A141425: Period 6: repeat [1, 2, 4, 5, 7, 8].

The programs for A141425, the canonical program `A141425.P3429571870497032370` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A141425 has offset 1).

The definition of A141425 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A141425.P3429571870497032370

`a(n-6)` with `a(0)=1, a(1)=2, a(2)=4, a(3)=5, a(4)=7, a(5)=8`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A141425

/-- `a(n-6)` -/
def P3429571870497032370.Spec : Prop :=
  ∀ n, (P3429571870497032370.a n : ℤ) = A141425 (n + 1)

theorem P3429571870497032370.correct : P3429571870497032370.Spec := by
  intro n
  simp only [A141425, Nat.add_sub_cancel]

end A141425

/-!
# A141426: a(n) = A140555(n) - 1.

The programs for A141426, there is no canonical definition to state claims against.
-/

/-! ## A141426.P2518894043120239376

`A140555(n+1)-1`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A141426.P2518894043120239376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140555 (n + 1) - 1

end

end A141426.P2518894043120239376

/-! ## A141426.P1314817368930919233

`A000010(A140555(n+1))`
-/

namespace A141426.P1314817368930919233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A140555 (n + 1)).toNat

end

end A141426.P1314817368930919233

/-! ## A141426.P11061307203872179126

`p?[A002808(n+1)-6]-1`
-/

namespace A141426.P11061307203872179126
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002808 (n + 1) - 6

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - 1

end

end A141426.P11061307203872179126

/-! ## A141426.P7373260708784273630

`p?[A018252(n+1)-6]-1`
-/

namespace A141426.P7373260708784273630
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (n + 1) - 6

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - 1

end

end A141426.P7373260708784273630

/-! ## A141426.P5117981181580356270

`p?[A018252(2*n-(n-1))-and(1, 2*n)-6]-1`
-/

namespace A141426.P5117981181580356270
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 ((2 * n : ℤ) - ((n : ℤ) - 1)).toNat - (Nat.land 1 (2 * n) : ℤ) - 6

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - 1

end

end A141426.P5117981181580356270

/-! ## A141426.P11031994941632765347

`p?[A023448(A018252(n+1))]-1`
-/

namespace A141426.P11031994941632765347
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023448 (A018252 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - 1

end

end A141426.P11031994941632765347

/-! ## A141426.P5277863921685795209

`A002322(p?[A018252(n+1)-6])`
-/

namespace A141426.P5277863921685795209
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (n + 1) - 6

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002322 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A141426.P5277863921685795209

/-! ## A141426.P8382202241369213168

`A014684(p?[A018252(n+1)-6])`
-/

namespace A141426.P8382202241369213168
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (n + 1) - 6

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014684 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A141426.P8382202241369213168

/-! ## A141426.P17500559894709037728

`A023443(p?[A018252(n+1)-6])`
-/

namespace A141426.P17500559894709037728
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (n + 1) - 6

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A141426.P17500559894709037728

/-! ## A141426.P2914752316958158801

`A007896(p?[A018252(n+1)-6])`
-/

namespace A141426.P2914752316958158801
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (n + 1) - 6

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007896 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A141426.P2914752316958158801

/-!
# A141427: a(n) = phi(A067775(n)).

The programs for A141427, the canonical program `A141427.P14332811284951125235` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A141427 has offset 1).

The definition of A141427 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, A067775, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A141427.P14332811284951125235

`A000010(A067775(n+1))`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A141427

/-- `A000010(A067775(n+1))` -/
def P14332811284951125235.Spec : Prop :=
  ∀ n, P14332811284951125235.a n = A141427 (n + 1)

theorem P14332811284951125235.correct : P14332811284951125235.Spec := by
  intro n
  simp only [A141427, Nat.add_sub_cancel]

end A141427

/-! ## A141427.P18130099656621938371

`A164383(n+1)-5`
-/

namespace A141427.P18130099656621938371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164383 (n + 1) - 5

end

end A141427.P18130099656621938371

namespace A141427

/-- `A164383(n+1)-5` -/
def P18130099656621938371.Spec : Prop :=
  ∀ n, P18130099656621938371.a n = A141427 (n + 1)

end A141427

/-! ## A141427.P9926610613670350662

`record[A000010((n%3+1)²+n)]`
-/

namespace A141427.P9926610613670350662
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 ((n % 3 + 1) ^ 2 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A141427.P9926610613670350662

namespace A141427

/-- `record[A000010((n%3+1)²+n)]` -/
def P9926610613670350662.Spec : Prop :=
  ∀ n, P9926610613670350662.a n = A141427 (n + 1)

end A141427

/-! ## A141427.P13560369014841595610

`record[A000010(gcd(3, n+1)!+n)]`
-/

namespace A141427.P13560369014841595610
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (Nat.factorial (Nat.gcd 3 (n + 1)) + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A141427.P13560369014841595610

namespace A141427

/-- `record[A000010(gcd(3, n+1)!+n)]` -/
def P13560369014841595610.Spec : Prop :=
  ∀ n, P13560369014841595610.a n = A141427 (n + 1)

end A141427

/-! ## A141427.P10468752503439573240

`record[A000010(dr(5*n+1+n)+n)]`
-/

namespace A141427.P10468752503439573240
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (SequenceMachineLib.digitalRoot (5 * n + 1 + n : ℤ) + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A141427.P10468752503439573240

namespace A141427

/-- `record[A000010(dr(5*n+1+n)+n)]` -/
def P10468752503439573240.Spec : Prop :=
  ∀ n, P10468752503439573240.a n = A141427 (n + 1)

end A141427

/-! ## A141427.P7334223572431019679

`p?[A018252(n+1)-4]-1`
-/

namespace A141427.P7334223572431019679
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (n + 1) - 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - 1

end

end A141427.P7334223572431019679

namespace A141427

/-- `p?[A018252(n+1)-4]-1` -/
def P7334223572431019679.Spec : Prop :=
  ∀ n, P7334223572431019679.a n = A141427 (n + 1)

end A141427

/-! ## A141427.P8421451633987262501

`p?[∑[A073783(n+1)]]-1`
-/

namespace A141427.P8421451633987262501
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073783 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - 1

end

end A141427.P8421451633987262501

namespace A141427

/-- `p?[∑[A073783(n+1)]]-1` -/
def P8421451633987262501.Spec : Prop :=
  ∀ n, P8421451633987262501.a n = A141427 (n + 1)

end A141427

/-! ## A141427.P14537222497804827692

`p?[A164028(n+1)-1]-1`
-/

namespace A141427.P14537222497804827692
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164028 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - 1

end

end A141427.P14537222497804827692

namespace A141427

/-- `p?[A164028(n+1)-1]-1` -/
def P14537222497804827692.Spec : Prop :=
  ∀ n, P14537222497804827692.a n = A141427 (n + 1)

end A141427

/-! ## A141427.P3048775276723817694

`eq[2, A208645(n)]+1`
-/

namespace A141427.P3048775276723817694
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208645 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A141427.P3048775276723817694

namespace A141427

/-- `eq[2, A208645(n)]+1` -/
def P3048775276723817694.Spec : Prop :=
  ∀ n, (P3048775276723817694.a n : ℤ) = A141427 (n + 1)

end A141427

/-! ## A141427.P16871356462784785779

`eq[2, A395561(n+3)]`
-/

namespace A141427.P16871356462784785779
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A395561 (n + 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A141427.P16871356462784785779

namespace A141427

/-- `eq[2, A395561(n+3)]` -/
def P16871356462784785779.Spec : Prop :=
  ∀ n, (P16871356462784785779.a n : ℤ) = A141427 (n + 1)

end A141427

/-! ## A141427.P1695264559588693609

`A023447(A164383(n+1))`
-/

namespace A141427.P1695264559588693609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023447 (A164383 (n + 1)).toNat

end

end A141427.P1695264559588693609

namespace A141427

/-- `A023447(A164383(n+1))` -/
def P1695264559588693609.Spec : Prop :=
  ∀ n, P1695264559588693609.a n = A141427 (n + 1)

end A141427

/-! ## A141427.P12696792802241324327

`A076981(A067775(n+1)+1)`
-/

namespace A141427.P12696792802241324327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076981 (A067775 (n + 1) + 1).toNat

end

end A141427.P12696792802241324327

namespace A141427

/-- `A076981(A067775(n+1)+1)` -/
def P12696792802241324327.Spec : Prop :=
  ∀ n, P12696792802241324327.a n = A141427 (n + 1)

end A141427

/-! ## A141427.P15185197236798415029

`eq[A083059(n+5), A350534(n)]`
-/

namespace A141427.P15185197236798415029
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083059 (n + 5)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350534 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A141427.P15185197236798415029

namespace A141427

/-- `eq[A083059(n+5), A350534(n)]` -/
def P15185197236798415029.Spec : Prop :=
  ∀ n, (P15185197236798415029.a n : ℤ) = A141427 (n + 1)

end A141427

/-! ## A141427.P16578654935358946238

`p?[A023446(A018252(n+1))]-1`
-/

namespace A141427.P16578654935358946238
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023446 (A018252 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - 1

end

end A141427.P16578654935358946238

namespace A141427

/-- `p?[A023446(A018252(n+1))]-1` -/
def P16578654935358946238.Spec : Prop :=
  ∀ n, P16578654935358946238.a n = A141427 (n + 1)

end A141427

/-! ## A141427.P7839550487785021463

`eq[A083059(n+5), A157721(n+1)]`
-/

namespace A141427.P7839550487785021463
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083059 (n + 5)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157721 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A141427.P7839550487785021463

namespace A141427

/-- `eq[A083059(n+5), A157721(n+1)]` -/
def P7839550487785021463.Spec : Prop :=
  ∀ n, (P7839550487785021463.a n : ℤ) = A141427 (n + 1)

end A141427

/-! ## A141427.P5388728692131532683

`eq[A007920(n), A205794(n+1)]`
-/

namespace A141427.P5388728692131532683
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007920 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205794 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A141427.P5388728692131532683

namespace A141427

/-- `eq[A007920(n), A205794(n+1)]` -/
def P5388728692131532683.Spec : Prop :=
  ∀ n, (P5388728692131532683.a n : ℤ) = A141427 (n + 1)

end A141427

/-! ## A141427.P15310919135008436300

`eq[A013632(n), A205794(n+1)]`
-/

namespace A141427.P15310919135008436300
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013632 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205794 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A141427.P15310919135008436300

namespace A141427

/-- `eq[A013632(n), A205794(n+1)]` -/
def P15310919135008436300.Spec : Prop :=
  ∀ n, (P15310919135008436300.a n : ℤ) = A141427 (n + 1)

end A141427

/-! ## A141427.P13153624353421650948

`eq[A205794(n+1), A225767(n)]`
-/

namespace A141427.P13153624353421650948
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205794 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225767 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A141427.P13153624353421650948

namespace A141427

/-- `eq[A205794(n+1), A225767(n)]` -/
def P13153624353421650948.Spec : Prop :=
  ∀ n, (P13153624353421650948.a n : ℤ) = A141427 (n + 1)

end A141427

/-! ## A141427.P3007399755606146900

`eq[A205794(n+1), A225768(n)]`
-/

namespace A141427.P3007399755606146900
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205794 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225768 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A141427.P3007399755606146900

namespace A141427

/-- `eq[A205794(n+1), A225768(n)]` -/
def P3007399755606146900.Spec : Prop :=
  ∀ n, (P3007399755606146900.a n : ℤ) = A141427 (n + 1)

end A141427

/-!
# A141429: Triangle T(n, k) = (k+1)*(n-k+1), read by rows.

The programs for A141429, the canonical program `A141429.P3778980955938111992` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A141429 has offset 1).

The definition of A141429 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(col(n)+2)*(row(n)+1-col(n))` (program `A141429.P3778980955938111992`, by `A141429.P3778980955938111992.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A141429.P3778980955938111992

`(col(n)+2)*(row(n)+1-col(n))`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A141429

/-- `(col(n)+2)*(row(n)+1-col(n))` -/
def P3778980955938111992.Spec : Prop :=
  ∀ n, P3778980955938111992.a n = A141429 (n + 1)

theorem P3778980955938111992.correct : P3778980955938111992.Spec := by
  intro n
  simp only [A141429, Nat.add_sub_cancel]

end A141429

/-! ## A141429.P9355103305789265955

`(col(n)+2)*(row(n)-col(n)+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A141429.P9355103305789265955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.triCol n + 2 : ℤ) * ((SequenceMachineLib.triRow n : ℤ) - (SequenceMachineLib.triCol n : ℤ) + 1)

end

end A141429.P9355103305789265955

namespace A141429

/-- `(col(n)+2)*(row(n)-col(n)+1)` -/
def P9355103305789265955.Spec : Prop :=
  ∀ n, P9355103305789265955.a n = A141429 (n + 1)

theorem P9355103305789265955.correct : P9355103305789265955.Spec := by
  intro n
  simp only [A141429, Nat.add_sub_cancel, A141429.P9355103305789265955.a, A141429.P3778980955938111992.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A141429

/-! ## A141429.P12630385385801896093

`(col(n)+2)*(row(n)+1-(col(n)+1)+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A141429.P12630385385801896093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.triCol n + 2 : ℤ) * ((SequenceMachineLib.triRow n + 1 : ℤ) - (SequenceMachineLib.triCol n + 1 : ℤ) + 1)

end

end A141429.P12630385385801896093

namespace A141429

/-- `(col(n)+2)*(row(n)+1-(col(n)+1)+1)` -/
def P12630385385801896093.Spec : Prop :=
  ∀ n, P12630385385801896093.a n = A141429 (n + 1)

theorem P12630385385801896093.correct : P12630385385801896093.Spec := by
  intro n
  simp only [A141429, Nat.add_sub_cancel, A141429.P12630385385801896093.a, A141429.P3778980955938111992.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A141429

/-! ## A141429.P4768663951979483283

`A127738(n+1)+1`
-/

namespace A141429.P4768663951979483283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127738 (n + 1) + 1

end

end A141429.P4768663951979483283

namespace A141429

/-- `A127738(n+1)+1` -/
def P4768663951979483283.Spec : Prop :=
  ∀ n, P4768663951979483283.a n = A141429 (n + 1)

theorem P4768663951979483283.correct : P4768663951979483283.Spec := by
  intro n
  simp only [A141429, Nat.add_sub_cancel, A141429.P4768663951979483283.a, A141429.P3778980955938111992.a, A127738, A127738.P13771444761042262108.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A141429

/-! ## A141429.P12654133482700845176

`∑[A114327(n)]+comp[∑[n]]-n`
-/

namespace A141429.P12654133482700845176
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114327 n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + ((SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n : ℤ) - (n : ℤ))

end

end A141429.P12654133482700845176

namespace A141429

/-- `∑[A114327(n)]+comp[∑[n]]-n` -/
def P12654133482700845176.Spec : Prop :=
  ∀ n, P12654133482700845176.a n = A141429 (n + 1)

end A141429

/-! ## A141429.P17615489479649337512

`A003991(n+1)+C(comp[∑[n]]-n, 2)-n`
-/

namespace A141429.P17615489479649337512
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003991 (n + 1) + ((Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 : ℤ) - (n : ℤ))

end

end A141429.P17615489479649337512

namespace A141429

/-- `A003991(n+1)+C(comp[∑[n]]-n, 2)-n` -/
def P17615489479649337512.Spec : Prop :=
  ∀ n, P17615489479649337512.a n = A141429 (n + 1)

end A141429

/-! ## A141429.P13988024539421157520

`(A002262(n)+2)*(C(comp[∑[n]]-n, 2)-n)`
-/

namespace A141429.P13988024539421157520
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A002262 n + 2) * ((Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 : ℤ) - (n : ℤ))

end

end A141429.P13988024539421157520

namespace A141429

/-- `(A002262(n)+2)*(C(comp[∑[n]]-n, 2)-n)` -/
def P13988024539421157520.Spec : Prop :=
  ∀ n, P13988024539421157520.a n = A141429 (n + 1)

end A141429

/-! ## A141429.P12144575849971646573

`A020725(A127738(n+1))`
-/

namespace A141429.P12144575849971646573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (A127738 (n + 1)).toNat

end

end A141429.P12144575849971646573

namespace A141429

/-- `A020725(A127738(n+1))` -/
def P12144575849971646573.Spec : Prop :=
  ∀ n, P12144575849971646573.a n = A141429 (n + 1)

end A141429

/-! ## A141429.P6267002441250357681

`A128139(n)+A099375(n)`
-/

namespace A141429.P6267002441250357681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128139 n + A099375 n

end

end A141429.P6267002441250357681

namespace A141429

/-- `A128139(n)+A099375(n)` -/
def P6267002441250357681.Spec : Prop :=
  ∀ n, P6267002441250357681.a n = A141429 (n + 1)

end A141429

/-! ## A141429.P651047669877827410

`A128076(n+1)+A077028(n)`
-/

namespace A141429.P651047669877827410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128076 (n + 1) + A077028 n

end

end A141429.P651047669877827410

namespace A141429

/-- `A128076(n+1)+A077028(n)` -/
def P651047669877827410.Spec : Prop :=
  ∀ n, P651047669877827410.a n = A141429 (n + 1)

theorem P651047669877827410.correct : P651047669877827410.Spec := by
  intro n
  simp only [A141429, Nat.add_sub_cancel, A141429.P651047669877827410.a, A141429.P3778980955938111992.a, A077028, A077028.P18404356772921913843.a, A128076, A128076.P18422387938473498740.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A141429

/-! ## A141429.P8624123980151072956

`A077028(n)+A294317(n)+1`
-/

namespace A141429.P8624123980151072956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077028 n + (A294317 n + 1)

end

end A141429.P8624123980151072956

namespace A141429

/-- `A077028(n)+A294317(n)+1` -/
def P8624123980151072956.Spec : Prop :=
  ∀ n, P8624123980151072956.a n = A141429 (n + 1)

theorem P8624123980151072956.correct : P8624123980151072956.Spec := by
  intro n
  simp only [A141429, Nat.add_sub_cancel, A141429.P8624123980151072956.a, A141429.P3778980955938111992.a, A077028, A077028.P18404356772921913843.a, A294317, A294317.P6597418737474744620.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A141429

/-! ## A141429.P10510585265334155133

`A025581(n)+A059036(n)+2`
-/

namespace A141429.P10510585265334155133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n + (A059036 n + 2)

end

end A141429.P10510585265334155133

namespace A141429

/-- `A025581(n)+A059036(n)+2` -/
def P10510585265334155133.Spec : Prop :=
  ∀ n, P10510585265334155133.a n = A141429 (n + 1)

theorem P10510585265334155133.correct : P10510585265334155133.Spec := by
  intro n
  simp only [A141429, Nat.add_sub_cancel, A141429.P10510585265334155133.a, A141429.P3778980955938111992.a, A025581, A025581.P16112744757063613497.a, A059036, A059036.P14090632459187506294.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A141429

/-! ## A141429.P3868130454575740823

`A096037(n+1)-A134480(n)`
-/

namespace A141429.P3868130454575740823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096037 (n + 1) - A134480 n

end

end A141429.P3868130454575740823

namespace A141429

/-- `A096037(n+1)-A134480(n)` -/
def P3868130454575740823.Spec : Prop :=
  ∀ n, P3868130454575740823.a n = A141429 (n + 1)

end A141429

/-! ## A141429.P14903487743100970617

`A309557(n)-A094053(n+1)`
-/

namespace A141429.P14903487743100970617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309557 n - A094053 (n + 1)

end

end A141429.P14903487743100970617

namespace A141429

/-- `A309557(n)-A094053(n+1)` -/
def P14903487743100970617.Spec : Prop :=
  ∀ n, P14903487743100970617.a n = A141429 (n + 1)

theorem P14903487743100970617.correct : P14903487743100970617.Spec := by
  intro n
  simp only [A141429, Nat.add_sub_cancel, A141429.P14903487743100970617.a, A141429.P3778980955938111992.a, A094053, A094053.P7632435431613033853.a, A309557, A309557.P16659385246118916463.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A141429

/-! ## A141429.P15468275075853093256

`A004736(n+1)+A003991(n+1)`
-/

namespace A141429.P15468275075853093256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1) + A003991 (n + 1)

end

end A141429.P15468275075853093256

namespace A141429

/-- `A004736(n+1)+A003991(n+1)` -/
def P15468275075853093256.Spec : Prop :=
  ∀ n, P15468275075853093256.a n = A141429 (n + 1)

end A141429

/-! ## A141429.P7522706951827695608

`A003991(n+1)+A025581(n)+1`
-/

namespace A141429.P7522706951827695608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003991 (n + 1) + (A025581 n + 1)

end

end A141429.P7522706951827695608

namespace A141429

/-- `A003991(n+1)+A025581(n)+1` -/
def P7522706951827695608.Spec : Prop :=
  ∀ n, P7522706951827695608.a n = A141429 (n + 1)

theorem P7522706951827695608.correct : P7522706951827695608.Spec := by
  intro n
  simp only [A141429, Nat.add_sub_cancel, A141429.P7522706951827695608.a, A141429.P3778980955938111992.a, A003991, A003991.P6365127437582401781.a, A025581, A025581.P16112744757063613497.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A141429

/-! ## A141429.P1621887870472022309

`A004736(n+1)+A059036(n)+1`
-/

namespace A141429.P1621887870472022309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1) + (A059036 n + 1)

end

end A141429.P1621887870472022309

namespace A141429

/-- `A004736(n+1)+A059036(n)+1` -/
def P1621887870472022309.Spec : Prop :=
  ∀ n, P1621887870472022309.a n = A141429 (n + 1)

end A141429

/-! ## A141429.P16492388466800411703

`A128076(n+1)+A004247(n)+1`
-/

namespace A141429.P16492388466800411703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128076 (n + 1) + (A004247 n + 1)

end

end A141429.P16492388466800411703

namespace A141429

/-- `A128076(n+1)+A004247(n)+1` -/
def P16492388466800411703.Spec : Prop :=
  ∀ n, P16492388466800411703.a n = A141429 (n + 1)

theorem P16492388466800411703.correct : P16492388466800411703.Spec := by
  intro n
  simp only [A141429, Nat.add_sub_cancel, A141429.P16492388466800411703.a, A141429.P3778980955938111992.a, A004247, A004247.P2751605162508615148.a, A128076, A128076.P18422387938473498740.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A141429

/-! ## A141429.P4231298965808664545

`A144329(n+1)+A143595(n+1)`
-/

namespace A141429.P4231298965808664545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144329 (n + 1) + A143595 (n + 1)

end

end A141429.P4231298965808664545

namespace A141429

/-- `A144329(n+1)+A143595(n+1)` -/
def P4231298965808664545.Spec : Prop :=
  ∀ n, P4231298965808664545.a n = A141429 (n + 1)

end A141429

/-! ## A141429.P12605751346505612181

`A094053(n+1)+A003057(n+2)`
-/

namespace A141429.P12605751346505612181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094053 (n + 1) + A003057 (n + 2)

end

end A141429.P12605751346505612181

namespace A141429

/-- `A094053(n+1)+A003057(n+2)` -/
def P12605751346505612181.Spec : Prop :=
  ∀ n, P12605751346505612181.a n = A141429 (n + 1)

end A141429

/-!
# A141430: a(n) = A000111(n) mod 9.

The programs for A141430, there is no canonical definition to state claims against.
-/

/-! ## A141430.P4537839819329643140

`A004099(n)%9`
-/

namespace A141430.P4537839819329643140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A004099 n) 9

end

end A141430.P4537839819329643140

/-! ## A141430.P10428137699748695208

`A000111(n)%9`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A141430.P10428137699748695208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000111 n) 9

end

end A141430.P10428137699748695208

/-!
# A141431: Triangle T(n,k) = (k-1)*(3*n-k+1), read by rows.

The programs for A141431, the canonical program `A141431.P12765055757640565081` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A141431 has offset 1).

The definition of A141431 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `col(n)*(3*(row(n)+1)-col(n))` (program `A141431.P12765055757640565081`, by `A141431.P12765055757640565081.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A141431.P12765055757640565081

`col(n)*(3*(row(n)+1)-col(n))`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A141431

/-- `col(n)*(3*(row(n)+1)-col(n))` -/
def P12765055757640565081.Spec : Prop :=
  ∀ n, P12765055757640565081.a n = A141431 (n + 1)

theorem P12765055757640565081.correct : P12765055757640565081.Spec := by
  intro n
  simp only [A141431, Nat.add_sub_cancel]

end A141431

/-! ## A141431.P2299815074383167837

`col(n)*(3*(row(n)+1)-(col(n)+1)+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A141431.P2299815074383167837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.triCol n : ℤ) * ((3 * (SequenceMachineLib.triRow n + 1) : ℤ) - (SequenceMachineLib.triCol n + 1 : ℤ) + 1)

end

end A141431.P2299815074383167837

namespace A141431

/-- `col(n)*(3*(row(n)+1)-(col(n)+1)+1)` -/
def P2299815074383167837.Spec : Prop :=
  ∀ n, P2299815074383167837.a n = A141431 (n + 1)

theorem P2299815074383167837.correct : P2299815074383167837.Spec := by
  intro n
  simp only [A141431, Nat.add_sub_cancel, A141431.P2299815074383167837.a, A141431.P12765055757640565081.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A141431

/-! ## A141431.P7834619538795850448

`A141433(n+1)+A002262(n)`
-/

namespace A141431.P7834619538795850448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141433 (n + 1) + A002262 n

end

end A141431.P7834619538795850448

namespace A141431

/-- `A141433(n+1)+A002262(n)` -/
def P7834619538795850448.Spec : Prop :=
  ∀ n, P7834619538795850448.a n = A141431 (n + 1)

theorem P7834619538795850448.correct : P7834619538795850448.Spec := by
  intro n
  simp only [A141431, Nat.add_sub_cancel, A141431.P7834619538795850448.a, A141431.P12765055757640565081.a, A002262, A002262.P17823619022233514403.a, A141433, A141433.P9226178116512622478.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A141431

/-! ## A141431.P15337335039295603868

`(A131413(n)+2)*A002262(n)`
-/

namespace A141431.P15337335039295603868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A131413 n + 2) * A002262 n

end

end A141431.P15337335039295603868

namespace A141431

/-- `(A131413(n)+2)*A002262(n)` -/
def P15337335039295603868.Spec : Prop :=
  ∀ n, P15337335039295603868.a n = A141431 (n + 1)

end A141431

/-! ## A141431.P3762193386806307007

`(A131894(n)+2)*A002262(n)`
-/

namespace A141431.P3762193386806307007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A131894 n + 2) * A002262 n

end

end A141431.P3762193386806307007

namespace A141431

/-- `(A131894(n)+2)*A002262(n)` -/
def P3762193386806307007.Spec : Prop :=
  ∀ n, P3762193386806307007.a n = A141431 (n + 1)

end A141431

/-! ## A141431.P7400164651721162225

`A141433(n+1)+log2(A059268(n))`
-/

namespace A141431.P7400164651721162225
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A141433 (n + 1) : ℝ) + Real.logb 2 (A059268 n : ℝ)

end

end A141431.P7400164651721162225

namespace A141431

/-- `A141433(n+1)+log2(A059268(n))` -/
def P7400164651721162225.Spec : Prop :=
  ∀ n, P7400164651721162225.a n = (A141431 (n + 1) : ℝ)

end A141431

/-! ## A141431.P7203449488063234294

`A141434(n+1)+2*A002262(n)`
-/

namespace A141431.P7203449488063234294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141434 (n + 1) + 2 * A002262 n

end

end A141431.P7203449488063234294

namespace A141431

/-- `A141434(n+1)+2*A002262(n)` -/
def P7203449488063234294.Spec : Prop :=
  ∀ n, P7203449488063234294.a n = A141431 (n + 1)

theorem P7203449488063234294.correct : P7203449488063234294.Spec := by
  intro n
  simp only [A141431, Nat.add_sub_cancel, A141431.P7203449488063234294.a, A141431.P12765055757640565081.a, A002262, A002262.P17823619022233514403.a, A141434, A141434.P10264922123432499048.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A141431

/-! ## A141431.P3157188048762247771

`A141434(n+1)+log2(A059268(n)²)`
-/

namespace A141431.P3157188048762247771
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A141434 (n + 1) : ℝ) + Real.logb 2 (A059268 n ^ 2 : ℝ)

end

end A141431.P3157188048762247771

namespace A141431

/-- `A141434(n+1)+log2(A059268(n)²)` -/
def P3157188048762247771.Spec : Prop :=
  ∀ n, P3157188048762247771.a n = (A141431 (n + 1) : ℝ)

end A141431

/-! ## A141431.P6706987164718503990

`(A055998(A123578(n))-n)*A002262(n)`
-/

namespace A141431.P6706987164718503990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A055998 (A123578 n).toNat - (n : ℤ)) * A002262 n

end

end A141431.P6706987164718503990

namespace A141431

/-- `(A055998(A123578(n))-n)*A002262(n)` -/
def P6706987164718503990.Spec : Prop :=
  ∀ n, P6706987164718503990.a n = A141431 (n + 1)

end A141431

/-! ## A141431.P14423039254952088825

`A002024(n+1)*A094727(n+1)-A004736(n+1)²`
-/

namespace A141431.P14423039254952088825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 (n + 1) * A094727 (n + 1) - A004736 (n + 1) ^ 2

end

end A141431.P14423039254952088825

namespace A141431

/-- `A002024(n+1)*A094727(n+1)-A004736(n+1)²` -/
def P14423039254952088825.Spec : Prop :=
  ∀ n, P14423039254952088825.a n = A141431 (n + 1)

end A141431

/-! ## A141431.P14341165668490114932

`(A134483(A038722(n+1))+2)*A002262(n)`
-/

namespace A141431.P14341165668490114932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A134483 (A038722 (n + 1)).toNat + 2) * A002262 n

end

end A141431.P14341165668490114932

namespace A141431

/-- `(A134483(A038722(n+1))+2)*A002262(n)` -/
def P14341165668490114932.Spec : Prop :=
  ∀ n, P14341165668490114932.a n = A141431 (n + 1)

end A141431

/-!
# A141432: Triangle T(n,k) = (k+1)*(n-k-1) read by rows.

The programs for A141432, the canonical program `A141432.P5501236499494687648` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A141432 has offset 1).

The definition of A141432 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(col(n)+2)*(row(n)-(col(n)+1))` (program `A141432.P5501236499494687648`, by `A141432.P5501236499494687648.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A141432.P5501236499494687648

`(col(n)+2)*(row(n)-(col(n)+1))`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A141432

/-- `(col(n)+2)*(row(n)-(col(n)+1))` -/
def P5501236499494687648.Spec : Prop :=
  ∀ n, P5501236499494687648.a n = A141432 (n + 1)

theorem P5501236499494687648.correct : P5501236499494687648.Spec := by
  intro n
  simp only [A141432, Nat.add_sub_cancel]

end A141432

/-! ## A141432.P9918579119062655660

`(col(n)+2)*(row(n)+1-(col(n)+1)-1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A141432.P9918579119062655660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.triCol n + 2 : ℤ) * ((SequenceMachineLib.triRow n + 1 : ℤ) - (SequenceMachineLib.triCol n + 1 : ℤ) - 1)

end

end A141432.P9918579119062655660

namespace A141432

/-- `(col(n)+2)*(row(n)+1-(col(n)+1)-1)` -/
def P9918579119062655660.Spec : Prop :=
  ∀ n, P9918579119062655660.a n = A141432 (n + 1)

theorem P9918579119062655660.correct : P9918579119062655660.Spec := by
  intro n
  simp only [A141432, Nat.add_sub_cancel, A141432.P9918579119062655660.a, A141432.P5501236499494687648.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A141432

/-! ## A141432.P9450738093109342442

`A114327(n)+∑[A114327(n)]-2`
-/

namespace A141432.P9450738093109342442
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114327 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114327 n + (∑ j ∈ Finset.range (n + 1), f1 j - 2)

end

end A141432.P9450738093109342442

namespace A141432

/-- `A114327(n)+∑[A114327(n)]-2` -/
def P9450738093109342442.Spec : Prop :=
  ∀ n, P9450738093109342442.a n = A141432 (n + 1)

end A141432

/-! ## A141432.P16712019875030683196

`A094053(n+1)+A114327(n)-2`
-/

namespace A141432.P16712019875030683196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094053 (n + 1) + (A114327 n - 2)

end

end A141432.P16712019875030683196

namespace A141432

/-- `A094053(n+1)+A114327(n)-2` -/
def P16712019875030683196.Spec : Prop :=
  ∀ n, P16712019875030683196.a n = A141432 (n + 1)

theorem P16712019875030683196.correct : P16712019875030683196.Spec := by
  intro n
  simp only [A141432, Nat.add_sub_cancel, A141432.P16712019875030683196.a, A141432.P5501236499494687648.a, A094053, A094053.P7632435431613033853.a, A114327, A114327.P12930942860764139837.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A141432

/-! ## A141432.P16487488294066040450

`A343125(n+2)-A111650(n+1)`
-/

namespace A141432.P16487488294066040450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343125 (n + 2) - A111650 (n + 1)

end

end A141432.P16487488294066040450

namespace A141432

/-- `A343125(n+2)-A111650(n+1)` -/
def P16487488294066040450.Spec : Prop :=
  ∀ n, P16487488294066040450.a n = A141432 (n + 1)

end A141432

/-! ## A141432.P8930737102164518780

`(A025581(n)-1)*(A002260(n+1)+1)`
-/

namespace A141432.P8930737102164518780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A025581 n - 1) * (A002260 (n + 1) + 1)

end

end A141432.P8930737102164518780

namespace A141432

/-- `(A025581(n)-1)*(A002260(n+1)+1)` -/
def P8930737102164518780.Spec : Prop :=
  ∀ n, P8930737102164518780.a n = A141432 (n + 1)

theorem P8930737102164518780.correct : P8930737102164518780.Spec := by
  intro n
  simp only [A141432, Nat.add_sub_cancel, A141432.P8930737102164518780.a, A141432.P5501236499494687648.a, A002260, A002260.P9170571874073898642.a, A025581, A025581.P16112744757063613497.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A141432

/-! ## A141432.P8561532815003353457

`(A004736(n+1)-2)*A020725(A002260(n+1))`
-/

namespace A141432.P8561532815003353457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A004736 (n + 1) - 2) * A020725 (A002260 (n + 1)).toNat

end

end A141432.P8561532815003353457

namespace A141432

/-- `(A004736(n+1)-2)*A020725(A002260(n+1))` -/
def P8561532815003353457.Spec : Prop :=
  ∀ n, P8561532815003353457.a n = A141432 (n + 1)

end A141432

/-! ## A141432.P8596062355735199252

`A093995(n+1)-A215630(n+2)`
-/

namespace A141432.P8596062355735199252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093995 (n + 1) - A215630 (n + 2)

end

end A141432.P8596062355735199252

namespace A141432

/-- `A093995(n+1)-A215630(n+2)` -/
def P8596062355735199252.Spec : Prop :=
  ∀ n, P8596062355735199252.a n = A141432 (n + 1)

end A141432

/-! ## A141432.P1555570132111591981

`A168038(n+1)-A215630(n+2)`
-/

namespace A141432.P1555570132111591981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168038 (n + 1) - A215630 (n + 2)

end

end A141432.P1555570132111591981

namespace A141432

/-- `A168038(n+1)-A215630(n+2)` -/
def P1555570132111591981.Spec : Prop :=
  ∀ n, P1555570132111591981.a n = A141432 (n + 1)

end A141432

/-! ## A141432.P14934154247753512799

`A274093(n+1)²-A215630(n+2)`
-/

namespace A141432.P14934154247753512799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274093 (n + 1) ^ 2 - A215630 (n + 2)

end

end A141432.P14934154247753512799

namespace A141432

/-- `A274093(n+1)²-A215630(n+2)` -/
def P14934154247753512799.Spec : Prop :=
  ∀ n, P14934154247753512799.a n = A141432 (n + 1)

end A141432

/-! ## A141432.P9167785490568045555

`A070216(n+1)-(A215630(n+2)+A133819(n+1))`
-/

namespace A141432.P9167785490568045555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070216 (n + 1) - (A215630 (n + 2) + A133819 (n + 1))

end

end A141432.P9167785490568045555

namespace A141432

/-- `A070216(n+1)-(A215630(n+2)+A133819(n+1))` -/
def P9167785490568045555.Spec : Prop :=
  ∀ n, P9167785490568045555.a n = A141432 (n + 1)

end A141432

/-! ## A141432.P9467525640357951789

`A093995(n+1)+A075362(n+2)-A070216(n+2)`
-/

namespace A141432.P9467525640357951789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093995 (n + 1) + (A075362 (n + 2) - A070216 (n + 2))

end

end A141432.P9467525640357951789

namespace A141432

/-- `A093995(n+1)+A075362(n+2)-A070216(n+2)` -/
def P9467525640357951789.Spec : Prop :=
  ∀ n, P9467525640357951789.a n = A141432 (n + 1)

end A141432

/-! ## A141432.P10345396289539057009

`A002024(n+1)*A002024(n+1)-A215630(n+2)`
-/

namespace A141432.P10345396289539057009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 (n + 1) * A002024 (n + 1) - A215630 (n + 2)

end

end A141432.P10345396289539057009

namespace A141432

/-- `A002024(n+1)*A002024(n+1)-A215630(n+2)` -/
def P10345396289539057009.Spec : Prop :=
  ∀ n, P10345396289539057009.a n = A141432 (n + 1)

end A141432

/-! ## A141432.P9586271969143378748

`(A002024(n+1)-A131818(n+2))*A131818(n+2)`
-/

namespace A141432.P9586271969143378748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A002024 (n + 1) - A131818 (n + 2)) * A131818 (n + 2)

end

end A141432.P9586271969143378748

namespace A141432

/-- `(A002024(n+1)-A131818(n+2))*A131818(n+2)` -/
def P9586271969143378748.Spec : Prop :=
  ∀ n, P9586271969143378748.a n = A141432 (n + 1)

end A141432

/-! ## A141432.P2426478954452580715

`(A123578(n+1)-A144257(n+2))*A144257(n+2)`
-/

namespace A141432.P2426478954452580715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A123578 (n + 1) - A144257 (n + 2)) * A144257 (n + 2)

end

end A141432.P2426478954452580715

namespace A141432

/-- `(A123578(n+1)-A144257(n+2))*A144257(n+2)` -/
def P2426478954452580715.Spec : Prop :=
  ∀ n, P2426478954452580715.a n = A141432 (n + 1)

end A141432

/-! ## A141432.P15323762894092370170

`A000194(2*n+1)²-A215630(n+2)`
-/

namespace A141432.P15323762894092370170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000194 (2 * n + 1) ^ 2 - A215630 (n + 2)

end

end A141432.P15323762894092370170

namespace A141432

/-- `A000194(2*n+1)²-A215630(n+2)` -/
def P15323762894092370170.Spec : Prop :=
  ∀ n, P15323762894092370170.a n = A141432 (n + 1)

end A141432

/-! ## A141432.P9880119945939033434

`A127738(n+1)-A158894(n+1)`
-/

namespace A141432.P9880119945939033434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127738 (n + 1) - A158894 (n + 1)

end

end A141432.P9880119945939033434

namespace A141432

/-- `A127738(n+1)-A158894(n+1)` -/
def P9880119945939033434.Spec : Prop :=
  ∀ n, P9880119945939033434.a n = A141432 (n + 1)

theorem P9880119945939033434.correct : P9880119945939033434.Spec := by
  intro n
  simp only [A141432, Nat.add_sub_cancel, A141432.P9880119945939033434.a, A141432.P5501236499494687648.a, A127738, A127738.P13771444761042262108.a, A158894, A158894.P8366770793697318187.a, A158405, A158405.P5173674940907569791.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A141432

/-! ## A141432.P5890586969742582607

`A201006(n)+A143971(n+1)`
-/

namespace A141432.P5890586969742582607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201006 n + A143971 (n + 1)

end

end A141432.P5890586969742582607

namespace A141432

/-- `A201006(n)+A143971(n+1)` -/
def P5890586969742582607.Spec : Prop :=
  ∀ n, P5890586969742582607.a n = A141432 (n + 1)

end A141432

/-!
# A141433: Triangle T(n, k) = (k-1)*(3*n-k), read by rows.

The programs for A141433, the canonical program `A141433.P9226178116512622478` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A141433 has offset 1).

The definition of A141433 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `col(n)*(3*(row(n)+1)-(col(n)+1))` (program `A141433.P9226178116512622478`, by `A141433.P9226178116512622478.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A141433.P9226178116512622478

`col(n)*(3*(row(n)+1)-(col(n)+1))`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A141433

/-- `col(n)*(3*(row(n)+1)-(col(n)+1))` -/
def P9226178116512622478.Spec : Prop :=
  ∀ n, P9226178116512622478.a n = A141433 (n + 1)

theorem P9226178116512622478.correct : P9226178116512622478.Spec := by
  intro n
  simp only [A141433, Nat.add_sub_cancel]

end A141433

/-! ## A141433.P10905218753363198977

`A141434(n+1)+A002262(n)`
-/

namespace A141433.P10905218753363198977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141434 (n + 1) + A002262 n

end

end A141433.P10905218753363198977

namespace A141433

/-- `A141434(n+1)+A002262(n)` -/
def P10905218753363198977.Spec : Prop :=
  ∀ n, P10905218753363198977.a n = A141433 (n + 1)

theorem P10905218753363198977.correct : P10905218753363198977.Spec := by
  intro n
  simp only [A141433, Nat.add_sub_cancel, A141433.P10905218753363198977.a, A141433.P9226178116512622478.a, A002262, A002262.P17823619022233514403.a, A141434, A141434.P10264922123432499048.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A141433

/-! ## A141433.P6649970107262301922

`A141431(n+1)-A002262(n)`
-/

namespace A141433.P6649970107262301922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141431 (n + 1) - A002262 n

end

end A141433.P6649970107262301922

namespace A141433

/-- `A141431(n+1)-A002262(n)` -/
def P6649970107262301922.Spec : Prop :=
  ∀ n, P6649970107262301922.a n = A141433 (n + 1)

theorem P6649970107262301922.correct : P6649970107262301922.Spec := by
  intro n
  simp only [A141433, Nat.add_sub_cancel, A141433.P6649970107262301922.a, A141433.P9226178116512622478.a, A002262, A002262.P17823619022233514403.a, A141431, A141431.P12765055757640565081.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A141433

/-! ## A141433.P7503884424881201141

`(A131413(n)+1)*A002262(n)`
-/

namespace A141433.P7503884424881201141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A131413 n + 1) * A002262 n

end

end A141433.P7503884424881201141

namespace A141433

/-- `(A131413(n)+1)*A002262(n)` -/
def P7503884424881201141.Spec : Prop :=
  ∀ n, P7503884424881201141.a n = A141433 (n + 1)

end A141433

/-! ## A141433.P9192569720446603583

`(A131894(n)+1)*A002262(n)`
-/

namespace A141433.P9192569720446603583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A131894 n + 1) * A002262 n

end

end A141433.P9192569720446603583

namespace A141433

/-- `(A131894(n)+1)*A002262(n)` -/
def P9192569720446603583.Spec : Prop :=
  ∀ n, P9192569720446603583.a n = A141433 (n + 1)

end A141433

/-! ## A141433.P3995718602042422963

`A141434(n+1)+log2(A059268(n))`
-/

namespace A141433.P3995718602042422963
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A141434 (n + 1) : ℝ) + Real.logb 2 (A059268 n : ℝ)

end

end A141433.P3995718602042422963

namespace A141433

/-- `A141434(n+1)+log2(A059268(n))` -/
def P3995718602042422963.Spec : Prop :=
  ∀ n, P3995718602042422963.a n = (A141433 (n + 1) : ℝ)

end A141433

/-! ## A141433.P4781939240626628788

`A141431(n+1)-log2(A059268(n))`
-/

namespace A141433.P4781939240626628788
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A141431 (n + 1) : ℝ) - Real.logb 2 (A059268 n : ℝ)

end

end A141433.P4781939240626628788

namespace A141433

/-- `A141431(n+1)-log2(A059268(n))` -/
def P4781939240626628788.Spec : Prop :=
  ∀ n, P4781939240626628788.a n = (A141433 (n + 1) : ℝ)

end A141433

/-! ## A141433.P4609498787656145731

`A141431(n+1)+1-A002260(n+1)`
-/

namespace A141433.P4609498787656145731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141431 (n + 1) + (1 - A002260 (n + 1))

end

end A141433.P4609498787656145731

namespace A141433

/-- `A141431(n+1)+1-A002260(n+1)` -/
def P4609498787656145731.Spec : Prop :=
  ∀ n, P4609498787656145731.a n = A141433 (n + 1)

theorem P4609498787656145731.correct : P4609498787656145731.Spec := by
  intro n
  simp only [A141433, Nat.add_sub_cancel, A141433.P4609498787656145731.a, A141433.P9226178116512622478.a, A002260, A002260.P9170571874073898642.a, A141431, A141431.P12765055757640565081.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A141433

/-! ## A141433.P9407382629371248292

`(A055998(A123578(n))-(n+1))*A002262(n)`
-/

namespace A141433.P9407382629371248292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A055998 (A123578 n).toNat - (n + 1 : ℤ)) * A002262 n

end

end A141433.P9407382629371248292

namespace A141433

/-- `(A055998(A123578(n))-(n+1))*A002262(n)` -/
def P9407382629371248292.Spec : Prop :=
  ∀ n, P9407382629371248292.a n = A141433 (n + 1)

end A141433

/-! ## A141433.P5343879719177095320

`(A134483(A038722(n+1))+1)*A002262(n)`
-/

namespace A141433.P5343879719177095320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A134483 (A038722 (n + 1)).toNat + 1) * A002262 n

end

end A141433.P5343879719177095320

namespace A141433

/-- `(A134483(A038722(n+1))+1)*A002262(n)` -/
def P5343879719177095320.Spec : Prop :=
  ∀ n, P5343879719177095320.a n = A141433 (n + 1)

end A141433

/-!
# A141434: Triangle T(n, k) = (k-1)*(3*n-k-1), read by rows.

The programs for A141434, the canonical program `A141434.P10264922123432499048` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A141434 has offset 1).

The definition of A141434 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `col(n)*(3*(row(n)+1)-(col(n)+1)-1)` (program `A141434.P10264922123432499048`, by `A141434.P10264922123432499048.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A141434.P10264922123432499048

`col(n)*(3*(row(n)+1)-(col(n)+1)-1)`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A141434

/-- `col(n)*(3*(row(n)+1)-(col(n)+1)-1)` -/
def P10264922123432499048.Spec : Prop :=
  ∀ n, P10264922123432499048.a n = A141434 (n + 1)

theorem P10264922123432499048.correct : P10264922123432499048.Spec := by
  intro n
  simp only [A141434, Nat.add_sub_cancel]

end A141434

/-! ## A141434.P4998564812598306764

`A002262(n)*A131413(n)`
-/

namespace A141434.P4998564812598306764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n * A131413 n

end

end A141434.P4998564812598306764

namespace A141434

/-- `A002262(n)*A131413(n)` -/
def P4998564812598306764.Spec : Prop :=
  ∀ n, P4998564812598306764.a n = A141434 (n + 1)

end A141434

/-! ## A141434.P4669991417774248646

`A002262(n)*A131894(n)`
-/

namespace A141434.P4669991417774248646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n * A131894 n

end

end A141434.P4669991417774248646

namespace A141434

/-- `A002262(n)*A131894(n)` -/
def P4669991417774248646.Spec : Prop :=
  ∀ n, P4669991417774248646.a n = A141434 (n + 1)

end A141434

/-! ## A141434.P3914252368002181010

`A141433(n+1)-A002262(n)`
-/

namespace A141434.P3914252368002181010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141433 (n + 1) - A002262 n

end

end A141434.P3914252368002181010

namespace A141434

/-- `A141433(n+1)-A002262(n)` -/
def P3914252368002181010.Spec : Prop :=
  ∀ n, P3914252368002181010.a n = A141434 (n + 1)

theorem P3914252368002181010.correct : P3914252368002181010.Spec := by
  intro n
  simp only [A141434, Nat.add_sub_cancel, A141434.P3914252368002181010.a, A141434.P10264922123432499048.a, A002262, A002262.P17823619022233514403.a, A141433, A141433.P9226178116512622478.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A141434

/-! ## A141434.P2414017629989909829

`A141433(n+1)-log2(A059268(n))`
-/

namespace A141434.P2414017629989909829
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A141433 (n + 1) : ℝ) - Real.logb 2 (A059268 n : ℝ)

end

end A141434.P2414017629989909829

namespace A141434

/-- `A141433(n+1)-log2(A059268(n))` -/
def P2414017629989909829.Spec : Prop :=
  ∀ n, P2414017629989909829.a n = (A141434 (n + 1) : ℝ)

end A141434

/-! ## A141434.P3252935367010732457

`(A002260(n+1)-1)*A131413(n)`
-/

namespace A141434.P3252935367010732457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A002260 (n + 1) - 1) * A131413 n

end

end A141434.P3252935367010732457

namespace A141434

/-- `(A002260(n+1)-1)*A131413(n)` -/
def P3252935367010732457.Spec : Prop :=
  ∀ n, P3252935367010732457.a n = A141434 (n + 1)

end A141434

/-! ## A141434.P6314213318901653543

`A141431(n+1)-2*A002262(n)`
-/

namespace A141434.P6314213318901653543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141431 (n + 1) - 2 * A002262 n

end

end A141434.P6314213318901653543

namespace A141434

/-- `A141431(n+1)-2*A002262(n)` -/
def P6314213318901653543.Spec : Prop :=
  ∀ n, P6314213318901653543.a n = A141434 (n + 1)

theorem P6314213318901653543.correct : P6314213318901653543.Spec := by
  intro n
  simp only [A141434, Nat.add_sub_cancel, A141434.P6314213318901653543.a, A141434.P10264922123432499048.a, A002262, A002262.P17823619022233514403.a, A141431, A141431.P12765055757640565081.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A141434

/-! ## A141434.P9048766322065142210

`A141431(n+1)-log2(A059268(n)²)`
-/

namespace A141434.P9048766322065142210
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A141431 (n + 1) : ℝ) - Real.logb 2 (A059268 n ^ 2 : ℝ)

end

end A141434.P9048766322065142210

namespace A141434

/-- `A141431(n+1)-log2(A059268(n)²)` -/
def P9048766322065142210.Spec : Prop :=
  ∀ n, P9048766322065142210.a n = (A141434 (n + 1) : ℝ)

end A141434

/-! ## A141434.P754650971230924517

`(A131507(n)+A025581(n))*A002262(n)`
-/

namespace A141434.P754650971230924517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A131507 n + A025581 n) * A002262 n

end

end A141434.P754650971230924517

namespace A141434

/-- `(A131507(n)+A025581(n))*A002262(n)` -/
def P754650971230924517.Spec : Prop :=
  ∀ n, P754650971230924517.a n = A141434 (n + 1)

end A141434

/-! ## A141434.P1963297598962409604

`(A131914(n+1)+A002262(n))*A002262(n)`
-/

namespace A141434.P1963297598962409604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A131914 (n + 1) + A002262 n) * A002262 n

end

end A141434.P1963297598962409604

namespace A141434

/-- `(A131914(n+1)+A002262(n))*A002262(n)` -/
def P1963297598962409604.Spec : Prop :=
  ∀ n, P1963297598962409604.a n = A141434 (n + 1)

end A141434

/-! ## A141434.P9619496520618614290

`A002262(n)*A134483(A038722(n+1))`
-/

namespace A141434.P9619496520618614290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n * A134483 (A038722 (n + 1)).toNat

end

end A141434.P9619496520618614290

namespace A141434

/-- `A002262(n)*A134483(A038722(n+1))` -/
def P9619496520618614290.Spec : Prop :=
  ∀ n, P9619496520618614290.a n = A141434 (n + 1)

end A141434

/-! ## A141434.P1877470130385283754

`A004247(A131507(n)²+n)`
-/

namespace A141434.P1877470130385283754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004247 (A131507 n ^ 2 + (n : ℤ)).toNat

end

end A141434.P1877470130385283754

namespace A141434

/-- `A004247(A131507(n)²+n)` -/
def P1877470130385283754.Spec : Prop :=
  ∀ n, P1877470130385283754.a n = A141434 (n + 1)

end A141434

/-!
# A141435: a(1) = 1, a(2) = 2; a(n) = a(n-a(1)) + a(n-a(2)) + a(n-a(3)) + a(n-a(4)) + ...

The programs for A141435, there is no canonical definition to state claims against.
-/

/-! ## A141435.P16327275070240726894

`or(A011699(A290297(n+1)), A173508(2*n+1))`
-/

namespace A141435.P16327275070240726894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A011699 (A290297 (n + 1)).toNat) (A173508 (2 * n + 1))

end

end A141435.P16327275070240726894

/-! ## A141435.P11782465164974718858

`record[A173508(A239446(n+1))]`
-/

namespace A141435.P11782465164974718858
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173508 (A239446 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A141435.P11782465164974718858

/-! ## A141435.P7126439436337516616

`A173508(2*A062399(n)+1)`
-/

namespace A141435.P7126439436337516616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173508 (2 * A062399 n + 1).toNat

end

end A141435.P7126439436337516616

/-! ## A141435.P1946569188503583941

`A173508(2*A120126(n)+1)`
-/

namespace A141435.P1946569188503583941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173508 (2 * A120126 n + 1).toNat

end

end A141435.P1946569188503583941

/-! ## A141435.P15676182086737836465

`A043290(A028859(n))*A173508(2*n+1)`
-/

namespace A141435.P15676182086737836465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043290 (A028859 n).toNat * A173508 (2 * n + 1)

end

end A141435.P15676182086737836465

/-!
# A141436: Tisdale's sieve: generators for an infinite set of disjoint prime/nonprime sequences (see Comments for precise definition).

The programs for A141436, the canonical program `A141436.P7162572235992512063` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A141436 has offset 1).

The definition of A141436 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A141436.P7162572235992512063

`∪[A006450(n+1), A018252(A018252(n+1))]`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A141436

/-- `∪[A006450(n+1), A018252(A018252(n+1))]` -/
def P7162572235992512063.Spec : Prop :=
  ∀ n, (P7162572235992512063.a n : ℤ) = A141436 (n + 1)

theorem P7162572235992512063.correct : P7162572235992512063.Spec := by
  intro n
  simp only [A141436, Nat.add_sub_cancel]

end A141436

/-! ## A141436.P10544579146103391743

`eq[A010051(n+1), A010051(A026233(n+1))]+1`
-/

namespace A141436.P10544579146103391743
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (A026233 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A141436.P10544579146103391743

namespace A141436

/-- `eq[A010051(n+1), A010051(A026233(n+1))]+1` -/
def P10544579146103391743.Spec : Prop :=
  ∀ n, (P10544579146103391743.a n : ℤ) = A141436 (n + 1)

end A141436

/-! ## A141436.P6084365862093028078

`eq[char[A141437(n+1)], A000007(n)]`
-/

namespace A141436.P6084365862093028078
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141437 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A141436.P6084365862093028078

namespace A141436

/-- `eq[char[A141437(n+1)], A000007(n)]` -/
def P6084365862093028078.Spec : Prop :=
  ∀ n, (P6084365862093028078.a n : ℤ) = A141436 (n + 1)

end A141436

/-! ## A141436.P13807988796176674481

`eq[char[A141437(n+1)], A000038(n)]`
-/

namespace A141436.P13807988796176674481
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141437 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A141436.P13807988796176674481

namespace A141436

/-- `eq[char[A141437(n+1)], A000038(n)]` -/
def P13807988796176674481.Spec : Prop :=
  ∀ n, (P13807988796176674481.a n : ℤ) = A141436 (n + 1)

end A141436

/-! ## A141436.P15775972971120422655

`eq[char[A141437(n+1)], A147612(2*n)]`
-/

namespace A141436.P15775972971120422655
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141437 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147612 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A141436.P15775972971120422655

namespace A141436

/-- `eq[char[A141437(n+1)], A147612(2*n)]` -/
def P15775972971120422655.Spec : Prop :=
  ∀ n, (P15775972971120422655.a n : ℤ) = A141436 (n + 1)

end A141436

/-! ## A141436.P4730855690719551118

`eq[A000010(n+2)%2, char[A141437(n+1)]]`
-/

namespace A141436.P4730855690719551118
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000010 (n + 2)) 2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141437 (n + 1)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (f2 j : ℤ)) n

end

end A141436.P4730855690719551118

namespace A141436

/-- `eq[A000010(n+2)%2, char[A141437(n+1)]]` -/
def P4730855690719551118.Spec : Prop :=
  ∀ n, (P4730855690719551118.a n : ℤ) = A141436 (n + 1)

end A141436

/-! ## A141436.P15512732131432028087

`∪[A006450(n+1), A102615(n+1)]`
-/

namespace A141436.P15512732131432028087
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006450 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102615 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A141436.P15512732131432028087

namespace A141436

/-- `∪[A006450(n+1), A102615(n+1)]` -/
def P15512732131432028087.Spec : Prop :=
  ∀ n, (P15512732131432028087.a n : ℤ) = A141436 (n + 1)

end A141436

/-! ## A141436.P5224534538342249256

`∪[A102615(n+1), A302590(n+1)]`
-/

namespace A141436.P5224534538342249256
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102615 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302590 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A141436.P5224534538342249256

namespace A141436

/-- `∪[A102615(n+1), A302590(n+1)]` -/
def P5224534538342249256.Spec : Prop :=
  ∀ n, (P5224534538342249256.a n : ℤ) = A141436 (n + 1)

end A141436

/-! ## A141436.P16668680990227585919

`∪[A102615(n+1), A316151(n+1)]`
-/

namespace A141436.P16668680990227585919
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102615 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316151 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A141436.P16668680990227585919

namespace A141436

/-- `∪[A102615(n+1), A316151(n+1)]` -/
def P16668680990227585919.Spec : Prop :=
  ∀ n, (P16668680990227585919.a n : ℤ) = A141436 (n + 1)

end A141436

/-!
# A141437: Complement of A141436.

The programs for A141437, the canonical program `A141437.P18245047897130633086` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A141437 has offset 1).

The definition of A141437 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A141437.P18245047897130633086

`comp[A141436(n+1)-1]+1`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A141437

/-- `comp[A141436(n+1)-1]+1` -/
def P18245047897130633086.Spec : Prop :=
  ∀ n, (P18245047897130633086.a n : ℤ) = A141437 (n + 1)

theorem P18245047897130633086.correct : P18245047897130633086.Spec := by
  intro n
  simp only [A141437, Nat.add_sub_cancel]

end A141437

/-! ## A141437.P287992776353370073

`∪[A007821(n+1), A078782(n+1)]`
-/

namespace A141437.P287992776353370073
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007821 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078782 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A141437.P287992776353370073

namespace A141437

/-- `∪[A007821(n+1), A078782(n+1)]` -/
def P287992776353370073.Spec : Prop :=
  ∀ n, (P287992776353370073.a n : ℤ) = A141437 (n + 1)

end A141437

/-! ## A141437.P3431061513474087887

`eq[char[A141436(n+1)], A000007(n)]`
-/

namespace A141437.P3431061513474087887
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141436 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A141437.P3431061513474087887

namespace A141437

/-- `eq[char[A141436(n+1)], A000007(n)]` -/
def P3431061513474087887.Spec : Prop :=
  ∀ n, (P3431061513474087887.a n : ℤ) = A141437 (n + 1)

end A141437

/-! ## A141437.P17261739840416500099

`eq[char[A141436(n+1)], A000038(n)]`
-/

namespace A141437.P17261739840416500099
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141436 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A141437.P17261739840416500099

namespace A141437

/-- `eq[char[A141436(n+1)], A000038(n)]` -/
def P17261739840416500099.Spec : Prop :=
  ∀ n, (P17261739840416500099.a n : ℤ) = A141437 (n + 1)

end A141437

/-! ## A141437.P16305968870937077186

`eq[1, A057427(n)+char[A141436(n+1)]]`
-/

namespace A141437.P16305968870937077186
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141436 (n + 1)

open Classical in
def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n + ((if ∃ j, f3 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A141437.P16305968870937077186

namespace A141437

/-- `eq[1, A057427(n)+char[A141436(n+1)]]` -/
def P16305968870937077186.Spec : Prop :=
  ∀ n, (P16305968870937077186.a n : ℤ) = A141437 (n + 1)

end A141437

/-! ## A141437.P10675247319911396864

`eq[char[A141436(n+1)], A341629(2*n+1)]`
-/

namespace A141437.P10675247319911396864
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141436 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341629 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A141437.P10675247319911396864

namespace A141437

/-- `eq[char[A141436(n+1)], A341629(2*n+1)]` -/
def P10675247319911396864.Spec : Prop :=
  ∀ n, (P10675247319911396864.a n : ℤ) = A141437 (n + 1)

end A141437

/-! ## A141437.P1360299908963308187

`eq[char[A141436(n+1)], A105348(n²)]`
-/

namespace A141437.P1360299908963308187
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141436 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105348 (n ^ 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A141437.P1360299908963308187

namespace A141437

/-- `eq[char[A141436(n+1)], A105348(n²)]` -/
def P1360299908963308187.Spec : Prop :=
  ∀ n, (P1360299908963308187.a n : ℤ) = A141437 (n + 1)

end A141437

/-!
# A141438: Primes p such that p+4 is prime and (p+5)/6 is composite.

The programs for A141438, there is no canonical definition to state claims against.
-/

/-! ## A141438.P17864572659547354907

`A387471(A132457(n+1))`
-/

namespace A141438.P17864572659547354907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387471 (A132457 (n + 1)).toNat

end

end A141438.P17864572659547354907

/-! ## A141438.P11347105538023604778

`A029710(lt[A008555(n+3), A090378(n)])`
-/

namespace A141438.P11347105538023604778
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008555 (n + 3)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090378 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029710 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A141438.P11347105538023604778

/-! ## A141438.P10389379788875474300

`A069324(A063949(n+3)+n)`
-/

namespace A141438.P10389379788875474300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069324 (A063949 (n + 3) + (n : ℤ)).toNat

end

end A141438.P10389379788875474300

/-! ## A141438.P6935889665441347552

`A069324(record[A064364(n+1)+n+1])`
-/

namespace A141438.P6935889665441347552
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064364 (n + 1) + (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069324 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A141438.P6935889665441347552

/-!
# A141439: Positions at which disjoint pattern counts differ from overlapping pattern counts related to sequence A117127.

The programs for A141439, there is no canonical definition to state claims against.
-/

/-! ## A141439.P818322018923898533

`lt[A101933(n+1), A117127(n+1)]+1`
-/

namespace A141439.P818322018923898533
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101933 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117127 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A141439.P818322018923898533

/-!
# A141440: Number of n X n integer matrices, symmetric under horizontal reflection, with adjacent elements differing by no more than 1, counting matrices differing by a constant only once.

The programs for A141440, there is no canonical definition to state claims against.
-/

/-! ## A141440.P12427896533136626601

`A222169(A210981(n)+1)`
-/

namespace A141440.P12427896533136626601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222169 (A210981 n + 1).toNat

end

end A141440.P12427896533136626601

/-! ## A141440.P11039097992565201307

`record[lcm(A121373(3*n+1), A222169(n+1))]`
-/

namespace A141440.P11039097992565201307
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A121373 (3 * n + 1)) (A222169 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A141440.P11039097992565201307

/-! ## A141440.P8088192183631891731

`A222169(A195160(n)+1)`
-/

namespace A141440.P8088192183631891731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222169 (A195160 n + 1).toNat

end

end A141440.P8088192183631891731

/-!
# A141441: Number of symmetric n X n integer matrices with adjacent elements differing by no more than 1, counting matrices differing by a constant only once.

The programs for A141441, there is no canonical definition to state claims against.
-/

/-! ## A141441.P10776531116142902074

`A195278(∑[n+1])`
-/

namespace A141441.P10776531116142902074
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195278 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A141441.P10776531116142902074

/-! ## A141441.P10259986370286307472

`record[A158821(n)*A195278(n+1)]`
-/

namespace A141441.P10259986370286307472
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158821 n * A195278 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A141441.P10259986370286307472

/-! ## A141441.P5312466753532210513

`record[root(A195278(n+1), A029653(n))]`
-/

namespace A141441.P5312466753532210513
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A195278 (n + 1) : ℝ) ^ (1 / (A029653 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A141441.P5312466753532210513

/-! ## A141441.P3226973808351300463

`record[root(A195278(n+1), A055249(n))]`
-/

namespace A141441.P3226973808351300463
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A195278 (n + 1) : ℝ) ^ (1 / (A055249 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A141441.P3226973808351300463

/-! ## A141441.P3081326490710803552

`record[root(A195278(n+1), A117401(n))]`
-/

namespace A141441.P3081326490710803552
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A195278 (n + 1) : ℝ) ^ (1 / (A117401 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A141441.P3081326490710803552

/-!
# A141442: Number of n X n integer matrices, symmetric about both diagonal and antidiagonal, with adjacent elements differing by no more than 1, counting matrices differing by a constant only once.

The programs for A141442, there is no canonical definition to state claims against.
-/

/-! ## A141442.P11668816373217371071

`A319726(A325502(n))-1`
-/

namespace A141442.P11668816373217371071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319726 (A325502 n).toNat - 1

end

end A141442.P11668816373217371071

/-!
# A141444: Number of n X n integer matrices, symmetric under 90-degree rotation, with adjacent elements differing by no more than 1, counting matrices differing by a constant only once.

The programs for A141444, there is no canonical definition to state claims against.
-/

/-! ## A141444.P7749239278461382449

`A332354(∑[C(2*n, 2)]+1)-n`
-/

namespace A141444.P7749239278461382449
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (2 * n) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332354 (∑ j ∈ Finset.range (n + 1), f1 j + 1) - (n : ℤ)

end

end A141444.P7749239278461382449

/-!
# A141446: A102055(n) mod 9.

The programs for A141446, there is no canonical definition to state claims against.
-/

/-! ## A141446.P831041266436124824

`A102055(n)%9`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A141446.P831041266436124824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A102055 n) 9

end

end A141446.P831041266436124824

/-!
# A141448: Generalized Pell numbers P(n,5,5).

The programs for A141448, the canonical program `A141448.P425453794908494254` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A141448 has offset 0).

The definition of A141448 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A141448.P425453794908494254

`2*a(n-1)+a(n-2)+a(n-3)+a(n-4)+a(n-5)` with `a(0)=0, a(1)=1, a(2)=2, a(3)=5, a(4)=13`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A141448

/-- `2*a(n-1)+a(n-2)+a(n-3)+a(n-4)+a(n-5)` -/
def P425453794908494254.Spec : Prop :=
  ∀ n, (P425453794908494254.a n : ℤ) = A141448 n

theorem P425453794908494254.correct : P425453794908494254.Spec := by
  intro n
  simp only [A141448]

end A141448

/-! ## A141448.P16006869626139440937

`ogf(-x/(-1+2x+x^2+x^3+x^4+x^5))`
-/

namespace A141448.P16006869626139440937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1] [1, -2, -1, -1, -1, -1] n

end

end A141448.P16006869626139440937

namespace A141448

/-- `ogf(-x/(-1+2x+x^2+x^3+x^4+x^5))` -/
def P16006869626139440937.Spec : Prop :=
  ∀ n, P16006869626139440937.a n = A141448 n

end A141448

/-! ## A141448.P17093752411410787874

`A060144(A000044(2*n+1))+ceil(n/98)`
-/

namespace A141448.P17093752411410787874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060144 (A000044 (2 * n + 1)).toNat + ⌈(n : ℚ) / 98⌉

end

end A141448.P17093752411410787874

namespace A141448

/-- `A060144(A000044(2*n+1))+ceil(n/98)` -/
def P17093752411410787874.Spec : Prop :=
  ∀ n, P17093752411410787874.a n = A141448 n

end A141448

/-! ## A141448.P2998706451397726570

`A060144(A305025(n+1)+A000044(2*n+1))`
-/

namespace A141448.P2998706451397726570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060144 (A305025 (n + 1) + A000044 (2 * n + 1)).toNat

end

end A141448.P2998706451397726570

namespace A141448

/-- `A060144(A305025(n+1)+A000044(2*n+1))` -/
def P2998706451397726570.Spec : Prop :=
  ∀ n, P2998706451397726570.a n = A141448 n

end A141448

/-!
# A141449: A005439 mod 9.

The programs for A141449, the canonical program `A141449.P14462973527117574043` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A141449 has offset 0).

The definition of A141449 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 591 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A141449.P14462973527117574043

`a(n-3)` with `a(0)=1, a(1)=1, a(2)=2, a(3)=8, a(4)=2, a(5)=5`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A141449

/-- `a(n-3)` -/
def P14462973527117574043.Spec : Prop :=
  ∀ n, (P14462973527117574043.a n : ℤ) = A141449 n

theorem P14462973527117574043.correct : P14462973527117574043.Spec := by
  intro n
  simp only [A141449]

end A141449

/-!
# A141450: Upper right triangle of the number of m's in all partitions of n.

The programs for A141450, there is no canonical definition to state claims against.
-/

/-! ## A141450.P3625888274634140253

`A066633(∑[char[∑[n]]]²-n)`
-/

namespace A141450.P3625888274634140253
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066633 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 - n)

end

end A141450.P3625888274634140253

/-! ## A141450.P9940804964679066934

`and(-1, A066633(A038722(n+1)))`
-/

namespace A141450.P9940804964679066934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A066633 (A038722 (n + 1)).toNat)

end

end A141450.P9940804964679066934

/-! ## A141450.P11814847578194980263

`gcd(A000038(n), A066633(A038722(n+1)))`
-/

namespace A141450.P11814847578194980263
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A066633 (A038722 (n + 1)).toNat)

end

end A141450.P11814847578194980263

/-! ## A141450.P17374690142827910121

`A066633(A038722(n+1))-A008683(4*(n+1))`
-/

namespace A141450.P17374690142827910121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066633 (A038722 (n + 1)).toNat - A008683 (4 * (n + 1))

end

end A141450.P17374690142827910121

/-! ## A141450.P16969138255661400621

`A161224(A099375(n)+1+n)`
-/

namespace A141450.P16969138255661400621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161224 (A099375 n + 1 + (n : ℤ)).toNat

end

end A141450.P16969138255661400621

/-! ## A141450.P17882942822557867023

`A161224(A038722(comp[∑[n-1]]+2))`
-/

namespace A141450.P17882942822557867023
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161224 (A038722 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 2)).toNat

end

end A141450.P17882942822557867023

/-!
# A141451: a(1)=2. a(n) = the smallest integer > a(n-1) that is divisible by every exponent in the prime-factorization of a(n-1).

The programs for A141451, there is no canonical definition to state claims against.
-/

/-! ## A141451.P8244314419474726739

`lt[A133831(A277325(2*n+1)), A002487(n+2)]-1`
-/

namespace A141451.P8244314419474726739
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133831 (A277325 (2 * n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002487 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => f1 j < f2 j) n : ℤ) - 1

end

end A141451.P8244314419474726739

/-!
# A141452: a(1)=1, a(n) = the smallest integer > a(n-1) that is divisible by the number of divisors of a(n-1).

The programs for A141452, there is no canonical definition to state claims against.
-/

/-! ## A141452.P1326251267188717768

`∑[A328324(A000048(n+2))]`
-/

namespace A141452.P1326251267188717768
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328324 (A000048 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A141452.P1326251267188717768

/-! ## A141452.P3697588782429713635

`record[A000005(A139250(n+1))]`
-/

namespace A141452.P3697588782429713635
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A139250 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A141452.P3697588782429713635

/-! ## A141452.P300858362723359839

`record[A000005(A144724(n+1))]`
-/

namespace A141452.P300858362723359839
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A144724 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A141452.P300858362723359839

/-! ## A141452.P16375525205017560915

`record[A366901(A117506(2*n))]`
-/

namespace A141452.P16375525205017560915
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366901 (A117506 (2 * n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A141452.P16375525205017560915

/-! ## A141452.P12602903856039460755

`record[A000005(A209158(n+1)+n)]`
-/

namespace A141452.P12602903856039460755
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A209158 (n + 1) + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A141452.P12602903856039460755

/-!
# A141453: Primes p such that either p = 2^k + 1 or p = 2^k - 1, k>=0.

The programs for A141453, there is no canonical definition to state claims against.
-/

/-! ## A141453.P17315974688294049829

`∩[A128898(n+1), A107684(n)]`
-/

namespace A141453.P17315974688294049829
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128898 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107684 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141453.P17315974688294049829

/-! ## A141453.P6745944985249959362

`∩[A099627(n), A152449(n+1)]`
-/

namespace A141453.P6745944985249959362
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099627 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152449 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141453.P6745944985249959362

/-! ## A141453.P5891797634988605045

`∩[A102363(n), A152449(n+1)]`
-/

namespace A141453.P5891797634988605045
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102363 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152449 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141453.P5891797634988605045

/-! ## A141453.P13913959943897868301

`∩[A152449(n+1), A107684(n)]`
-/

namespace A141453.P13913959943897868301
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152449 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107684 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141453.P13913959943897868301

/-! ## A141453.P17157281631411115435

`∩[A188713(n+1), A107684(n)]`
-/

namespace A141453.P17157281631411115435
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188713 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107684 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141453.P17157281631411115435

/-!
# A141454: A Legendre symbol type assignment of the modulo ten primes to the polynomial: Expand[(x-1)*(x+1)*(x-2)*(x+2)*(x-0)]=4 x - 5 x^3 + x^5; c(n) = If[Mod[n, 10] == 1, 1, If[Mod[n, 10] == 9, -1, If[Mod[n, 10] == 3, 2, If[Mod[n, 10] == 7, -2, 0]]]] such that n is a prime[n].

The programs for A141454, the canonical program `A141454.P14851454927162054000` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A141454 has offset 1).

The definition of A141454 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A141454.P9348560111131345932

`A277097(n+1)%3`
-/

namespace A141454.P9348560111131345932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A277097 (n + 1)) 3

end

end A141454.P9348560111131345932

namespace A141454

/-- `A277097(n+1)%3` -/
def P9348560111131345932.Spec : Prop :=
  ∀ n, P9348560111131345932.a n = A141454 (n + 1)

end A141454

/-! ## A141454.P14851454927162054000

`(5-A007652(n+1))%3`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A141454

/-- `(5-A007652(n+1))%3` -/
def P14851454927162054000.Spec : Prop :=
  ∀ n, P14851454927162054000.a n = A141454 (n + 1)

theorem P14851454927162054000.correct : P14851454927162054000.Spec := by
  intro n
  simp only [A141454, Nat.add_sub_cancel]

end A141454

/-! ## A141454.P8431632774318755135

`(A072003(n+1)-5)%3`
-/

namespace A141454.P8431632774318755135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A072003 (n + 1) - 5) 3

end

end A141454.P8431632774318755135

namespace A141454

/-- `(A072003(n+1)-5)%3` -/
def P8431632774318755135.Spec : Prop :=
  ∀ n, P8431632774318755135.a n = A141454 (n + 1)

end A141454

/-! ## A141454.P15025244861813703390

`(5-A000040(n+1)%10)%3`
-/

namespace A141454.P15025244861813703390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (5 - Int.tmod (A000040 (n + 1)) 10) 3

end

end A141454.P15025244861813703390

namespace A141454

/-- `(5-A000040(n+1)%10)%3` -/
def P15025244861813703390.Spec : Prop :=
  ∀ n, P15025244861813703390.a n = A141454 (n + 1)

end A141454

/-! ## A141454.P3257955702632257202

`(4-record[A000010(n+1)]%10)%3`
-/

namespace A141454.P3257955702632257202
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (4 - Int.tmod (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) 10) 3

end

end A141454.P3257955702632257202

namespace A141454

/-- `(4-record[A000010(n+1)]%10)%3` -/
def P3257955702632257202.Spec : Prop :=
  ∀ n, P3257955702632257202.a n = A141454 (n + 1)

end A141454

/-! ## A141454.P472699196732851461

`(5-record[A006530(n+2)]%10)%3`
-/

namespace A141454.P472699196732851461
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (5 - Int.tmod (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) 10) 3

end

end A141454.P472699196732851461

namespace A141454

/-- `(5-record[A006530(n+2)]%10)%3` -/
def P472699196732851461.Spec : Prop :=
  ∀ n, P472699196732851461.a n = A141454 (n + 1)

end A141454

/-! ## A141454.P5077296552401449658

`(5-record[A014963(n+2)]%10)%3`
-/

namespace A141454.P5077296552401449658
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (5 - Int.tmod (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) 10) 3

end

end A141454.P5077296552401449658

namespace A141454

/-- `(5-record[A014963(n+2)]%10)%3` -/
def P5077296552401449658.Spec : Prop :=
  ∀ n, P5077296552401449658.a n = A141454 (n + 1)

end A141454

/-! ## A141454.P15778220318797248387

`(5-record[A020639(n+2)]%10)%3`
-/

namespace A141454.P15778220318797248387
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (5 - Int.tmod (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) 10) 3

end

end A141454.P15778220318797248387

namespace A141454

/-- `(5-record[A020639(n+2)]%10)%3` -/
def P15778220318797248387.Spec : Prop :=
  ∀ n, P15778220318797248387.a n = A141454 (n + 1)

end A141454

/-! ## A141454.P11118010055514670608

`A253262(p?[A195140(n)])`
-/

namespace A141454.P11118010055514670608
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195140 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253262 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A141454.P11118010055514670608

namespace A141454

/-- `A253262(p?[A195140(n)])` -/
def P11118010055514670608.Spec : Prop :=
  ∀ n, P11118010055514670608.a n = A141454 (n + 1)

end A141454

/-! ## A141454.P16296780938799154146

`A253262(A171014(n+1))`
-/

namespace A141454.P16296780938799154146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253262 (A171014 (n + 1)).toNat

end

end A141454.P16296780938799154146

namespace A141454

/-- `A253262(A171014(n+1))` -/
def P16296780938799154146.Spec : Prop :=
  ∀ n, P16296780938799154146.a n = A141454 (n + 1)

end A141454

/-! ## A141454.P14098099937154491680

`A253262(record[A005069(n+1)])`
-/

namespace A141454.P14098099937154491680
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005069 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253262 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A141454.P14098099937154491680

namespace A141454

/-- `A253262(record[A005069(n+1)])` -/
def P14098099937154491680.Spec : Prop :=
  ∀ n, P14098099937154491680.a n = A141454 (n + 1)

end A141454

/-! ## A141454.P2904929442042867250

`A253262(record[A085090(n+1)])`
-/

namespace A141454.P2904929442042867250
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085090 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253262 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A141454.P2904929442042867250

namespace A141454

/-- `A253262(record[A085090(n+1)])` -/
def P2904929442042867250.Spec : Prop :=
  ∀ n, P2904929442042867250.a n = A141454 (n + 1)

end A141454

/-! ## A141454.P1170418364389079678

`A253262(record[A001414(2*n+1)])`
-/

namespace A141454.P1170418364389079678
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001414 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253262 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A141454.P1170418364389079678

namespace A141454

/-- `A253262(record[A001414(2*n+1)])` -/
def P1170418364389079678.Spec : Prop :=
  ∀ n, P1170418364389079678.a n = A141454 (n + 1)

end A141454

/-! ## A141454.P8307023170962160537

`A253262(record[A047814(2*n+1)])`
-/

namespace A141454.P8307023170962160537
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047814 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253262 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A141454.P8307023170962160537

namespace A141454

/-- `A253262(record[A047814(2*n+1)])` -/
def P8307023170962160537.Spec : Prop :=
  ∀ n, P8307023170962160537.a n = A141454 (n + 1)

end A141454

/-! ## A141454.P5011577652645789067

`A253262(record[A061397(2*n+1)])`
-/

namespace A141454.P5011577652645789067
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061397 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253262 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A141454.P5011577652645789067

namespace A141454

/-- `A253262(record[A061397(2*n+1)])` -/
def P5011577652645789067.Spec : Prop :=
  ∀ n, P5011577652645789067.a n = A141454 (n + 1)

end A141454

/-! ## A141454.P12877378899975477855

`A253262(A005069(Δ[A007504(n)]))`
-/

namespace A141454.P12877378899975477855
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253262 (A005069 (f1 (n + 1) - f1 n).toNat).toNat

end

end A141454.P12877378899975477855

namespace A141454

/-- `A253262(A005069(Δ[A007504(n)]))` -/
def P12877378899975477855.Spec : Prop :=
  ∀ n, P12877378899975477855.a n = A141454 (n + 1)

end A141454

/-! ## A141454.P8887462826234121819

`A253262(eq[A000035(n), A003415(n)])`
-/

namespace A141454.P8887462826234121819
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253262 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A141454.P8887462826234121819

namespace A141454

/-- `A253262(eq[A000035(n), A003415(n)])` -/
def P8887462826234121819.Spec : Prop :=
  ∀ n, P8887462826234121819.a n = A141454 (n + 1)

end A141454

/-! ## A141454.P13458345444398642667

`A253262(A000040(n+1)-A000038(n))`
-/

namespace A141454.P13458345444398642667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253262 (A000040 (n + 1) - A000038 n).toNat

end

end A141454.P13458345444398642667

namespace A141454

/-- `A253262(A000040(n+1)-A000038(n))` -/
def P13458345444398642667.Spec : Prop :=
  ∀ n, P13458345444398642667.a n = A141454 (n + 1)

end A141454

/-!
# A141455: Irregular triangle showing the set of all possible values of primes modulo n in row n.

The programs for A141455, there is no canonical definition to state claims against.
-/

/-! ## A141455.P15935269353355642289

`A002262(record[A156229(A025483(n))])`
-/

namespace A141455.P15935269353355642289
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156229 (A025483 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A141455.P15935269353355642289

/-! ## A141455.P1267761960764136470

`A163351(record[A163379(n+1)+A163352(n)])`
-/

namespace A141455.P1267761960764136470
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163379 (n + 1) + A163352 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163351 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A141455.P1267761960764136470

/-!
# A141457: Primes of the form (3*x*y-y-6)/(3*x+1), where x=prime and y=composite.

The programs for A141457, there is no canonical definition to state claims against.
-/

/-! ## A141457.P6673883581228935363

`p?[A270123(n+1)+A208645(A270123(n+1))]`
-/

namespace A141457.P6673883581228935363
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270123 (n + 1) + A208645 (A270123 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A141457.P6673883581228935363

/-!
# A141458: a(n) = A000111(2n) + A000111(2n+1).

The programs for A141458, there is no canonical definition to state claims against.
-/

/-! ## A141458.P8661410249504050441

`A000111(2*n)+A000111(2*n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A141458.P8661410249504050441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000111 (2 * n) + A000111 (2 * n + 1)

end

end A141458.P8661410249504050441

/-! ## A141458.P12017805968688095531

`A000364(n)+record[A009006(n)]`
-/

namespace A141458.P12017805968688095531
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009006 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000364 n + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A141458.P12017805968688095531

/-! ## A141458.P1138506372344631857

`A000182(n+1)+A000364(n)`
-/

namespace A141458.P1138506372344631857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000182 (n + 1) + A000364 n

end

end A141458.P1138506372344631857

/-! ## A141458.P10480427330898346797

`A000364(n)+A000111(Δ[n²])`
-/

namespace A141458.P10480427330898346797
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000364 n + A000111 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A141458.P10480427330898346797

/-! ## A141458.P6111117846689624571

`A009725(Δ[n²])+A000364(n)`
-/

namespace A141458.P6111117846689624571
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009725 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat + A000364 n

end

end A141458.P6111117846689624571

/-!
# A141459: a(n) = Product_{p-1 divides n} p, where p is an odd prime.

The programs for A141459, the canonical program `A141459.P15198710371829255089` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A141459 has offset 0).

The definition of A141459 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A141459.P14776350844477695436

`A157818(n)/4^n`
-/

namespace A141459.P14776350844477695436
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A157818 n : ℚ) / (4 ^ n : ℚ)

end

end A141459.P14776350844477695436

namespace A141459

/-- `A157818(n)/4^n` -/
def P14776350844477695436.Spec : Prop :=
  ∀ n, P14776350844477695436.a n = (A141459 n : ℚ)

end A141459

/-! ## A141459.P15198710371829255089

`∏{d}[n, A090585(#)]`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A141459

/-- `∏{d}[n, A090585(#)]` -/
def P15198710371829255089.Spec : Prop :=
  ∀ n, P15198710371829255089.a n = A141459 n

theorem P15198710371829255089.correct : P15198710371829255089.Spec := by
  intro n
  simp only [A141459]

end A141459

/-! ## A141459.P17573881246343099030

`ceil(A027642(n)/2)`
-/

namespace A141459.P17573881246343099030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A027642 n : ℚ) / 2⌉

end

end A141459.P17573881246343099030

namespace A141459

/-- `ceil(A027642(n)/2)` -/
def P17573881246343099030.Spec : Prop :=
  ∀ n, P17573881246343099030.a n = A141459 n

end A141459

/-! ## A141459.P14739392808957431821

`ceil(A141056(n)/2)`
-/

namespace A141459.P14739392808957431821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A141056 n : ℚ) / 2⌉

end

end A141459.P14739392808957431821

namespace A141459

/-- `ceil(A141056(n)/2)` -/
def P14739392808957431821.Spec : Prop :=
  ∀ n, P14739392808957431821.a n = A141459 n

end A141459

/-! ## A141459.P13120809130638604404

`A027642(A346467(n+1))/2`
-/

namespace A141459.P13120809130638604404
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A027642 (A346467 (n + 1)).toNat : ℚ) / 2

end

end A141459.P13120809130638604404

namespace A141459

/-- `A027642(A346467(n+1))/2` -/
def P13120809130638604404.Spec : Prop :=
  ∀ n, P13120809130638604404.a n = (A141459 n : ℚ)

end A141459

/-! ## A141459.P4393921445797381918

`A141056(n)/(A057427(n)+1)`
-/

namespace A141459.P4393921445797381918
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A141056 n : ℚ) / (A057427 n + 1 : ℚ)

end

end A141459.P4393921445797381918

namespace A141459

/-- `A141056(n)/(A057427(n)+1)` -/
def P4393921445797381918.Spec : Prop :=
  ∀ n, P4393921445797381918.a n = (A141459 n : ℚ)

end A141459

/-! ## A141459.P7019573875494774985

`A141056(A004277(n)-n)/2`
-/

namespace A141459.P7019573875494774985
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A141056 (A004277 n - (n : ℤ)).toNat : ℚ) / 2

end

end A141459.P7019573875494774985

namespace A141459

/-- `A141056(A004277(n)-n)/2` -/
def P7019573875494774985.Spec : Prop :=
  ∀ n, P7019573875494774985.a n = (A141459 n : ℚ)

end A141459

/-! ## A141459.P7663896835487138754

`A141056(n)/A040001(2*n)`
-/

namespace A141459.P7663896835487138754
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A141056 n : ℚ) / (A040001 (2 * n) : ℚ)

end

end A141459.P7663896835487138754

namespace A141459

/-- `A141056(n)/A040001(2*n)` -/
def P7663896835487138754.Spec : Prop :=
  ∀ n, P7663896835487138754.a n = (A141459 n : ℚ)

end A141459

/-! ## A141459.P7370189065904317246

`A141056(gcd(n, A004277(n)))/2`
-/

namespace A141459.P7370189065904317246
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A141056 (Int.gcd (n : ℤ) (A004277 n)) : ℚ) / 2

end

end A141459.P7370189065904317246

namespace A141459

/-- `A141056(gcd(n, A004277(n)))/2` -/
def P7370189065904317246.Spec : Prop :=
  ∀ n, P7370189065904317246.a n = (A141459 n : ℚ)

end A141459

/-! ## A141459.P7964967681738377633

`A141056(n)/(A157532(n+1)-1)`
-/

namespace A141459.P7964967681738377633
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A141056 n : ℚ) / (A157532 (n + 1) - 1 : ℚ)

end

end A141459.P7964967681738377633

namespace A141459

/-- `A141056(n)/(A157532(n+1)-1)` -/
def P7964967681738377633.Spec : Prop :=
  ∀ n, P7964967681738377633.a n = (A141459 n : ℚ)

end A141459

/-! ## A141459.P17805455653365899989

`A027642(n)/A027642(a(n-1)%(n+1))` with `a(0)=1`
-/

namespace A141459.P17805455653365899989
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (A027642 n : ℚ) / (A027642 (Int.tmod (SequenceMachineLib.roundAway (a (n - 1))) (n + 1 : ℤ)).toNat : ℚ)

end

end A141459.P17805455653365899989

namespace A141459

/-- `A027642(n)/A027642(a(n-1)%(n+1))` -/
def P17805455653365899989.Spec : Prop :=
  ∀ n, P17805455653365899989.a n = (A141459 n : ℚ)

end A141459

/-! ## A141459.P10961107972235082698

`A141056(n)/A141056(A325401(n))`
-/

namespace A141459.P10961107972235082698
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A141056 n : ℚ) / (A141056 (A325401 n).toNat : ℚ)

end

end A141459.P10961107972235082698

namespace A141459

/-- `A141056(n)/A141056(A325401(n))` -/
def P10961107972235082698.Spec : Prop :=
  ∀ n, P10961107972235082698.a n = (A141459 n : ℚ)

end A141459

/-! ## A141459.P12980923870087492102

`A027642(n)/A027642(val(A027642(n), 2))`
-/

namespace A141459.P12980923870087492102
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A027642 n : ℚ) / (A027642 (SequenceMachineLib.valuation (A027642 n).toNat 2) : ℚ)

end

end A141459.P12980923870087492102

namespace A141459

/-- `A027642(n)/A027642(val(A027642(n), 2))` -/
def P12980923870087492102.Spec : Prop :=
  ∀ n, P12980923870087492102.a n = (A141459 n : ℚ)

end A141459

/-! ## A141459.P3768540475855664813

`A141056(n)/A141056(val(A002445(n), 2))`
-/

namespace A141459.P3768540475855664813
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A141056 n : ℚ) / (A141056 (SequenceMachineLib.valuation (A002445 n).toNat 2) : ℚ)

end

end A141459.P3768540475855664813

namespace A141459

/-- `A141056(n)/A141056(val(A002445(n), 2))` -/
def P3768540475855664813.Spec : Prop :=
  ∀ n, P3768540475855664813.a n = (A141459 n : ℚ)

end A141459

/-! ## A141459.P3747960590296227613

`A141056(n)/A141056(val(A141056(n), 2))`
-/

namespace A141459.P3747960590296227613
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A141056 n : ℚ) / (A141056 (SequenceMachineLib.valuation (A141056 n).toNat 2) : ℚ)

end

end A141459.P3747960590296227613

namespace A141459

/-- `A141056(n)/A141056(val(A141056(n), 2))` -/
def P3747960590296227613.Spec : Prop :=
  ∀ n, P3747960590296227613.a n = (A141459 n : ℚ)

end A141459

/-! ## A141459.P3842514996276392404

`A141056(n)/A141056(A030101(n))`
-/

namespace A141459.P3842514996276392404
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A141056 n : ℚ) / (A141056 (A030101 n).toNat : ℚ)

end

end A141459.P3842514996276392404

namespace A141459

/-- `A141056(n)/A141056(A030101(n))` -/
def P3842514996276392404.Spec : Prop :=
  ∀ n, P3842514996276392404.a n = (A141459 n : ℚ)

end A141459

/-! ## A141459.P10675639862955306262

`A141056(n)/A141056(A004273(n))`
-/

namespace A141459.P10675639862955306262
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A141056 n : ℚ) / (A141056 (A004273 n).toNat : ℚ)

end

end A141459.P10675639862955306262

namespace A141459

/-- `A141056(n)/A141056(A004273(n))` -/
def P10675639862955306262.Spec : Prop :=
  ∀ n, P10675639862955306262.a n = (A141459 n : ℚ)

end A141459

/-! ## A141459.P15750030112933635076

`A141056(n)/A141056(record[A176447(n)])`
-/

namespace A141459.P15750030112933635076
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176447 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A141056 n : ℚ) / (A141056 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat : ℚ)

end

end A141459.P15750030112933635076

namespace A141459

/-- `A141056(n)/A141056(record[A176447(n)])` -/
def P15750030112933635076.Spec : Prop :=
  ∀ n, P15750030112933635076.a n = (A141459 n : ℚ)

end A141459

/-! ## A141459.P9681934104326021777

`A141056(A065033(2*n))/2`
-/

namespace A141459.P9681934104326021777
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A141056 (A065033 (2 * n)).toNat : ℚ) / 2

end

end A141459.P9681934104326021777

namespace A141459

/-- `A141056(A065033(2*n))/2` -/
def P9681934104326021777.Spec : Prop :=
  ∀ n, P9681934104326021777.a n = (A141459 n : ℚ)

end A141459

/-!
# A141460: A086892(11*n).

The programs for A141460, the canonical program `A141460.P3545161771059535391` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A141460 has offset 1).

The definition of A141460 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A141460.P3545161771059535391

`A086892(11*(n+1))`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A141460

/-- `A086892(11*(n+1))` -/
def P3545161771059535391.Spec : Prop :=
  ∀ n, P3545161771059535391.a n = A141460 (n + 1)

theorem P3545161771059535391.correct : P3545161771059535391.Spec := by
  intro n
  simp only [A141460, Nat.add_sub_cancel]

end A141460

/-!
# A141461: Twin primes belonging to packs of 5 or more twin pairs.

The programs for A141461, there is no canonical definition to state claims against.
-/

/-! ## A141461.P3482677636345481060

`A068220(A327894(n+2))`
-/

namespace A141461.P3482677636345481060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068220 (A327894 (n + 2)).toNat

end

end A141461.P3482677636345481060

/-!
# A141463: Conjectured to be the complete list of numbers not of the form 2*x^2 + 5*y^2 + 4*triangular number.

The programs for A141463, there is no canonical definition to state claims against.
-/

/-! ## A141463.P3804505402510882662

`floor(A003585(n+1)/2)`
-/

namespace A141463.P3804505402510882662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A003585 (n + 1) : ℚ) / 2⌋

end

end A141463.P3804505402510882662

/-! ## A141463.P8444943659543137472

`A004524(A003585(n+1))`
-/

namespace A141463.P8444943659543137472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004524 (A003585 (n + 1)).toNat

end

end A141463.P8444943659543137472

/-! ## A141463.P7708605587971534797

`A046667(A003585(n+1)+1)`
-/

namespace A141463.P7708605587971534797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046667 (A003585 (n + 1) + 1).toNat

end

end A141463.P7708605587971534797

/-! ## A141463.P14511564353192406815

`A001281(A003585(n+1)-1)`
-/

namespace A141463.P14511564353192406815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A003585 (n + 1) - 1).toNat

end

end A141463.P14511564353192406815

/-! ## A141463.P9498874636467035757

`A004525(A003585(n+1)-1)`
-/

namespace A141463.P9498874636467035757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A003585 (n + 1) - 1).toNat

end

end A141463.P9498874636467035757

/-!
# A141465: Prime transformed products of prime factors of the composites, the largest prime decremented by 2, the smallest by 1.

The programs for A141465, there is no canonical definition to state claims against.
-/

/-! ## A141465.P1984045070027881790

`p?[A000040(n)-a(3%n)]` with `a(0)=0, a(1)=2, a(2)=3, a(3)=2, a(4)=5, a(5)=3`
-/

namespace A141465.P1984045070027881790
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 2, 3, 2, 5, 3] fun n f1 =>
  A000040 n - f1 (3 % n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A141465.P1984045070027881790

/-! ## A141465.P5533743636155120182

`p?[A019554(A169606(n+1))]`
-/

namespace A141465.P5533743636155120182
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019554 (A169606 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A141465.P5533743636155120182

/-! ## A141465.P12724505212524646038

`p?[A075861(A161346(n+1))]`
-/

namespace A141465.P12724505212524646038
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075861 (A161346 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A141465.P12724505212524646038

/-! ## A141465.P14422366174221767897

`p?[A002472(A321193(n+1))]`
-/

namespace A141465.P14422366174221767897
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002472 (A321193 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A141465.P14422366174221767897

/-! ## A141465.P14786754743198816602

`p?[lcm(A026741(n), A060682(n+2))]`
-/

namespace A141465.P14786754743198816602
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A026741 n) (A060682 (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A141465.P14786754743198816602

/-! ## A141465.P17693474977261157379

`p?[A001221(n+1)*A002472(n+1)]`
-/

namespace A141465.P17693474977261157379
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (n + 1) * A002472 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A141465.P17693474977261157379

/-! ## A141465.P10274746573319162419

`p?[A171462(n+1)%A160413(n+1)]`
-/

namespace A141465.P10274746573319162419
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A171462 (n + 1)) (A160413 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A141465.P10274746573319162419

/-! ## A141465.P5320591471976310672

`p?[A000010(2*(n+1))-A160595(n+1)]`
-/

namespace A141465.P5320591471976310672
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (2 * (n + 1)) - A160595 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A141465.P5320591471976310672

/-! ## A141465.P5992584999609137343

`p?[A000010(2*(n+1))-A247074(n+1)]`
-/

namespace A141465.P5992584999609137343
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (2 * (n + 1)) - A247074 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A141465.P5992584999609137343

/-! ## A141465.P9326364590006338138

`p?[lcm(1-A000010(n+1), A333749(n+1))]`
-/

namespace A141465.P9326364590006338138
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (1 - A000010 (n + 1)) (A333749 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A141465.P9326364590006338138

/-!
# A141468: Zero together with the nonprime numbers A018252.

The programs for A141468, the canonical program `A141468.P11281748312058034280` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A141468 has offset 1).

The definition of A141468 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A018252, A054546, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A141468.P11281748312058034280

`A018252(n+1)-A054546(n+1)`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A141468

/-- `A018252(n+1)-A054546(n+1)` -/
def P11281748312058034280.Spec : Prop :=
  ∀ n, P11281748312058034280.a n = A141468 (n + 1)

theorem P11281748312058034280.correct : P11281748312058034280.Spec := by
  intro n
  simp only [A141468, Nat.add_sub_cancel]

end A141468

/-! ## A141468.P456564615350760765

`comp[p?[xor(1, n)]]`
-/

namespace A141468.P456564615350760765
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A141468.P456564615350760765

namespace A141468

/-- `comp[p?[xor(1, n)]]` -/
def P456564615350760765.Spec : Prop :=
  ∀ n, (P456564615350760765.a n : ℤ) = A141468 (n + 1)

end A141468

/-! ## A141468.P6523704115914532339

`comp[p?[floor(n/2)]]`
-/

namespace A141468.P6523704115914532339
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℚ) / 2⌋

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A141468.P6523704115914532339

namespace A141468

/-- `comp[p?[floor(n/2)]]` -/
def P6523704115914532339.Spec : Prop :=
  ∀ n, (P6523704115914532339.a n : ℤ) = A141468 (n + 1)

end A141468

/-! ## A141468.P8698270868446889588

`comp[A060264(n)]`
-/

namespace A141468.P8698270868446889588
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060264 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A141468.P8698270868446889588

namespace A141468

/-- `comp[A060264(n)]` -/
def P8698270868446889588.Spec : Prop :=
  ∀ n, (P8698270868446889588.a n : ℤ) = A141468 (n + 1)

end A141468

/-! ## A141468.P8367275343646183394

`comp[A129543(n)]`
-/

namespace A141468.P8367275343646183394
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129543 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A141468.P8367275343646183394

namespace A141468

/-- `comp[A129543(n)]` -/
def P8367275343646183394.Spec : Prop :=
  ∀ n, (P8367275343646183394.a n : ℤ) = A141468 (n + 1)

end A141468

/-! ## A141468.P16463811714541248135

`comp[A134204(n)]`
-/

namespace A141468.P16463811714541248135
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134204 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A141468.P16463811714541248135

namespace A141468

/-- `comp[A134204(n)]` -/
def P16463811714541248135.Spec : Prop :=
  ∀ n, (P16463811714541248135.a n : ℤ) = A141468 (n + 1)

end A141468

/-! ## A141468.P9133663621643355817

`comp[A151800(n)]`
-/

namespace A141468.P9133663621643355817
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A141468.P9133663621643355817

namespace A141468

/-- `comp[A151800(n)]` -/
def P9133663621643355817.Spec : Prop :=
  ∀ n, (P9133663621643355817.a n : ℤ) = A141468 (n + 1)

end A141468

/-! ## A141468.P11982127078728201687

`comp[A162753(n)]`
-/

namespace A141468.P11982127078728201687
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162753 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A141468.P11982127078728201687

namespace A141468

/-- `comp[A162753(n)]` -/
def P11982127078728201687.Spec : Prop :=
  ∀ n, (P11982127078728201687.a n : ℤ) = A141468 (n + 1)

end A141468

/-! ## A141468.P608441992435235707

`∑{d}[n, A361709(#)]`
-/

namespace A141468.P608441992435235707
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A361709 d

end

end A141468.P608441992435235707

namespace A141468

/-- `∑{d}[n, A361709(#)]` -/
def P608441992435235707.Spec : Prop :=
  ∀ n, P608441992435235707.a n = A141468 (n + 1)

end A141468

/-! ## A141468.P16848111105781679409

`comp[Δ[A007504(n)]]`
-/

namespace A141468.P16848111105781679409
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A141468.P16848111105781679409

namespace A141468

/-- `comp[Δ[A007504(n)]]` -/
def P16848111105781679409.Spec : Prop :=
  ∀ n, (P16848111105781679409.a n : ℤ) = A141468 (n + 1)

end A141468

/-! ## A141468.P3348876559080366657

`sqrt(A161753(n+1))`
-/

namespace A141468.P3348876559080366657
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A161753 (n + 1) : ℝ)

end

end A141468.P3348876559080366657

namespace A141468

/-- `sqrt(A161753(n+1))` -/
def P3348876559080366657.Spec : Prop :=
  ∀ n, P3348876559080366657.a n = (A141468 (n + 1) : ℝ)

end A141468

/-! ## A141468.P3389662916050695948

`comp[A000040(n+1)]`
-/

namespace A141468.P3389662916050695948
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A141468.P3389662916050695948

namespace A141468

/-- `comp[A000040(n+1)]` -/
def P3389662916050695948.Spec : Prop :=
  ∀ n, (P3389662916050695948.a n : ℤ) = A141468 (n + 1)

end A141468

/-! ## A141468.P10218913155202286331

`comp[A006530(n+2)]`
-/

namespace A141468.P10218913155202286331
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A141468.P10218913155202286331

namespace A141468

/-- `comp[A006530(n+2)]` -/
def P10218913155202286331.Spec : Prop :=
  ∀ n, (P10218913155202286331.a n : ℤ) = A141468 (n + 1)

end A141468

/-! ## A141468.P14899618788182961055

`comp[A020639(n+2)]`
-/

namespace A141468.P14899618788182961055
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A141468.P14899618788182961055

namespace A141468

/-- `comp[A020639(n+2)]` -/
def P14899618788182961055.Spec : Prop :=
  ∀ n, (P14899618788182961055.a n : ℤ) = A141468 (n + 1)

end A141468

/-! ## A141468.P16385618726572483919

`A176100(n+1)/2`
-/

namespace A141468.P16385618726572483919
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A176100 (n + 1) : ℚ) / 2

end

end A141468.P16385618726572483919

namespace A141468

/-- `A176100(n+1)/2` -/
def P16385618726572483919.Spec : Prop :=
  ∀ n, P16385618726572483919.a n = (A141468 (n + 1) : ℚ)

theorem P16385618726572483919.correct : P16385618726572483919.Spec := by
  intro n
  simp only [A141468, Nat.add_sub_cancel, A141468.P16385618726572483919.a, A141468.P11281748312058034280.a, A018252, A018252.P16557407491482004301.f1, A018252.P16557407491482004301.a, A054546, A054546.P12235855701833693749.a, A176100, A176100.P16175186196650254316.a, A000038, A000038.P13734959004655594922.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A065310, A065310.P13031903484145223612.f1, A065310.P13031903484145223612.a, A000007, A000007.P6599383543502402472.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A141468

/-! ## A141468.P14637015326449515710

`xor(1, A164029(n+1))`
-/

namespace A141468.P14637015326449515710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A164029 (n + 1))

end

end A141468.P14637015326449515710

namespace A141468

/-- `xor(1, A164029(n+1))` -/
def P14637015326449515710.Spec : Prop :=
  ∀ n, P14637015326449515710.a n = A141468 (n + 1)

end A141468

/-! ## A141468.P6600581259574980922

`A173073(n+1)+n`
-/

namespace A141468.P6600581259574980922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173073 (n + 1) + (n : ℤ)

end

end A141468.P6600581259574980922

namespace A141468

/-- `A173073(n+1)+n` -/
def P6600581259574980922.Spec : Prop :=
  ∀ n, P6600581259574980922.a n = A141468 (n + 1)

theorem P6600581259574980922.correct : P6600581259574980922.Spec := by
  intro n
  simp only [A141468, Nat.add_sub_cancel, A141468.P6600581259574980922.a, A141468.P11281748312058034280.a, A018252, A018252.P16557407491482004301.f1, A018252.P16557407491482004301.a, A054546, A054546.P12235855701833693749.a, A173073, A173073.P16730298799530633578.a, A000038, A000038.P13734959004655594922.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A065310, A065310.P13031903484145223612.f1, A065310.P13031903484145223612.a, A000007, A000007.P6599383543502402472.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A141468

/-! ## A141468.P13591086689664449433

`∪[A018252(n+1), n²]`
-/

namespace A141468.P13591086689664449433
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = x) n

end

end A141468.P13591086689664449433

namespace A141468

/-- `∪[A018252(n+1), n²]` -/
def P13591086689664449433.Spec : Prop :=
  ∀ n, (P13591086689664449433.a n : ℤ) = A141468 (n + 1)

end A141468

/-! ## A141468.P4796854925643169782

`(A176393(n+1)-1)/2`
-/

namespace A141468.P4796854925643169782
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A176393 (n + 1) - 1 : ℚ) / 2

end

end A141468.P4796854925643169782

namespace A141468

/-- `(A176393(n+1)-1)/2` -/
def P4796854925643169782.Spec : Prop :=
  ∀ n, P4796854925643169782.a n = (A141468 (n + 1) : ℚ)

theorem P4796854925643169782.correct : P4796854925643169782.Spec := by
  intro n
  simp only [A141468, Nat.add_sub_cancel, A141468.P4796854925643169782.a, A141468.P11281748312058034280.a, A018252, A018252.P16557407491482004301.f1, A018252.P16557407491482004301.a, A054546, A054546.P12235855701833693749.a, A176393, A176393.P4613748579070152281.a, A000038, A000038.P13734959004655594922.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A065310, A065310.P13031903484145223612.f1, A065310.P13031903484145223612.a, A000007, A000007.P6599383543502402472.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A141468

/-! ## A141468.P10680054149032461097

`∪[n^3, A018252(n+2)]`
-/

namespace A141468.P10680054149032461097
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A141468.P10680054149032461097

namespace A141468

/-- `∪[n^3, A018252(n+2)]` -/
def P10680054149032461097.Spec : Prop :=
  ∀ n, (P10680054149032461097.a n : ℤ) = A141468 (n + 1)

end A141468

/-!
# A141469: Nonprimes of the form c(c(i)-3)-3, where A002808(i)=c(i)=i-th composite.

The programs for A141469, there is no canonical definition to state claims against.
-/

/-! ## A141469.P10575919278024696482

`∩[A018252(n+1), A164028(A164028(n+1))]`
-/

namespace A141469.P10575919278024696482
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164028 (A164028 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141469.P10575919278024696482

/-! ## A141469.P4872744415502448366

`∩[A056653(n+1), A164028(A164028(n+1))]`
-/

namespace A141469.P4872744415502448366
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056653 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164028 (A164028 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141469.P4872744415502448366

/-! ## A141469.P14248339506617209859

`∩[A065090(n+1), A164028(A164028(n+1))]`
-/

namespace A141469.P14248339506617209859
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065090 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164028 (A164028 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141469.P14248339506617209859

/-! ## A141469.P6274852095634574306

`∩[A141468(n+1), A164028(A164028(n+1))]`
-/

namespace A141469.P6274852095634574306
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141468 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164028 (A164028 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141469.P6274852095634574306

/-! ## A141469.P5577078702969197534

`∩[A222307(2*n+1), A164028(A164028(n+1))]`
-/

namespace A141469.P5577078702969197534
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222307 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164028 (A164028 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141469.P5577078702969197534

/-!
# A141470: Number of 3's in A139067(n).

The programs for A141470, there is no canonical definition to state claims against.
-/

/-! ## A141470.P5737435882909276909

`A141472(n+1)-A141471(n+1)`
-/

namespace A141470.P5737435882909276909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141472 (n + 1) - A141471 (n + 1)

end

end A141470.P5737435882909276909

/-! ## A141470.P930987456290902594

`∑{digits}[A139067(n+1), #-2]`
-/

namespace A141470.P930987456290902594
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139067 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => (x : ℤ) - 2).sum

end

end A141470.P930987456290902594

/-! ## A141470.P940554512919583931

`∑{digits}[A139067(n+1)+2, A000035(#)]`
-/

namespace A141470.P940554512919583931
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139067 (n + 1) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A000035 x).sum

end

end A141470.P940554512919583931

/-! ## A141470.P11751448612862426743

`∑{digits}[2*A139067(n+1), A005091(#)]`
-/

namespace A141470.P11751448612862426743
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A139067 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A005091 x).sum

end

end A141470.P11751448612862426743

/-!
# A141471: Number of 2's in A139067(n).

The programs for A141471, there is no canonical definition to state claims against.
-/

/-! ## A141471.P10052853646675023818

`A141472(n+1)-A141470(n+1)`
-/

namespace A141471.P10052853646675023818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141472 (n + 1) - A141470 (n + 1)

end

end A141471.P10052853646675023818

/-! ## A141471.P7206269145402598029

`∑{digits}[A139067(n+1), 3-#]`
-/

namespace A141471.P7206269145402598029
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139067 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => 3 - (x : ℤ)).sum

end

end A141471.P7206269145402598029

/-! ## A141471.P8044960343945192437

`A141472(A348553(n))-∑{digits}[A139067(A348553(n)), A000035(#)]`
-/

namespace A141471.P8044960343945192437
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139067 (A348553 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141472 (A348553 n).toNat - ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A000035 x).sum

end

end A141471.P8044960343945192437

/-! ## A141471.P15020705899613510605

`A141472(A348553(n))-∑{digits}[A139067(A348553(n)), A002264(#)]`
-/

namespace A141471.P15020705899613510605
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139067 (A348553 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141472 (A348553 n).toNat - ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A002264 x).sum

end

end A141471.P15020705899613510605

/-! ## A141471.P13828766992886362777

`A141472(A348553(n))-∑{digits}[A139067(A348553(n)), A004524(#)]`
-/

namespace A141471.P13828766992886362777
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139067 (A348553 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141472 (A348553 n).toNat - ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A004524 x).sum

end

end A141471.P13828766992886362777

/-!
# A141472: Number of digits in A139067(n).

The programs for A141472, there is no canonical definition to state claims against.
-/

/-! ## A141472.P15785810204763627449

`A141471(n+1)+A141470(n+1)`
-/

namespace A141472.P15785810204763627449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141471 (n + 1) + A141470 (n + 1)

end

end A141472.P15785810204763627449

/-!
# A141474: Concatenated and flattened output distributions of the Turing machines described in the comments lines.

The programs for A141474, there is no canonical definition to state claims against.
-/

/-! ## A141474.P514160738696005088

`A190204(∑[A033185(n+1)²])`
-/

namespace A141474.P514160738696005088
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033185 (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190204 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A141474.P514160738696005088

/-! ## A141474.P16225600904040166554

`A287790(A135503(n)+A117521(n+1))`
-/

namespace A141474.P16225600904040166554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287790 (A135503 n + A117521 (n + 1)).toNat

end

end A141474.P16225600904040166554

/-! ## A141474.P1346397912158699038

`A266932(A090915(n+1))%2`
-/

namespace A141474.P1346397912158699038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A266932 (A090915 (n + 1)).toNat) 2

end

end A141474.P1346397912158699038

/-! ## A141474.P14946276613817728199

`A159684(lcm(A081360(n), A266727(n)))`
-/

namespace A141474.P14946276613817728199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159684 (Int.lcm (A081360 n) (A266727 n))

end

end A141474.P14946276613817728199

/-! ## A141474.P13386377124123015135

`A010059(A220402(n+1)-A220377(n+6))`
-/

namespace A141474.P13386377124123015135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010059 (A220402 (n + 1) - A220377 (n + 6)).toNat

end

end A141474.P13386377124123015135

/-!
# A141475: Number of Turing machines with n states following the standard formalism of the busy beaver problem where the head of a Turing machine either moves to the right or to the left, but none once halted.

The programs for A141475, the canonical program `A141475.P6482029126327111648` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A141475 has offset 0).

The definition of A141475 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A141475.P6482029126327111648

`(4*n+2)^(2*n)`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A141475

/-- `(4*n+2)^(2*n)` -/
def P6482029126327111648.Spec : Prop :=
  ∀ n, (P6482029126327111648.a n : ℤ) = A141475 n

theorem P6482029126327111648.correct : P6482029126327111648.Spec := by
  intro n
  simp only [A141475]

end A141475

/-! ## A141475.P16981322492124098553

`A052746(2*n+1)`
-/

namespace A141475.P16981322492124098553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052746 (2 * n + 1)

end

end A141475.P16981322492124098553

namespace A141475

/-- `A052746(2*n+1)` -/
def P16981322492124098553.Spec : Prop :=
  ∀ n, P16981322492124098553.a n = A141475 n

end A141475

/-! ## A141475.P15769898616886451101

`A152291(A016813(n))`
-/

namespace A141475.P15769898616886451101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152291 (A016813 n).toNat

end

end A141475.P15769898616886451101

namespace A141475

/-- `A152291(A016813(n))` -/
def P15769898616886451101.Spec : Prop :=
  ∀ n, P15769898616886451101.a n = A141475 n

end A141475

/-! ## A141475.P14792940640453360007

`A000079(n)²*A000169(2*n+1)`
-/

namespace A141475.P14792940640453360007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n ^ 2 * A000169 (2 * n + 1)

end

end A141475.P14792940640453360007

namespace A141475

/-- `A000079(n)²*A000169(2*n+1)` -/
def P14792940640453360007.Spec : Prop :=
  ∀ n, P14792940640453360007.a n = A141475 n

end A141475

/-! ## A141475.P5418256592503754311

`A000079(2*n)*A000169(2*n+1)`
-/

namespace A141475.P5418256592503754311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (2 * n) * A000169 (2 * n + 1)

end

end A141475.P5418256592503754311

namespace A141475

/-- `A000079(2*n)*A000169(2*n+1)` -/
def P5418256592503754311.Spec : Prop :=
  ∀ n, P5418256592503754311.a n = A141475 n

end A141475

/-!
# A141476: Triangle T(n,k) = A000142(n-k)*A003319(k+1) read by rows.

The programs for A141476, there is no canonical definition to state claims against.
-/

/-! ## A141476.P16168121554406995492

`A000142(row(n)-col(n))*A003319(col(n)+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A141476.P16168121554406995492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 (SequenceMachineLib.triRow n - SequenceMachineLib.triCol n) * A003319 (SequenceMachineLib.triCol n + 1)

end

end A141476.P16168121554406995492

/-! ## A141476.P16649251477967646117

`A000142(row(n)+1-(col(n)+1))*A003319(col(n)+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A141476.P16649251477967646117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 (SequenceMachineLib.triRow n + 1 - (SequenceMachineLib.triCol n + 1)) * A003319 (SequenceMachineLib.triCol n + 1)

end

end A141476.P16649251477967646117

/-! ## A141476.P18123928825454147319

`abs(A142156(comp[∑[n]]))`
-/

namespace A141476.P18123928825454147319
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A142156 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)|

end

end A141476.P18123928825454147319

/-! ## A141476.P15310037724889405834

`-A142156(comp[∑[n-1]]+1)`
-/

namespace A141476.P15310037724889405834
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A142156 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1)

end

end A141476.P15310037724889405834

/-! ## A141476.P8397140330755829664

`∑{d}[A142156(A007401(n+1)+1), A000010(#)]`
-/

namespace A141476.P8397140330755829664
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142156 (A007401 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d

end

end A141476.P8397140330755829664

/-!
# A141477: Sum of southeast diagonals of A141476.

The programs for A141477, there is no canonical definition to state claims against.
-/

/-! ## A141477.P5459858466546157742

`A173280(n)+A173068(n+3)`
-/

namespace A141477.P5459858466546157742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173280 n + A173068 (n + 3)

end

end A141477.P5459858466546157742

/-! ## A141477.P13975083094148618772

`A332442(or(1, n))+A173280(n)`
-/

namespace A141477.P13975083094148618772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332442 (Nat.lor 1 n) + A173280 n

end

end A141477.P13975083094148618772

/-! ## A141477.P12844449997572838020

`A173280(n)+A052515(A004523(n))`
-/

namespace A141477.P12844449997572838020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173280 n + A052515 (A004523 n).toNat

end

end A141477.P12844449997572838020

/-! ## A141477.P3612825790427868584

`A173280(n)+A001516(A103609(n))`
-/

namespace A141477.P3612825790427868584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173280 n + A001516 (A103609 n).toNat

end

end A141477.P3612825790427868584

/-!
# A141478: a(n) = binomial(n+2,3)*4^3.

The programs for A141478, the canonical program `A141478.P7817831478187282158` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A141478 has offset 1).

The definition of A141478 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `C(n+3, 3)*4^3` (program `A141478.P7817831478187282158`, by `A141478.P7817831478187282158.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A141478.P7817831478187282158

`C(n+3, 3)*4^3`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A141478

/-- `C(n+3, 3)*4^3` -/
def P7817831478187282158.Spec : Prop :=
  ∀ n, (P7817831478187282158.a n : ℤ) = A141478 (n + 1)

theorem P7817831478187282158.correct : P7817831478187282158.Spec := by
  intro n
  simp only [A141478, Nat.add_sub_cancel]

end A141478

/-! ## A141478.P35920812209158056

`32*(n+1)*(n+2)*(n+3)/3`
-/

namespace A141478.P35920812209158056
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (32 * (n + 1) * (n + 2) * (n + 3) : ℚ) / 3

end

end A141478.P35920812209158056

namespace A141478

/-- `32*(n+1)*(n+2)*(n+3)/3` -/
def P35920812209158056.Spec : Prop :=
  ∀ n, P35920812209158056.a n = (A141478 (n + 1) : ℚ)

theorem P35920812209158056.correct : P35920812209158056.Spec := by
  intro n
  simp only [A141478, Nat.add_sub_cancel, A141478.P35920812209158056.a, A141478.P7817831478187282158.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A141478

/-! ## A141478.P5354608431940905379

`64*A000292(n+1)`
-/

namespace A141478.P5354608431940905379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  64 * A000292 (n + 1)

end

end A141478.P5354608431940905379

namespace A141478

/-- `64*A000292(n+1)` -/
def P5354608431940905379.Spec : Prop :=
  ∀ n, P5354608431940905379.a n = A141478 (n + 1)

theorem P5354608431940905379.correct : P5354608431940905379.Spec := by
  intro n
  simp only [A141478, Nat.add_sub_cancel, A141478.P5354608431940905379.a, A141478.P7817831478187282158.a, A000292, A000292.P18322089543142633594.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A141478

/-! ## A141478.P8703058224701354614

`16*A210440(n+1)`
-/

namespace A141478.P8703058224701354614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  16 * A210440 (n + 1)

end

end A141478.P8703058224701354614

namespace A141478

/-- `16*A210440(n+1)` -/
def P8703058224701354614.Spec : Prop :=
  ∀ n, P8703058224701354614.a n = A141478 (n + 1)

end A141478

/-! ## A141478.P15569646804846269214

`64*C(n+3, 3)`
-/

namespace A141478.P15569646804846269214
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  64 * Nat.choose (n + 3) 3

end

end A141478.P15569646804846269214

namespace A141478

/-- `64*C(n+3, 3)` -/
def P15569646804846269214.Spec : Prop :=
  ∀ n, (P15569646804846269214.a n : ℤ) = A141478 (n + 1)

theorem P15569646804846269214.correct : P15569646804846269214.Spec := by
  intro n
  simp only [A141478, Nat.add_sub_cancel, A141478.P15569646804846269214.a, A141478.P7817831478187282158.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A141478

/-! ## A141478.P13320101164208304069

`(3/n+1)*a(n-1)` with `a(0)=64`
-/

namespace A141478.P13320101164208304069
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [64] fun n a =>
  (3 / (n : ℚ) + 1) * a (n - 1)

end

end A141478.P13320101164208304069

namespace A141478

/-- `(3/n+1)*a(n-1)` -/
def P13320101164208304069.Spec : Prop :=
  ∀ n, P13320101164208304069.a n = (A141478 (n + 1) : ℚ)

end A141478

/-! ## A141478.P17231209435848481420

`Δ[8*A162668(n)]`
-/

namespace A141478.P17231209435848481420
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  8 * A162668 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A141478.P17231209435848481420

namespace A141478

/-- `Δ[8*A162668(n)]` -/
def P17231209435848481420.Spec : Prop :=
  ∀ n, P17231209435848481420.a n = A141478 (n + 1)

theorem P17231209435848481420.correct : P17231209435848481420.Spec := by
  intro n
  simp only [A141478, Nat.add_sub_cancel, A141478.P17231209435848481420.f1, A141478.P17231209435848481420.a, A141478.P7817831478187282158.a, A162668, A162668.P8323676352970519687.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A141478

/-! ## A141478.P12024539793487910572

`8*A130809(n+3)`
-/

namespace A141478.P12024539793487910572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  8 * A130809 (n + 3)

end

end A141478.P12024539793487910572

namespace A141478

/-- `8*A130809(n+3)` -/
def P12024539793487910572.Spec : Prop :=
  ∀ n, P12024539793487910572.a n = A141478 (n + 1)

end A141478

/-! ## A141478.P9251467195709411365

`4*A102860(n+3)`
-/

namespace A141478.P9251467195709411365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A102860 (n + 3)

end

end A141478.P9251467195709411365

namespace A141478

/-- `4*A102860(n+3)` -/
def P9251467195709411365.Spec : Prop :=
  ∀ n, P9251467195709411365.a n = A141478 (n + 1)

end A141478

/-! ## A141478.P1862700151900058454

`∑[∑[A152691(n+1)]]`
-/

namespace A141478.P1862700151900058454
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152691 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A141478.P1862700151900058454

namespace A141478

/-- `∑[∑[A152691(n+1)]]` -/
def P1862700151900058454.Spec : Prop :=
  ∀ n, P1862700151900058454.a n = A141478 (n + 1)

end A141478

/-! ## A141478.P7606774222389882316

`∑[4*A035008(n+1)]`
-/

namespace A141478.P7606774222389882316
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A035008 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A141478.P7606774222389882316

namespace A141478

/-- `∑[4*A035008(n+1)]` -/
def P7606774222389882316.Spec : Prop :=
  ∀ n, P7606774222389882316.a n = A141478 (n + 1)

end A141478

/-! ## A141478.P15031415692709385173

`Δ[64*A000332(n+3)]`
-/

namespace A141478.P15031415692709385173
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  64 * A000332 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A141478.P15031415692709385173

namespace A141478

/-- `Δ[64*A000332(n+3)]` -/
def P15031415692709385173.Spec : Prop :=
  ∀ n, P15031415692709385173.a n = A141478 (n + 1)

theorem P15031415692709385173.correct : P15031415692709385173.Spec := by
  intro n
  simp only [A141478, Nat.add_sub_cancel, A141478.P15031415692709385173.f1, A141478.P15031415692709385173.a, A141478.P7817831478187282158.a, A000332, A000332.P5946310388023661265.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A141478

/-! ## A141478.P15120358931492500034

`4*A077415(2*(n+2))`
-/

namespace A141478.P15120358931492500034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A077415 (2 * (n + 2))

end

end A141478.P15120358931492500034

namespace A141478

/-- `4*A077415(2*(n+2))` -/
def P15120358931492500034.Spec : Prop :=
  ∀ n, P15120358931492500034.a n = A141478 (n + 1)

end A141478

/-! ## A141478.P13061518160231322277

`A323218(2*(n+1))-A059993(2*(n+1))`
-/

namespace A141478.P13061518160231322277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323218 (2 * (n + 1)) - A059993 (2 * (n + 1))

end

end A141478.P13061518160231322277

namespace A141478

/-- `A323218(2*(n+1))-A059993(2*(n+1))` -/
def P13061518160231322277.Spec : Prop :=
  ∀ n, P13061518160231322277.a n = A141478 (n + 1)

end A141478

/-! ## A141478.P440445142453946934

`∑[A067728(4*(n+1))]`
-/

namespace A141478.P440445142453946934
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067728 (4 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A141478.P440445142453946934

namespace A141478

/-- `∑[A067728(4*(n+1))]` -/
def P440445142453946934.Spec : Prop :=
  ∀ n, P440445142453946934.a n = A141478 (n + 1)

end A141478

/-! ## A141478.P16654273452840891510

`A001789(n+3)/A002409(n)*A130812(n+6)`
-/

namespace A141478.P16654273452840891510
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001789 (n + 3) : ℚ) / (A002409 n : ℚ) * (A130812 (n + 6) : ℚ)

end

end A141478.P16654273452840891510

namespace A141478

/-- `A001789(n+3)/A002409(n)*A130812(n+6)` -/
def P16654273452840891510.Spec : Prop :=
  ∀ n, P16654273452840891510.a n = (A141478 (n + 1) : ℚ)

end A141478

/-! ## A141478.P6243162646439255292

`record[64*A213500(n+1)]`
-/

namespace A141478.P6243162646439255292
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  64 * A213500 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A141478.P6243162646439255292

namespace A141478

/-- `record[64*A213500(n+1)]` -/
def P6243162646439255292.Spec : Prop :=
  ∀ n, P6243162646439255292.a n = A141478 (n + 1)

end A141478

/-! ## A141478.P15270056231466384091

`A013611(A167614(n+2))`
-/

namespace A141478.P15270056231466384091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013611 (A167614 (n + 2)).toNat

end

end A141478.P15270056231466384091

namespace A141478

/-- `A013611(A167614(n+2))` -/
def P15270056231466384091.Spec : Prop :=
  ∀ n, P15270056231466384091.a n = A141478 (n + 1)

end A141478

/-! ## A141478.P14679113406553404254

`∑[A038279(∑[n+3])]`
-/

namespace A141478.P14679113406553404254
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038279 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A141478.P14679113406553404254

namespace A141478

/-- `∑[A038279(∑[n+3])]` -/
def P14679113406553404254.Spec : Prop :=
  ∀ n, P14679113406553404254.a n = A141478 (n + 1)

end A141478

/-!
# A141479: a(n) = A000111(n) + A014695(n).

The programs for A141479, there is no canonical definition to state claims against.
-/

/-! ## A141479.P8144691881320418098

`A000111(n)+A014695(n)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A141479.P8144691881320418098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000111 n + A014695 n

end

end A141479.P8144691881320418098

/-! ## A141479.P4920735251237457950

`A014695(n)+abs(A346838(n))`
-/

namespace A141479.P4920735251237457950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014695 n + |A346838 n|

end

end A141479.P4920735251237457950

/-! ## A141479.P15876215358728335557

`A000111(n)+A000034(∑[n])`
-/

namespace A141479.P15876215358728335557
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000111 n + A000034 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A141479.P15876215358728335557

/-! ## A141479.P3208006480750855678

`A000111(n)+∑[A117569(n)]`
-/

namespace A141479.P3208006480750855678
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117569 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000111 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A141479.P3208006480750855678

/-! ## A141479.P8018999418039272749

`A040846(2*n+1)+A000111(n)`
-/

namespace A141479.P8018999418039272749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040846 (2 * n + 1) + A000111 n

end

end A141479.P8018999418039272749

/-! ## A141479.P6277314262801354970

`A040862(2*n+1)+A000111(n)`
-/

namespace A141479.P6277314262801354970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040862 (2 * n + 1) + A000111 n

end

end A141479.P6277314262801354970

/-! ## A141479.P15022831448410419139

`A014695(n)+A008281(A000096(n))`
-/

namespace A141479.P15022831448410419139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014695 n + A008281 (A000096 n).toNat

end

end A141479.P15022831448410419139

/-! ## A141479.P1372802336433779078

`A071222(A000217(n))+A000111(n)`
-/

namespace A141479.P1372802336433779078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071222 (A000217 n).toNat + A000111 n

end

end A141479.P1372802336433779078

/-! ## A141479.P15050328680127268191

`A109449(A000217(n))+A014695(n)`
-/

namespace A141479.P15050328680127268191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109449 (A000217 n).toNat + A014695 n

end

end A141479.P15050328680127268191

/-!
# A141480: a(n) = binomial(n+2,3)*5^3.

The programs for A141480, the canonical program `A141480.P8737246659176399538` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A141480 has offset 1).

The definition of A141480 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `C(n+3, 3)*5^3` (program `A141480.P8737246659176399538`, by `A141480.P8737246659176399538.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A141480.P8737246659176399538

`C(n+3, 3)*5^3`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A141480

/-- `C(n+3, 3)*5^3` -/
def P8737246659176399538.Spec : Prop :=
  ∀ n, (P8737246659176399538.a n : ℤ) = A141480 (n + 1)

theorem P8737246659176399538.correct : P8737246659176399538.Spec := by
  intro n
  simp only [A141480, Nat.add_sub_cancel]

end A141480

/-! ## A141480.P2661829984404406889

`5*25*C(n+3, 3)`
-/

namespace A141480.P2661829984404406889
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5 * (25 * Nat.choose (n + 3) 3)

end

end A141480.P2661829984404406889

namespace A141480

/-- `5*25*C(n+3, 3)` -/
def P2661829984404406889.Spec : Prop :=
  ∀ n, (P2661829984404406889.a n : ℤ) = A141480 (n + 1)

theorem P2661829984404406889.correct : P2661829984404406889.Spec := by
  intro n
  simp only [A141480, Nat.add_sub_cancel, A141480.P2661829984404406889.a, A141480.P8737246659176399538.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A141480

/-! ## A141480.P8116115515782915133

`∑[∑[5*25*(n+1)]]`
-/

namespace A141480.P8116115515782915133
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5 * (25 * (n + 1))

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A141480.P8116115515782915133

namespace A141480

/-- `∑[∑[5*25*(n+1)]]` -/
def P8116115515782915133.Spec : Prop :=
  ∀ n, (P8116115515782915133.a n : ℤ) = A141480 (n + 1)

end A141480

/-! ## A141480.P13634176383969470954

`5*5*5*∑[∑[ogf(1/(1-2x+x^2))]]`
-/

namespace A141480.P13634176383969470954
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1] [1, -2, 1] n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * (5 * (5 * (∑ j ∈ Finset.range (n + 1), f1 j)))

end

end A141480.P13634176383969470954

namespace A141480

/-- `5*5*5*∑[∑[ogf(1/(1-2x+x^2))]]` -/
def P13634176383969470954.Spec : Prop :=
  ∀ n, P13634176383969470954.a n = A141480 (n + 1)

end A141480

/-! ## A141480.P16120217386522286108

`5*∑[A123296(n+1)]`
-/

namespace A141480.P16120217386522286108
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123296 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A141480.P16120217386522286108

namespace A141480

/-- `5*∑[A123296(n+1)]` -/
def P16120217386522286108.Spec : Prop :=
  ∀ n, P16120217386522286108.a n = A141480 (n + 1)

end A141480

/-! ## A141480.P11875179614647885892

`A000292(n+1)/A000578(n+1)*A016851(n+1)`
-/

namespace A141480.P11875179614647885892
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000292 (n + 1) : ℚ) / (A000578 (n + 1) : ℚ) * (A016851 (n + 1) : ℚ)

end

end A141480.P11875179614647885892

namespace A141480

/-- `A000292(n+1)/A000578(n+1)*A016851(n+1)` -/
def P11875179614647885892.Spec : Prop :=
  ∀ n, P11875179614647885892.a n = (A141480 (n + 1) : ℚ)

theorem P11875179614647885892.correct : P11875179614647885892.Spec := by
  intro n
  simp only [A141480, Nat.add_sub_cancel, A141480.P11875179614647885892.a, A141480.P8737246659176399538.a, A000292, A000292.P18322089543142633594.a, A000578, A000578.P12162961755414704816.a, A016851, A016851.P6768670708261062492.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A141480

/-! ## A141480.P6186005883667056064

`(A008607(2*n+1)-A008607(2*n))*A134481(n+1)`
-/

namespace A141480.P6186005883667056064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A008607 (2 * n + 1) - A008607 (2 * n)) * A134481 (n + 1)

end

end A141480.P6186005883667056064

namespace A141480

/-- `(A008607(2*n+1)-A008607(2*n))*A134481(n+1)` -/
def P6186005883667056064.Spec : Prop :=
  ∀ n, P6186005883667056064.a n = A141480 (n + 1)

theorem P6186005883667056064.correct : P6186005883667056064.Spec := by
  intro n
  simp only [A141480, Nat.add_sub_cancel, A141480.P6186005883667056064.a, A141480.P8737246659176399538.a, A008607, A008607.P4608234580437606002.a, A134481, A134481.P3195373075799668587.a, A000292, A000292.P18322089543142633594.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A141480

/-! ## A141480.P1661760888570828903

`A264443(5*(n+1))`
-/

namespace A141480.P1661760888570828903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 (5 * (n + 1))

end

end A141480.P1661760888570828903

namespace A141480

/-- `A264443(5*(n+1))` -/
def P1661760888570828903.Spec : Prop :=
  ∀ n, P1661760888570828903.a n = A141480 (n + 1)

end A141480

/-! ## A141480.P5256112852593695909

`A111396(5*(n+1))-5*(n+1)`
-/

namespace A141480.P5256112852593695909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111396 (5 * (n + 1)) - (5 * (n + 1) : ℤ)

end

end A141480.P5256112852593695909

namespace A141480

/-- `A111396(5*(n+1))-5*(n+1)` -/
def P5256112852593695909.Spec : Prop :=
  ∀ n, P5256112852593695909.a n = A141480 (n + 1)

end A141480

/-! ## A141480.P7789763631545699534

`A013612(A167614(n+2))`
-/

namespace A141480.P7789763631545699534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013612 (A167614 (n + 2)).toNat

end

end A141480.P7789763631545699534

namespace A141480

/-- `A013612(A167614(n+2))` -/
def P7789763631545699534.Spec : Prop :=
  ∀ n, P7789763631545699534.a n = A141480 (n + 1)

end A141480

/-! ## A141480.P9722851237341745732

`A013612(A052905(n)+8)`
-/

namespace A141480.P9722851237341745732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013612 (A052905 n + 8).toNat

end

end A141480.P9722851237341745732

namespace A141480

/-- `A013612(A052905(n)+8)` -/
def P9722851237341745732.Spec : Prop :=
  ∀ n, P9722851237341745732.a n = A141480 (n + 1)

end A141480

/-! ## A141480.P6224600034737992340

`A013612(A055999(n)+9)`
-/

namespace A141480.P6224600034737992340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013612 (A055999 n + 9).toNat

end

end A141480.P6224600034737992340

namespace A141480

/-- `A013612(A055999(n)+9)` -/
def P6224600034737992340.Spec : Prop :=
  ∀ n, P6224600034737992340.a n = A141480 (n + 1)

end A141480

/-! ## A141480.P2007056102520317022

`A038243(∑[n+3]+n+3)`
-/

namespace A141480.P2007056102520317022
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038243 (∑ j ∈ Finset.range (n + 1), f1 j + (n + 3))

end

end A141480.P2007056102520317022

namespace A141480

/-- `A038243(∑[n+3]+n+3)` -/
def P2007056102520317022.Spec : Prop :=
  ∀ n, P2007056102520317022.a n = A141480 (n + 1)

end A141480

/-!
# A141482: Number of n X n binary matrices, symmetric under horizontal reflection, with no more than 1 one in any 2 X 2 subblock.

The programs for A141482, there is no canonical definition to state claims against.
-/

/-! ## A141482.P15831174666674841233

`A245013(A198392(n)+A181762(n))`
-/

namespace A141482.P15831174666674841233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245013 (A198392 n + A181762 n).toNat

end

end A141482.P15831174666674841233

/-! ## A141482.P16220281110576737968

`A205728(A091001(n)+4)`
-/

namespace A141482.P16220281110576737968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205728 (A091001 n + 4).toNat

end

end A141482.P16220281110576737968

/-!
# A141483: Number of n X n binary matrices, symmetric under horizontal and vertical reflection, with no more than 1 one in any 2 X 2 subblock.

The programs for A141483, there is no canonical definition to state claims against.
-/

/-! ## A141483.P1619729065715888277

`A063443(A028242(n+1))`
-/

namespace A141483.P1619729065715888277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063443 (A028242 (n + 1)).toNat

end

end A141483.P1619729065715888277

/-! ## A141483.P14251038941529672260

`A063443(A052938(n)-1)`
-/

namespace A141483.P14251038941529672260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063443 (A052938 n - 1).toNat

end

end A141483.P14251038941529672260

/-! ## A141483.P12642734044053536633

`A063443(1-(A028242(n)-n))`
-/

namespace A141483.P12642734044053536633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063443 (1 - (A028242 n - (n : ℤ))).toNat

end

end A141483.P12642734044053536633

/-! ## A141483.P17348223590853741035

`A063443(3*A110654(n)-n)`
-/

namespace A141483.P17348223590853741035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063443 (3 * A110654 n - (n : ℤ)).toNat

end

end A141483.P17348223590853741035

/-! ## A141483.P7747577698928102322

`A063443(A065033(n)+A000035(n))`
-/

namespace A141483.P7747577698928102322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063443 (A065033 n + A000035 n).toNat

end

end A141483.P7747577698928102322

/-! ## A141483.P1523194798357900842

`A063443(A000035(n)+∑[A000035(n)])`
-/

namespace A141483.P1523194798357900842
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063443 (A000035 n + ∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A141483.P1523194798357900842

/-! ## A141483.P13551143622778953604

`A063443(A110654(n)+Δ[A008619(n)])`
-/

namespace A141483.P13551143622778953604
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063443 (A110654 n + (f1 (n + 1) - f1 n)).toNat

end

end A141483.P13551143622778953604

/-! ## A141483.P13508423105786264693

`A063443(A008619(n+1)-A000035(n+1))`
-/

namespace A141483.P13508423105786264693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063443 (A008619 (n + 1) - A000035 (n + 1)).toNat

end

end A141483.P13508423105786264693

/-! ## A141483.P8936945861428476041

`A063443(A008619(n+1)-Δ[A008619(n+1)])`
-/

namespace A141483.P8936945861428476041
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063443 (A008619 (n + 1) - (f1 (n + 1) - f1 n)).toNat

end

end A141483.P8936945861428476041

/-!
# A141484: Numbers k such that prime(k)^2 + k! is prime.

The programs for A141484, there is no canonical definition to state claims against.
-/

/-! ## A141484.P7056743983208438915

`∑[A344879(record[A100303(n)])]`
-/

namespace A141484.P7056743983208438915
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100303 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344879 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A141484.P7056743983208438915

/-! ## A141484.P18365923500383234142

`∑[A173675(A342617(n+1))]`
-/

namespace A141484.P18365923500383234142
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173675 (A342617 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A141484.P18365923500383234142

/-! ## A141484.P9406590748846106754

`∑[A344879(A100303(n+2))]`
-/

namespace A141484.P9406590748846106754
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344879 (A100303 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A141484.P9406590748846106754

/-! ## A141484.P12077837027407218583

`record[A227925(A284460(n+1))]`
-/

namespace A141484.P12077837027407218583
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227925 (A284460 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A141484.P12077837027407218583

/-! ## A141484.P4495789667040906592

`lt[A134559(n+1), dr(A296910(n))]`
-/

namespace A141484.P4495789667040906592
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134559 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A296910 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A141484.P4495789667040906592

/-!
# A141486: Number of n X n binary matrices, symmetric about the diagonal and under 90-degree rotation, with no more than 1 one in any 2 X 2 subblock.

The programs for A141486, there is no canonical definition to state claims against.
-/

/-! ## A141486.P2417350272344458498

`A139006(comp[or(2, n)-1]%comp[3*n])`
-/

namespace A141486.P2417350272344458498
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.lor 2 n : ℤ) - 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139006 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n % SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n)

end

end A141486.P2417350272344458498

/-! ## A141486.P14036387226246002256

`A139006(A028242(abs(1-n)))`
-/

namespace A141486.P14036387226246002256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139006 (A028242 |1 - (n : ℤ)|.toNat).toNat

end

end A141486.P14036387226246002256

/-! ## A141486.P11643850346856487618

`A139006(A123108(n)-(-1)^n)`
-/

namespace A141486.P11643850346856487618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139006 (A123108 n - (-1) ^ n).toNat

end

end A141486.P11643850346856487618

/-! ## A141486.P10295730649278897954

`A139006(A028310(n)-ceil(xor(1, n)/2))`
-/

namespace A141486.P10295730649278897954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139006 (A028310 n - ⌈(Nat.xor 1 n : ℚ) / 2⌉).toNat

end

end A141486.P10295730649278897954

/-! ## A141486.P6149510031709546271

`A139006(n-A028242(A028310(n)))`
-/

namespace A141486.P6149510031709546271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139006 ((n : ℤ) - A028242 (A028310 n).toNat).toNat

end

end A141486.P6149510031709546271

/-!
# A141488: Number of n X n binary matrices, symmetric under 180 degree rotation, with no more than 1 one in any 2 X 2 subblock.

The programs for A141488, there is no canonical definition to state claims against.
-/

/-! ## A141488.P5815250115405630771

`ceil(sqrt(A171960((n+1)^n-3^n+1)))`
-/

namespace A141488.P5815250115405630771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (A171960 (((n + 1) ^ n : ℤ) - (3 ^ n : ℤ) + 1).toNat : ℝ)⌉

end

end A141488.P5815250115405630771

/-! ## A141488.P348167957835722616

`A049093((n-a(n-1))²+n)-1` with `a(0)=1, a(1)=2, a(2)=1`
-/

namespace A141488.P348167957835722616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 1] fun n a =>
  A049093 (((n : ℤ) - a (n - 1)) ^ 2 + (n : ℤ)).toNat - 1

end

end A141488.P348167957835722616

/-!
# A141489: Numbers k such that k^2 + k + 257 is prime.

The programs for A141489, there is no canonical definition to state claims against.
-/

/-! ## A141489.P1820929593176813120

`eq[A248395(A048333(n)), A316867(n)]`
-/

namespace A141489.P1820929593176813120
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248395 (A048333 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316867 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A141489.P1820929593176813120

/-! ## A141489.P12207021333206949157

`lt[A322796(n), A035152(A129374(n))]`
-/

namespace A141489.P12207021333206949157
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322796 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035152 (A129374 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A141489.P12207021333206949157

/-! ## A141489.P3349233358049793114

`A026351(n)-A059648(A011974(A250140(n+1)))`
-/

namespace A141489.P3349233358049793114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026351 n - A059648 (A011974 (A250140 (n + 1)).toNat).toNat

end

end A141489.P3349233358049793114

/-! ## A141489.P10998111972825536874

`A344739(A022797(n+1))+comp[or(n, n+3)]`
-/

namespace A141489.P10998111972825536874
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor n (n + 3)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344739 (A022797 (n + 1)).toNat + (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ)

end

end A141489.P10998111972825536874

/-! ## A141489.P15770721953357269165

`eq[A086076(A007678(n+1)), A086076(n+4)]`
-/

namespace A141489.P15770721953357269165
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086076 (A007678 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086076 (n + 4)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A141489.P15770721953357269165

/-!
# A141490: Least number k having n representations as the sum of the minimal number of squares, A002828.

The programs for A141490, there is no canonical definition to state claims against.
-/

/-! ## A141490.P6602050026534956117

`A334298(A022109(n))`
-/

namespace A141490.P6602050026534956117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334298 (A022109 n).toNat

end

end A141490.P6602050026534956117

/-!
# A141492: a(n) is the floor of the reciprocal of the difference between the 10^n-th root of 10^n and 1.

The programs for A141492, there is no canonical definition to state claims against.
-/

/-! ## A141492.P8697456808017080605

`A057834(n+1)-1`
-/

namespace A141492.P8697456808017080605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057834 (n + 1) - 1

end

end A141492.P8697456808017080605

/-! ## A141492.P1070111798128074701

`∑[A228065(n+1)]-1`
-/

namespace A141492.P1070111798128074701
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228065 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A141492.P1070111798128074701

/-! ## A141492.P670698901319101597

`∑[record[A228065(A286558(n))]]-1`
-/

namespace A141492.P670698901319101597
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228065 (A286558 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A141492.P670698901319101597

/-! ## A141492.P6659475492362071428

`∑[A057427(n)*A228065(n+1)]+3`
-/

namespace A141492.P6659475492362071428
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n * A228065 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 3

end

end A141492.P6659475492362071428

/-! ## A141492.P15417305256140384197

`A316441(A006530(n+2))+A057834(n+1)`
-/

namespace A141492.P15417305256140384197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316441 (A006530 (n + 2)).toNat + A057834 (n + 1)

end

end A141492.P15417305256140384197

/-!
# A141494: a(n) is the "highest smallest" positive integer that cannot be obtained from the (n-1) optimized integers (to be defined for each n) using each number at most once and the three operators +, -, *.

The programs for A141494, there is no canonical definition to state claims against.
-/

/-! ## A141494.P726181560137063998

`or(2, A114491(n))-1`
-/

namespace A141494.P726181560137063998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 2 (A114491 n) - 1

end

end A141494.P726181560137063998

/-!
# A141495: a(n) = 3*a(n-1) for n>2; a(0)=1, a(1)=3, a(2)=7.

The programs for A141495, the canonical program `A141495.P3765445858878700180` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A141495 has offset 0).

The definition of A141495 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `3*a(n-1)` (program `A141495.P3765445858878700180`, by `A141495.P3765445858878700180.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A141495.P3765445858878700180

`3*a(n-1)` with `a(0)=1, a(1)=3, a(2)=7`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A141495

/-- `3*a(n-1)` -/
def P3765445858878700180.Spec : Prop :=
  ∀ n, (P3765445858878700180.a n : ℤ) = A141495 n

theorem P3765445858878700180.correct : P3765445858878700180.Spec := by
  intro n
  simp only [A141495]

end A141495

/-! ## A141495.P15210109947299722097

`ogf((1-2x^2)/(1-3x))`
-/

namespace A141495.P15210109947299722097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 0, -2] [1, -3] n

end

end A141495.P15210109947299722097

namespace A141495

/-- `ogf((1-2x^2)/(1-3x))` -/
def P15210109947299722097.Spec : Prop :=
  ∀ n, P15210109947299722097.a n = A141495 n

end A141495

/-! ## A141495.P1389739613817069466

`ceil(7*3^(n-2))`
-/

namespace A141495.P1389739613817069466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈7 * (3 : ℚ) ^ ((n : ℤ) - 2 : ℤ)⌉

end

end A141495.P1389739613817069466

namespace A141495

/-- `ceil(7*3^(n-2))` -/
def P1389739613817069466.Spec : Prop :=
  ∀ n, P1389739613817069466.a n = A141495 n

end A141495

/-! ## A141495.P7730697293402480469

`a(n-1)/cot(atan(3))` with `a(0)=1, a(1)=3, a(2)=7`
-/

namespace A141495.P7730697293402480469
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.rec [1, 3, 7] fun n a =>
  a (n - 1) / Real.cot (Real.arctan (3 : ℝ))

end

end A141495.P7730697293402480469

namespace A141495

/-- `a(n-1)/cot(atan(3))` -/
def P7730697293402480469.Spec : Prop :=
  ∀ n, P7730697293402480469.a n = (A141495 n : ℝ)

end A141495

/-! ## A141495.P2751534868313949424

`a(n-1)+a(n-1)+a(n-1)` with `a(0)=1, a(1)=3, a(2)=7`
-/

namespace A141495.P2751534868313949424
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 3, 7] fun n a =>
  a (n - 1) + (a (n - 1) + a (n - 1))

end

end A141495.P2751534868313949424

namespace A141495

/-- `a(n-1)+a(n-1)+a(n-1)` -/
def P2751534868313949424.Spec : Prop :=
  ∀ n, (P2751534868313949424.a n : ℤ) = A141495 n

theorem P2751534868313949424.correct : P2751534868313949424.Spec := by
  intro n
  simp only [A141495, Nat.add_sub_cancel, A141495.P2751534868313949424.a, A141495.P3765445858878700180.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A141495

/-! ## A141495.P11874341858588654735

`record[or(1, A072985(n))]`
-/

namespace A141495.P11874341858588654735
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A072985 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A141495.P11874341858588654735

namespace A141495

/-- `record[or(1, A072985(n))]` -/
def P11874341858588654735.Spec : Prop :=
  ∀ n, P11874341858588654735.a n = A141495 n

end A141495

/-! ## A141495.P6732302165978589612

`A025579(n+1)+floor(3^(n-1))`
-/

namespace A141495.P6732302165978589612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025579 (n + 1) + ⌊(3 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌋

end

end A141495.P6732302165978589612

namespace A141495

/-- `A025579(n+1)+floor(3^(n-1))` -/
def P6732302165978589612.Spec : Prop :=
  ∀ n, P6732302165978589612.a n = A141495 n

end A141495

/-! ## A141495.P16530169676704674597

`or(1, A072985(A004275(n)))`
-/

namespace A141495.P16530169676704674597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A072985 (A004275 n).toNat)

end

end A141495.P16530169676704674597

namespace A141495

/-- `or(1, A072985(A004275(n)))` -/
def P16530169676704674597.Spec : Prop :=
  ∀ n, P16530169676704674597.a n = A141495 n

end A141495

/-! ## A141495.P7302218049641434004

`A246084(A026474(n+2)-1)`
-/

namespace A141495.P7302218049641434004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246084 (A026474 (n + 2) - 1).toNat

end

end A141495.P7302218049641434004

namespace A141495

/-- `A246084(A026474(n+2)-1)` -/
def P7302218049641434004.Spec : Prop :=
  ∀ n, P7302218049641434004.a n = A141495 n

end A141495

/-! ## A141495.P16135852664334367432

`A246080(A140164(n+2)-1)`
-/

namespace A141495.P16135852664334367432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246080 (A140164 (n + 2) - 1).toNat

end

end A141495.P16135852664334367432

namespace A141495

/-- `A246080(A140164(n+2)-1)` -/
def P16135852664334367432.Spec : Prop :=
  ∀ n, P16135852664334367432.a n = A141495 n

end A141495

/-! ## A141495.P11936710450098594027

`A140429(n)+A025579(n+1)`
-/

namespace A141495.P11936710450098594027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140429 n + A025579 (n + 1)

end

end A141495.P11936710450098594027

namespace A141495

/-- `A140429(n)+A025579(n+1)` -/
def P11936710450098594027.Spec : Prop :=
  ∀ n, P11936710450098594027.a n = A141495 n

end A141495

/-! ## A141495.P6478876440576385820

`A290114(n)+2*A122695(n)`
-/

namespace A141495.P6478876440576385820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290114 n + 2 * A122695 n

end

end A141495.P6478876440576385820

namespace A141495

/-- `A290114(n)+2*A122695(n)` -/
def P6478876440576385820.Spec : Prop :=
  ∀ n, P6478876440576385820.a n = A141495 n

end A141495

/-! ## A141495.P4798948832216865066

`2*A080923(n)-A000244(n)`
-/

namespace A141495.P4798948832216865066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A080923 n - A000244 n

end

end A141495.P4798948832216865066

namespace A141495

/-- `2*A080923(n)-A000244(n)` -/
def P4798948832216865066.Spec : Prop :=
  ∀ n, P4798948832216865066.a n = A141495 n

end A141495

/-! ## A141495.P11350384537474598583

`floor(A025579(n+1)+A025579(n+2)/4)`
-/

namespace A141495.P11350384537474598583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A025579 (n + 1) : ℚ) + (A025579 (n + 2) : ℚ) / 4⌋

end

end A141495.P11350384537474598583

namespace A141495

/-- `floor(A025579(n+1)+A025579(n+2)/4)` -/
def P11350384537474598583.Spec : Prop :=
  ∀ n, P11350384537474598583.a n = A141495 n

end A141495

/-! ## A141495.P6361267577204740769

`A025579(n+1)+A003946(n)-A000244(n)`
-/

namespace A141495.P6361267577204740769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025579 (n + 1) + A003946 n - A000244 n

end

end A141495.P6361267577204740769

namespace A141495

/-- `A025579(n+1)+A003946(n)-A000244(n)` -/
def P6361267577204740769.Spec : Prop :=
  ∀ n, P6361267577204740769.a n = A141495 n

end A141495

/-! ## A141495.P13355731873894098888

`A052156(n+1)+A025579(n+1)-A000244(n)`
-/

namespace A141495.P13355731873894098888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052156 (n + 1) + A025579 (n + 1) - A000244 n

end

end A141495.P13355731873894098888

namespace A141495

/-- `A052156(n+1)+A025579(n+1)-A000244(n)` -/
def P13355731873894098888.Spec : Prop :=
  ∀ n, P13355731873894098888.a n = A141495 n

end A141495

/-! ## A141495.P14083427721028502810

`A015518(n+1)+A015518(A016813(n)%(n+1))`
-/

namespace A141495.P14083427721028502810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015518 (n + 1) + A015518 (Int.tmod (A016813 n) (n + 1 : ℤ)).toNat

end

end A141495.P14083427721028502810

namespace A141495

/-- `A015518(n+1)+A015518(A016813(n)%(n+1))` -/
def P14083427721028502810.Spec : Prop :=
  ∀ n, P14083427721028502810.a n = A141495 n

end A141495

/-! ## A141495.P2768729104058996829

`A000244(n+1)-2*A062107(n+2)`
-/

namespace A141495.P2768729104058996829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000244 (n + 1) - 2 * A062107 (n + 2)

end

end A141495.P2768729104058996829

namespace A141495

/-- `A000244(n+1)-2*A062107(n+2)` -/
def P2768729104058996829.Spec : Prop :=
  ∀ n, P2768729104058996829.a n = A141495 n

end A141495

/-! ## A141495.P10167501812086781984

`∩[A003594(n+1), A246080(n+1)]`
-/

namespace A141495.P10167501812086781984
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003594 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246080 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141495.P10167501812086781984

namespace A141495

/-- `∩[A003594(n+1), A246080(n+1)]` -/
def P10167501812086781984.Spec : Prop :=
  ∀ n, (P10167501812086781984.a n : ℤ) = A141495 n

end A141495

/-! ## A141495.P6545172829264919422

`A135765(∑[n+1]-2%(n+1))`
-/

namespace A141495.P6545172829264919422
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135765 (∑ j ∈ Finset.range (n + 1), f1 j - 2 % (n + 1))

end

end A141495.P6545172829264919422

namespace A141495

/-- `A135765(∑[n+1]-2%(n+1))` -/
def P6545172829264919422.Spec : Prop :=
  ∀ n, P6545172829264919422.a n = A141495 n

end A141495

/-!
# A141496: a(0)=1; a(1)=5; a(2)=11; a(n)=a(1)*a(n-1).

The programs for A141496, the canonical program `A141496.P5231659193361361864` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A141496 has offset 0).

The definition of A141496 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(1)*a(n-1)` (program `A141496.P5231659193361361864`, by `A141496.P5231659193361361864.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A141496.P10958110233566305559

`5*a(n-1)` with `a(0)=1, a(1)=5, a(2)=11`
-/

namespace A141496.P10958110233566305559
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 5, 11] fun n a =>
  5 * a (n - 1)

end

end A141496.P10958110233566305559

namespace A141496

/-- `5*a(n-1)` -/
def P10958110233566305559.Spec : Prop :=
  ∀ n, (P10958110233566305559.a n : ℤ) = A141496 n

end A141496

/-! ## A141496.P5231659193361361864

`a(1)*a(n-1)` with `a(0)=1, a(1)=5, a(2)=11`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A141496

/-- `a(1)*a(n-1)` -/
def P5231659193361361864.Spec : Prop :=
  ∀ n, (P5231659193361361864.a n : ℤ) = A141496 n

theorem P5231659193361361864.correct : P5231659193361361864.Spec := by
  intro n
  simp only [A141496]

end A141496

/-! ## A141496.P10490560743396550827

`ogf((1-14x^2)/(1-5x))`
-/

namespace A141496.P10490560743396550827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 0, -14] [1, -5] n

end

end A141496.P10490560743396550827

namespace A141496

/-- `ogf((1-14x^2)/(1-5x))` -/
def P10490560743396550827.Spec : Prop :=
  ∀ n, P10490560743396550827.a n = A141496 n

end A141496

/-! ## A141496.P16069282715114365729

`a(n-1)+lcm(4, a(n-1))` with `a(0)=1, a(1)=5, a(2)=11`
-/

namespace A141496.P16069282715114365729
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 5, 11] fun n a =>
  a (n - 1) + Nat.lcm 4 (a (n - 1))

end

end A141496.P16069282715114365729

namespace A141496

/-- `a(n-1)+lcm(4, a(n-1))` -/
def P16069282715114365729.Spec : Prop :=
  ∀ n, (P16069282715114365729.a n : ℤ) = A141496 n

end A141496

/-! ## A141496.P12673007853723072270

`∩[A003598(n+1), A246100(n+1)]`
-/

namespace A141496.P12673007853723072270
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003598 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246100 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141496.P12673007853723072270

namespace A141496

/-- `∩[A003598(n+1), A246100(n+1)]` -/
def P12673007853723072270.Spec : Prop :=
  ∀ n, (P12673007853723072270.a n : ℤ) = A141496 n

end A141496

/-! ## A141496.P8615975506603386962

`A000351(n)-A003948(n)%A055842(n)`
-/

namespace A141496.P8615975506603386962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000351 n - Int.tmod (A003948 n) (A055842 n)

end

end A141496.P8615975506603386962

namespace A141496

/-- `A000351(n)-A003948(n)%A055842(n)` -/
def P8615975506603386962.Spec : Prop :=
  ∀ n, P8615975506603386962.a n = A141496 n

end A141496

/-!
# A141498: a(n) = A010696(n-1) * A086892(n).

The programs for A141498, the canonical program `A141498.P12080205916971592544` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A141498 has offset 1).

The definition of A141498 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A141498.P12080205916971592544

`A010696(n)*A086892(n+1)`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A141498

/-- `A010696(n)*A086892(n+1)` -/
def P12080205916971592544.Spec : Prop :=
  ∀ n, P12080205916971592544.a n = A141498 (n + 1)

theorem P12080205916971592544.correct : P12080205916971592544.Spec := by
  intro n
  simp only [A141498, Nat.add_sub_cancel]

end A141498

/-! ## A141498.P5423144463131690471

`2*A086892(n+1)*A010684(n)`
-/

namespace A141498.P5423144463131690471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A086892 (n + 1) * A010684 n

end

end A141498.P5423144463131690471

namespace A141498

/-- `2*A086892(n+1)*A010684(n)` -/
def P5423144463131690471.Spec : Prop :=
  ∀ n, P5423144463131690471.a n = A141498 (n + 1)

theorem P5423144463131690471.correct : P5423144463131690471.Spec := by
  intro n
  simp only [A141498, Nat.add_sub_cancel, A141498.P5423144463131690471.a, A141498.P12080205916971592544.a, A010684, A010684.P11440423886746696901.a, A010696, A010696.P309287587077170374.a, A086892, A086892.P11479569289397084803.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A141498

/-! ## A141498.P4560091735896526091

`lcm(2*A086892(n+1), Δ[A004442(n)])`
-/

namespace A141498.P4560091735896526091
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004442 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (2 * A086892 (n + 1)) (f1 (n + 1) - f1 n)

end

end A141498.P4560091735896526091

namespace A141498

/-- `lcm(2*A086892(n+1), Δ[A004442(n)])` -/
def P4560091735896526091.Spec : Prop :=
  ∀ n, (P4560091735896526091.a n : ℤ) = A141498 (n + 1)

end A141498

/-! ## A141498.P16163004153301199506

`A020639(3*(n+2))!*A086892(n+1)`
-/

namespace A141498.P16163004153301199506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (A020639 (3 * (n + 2))).toNat : ℤ) * A086892 (n + 1)

end

end A141498.P16163004153301199506

namespace A141498

/-- `A020639(3*(n+2))!*A086892(n+1)` -/
def P16163004153301199506.Spec : Prop :=
  ∀ n, P16163004153301199506.a n = A141498 (n + 1)

end A141498

/-! ## A141498.P4429242871932048762

`A086892(n+1)*A131800(2*n+1)`
-/

namespace A141498.P4429242871932048762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086892 (n + 1) * A131800 (2 * n + 1)

end

end A141498.P4429242871932048762

namespace A141498

/-- `A086892(n+1)*A131800(2*n+1)` -/
def P4429242871932048762.Spec : Prop :=
  ∀ n, P4429242871932048762.a n = A141498 (n + 1)

end A141498

/-! ## A141498.P9890668091424237439

`gcd(A038721(n+1), A059153(n))`
-/

namespace A141498.P9890668091424237439
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A038721 (n + 1)) (A059153 n)

end

end A141498.P9890668091424237439

namespace A141498

/-- `gcd(A038721(n+1), A059153(n))` -/
def P9890668091424237439.Spec : Prop :=
  ∀ n, (P9890668091424237439.a n : ℤ) = A141498 (n + 1)

end A141498

/-! ## A141498.P4291652846363231845

`lcm(A010696(n²), A086892(n+1))`
-/

namespace A141498.P4291652846363231845
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A010696 (n ^ 2)) (A086892 (n + 1))

end

end A141498.P4291652846363231845

namespace A141498

/-- `lcm(A010696(n²), A086892(n+1))` -/
def P4291652846363231845.Spec : Prop :=
  ∀ n, (P4291652846363231845.a n : ℤ) = A141498 (n + 1)

end A141498

/-! ## A141498.P8974226775138270226

`A027760(n+1)*A141517(n+1)`
-/

namespace A141498.P8974226775138270226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027760 (n + 1) * A141517 (n + 1)

end

end A141498.P8974226775138270226

namespace A141498

/-- `A027760(n+1)*A141517(n+1)` -/
def P8974226775138270226.Spec : Prop :=
  ∀ n, P8974226775138270226.a n = A141498 (n + 1)

end A141498

/-! ## A141498.P5389344430455608958

`A141056(n+1)*A141517(n+1)`
-/

namespace A141498.P5389344430455608958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141056 (n + 1) * A141517 (n + 1)

end

end A141498.P5389344430455608958

namespace A141498

/-- `A141056(n+1)*A141517(n+1)` -/
def P5389344430455608958.Spec : Prop :=
  ∀ n, P5389344430455608958.a n = A141498 (n + 1)

end A141498

/-! ## A141498.P8548145873143284741

`A091137(n+1)*A141517(n+1)/A091137(n)`
-/

namespace A141498.P8548145873143284741
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A091137 (n + 1) * A141517 (n + 1) : ℚ) / (A091137 n : ℚ)

end

end A141498.P8548145873143284741

namespace A141498

/-- `A091137(n+1)*A141517(n+1)/A091137(n)` -/
def P8548145873143284741.Spec : Prop :=
  ∀ n, P8548145873143284741.a n = (A141498 (n + 1) : ℚ)

end A141498

/-!
# A141499: a(0)=0; a(1)=1; a(n) = triangular number at index 5*2^(n-2)-1.

The programs for A141499, the canonical program `A141499.P9080216035618167659` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A141499 has offset 0).

The definition of A141499 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A141499.P9080216035618167659

`6*a(n-1)-8*a(n-2)` with `a(0)=0, a(1)=1, a(2)=10, a(3)=45`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A141499

/-- `6*a(n-1)-8*a(n-2)` -/
def P9080216035618167659.Spec : Prop :=
  ∀ n, P9080216035618167659.a n = A141499 n

theorem P9080216035618167659.correct : P9080216035618167659.Spec := by
  intro n
  simp only [A141499]

end A141499

/-! ## A141499.P11402087434042480427

`ogf((x+4x^2-7x^3)/(1-6x+8x^2))`
-/

namespace A141499.P11402087434042480427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1, 4, -7] [1, -6, 8] n

end

end A141499.P11402087434042480427

namespace A141499

/-- `ogf((x+4x^2-7x^3)/(1-6x+8x^2))` -/
def P11402087434042480427.Spec : Prop :=
  ∀ n, P11402087434042480427.a n = A141499 n

end A141499

/-! ## A141499.P5174564525880284110

`C(floor(5*2^(n-2)), 2)`
-/

namespace A141499.P5174564525880284110
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose ⌊5 * (2 : ℚ) ^ ((n : ℤ) - 2 : ℤ)⌋.toNat 2

end

end A141499.P5174564525880284110

namespace A141499

/-- `C(floor(5*2^(n-2)), 2)` -/
def P5174564525880284110.Spec : Prop :=
  ∀ n, (P5174564525880284110.a n : ℤ) = A141499 n

end A141499

/-! ## A141499.P17148428956200207897

`C(A084215(n), 2)*A054977(n)`
-/

namespace A141499.P17148428956200207897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (A084215 n).toNat 2 : ℤ) * A054977 n

end

end A141499.P17148428956200207897

namespace A141499

/-- `C(A084215(n), 2)*A054977(n)` -/
def P17148428956200207897.Spec : Prop :=
  ∀ n, P17148428956200207897.a n = A141499 n

end A141499

/-! ## A141499.P17455683664157444221

`record[C(A084215(A328399(n)-1), 2)]`
-/

namespace A141499.P17455683664157444221
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A084215 (A328399 n - 1).toNat).toNat 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A141499.P17455683664157444221

namespace A141499

/-- `record[C(A084215(A328399(n)-1), 2)]` -/
def P17455683664157444221.Spec : Prop :=
  ∀ n, (P17455683664157444221.a n : ℤ) = A141499 n

end A141499

/-! ## A141499.P3163730232282936457

`A123108(2*n+1)+C(A084215(n), 2)-n`
-/

namespace A141499.P3163730232282936457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123108 (2 * n + 1) + ((Nat.choose (A084215 n).toNat 2 : ℤ) - (n : ℤ))

end

end A141499.P3163730232282936457

namespace A141499

/-- `A123108(2*n+1)+C(A084215(n), 2)-n` -/
def P3163730232282936457.Spec : Prop :=
  ∀ n, P3163730232282936457.a n = A141499 n

end A141499

