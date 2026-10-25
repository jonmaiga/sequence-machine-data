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
import Seq.B003.C002
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
# A178300: Triangle T(n, k) = binomial(n+k-1, n) read by rows, 1 <= k <= n.

The programs for A178300, the canonical program `A178300.P17814830624515287913` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A178300 has offset 1).

The definition of A178300 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A178300.P17814830624515287913

`A046899(comp[∑[n-1]])`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A178300

/-- `A046899(comp[∑[n-1]])` -/
def P17814830624515287913.Spec : Prop :=
  ∀ n, P17814830624515287913.a n = A178300 (n + 1)

theorem P17814830624515287913.correct : P17814830624515287913.Spec := by
  intro n
  simp only [A178300, Nat.add_sub_cancel]

end A178300

/-! ## A178300.P6702089438677870748

`2*A046899(n)-A009766(n)`
-/

namespace A178300.P6702089438677870748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A046899 n - A009766 n

end

end A178300.P6702089438677870748

namespace A178300

/-- `2*A046899(n)-A009766(n)` -/
def P6702089438677870748.Spec : Prop :=
  ∀ n, P6702089438677870748.a n = A178300 (n + 1)

theorem P6702089438677870748.correct : P6702089438677870748.Spec := by
  intro n
  simp only [A178300, Nat.add_sub_cancel, A178300.P6702089438677870748.a, A178300.P17814830624515287913.f2, A178300.P17814830624515287913.f1, A178300.P17814830624515287913.a, A009766, A009766.P5825357266757824641.a, A046899, A046899.P13814988241420676234.a, A002262, A002262.P12129691700837801527.a, A051162, A051162.P14261216125704105833.a, A003056, A003056.P5318256527314048597.a, A057944, A057944.P16851463738746886639.a, A000217, A000217.P10269402890581615239.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A178300

/-! ## A178300.P14040976058783193462

`A176992(A061579(n))`
-/

namespace A178300.P14040976058783193462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176992 (A061579 n).toNat

end

end A178300.P14040976058783193462

namespace A178300

/-- `A176992(A061579(n))` -/
def P14040976058783193462.Spec : Prop :=
  ∀ n, P14040976058783193462.a n = A178300 (n + 1)

end A178300

/-! ## A178300.P5791733015322805660

`A176992(A114327(n)+n)`
-/

namespace A178300.P5791733015322805660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176992 (A114327 n + (n : ℤ)).toNat

end

end A178300.P5791733015322805660

namespace A178300

/-- `A176992(A114327(n)+n)` -/
def P5791733015322805660.Spec : Prop :=
  ∀ n, P5791733015322805660.a n = A178300 (n + 1)

end A178300

/-! ## A178300.P10019770442102200018

`A059481(comp[C(floor(n/2)+1, 2)-n])`
-/

namespace A178300.P10019770442102200018
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (⌊(n : ℚ) / 2⌋ + 1).toNat 2 : ℤ) - (n : ℤ)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059481 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A178300.P10019770442102200018

namespace A178300

/-- `A059481(comp[C(floor(n/2)+1, 2)-n])` -/
def P10019770442102200018.Spec : Prop :=
  ∀ n, P10019770442102200018.a n = A178300 (n + 1)

end A178300

/-! ## A178300.P11952270516956977682

`A100100((n-comp[∑[n]])²-(n-1))`
-/

namespace A178300.P11952270516956977682
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100100 (((n : ℤ) - (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ)) ^ 2 - ((n : ℤ) - 1)).toNat

end

end A178300.P11952270516956977682

namespace A178300

/-- `A100100((n-comp[∑[n]])²-(n-1))` -/
def P11952270516956977682.Spec : Prop :=
  ∀ n, P11952270516956977682.a n = A178300 (n + 1)

end A178300

/-! ## A178300.P386157344635046169

`C(n+1-C(∑[char[∑[n+1]]], 2), ∑[char[∑[n]]])`
-/

namespace A178300.P386157344635046169
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def f6 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f6 j

open Classical in
def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f5 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose ((n + 1 : ℤ) - (Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j) 2 : ℤ)).toNat (∑ j ∈ Finset.range (n + 1), f4 j)

end

end A178300.P386157344635046169

namespace A178300

/-- `C(n+1-C(∑[char[∑[n+1]]], 2), ∑[char[∑[n]]])` -/
def P386157344635046169.Spec : Prop :=
  ∀ n, (P386157344635046169.a n : ℤ) = A178300 (n + 1)

end A178300

/-! ## A178300.P9179490631551907954

`C(A094727(n+1), ∑[char[∑[n]]])`
-/

namespace A178300.P9179490631551907954
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A094727 (n + 1)).toNat (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A178300.P9179490631551907954

namespace A178300

/-- `C(A094727(n+1), ∑[char[∑[n]]])` -/
def P9179490631551907954.Spec : Prop :=
  ∀ n, (P9179490631551907954.a n : ℤ) = A178300 (n + 1)

end A178300

/-! ## A178300.P8827555911371474974

`C((A131421(n+1)+1)/2, comp[C(n, 2)]-(n+1))`
-/

namespace A178300.P8827555911371474974
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (SequenceMachineLib.roundAway ((A131421 (n + 1) + 1 : ℚ) / 2)).toNat ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n + 1 : ℤ)).toNat

end

end A178300.P8827555911371474974

namespace A178300

/-- `C((A131421(n+1)+1)/2, comp[C(n, 2)]-(n+1))` -/
def P8827555911371474974.Spec : Prop :=
  ∀ n, (P8827555911371474974.a n : ℤ) = A178300 (n + 1)

end A178300

/-! ## A178300.P3865728166977628730

`C(A051162(n)+1, A002262(n))`
-/

namespace A178300.P3865728166977628730
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A051162 n + 1).toNat (A002262 n).toNat

end

end A178300.P3865728166977628730

namespace A178300

/-- `C(A051162(n)+1, A002262(n))` -/
def P3865728166977628730.Spec : Prop :=
  ∀ n, (P3865728166977628730.a n : ℤ) = A178300 (n + 1)

end A178300

/-! ## A178300.P17280698545889710432

`C(A134478(n)+1, A002262(n))`
-/

namespace A178300.P17280698545889710432
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A134478 n + 1).toNat (A002262 n).toNat

end

end A178300.P17280698545889710432

namespace A178300

/-- `C(A134478(n)+1, A002262(n))` -/
def P17280698545889710432.Spec : Prop :=
  ∀ n, (P17280698545889710432.a n : ℤ) = A178300 (n + 1)

end A178300

/-! ## A178300.P9155432237383306400

`C(A108872(n+1)-1, A002024(n+1))`
-/

namespace A178300.P9155432237383306400
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A108872 (n + 1) - 1).toNat (A002024 (n + 1)).toNat

end

end A178300.P9155432237383306400

namespace A178300

/-- `C(A108872(n+1)-1, A002024(n+1))` -/
def P9155432237383306400.Spec : Prop :=
  ∀ n, (P9155432237383306400.a n : ℤ) = A178300 (n + 1)

end A178300

/-! ## A178300.P6674804966511228722

`C(A002262(n)+A002024(n+1), A002262(n))`
-/

namespace A178300.P6674804966511228722
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A002262 n + A002024 (n + 1)).toNat (A002262 n).toNat

end

end A178300.P6674804966511228722

namespace A178300

/-- `C(A002262(n)+A002024(n+1), A002262(n))` -/
def P6674804966511228722.Spec : Prop :=
  ∀ n, (P6674804966511228722.a n : ℤ) = A178300 (n + 1)

end A178300

/-! ## A178300.P9970592491876861565

`C(A003056(n)+A002260(n+1), A002262(n))`
-/

namespace A178300.P9970592491876861565
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A003056 n + A002260 (n + 1)).toNat (A002262 n).toNat

end

end A178300.P9970592491876861565

namespace A178300

/-- `C(A003056(n)+A002260(n+1), A002262(n))` -/
def P9970592491876861565.Spec : Prop :=
  ∀ n, (P9970592491876861565.a n : ℤ) = A178300 (n + 1)

end A178300

/-! ## A178300.P13534212328419341355

`C(A003056(n)+A002260(n+1), A002024(n+1))`
-/

namespace A178300.P13534212328419341355
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A003056 n + A002260 (n + 1)).toNat (A002024 (n + 1)).toNat

end

end A178300.P13534212328419341355

namespace A178300

/-- `C(A003056(n)+A002260(n+1), A002024(n+1))` -/
def P13534212328419341355.Spec : Prop :=
  ∀ n, (P13534212328419341355.a n : ℤ) = A178300 (n + 1)

end A178300

/-! ## A178300.P17569532788448144497

`A178301(n)/A007318(n)`
-/

namespace A178300.P17569532788448144497
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A178301 n : ℚ) / (A007318 n : ℚ)

end

end A178300.P17569532788448144497

namespace A178300

/-- `A178301(n)/A007318(n)` -/
def P17569532788448144497.Spec : Prop :=
  ∀ n, P17569532788448144497.a n = (A178300 (n + 1) : ℚ)

end A178300

/-! ## A178300.P13788112823334014017

`A014462(A056537(n+1))`
-/

namespace A178300.P13788112823334014017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014462 (A056537 (n + 1)).toNat

end

end A178300.P13788112823334014017

namespace A178300

/-- `A014462(A056537(n+1))` -/
def P13788112823334014017.Spec : Prop :=
  ∀ n, P13788112823334014017.a n = A178300 (n + 1)

end A178300

/-! ## A178300.P6827265099869077591

`A074909(A245300(n))`
-/

namespace A178300.P6827265099869077591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074909 (A245300 n).toNat

end

end A178300.P6827265099869077591

namespace A178300

/-- `A074909(A245300(n))` -/
def P6827265099869077591.Spec : Prop :=
  ∀ n, P6827265099869077591.a n = A178300 (n + 1)

end A178300

/-! ## A178300.P7143134087242753837

`A007318(A245300(n)+A111650(n+1))`
-/

namespace A178300.P7143134087242753837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (A245300 n + A111650 (n + 1)).toNat

end

end A178300.P7143134087242753837

namespace A178300

/-- `A007318(A245300(n)+A111650(n+1))` -/
def P7143134087242753837.Spec : Prop :=
  ∀ n, P7143134087242753837.a n = A178300 (n + 1)

end A178300

/-! ## A178300.P11870044109404678179

`A038675(n+1)/A008292(n+1)`
-/

namespace A178300.P11870044109404678179
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038675 (n + 1) : ℚ) / (A008292 (n + 1) : ℚ)

end

end A178300.P11870044109404678179

namespace A178300

/-- `A038675(n+1)/A008292(n+1)` -/
def P11870044109404678179.Spec : Prop :=
  ∀ n, P11870044109404678179.a n = (A178300 (n + 1) : ℚ)

end A178300

/-!
# A178301: Triangle T(n,k) = binomial(n,k)*binomial(n+k+1,n+1) read by rows, 0 <= k <= n.

The programs for A178301, the canonical program `A178301.P7325407682476030006` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A178301 has offset 0).

The definition of A178301 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9134 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A178301.P1675657965643039184

`A009766(n)*A029637(n+1)`
-/

namespace A178301.P1675657965643039184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009766 n * A029637 (n + 1)

end

end A178301.P1675657965643039184

namespace A178301

/-- `A009766(n)*A029637(n+1)` -/
def P1675657965643039184.Spec : Prop :=
  ∀ n, P1675657965643039184.a n = A178301 n

end A178301

/-! ## A178301.P7325407682476030006

`A007318(n)*A178300(n+1)`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A178301

/-- `A007318(n)*A178300(n+1)` -/
def P7325407682476030006.Spec : Prop :=
  ∀ n, P7325407682476030006.a n = A178301 n

theorem P7325407682476030006.correct : P7325407682476030006.Spec := by
  intro n
  simp only [A178301]

end A178301

/-! ## A178301.P4709542832885776336

`A009766(n)*A110813(A061579(n))`
-/

namespace A178301.P4709542832885776336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009766 n * A110813 (A061579 n).toNat

end

end A178301.P4709542832885776336

namespace A178301

/-- `A009766(n)*A110813(A061579(n))` -/
def P4709542832885776336.Spec : Prop :=
  ∀ n, P4709542832885776336.a n = A178301 n

end A178301

/-! ## A178301.P17072786834578475482

`A007318(n)*A176992(A061579(n))`
-/

namespace A178301.P17072786834578475482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n * A176992 (A061579 n).toNat

end

end A178301.P17072786834578475482

namespace A178301

/-- `A007318(n)*A176992(A061579(n))` -/
def P17072786834578475482.Spec : Prop :=
  ∀ n, P17072786834578475482.a n = A178301 n

end A178301

/-! ## A178301.P16439232946760133685

`A007318(n)*A046899(A007401(n+1))`
-/

namespace A178301.P16439232946760133685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n * A046899 (A007401 (n + 1)).toNat

end

end A178301.P16439232946760133685

namespace A178301

/-- `A007318(n)*A046899(A007401(n+1))` -/
def P16439232946760133685.Spec : Prop :=
  ∀ n, P16439232946760133685.a n = A178301 n

end A178301

/-! ## A178301.P4033376263733214225

`A007318(n)*A074909(A245300(n))`
-/

namespace A178301.P4033376263733214225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n * A074909 (A245300 n).toNat

end

end A178301.P4033376263733214225

namespace A178301

/-- `A007318(n)*A074909(A245300(n))` -/
def P4033376263733214225.Spec : Prop :=
  ∀ n, P4033376263733214225.a n = A178301 n

end A178301

/-! ## A178301.P14735776049784957617

`A007318(n)*A007318(A245300(n)+A111650(n+1))`
-/

namespace A178301.P14735776049784957617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n * A007318 (A245300 n + A111650 (n + 1)).toNat

end

end A178301.P14735776049784957617

namespace A178301

/-- `A007318(n)*A007318(A245300(n)+A111650(n+1))` -/
def P14735776049784957617.Spec : Prop :=
  ∀ n, P14735776049784957617.a n = A178301 n

end A178301

/-! ## A178301.P17940501040664965750

`A007318(n)/A176120(n)*A176121(n)`
-/

namespace A178301.P17940501040664965750
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007318 n : ℚ) / (A176120 n : ℚ) * (A176121 n : ℚ)

end

end A178301.P17940501040664965750

namespace A178301

/-- `A007318(n)/A176120(n)*A176121(n)` -/
def P17940501040664965750.Spec : Prop :=
  ∀ n, P17940501040664965750.a n = (A178301 n : ℚ)

end A178301

/-!
# A178302: Multiply the irregular Array A125108 by A178300;compute a(n)the vertical sums.

The programs for A178302, there is no canonical definition to state claims against.
-/

/-! ## A178302.P7489009016900684590

`A283421(n+1)+A188675(n)`
-/

namespace A178302.P7489009016900684590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283421 (n + 1) + A188675 n

end

end A178302.P7489009016900684590

/-!
# A178305: a(0)=1, a(1)=a(2)=1 and a(3k)=a(k), a(3k+1) = a(3k+2) = 2a(k) for k >= 1.

The programs for A178305, the canonical program `A178305.P2093063245342575933` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A178305 has offset 0).

The definition of A178305 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A178305.P14511803586460370832

`floor(2^(A160384(n)-1))`
-/

namespace A178305.P14511803586460370832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(2 : ℚ) ^ (A160384 n - 1 : ℤ)⌋

end

end A178305.P14511803586460370832

namespace A178305

/-- `floor(2^(A160384(n)-1))` -/
def P14511803586460370832.Spec : Prop :=
  ∀ n, P14511803586460370832.a n = A178305 n

end A178305

/-! ## A178305.P15685954050378283884

`A178306(A038574(n))`
-/

namespace A178305.P15685954050378283884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178306 (A038574 n).toNat

end

end A178305.P15685954050378283884

namespace A178305

/-- `A178306(A038574(n))` -/
def P15685954050378283884.Spec : Prop :=
  ∀ n, P15685954050378283884.a n = A178305 n

end A178305

/-! ## A178305.P8279800970201429017

`A356230(A006047(n))`
-/

namespace A178305.P8279800970201429017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356230 (A006047 n).toNat

end

end A178305.P8279800970201429017

namespace A178305

/-- `A356230(A006047(n))` -/
def P8279800970201429017.Spec : Prop :=
  ∀ n, P8279800970201429017.a n = A178305 n

end A178305

/-! ## A178305.P13249897887968844052

`A385816(A037456(n))`
-/

namespace A178305.P13249897887968844052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385816 (A037456 n).toNat

end

end A178305.P13249897887968844052

namespace A178305

/-- `A385816(A037456(n))` -/
def P13249897887968844052.Spec : Prop :=
  ∀ n, P13249897887968844052.a n = A178305 n

end A178305

/-! ## A178305.P8831778092323768392

`A356230(A120879(n))`
-/

namespace A178305.P8831778092323768392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356230 (A120879 n).toNat

end

end A178305.P8831778092323768392

namespace A178305

/-- `A356230(A120879(n))` -/
def P8831778092323768392.Spec : Prop :=
  ∀ n, P8831778092323768392.a n = A178305 n

end A178305

/-! ## A178305.P17017518576631518208

`∑{d}[A101278(n), A252233(#)]`
-/

namespace A178305.P17017518576631518208
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101278 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A252233 d

end

end A178305.P17017518576631518208

namespace A178305

/-- `∑{d}[A101278(n), A252233(#)]` -/
def P17017518576631518208.Spec : Prop :=
  ∀ n, P17017518576631518208.a n = A178305 n

end A178305

/-! ## A178305.P996490763371256040

`A056924(∏{p}[A101278(n), #])`
-/

namespace A178305.P996490763371256040
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101278 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056924 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, p)

end

end A178305.P996490763371256040

namespace A178305

/-- `A056924(∏{p}[A101278(n), #])` -/
def P996490763371256040.Spec : Prop :=
  ∀ n, P996490763371256040.a n = A178305 n

end A178305

/-! ## A178305.P2093063245342575933

`A008937(∑{e}[A006047(n), #])`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A178305

/-- `A008937(∑{e}[A006047(n), #])` -/
def P2093063245342575933.Spec : Prop :=
  ∀ n, P2093063245342575933.a n = A178305 n

theorem P2093063245342575933.correct : P2093063245342575933.Spec := by
  intro n
  simp only [A178305]

end A178305

/-! ## A178305.P7976111373354860536

`A048328(∑{e}[A006047(n), #])`
-/

namespace A178305.P7976111373354860536
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006047 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048328 (∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p)

end

end A178305.P7976111373354860536

namespace A178305

/-- `A048328(∑{e}[A006047(n), #])` -/
def P7976111373354860536.Spec : Prop :=
  ∀ n, P7976111373354860536.a n = A178305 n

end A178305

/-! ## A178305.P13708671121732362213

`A131577(∑{e}[A006047(n), #])`
-/

namespace A178305.P13708671121732362213
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006047 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131577 (∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p)

end

end A178305.P13708671121732362213

namespace A178305

/-- `A131577(∑{e}[A006047(n), #])` -/
def P13708671121732362213.Spec : Prop :=
  ∀ n, P13708671121732362213.a n = A178305 n

end A178305

/-! ## A178305.P17228074665675811854

`A131577(∑{e}[A120879(n), #])`
-/

namespace A178305.P17228074665675811854
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120879 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131577 (∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p)

end

end A178305.P17228074665675811854

namespace A178305

/-- `A131577(∑{e}[A120879(n), #])` -/
def P17228074665675811854.Spec : Prop :=
  ∀ n, P17228074665675811854.a n = A178305 n

end A178305

/-! ## A178305.P1580029613480810876

`A175338(∑{e}[A120879(n), #])`
-/

namespace A178305.P1580029613480810876
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120879 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175338 (∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p)

end

end A178305.P1580029613480810876

namespace A178305

/-- `A175338(∑{e}[A120879(n), #])` -/
def P1580029613480810876.Spec : Prop :=
  ∀ n, P1580029613480810876.a n = A178305 n

end A178305

/-! ## A178305.P18007562963772986224

`floor(A001316(A023717(n))/2)`
-/

namespace A178305.P18007562963772986224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A001316 (A023717 n).toNat : ℚ) / 2⌋

end

end A178305.P18007562963772986224

namespace A178305

/-- `floor(A001316(A023717(n))/2)` -/
def P18007562963772986224.Spec : Prop :=
  ∀ n, P18007562963772986224.a n = A178305 n

end A178305

/-! ## A178305.P3894300586376562532

`A004526(2^∑{e}[A006047(n), #])`
-/

namespace A178305.P3894300586376562532
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006047 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (2 ^ (∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p))

end

end A178305.P3894300586376562532

namespace A178305

/-- `A004526(2^∑{e}[A006047(n), #])` -/
def P3894300586376562532.Spec : Prop :=
  ∀ n, P3894300586376562532.a n = A178305 n

end A178305

/-! ## A178305.P13166428499471103772

`2^(A160384(n)-1)*and(1, A000040(n+1))`
-/

namespace A178305.P13166428499471103772
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A160384 n - 1 : ℤ) * (Int.land 1 (A000040 (n + 1)) : ℚ)

end

end A178305.P13166428499471103772

namespace A178305

/-- `2^(A160384(n)-1)*and(1, A000040(n+1))` -/
def P13166428499471103772.Spec : Prop :=
  ∀ n, P13166428499471103772.a n = (A178305 n : ℚ)

end A178305

/-! ## A178305.P17221194954566665866

`A000010(A306719(a(floor(n/3))+n²%3))` with `a(0)=0`
-/

namespace A178305.P17221194954566665866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A000010 (A306719 (a ⌊(n : ℚ) / 3⌋.toNat + ((n ^ 2 % 3 : ℕ) : ℤ)).toNat).toNat

end

end A178305.P17221194954566665866

namespace A178305

/-- `A000010(A306719(a(floor(n/3))+n²%3))` -/
def P17221194954566665866.Spec : Prop :=
  ∀ n, P17221194954566665866.a n = A178305 n

end A178305

/-! ## A178305.P10596821700642960804

`A048675(A006530(A331279(n)))`
-/

namespace A178305.P10596821700642960804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048675 (A006530 (A331279 n).toNat).toNat

end

end A178305.P10596821700642960804

namespace A178305

/-- `A048675(A006530(A331279(n)))` -/
def P10596821700642960804.Spec : Prop :=
  ∀ n, P10596821700642960804.a n = A178305 n

end A178305

/-! ## A178305.P2350432161541860878

`∑{d}[A001222(A006047(n)), A179865(#)]`
-/

namespace A178305.P2350432161541860878
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A006047 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A179865 d

end

end A178305.P2350432161541860878

namespace A178305

/-- `∑{d}[A001222(A006047(n)), A179865(#)]` -/
def P2350432161541860878.Spec : Prop :=
  ∀ n, P2350432161541860878.a n = A178305 n

end A178305

/-! ## A178305.P17811803737550177163

`A000010(∏{e}[A120879(n), A000079(#)])%(n+1)`
-/

namespace A178305.P17811803737550177163
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120879 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000010 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, A000079 (Nat.factorization (f1 n).natAbs p)).toNat) (n + 1 : ℤ)

end

end A178305.P17811803737550177163

namespace A178305

/-- `A000010(∏{e}[A120879(n), A000079(#)])%(n+1)` -/
def P17811803737550177163.Spec : Prop :=
  ∀ n, P17811803737550177163.a n = A178305 n

end A178305

/-!
# A178306: a(0)=1, a(1)=a(2)=1 and a(3k) = a(k), a(3k+1) = a(k)+a(k+1), a(3k+2) = 2a(k) for k >= 1.

The programs for A178306, there is no canonical definition to state claims against.
-/

/-! ## A178306.P1665543566431932536

`A102669(A022349(char[11]+n))`
-/

namespace A178306.P1665543566431932536
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102669 (A022349 ((if ∃ j, f1 j = n then 1 else 0) + n)).toNat

end

end A178306.P1665543566431932536

/-! ## A178306.P17885484021087313149

`A102669(A022349(n))-char[11]`
-/

namespace A178306.P17885484021087313149
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102669 (A022349 n).toNat - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A178306.P17885484021087313149

/-! ## A178306.P15472231228222373442

`A001221(∑[A055396(n+1)^(n/2)])`
-/

namespace A178306.P15472231228222373442
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A055396 (n + 1) : ℝ) ^ ((n : ℚ) / 2 : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (SequenceMachineLib.roundAway (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A178306.P15472231228222373442

/-! ## A178306.P13568621309407297866

`A001221(or(A102972(n+1), A107760(n)))`
-/

namespace A178306.P13568621309407297866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (Int.lor (A102972 (n + 1)) (A107760 n)).toNat

end

end A178306.P13568621309407297866

/-! ## A178306.P6511286186769975927

`A001221(A128198(2*n+3)+A115341(n+2))`
-/

namespace A178306.P6511286186769975927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A128198 (2 * n + 3) + A115341 (n + 2)).toNat

end

end A178306.P6511286186769975927

/-!
# A178307: Remove powers of 2 from A000069. Let b(n) be n-th term of the remaining sequence. Then a(n) is the least number m such that (b(n))^m is in A001969.

The programs for A178307, there is no canonical definition to state claims against.
-/

/-! ## A178307.P9059232150282769135

`val(A178374(n+1), A075930(n))`
-/

namespace A178307.P9059232150282769135
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A178374 (n + 1)).toNat (A075930 n).toNat

end

end A178307.P9059232150282769135

/-! ## A178307.P18138503080277249474

`val(A178374(n+1), A271499(n+1))`
-/

namespace A178307.P18138503080277249474
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A178374 (n + 1)).toNat (A271499 (n + 1)).toNat

end

end A178307.P18138503080277249474

/-! ## A178307.P15818317540844964008

`val(A178374(n+1), eq[3, A207328(n)])`
-/

namespace A178307.P15818317540844964008
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207328 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A178374 (n + 1)).toNat (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A178307.P15818317540844964008

/-! ## A178307.P8932866498604790477

`val(A178374(n+1), eq[1, (3-A048881(n))²]+1)`
-/

namespace A178307.P8932866498604790477
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 - A048881 n) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A178374 (n + 1)).toNat (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A178307.P8932866498604790477

/-! ## A178307.P12278297874394986121

`A028356(xor(A023491(n), A067166(n+8)))`
-/

namespace A178307.P12278297874394986121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028356 (Int.xor (A023491 n) (A067166 (n + 8))).toNat

end

end A178307.P12278297874394986121

/-!
# A178312: a(n) = n * T(ceiling(n/2)), where T are the triangular numbers, A000217.

The programs for A178312, the canonical program `A178312.P17701900749152698981` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A178312 has offset 0).

The definition of A178312 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A178312.P17304164554561303076

`n*ceil(n/2)*(ceil(n/2)+1)/2`
-/

namespace A178312.P17304164554561303076
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) * ⌈(n : ℚ) / 2⌉ * (⌈(n : ℚ) / 2⌉ + 1) : ℚ) / 2

end

end A178312.P17304164554561303076

namespace A178312

/-- `n*ceil(n/2)*(ceil(n/2)+1)/2` -/
def P17304164554561303076.Spec : Prop :=
  ∀ n, P17304164554561303076.a n = (A178312 n : ℚ)

end A178312

/-! ## A178312.P17701900749152698981

`n*A000217(A110654(n))`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A178312

