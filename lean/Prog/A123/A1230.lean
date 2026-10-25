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
import Seq.B003.C002
import Seq.B003.C004
import Seq.B004.C000
import Seq.B004.C001
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
import Seq.Opaque.C016
import Seq.Opaque.C017
import Seq.Opaque.C018
import Seq.Opaque.C019
import Seq.Opaque.C020
import Seq.Opaque.C021
import Seq.Opaque.C022
import Seq.Opaque.C023

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A123000: a(n) is the smallest positive integer such that d(a(n))*d(a(n)+1) > d(a(n-1))*d(a(n-1)+1), where d(m) is the number of divisors of m and n > 1; a(1) = 1.

The programs for A123000, there is no canonical definition to state claims against.
-/

/-! ## A123000.P1750288255843322516

`A192488(n+1)-1`
-/

namespace A123000.P1750288255843322516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192488 (n + 1) - 1

end

end A123000.P1750288255843322516

/-! ## A123000.P11558197992585973546

`abs(A192488(n+1)+A057428(2*(n+2)))`
-/

namespace A123000.P11558197992585973546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A192488 (n + 1) + A057428 (2 * (n + 2))|

end

end A123000.P11558197992585973546

/-! ## A123000.P4126066207647784996

`xor(-A192488(n+1), A057428(2*(n+1)))`
-/

namespace A123000.P4126066207647784996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (-A192488 (n + 1)) (A057428 (2 * (n + 1)))

end

end A123000.P4126066207647784996

/-! ## A123000.P17594885614962110971

`abs(A192488(n+1)+A008683(A323504(n)))`
-/

namespace A123000.P17594885614962110971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A192488 (n + 1) + A008683 (A323504 n).toNat|

end

end A123000.P17594885614962110971

/-! ## A123000.P2030454313411709777

`A316441(A000040(n+1))+A192488(n+1)`
-/

namespace A123000.P2030454313411709777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316441 (A000040 (n + 1)).toNat + A192488 (n + 1)

end

end A123000.P2030454313411709777

/-!
# A123001: Binary numbers that start 10...

The programs for A123001, the canonical program `A123001.P475860141615088738` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A123001 has offset 1).

The definition of A123001 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1023 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A123001.P475860141615088738

`A007088(lt[n, xor(n, floor(n/2))])`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A123001

/-- `A007088(lt[n, xor(n, floor(n/2))])` -/
def P475860141615088738.Spec : Prop :=
  ∀ n, P475860141615088738.a n = A123001 (n + 1)

theorem P475860141615088738.correct : P475860141615088738.Spec := by
  intro n
  simp only [A123001, Nat.add_sub_cancel]

end A123001

/-! ## A123001.P4706874047951150665

`A007088(2^floor(log2(n+1))+n+1)`
-/

namespace A123001.P4706874047951150665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (2 ^ Nat.log 2 (n + 1) + n + 1)

end

end A123001.P4706874047951150665

namespace A123001

/-- `A007088(2^floor(log2(n+1))+n+1)` -/
def P4706874047951150665.Spec : Prop :=
  ∀ n, P4706874047951150665.a n = A123001 (n + 1)

end A123001

/-! ## A123001.P11348819964268739236

`A185544(A171757(n+2))`
-/

namespace A123001.P11348819964268739236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (A171757 (n + 2)).toNat

end

end A123001.P11348819964268739236

namespace A123001

/-- `A185544(A171757(n+2))` -/
def P11348819964268739236.Spec : Prop :=
  ∀ n, P11348819964268739236.a n = A123001 (n + 1)

end A123001

/-! ## A123001.P10050905561604303066

`A185544(A004754(2*(n+1)))`
-/

namespace A123001.P10050905561604303066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (A004754 (2 * (n + 1))).toNat

end

end A123001.P10050905561604303066

namespace A123001

/-- `A185544(A004754(2*(n+1)))` -/
def P10050905561604303066.Spec : Prop :=
  ∀ n, P10050905561604303066.a n = A123001 (n + 1)

end A123001

/-! ## A123001.P3004780810453930060

`A139707(2*A139708(n+1))`
-/

namespace A123001.P3004780810453930060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139707 (2 * A139708 (n + 1)).toNat

end

end A123001.P3004780810453930060

namespace A123001

/-- `A139707(2*A139708(n+1))` -/
def P3004780810453930060.Spec : Prop :=
  ∀ n, P3004780810453930060.a n = A123001 (n + 1)

end A123001

/-! ## A123001.P16475999921759002427

`∪[A171758(n+1), A171764(n+1)]`
-/

namespace A123001.P16475999921759002427
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171758 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171764 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A123001.P16475999921759002427

namespace A123001

/-- `∪[A171758(n+1), A171764(n+1)]` -/
def P16475999921759002427.Spec : Prop :=
  ∀ n, (P16475999921759002427.a n : ℤ) = A123001 (n + 1)

end A123001

/-! ## A123001.P47692191958283672

`A139707(A139708(n+1)+A139708(n+1))`
-/

namespace A123001.P47692191958283672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139707 (A139708 (n + 1) + A139708 (n + 1)).toNat

end

end A123001.P47692191958283672

namespace A123001

/-- `A139707(A139708(n+1)+A139708(n+1))` -/
def P47692191958283672.Spec : Prop :=
  ∀ n, P47692191958283672.a n = A123001 (n + 1)

end A123001

/-!
# A123002: Triangle read by rows: T(n, k) = 2^(n-1)*(2*k - 1) - 2^(k-1)*(2*n - 1).

The programs for A123002, the canonical program `A123002.P14889783976054553407` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A123002 has offset 1).

The definition of A123002 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A123002.P14889783976054553407

`A118416(n+1)-A118413(n+1)`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A123002

/-- `A118416(n+1)-A118413(n+1)` -/
def P14889783976054553407.Spec : Prop :=
  ∀ n, P14889783976054553407.a n = A123002 (n + 1)

theorem P14889783976054553407.correct : P14889783976054553407.Spec := by
  intro n
  simp only [A123002, Nat.add_sub_cancel]

end A123002

/-! ## A123002.P5396124904784772268

`(A054582(n)-A131507(n))*A059268(n)`
-/

namespace A123002.P5396124904784772268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A054582 n - A131507 n) * A059268 n

end

end A123002.P5396124904784772268

namespace A123002

/-- `(A054582(n)-A131507(n))*A059268(n)` -/
def P5396124904784772268.Spec : Prop :=
  ∀ n, P5396124904784772268.a n = A123002 (n + 1)

theorem P5396124904784772268.correct : P5396124904784772268.Spec := by
  intro n
  simp only [A123002, Nat.add_sub_cancel, A123002.P5396124904784772268.a, A123002.P14889783976054553407.a, A054582, A054582.P5354780868819048885.a, A059268, A059268.P15217573790077737885.a, A118413, A118413.P8171649626606925658.a, A118416, A118416.P17695903883508484901.a, A131507, A131507.P15949945766004013839.a, A000079, A000079.P10855139691139572931.a, A018900, A018900.P2868698677378612256.a, A025581, A025581.P420762180635059694.a, A094727, A094727.P1759177724676722475.a, A140513, A140513.P13579608035938851890.a, A002024, A002024.P11700297927830783882.a, A002260, A002260.P769748059679640451.a, A002262, A002262.P12129691700837801527.a, A003056, A003056.P5318256527314048597.a, A004736, A004736.P10337537277358081527.a, A137688, A137688.P9746695207037186753.a, A000217, A000217.P10269402890581615239.a, A057944, A057944.P16851463738746886639.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A123002

/-! ## A123002.P11439938077048396691

`A054582(n)*A059268(n)-A118413(n+1)`
-/

namespace A123002.P11439938077048396691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054582 n * A059268 n - A118413 (n + 1)

end

end A123002.P11439938077048396691

namespace A123002

/-- `A054582(n)*A059268(n)-A118413(n+1)` -/
def P11439938077048396691.Spec : Prop :=
  ∀ n, P11439938077048396691.a n = A123002 (n + 1)

end A123002

/-! ## A123002.P12208036705065682954

`A118416(n+1)-A059268(n)*A131507(n)`
-/

namespace A123002.P12208036705065682954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118416 (n + 1) - A059268 n * A131507 n

end

end A123002.P12208036705065682954

namespace A123002

/-- `A118416(n+1)-A059268(n)*A131507(n)` -/
def P12208036705065682954.Spec : Prop :=
  ∀ n, P12208036705065682954.a n = A123002 (n + 1)

end A123002

/-! ## A123002.P14496828215677754714

`(A288870(n)-A111650(n+1))*A059268(n)`
-/

namespace A123002.P14496828215677754714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A288870 n - A111650 (n + 1)) * A059268 n

end

end A123002.P14496828215677754714

namespace A123002

/-- `(A288870(n)-A111650(n+1))*A059268(n)` -/
def P14496828215677754714.Spec : Prop :=
  ∀ n, P14496828215677754714.a n = A123002 (n + 1)

end A123002

/-! ## A123002.P5518780540191171579

`A054582(A245300(n))-A118413(n+1)`
-/

namespace A123002.P5518780540191171579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054582 (A245300 n).toNat - A118413 (n + 1)

end

end A123002.P5518780540191171579

namespace A123002

/-- `A054582(A245300(n))-A118413(n+1)` -/
def P5518780540191171579.Spec : Prop :=
  ∀ n, P5518780540191171579.a n = A123002 (n + 1)

end A123002

/-!
# A123003: Expansion of g.f.: (8-29*x+24*x^2)/((1-4*x)*(1-3*x)*(1-2*x)^2*(1-x)^2).

The programs for A123003, the canonical program `A123003.P9482516918705211119` is in `Seq.B000.C018`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A123003 has offset 0).

The definition of A123003 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A123003.P9482516918705211119

`(2*n+3-(n-1)*2^(n+4)-3^(n+5)+4^(n+4))/4`

The canonical program, it is in `Seq.B000.C018`.
-/

namespace A123003

/-- `(2*n+3-(n-1)*2^(n+4)-3^(n+5)+4^(n+4))/4` -/
def P9482516918705211119.Spec : Prop :=
  ∀ n, P9482516918705211119.a n = (A123003 n : ℚ)

end A123003

/-! ## A123003.P4480818538372138614

`floor(A000486(n+5)/2)`
-/

namespace A123003.P4480818538372138614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A000486 (n + 5) : ℚ) / 2⌋

end

end A123003.P4480818538372138614

namespace A123003

/-- `floor(A000486(n+5)/2)` -/
def P4480818538372138614.Spec : Prop :=
  ∀ n, P4480818538372138614.a n = A123003 n

end A123003

/-! ## A123003.P14143637039596668741

`2/A059427(A328765(2*n+3))*A000486(n+5)`
-/

namespace A123003.P14143637039596668741
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 / (A059427 (A328765 (2 * n + 3)).toNat : ℚ) * (A000486 (n + 5) : ℚ)

end

end A123003.P14143637039596668741

namespace A123003

/-- `2/A059427(A328765(2*n+3))*A000486(n+5)` -/
def P14143637039596668741.Spec : Prop :=
  ∀ n, P14143637039596668741.a n = (A123003 n : ℚ)

end A123003

/-! ## A123003.P10702573959561767653

`A008970(n+2)/A059427(n+2)*A000486(n+5)`
-/

namespace A123003.P10702573959561767653
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008970 (n + 2) : ℚ) / (A059427 (n + 2) : ℚ) * (A000486 (n + 5) : ℚ)

end

end A123003.P10702573959561767653

namespace A123003

/-- `A008970(n+2)/A059427(n+2)*A000486(n+5)` -/
def P10702573959561767653.Spec : Prop :=
  ∀ n, P10702573959561767653.a n = (A123003 n : ℚ)

end A123003

/-! ## A123003.P14474351472922013808

`A000352(n+4)/A060157(n+4)*A000486(n+5)`
-/

namespace A123003.P14474351472922013808
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000352 (n + 4) : ℚ) / (A060157 (n + 4) : ℚ) * (A000486 (n + 5) : ℚ)

end

end A123003.P14474351472922013808

namespace A123003

/-- `A000352(n+4)/A060157(n+4)*A000486(n+5)` -/
def P14474351472922013808.Spec : Prop :=
  ∀ n, P14474351472922013808.a n = (A123003 n : ℚ)

end A123003

/-!
# A123004: Expansion of g.f. x^2/(1 - 2*x - 25*x^2).

The programs for A123004, the canonical program `A123004.P3455916128515716646` is in `Seq.B000.C018`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A123004 has offset 1).

The definition of A123004 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(x/(1-2x-25x^2))` (program `A123004.P3455916128515716646`, by `A123004.P3455916128515716646.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A123004.P3455916128515716646

`ogf(x/(1-2x-25x^2))`

The canonical program, it is in `Seq.B000.C018`.
-/

namespace A123004

/-- `ogf(x/(1-2x-25x^2))` -/
def P3455916128515716646.Spec : Prop :=
  ∀ n, P3455916128515716646.a n = A123004 (n + 1)

theorem P3455916128515716646.correct : P3455916128515716646.Spec := by
  intro n
  simp only [A123004, Nat.add_sub_cancel]

end A123004

/-! ## A123004.P6617323045448093781

`2*a(n-1)+25*a(n-2)` with `a(0)=0, a(1)=1`
-/

namespace A123004.P6617323045448093781
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n a =>
  2 * a (n - 1) + 25 * a (n - 2)

end

end A123004.P6617323045448093781

namespace A123004

/-- `2*a(n-1)+25*a(n-2)` -/
def P6617323045448093781.Spec : Prop :=
  ∀ n, (P6617323045448093781.a n : ℤ) = A123004 (n + 1)

end A123004

/-! ## A123004.P14517001293976267095

`((1+sqrt(26))^n-(1-sqrt(26))^n)/(2*sqrt(26))`
-/

namespace A123004.P14517001293976267095
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((1 + Real.sqrt (26 : ℝ)) ^ n - (1 - Real.sqrt (26 : ℝ)) ^ n) / (2 * Real.sqrt (26 : ℝ))

end

end A123004.P14517001293976267095

namespace A123004

/-- `((1+sqrt(26))^n-(1-sqrt(26))^n)/(2*sqrt(26))` -/
def P14517001293976267095.Spec : Prop :=
  ∀ n, P14517001293976267095.a n = (A123004 (n + 1) : ℝ)

end A123004

/-!
# A123005: Expansion of g.f. x^2/(1-2*x-49*x^2).

The programs for A123005, the canonical program `A123005.P18233851057180991525` is in `Seq.B000.C018`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A123005 has offset 1).

The definition of A123005 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(x/(1-2x-49x^2))` (program `A123005.P18233851057180991525`, by `A123005.P18233851057180991525.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A123005.P18233851057180991525

`ogf(x/(1-2x-49x^2))`

The canonical program, it is in `Seq.B000.C018`.
-/

namespace A123005

/-- `ogf(x/(1-2x-49x^2))` -/
def P18233851057180991525.Spec : Prop :=
  ∀ n, P18233851057180991525.a n = A123005 (n + 1)

theorem P18233851057180991525.correct : P18233851057180991525.Spec := by
  intro n
  simp only [A123005, Nat.add_sub_cancel]

end A123005

/-! ## A123005.P16655845410143386808

`2*a(n-1)+49*a(n-2)` with `a(0)=0, a(1)=1`
-/

namespace A123005.P16655845410143386808
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n a =>
  2 * a (n - 1) + 49 * a (n - 2)

end

end A123005.P16655845410143386808

namespace A123005

/-- `2*a(n-1)+49*a(n-2)` -/
def P16655845410143386808.Spec : Prop :=
  ∀ n, (P16655845410143386808.a n : ℤ) = A123005 (n + 1)

end A123005

/-! ## A123005.P8569048434489234629

`a(n-1)+a(n-1)+lcm(49, a(n-2))` with `a(0)=0, a(1)=1`
-/

namespace A123005.P8569048434489234629
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n a =>
  a (n - 1) + (a (n - 1) + Nat.lcm 49 (a (n - 2)))

end

end A123005.P8569048434489234629

namespace A123005

/-- `a(n-1)+a(n-1)+lcm(49, a(n-2))` -/
def P8569048434489234629.Spec : Prop :=
  ∀ n, (P8569048434489234629.a n : ℤ) = A123005 (n + 1)

end A123005

/-!
# A123006: Expansion of x^2/(1 -2*x -121*x^2).

The programs for A123006, the canonical program `A123006.P9225691740841274234` is in `Seq.B000.C018`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A123006 has offset 1).

The definition of A123006 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A123006.P9225691740841274234

`2*a(n-1)+121*a(n-2)` with `a(0)=0, a(1)=1`

The canonical program, it is in `Seq.B000.C018`.
-/

namespace A123006

/-- `2*a(n-1)+121*a(n-2)` -/
def P9225691740841274234.Spec : Prop :=
  ∀ n, (P9225691740841274234.a n : ℤ) = A123006 (n + 1)

theorem P9225691740841274234.correct : P9225691740841274234.Spec := by
  intro n
  simp only [A123006, Nat.add_sub_cancel]

end A123006

/-!
# A123007: Expansion of x*(1+x)/(1 -2*x -9*x^2).

The programs for A123007, the canonical program `A123007.P8643884697989247989` is in `Seq.B000.C018`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A123007 has offset 1).

The definition of A123007 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1+x)/(1-2x-9x^2))` (program `A123007.P8643884697989247989`, by `A123007.P8643884697989247989.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A123007.P8643884697989247989

`ogf((1+x)/(1-2x-9x^2))`

The canonical program, it is in `Seq.B000.C018`.
-/

namespace A123007

/-- `ogf((1+x)/(1-2x-9x^2))` -/
def P8643884697989247989.Spec : Prop :=
  ∀ n, P8643884697989247989.a n = A123007 (n + 1)

theorem P8643884697989247989.correct : P8643884697989247989.Spec := by
  intro n
  simp only [A123007, Nat.add_sub_cancel]

end A123007

/-! ## A123007.P4188328395168305461

`2*a(n-1)+9*a(n-2)` with `a(0)=1, a(1)=3`
-/

namespace A123007.P4188328395168305461
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 3] fun n a =>
  2 * a (n - 1) + 9 * a (n - 2)

end

end A123007.P4188328395168305461

namespace A123007

/-- `2*a(n-1)+9*a(n-2)` -/
def P4188328395168305461.Spec : Prop :=
  ∀ n, (P4188328395168305461.a n : ℤ) = A123007 (n + 1)

end A123007

/-! ## A123007.P9551137409637364787

`A002534(n+1)+A002534(n)`
-/

namespace A123007.P9551137409637364787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002534 (n + 1) + A002534 n

end

end A123007.P9551137409637364787

namespace A123007

/-- `A002534(n+1)+A002534(n)` -/
def P9551137409637364787.Spec : Prop :=
  ∀ n, P9551137409637364787.a n = A123007 (n + 1)

end A123007

/-! ## A123007.P12925907840879315989

`a(n-1)+a(n-1)+a(n-2)/(1/3)²` with `a(0)=1, a(1)=3`
-/

namespace A123007.P12925907840879315989
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 3] fun n a =>
  a (n - 1) + (a (n - 1) + a (n - 2) / ((1 : ℚ) / 3) ^ 2)

end

end A123007.P12925907840879315989

namespace A123007

/-- `a(n-1)+a(n-1)+a(n-2)/(1/3)²` -/
def P12925907840879315989.Spec : Prop :=
  ∀ n, P12925907840879315989.a n = (A123007 (n + 1) : ℚ)

end A123007

/-! ## A123007.P12525571858952156253

`A002534(n)+∑[A002535(n)]`
-/

namespace A123007.P12525571858952156253
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002535 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002534 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A123007.P12525571858952156253

namespace A123007

/-- `A002534(n)+∑[A002535(n)]` -/
def P12525571858952156253.Spec : Prop :=
  ∀ n, P12525571858952156253.a n = A123007 (n + 1)

end A123007

/-! ## A123007.P15616134137921663851

`(A094726(n+1)+A002535(n))/2`
-/

namespace A123007.P15616134137921663851
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A094726 (n + 1) + A002535 n : ℚ) / 2

end

end A123007.P15616134137921663851

namespace A123007

/-- `(A094726(n+1)+A002535(n))/2` -/
def P15616134137921663851.Spec : Prop :=
  ∀ n, P15616134137921663851.a n = (A123007 (n + 1) : ℚ)

end A123007

/-! ## A123007.P12407319769619623735

`A328604(n+1)/9`
-/

namespace A123007.P12407319769619623735
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A328604 (n + 1) : ℚ) / 9

end

end A123007.P12407319769619623735

namespace A123007

/-- `A328604(n+1)/9` -/
def P12407319769619623735.Spec : Prop :=
  ∀ n, P12407319769619623735.a n = (A123007 (n + 1) : ℚ)

end A123007

/-! ## A123007.P4616803922541086242

`a(n-1)*ratio[A328604(n)]` with `a(0)=1`
-/

namespace A123007.P4616803922541086242
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328604 n

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) * ((f1 (n + 1) : ℚ) / (f1 n : ℚ))

end

end A123007.P4616803922541086242

namespace A123007

/-- `a(n-1)*ratio[A328604(n)]` -/
def P4616803922541086242.Spec : Prop :=
  ∀ n, P4616803922541086242.a n = (A123007 (n + 1) : ℚ)

end A123007

/-!
# A123008: Expansion of x*(1 + 3*x)/(1 - 2*x - 25*x^2).

The programs for A123008, the canonical program `A123008.P4424040228407373238` is in `Seq.B000.C018`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A123008 has offset 1).

The definition of A123008 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1+3x)/(1-2x-25x^2))` (program `A123008.P4424040228407373238`, by `A123008.P4424040228407373238.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A123008.P4424040228407373238

`ogf((1+3x)/(1-2x-25x^2))`

The canonical program, it is in `Seq.B000.C018`.
-/

namespace A123008

/-- `ogf((1+3x)/(1-2x-25x^2))` -/
def P4424040228407373238.Spec : Prop :=
  ∀ n, P4424040228407373238.a n = A123008 (n + 1)

theorem P4424040228407373238.correct : P4424040228407373238.Spec := by
  intro n
  simp only [A123008, Nat.add_sub_cancel]

end A123008

/-! ## A123008.P10132592325363288758

`2*a(n-1)+25*a(n-2)` with `a(0)=1, a(1)=5`
-/

namespace A123008.P10132592325363288758
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 5] fun n a =>
  2 * a (n - 1) + 25 * a (n - 2)

end

end A123008.P10132592325363288758

namespace A123008

/-- `2*a(n-1)+25*a(n-2)` -/
def P10132592325363288758.Spec : Prop :=
  ∀ n, (P10132592325363288758.a n : ℤ) = A123008 (n + 1)

end A123008

/-! ## A123008.P5321423174207279607

`A123004(n+2)+3*A123004(n+1)`
-/

namespace A123008.P5321423174207279607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123004 (n + 2) + 3 * A123004 (n + 1)

end

end A123008.P5321423174207279607

namespace A123008

/-- `A123004(n+2)+3*A123004(n+1)` -/
def P5321423174207279607.Spec : Prop :=
  ∀ n, P5321423174207279607.a n = A123008 (n + 1)

end A123008

/-!
# A123009: Expansion of x*(1 + 5*x)/(1 - 2*x - 49*x^2).

The programs for A123009, the canonical program `A123009.P11496117771986503181` is in `Seq.B000.C018`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A123009 has offset 1).

The definition of A123009 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1+5x)/(1-2x-49x^2))` (program `A123009.P11496117771986503181`, by `A123009.P11496117771986503181.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A123009.P11496117771986503181

`ogf((1+5x)/(1-2x-49x^2))`

The canonical program, it is in `Seq.B000.C018`.
-/

namespace A123009

/-- `ogf((1+5x)/(1-2x-49x^2))` -/
def P11496117771986503181.Spec : Prop :=
  ∀ n, P11496117771986503181.a n = A123009 (n + 1)

theorem P11496117771986503181.correct : P11496117771986503181.Spec := by
  intro n
  simp only [A123009, Nat.add_sub_cancel]

end A123009

/-! ## A123009.P977765055799932168

`2*a(n-1)+49*a(n-2)` with `a(0)=1, a(1)=7`
-/

namespace A123009.P977765055799932168
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 7] fun n a =>
  2 * a (n - 1) + 49 * a (n - 2)

end

end A123009.P977765055799932168

namespace A123009

/-- `2*a(n-1)+49*a(n-2)` -/
def P977765055799932168.Spec : Prop :=
  ∀ n, (P977765055799932168.a n : ℤ) = A123009 (n + 1)

end A123009

/-!
# A123010: a(n) = 5*a(n-1) + a(n-2) - 5*a(n-3), for n>4, with a(1)=1, a(2)=0, a(3)=4, a(4)=16.

The programs for A123010, the canonical program `A123010.P1263747180576949413` is in `Seq.B000.C018`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A123010 has offset 1).