/-- `n*A000217(A110654(n))` -/
def P17701900749152698981.Spec : Prop :=
  ∀ n, P17701900749152698981.a n = A178312 n

theorem P17701900749152698981.correct : P17701900749152698981.Spec := by
  intro n
  simp only [A178312]

end A178312

/-! ## A178312.P5389755770397450309

`n*∑[∑[n]%(n+1)]`
-/

namespace A178312.P5389755770397450309
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f2 j) % (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A178312.P5389755770397450309

namespace A178312

/-- `n*∑[∑[n]%(n+1)]` -/
def P5389755770397450309.Spec : Prop :=
  ∀ n, (P5389755770397450309.a n : ℤ) = A178312 n

end A178312

/-! ## A178312.P11425182855300244091

`n*C(ceil((n+2)/2), 2)`
-/

namespace A178312.P11425182855300244091
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * Nat.choose ⌈(n + 2 : ℚ) / 2⌉.toNat 2

end

end A178312.P11425182855300244091

namespace A178312

/-- `n*C(ceil((n+2)/2), 2)` -/
def P11425182855300244091.Spec : Prop :=
  ∀ n, (P11425182855300244091.a n : ℤ) = A178312 n

end A178312

/-! ## A178312.P6078365649414937184

`n*∑[n+1-gcd(n+1, ∑[n])]`
-/

namespace A178312.P6078365649414937184
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - (Nat.gcd (n + 1) (∑ j ∈ Finset.range (n + 1), f2 j) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A178312.P6078365649414937184

namespace A178312

/-- `n*∑[n+1-gcd(n+1, ∑[n])]` -/
def P6078365649414937184.Spec : Prop :=
  ∀ n, P6078365649414937184.a n = A178312 n

end A178312

/-! ## A178312.P17723588019067367960

`n*∑[floor((n+1)/2-a(n-1))]` with `a(0)=0`
-/

namespace A178312.P17723588019067367960
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f1 =>
  ⌊(n + 1 : ℚ) / 2 - (f1 (n - 1) : ℚ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A178312.P17723588019067367960

namespace A178312

/-- `n*∑[floor((n+1)/2-a(n-1))]` -/
def P17723588019067367960.Spec : Prop :=
  ∀ n, P17723588019067367960.a n = A178312 n

end A178312

/-! ## A178312.P12132489074584293782

`n*∑[∑[1-a(n-1)]-a(n-1)]` with `a(0)=0`
-/

namespace A178312.P12132489074584293782
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f2 =>
  1 - f2 (n - 1)

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f1 =>
  ∑ j ∈ Finset.range (n + 1), f2 j - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A178312.P12132489074584293782

namespace A178312

/-- `n*∑[∑[1-a(n-1)]-a(n-1)]` -/
def P12132489074584293782.Spec : Prop :=
  ∀ n, P12132489074584293782.a n = A178312 n

end A178312

/-! ## A178312.P11605319500064904604

`abs(n*∑[A083392(n)])`
-/

namespace A178312.P11605319500064904604
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083392 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(n : ℤ) * (∑ j ∈ Finset.range (n + 1), f1 j)|

end

end A178312.P11605319500064904604

namespace A178312

/-- `abs(n*∑[A083392(n)])` -/
def P11605319500064904604.Spec : Prop :=
  ∀ n, P11605319500064904604.a n = A178312 n

end A178312

/-! ## A178312.P3856683855567156066

`n*(A165157(n+1)-(n+1))`
-/

namespace A178312.P3856683855567156066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A165157 (n + 1) - (n + 1 : ℤ))

end

end A178312.P3856683855567156066

namespace A178312

/-- `n*(A165157(n+1)-(n+1))` -/
def P3856683855567156066.Spec : Prop :=
  ∀ n, P3856683855567156066.a n = A178312 n

end A178312

/-! ## A178312.P5084497826476297093

`n*(A000217(∑[char[2*n+1]])-1)+n`
-/

namespace A178312.P5084497826476297093
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A000217 (∑ j ∈ Finset.range (n + 1), f1 j) - 1) + (n : ℤ)

end

end A178312.P5084497826476297093

namespace A178312

/-- `n*(A000217(∑[char[2*n+1]])-1)+n` -/
def P5084497826476297093.Spec : Prop :=
  ∀ n, P5084497826476297093.a n = A178312 n

end A178312

/-! ## A178312.P13021895628084630521

`A131474(n)-A111384(n)`
-/

namespace A178312.P13021895628084630521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131474 n - A111384 n

end

end A178312.P13021895628084630521

namespace A178312

/-- `A131474(n)-A111384(n)` -/
def P13021895628084630521.Spec : Prop :=
  ∀ n, P13021895628084630521.a n = A178312 n

end A178312

/-! ## A178312.P5324153338454316675

`A033488(n)%A049778(n+1)`
-/

namespace A178312.P5324153338454316675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A033488 n) (A049778 (n + 1))

end

end A178312.P5324153338454316675

namespace A178312

/-- `A033488(n)%A049778(n+1)` -/
def P5324153338454316675.Spec : Prop :=
  ∀ n, P5324153338454316675.a n = A178312 n

end A178312

/-! ## A178312.P9220343082076478065

`∪[A002414(n+1), A011379(n)]`
-/

namespace A178312.P9220343082076478065
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002414 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011379 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A178312.P9220343082076478065

namespace A178312

/-- `∪[A002414(n+1), A011379(n)]` -/
def P9220343082076478065.Spec : Prop :=
  ∀ n, (P9220343082076478065.a n : ℤ) = A178312 n

end A178312

/-! ## A178312.P17667199533786450238

`n*∑[A142150(n+1)]`
-/

namespace A178312.P17667199533786450238
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142150 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A178312.P17667199533786450238

namespace A178312

/-- `n*∑[A142150(n+1)]` -/
def P17667199533786450238.Spec : Prop :=
  ∀ n, P17667199533786450238.a n = A178312 n

end A178312

/-! ## A178312.P2291892949296108481

`n/2*A110660(n+1)`
-/

namespace A178312.P2291892949296108481
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / 2 * (A110660 (n + 1) : ℚ)

end

end A178312.P2291892949296108481

namespace A178312

/-- `n/2*A110660(n+1)` -/
def P2291892949296108481.Spec : Prop :=
  ∀ n, P2291892949296108481.a n = (A178312 n : ℚ)

end A178312

/-! ## A178312.P2745146214799893305

`∑[∑[n*A097140(n+1)]]`
-/

namespace A178312.P2745146214799893305
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A097140 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A178312.P2745146214799893305

namespace A178312

/-- `∑[∑[n*A097140(n+1)]]` -/
def P2745146214799893305.Spec : Prop :=
  ∀ n, P2745146214799893305.a n = A178312 n

end A178312

/-! ## A178312.P16280545100145207187

`n/(n+1)*A290168(n+1)`
-/

namespace A178312.P16280545100145207187
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / (n + 1 : ℚ) * (A290168 (n + 1) : ℚ)

end

end A178312.P16280545100145207187

namespace A178312

/-- `n/(n+1)*A290168(n+1)` -/
def P16280545100145207187.Spec : Prop :=
  ∀ n, P16280545100145207187.a n = (A178312 n : ℚ)

end A178312

/-! ## A178312.P5901814853033431596

`n*A000217(A004526(n+1))`
-/

namespace A178312.P5901814853033431596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A000217 (A004526 (n + 1)).toNat

end

end A178312.P5901814853033431596

namespace A178312

/-- `n*A000217(A004526(n+1))` -/
def P5901814853033431596.Spec : Prop :=
  ∀ n, P5901814853033431596.a n = A178312 n

end A178312

/-! ## A178312.P13279954578921892183

`n*A185138(A109613(n+1))`
-/

namespace A178312.P13279954578921892183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A185138 (A109613 (n + 1)).toNat

end

end A178312.P13279954578921892183

namespace A178312

/-- `n*A185138(A109613(n+1))` -/
def P13279954578921892183.Spec : Prop :=
  ∀ n, P13279954578921892183.a n = A178312 n

end A178312

/-! ## A178312.P6797217161218301997

`A292551(n+1)-A317301(n+1)`
-/

namespace A178312.P6797217161218301997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292551 (n + 1) - A317301 (n + 1)

end

end A178312.P6797217161218301997

namespace A178312

/-- `A292551(n+1)-A317301(n+1)` -/
def P6797217161218301997.Spec : Prop :=
  ∀ n, P6797217161218301997.a n = A178312 n

end A178312

/-!
# A178313: Absolute difference between prime factors of n-th semiprime mod n.

The programs for A178313, the canonical program `A178313.P6058159442222746905` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A178313 has offset 1).

The definition of A178313 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A178313.P6058159442222746905

`A109313(n+1)%(n+1)`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A178313

/-- `A109313(n+1)%(n+1)` -/
def P6058159442222746905.Spec : Prop :=
  ∀ n, P6058159442222746905.a n = A178313 (n + 1)

theorem P6058159442222746905.correct : P6058159442222746905.Spec := by
  intro n
  simp only [A178313, Nat.add_sub_cancel]

end A178313

/-! ## A178313.P3776117033842197750

`(A084127(n+1)-A084126(n+1))%(n+1)`
-/

namespace A178313.P3776117033842197750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A084127 (n + 1) - A084126 (n + 1)) (n + 1 : ℤ)

end

end A178313.P3776117033842197750

namespace A178313

/-- `(A084127(n+1)-A084126(n+1))%(n+1)` -/
def P3776117033842197750.Spec : Prop :=
  ∀ n, P3776117033842197750.a n = A178313 (n + 1)

end A178313

/-! ## A178313.P7605732256978233655

`A178921(A001358(n+1))%A001478(n+1)`
-/

namespace A178313.P7605732256978233655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A178921 (A001358 (n + 1)).toNat) (A001478 (n + 1))

end

end A178313.P7605732256978233655

namespace A178313

/-- `A178921(A001358(n+1))%A001478(n+1)` -/
def P7605732256978233655.Spec : Prop :=
  ∀ n, P7605732256978233655.a n = A178313 (n + 1)

end A178313

/-! ## A178313.P14921210352217325988

`A046665(A001358(n+1))%(n+1)`
-/

namespace A178313.P14921210352217325988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A046665 (A001358 (n + 1)).toNat) (n + 1 : ℤ)

end

end A178313.P14921210352217325988

namespace A178313

/-- `A046665(A001358(n+1))%(n+1)` -/
def P14921210352217325988.Spec : Prop :=
  ∀ n, P14921210352217325988.a n = A178313 (n + 1)

end A178313

/-! ## A178313.P14346554812128172891

`A046665(eq[2, A001222(n+1)]+1)%(n+1)`
-/

namespace A178313.P14346554812128172891
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A046665 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)) (n + 1 : ℤ)

end

end A178313.P14346554812128172891

namespace A178313

/-- `A046665(eq[2, A001222(n+1)]+1)%(n+1)` -/
def P14346554812128172891.Spec : Prop :=
  ∀ n, P14346554812128172891.a n = A178313 (n + 1)

end A178313

/-!
# A178315: E.g.f.: A(x) = sqrt( Sum_{n>=0} 2^(n(n+1)/2) * x^n/n! ).

The programs for A178315, there is no canonical definition to state claims against.
-/

/-! ## A178315.P12971838166175396014

`A346061(∑[n+3])`
-/

namespace A178315.P12971838166175396014
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346061 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A178315.P12971838166175396014

/-! ## A178315.P4966473971106724465

`or(1, A346061(A141214(n)))`
-/

namespace A178315.P4966473971106724465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A346061 (A141214 n).toNat)

end

end A178315.P4966473971106724465

/-! ## A178315.P13437489486390002061

`A007318(∑[n])*A346061(A141214(n))`
-/

namespace A178315.P13437489486390002061
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (∑ j ∈ Finset.range (n + 1), f1 j) * A346061 (A141214 n).toNat

end

end A178315.P13437489486390002061

/-! ## A178315.P15705871049335723240

`A000041(C(n, n²))*A346061(A141214(n))`
-/

namespace A178315.P15705871049335723240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (Nat.choose n (n ^ 2)) * A346061 (A141214 n).toNat

end

end A178315.P15705871049335723240

/-! ## A178315.P10115025294322217876

`A006530(gcd(n, n+1))*A346061(A141214(n))`
-/

namespace A178315.P10115025294322217876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (Nat.gcd n (n + 1)) * A346061 (A141214 n).toNat

end

end A178315.P10115025294322217876

/-!
# A178316: Primes whose digital rotation is still prime.

The programs for A178316, there is no canonical definition to state claims against.
-/

/-! ## A178316.P16964599473430812284

`∪[A018847(n+1), A080788(n+1)]%A107465(n+1)`
-/

namespace A178316.P16964599473430812284
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018847 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080788 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n : ℤ) (A107465 (n + 1))

end

end A178316.P16964599473430812284

/-! ## A178316.P15902774060018709577

`record[p?[A281116(A171785(n+1))]]`
-/

namespace A178316.P15902774060018709577
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281116 (A171785 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A178316.P15902774060018709577

/-! ## A178316.P1024706669158159204

`p?[A211137(n+1)-A341392(n)]`
-/

namespace A178316.P1024706669158159204
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211137 (n + 1) - A341392 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A178316.P1024706669158159204

/-!
# A178317: Primes with the property that if the digits are written digital clock style and the number is reflected across a horizontal line through the middle of the number, the result is still prime.

The programs for A178317, there is no canonical definition to state claims against.
-/

/-! ## A178317.P9526468639176320360

`p?[A321702(n+1)]`
-/

namespace A178317.P9526468639176320360
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321702 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A178317.P9526468639176320360

/-! ## A178317.P4636395091692024277

`record[A006530(A321702(n+3))]`
-/

namespace A178317.P4636395091692024277
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A321702 (n + 3)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A178317.P4636395091692024277

/-! ## A178317.P2180264256919705659

`filter[A321702(n+2), A010051(#)]`
-/

namespace A178317.P2180264256919705659
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321702 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A178317.P2180264256919705659

/-! ## A178317.P6471580263037497938

`filter[A321702(n+3), A080339(#)]`
-/

namespace A178317.P6471580263037497938
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321702 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A080339 (f1 j).toNat = 1) n)

end

end A178317.P6471580263037497938

/-! ## A178317.P3321886488238183962

`∩[A000040(n+1), A321702(n+1)]`
-/

namespace A178317.P3321886488238183962
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321702 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A178317.P3321886488238183962

/-!
# A178318: Primes which remain prime after reflection across a vertical line through the middle of the number (numbers are written as digital clock style numerals).

The programs for A178318, there is no canonical definition to state claims against.
-/

/-! ## A178318.P12951381724998143225

`p?[A176356(n+1)]`
-/

namespace A178318.P12951381724998143225
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176356 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A178318.P12951381724998143225

/-! ## A178318.P2304491785231875500

`p?[record[A176356(A065648(n))]]`
-/

namespace A178318.P2304491785231875500
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176356 (A065648 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A178318.P2304491785231875500

/-! ## A178318.P14544775681972282022

`p?[record[A176356(A082854(n))]]`
-/

namespace A178318.P14544775681972282022
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176356 (A082854 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A178318.P14544775681972282022

/-! ## A178318.P2566096112493305806

`record[A020639(A176356(n+2))]`
-/

namespace A178318.P2566096112493305806
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A176356 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A178318.P2566096112493305806

/-!
# A178319: E.g.f.: ( Sum_{n>=0} 3^(n*(n + 1)/2) * x^n/n! )^(1/3).

The programs for A178319, there is no canonical definition to state claims against.
-/

/-! ## A178319.P11435799287617703537

`A346061(∑[n+3]+n+3)`
-/

namespace A178319.P11435799287617703537
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346061 (∑ j ∈ Finset.range (n + 1), f1 j + (n + 3))

end

end A178319.P11435799287617703537

/-! ## A178319.P16353017517272849687

`A346061(A046691(n+2))^A288942(3*n+4)`
-/

namespace A178319.P16353017517272849687
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A346061 (A046691 (n + 2)).toNat : ℚ) ^ (A288942 (3 * n + 4) : ℤ)

end

end A178319.P16353017517272849687

/-!
# A178320: INVERT transform of A008805 (triangular numbers repeated).

The programs for A178320, the canonical program `A178320.P6862327033738026889` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A178320 has offset 0).

The definition of A178320 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 258 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A178320.P6862327033738026889

`ogf(1/(1-2x-2x^2+2x^3+x^4-x^5))`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A178320

/-- `ogf(1/(1-2x-2x^2+2x^3+x^4-x^5))` -/
def P6862327033738026889.Spec : Prop :=
  ∀ n, P6862327033738026889.a n = A178320 n

theorem P6862327033738026889.correct : P6862327033738026889.Spec := by
  intro n
  simp only [A178320]

end A178320

/-! ## A178320.P10825097791128816408

`A289493(A257956(n+1)+A000041(n))`
-/

namespace A178320.P10825097791128816408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289493 (A257956 (n + 1) + A000041 n).toNat

end

end A178320.P10825097791128816408

namespace A178320

/-- `A289493(A257956(n+1)+A000041(n))` -/
def P10825097791128816408.Spec : Prop :=
  ∀ n, P10825097791128816408.a n = A178320 n

end A178320

/-! ## A178320.P15027617539321575596

`A017922(n+1)-A256502(A017922(n+1))`
-/

namespace A178320.P15027617539321575596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017922 (n + 1) - A256502 (A017922 (n + 1)).toNat

end

end A178320.P15027617539321575596

namespace A178320

/-- `A017922(n+1)-A256502(A017922(n+1))` -/
def P15027617539321575596.Spec : Prop :=
  ∀ n, P15027617539321575596.a n = A178320 n

end A178320

/-!
# A178321: Numbers k such that 58/111*(10^(3*k)-1)-1 is prime.

The programs for A178321, there is no canonical definition to state claims against.
-/

/-! ## A178321.P14228580531084002456

`abs(3-A229172(n*2^n+1))`
-/

namespace A178321.P14228580531084002456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |3 - A229172 (n * 2 ^ n + 1)|

end

end A178321.P14228580531084002456

/-!
# A178322: Numbers n such that 156/101*(10^(4n)-1)-1 is prime.

The programs for A178322, there is no canonical definition to state claims against.
-/

/-! ## A178322.P15325190334334602164

`record[gcd(A129959(n), A344607(n))]`
-/

namespace A178322.P15325190334334602164
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A129959 n) (A344607 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A178322.P15325190334334602164

/-! ## A178322.P2490900777993733086

`eq[A139040(n+1)!, A244567(n)]`
-/

namespace A178322.P2490900777993733086
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A139040 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244567 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A178322.P2490900777993733086

/-!
# A178324: G.f.: A(x) = Sum_{n>=0} x^n/[Sum_{k=0..n} C(n,k)^2*(-x)^k].

The programs for A178324, there is no canonical definition to state claims against.
-/

/-! ## A178324.P16972039274974472579

`and(A005185(A000255(n)), A308444(n))`
-/

namespace A178324.P16972039274974472579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A005185 (A000255 n).toNat) (A308444 n)

end

end A178324.P16972039274974472579

/-! ## A178324.P2121313801325887169

`A045864(or(A000262(n), A034691(n)))`
-/

namespace A178324.P2121313801325887169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045864 (Int.lor (A000262 n) (A034691 n)).toNat

end

end A178324.P2121313801325887169

/-!
# A178325: G.f.: A(x) = Sum_{n>=0} x^n/(1-x)^(n^2).

The programs for A178325, there is no canonical definition to state claims against.
-/

/-! ## A178325.P9627609778652896629

`A214403(∑[n²]+n)`
-/

namespace A178325.P9627609778652896629
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214403 (∑ j ∈ Finset.range (n + 1), f1 j + n)

end

end A178325.P9627609778652896629

/-! ## A178325.P8872308069899859557

`A008621(A274396(n+1)+A004080(n))`
-/

namespace A178325.P8872308069899859557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008621 (A274396 (n + 1) + A004080 n).toNat

end

end A178325.P8872308069899859557

/-! ## A178325.P13861316960522500671

`A359778(2*∏[eq[n, ∏{d}[n, #]]])`
-/

namespace A178325.P13861316960522500671
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f4 n), d

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j = f3 j) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359778 (2 * (∏ j ∈ Finset.range (n + 1), f1 j))

end

end A178325.P13861316960522500671

/-!
# A178328: Numbers k such that k^p-p is prime, where p is product of the digits of k.

The programs for A178328, there is no canonical definition to state claims against.
-/

/-! ## A178328.P12444525331624709753

`A108571(n+1)+A102855(A348858(n))`
-/

namespace A178328.P12444525331624709753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108571 (n + 1) + A102855 (A348858 n).toNat

end

end A178328.P12444525331624709753

/-!
# A178330: Numbers n such that d(1)^1 + d(2)^2 +... + d(p)^p is a power of 2, where d(i), i=1..p, are the decimal digits of n.

The programs for A178330, there is no canonical definition to state claims against.
-/

/-! ## A178330.P7058394873138818339

`record[A226378(A000010(lcm(6, (n+1)^3)/6))]`
-/

namespace A178330.P7058394873138818339
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226378 (A000010 (SequenceMachineLib.roundAway ((Nat.lcm 6 ((n + 1) ^ 3) : ℚ) / 6)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A178330.P7058394873138818339

/-! ## A178330.P11822778802614103543

`lt[A340088(A054842(n)), A003990(n+1)]`
-/

namespace A178330.P11822778802614103543
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340088 (A054842 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003990 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A178330.P11822778802614103543

/-! ## A178330.P18403746876541949273

`lt[A302792(A054842(n)), A046523(n+1)]`
-/

namespace A178330.P18403746876541949273
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302792 (A054842 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046523 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A178330.P18403746876541949273

/-! ## A178330.P16878062434449433558

`lt[A302792(A054842(n)), A278237(n+1)]`
-/

namespace A178330.P16878062434449433558
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302792 (A054842 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278237 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A178330.P16878062434449433558

/-!
# A178333: Characteristic function of mountain numbers.

The programs for A178333, there is no canonical definition to state claims against.
-/

/-! ## A178333.P32070500158912362

`char[A134941(n+1)]`
-/

namespace A178333.P32070500158912362
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134941 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A178333.P32070500158912362

/-! ## A178333.P11645173564982973211

`char[record[A134941(A144968(n))]]`
-/

namespace A178333.P11645173564982973211
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134941 (A144968 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A178333.P11645173564982973211

/-! ## A178333.P9008870976915902777

`char[record[A134941(A246694(n))]]`
-/

namespace A178333.P9008870976915902777
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134941 (A246694 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A178333.P9008870976915902777

/-! ## A178333.P12065929232358121406

`and(1, char[A134941(A028920(n))])`
-/

namespace A178333.P12065929232358121406
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134941 (A028920 n).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 1 (if ∃ j, f1 j = (n : ℤ) then 1 else 0)

end

end A178333.P12065929232358121406

/-! ## A178333.P15767165914392098858

`A178334(n)-A178334(or(1, n)-1)`
-/

namespace A178333.P15767165914392098858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178334 n - A178334 (Nat.lor 1 n - 1)

end

end A178333.P15767165914392098858

/-! ## A178333.P16170922270287988856

`A178334(n)-A178334(n-and(1, n))`
-/

namespace A178333.P16170922270287988856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178334 n - A178334 (n - Nat.land 1 n)

end

end A178333.P16170922270287988856

/-! ## A178333.P7466715823593451033

`A178334(n)-A178334(2*floor(n/2))`
-/

namespace A178333.P7466715823593451033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178334 n - A178334 (2 * ⌊(n : ℚ) / 2⌋).toNat

end

end A178333.P7466715823593451033

/-! ## A178333.P12840197268861902688

`A000007(xor(n, Δ[A029956(n+1)]²))`
-/

namespace A178333.P12840197268861902688
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029956 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (Int.xor (n : ℤ) ((f1 (n + 1) - f1 n) ^ 2)).toNat

end

end A178333.P12840197268861902688

/-! ## A178333.P5617860653387399398

`and(A000578(A182172(n)), A037213(n))`
-/

namespace A178333.P5617860653387399398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A000578 (A182172 n).toNat) (A037213 n)

end

end A178333.P5617860653387399398

/-! ## A178333.P14340769726138247284

`val(A001844(A046547(n+1)), A065091(n+1))`
-/

namespace A178333.P14340769726138247284
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A001844 (A046547 (n + 1)).toNat).toNat (A065091 (n + 1)).toNat

end

end A178333.P14340769726138247284

/-! ## A178333.P15763859264753885017

`val(A000127(A106929(n+1)), A003151(n+2)+2)`
-/

namespace A178333.P15763859264753885017
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A000127 (A106929 (n + 1)).toNat).toNat (A003151 (n + 2) + 2).toNat

end

end A178333.P15763859264753885017

/-! ## A178333.P10342079488608690053

`val(A302042(A249339(3*n+4)), A323440(n+1))`
-/

namespace A178333.P10342079488608690053
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A302042 (A249339 (3 * n + 4)).toNat).toNat (A323440 (n + 1)).toNat

end

end A178333.P10342079488608690053

/-! ## A178333.P12173353770661203313

`A266326(A008594(n)+A000124(n))`
-/

namespace A178333.P12173353770661203313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266326 (A008594 n + A000124 n).toNat

end

end A178333.P12173353770661203313

/-! ## A178333.P10861184233153725736

`char[A302561(n+1)]*A302555(A302564(n+3))`
-/

namespace A178333.P10861184233153725736
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302561 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A302555 (A302564 (n + 3)).toNat

end

end A178333.P10861184233153725736

/-! ## A178333.P5063754116009360023

`A033683(n)*A151622(A115723(n+1))`
-/

namespace A178333.P5063754116009360023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033683 n * A151622 (A115723 (n + 1)).toNat

end

end A178333.P5063754116009360023

/-! ## A178333.P4690087940800750585

`val(A131154(A055041(2*n+1)), A131155(2*(n+2)))`
-/

namespace A178333.P4690087940800750585
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A131154 (A055041 (2 * n + 1)).toNat).toNat (A131155 (2 * (n + 2))).toNat

end

end A178333.P4690087940800750585

/-! ## A178333.P15908141712344646734

`val(A272650(n+1), A108077((n+1)²))`
-/

namespace A178333.P15908141712344646734
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A272650 (n + 1)).toNat (A108077 ((n + 1) ^ 2)).toNat

end

end A178333.P15908141712344646734

/-! ## A178333.P12729750562503622846

`and(char[A302561(n+1)], A302544(n²+2))`
-/

namespace A178333.P12729750562503622846
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302561 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) (A302544 (n ^ 2 + 2))

end

end A178333.P12729750562503622846

/-!
# A178334: Number of mountain numbers <= n.

The programs for A178334, there is no canonical definition to state claims against.
-/

/-! ## A178334.P4764833352375331170

`A178333(n)+a(n-1)` with `a(0)=0`
-/

namespace A178334.P4764833352375331170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A178333 n + a (n - 1)

end

end A178334.P4764833352375331170

/-! ## A178334.P7908658145030056810

`A000217(n)-∑[n-A178333(n)]`
-/

namespace A178334.P7908658145030056810
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A178333 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 n - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A178334.P7908658145030056810

/-! ## A178334.P14615881099461088876

`a(n-1)-(A000007(n)-A178333(n))` with `a(0)=0`
-/

namespace A178334.P14615881099461088876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) - (A000007 n - A178333 n)

end

end A178334.P14615881099461088876

/-! ## A178334.P17339881497539532336

`∑[A178333(A093178(n))]-A008619(n)`
-/

namespace A178334.P17339881497539532336
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178333 (A093178 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A008619 n

end

end A178334.P17339881497539532336

/-! ## A178334.P10576634785414756104

`∑[A178333(A093178(n))]-A008621(2*n)`
-/

namespace A178334.P10576634785414756104
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178333 (A093178 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A008621 (2 * n)

end

end A178334.P10576634785414756104

/-!
# A178335: Integers for which the decimal expansion of the reciprocal contains the repeating digits 1,4,2,8,5,7 (corresponding to the decimal expansion of 1/7).

The programs for A178335, there is no canonical definition to state claims against.
-/

/-! ## A178335.P6157216030551762437

`7*A003592(n+1)`
-/

namespace A178335.P6157216030551762437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  7 * A003592 (n + 1)

end

end A178335.P6157216030551762437

/-! ## A178335.P2379234453521123816

`record[lcm(7, A108513(n+1))]`
-/

namespace A178335.P2379234453521123816
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 7 (A108513 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A178335.P2379234453521123816

/-! ## A178335.P9109936839101962283

`7*(A158911(n+1)+1)`
-/

namespace A178335.P9109936839101962283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  7 * (A158911 (n + 1) + 1)

end

end A178335.P9109936839101962283

/-! ## A178335.P18287156935563164708

`7*A086761(n+1)/5`
-/

namespace A178335.P18287156935563164708
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  7 * ((A086761 (n + 1) : ℚ) / 5)

end

end A178335.P18287156935563164708

/-! ## A178335.P14773773837899098577

`7/10*A033846(n+1)`
-/

namespace A178335.P14773773837899098577
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (7 : ℚ) / 10 * (A033846 (n + 1) : ℚ)

end

end A178335.P14773773837899098577

/-! ## A178335.P7048265612531472249

`7*record[lcm(3, A051037(n+1))/3]`
-/

namespace A178335.P7048265612531472249
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm 3 (A051037 (n + 1)) : ℚ) / 3

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  7 * f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A178335.P7048265612531472249

/-! ## A178335.P1306067632859473944

`lcm(or(7, A001222(n+1)), A003592(n+1))`
-/

namespace A178335.P1306067632859473944
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (Int.lor 7 (A001222 (n + 1))) (A003592 (n + 1))

end

end A178335.P1306067632859473944

/-! ## A178335.P12947152247084940080

`A003592(n+1)+A086761(n+1)+A003592(n+1)`
-/

namespace A178335.P12947152247084940080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003592 (n + 1) + (A086761 (n + 1) + A003592 (n + 1))

end

end A178335.P12947152247084940080

/-!
# A178336: Smaller member of a twin prime pair of the form (k^3 + 2, k^3 + 4).

The programs for A178336, there is no canonical definition to state claims against.
-/

/-! ## A178336.P11155922088406310444

`A178337(n+1)^3+2`
-/

namespace A178336.P11155922088406310444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178337 (n + 1) ^ 3 + 2

end

end A178336.P11155922088406310444

/-! ## A178336.P15124729847113119546

`A084380(A178337(n+1))`
-/

namespace A178336.P15124729847113119546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084380 (A178337 (n + 1)).toNat

end

end A178336.P15124729847113119546

/-! ## A178336.P2694333074046711707

`A034324(A178337(n+1)+2)`
-/

namespace A178336.P2694333074046711707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034324 (A178337 (n + 1) + 2).toNat

end

end A178336.P2694333074046711707

/-! ## A178336.P8572869897066688813

`A014220(A178337(n+1))+and(1, A000010(n+2))`
-/

namespace A178336.P8572869897066688813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014220 (A178337 (n + 1)).toNat + Int.land 1 (A000010 (n + 2))

end

end A178336.P8572869897066688813

/-! ## A178336.P4924770365123236854

`A014220(A178337(n+1))+A000045(C(2, n+2))`
-/

namespace A178336.P4924770365123236854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014220 (A178337 (n + 1)).toNat + A000045 (Nat.choose 2 (n + 2))

end

end A178336.P4924770365123236854

/-!
# A178337: Numbers k such that (k^3 + 2, n^3 + 4) is a twin prime pair.

The programs for A178337, there is no canonical definition to state claims against.
-/

/-! ## A178337.P5014423410388754747

`floor(root(A178336(n+1), 3))`
-/

namespace A178337.P5014423410388754747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A178336 (n + 1) : ℝ) ^ (1 / (3 : ℝ))⌋

end

end A178337.P5014423410388754747

/-! ## A178337.P14355029283246596694

`round(root(A178336(n+1), 3))%A016825(n)²`
-/

namespace A178337.P14355029283246596694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((A178336 (n + 1) : ℝ) ^ (1 / (3 : ℝ)))) (A016825 n ^ 2)

end

end A178337.P14355029283246596694

/-! ## A178337.P8849503563400926041

`round(root(A178336(n+1), 3))*A284939(2*(n+1))`
-/

namespace A178337.P8849503563400926041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A178336 (n + 1) : ℝ) ^ (1 / (3 : ℝ))) * A284939 (2 * (n + 1))

end

end A178337.P8849503563400926041

/-! ## A178337.P2199723007037145227

`A260190(3*n+1)+round(root(A178336(n+1), 3))`
-/

namespace A178337.P2199723007037145227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260190 (3 * n + 1) + SequenceMachineLib.roundAway ((A178336 (n + 1) : ℝ) ^ (1 / (3 : ℝ)))

end

end A178337.P2199723007037145227

/-! ## A178337.P16854602599316460288

`A000027(round(root(A178336(n+1), 3)))`
-/

namespace A178337.P16854602599316460288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (SequenceMachineLib.roundAway ((A178336 (n + 1) : ℝ) ^ (1 / (3 : ℝ)))).toNat

end

end A178337.P16854602599316460288

/-! ## A178337.P3191246448783623169

`∩[A067200(n+1), A073573(n+1)]`
-/

namespace A178337.P3191246448783623169
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067200 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073573 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A178337.P3191246448783623169

/-!
# A178338: Numbers k such that the sum of decimal digits of k does not divide k+1.

The programs for A178338, the canonical program `A178338.P15484238329282439109` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A178338 has offset 1).

The definition of A178338 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9597 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A178338.P15484238329282439109

`lt[n+1, lcm(n+1, ∑{digits}[n, #])]`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A178338

/-- `lt[n+1, lcm(n+1, ∑{digits}[n, #])]` -/
def P15484238329282439109.Spec : Prop :=
  ∀ n, (P15484238329282439109.a n : ℤ) = A178338 (n + 1)

theorem P15484238329282439109.correct : P15484238329282439109.Spec := by
  intro n
  simp only [A178338, Nat.add_sub_cancel]

end A178338

/-! ## A178338.P16767849049058045140

`eq[char[A144980(n+1)], A000007(n)]`
-/

namespace A178338.P16767849049058045140
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144980 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A178338.P16767849049058045140

namespace A178338

/-- `eq[char[A144980(n+1)], A000007(n)]` -/
def P16767849049058045140.Spec : Prop :=
  ∀ n, (P16767849049058045140.a n : ℤ) = A178338 (n + 1)

end A178338

/-! ## A178338.P2847769261480698952

`eq[char[A144980(n+1)], A000038(n)]`
-/

namespace A178338.P2847769261480698952
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144980 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A178338.P2847769261480698952

namespace A178338

/-- `eq[char[A144980(n+1)], A000038(n)]` -/
def P2847769261480698952.Spec : Prop :=
  ∀ n, (P2847769261480698952.a n : ℤ) = A178338 (n + 1)

end A178338

/-! ## A178338.P11833311976359606212

`eq[char[A160948(n+1)-1], A000007(n)]`
-/

namespace A178338.P11833311976359606212
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160948 (n + 1) - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A178338.P11833311976359606212

namespace A178338

/-- `eq[char[A160948(n+1)-1], A000007(n)]` -/
def P11833311976359606212.Spec : Prop :=
  ∀ n, (P11833311976359606212.a n : ℤ) = A178338 (n + 1)

end A178338

/-!
# A178339: Primes p such that the sum of decimal digits of p divides the product of decimal digits of p+1 and that product is nonzero.

The programs for A178339, there is no canonical definition to state claims against.
-/

/-! ## A178339.P12074162611827825746

`record[A256480(record[A329601(n+1)])]`
-/

namespace A178339.P12074162611827825746
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329601 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256480 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A178339.P12074162611827825746

/-!
# A178340: Triangle T(n,m) read by rows: denominator of the coefficient [x^m] of the umbral inverse Bernoulli polynomial B^{-1}(n,x).

The programs for A178340, there is no canonical definition to state claims against.
-/

/-! ## A178340.P14851812395631902343

`A159335(comp[∑[n-1]])`
-/

namespace A178340.P14851812395631902343
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159335 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A178340.P14851812395631902343

/-! ## A178340.P12773211085052071847

`A159335(A007401(n+1))%14`
-/

namespace A178340.P12773211085052071847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A159335 (A007401 (n + 1)).toNat) 14

end

end A178340.P12773211085052071847

/-! ## A178340.P5517902921928448889

`and(47, A159335(A007401(-xor(n, -1))))`
-/

namespace A178340.P5517902921928448889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 47 (A159335 (A007401 (-Int.xor (n : ℤ) (-1)).toNat).toNat)

end

end A178340.P5517902921928448889

/-! ## A178340.P16525724301191603914

`and(-1, A159335(A014132(n+1)-1))`
-/

namespace A178340.P16525724301191603914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A159335 (A014132 (n + 1) - 1).toNat)

end

end A178340.P16525724301191603914

/-! ## A178340.P8458921685310408109

`gcd(A000038(n), A159335(A007401(n+1)))`
-/

namespace A178340.P8458921685310408109
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A159335 (A007401 (n + 1)).toNat)

end

end A178340.P8458921685310408109

/-! ## A178340.P18254803394735477484

`A245334(n)/gcd(A021010(n), A245334(n))`
-/

namespace A178340.P18254803394735477484
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A245334 n : ℚ) / (Int.gcd (A021010 n) (A245334 n) : ℚ)

end

end A178340.P18254803394735477484

/-! ## A178340.P10161959760441529183

`lcm(A144084(n), A245334(n))/A144084(n)`
-/

namespace A178340.P10161959760441529183
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm (A144084 n) (A245334 n) : ℚ) / (A144084 n : ℚ)

end

end A178340.P10161959760441529183

/-! ## A178340.P3828724021569760098

`lcm(A004736(n+1), A007318(n))/A007318(n)`
-/

namespace A178340.P3828724021569760098
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm (A004736 (n + 1)) (A007318 n) : ℚ) / (A007318 n : ℚ)

end

end A178340.P3828724021569760098

/-! ## A178340.P9814845754194543519

`A159335(A007401(n+1))+A008683(4*(n+1))`
-/

namespace A178340.P9814845754194543519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159335 (A007401 (n + 1)).toNat + A008683 (4 * (n + 1))

end

end A178340.P9814845754194543519

/-! ## A178340.P5347511498692871449

`A159335(A007401(n+1))+C(A001222(n+1), 8)`
-/

namespace A178340.P5347511498692871449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159335 (A007401 (n + 1)).toNat + (Nat.choose (A001222 (n + 1)).toNat 8 : ℤ)

end

end A178340.P5347511498692871449

/-!
# A178343: Triangle T(n,m)= binomial(n, m)/Beta(m + 1, n - m + 1) read by rows.

The programs for A178343, there is no canonical definition to state claims against.
-/

/-! ## A178343.P16247572276608908746

`∑[char[∑[n]]]*A008459(n)`
-/

namespace A178343.P16247572276608908746
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) * A008459 n

end

end A178343.P16247572276608908746

/-! ## A178343.P5762827851792849873

`A007318(n)²*∑[char[∑[n]]]`
-/

namespace A178343.P5762827851792849873
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n ^ 2 * ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A178343.P5762827851792849873

/-! ## A178343.P2689148832976343131

`A108086(n)²*∑[char[∑[n]]]`
-/

namespace A178343.P2689148832976343131
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108086 n ^ 2 * ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A178343.P2689148832976343131

/-! ## A178343.P6509417013894055844

`A117440(n)²*∑[char[∑[n]]]`
-/

namespace A178343.P6509417013894055844
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117440 n ^ 2 * ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A178343.P6509417013894055844

/-! ## A178343.P7167095466218990084

`A118433(n)²*∑[char[∑[n]]]`
-/

namespace A178343.P7167095466218990084
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118433 n ^ 2 * ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A178343.P7167095466218990084

/-! ## A178343.P5921628756737511390

`A130595(n)²*∑[char[∑[n]]]`
-/

namespace A178343.P5921628756737511390
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130595 n ^ 2 * ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A178343.P5921628756737511390

/-! ## A178343.P4612638044210575049

`A003506(n+1)²/∑[char[∑[n]]]`
-/

namespace A178343.P4612638044210575049
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003506 (n + 1) ^ 2 : ℚ) / ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ)

end

end A178343.P4612638044210575049

/-! ## A178343.P17634165421252196585

`(C(comp[∑[n]]-n, 2)-n)*A132813(n)`
-/

namespace A178343.P17634165421252196585
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 : ℤ) - (n : ℤ)) * A132813 n

end

end A178343.P17634165421252196585

/-! ## A178343.P10455940811489230535

`floor((n-C(∑[char[∑[n+1]]], 2))!/((n-C(∑[char[∑[n]]], 2))!*(C(comp[∑[n]]-n, 2)-(n+1))!))/(n-C(∑[char[∑[n]]], 2))!*C(∑[2*char[∑[n+1]]], n-C(∑[char[∑[n+1]]], 2))/A000108(∑[char[∑[n+1]]])`
-/

namespace A178343.P10455940811489230535
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def f6 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f6 j

open Classical in
def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f5 j = n then 1 else 0

def f8 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f7 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f8 j

def f11 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f10 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f11 j

open Classical in
def f9 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f10 j = n then 1 else 0

def f14 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f13 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f14 j

open Classical in
def f12 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (if ∃ j, f13 j = n then 1 else 0)

def f17 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f16 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f17 j

open Classical in
def f15 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f16 j = n then 1 else 0

def f20 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f19 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f20 j

open Classical in
def f18 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f19 j = n then 1 else 0

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (⌊(Nat.factorial ((n : ℤ) - (Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j) 2 : ℤ)).toNat : ℚ) / (Nat.factorial ((n : ℤ) - (Nat.choose (∑ j ∈ Finset.range (n + 1), f4 j) 2 : ℤ)).toNat * Nat.factorial ((Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f7 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 : ℤ) - (n + 1 : ℤ)).toNat : ℚ)⌋ : ℚ) / (Nat.factorial ((n : ℤ) - (Nat.choose (∑ j ∈ Finset.range (n + 1), f9 j) 2 : ℤ)).toNat : ℚ) * (Nat.choose (∑ j ∈ Finset.range (n + 1), f12 j) ((n : ℤ) - (Nat.choose (∑ j ∈ Finset.range (n + 1), f15 j) 2 : ℤ)).toNat : ℚ) / (A000108 (∑ j ∈ Finset.range (n + 1), f18 j) : ℚ)

end

end A178343.P10455940811489230535

/-! ## A178343.P5625793182768401457

`A103406(n)*A135278(n)`
-/

namespace A178343.P5625793182768401457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103406 n * A135278 n

end

end A178343.P5625793182768401457

/-!
# A178344: a(n) = Sum_i prime(i+1)^b(i) where n = Sum_{i>=0} b(i)*2^e(i) is the binary representation of n.

The programs for A178344, there is no canonical definition to state claims against.
-/

/-! ## A178344.P9672168136374675009

`A178562(n-1)+a(n-1)` with `a(0)=1`
-/

namespace A178344.P9672168136374675009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A178562 (n - 1) + a (n - 1)

end

end A178344.P9672168136374675009

/-! ## A178344.P5438932352480621178

`∑[A178562(n)]+1-A178562(n)`
-/

namespace A178344.P5438932352480621178
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178562 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (1 - A178562 n)

end

end A178344.P5438932352480621178

/-! ## A178344.P2467229622905080733

`A080791(n+1)+A089625(n+1)-A178562(n)`
-/

namespace A178344.P2467229622905080733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080791 (n + 1) + (A089625 (n + 1) - A178562 n)

end

end A178344.P2467229622905080733

/-! ## A178344.P18407122934014903162

`∑[A178562((2*n)%A317321(n+1))]`
-/

namespace A178344.P18407122934014903162
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178562 (Int.tmod (2 * n : ℤ) (A317321 (n + 1))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A178344.P18407122934014903162

/-! ## A178344.P9490432917004101025

`A222416(A019565(n))+A080791(n)`
-/

namespace A178344.P9490432917004101025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222416 (A019565 n).toNat + A080791 n

end

end A178344.P9490432917004101025

/-!
# A178345: a(n) = 2^A006218(n)/( (n!)^2*Sum_{m=0..n} 1/(m!*(2*n-m+1)!) ).

The programs for A178345, there is no canonical definition to state claims against.
-/

/-! ## A178345.P3444462998044879828

`lcm(Δ[n²], A019554(A006963(n+1)))`
-/

namespace A178345.P3444462998044879828
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm ((f1 (n + 1) : ℤ) - (f1 n : ℤ)) (A019554 (A006963 (n + 1)).toNat)

end

end A178345.P3444462998044879828

/-! ## A178345.P2589366164169540332

`A260739((floor(n/4)+1)*A002457(n))`
-/

namespace A178345.P2589366164169540332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260739 ((⌊(n : ℚ) / 4⌋ + 1) * A002457 n).toNat

end

end A178345.P2589366164169540332

/-!
# A178346: Triangle read by rows: T(n, k, m) = binomial(n, k) - m*binomial(n, k)*binomial(n+1, k)/(k+1) + m*A008292(n+1, k+1) with m = 3.

The programs for A178346, there is no canonical definition to state claims against.
-/

/-! ## A178346.P8139598963492538945

`(A178347(n)+A007318(n))/2`
-/

namespace A178346.P8139598963492538945
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A178347 n + A007318 n : ℚ) / 2

end

end A178346.P8139598963492538945

/-! ## A178346.P12951387627383671916

`(A178347(n)+abs(A108086(n)))/2`
-/

namespace A178346.P12951387627383671916
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A178347 n + |A108086 n| : ℚ) / 2

end

end A178346.P12951387627383671916

/-! ## A178346.P4790271997478609391

`ceil((A178347(n)+A014473(n))/2)`
-/

namespace A178346.P4790271997478609391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A178347 n + A014473 n : ℚ) / 2⌉

end

end A178346.P4790271997478609391

/-! ## A178346.P189843320115308430

`(A178347(abs(1-n)+1)+A014473(n)+1)/2`
-/

namespace A178346.P189843320115308430
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A178347 (|1 - (n : ℤ)| + 1).toNat + A014473 n + 1 : ℚ) / 2

end

end A178346.P189843320115308430

/-! ## A178346.P8431330977829685675

`round((A178347(A028310(n))+A014473(n))/2)`
-/

namespace A178346.P8431330977829685675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A178347 (A028310 n).toNat + A014473 n : ℚ) / 2)

end

end A178346.P8431330977829685675

/-! ## A178346.P237508916960298769

`round((A178347(A000007(n)+n)+A014473(n))/2)`
-/

namespace A178346.P237508916960298769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A178347 (A000007 n + (n : ℤ)).toNat + A014473 n : ℚ) / 2)

end

end A178346.P237508916960298769

/-!
# A178347: Triangle t(n,m,k) = binomial(n, m) - k*(binomial(n, m)*binomial(n+1, m)/(m+1)) + k*Eulerian(n+1, m) with k = 6.

The programs for A178347, there is no canonical definition to state claims against.
-/

/-! ## A178347.P1320294800384343549

`2*A178346(n)-A007318(n)`
-/

namespace A178347.P1320294800384343549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A178346 n - A007318 n

end

end A178347.P1320294800384343549

/-! ## A178347.P4804793846524405934

`2*A178346(n)-sqrt(A008459(n))`
-/

namespace A178347.P4804793846524405934
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (2 * A178346 n : ℝ) - Real.sqrt (A008459 n : ℝ)

end

end A178347.P4804793846524405934

/-! ## A178347.P18932985746638935

`2*A178346(n)-Δ[A102363(n)]`
-/

namespace A178347.P18932985746638935
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102363 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A178346 n - (f1 (n + 1) - f1 n)

end

end A178347.P18932985746638935

/-! ## A178347.P5239658123283695033

`2*A178346(n)-A074909(A083920(n))`
-/

namespace A178347.P5239658123283695033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A178346 n - A074909 (A083920 n).toNat

end

end A178347.P5239658123283695033

/-! ## A178347.P18012619499851777050

`2*A178346(n)+A007318(n)*A260196(n+2)`
-/

namespace A178347.P18012619499851777050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A178346 n + A007318 n * A260196 (n + 2)

end

end A178347.P18012619499851777050

/-!
# A178348: a(n) = Sum_{k=0..n} 1100^k.

The programs for A178348, there is no canonical definition to state claims against.
-/

/-! ## A178348.P625474876970775664

`∑[A007088(12-and(n, -(n+1)))^n]`
-/

namespace A178348.P625474876970775664
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (12 - Int.land (n : ℤ) (-(n + 1 : ℤ))).toNat ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A178348.P625474876970775664

/-! ## A178348.P2248627332007512787

`∑[A009969(n)*A009988(n)]`
-/

namespace A178348.P2248627332007512787
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009969 n * A009988 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A178348.P2248627332007512787

/-! ## A178348.P1079571663525470520

`∑[A011557(n)²*A001020(n)]`
-/

namespace A178348.P1079571663525470520
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011557 n ^ 2 * A001020 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A178348.P1079571663525470520

/-! ## A178348.P7060214810884304108

`∑[A001020(n)*A011557(A005843(n))]`
-/

namespace A178348.P7060214810884304108
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001020 n * A011557 (A005843 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A178348.P7060214810884304108

/-!
# A178349: Partial sums of Sum_{n>=0} 1010^n.

The programs for A178349, there is no canonical definition to state claims against.
-/

/-! ## A178349.P3929175163197488079

`∑[(sin(acot(10))^-n)²*10^n]`
-/

namespace A178349.P3929175163197488079
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (Real.sin (SequenceMachineLib.acot (10 : ℝ)) ^ (-(n : ℤ) : ℤ)) ^ 2 * (10 ^ n : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A178349.P3929175163197488079

/-! ## A178349.P13977108594153421303

`∑[10*a(n-1)*A272075(A178334(n))]` with `a(0)=1`
-/

namespace A178349.P13977108594153421303
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  10 * (f1 (n - 1) * A272075 (A178334 n).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A178349.P13977108594153421303

/-! ## A178349.P11978170881345467557

`∑[A284348(A284372(n+1)+2)^n]`
-/

namespace A178349.P11978170881345467557
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284348 (A284372 (n + 1) + 2).toNat ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A178349.P11978170881345467557

/-!
# A178350: Semiprimes with both a prime number of 0's and a prime number of 1's in their binary representations.

The programs for A178350, the canonical program `A178350.P4195520603327523384` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A178350 has offset 1).

The definition of A178350 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A178350.P5429963261450507312

`filter[A343258(n+1), A064911(#)]`
-/

namespace A178350.P5429963261450507312
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343258 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A064911 (f1 j).toNat = 1) n)

end

end A178350.P5429963261450507312

namespace A178350

/-- `filter[A343258(n+1), A064911(#)]` -/
def P5429963261450507312.Spec : Prop :=
  ∀ n, P5429963261450507312.a n = A178350 (n + 1)

end A178350

/-! ## A178350.P6579509231586040333

`∩[A001358(n+1), A343258(n+1)]`
-/

namespace A178350.P6579509231586040333
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001358 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343258 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A178350.P6579509231586040333

namespace A178350

/-- `∩[A001358(n+1), A343258(n+1)]` -/
def P6579509231586040333.Spec : Prop :=
  ∀ n, (P6579509231586040333.a n : ℤ) = A178350 (n + 1)

end A178350

/-! ## A178350.P676800499765021970

`∩[A176540(n+1), A343258(n+1)]`
-/

namespace A178350.P676800499765021970
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176540 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343258 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A178350.P676800499765021970

namespace A178350

/-- `∩[A176540(n+1), A343258(n+1)]` -/
def P676800499765021970.Spec : Prop :=
  ∀ n, (P676800499765021970.a n : ℤ) = A178350 (n + 1)

end A178350

/-! ## A178350.P6670269609164776007

`∩[A186621(n+1)+1, A343258(n+1)]`
-/

namespace A178350.P6670269609164776007
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186621 (n + 1) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343258 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A178350.P6670269609164776007

namespace A178350

/-- `∩[A186621(n+1)+1, A343258(n+1)]` -/
def P6670269609164776007.Spec : Prop :=
  ∀ n, (P6670269609164776007.a n : ℤ) = A178350 (n + 1)

end A178350

/-! ## A178350.P4195520603327523384

`∩[A088707(n+1)-1, A343258(n+1)]`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A178350

/-- `∩[A088707(n+1)-1, A343258(n+1)]` -/
def P4195520603327523384.Spec : Prop :=
  ∀ n, (P4195520603327523384.a n : ℤ) = A178350 (n + 1)

theorem P4195520603327523384.correct : P4195520603327523384.Spec := by
  intro n
  simp only [A178350, Nat.add_sub_cancel]

end A178350

/-! ## A178350.P12754962941478668849

`A144214(n+1)-A169817(n+1)`
-/

namespace A178350.P12754962941478668849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144214 (n + 1) - A169817 (n + 1)

end

end A178350.P12754962941478668849

namespace A178350

/-- `A144214(n+1)-A169817(n+1)` -/
def P12754962941478668849.Spec : Prop :=
  ∀ n, P12754962941478668849.a n = A178350 (n + 1)