The definition of A123010 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `5*a(n-1)+a(n-2)-5*a(n-3)` (program `A123010.P1263747180576949413`, by `A123010.P1263747180576949413.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A123010.P1263747180576949413

`5*a(n-1)+a(n-2)-5*a(n-3)` with `a(0)=1, a(1)=0, a(2)=4, a(3)=16`

The canonical program, it is in `Seq.B000.C018`.
-/

namespace A123010

/-- `5*a(n-1)+a(n-2)-5*a(n-3)` -/
def P1263747180576949413.Spec : Prop :=
  ∀ n, P1263747180576949413.a n = A123010 (n + 1)

theorem P1263747180576949413.correct : P1263747180576949413.Spec := by
  intro n
  simp only [A123010, Nat.add_sub_cancel]

end A123010

/-! ## A123010.P12947856763819368543

`ogf((-1+4x+x^2)/(-1+4x+5x^2))`
-/

namespace A123010.P12947856763819368543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -4, -1] [1, -4, -5] n

end

end A123010.P12947856763819368543

namespace A123010

/-- `ogf((-1+4x+x^2)/(-1+4x+5x^2))` -/
def P12947856763819368543.Spec : Prop :=
  ∀ n, P12947856763819368543.a n = A123010 (n + 1)

end A123010

/-! ## A123010.P4558635532914335223

`xor(4, 5*a(n-1))` with `a(0)=1, a(1)=0`
-/

namespace A123010.P4558635532914335223
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 0] fun n a =>
  Nat.xor 4 (5 * a (n - 1))

end

end A123010.P4558635532914335223

namespace A123010

/-- `xor(4, 5*a(n-1))` -/
def P4558635532914335223.Spec : Prop :=
  ∀ n, (P4558635532914335223.a n : ℤ) = A123010 (n + 1)

end A123010

/-! ## A123010.P5790569437811418642

`xor(5, or(1, lcm(5, a(n-1))))` with `a(0)=1`
-/

namespace A123010.P5790569437811418642
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Nat.xor 5 (Nat.lor 1 (Nat.lcm 5 (a (n - 1))))

end

end A123010.P5790569437811418642

namespace A123010

/-- `xor(5, or(1, lcm(5, a(n-1))))` -/
def P5790569437811418642.Spec : Prop :=
  ∀ n, (P5790569437811418642.a n : ℤ) = A123010 (n + 1)

end A123010

/-! ## A123010.P6173565566294543536

`or(9, 5*(a(n-1)-2))+5` with `a(0)=1`
-/

namespace A123010.P6173565566294543536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  Int.lor 9 (5 * (a (n - 1) - 2)) + 5

end

end A123010.P6173565566294543536

namespace A123010

/-- `or(9, 5*(a(n-1)-2))+5` -/
def P6173565566294543536.Spec : Prop :=
  ∀ n, P6173565566294543536.a n = A123010 (n + 1)

end A123010

/-! ## A123010.P9854164481813226786

`Δ[5^(n-2)]-a(n-1)` with `a(0)=1, a(1)=0`
-/

namespace A123010.P9854164481813226786
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (5 : ℚ) ^ ((n : ℤ) - 2 : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 0] fun n a =>
  f1 (n + 1) - f1 n - a (n - 1)

end

end A123010.P9854164481813226786

namespace A123010

/-- `Δ[5^(n-2)]-a(n-1)` -/
def P9854164481813226786.Spec : Prop :=
  ∀ n, P9854164481813226786.a n = (A123010 (n + 1) : ℚ)

end A123010

/-! ## A123010.P4695711325924147899

`4*a(n-1)+5*a(n-2)` with `a(0)=1, a(1)=0, a(2)=4`
-/

namespace A123010.P4695711325924147899
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 0, 4] fun n a =>
  4 * a (n - 1) + 5 * a (n - 2)

end

end A123010.P4695711325924147899

namespace A123010

/-- `4*a(n-1)+5*a(n-2)` -/
def P4695711325924147899.Spec : Prop :=
  ∀ n, (P4695711325924147899.a n : ℤ) = A123010 (n + 1)

end A123010

/-! ## A123010.P5883916666132190915

`Δ[ceil(A024049(n)/30)]`
-/

namespace A123010.P5883916666132190915
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A024049 n : ℚ) / 30⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A123010.P5883916666132190915

namespace A123010

/-- `Δ[ceil(A024049(n)/30)]` -/
def P5883916666132190915.Spec : Prop :=
  ∀ n, P5883916666132190915.a n = A123010 (n + 1)

end A123010

/-!
# A123011: a(n) = 2*a(n-1) + 5*a(n-2) for n > 1; a(0) = 1, a(1) = 5.

The programs for A123011, the canonical program `A123011.P3587965826558524111` is in `Seq.B000.C018`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A123011 has offset 0).

The definition of A123011 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2*a(n-1)+5*a(n-2)` (program `A123011.P3587965826558524111`, by `A123011.P3587965826558524111.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A123011.P3587965826558524111

`2*a(n-1)+5*a(n-2)` with `a(0)=1, a(1)=5`

The canonical program, it is in `Seq.B000.C018`.
-/

namespace A123011

/-- `2*a(n-1)+5*a(n-2)` -/
def P3587965826558524111.Spec : Prop :=
  ∀ n, (P3587965826558524111.a n : ℤ) = A123011 n

theorem P3587965826558524111.correct : P3587965826558524111.Spec := by
  intro n
  simp only [A123011]

end A123011

/-! ## A123011.P5333103929960400063

`((3+2*sqrt(6))*(1+sqrt(6))^n+(3-2*sqrt(6))*(1-sqrt(6))^n)/6`
-/

namespace A123011.P5333103929960400063
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((3 + 2 * Real.sqrt (6 : ℝ)) * (1 + Real.sqrt (6 : ℝ)) ^ n + (3 - 2 * Real.sqrt (6 : ℝ)) * (1 - Real.sqrt (6 : ℝ)) ^ n) / 6

end

end A123011.P5333103929960400063

namespace A123011

/-- `((3+2*sqrt(6))*(1+sqrt(6))^n+(3-2*sqrt(6))*(1-sqrt(6))^n)/6` -/
def P5333103929960400063.Spec : Prop :=
  ∀ n, P5333103929960400063.a n = (A123011 n : ℝ)

theorem P5333103929960400063.correct : P5333103929960400063.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A123011, Nat.add_sub_cancel, A123011.P5333103929960400063.a, A123011.P3587965826558524111.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
      try ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A123011, Nat.add_sub_cancel, A123011.P5333103929960400063.a, A123011.P3587965826558524111.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [← h1, ← h2]
      first | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A123011

/-! ## A123011.P13515950203278697442

`ogf((1+3x)/(1-2x-5x^2))`
-/

namespace A123011.P13515950203278697442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 3] [1, -2, -5] n

end

end A123011.P13515950203278697442

namespace A123011

/-- `ogf((1+3x)/(1-2x-5x^2))` -/
def P13515950203278697442.Spec : Prop :=
  ∀ n, P13515950203278697442.a n = A123011 n

end A123011

/-! ## A123011.P354142253454145349

`3*a(n-1)-(a(n-1)-5*a(n-2))` with `a(0)=1, a(1)=5`
-/

namespace A123011.P354142253454145349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 5] fun n a =>
  3 * a (n - 1) - (a (n - 1) - 5 * a (n - 2))

end

end A123011.P354142253454145349

namespace A123011

/-- `3*a(n-1)-(a(n-1)-5*a(n-2))` -/
def P354142253454145349.Spec : Prop :=
  ∀ n, P354142253454145349.a n = A123011 n

end A123011

/-! ## A123011.P16678010770850414644

`A180168(n)+A083694(n)`
-/

namespace A123011.P16678010770850414644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180168 n + A083694 n

end

end A123011.P16678010770850414644

namespace A123011

/-- `A180168(n)+A083694(n)` -/
def P16678010770850414644.Spec : Prop :=
  ∀ n, P16678010770850414644.a n = A123011 n

end A123011

/-! ## A123011.P13187139338270946991

`A083695(n)+∑[A002533(n)]`
-/

namespace A123011.P13187139338270946991
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002533 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083695 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A123011.P13187139338270946991

namespace A123011

/-- `A083695(n)+∑[A002533(n)]` -/
def P13187139338270946991.Spec : Prop :=
  ∀ n, P13187139338270946991.a n = A123011 n

end A123011

/-! ## A123011.P2943322493516401066

`A083695(n)+A002532(n+1)`
-/

namespace A123011.P2943322493516401066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083695 n + A002532 (n + 1)

end

end A123011.P2943322493516401066

namespace A123011

/-- `A083695(n)+A002532(n+1)` -/
def P2943322493516401066.Spec : Prop :=
  ∀ n, P2943322493516401066.a n = A123011 n

end A123011

/-! ## A123011.P10041478100833428875

`A002533(n+1)-A083694(n)`
-/

namespace A123011.P10041478100833428875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002533 (n + 1) - A083694 n

end

end A123011.P10041478100833428875

namespace A123011

/-- `A002533(n+1)-A083694(n)` -/
def P10041478100833428875.Spec : Prop :=
  ∀ n, P10041478100833428875.a n = A123011 n

end A123011

/-! ## A123011.P4047426946428722606

`A002533(n)+2*A083694(n)`
-/

namespace A123011.P4047426946428722606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002533 n + 2 * A083694 n

end

end A123011.P4047426946428722606

namespace A123011

/-- `A002533(n)+2*A083694(n)` -/
def P4047426946428722606.Spec : Prop :=
  ∀ n, P4047426946428722606.a n = A123011 n

end A123011

/-! ## A123011.P6271714258636863209

`A180168(n)+2*A002532(n)`
-/

namespace A123011.P6271714258636863209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180168 n + 2 * A002532 n

end

end A123011.P6271714258636863209

namespace A123011

/-- `A180168(n)+2*A002532(n)` -/
def P6271714258636863209.Spec : Prop :=
  ∀ n, P6271714258636863209.a n = A123011 n

end A123011

/-! ## A123011.P3662742434516203463

`2*A180168(n)-A002533(n)`
-/

namespace A123011.P3662742434516203463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A180168 n - A002533 n

end

end A123011.P3662742434516203463

namespace A123011

/-- `2*A180168(n)-A002533(n)` -/
def P3662742434516203463.Spec : Prop :=
  ∀ n, P3662742434516203463.a n = A123011 n

end A123011

/-! ## A123011.P15422167062387462118

`A002533(n)+4*A002532(n)`
-/

namespace A123011.P15422167062387462118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002533 n + 4 * A002532 n

end

end A123011.P15422167062387462118

namespace A123011

/-- `A002533(n)+4*A002532(n)` -/
def P15422167062387462118.Spec : Prop :=
  ∀ n, P15422167062387462118.a n = A123011 n

end A123011

/-! ## A123011.P9747276869913243575

`Δ[A002532(n+1)]-A083694(n)`
-/

namespace A123011.P9747276869913243575
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002532 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A083694 n

end

end A123011.P9747276869913243575

namespace A123011

/-- `Δ[A002532(n+1)]-A083694(n)` -/
def P9747276869913243575.Spec : Prop :=
  ∀ n, P9747276869913243575.a n = A123011 n

end A123011

/-! ## A123011.P4760682288637755850

`Δ[A002532(n)]+2*A083694(n)`
-/

namespace A123011.P4760682288637755850
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002532 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + 2 * A083694 n

end

end A123011.P4760682288637755850

namespace A123011

/-- `Δ[A002532(n)]+2*A083694(n)` -/
def P4760682288637755850.Spec : Prop :=
  ∀ n, P4760682288637755850.a n = A123011 n

end A123011

/-! ## A123011.P16319384407530517463

`A002532(n+1)+3*A002532(n)`
-/

namespace A123011.P16319384407530517463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002532 (n + 1) + 3 * A002532 n

end

end A123011.P16319384407530517463

namespace A123011

/-- `A002532(n+1)+3*A002532(n)` -/
def P16319384407530517463.Spec : Prop :=
  ∀ n, P16319384407530517463.a n = A123011 n

end A123011

/-! ## A123011.P4737507931400523381

`A180168(n+1)-2*A180168(n)`
-/

namespace A123011.P4737507931400523381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180168 (n + 1) - 2 * A180168 n

end

end A123011.P4737507931400523381

namespace A123011

/-- `A180168(n+1)-2*A180168(n)` -/
def P4737507931400523381.Spec : Prop :=
  ∀ n, P4737507931400523381.a n = A123011 n

end A123011

/-! ## A123011.P9138444616727678293

`A002532(n+1)+A083694(n)+A002532(n)`
-/

namespace A123011.P9138444616727678293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002532 (n + 1) + (A083694 n + A002532 n)

end

end A123011.P9138444616727678293

namespace A123011

/-- `A002532(n+1)+A083694(n)+A002532(n)` -/
def P9138444616727678293.Spec : Prop :=
  ∀ n, P9138444616727678293.a n = A123011 n

end A123011

/-! ## A123011.P112061511041058271

`A002533(n+1)-(A002532(n)+A002532(n))`
-/

namespace A123011.P112061511041058271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002533 (n + 1) - (A002532 n + A002532 n)

end

end A123011.P112061511041058271

namespace A123011

/-- `A002533(n+1)-(A002532(n)+A002532(n))` -/
def P112061511041058271.Spec : Prop :=
  ∀ n, P112061511041058271.a n = A123011 n

end A123011

/-! ## A123011.P10470221482939914739

`A180168(n+1)+A180168(n)-A176812(n)`
-/

namespace A123011.P10470221482939914739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180168 (n + 1) + (A180168 n - A176812 n)

end

end A123011.P10470221482939914739

namespace A123011

/-- `A180168(n+1)+A180168(n)-A176812(n)` -/
def P10470221482939914739.Spec : Prop :=
  ∀ n, P10470221482939914739.a n = A123011 n

end A123011

/-! ## A123011.P16555714159591642308

`A176812(n)-(A002532(n+1)+A002532(n+1))`
-/

namespace A123011.P16555714159591642308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176812 n - (A002532 (n + 1) + A002532 (n + 1))

end

end A123011.P16555714159591642308

namespace A123011

/-- `A176812(n)-(A002532(n+1)+A002532(n+1))` -/
def P16555714159591642308.Spec : Prop :=
  ∀ n, P16555714159591642308.a n = A123011 n

end A123011

/-!
# A123012: Expansion of 1/(1 - 2*x - 21*x^2).

The programs for A123012, the canonical program `A123012.P1720042315413555912` is in `Seq.B000.C018`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A123012 has offset 0).

The definition of A123012 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(1/(1-2x-21x^2))` (program `A123012.P1720042315413555912`, by `A123012.P1720042315413555912.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A123012.P1720042315413555912

`ogf(1/(1-2x-21x^2))`

The canonical program, it is in `Seq.B000.C018`.
-/

namespace A123012

/-- `ogf(1/(1-2x-21x^2))` -/
def P1720042315413555912.Spec : Prop :=
  ∀ n, P1720042315413555912.a n = A123012 n

theorem P1720042315413555912.correct : P1720042315413555912.Spec := by
  intro n
  simp only [A123012]

end A123012

/-! ## A123012.P7187375538167071410

`2*a(n-1)+21*a(n-2)` with `a(0)=1, a(1)=2`
-/

namespace A123012.P7187375538167071410
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2] fun n a =>
  2 * a (n - 1) + 21 * a (n - 2)

end

end A123012.P7187375538167071410

namespace A123012

/-- `2*a(n-1)+21*a(n-2)` -/
def P7187375538167071410.Spec : Prop :=
  ∀ n, (P7187375538167071410.a n : ℤ) = A123012 n

end A123012

/-!
# A123013: a(n) = A122192(n)/6.

The programs for A123013, there is no canonical definition to state claims against.
-/

/-! ## A123013.P5022574444624440171

`A122192(n)/6`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A123013.P5022574444624440171
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A122192 n : ℚ) / 6

end

end A123013.P5022574444624440171

/-!
# A123014: E.g.f.: ((1+x)/(1-x))^(1/3)*((1+x+x^2)/(1-x+x^2))^(1/6).

The programs for A123014, there is no canonical definition to state claims against.
-/

/-! ## A123014.P4419925838174572314

`A053497(n)+A004442(A052501(n))`
-/

namespace A123014.P4419925838174572314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053497 n + A004442 (A052501 n).toNat

end

end A123014.P4419925838174572314

/-! ## A123014.P7882374259747656204

`A059593(A051022(n))+A053497(n)`
-/

namespace A123014.P7882374259747656204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059593 (A051022 n).toNat + A053497 n

end

end A123014.P7882374259747656204

/-! ## A123014.P6021006465706810865

`A053497(n)+A052928(A059593(n))`
-/

namespace A123014.P6021006465706810865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053497 n + A052928 (A059593 n).toNat

end

end A123014.P6021006465706810865

/-! ## A123014.P18306819571117255900

`A059593(A344822(n+1))+A053497(n)`
-/

namespace A123014.P18306819571117255900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059593 (A344822 (n + 1)).toNat + A053497 n

end

end A123014.P18306819571117255900

/-! ## A123014.P10024453794263165926

`A008307(A167487(n+4))+A004442(A052501(n))`
-/

namespace A123014.P10024453794263165926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008307 (A167487 (n + 4)).toNat + A004442 (A052501 n).toNat

end

end A123014.P10024453794263165926

/-!
# A123015: Grow a binary tree using the following rules. Initially there is a single node labeled 1. At each step we add 1 to all labels less than 3. If a node has label 3 and zero or one descendants we add a new descendant labeled 1. Sequence gives sum of all labels at step n.

The programs for A123015, the canonical program `A123015.P12933470047903451631` is in `Seq.B000.C018`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A123015 has offset 0).

The definition of A123015 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A123015.P12933470047903451631

`a(n-3)+a(n-4)+3` with `a(0)=1, a(1)=2, a(2)=3, a(3)=4`

The canonical program, it is in `Seq.B000.C018`.
-/

namespace A123015

/-- `a(n-3)+a(n-4)+3` -/
def P12933470047903451631.Spec : Prop :=
  ∀ n, (P12933470047903451631.a n : ℤ) = A123015 n

theorem P12933470047903451631.correct : P12933470047903451631.Spec := by
  intro n
  simp only [A123015]

end A123015

/-! ## A123015.P1855044789451867036

`ogf((1+x+x^2)/(1-x-x^3+x^5))`
-/

namespace A123015.P1855044789451867036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 1, 1] [1, -1, 0, -1, 0, 1] n

end

end A123015.P1855044789451867036

namespace A123015

/-- `ogf((1+x+x^2)/(1-x-x^3+x^5))` -/
def P1855044789451867036.Spec : Prop :=
  ∀ n, P1855044789451867036.a n = A123015 n

end A123015

/-! ## A123015.P6859532434580480107

`∑[a(n-3)+a(n-4)]` with `a(0)=1, a(1)=1, a(2)=1, a(3)=1`
-/

namespace A123015.P6859532434580480107
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 1, 1] fun n f1 =>
  f1 (n - 3) + f1 (n - 4)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A123015.P6859532434580480107

namespace A123015

/-- `∑[a(n-3)+a(n-4)]` -/
def P6859532434580480107.Spec : Prop :=
  ∀ n, (P6859532434580480107.a n : ℤ) = A123015 n

end A123015

/-! ## A123015.P14204661917849466653

`∑[A079398(n+1)]`
-/

namespace A123015.P14204661917849466653
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079398 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A123015.P14204661917849466653

namespace A123015

/-- `∑[A079398(n+1)]` -/
def P14204661917849466653.Spec : Prop :=
  ∀ n, P14204661917849466653.a n = A123015 n

end A123015

/-! ## A123015.P13941696303725633264

`A164317(n+2)-3`
-/

namespace A123015.P13941696303725633264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164317 (n + 2) - 3

end

end A123015.P13941696303725633264

namespace A123015

/-- `A164317(n+2)-3` -/
def P13941696303725633264.Spec : Prop :=
  ∀ n, P13941696303725633264.a n = A123015 n

end A123015

/-! ## A123015.P862334515805567118

`∑[∑[A127838(n+1)]]`
-/

namespace A123015.P862334515805567118
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127838 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A123015.P862334515805567118

namespace A123015

/-- `∑[∑[A127838(n+1)]]` -/
def P862334515805567118.Spec : Prop :=
  ∀ n, P862334515805567118.a n = A123015 n

end A123015

/-! ## A123015.P12099034048342637720

`∑[A122521(2*(n+1))]`
-/

namespace A123015.P12099034048342637720
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122521 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A123015.P12099034048342637720

namespace A123015

/-- `∑[A122521(2*(n+1))]` -/
def P12099034048342637720.Spec : Prop :=
  ∀ n, P12099034048342637720.a n = A123015 n

end A123015

/-!
# A123016: a(1)=1, a(2)=1, a(3)=4, a(4)=0; a(n)=12a(n-2)-16a(n-3) for n>=5.

The programs for A123016, the canonical program `A123016.P9482795225321528121` is in `Seq.B000.C018`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A123016 has offset 1).

The definition of A123016 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `12*a(n-2)-16*a(n-3)` (program `A123016.P9482795225321528121`, by `A123016.P9482795225321528121.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A123016.P9482795225321528121

`12*a(n-2)-16*a(n-3)` with `a(0)=1, a(1)=1, a(2)=4, a(3)=0`

The canonical program, it is in `Seq.B000.C018`.
-/

namespace A123016

/-- `12*a(n-2)-16*a(n-3)` -/
def P9482795225321528121.Spec : Prop :=
  ∀ n, P9482795225321528121.a n = A123016 (n + 1)

theorem P9482795225321528121.correct : P9482795225321528121.Spec := by
  intro n
  simp only [A123016, Nat.add_sub_cancel]

end A123016

/-! ## A123016.P16763156869107717345

`ogf((1+3x-2x^2)/(1+2x-8x^2))`
-/

namespace A123016.P16763156869107717345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 3, -2] [1, 2, -8] n

end

end A123016.P16763156869107717345

namespace A123016

/-- `ogf((1+3x-2x^2)/(1+2x-8x^2))` -/
def P16763156869107717345.Spec : Prop :=
  ∀ n, P16763156869107717345.a n = A123016 (n + 1)

end A123016

/-! ## A123016.P18298208012573713048

`2^(n+1)-4*a(n-1)` with `a(0)=1, a(1)=1`
-/

namespace A123016.P18298208012573713048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  (2 ^ (n + 1) : ℤ) - 4 * a (n - 1)

end

end A123016.P18298208012573713048

namespace A123016

/-- `2^(n+1)-4*a(n-1)` -/
def P18298208012573713048.Spec : Prop :=
  ∀ n, P18298208012573713048.a n = A123016 (n + 1)

end A123016

/-! ## A123016.P3217865630336415052

`2*(2^n-2*a(n-1))` with `a(0)=1, a(1)=1`
-/

namespace A123016.P3217865630336415052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  2 * ((2 ^ n : ℤ) - 2 * a (n - 1))

end

end A123016.P3217865630336415052

namespace A123016

/-- `2*(2^n-2*a(n-1))` -/
def P3217865630336415052.Spec : Prop :=
  ∀ n, P3217865630336415052.a n = A123016 (n + 1)

end A123016

/-! ## A123016.P14949127779411397059

`2*(4*a(n-2)-a(n-1))` with `a(0)=1, a(1)=1, a(2)=4`
-/

namespace A123016.P14949127779411397059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 4] fun n a =>
  2 * (4 * a (n - 2) - a (n - 1))

end

end A123016.P14949127779411397059

namespace A123016

/-- `2*(4*a(n-2)-a(n-1))` -/
def P14949127779411397059.Spec : Prop :=
  ∀ n, P14949127779411397059.a n = A123016 (n + 1)

end A123016

/-! ## A123016.P13737955603526691744

`(2-A173197(n))*A123344(n)`
-/

namespace A123016.P13737955603526691744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - A173197 n) * A123344 n

end

end A123016.P13737955603526691744

namespace A123016

/-- `(2-A173197(n))*A123344(n)` -/
def P13737955603526691744.Spec : Prop :=
  ∀ n, P13737955603526691744.a n = A123016 (n + 1)

end A123016

/-! ## A123016.P6736578998711668254

`A011782(n)*A084247(log2(A011782(n)))`
-/

namespace A123016.P6736578998711668254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 n * A084247 (SequenceMachineLib.roundAway (Real.logb 2 (A011782 n : ℝ))).toNat

end

end A123016.P6736578998711668254

namespace A123016

/-- `A011782(n)*A084247(log2(A011782(n)))` -/
def P6736578998711668254.Spec : Prop :=
  ∀ n, P6736578998711668254.a n = A123016 (n + 1)

end A123016

/-!
# A123017: Semiprimes k such that k+3 is also a semiprime.

The programs for A123017, the canonical program `A123017.P11215207611399303916` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A123017 has offset 1).

The definition of A123017 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A123017.P4794646723071302935

`A241764(n+1)-3`
-/

namespace A123017.P4794646723071302935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241764 (n + 1) - 3

end

end A123017.P4794646723071302935

namespace A123017

/-- `A241764(n+1)-3` -/
def P4794646723071302935.Spec : Prop :=
  ∀ n, P4794646723071302935.a n = A123017 (n + 1)

end A123017

/-! ## A123017.P16531189709251969883

`∩[A001358(n+1), A186621(n+1)-2]`
-/

namespace A123017.P16531189709251969883
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001358 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186621 (n + 1) - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A123017.P16531189709251969883

namespace A123017

/-- `∩[A001358(n+1), A186621(n+1)-2]` -/
def P16531189709251969883.Spec : Prop :=
  ∀ n, (P16531189709251969883.a n : ℤ) = A123017 (n + 1)

end A123017

/-! ## A123017.P11215207611399303916

`∩[A001358(n+2)-3, A001358(n+2)]`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A123017

/-- `∩[A001358(n+2)-3, A001358(n+2)]` -/
def P11215207611399303916.Spec : Prop :=
  ∀ n, (P11215207611399303916.a n : ℤ) = A123017 (n + 1)

theorem P11215207611399303916.correct : P11215207611399303916.Spec := by
  intro n
  simp only [A123017, Nat.add_sub_cancel]

end A123017

/-! ## A123017.P1399397541384336639

`∩[A068993(n+1), A065516(n)+a(n-1)]` with `a(0)=1`
-/

namespace A123017.P1399397541384336639
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068993 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f2 =>
  A065516 n + f2 (n - 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A123017.P1399397541384336639

namespace A123017

/-- `∩[A068993(n+1), A065516(n)+a(n-1)]` -/
def P1399397541384336639.Spec : Prop :=
  ∀ n, (P1399397541384336639.a n : ℤ) = A123017 (n + 1)

end A123017

/-! ## A123017.P17264067412057745876

`∩[A088707(n+1)-1, A065516(n)+a(n-1)]` with `a(0)=1`
-/

namespace A123017.P17264067412057745876
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088707 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f2 =>
  A065516 n + f2 (n - 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A123017.P17264067412057745876

namespace A123017

/-- `∩[A088707(n+1)-1, A065516(n)+a(n-1)]` -/
def P17264067412057745876.Spec : Prop :=
  ∀ n, (P17264067412057745876.a n : ℤ) = A123017 (n + 1)

end A123017

/-! ## A123017.P5823238222258987285

`∩[A175708(n+1)+1+n, A065516(n)+a(n-1)]` with `a(0)=1`
-/

namespace A123017.P5823238222258987285
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175708 (n + 1) + 1 + (n : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f2 =>
  A065516 n + f2 (n - 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A123017.P5823238222258987285

namespace A123017

/-- `∩[A175708(n+1)+1+n, A065516(n)+a(n-1)]` -/
def P5823238222258987285.Spec : Prop :=
  ∀ n, (P5823238222258987285.a n : ℤ) = A123017 (n + 1)

end A123017

/-! ## A123017.P2747842349450721197

`A023445(A241764(n+1))`
-/

namespace A123017.P2747842349450721197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023445 (A241764 (n + 1)).toNat

end

end A123017.P2747842349450721197

namespace A123017

/-- `A023445(A241764(n+1))` -/
def P2747842349450721197.Spec : Prop :=
  ∀ n, P2747842349450721197.a n = A123017 (n + 1)

end A123017

/-! ## A123017.P2073005497376180440

`A023446(A241764(n+1)+1)`
-/

namespace A123017.P2073005497376180440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023446 (A241764 (n + 1) + 1).toNat

end

end A123017.P2073005497376180440

namespace A123017

/-- `A023446(A241764(n+1)+1)` -/
def P2073005497376180440.Spec : Prop :=
  ∀ n, P2073005497376180440.a n = A123017 (n + 1)

end A123017

/-! ## A123017.P7254296372226032174

`record[A179312(A006881(n+1)+3)-3]`
-/

namespace A123017.P7254296372226032174
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179312 (A006881 (n + 1) + 3).toNat - 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A123017.P7254296372226032174

namespace A123017

/-- `record[A179312(A006881(n+1)+3)-3]` -/
def P7254296372226032174.Spec : Prop :=
  ∀ n, P7254296372226032174.a n = A123017 (n + 1)

end A123017

/-! ## A123017.P17508377922159739478

`A023450(A241764(n+1)+5)`
-/

namespace A123017.P17508377922159739478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023450 (A241764 (n + 1) + 5).toNat

end

end A123017.P17508377922159739478

namespace A123017

/-- `A023450(A241764(n+1)+5)` -/
def P17508377922159739478.Spec : Prop :=
  ∀ n, P17508377922159739478.a n = A123017 (n + 1)

end A123017

/-!
# A123018: Triangle read by rows: row n gives the coefficients of x^k (0 <= k <= n) in the expansion of Sum_{j=0..n} A320508(n,j)*x^j*(1 - x)^(n - j).

The programs for A123018, there is no canonical definition to state claims against.
-/

/-! ## A123018.P7306049742158369192

`A131556((n-C(∑[char[∑[n]]], 2))^A333650(n+1))`
-/

namespace A123018.P7306049742158369192
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131556 (SequenceMachineLib.roundAway (((n : ℤ) - (Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j) 2 : ℤ) : ℚ) ^ (A333650 (n + 1) : ℤ))).toNat

end

end A123018.P7306049742158369192

/-! ## A123018.P13326738226707258295

`A131556(A002262(n)^A095666(n))`
-/

namespace A123018.P13326738226707258295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131556 (SequenceMachineLib.roundAway ((A002262 n : ℚ) ^ (A095666 n : ℤ))).toNat

end

end A123018.P13326738226707258295

/-! ## A123018.P4130747048510657639

`A131556(A002262(n)^A329816(n))`
-/

namespace A123018.P4130747048510657639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131556 (SequenceMachineLib.roundAway ((A002262 n : ℚ) ^ (A329816 n : ℤ))).toNat

end

end A123018.P4130747048510657639

/-! ## A123018.P15404055135928209318

`A057079(A006503(n)*A286616(n+1))`
-/

namespace A123018.P15404055135928209318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057079 (A006503 n * A286616 (n + 1)).toNat

end

end A123018.P15404055135928209318

/-! ## A123018.P9535216137124027154

`A057079(A348871(n+1)+A056718(n+5))`
-/

namespace A123018.P9535216137124027154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057079 (A348871 (n + 1) + A056718 (n + 5)).toNat

end

end A123018.P9535216137124027154

/-!
# A123020: Expansion of (1 -5*x +5*x^2)/((1 -2*x)*(1 -4*x +x^2)).

The programs for A123020, the canonical program `A123020.P93184283964784805` is in `Seq.B000.C018`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A123020 has offset 0).

The definition of A123020 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1-5x+5x^2)/(1-6x+9x^2-2x^3))` (program `A123020.P93184283964784805`, by `A123020.P93184283964784805.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A123020.P93184283964784805

`ogf((1-5x+5x^2)/(1-6x+9x^2-2x^3))`

The canonical program, it is in `Seq.B000.C018`.
-/

namespace A123020

/-- `ogf((1-5x+5x^2)/(1-6x+9x^2-2x^3))` -/
def P93184283964784805.Spec : Prop :=
  ∀ n, P93184283964784805.a n = A123020 n

theorem P93184283964784805.correct : P93184283964784805.Spec := by
  intro n
  simp only [A123020]

end A123020

/-! ## A123020.P7390803593611017098

`4*a(n-1)-a(n-2)-2^(n-2)` with `a(0)=1, a(1)=1`
-/

namespace A123020.P7390803593611017098
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 1] fun n a =>
  4 * a (n - 1) - a (n - 2) - (2 : ℚ) ^ ((n : ℤ) - 2 : ℤ)

end

end A123020.P7390803593611017098

namespace A123020

/-- `4*a(n-1)-a(n-2)-2^(n-2)` -/
def P7390803593611017098.Spec : Prop :=
  ∀ n, P7390803593611017098.a n = (A123020 n : ℚ)

end A123020

/-! ## A123020.P2408456225088030561

`A099780(n-2)+a(n-1)` with `a(0)=1, a(1)=1`
-/

namespace A123020.P2408456225088030561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A099780 (n - 2) + a (n - 1)

end

end A123020.P2408456225088030561

namespace A123020

/-- `A099780(n-2)+a(n-1)` -/
def P2408456225088030561.Spec : Prop :=
  ∀ n, P2408456225088030561.a n = A123020 n

end A123020

/-! ## A123020.P24074424192428135

`A106707(n)+A087944(n)`
-/

namespace A123020.P24074424192428135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106707 n + A087944 n

end

end A123020.P24074424192428135

namespace A123020

/-- `A106707(n)+A087944(n)` -/
def P24074424192428135.Spec : Prop :=
  ∀ n, P24074424192428135.a n = A123020 n

end A123020

/-! ## A123020.P3672597439999946813

`A087944(n)-A001353(n)`
-/

namespace A123020.P3672597439999946813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087944 n - A001353 n

end

end A123020.P3672597439999946813

namespace A123020

/-- `A087944(n)-A001353(n)` -/
def P3672597439999946813.Spec : Prop :=
  ∀ n, P3672597439999946813.a n = A123020 n

end A123020

/-! ## A123020.P13999790325401663536

`A087946(n)-A052530(n)`
-/

namespace A123020.P13999790325401663536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087946 n - A052530 n

end

end A123020.P13999790325401663536

namespace A123020

/-- `A087946(n)-A052530(n)` -/
def P13999790325401663536.Spec : Prop :=
  ∀ n, P13999790325401663536.a n = A123020 n

end A123020

/-! ## A123020.P4777572006529326134

`A087944(n)-Δ[A101879(n)]`
-/

namespace A123020.P4777572006529326134
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101879 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087944 n - (f1 (n + 1) - f1 n)

end

end A123020.P4777572006529326134

namespace A123020

/-- `A087944(n)-Δ[A101879(n)]` -/
def P4777572006529326134.Spec : Prop :=
  ∀ n, P4777572006529326134.a n = A123020 n

end A123020

/-! ## A123020.P927408374820800010

`A087946(n)+2*A106707(n)`
-/

namespace A123020.P927408374820800010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087946 n + 2 * A106707 n

end

end A123020.P927408374820800010

namespace A123020

/-- `A087946(n)+2*A106707(n)` -/
def P927408374820800010.Spec : Prop :=
  ∀ n, P927408374820800010.a n = A123020 n

end A123020

/-! ## A123020.P13615080290671169136

`A087946(n)-2*A001353(n)`
-/

namespace A123020.P13615080290671169136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087946 n - 2 * A001353 n

end

end A123020.P13615080290671169136

namespace A123020

/-- `A087946(n)-2*A001353(n)` -/
def P13615080290671169136.Spec : Prop :=
  ∀ n, P13615080290671169136.a n = A123020 n

end A123020

/-! ## A123020.P10087435071183032371

`2*A087944(n)-A087946(n)`
-/

namespace A123020.P10087435071183032371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A087944 n - A087946 n

end

end A123020.P10087435071183032371

namespace A123020

/-- `2*A087944(n)-A087946(n)` -/
def P10087435071183032371.Spec : Prop :=
  ∀ n, P10087435071183032371.a n = A123020 n

end A123020

/-! ## A123020.P6262991035224290508

`A087944(n)-A052530(n)/2`
-/

namespace A123020.P6262991035224290508
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A087944 n : ℚ) - (A052530 n : ℚ) / 2

end

end A123020.P6262991035224290508

namespace A123020

/-- `A087944(n)-A052530(n)/2` -/
def P6262991035224290508.Spec : Prop :=
  ∀ n, P6262991035224290508.a n = (A123020 n : ℚ)

end A123020

/-! ## A123020.P14199155175465439100

`A087944(n)+1-∑[A001835(n)]`
-/

namespace A123020.P14199155175465439100
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001835 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087944 n + (1 - ∑ j ∈ Finset.range (n + 1), f1 j)

end

end A123020.P14199155175465439100

namespace A123020

/-- `A087944(n)+1-∑[A001835(n)]` -/
def P14199155175465439100.Spec : Prop :=
  ∀ n, P14199155175465439100.a n = A123020 n

end A123020

/-! ## A123020.P17041246680366888341

`2*A336678(2*n)-A336678(2*n+1)`
-/

namespace A123020.P17041246680366888341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A336678 (2 * n) - A336678 (2 * n + 1)

end

end A123020.P17041246680366888341

namespace A123020

/-- `2*A336678(2*n)-A336678(2*n+1)` -/
def P17041246680366888341.Spec : Prop :=
  ∀ n, P17041246680366888341.a n = A123020 n

end A123020

/-! ## A123020.P10203086457843879661

`A087944(n)-A249578(A008585(n))`
-/

namespace A123020.P10203086457843879661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087944 n - A249578 (A008585 n).toNat

end

end A123020.P10203086457843879661

namespace A123020

/-- `A087944(n)-A249578(A008585(n))` -/
def P10203086457843879661.Spec : Prop :=
  ∀ n, P10203086457843879661.a n = A123020 n

end A123020

/-! ## A123020.P5221792996215833974

`A087945(n)-A005320(n)`
-/

namespace A123020.P5221792996215833974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087945 n - A005320 n

end

end A123020.P5221792996215833974

namespace A123020

/-- `A087945(n)-A005320(n)` -/
def P5221792996215833974.Spec : Prop :=
  ∀ n, P5221792996215833974.a n = A123020 n

end A123020

/-! ## A123020.P15219956574184093728

`A087946(n)-A231896(n)/2`
-/

namespace A123020.P15219956574184093728
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A087946 n : ℚ) - (A231896 n : ℚ) / 2

end

end A123020.P15219956574184093728

namespace A123020

/-- `A087946(n)-A231896(n)/2` -/
def P15219956574184093728.Spec : Prop :=
  ∀ n, P15219956574184093728.a n = (A123020 n : ℚ)

end A123020

/-! ## A123020.P2197229984424737968

`Δ[A099780(n)/2-A001835(n)]`
-/

namespace A123020.P2197229984424737968
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A099780 n : ℚ) / 2 - (A001835 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A123020.P2197229984424737968

namespace A123020

/-- `Δ[A099780(n)/2-A001835(n)]` -/
def P2197229984424737968.Spec : Prop :=
  ∀ n, P2197229984424737968.a n = (A123020 n : ℚ)

end A123020

/-! ## A123020.P284344440024792893

`2*A087944(n)-A087944(n+1)/2`
-/

namespace A123020.P284344440024792893
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 * A087944 n : ℚ) - (A087944 (n + 1) : ℚ) / 2

end

end A123020.P284344440024792893

namespace A123020

/-- `2*A087944(n)-A087944(n+1)/2` -/
def P284344440024792893.Spec : Prop :=
  ∀ n, P284344440024792893.a n = (A123020 n : ℚ)

end A123020

/-! ## A123020.P7997227687472457166

`A087944(n)+A087946(n)-A087945(n)`
-/

namespace A123020.P7997227687472457166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087944 n + (A087946 n - A087945 n)

end

end A123020.P7997227687472457166

namespace A123020

/-- `A087944(n)+A087946(n)-A087945(n)` -/
def P7997227687472457166.Spec : Prop :=
  ∀ n, P7997227687472457166.a n = A123020 n

end A123020

/-! ## A123020.P3567210652677371717

`A087946(n+1)-(A087945(n)+A001834(n))`
-/

namespace A123020.P3567210652677371717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087946 (n + 1) - (A087945 n + A001834 n)

end

end A123020.P3567210652677371717

namespace A123020

/-- `A087946(n+1)-(A087945(n)+A001834(n))` -/
def P3567210652677371717.Spec : Prop :=
  ∀ n, P3567210652677371717.a n = A123020 n

end A123020

/-!
# A123022: a(n) = n!*b(n) where b(n) = (n-4)*b(n-2)/(n*(n-1)) and b(0) = b(1) = 1.

The programs for A123022, the canonical program `A123022.P10215171884398263783` is in `Seq.B000.C018`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A123022 has offset 0).

The definition of A123022 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A123022.P10215171884398263783

`(n-4)*a(n-2)` with `a(0)=1, a(1)=1`

The canonical program, it is in `Seq.B000.C018`.
-/

namespace A123022

/-- `(n-4)*a(n-2)` -/
def P10215171884398263783.Spec : Prop :=
  ∀ n, P10215171884398263783.a n = A123022 n

theorem P10215171884398263783.correct : P10215171884398263783.Spec := by
  intro n
  simp only [A123022]

end A123022

/-! ## A123022.P6497717474318107472

`a(n-2)*A023446(n)` with `a(0)=1, a(1)=1`
-/

namespace A123022.P6497717474318107472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  a (n - 2) * A023446 n

end

end A123022.P6497717474318107472

namespace A123022

/-- `a(n-2)*A023446(n)` -/
def P6497717474318107472.Spec : Prop :=
  ∀ n, P6497717474318107472.a n = A123022 n

end A123022

/-! ## A123022.P1767102085830778195

`a(A023444(n))*A023444(A023444(n))` with `a(0)=1, a(1)=1`
-/

namespace A123022.P1767102085830778195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  a (A023444 n).toNat * A023444 (A023444 n).toNat

end

end A123022.P1767102085830778195

namespace A123022

/-- `a(A023444(n))*A023444(A023444(n))` -/
def P1767102085830778195.Spec : Prop :=
  ∀ n, P1767102085830778195.a n = A123022 n

end A123022

/-!
# A123023: a(n) = (n-1)*a(n-2), a(0)=1, a(1)=0.

The programs for A123023, the canonical program `A123023.P14029042805103886972` is in `Seq.B000.C018`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A123023 has offset 0).

The definition of A123023 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(n-1)*a(n-2)` (program `A123023.P14029042805103886972`, by `A123023.P14029042805103886972.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A123023.P14029042805103886972

`(n-1)*a(n-2)` with `a(0)=1, a(1)=0`

The canonical program, it is in `Seq.B000.C018`.
-/

namespace A123023

/-- `(n-1)*a(n-2)` -/
def P14029042805103886972.Spec : Prop :=
  ∀ n, P14029042805103886972.a n = A123023 n

theorem P14029042805103886972.correct : P14029042805103886972.Spec := by
  intro n
  simp only [A123023]

end A123023

/-! ## A123023.P16777072363658660378

`a(n-2)/(n-1)^(-1)` with `a(0)=1, a(1)=0`
-/

namespace A123023.P16777072363658660378
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 0] fun n a =>
  a (n - 2) / ((n : ℤ) - 1 : ℚ) ^ (-1 : ℤ)

end

end A123023.P16777072363658660378

namespace A123023

/-- `a(n-2)/(n-1)^(-1)` -/
def P16777072363658660378.Spec : Prop :=
  ∀ n, P16777072363658660378.a n = (A123023 n : ℚ)

end A123023

/-! ## A123023.P9904280145402225341

`log2(gcd(2, n))*∏[gcd(1-n, n%2)]`
-/

namespace A123023.P9904280145402225341
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (1 - (n : ℤ)) ((n % 2 : ℕ) : ℤ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (Nat.gcd 2 n : ℝ) * ((∏ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℝ)

end

end A123023.P9904280145402225341

namespace A123023

/-- `log2(gcd(2, n))*∏[gcd(1-n, n%2)]` -/
def P9904280145402225341.Spec : Prop :=
  ∀ n, P9904280145402225341.a n = (A123023 n : ℝ)

end A123023

/-! ## A123023.P14291577364084168411

`abs(A123022(n+3))`
-/

namespace A123023.P14291577364084168411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A123022 (n + 3)|

end

end A123023.P14291577364084168411

namespace A123023

/-- `abs(A123022(n+3))` -/
def P14291577364084168411.Spec : Prop :=
  ∀ n, P14291577364084168411.a n = A123023 n

end A123023

/-! ## A123023.P2668984377414521738

`Δ[A076795(ceil(n/2))]`
-/

namespace A123023.P2668984377414521738
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076795 ⌈(n : ℚ) / 2⌉.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A123023.P2668984377414521738

namespace A123023

/-- `Δ[A076795(ceil(n/2))]` -/
def P2668984377414521738.Spec : Prop :=
  ∀ n, P2668984377414521738.a n = A123023 n

end A123023

/-! ## A123023.P10472835487904750377

`char[2*n]*A133221(n)`
-/

namespace A123023.P10472835487904750377
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) * A133221 n

end

end A123023.P10472835487904750377

namespace A123023

/-- `char[2*n]*A133221(n)` -/
def P10472835487904750377.Spec : Prop :=
  ∀ n, P10472835487904750377.a n = A123023 n

end A123023

/-! ## A123023.P1982869487968923930

`(1-n)*A123022(n+1)`
-/

namespace A123023.P1982869487968923930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - (n : ℤ)) * A123022 (n + 1)

end

end A123023.P1982869487968923930

namespace A123023

/-- `(1-n)*A123022(n+1)` -/
def P1982869487968923930.Spec : Prop :=
  ∀ n, P1982869487968923930.a n = A123023 n

end A123023

/-! ## A123023.P4498873566955246181

`a(n-1)-A055634(n-1)` with `a(0)=1`
-/

namespace A123023.P4498873566955246181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) - A055634 (n - 1)

end

end A123023.P4498873566955246181

namespace A123023

/-- `a(n-1)-A055634(n-1)` -/
def P4498873566955246181.Spec : Prop :=
  ∀ n, P4498873566955246181.a n = A123023 n

end A123023

/-! ## A123023.P15083544808380833673

`A144331(A135276(n))`
-/

namespace A123023.P15083544808380833673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144331 (A135276 n).toNat

end

end A123023.P15083544808380833673

namespace A123023

/-- `A144331(A135276(n))` -/
def P15083544808380833673.Spec : Prop :=
  ∀ n, P15083544808380833673.a n = A123023 n

end A123023

/-! ## A123023.P17461291358401833747

`A144331(A024206(n+1))`
-/

namespace A123023.P17461291358401833747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144331 (A024206 (n + 1)).toNat

end

end A123023.P17461291358401833747

namespace A123023

/-- `A144331(A024206(n+1))` -/
def P17461291358401833747.Spec : Prop :=
  ∀ n, P17461291358401833747.a n = A123023 n

end A123023

/-! ## A123023.P16608025246820588226

`A111106(A134519(n+2))`
-/

namespace A123023.P16608025246820588226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111106 (A134519 (n + 2)).toNat

end

end A123023.P16608025246820588226

namespace A123023

/-- `A111106(A134519(n+2))` -/
def P16608025246820588226.Spec : Prop :=
  ∀ n, P16608025246820588226.a n = A123023 n

end A123023

/-! ## A123023.P6581405441854756997

`A144331(A033638(n+2)-2)`
-/

namespace A123023.P6581405441854756997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144331 (A033638 (n + 2) - 2).toNat

end

end A123023.P6581405441854756997

namespace A123023

/-- `A144331(A033638(n+2)-2)` -/
def P6581405441854756997.Spec : Prop :=
  ∀ n, P6581405441854756997.a n = A123023 n

end A123023

/-! ## A123023.P14200504503747929188

`A059841(n)*A072479(n+1)`
-/

namespace A123023.P14200504503747929188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059841 n * A072479 (n + 1)

end

end A123023.P14200504503747929188

namespace A123023

/-- `A059841(n)*A072479(n+1)` -/
def P14200504503747929188.Spec : Prop :=
  ∀ n, P14200504503747929188.a n = A123023 n

end A123023

/-! ## A123023.P11070448888875102427

`A055634(n)*A059841(n)`
-/

namespace A123023.P11070448888875102427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055634 n * A059841 n

end

end A123023.P11070448888875102427

namespace A123023

/-- `A055634(n)*A059841(n)` -/
def P11070448888875102427.Spec : Prop :=
  ∀ n, P11070448888875102427.a n = A123023 n

end A123023

/-! ## A123023.P1888825008219400825

`A099174(A131179(n))`
-/

namespace A123023.P1888825008219400825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099174 (A131179 n).toNat

end

end A123023.P1888825008219400825

namespace A123023

/-- `A099174(A131179(n))` -/
def P1888825008219400825.Spec : Prop :=
  ∀ n, P1888825008219400825.a n = A123023 n

end A123023

/-! ## A123023.P14988212401842693869

`A275521(A124625(n+1))`
-/

namespace A123023.P14988212401842693869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275521 (A124625 (n + 1)).toNat

end

end A123023.P14988212401842693869

namespace A123023

/-- `A275521(A124625(n+1))` -/
def P14988212401842693869.Spec : Prop :=
  ∀ n, P14988212401842693869.a n = A123023 n

end A123023

/-! ## A123023.P4617219162004356740

`A099174(∑[n])`
-/

namespace A123023.P4617219162004356740
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099174 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A123023.P4617219162004356740

namespace A123023

/-- `A099174(∑[n])` -/
def P4617219162004356740.Spec : Prop :=
  ∀ n, P4617219162004356740.a n = A123023 n

end A123023

/-! ## A123023.P12059113749330682306

`abs(A066325(∑[n]))`
-/

namespace A123023.P12059113749330682306
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A066325 (∑ j ∈ Finset.range (n + 1), f1 j)|

end

end A123023.P12059113749330682306

namespace A123023

/-- `abs(A066325(∑[n]))` -/
def P12059113749330682306.Spec : Prop :=
  ∀ n, P12059113749330682306.a n = A123023 n

end A123023

/-! ## A123023.P5291927406954550737

`A122848(A213037(n))`
-/

namespace A123023.P5291927406954550737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122848 (A213037 n).toNat

end

end A123023.P5291927406954550737

namespace A123023

/-- `A122848(A213037(n))` -/
def P5291927406954550737.Spec : Prop :=
  ∀ n, P5291927406954550737.a n = A123023 n

end A123023

/-! ## A123023.P7410846098933565504

`A059841(n)*A275521(n)`
-/

namespace A123023.P7410846098933565504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059841 n * A275521 n

end

end A123023.P7410846098933565504

namespace A123023

/-- `A059841(n)*A275521(n)` -/
def P7410846098933565504.Spec : Prop :=
  ∀ n, P7410846098933565504.a n = A123023 n

end A123023

/-!
# A123024: a(n) = n!*b(n) where b(n) = (b(n-2) + b(n-3))/(n*(n-1)), b(0) = b(1) = b(2) = 1.

The programs for A123024, the canonical program `A123024.P2848509737970198602` is in `Seq.B000.C018`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A123024 has offset 0).

The definition of A123024 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A123024.P2848509737970198602

`a(n-2)+(n-2)*a(n-3)` with `a(0)=1, a(1)=1, a(2)=2`

The canonical program, it is in `Seq.B000.C018`.
-/

namespace A123024

/-- `a(n-2)+(n-2)*a(n-3)` -/
def P2848509737970198602.Spec : Prop :=
  ∀ n, P2848509737970198602.a n = A123024 n

theorem P2848509737970198602.correct : P2848509737970198602.Spec := by
  intro n
  simp only [A123024]

end A123024

/-! ## A123024.P7314356002560079628

`a(n-2)+a(n-3)*A289207(n)` with `a(0)=1, a(1)=1, a(2)=2`
-/

namespace A123024.P7314356002560079628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 2] fun n a =>
  a (n - 2) + a (n - 3) * A289207 n

end

end A123024.P7314356002560079628

namespace A123024

/-- `a(n-2)+a(n-3)*A289207(n)` -/
def P7314356002560079628.Spec : Prop :=
  ∀ n, P7314356002560079628.a n = A123024 n

end A123024

/-! ## A123024.P12657699951865537503

`A092629(A102456(n))`
-/

namespace A123024.P12657699951865537503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092629 (A102456 n).toNat

end

end A123024.P12657699951865537503

namespace A123024

/-- `A092629(A102456(n))` -/
def P12657699951865537503.Spec : Prop :=
  ∀ n, P12657699951865537503.a n = A123024 n

end A123024

/-! ## A123024.P16493088448709452539

`A308982(A214932(n))`
-/

namespace A123024.P16493088448709452539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308982 (A214932 n).toNat

end

end A123024.P16493088448709452539

namespace A123024

/-- `A308982(A214932(n))` -/
def P16493088448709452539.Spec : Prop :=
  ∀ n, P16493088448709452539.a n = A123024 n

end A123024

/-! ## A123024.P11686144362344330262

`A187213(A226947(n+1))`
-/

namespace A123024.P11686144362344330262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187213 (A226947 (n + 1)).toNat

end

end A123024.P11686144362344330262

namespace A123024

/-- `A187213(A226947(n+1))` -/
def P11686144362344330262.Spec : Prop :=
  ∀ n, P11686144362344330262.a n = A123024 n

end A123024

/-!
# A123025: a(n) = n!*b(n), where b(n) = (1 + n - n^2)*b(n-2)/(n*(n-1)), b(0) = b(1) = 1.

The programs for A123025, the canonical program `A123025.P8168400217958443525` is in `Seq.B000.C018`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A123025 has offset 0).

The definition of A123025 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A123025.P8168400217958443525

`(1+n-n²)*a(n-2)` with `a(0)=1, a(1)=1`

The canonical program, it is in `Seq.B000.C018`.
-/

namespace A123025

/-- `(1+n-n²)*a(n-2)` -/
def P8168400217958443525.Spec : Prop :=
  ∀ n, P8168400217958443525.a n = A123025 n

theorem P8168400217958443525.correct : P8168400217958443525.Spec := by
  intro n
  simp only [A123025]

end A123025

/-! ## A123025.P11187162516522568608

`∏[(1-n²+n)/a(n-1)]` with `a(0)=1`
-/

namespace A123025.P11187162516522568608
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [1] fun n f1 =>
  (1 - (n ^ 2 : ℤ) + (n : ℤ) : ℚ) / f1 (n - 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A123025.P11187162516522568608

namespace A123025

/-- `∏[(1-n²+n)/a(n-1)]` -/
def P11187162516522568608.Spec : Prop :=
  ∀ n, P11187162516522568608.a n = (A123025 n : ℚ)

end A123025

/-! ## A123025.P5893778510435465299

`a(n-2)/(1-n²+n)^(-1)` with `a(0)=1, a(1)=1`
-/

namespace A123025.P5893778510435465299
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 1] fun n a =>
  a (n - 2) / (1 - (n ^ 2 : ℤ) + (n : ℤ) : ℚ) ^ (-1 : ℤ)

end

end A123025.P5893778510435465299

namespace A123025

/-- `a(n-2)/(1-n²+n)^(-1)` -/
def P5893778510435465299.Spec : Prop :=
  ∀ n, P5893778510435465299.a n = (A123025 n : ℚ)

end A123025

/-! ## A123025.P5290827797951636155

`a(n-2)-(n²-n)*a(n-2)` with `a(0)=1, a(1)=1`
-/

namespace A123025.P5290827797951636155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  a (n - 2) - ((n ^ 2 : ℤ) - (n : ℤ)) * a (n - 2)

end

end A123025.P5290827797951636155

namespace A123025

/-- `a(n-2)-(n²-n)*a(n-2)` -/
def P5290827797951636155.Spec : Prop :=
  ∀ n, P5290827797951636155.a n = A123025 n

end A123025

/-! ## A123025.P17069136589385512837

`a(n-2)+(1-n)*n*a(n-2)` with `a(0)=1, a(1)=1`
-/

namespace A123025.P17069136589385512837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  a (n - 2) + (1 - (n : ℤ)) * ((n : ℤ) * a (n - 2))

end

end A123025.P17069136589385512837

namespace A123025

/-- `a(n-2)+(1-n)*n*a(n-2)` -/
def P17069136589385512837.Spec : Prop :=
  ∀ n, P17069136589385512837.a n = A123025 n

end A123025

/-! ## A123025.P8389271616027786637

`a(n-2)-n*(n*a(n-2)-a(n-2))` with `a(0)=1, a(1)=1`
-/

namespace A123025.P8389271616027786637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  a (n - 2) - (n : ℤ) * ((n : ℤ) * a (n - 2) - a (n - 2))

end

end A123025.P8389271616027786637

namespace A123025

/-- `a(n-2)-n*(n*a(n-2)-a(n-2))` -/
def P8389271616027786637.Spec : Prop :=
  ∀ n, P8389271616027786637.a n = A123025 n

end A123025

/-! ## A123025.P9596900756249510049

`-(a(n-2)*A165900(n))` with `a(0)=1, a(1)=1`
-/

namespace A123025.P9596900756249510049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  -(a (n - 2) * A165900 n)

end

end A123025.P9596900756249510049

namespace A123025

/-- `-(a(n-2)*A165900(n))` -/
def P9596900756249510049.Spec : Prop :=
  ∀ n, P9596900756249510049.a n = A123025 n

end A123025

/-! ## A123025.P5370637174937557914

`a(n-2)*A110331(n-1)` with `a(0)=1, a(1)=1`
-/

namespace A123025.P5370637174937557914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  a (n - 2) * A110331 (n - 1)

end

end A123025.P5370637174937557914

namespace A123025

/-- `a(n-2)*A110331(n-1)` -/
def P5370637174937557914.Spec : Prop :=
  ∀ n, P5370637174937557914.a n = A123025 n

end A123025

/-! ## A123025.P64589196072003944

`a(n-2)*A110315(2*(n-1))` with `a(0)=1, a(1)=1`
-/

namespace A123025.P64589196072003944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  a (n - 2) * A110315 (2 * ((n : ℤ) - 1)).toNat

end

end A123025.P64589196072003944

namespace A123025

/-- `a(n-2)*A110315(2*(n-1))` -/
def P64589196072003944.Spec : Prop :=
  ∀ n, P64589196072003944.a n = A123025 n

end A123025

/-!
# A123026: a(n) = n!*b(n), where b(n) = ((n-1)^2 - 2)*b(n-2)/(n*(n-1)) and b(0) = b(1) = 1.

The programs for A123026, the canonical program `A123026.P12570121036417548146` is in `Seq.B000.C018`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A123026 has offset 0).

The definition of A123026 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A123026.P12570121036417548146

`((n-1)²-2)*a(n-2)` with `a(0)=1, a(1)=1`

The canonical program, it is in `Seq.B000.C018`.
-/

namespace A123026

/-- `((n-1)²-2)*a(n-2)` -/
def P12570121036417548146.Spec : Prop :=
  ∀ n, P12570121036417548146.a n = A123026 n

theorem P12570121036417548146.correct : P12570121036417548146.Spec := by
  intro n
  simp only [A123026]

end A123026

/-! ## A123026.P16254468623145418727

`(n-2)*n*a(n-2)-a(n-2)` with `a(0)=1, a(1)=1`
-/

namespace A123026.P16254468623145418727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  ((n : ℤ) - 2) * ((n : ℤ) * a (n - 2)) - a (n - 2)

end

end A123026.P16254468623145418727

namespace A123026

/-- `(n-2)*n*a(n-2)-a(n-2)` -/
def P16254468623145418727.Spec : Prop :=
  ∀ n, P16254468623145418727.a n = A123026 n

theorem P16254468623145418727.correct : P16254468623145418727.Spec := by
  intro n
  simp only [A123026, Nat.add_sub_cancel, A123026.P16254468623145418727.a, A123026.P12570121036417548146.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A123026

/-! ## A123026.P286342487170029212

`a(n-2)*A008865(n-1)` with `a(0)=1, a(1)=1`
-/

namespace A123026.P286342487170029212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  a (n - 2) * A008865 (n - 1)

end

end A123026.P286342487170029212

namespace A123026

/-- `a(n-2)*A008865(n-1)` -/
def P286342487170029212.Spec : Prop :=
  ∀ n, P286342487170029212.a n = A123026 n

end A123026

/-! ## A123026.P7111355891416963319

`a(n-2)*A023444((1-n)²)` with `a(0)=1, a(1)=1`
-/

namespace A123026.P7111355891416963319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  a (n - 2) * A023444 ((1 - (n : ℤ)) ^ 2).toNat

end

end A123026.P7111355891416963319

namespace A123026

/-- `a(n-2)*A023444((1-n)²)` -/
def P7111355891416963319.Spec : Prop :=
  ∀ n, P7111355891416963319.a n = A123026 n

end A123026

/-! ## A123026.P1996868678615559264

`a(n-2)*A179272(A004273(n))` with `a(0)=1, a(1)=1`
-/

namespace A123026.P1996868678615559264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  a (n - 2) * A179272 (A004273 n).toNat

end

end A123026.P1996868678615559264

namespace A123026

/-- `a(n-2)*A179272(A004273(n))` -/
def P1996868678615559264.Spec : Prop :=
  ∀ n, P1996868678615559264.a n = A123026 n

end A123026

/-!
# A123027: Triangle of coefficients of (1 - x)^n*U(n,-(3*x - 2)/(2*x - 2)), where U(n,x) is the n-th Chebyshev polynomial of the second kind.

The programs for A123027, there is no canonical definition to state claims against.
-/

/-! ## A123027.P14392886305461757670

`A124137(A185869(n+1))`
-/

namespace A123027.P14392886305461757670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124137 (A185869 (n + 1)).toNat

end

end A123027.P14392886305461757670

/-! ## A123027.P17571687311685877687

`A124137(A185870(n+1)-1)`
-/

namespace A123027.P17571687311685877687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124137 (A185870 (n + 1) - 1).toNat

end

end A123027.P17571687311685877687

/-! ## A123027.P4796034315448065045

`A202389(A093995(n+1)+2*n+1)`
-/

namespace A123027.P4796034315448065045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202389 (A093995 (n + 1) + (2 * n + 1 : ℤ)).toNat

end

end A123027.P4796034315448065045

/-! ## A123027.P12099532449482644730

`A202389(A002024(n+1)²+2*n+1)`
-/

namespace A123027.P12099532449482644730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202389 (A002024 (n + 1) ^ 2 + (2 * n + 1 : ℤ)).toNat

end

end A123027.P12099532449482644730

/-! ## A123027.P10799830436397473051

`A202389(A061579(n)+A016789(n))`
-/

namespace A123027.P10799830436397473051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202389 (A061579 n + A016789 n).toNat

end

end A123027.P10799830436397473051

/-! ## A123027.P14166848120323516993

`A124137(A061885(n)+A004202(n+1))`
-/

namespace A123027.P14166848120323516993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124137 (A061885 n + A004202 (n + 1)).toNat

end

end A123027.P14166848120323516993

/-! ## A123027.P3030180916969341111

`A124137(A064801(n+1)+A004201(n+1))`
-/

namespace A123027.P3030180916969341111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124137 (A064801 (n + 1) + A004201 (n + 1)).toNat

end

end A123027.P3030180916969341111

/-! ## A123027.P16780763399624892536

`A124137(eq[0, A187616(n)])`
-/

namespace A123027.P16780763399624892536
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187616 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124137 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A123027.P16780763399624892536

/-!
# A123028: a(n) = (3*n^2 + 3*n + 1)*a(n-2), for n>2, with a(0) = a(1) = 1.

The programs for A123028, the canonical program `A123028.P271692435620667391` is in `Seq.B000.C018`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A123028 has offset 0).

The definition of A123028 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(3*n²+3*n+1)*a(n-2)` (program `A123028.P271692435620667391`, by `A123028.P271692435620667391.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A123028.P16727400336313201748

`(3*n*(n+1)+1)*a(n-2)` with `a(0)=1, a(1)=1`
-/

namespace A123028.P16727400336313201748
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1] fun n a =>
  (3 * n * (n + 1) + 1) * a (n - 2)

end

end A123028.P16727400336313201748

namespace A123028

/-- `(3*n*(n+1)+1)*a(n-2)` -/
def P16727400336313201748.Spec : Prop :=
  ∀ n, (P16727400336313201748.a n : ℤ) = A123028 n