theorem P12754962941478668849.correct : P12754962941478668849.Spec := by
  intro n
  simp only [A178350, Nat.add_sub_cancel, A178350.P12754962941478668849.a, A178350.P4195520603327523384.f1, A178350.P4195520603327523384.f2, A178350.P4195520603327523384.a, A088707, A088707.P7291141647877559993.a, A144214, A144214.P6525772958191010318.f1, A144214.P6525772958191010318.f2, A144214.P6525772958191010318.a, A169817, A169817.P582197871743041052.a, A343258, A343258.P4371836176800830808.f1, A343258.P4371836176800830808.f2, A343258.P4371836176800830808.a, A052294, A052294.P11560629231918074628.f1, A052294.P11560629231918074628.f2, A052294.P11560629231918074628.a, A081092, A081092.P1250874932712895324.f1, A081092.P1250874932712895324.a, A100493, A100493.P3342029395979233194.f1, A100493.P3342029395979233194.a, A144213, A144213.P11436118161922588227.f1, A144213.P11436118161922588227.a, A144754, A144754.P1139666669672371896.f1, A144754.P1139666669672371896.f3, A144754.P1139666669672371896.f2, A144754.P1139666669672371896.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A001316, A001316.P6850078358198232129.a, A010051, A010051.P15078252821583414300.a, A014499, A014499.P9770580101482900462.a, A032741, A032741.P3022166995030670566.f1, A032741.P3022166995030670566.a, A072000, A072000.P3706059858088101648.a, A080791, A080791.P6131873509789506769.a, A000120, A000120.P2816527436160941581.a, A007814, A007814.P13537437864234730737.a, A036987, A036987.P1789601236562705309.a, A056811, A056811.P3378557342044572151.a, A072613, A072613.P13158909735510187267.f1, A072613.P13158909735510187267.a, A100995, A100995.P9596901243079307024.f1, A100995.P9596901243079307024.a, A193056, A193056.P6449544040074946363.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A178350

/-! ## A178350.P15306422902933708928

`p?[A343258(n+1)]-A169817(n+1)`
-/

namespace A178350.P15306422902933708928
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343258 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - A169817 (n + 1)

end

end A178350.P15306422902933708928

namespace A178350

/-- `p?[A343258(n+1)]-A169817(n+1)` -/
def P15306422902933708928.Spec : Prop :=
  ∀ n, P15306422902933708928.a n = A178350 (n + 1)

end A178350

/-! ## A178350.P15578373000408692757

`p?[A160899(A144213(n+1))]-A169817(n+1)`
-/

namespace A178350.P15578373000408692757
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160899 (A144213 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - A169817 (n + 1)

end

end A178350.P15578373000408692757

namespace A178350

/-- `p?[A160899(A144213(n+1))]-A169817(n+1)` -/
def P15578373000408692757.Spec : Prop :=
  ∀ n, P15578373000408692757.a n = A178350 (n + 1)

end A178350

/-! ## A178350.P16334811925060568421

`p?[A160899(A144754(n+1))]-A169817(n+1)`
-/

namespace A178350.P16334811925060568421
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160899 (A144754 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - A169817 (n + 1)

end

end A178350.P16334811925060568421

namespace A178350

/-- `p?[A160899(A144754(n+1))]-A169817(n+1)` -/
def P16334811925060568421.Spec : Prop :=
  ∀ n, P16334811925060568421.a n = A178350 (n + 1)

end A178350

/-!
# A178351: Number of collinear point 5-tuples in a 7 X 7 X 7 X ... n-dimensional cubic grid.

The programs for A178351, there is no canonical definition to state claims against.
-/

/-! ## A178351.P14506049248789410719

`2*11^n+13^n/2+5*9^n-15*7^n/2`
-/

namespace A178351.P14506049248789410719
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 * 11 ^ n : ℚ) + (13 ^ n : ℚ) / 2 + (5 * 9 ^ n : ℚ) - (15 * 7 ^ n : ℚ) / 2

end

end A178351.P14506049248789410719

/-!
# A178352: Number of collinear point triples in a 6 X 6 X 6 X ... n-dimensional cubic grid.

The programs for A178352, there is no canonical definition to state claims against.
-/

/-! ## A178352.P18413431409538490792

`2*8^n-9*6^n/2+12^n+18^n/2+10^n`
-/

namespace A178352.P18413431409538490792
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 * 8 ^ n : ℚ) - (9 * 6 ^ n : ℚ) / 2 + (12 ^ n : ℚ) + (18 ^ n : ℚ) / 2 + (10 ^ n : ℚ)

end

end A178352.P18413431409538490792

/-!
# A178354: Numbers m such that d(1)^1 + d(2)^2 + ... + d(p)^p = d(1)^p + d(2)^(p-1) +... + d(p)^1, where d(i), i=1..p, are the digits of m.

The programs for A178354, there is no canonical definition to state claims against.
-/

/-! ## A178354.P12566345265314884365

`eq[A248327(n)^A265525(n), A064834(n)]`
-/

namespace A178354.P12566345265314884365
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A248327 n : ℚ) ^ (A265525 n : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064834 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (f2 j : ℚ)) n

end

end A178354.P12566345265314884365

/-! ## A178354.P14191119416469167787

`eq[1, A178334(A137564(n)²)]`
-/

namespace A178354.P14191119416469167787
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178334 (A137564 n ^ 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A178354.P14191119416469167787

/-! ## A178354.P11501154056427890510

`∩[A032981(n+1), A392051(n+1)]`
-/

namespace A178354.P11501154056427890510
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032981 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392051 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A178354.P11501154056427890510

/-! ## A178354.P15003769008160443999

`eq[A095827(n+1), A226273(n)]`
-/

namespace A178354.P15003769008160443999
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095827 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226273 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A178354.P15003769008160443999

/-! ## A178354.P214944149090470566

`∩[A064222(n), A114802(n+1)]`
-/

namespace A178354.P214944149090470566
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064222 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114802 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A178354.P214944149090470566

/-!
# A178356: Fibonacci numbers whose successive digits decrease by 1.

The programs for A178356, there is no canonical definition to state claims against.
-/

/-! ## A178356.P16830210082712729312

`record[A000045(and(n, C(n, 7))+n)]`
-/

namespace A178356.P16830210082712729312
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (Nat.land n (Nat.choose n 7) + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A178356.P16830210082712729312

/-! ## A178356.P8791629839293831662

`A000045(comp[C(n+7, 7)]+C(n, 6))`
-/

namespace A178356.P8791629839293831662
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (n + 7) 7

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + Nat.choose n 6)

end

end A178356.P8791629839293831662

/-! ## A178356.P16053673552612379895

`A000045(comp[a(floor(n/7))+n])` with `a(0)=7, a(1)=2`
-/

namespace A178356.P16053673552612379895
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [7, 2] fun n f1 =>
  f1 ⌊(n : ℚ) / 7⌋.toNat + n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A178356.P16053673552612379895

/-! ## A178356.P2591871803716687919

`A000045(and(n+1, C(a(n-1), n+2))+n+1)` with `a(0)=0`
-/

namespace A178356.P2591871803716687919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A000045 (Nat.land (n + 1) (Nat.choose (a (n - 1)).toNat (n + 2)) + (n + 1))

end

end A178356.P2591871803716687919

/-!
# A178357: Numbers n such that d(1)^1 + d(2)^2 +...+ d(p)^p and d(1)^p + d(2)^p-1 +...+ d(p)^1 are prime numbers, where d(i), i=1..p, are the digits of n.

The programs for A178357, there is no canonical definition to state claims against.
-/

/-! ## A178357.P7787817249543174261

`∩[A139749(n+1), A139750(n+1)]`
-/

namespace A178357.P7787817249543174261
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139749 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139750 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A178357.P7787817249543174261

/-! ## A178357.P1114562358768427986

`∩[A139749(n+1), A380573(n+1)]`
-/

namespace A178357.P1114562358768427986
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139749 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380573 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A178357.P1114562358768427986

/-! ## A178357.P12038760391617311479

`∩[A139749(n+1), A243903(n+1)]`
-/

namespace A178357.P12038760391617311479
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139749 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243903 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A178357.P12038760391617311479

/-!
# A178358: Rounded up arithmetic mean of digits of n prepended to n, cf. A004427.

The programs for A178358, there is no canonical definition to state claims against.
-/

/-! ## A178358.P6340776541896194996

`A056965(n)+A004086(A178359(n))`
-/

namespace A178358.P6340776541896194996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056965 n + A004086 (A178359 n).toNat

end

end A178358.P6340776541896194996

/-! ## A178358.P15920659812218180831

`A004086(A178359(n))+n-A004086(n)`
-/

namespace A178358.P15920659812218180831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004086 (A178359 n).toNat + ((n : ℤ) - A004086 n)

end

end A178358.P15920659812218180831

/-! ## A178358.P7073195498452341417

`A056965(n)+A004086(A004427(n)+10*n)`
-/

namespace A178358.P7073195498452341417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056965 n + A004086 (A004427 n + (10 * n : ℤ)).toNat

end

end A178358.P7073195498452341417

/-! ## A178358.P6990988696928030190

`A056965(n)+A004086(A008592(n)+A004427(n))`
-/

namespace A178358.P6990988696928030190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056965 n + A004086 (A008592 n + A004427 n).toNat

end

end A178358.P6990988696928030190

/-! ## A178358.P3913316485857751514

`eq[A061816(n), A321538(n)]`
-/

namespace A178358.P3913316485857751514
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061816 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321538 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A178358.P3913316485857751514

/-!
# A178359: Rounded up arithmetic mean of digits of n appended to n, cf. A004427.

The programs for A178359, the canonical program `A178359.P15358575876907738801` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A178359 has offset 0).

The definition of A178359 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A004427, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A178359.P15358575876907738801

`A008592(n)+A004427(n)`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A178359

/-- `A008592(n)+A004427(n)` -/
def P15358575876907738801.Spec : Prop :=
  ∀ n, P15358575876907738801.a n = A178359 n

theorem P15358575876907738801.correct : P15358575876907738801.Spec := by
  intro n
  simp only [A178359]

end A178359

/-! ## A178359.P10404636933134181549

`A008587(n)+A008587(n)+A004427(n)`
-/

namespace A178359.P10404636933134181549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008587 n + (A008587 n + A004427 n)

end

end A178359.P10404636933134181549

namespace A178359

/-- `A008587(n)+A008587(n)+A004427(n)` -/
def P10404636933134181549.Spec : Prop :=
  ∀ n, P10404636933134181549.a n = A178359 n

theorem P10404636933134181549.correct : P10404636933134181549.Spec := by
  intro n
  simp only [A178359, Nat.add_sub_cancel, A178359.P10404636933134181549.a, A178359.P15358575876907738801.a, A004427, A004427.P8245107043003752294.a, A008587, A008587.P15238079008432610842.a, A008592, A008592.P4981059802862696142.a, A007953, A007953.P3472751987379697826.a, A055642, A055642.P4465932992276854035.f1, A055642.P4465932992276854035.a, A054899, A054899.P10770181254942084517.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A178359

/-! ## A178359.P274248027281838938

`A004427(n)+A017533(n)-A005408(n)`
-/

namespace A178359.P274248027281838938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004427 n + (A017533 n - A005408 n)

end

end A178359.P274248027281838938

namespace A178359

/-- `A004427(n)+A017533(n)-A005408(n)` -/
def P274248027281838938.Spec : Prop :=
  ∀ n, P274248027281838938.a n = A178359 n

theorem P274248027281838938.correct : P274248027281838938.Spec := by
  intro n
  simp only [A178359, Nat.add_sub_cancel, A178359.P274248027281838938.a, A178359.P15358575876907738801.a, A004427, A004427.P8245107043003752294.a, A005408, A005408.P17437947328870227736.a, A008592, A008592.P4981059802862696142.a, A017533, A017533.P146508076441825746.a, A007953, A007953.P3472751987379697826.a, A055642, A055642.P4465932992276854035.f1, A055642.P4465932992276854035.a, A054899, A054899.P10770181254942084517.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A178359

/-! ## A178359.P9963856964721065884

`A004086(A004086(n)+A178358(n)-n)`
-/

namespace A178359.P9963856964721065884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004086 (A004086 n + (A178358 n - (n : ℤ))).toNat

end

end A178359.P9963856964721065884

namespace A178359

/-- `A004086(A004086(n)+A178358(n)-n)` -/
def P9963856964721065884.Spec : Prop :=
  ∀ n, P9963856964721065884.a n = A178359 n

end A178359

/-! ## A178359.P8238693808356352511

`A004086(A004086(n)-(n-A178358(n)))`
-/

namespace A178359.P8238693808356352511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004086 (A004086 n - ((n : ℤ) - A178358 n)).toNat

end

end A178359.P8238693808356352511

namespace A178359

/-- `A004086(A004086(n)-(n-A178358(n)))` -/
def P8238693808356352511.Spec : Prop :=
  ∀ n, P8238693808356352511.a n = A178359 n

end A178359

/-! ## A178359.P17077308810210938517

`A008592(n)+A000030(A178358(n)-n)`
-/

namespace A178359.P17077308810210938517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008592 n + A000030 (A178358 n - (n : ℤ)).toNat

end

end A178359.P17077308810210938517

namespace A178359

/-- `A008592(n)+A000030(A178358(n)-n)` -/
def P17077308810210938517.Spec : Prop :=
  ∀ n, P17077308810210938517.a n = A178359 n

end A178359

/-! ## A178359.P6727903790108812366

`A345110(A178358(n))`
-/

namespace A178359.P6727903790108812366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345110 (A178358 n).toNat

end

end A178359.P6727903790108812366

namespace A178359

/-- `A345110(A178358(n))` -/
def P6727903790108812366.Spec : Prop :=
  ∀ n, P6727903790108812366.a n = A178359 n

end A178359

/-! ## A178359.P16154622201534115345

`A008592(n)+A000030(A178358(n))`
-/

namespace A178359.P16154622201534115345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008592 n + A000030 (A178358 n).toNat

end

end A178359.P16154622201534115345

namespace A178359

/-- `A008592(n)+A000030(A178358(n))` -/
def P16154622201534115345.Spec : Prop :=
  ∀ n, P16154622201534115345.a n = A178359 n

end A178359

/-!
# A178360: Numbers n such that d(1)^1 + d(2)^2 + ... + d(p)^p and d(1)^p + d(2)^p-1 +... + d(p)^1 are squares, where d(i), i=1..p, are the digits of n.

The programs for A178360, there is no canonical definition to state claims against.
-/

/-! ## A178360.P855911733502536404

`∩[A178224(n+2), A178241(n)]`
-/

namespace A178360.P855911733502536404
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178224 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178241 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A178360.P855911733502536404

/-!
# A178361: Numbers with rounded up arithmetic mean of digits = 1.

The programs for A178361, the canonical program `A178361.P8231128193257540818` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A178361 has offset 1).

The definition of A178361 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 154 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A178361.P8231128193257540818

`eq[1, A004427(n)]`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A178361

/-- `eq[1, A004427(n)]` -/
def P8231128193257540818.Spec : Prop :=
  ∀ n, (P8231128193257540818.a n : ℤ) = A178361 (n + 1)

theorem P8231128193257540818.correct : P8231128193257540818.Spec := by
  intro n
  simp only [A178361, Nat.add_sub_cancel]

end A178361

/-! ## A178361.P7515400235280491186

`lt[A004427(n+1), 2]+1`
-/

namespace A178361.P7515400235280491186
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004427 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A178361.P7515400235280491186

namespace A178361

/-- `lt[A004427(n+1), 2]+1` -/
def P7515400235280491186.Spec : Prop :=
  ∀ n, (P7515400235280491186.a n : ℤ) = A178361 (n + 1)

end A178361

/-! ## A178361.P401238524597884958

`eq[1, A178359(n)%10]`
-/

namespace A178361.P401238524597884958
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A178359 n) 10

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A178361.P401238524597884958

namespace A178361

/-- `eq[1, A178359(n)%10]` -/
def P401238524597884958.Spec : Prop :=
  ∀ n, (P401238524597884958.a n : ℤ) = A178361 (n + 1)

end A178361

/-! ## A178361.P5214936698672373969

`eq[1, A178359(n)-A008592(n)]`
-/

namespace A178361.P5214936698672373969
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178359 n - A008592 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A178361.P5214936698672373969

namespace A178361

/-- `eq[1, A178359(n)-A008592(n)]` -/
def P5214936698672373969.Spec : Prop :=
  ∀ n, (P5214936698672373969.a n : ℤ) = A178361 (n + 1)

theorem P5214936698672373969.correct : P5214936698672373969.Spec := by
  intro n
  simp only [A178361, Nat.add_sub_cancel, A178361.P5214936698672373969.f1, A178361.P5214936698672373969.f2, A178361.P5214936698672373969.a, A178361.P8231128193257540818.f1, A178361.P8231128193257540818.f2, A178361.P8231128193257540818.a, A004427, A004427.P8245107043003752294.a, A008592, A008592.P4981059802862696142.a, A178359, A178359.P15358575876907738801.a, A007953, A007953.P3472751987379697826.a, A055642, A055642.P4465932992276854035.f1, A055642.P4465932992276854035.a, A054899, A054899.P10770181254942084517.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A178361

/-! ## A178361.P17697369805679900126

`eq[1, A178359(n)/A017281(n)]`
-/

namespace A178361.P17697369805679900126
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A178359 n : ℚ) / (A017281 n : ℚ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℚ) = f2 j) n

end

end A178361.P17697369805679900126

namespace A178361

/-- `eq[1, A178359(n)/A017281(n)]` -/
def P17697369805679900126.Spec : Prop :=
  ∀ n, (P17697369805679900126.a n : ℤ) = A178361 (n + 1)

end A178361

/-!
# A178362: Numbers with rounded up arithmetic mean of digits = 2.

The programs for A178362, the canonical program `A178362.P9238834026581198290` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A178362 has offset 1).

The definition of A178362 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1420 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A178362.P9238834026581198290

`eq[2, A004427(n)]`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A178362

/-- `eq[2, A004427(n)]` -/
def P9238834026581198290.Spec : Prop :=
  ∀ n, (P9238834026581198290.a n : ℤ) = A178362 (n + 1)

theorem P9238834026581198290.correct : P9238834026581198290.Spec := by
  intro n
  simp only [A178362, Nat.add_sub_cancel]

end A178362

/-! ## A178362.P1570038602147084377

`eq[2, A178359(n)%10]`
-/

namespace A178362.P1570038602147084377
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A178359 n) 10

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A178362.P1570038602147084377

namespace A178362

/-- `eq[2, A178359(n)%10]` -/
def P1570038602147084377.Spec : Prop :=
  ∀ n, (P1570038602147084377.a n : ℤ) = A178362 (n + 1)

end A178362

/-! ## A178362.P2705369163624458564

`eq[1, A178359(n)-A017281(n)]`
-/

namespace A178362.P2705369163624458564
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178359 n - A017281 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A178362.P2705369163624458564

namespace A178362

/-- `eq[1, A178359(n)-A017281(n)]` -/
def P2705369163624458564.Spec : Prop :=
  ∀ n, (P2705369163624458564.a n : ℤ) = A178362 (n + 1)

end A178362

/-! ## A178362.P1018649938175626662

`eq[2, A178359(n)-A008592(n)]`
-/

namespace A178362.P1018649938175626662
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178359 n - A008592 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A178362.P1018649938175626662

namespace A178362

/-- `eq[2, A178359(n)-A008592(n)]` -/
def P1018649938175626662.Spec : Prop :=
  ∀ n, (P1018649938175626662.a n : ℤ) = A178362 (n + 1)

theorem P1018649938175626662.correct : P1018649938175626662.Spec := by
  intro n
  simp only [A178362, Nat.add_sub_cancel, A178362.P1018649938175626662.f1, A178362.P1018649938175626662.f2, A178362.P1018649938175626662.a, A178362.P9238834026581198290.f1, A178362.P9238834026581198290.f2, A178362.P9238834026581198290.a, A004427, A004427.P8245107043003752294.a, A008592, A008592.P4981059802862696142.a, A178359, A178359.P15358575876907738801.a, A007953, A007953.P3472751987379697826.a, A055642, A055642.P4465932992276854035.f1, A055642.P4465932992276854035.a, A054899, A054899.P10770181254942084517.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A178362

/-! ## A178362.P12249785285603331619

`eq[2, A017317(n)-A178359(n)]`
-/

namespace A178362.P12249785285603331619
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017317 n - A178359 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A178362.P12249785285603331619

namespace A178362

/-- `eq[2, A017317(n)-A178359(n)]` -/
def P12249785285603331619.Spec : Prop :=
  ∀ n, (P12249785285603331619.a n : ℤ) = A178362 (n + 1)

end A178362

/-! ## A178362.P12155631407726935067

`eq[4, A017341(n)-A178359(n)]`
-/

namespace A178362.P12155631407726935067
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017341 n - A178359 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A178362.P12155631407726935067

namespace A178362

/-- `eq[4, A017341(n)-A178359(n)]` -/
def P12155631407726935067.Spec : Prop :=
  ∀ n, (P12155631407726935067.a n : ℤ) = A178362 (n + 1)

end A178362

/-! ## A178362.P12366305521456524578

`eq[2, dr(A004185(n)-A178359(n))]`
-/

namespace A178362.P12366305521456524578
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A004185 n - A178359 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A178362.P12366305521456524578

namespace A178362

/-- `eq[2, dr(A004185(n)-A178359(n))]` -/
def P12366305521456524578.Spec : Prop :=
  ∀ n, (P12366305521456524578.a n : ℤ) = A178362 (n + 1)

end A178362

/-! ## A178362.P249671796216660826

`eq[2, ceil(A007953(n)/A055642(n))]`
-/

namespace A178362.P249671796216660826
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A007953 n : ℚ) / (A055642 n : ℚ)⌉

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A178362.P249671796216660826

namespace A178362

/-- `eq[2, ceil(A007953(n)/A055642(n))]` -/
def P249671796216660826.Spec : Prop :=
  ∀ n, (P249671796216660826.a n : ℤ) = A178362 (n + 1)

theorem P249671796216660826.correct : P249671796216660826.Spec := by
  intro n
  simp only [A178362, Nat.add_sub_cancel, A178362.P249671796216660826.f1, A178362.P249671796216660826.f2, A178362.P249671796216660826.a, A178362.P9238834026581198290.f1, A178362.P9238834026581198290.f2, A178362.P9238834026581198290.a, A004427, A004427.P8245107043003752294.a, A007953, A007953.P3472751987379697826.a, A055642, A055642.P4465932992276854035.f1, A055642.P4465932992276854035.a, A054899, A054899.P10770181254942084517.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A178362

/-! ## A178362.P8294127108912679423

`eq[2, A010879(A010879(n)+A178359(n)-n)]`
-/

namespace A178362.P8294127108912679423
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010879 (A010879 n + (A178359 n - (n : ℤ))).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A178362.P8294127108912679423

namespace A178362

/-- `eq[2, A010879(A010879(n)+A178359(n)-n)]` -/
def P8294127108912679423.Spec : Prop :=
  ∀ n, (P8294127108912679423.a n : ℤ) = A178362 (n + 1)

end A178362

/-! ## A178362.P17187974921129501448

`eq[2, A000030(A178358(n))]`
-/

namespace A178362.P17187974921129501448
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000030 (A178358 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A178362.P17187974921129501448

namespace A178362

/-- `eq[2, A000030(A178358(n))]` -/
def P17187974921129501448.Spec : Prop :=
  ∀ n, (P17187974921129501448.a n : ℤ) = A178362 (n + 1)

end A178362

/-!
# A178363: Numbers with rounded up arithmetic mean of digits = 3.

The programs for A178363, the canonical program `A178363.P6844550535724786784` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A178363 has offset 1).

The definition of A178363 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4511 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A178363.P6844550535724786784

`eq[3, A004427(n)]`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A178363

/-- `eq[3, A004427(n)]` -/
def P6844550535724786784.Spec : Prop :=
  ∀ n, (P6844550535724786784.a n : ℤ) = A178363 (n + 1)

theorem P6844550535724786784.correct : P6844550535724786784.Spec := by
  intro n
  simp only [A178363, Nat.add_sub_cancel]

end A178363

/-! ## A178363.P5729444981573622439

`eq[3, A178359(n)%10]`
-/

namespace A178363.P5729444981573622439
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A178359 n) 10

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A178363.P5729444981573622439

namespace A178363

/-- `eq[3, A178359(n)%10]` -/
def P5729444981573622439.Spec : Prop :=
  ∀ n, (P5729444981573622439.a n : ℤ) = A178363 (n + 1)

end A178363

/-! ## A178363.P12836334909607495632

`eq[1, A017317(n)-A178359(n)]`
-/

namespace A178363.P12836334909607495632
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017317 n - A178359 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A178363.P12836334909607495632

namespace A178363

/-- `eq[1, A017317(n)-A178359(n)]` -/
def P12836334909607495632.Spec : Prop :=
  ∀ n, (P12836334909607495632.a n : ℤ) = A178363 (n + 1)

end A178363

/-! ## A178363.P17003079867245049289

`eq[2, A178359(n)-A017281(n)]`
-/

namespace A178363.P17003079867245049289
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178359 n - A017281 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A178363.P17003079867245049289

namespace A178363

/-- `eq[2, A178359(n)-A017281(n)]` -/
def P17003079867245049289.Spec : Prop :=
  ∀ n, (P17003079867245049289.a n : ℤ) = A178363 (n + 1)

end A178363

/-! ## A178363.P14061532345683793550

`eq[2, A017329(n)-A178359(n)]`
-/

namespace A178363.P14061532345683793550
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017329 n - A178359 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A178363.P14061532345683793550

namespace A178363

/-- `eq[2, A017329(n)-A178359(n)]` -/
def P14061532345683793550.Spec : Prop :=
  ∀ n, (P14061532345683793550.a n : ℤ) = A178363 (n + 1)

end A178363

/-! ## A178363.P13040767627843962599

`eq[3, A017341(n)-A178359(n)]`
-/

namespace A178363.P13040767627843962599
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017341 n - A178359 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A178363.P13040767627843962599

namespace A178363

/-- `eq[3, A017341(n)-A178359(n)]` -/
def P13040767627843962599.Spec : Prop :=
  ∀ n, (P13040767627843962599.a n : ℤ) = A178363 (n + 1)

end A178363

/-! ## A178363.P2710506584299749575

`eq[4, A017353(n)-A178359(n)]`
-/

namespace A178363.P2710506584299749575
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017353 n - A178359 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A178363.P2710506584299749575

namespace A178363

/-- `eq[4, A017353(n)-A178359(n)]` -/
def P2710506584299749575.Spec : Prop :=
  ∀ n, (P2710506584299749575.a n : ℤ) = A178363 (n + 1)

end A178363

/-! ## A178363.P9004347955606818837

`eq[5, A017365(n)-A178359(n)]`
-/

namespace A178363.P9004347955606818837
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017365 n - A178359 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A178363.P9004347955606818837

namespace A178363

/-- `eq[5, A017365(n)-A178359(n)]` -/
def P9004347955606818837.Spec : Prop :=
  ∀ n, (P9004347955606818837.a n : ℤ) = A178363 (n + 1)

end A178363

/-! ## A178363.P9150636021803368652

`eq[6, A017377(n)-A178359(n)]`
-/

namespace A178363.P9150636021803368652
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017377 n - A178359 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A178363.P9150636021803368652

namespace A178363

/-- `eq[6, A017377(n)-A178359(n)]` -/
def P9150636021803368652.Spec : Prop :=
  ∀ n, (P9150636021803368652.a n : ℤ) = A178363 (n + 1)

end A178363

/-! ## A178363.P8169508769354912828

`eq[3, A000030(A178358(n))]`
-/

namespace A178363.P8169508769354912828
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000030 (A178358 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A178363.P8169508769354912828

namespace A178363

/-- `eq[3, A000030(A178358(n))]` -/
def P8169508769354912828.Spec : Prop :=
  ∀ n, (P8169508769354912828.a n : ℤ) = A178363 (n + 1)

end A178363

/-! ## A178363.P7909961291865704054

`eq[A017317(n), A103205(A178359(n)+1)]`
-/

namespace A178363.P7909961291865704054
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017317 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103205 (A178359 n + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A178363.P7909961291865704054

namespace A178363

/-- `eq[A017317(n), A103205(A178359(n)+1)]` -/
def P7909961291865704054.Spec : Prop :=
  ∀ n, (P7909961291865704054.a n : ℤ) = A178363 (n + 1)

end A178363

/-! ## A178363.P8587295298975273385

`eq[A017329(n), A026741(A178359(n)+2)]`
-/

namespace A178363.P8587295298975273385
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017329 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (A178359 n + 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A178363.P8587295298975273385

namespace A178363

/-- `eq[A017329(n), A026741(A178359(n)+2)]` -/
def P8587295298975273385.Spec : Prop :=
  ∀ n, (P8587295298975273385.a n : ℤ) = A178363 (n + 1)

end A178363

/-!
# A178364: Numbers with rounded up arithmetic mean of digits = 4.

The programs for A178364, the canonical program `A178364.P433863543401046388` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A178364 has offset 1).

The definition of A178364 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7140 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A178364.P433863543401046388

`eq[4, A004427(n)]`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A178364

/-- `eq[4, A004427(n)]` -/
def P433863543401046388.Spec : Prop :=
  ∀ n, (P433863543401046388.a n : ℤ) = A178364 (n + 1)

theorem P433863543401046388.correct : P433863543401046388.Spec := by
  intro n
  simp only [A178364, Nat.add_sub_cancel]

end A178364

/-! ## A178364.P14900838964094038891

`eq[4, A178359(n)%10]`
-/

namespace A178364.P14900838964094038891
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A178359 n) 10

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A178364.P14900838964094038891

namespace A178364

/-- `eq[4, A178359(n)%10]` -/
def P14900838964094038891.Spec : Prop :=
  ∀ n, (P14900838964094038891.a n : ℤ) = A178364 (n + 1)

end A178364

/-! ## A178364.P10534884076451807026

`eq[1, A017329(n)-A178359(n)]`
-/

namespace A178364.P10534884076451807026
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017329 n - A178359 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A178364.P10534884076451807026

namespace A178364

/-- `eq[1, A017329(n)-A178359(n)]` -/
def P10534884076451807026.Spec : Prop :=
  ∀ n, (P10534884076451807026.a n : ℤ) = A178364 (n + 1)

end A178364

/-! ## A178364.P8771569350830606075

`eq[2, A017341(n)-A178359(n)]`
-/

namespace A178364.P8771569350830606075
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017341 n - A178359 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A178364.P8771569350830606075

namespace A178364

/-- `eq[2, A017341(n)-A178359(n)]` -/
def P8771569350830606075.Spec : Prop :=
  ∀ n, (P8771569350830606075.a n : ℤ) = A178364 (n + 1)

end A178364

/-! ## A178364.P8495296610134225758

`eq[1, A178359(n)/A017317(n)]`
-/

namespace A178364.P8495296610134225758
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A178359 n : ℚ) / (A017317 n : ℚ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℚ) = f2 j) n

end

end A178364.P8495296610134225758

namespace A178364

/-- `eq[1, A178359(n)/A017317(n)]` -/
def P8495296610134225758.Spec : Prop :=
  ∀ n, (P8495296610134225758.a n : ℤ) = A178364 (n + 1)

end A178364

/-! ## A178364.P4578591494233485397

`eq[3, A017353(n)-A178359(n)]`
-/

namespace A178364.P4578591494233485397
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017353 n - A178359 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A178364.P4578591494233485397

namespace A178364

/-- `eq[3, A017353(n)-A178359(n)]` -/
def P4578591494233485397.Spec : Prop :=
  ∀ n, (P4578591494233485397.a n : ℤ) = A178364 (n + 1)

end A178364

/-! ## A178364.P16668971899323317005

`eq[4, A017365(n)-A178359(n)]`
-/

namespace A178364.P16668971899323317005
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017365 n - A178359 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A178364.P16668971899323317005

namespace A178364

/-- `eq[4, A017365(n)-A178359(n)]` -/
def P16668971899323317005.Spec : Prop :=
  ∀ n, (P16668971899323317005.a n : ℤ) = A178364 (n + 1)

end A178364

/-! ## A178364.P5882152980044321462

`eq[5, A017377(n)-A178359(n)]`
-/

namespace A178364.P5882152980044321462
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017377 n - A178359 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A178364.P5882152980044321462

namespace A178364

/-- `eq[5, A017377(n)-A178359(n)]` -/
def P5882152980044321462.Spec : Prop :=
  ∀ n, (P5882152980044321462.a n : ℤ) = A178364 (n + 1)

end A178364

/-! ## A178364.P6382344152882445584

`eq[4, A000030(A178358(n))]`
-/

namespace A178364.P6382344152882445584
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000030 (A178358 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A178364.P6382344152882445584

namespace A178364

/-- `eq[4, A000030(A178358(n))]` -/
def P6382344152882445584.Spec : Prop :=
  ∀ n, (P6382344152882445584.a n : ℤ) = A178364 (n + 1)

end A178364

/-! ## A178364.P14778724261048864364

`eq[A017317(n), A103205(A178359(n))]`
-/

namespace A178364.P14778724261048864364
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017317 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103205 (A178359 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A178364.P14778724261048864364

namespace A178364

/-- `eq[A017317(n), A103205(A178359(n))]` -/
def P14778724261048864364.Spec : Prop :=
  ∀ n, (P14778724261048864364.a n : ℤ) = A178364 (n + 1)

end A178364

/-! ## A178364.P3396244943848048751

`eq[A017329(n), A026741(A178359(n)+1)]`
-/

namespace A178364.P3396244943848048751
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017329 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (A178359 n + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A178364.P3396244943848048751

namespace A178364

/-- `eq[A017329(n), A026741(A178359(n)+1)]` -/
def P3396244943848048751.Spec : Prop :=
  ∀ n, (P3396244943848048751.a n : ℤ) = A178364 (n + 1)

end A178364

/-! ## A178364.P12637637234159704725

`eq[A017341(n), A103205(A178359(n)+2)]`
-/

namespace A178364.P12637637234159704725
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017341 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103205 (A178359 n + 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A178364.P12637637234159704725

namespace A178364

/-- `eq[A017341(n), A103205(A178359(n)+2)]` -/
def P12637637234159704725.Spec : Prop :=
  ∀ n, (P12637637234159704725.a n : ℤ) = A178364 (n + 1)

end A178364

/-!
# A178365: Numbers with rounded up arithmetic mean of digits = 5.

The programs for A178365, the canonical program `A178365.P3974075218934298230` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A178365 has offset 1).

The definition of A178365 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6441 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A178365.P3974075218934298230

`eq[5, A004427(n)]`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A178365

/-- `eq[5, A004427(n)]` -/
def P3974075218934298230.Spec : Prop :=
  ∀ n, (P3974075218934298230.a n : ℤ) = A178365 (n + 1)

theorem P3974075218934298230.correct : P3974075218934298230.Spec := by
  intro n
  simp only [A178365, Nat.add_sub_cancel]

end A178365

/-! ## A178365.P16294478280906055881

`eq[5, A178359(n)%10]`
-/

namespace A178365.P16294478280906055881
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A178359 n) 10

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A178365.P16294478280906055881

namespace A178365

/-- `eq[5, A178359(n)%10]` -/
def P16294478280906055881.Spec : Prop :=
  ∀ n, (P16294478280906055881.a n : ℤ) = A178365 (n + 1)

end A178365

/-! ## A178365.P6248201294387790907

`eq[1, A178359(n)-A017317(n)]`
-/

namespace A178365.P6248201294387790907
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178359 n - A017317 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A178365.P6248201294387790907

namespace A178365

/-- `eq[1, A178359(n)-A017317(n)]` -/
def P6248201294387790907.Spec : Prop :=
  ∀ n, (P6248201294387790907.a n : ℤ) = A178365 (n + 1)

end A178365

/-! ## A178365.P10189617498250363514

`eq[1, A017341(n)-A178359(n)]`
-/

namespace A178365.P10189617498250363514
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017341 n - A178359 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A178365.P10189617498250363514

namespace A178365

/-- `eq[1, A017341(n)-A178359(n)]` -/
def P10189617498250363514.Spec : Prop :=
  ∀ n, (P10189617498250363514.a n : ℤ) = A178365 (n + 1)

end A178365

/-! ## A178365.P1314702842007399798

`eq[2, A017353(n)-A178359(n)]`
-/

namespace A178365.P1314702842007399798
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017353 n - A178359 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A178365.P1314702842007399798

namespace A178365

/-- `eq[2, A017353(n)-A178359(n)]` -/
def P1314702842007399798.Spec : Prop :=
  ∀ n, (P1314702842007399798.a n : ℤ) = A178365 (n + 1)

end A178365

/-! ## A178365.P13870951495565178528

`eq[1, A178359(n)/A017329(n)]`
-/

namespace A178365.P13870951495565178528
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A178359 n : ℚ) / (A017329 n : ℚ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℚ) = f2 j) n

end

end A178365.P13870951495565178528

namespace A178365

/-- `eq[1, A178359(n)/A017329(n)]` -/
def P13870951495565178528.Spec : Prop :=
  ∀ n, (P13870951495565178528.a n : ℤ) = A178365 (n + 1)

end A178365

/-! ## A178365.P12924302821922995133

`eq[5, A178359(n)-A008592(n)]`
-/

namespace A178365.P12924302821922995133
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178359 n - A008592 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A178365.P12924302821922995133

namespace A178365

/-- `eq[5, A178359(n)-A008592(n)]` -/
def P12924302821922995133.Spec : Prop :=
  ∀ n, (P12924302821922995133.a n : ℤ) = A178365 (n + 1)

theorem P12924302821922995133.correct : P12924302821922995133.Spec := by
  intro n
  simp only [A178365, Nat.add_sub_cancel, A178365.P12924302821922995133.f1, A178365.P12924302821922995133.f2, A178365.P12924302821922995133.a, A178365.P3974075218934298230.f1, A178365.P3974075218934298230.f2, A178365.P3974075218934298230.a, A004427, A004427.P8245107043003752294.a, A008592, A008592.P4981059802862696142.a, A178359, A178359.P15358575876907738801.a, A007953, A007953.P3472751987379697826.a, A055642, A055642.P4465932992276854035.f1, A055642.P4465932992276854035.a, A054899, A054899.P10770181254942084517.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A178365

/-! ## A178365.P9492321182648172183

`eq[5, ceil(A007953(n)/A055642(n))]`
-/

namespace A178365.P9492321182648172183
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A007953 n : ℚ) / (A055642 n : ℚ)⌉

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A178365.P9492321182648172183

namespace A178365

/-- `eq[5, ceil(A007953(n)/A055642(n))]` -/
def P9492321182648172183.Spec : Prop :=
  ∀ n, (P9492321182648172183.a n : ℤ) = A178365 (n + 1)

theorem P9492321182648172183.correct : P9492321182648172183.Spec := by
  intro n
  simp only [A178365, Nat.add_sub_cancel, A178365.P9492321182648172183.f1, A178365.P9492321182648172183.f2, A178365.P9492321182648172183.a, A178365.P3974075218934298230.f1, A178365.P3974075218934298230.f2, A178365.P3974075218934298230.a, A004427, A004427.P8245107043003752294.a, A007953, A007953.P3472751987379697826.a, A055642, A055642.P4465932992276854035.f1, A055642.P4465932992276854035.a, A054899, A054899.P10770181254942084517.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A178365

/-! ## A178365.P5947495067695455280

`eq[5, A000030(A178358(n))]`
-/

namespace A178365.P5947495067695455280
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000030 (A178358 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A178365.P5947495067695455280

namespace A178365

/-- `eq[5, A000030(A178358(n))]` -/
def P5947495067695455280.Spec : Prop :=
  ∀ n, (P5947495067695455280.a n : ℤ) = A178365 (n + 1)

end A178365

/-! ## A178365.P782396801995514113

`eq[A017329(n), A026741(A178359(n))]`
-/

namespace A178365.P782396801995514113
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017329 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (A178359 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A178365.P782396801995514113

namespace A178365

/-- `eq[A017329(n), A026741(A178359(n))]` -/
def P782396801995514113.Spec : Prop :=
  ∀ n, (P782396801995514113.a n : ℤ) = A178365 (n + 1)

end A178365

/-! ## A178365.P8136592453441653270

`eq[A017341(n), A103205(A178359(n)+1)]`
-/

namespace A178365.P8136592453441653270
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017341 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103205 (A178359 n + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A178365.P8136592453441653270

namespace A178365

/-- `eq[A017341(n), A103205(A178359(n)+1)]` -/
def P8136592453441653270.Spec : Prop :=
  ∀ n, (P8136592453441653270.a n : ℤ) = A178365 (n + 1)

end A178365

/-! ## A178365.P14566525124802310953

`eq[A000007(n), A140082(A178359(n))]`
-/

namespace A178365.P14566525124802310953
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140082 (A178359 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A178365.P14566525124802310953

namespace A178365

/-- `eq[A000007(n), A140082(A178359(n))]` -/
def P14566525124802310953.Spec : Prop :=
  ∀ n, (P14566525124802310953.a n : ℤ) = A178365 (n + 1)

end A178365

/-!
# A178366: Numbers with rounded up arithmetic mean of digits = 6.

The programs for A178366, the canonical program `A178366.P7518788595640063131` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A178366 has offset 1).

The definition of A178366 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3585 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A178366.P7518788595640063131

`eq[6, A004427(n)]`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A178366

/-- `eq[6, A004427(n)]` -/
def P7518788595640063131.Spec : Prop :=
  ∀ n, (P7518788595640063131.a n : ℤ) = A178366 (n + 1)

theorem P7518788595640063131.correct : P7518788595640063131.Spec := by
  intro n
  simp only [A178366, Nat.add_sub_cancel]

end A178366

/-! ## A178366.P842224258327590857

`eq[6, A178359(n)%10]`
-/

namespace A178366.P842224258327590857
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A178359 n) 10

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A178366.P842224258327590857

namespace A178366

/-- `eq[6, A178359(n)%10]` -/
def P842224258327590857.Spec : Prop :=
  ∀ n, (P842224258327590857.a n : ℤ) = A178366 (n + 1)

end A178366

/-! ## A178366.P16346127961780595636

`eq[0, A017341(n)-A178359(n)]`
-/

namespace A178366.P16346127961780595636
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017341 n - A178359 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A178366.P16346127961780595636

namespace A178366

/-- `eq[0, A017341(n)-A178359(n)]` -/
def P16346127961780595636.Spec : Prop :=
  ∀ n, (P16346127961780595636.a n : ℤ) = A178366 (n + 1)

end A178366

/-! ## A178366.P3446502332829924760

`eq[1, A178359(n)-A017329(n)]`
-/

namespace A178366.P3446502332829924760
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178359 n - A017329 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A178366.P3446502332829924760

namespace A178366

/-- `eq[1, A178359(n)-A017329(n)]` -/
def P3446502332829924760.Spec : Prop :=
  ∀ n, (P3446502332829924760.a n : ℤ) = A178366 (n + 1)

end A178366

/-! ## A178366.P2831874745987263068

`eq[1, A017353(n)-A178359(n)]`
-/

namespace A178366.P2831874745987263068
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017353 n - A178359 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A178366.P2831874745987263068

namespace A178366

/-- `eq[1, A017353(n)-A178359(n)]` -/
def P2831874745987263068.Spec : Prop :=
  ∀ n, (P2831874745987263068.a n : ℤ) = A178366 (n + 1)

end A178366

/-! ## A178366.P8822208066992962246

`eq[2, A178359(n)-A017317(n)]`
-/

namespace A178366.P8822208066992962246
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178359 n - A017317 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A178366.P8822208066992962246

namespace A178366

/-- `eq[2, A178359(n)-A017317(n)]` -/
def P8822208066992962246.Spec : Prop :=
  ∀ n, (P8822208066992962246.a n : ℤ) = A178366 (n + 1)

end A178366

/-! ## A178366.P16821282776363158245

`eq[2, A017365(n)-A178359(n)]`
-/

namespace A178366.P16821282776363158245
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017365 n - A178359 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A178366.P16821282776363158245

namespace A178366

/-- `eq[2, A017365(n)-A178359(n)]` -/
def P16821282776363158245.Spec : Prop :=
  ∀ n, (P16821282776363158245.a n : ℤ) = A178366 (n + 1)

end A178366

/-! ## A178366.P11683040892721440140

`eq[5, A178359(n)-A017281(n)]`
-/

namespace A178366.P11683040892721440140
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178359 n - A017281 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A178366.P11683040892721440140

namespace A178366

/-- `eq[5, A178359(n)-A017281(n)]` -/
def P11683040892721440140.Spec : Prop :=
  ∀ n, (P11683040892721440140.a n : ℤ) = A178366 (n + 1)

end A178366

/-! ## A178366.P10760407360542817466

`eq[6, A000030(A178358(n))]`
-/

namespace A178366.P10760407360542817466
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000030 (A178358 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A178366.P10760407360542817466

namespace A178366

/-- `eq[6, A000030(A178358(n))]` -/
def P10760407360542817466.Spec : Prop :=
  ∀ n, (P10760407360542817466.a n : ℤ) = A178366 (n + 1)

end A178366

/-! ## A178366.P17979798785508286797

`eq[A017341(n), A103205(A178359(n))]`
-/

namespace A178366.P17979798785508286797
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017341 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103205 (A178359 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A178366.P17979798785508286797

namespace A178366

/-- `eq[A017341(n), A103205(A178359(n))]` -/
def P17979798785508286797.Spec : Prop :=
  ∀ n, (P17979798785508286797.a n : ℤ) = A178366 (n + 1)

end A178366

/-!
# A178367: Numbers with rounded up arithmetic mean of digits = 7.

The programs for A178367, the canonical program `A178367.P10805478532378323265` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A178367 has offset 1).

The definition of A178367 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1346 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A178367.P10805478532378323265

`eq[7, A004427(n)]`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A178367

/-- `eq[7, A004427(n)]` -/
def P10805478532378323265.Spec : Prop :=
  ∀ n, (P10805478532378323265.a n : ℤ) = A178367 (n + 1)

theorem P10805478532378323265.correct : P10805478532378323265.Spec := by
  intro n
  simp only [A178367, Nat.add_sub_cancel]

end A178367

/-! ## A178367.P8864566438003175113

`eq[7, A178359(n)%10]`
-/

namespace A178367.P8864566438003175113
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A178359 n) 10

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A178367.P8864566438003175113

namespace A178367

/-- `eq[7, A178359(n)%10]` -/
def P8864566438003175113.Spec : Prop :=
  ∀ n, (P8864566438003175113.a n : ℤ) = A178367 (n + 1)

end A178367

/-! ## A178367.P12352364372991602827

`eq[1, A178359(n)-A017341(n)]`
-/

namespace A178367.P12352364372991602827
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178359 n - A017341 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A178367.P12352364372991602827

namespace A178367

/-- `eq[1, A178359(n)-A017341(n)]` -/
def P12352364372991602827.Spec : Prop :=
  ∀ n, (P12352364372991602827.a n : ℤ) = A178367 (n + 1)

end A178367

/-! ## A178367.P3860549517990465746

`eq[1, A017365(n)-A178359(n)]`
-/

namespace A178367.P3860549517990465746
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017365 n - A178359 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A178367.P3860549517990465746

namespace A178367

/-- `eq[1, A017365(n)-A178359(n)]` -/
def P3860549517990465746.Spec : Prop :=
  ∀ n, (P3860549517990465746.a n : ℤ) = A178367 (n + 1)

end A178367

/-! ## A178367.P12615157496477757242

`eq[2, A178359(n)-A017329(n)]`
-/

namespace A178367.P12615157496477757242
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178359 n - A017329 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A178367.P12615157496477757242

namespace A178367

/-- `eq[2, A178359(n)-A017329(n)]` -/
def P12615157496477757242.Spec : Prop :=
  ∀ n, (P12615157496477757242.a n : ℤ) = A178367 (n + 1)

end A178367

/-! ## A178367.P2754432481735102846

`eq[2, A017377(n)-A178359(n)]`
-/

namespace A178367.P2754432481735102846
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017377 n - A178359 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A178367.P2754432481735102846

namespace A178367

/-- `eq[2, A017377(n)-A178359(n)]` -/
def P2754432481735102846.Spec : Prop :=
  ∀ n, (P2754432481735102846.a n : ℤ) = A178367 (n + 1)

end A178367

/-! ## A178367.P11512431177340177215

`eq[1, A178359(n)/A017353(n)]`
-/

namespace A178367.P11512431177340177215
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A178359 n : ℚ) / (A017353 n : ℚ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℚ) = f2 j) n

end

end A178367.P11512431177340177215

namespace A178367

/-- `eq[1, A178359(n)/A017353(n)]` -/
def P11512431177340177215.Spec : Prop :=
  ∀ n, (P11512431177340177215.a n : ℤ) = A178367 (n + 1)

end A178367

/-! ## A178367.P293431886741309619

`eq[0, A017317(n)-A178359(n)+3]`
-/

namespace A178367.P293431886741309619
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017317 n - A178359 n + 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A178367.P293431886741309619

namespace A178367

/-- `eq[0, A017317(n)-A178359(n)+3]` -/
def P293431886741309619.Spec : Prop :=
  ∀ n, (P293431886741309619.a n : ℤ) = A178367 (n + 1)

end A178367

/-! ## A178367.P15104967047996236397

`eq[7, A000030(A178358(n))]`
-/

namespace A178367.P15104967047996236397
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000030 (A178358 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A178367.P15104967047996236397

namespace A178367

/-- `eq[7, A000030(A178358(n))]` -/
def P15104967047996236397.Spec : Prop :=
  ∀ n, (P15104967047996236397.a n : ℤ) = A178367 (n + 1)

end A178367

/-! ## A178367.P3200586501588409497

`eq[7, A010879(A178359(n))]`
-/

namespace A178367.P3200586501588409497
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010879 (A178359 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A178367.P3200586501588409497

namespace A178367

/-- `eq[7, A010879(A178359(n))]` -/
def P3200586501588409497.Spec : Prop :=
  ∀ n, (P3200586501588409497.a n : ℤ) = A178367 (n + 1)

end A178367

/-!
# A178368: Numbers with rounded up arithmetic mean of digits = 8.

The programs for A178368, the canonical program `A178368.P9202168423804180073` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A178368 has offset 1).

The definition of A178368 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 354 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A178368.P9202168423804180073

`eq[8, A004427(n)]`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A178368

/-- `eq[8, A004427(n)]` -/
def P9202168423804180073.Spec : Prop :=
  ∀ n, (P9202168423804180073.a n : ℤ) = A178368 (n + 1)

theorem P9202168423804180073.correct : P9202168423804180073.Spec := by
  intro n
  simp only [A178368, Nat.add_sub_cancel]

end A178368

/-! ## A178368.P7387118721182105413

`eq[8, A178359(n)%10]`
-/

namespace A178368.P7387118721182105413
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A178359 n) 10

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A178368.P7387118721182105413

namespace A178368

/-- `eq[8, A178359(n)%10]` -/
def P7387118721182105413.Spec : Prop :=
  ∀ n, (P7387118721182105413.a n : ℤ) = A178368 (n + 1)

end A178368

/-! ## A178368.P17407713959485984876

`eq[8, ceil(A007953(n)/A055642(n))]`
-/

namespace A178368.P17407713959485984876
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A007953 n : ℚ) / (A055642 n : ℚ)⌉

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A178368.P17407713959485984876

namespace A178368

/-- `eq[8, ceil(A007953(n)/A055642(n))]` -/
def P17407713959485984876.Spec : Prop :=
  ∀ n, (P17407713959485984876.a n : ℤ) = A178368 (n + 1)