theorem P16727400336313201748.correct : P16727400336313201748.Spec := by
  intro n
  simp only [A123028, Nat.add_sub_cancel, A123028.P16727400336313201748.a, A123028.P271692435620667391.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A123028

/-! ## A123028.P271692435620667391

`(3*n²+3*n+1)*a(n-2)` with `a(0)=1, a(1)=1`

The canonical program, it is in `Seq.B000.C018`.
-/

namespace A123028

/-- `(3*n²+3*n+1)*a(n-2)` -/
def P271692435620667391.Spec : Prop :=
  ∀ n, (P271692435620667391.a n : ℤ) = A123028 n

theorem P271692435620667391.correct : P271692435620667391.Spec := by
  intro n
  simp only [A123028]

end A123028

/-! ## A123028.P325195760227114545

`a(n-2)*Δ[n^3]` with `a(0)=1, a(1)=1`
-/

namespace A123028.P325195760227114545
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 3

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  a (n - 2) * ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A123028.P325195760227114545

namespace A123028

/-- `a(n-2)*Δ[n^3]` -/
def P325195760227114545.Spec : Prop :=
  ∀ n, P325195760227114545.a n = A123028 n

end A123028

/-! ## A123028.P11690553495641634282

`floor(a(n-2)*Δ[n*n²])` with `a(0)=1, a(1)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A123028.P11690553495641634282
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  a (n - 2) * ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A123028.P11690553495641634282

namespace A123028

/-- `floor(a(n-2)*Δ[n*n²])` -/
def P11690553495641634282.Spec : Prop :=
  ∀ n, P11690553495641634282.a n = A123028 n

end A123028

/-! ## A123028.P14065469394106427669

`abs(a(n-2)*A003215(n))` with `a(0)=1, a(1)=1`
-/

namespace A123028.P14065469394106427669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  |a (n - 2) * A003215 n|

end

end A123028.P14065469394106427669

namespace A123028

/-- `abs(a(n-2)*A003215(n))` -/
def P14065469394106427669.Spec : Prop :=
  ∀ n, P14065469394106427669.a n = A123028 n

end A123028

/-! ## A123028.P9629202534490179498

`abs(a(n-2)*∑[A008458(n)])` with `a(0)=1, a(1)=1`
-/

namespace A123028.P9629202534490179498
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  |a (n - 2) * (∑ j ∈ Finset.range (n + 1), f1 j)|

end

end A123028.P9629202534490179498

namespace A123028

/-- `abs(a(n-2)*∑[A008458(n)])` -/
def P9629202534490179498.Spec : Prop :=
  ∀ n, P9629202534490179498.a n = A123028 n

end A123028

/-!
# A123029: a(2*n-1) = Product_{i=1..n} Fibonacci(2*i-1) and a(2*n) = Product_{i=1..n} Fibonacci(2*i).

The programs for A123029, there is no canonical definition to state claims against.
-/

/-! ## A123029.P8213329298464258396

`a(n-2)*∑[A212804(n)]` with `a(0)=1, a(1)=1`
-/

namespace A123029.P8213329298464258396
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212804 n

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  a (n - 2) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A123029.P8213329298464258396

/-! ## A123029.P14293626436498753529

`A000045(n+1)*a(n-2)` with `a(0)=1, a(1)=1`
-/

namespace A123029.P14293626436498753529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A000045 (n + 1) * a (n - 2)

end

end A123029.P14293626436498753529

/-! ## A123029.P3892912663691520964

`∏[Δ[A000045(n+2)]/a(n-1)]` with `a(0)=1`
-/

namespace A123029.P3892912663691520964
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (n + 2)

def f1 : ℕ → ℚ := SequenceMachineLib.rec [1] fun n f1 =>
  (f2 (n + 1) - f2 n : ℚ) / f1 (n - 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A123029.P3892912663691520964

/-!
# A123030: Partial sums of A038538.

The programs for A123030, there is no canonical definition to state claims against.
-/

/-! ## A123030.P17465292809544257415

`∑[A038538(n+1)]`
-/

namespace A123030.P17465292809544257415
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038538 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A123030.P17465292809544257415

/-! ## A123030.P8376641209838134442

`∑[∏{e}[n+1, A004101(#)]]`
-/

namespace A123030.P8376641209838134442
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), A004101 (Nat.factorization (f2 n) p)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A123030.P8376641209838134442

/-! ## A123030.P17491125571602723060

`∑[A052305(A101296(n+1))]`
-/

namespace A123030.P17491125571602723060
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052305 (A101296 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A123030.P17491125571602723060

/-! ## A123030.P411419331855675084

`a(n-1)+A073097(2*n)+A038538(n+1)` with `a(0)=1`
-/

namespace A123030.P411419331855675084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (A073097 (2 * n) + A038538 (n + 1))

end

end A123030.P411419331855675084

/-! ## A123030.P14647828740792710304

`a(n-1)+lcm(1-A000007(n), A038538(n+1))` with `a(0)=1`
-/

namespace A123030.P14647828740792710304
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + Int.lcm (1 - A000007 n) (A038538 (n + 1))

end

end A123030.P14647828740792710304

/-! ## A123030.P1089065334225501821

`A092569(A092569(a(n-1)))+A038538(n+1)` with `a(0)=1`
-/

namespace A123030.P1089065334225501821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A092569 (A092569 (a (n - 1)).toNat).toNat + A038538 (n + 1)

end

end A123030.P1089065334225501821

/-! ## A123030.P18247455757873902995

`a(n-1)+lcm(A038538(n+1), A308778(n²))` with `a(0)=1`
-/

namespace A123030.P18247455757873902995
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + Int.lcm (A038538 (n + 1)) (A308778 (n ^ 2))

end

end A123030.P18247455757873902995

/-! ## A123030.P1934623146644123028

`∑[A237840(A000688(n+1)!)]`
-/

namespace A123030.P1934623146644123028
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237840 (Nat.factorial (A000688 (n + 1)).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A123030.P1934623146644123028

/-!
# A123031: Array read by antidiagonals: row i (i>=0) contains those positive integers n >= 2 for which the multiset { n mod k : k=2,3,...,n } contains exactly one copy of i.

The programs for A123031, there is no canonical definition to state claims against.
-/

/-! ## A123031.P17211774505431580364

`A204004(n+1)+A000035(2^n)`
-/

namespace A123031.P17211774505431580364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204004 (n + 1) + A000035 (2 ^ n)

end

end A123031.P17211774505431580364

/-! ## A123031.P6182431317021240922

`A000034(2^n)*A204004(n+1)`
-/

namespace A123031.P6182431317021240922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (2 ^ n) * A204004 (n + 1)

end

end A123031.P6182431317021240922

/-! ## A123031.P9893543805228540962

`A204004(n+1)*A204118(2^n)`
-/

namespace A123031.P9893543805228540962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204004 (n + 1) * A204118 (2 ^ n)

end

end A123031.P9893543805228540962

/-! ## A123031.P6527739382598840896

`A204004(n+1)+A000007(2^n-1)`
-/

namespace A123031.P6527739382598840896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204004 (n + 1) + A000007 (2 ^ n - 1)

end

end A123031.P6527739382598840896

/-! ## A123031.P6758606202713590362

`A321126(n)+A055642(A321119(n))`
-/

namespace A123031.P6758606202713590362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321126 n + A055642 (A321119 n).toNat

end

end A123031.P6758606202713590362

/-!
# A123033: Prime sums of 4 positive 5th powers.

The programs for A123033, there is no canonical definition to state claims against.
-/

/-! ## A123033.P10199552903601749510

`p?[A003349(n+1)]`
-/

namespace A123033.P10199552903601749510
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003349 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A123033.P10199552903601749510

/-! ## A123033.P13628488601785603872

`p?[record[A003349(A133310(n))]]`
-/

namespace A123033.P13628488601785603872
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003349 (A133310 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A123033.P13628488601785603872

/-! ## A123033.P1350306878254455483

`p?[record[A003349(A154958(n))]]`
-/

namespace A123033.P1350306878254455483
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003349 (A154958 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A123033.P1350306878254455483

/-! ## A123033.P5641036226795656761

`p?[record[A003349(A324343(n))]]`
-/

namespace A123033.P5641036226795656761
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003349 (A324343 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A123033.P5641036226795656761

/-! ## A123033.P4869332925301126421

`p?[record[A003349(A324346(n))]]`
-/

namespace A123033.P4869332925301126421
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003349 (A324346 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A123033.P4869332925301126421

/-!
# A123034: Prime sums of 5 positive 5th powers.

The programs for A123034, there is no canonical definition to state claims against.
-/

/-! ## A123034.P13312501871534148813

`p?[A003350(n+1)]`
-/

namespace A123034.P13312501871534148813
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003350 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A123034.P13312501871534148813

/-! ## A123034.P13067790938864880126

`p?[∪[A342685(n+1), A344643(n+1)]]`
-/

namespace A123034.P13067790938864880126
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342685 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344643 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = (x : ℤ)) ∨ ∃ j, f3 j = (x : ℤ)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A123034.P13067790938864880126

/-! ## A123034.P12904758532825710863

`filter[A003350(n+1), A010051(#)]`
-/

namespace A123034.P12904758532825710863
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003350 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A123034.P12904758532825710863

/-! ## A123034.P4453961456374179173

`record[A020639(A003350(C(2, n)+n))]`
-/

namespace A123034.P4453961456374179173
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A003350 (Nat.choose 2 n + n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A123034.P4453961456374179173

/-! ## A123034.P6686740241797977345

`record[A020639(A003350(round(1/(n+1))+n))]`
-/

namespace A123034.P6686740241797977345
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A003350 (SequenceMachineLib.roundAway (1 / (n + 1 : ℚ)) + (n : ℤ)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A123034.P6686740241797977345

/-! ## A123034.P2858580912386078181

`record[A020639(A003350(n+1)%A003362(n+1))]`
-/

namespace A123034.P2858580912386078181
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (Int.tmod (A003350 (n + 1)) (A003362 (n + 1))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A123034.P2858580912386078181

/-! ## A123034.P11054284335304005466

`filter[A003350(n+1), A302777(#)]`
-/

namespace A123034.P11054284335304005466
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003350 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A302777 (f1 j).toNat = 1) n)

end

end A123034.P11054284335304005466

/-! ## A123034.P7856541330997682573

`filter[A003350(n+1), A323152(#)]`
-/

namespace A123034.P7856541330997682573
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003350 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323152 (f1 j).toNat = 1) n)

end

end A123034.P7856541330997682573

/-! ## A123034.P7407980988012444742

`filter[A003350(n+1), A323153(#)]`
-/

namespace A123034.P7407980988012444742
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003350 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323153 (f1 j).toNat = 1) n)

end

end A123034.P7407980988012444742

/-! ## A123034.P5002841771399609265

`filter[A003350(n+1), A345950(#)]`
-/

namespace A123034.P5002841771399609265
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003350 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A345950 (f1 j).toNat = 1) n)

end

end A123034.P5002841771399609265

/-!
# A123035: Prime sums of 6 positive 5th powers.

The programs for A123035, there is no canonical definition to state claims against.
-/

/-! ## A123035.P11650816830788047847

`p?[A003351(n+1)]`
-/

namespace A123035.P11650816830788047847
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003351 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A123035.P11650816830788047847

/-! ## A123035.P13441667383474665948

`p?[record[A003351(A328397(n))]]`
-/

namespace A123035.P13441667383474665948
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003351 (A328397 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A123035.P13441667383474665948

/-! ## A123035.P10599500785951974888

`p?[record[A003351(A328399(n))]]`
-/

namespace A123035.P10599500785951974888
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003351 (A328399 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A123035.P10599500785951974888

/-! ## A123035.P6437597657311238640

`p?[record[A003351(A349315(n))]]`
-/

namespace A123035.P6437597657311238640
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003351 (A349315 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A123035.P6437597657311238640

/-! ## A123035.P5301600098042223478

`p?[record[A003351(A286544(n))]]`
-/

namespace A123035.P5301600098042223478
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003351 (A286544 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A123035.P5301600098042223478

/-! ## A123035.P2183466988570330408

`record[A006530(A003351(n+2))]`
-/

namespace A123035.P2183466988570330408
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A003351 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A123035.P2183466988570330408

/-! ## A123035.P5329613140687908415

`filter[A003351(n+1), A010051(#)]`
-/

namespace A123035.P5329613140687908415
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003351 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A123035.P5329613140687908415

/-!
# A123036: Prime sums of 7 positive 5th powers.

The programs for A123036, there is no canonical definition to state claims against.
-/

/-! ## A123036.P776910669470283090

`p?[A003352(n+1)]`
-/

namespace A123036.P776910669470283090
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003352 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A123036.P776910669470283090

/-! ## A123036.P16744759336723749869

`∩[A003352(n+1), A065376(n+1)]`
-/

namespace A123036.P16744759336723749869
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003352 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065376 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A123036.P16744759336723749869

/-! ## A123036.P10209256594267012087

`∩[A003352(n+1), A216285(n+1)]`
-/

namespace A123036.P10209256594267012087
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003352 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216285 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A123036.P10209256594267012087

/-! ## A123036.P3005259789185323528

`∩[A000040(n+1), A003352(n+1)]`
-/

namespace A123036.P3005259789185323528
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003352 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A123036.P3005259789185323528

/-! ## A123036.P11891544893511798642

`∩[A003352(n+1), A004139(n+1)]`
-/

namespace A123036.P11891544893511798642
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003352 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004139 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A123036.P11891544893511798642

/-! ## A123036.P7445081013734102565

`∩[A003352(n+1), A006005(n+1)]`
-/

namespace A123036.P7445081013734102565
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003352 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006005 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A123036.P7445081013734102565

/-! ## A123036.P10967831080176441456

`∩[A003352(n+1), A008578(n+1)]`
-/

namespace A123036.P10967831080176441456
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003352 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A123036.P10967831080176441456

/-! ## A123036.P6487838076758679673

`∩[A003352(n+1), A033946(n+1)]`
-/

namespace A123036.P6487838076758679673
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003352 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033946 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A123036.P6487838076758679673

/-! ## A123036.P16713648595960181157

`∩[A003352(n+1), A045319(n+1)]`
-/

namespace A123036.P16713648595960181157
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003352 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A123036.P16713648595960181157

/-! ## A123036.P8052512173094145419

`∩[A003352(n+1), A045344(n+1)]`
-/

namespace A123036.P8052512173094145419
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003352 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045344 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A123036.P8052512173094145419

/-! ## A123036.P17080393672378874795

`∩[A003352(n+1), A046022(n+1)]`
-/

namespace A123036.P17080393672378874795
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003352 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046022 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A123036.P17080393672378874795

/-! ## A123036.P4989056687651113853

`∩[A003352(n+1), A051948(n+1)]`
-/

namespace A123036.P4989056687651113853
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003352 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051948 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A123036.P4989056687651113853

/-! ## A123036.P10880100809906703620

`∩[A003352(n+1), A053813(n+1)]`
-/

namespace A123036.P10880100809906703620
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003352 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053813 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A123036.P10880100809906703620

/-! ## A123036.P2773976773616393100

`∩[A003352(n+1), A060634(n+1)]`
-/

namespace A123036.P2773976773616393100
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003352 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060634 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A123036.P2773976773616393100

/-! ## A123036.P17623357782129309988

`∩[A003352(n+1), A062972(n+1)]`
-/

namespace A123036.P17623357782129309988
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003352 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062972 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A123036.P17623357782129309988

/-! ## A123036.P2230476928402939281

`∩[A003352(n+1), A064728(n+1)]`
-/

namespace A123036.P2230476928402939281
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003352 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064728 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A123036.P2230476928402939281

/-! ## A123036.P10479553866271784273

`∩[A003352(n+1), A065091(n+1)]`
-/

namespace A123036.P10479553866271784273
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003352 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A123036.P10479553866271784273

/-! ## A123036.P3865322617927796462

`∩[A003352(n+1), A067126(n+1)]`
-/

namespace A123036.P3865322617927796462
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003352 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067126 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A123036.P3865322617927796462

/-! ## A123036.P11235020448545736798

`∩[A003352(n+1), A108719(n+1)]`
-/

namespace A123036.P11235020448545736798
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003352 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108719 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A123036.P11235020448545736798

/-! ## A123036.P3194197644563780918

`∩[A003352(n+1), A161346(n+1)]`
-/

namespace A123036.P3194197644563780918
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003352 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161346 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A123036.P3194197644563780918

/-!
# A123037: Prime sums of 8 positive 5th powers.

The programs for A123037, there is no canonical definition to state claims against.
-/

/-! ## A123037.P3349769863087539600

`p?[A003353(n+1)]`
-/

namespace A123037.P3349769863087539600
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003353 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A123037.P3349769863087539600

/-! ## A123037.P1296790905499884745

`p?[record[A003353(A328399(n))]]`
-/

namespace A123037.P1296790905499884745
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003353 (A328399 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A123037.P1296790905499884745

/-! ## A123037.P7558539179464546283

`p?[record[A003353(A286544(n))]]`
-/

namespace A123037.P7558539179464546283
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003353 (A286544 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A123037.P7558539179464546283

/-! ## A123037.P756653275767225932

`∩[A054723(n+1), A003353(n+1)]`
-/

namespace A123037.P756653275767225932
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054723 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003353 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A123037.P756653275767225932

/-! ## A123037.P17771864453539708265

`∩[A003353(n+1), A038672(n+1)]`
-/

namespace A123037.P17771864453539708265
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003353 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038672 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A123037.P17771864453539708265

/-! ## A123037.P2399941458008177050

`∩[A003353(n+1), A261123(n+1)]`
-/

namespace A123037.P2399941458008177050
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003353 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261123 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A123037.P2399941458008177050

/-! ## A123037.P5957544869297885905

`∩[A000040(n+1), A003353(n+1)]`
-/

namespace A123037.P5957544869297885905
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003353 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A123037.P5957544869297885905

/-! ## A123037.P10935671537407831835

`∩[A003353(n+1), A004139(n+1)]`
-/

namespace A123037.P10935671537407831835
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003353 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004139 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A123037.P10935671537407831835

/-! ## A123037.P8276067872546095709

`∩[A003353(n+1), A006005(n+1)]`
-/

namespace A123037.P8276067872546095709
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003353 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006005 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A123037.P8276067872546095709

/-! ## A123037.P15422647890497098464

`∩[A003353(n+1), A008578(n+1)]`
-/

namespace A123037.P15422647890497098464
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003353 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A123037.P15422647890497098464

/-! ## A123037.P1925951670015462276

`∩[A003353(n+1), A033946(n+1)]`
-/

namespace A123037.P1925951670015462276
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003353 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033946 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A123037.P1925951670015462276

/-! ## A123037.P899089753274802005

`∩[A003353(n+1), A045319(n+1)]`
-/

namespace A123037.P899089753274802005
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003353 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A123037.P899089753274802005

/-! ## A123037.P7229846108050693513

`∩[A003353(n+1), A045344(n+1)]`
-/

namespace A123037.P7229846108050693513
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003353 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045344 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A123037.P7229846108050693513

/-! ## A123037.P1338408800417690590

`∩[A003353(n+1), A046022(n+1)]`
-/

namespace A123037.P1338408800417690590
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003353 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046022 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A123037.P1338408800417690590

/-! ## A123037.P5995339085141850367

`∩[A003353(n+1), A053813(n+1)]`
-/

namespace A123037.P5995339085141850367
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003353 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053813 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A123037.P5995339085141850367

/-! ## A123037.P11043982253472012369

`∩[A003353(n+1), A065091(n+1)]`
-/

namespace A123037.P11043982253472012369
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003353 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A123037.P11043982253472012369

/-! ## A123037.P15438842631176567995

`∩[A065396(n+1), A003353(n+1)]`
-/

namespace A123037.P15438842631176567995
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065396 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003353 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A123037.P15438842631176567995

/-! ## A123037.P14564760491547709419

`∩[A003353(n+1), A067126(n+1)]`
-/

namespace A123037.P14564760491547709419
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003353 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067126 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A123037.P14564760491547709419

/-! ## A123037.P5989844330414886588

`∩[A003353(n+1), A193339(n+1)]`
-/

namespace A123037.P5989844330414886588
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003353 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193339 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A123037.P5989844330414886588

/-! ## A123037.P5232630257549206706

`filter[A003353(n+1), A010051(#)]`
-/

namespace A123037.P5232630257549206706
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003353 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A123037.P5232630257549206706

/-!
# A123038: Prime sums of 9 positive 5th powers.

The programs for A123038, there is no canonical definition to state claims against.
-/

/-! ## A123038.P1826823144919032875

`p?[A003354(n+1)]`
-/

namespace A123038.P1826823144919032875
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003354 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A123038.P1826823144919032875

/-! ## A123038.P12362694187717262337

`p?[record[A003354(A291766(n))]]`
-/

namespace A123038.P12362694187717262337
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003354 (A291766 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A123038.P12362694187717262337

/-! ## A123038.P9120920050856338769

`∩[A000040(n+1), A003354(n+1)]`
-/

namespace A123038.P9120920050856338769
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003354 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A123038.P9120920050856338769

/-! ## A123038.P10275600467285745661

`∩[A003354(n+1), A004139(n+1)]`
-/

namespace A123038.P10275600467285745661
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003354 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004139 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A123038.P10275600467285745661

/-! ## A123038.P7063184466495727913

`∩[A003354(n+1), A006005(n+1)]`
-/

namespace A123038.P7063184466495727913
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003354 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006005 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A123038.P7063184466495727913

/-! ## A123038.P7574589509114570240

`∩[A003354(n+1), A008578(n+1)]`
-/

namespace A123038.P7574589509114570240
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003354 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A123038.P7574589509114570240

/-! ## A123038.P6028889843384614407

`∩[A003354(n+1), A045319(n+1)]`
-/

namespace A123038.P6028889843384614407
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003354 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A123038.P6028889843384614407

/-! ## A123038.P15802684670967394712

`∩[A003354(n+1), A045344(n+1)]`
-/

namespace A123038.P15802684670967394712
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003354 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045344 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A123038.P15802684670967394712

/-! ## A123038.P6436522600160632637

`∩[A003354(n+1), A046022(n+1)]`
-/

namespace A123038.P6436522600160632637
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003354 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046022 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A123038.P6436522600160632637

/-! ## A123038.P6152641053126624627

`∩[A003354(n+1), A051948(n+1)]`
-/

namespace A123038.P6152641053126624627
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003354 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051948 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A123038.P6152641053126624627

/-! ## A123038.P8447623398814660781

`∩[A003354(n+1), A053813(n+1)]`
-/

namespace A123038.P8447623398814660781
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003354 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053813 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A123038.P8447623398814660781

/-! ## A123038.P11816737305022904904

`∩[A003354(n+1), A054723(n+1)]`
-/

namespace A123038.P11816737305022904904
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003354 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054723 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A123038.P11816737305022904904

/-! ## A123038.P490756099576145585

`∩[A003354(n+1), A062972(n+1)]`
-/

namespace A123038.P490756099576145585
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003354 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062972 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A123038.P490756099576145585

/-! ## A123038.P12623211200373926785

`∩[A003354(n+1), A065091(n+1)]`
-/

namespace A123038.P12623211200373926785
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003354 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A123038.P12623211200373926785

/-! ## A123038.P13846182866129161755

`∩[A003354(n+1), A065396(n+1)]`
-/

namespace A123038.P13846182866129161755
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003354 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065396 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A123038.P13846182866129161755

/-! ## A123038.P7582794036316610907

`∩[A003354(n+1), A070957(n+1)]`
-/

namespace A123038.P7582794036316610907
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003354 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070957 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A123038.P7582794036316610907

/-! ## A123038.P15690050510919177210

`∩[A003354(n+1), A071621(n+1)]`
-/

namespace A123038.P15690050510919177210
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003354 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071621 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A123038.P15690050510919177210

/-! ## A123038.P7380872528521937547

`∩[A003354(n+1), A078138(n+1)]`
-/

namespace A123038.P7380872528521937547
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003354 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078138 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A123038.P7380872528521937547

/-! ## A123038.P17642629603574748521

`∩[A003354(n+1), A140826(n+1)]`
-/

namespace A123038.P17642629603574748521
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003354 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140826 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A123038.P17642629603574748521

/-! ## A123038.P17201557268858248324

`∩[A003354(n+1), A157996(n+1)]`
-/

namespace A123038.P17201557268858248324
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003354 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157996 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A123038.P17201557268858248324

/-!
# A123039: Prime sums of 11 positive 5th powers.

The programs for A123039, there is no canonical definition to state claims against.
-/

/-! ## A123039.P4196180702495745897

`p?[A003356(n+1)]`
-/

namespace A123039.P4196180702495745897
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003356 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A123039.P4196180702495745897

/-! ## A123039.P4834858934471889930

`p?[record[A003356(A324347(n))]]`
-/

namespace A123039.P4834858934471889930
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003356 (A324347 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A123039.P4834858934471889930

/-! ## A123039.P10291862399310483451

`p?[record[A003356(A328399(n))]]`
-/

namespace A123039.P10291862399310483451
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003356 (A328399 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A123039.P10291862399310483451

/-! ## A123039.P8736253163700983758

`filter[A003356(n+1), A010051(#)]`
-/

namespace A123039.P8736253163700983758
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003356 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A123039.P8736253163700983758

/-! ## A123039.P8053051227477796401

`filter[A003356(n+1), A323152(#)]`
-/

namespace A123039.P8053051227477796401
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003356 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323152 (f1 j).toNat = 1) n)

end

end A123039.P8053051227477796401

/-! ## A123039.P17041135323094078738

`filter[A003356(n+1), A323153(#)]`
-/

namespace A123039.P17041135323094078738
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003356 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323153 (f1 j).toNat = 1) n)

end

end A123039.P17041135323094078738

/-! ## A123039.P15662618387313783553

`record[A020639(A003356(C(2, n)+n))]`
-/

namespace A123039.P15662618387313783553
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A003356 (Nat.choose 2 n + n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A123039.P15662618387313783553

/-! ## A123039.P10171891497182671438

`∩[A000040(n+1), A003356(n+1)]`
-/

namespace A123039.P10171891497182671438
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003356 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A123039.P10171891497182671438

/-! ## A123039.P10922120452152447531

`∩[A003356(n+1), A004139(n+1)]`
-/

namespace A123039.P10922120452152447531
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003356 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004139 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A123039.P10922120452152447531

/-! ## A123039.P5452082840289416420

`∩[A003356(n+1), A006005(n+1)]`
-/

namespace A123039.P5452082840289416420
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003356 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006005 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A123039.P5452082840289416420

/-! ## A123039.P12942844604618133525

`∩[A003356(n+1), A008578(n+1)]`
-/

namespace A123039.P12942844604618133525
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003356 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A123039.P12942844604618133525

/-! ## A123039.P5020828885650914752

`∩[A003356(n+1), A033946(n+1)]`
-/

namespace A123039.P5020828885650914752
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003356 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033946 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A123039.P5020828885650914752

/-! ## A123039.P5421930465991414242

`∩[A003356(n+1), A045319(n+1)]`
-/

namespace A123039.P5421930465991414242
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003356 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A123039.P5421930465991414242

/-! ## A123039.P7673815085347473116

`∩[A003356(n+1), A045344(n+1)]`
-/

namespace A123039.P7673815085347473116
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003356 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045344 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A123039.P7673815085347473116

/-! ## A123039.P12446926699403114807

`∩[A003356(n+1), A046022(n+1)]`
-/

namespace A123039.P12446926699403114807
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003356 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046022 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A123039.P12446926699403114807

/-! ## A123039.P7803631526777791394

`∩[A003356(n+1), A053813(n+1)]`
-/

namespace A123039.P7803631526777791394
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003356 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053813 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A123039.P7803631526777791394

/-! ## A123039.P1544132257019243691

`∩[A003356(n+1), A062972(n+1)]`
-/

namespace A123039.P1544132257019243691
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003356 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062972 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A123039.P1544132257019243691

/-! ## A123039.P17522401610922988608

`∩[A003356(n+1), A067126(n+1)]`
-/

namespace A123039.P17522401610922988608
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003356 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067126 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A123039.P17522401610922988608

/-! ## A123039.P16729568885489104070

`∩[A003356(n+1), A161346(n+1)]`
-/

namespace A123039.P16729568885489104070
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003356 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161346 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A123039.P16729568885489104070

/-! ## A123039.P10352300645108204861

`∩[A003356(n+1), A162787(n+1)]`
-/

namespace A123039.P10352300645108204861
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003356 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162787 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A123039.P10352300645108204861

/-!
# A123040: Prime sums of 12 positive 5th powers.

The programs for A123040, there is no canonical definition to state claims against.
-/

/-! ## A123040.P5894338781723883567

`p?[A003357(n+1)]`
-/

namespace A123040.P5894338781723883567
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003357 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A123040.P5894338781723883567

/-! ## A123040.P17822012324947113467

`p?[record[A003357(A324346(n))]]`
-/

namespace A123040.P17822012324947113467
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003357 (A324346 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A123040.P17822012324947113467

/-! ## A123040.P1598636016532919343

`p?[record[A003357(A328764(n))]]`
-/

namespace A123040.P1598636016532919343
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003357 (A328764 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A123040.P1598636016532919343

/-! ## A123040.P15099323034899552518

`record[A006530(A003357(n+2))]`
-/

namespace A123040.P15099323034899552518
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A003357 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A123040.P15099323034899552518

/-! ## A123040.P15893704588667717502

`filter[A003357(n+1), A010051(#)]`
-/

namespace A123040.P15893704588667717502
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003357 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A123040.P15893704588667717502

/-! ## A123040.P14614255395674660467

`∩[A000040(n+1), A003357(n+1)]`
-/

namespace A123040.P14614255395674660467
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003357 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A123040.P14614255395674660467

/-! ## A123040.P15161943910372882218

`∩[A003357(n+1), A004139(n+1)]`
-/

namespace A123040.P15161943910372882218
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003357 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004139 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A123040.P15161943910372882218

/-! ## A123040.P17599694853033966755

`∩[A003357(n+1), A006005(n+1)]`
-/

namespace A123040.P17599694853033966755
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003357 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006005 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A123040.P17599694853033966755

/-! ## A123040.P6644486828355639226

`∩[A003357(n+1), A008578(n+1)]`
-/

namespace A123040.P6644486828355639226
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003357 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A123040.P6644486828355639226

/-! ## A123040.P8547638627785425805

`∩[A003357(n+1), A033946(n+1)]`
-/

namespace A123040.P8547638627785425805
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003357 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033946 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A123040.P8547638627785425805

/-! ## A123040.P7826388397400580519

`∩[A003357(n+1), A045319(n+1)]`
-/

namespace A123040.P7826388397400580519
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003357 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A123040.P7826388397400580519

/-! ## A123040.P15580367618001122920

`∩[A003357(n+1), A045344(n+1)]`
-/

namespace A123040.P15580367618001122920
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003357 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045344 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A123040.P15580367618001122920

/-! ## A123040.P2618312343338997998

`∩[A003357(n+1), A046022(n+1)]`
-/

namespace A123040.P2618312343338997998
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003357 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046022 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A123040.P2618312343338997998

/-! ## A123040.P3343236507247039123

`∩[A003357(n+1), A051948(n+1)]`
-/

namespace A123040.P3343236507247039123
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003357 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051948 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A123040.P3343236507247039123

/-! ## A123040.P12728359261140848238

`∩[A003357(n+1), A062972(n+1)]`
-/

namespace A123040.P12728359261140848238
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003357 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062972 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A123040.P12728359261140848238

/-! ## A123040.P4947792986027947040

`∩[A003357(n+1), A065376(n+1)]`
-/

namespace A123040.P4947792986027947040
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003357 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065376 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A123040.P4947792986027947040

/-! ## A123040.P6004631537478188

`∩[A003357(n+1), A065396(n+1)]`
-/

namespace A123040.P6004631537478188
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003357 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065396 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A123040.P6004631537478188

/-! ## A123040.P396049564565876975

`∩[A003357(n+1), A067126(n+1)]`
-/

namespace A123040.P396049564565876975
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003357 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067126 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A123040.P396049564565876975

/-! ## A123040.P13468988443062854354

`∩[A003357(n+1), A067133(n+1)]`
-/

namespace A123040.P13468988443062854354
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003357 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067133 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A123040.P13468988443062854354

/-! ## A123040.P8589010866240548874

`∩[A003357(n+1), A071621(n+1)]`
-/

namespace A123040.P8589010866240548874
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003357 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071621 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A123040.P8589010866240548874

/-!
# A123042: Sequence gives k numbers from A123041.

The programs for A123042, there is no canonical definition to state claims against.
-/

/-! ## A123042.P15552850098296647076

`A034448(A123041(n+1))²/(A000203(A123041(n+1))*A047994(A123041(n+1)))`
-/

namespace A123042.P15552850098296647076
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A034448 (A123041 (n + 1)).toNat ^ 2 : ℚ) / (A000203 (A123041 (n + 1)).toNat * A047994 (A123041 (n + 1)).toNat : ℚ)

end

end A123042.P15552850098296647076

/-! ## A123042.P9765733076083387106

`A121647(lcm(n+1, A044916(n+1)))`
-/

namespace A123042.P9765733076083387106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121647 (Int.lcm (n + 1 : ℤ) (A044916 (n + 1)))

end

end A123042.P9765733076083387106

/-! ## A123042.P13938973209262698398

`A121647(n+1)-A184955(A106325(n+1))`
-/

namespace A123042.P13938973209262698398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121647 (n + 1) - A184955 (A106325 (n + 1)).toNat

end

end A123042.P13938973209262698398

/-! ## A123042.P4685633717864031388

`A121647(n+1)%A324343(A226216(n+1))`
-/

namespace A123042.P4685633717864031388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A121647 (n + 1)) (A324343 (A226216 (n + 1)).toNat)

end

end A123042.P4685633717864031388

/-!
# A123043: Prime sums of 10 positive 5th powers.

The programs for A123043, there is no canonical definition to state claims against.
-/

/-! ## A123043.P2950893226246855114

`p?[A003355(n+1)]`
-/

namespace A123043.P2950893226246855114
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003355 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A123043.P2950893226246855114

/-! ## A123043.P7418835268255919160

`p?[record[A003355(A291769(n))]]`
-/

namespace A123043.P7418835268255919160
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003355 (A291769 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A123043.P7418835268255919160

/-! ## A123043.P12289568820083183848

`record[A006530(A003355(n+2))]`
-/

namespace A123043.P12289568820083183848
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A003355 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A123043.P12289568820083183848

/-! ## A123043.P11639307485037187684

`filter[A003355(n+1), A010051(#)]`
-/

namespace A123043.P11639307485037187684
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003355 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A123043.P11639307485037187684

/-! ## A123043.P9722819716417008935

`∩[A000040(n+1), A003355(n+1)]`
-/

namespace A123043.P9722819716417008935
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003355 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A123043.P9722819716417008935

/-! ## A123043.P10591748549713260473

`∩[A003355(n+1), A004139(n+1)]`
-/

namespace A123043.P10591748549713260473
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003355 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004139 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A123043.P10591748549713260473

/-! ## A123043.P13686699064377042779

`∩[A003355(n+1), A006005(n+1)]`
-/

namespace A123043.P13686699064377042779
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003355 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006005 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A123043.P13686699064377042779

/-! ## A123043.P2007345410200930816

`∩[A003355(n+1), A008578(n+1)]`
-/

namespace A123043.P2007345410200930816
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003355 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A123043.P2007345410200930816

/-! ## A123043.P91456192272741744

`∩[A003355(n+1), A033946(n+1)]`
-/

namespace A123043.P91456192272741744
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003355 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033946 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A123043.P91456192272741744

/-! ## A123043.P5481786461307073112

`∩[A003355(n+1), A038672(n+1)]`
-/

namespace A123043.P5481786461307073112
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003355 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038672 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A123043.P5481786461307073112

/-! ## A123043.P1971569172533504655

`∩[A003355(n+1), A045319(n+1)]`
-/

namespace A123043.P1971569172533504655
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003355 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A123043.P1971569172533504655

/-! ## A123043.P7595921530754209429

`∩[A003355(n+1), A045344(n+1)]`
-/

namespace A123043.P7595921530754209429
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003355 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045344 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A123043.P7595921530754209429

/-! ## A123043.P5650256891739306305

`∩[A003355(n+1), A046022(n+1)]`
-/

namespace A123043.P5650256891739306305
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003355 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046022 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A123043.P5650256891739306305

/-! ## A123043.P2755218267671973996

`∩[A003355(n+1), A051948(n+1)]`
-/

namespace A123043.P2755218267671973996
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003355 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051948 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A123043.P2755218267671973996

/-! ## A123043.P2737558254407066175

`∩[A003355(n+1), A053813(n+1)]`
-/

namespace A123043.P2737558254407066175
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003355 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053813 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A123043.P2737558254407066175

/-! ## A123043.P15033961007368312501

`∩[A003355(n+1), A060634(n+1)]`
-/

namespace A123043.P15033961007368312501
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003355 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060634 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A123043.P15033961007368312501

/-! ## A123043.P6734053080450085805

`∩[A003355(n+1), A062972(n+1)]`
-/

namespace A123043.P6734053080450085805
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003355 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062972 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A123043.P6734053080450085805

/-! ## A123043.P8283849657011973909

`∩[A003355(n+1), A065091(n+1)]`
-/

namespace A123043.P8283849657011973909
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003355 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A123043.P8283849657011973909

/-! ## A123043.P18159548410120294889

`∩[A003355(n+1), A065396(n+1)]`
-/

namespace A123043.P18159548410120294889
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003355 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065396 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A123043.P18159548410120294889

/-! ## A123043.P4023147960101116874

`∩[A003355(n+1), A067126(n+1)]`
-/

namespace A123043.P4023147960101116874
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003355 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067126 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A123043.P4023147960101116874

/-!
# A123044: Number of benzenoids with 22 hexagons, C_(3h) symmetry and containing 3n carbon atoms.

The programs for A123044, there is no canonical definition to state claims against.
-/

/-! ## A123044.P8194477160976920687

`A129140(A026754(n))`
-/

namespace A123044.P8194477160976920687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129140 (A026754 n).toNat

end

end A123044.P8194477160976920687

/-! ## A123044.P14436345690841707945

`A350945(A006138(n))`
-/

namespace A123044.P14436345690841707945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350945 (A006138 n).toNat

end

end A123044.P14436345690841707945

/-!
# A123045: Number of frieze patterns of length n under a certain group (see Pisanski et al. for precise definition).

The programs for A123045, there is no canonical definition to state claims against.
-/

/-! ## A123045.P2171165065457776054

`A051137(A167614(n+2))-2^n`
-/

namespace A123045.P2171165065457776054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051137 (A167614 (n + 2)).toNat - (2 ^ n : ℤ)

end

end A123045.P2171165065457776054

/-! ## A123045.P4990379532701341820

`A001868(n)-(A278640(n)+A000079(n))`
-/

namespace A123045.P4990379532701341820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001868 n - (A278640 n + A000079 n)

end

end A123045.P4990379532701341820

/-! ## A123045.P8348096987739943532

`A278640(n)+A029744(n+1)*A131572(n)`
-/

namespace A123045.P8348096987739943532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278640 n + A029744 (n + 1) * A131572 n

end

end A123045.P8348096987739943532

/-! ## A123045.P8439123785495996710

`A029744(n+1)²+A278640(n)-A134683(n)`
-/

namespace A123045.P8439123785495996710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029744 (n + 1) ^ 2 + (A278640 n - A134683 n)

end

end A123045.P8439123785495996710

/-! ## A123045.P7836448763559775116

`A161221(n)-A134683(n)`
-/

namespace A123045.P7836448763559775116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161221 n - A134683 n

end

end A123045.P7836448763559775116

/-!
# A123046: Number of frieze patterns of length n under a certain group (see Pisanski et al. for precise definition).

The programs for A123046, there is no canonical definition to state claims against.
-/

/-! ## A123046.P513614483504628265

`A000013(n)+A123045(n)-A000013(2*n)`
-/

namespace A123046.P513614483504628265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000013 n + (A123045 n - A000013 (2 * n))

end

end A123046.P513614483504628265

/-! ## A123046.P17138119635327819894

`eq[A085343(A058049(3*n+1)), A115623(n)]`
-/

namespace A123046.P17138119635327819894
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085343 (A058049 (3 * n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115623 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A123046.P17138119635327819894

/-!
# A123048: Semiprimes that are the sum of a positive square and a positive cube.

The programs for A123048, there is no canonical definition to state claims against.
-/

/-! ## A123048.P11712840372913555152

`∩[A001358(n+1), A055394(n+1)]`
-/

namespace A123048.P11712840372913555152
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001358 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055394 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A123048.P11712840372913555152

/-! ## A123048.P16257705112103792946

`∩[A001358(n+1), A078390(n+1)]`
-/

namespace A123048.P16257705112103792946
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001358 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078390 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A123048.P16257705112103792946

/-! ## A123048.P7896428114980584

`filter[A055394(n+1), A064911(#)]`
-/

namespace A123048.P7896428114980584
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055394 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A064911 (f1 j).toNat = 1) n)

end

end A123048.P7896428114980584

/-! ## A123048.P9033241765144458273

`filter[A078390(n+1), A064911(#)]`
-/

namespace A123048.P9033241765144458273
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078390 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A064911 (f1 j).toNat = 1) n)

end

end A123048.P9033241765144458273

/-! ## A123048.P17060886917442515677

`filter[A078390(n+1), A101040(#)]`
-/

namespace A123048.P17060886917442515677
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078390 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A101040 (f1 j).toNat = 1) n)

end

end A123048.P17060886917442515677

/-! ## A123048.P17334222043235152062

`filter[A078390(n+1), A353799(#)]`
-/

namespace A123048.P17334222043235152062
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078390 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353799 (f1 j).toNat = 1) n)

end

end A123048.P17334222043235152062

/-! ## A123048.P3058350532273636631

`∩[A055394(n+1), A176540(n+1)]`
-/

namespace A123048.P3058350532273636631
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055394 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176540 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A123048.P3058350532273636631

/-! ## A123048.P9804548375073326389

`∩[A078390(n+1), A176540(n+1)]`
-/

namespace A123048.P9804548375073326389
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078390 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176540 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A123048.P9804548375073326389

/-! ## A123048.P13081794153191137882

`∩[A055394(n+1), A186621(n+1)+1]`
-/

namespace A123048.P13081794153191137882
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055394 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186621 (n + 1) + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A123048.P13081794153191137882

/-! ## A123048.P17015097151119259061

`∩[A055394(n+1), A323644(n+1)]`
-/

namespace A123048.P17015097151119259061
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055394 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323644 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A123048.P17015097151119259061

/-! ## A123048.P15187879802746734334

`∩[A078390(n+1), A323644(n+1)]`
-/

namespace A123048.P15187879802746734334
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078390 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323644 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A123048.P15187879802746734334

/-! ## A123048.P10218414225090498347

`∩[A007964(n+1), A078390(n+1)]`
-/

namespace A123048.P10218414225090498347
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007964 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078390 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A123048.P10218414225090498347

/-! ## A123048.P6455563264937362279

`∩[A037143(n+1), A078390(n+1)]`
-/

namespace A123048.P6455563264937362279
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037143 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078390 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A123048.P6455563264937362279

/-! ## A123048.P6285449955311678818

`eq[(A252736(n+1)^6)², A266364(n)]+1`
-/

namespace A123048.P6285449955311678818
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A252736 (n + 1) ^ 6) ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266364 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A123048.P6285449955311678818

/-!
# A123049: Numbers n such that (n+2) | (2^n+3^n).

The programs for A123049, there is no canonical definition to state claims against.
-/

/-! ## A123049.P14278382274710003647

`A240134(∑[A056606(3*n)])`
-/

namespace A123049.P14278382274710003647
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056606 (3 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240134 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A123049.P14278382274710003647

/-!
# A123051: a(2*n-1) = (4*n-3)^(4*n-2) and a(2*n) = (4*n)^(4*n-1), n=1,2,...

The programs for A123051, there is no canonical definition to state claims against.
-/

/-! ## A123051.P17152179266442072629

`∑[3^(n%2)]^record[or(2, n)]`
-/

namespace A123051.P17152179266442072629
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 ^ (n % 2)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 2 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) ^ f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

end

end A123051.P17152179266442072629

/-! ## A123051.P5241017416033423136

`Δ[ceil((1/4+n)²)]^record[or(2, n)]`
-/

namespace A123051.P5241017416033423136
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((1 : ℚ) / 4 + (n : ℚ)) ^ 2⌉

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) ^ f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

end

end A123051.P5241017416033423136

/-! ## A123051.P1579175222738732640

`(or(2*n, and(1, n))+1)^record[xor(2, n)]`
-/

namespace A123051.P1579175222738732640
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 2 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (Nat.lor (2 * n) (Nat.land 1 n) + 1) ^ f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A123051.P1579175222738732640

/-! ## A123051.P10809618889968538253

`(record[2-or(2, -n)]+1)^record[xor(2, n)]`
-/

namespace A123051.P10809618889968538253
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - Int.lor 2 (-(n : ℤ))

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + 1) ^ f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

end

end A123051.P10809618889968538253

/-! ## A123051.P11527672532856162280

`record[A263449(n)^A004443(n)]`
-/

namespace A123051.P11527672532856162280
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A263449 n : ℚ) ^ (A004443 n : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A123051.P11527672532856162280

/-!
# A123052: Numbers k that divide 5^k + 3.

The programs for A123052, there is no canonical definition to state claims against.
-/

/-! ## A123052.P17157099180313966024

`round(root(A125149(n), 4))+n`
-/

namespace A123052.P17157099180313966024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A125149 n : ℝ) ^ (1 / (4 : ℝ))) + (n : ℤ)