theorem P17407713959485984876.correct : P17407713959485984876.Spec := by
  intro n
  simp only [A178368, Nat.add_sub_cancel, A178368.P17407713959485984876.f1, A178368.P17407713959485984876.f2, A178368.P17407713959485984876.a, A178368.P9202168423804180073.f1, A178368.P9202168423804180073.f2, A178368.P9202168423804180073.a, A004427, A004427.P8245107043003752294.a, A007953, A007953.P3472751987379697826.a, A055642, A055642.P4465932992276854035.f1, A055642.P4465932992276854035.a, A054899, A054899.P10770181254942084517.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A178368

/-! ## A178368.P14017253221666890071

`record[gcd(n, A017365(n)-A178359(n))]`
-/

namespace A178368.P14017253221666890071
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n : ℤ) (A017365 n - A178359 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A178368.P14017253221666890071

namespace A178368

/-- `record[gcd(n, A017365(n)-A178359(n))]` -/
def P14017253221666890071.Spec : Prop :=
  ∀ n, (P14017253221666890071.a n : ℤ) = A178368 (n + 1)

end A178368

/-! ## A178368.P10652657565048405952

`eq[5, A159287(A178359(n)-A008592(n))]`
-/

namespace A178368.P10652657565048405952
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159287 (A178359 n - A008592 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A178368.P10652657565048405952

namespace A178368

/-- `eq[5, A159287(A178359(n)-A008592(n))]` -/
def P10652657565048405952.Spec : Prop :=
  ∀ n, (P10652657565048405952.a n : ℤ) = A178368 (n + 1)

end A178368

/-! ## A178368.P5895645156750739378

`eq[6, A134082(A178359(n)-A008592(n))]`
-/

namespace A178368.P5895645156750739378
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134082 (A178359 n - A008592 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A178368.P5895645156750739378

namespace A178368

/-- `eq[6, A134082(A178359(n)-A008592(n))]` -/
def P5895645156750739378.Spec : Prop :=
  ∀ n, (P5895645156750739378.a n : ℤ) = A178368 (n + 1)

end A178368

/-! ## A178368.P1184404589461647402

`eq[6, A159286(A178359(n)-A008592(n))]`
-/

namespace A178368.P1184404589461647402
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159286 (A178359 n - A008592 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A178368.P1184404589461647402

namespace A178368

/-- `eq[6, A159286(A178359(n)-A008592(n))]` -/
def P1184404589461647402.Spec : Prop :=
  ∀ n, (P1184404589461647402.a n : ℤ) = A178368 (n + 1)

end A178368

/-! ## A178368.P6338093853357947896

`lt[6, A001613(A178359(n)-A008592(n))]`
-/

namespace A178368.P6338093853357947896
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001613 (A178359 n - A008592 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A178368.P6338093853357947896

namespace A178368

/-- `lt[6, A001613(A178359(n)-A008592(n))]` -/
def P6338093853357947896.Spec : Prop :=
  ∀ n, (P6338093853357947896.a n : ℤ) = A178368 (n + 1)

end A178368

/-! ## A178368.P1426539397665715106

`eq[8, A000030(A178358(n))]`
-/

namespace A178368.P1426539397665715106
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000030 (A178358 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A178368.P1426539397665715106

namespace A178368

/-- `eq[8, A000030(A178358(n))]` -/
def P1426539397665715106.Spec : Prop :=
  ∀ n, (P1426539397665715106.a n : ℤ) = A178368 (n + 1)

end A178368

/-!
# A178369: Numbers with rounded up arithmetic mean of digits = 9.

The programs for A178369, there is no canonical definition to state claims against.
-/

/-! ## A178369.P14674102262489115348

`lt[8, A004427(n)]`
-/

namespace A178369.P14674102262489115348
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004427 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A178369.P14674102262489115348

/-! ## A178369.P5458945184498485320

`eq[9, A004430(n)]`
-/

namespace A178369.P5458945184498485320
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004430 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A178369.P5458945184498485320

/-! ## A178369.P13247054043821357791

`eq[3, sqrt(A178359(n)%10)]`
-/

namespace A178369.P13247054043821357791
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (Int.tmod (A178359 n) 10 : ℝ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℝ) = f2 j) n

end

end A178369.P13247054043821357791

/-! ## A178369.P6152643931724196878

`A000027(eq[9, A004427(n)])`
-/

namespace A178369.P6152643931724196878
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004427 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A178369.P6152643931724196878

/-! ## A178369.P9358958818999087177

`A028310(eq[9, A004427(n)])`
-/

namespace A178369.P9358958818999087177
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004427 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A178369.P9358958818999087177

/-!
# A178370: The trisection A178242(3n+2).

The programs for A178370, the canonical program `A178370.P6190570086360895808` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A178370 has offset 0).

The definition of A178370 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A178370.P6190570086360895808

`A178242(3*n+2)`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A178370

/-- `A178242(3*n+2)` -/
def P6190570086360895808.Spec : Prop :=
  ∀ n, P6190570086360895808.a n = A178370 n

theorem P6190570086360895808.correct : P6190570086360895808.Spec := by
  intro n
  simp only [A178370]

end A178370

/-! ## A178370.P16541889223621523731

`A060819(2+3*n)*A060819(7+3*n)`
-/

namespace A178370.P16541889223621523731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060819 (2 + 3 * n) * A060819 (7 + 3 * n)

end

end A178370.P16541889223621523731

namespace A178370

/-- `A060819(2+3*n)*A060819(7+3*n)` -/
def P16541889223621523731.Spec : Prop :=
  ∀ n, P16541889223621523731.a n = A178370 n

end A178370

/-! ## A178370.P747646419367054931

`A179436(n)/A130658(n)`
-/

namespace A178370.P747646419367054931
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A179436 n : ℚ) / (A130658 n : ℚ)

end

end A178370.P747646419367054931

namespace A178370

/-- `A179436(n)/A130658(n)` -/
def P747646419367054931.Spec : Prop :=
  ∀ n, P747646419367054931.a n = (A178370 n : ℚ)

end A178370

/-! ## A178370.P11737267597030010231

`lcm(2, 2-A027468(n+1))/2`
-/

namespace A178370.P11737267597030010231
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm 2 (2 - A027468 (n + 1)) : ℚ) / 2

end

end A178370.P11737267597030010231

namespace A178370

/-- `lcm(2, 2-A027468(n+1))/2` -/
def P11737267597030010231.Spec : Prop :=
  ∀ n, P11737267597030010231.a n = (A178370 n : ℚ)

end A178370

/-! ## A178370.P14472362714516559003

`lcm(4, 4-A163758(n+1))/4`
-/

namespace A178370.P14472362714516559003
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm 4 (4 - A163758 (n + 1)) : ℚ) / 4

end

end A178370.P14472362714516559003

namespace A178370

/-- `lcm(4, 4-A163758(n+1))/4` -/
def P14472362714516559003.Spec : Prop :=
  ∀ n, P14472362714516559003.a n = (A178370 n : ℚ)

end A178370

/-! ## A178370.P13883867641883511893

`A176672(n+2)*A302773(n)`
-/

namespace A178370.P13883867641883511893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176672 (n + 2) * A302773 n

end

end A178370.P13883867641883511893

namespace A178370

/-- `A176672(n+2)*A302773(n)` -/
def P13883867641883511893.Spec : Prop :=
  ∀ n, P13883867641883511893.a n = A178370 n

end A178370

/-! ## A178370.P2402422880153179641

`A060819(A016789(n))*A176672(n+2)`
-/

namespace A178370.P2402422880153179641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060819 (A016789 n).toNat * A176672 (n + 2)

end

end A178370.P2402422880153179641

namespace A178370

/-- `A060819(A016789(n))*A176672(n+2)` -/
def P2402422880153179641.Spec : Prop :=
  ∀ n, P2402422880153179641.a n = A178370 n

end A178370

/-! ## A178370.P2175939130222053279

`A026741(A165367(n))*A176672(n+2)`
-/

namespace A178370.P2175939130222053279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (A165367 n).toNat * A176672 (n + 2)

end

end A178370.P2175939130222053279

namespace A178370

/-- `A026741(A165367(n))*A176672(n+2)` -/
def P2175939130222053279.Spec : Prop :=
  ∀ n, P2175939130222053279.a n = A178370 n

end A178370

/-! ## A178370.P9546288631712711977

`A026741(A165355(n+2))*A302773(n)`
-/

namespace A178370.P9546288631712711977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (A165355 (n + 2)).toNat * A302773 n

end

end A178370.P9546288631712711977

namespace A178370

/-- `A026741(A165355(n+2))*A302773(n)` -/
def P9546288631712711977.Spec : Prop :=
  ∀ n, P9546288631712711977.a n = A178370 n

end A178370

/-! ## A178370.P2145786047322974311

`A165355(∑[3*n+2]+n)`
-/

namespace A178370.P2145786047322974311
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165355 (∑ j ∈ Finset.range (n + 1), f1 j + n)

end

end A178370.P2145786047322974311

namespace A178370

/-- `A165355(∑[3*n+2]+n)` -/
def P2145786047322974311.Spec : Prop :=
  ∀ n, P2145786047322974311.a n = A178370 n

end A178370

/-!
# A178371: The smallest prime p of the form j^3 + prime(n), such that the sum-of-digits of p equals prime(n).

The programs for A178371, there is no canonical definition to state claims against.
-/

/-! ## A178371.P16159635345925367519

`p?[∑[A006252(and(n, -(n+2)))]]`
-/

namespace A178371.P16159635345925367519
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006252 (Int.land (n : ℤ) (-(n + 2 : ℤ))).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A178371.P16159635345925367519

/-! ## A178371.P877034961564594868

`A000040(∑[C(11*a(n-2)-1, 2*n)])` with `a(0)=1, a(1)=1, a(2)=1, a(3)=1`
-/

namespace A178371.P877034961564594868
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 1, 1] fun n f1 =>
  Nat.choose ((11 * f1 (n - 2) : ℤ) - 1).toNat (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A178371.P877034961564594868

/-!
# A178372: Number of ways to place 8 nonattacking amazons (superqueens) on an 8 X n board.

The programs for A178372, there is no canonical definition to state claims against.
-/

/-! ## A178372.P8986954353000485106

`A325650(A000837(n))/2`
-/

namespace A178372.P8986954353000485106
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A325650 (A000837 n).toNat : ℚ) / 2

end

end A178372.P8986954353000485106

/-! ## A178372.P9237659230954099571

`A096673(A322298(n))-5`
-/

namespace A178372.P9237659230954099571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096673 (A322298 n).toNat - 5

end

end A178372.P9237659230954099571

/-! ## A178372.P1112782665012660456

`8*A353504(A036423(n))`
-/

namespace A178372.P1112782665012660456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  8 * A353504 (A036423 n).toNat

end

end A178372.P1112782665012660456

/-! ## A178372.P2687702948306485033

`Δ[A096727(A326473(n)!)]`
-/

namespace A178372.P2687702948306485033
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096727 (Nat.factorial (A326473 n).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A178372.P2687702948306485033

/-! ## A178372.P9347105402910209363

`Δ[A033865(∏[A260526(n)])]`
-/

namespace A178372.P9347105402910209363
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260526 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033865 (∏ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A178372.P9347105402910209363

/-!
# A178373: a(n) = A001969(n)^A178253(n).

The programs for A178373, there is no canonical definition to state claims against.
-/

/-! ## A178373.P7993183394533450050

`A001969(n+2)^A178253(n+2)`
-/

namespace A178373.P7993183394533450050
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001969 (n + 2) : ℚ) ^ (A178253 (n + 2) : ℤ)

end

end A178373.P7993183394533450050

/-! ## A178373.P9797078621957678470

`record[A129676(n+1)]^A178253(n+2)`
-/

namespace A178373.P9797078621957678470
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129676 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℚ) ^ (A178253 (n + 2) : ℤ)

end

end A178373.P9797078621957678470

/-! ## A178373.P15994137843991553388

`A004442(A000069(n+2))^A178253(n+2)`
-/

namespace A178373.P15994137843991553388
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A004442 (A000069 (n + 2)).toNat : ℚ) ^ (A178253 (n + 2) : ℤ)

end

end A178373.P15994137843991553388

/-!
# A178374: a(n) = A075930(n)^A178307(n).

The programs for A178374, there is no canonical definition to state claims against.
-/

/-! ## A178374.P1179624468377436160

`A075930(n)^A178307(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A178374.P1179624468377436160
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A075930 n : ℚ) ^ (A178307 (n + 1) : ℤ)

end

end A178374.P1179624468377436160

/-! ## A178374.P15010877559618448462

`A271499(n+1)^A178307(n+1)`
-/

namespace A178374.P15010877559618448462
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A271499 (n + 1) : ℚ) ^ (A178307 (n + 1) : ℤ)

end

end A178374.P15010877559618448462

/-! ## A178374.P14338416242445604480

`eq[8, A001316(n)%12]^A178307(n+1)`
-/

namespace A178374.P14338416242445604480
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001316 n) 12

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n : ℚ) ^ (A178307 (n + 1) : ℤ)

end

end A178374.P14338416242445604480

/-! ## A178374.P5354157742166846677

`eq[0, A050925(A000120(n))]^A178307(n+1)`
-/

namespace A178374.P5354157742166846677
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050925 (A000120 n).toNat

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n : ℚ) ^ (A178307 (n + 1) : ℤ)

end

end A178374.P5354157742166846677

/-! ## A178374.P2515769139049648936

`eq[2, A001222(A000120(n)+1)]^A178307(n+1)`
-/

namespace A178374.P2515769139049648936
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A000120 n + 1).toNat

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n : ℚ) ^ (A178307 (n + 1) : ℤ)

end

end A178374.P2515769139049648936

/-!
# A178375: The greatest common prime divisor of A000032(n)-1 and A001608(n), or 1 if no such divisor exists.

The programs for A178375, there is no canonical definition to state claims against.
-/

/-! ## A178375.P1806471208262454797

`A178380(A203648(n+2))`
-/

namespace A178375.P1806471208262454797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178380 (A203648 (n + 2)).toNat

end

end A178375.P1806471208262454797

/-! ## A178375.P2753216690609905427

`gcd(A174111(n), A178380(n+2))`
-/

namespace A178375.P2753216690609905427
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A174111 n) (A178380 (n + 2))

end

end A178375.P2753216690609905427

/-! ## A178375.P7841824120682839583

`A178380((n+2)*A124010(n+2))`
-/

namespace A178375.P7841824120682839583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178380 ((n + 2 : ℤ) * A124010 (n + 2)).toNat

end

end A178375.P7841824120682839583

/-! ## A178375.P17727419229450892955

`A178380(n+2)%∑[A232009(2*n+3)]`
-/

namespace A178375.P17727419229450892955
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232009 (2 * n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A178380 (n + 2)) (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A178375.P17727419229450892955

/-! ## A178375.P14843765696818129373

`A178380(Δ[A007318(A141214(n))])`
-/

namespace A178375.P14843765696818129373
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (A141214 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178380 (f1 (n + 1) - f1 n).toNat

end

end A178375.P14843765696818129373

/-!
# A178377: A (-1,-3) Somos-4 sequence associated to y^2 + y = x^3 + 4*x^2 + x.

The programs for A178377, there is no canonical definition to state claims against.
-/

/-! ## A178377.P11893598719799606657

`Δ[A068794(n+1)-A135831(n)]`
-/

namespace A178377.P11893598719799606657
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068794 (n + 1) - A135831 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A178377.P11893598719799606657

/-! ## A178377.P545720891868290961

`3-A337935(A337881(n+3))+n`
-/

namespace A178377.P545720891868290961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 - A337935 (A337881 (n + 3)).toNat + (n : ℤ)

end

end A178377.P545720891868290961

/-!
# A178378: Products of 2 primes that are the difference of 2 primes.

The programs for A178378, there is no canonical definition to state claims against.
-/

/-! ## A178378.P10107492395128721204

`A002808(A178656(n+1))`
-/

namespace A178378.P10107492395128721204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002808 (A178656 (n + 1)).toNat

end

end A178378.P10107492395128721204

/-! ## A178378.P2346447086101530999

`A018252(A178656(n+1)+1)`
-/

namespace A178378.P2346447086101530999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (A178656 (n + 1) + 1).toNat

end

end A178378.P2346447086101530999

/-! ## A178378.P2793597909228479163

`A065090(A178656(n+1)+2)`
-/

namespace A178378.P2793597909228479163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065090 (A178656 (n + 1) + 2).toNat

end

end A178378.P2793597909228479163

/-! ## A178378.P3266333489585047688

`A141468(A178656(n+1)+2)`
-/

namespace A178378.P3266333489585047688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141468 (A178656 (n + 1) + 2).toNat

end

end A178378.P3266333489585047688

/-! ## A178378.P17251400455957602054

`A067747(2*A178656(n+1))`
-/

namespace A178378.P17251400455957602054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067747 (2 * A178656 (n + 1)).toNat

end

end A178378.P17251400455957602054

/-! ## A178378.P7719381549496086195

`A173905(A178656(n+1)+4)`
-/

namespace A178378.P7719381549496086195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173905 (A178656 (n + 1) + 4).toNat

end

end A178378.P7719381549496086195

/-! ## A178378.P8645999466614308961

`A060462(A178656(n+1)+1)+1`
-/

namespace A178378.P8645999466614308961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060462 (A178656 (n + 1) + 1).toNat + 1

end

end A178378.P8645999466614308961

/-!
# A178380: The greatest common prime divisor of n, A000032(n)-1 and A001608(n), or 1 if no such greatest common divisor exists.

The programs for A178380, there is no canonical definition to state claims against.
-/

/-! ## A178380.P3466830900835748072

`A014963((n+2)%Δ[A111307(n)])`
-/

namespace A178380.P3466830900835748072
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111307 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (Int.tmod (n + 2 : ℤ) (f1 (n + 1) - f1 n)).toNat

end

end A178380.P3466830900835748072

/-! ## A178380.P10947600278156687973

`A010054(A029615(n+1))+A014963(n+2)`
-/

namespace A178380.P10947600278156687973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 (A029615 (n + 1)).toNat + A014963 (n + 2)

end

end A178380.P10947600278156687973

/-! ## A178380.P8377518127995022511

`lcm(A014963(n+2), A022931(A049251(2*(n+1))))`
-/

namespace A178380.P8377518127995022511
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A014963 (n + 2)) (A022931 (A049251 (2 * (n + 1))).toNat)

end

end A178380.P8377518127995022511

/-! ## A178380.P5374232458587404990

`gcd(A178375(n+2), A358783(n+2))`
-/

namespace A178380.P5374232458587404990
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A178375 (n + 2)) (A358783 (n + 2))

end

end A178380.P5374232458587404990

/-! ## A178380.P6563305375711660346

`A014963(n+2)+A007814(A354160(n+5))`
-/

namespace A178380.P6563305375711660346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2) + A007814 (A354160 (n + 5)).toNat

end

end A178380.P6563305375711660346

/-!
# A178381: Number of paths of length n starting at initial node of the path graph P_9.

The programs for A178381, the canonical program `A178381.P7048481444014556393` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A178381 has offset 0).

The definition of A178381 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A178381.P7048481444014556393

`5*a(n-2)-5*a(n-4)` with `a(0)=1, a(1)=1, a(2)=2, a(3)=3, a(4)=6`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A178381

/-- `5*a(n-2)-5*a(n-4)` -/
def P7048481444014556393.Spec : Prop :=
  ∀ n, P7048481444014556393.a n = A178381 n

theorem P7048481444014556393.correct : P7048481444014556393.Spec := by
  intro n
  simp only [A178381]

end A178381

/-! ## A178381.P17940329881632522518

`5*(a(n-2)-a(n-4))` with `a(0)=1, a(1)=1, a(2)=2, a(3)=3, a(4)=6`
-/

namespace A178381.P17940329881632522518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 2, 3, 6] fun n a =>
  5 * (a (n - 2) - a (n - 4))

end

end A178381.P17940329881632522518

namespace A178381

/-- `5*(a(n-2)-a(n-4))` -/
def P17940329881632522518.Spec : Prop :=
  ∀ n, P17940329881632522518.a n = A178381 n

theorem P17940329881632522518.correct : P17940329881632522518.Spec := by
  intro n
  simp only [A178381, Nat.add_sub_cancel, A178381.P17940329881632522518.a, A178381.P7048481444014556393.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A178381

/-! ## A178381.P11116651574192321204

`A068914(A167499(n+7)+3)`
-/

namespace A178381.P11116651574192321204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068914 (A167499 (n + 7) + 3).toNat

end

end A178381.P11116651574192321204

namespace A178381

/-- `A068914(A167499(n+7)+3)` -/
def P11116651574192321204.Spec : Prop :=
  ∀ n, P11116651574192321204.a n = A178381 n

end A178381

/-! ## A178381.P6389340123622202982

`A068914(A000124(n+8)+7)`
-/

namespace A178381.P6389340123622202982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068914 (A000124 (n + 8) + 7).toNat

end

end A178381.P6389340123622202982

namespace A178381

/-- `A068914(A000124(n+8)+7)` -/
def P6389340123622202982.Spec : Prop :=
  ∀ n, P6389340123622202982.a n = A178381 n

end A178381

/-! ## A178381.P5508854414002235691

`A068914(A000096(n+7)+9)`
-/

namespace A178381.P5508854414002235691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068914 (A000096 (n + 7) + 9).toNat

end

end A178381.P5508854414002235691

namespace A178381

/-- `A068914(A000096(n+7)+9)` -/
def P5508854414002235691.Spec : Prop :=
  ∀ n, P5508854414002235691.a n = A178381 n

end A178381

/-! ## A178381.P10135100118728427981

`A068914(A000217(n+8)+8)`
-/

namespace A178381.P10135100118728427981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068914 (A000217 (n + 8) + 8).toNat

end

end A178381.P10135100118728427981

namespace A178381

/-- `A068914(A000217(n+8)+8)` -/
def P10135100118728427981.Spec : Prop :=
  ∀ n, P10135100118728427981.a n = A178381 n

end A178381

/-! ## A178381.P5863305006271716089

`A068914(A133263(n+12)-A008586(n+9))`
-/

namespace A178381.P5863305006271716089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068914 (A133263 (n + 12) - A008586 (n + 9)).toNat

end

end A178381.P5863305006271716089

namespace A178381

/-- `A068914(A133263(n+12)-A008586(n+9))` -/
def P5863305006271716089.Spec : Prop :=
  ∀ n, P5863305006271716089.a n = A178381 n

end A178381

/-! ## A178381.P17020677335396207652

`A216219(A194274(n))`
-/

namespace A178381.P17020677335396207652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216219 (A194274 n).toNat

end

end A178381.P17020677335396207652

namespace A178381

/-- `A216219(A194274(n))` -/
def P17020677335396207652.Spec : Prop :=
  ∀ n, P17020677335396207652.a n = A178381 n

end A178381

/-! ## A178381.P17699606830256603161

`A216219(A007590(n+1))`
-/

namespace A178381.P17699606830256603161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216219 (A007590 (n + 1)).toNat

end

end A178381.P17699606830256603161

namespace A178381

/-- `A216219(A007590(n+1))` -/
def P17699606830256603161.Spec : Prop :=
  ∀ n, P17699606830256603161.a n = A178381 n

end A178381

/-! ## A178381.P15534724594088563520

`A216219(A080476(n+1))`
-/

namespace A178381.P15534724594088563520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216219 (A080476 (n + 1)).toNat

end

end A178381.P15534724594088563520

namespace A178381

/-- `A216219(A080476(n+1))` -/
def P15534724594088563520.Spec : Prop :=
  ∀ n, P15534724594088563520.a n = A178381 n

end A178381

/-! ## A178381.P8177062953451580907

`A216219(eq[1, A216230(n)])`
-/

namespace A178381.P8177062953451580907
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216230 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216219 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A178381.P8177062953451580907

namespace A178381

/-- `A216219(eq[1, A216230(n)])` -/
def P8177062953451580907.Spec : Prop :=
  ∀ n, P8177062953451580907.a n = A178381 n

end A178381

/-! ## A178381.P12847012674223948221

`A216219(A000982(n)+n)`
-/

namespace A178381.P12847012674223948221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216219 (A000982 n + (n : ℤ)).toNat

end

end A178381.P12847012674223948221

namespace A178381

/-- `A216219(A000982(n)+n)` -/
def P12847012674223948221.Spec : Prop :=
  ∀ n, P12847012674223948221.a n = A178381 n

end A178381

/-!
# A178382: Primes that are in classes k+ and k- for some k in the Erdős-Selfridge classification of primes.

The programs for A178382, there is no canonical definition to state claims against.
-/

/-! ## A178382.P9223589810252791955

`A000040(eq[A126433(n+1), A126805(n+1)]+1)`
-/

namespace A178382.P9223589810252791955
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126433 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126805 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1)

end

end A178382.P9223589810252791955

/-! ## A178382.P9567700933091146432

`A008578(record[A294078(3*n+2)+n])`
-/

namespace A178382.P9567700933091146432
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294078 (3 * n + 2) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A178382.P9567700933091146432

/-! ## A178382.P17376234727147845223

`eq[A003415(n), A059268(A279782(n+1))]`
-/

namespace A178382.P17376234727147845223
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059268 (A279782 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A178382.P17376234727147845223

/-! ## A178382.P12470295315346273804

`A000040(lt[A294522(2*(n+1)), A118144(n+4)])`
-/

namespace A178382.P12470295315346273804
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294522 (2 * (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118144 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A178382.P12470295315346273804

/-! ## A178382.P16916957590542067346

`A000040(lt[A330728(n+2), A330694(2*n+3)])`
-/

namespace A178382.P16916957590542067346
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330728 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330694 (2 * n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A178382.P16916957590542067346

/-!
# A178383: Primes p such that q*p+-Mod(p,q) are primes, for q=3.

The programs for A178383, there is no canonical definition to state claims against.
-/

/-! ## A178383.P12975494298342911589

`∩[A003627(n+1), A125272(n+1)]`
-/

namespace A178383.P12975494298342911589
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003627 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125272 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A178383.P12975494298342911589

/-! ## A178383.P11782601469290417927

`∩[A007528(n+1), A125272(n+1)]`
-/

namespace A178383.P11782601469290417927
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007528 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125272 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A178383.P11782601469290417927

/-! ## A178383.P14077683222177741266

`∩[A003627(n+1), A157834(n+1)]`
-/

namespace A178383.P14077683222177741266
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003627 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157834 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A178383.P14077683222177741266

/-! ## A178383.P12506123018611101134

`∩[A007528(n+1), A157834(n+1)]`
-/

namespace A178383.P12506123018611101134
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007528 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157834 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A178383.P12506123018611101134

/-! ## A178383.P13094962949735455488

`∩[A056955(n+1), A125272(n+1)]`
-/

namespace A178383.P13094962949735455488
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056955 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125272 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A178383.P13094962949735455488

/-! ## A178383.P2241206482347451706

`∩[A056955(n+1), A157834(n+1)]`
-/

namespace A178383.P2241206482347451706
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056955 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157834 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A178383.P2241206482347451706

/-! ## A178383.P9817693750490620793

`∩[A125272(n+1), A259548(n+1)]`
-/

namespace A178383.P9817693750490620793
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125272 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259548 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A178383.P9817693750490620793

/-! ## A178383.P15240911308714554824

`∩[A082406(n+1), A125272(n+1)]`
-/

namespace A178383.P15240911308714554824
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082406 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125272 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A178383.P15240911308714554824

/-! ## A178383.P7186248003032322417

`∩[A125272(n+1), A167409(n+1)]`
-/

namespace A178383.P7186248003032322417
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125272 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167409 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A178383.P7186248003032322417

/-! ## A178383.P16768251617787175382

`∩[A125272(n+1), A016969(n)]`
-/

namespace A178383.P16768251617787175382
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125272 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016969 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A178383.P16768251617787175382

/-! ## A178383.P16458908013382188554

`∩[A125272(n+1), A101328(n+2)]`
-/

namespace A178383.P16458908013382188554
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125272 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101328 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A178383.P16458908013382188554

/-! ## A178383.P11361082355273082220

`∩[A125272(n+1), A277571(n+1)]`
-/

namespace A178383.P11361082355273082220
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125272 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277571 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A178383.P11361082355273082220

/-! ## A178383.P5419269633261910617

`∩[A125272(n+1), A348934(n+1)]`
-/

namespace A178383.P5419269633261910617
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125272 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348934 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A178383.P5419269633261910617

/-! ## A178383.P12891004626171914134

`∩[A084088(n+1), A125272(n+1)]`
-/

namespace A178383.P12891004626171914134
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084088 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125272 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A178383.P12891004626171914134

/-! ## A178383.P17386180765397810322

`∩[A004612(n+1), A125272(n+1)]`
-/

namespace A178383.P17386180765397810322
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004612 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125272 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A178383.P17386180765397810322

/-! ## A178383.P7796767467458791620

`∩[A125272(n+1), A179871(n+1)]`
-/

namespace A178383.P7796767467458791620
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125272 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179871 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A178383.P7796767467458791620

/-! ## A178383.P7464178416113952489

`∩[A125272(n+1), A348931(n+1)]`
-/

namespace A178383.P7464178416113952489
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125272 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348931 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A178383.P7464178416113952489

/-! ## A178383.P4783190652494851528

`∩[A125272(n+1), A347838(n+1)]`
-/

namespace A178383.P4783190652494851528
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125272 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347838 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A178383.P4783190652494851528

/-! ## A178383.P8875731832972060205

`∩[A125272(n+1), A352273(n+1)]`
-/

namespace A178383.P8875731832972060205
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125272 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352273 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A178383.P8875731832972060205

/-! ## A178383.P17080741876505080077

`∩[A072557(n+1), A125272(n+1)]`
-/

namespace A178383.P17080741876505080077
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072557 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125272 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A178383.P17080741876505080077

/-!
# A178385: Primes p such that q*p+-Mod(p,q) are primes, for q=4.

The programs for A178385, there is no canonical definition to state claims against.
-/

/-! ## A178385.P10283289081862410296

`∩[A106015(n+1), A122869(n+1)]`
-/

namespace A178385.P10283289081862410296
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106015 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122869 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A178385.P10283289081862410296

/-! ## A178385.P1088861100193065350

`∩[A002145(n+1), A106015(n+1)]`
-/

namespace A178385.P1088861100193065350
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002145 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106015 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A178385.P1088861100193065350

/-! ## A178385.P15809958423227119183

`∩[A003626(n+1), A106015(n+1)]`
-/

namespace A178385.P15809958423227119183
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003626 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106015 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A178385.P15809958423227119183

/-! ## A178385.P7521099434637293633

`∩[A085760(n+1), A106015(n+1)]`
-/

namespace A178385.P7521099434637293633
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085760 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106015 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A178385.P7521099434637293633

/-! ## A178385.P12416193788505439835

`∩[A106015(n+1), A197504(n+1)]`
-/

namespace A178385.P12416193788505439835
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106015 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197504 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A178385.P12416193788505439835

/-! ## A178385.P15753120427164122704

`∩[A106015(n+1), A292762(n+1)]`
-/

namespace A178385.P15753120427164122704
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106015 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292762 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A178385.P15753120427164122704

/-! ## A178385.P15221857494640807481

`∩[A066499(n+1), A106015(n+1)]`
-/

namespace A178385.P15221857494640807481
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066499 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106015 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A178385.P15221857494640807481

/-! ## A178385.P16035567998065316535

`∩[A094179(n+1), A106015(n+1)]`
-/

namespace A178385.P16035567998065316535
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094179 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106015 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A178385.P16035567998065316535

/-! ## A178385.P8157035752208828434

`p?[-A073579(A174011(n+1))]`
-/

namespace A178385.P8157035752208828434
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A073579 (A174011 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A178385.P8157035752208828434

/-! ## A178385.P15142078984313934612

`record[-A073579(A174011(n+3))]`
-/

namespace A178385.P15142078984313934612
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A073579 (A174011 (n + 3)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A178385.P15142078984313934612

/-! ## A178385.P11626116239497326336

`p?[A000007(n)-A073579(A174011(n+1))]`
-/

namespace A178385.P11626116239497326336
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n - A073579 (A174011 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A178385.P11626116239497326336

/-! ## A178385.P6415864261692219830

`p?[A073579(A174011(n+1))*A260196(n)]`
-/

namespace A178385.P6415864261692219830
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073579 (A174011 (n + 1)).toNat * A260196 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A178385.P6415864261692219830

/-! ## A178385.P15873293701934568966

`p?[A000038(n)²-A073579(A174011(n+1))]`
-/

namespace A178385.P15873293701934568966
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n ^ 2 - A073579 (A174011 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A178385.P15873293701934568966

/-! ## A178385.P13331988167642827611

`p?[A000038(n+1)-A073579(A174011(n+1))]`
-/

namespace A178385.P13331988167642827611
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 (n + 1) - A073579 (A174011 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A178385.P13331988167642827611

/-! ## A178385.P17552686756250915657

`p?[A188510(2*n)-A073579(A174011(n+1))]`
-/

namespace A178385.P17552686756250915657
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188510 (2 * n) - A073579 (A174011 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A178385.P17552686756250915657

/-! ## A178385.P8222774249732742067

`p?[A004275(n)%2-A073579(A174011(n+1))]`
-/

namespace A178385.P8222774249732742067
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A004275 n) 2 - A073579 (A174011 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A178385.P8222774249732742067

/-! ## A178385.P10749170561478014022

`filter[A106015(n+1), A359152(#)]`
-/

namespace A178385.P10749170561478014022
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106015 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359152 (f1 j).toNat = 1) n)

end

end A178385.P10749170561478014022

/-! ## A178385.P14251441846875544088

`∩[A106015(n+1), A380787(n+1)]`
-/

namespace A178385.P14251441846875544088
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106015 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380787 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A178385.P14251441846875544088

/-! ## A178385.P5305564736263613625

`∩[A106015(n+1), A167181(n+1)]`
-/

namespace A178385.P5305564736263613625
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106015 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167181 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A178385.P5305564736263613625

/-! ## A178385.P7640269363479699946

`∩[A106015(n+1), A359153(n+1)]`
-/

namespace A178385.P7640269363479699946
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106015 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359153 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A178385.P7640269363479699946

/-!
# A178386: Primes p such that q*p+-Mod(p,q) are primes, for q=6.

The programs for A178386, there is no canonical definition to state claims against.
-/

/-! ## A178386.P10463032598519292363

`or(A088570(A030078(n+1)), A240084(n+1))`
-/

namespace A178386.P10463032598519292363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A088570 (A030078 (n + 1)).toNat) (A240084 (n + 1))

end

end A178386.P10463032598519292363

/-!
# A178387: Primes p such that q*p+-Mod(p,q) are primes, for q=7.

The programs for A178387, the canonical program `A178387.P5932882252809689318` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A178387 has offset 1).

The definition of A178387 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 165 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A178387.P5932882252809689318

`∩[p?[or(1, 7*n-1)], A164566(n+3)]`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A178387

/-- `∩[p?[or(1, 7*n-1)], A164566(n+3)]` -/
def P5932882252809689318.Spec : Prop :=
  ∀ n, (P5932882252809689318.a n : ℤ) = A178387 (n + 1)

theorem P5932882252809689318.correct : P5932882252809689318.Spec := by
  intro n
  simp only [A178387, Nat.add_sub_cancel]

end A178387

/-! ## A178387.P2784588944289225170

`∩[A004624(n+1), A164566(n+1)]`
-/

namespace A178387.P2784588944289225170
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004624 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164566 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A178387.P2784588944289225170

namespace A178387

/-- `∩[A004624(n+1), A164566(n+1)]` -/
def P2784588944289225170.Spec : Prop :=
  ∀ n, (P2784588944289225170.a n : ℤ) = A178387 (n + 1)

end A178387

/-! ## A178387.P4885257755036739029

`∩[A045464(n+1), A164566(n+1)]`
-/

namespace A178387.P4885257755036739029
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045464 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164566 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A178387.P4885257755036739029

namespace A178387

/-- `∩[A045464(n+1), A164566(n+1)]` -/
def P4885257755036739029.Spec : Prop :=
  ∀ n, (P4885257755036739029.a n : ℤ) = A178387 (n + 1)

end A178387

/-! ## A178387.P3490858467222017840

`∩[A045473(n+1), A164566(n+1)]`
-/

namespace A178387.P3490858467222017840
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045473 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164566 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A178387.P3490858467222017840

namespace A178387

/-- `∩[A045473(n+1), A164566(n+1)]` -/
def P3490858467222017840.Spec : Prop :=
  ∀ n, (P3490858467222017840.a n : ℤ) = A178387 (n + 1)

end A178387

/-! ## A178387.P16374498760648750719

`∩[A164566(n+1), A358053(n+1)]`
-/

namespace A178387.P16374498760648750719
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164566 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358053 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A178387.P16374498760648750719

namespace A178387

/-- `∩[A164566(n+1), A358053(n+1)]` -/
def P16374498760648750719.Spec : Prop :=
  ∀ n, (P16374498760648750719.a n : ℤ) = A178387 (n + 1)

end A178387

/-!
# A178389: Multiples of 3 in A175461.

The programs for A178389, the canonical program `A178389.P4315006235003171408` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A178389 has offset 1).

The definition of A178389 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007522, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A178389.P4315006235003171408

`3*A007522(n+1)`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A178389

/-- `3*A007522(n+1)` -/
def P4315006235003171408.Spec : Prop :=
  ∀ n, P4315006235003171408.a n = A178389 (n + 1)

theorem P4315006235003171408.correct : P4315006235003171408.Spec := by
  intro n
  simp only [A178389, Nat.add_sub_cancel]

end A178389

/-! ## A178389.P3642648689010263580

`3*p?[8*n-1]`
-/

namespace A178389.P3642648689010263580
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (8 * n : ℤ) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A178389.P3642648689010263580

namespace A178389

/-- `3*p?[8*n-1]` -/
def P3642648689010263580.Spec : Prop :=
  ∀ n, P3642648689010263580.a n = A178389 (n + 1)

theorem P3642648689010263580.correct : P3642648689010263580.Spec := by
  intro n
  simp only [A178389, Nat.add_sub_cancel, A178389.P3642648689010263580.f1, A178389.P3642648689010263580.a, A178389.P4315006235003171408.a, A007522, A007522.P292576302828348404.f1, A007522.P292576302828348404.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A178389

/-! ## A178389.P7848652235129416897

`6*p?[8*n+7]/2`
-/

namespace A178389.P7848652235129416897
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8 * n + 7

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  6 * ((f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) : ℚ) / 2)

end

end A178389.P7848652235129416897

namespace A178389

/-- `6*p?[8*n+7]/2` -/
def P7848652235129416897.Spec : Prop :=
  ∀ n, P7848652235129416897.a n = (A178389 (n + 1) : ℚ)

end A178389

/-! ## A178389.P236384980180897354

`lcm(3, p?[a(n-1)+8])` with `a(0)=7`
-/

namespace A178389.P236384980180897354
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [7] fun n f1 =>
  f1 (n - 1) + 8

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 3 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A178389.P236384980180897354

namespace A178389

/-- `lcm(3, p?[a(n-1)+8])` -/
def P236384980180897354.Spec : Prop :=
  ∀ n, (P236384980180897354.a n : ℤ) = A178389 (n + 1)

end A178389

/-! ## A178389.P14085120566100681612

`3*(A186304(n+1)+2)`
-/

namespace A178389.P14085120566100681612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * (A186304 (n + 1) + 2)

end

end A178389.P14085120566100681612

namespace A178389

/-- `3*(A186304(n+1)+2)` -/
def P14085120566100681612.Spec : Prop :=
  ∀ n, P14085120566100681612.a n = A178389 (n + 1)

theorem P14085120566100681612.correct : P14085120566100681612.Spec := by
  intro n
  simp only [A178389, Nat.add_sub_cancel, A178389.P14085120566100681612.a, A178389.P4315006235003171408.a, A007522, A007522.P292576302828348404.f1, A007522.P292576302828348404.a, A186304, A186304.P15915226160515621966.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A178389

/-! ## A178389.P6738122759518333594

`lcm(A007522(n+1), A174971(n))`
-/

namespace A178389.P6738122759518333594
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A007522 (n + 1)) (A174971 n)

end

end A178389.P6738122759518333594

namespace A178389

/-- `lcm(A007522(n+1), A174971(n))` -/
def P6738122759518333594.Spec : Prop :=
  ∀ n, (P6738122759518333594.a n : ℤ) = A178389 (n + 1)

end A178389

/-! ## A178389.P17277739490183952190

`3*A045382(n+2)`
-/

namespace A178389.P17277739490183952190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A045382 (n + 2)

end

end A178389.P17277739490183952190

namespace A178389

/-- `3*A045382(n+2)` -/
def P17277739490183952190.Spec : Prop :=
  ∀ n, P17277739490183952190.a n = A178389 (n + 1)

end A178389

/-! ## A178389.P16313973373593545556

`A007522(n+1)+A045382(n+2)+A007522(n+1)`
-/

namespace A178389.P16313973373593545556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007522 (n + 1) + (A045382 (n + 2) + A007522 (n + 1))

end

end A178389.P16313973373593545556

namespace A178389

/-- `A007522(n+1)+A045382(n+2)+A007522(n+1)` -/
def P16313973373593545556.Spec : Prop :=
  ∀ n, P16313973373593545556.a n = A178389 (n + 1)

end A178389

/-! ## A178389.P14351350940957455677

`3*record[A006530(8*(n+1)-1)]`
-/

namespace A178389.P14351350940957455677
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (8 * (n + 1) - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A178389.P14351350940957455677

namespace A178389

/-- `3*record[A006530(8*(n+1)-1)]` -/
def P14351350940957455677.Spec : Prop :=
  ∀ n, P14351350940957455677.a n = A178389 (n + 1)

end A178389

/-! ## A178389.P2885736408366549164

`3*record[A020639(or(6, 3*n+1))]`
-/

namespace A178389.P2885736408366549164
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (Nat.lor 6 (3 * n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A178389.P2885736408366549164

namespace A178389

/-- `3*record[A020639(or(6, 3*n+1))]` -/
def P2885736408366549164.Spec : Prop :=
  ∀ n, P2885736408366549164.a n = A178389 (n + 1)

end A178389

/-! ## A178389.P13088141155924996559

`A166405(A186302(n+1)+A007522(n+1))/A186302(n+1)`
-/

namespace A178389.P13088141155924996559
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A166405 (A186302 (n + 1) + A007522 (n + 1)).toNat : ℚ) / (A186302 (n + 1) : ℚ)

end

end A178389.P13088141155924996559

namespace A178389

/-- `A166405(A186302(n+1)+A007522(n+1))/A186302(n+1)` -/
def P13088141155924996559.Spec : Prop :=
  ∀ n, P13088141155924996559.a n = (A178389 (n + 1) : ℚ)

end A178389

/-! ## A178389.P4583129846421613127

`A102603(A139487(n+1))`
-/

namespace A178389.P4583129846421613127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102603 (A139487 (n + 1)).toNat

end

end A178389.P4583129846421613127

namespace A178389

/-- `A102603(A139487(n+1))` -/
def P4583129846421613127.Spec : Prop :=
  ∀ n, P4583129846421613127.a n = A178389 (n + 1)

end A178389

/-! ## A178389.P11477484496158311526

`∩[A001748(n+1), A102603(n)]`
-/

namespace A178389.P11477484496158311526
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001748 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102603 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A178389.P11477484496158311526

namespace A178389

/-- `∩[A001748(n+1), A102603(n)]` -/
def P11477484496158311526.Spec : Prop :=
  ∀ n, (P11477484496158311526.a n : ℤ) = A178389 (n + 1)

end A178389

/-! ## A178389.P15842450219253739299

`∩[A016105(n+1), A102603(n)]`
-/

namespace A178389.P15842450219253739299
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016105 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102603 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A178389.P15842450219253739299

namespace A178389

/-- `∩[A016105(n+1), A102603(n)]` -/
def P15842450219253739299.Spec : Prop :=
  ∀ n, (P15842450219253739299.a n : ℤ) = A178389 (n + 1)

end A178389

/-! ## A178389.P14964106151088163897

`∩[A063466(n+1), A102603(n)]`
-/

namespace A178389.P14964106151088163897
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063466 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102603 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A178389.P14964106151088163897

namespace A178389

/-- `∩[A063466(n+1), A102603(n)]` -/
def P14964106151088163897.Spec : Prop :=
  ∀ n, (P14964106151088163897.a n : ℤ) = A178389 (n + 1)

end A178389

/-! ## A178389.P16861860934824961618

`∩[A063534(n+1), A102603(n)]`
-/

namespace A178389.P16861860934824961618
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063534 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102603 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A178389.P16861860934824961618

namespace A178389

/-- `∩[A063534(n+1), A102603(n)]` -/
def P16861860934824961618.Spec : Prop :=
  ∀ n, (P16861860934824961618.a n : ℤ) = A178389 (n + 1)

end A178389

/-! ## A178389.P4071965504651123932

`∩[A064424(n+1), A102603(n)]`
-/

namespace A178389.P4071965504651123932
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064424 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102603 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A178389.P4071965504651123932

namespace A178389

/-- `∩[A064424(n+1), A102603(n)]` -/
def P4071965504651123932.Spec : Prop :=
  ∀ n, (P4071965504651123932.a n : ℤ) = A178389 (n + 1)

end A178389

/-! ## A178389.P569370329636800688

`∩[A112773(n+1), A102603(n)]`
-/

namespace A178389.P569370329636800688
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112773 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102603 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A178389.P569370329636800688

namespace A178389

/-- `∩[A112773(n+1), A102603(n)]` -/
def P569370329636800688.Spec : Prop :=
  ∀ n, (P569370329636800688.a n : ℤ) = A178389 (n + 1)

end A178389

/-! ## A178389.P6899131681073413404

`∩[A161345(n+1), A102603(n)]`
-/

namespace A178389.P6899131681073413404
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161345 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102603 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A178389.P6899131681073413404

namespace A178389

/-- `∩[A161345(n+1), A102603(n)]` -/
def P6899131681073413404.Spec : Prop :=
  ∀ n, (P6899131681073413404.a n : ℤ) = A178389 (n + 1)

end A178389

/-! ## A178389.P3342829958685529025

`∩[A288313(n+1), A102603(n)]`
-/

namespace A178389.P3342829958685529025
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288313 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102603 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A178389.P3342829958685529025

namespace A178389

/-- `∩[A288313(n+1), A102603(n)]` -/
def P3342829958685529025.Spec : Prop :=
  ∀ n, (P3342829958685529025.a n : ℤ) = A178389 (n + 1)

end A178389

/-!
# A178390: a(n) = (n^2 + 1)^2 + 1.

The programs for A178390, the canonical program `A178390.P15794302857108467485` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A178390 has offset 0).

The definition of A178390 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(n²+1)²+1` (program `A178390.P15794302857108467485`, by `A178390.P15794302857108467485.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A178390.P15794302857108467485

`(n²+1)²+1`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A178390

/-- `(n²+1)²+1` -/
def P15794302857108467485.Spec : Prop :=
  ∀ n, (P15794302857108467485.a n : ℤ) = A178390 n

theorem P15794302857108467485.correct : P15794302857108467485.Spec := by
  intro n
  simp only [A178390]

end A178390

/-! ## A178390.P9768887319764865770

`-xor(-1, xor(-1, n²)²)`
-/

namespace A178390.P9768887319764865770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -Int.xor (-1) (Int.xor (-1) (n ^ 2 : ℤ) ^ 2)

end

end A178390.P9768887319764865770

namespace A178390

/-- `-xor(-1, xor(-1, n²)²)` -/
def P9768887319764865770.Spec : Prop :=
  ∀ n, P9768887319764865770.a n = A178390 n

end A178390

/-! ## A178390.P13017450536198638412

`abs(n²-A304579(n))`
-/

namespace A178390.P13017450536198638412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(n ^ 2 : ℤ) - A304579 n|

end

end A178390.P13017450536198638412

namespace A178390

/-- `abs(n²-A304579(n))` -/
def P13017450536198638412.Spec : Prop :=
  ∀ n, P13017450536198638412.a n = A178390 n

end A178390

/-! ## A178390.P14658249066069159313

`abs(n²-1-A057721(n))`
-/

namespace A178390.P14658249066069159313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(n ^ 2 : ℤ) - 1 - A057721 n|

end

end A178390.P14658249066069159313

namespace A178390

/-- `abs(n²-1-A057721(n))` -/
def P14658249066069159313.Spec : Prop :=
  ∀ n, P14658249066069159313.a n = A178390 n

end A178390

/-! ## A178390.P16530722058999099764

`xor(A082044(n), A176040(n))`
-/

namespace A178390.P16530722058999099764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A082044 n) (A176040 n)

end

end A178390.P16530722058999099764

namespace A178390

/-- `xor(A082044(n), A176040(n))` -/
def P16530722058999099764.Spec : Prop :=
  ∀ n, P16530722058999099764.a n = A178390 n

end A178390

/-! ## A178390.P7804322433156250608

`xor(3, A086955(n²))`
-/

namespace A178390.P7804322433156250608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 3 (A086955 (n ^ 2))

end

end A178390.P7804322433156250608

namespace A178390

/-- `xor(3, A086955(n²))` -/
def P7804322433156250608.Spec : Prop :=
  ∀ n, P7804322433156250608.a n = A178390 n

end A178390

/-! ## A178390.P17423069863523076670

`A002522(n²+1)`
-/

namespace A178390.P17423069863523076670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002522 (n ^ 2 + 1)

end

end A178390.P17423069863523076670

namespace A178390

/-- `A002522(n²+1)` -/
def P17423069863523076670.Spec : Prop :=
  ∀ n, P17423069863523076670.a n = A178390 n

end A178390

/-! ## A178390.P4599542176631988599

`A160457(n²+2)`
-/

namespace A178390.P4599542176631988599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160457 (n ^ 2 + 2)

end

end A178390.P4599542176631988599

namespace A178390

/-- `A160457(n²+2)` -/
def P4599542176631988599.Spec : Prop :=
  ∀ n, P4599542176631988599.a n = A178390 n

theorem P4599542176631988599.correct : P4599542176631988599.Spec := by
  intro n
  simp only [A178390, Nat.add_sub_cancel, A178390.P4599542176631988599.a, A178390.P15794302857108467485.a, A160457, A160457.P13231799295759563819.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A178390

/-! ## A178390.P8227569247944180060

`A001000(∑[2*n]+1)`
-/

namespace A178390.P8227569247944180060
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001000 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A178390.P8227569247944180060

namespace A178390

/-- `A001000(∑[2*n]+1)` -/
def P8227569247944180060.Spec : Prop :=
  ∀ n, P8227569247944180060.a n = A178390 n

end A178390

/-! ## A178390.P17133279483557119884

`A271624(A059100(n))/2`
-/

namespace A178390.P17133279483557119884
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A271624 (A059100 n).toNat : ℚ) / 2

end

end A178390.P17133279483557119884

namespace A178390

/-- `A271624(A059100(n))/2` -/
def P17133279483557119884.Spec : Prop :=
  ∀ n, P17133279483557119884.a n = (A178390 n : ℚ)

end A178390

/-! ## A178390.P15834427488714794611

`sqrt(A082044(sqrt(A082044(n))))`
-/

namespace A178390.P15834427488714794611
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A082044 (SequenceMachineLib.roundAway (Real.sqrt (A082044 n : ℝ))).toNat : ℝ)

end

end A178390.P15834427488714794611

namespace A178390

/-- `sqrt(A082044(sqrt(A082044(n))))` -/
def P15834427488714794611.Spec : Prop :=
  ∀ n, P15834427488714794611.a n = (A178390 n : ℝ)

end A178390

/-! ## A178390.P14638122118711048858

`lcm(A002522(A002522(n)), A057077(n))`
-/

namespace A178390.P14638122118711048858
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A002522 (A002522 n).toNat) (A057077 n)

end

end A178390.P14638122118711048858

namespace A178390

/-- `lcm(A002522(A002522(n)), A057077(n))` -/
def P14638122118711048858.Spec : Prop :=
  ∀ n, (P14638122118711048858.a n : ℤ) = A178390 n

end A178390

/-! ## A178390.P8973873737198038396

`A002522(A002522(n))%A211851(n+1)`
-/

namespace A178390.P8973873737198038396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A002522 (A002522 n).toNat) (A211851 (n + 1))

end

end A178390.P8973873737198038396

namespace A178390

/-- `A002522(A002522(n))%A211851(n+1)` -/
def P8973873737198038396.Spec : Prop :=
  ∀ n, P8973873737198038396.a n = A178390 n

end A178390

/-! ## A178390.P11875334508907048417

`or(A002522(A002522(n)), A187036(3*(n+1)))`
-/

namespace A178390.P11875334508907048417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A002522 (A002522 n).toNat) (A187036 (3 * (n + 1)))

end

end A178390.P11875334508907048417

namespace A178390

/-- `or(A002522(A002522(n)), A187036(3*(n+1)))` -/
def P11875334508907048417.Spec : Prop :=
  ∀ n, P11875334508907048417.a n = A178390 n

end A178390

/-!
# A178391: a(n) = (n^3+1)^3+1.

The programs for A178391, there is no canonical definition to state claims against.
-/

/-! ## A178391.P11869226222065533430

`((n-1)^3+1)^3+1`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A178391.P11869226222065533430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((n : ℤ) - 1) ^ 3 + 1) ^ 3 + 1

end

end A178391.P11869226222065533430

/-! ## A178391.P1132820061748347032

`abs((A023443(n)^3+1)^3+1)`
-/

namespace A178391.P1132820061748347032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(A023443 n ^ 3 + 1) ^ 3 + 1|

end

end A178391.P1132820061748347032

/-! ## A178391.P185249293468584898

`A100214(abs(xor(-1, (n-1)^3)))/4`
-/

namespace A178391.P185249293468584898
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A100214 |Int.xor (-1) (((n : ℤ) - 1) ^ 3)|.toNat : ℚ) / 4

end

end A178391.P185249293468584898

/-!
# A178392: a(n) = (n^2 - 1)^2 - 1.

The programs for A178392, the canonical program `A178392.P3657060759824072604` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A178392 has offset 0).

The definition of A178392 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(n²-1)²-1` (program `A178392.P3657060759824072604`, by `A178392.P3657060759824072604.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A178392.P3657060759824072604

`(n²-1)²-1`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A178392

/-- `(n²-1)²-1` -/
def P3657060759824072604.Spec : Prop :=
  ∀ n, P3657060759824072604.a n = A178392 n

theorem P3657060759824072604.correct : P3657060759824072604.Spec := by
  intro n
  simp only [A178392]

end A178392

/-! ## A178392.P3138433922404822596

`(A121671(n)-1)/5`
-/

namespace A178392.P3138433922404822596
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A121671 n - 1 : ℚ) / 5

end

end A178392.P3138433922404822596

namespace A178392

/-- `(A121671(n)-1)/5` -/
def P3138433922404822596.Spec : Prop :=
  ∀ n, P3138433922404822596.a n = (A178392 n : ℚ)