end

end A123052.P17157099180313966024

/-!
# A123055: Lexicographically earliest sequence of nonprime positive integers whose first differences represent all prime numbers with exactly one appearance of each prime.

The programs for A123055, there is no canonical definition to state claims against.
-/

/-! ## A123055.P1011770598198269599

`∑[A075568(n+1)]`
-/

namespace A123055.P1011770598198269599
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075568 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A123055.P1011770598198269599

/-! ## A123055.P6230842573244771955

`A075568(A000027(n+1))+a(n-1)` with `a(0)=1`
-/

namespace A123055.P6230842573244771955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A075568 (A000027 (n + 1)).toNat + a (n - 1)

end

end A123055.P6230842573244771955

/-! ## A123055.P15769598369290142962

`A075568(A028310(n)+1)+a(n-1)` with `a(0)=1`
-/

namespace A123055.P15769598369290142962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A075568 (A028310 n + 1).toNat + a (n - 1)

end

end A123055.P15769598369290142962

/-!
# A123056: Values of X satisfying the equation (X-Y)^4 - 2*X*Y = 0 with integer X >= Y >= 0.

The programs for A123056, the canonical program `A123056.P8046938970922466105` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A123056 has offset 0).

The definition of A123056 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A123056.P8046938970922466105

`1/4*A000129(2*n)*(A002203(2*n)+2)`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A123056

/-- `1/4*A000129(2*n)*(A002203(2*n)+2)` -/
def P8046938970922466105.Spec : Prop :=
  ∀ n, P8046938970922466105.a n = (A123056 n : ℚ)

end A123056

/-! ## A123056.P7065779930088940241

`1/4*(A000129(4*n)+2*A000129(2*n))`
-/

namespace A123056.P7065779930088940241
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 : ℚ) / 4 * (A000129 (4 * n) + 2 * A000129 (2 * n) : ℚ)

end

end A123056.P7065779930088940241

namespace A123056

/-- `1/4*(A000129(4*n)+2*A000129(2*n))` -/
def P7065779930088940241.Spec : Prop :=
  ∀ n, P7065779930088940241.a n = (A123056 n : ℚ)

end A123056

/-! ## A123056.P11034493977803765435

`A123115(n)+A001542(n)`
-/

namespace A123056.P11034493977803765435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123115 n + A001542 n

end

end A123056.P11034493977803765435

namespace A123056

/-- `A123115(n)+A001542(n)` -/
def P11034493977803765435.Spec : Prop :=
  ∀ n, P11034493977803765435.a n = A123056 n

end A123056

/-! ## A123056.P9456500957745548616

`(A001108(n)+1)*A001542(n)`
-/

namespace A123056.P9456500957745548616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A001108 n + 1) * A001542 n

end

end A123056.P9456500957745548616

namespace A123056

/-- `(A001108(n)+1)*A001542(n)` -/
def P9456500957745548616.Spec : Prop :=
  ∀ n, P9456500957745548616.a n = A123056 n

end A123056

/-! ## A123056.P17814841594793040009

`(A001541(n)+1)*A001109(n)`
-/

namespace A123056.P17814841594793040009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A001541 n + 1) * A001109 n

end

end A123056.P17814841594793040009

namespace A123056

/-- `(A001541(n)+1)*A001109(n)` -/
def P17814841594793040009.Spec : Prop :=
  ∀ n, P17814841594793040009.a n = A123056 n

end A123056

/-! ## A123056.P470801013190118923

`A001542(n)*A055997(n+1)`
-/

namespace A123056.P470801013190118923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001542 n * A055997 (n + 1)

end

end A123056.P470801013190118923

namespace A123056

/-- `A001542(n)*A055997(n+1)` -/
def P470801013190118923.Spec : Prop :=
  ∀ n, P470801013190118923.a n = A123056 n

end A123056

/-! ## A123056.P14920695147776378595

`A001109(n)*A099938(n+1)`
-/

namespace A123056.P14920695147776378595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001109 n * A099938 (n + 1)

end

end A123056.P14920695147776378595

namespace A123056

/-- `A001109(n)*A099938(n+1)` -/
def P14920695147776378595.Spec : Prop :=
  ∀ n, P14920695147776378595.a n = A123056 n

end A123056

/-! ## A123056.P5374187804419983433

`A123115(n)+A000129(2*n)`
-/

namespace A123056.P5374187804419983433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123115 n + A000129 (2 * n)

end

end A123056.P5374187804419983433

namespace A123056

/-- `A123115(n)+A000129(2*n)` -/
def P5374187804419983433.Spec : Prop :=
  ∀ n, P5374187804419983433.a n = A123056 n

end A123056

/-! ## A123056.P14009614915107567008

`A123115(n)+2*A001109(n)`
-/

namespace A123056.P14009614915107567008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123115 n + 2 * A001109 n

end

end A123056.P14009614915107567008

namespace A123056

/-- `A123115(n)+2*A001109(n)` -/
def P14009614915107567008.Spec : Prop :=
  ∀ n, P14009614915107567008.a n = A123056 n

end A123056

/-! ## A123056.P2033978345825315977

`sqrt(A001110(n))*A099938(n+1)`
-/

namespace A123056.P2033978345825315977
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A001110 n : ℝ) * (A099938 (n + 1) : ℝ)

end

end A123056.P2033978345825315977

namespace A123056

/-- `sqrt(A001110(n))*A099938(n+1)` -/
def P2033978345825315977.Spec : Prop :=
  ∀ n, P2033978345825315977.a n = (A123056 n : ℝ)

end A123056

/-!
# A123057: Values x of solutions (x, y) to the Diophantine equation (x-y)^4 - 8*x*y = 0 with x >= y.

The programs for A123057, the canonical program `A123057.P3491790178531440000` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A123057 has offset 0).

The definition of A123057 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A123057.P3491790178531440000

`2*A123056(n)`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A123057

/-- `2*A123056(n)` -/
def P3491790178531440000.Spec : Prop :=
  ∀ n, P3491790178531440000.a n = A123057 n

theorem P3491790178531440000.correct : P3491790178531440000.Spec := by
  intro n
  simp only [A123057]

end A123057

/-! ## A123057.P6320137360106082670

`A123116(n)+2*A001542(n)`
-/

namespace A123057.P6320137360106082670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123116 n + 2 * A001542 n

end

end A123057.P6320137360106082670

namespace A123057

/-- `A123116(n)+2*A001542(n)` -/
def P6320137360106082670.Spec : Prop :=
  ∀ n, P6320137360106082670.a n = A123057 n

end A123057

/-! ## A123057.P11108962893337902690

`1/2*A000129(2*n)*(A002203(2*n)+2)`
-/

namespace A123057.P11108962893337902690
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 : ℚ) / 2 * (A000129 (2 * n) : ℚ) * (A002203 (2 * n) + 2 : ℚ)

end

end A123057.P11108962893337902690

namespace A123057

/-- `1/2*A000129(2*n)*(A002203(2*n)+2)` -/
def P11108962893337902690.Spec : Prop :=
  ∀ n, P11108962893337902690.a n = (A123057 n : ℚ)

end A123057

/-! ## A123057.P11460407289390781858

`1/2*(A000129(4*n)+2*A000129(2*n))`
-/

namespace A123057.P11460407289390781858
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 : ℚ) / 2 * (A000129 (4 * n) + 2 * A000129 (2 * n) : ℚ)

end

end A123057.P11460407289390781858

namespace A123057

/-- `1/2*(A000129(4*n)+2*A000129(2*n))` -/
def P11460407289390781858.Spec : Prop :=
  ∀ n, P11460407289390781858.a n = (A123057 n : ℚ)

end A123057

/-! ## A123057.P8457297100649669241

`A082405(n)+A001542(n)`
-/

namespace A123057.P8457297100649669241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082405 n + A001542 n

end

end A123057.P8457297100649669241

namespace A123057

/-- `A082405(n)+A001542(n)` -/
def P8457297100649669241.Spec : Prop :=
  ∀ n, P8457297100649669241.a n = A123057 n

end A123057

/-! ## A123057.P6680722128823151522

`Δ[A113225(A004275(n))²]`
-/

namespace A123057.P6680722128823151522
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113225 (A004275 n).toNat ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A123057.P6680722128823151522

namespace A123057

/-- `Δ[A113225(A004275(n))²]` -/
def P6680722128823151522.Spec : Prop :=
  ∀ n, P6680722128823151522.a n = A123057 n

end A123057

/-! ## A123057.P4360846264863521417

`A082405(n)+A182189(n)-1`
-/

namespace A123057.P4360846264863521417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082405 n + (A182189 n - 1)

end

end A123057.P4360846264863521417

namespace A123057

/-- `A082405(n)+A182189(n)-1` -/
def P4360846264863521417.Spec : Prop :=
  ∀ n, P4360846264863521417.a n = A123057 n

end A123057

/-! ## A123057.P5026537330821800507

`(A001541(n)+1)*A001542(n)`
-/

namespace A123057.P5026537330821800507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A001541 n + 1) * A001542 n

end

end A123057.P5026537330821800507

namespace A123057

/-- `(A001541(n)+1)*A001542(n)` -/
def P5026537330821800507.Spec : Prop :=
  ∀ n, P5026537330821800507.a n = A123057 n

end A123057

/-! ## A123057.P15520054078867747269

`(A001108(n)+1)*A005319(n)`
-/

namespace A123057.P15520054078867747269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A001108 n + 1) * A005319 n

end

end A123057.P15520054078867747269

namespace A123057

/-- `(A001108(n)+1)*A005319(n)` -/
def P15520054078867747269.Spec : Prop :=
  ∀ n, P15520054078867747269.a n = A123057 n

end A123057

/-! ## A123057.P7310015518279426076

`A005319(n)*A055997(n+1)`
-/

namespace A123057.P7310015518279426076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005319 n * A055997 (n + 1)

end

end A123057.P7310015518279426076

namespace A123057

/-- `A005319(n)*A055997(n+1)` -/
def P7310015518279426076.Spec : Prop :=
  ∀ n, P7310015518279426076.a n = A123057 n

end A123057

/-!
# A123058: Number of different quartets of 4 differents bemirps of n digits.

The programs for A123058, there is no canonical definition to state claims against.
-/

/-! ## A123058.P1203503380502628096

`A119386(A046880(n+1)+1)`
-/

namespace A123058.P1203503380502628096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119386 (A046880 (n + 1 + 30) + 1).toNat

end

end A123058.P1203503380502628096

/-!
# A123059: Primes of the form 1 + 2*k + 3*k^2 + 4*k^3.

The programs for A123059, there is no canonical definition to state claims against.
-/

/-! ## A123059.P15133071429718312337

`A056578(A123076(n+1))`
-/

namespace A123059.P15133071429718312337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056578 (A123076 (n + 1)).toNat

end

end A123059.P15133071429718312337

/-! ## A123059.P5893442954140855174

`p?[3*∑[∑[8*n+2]+1]+1]`
-/

namespace A123059.P5893442954140855174
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8 * n + 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * (∑ j ∈ Finset.range (n + 1), f2 j) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A123059.P5893442954140855174

/-! ## A123059.P13408943687986090975

`or(1, p?[(4*n+3)*n²+2*n+1])`
-/

namespace A123059.P13408943687986090975
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (4 * n + 3) * n ^ 2 + (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A123059.P13408943687986090975

/-! ## A123059.P8842142081704848973

`∑{p}[p?[(4*n+3)*n²+2*n+1], #]`
-/

namespace A123059.P8842142081704848973
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (4 * n + 3) * n ^ 2 + (2 * n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), p

end

end A123059.P8842142081704848973

/-!
# A123061: Numbers k that divide 5^k - 3.

The programs for A123061, there is no canonical definition to state claims against.
-/

/-! ## A123061.P1950010812016692198

`floor(∑[A222717(A049774(n))/2])`
-/

namespace A123061.P1950010812016692198
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A222717 (A049774 n).toNat : ℚ) / 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊∑ j ∈ Finset.range (n + 1), f1 j⌋

end

end A123061.P1950010812016692198

/-!
# A123063: Theta series of lattice with Gram matrix [4,1;1,8].

The programs for A123063, there is no canonical definition to state claims against.
-/

/-! ## A123063.P7245439759614619257

`A002654(A020695(n)-A088512(n))`
-/

namespace A123063.P7245439759614619257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002654 (A020695 n - A088512 n).toNat

end

end A123063.P7245439759614619257

/-! ## A123063.P6705475618978668099

`and(A011773(A001060(n)), A137735(n))`
-/

namespace A123063.P6705475618978668099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A011773 (A001060 n).toNat) (A137735 n)

end

end A123063.P6705475618978668099

/-! ## A123063.P11396377182726020620

`and(A000120(A134189(n+1)), A301694(n))`
-/

namespace A123063.P11396377182726020620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A000120 (A134189 (n + 1)).toNat) (A301694 n)

end

end A123063.P11396377182726020620

/-! ## A123063.P12186956905308523285

`A028930(A235200(n)%A272773(n))`
-/

namespace A123063.P12186956905308523285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028930 (Int.tmod (A235200 n) (A272773 n)).toNat

end

end A123063.P12186956905308523285

/-! ## A123063.P8284357240995103097

`and(A070366(A048395(n)), A327343(n+1))`
-/

namespace A123063.P8284357240995103097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A070366 (A048395 n).toNat) (A327343 (n + 1))

end

end A123063.P8284357240995103097

/-!
# A123064: Numbers represented by the quadratic form 2 x^2 + xy + 4 y^2.

The programs for A123064, there is no canonical definition to state claims against.
-/

/-! ## A123064.P14655401435762071054

`lt[0, A123063(n)]`
-/

namespace A123064.P14655401435762071054
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123063 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A123064.P14655401435762071054

/-! ## A123064.P13113848339245737332

`lt[0, A033743(8*n)]`
-/

namespace A123064.P13113848339245737332
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033743 (8 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A123064.P13113848339245737332

/-! ## A123064.P6858152801529022848

`eq[0, A092669(A123063(n)+1)]`
-/

namespace A123064.P6858152801529022848
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092669 (A123063 n + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A123064.P6858152801529022848

/-! ## A123064.P8482235208926931256

`eq[1, A329645(A123063(n)+1)]`
-/

namespace A123064.P8482235208926931256
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329645 (A123063 n + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A123064.P8482235208926931256

/-! ## A123064.P9505633323292958545

`eq[2, A130130(A123063(n)+1)]`
-/

namespace A123064.P9505633323292958545
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130130 (A123063 n + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A123064.P9505633323292958545

/-! ## A123064.P11011613845867815071

`eq[2, A130130(2*A123063(n))]`
-/

namespace A123064.P11011613845867815071
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130130 (2 * A123063 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A123064.P11011613845867815071

/-! ## A123064.P1144282919294626918

`eq[1, abs(A258998(A123063(n)²))]`
-/

namespace A123064.P1144282919294626918
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A258998 (A123063 n ^ 2).toNat|

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A123064.P1144282919294626918

/-! ## A123064.P13432772287631194479

`A106612(eq[1, gcd(5, A123063(n))²])`
-/

namespace A123064.P13432772287631194479
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 5 (A123063 n) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106612 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A123064.P13432772287631194479

/-! ## A123064.P1491959168593726162

`eq[1, A000040(A123063(n)+1)%2]`
-/

namespace A123064.P1491959168593726162
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000040 (A123063 n + 1).toNat) 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A123064.P1491959168593726162

/-! ## A123064.P16022034393164574869

`record[and(n+1, A258998(A123063(n+1)²))]`
-/

namespace A123064.P16022034393164574869
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n + 1 : ℤ) (A258998 (A123063 (n + 1) ^ 2).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A123064.P16022034393164574869

/-!
# A123065: Numbers primitively represented by the quadratic form 2 x^2 + xy + 4 y^2.

The programs for A123065, there is no canonical definition to state claims against.
-/

/-! ## A123065.P15426216937760288524

`A123064(A039117(n+2))`
-/

namespace A123065.P15426216937760288524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123064 (A039117 (n + 2)).toNat

end

end A123065.P15426216937760288524

/-! ## A123065.P9800764350837812342

`A123064(A344881(n+2))`
-/

namespace A123065.P9800764350837812342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123064 (A344881 (n + 2)).toNat

end

end A123065.P9800764350837812342

/-! ## A123065.P4994615743412947451

`A072013(lt[A349269(n), n])`
-/

namespace A123065.P4994615743412947451
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349269 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072013 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A123065.P4994615743412947451

/-! ## A123065.P4144742520228167901

`A123064(comp[A079426(n+1)])`
-/

namespace A123065.P4144742520228167901
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079426 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123064 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A123065.P4144742520228167901

/-! ## A123065.P3198423619189096996

`A123064(A039149(n+2)+1)`
-/

namespace A123065.P3198423619189096996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123064 (A039149 (n + 2) + 1).toNat

end

end A123065.P3198423619189096996

/-!
# A123066: (Number of numbers <= n with an odd number of distinct prime factors) - (number of numbers <= n with an even number of distinct prime factors).

The programs for A123066, the canonical program `A123066.P9872390040853213859` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A123066 has offset 1).

The definition of A123066 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A123066.P9872390040853213859

`1-A174863(n+1)`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A123066

/-- `1-A174863(n+1)` -/
def P9872390040853213859.Spec : Prop :=
  ∀ n, P9872390040853213859.a n = A123066 (n + 1)

theorem P9872390040853213859.correct : P9872390040853213859.Spec := by
  intro n
  simp only [A123066, Nat.add_sub_cancel]

end A123066

/-! ## A123066.P16326562784651172051

`1-∑[A076479(n+1)]`
-/

namespace A123066.P16326562784651172051
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076479 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A123066.P16326562784651172051

namespace A123066

/-- `1-∑[A076479(n+1)]` -/
def P16326562784651172051.Spec : Prop :=
  ∀ n, P16326562784651172051.a n = A123066 (n + 1)

end A123066

/-! ## A123066.P17685230984620850264

`∑[2*A092248(n+1)]-n`
-/

namespace A123066.P17685230984620850264
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A092248 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ)

end

end A123066.P17685230984620850264

namespace A123066

/-- `∑[2*A092248(n+1)]-n` -/
def P17685230984620850264.Spec : Prop :=
  ∀ n, P17685230984620850264.a n = A123066 (n + 1)

end A123066

/-! ## A123066.P18021278316478581879

`1-∑[A008683(∏{p}[n+1, #])]`
-/

namespace A123066.P18021278316478581879
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (∏ p ∈ Nat.primeFactors (f2 n), p)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A123066.P18021278316478581879

namespace A123066

/-- `1-∑[A008683(∏{p}[n+1, #])]` -/
def P18021278316478581879.Spec : Prop :=
  ∀ n, P18021278316478581879.a n = A123066 (n + 1)

end A123066

/-! ## A123066.P2997020605932695215

`1-∑[(-1)^A001221(n+1)]`
-/

namespace A123066.P2997020605932695215
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (-1 : ℚ) ^ (A001221 (n + 1) : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  1 - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A123066.P2997020605932695215

namespace A123066

/-- `1-∑[(-1)^A001221(n+1)]` -/
def P2997020605932695215.Spec : Prop :=
  ∀ n, P2997020605932695215.a n = (A123066 (n + 1) : ℚ)

end A123066

/-! ## A123066.P4438814047400769711

`1-∑[∏{p}[n+1, -A001222(#)]]`
-/

namespace A123066.P4438814047400769711
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), (-A001222 p)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A123066.P4438814047400769711

namespace A123066

/-- `1-∑[∏{p}[n+1, -A001222(#)]]` -/
def P4438814047400769711.Spec : Prop :=
  ∀ n, P4438814047400769711.a n = A123066 (n + 1)

end A123066

/-! ## A123066.P1617932040040097754

`1-∑[A008683(A007947(n+1))]`
-/

namespace A123066.P1617932040040097754
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A007947 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A123066.P1617932040040097754

namespace A123066

/-- `1-∑[A008683(A007947(n+1))]` -/
def P1617932040040097754.Spec : Prop :=
  ∀ n, P1617932040040097754.a n = A123066 (n + 1)

end A123066

/-! ## A123066.P15879239326966302899

`1-∑[A008683(A292586(n+1))]`
-/

namespace A123066.P15879239326966302899
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A292586 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A123066.P15879239326966302899

namespace A123066

/-- `1-∑[A008683(A292586(n+1))]` -/
def P15879239326966302899.Spec : Prop :=
  ∀ n, P15879239326966302899.a n = A123066 (n + 1)

end A123066

/-! ## A123066.P17216378678189633346

`1-∑[A008683(A329607(n+1))]`
-/

namespace A123066.P17216378678189633346
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A329607 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A123066.P17216378678189633346

namespace A123066

/-- `1-∑[A008683(A329607(n+1))]` -/
def P17216378678189633346.Spec : Prop :=
  ∀ n, P17216378678189633346.a n = A123066 (n + 1)

end A123066

/-! ## A123066.P18036958919695170002

`1-∑[A008683(A338224(n+1))]`
-/

namespace A123066.P18036958919695170002
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A338224 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A123066.P18036958919695170002

namespace A123066

/-- `1-∑[A008683(A338224(n+1))]` -/
def P18036958919695170002.Spec : Prop :=
  ∀ n, P18036958919695170002.a n = A123066 (n + 1)

end A123066

/-! ## A123066.P17291676310306201755

`1-∑[A008683(A273258(n+1))]`
-/

namespace A123066.P17291676310306201755
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A273258 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A123066.P17291676310306201755

namespace A123066

/-- `1-∑[A008683(A273258(n+1))]` -/
def P17291676310306201755.Spec : Prop :=
  ∀ n, P17291676310306201755.a n = A123066 (n + 1)

end A123066

/-! ## A123066.P7815520003674933518

`1-∑[A355683((n+1)²)]`
-/

namespace A123066.P7815520003674933518
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355683 ((n + 1) ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A123066.P7815520003674933518

namespace A123066

/-- `1-∑[A355683((n+1)²)]` -/
def P7815520003674933518.Spec : Prop :=
  ∀ n, P7815520003674933518.a n = A123066 (n + 1)

end A123066

/-! ## A123066.P866107277617645367

`1-∑[A162511((n+1)²)]`
-/

namespace A123066.P866107277617645367
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162511 ((n + 1) ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A123066.P866107277617645367

namespace A123066

/-- `1-∑[A162511((n+1)²)]` -/
def P866107277617645367.Spec : Prop :=
  ∀ n, P866107277617645367.a n = A123066 (n + 1)

end A123066

/-!
# A123068: Numbers represented by the "Little Methuselah" quadratic form x^2 + 2*y^2 + y*z + 4*z^2.

The programs for A123068, there is no canonical definition to state claims against.
-/

/-! ## A123068.P9979379919332162046

`comp[n!-89]`
-/

namespace A123068.P9979379919332162046
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) - 89

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A123068.P9979379919332162046

/-! ## A123068.P1562756579746604141

`comp[2^n-33]`
-/

namespace A123068.P1562756579746604141
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) - 33

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A123068.P1562756579746604141

/-! ## A123068.P8236236435532561253

`round(n/sin(7/4))`
-/

namespace A123068.P8236236435532561253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((n : ℝ) / Real.sin ((7 : ℚ) / 4 : ℝ))

end

end A123068.P8236236435532561253

/-! ## A123068.P2226771310103547916

`round(n/cos(ϕ/9))`
-/

namespace A123068.P2226771310103547916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((n : ℝ) / Real.cos (Real.goldenRatio / 9))

end

end A123068.P2226771310103547916

/-! ## A123068.P15785329647125582269

`round(n*cosh(ϕ/9))`
-/

namespace A123068.P15785329647125582269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((n : ℝ) * Real.cosh (Real.goldenRatio / 9))

end

end A123068.P15785329647125582269

/-!
# A123070: Hofstadter Flip-G-sequence.

The programs for A123070, the canonical program `A123070.P7840589467265663701` is in `Seq.B000.C018`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A123070 has offset 0).

The definition of A123070 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A123070.P7840589467265663701

`n-floor((n-2)/(1+ϕ))-1`

The canonical program, it is in `Seq.B000.C018`.
-/

namespace A123070

/-- `n-floor((n-2)/(1+ϕ))-1` -/
def P7840589467265663701.Spec : Prop :=
  ∀ n, P7840589467265663701.a n = A123070 n

theorem P7840589467265663701.correct : P7840589467265663701.Spec := by
  intro n
  simp only [A123070]

end A123070

/-! ## A123070.P4702168605257523487

`-xor(-1, ceil((n-2)/ϕ))`
-/

namespace A123070.P4702168605257523487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -Int.xor (-1) ⌈((n : ℤ) - 2 : ℝ) / Real.goldenRatio⌉

end

end A123070.P4702168605257523487

namespace A123070

/-- `-xor(-1, ceil((n-2)/ϕ))` -/
def P4702168605257523487.Spec : Prop :=
  ∀ n, P4702168605257523487.a n = A123070 n

end A123070

/-! ## A123070.P4132476984742452812

`ceil(gcd(n, n+1)+(n-2)/ϕ)`
-/

namespace A123070.P4132476984742452812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(Nat.gcd n (n + 1) : ℝ) + ((n : ℤ) - 2 : ℝ) / Real.goldenRatio⌉

end

end A123070.P4132476984742452812

namespace A123070

/-- `ceil(gcd(n, n+1)+(n-2)/ϕ)` -/
def P4132476984742452812.Spec : Prop :=
  ∀ n, P4132476984742452812.a n = A123070 n

end A123070

/-! ## A123070.P14862224293689693347

`ceil(xor(2*n+1, 2*n)+(n-2)/ϕ)`
-/

namespace A123070.P14862224293689693347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(Nat.xor (2 * n + 1) (2 * n) : ℝ) + ((n : ℤ) - 2 : ℝ) / Real.goldenRatio⌉

end

end A123070.P14862224293689693347

namespace A123070

/-- `ceil(xor(2*n+1, 2*n)+(n-2)/ϕ)` -/
def P14862224293689693347.Spec : Prop :=
  ∀ n, P14862224293689693347.a n = A123070 n

end A123070

/-! ## A123070.P9730335137610121665

`∑[char[n-A188467(n+1)]]`
-/

namespace A123070.P9730335137610121665
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A188467 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A123070.P9730335137610121665

namespace A123070

/-- `∑[char[n-A188467(n+1)]]` -/
def P9730335137610121665.Spec : Prop :=
  ∀ n, (P9730335137610121665.a n : ℤ) = A123070 n

end A123070

/-! ## A123070.P11231714272186316243

`∑[A289034(C(n, a(n-1)))]` with `a(0)=0`
-/

namespace A123070.P11231714272186316243
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f1 =>
  A289034 (Nat.choose n (f1 (n - 1)).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A123070.P11231714272186316243

namespace A123070

/-- `∑[A289034(C(n, a(n-1)))]` -/
def P11231714272186316243.Spec : Prop :=
  ∀ n, P11231714272186316243.a n = A123070 n

end A123070

/-! ## A123070.P10043342555144934642

`∑[char[char[A026351(n)]+1+n]]`
-/

namespace A123070.P10043342555144934642
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026351 n

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f3 j = (n : ℤ) then 1 else 0) + 1 + n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A123070.P10043342555144934642

namespace A123070

/-- `∑[char[char[A026351(n)]+1+n]]` -/
def P10043342555144934642.Spec : Prop :=
  ∀ n, (P10043342555144934642.a n : ℤ) = A123070 n

end A123070

/-! ## A123070.P12995578841219708835

`∑[char[A189479(n+1)+n+1]]`
-/

namespace A123070.P12995578841219708835
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189479 (n + 1) + (n + 1 : ℤ)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A123070.P12995578841219708835

namespace A123070

/-- `∑[char[A189479(n+1)+n+1]]` -/
def P12995578841219708835.Spec : Prop :=
  ∀ n, (P12995578841219708835.a n : ℤ) = A123070 n

end A123070

/-! ## A123070.P14274407271557738630

`A005206(A188436(n+1)+n)`
-/

namespace A123070.P14274407271557738630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005206 (A188436 (n + 1) + (n : ℤ)).toNat

end

end A123070.P14274407271557738630

namespace A123070

/-- `A005206(A188436(n+1)+n)` -/
def P14274407271557738630.Spec : Prop :=
  ∀ n, P14274407271557738630.a n = A123070 n

end A123070

/-! ## A123070.P9951252364409413355

`∑[A000045(Δ[A188467(n+1)]+1)]`
-/

namespace A123070.P9951252364409413355
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188467 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (f2 (n + 1) - f2 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A123070.P9951252364409413355

namespace A123070

/-- `∑[A000045(Δ[A188467(n+1)]+1)]` -/
def P9951252364409413355.Spec : Prop :=
  ∀ n, P9951252364409413355.a n = A123070 n

end A123070

/-! ## A123070.P14806077300354689514

`∑[A000194(Δ[A188467(n+1)]+1)]`
-/

namespace A123070.P14806077300354689514
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188467 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000194 (f2 (n + 1) - f2 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A123070.P14806077300354689514

namespace A123070

/-- `∑[A000194(Δ[A188467(n+1)]+1)]` -/
def P14806077300354689514.Spec : Prop :=
  ∀ n, P14806077300354689514.a n = A123070 n

end A123070

/-! ## A123070.P5985223031439250160

`∑[A118977(Δ[A188467(n+1)]+1)]`
-/

namespace A123070.P5985223031439250160
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188467 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118977 (f2 (n + 1) - f2 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A123070.P5985223031439250160

namespace A123070

/-- `∑[A118977(Δ[A188467(n+1)]+1)]` -/
def P5985223031439250160.Spec : Prop :=
  ∀ n, P5985223031439250160.a n = A123070 n

end A123070

/-! ## A123070.P8584844465511389390

`∑[A046978(A165404(n))²]`
-/

namespace A123070.P8584844465511389390
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046978 (A165404 n).toNat ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A123070.P8584844465511389390

namespace A123070

/-- `∑[A046978(A165404(n))²]` -/
def P8584844465511389390.Spec : Prop :=
  ∀ n, P8584844465511389390.a n = A123070 n

end A123070

/-! ## A123070.P7584929592838436946

`∑[A046978(A165404(n))^2^A001222(n+1)]`
-/

namespace A123070.P7584929592838436946
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A046978 (A165404 n).toNat : ℝ) ^ ((2 : ℚ) ^ (A001222 (n + 1) : ℤ) : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A123070.P7584929592838436946

namespace A123070

/-- `∑[A046978(A165404(n))^2^A001222(n+1)]` -/
def P7584929592838436946.Spec : Prop :=
  ∀ n, P7584929592838436946.a n = (A123070 n : ℝ)

end A123070

/-! ## A123070.P17639129656487707806

`ceil(tanh(n+1)+(n-2)/ϕ)`
-/

namespace A123070.P17639129656487707806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.tanh (n + 1 : ℝ) + ((n : ℤ) - 2 : ℝ) / Real.goldenRatio⌉

end

end A123070.P17639129656487707806

namespace A123070

/-- `ceil(tanh(n+1)+(n-2)/ϕ)` -/
def P17639129656487707806.Spec : Prop :=
  ∀ n, P17639129656487707806.a n = A123070 n

end A123070

/-!
# A123071: Bishops on a 2n+1 X 2n+1 board (see Robinson paper for details).

The programs for A123071, the canonical program `A123071.P17796605501176789475` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A123071 has offset 0).

The definition of A123071 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 113 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A123071.P17796605501176789475

`A135401(n+1)*A135401(n)`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A123071

/-- `A135401(n+1)*A135401(n)` -/
def P17796605501176789475.Spec : Prop :=
  ∀ n, P17796605501176789475.a n = A123071 n

theorem P17796605501176789475.correct : P17796605501176789475.Spec := by
  intro n
  simp only [A123071]

end A123071

/-! ## A123071.P15958517777855512119

`A000898(ceil(n/2))*A135401(n)`
-/

namespace A123071.P15958517777855512119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000898 ⌈(n : ℚ) / 2⌉.toNat * A135401 n

end

end A123071.P15958517777855512119

namespace A123071

/-- `A000898(ceil(n/2))*A135401(n)` -/
def P15958517777855512119.Spec : Prop :=
  ∀ n, P15958517777855512119.a n = A123071 n

end A123071

/-! ## A123071.P541971038576553927

`∏{e}[A025192(n), A005631(#)]`
-/

namespace A123071.P541971038576553927
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025192 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A005631 (Nat.factorization (f1 n).natAbs p)

end

end A123071.P541971038576553927

namespace A123071

/-- `∏{e}[A025192(n), A005631(#)]` -/
def P541971038576553927.Spec : Prop :=
  ∀ n, P541971038576553927.a n = A123071 n

end A123071

/-! ## A123071.P14907781310954490248

`∏{e}[A100747(n), A000898(#)]`
-/

namespace A123071.P14907781310954490248
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100747 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A000898 (Nat.factorization (f1 n).natAbs p)

end

end A123071.P14907781310954490248

namespace A123071

/-- `∏{e}[A100747(n), A000898(#)]` -/
def P14907781310954490248.Spec : Prop :=
  ∀ n, P14907781310954490248.a n = A123071 n

end A123071

/-!
# A123072: Bishops on an 8n+1 X 8n+1 board (see Robinson paper for details).

The programs for A123072, the canonical program `A123072.P12638135742142406542` is in `Seq.B000.C018`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A123072 has offset 0).

The definition of A123072 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A123072.P12638135742142406542

`ceil(((2*n)!/n!)²/2)`

The canonical program, it is in `Seq.B000.C018`.
-/

namespace A123072

/-- `ceil(((2*n)!/n!)²/2)` -/
def P12638135742142406542.Spec : Prop :=
  ∀ n, P12638135742142406542.a n = A123072 n

theorem P12638135742142406542.correct : P12638135742142406542.Spec := by
  intro n
  simp only [A123072]

end A123072

/-! ## A123072.P10456707136224982529

`n!*A187535(n)`
-/

namespace A123072.P10456707136224982529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) * A187535 n

end

end A123072.P10456707136224982529

namespace A123072

/-- `n!*A187535(n)` -/
def P10456707136224982529.Spec : Prop :=
  ∀ n, P10456707136224982529.a n = A123072 n

end A123072

/-! ## A123072.P18389886428433706928

`(2-4*n)²*a(n-1)` with `a(0)=1, a(1)=2`
-/

namespace A123072.P18389886428433706928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  (2 - (4 * n : ℤ)) ^ 2 * a (n - 1)

end

end A123072.P18389886428433706928

namespace A123072

/-- `(2-4*n)²*a(n-1)` -/
def P18389886428433706928.Spec : Prop :=
  ∀ n, P18389886428433706928.a n = A123072 n

end A123072

/-! ## A123072.P7298346150958678827

`ceil(2^(n-1))*∏[record[(2*n²)^and(1, n)]]`
-/

namespace A123072.P7298346150958678827
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (2 * n ^ 2) ^ Nat.land 1 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉ * ((∏ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A123072.P7298346150958678827

namespace A123072

/-- `ceil(2^(n-1))*∏[record[(2*n²)^and(1, n)]]` -/
def P7298346150958678827.Spec : Prop :=
  ∀ n, P7298346150958678827.a n = A123072 n

end A123072

/-! ## A123072.P7480097291753851238

`round(A122747(n)/2)`
-/

namespace A123072.P7480097291753851238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A122747 n : ℚ) / 2)

end

end A123072.P7480097291753851238

namespace A123072

/-- `round(A122747(n)/2)` -/
def P7480097291753851238.Spec : Prop :=
  ∀ n, P7480097291753851238.a n = A123072 n

end A123072

/-!
# A123073: Number of ordered triples of primes (p,q,r) such that pqr = n-th 3-almost prime A014612(n).

The programs for A123073, the canonical program `A123073.P6150319643950598268` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A123073 has offset 1).

The definition of A123073 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A123073.P7475626864946503169

`floor(root(A209323(n+1), γ))`
-/

namespace A123073.P7475626864946503169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A209323 (n + 1) : ℝ) ^ (1 / Real.eulerMascheroniConstant)⌋

end

end A123073.P7475626864946503169

namespace A123073

/-- `floor(root(A209323(n+1), γ))` -/
def P7475626864946503169.Spec : Prop :=
  ∀ n, P7475626864946503169.a n = A123073 (n + 1)

end A123073

/-! ## A123073.P8821512202838599305

`6/∏{e}[A014612(n+1), #!]`
-/

namespace A123073.P8821512202838599305
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014612 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  6 / ((∏ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorial (Nat.factorization (f1 n).natAbs p) : ℕ) : ℚ)

end

end A123073.P8821512202838599305

namespace A123073

/-- `6/∏{e}[A014612(n+1), #!]` -/
def P8821512202838599305.Spec : Prop :=
  ∀ n, P8821512202838599305.a n = (A123073 (n + 1) : ℚ)

end A123073

/-! ## A123073.P3636253739857588222

`A123074(Δ[A110209(n)])`
-/

namespace A123073.P3636253739857588222
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110209 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123074 (f1 (n + 1) - f1 n).toNat

end

end A123073.P3636253739857588222

namespace A123073

/-- `A123074(Δ[A110209(n)])` -/
def P3636253739857588222.Spec : Prop :=
  ∀ n, P3636253739857588222.a n = A123073 (n + 1)

end A123073

/-! ## A123073.P14732324490247931159

`A160086(Δ[A110209(n)])`
-/

namespace A123073.P14732324490247931159
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110209 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160086 (f1 (n + 1) - f1 n).toNat

end

end A123073.P14732324490247931159

namespace A123073

/-- `A160086(Δ[A110209(n)])` -/
def P14732324490247931159.Spec : Prop :=
  ∀ n, P14732324490247931159.a n = A123073 (n + 1)

end A123073

/-! ## A123073.P6150319643950598268

`A200221(Δ[A110209(n)])`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A123073

/-- `A200221(Δ[A110209(n)])` -/
def P6150319643950598268.Spec : Prop :=
  ∀ n, P6150319643950598268.a n = A123073 (n + 1)

theorem P6150319643950598268.correct : P6150319643950598268.Spec := by
  intro n
  simp only [A123073, Nat.add_sub_cancel]

end A123073

/-! ## A123073.P15244177288430430296

`A008480(A014612(n+1))`
-/

namespace A123073.P15244177288430430296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008480 (A014612 (n + 1)).toNat

end

end A123073.P15244177288430430296

namespace A123073

/-- `A008480(A014612(n+1))` -/
def P15244177288430430296.Spec : Prop :=
  ∀ n, P15244177288430430296.a n = A123073 (n + 1)

end A123073

/-! ## A123073.P18092792622948525459

`∑{d}[A014612(n+1), A123074(#)]`
-/

namespace A123073.P18092792622948525459
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014612 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A123074 d

end

end A123073.P18092792622948525459

namespace A123073

/-- `∑{d}[A014612(n+1), A123074(#)]` -/
def P18092792622948525459.Spec : Prop :=
  ∀ n, P18092792622948525459.a n = A123073 (n + 1)

end A123073

/-! ## A123073.P8929296533008923800

`∑{d}[A014612(n+1), A200221(#)]`
-/

namespace A123073.P8929296533008923800
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014612 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A200221 d

end

end A123073.P8929296533008923800

namespace A123073

/-- `∑{d}[A014612(n+1), A200221(#)]` -/
def P8929296533008923800.Spec : Prop :=
  ∀ n, P8929296533008923800.a n = A123073 (n + 1)

end A123073

/-! ## A123073.P334292401977792969

`A079167(∏{p}[A014612(n+1), #])`
-/

namespace A123073.P334292401977792969
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014612 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079167 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, p)

end

end A123073.P334292401977792969

namespace A123073

/-- `A079167(∏{p}[A014612(n+1), #])` -/
def P334292401977792969.Spec : Prop :=
  ∀ n, P334292401977792969.a n = A123073 (n + 1)

end A123073

/-! ## A123073.P11471757736791273047

`∑{e}[A014612(n+1), A001030(#)]`
-/

namespace A123073.P11471757736791273047
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014612 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A001030 (Nat.factorization (f1 n).natAbs p)

end

end A123073.P11471757736791273047

namespace A123073

/-- `∑{e}[A014612(n+1), A001030(#)]` -/
def P11471757736791273047.Spec : Prop :=
  ∀ n, P11471757736791273047.a n = A123073 (n + 1)

end A123073

/-! ## A123073.P14944055766495727283

`∑{e}[A014612(n+1), A002217(#)]`
-/

namespace A123073.P14944055766495727283
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014612 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A002217 (Nat.factorization (f1 n).natAbs p)

end

end A123073.P14944055766495727283

namespace A123073

/-- `∑{e}[A014612(n+1), A002217(#)]` -/
def P14944055766495727283.Spec : Prop :=
  ∀ n, P14944055766495727283.a n = A123073 (n + 1)

end A123073

/-! ## A123073.P4372557914979675825

`∑{e}[A014612(n+1), A003842(#)]`
-/

namespace A123073.P4372557914979675825
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014612 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A003842 (Nat.factorization (f1 n).natAbs p)

end

end A123073.P4372557914979675825

namespace A123073

/-- `∑{e}[A014612(n+1), A003842(#)]` -/
def P4372557914979675825.Spec : Prop :=
  ∀ n, P4372557914979675825.a n = A123073 (n + 1)

end A123073

/-! ## A123073.P14805488226447758599

`∑{e}[A014612(n+1), A007421(#)]`
-/

namespace A123073.P14805488226447758599
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014612 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A007421 (Nat.factorization (f1 n).natAbs p)

end

end A123073.P14805488226447758599

namespace A123073

/-- `∑{e}[A014612(n+1), A007421(#)]` -/
def P14805488226447758599.Spec : Prop :=
  ∀ n, P14805488226447758599.a n = A123073 (n + 1)

end A123073

/-! ## A123073.P16703533776186762096

`∑{e}[A014612(n+1), A049705(#)]`
-/

namespace A123073.P16703533776186762096
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014612 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A049705 (Nat.factorization (f1 n).natAbs p)

end

end A123073.P16703533776186762096

namespace A123073

/-- `∑{e}[A014612(n+1), A049705(#)]` -/
def P16703533776186762096.Spec : Prop :=
  ∀ n, P16703533776186762096.a n = A123073 (n + 1)

end A123073

/-! ## A123073.P11535253722344418395

`∑{e}[A014612(n+1), A060582(#)]`
-/

namespace A123073.P11535253722344418395
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014612 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A060582 (Nat.factorization (f1 n).natAbs p)

end

end A123073.P11535253722344418395

namespace A123073

/-- `∑{e}[A014612(n+1), A060582(#)]` -/
def P11535253722344418395.Spec : Prop :=
  ∀ n, P11535253722344418395.a n = A123073 (n + 1)

end A123073

/-! ## A123073.P7326768325033625654

`∑{e}[A014612(n+1), A069347(#)]`
-/

namespace A123073.P7326768325033625654
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014612 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A069347 (Nat.factorization (f1 n).natAbs p)

end

end A123073.P7326768325033625654

namespace A123073

/-- `∑{e}[A014612(n+1), A069347(#)]` -/
def P7326768325033625654.Spec : Prop :=
  ∀ n, P7326768325033625654.a n = A123073 (n + 1)

end A123073

/-! ## A123073.P8871867810977506068

`∑{e}[A014612(n+1), A086995(#)]`
-/

namespace A123073.P8871867810977506068
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014612 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A086995 (Nat.factorization (f1 n).natAbs p)

end

end A123073.P8871867810977506068

namespace A123073

/-- `∑{e}[A014612(n+1), A086995(#)]` -/
def P8871867810977506068.Spec : Prop :=
  ∀ n, P8871867810977506068.a n = A123073 (n + 1)

end A123073

/-! ## A123073.P11954850133169783304

`A008480(eq[3, A001222(n+1)]+1)`
-/

namespace A123073.P11954850133169783304
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008480 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A123073.P11954850133169783304

namespace A123073

/-- `A008480(eq[3, A001222(n+1)]+1)` -/
def P11954850133169783304.Spec : Prop :=
  ∀ n, P11954850133169783304.a n = A123073 (n + 1)

end A123073

/-! ## A123073.P6611117048982079353

`A123074(eq[3, A001222(n+1)]+1)`
-/

namespace A123073.P6611117048982079353
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123074 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A123073.P6611117048982079353

namespace A123073

/-- `A123074(eq[3, A001222(n+1)]+1)` -/
def P6611117048982079353.Spec : Prop :=
  ∀ n, P6611117048982079353.a n = A123073 (n + 1)

end A123073

/-!
# A123074: Number of ordered triples of primes (p,q,r) such that pqr = n.

The programs for A123074, the canonical program `A123074.P16939100474265153792` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A123074 has offset 1).

The definition of A123074 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A123074.P17376853592495690583

`A008480(n+1)*A101605(n+1)`
-/

namespace A123074.P17376853592495690583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008480 (n + 1) * A101605 (n + 1)

end

end A123074.P17376853592495690583

namespace A123074

/-- `A008480(n+1)*A101605(n+1)` -/
def P17376853592495690583.Spec : Prop :=
  ∀ n, P17376853592495690583.a n = A123074 (n + 1)

end A123074

/-! ## A123074.P16939100474265153792

`A101605(n+1)*A168324(n+1)`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A123074

/-- `A101605(n+1)*A168324(n+1)` -/
def P16939100474265153792.Spec : Prop :=
  ∀ n, P16939100474265153792.a n = A123074 (n + 1)

theorem P16939100474265153792.correct : P16939100474265153792.Spec := by
  intro n
  simp only [A123074, Nat.add_sub_cancel]

end A123074

/-! ## A123074.P8073082332563597371

`A101605(n+1)*A200221(n+1)`
-/

namespace A123074.P8073082332563597371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101605 (n + 1) * A200221 (n + 1)

end

end A123074.P8073082332563597371

namespace A123074

/-- `A101605(n+1)*A200221(n+1)` -/
def P8073082332563597371.Spec : Prop :=
  ∀ n, P8073082332563597371.a n = A123074 (n + 1)

end A123074

/-! ## A123074.P17790877731456916539

`A101605(n+1)*A238951(n+1)`
-/

namespace A123074.P17790877731456916539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101605 (n + 1) * A238951 (n + 1)

end

end A123074.P17790877731456916539

namespace A123074

/-- `A101605(n+1)*A238951(n+1)` -/
def P17790877731456916539.Spec : Prop :=
  ∀ n, P17790877731456916539.a n = A123074 (n + 1)

end A123074

/-! ## A123074.P14902722673592005838

`A101605(n+1)*A293575(n+1)`
-/

namespace A123074.P14902722673592005838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101605 (n + 1) * A293575 (n + 1)

end

end A123074.P14902722673592005838

namespace A123074

/-- `A101605(n+1)*A293575(n+1)` -/
def P14902722673592005838.Spec : Prop :=
  ∀ n, P14902722673592005838.a n = A123074 (n + 1)

end A123074

/-! ## A123074.P8707435129280445244

`A101605(n+1)*A345354(n+1)`
-/

namespace A123074.P8707435129280445244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101605 (n + 1) * A345354 (n + 1)

end

end A123074.P8707435129280445244

namespace A123074

/-- `A101605(n+1)*A345354(n+1)` -/
def P8707435129280445244.Spec : Prop :=
  ∀ n, P8707435129280445244.a n = A123074 (n + 1)

end A123074

/-! ## A123074.P16223506988804425679

`A200221(n+1)*A340369(n+1)`
-/

namespace A123074.P16223506988804425679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200221 (n + 1) * A340369 (n + 1)

end

end A123074.P16223506988804425679

namespace A123074

/-- `A200221(n+1)*A340369(n+1)` -/
def P16223506988804425679.Spec : Prop :=
  ∀ n, P16223506988804425679.a n = A123074 (n + 1)

end A123074

/-! ## A123074.P9273460816289266103

`∑{d}[n+1, A010051(#)*A230595((n+1)/#)]`
-/

namespace A123074.P9273460816289266103
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A010051 d * A230595 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A123074.P9273460816289266103

namespace A123074

/-- `∑{d}[n+1, A010051(#)*A230595((n+1)/#)]` -/
def P9273460816289266103.Spec : Prop :=
  ∀ n, P9273460816289266103.a n = A123074 (n + 1)

end A123074

/-! ## A123074.P16620241144768456904

`∑{d}[n+1, A143519(#)*A345354((n+1)/#)]`
-/

namespace A123074.P16620241144768456904
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A143519 d * A345354 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A123074.P16620241144768456904

namespace A123074

/-- `∑{d}[n+1, A143519(#)*A345354((n+1)/#)]` -/
def P16620241144768456904.Spec : Prop :=
  ∀ n, P16620241144768456904.a n = A123074 (n + 1)

end A123074