theorem P3138433922404822596.correct : P3138433922404822596.Spec := by
  intro n
  simp only [A178392, Nat.add_sub_cancel, A178392.P3138433922404822596.a, A178392.P3657060759824072604.a, A121671, A121671.P11352218429020484864.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A178392

/-! ## A178392.P14707062365825530319

`n*(n^3-comp[or(1, n)])`
-/

namespace A178392.P14707062365825530319
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * ((n ^ 3 : ℤ) - (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ))

end

end A178392.P14707062365825530319

namespace A178392

/-- `n*(n^3-comp[or(1, n)])` -/
def P14707062365825530319.Spec : Prop :=
  ∀ n, P14707062365825530319.a n = A178392 n

end A178392

/-! ## A178392.P16644133433024932068

`n²*∑[record[xor(-2, -n)]]`
-/

namespace A178392.P16644133433024932068
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (-2) (-(n : ℤ))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A178392.P16644133433024932068

namespace A178392

/-- `n²*∑[record[xor(-2, -n)]]` -/
def P16644133433024932068.Spec : Prop :=
  ∀ n, P16644133433024932068.a n = A178392 n

end A178392

/-! ## A178392.P8650264402188846049

`n*(6*C(n+1, 3)-n)`
-/

namespace A178392.P8650264402188846049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * ((6 * Nat.choose (n + 1) 3 : ℤ) - (n : ℤ))

end

end A178392.P8650264402188846049

namespace A178392

/-- `n*(6*C(n+1, 3)-n)` -/
def P8650264402188846049.Spec : Prop :=
  ∀ n, P8650264402188846049.a n = A178392 n

theorem P8650264402188846049.correct : P8650264402188846049.Spec := by
  intro n
  simp only [A178392, Nat.add_sub_cancel, A178392.P8650264402188846049.a, A178392.P3657060759824072604.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A178392

/-! ## A178392.P7134779534730119447

`n*((n+1)*lcm(n, n-1)-n)`
-/

namespace A178392.P7134779534730119447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (((n + 1) * Int.lcm (n : ℤ) ((n : ℤ) - 1) : ℤ) - (n : ℤ))

end

end A178392.P7134779534730119447

namespace A178392

/-- `n*((n+1)*lcm(n, n-1)-n)` -/
def P7134779534730119447.Spec : Prop :=
  ∀ n, P7134779534730119447.a n = A178392 n

end A178392

/-! ## A178392.P15465645909334098034

`n*n*∑[a(n-1)+2]` with `a(0)=-2, a(1)=1`
-/

namespace A178392.P15465645909334098034
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [-2, 1] fun n f1 =>
  f1 (n - 1) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * ((n : ℤ) * (∑ j ∈ Finset.range (n + 1), f1 j))

end

end A178392.P15465645909334098034

namespace A178392

/-- `n*n*∑[a(n-1)+2]` -/
def P15465645909334098034.Spec : Prop :=
  ∀ n, P15465645909334098034.a n = A178392 n

end A178392

/-! ## A178392.P8722867605727683940

`n*A242135(n)`
-/

namespace A178392.P8722867605727683940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A242135 n

end

end A178392.P8722867605727683940

namespace A178392

/-- `n*A242135(n)` -/
def P8722867605727683940.Spec : Prop :=
  ∀ n, P8722867605727683940.a n = A178392 n

theorem P8722867605727683940.correct : P8722867605727683940.Spec := by
  intro n
  simp only [A178392, Nat.add_sub_cancel, A178392.P8722867605727683940.a, A178392.P3657060759824072604.a, A242135, A242135.P980314958597288477.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A178392

/-! ## A178392.P15965509146804833518

`n*(A033445(n)-1)`
-/

namespace A178392.P15965509146804833518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A033445 n - 1)

end

end A178392.P15965509146804833518

namespace A178392

/-- `n*(A033445(n)-1)` -/
def P15965509146804833518.Spec : Prop :=
  ∀ n, P15965509146804833518.a n = A178392 n

theorem P15965509146804833518.correct : P15965509146804833518.Spec := by
  intro n
  simp only [A178392, Nat.add_sub_cancel, A178392.P15965509146804833518.a, A178392.P3657060759824072604.a, A033445, A033445.P293035147362504860.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A178392

/-! ## A178392.P15227019238383150651

`n*(A121670(n)+n)`
-/

namespace A178392.P15227019238383150651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A121670 n + (n : ℤ))

end

end A178392.P15227019238383150651

namespace A178392

/-- `n*(A121670(n)+n)` -/
def P15227019238383150651.Spec : Prop :=
  ∀ n, P15227019238383150651.a n = A178392 n

theorem P15227019238383150651.correct : P15227019238383150651.Spec := by
  intro n
  simp only [A178392, Nat.add_sub_cancel, A178392.P15227019238383150651.a, A178392.P3657060759824072604.a, A121670, A121670.P867872710961214995.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A178392

/-! ## A178392.P13837326350073190388

`n*Δ[A080956(n)²]`
-/

namespace A178392.P13837326350073190388
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080956 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (f1 (n + 1) - f1 n)

end

end A178392.P13837326350073190388

namespace A178392

/-- `n*Δ[A080956(n)²]` -/
def P13837326350073190388.Spec : Prop :=
  ∀ n, P13837326350073190388.a n = A178392 n

theorem P13837326350073190388.correct : P13837326350073190388.Spec := by
  intro n
  simp only [A178392, Nat.add_sub_cancel, A178392.P13837326350073190388.f1, A178392.P13837326350073190388.a, A178392.P3657060759824072604.a, A080956, A080956.P12689175688767201437.a, A000217, A000217.P10269402890581615239.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A178392

/-! ## A178392.P3240969898473291846

`n*(A061600(n)-(n+1))`
-/

namespace A178392.P3240969898473291846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A061600 n - (n + 1 : ℤ))

end

end A178392.P3240969898473291846

namespace A178392

/-- `n*(A061600(n)-(n+1))` -/
def P3240969898473291846.Spec : Prop :=
  ∀ n, P3240969898473291846.a n = A178392 n

theorem P3240969898473291846.correct : P3240969898473291846.Spec := by
  intro n
  simp only [A178392, Nat.add_sub_cancel, A178392.P3240969898473291846.a, A178392.P3657060759824072604.a, A061600, A061600.P13083965175721826489.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A178392

/-! ## A178392.P1741891897715624287

`n*(A000578(n)-n-n)`
-/

namespace A178392.P1741891897715624287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A000578 n - (n : ℤ) - (n : ℤ))

end

end A178392.P1741891897715624287

namespace A178392

/-- `n*(A000578(n)-n-n)` -/
def P1741891897715624287.Spec : Prop :=
  ∀ n, P1741891897715624287.a n = A178392 n

theorem P1741891897715624287.correct : P1741891897715624287.Spec := by
  intro n
  simp only [A178392, Nat.add_sub_cancel, A178392.P1741891897715624287.a, A178392.P3657060759824072604.a, A000578, A000578.P12162961755414704816.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A178392

/-! ## A178392.P12130916604969768992

`n*(A177058(n+1)+n-1)`
-/

namespace A178392.P12130916604969768992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A177058 (n + 1) + ((n : ℤ) - 1))

end

end A178392.P12130916604969768992

namespace A178392

/-- `n*(A177058(n+1)+n-1)` -/
def P12130916604969768992.Spec : Prop :=
  ∀ n, P12130916604969768992.a n = A178392 n

theorem P12130916604969768992.correct : P12130916604969768992.Spec := by
  intro n
  simp only [A178392, Nat.add_sub_cancel, A178392.P12130916604969768992.a, A178392.P3657060759824072604.a, A177058, A177058.P1386879316244507660.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A178392

/-! ## A178392.P5626233700638123040

`((n+2)*(n-2)+2)*A000290(n)`
-/

namespace A178392.P5626233700638123040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 2 : ℤ) * ((n : ℤ) - 2) + 2) * A000290 n

end

end A178392.P5626233700638123040

namespace A178392

/-- `((n+2)*(n-2)+2)*A000290(n)` -/
def P5626233700638123040.Spec : Prop :=
  ∀ n, P5626233700638123040.a n = A178392 n

theorem P5626233700638123040.correct : P5626233700638123040.Spec := by
  intro n
  simp only [A178392, Nat.add_sub_cancel, A178392.P5626233700638123040.a, A178392.P3657060759824072604.a, A000290, A000290.P12206242496348924484.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A178392

/-! ## A178392.P3010786168200286267

`n*Δ[∑[A023443(n)]²]`
-/

namespace A178392.P3010786168200286267
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f2 j) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (f1 (n + 1) - f1 n)

end

end A178392.P3010786168200286267

namespace A178392

/-- `n*Δ[∑[A023443(n)]²]` -/
def P3010786168200286267.Spec : Prop :=
  ∀ n, P3010786168200286267.a n = A178392 n

end A178392

/-! ## A178392.P10045442459465060023

`n*Δ[∑[A024000(n)]²]`
-/

namespace A178392.P10045442459465060023
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024000 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f2 j) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (f1 (n + 1) - f1 n)

end

end A178392.P10045442459465060023

namespace A178392

/-- `n*Δ[∑[A024000(n)]²]` -/
def P10045442459465060023.Spec : Prop :=
  ∀ n, P10045442459465060023.a n = A178392 n

end A178392

/-! ## A178392.P6234047665480980496

`n*(A007531(n+1)-n)`
-/

namespace A178392.P6234047665480980496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A007531 (n + 1) - (n : ℤ))

end

end A178392.P6234047665480980496

namespace A178392

/-- `n*(A007531(n+1)-n)` -/
def P6234047665480980496.Spec : Prop :=
  ∀ n, P6234047665480980496.a n = A178392 n

theorem P6234047665480980496.correct : P6234047665480980496.Spec := by
  intro n
  simp only [A178392, Nat.add_sub_cancel, A178392.P6234047665480980496.a, A178392.P3657060759824072604.a, A007531, A007531.P15538264737483534371.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A178392

/-! ## A178392.P8186986908493396541

`∑[A141530(n)%A141530(n+1)]`
-/

namespace A178392.P8186986908493396541
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A141530 n) (A141530 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A178392.P8186986908493396541

namespace A178392

/-- `∑[A141530(n)%A141530(n+1)]` -/
def P8186986908493396541.Spec : Prop :=
  ∀ n, P8186986908493396541.a n = A178392 n

end A178392

/-! ## A178392.P2161832591066800794

`n*A292551(2*n)`
-/

namespace A178392.P2161832591066800794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A292551 (2 * n)

end

end A178392.P2161832591066800794

namespace A178392

/-- `n*A292551(2*n)` -/
def P2161832591066800794.Spec : Prop :=
  ∀ n, P2161832591066800794.a n = A178392 n

end A178392

/-!
# A178393: a(n) = (n^3 - 1)^3 - 1.

The programs for A178393, the canonical program `A178393.P16791006920887011293` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A178393 has offset 0).

The definition of A178393 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(n^3-1)^3-1` (program `A178393.P16791006920887011293`, by `A178393.P16791006920887011293.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A178393.P16791006920887011293

`(n^3-1)^3-1`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A178393

/-- `(n^3-1)^3-1` -/
def P16791006920887011293.Spec : Prop :=
  ∀ n, P16791006920887011293.a n = A178393 n

theorem P16791006920887011293.correct : P16791006920887011293.Spec := by
  intro n
  simp only [A178393]

end A178393

/-! ## A178393.P2082825558763783211

`xor(-1, ((-n)^3+1)^3)`
-/

namespace A178393.P2082825558763783211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (-1) (((-(n : ℤ)) ^ 3 + 1) ^ 3)

end

end A178393.P2082825558763783211

namespace A178393

/-- `xor(-1, ((-n)^3+1)^3)` -/
def P2082825558763783211.Spec : Prop :=
  ∀ n, P2082825558763783211.a n = A178393 n

end A178393

/-! ## A178393.P17324898513946183388

`-(A024001(n)^3+1)`
-/

namespace A178393.P17324898513946183388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(A024001 n ^ 3 + 1)

end

end A178393.P17324898513946183388

namespace A178393

/-- `-(A024001(n)^3+1)` -/
def P17324898513946183388.Spec : Prop :=
  ∀ n, P17324898513946183388.a n = A178393 n

theorem P17324898513946183388.correct : P17324898513946183388.Spec := by
  intro n
  simp only [A178393, Nat.add_sub_cancel, A178393.P17324898513946183388.a, A178393.P16791006920887011293.a, A024001, A024001.P5407789940977000596.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A178393

/-! ## A178393.P2412439385555890286

`(A000578(n)-2)*A060891(n)`
-/

namespace A178393.P2412439385555890286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000578 n - 2) * A060891 n

end

end A178393.P2412439385555890286

namespace A178393

/-- `(A000578(n)-2)*A060891(n)` -/
def P2412439385555890286.Spec : Prop :=
  ∀ n, P2412439385555890286.a n = A178393 n

theorem P2412439385555890286.correct : P2412439385555890286.Spec := by
  intro n
  simp only [A178393, Nat.add_sub_cancel, A178393.P2412439385555890286.a, A178393.P16791006920887011293.a, A000578, A000578.P12162961755414704816.a, A060891, A060891.P3794235143874389866.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A178393

/-! ## A178393.P11637925507885698242

`A023444(A000578(n))*A060891(n)`
-/

namespace A178393.P11637925507885698242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023444 (A000578 n).toNat * A060891 n

end

end A178393.P11637925507885698242

namespace A178393

/-- `A023444(A000578(n))*A060891(n)` -/
def P11637925507885698242.Spec : Prop :=
  ∀ n, P11637925507885698242.a n = A178393 n

end A178393

/-!
# A178395: Triangle T(n,m) read by rows: the numerator of the coefficient [x^m] of the inverse Euler polynomial E^{-1}(n,x), 0 <= m <= n.

The programs for A178395, there is no canonical definition to state claims against.
-/

/-! ## A178395.P6643179340575656430

`lcm(2, A007318(n))/2`
-/

namespace A178395.P6643179340575656430
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm 2 (A007318 n) : ℚ) / 2

end

end A178395.P6643179340575656430

/-! ## A178395.P8144182484464605393

`lcm(4, A028326(n))/4`
-/

namespace A178395.P8144182484464605393
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm 4 (A028326 n) : ℚ) / 4

end

end A178395.P8144182484464605393

/-! ## A178395.P6240222252797028877

`A026741(A007318(n))`
-/

namespace A178395.P6240222252797028877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (A007318 n).toNat

end

end A178395.P6240222252797028877

/-! ## A178395.P3906516594760286427

`A030065(A028326(n))`
-/

namespace A178395.P3906516594760286427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030065 (A028326 n).toNat

end

end A178395.P3906516594760286427

/-! ## A178395.P14660282589681518299

`A030065(A124927(n))`
-/

namespace A178395.P14660282589681518299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030065 (A124927 n).toNat

end

end A178395.P14660282589681518299

/-! ## A178395.P13454393432493805026

`A026730(A131112(n))`
-/

namespace A178395.P13454393432493805026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026730 (A131112 n).toNat

end

end A178395.P13454393432493805026

/-! ## A178395.P2060026155480892345

`A026730(A132200(n))`
-/

namespace A178395.P2060026155480892345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026730 (A132200 n).toNat

end

end A178395.P2060026155480892345

/-! ## A178395.P6279206369141257964

`A026741(A132749(n))`
-/

namespace A178395.P6279206369141257964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (A132749 n).toNat

end

end A178395.P6279206369141257964

/-! ## A178395.P11118843963150884943

`A030065(A129994(n))`
-/

namespace A178395.P11118843963150884943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030065 (A129994 n).toNat

end

end A178395.P11118843963150884943

/-! ## A178395.P17718534604144672489

`A030065(A132046(n))`
-/

namespace A178395.P17718534604144672489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030065 (A132046 n).toNat

end

end A178395.P17718534604144672489

/-!
# A178396: a(1)=1, a(n) = a(n-1)*1000 + 11^(n-1) for n>=2.

The programs for A178396, the canonical program `A178396.P8678654013217642308` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A178396 has offset 1).

The definition of A178396 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1)*1000+11^n` (program `A178396.P8678654013217642308`, by `A178396.P8678654013217642308.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A178396.P8678654013217642308

`a(n-1)*1000+11^n` with `a(0)=1`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A178396

/-- `a(n-1)*1000+11^n` -/
def P8678654013217642308.Spec : Prop :=
  ∀ n, (P8678654013217642308.a n : ℤ) = A178396 (n + 1)

theorem P8678654013217642308.correct : P8678654013217642308.Spec := by
  intro n
  simp only [A178396, Nat.add_sub_cancel]

end A178396

/-!
# A178397: Partial sums of round(7^n/10).

The programs for A178397, the canonical program `A178397.P7735034482444759513` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A178397 has offset 0).

The definition of A178397 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A178397.P6388447512638769415

`a(n-4)+40*7^(n-3)` with `a(0)=0, a(1)=1, a(2)=6, a(3)=40`
-/

namespace A178397.P6388447512638769415
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [0, 1, 6, 40] fun n a =>
  a (n - 4) + 40 * (7 : ℚ) ^ ((n : ℤ) - 3 : ℤ)

end

end A178397.P6388447512638769415

namespace A178397

/-- `a(n-4)+40*7^(n-3)` -/
def P6388447512638769415.Spec : Prop :=
  ∀ n, P6388447512638769415.a n = (A178397 n : ℚ)

end A178397

/-! ## A178397.P7735034482444759513

`8*a(n-1)-8*a(n-2)+8*a(n-3)-7*a(n-4)` with `a(0)=0, a(1)=1, a(2)=6, a(3)=40`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A178397

/-- `8*a(n-1)-8*a(n-2)+8*a(n-3)-7*a(n-4)` -/
def P7735034482444759513.Spec : Prop :=
  ∀ n, P7735034482444759513.a n = A178397 n

theorem P7735034482444759513.correct : P7735034482444759513.Spec := by
  intro n
  simp only [A178397]

end A178397

/-! ## A178397.P11938974298069507178

`round((7*7^n+5)/60)`
-/

namespace A178397.P11938974298069507178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((7 * 7 ^ n + 5 : ℚ) / 60)

end

end A178397.P11938974298069507178

namespace A178397

/-- `round((7*7^n+5)/60)` -/
def P11938974298069507178.Spec : Prop :=
  ∀ n, P11938974298069507178.a n = A178397 n

end A178397

/-! ## A178397.P16286523228256343945

`ceil(∑[(7^n)%∑[7^n]]/10)`
-/

namespace A178397.P16286523228256343945
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7 ^ n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7 ^ n % (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / 10⌉

end

end A178397.P16286523228256343945

namespace A178397

/-- `ceil(∑[(7^n)%∑[7^n]]/10)` -/
def P16286523228256343945.Spec : Prop :=
  ∀ n, P16286523228256343945.a n = A178397 n

end A178397

/-! ## A178397.P16456867098128601735

`ceil(A104896(n)/10)`
-/

namespace A178397.P16456867098128601735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A104896 n : ℚ) / 10⌉

end

end A178397.P16456867098128601735

namespace A178397

/-- `ceil(A104896(n)/10)` -/
def P16456867098128601735.Spec : Prop :=
  ∀ n, P16456867098128601735.a n = A178397 n

end A178397

/-!
# A178398: a(n) = p(p+1)^2, where p is the n-th prime.

The programs for A178398, the canonical program `A178398.P3235956670070315682` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A178398 has offset 1).

The definition of A178398 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A178398.P3235956670070315682

`A008864(n+1)*A036690(n+1)`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A178398

/-- `A008864(n+1)*A036690(n+1)` -/
def P3235956670070315682.Spec : Prop :=
  ∀ n, P3235956670070315682.a n = A178398 (n + 1)

theorem P3235956670070315682.correct : P3235956670070315682.Spec := by
  intro n
  simp only [A178398, Nat.add_sub_cancel]

end A178398

/-! ## A178398.P6823978639263603603

`A000040(n+1)*A110833(n+1)`
-/

namespace A178398.P6823978639263603603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) * A110833 (n + 1)

end

end A178398.P6823978639263603603

namespace A178398

/-- `A000040(n+1)*A110833(n+1)` -/
def P6823978639263603603.Spec : Prop :=
  ∀ n, P6823978639263603603.a n = A178398 (n + 1)

end A178398

/-! ## A178398.P3929133347158754041

`A000040(n+1)*A008864(n+1)²`
-/

namespace A178398.P3929133347158754041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) * A008864 (n + 1) ^ 2

end

end A178398.P3929133347158754041

namespace A178398

/-- `A000040(n+1)*A008864(n+1)²` -/
def P3929133347158754041.Spec : Prop :=
  ∀ n, P3929133347158754041.a n = A178398 (n + 1)

end A178398

/-! ## A178398.P10510447907280464829

`Δ[A007504(n)]*A110833(n+1)`
-/

namespace A178398.P10510447907280464829
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A110833 (n + 1)

end

end A178398.P10510447907280464829

namespace A178398

/-- `Δ[A007504(n)]*A110833(n+1)` -/
def P10510447907280464829.Spec : Prop :=
  ∀ n, P10510447907280464829.a n = A178398 (n + 1)

end A178398

/-! ## A178398.P16054847136329404336

`A083558(n+1)+A079705(n+1)`
-/

namespace A178398.P16054847136329404336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083558 (n + 1) + A079705 (n + 1)

end

end A178398.P16054847136329404336

namespace A178398

/-- `A083558(n+1)+A079705(n+1)` -/
def P16054847136329404336.Spec : Prop :=
  ∀ n, P16054847136329404336.a n = A178398 (n + 1)

end A178398

/-! ## A178398.P8496581520749537135

`A135178(n+1)+A036690(n+1)`
-/

namespace A178398.P8496581520749537135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135178 (n + 1) + A036690 (n + 1)

end

end A178398.P8496581520749537135

namespace A178398

/-- `A135178(n+1)+A036690(n+1)` -/
def P8496581520749537135.Spec : Prop :=
  ∀ n, P8496581520749537135.a n = A178398 (n + 1)

end A178398

/-! ## A178398.P2911126995937736901

`A181149(n+1)+A001248(n+1)`
-/

namespace A178398.P2911126995937736901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181149 (n + 1) + A001248 (n + 1)

end

end A178398.P2911126995937736901

namespace A178398

/-- `A181149(n+1)+A001248(n+1)` -/
def P2911126995937736901.Spec : Prop :=
  ∀ n, P2911126995937736901.a n = A178398 (n + 1)

end A178398

/-! ## A178398.P14078327036758361211

`A131991(n+1)+A084920(n+1)`
-/

namespace A178398.P14078327036758361211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131991 (n + 1) + A084920 (n + 1)

end

end A178398.P14078327036758361211

namespace A178398

/-- `A131991(n+1)+A084920(n+1)` -/
def P14078327036758361211.Spec : Prop :=
  ∀ n, P14078327036758361211.a n = A178398 (n + 1)

end A178398

/-! ## A178398.P10523092389104152124

`A181150(n+1)+A179262(n+1)`
-/

namespace A178398.P10523092389104152124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181150 (n + 1) + A179262 (n + 1)

end

end A178398.P10523092389104152124

namespace A178398

/-- `A181150(n+1)+A179262(n+1)` -/
def P10523092389104152124.Spec : Prop :=
  ∀ n, P10523092389104152124.a n = A178398 (n + 1)

end A178398

/-! ## A178398.P3936608867924201636

`A367573(n+1)+A127917(n+1)`
-/

namespace A178398.P3936608867924201636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367573 (n + 1) + A127917 (n + 1)

end

end A178398.P3936608867924201636

namespace A178398

/-- `A367573(n+1)+A127917(n+1)` -/
def P3936608867924201636.Spec : Prop :=
  ∀ n, P3936608867924201636.a n = A178398 (n + 1)

end A178398

/-! ## A178398.P493372017730131066

`A319597(n+1)+A181151(n+1)`
-/

namespace A178398.P493372017730131066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319597 (n + 1) + A181151 (n + 1)

end

end A178398.P493372017730131066

namespace A178398

/-- `A319597(n+1)+A181151(n+1)` -/
def P493372017730131066.Spec : Prop :=
  ∀ n, P493372017730131066.a n = A178398 (n + 1)

end A178398

/-! ## A178398.P6026341573949424969

`A098996(n+1)-A135178(n+1)`
-/

namespace A178398.P6026341573949424969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098996 (n + 1) - A135178 (n + 1)

end

end A178398.P6026341573949424969

namespace A178398

/-- `A098996(n+1)-A135178(n+1)` -/
def P6026341573949424969.Spec : Prop :=
  ∀ n, P6026341573949424969.a n = A178398 (n + 1)

end A178398

/-! ## A178398.P15932392904035770341

`A034953(n+1)*A089241(n+1)`
-/

namespace A178398.P15932392904035770341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034953 (n + 1) * A089241 (n + 1)

end

end A178398.P15932392904035770341

namespace A178398

/-- `A034953(n+1)*A089241(n+1)` -/
def P15932392904035770341.Spec : Prop :=
  ∀ n, P15932392904035770341.a n = A178398 (n + 1)

theorem P15932392904035770341.correct : P15932392904035770341.Spec := by
  intro n
  simp only [A178398, Nat.add_sub_cancel, A178398.P15932392904035770341.a, A178398.P3235956670070315682.a, A008864, A008864.P9177617808325052279.a, A034953, A034953.P12568728140146877898.a, A036690, A036690.P4894927351784660474.a, A089241, A089241.P4698073971912800570.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A000217, A000217.P10269402890581615239.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A178398

/-! ## A178398.P17087970779948814039

`A008864(n+1)²*Δ[A007504(n)]`
-/

namespace A178398.P17087970779948814039
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008864 (n + 1) ^ 2 * (f1 (n + 1) - f1 n)

end

end A178398.P17087970779948814039

namespace A178398

/-- `A008864(n+1)²*Δ[A007504(n)]` -/
def P17087970779948814039.Spec : Prop :=
  ∀ n, P17087970779948814039.a n = A178398 (n + 1)

end A178398

/-! ## A178398.P4791080761556327098

`A036690(n+1)²/Δ[A007504(n)]`
-/

namespace A178398.P4791080761556327098
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A036690 (n + 1) ^ 2 : ℚ) / (f1 (n + 1) - f1 n : ℚ)

end

end A178398.P4791080761556327098

namespace A178398

/-- `A036690(n+1)²/Δ[A007504(n)]` -/
def P4791080761556327098.Spec : Prop :=
  ∀ n, P4791080761556327098.a n = (A178398 (n + 1) : ℚ)

end A178398

/-! ## A178398.P12098847602797011502

`A008864(n+1)²*p?[A259153(n)]`
-/

namespace A178398.P12098847602797011502
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259153 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008864 (n + 1) ^ 2 * f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A178398.P12098847602797011502

namespace A178398

/-- `A008864(n+1)²*p?[A259153(n)]` -/
def P12098847602797011502.Spec : Prop :=
  ∀ n, P12098847602797011502.a n = A178398 (n + 1)

end A178398

/-! ## A178398.P3171246890930830551

`A181149(n+1)+A000040(n+1)²`
-/

namespace A178398.P3171246890930830551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181149 (n + 1) + A000040 (n + 1) ^ 2

end

end A178398.P3171246890930830551

namespace A178398

/-- `A181149(n+1)+A000040(n+1)²` -/
def P3171246890930830551.Spec : Prop :=
  ∀ n, P3171246890930830551.a n = A178398 (n + 1)

end A178398

/-! ## A178398.P8709695851359556053

`A036690(n+1)²/A000040(n+1)`
-/

namespace A178398.P8709695851359556053
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A036690 (n + 1) ^ 2 : ℚ) / (A000040 (n + 1) : ℚ)

end

end A178398.P8709695851359556053

namespace A178398

/-- `A036690(n+1)²/A000040(n+1)` -/
def P8709695851359556053.Spec : Prop :=
  ∀ n, P8709695851359556053.a n = (A178398 (n + 1) : ℚ)

end A178398

/-! ## A178398.P10127711514215149787

`A135178(n+1)²/A030078(n+1)`
-/

namespace A178398.P10127711514215149787
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A135178 (n + 1) ^ 2 : ℚ) / (A030078 (n + 1) : ℚ)

end

end A178398.P10127711514215149787

namespace A178398

/-- `A135178(n+1)²/A030078(n+1)` -/
def P10127711514215149787.Spec : Prop :=
  ∀ n, P10127711514215149787.a n = (A178398 (n + 1) : ℚ)

end A178398

/-! ## A178398.P4319236355421965327

`A084920(n+1)+A181149(n+1)+1`
-/

namespace A178398.P4319236355421965327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084920 (n + 1) + (A181149 (n + 1) + 1)

end

end A178398.P4319236355421965327

namespace A178398

/-- `A084920(n+1)+A181149(n+1)+1` -/
def P4319236355421965327.Spec : Prop :=
  ∀ n, P4319236355421965327.a n = A178398 (n + 1)

end A178398

/-!
# A178399: Primes p such that p is a quadratic residue modulo reverse(p) and reverse(p) is prime and a quadratic residue modulo p.

The programs for A178399, there is no canonical definition to state claims against.
-/

/-! ## A178399.P1415096686810828131

`∩[A006567(n+1), A177873(n+1)]`
-/

namespace A178399.P1415096686810828131
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006567 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177873 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A178399.P1415096686810828131

/-! ## A178399.P3045884245376055170

`∩[A007500(n+1), A177873(n+1)]`
-/

namespace A178399.P3045884245376055170
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007500 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177873 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A178399.P3045884245376055170

/-! ## A178399.P11734352329814002786

`∩[A062895(n+1), A177873(n+1)]`
-/

namespace A178399.P11734352329814002786
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062895 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177873 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A178399.P11734352329814002786

/-! ## A178399.P3070259611401727307

`∩[A068893(n+1), A177873(n+1)]`
-/

namespace A178399.P3070259611401727307
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068893 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177873 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A178399.P3070259611401727307

/-! ## A178399.P13028898001203269062

`∩[A074895(n+1), A177873(n+1)]`
-/

namespace A178399.P13028898001203269062
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074895 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177873 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A178399.P13028898001203269062