/-! ## A123074.P12523576128839605548

`A160086(n+1)^(2-A128936(A061142(n+1)))`
-/

namespace A123074.P12523576128839605548
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A160086 (n + 1) : ℚ) ^ (2 - A128936 (A061142 (n + 1)).toNat : ℤ)

end

end A123074.P12523576128839605548

namespace A123074

/-- `A160086(n+1)^(2-A128936(A061142(n+1)))` -/
def P12523576128839605548.Spec : Prop :=
  ∀ n, P12523576128839605548.a n = (A123074 (n + 1) : ℚ)

end A123074

/-! ## A123074.P8037409516951541880

`A101605(n+1)*A238946(n+1)`
-/

namespace A123074.P8037409516951541880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101605 (n + 1) * A238946 (n + 1)

end

end A123074.P8037409516951541880

namespace A123074

/-- `A101605(n+1)*A238946(n+1)` -/
def P8037409516951541880.Spec : Prop :=
  ∀ n, P8037409516951541880.a n = A123074 (n + 1)

end A123074

/-!
# A123077: Primes of the form (1+2n+3n^2+4n^3)/2.

The programs for A123077, there is no canonical definition to state claims against.
-/

/-! ## A123077.P2895884992978258802

`p?[2*n^3+floor(cosh(log((n+1)²)))+n²]`
-/

namespace A123077.P2895884992978258802
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n ^ 3 : ℤ) + (⌊Real.cosh (Real.log ((n + 1) ^ 2 : ℝ))⌋ + (n ^ 2 : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A123077.P2895884992978258802

/-! ## A123077.P16485834344159005926

`p?[(or(1, n²)+1)*2*n+n²+2*floor(n/2)²]`
-/

namespace A123077.P16485834344159005926
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((Nat.lor 1 (n ^ 2) + 1) * (2 * n) : ℤ) + ((n ^ 2 : ℤ) + 2 * ⌊(n : ℚ) / 2⌋ ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A123077.P16485834344159005926

/-! ## A123077.P3228916843205576426

`p?[floor(A056578(n)/2)]`
-/

namespace A123077.P3228916843205576426
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A056578 n : ℚ) / 2⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A123077.P3228916843205576426

/-! ## A123077.P1738020248118852962

`p?[A212960(n)+n^3]`
-/

namespace A123077.P1738020248118852962
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212960 n + (n ^ 3 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A123077.P1738020248118852962

/-!
# A123079: Twin primes of form 4k+1.

The programs for A123079, the canonical program `A123079.P7689964899485436980` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A123079 has offset 1).

The definition of A123079 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9998 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A123079.P9580594727688036218

`and(-3, A172057(n+1))`
-/

namespace A123079.P9580594727688036218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-3) (A172057 (n + 1))

end

end A123079.P9580594727688036218

namespace A123079

/-- `and(-3, A172057(n+1))` -/
def P9580594727688036218.Spec : Prop :=
  ∀ n, P9580594727688036218.a n = A123079 (n + 1)

end A123079

/-! ## A123079.P1472921487885871626

`or(2, A001359(n+2)+1)-1`
-/

namespace A123079.P1472921487885871626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 2 (A001359 (n + 2) + 1) - 1

end

end A123079.P1472921487885871626

namespace A123079

/-- `or(2, A001359(n+2)+1)-1` -/
def P1472921487885871626.Spec : Prop :=
  ∀ n, P1472921487885871626.a n = A123079 (n + 1)

end A123079

/-! ## A123079.P4030783447729679883

`and(-3, A006512(n+2))`
-/

namespace A123079.P4030783447729679883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-3) (A006512 (n + 2))

end

end A123079.P4030783447729679883

namespace A123079

/-- `and(-3, A006512(n+2))` -/
def P4030783447729679883.Spec : Prop :=
  ∀ n, P4030783447729679883.a n = A123079 (n + 1)

end A123079

/-! ## A123079.P9104761816261327886

`or(2, A014574(n+2))-1`
-/

namespace A123079.P9104761816261327886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 2 (A014574 (n + 2)) - 1

end

end A123079.P9104761816261327886

namespace A123079

/-- `or(2, A014574(n+2))-1` -/
def P9104761816261327886.Spec : Prop :=
  ∀ n, P9104761816261327886.a n = A123079 (n + 1)

end A123079

/-! ## A123079.P1318887359468051411

`A074381(n+2)+A074381(n+2)+A001359(n+2)`
-/

namespace A123079.P1318887359468051411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074381 (n + 2) + (A074381 (n + 2) + A001359 (n + 2))

end

end A123079.P1318887359468051411

namespace A123079

/-- `A074381(n+2)+A074381(n+2)+A001359(n+2)` -/
def P1318887359468051411.Spec : Prop :=
  ∀ n, P1318887359468051411.a n = A123079 (n + 1)

end A123079

/-! ## A123079.P7689964899485436980

`and(-3, A067829(n+3))`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A123079

/-- `and(-3, A067829(n+3))` -/
def P7689964899485436980.Spec : Prop :=
  ∀ n, P7689964899485436980.a n = A123079 (n + 1)

theorem P7689964899485436980.correct : P7689964899485436980.Spec := by
  intro n
  simp only [A123079, Nat.add_sub_cancel]

end A123079

/-! ## A123079.P441904462915096983

`and(-3, A001097(2*n+3))`
-/

namespace A123079.P441904462915096983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-3) (A001097 (2 * n + 3))

end

end A123079.P441904462915096983

namespace A123079

/-- `and(-3, A001097(2*n+3))` -/
def P441904462915096983.Spec : Prop :=
  ∀ n, P441904462915096983.a n = A123079 (n + 1)

end A123079

/-! ## A123079.P3464095714902233706

`∩[A001097(n+1), A008846(n+1)]`
-/

namespace A123079.P3464095714902233706
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001097 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008846 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A123079.P3464095714902233706

namespace A123079

/-- `∩[A001097(n+1), A008846(n+1)]` -/
def P3464095714902233706.Spec : Prop :=
  ∀ n, (P3464095714902233706.a n : ℤ) = A123079 (n + 1)

end A123079

/-! ## A123079.P7429972369283576178

`∩[A001097(n+1), A002144(n+1)]`
-/

namespace A123079.P7429972369283576178
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001097 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002144 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A123079.P7429972369283576178

namespace A123079

/-- `∩[A001097(n+1), A002144(n+1)]` -/
def P7429972369283576178.Spec : Prop :=
  ∀ n, (P7429972369283576178.a n : ℤ) = A123079 (n + 1)

end A123079

/-! ## A123079.P16131814708372709740

`∩[A001097(n+1), A002313(n+1)]`
-/

namespace A123079.P16131814708372709740
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001097 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002313 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A123079.P16131814708372709740

namespace A123079

/-- `∩[A001097(n+1), A002313(n+1)]` -/
def P16131814708372709740.Spec : Prop :=
  ∀ n, (P16131814708372709740.a n : ℤ) = A123079 (n + 1)

end A123079

/-! ## A123079.P5231826562050330671

`∩[A002144(n+1), A171688(n+1)]`
-/

namespace A123079.P5231826562050330671
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002144 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171688 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A123079.P5231826562050330671

namespace A123079

/-- `∩[A002144(n+1), A171688(n+1)]` -/
def P5231826562050330671.Spec : Prop :=
  ∀ n, (P5231826562050330671.a n : ℤ) = A123079 (n + 1)

end A123079

/-! ## A123079.P2649465300299966796

`∩[A002144(n+1), A171821(n+1)]`
-/

namespace A123079.P2649465300299966796
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002144 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171821 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A123079.P2649465300299966796

namespace A123079

/-- `∩[A002144(n+1), A171821(n+1)]` -/
def P2649465300299966796.Spec : Prop :=
  ∀ n, (P2649465300299966796.a n : ℤ) = A123079 (n + 1)

end A123079

/-! ## A123079.P17845459020558837405

`∩[A002313(n+1), A171688(n+1)]`
-/

namespace A123079.P17845459020558837405
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002313 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171688 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A123079.P17845459020558837405

namespace A123079

/-- `∩[A002313(n+1), A171688(n+1)]` -/
def P17845459020558837405.Spec : Prop :=
  ∀ n, (P17845459020558837405.a n : ℤ) = A123079 (n + 1)

end A123079

/-! ## A123079.P1714014640898554504

`∩[A001097(n+1), A055025(n+1)]`
-/

namespace A123079.P1714014640898554504
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001097 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055025 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A123079.P1714014640898554504

namespace A123079

/-- `∩[A001097(n+1), A055025(n+1)]` -/
def P1714014640898554504.Spec : Prop :=
  ∀ n, (P1714014640898554504.a n : ℤ) = A123079 (n + 1)

end A123079

/-! ## A123079.P3550665863228063003

`∩[A001097(n+1), A120960(n+1)]`
-/

namespace A123079.P3550665863228063003
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001097 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120960 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A123079.P3550665863228063003

namespace A123079

/-- `∩[A001097(n+1), A120960(n+1)]` -/
def P3550665863228063003.Spec : Prop :=
  ∀ n, (P3550665863228063003.a n : ℤ) = A123079 (n + 1)

end A123079

/-! ## A123079.P15713420635083240719

`∩[A001097(n+1), A085759(n+1)]`
-/

namespace A123079.P15713420635083240719
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001097 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085759 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A123079.P15713420635083240719

namespace A123079

/-- `∩[A001097(n+1), A085759(n+1)]` -/
def P15713420635083240719.Spec : Prop :=
  ∀ n, (P15713420635083240719.a n : ℤ) = A123079 (n + 1)

end A123079

/-! ## A123079.P13932058900468894136

`∩[A001097(n+1), A125018(n+1)]`
-/

namespace A123079.P13932058900468894136
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001097 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125018 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A123079.P13932058900468894136

namespace A123079

/-- `∩[A001097(n+1), A125018(n+1)]` -/
def P13932058900468894136.Spec : Prop :=
  ∀ n, (P13932058900468894136.a n : ℤ) = A123079 (n + 1)

end A123079

/-! ## A123079.P14140518802955266391

`∩[A001097(n+1), A230779(n+1)]`
-/

namespace A123079.P14140518802955266391
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001097 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230779 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A123079.P14140518802955266391

namespace A123079

/-- `∩[A001097(n+1), A230779(n+1)]` -/
def P14140518802955266391.Spec : Prop :=
  ∀ n, (P14140518802955266391.a n : ℤ) = A123079 (n + 1)

end A123079

/-! ## A123079.P12953886996208565066

`∩[A171688(n+1), A230779(n+1)]`
-/

namespace A123079.P12953886996208565066
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171688 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230779 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A123079.P12953886996208565066

namespace A123079

/-- `∩[A171688(n+1), A230779(n+1)]` -/
def P12953886996208565066.Spec : Prop :=
  ∀ n, (P12953886996208565066.a n : ℤ) = A123079 (n + 1)

end A123079

/-! ## A123079.P17864926129718656506

`∩[A171821(n+1), A230779(n+1)]`
-/

namespace A123079.P17864926129718656506
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171821 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230779 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A123079.P17864926129718656506

namespace A123079

/-- `∩[A171821(n+1), A230779(n+1)]` -/
def P17864926129718656506.Spec : Prop :=
  ∀ n, (P17864926129718656506.a n : ℤ) = A123079 (n + 1)

end A123079

/-!
# A123080: Twin primes of form 4k+3.

The programs for A123080, the canonical program `A123080.P13566409569137638716` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A123080 has offset 1).

The definition of A123080 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A123080.P13566409569137638716

`or(2, A001359(n+1))`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A123080

/-- `or(2, A001359(n+1))` -/
def P13566409569137638716.Spec : Prop :=
  ∀ n, P13566409569137638716.a n = A123080 (n + 1)

theorem P13566409569137638716.correct : P13566409569137638716.Spec := by
  intro n
  simp only [A123080, Nat.add_sub_cancel]

end A123080

/-! ## A123080.P11722119886451527870

`or(3, A111166(n+1))`
-/

namespace A123080.P11722119886451527870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 3 (A111166 (n + 1))

end

end A123080.P11722119886451527870

namespace A123080

/-- `or(3, A111166(n+1))` -/
def P11722119886451527870.Spec : Prop :=
  ∀ n, P11722119886451527870.a n = A123080 (n + 1)

end A123080

/-! ## A123080.P7796117716548173953

`or(3, A144834(n+1))`
-/

namespace A123080.P7796117716548173953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 3 (A144834 (n + 1))

end

end A123080.P7796117716548173953

namespace A123080

/-- `or(3, A144834(n+1))` -/
def P7796117716548173953.Spec : Prop :=
  ∀ n, P7796117716548173953.a n = A123080 (n + 1)

end A123080

/-! ## A123080.P5155691375242272860

`or(2, A124588(n+2))`
-/

namespace A123080.P5155691375242272860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 2 (A124588 (n + 2))

end

end A123080.P5155691375242272860

namespace A123080

/-- `or(2, A124588(n+2))` -/
def P5155691375242272860.Spec : Prop :=
  ∀ n, P5155691375242272860.a n = A123080 (n + 1)

end A123080

/-! ## A123080.P125373991325336728

`or(2, A181747(n+2))`
-/

namespace A123080.P125373991325336728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 2 (A181747 (n + 2))

end

end A123080.P125373991325336728

namespace A123080

/-- `or(2, A181747(n+2))` -/
def P125373991325336728.Spec : Prop :=
  ∀ n, P125373991325336728.a n = A123080 (n + 1)

end A123080

/-! ## A123080.P17704077844693690073

`or(2, A077800(Δ[n²]))`
-/

namespace A123080.P17704077844693690073
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 2 (A077800 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat)

end

end A123080.P17704077844693690073

namespace A123080

/-- `or(2, A077800(Δ[n²]))` -/
def P17704077844693690073.Spec : Prop :=
  ∀ n, P17704077844693690073.a n = A123080 (n + 1)

end A123080

/-! ## A123080.P3394618795139398619

`or(3, A171821(2*n+1))`
-/

namespace A123080.P3394618795139398619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 3 (A171821 (2 * n + 1))

end

end A123080.P3394618795139398619

namespace A123080

/-- `or(3, A171821(2*n+1))` -/
def P3394618795139398619.Spec : Prop :=
  ∀ n, P3394618795139398619.a n = A123080 (n + 1)

end A123080

/-! ## A123080.P1604517076823354329

`∩[A001097(n+1), A002145(n+1)]`
-/

namespace A123080.P1604517076823354329
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001097 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002145 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A123080.P1604517076823354329

namespace A123080

/-- `∩[A001097(n+1), A002145(n+1)]` -/
def P1604517076823354329.Spec : Prop :=
  ∀ n, (P1604517076823354329.a n : ℤ) = A123080 (n + 1)

end A123080

/-! ## A123080.P18398234722421978974

`∩[A001097(n+1), A045326(n+1)]`
-/

namespace A123080.P18398234722421978974
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001097 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045326 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A123080.P18398234722421978974

namespace A123080

/-- `∩[A001097(n+1), A045326(n+1)]` -/
def P18398234722421978974.Spec : Prop :=
  ∀ n, (P18398234722421978974.a n : ℤ) = A123080 (n + 1)

end A123080

/-! ## A123080.P9670214709606458670

`∩[A002145(n+1), A171821(n+1)]`
-/

namespace A123080.P9670214709606458670
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002145 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171821 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A123080.P9670214709606458670

namespace A123080

/-- `∩[A002145(n+1), A171821(n+1)]` -/
def P9670214709606458670.Spec : Prop :=
  ∀ n, (P9670214709606458670.a n : ℤ) = A123080 (n + 1)

end A123080

/-! ## A123080.P11932688687164850398

`∩[A002145(n+1), A265760(n+1)]`
-/

namespace A123080.P11932688687164850398
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002145 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265760 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A123080.P11932688687164850398

namespace A123080

/-- `∩[A002145(n+1), A265760(n+1)]` -/
def P11932688687164850398.Spec : Prop :=
  ∀ n, (P11932688687164850398.a n : ℤ) = A123080 (n + 1)

end A123080

/-! ## A123080.P2599321042790871093

`∩[A001097(n+1), A085760(n+1)]`
-/

namespace A123080.P2599321042790871093
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001097 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085760 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A123080.P2599321042790871093

namespace A123080

/-- `∩[A001097(n+1), A085760(n+1)]` -/
def P2599321042790871093.Spec : Prop :=
  ∀ n, (P2599321042790871093.a n : ℤ) = A123080 (n + 1)

end A123080

/-! ## A123080.P1052734438355171577

`∩[A085760(n+1), A171821(n+1)]`
-/

namespace A123080.P1052734438355171577
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085760 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171821 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A123080.P1052734438355171577

namespace A123080

/-- `∩[A085760(n+1), A171821(n+1)]` -/
def P1052734438355171577.Spec : Prop :=
  ∀ n, (P1052734438355171577.a n : ℤ) = A123080 (n + 1)

end A123080

/-! ## A123080.P10639017289765709

`∩[A085760(n+1), A265760(n+1)]`
-/

namespace A123080.P10639017289765709
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085760 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265760 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A123080.P10639017289765709

namespace A123080

/-- `∩[A085760(n+1), A265760(n+1)]` -/
def P10639017289765709.Spec : Prop :=
  ∀ n, (P10639017289765709.a n : ℤ) = A123080 (n + 1)

end A123080

/-! ## A123080.P6890571640456844948

`∩[A001097(n+1), A197504(n+1)]`
-/

namespace A123080.P6890571640456844948
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001097 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197504 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A123080.P6890571640456844948

namespace A123080

/-- `∩[A001097(n+1), A197504(n+1)]` -/
def P6890571640456844948.Spec : Prop :=
  ∀ n, (P6890571640456844948.a n : ℤ) = A123080 (n + 1)

end A123080

/-! ## A123080.P4568251990047693404

`∩[A001097(n+1), A332555(n+1)]`
-/

namespace A123080.P4568251990047693404
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001097 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332555 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A123080.P4568251990047693404

namespace A123080

/-- `∩[A001097(n+1), A332555(n+1)]` -/
def P4568251990047693404.Spec : Prop :=
  ∀ n, (P4568251990047693404.a n : ℤ) = A123080 (n + 1)

end A123080

/-! ## A123080.P17435691493368233933

`∩[A001097(n+1), A292762(n+1)]`
-/

namespace A123080.P17435691493368233933
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001097 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292762 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A123080.P17435691493368233933

namespace A123080

/-- `∩[A001097(n+1), A292762(n+1)]` -/
def P17435691493368233933.Spec : Prop :=
  ∀ n, (P17435691493368233933.a n : ℤ) = A123080 (n + 1)

end A123080

/-! ## A123080.P7738219582537139088

`∩[A001097(n+1), A066499(n+1)]`
-/

namespace A123080.P7738219582537139088
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001097 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066499 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A123080.P7738219582537139088

namespace A123080

/-- `∩[A001097(n+1), A066499(n+1)]` -/
def P7738219582537139088.Spec : Prop :=
  ∀ n, (P7738219582537139088.a n : ℤ) = A123080 (n + 1)

end A123080

/-! ## A123080.P18144863728806588402

`∩[A001097(n+1), A097987(n+1)]`
-/

namespace A123080.P18144863728806588402
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001097 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097987 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A123080.P18144863728806588402

namespace A123080

/-- `∩[A001097(n+1), A097987(n+1)]` -/
def P18144863728806588402.Spec : Prop :=
  ∀ n, (P18144863728806588402.a n : ℤ) = A123080 (n + 1)

end A123080

/-! ## A123080.P17928503145329929981

`∩[A066499(n+1), A171821(n+1)]`
-/

namespace A123080.P17928503145329929981
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066499 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171821 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A123080.P17928503145329929981

namespace A123080

/-- `∩[A066499(n+1), A171821(n+1)]` -/
def P17928503145329929981.Spec : Prop :=
  ∀ n, (P17928503145329929981.a n : ℤ) = A123080 (n + 1)

end A123080

/-!
# A123081: Infinite square array read by antidiagonals: T(n,k) = Bell(n+k) = A000110(n+k).

The programs for A123081, there is no canonical definition to state claims against.
-/

/-! ## A123081.P8544614987787105637

`A000110(∑[char[∑[n+1]]])`
-/

namespace A123081.P8544614987787105637
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000110 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A123081.P8544614987787105637

/-! ## A123081.P16228388358989801403

`A011971(A057944(n))`
-/

namespace A123081.P16228388358989801403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011971 (A057944 n).toNat

end

end A123081.P16228388358989801403

/-! ## A123081.P2293738417198742065

`A106436(A025581(n)+n)`
-/

namespace A123081.P2293738417198742065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106436 (A025581 n + (n : ℤ)).toNat

end

end A123081.P2293738417198742065

/-! ## A123081.P368044474659991694

`A121207(A025581(n)+n)`
-/

namespace A123081.P368044474659991694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121207 (A025581 n + (n : ℤ)).toNat

end

end A123081.P368044474659991694

/-! ## A123081.P15211415851570911829

`A275422(A025581(n)+n)`
-/

namespace A123081.P15211415851570911829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275422 (A025581 n + (n : ℤ)).toNat

end

end A123081.P15211415851570911829

/-! ## A123081.P2640376667231056349

`A293024(A025581(n)+n)`
-/

namespace A123081.P2640376667231056349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293024 (A025581 n + (n : ℤ)).toNat

end

end A123081.P2640376667231056349

/-! ## A123081.P2805763876114969740

`A346500(A025581(n)+n)`
-/

namespace A123081.P2805763876114969740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346500 (A025581 n + (n : ℤ)).toNat

end

end A123081.P2805763876114969740

/-! ## A123081.P5157668305432733674

`A346517(A025581(n)+n)`
-/

namespace A123081.P5157668305432733674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346517 (A025581 n + (n : ℤ)).toNat

end

end A123081.P5157668305432733674

/-! ## A123081.P14944172991534072853

`A108087(n-A002262(n))`
-/

namespace A123081.P14944172991534072853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108087 ((n : ℤ) - A002262 n).toNat

end

end A123081.P14944172991534072853

/-! ## A123081.P5496491584985701136

`A186020(n-A002262(n))`
-/

namespace A123081.P5496491584985701136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186020 ((n : ℤ) - A002262 n).toNat

end

end A123081.P5496491584985701136

/-! ## A123081.P1802917428841551190

`A346426(n-A002262(n))`
-/

namespace A123081.P1802917428841551190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346426 ((n : ℤ) - A002262 n).toNat

end

end A123081.P1802917428841551190

/-! ## A123081.P4093970468359689608

`A346500(n-A002262(n))`
-/

namespace A123081.P4093970468359689608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346500 ((n : ℤ) - A002262 n).toNat

end

end A123081.P4093970468359689608

/-! ## A123081.P7989038378504413162

`A346517(n-A002262(n))`
-/

namespace A123081.P7989038378504413162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346517 ((n : ℤ) - A002262 n).toNat

end

end A123081.P7989038378504413162

/-! ## A123081.P7915279021100685155

`A346520(n-A002262(n))`
-/

namespace A123081.P7915279021100685155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346520 ((n : ℤ) - A002262 n).toNat

end

end A123081.P7915279021100685155

/-! ## A123081.P17613935213443779819

`A056857(1-A002262(n)+n)`
-/

namespace A123081.P17613935213443779819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056857 (1 - A002262 n + (n : ℤ)).toNat

end

end A123081.P17613935213443779819

/-! ## A123081.P16337611078382582177

`A205574(A025581(n)+2+n)`
-/

namespace A123081.P16337611078382582177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205574 (A025581 n + 2 + (n : ℤ)).toNat

end

end A123081.P16337611078382582177

/-! ## A123081.P15036987306246056559

`A108087(n+1-A002260(n+1))`
-/

namespace A123081.P15036987306246056559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108087 ((n + 1 : ℤ) - A002260 (n + 1)).toNat

end

end A123081.P15036987306246056559

/-! ## A123081.P3758213192084803005

`A121207(A004736(n+1)-1+n)`
-/

namespace A123081.P3758213192084803005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121207 (A004736 (n + 1) - 1 + (n : ℤ)).toNat

end

end A123081.P3758213192084803005

/-! ## A123081.P690818058407957084

`A121207(A061579(n)+A002262(n))`
-/

namespace A123081.P690818058407957084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121207 (A061579 n + A002262 n).toNat

end

end A123081.P690818058407957084

/-! ## A123081.P8572750494459335176

`A056857(A038722(n+1)-A025581(n))`
-/

namespace A123081.P8572750494459335176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056857 (A038722 (n + 1) - A025581 n).toNat

end

end A123081.P8572750494459335176

/-!
# A123083: Prime quartets of form k, k+6, k+12, k+18.

The programs for A123083, there is no canonical definition to state claims against.
-/

/-! ## A123083.P8117688262283039191

`A008458(A274640(n)+A172538(n+5))-1`
-/

namespace A123083.P8117688262283039191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 (A274640 n + A172538 (n + 5)).toNat - 1

end

end A123083.P8117688262283039191

/-!
# A123085: Table read by rows: rows give successive prime sextets of form k, k+30, k+60, k+90, k+120, k+150.

The programs for A123085, there is no canonical definition to state claims against.
-/

/-! ## A123085.P7258365755951540721

`p?[∑[7-A034537(n+14)]+8*n]`
-/

namespace A123085.P7258365755951540721
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  7 - A034537 (n + 14)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + (8 * n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A123085.P7258365755951540721

/-! ## A123085.P4078448117020789361

`A034699(A128471(n)*A321283(n))`
-/

namespace A123085.P4078448117020789361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034699 (A128471 n * A321283 n).toNat

end

end A123085.P4078448117020789361

/-!
# A123087: Sequence of numbers such that a(2*n) + a(n) = n and a(n) is the smallest number such that a(n) >= a(n-1).

The programs for A123087, the canonical program `A123087.P3931349600074570029` is in `Seq.B000.C018`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A123087 has offset 0).

The definition of A123087 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A123087.P3931349600074570029

`floor(n/2)-a(floor(n/2))` with `a(0)=0, a(1)=0`

The canonical program, it is in `Seq.B000.C018`.
-/

namespace A123087

/-- `floor(n/2)-a(floor(n/2))` -/
def P3931349600074570029.Spec : Prop :=
  ∀ n, P3931349600074570029.a n = A123087 n

theorem P3931349600074570029.correct : P3931349600074570029.Spec := by
  intro n
  simp only [A123087]

end A123087

/-! ## A123087.P16577380936892217220

`n-A050292(n)`
-/

namespace A123087.P16577380936892217220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A050292 n

end

end A123087.P16577380936892217220

namespace A123087

/-- `n-A050292(n)` -/
def P16577380936892217220.Spec : Prop :=
  ∀ n, P16577380936892217220.a n = A123087 n

end A123087

/-! ## A123087.P5528038313685852330

`(n-A065359(n))/3`
-/

namespace A123087.P5528038313685852330
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - A065359 n : ℚ) / 3

end

end A123087.P5528038313685852330

namespace A123087

/-- `(n-A065359(n))/3` -/
def P5528038313685852330.Spec : Prop :=
  ∀ n, P5528038313685852330.a n = (A123087 n : ℚ)

end A123087

/-! ## A123087.P17273184756601599239

`∑[and(n, -n)%3]-n`
-/

namespace A123087.P17273184756601599239
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (Int.land (n : ℤ) (-(n : ℤ))) 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ)

end

end A123087.P17273184756601599239

namespace A123087

/-- `∑[and(n, -n)%3]-n` -/
def P17273184756601599239.Spec : Prop :=
  ∀ n, P17273184756601599239.a n = A123087 n

end A123087

/-! ## A123087.P7254953162678153685

`∑[char[comp[n*and(n, -n)]]]`
-/

namespace A123087.P7254953162678153685
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * Int.land (n : ℤ) (-(n : ℤ))

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ (x : ℤ)) n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A123087.P7254953162678153685

namespace A123087

/-- `∑[char[comp[n*and(n, -n)]]]` -/
def P7254953162678153685.Spec : Prop :=
  ∀ n, (P7254953162678153685.a n : ℤ) = A123087 n

end A123087

/-! ## A123087.P2773949347514617432

`∑[val(xor(n, n-1)+3, 6)]`
-/

namespace A123087.P2773949347514617432
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (Int.xor (n : ℤ) ((n : ℤ) - 1) + 3).toNat 6

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A123087.P2773949347514617432

namespace A123087

/-- `∑[val(xor(n, n-1)+3, 6)]` -/
def P2773949347514617432.Spec : Prop :=
  ∀ n, (P2773949347514617432.a n : ℤ) = A123087 n

end A123087

/-! ## A123087.P4724893312057516374

`∑[4%gcd(3, xor(n, n-1))]`
-/

namespace A123087.P4724893312057516374
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 % Int.gcd 3 (Int.xor (n : ℤ) ((n : ℤ) - 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A123087.P4724893312057516374

namespace A123087

/-- `∑[4%gcd(3, xor(n, n-1))]` -/
def P4724893312057516374.Spec : Prop :=
  ∀ n, (P4724893312057516374.a n : ℤ) = A123087 n

end A123087

/-! ## A123087.P14334002782153286985

`∑[7%(xor(n, n-1)%6)]`
-/

namespace A123087.P14334002782153286985
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod 7 (Int.tmod (Int.xor (n : ℤ) ((n : ℤ) - 1)) 6)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A123087.P14334002782153286985

namespace A123087

/-- `∑[7%(xor(n, n-1)%6)]` -/
def P14334002782153286985.Spec : Prop :=
  ∀ n, P14334002782153286985.a n = A123087 n

end A123087

/-! ## A123087.P4626275249770466912

`∑[1-char[n*and(n, -n)]]`
-/

namespace A123087.P4626275249770466912
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * Int.land (n : ℤ) (-(n : ℤ))

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ((if ∃ j, f2 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A123087.P4626275249770466912

namespace A123087

/-- `∑[1-char[n*and(n, -n)]]` -/
def P4626275249770466912.Spec : Prop :=
  ∀ n, P4626275249770466912.a n = A123087 n

end A123087

/-! ## A123087.P11233293552189045109

`∑[xor(1, char[n*and(n, -n)])]`
-/

namespace A123087.P11233293552189045109
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * Int.land (n : ℤ) (-(n : ℤ))

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 (if ∃ j, f2 j = (n : ℤ) then 1 else 0)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A123087.P11233293552189045109

namespace A123087

/-- `∑[xor(1, char[n*and(n, -n)])]` -/
def P11233293552189045109.Spec : Prop :=
  ∀ n, (P11233293552189045109.a n : ℤ) = A123087 n

end A123087

/-! ## A123087.P14046157423095982374

`a(n-1)+and(1, val(n, 2))` with `a(0)=0`
-/

namespace A123087.P14046157423095982374
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) + Nat.land 1 (SequenceMachineLib.valuation n 2)

end

end A123087.P14046157423095982374

namespace A123087

/-- `a(n-1)+and(1, val(n, 2))` -/
def P14046157423095982374.Spec : Prop :=
  ∀ n, (P14046157423095982374.a n : ℤ) = A123087 n

end A123087

/-! ## A123087.P11954396945448639551

`floor(n/2-a(floor(n/2)))` with `a(0)=0`
-/

namespace A123087.P11954396945448639551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  ⌊(n : ℚ) / 2 - (a ⌊(n : ℚ) / 2⌋.toNat : ℚ)⌋

end

end A123087.P11954396945448639551

namespace A123087

/-- `floor(n/2-a(floor(n/2)))` -/
def P11954396945448639551.Spec : Prop :=
  ∀ n, P11954396945448639551.a n = A123087 n

end A123087

/-! ## A123087.P411525864855180439

`∑[and(val(n, 2), a(n-1)!)]` with `a(0)=0`
-/

namespace A123087.P411525864855180439
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0] fun n f1 =>
  Nat.land (SequenceMachineLib.valuation n 2) (Nat.factorial (f1 (n - 1)))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A123087.P411525864855180439

namespace A123087

/-- `∑[and(val(n, 2), a(n-1)!)]` -/
def P411525864855180439.Spec : Prop :=
  ∀ n, (P411525864855180439.a n : ℤ) = A123087 n

end A123087

/-! ## A123087.P15710634567567236234

`(n-(1-∑[-a(∑[n]%n)]))/2` with `a(0)=1`
-/

namespace A123087.P15710634567567236234
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  -f1 ((∑ j ∈ Finset.range (n + 1), f2 j) % n)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((n : ℤ) - (1 - ∑ j ∈ Finset.range (n + 1), f1 j) : ℤ) : ℚ) / 2

end

end A123087.P15710634567567236234

namespace A123087

/-- `(n-(1-∑[-a(∑[n]%n)]))/2` -/
def P15710634567567236234.Spec : Prop :=
  ∀ n, P15710634567567236234.a n = (A123087 n : ℚ)

end A123087

/-! ## A123087.P5653803662135035842

`A197911(n)-n`
-/

namespace A123087.P5653803662135035842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197911 n - (n : ℤ)

end

end A123087.P5653803662135035842

namespace A123087

/-- `A197911(n)-n` -/
def P5653803662135035842.Spec : Prop :=
  ∀ n, P5653803662135035842.a n = A123087 n

end A123087

/-! ## A123087.P5650539235927019576

`A050292(floor(n/2))`
-/

namespace A123087.P5650539235927019576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050292 ⌊(n : ℚ) / 2⌋.toNat

end

end A123087.P5650539235927019576

namespace A123087

/-- `A050292(floor(n/2))` -/
def P5650539235927019576.Spec : Prop :=
  ∀ n, P5650539235927019576.a n = A123087 n

end A123087

/-! ## A123087.P15297515932719018159

`∑[A328979(n+1)]`
-/

namespace A123087.P15297515932719018159
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328979 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A123087.P15297515932719018159

namespace A123087

/-- `∑[A328979(n+1)]` -/
def P15297515932719018159.Spec : Prop :=
  ∀ n, P15297515932719018159.a n = A123087 n

end A123087

/-! ## A123087.P6254553652147644405

`∑[val(A000123(n), 4)]`
-/

namespace A123087.P6254553652147644405
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A000123 n).toNat 4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A123087.P6254553652147644405

namespace A123087

/-- `∑[val(A000123(n), 4)]` -/
def P6254553652147644405.Spec : Prop :=
  ∀ n, (P6254553652147644405.a n : ℤ) = A123087 n

end A123087

/-! ## A123087.P14699686214895821216

`(n-A068639(n))/2`
-/

namespace A123087.P14699686214895821216
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - A068639 n : ℚ) / 2

end

end A123087.P14699686214895821216

namespace A123087

/-- `(n-A068639(n))/2` -/
def P14699686214895821216.Spec : Prop :=
  ∀ n, P14699686214895821216.a n = (A123087 n : ℚ)

end A123087

/-!
# A123088: a(1)=1. For n>=2, a(n) = n + (largest integer which is <= n and is missing from the earlier terms of the sequence).

The programs for A123088, there is no canonical definition to state claims against.
-/

/-! ## A123088.P15192104294181942700

`comp[A085262(n+1)]+1`
-/

namespace A123088.P15192104294181942700
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085262 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A123088.P15192104294181942700

/-! ## A123088.P4357054298673351304

`comp[A367039(n+2)]+1`
-/

namespace A123088.P4357054298673351304
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367039 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A123088.P4357054298673351304

/-! ## A123088.P4216178637671064392

`comp[a(A227386(n))+n]+1` with `a(0)=1`
-/

namespace A123088.P4216178637671064392
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f1 =>
  f1 (A227386 n).toNat + n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + 1

end

end A123088.P4216178637671064392

/-! ## A123088.P14554020238491556937

`2*(n+1)-A123679(n+1)`
-/

namespace A123088.P14554020238491556937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * (n + 1) : ℤ) - A123679 (n + 1)

end

end A123088.P14554020238491556937

/-! ## A123088.P13761858142503109606

`n+2-A123679(abs(xor(n, -1)))+n`
-/

namespace A123088.P13761858142503109606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) - A123679 |Int.xor (n : ℤ) (-1)|.toNat + (n : ℤ)

end

end A123088.P13761858142503109606

/-! ## A123088.P5258811377867391721

`Δ[n²]-A123679(n-log2(1/2))+1`
-/

namespace A123088.P5258811377867391721
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ) - A123679 (SequenceMachineLib.roundAway ((n : ℝ) - Real.logb 2 ((1 : ℚ) / 2 : ℝ))).toNat + 1

end

end A123088.P5258811377867391721

/-! ## A123088.P9883747351851785197

`A367039(n+1)+A065475(n+1)`
-/

namespace A123088.P9883747351851785197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367039 (n + 1) + A065475 (n + 1)

end

end A123088.P9883747351851785197

/-! ## A123088.P6274411350424999735

`A005408(n)+1-A123679(n+1)`
-/

namespace A123088.P6274411350424999735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 n + (1 - A123679 (n + 1))

end

end A123088.P6274411350424999735

/-! ## A123088.P14641683979176760756

`A005843(n)+2-A123679(n+1)`
-/

namespace A123088.P14641683979176760756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 n + (2 - A123679 (n + 1))

end

end A123088.P14641683979176760756

/-! ## A123088.P7383883154062068529

`abs(A123679(n+1)-Δ[A002378(n)])`
-/

namespace A123088.P7383883154062068529
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002378 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A123679 (n + 1) - (f1 (n + 1) - f1 n)|

end

end A123088.P7383883154062068529

/-!
# A123091: Numbers k such that k divides 5^k - 5.

The programs for A123091, there is no canonical definition to state claims against.
-/

/-! ## A123091.P267073982131629413

`∪[A122782(n+1), Δ[A007504(n)]]`
-/

namespace A123091.P267073982131629413
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122782 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A123091.P267073982131629413

/-! ## A123091.P12313644264128983732

`∪[A000040(n+1), A122782(n+1)]`
-/

namespace A123091.P12313644264128983732
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122782 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A123091.P12313644264128983732

/-! ## A123091.P3874149379588452641

`∪[A008578(n+1), A122782(n+1)]`
-/

namespace A123091.P3874149379588452641
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122782 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A123091.P3874149379588452641

/-! ## A123091.P5500600106161908909

`∪[A046022(n+1), A122782(n+1)]`
-/

namespace A123091.P5500600106161908909
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046022 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122782 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A123091.P5500600106161908909

/-! ## A123091.P9390178665374658749

`∪[A122782(n+1), A175787(n+1)]`
-/

namespace A123091.P9390178665374658749
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122782 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175787 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A123091.P9390178665374658749

/-!
# A123092: Decimal expansion of Sum_{k>=1} 1/((2k-1)^2(2k+1)^2) = (Pi^2-8)/16.

The programs for A123092, there is no canonical definition to state claims against.
-/

/-! ## A123092.P5187697674814725061

`A222068(floor(acot(n)+n))`
-/

namespace A123092.P5187697674814725061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222068 ⌊SequenceMachineLib.acot (n : ℝ) + (n : ℝ)⌋.toNat

end

end A123092.P5187697674814725061

/-! ## A123092.P12215689000643725674

`gcd(floor(acot(n)), A222068(n))`
-/

namespace A123092.P12215689000643725674
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd ⌊SequenceMachineLib.acot (n : ℝ)⌋ (A222068 n)

end

end A123092.P12215689000643725674

/-! ## A123092.P15697148017761034410

`A222068(or(n, floor(acot(n))))`
-/

namespace A123092.P15697148017761034410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222068 (Int.lor (n : ℤ) ⌊SequenceMachineLib.acot (n : ℝ)⌋).toNat

end

end A123092.P15697148017761034410

/-! ## A123092.P2726314679189165797

`A222068(xor(n, floor(acot(n))))`
-/

namespace A123092.P2726314679189165797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222068 (Int.xor (n : ℤ) ⌊SequenceMachineLib.acot (n : ℝ)⌋).toNat

end

end A123092.P2726314679189165797

/-! ## A123092.P4271067022335675811

`A222068(round(sqrt(n²+1)))`
-/

namespace A123092.P4271067022335675811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222068 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat

end

end A123092.P4271067022335675811

/-! ## A123092.P11725386002242641735

`A222068(n)^A032741(A020639(2*n+1))`
-/

namespace A123092.P11725386002242641735
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A222068 n : ℚ) ^ (A032741 (A020639 (2 * n + 1)).toNat : ℤ)

end

end A123092.P11725386002242641735

/-! ## A123092.P2280967890028897647

`A222068(n)^A057979(A103517(n))`
-/

namespace A123092.P2280967890028897647
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A222068 n : ℚ) ^ (A057979 (A103517 n).toNat : ℤ)

end

end A123092.P2280967890028897647

/-!
# A123093: Numbers which are not the sum of two 3-almost primes.

The programs for A123093, there is no canonical definition to state claims against.
-/

/-! ## A123093.P606213980683135210

`eq[2, sqrt(a(A280830(n)))]` with `a(0)=4`
-/

namespace A123093.P606213980683135210
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℝ := SequenceMachineLib.rec [4] fun n f2 =>
  Real.sqrt (f2 (A280830 n).toNat)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℝ) = f2 j) n

end

end A123093.P606213980683135210

/-! ## A123093.P4477366146601567860

`eq[0, A280830(n+1)]+1`
-/

namespace A123093.P4477366146601567860
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280830 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A123093.P4477366146601567860

/-! ## A123093.P14684543936396605511

`eq[2, A000032(a(A280830(n)))]` with `a(0)=0`
-/

namespace A123093.P14684543936396605511
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f2 =>
  A000032 (f2 (A280830 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A123093.P14684543936396605511

/-! ## A123093.P12977182850352385736

`eq[2, A000040(a(A280830(n)))]` with `a(0)=1`
-/

namespace A123093.P12977182850352385736
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f2 =>
  A000040 (f2 (A280830 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A123093.P12977182850352385736

/-! ## A123093.P775356144508024745

`lt[A000041(n), A007623(A135727(n))]`
-/

namespace A123093.P775356144508024745
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007623 (A135727 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A123093.P775356144508024745

/-!
# A123094: Sum of first n 12th powers.

The programs for A123094, the canonical program `A123094.P1750364045550364832` is in `Seq.B000.C018`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A123094 has offset 0).

The definition of A123094 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A123094.P1750364045550364832

`∑[n^12]`

The canonical program, it is in `Seq.B000.C018`.
-/

namespace A123094

/-- `∑[n^12]` -/
def P1750364045550364832.Spec : Prop :=
  ∀ n, (P1750364045550364832.a n : ℤ) = A123094 n

theorem P1750364045550364832.correct : P1750364045550364832.Spec := by
  intro n
  simp only [A123094]

end A123094

/-! ## A123094.P17835793338031087282

`a(n-1)+n^12` with `a(0)=0`
-/

namespace A123094.P17835793338031087282
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) + n ^ 12

end

end A123094.P17835793338031087282

namespace A123094

/-- `a(n-1)+n^12` -/
def P17835793338031087282.Spec : Prop :=
  ∀ n, (P17835793338031087282.a n : ℤ) = A123094 n

end A123094

/-! ## A123094.P4718863062761022922

`floor(a(n-1)+(n*n²)²²)` with `a(0)=0`

`floor` is left out, it is the identity on integers.
-/

namespace A123094.P4718863062761022922
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) + ((n * n ^ 2) ^ 2) ^ 2

end

end A123094.P4718863062761022922

namespace A123094

/-- `floor(a(n-1)+(n*n²)²²)` -/
def P4718863062761022922.Spec : Prop :=
  ∀ n, (P4718863062761022922.a n : ℤ) = A123094 n

end A123094

/-! ## A123094.P3489677653422025742

`floor(∑[sqrt(A010812(n))])`
-/

namespace A123094.P3489677653422025742
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A010812 n : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊∑ j ∈ Finset.range (n + 1), f1 j⌋

end

end A123094.P3489677653422025742

namespace A123094

/-- `floor(∑[sqrt(A010812(n))])` -/
def P3489677653422025742.Spec : Prop :=
  ∀ n, P3489677653422025742.a n = A123094 n

end A123094

/-! ## A123094.P3317752000118573760

`∑[2*A008456(n)]/2`
-/

namespace A123094.P3317752000118573760
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008456 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / 2

end

end A123094.P3317752000118573760

namespace A123094

/-- `∑[2*A008456(n)]/2` -/
def P3317752000118573760.Spec : Prop :=
  ∀ n, P3317752000118573760.a n = (A123094 n : ℚ)

end A123094

/-! ## A123094.P16422357555592187896

`n+1-∑[A024010(n)]`
-/

namespace A123094.P16422357555592187896
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024010 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A123094.P16422357555592187896

namespace A123094

/-- `n+1-∑[A024010(n)]` -/
def P16422357555592187896.Spec : Prop :=
  ∀ n, P16422357555592187896.a n = A123094 n

end A123094

/-! ## A123094.P8056151408718624578

`∑[(n*n²)²²]*A057427(n)`
-/

namespace A123094.P8056151408718624578
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((n * n ^ 2) ^ 2) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) * A057427 n

end

end A123094.P8056151408718624578

namespace A123094

/-- `∑[(n*n²)²²]*A057427(n)` -/
def P8056151408718624578.Spec : Prop :=
  ∀ n, P8056151408718624578.a n = A123094 n

end A123094

/-! ## A123094.P307295587786337657

`∑[A123868(n+1)]-A123868(n+1)+n`
-/

namespace A123094.P307295587786337657
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123868 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A123868 (n + 1) + (n : ℤ)

end

end A123094.P307295587786337657

namespace A123094

/-- `∑[A123868(n+1)]-A123868(n+1)+n` -/
def P307295587786337657.Spec : Prop :=
  ∀ n, P307295587786337657.a n = A123094 n

end A123094

/-! ## A123094.P5576885343944947730

`∑[A008456(n+1)]-A008456(n+1)`
-/

namespace A123094.P5576885343944947730
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008456 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A008456 (n + 1)

end

end A123094.P5576885343944947730

namespace A123094

/-- `∑[A008456(n+1)]-A008456(n+1)` -/
def P5576885343944947730.Spec : Prop :=
  ∀ n, P5576885343944947730.a n = A123094 n

end A123094

/-! ## A123094.P18084421924119681401

`and(1, A060160(n+1))*∑[A008456(n)]`
-/

namespace A123094.P18084421924119681401
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008456 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A060160 (n + 1)) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A123094.P18084421924119681401

namespace A123094

/-- `and(1, A060160(n+1))*∑[A008456(n)]` -/
def P18084421924119681401.Spec : Prop :=
  ∀ n, P18084421924119681401.a n = A123094 n

end A123094

/-! ## A123094.P15968695340446510238

`A007318(∑[n])*∑[(n*n²)²²]`
-/

namespace A123094.P15968695340446510238
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((n * n ^ 2) ^ 2) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (∑ j ∈ Finset.range (n + 1), f1 j) * ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)

end

end A123094.P15968695340446510238

namespace A123094

/-- `A007318(∑[n])*∑[(n*n²)²²]` -/
def P15968695340446510238.Spec : Prop :=
  ∀ n, P15968695340446510238.a n = A123094 n

end A123094

/-! ## A123094.P12163550807078610781

`A000578(n²)²+a(n-1)` with `a(0)=0`
-/

namespace A123094.P12163550807078610781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A000578 (n ^ 2) ^ 2 + a (n - 1)

end

end A123094.P12163550807078610781

namespace A123094

/-- `A000578(n²)²+a(n-1)` -/
def P12163550807078610781.Spec : Prop :=
  ∀ n, P12163550807078610781.a n = A123094 n

end A123094

/-! ## A123094.P660234541353002239

`∑[A002604(n²)]-(n+1)`
-/

namespace A123094.P660234541353002239
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002604 (n ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (n + 1 : ℤ)

end

end A123094.P660234541353002239

namespace A123094

/-- `∑[A002604(n²)]-(n+1)` -/
def P660234541353002239.Spec : Prop :=
  ∀ n, P660234541353002239.a n = A123094 n

end A123094

/-! ## A123094.P12844170580173738221

`n+1-∑[A024004(n²)]`
-/

namespace A123094.P12844170580173738221
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024004 (n ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A123094.P12844170580173738221

namespace A123094

/-- `n+1-∑[A024004(n²)]` -/
def P12844170580173738221.Spec : Prop :=
  ∀ n, P12844170580173738221.a n = A123094 n

end A123094

/-! ## A123094.P16071958275449368

`A001014(n²)+a(n-1)` with `a(0)=0`
-/

namespace A123094.P16071958275449368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A001014 (n ^ 2) + a (n - 1)

end

end A123094.P16071958275449368

namespace A123094

/-- `A001014(n²)+a(n-1)` -/
def P16071958275449368.Spec : Prop :=
  ∀ n, P16071958275449368.a n = A123094 n

end A123094

/-!
# A123095: Sum of first n 11th powers.

The programs for A123095, the canonical program `A123095.P7520491440601961112` is in `Seq.B000.C018`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A123095 has offset 0).

The definition of A123095 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A123095.P7520491440601961112

`a(n-1)+n^11` with `a(0)=0`

The canonical program, it is in `Seq.B000.C018`.
-/

namespace A123095

/-- `a(n-1)+n^11` -/
def P7520491440601961112.Spec : Prop :=
  ∀ n, (P7520491440601961112.a n : ℤ) = A123095 n

theorem P7520491440601961112.correct : P7520491440601961112.Spec := by
  intro n
  simp only [A123095]

end A123095

/-! ## A123095.P5444900273278273661

`∑[n^11]`
-/

namespace A123095.P5444900273278273661
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 11

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A123095.P5444900273278273661

namespace A123095

/-- `∑[n^11]` -/
def P5444900273278273661.Spec : Prop :=
  ∀ n, (P5444900273278273661.a n : ℤ) = A123095 n

end A123095

/-! ## A123095.P5980910596395053239

`∑[2*A008455(n)]/2`
-/

namespace A123095.P5980910596395053239
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008455 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / 2

end

end A123095.P5980910596395053239

namespace A123095

/-- `∑[2*A008455(n)]/2` -/
def P5980910596395053239.Spec : Prop :=
  ∀ n, P5980910596395053239.a n = (A123095 n : ℚ)

end A123095

/-! ## A123095.P11354615102101228625

`1-∑[A024009(n)]+n`
-/

namespace A123095.P11354615102101228625
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024009 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)

end

end A123095.P11354615102101228625

namespace A123095

/-- `1-∑[A024009(n)]+n` -/
def P11354615102101228625.Spec : Prop :=
  ∀ n, P11354615102101228625.a n = A123095 n

end A123095

/-! ## A123095.P16810605523872692113

`abs(∑[2*A168119(n)-n])`
-/

namespace A123095.P16810605523872692113
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A168119 n - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∑ j ∈ Finset.range (n + 1), f1 j|

end

end A123095.P16810605523872692113

namespace A123095

/-- `abs(∑[2*A168119(n)-n])` -/
def P16810605523872692113.Spec : Prop :=
  ∀ n, P16810605523872692113.a n = A123095 n

end A123095

/-! ## A123095.P12267952433248482812

`∑[n]-∑[n*A024008(n)]`
-/

namespace A123095.P12267952433248482812
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A024008 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - ∑ j ∈ Finset.range (n + 1), f2 j

end

end A123095.P12267952433248482812

namespace A123095

/-- `∑[n]-∑[n*A024008(n)]` -/
def P12267952433248482812.Spec : Prop :=
  ∀ n, P12267952433248482812.a n = A123095 n

end A123095

/-! ## A123095.P16011642465038790081

`2*∑[n/2*A008454(n)]`
-/

namespace A123095.P16011642465038790081
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / 2 * (A008454 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A123095.P16011642465038790081

namespace A123095

/-- `2*∑[n/2*A008454(n)]` -/
def P16011642465038790081.Spec : Prop :=
  ∀ n, P16011642465038790081.a n = (A123095 n : ℚ)

end A123095

/-! ## A123095.P2533325649588294333

`∑[n²²*A001015(n)+1]-1-n`
-/

namespace A123095.P2533325649588294333
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n ^ 2) ^ 2 : ℤ) * A001015 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1 - (n : ℤ)

end

end A123095.P2533325649588294333

namespace A123095

/-- `∑[n²²*A001015(n)+1]-1-n` -/
def P2533325649588294333.Spec : Prop :=
  ∀ n, P2533325649588294333.a n = A123095 n

end A123095

/-! ## A123095.P18174064668959735239

`∑[A258812(n+1)]-A258812(n+1)+n`
-/

namespace A123095.P18174064668959735239
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258812 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A258812 (n + 1) + (n : ℤ)

end

end A123095.P18174064668959735239

namespace A123095

/-- `∑[A258812(n+1)]-A258812(n+1)+n` -/
def P18174064668959735239.Spec : Prop :=
  ∀ n, P18174064668959735239.a n = A123095 n

end A123095

/-! ## A123095.P2038516518518694160

`∑[A008455(n)]%∑[A008455(n+1)]`
-/

namespace A123095.P2038516518518694160
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008455 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008455 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) (∑ j ∈ Finset.range (n + 1), f2 j)

end

end A123095.P2038516518518694160

namespace A123095

/-- `∑[A008455(n)]%∑[A008455(n+1)]` -/
def P2038516518518694160.Spec : Prop :=
  ∀ n, P2038516518518694160.a n = A123095 n

end A123095

/-! ## A123095.P4226094596738128622

`A036495(n²)+a(n-1)` with `a(0)=0`
-/

namespace A123095.P4226094596738128622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A036495 (n ^ 2) + a (n - 1)

end

end A123095.P4226094596738128622

namespace A123095

/-- `A036495(n²)+a(n-1)` -/
def P4226094596738128622.Spec : Prop :=
  ∀ n, P4226094596738128622.a n = A123095 n

end A123095

/-!
# A123096: Prime arithmetic mean of ten consecutive primes.

The programs for A123096, there is no canonical definition to state claims against.
-/

/-! ## A123096.P11917173193272609115

`p?[A218114(n+1)]`
-/

namespace A123096.P11917173193272609115
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218114 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A123096.P11917173193272609115

/-! ## A123096.P17590589369665901090

`record[p?[A218114(A052938(n))]]`
-/

namespace A123096.P17590589369665901090
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218114 (A052938 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A123096.P17590589369665901090

/-! ## A123096.P6331461374289019930

`record[p?[A218114(A106466(n))]]`
-/

namespace A123096.P6331461374289019930
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218114 (A106466 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A123096.P6331461374289019930

/-! ## A123096.P1864127704020841805

`record[p?[A218114(A126759(n))]]`
-/

namespace A123096.P1864127704020841805
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218114 (A126759 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A123096.P1864127704020841805

/-! ## A123096.P2205545450196358553

`record[p?[A218114(A291769(n))]]`
-/

namespace A123096.P2205545450196358553
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218114 (A291769 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A123096.P2205545450196358553

/-!
# A123097: Triangle read by rows: T(n,k) = binomial(n-2, k-1) + n*binomial(n-1, k-1), 1 <= k <= n, starting with T(1, 1) = 1.

The programs for A123097, the canonical program `A123097.P13007430214341374216` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A123097 has offset 1).

The definition of A123097 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A123097.P7235103619401238851

`A003506(n+1)+∑[A037012(n)]`
-/

namespace A123097.P7235103619401238851
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037012 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003506 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A123097.P7235103619401238851

namespace A123097

/-- `A003506(n+1)+∑[A037012(n)]` -/
def P7235103619401238851.Spec : Prop :=
  ∀ n, P7235103619401238851.a n = A123097 (n + 1)

end A123097

/-! ## A123097.P17392365742532107054

`A003506(n+1)-∑[A008482(n)]`
-/

namespace A123097.P17392365742532107054
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008482 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003506 (n + 1) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A123097.P17392365742532107054

namespace A123097

/-- `A003506(n+1)-∑[A008482(n)]` -/
def P17392365742532107054.Spec : Prop :=
  ∀ n, P17392365742532107054.a n = A123097 (n + 1)

end A123097

/-! ## A123097.P13007430214341374216

`A097805(n+1)+A003506(n+1)`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A123097

/-- `A097805(n+1)+A003506(n+1)` -/
def P13007430214341374216.Spec : Prop :=
  ∀ n, P13007430214341374216.a n = A123097 (n + 1)

theorem P13007430214341374216.correct : P13007430214341374216.Spec := by
  intro n
  simp only [A123097, Nat.add_sub_cancel]

end A123097

/-! ## A123097.P17986624630839555274

`A029653(n)+A003056(n)*A007318(n)`
-/

namespace A123097.P17986624630839555274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029653 n + A003056 n * A007318 n

end

end A123097.P17986624630839555274

namespace A123097

/-- `A029653(n)+A003056(n)*A007318(n)` -/
def P17986624630839555274.Spec : Prop :=
  ∀ n, P17986624630839555274.a n = A123097 (n + 1)

end A123097

/-! ## A123097.P5905785345887655544

`A003506(n+1)+Δ[A308663(n)]`
-/

namespace A123097.P5905785345887655544
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308663 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003506 (n + 1) + (f1 (n + 1) - f1 n)

end

end A123097.P5905785345887655544

namespace A123097

/-- `A003506(n+1)+Δ[A308663(n)]` -/
def P5905785345887655544.Spec : Prop :=
  ∀ n, P5905785345887655544.a n = A123097 (n + 1)

end A123097

/-! ## A123097.P580410525951895494

`A097805(n+1)+A127952(n+1)+A127952(n)`
-/

namespace A123097.P580410525951895494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097805 (n + 1) + (A127952 (n + 1) + A127952 n)

end

end A123097.P580410525951895494

namespace A123097

/-- `A097805(n+1)+A127952(n+1)+A127952(n)` -/
def P580410525951895494.Spec : Prop :=
  ∀ n, P580410525951895494.a n = A123097 (n + 1)

end A123097

/-! ## A123097.P13157903670727086475

`A125026(n+1)+A135225(n+1)-A007318(n+1)`
-/

namespace A123097.P13157903670727086475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125026 (n + 1) + (A135225 (n + 1) - A007318 (n + 1))

end

end A123097.P13157903670727086475

namespace A123097

/-- `A125026(n+1)+A135225(n+1)-A007318(n+1)` -/
def P13157903670727086475.Spec : Prop :=
  ∀ n, P13157903670727086475.a n = A123097 (n + 1)

end A123097

/-! ## A123097.P12739788228669591545

`A134239(n)-A216973(n)`
-/

namespace A123097.P12739788228669591545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134239 n - A216973 n

end

end A123097.P12739788228669591545

namespace A123097

/-- `A134239(n)-A216973(n)` -/
def P12739788228669591545.Spec : Prop :=
  ∀ n, P12739788228669591545.a n = A123097 (n + 1)

end A123097

/-! ## A123097.P11988801095352671408

`A097805(n+1)+A046206(2*n+1)`
-/

namespace A123097.P11988801095352671408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097805 (n + 1) + A046206 (2 * n + 1)

end

end A123097.P11988801095352671408

namespace A123097

/-- `A097805(n+1)+A046206(2*n+1)` -/
def P11988801095352671408.Spec : Prop :=
  ∀ n, P11988801095352671408.a n = A123097 (n + 1)

end A123097

/-!
# A123098: Multiplicative encoding of triangle formed by reading Pascal's triangle mod 2 (A047999).

The programs for A123098, there is no canonical definition to state claims against.
-/

/-! ## A123098.P10800582679421024674

`A019565(A001317(n))`
-/

namespace A123098.P10800582679421024674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019565 (A001317 n).toNat

end

end A123098.P10800582679421024674

/-! ## A123098.P14346452693466936217

`A255483(∑[n]+n)`
-/

namespace A123098.P14346452693466936217
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255483 (∑ j ∈ Finset.range (n + 1), f1 j + n)

end

end A123098.P14346452693466936217

/-! ## A123098.P16578072859402965785

`A334205(p?[comp[n²]])`
-/

namespace A123098.P16578072859402965785
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334205 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A123098.P16578072859402965785

/-! ## A123098.P5587272940845353492

`A334205(record[p?[∏{p}[n+1, #]]])`
-/

namespace A123098.P5587272940845353492
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f3 n), p

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334205 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))

end

end A123098.P5587272940845353492

/-! ## A123098.P2219035323376828415

`A334205(Δ[A007504(n)])`
-/

namespace A123098.P2219035323376828415
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334205 (f1 (n + 1) - f1 n).toNat

end

end A123098.P2219035323376828415

/-! ## A123098.P5853255603422482395

`A334205(A000040(n+1))`
-/

namespace A123098.P5853255603422482395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334205 (A000040 (n + 1)).toNat

end

end A123098.P5853255603422482395

/-! ## A123098.P14234550590649773981

`A334205(record[A006530(n+2)])`
-/

namespace A123098.P14234550590649773981
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334205 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A123098.P14234550590649773981

/-! ## A123098.P18027949070908993671

`A334205(record[A014963(n+2)])`
-/

namespace A123098.P18027949070908993671
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334205 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A123098.P18027949070908993671

/-! ## A123098.P5112341919662529500

`A334205(record[A020639(n+2)])`
-/

namespace A123098.P5112341919662529500
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334205 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A123098.P5112341919662529500

/-! ## A123098.P8187606391096512137

`A277810(∑[n]+1)`
-/

namespace A123098.P8187606391096512137
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277810 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A123098.P8187606391096512137

