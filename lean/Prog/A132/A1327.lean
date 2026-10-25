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
import Seq.B000.C025
import Seq.B000.C026
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
import Seq.B001.C009
import Seq.B001.C010
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B003.C004
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
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
import Seq.B014.C000
import Seq.Opaque.C000
import Seq.Opaque.C001
import Seq.Opaque.C002
import Seq.Opaque.C003
import Seq.Opaque.C004
import Seq.Opaque.C005
import Seq.Opaque.C007
import Seq.Opaque.C008
import Seq.Opaque.C009
import Seq.Opaque.C010
import Seq.Opaque.C011
import Seq.Opaque.C013
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
# A132708: Period 6: repeat [4, 2, 1, -4, -2, -1].

The programs for A132708, the canonical program `A132708.P9807569525499884766` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A132708 has offset 0).

The definition of A132708 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A132708.P9807569525499884766

`a(n-6)` with `a(0)=4, a(1)=2, a(2)=1, a(3)=-4, a(4)=-2, a(5)=-1`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A132708

/-- `a(n-6)` -/
def P9807569525499884766.Spec : Prop :=
  ∀ n, P9807569525499884766.a n = A132708 n

theorem P9807569525499884766.correct : P9807569525499884766.Spec := by
  intro n
  simp only [A132708]

end A132708

/-!
# A132710: Infinitesimal generator for a diagonally-shifted Lah matrix, unsigned A105278, related to n! Laguerre(n,-x,1).

The programs for A132710, the canonical program `A132710.P8241110843192259271` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A132710 has offset 0).

The definition of A132710 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A132710.P7502926020103914927

`∑[char[∑[n]]]*A132440(n)`
-/

namespace A132710.P7502926020103914927
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) * A132440 n

end

end A132710.P7502926020103914927

namespace A132710

/-- `∑[char[∑[n]]]*A132440(n)` -/
def P7502926020103914927.Spec : Prop :=
  ∀ n, P7502926020103914927.a n = A132710 n

end A132710

/-! ## A132710.P8241110843192259271

`2*C(A127648(n+1), 2)`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A132710

/-- `2*C(A127648(n+1), 2)` -/
def P8241110843192259271.Spec : Prop :=
  ∀ n, (P8241110843192259271.a n : ℤ) = A132710 n

theorem P8241110843192259271.correct : P8241110843192259271.Spec := by
  intro n
  simp only [A132710]

end A132710

/-! ## A132710.P18119024363001124854

`char[∑[n]-2]*A103371(n)`
-/

namespace A132710.P18119024363001124854
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) - 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A103371 n

end

end A132710.P18119024363001124854

namespace A132710

/-- `char[∑[n]-2]*A103371(n)` -/
def P18119024363001124854.Spec : Prop :=
  ∀ n, P18119024363001124854.a n = A132710 n

end A132710

/-! ## A132710.P2620643909825902359

`∑[char[∑[n+1]]]*A132681(n)`
-/

namespace A132710.P2620643909825902359
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) * A132681 n

end

end A132710.P2620643909825902359

namespace A132710

/-- `∑[char[∑[n+1]]]*A132681(n)` -/
def P2620643909825902359.Spec : Prop :=
  ∀ n, P2620643909825902359.a n = A132710 n

end A132710

/-! ## A132710.P4253266057777372199

`char[∑[n]-2]*A051537(n+1)`
-/

namespace A132710.P4253266057777372199
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) - 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A051537 (n + 1)

end

end A132710.P4253266057777372199

namespace A132710

/-- `char[∑[n]-2]*A051537(n+1)` -/
def P4253266057777372199.Spec : Prop :=
  ∀ n, P4253266057777372199.a n = A132710 n

end A132710

/-! ## A132710.P13163806156165173347

`A002378(A132440(n))`
-/

namespace A132710.P13163806156165173347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002378 (A132440 n).toNat

end

end A132710.P13163806156165173347

namespace A132710

/-- `A002378(A132440(n))` -/
def P13163806156165173347.Spec : Prop :=
  ∀ n, P13163806156165173347.a n = A132710 n

end A132710

/-! ## A132710.P6785699220497976302

`A110660(A134082(n))`
-/

namespace A132710.P6785699220497976302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110660 (A134082 n).toNat

end

end A132710.P6785699220497976302

namespace A132710

/-- `A110660(A134082(n))` -/
def P6785699220497976302.Spec : Prop :=
  ∀ n, P6785699220497976302.a n = A132710 n

end A132710

/-! ## A132710.P15966069562170349568

`A008130(A131431(n+1))`
-/

namespace A132710.P15966069562170349568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008130 (A131431 (n + 1)).toNat

end

end A132710.P15966069562170349568

namespace A132710

/-- `A008130(A131431(n+1))` -/
def P15966069562170349568.Spec : Prop :=
  ∀ n, P15966069562170349568.a n = A132710 n

end A132710

/-! ## A132710.P5854076122962066450

`A132440(n)*A135278(n)`
-/

namespace A132710.P5854076122962066450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132440 n * A135278 n

end

end A132710.P5854076122962066450

namespace A132710

/-- `A132440(n)*A135278(n)` -/
def P5854076122962066450.Spec : Prop :=
  ∀ n, P5854076122962066450.a n = A132710 n

end A132710

/-! ## A132710.P2606250843661381185

`lcm(A003056(n), A132681(n))`
-/

namespace A132710.P2606250843661381185
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A003056 n) (A132681 n)

end

end A132710.P2606250843661381185

namespace A132710

/-- `lcm(A003056(n), A132681(n))` -/
def P2606250843661381185.Spec : Prop :=
  ∀ n, (P2606250843661381185.a n : ℤ) = A132710 n

end A132710

/-! ## A132710.P15932317175209042220

`lcm(A029653(n), A132440(n))`
-/

namespace A132710.P15932317175209042220
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A029653 n) (A132440 n)

end

end A132710.P15932317175209042220

namespace A132710

/-- `lcm(A029653(n), A132440(n))` -/
def P15932317175209042220.Spec : Prop :=
  ∀ n, (P15932317175209042220.a n : ℤ) = A132710 n

end A132710

/-! ## A132710.P13886051378159918009

`A132013(n)²-A132013(n)`
-/

namespace A132710.P13886051378159918009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132013 n ^ 2 - A132013 n

end

end A132710.P13886051378159918009

namespace A132710

/-- `A132013(n)²-A132013(n)` -/
def P13886051378159918009.Spec : Prop :=
  ∀ n, P13886051378159918009.a n = A132710 n

end A132710

/-! ## A132710.P10545625209135128920

`A002061(A127648(n+1))-1`
-/

namespace A132710.P10545625209135128920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002061 (A127648 (n + 1)).toNat - 1

end

end A132710.P10545625209135128920

namespace A132710

/-- `A002061(A127648(n+1))-1` -/
def P10545625209135128920.Spec : Prop :=
  ∀ n, P10545625209135128920.a n = A132710 n

theorem P10545625209135128920.correct : P10545625209135128920.Spec := by
  intro n
  simp only [A132710, Nat.add_sub_cancel, A132710.P10545625209135128920.a, A132710.P8241110843192259271.a, A002061, A002061.P13016590216674735232.a, A127648, A127648.P14273563626416826954.f1, A127648.P14273563626416826954.a, A061885, A061885.P4567764245783084005.a, A057944, A057944.P16851463738746886639.a, A000217, A000217.P10269402890581615239.a, A003056, A003056.P5318256527314048597.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A132710

/-! ## A132710.P12530557117592357190

`A003056(n)*A127648(n+1)`
-/

namespace A132710.P12530557117592357190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 n * A127648 (n + 1)

end

end A132710.P12530557117592357190

namespace A132710

/-- `A003056(n)*A127648(n+1)` -/
def P12530557117592357190.Spec : Prop :=
  ∀ n, P12530557117592357190.a n = A132710 n

end A132710

/-! ## A132710.P12227199749550083815

`A007318(n)*A127648(n+1)`
-/

namespace A132710.P12227199749550083815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n * A127648 (n + 1)

end

end A132710.P12227199749550083815

namespace A132710

/-- `A007318(n)*A127648(n+1)` -/
def P12227199749550083815.Spec : Prop :=
  ∀ n, P12227199749550083815.a n = A132710 n

end A132710

/-! ## A132710.P7349338190329422612

`A037027(n)*A127648(n+1)`
-/

namespace A132710.P7349338190329422612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037027 n * A127648 (n + 1)

end

end A132710.P7349338190329422612

namespace A132710

/-- `A037027(n)*A127648(n+1)` -/
def P7349338190329422612.Spec : Prop :=
  ∀ n, P7349338190329422612.a n = A132710 n

end A132710

/-! ## A132710.P15005788853836584443

`A130460(n+1)*A130855(n)`
-/

namespace A132710.P15005788853836584443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130460 (n + 1) * A130855 n

end

end A132710.P15005788853836584443

namespace A132710

/-- `A130460(n+1)*A130855(n)` -/
def P15005788853836584443.Spec : Prop :=
  ∀ n, P15005788853836584443.a n = A132710 n

end A132710

/-! ## A132710.P1481381887422566943

`lcm(A095834(n+1), A132013(n))`
-/

namespace A132710.P1481381887422566943
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A095834 (n + 1)) (A132013 n)

end

end A132710.P1481381887422566943

namespace A132710

/-- `lcm(A095834(n+1), A132013(n))` -/
def P1481381887422566943.Spec : Prop :=
  ∀ n, (P1481381887422566943.a n : ℤ) = A132710 n

end A132710

/-! ## A132710.P7861187722791994904

`and(A092283(n+1), A185018(n))`
-/

namespace A132710.P7861187722791994904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A092283 (n + 1)) (A185018 n)

end

end A132710.P7861187722791994904

namespace A132710

/-- `and(A092283(n+1), A185018(n))` -/
def P7861187722791994904.Spec : Prop :=
  ∀ n, P7861187722791994904.a n = A132710 n

end A132710

/-! ## A132710.P5720180941623780676

`and(A092283(n+1), A251635(n))`
-/

namespace A132710.P5720180941623780676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A092283 (n + 1)) (A251635 n)

end

end A132710.P5720180941623780676

namespace A132710

/-- `and(A092283(n+1), A251635(n))` -/
def P5720180941623780676.Spec : Prop :=
  ∀ n, P5720180941623780676.a n = A132710 n

end A132710

/-!
# A132720: Sequence is identical to its second differences in absolute values.

The programs for A132720, the canonical program `A132720.P18146227535923381502` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A132720 has offset 0).

The definition of A132720 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 498 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A132720.P18146227535923381502

`4*a(n-3)` with `a(0)=1, a(1)=2, a(2)=4, a(3)=8`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A132720

/-- `4*a(n-3)` -/
def P18146227535923381502.Spec : Prop :=
  ∀ n, (P18146227535923381502.a n : ℤ) = A132720 n

theorem P18146227535923381502.correct : P18146227535923381502.Spec := by
  intro n
  simp only [A132720]

end A132720

/-! ## A132720.P105269219378624766

`∏[a(n-3)!]` with `a(0)=1, a(1)=2, a(2)=2, a(3)=2, a(4)=1`
-/

namespace A132720.P105269219378624766
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 2, 2, 2, 1] fun n f1 =>
  Nat.factorial (f1 (n - 3))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A132720.P105269219378624766

namespace A132720

/-- `∏[a(n-3)!]` -/
def P105269219378624766.Spec : Prop :=
  ∀ n, (P105269219378624766.a n : ℤ) = A132720 n

end A132720

/-! ## A132720.P9795623411161803791

`2^∑[char[n*n²%3+1]]`
-/

namespace A132720.P9795623411161803791
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (n ^ 2 % 3) + 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A132720.P9795623411161803791

namespace A132720

/-- `2^∑[char[n*n²%3+1]]` -/
def P9795623411161803791.Spec : Prop :=
  ∀ n, (P9795623411161803791.a n : ℤ) = A132720 n

end A132720

/-! ## A132720.P3276596485124716977

`2^∑[a(n-3)²]` with `a(0)=0, a(1)=1, a(2)=1, a(3)=1, a(4)=0`
-/

namespace A132720.P3276596485124716977
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 1, 1, 0] fun n f1 =>
  f1 (n - 3) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A132720.P3276596485124716977

namespace A132720

/-- `2^∑[a(n-3)²]` -/
def P3276596485124716977.Spec : Prop :=
  ∀ n, (P3276596485124716977.a n : ℤ) = A132720 n

end A132720

/-! ## A132720.P2480274352816382674

`2^∑[floor(a(n-3))]` with `a(0)=0, a(1)=1, a(2)=1, a(3)=1, a(4)=0`

`floor` is left out, it is the identity on integers.
-/

namespace A132720.P2480274352816382674
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 1, 1, 0] fun n f1 =>
  f1 (n - 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A132720.P2480274352816382674

namespace A132720

/-- `2^∑[floor(a(n-3))]` -/
def P2480274352816382674.Spec : Prop :=
  ∀ n, (P2480274352816382674.a n : ℤ) = A132720 n

end A132720

/-! ## A132720.P17640887897952569762

`∏[gcd(2, A184633(n+1))]`
-/

namespace A132720.P17640887897952569762
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 2 (A184633 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A132720.P17640887897952569762

namespace A132720

/-- `∏[gcd(2, A184633(n+1))]` -/
def P17640887897952569762.Spec : Prop :=
  ∀ n, (P17640887897952569762.a n : ℤ) = A132720 n

end A132720

/-! ## A132720.P4540724029024082150

`2^(A008576(n+1)%(n+1))`
-/

namespace A132720.P4540724029024082150
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (Int.tmod (A008576 (n + 1)) (n + 1 : ℤ) : ℤ)

end

end A132720.P4540724029024082150

namespace A132720

/-- `2^(A008576(n+1)%(n+1))` -/
def P4540724029024082150.Spec : Prop :=
  ∀ n, P4540724029024082150.a n = (A132720 n : ℚ)

end A132720

/-! ## A132720.P16260919144189230519

`2^(A219529(2*(n+1))%(n+1))`
-/

namespace A132720.P16260919144189230519
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (Int.tmod (A219529 (2 * (n + 1))) (n + 1 : ℤ) : ℤ)

end

end A132720.P16260919144189230519

namespace A132720

/-- `2^(A219529(2*(n+1))%(n+1))` -/
def P16260919144189230519.Spec : Prop :=
  ∀ n, P16260919144189230519.a n = (A132720 n : ℚ)

end A132720

/-! ## A132720.P12751612952016131220

`A158780(A024352(n+1))`
-/

namespace A132720.P12751612952016131220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158780 (A024352 (n + 1)).toNat

end

end A132720.P12751612952016131220

namespace A132720

/-- `A158780(A024352(n+1))` -/
def P12751612952016131220.Spec : Prop :=
  ∀ n, P12751612952016131220.a n = A132720 n

end A132720

/-! ## A132720.P9009503814897424709

`A140426(A113127(n+1))`
-/

namespace A132720.P9009503814897424709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140426 (A113127 (n + 1)).toNat

end

end A132720.P9009503814897424709

namespace A132720

/-- `A140426(A113127(n+1))` -/
def P9009503814897424709.Spec : Prop :=
  ∀ n, P9009503814897424709.a n = A132720 n

end A132720

/-! ## A132720.P2364770698074414220

`A140426(A133653(n+1))`
-/

namespace A132720.P2364770698074414220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140426 (A133653 (n + 1)).toNat

end

end A132720.P2364770698074414220

namespace A132720

/-- `A140426(A133653(n+1))` -/
def P2364770698074414220.Spec : Prop :=
  ∀ n, P2364770698074414220.a n = A132720 n

end A132720

/-! ## A132720.P4900478516455494520

`A016116(record[A080412(n+2)])`
-/

namespace A132720.P4900478516455494520
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080412 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016116 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A132720.P4900478516455494520

namespace A132720

/-- `A016116(record[A080412(n+2)])` -/
def P4900478516455494520.Spec : Prop :=
  ∀ n, P4900478516455494520.a n = A132720 n

end A132720

/-! ## A132720.P7423070642912901134

`A173862(A267872(n+1)+1)`
-/

namespace A132720.P7423070642912901134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173862 (A267872 (n + 1) + 1).toNat

end

end A132720.P7423070642912901134

namespace A132720

/-- `A173862(A267872(n+1)+1)` -/
def P7423070642912901134.Spec : Prop :=
  ∀ n, P7423070642912901134.a n = A132720 n

end A132720

/-! ## A132720.P10177318456804452314

`A173862(A267873(n+1)+1)`
-/

namespace A132720.P10177318456804452314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173862 (A267873 (n + 1) + 1).toNat

end

end A132720.P10177318456804452314

namespace A132720

/-- `A173862(A267873(n+1)+1)` -/
def P10177318456804452314.Spec : Prop :=
  ∀ n, P10177318456804452314.a n = A132720 n

end A132720

/-! ## A132720.P12770914734672943000

`A036453(n+1)*A291778(n)`
-/

namespace A132720.P12770914734672943000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036453 (n + 1) * A291778 n

end

end A132720.P12770914734672943000

namespace A132720

/-- `A036453(n+1)*A291778(n)` -/
def P12770914734672943000.Spec : Prop :=
  ∀ n, P12770914734672943000.a n = A132720 n

end A132720

/-! ## A132720.P7396593645099029582

`A060548(A271114(n)-2*n)`
-/

namespace A132720.P7396593645099029582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060548 (A271114 n - (2 * n : ℤ)).toNat

end

end A132720.P7396593645099029582

namespace A132720

/-- `A060548(A271114(n)-2*n)` -/
def P7396593645099029582.Spec : Prop :=
  ∀ n, P7396593645099029582.a n = A132720 n

end A132720

/-! ## A132720.P7136558620360101037

`A060548(A271114(n)-n-n)`
-/

namespace A132720.P7136558620360101037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060548 (A271114 n - (n : ℤ) - (n : ℤ)).toNat

end

end A132720.P7136558620360101037

namespace A132720

/-- `A060548(A271114(n)-n-n)` -/
def P7136558620360101037.Spec : Prop :=
  ∀ n, P7136558620360101037.a n = A132720 n

end A132720

/-! ## A132720.P5944284449056075292

`A131572(comp[A004277(2*n)]+1)`
-/

namespace A132720.P5944284449056075292
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (2 * n)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131572 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1)

end

end A132720.P5944284449056075292

namespace A132720

/-- `A131572(comp[A004277(2*n)]+1)` -/
def P5944284449056075292.Spec : Prop :=
  ∀ n, P5944284449056075292.a n = A132720 n

end A132720

/-! ## A132720.P6626134372990613550

`ogf((1+2x+4x^2+4x^3)/(1-4x^3))`
-/

namespace A132720.P6626134372990613550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 2, 4, 4] [1, 0, 0, -4] n

end

end A132720.P6626134372990613550

namespace A132720

/-- `ogf((1+2x+4x^2+4x^3)/(1-4x^3))` -/
def P6626134372990613550.Spec : Prop :=
  ∀ n, P6626134372990613550.a n = A132720 n

end A132720

/-!
# A132722: Numbers with k decimal digits that are also k-th powers.

The programs for A132722, there is no canonical definition to state claims against.
-/

/-! ## A132722.P3601258270053086174

`record[A051801(A010785(n))]`
-/

namespace A132722.P3601258270053086174
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051801 (A010785 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A132722.P3601258270053086174

/-! ## A132722.P15345684283468291581

`record[A051801(∑[A027828(n)])]`
-/

namespace A132722.P15345684283468291581
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027828 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051801 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A132722.P15345684283468291581

/-! ## A132722.P9931106004453678459

`record[A007954(A010785(n+1))]`
-/

namespace A132722.P9931106004453678459
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007954 (A010785 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A132722.P9931106004453678459

/-! ## A132722.P1566329240170306920

`record[A007954(A079475(n+1))]`
-/

namespace A132722.P1566329240170306920
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007954 (A079475 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A132722.P1566329240170306920

/-! ## A132722.P18013470022499201421

`record[A007954(A179309(n+1))]`
-/

namespace A132722.P18013470022499201421
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007954 (A179309 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A132722.P18013470022499201421

/-!
# A132723: Binomial transform of A132429.

The programs for A132723, the canonical program `A132723.P1763007134650330569` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A132723 has offset 0).

The definition of A132723 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A132723.P1763007134650330569

`2*a(n-1)-2*a(n-2)` with `a(0)=3, a(1)=4, a(2)=4`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A132723

/-- `2*a(n-1)-2*a(n-2)` -/
def P1763007134650330569.Spec : Prop :=
  ∀ n, P1763007134650330569.a n = A132723 n

theorem P1763007134650330569.correct : P1763007134650330569.Spec := by
  intro n
  simp only [A132723]

end A132723

/-! ## A132723.P11829001467875414311

`2*(a(n-1)-a(n-2))` with `a(0)=3, a(1)=4, a(2)=4`
-/

namespace A132723.P11829001467875414311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3, 4, 4] fun n a =>
  2 * (a (n - 1) - a (n - 2))

end

end A132723.P11829001467875414311

namespace A132723

/-- `2*(a(n-1)-a(n-2))` -/
def P11829001467875414311.Spec : Prop :=
  ∀ n, P11829001467875414311.a n = A132723 n

theorem P11829001467875414311.correct : P11829001467875414311.Spec := by
  intro n
  simp only [A132723, Nat.add_sub_cancel, A132723.P11829001467875414311.a, A132723.P1763007134650330569.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A132723

/-! ## A132723.P14409893813191564689

`a(n-1)-a(n-3)-a(n-3)` with `a(0)=3, a(1)=4, a(2)=4, a(3)=0`
-/

namespace A132723.P14409893813191564689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3, 4, 4, 0] fun n a =>
  a (n - 1) - a (n - 3) - a (n - 3)

end

end A132723.P14409893813191564689

namespace A132723

/-- `a(n-1)-a(n-3)-a(n-3)` -/
def P14409893813191564689.Spec : Prop :=
  ∀ n, P14409893813191564689.a n = A132723 n

end A132723

/-! ## A132723.P11901058406369770273

`A000007(n)+2*A099087(n)`
-/

namespace A132723.P11901058406369770273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n + 2 * A099087 n

end

end A132723.P11901058406369770273

namespace A132723

/-- `A000007(n)+2*A099087(n)` -/
def P11901058406369770273.Spec : Prop :=
  ∀ n, P11901058406369770273.a n = A132723 n

end A132723

/-! ## A132723.P9150467984820726438

`A000007(n)+2*A009545(n+1)`
-/

namespace A132723.P9150467984820726438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n + 2 * A009545 (n + 1)

end

end A132723.P9150467984820726438

namespace A132723

/-- `A000007(n)+2*A009545(n+1)` -/
def P9150467984820726438.Spec : Prop :=
  ∀ n, P9150467984820726438.a n = A132723 n

end A132723

/-! ## A132723.P1369061580942845651

`A084099(2*n)-A146559(n+3)`
-/

namespace A132723.P1369061580942845651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084099 (2 * n) - A146559 (n + 3)

end

end A132723.P1369061580942845651

namespace A132723

/-- `A084099(2*n)-A146559(n+3)` -/
def P1369061580942845651.Spec : Prop :=
  ∀ n, P1369061580942845651.a n = A132723 n

end A132723

/-! ## A132723.P13473937323529310226

`(3-char[A029579(n)])*A009545(n+1)`
-/

namespace A132723.P13473937323529310226
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029579 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)) * A009545 (n + 1)

end

end A132723.P13473937323529310226

namespace A132723

/-- `(3-char[A029579(n)])*A009545(n+1)` -/
def P13473937323529310226.Spec : Prop :=
  ∀ n, P13473937323529310226.a n = A132723 n

end A132723

/-! ## A132723.P12283530226252703652

`A099087(A028310(n))+A099087(n)`
-/

namespace A132723.P12283530226252703652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099087 (A028310 n).toNat + A099087 n

end

end A132723.P12283530226252703652

namespace A132723

/-- `A099087(A028310(n))+A099087(n)` -/
def P12283530226252703652.Spec : Prop :=
  ∀ n, P12283530226252703652.a n = A132723 n

end A132723

/-! ## A132723.P15752172520645835852

`A099087(A000007(n)+n)+A099087(n)`
-/

namespace A132723.P15752172520645835852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099087 (A000007 n + (n : ℤ)).toNat + A099087 n

end

end A132723.P15752172520645835852

namespace A132723

/-- `A099087(A000007(n)+n)+A099087(n)` -/
def P15752172520645835852.Spec : Prop :=
  ∀ n, P15752172520645835852.a n = A132723 n

end A132723

/-! ## A132723.P2556925652198108886

`A099087(A004277(n)-n)+A099087(n)`
-/

namespace A132723.P2556925652198108886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099087 (A004277 n - (n : ℤ)).toNat + A099087 n

end

end A132723.P2556925652198108886

namespace A132723

/-- `A099087(A004277(n)-n)+A099087(n)` -/
def P2556925652198108886.Spec : Prop :=
  ∀ n, P2556925652198108886.a n = A132723 n

end A132723

/-! ## A132723.P17483252430240253093

`1-A019425(A019425(n))-A146559(n+3)`
-/

namespace A132723.P17483252430240253093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A019425 (A019425 n).toNat - A146559 (n + 3)

end

end A132723.P17483252430240253093

namespace A132723

/-- `1-A019425(A019425(n))-A146559(n+3)` -/
def P17483252430240253093.Spec : Prop :=
  ∀ n, P17483252430240253093.a n = A132723 n

end A132723

/-! ## A132723.P12584255040409675256

`ogf((3-2x+2x^2)/(1-2x+2x^2))`
-/

namespace A132723.P12584255040409675256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [3, -2, 2] [1, -2, 2] n

end

end A132723.P12584255040409675256

namespace A132723

/-- `ogf((3-2x+2x^2)/(1-2x+2x^2))` -/
def P12584255040409675256.Spec : Prop :=
  ∀ n, P12584255040409675256.a n = A132723 n

end A132723

/-! ## A132723.P7499709541730374524

`A009545(n+1)+2*A138569(2*n+1)`
-/

namespace A132723.P7499709541730374524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009545 (n + 1) + 2 * A138569 (2 * n + 1)

end

end A132723.P7499709541730374524

namespace A132723

/-- `A009545(n+1)+2*A138569(2*n+1)` -/
def P7499709541730374524.Spec : Prop :=
  ∀ n, P7499709541730374524.a n = A132723 n

end A132723

/-! ## A132723.P4565221684541589881

`2^(n+2)-A133212(n)`
-/

namespace A132723.P4565221684541589881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ (n + 2) : ℤ) - A133212 n

end

end A132723.P4565221684541589881

namespace A132723

/-- `2^(n+2)-A133212(n)` -/
def P4565221684541589881.Spec : Prop :=
  ∀ n, P4565221684541589881.a n = A132723 n

end A132723

/-! ## A132723.P8617497677529877316

`A008683((n+1)²)-A146559(n+3)`
-/

namespace A132723.P8617497677529877316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 ((n + 1) ^ 2) - A146559 (n + 3)

end

end A132723.P8617497677529877316

namespace A132723

/-- `A008683((n+1)²)-A146559(n+3)` -/
def P8617497677529877316.Spec : Prop :=
  ∀ n, P8617497677529877316.a n = A132723 n

end A132723

/-! ## A132723.P10470071453304355852

`A210628(2*n)-A146559(n+3)`
-/

namespace A132723.P10470071453304355852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210628 (2 * n) - A146559 (n + 3)

end

end A132723.P10470071453304355852

namespace A132723

/-- `A210628(2*n)-A146559(n+3)` -/
def P10470071453304355852.Spec : Prop :=
  ∀ n, P10470071453304355852.a n = A132723 n

end A132723

/-! ## A132723.P11703452263125381897

`A220399(A161680(n+1))-A146559(n+3)`
-/

namespace A132723.P11703452263125381897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220399 (A161680 (n + 1)).toNat - A146559 (n + 3)

end

end A132723.P11703452263125381897

namespace A132723

/-- `A220399(A161680(n+1))-A146559(n+3)` -/
def P11703452263125381897.Spec : Prop :=
  ∀ n, P11703452263125381897.a n = A132723 n

end A132723

/-! ## A132723.P1443728212022302710

`A099087(n)*A178815(n+1)`
-/

namespace A132723.P1443728212022302710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099087 n * A178815 (n + 1)

end

end A132723.P1443728212022302710

namespace A132723

/-- `A099087(n)*A178815(n+1)` -/
def P1443728212022302710.Spec : Prop :=
  ∀ n, P1443728212022302710.a n = A132723 n

end A132723

/-!
# A132724: Number of occurrences through n^2 of the longest gap between numbers relatively prime to n (A132468).

The programs for A132724, there is no canonical definition to state claims against.
-/

/-! ## A132724.P15259002512850731274

`A128708((n+1)²)-A010055(n+1)`
-/

namespace A132724.P15259002512850731274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128708 ((n + 1) ^ 2) - A010055 (n + 1)

end

end A132724.P15259002512850731274

/-! ## A132724.P8883616895278340552

`(n+1)*A128708(n+1)-A010055(n+1)`
-/

namespace A132724.P8883616895278340552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A128708 (n + 1) - A010055 (n + 1)

end

end A132724.P8883616895278340552

/-! ## A132724.P8912142976187189013

`A128708((n+1)²)+A027641(A028234(n+1))`
-/

namespace A132724.P8912142976187189013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128708 ((n + 1) ^ 2) + A027641 (A028234 (n + 1)).toNat

end

end A132724.P8912142976187189013

/-! ## A132724.P17601649263114923898

`A128708((n+1)²)-A010051(A028234(n+1)+1)`
-/

namespace A132724.P17601649263114923898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128708 ((n + 1) ^ 2) - A010051 (A028234 (n + 1) + 1).toNat

end

end A132724.P17601649263114923898

/-! ## A132724.P10813183708730796219

`(n+1)²/∏{p}[n+1, #]-A071035(2^n-1)`
-/

namespace A132724.P10813183708730796219
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ) - (A071035 (2 ^ n - 1) : ℚ)

end

end A132724.P10813183708730796219

/-!
# A132726: Triangle read by rows: T(n,k) = length of period in decimal representation of k/n, 1<=k<=n.

The programs for A132726, there is no canonical definition to state claims against.
-/

/-! ## A132726.P18152373793817280527

`A051626(A054531(n+1))`
-/

namespace A132726.P18152373793817280527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051626 (A054531 (n + 1)).toNat

end

end A132726.P18152373793817280527

/-! ## A132726.P7362033931016587564

`A051626(A114104(n+1))`
-/

namespace A132726.P7362033931016587564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051626 (A114104 (n + 1)).toNat

end

end A132726.P7362033931016587564

/-! ## A132726.P12716215653052372853

`A051626(A267864(n+1))`
-/

namespace A132726.P12716215653052372853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051626 (A267864 (n + 1)).toNat

end

end A132726.P12716215653052372853

/-! ## A132726.P2035581819645787099

`A051626(A277227(n+2))`
-/

namespace A132726.P2035581819645787099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051626 (A277227 (n + 2)).toNat

end

end A132726.P2035581819645787099

/-! ## A132726.P15958505754385479733

`∑{p}[A054531(n+1), A084680(#)]`
-/

namespace A132726.P15958505754385479733
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054531 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A084680 p

end

end A132726.P15958505754385479733

/-! ## A132726.P8002344933335169032

`∑{p}[A267864(n+1), A084680(#)]`
-/

namespace A132726.P8002344933335169032
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267864 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A084680 p

end

end A132726.P8002344933335169032

/-! ## A132726.P5997417765606873086

`A051626(gcd(A057944(n), A092392(n)))`
-/

namespace A132726.P5997417765606873086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051626 (Int.gcd (A057944 n) (A092392 n))

end

end A132726.P5997417765606873086

/-! ## A132726.P9390609542986603753

`A051626(A002024(n+1)/A050873(n+1))`
-/

namespace A132726.P9390609542986603753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051626 (SequenceMachineLib.roundAway ((A002024 (n + 1) : ℚ) / (A050873 (n + 1) : ℚ))).toNat

end

end A132726.P9390609542986603753

/-! ## A132726.P8895588286156590899

`A051626(A051173(n+1)/A002260(n+1))`
-/

namespace A132726.P8895588286156590899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051626 (SequenceMachineLib.roundAway ((A051173 (n + 1) : ℚ) / (A002260 (n + 1) : ℚ))).toNat

end

end A132726.P8895588286156590899

/-!
# A132727: a(n) = 3 * 2^(n-1) * a(n-1) with a(0) = 1.

The programs for A132727, the canonical program `A132727.P920282792962843769` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A132727 has offset 0).

The definition of A132727 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A132727.P920282792962843769

`3^n*2^C(n, 2)`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A132727

/-- `3^n*2^C(n, 2)` -/
def P920282792962843769.Spec : Prop :=
  ∀ n, (P920282792962843769.a n : ℤ) = A132727 n

theorem P920282792962843769.correct : P920282792962843769.Spec := by
  intro n
  simp only [A132727]

end A132727

/-! ## A132727.P13030502865097041527

`3*2^(n-1)*a(n-1)` with `a(0)=1`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A132727.P13030502865097041527
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  3 * (2 : ℚ) ^ ((n : ℤ) - 1 : ℤ) * a (n - 1)

end

end A132727.P13030502865097041527

namespace A132727

/-- `3*2^(n-1)*a(n-1)` -/
def P13030502865097041527.Spec : Prop :=
  ∀ n, P13030502865097041527.a n = (A132727 n : ℚ)

end A132727

/-! ## A132727.P187934791765595460

`∏[2*a(n-1)]` with `a(0)=1, a(1)=3`
-/

namespace A132727.P187934791765595460
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 3] fun n f1 =>
  2 * f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A132727.P187934791765595460

namespace A132727

/-- `∏[2*a(n-1)]` -/
def P187934791765595460.Spec : Prop :=
  ∀ n, (P187934791765595460.a n : ℤ) = A132727 n

end A132727

/-! ## A132727.P9168530257726446949

`∏[floor(3*2^(n-1))]`
-/

namespace A132727.P9168530257726446949
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊3 * (2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A132727.P9168530257726446949

namespace A132727

/-- `∏[floor(3*2^(n-1))]` -/
def P9168530257726446949.Spec : Prop :=
  ∀ n, P9168530257726446949.a n = A132727 n

end A132727

/-! ## A132727.P2011969899653676763

`lcm(3^n, ∏[ceil(2^(n-1))])`
-/

namespace A132727.P2011969899653676763
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (3 ^ n : ℤ) (∏ j ∈ Finset.range (n + 1), f1 j)

end

end A132727.P2011969899653676763

namespace A132727

/-- `lcm(3^n, ∏[ceil(2^(n-1))])` -/
def P2011969899653676763.Spec : Prop :=
  ∀ n, (P2011969899653676763.a n : ℤ) = A132727 n

end A132727

/-!
# A132728: Triangle T(n, k) = 4 - 3*(-1)^k, read by rows.

The programs for A132728, the canonical program `A132728.P7946738564303071214` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A132728 has offset 0).

The definition of A132728 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A132728.P9270575194897738898

`C(7, (n-C(round(sqrt(2*(n+1))), 2))%2)`
-/

namespace A132728.P9270575194897738898
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 7 (Int.tmod ((n : ℤ) - (Nat.choose (SequenceMachineLib.roundAway (Real.sqrt (2 * (n + 1) : ℝ))).toNat 2 : ℤ)) 2).toNat

end

end A132728.P9270575194897738898

namespace A132728

/-- `C(7, (n-C(round(sqrt(2*(n+1))), 2))%2)` -/
def P9270575194897738898.Spec : Prop :=
  ∀ n, (P9270575194897738898.a n : ℤ) = A132728 n

end A132728

/-! ## A132728.P7946738564303071214

`6*A060510(n)+1`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A132728

/-- `6*A060510(n)+1` -/
def P7946738564303071214.Spec : Prop :=
  ∀ n, P7946738564303071214.a n = A132728 n

theorem P7946738564303071214.correct : P7946738564303071214.Spec := by
  intro n
  simp only [A132728]

end A132728

/-! ## A132728.P16641685642516782884

`7^and(1, A002262(n))`
-/

namespace A132728.P16641685642516782884
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (7 : ℚ) ^ (Int.land 1 (A002262 n) : ℤ)

end

end A132728.P16641685642516782884

namespace A132728

/-- `7^and(1, A002262(n))` -/
def P16641685642516782884.Spec : Prop :=
  ∀ n, P16641685642516782884.a n = (A132728 n : ℚ)

end A132728

/-! ## A132728.P9123160790704948929

`A010688(A002262(n))`
-/

namespace A132728.P9123160790704948929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010688 (A002262 n).toNat

end

end A132728.P9123160790704948929

namespace A132728

/-- `A010688(A002262(n))` -/
def P9123160790704948929.Spec : Prop :=
  ∀ n, P9123160790704948929.a n = A132728 n

end A132728

/-! ## A132728.P9998605927142351300

`A010688(A060511(n))`
-/

namespace A132728.P9998605927142351300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010688 (A060511 n).toNat

end

end A132728.P9998605927142351300

namespace A132728

/-- `A010688(A060511(n))` -/
def P9998605927142351300.Spec : Prop :=
  ∀ n, P9998605927142351300.a n = A132728 n

end A132728

/-! ## A132728.P18048336975823503276

`A010688(A294317(n))`
-/

namespace A132728.P18048336975823503276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010688 (A294317 n).toNat

end

end A132728.P18048336975823503276

namespace A132728

/-- `A010688(A294317(n))` -/
def P18048336975823503276.Spec : Prop :=
  ∀ n, P18048336975823503276.a n = A132728 n

end A132728

/-! ## A132728.P10804100683960750341

`A176415(A134199(n))`
-/

namespace A132728.P10804100683960750341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176415 (A134199 n).toNat

end

end A132728.P10804100683960750341

namespace A132728

/-- `A176415(A134199(n))` -/
def P10804100683960750341.Spec : Prop :=
  ∀ n, P10804100683960750341.a n = A132728 n

end A132728

/-! ## A132728.P1664909394179969365

`A267317(A131925(n))`
-/

namespace A132728.P1664909394179969365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267317 (A131925 n).toNat

end

end A132728.P1664909394179969365

namespace A132728

/-- `A267317(A131925(n))` -/
def P1664909394179969365.Spec : Prop :=
  ∀ n, P1664909394179969365.a n = A132728 n

end A132728

/-! ## A132728.P7401531589920169508

`A176415(A002260(n+1))`
-/

namespace A132728.P7401531589920169508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176415 (A002260 (n + 1)).toNat

end

end A132728.P7401531589920169508

namespace A132728

/-- `A176415(A002260(n+1))` -/
def P7401531589920169508.Spec : Prop :=
  ∀ n, P7401531589920169508.a n = A132728 n

end A132728

/-! ## A132728.P14895400929422314627

`A010688(2*n-A061885(n))`
-/

namespace A132728.P14895400929422314627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010688 ((2 * n : ℤ) - A061885 n).toNat

end

end A132728.P14895400929422314627

namespace A132728

/-- `A010688(2*n-A061885(n))` -/
def P14895400929422314627.Spec : Prop :=
  ∀ n, P14895400929422314627.a n = A132728 n

end A132728

/-! ## A132728.P16386305638324011342

`A010688(n-(A061885(n)-n))`
-/

namespace A132728.P16386305638324011342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010688 ((n : ℤ) - (A061885 n - (n : ℤ))).toNat

end

end A132728.P16386305638324011342

namespace A132728

/-- `A010688(n-(A061885(n)-n))` -/
def P16386305638324011342.Spec : Prop :=
  ∀ n, P16386305638324011342.a n = A132728 n

end A132728

/-! ## A132728.P10154854829804267723

`gcd(7, A131575(A002260(n+1)+2))`
-/

namespace A132728.P10154854829804267723
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 7 (A131575 (A002260 (n + 1) + 2).toNat)

end

end A132728.P10154854829804267723

namespace A132728

/-- `gcd(7, A131575(A002260(n+1)+2))` -/
def P10154854829804267723.Spec : Prop :=
  ∀ n, (P10154854829804267723.a n : ℤ) = A132728 n

end A132728

/-! ## A132728.P2387320783345048703

`2*C(3, A010690(A002262(n)+1))+1`
-/

namespace A132728.P2387320783345048703
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * Nat.choose 3 (A010690 (A002262 n + 1).toNat).toNat + 1

end

end A132728.P2387320783345048703

namespace A132728

/-- `2*C(3, A010690(A002262(n)+1))+1` -/
def P2387320783345048703.Spec : Prop :=
  ∀ n, (P2387320783345048703.a n : ℤ) = A132728 n

end A132728

/-! ## A132728.P11794954700638461462

`A010688(A131818(n+2))`
-/

namespace A132728.P11794954700638461462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010688 (A131818 (n + 2)).toNat

end

end A132728.P11794954700638461462

namespace A132728

/-- `A010688(A131818(n+2))` -/
def P11794954700638461462.Spec : Prop :=
  ∀ n, P11794954700638461462.a n = A132728 n

end A132728

/-! ## A132728.P5498826712047837816

`A176415(comp[2*n²])`
-/

namespace A132728.P5498826712047837816
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n ^ 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176415 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A132728.P5498826712047837816

namespace A132728

/-- `A176415(comp[2*n²])` -/
def P5498826712047837816.Spec : Prop :=
  ∀ n, P5498826712047837816.a n = A132728 n

end A132728

/-! ## A132728.P7470994256206472596

`A001903(A143844(n))`
-/

namespace A132728.P7470994256206472596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001903 (A143844 n).toNat

end

end A132728.P7470994256206472596

namespace A132728

/-- `A001903(A143844(n))` -/
def P7470994256206472596.Spec : Prop :=
  ∀ n, P7470994256206472596.a n = A132728 n

end A132728

/-! ## A132728.P6134184746255350542

`A010688(A163898(n))`
-/

namespace A132728.P6134184746255350542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010688 (A163898 n).toNat

end

end A132728.P6134184746255350542

namespace A132728

/-- `A010688(A163898(n))` -/
def P6134184746255350542.Spec : Prop :=
  ∀ n, P6134184746255350542.a n = A132728 n

end A132728

/-! ## A132728.P5446232400460707250

`A131806(A002260(n+1)²)+1`
-/

namespace A132728.P5446232400460707250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131806 (A002260 (n + 1) ^ 2).toNat + 1

end

end A132728.P5446232400460707250

namespace A132728

/-- `A131806(A002260(n+1)²)+1` -/
def P5446232400460707250.Spec : Prop :=
  ∀ n, P5446232400460707250.a n = A132728 n

end A132728

/-! ## A132728.P14985254113630054989

`A112132(A105020(n))`
-/

namespace A132728.P14985254113630054989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112132 (A105020 n).toNat

end

end A132728.P14985254113630054989

namespace A132728

/-- `A112132(A105020(n))` -/
def P14985254113630054989.Spec : Prop :=
  ∀ n, P14985254113630054989.a n = A132728 n

end A132728

/-! ## A132728.P15475133244680074166

`A010688(A061885(n))`
-/

namespace A132728.P15475133244680074166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010688 (A061885 n).toNat

end

end A132728.P15475133244680074166

namespace A132728

/-- `A010688(A061885(n))` -/
def P15475133244680074166.Spec : Prop :=
  ∀ n, P15475133244680074166.a n = A132728 n

end A132728

/-!
# A132729: Triangle T(n, k) = 2*binomial(n, k) - 3 with T(n, 0) = T(n, n) = 1, read by rows.

The programs for A132729, the canonical program `A132729.P10036753158710648265` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A132729 has offset 0).

The definition of A132729 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A132729.P5950396273133634104

`abs(2-A109128(n))`
-/

namespace A132729.P5950396273133634104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |2 - A109128 n|

end

end A132729.P5950396273133634104

namespace A132729

/-- `abs(2-A109128(n))` -/
def P5950396273133634104.Spec : Prop :=
  ∀ n, P5950396273133634104.a n = A132729 n

end A132729

/-! ## A132729.P8712822238524652239

`abs(3-A028326(n))`
-/

namespace A132729.P8712822238524652239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |3 - A028326 n|

end

end A132729.P8712822238524652239

namespace A132729

/-- `abs(3-A028326(n))` -/
def P8712822238524652239.Spec : Prop :=
  ∀ n, P8712822238524652239.a n = A132729 n

end A132729

/-! ## A132729.P13163594132115001152

`2*A132044(n)-1`
-/

namespace A132729.P13163594132115001152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A132044 n - 1

end

end A132729.P13163594132115001152

namespace A132729

/-- `2*A132044(n)-1` -/
def P13163594132115001152.Spec : Prop :=
  ∀ n, P13163594132115001152.a n = A132729 n

end A132729

/-! ## A132729.P7787809899254111609

`or(1, A132731(n)-1)`
-/

namespace A132729.P7787809899254111609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A132731 n - 1)

end

end A132729.P7787809899254111609

namespace A132729

/-- `or(1, A132731(n)-1)` -/
def P7787809899254111609.Spec : Prop :=
  ∀ n, P7787809899254111609.a n = A132729 n

end A132729

/-! ## A132729.P9214079796964423563

`abs(2*A007318(n)-3)`
-/

namespace A132729.P9214079796964423563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |2 * A007318 n - 3|

end

end A132729.P9214079796964423563

namespace A132729

/-- `abs(2*A007318(n)-3)` -/
def P9214079796964423563.Spec : Prop :=
  ∀ n, P9214079796964423563.a n = A132729 n

end A132729

/-! ## A132729.P3705664486525137344

`abs(2*(ceil(A134059(n)/3)-1)-1)`
-/

namespace A132729.P3705664486525137344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |2 * (⌈(A134059 n : ℚ) / 3⌉ - 1) - 1|

end

end A132729.P3705664486525137344

namespace A132729

/-- `abs(2*(ceil(A134059(n)/3)-1)-1)` -/
def P3705664486525137344.Spec : Prop :=
  ∀ n, P3705664486525137344.a n = A132729 n

end A132729

/-! ## A132729.P4948664519452078045

`A132823(n)+A014473(n)`
-/

namespace A132729.P4948664519452078045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132823 n + A014473 n

end

end A132729.P4948664519452078045

namespace A132729

/-- `A132823(n)+A014473(n)` -/
def P4948664519452078045.Spec : Prop :=
  ∀ n, P4948664519452078045.a n = A132729 n

end A132729

/-! ## A132729.P6081798231653472297

`A131061(n)%A028326(n)`
-/

namespace A132729.P6081798231653472297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A131061 n) (A028326 n)

end

end A132729.P6081798231653472297

namespace A132729

/-- `A131061(n)%A028326(n)` -/
def P6081798231653472297.Spec : Prop :=
  ∀ n, P6081798231653472297.a n = A132729 n

end A132729

/-! ## A132729.P3986553536351711087

`A141596(n)%A028326(n)`
-/

namespace A132729.P3986553536351711087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A141596 n) (A028326 n)

end

end A132729.P3986553536351711087

namespace A132729

/-- `A141596(n)%A028326(n)` -/
def P3986553536351711087.Spec : Prop :=
  ∀ n, P3986553536351711087.a n = A132729 n

end A132729

/-! ## A132729.P5454043358170428862

`A007318(n)+A132823(n)-1`
-/

namespace A132729.P5454043358170428862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n + (A132823 n - 1)

end

end A132729.P5454043358170428862

namespace A132729

/-- `A007318(n)+A132823(n)-1` -/
def P5454043358170428862.Spec : Prop :=
  ∀ n, P5454043358170428862.a n = A132729 n

end A132729

/-! ## A132729.P419290330560021199

`A103451(n)+A132731(n)-1`
-/

namespace A132729.P419290330560021199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103451 n + (A132731 n - 1)

end

end A132729.P419290330560021199

namespace A132729

/-- `A103451(n)+A132731(n)-1` -/
def P419290330560021199.Spec : Prop :=
  ∀ n, P419290330560021199.a n = A132729 n

end A132729

/-! ## A132729.P10664132520095185716

`A132731(n)+1-A154325(n)`
-/

namespace A132729.P10664132520095185716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132731 n + (1 - A154325 n)

end

end A132729.P10664132520095185716

namespace A132729

/-- `A132731(n)+1-A154325(n)` -/
def P10664132520095185716.Spec : Prop :=
  ∀ n, P10664132520095185716.a n = A132729 n

end A132729

/-! ## A132729.P8868627276013492771

`2*A109128(n)-A132737(n)`
-/

namespace A132729.P8868627276013492771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A109128 n - A132737 n

end

end A132729.P8868627276013492771

namespace A132729

/-- `2*A109128(n)-A132737(n)` -/
def P8868627276013492771.Spec : Prop :=
  ∀ n, P8868627276013492771.a n = A132729 n

end A132729

/-! ## A132729.P1880527183750673030

`2*A132731(n)-A109128(n)`
-/

namespace A132729.P1880527183750673030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A132731 n - A109128 n

end

end A132729.P1880527183750673030

namespace A132729

/-- `2*A132731(n)-A109128(n)` -/
def P1880527183750673030.Spec : Prop :=
  ∀ n, P1880527183750673030.a n = A132729 n

end A132729

/-! ## A132729.P16488468512848543023

`abs(1-abs(A124927(n)%A124928(n)-2))`
-/

namespace A132729.P16488468512848543023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(1 - |Int.tmod (A124927 n) (A124928 n) - 2|)|

end

end A132729.P16488468512848543023

namespace A132729

/-- `abs(1-abs(A124927(n)%A124928(n)-2))` -/
def P16488468512848543023.Spec : Prop :=
  ∀ n, P16488468512848543023.a n = A132729 n

end A132729

/-! ## A132729.P10036753158710648265

`abs(2*(C(A003056(n), A025581(n))-1)-1)`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A132729

/-- `abs(2*(C(A003056(n), A025581(n))-1)-1)` -/
def P10036753158710648265.Spec : Prop :=
  ∀ n, P10036753158710648265.a n = A132729 n

theorem P10036753158710648265.correct : P10036753158710648265.Spec := by
  intro n
  simp only [A132729]

end A132729

/-! ## A132729.P8287245431781808890

`A132044(n)+A132731(n)-A007318(n)`
-/

namespace A132729.P8287245431781808890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132044 n + (A132731 n - A007318 n)

end

end A132729.P8287245431781808890

namespace A132729

/-- `A132044(n)+A132731(n)-A007318(n)` -/
def P8287245431781808890.Spec : Prop :=
  ∀ n, P8287245431781808890.a n = A132729 n

end A132729

/-! ## A132729.P11834953896980741960

`A132044(n)+A132823(n)-A103451(n)`
-/

namespace A132729.P11834953896980741960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132044 n + (A132823 n - A103451 n)

end

end A132729.P11834953896980741960

namespace A132729

/-- `A132044(n)+A132823(n)-A103451(n)` -/
def P11834953896980741960.Spec : Prop :=
  ∀ n, P11834953896980741960.a n = A132729 n

end A132729

/-! ## A132729.P12939896397298054857

`A109128(n)+A132731(n)-A132046(n)`
-/

namespace A132729.P12939896397298054857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109128 n + (A132731 n - A132046 n)

end

end A132729.P12939896397298054857

namespace A132729

/-- `A109128(n)+A132731(n)-A132046(n)` -/
def P12939896397298054857.Spec : Prop :=
  ∀ n, P12939896397298054857.a n = A132729 n

end A132729

/-! ## A132729.P4648906599912649938

`A132046(n)+A132731(n)-A132737(n)`
-/

namespace A132729.P4648906599912649938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132046 n + (A132731 n - A132737 n)

end

end A132729.P4648906599912649938

namespace A132729

/-- `A132046(n)+A132731(n)-A132737(n)` -/
def P4648906599912649938.Spec : Prop :=
  ∀ n, P4648906599912649938.a n = A132729 n

end A132729

/-!
# A132730: Row sums of triangle A132729.

The programs for A132730, the canonical program `A132730.P15149056315726083756` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A132730 has offset 0).

The definition of A132730 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 332 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A132730.P15149056315726083756

`∑[lcm(4, 2^n)-3]`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A132730

/-- `∑[lcm(4, 2^n)-3]` -/
def P15149056315726083756.Spec : Prop :=
  ∀ n, P15149056315726083756.a n = A132730 n

theorem P15149056315726083756.correct : P15149056315726083756.Spec := by
  intro n
  simp only [A132730]

end A132730

/-! ## A132730.P15772645819278035185

`∑[-or(3, -2^n)]`
-/

namespace A132730.P15772645819278035185
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -Int.lor 3 (-(2 ^ n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A132730.P15772645819278035185

namespace A132730

/-- `∑[-or(3, -2^n)]` -/
def P15772645819278035185.Spec : Prop :=
  ∀ n, P15772645819278035185.a n = A132730 n

end A132730

/-! ## A132730.P11390534871542595171

`∑[2^n-3%(2^n)]`
-/

namespace A132730.P11390534871542595171
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) - ((3 % 2 ^ n : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A132730.P11390534871542595171

namespace A132730

/-- `∑[2^n-3%(2^n)]` -/
def P11390534871542595171.Spec : Prop :=
  ∀ n, P11390534871542595171.a n = A132730 n

end A132730

/-! ## A132730.P18043239934636695959

`∑[ogf((1-2x+4x^3)/(1-3x+2x^2))]`
-/

namespace A132730.P18043239934636695959
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -2, 0, 4] [1, -3, 2] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A132730.P18043239934636695959

namespace A132730

/-- `∑[ogf((1-2x+4x^3)/(1-3x+2x^2))]` -/
def P18043239934636695959.Spec : Prop :=
  ∀ n, P18043239934636695959.a n = A132730 n

end A132730

/-! ## A132730.P1767599706163332096

`ogf((1-2x+4x^3)/(1-4x+5x^2-2x^3))`
-/

namespace A132730.P1767599706163332096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -2, 0, 4] [1, -4, 5, -2] n

end

end A132730.P1767599706163332096

namespace A132730

/-- `ogf((1-2x+4x^3)/(1-4x+5x^2-2x^3))` -/
def P1767599706163332096.Spec : Prop :=
  ∀ n, P1767599706163332096.a n = A132730 n

end A132730

/-! ## A132730.P3064379471188033239

`∑[2*a(n-1)+3]` with `a(0)=1, a(1)=1, a(2)=1`
-/

namespace A132730.P3064379471188033239
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 1] fun n f1 =>
  2 * f1 (n - 1) + 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A132730.P3064379471188033239

namespace A132730

/-- `∑[2*a(n-1)+3]` -/
def P3064379471188033239.Spec : Prop :=
  ∀ n, (P3064379471188033239.a n : ℤ) = A132730 n

end A132730

/-! ## A132730.P13925621968048222975

`∑[∑[2*a(n-1)]]` with `a(0)=1, a(1)=0, a(2)=0, a(3)=4`
-/

namespace A132730.P13925621968048222975
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [1, 0, 0, 4] fun n f2 =>
  2 * f2 (n - 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A132730.P13925621968048222975

namespace A132730

/-- `∑[∑[2*a(n-1)]]` -/
def P13925621968048222975.Spec : Prop :=
  ∀ n, (P13925621968048222975.a n : ℤ) = A132730 n

end A132730

/-! ## A132730.P582999337414116956

`2^n+a(n-1)-3` with `a(0)=1, a(1)=2`
-/

namespace A132730.P582999337414116956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  (2 ^ n : ℤ) + (a (n - 1) - 3)

end

end A132730.P582999337414116956

namespace A132730

/-- `2^n+a(n-1)-3` -/
def P582999337414116956.Spec : Prop :=
  ∀ n, P582999337414116956.a n = A132730 n

end A132730

/-! ## A132730.P1104444116118559513

`2^n-(3-a(n-1))` with `a(0)=1, a(1)=2`
-/

namespace A132730.P1104444116118559513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  (2 ^ n : ℤ) - (3 - a (n - 1))

end

end A132730.P1104444116118559513

namespace A132730

/-- `2^n-(3-a(n-1))` -/
def P1104444116118559513.Spec : Prop :=
  ∀ n, P1104444116118559513.a n = A132730 n

end A132730

/-! ## A132730.P8570171601445058221

`2*(a(n-1)+n)+n-7` with `a(0)=1, a(1)=2`
-/

namespace A132730.P8570171601445058221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  2 * (a (n - 1) + (n : ℤ)) + (n : ℤ) - 7

end

end A132730.P8570171601445058221

namespace A132730

/-- `2*(a(n-1)+n)+n-7` -/
def P8570171601445058221.Spec : Prop :=
  ∀ n, P8570171601445058221.a n = A132730 n

end A132730

/-! ## A132730.P7232183166213852469

`2^(n+1)-abs(2*n+n-1)`
-/

namespace A132730.P7232183166213852469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ (n + 1) : ℤ) - |(2 * n : ℤ) + ((n : ℤ) - 1)|

end

end A132730.P7232183166213852469

namespace A132730

/-- `2^(n+1)-abs(2*n+n-1)` -/
def P7232183166213852469.Spec : Prop :=
  ∀ n, P7232183166213852469.a n = A132730 n

end A132730

/-! ## A132730.P5323572687045765944

`∑[a(n-1)+a(n-1)+3]` with `a(0)=1, a(1)=1, a(2)=1`
-/

namespace A132730.P5323572687045765944
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 1] fun n f1 =>
  f1 (n - 1) + (f1 (n - 1) + 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A132730.P5323572687045765944

namespace A132730

/-- `∑[a(n-1)+a(n-1)+3]` -/
def P5323572687045765944.Spec : Prop :=
  ∀ n, (P5323572687045765944.a n : ℤ) = A132730 n

end A132730

/-! ## A132730.P2866595522593992542

`∑[abs(2-A255047(n))]`
-/

namespace A132730.P2866595522593992542
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |2 - A255047 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A132730.P2866595522593992542

namespace A132730

/-- `∑[abs(2-A255047(n))]` -/
def P2866595522593992542.Spec : Prop :=
  ∀ n, P2866595522593992542.a n = A132730 n

end A132730

/-! ## A132730.P11057385383485890226

`∑[A088041(n+2)-2]`
-/

namespace A132730.P11057385383485890226
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088041 (n + 2) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A132730.P11057385383485890226

namespace A132730

/-- `∑[A088041(n+2)-2]` -/
def P11057385383485890226.Spec : Prop :=
  ∀ n, P11057385383485890226.a n = A132730 n

end A132730

/-! ## A132730.P17163937874855614582

`record[A060547(n+2)-n]`
-/

namespace A132730.P17163937874855614582
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060547 (n + 2) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A132730.P17163937874855614582

namespace A132730

/-- `record[A060547(n+2)-n]` -/
def P17163937874855614582.Spec : Prop :=
  ∀ n, P17163937874855614582.a n = A132730 n

end A132730

/-! ## A132730.P4786439130772993580

`and(1-3*n, A000225(n+1))`
-/

namespace A132730.P4786439130772993580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (1 - (3 * n : ℤ)) (A000225 (n + 1))

end

end A132730.P4786439130772993580

namespace A132730

/-- `and(1-3*n, A000225(n+1))` -/
def P4786439130772993580.Spec : Prop :=
  ∀ n, P4786439130772993580.a n = A132730 n

end A132730

/-! ## A132730.P2757976841909864506

`and(2-A016777(n), ∑[A000079(n)])`
-/

namespace A132730.P2757976841909864506
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (2 - A016777 n) (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A132730.P2757976841909864506

namespace A132730

/-- `and(2-A016777(n), ∑[A000079(n)])` -/
def P2757976841909864506.Spec : Prop :=
  ∀ n, P2757976841909864506.a n = A132730 n

end A132730

/-!
# A132731: Triangle T(n,k) = 2 * binomial(n,k) - 2 with T(n,0) = T(n,n) = 1, read by rows.

The programs for A132731, the canonical program `A132731.P8579366909004604972` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A132731 has offset 0).

The definition of A132731 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A132731.P1877173509035331040

`ceil(A132733(n)/2)`
-/

namespace A132731.P1877173509035331040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A132733 n : ℚ) / 2⌉

end

end A132731.P1877173509035331040

namespace A132731

/-- `ceil(A132733(n)/2)` -/
def P1877173509035331040.Spec : Prop :=
  ∀ n, P1877173509035331040.a n = A132731 n

end A132731

/-! ## A132731.P8579366909004604972

`xor(1, A132046(n)-1)`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A132731

/-- `xor(1, A132046(n)-1)` -/
def P8579366909004604972.Spec : Prop :=
  ∀ n, P8579366909004604972.a n = A132731 n

theorem P8579366909004604972.correct : P8579366909004604972.Spec := by
  intro n
  simp only [A132731]

end A132731

/-! ## A132731.P12044904865541363106

`floor(sqrt((2*A014473(n))²+2))`
-/

namespace A132731.P12044904865541363106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt ((2 * A014473 n) ^ 2 + 2)

end

end A132731.P12044904865541363106

namespace A132731

/-- `floor(sqrt((2*A014473(n))²+2))` -/
def P12044904865541363106.Spec : Prop :=
  ∀ n, P12044904865541363106.a n = A132731 n

end A132731

/-! ## A132731.P13932863680535078714

`(abs(4*A007318(n)-5)+1)/2`
-/

namespace A132731.P13932863680535078714
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (|4 * A007318 n - 5| + 1 : ℚ) / 2

end

end A132731.P13932863680535078714

namespace A132731

/-- `(abs(4*A007318(n)-5)+1)/2` -/
def P13932863680535078714.Spec : Prop :=
  ∀ n, P13932863680535078714.a n = (A132731 n : ℚ)

end A132731

/-! ## A132731.P15270788263097869767

`A132044(n)+A014473(n)`
-/

namespace A132731.P15270788263097869767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132044 n + A014473 n

end

end A132731.P15270788263097869767

namespace A132731

/-- `A132044(n)+A014473(n)` -/
def P15270788263097869767.Spec : Prop :=
  ∀ n, P15270788263097869767.a n = A132731 n

end A132731

/-! ## A132731.P16999852158411580223

`A028326(n)-A154325(n)`
-/

namespace A132731.P16999852158411580223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028326 n - A154325 n

end

end A132731.P16999852158411580223

namespace A132731

/-- `A028326(n)-A154325(n)` -/
def P16999852158411580223.Spec : Prop :=
  ∀ n, P16999852158411580223.a n = A132731 n

end A132731

/-! ## A132731.P12953003033859614402

`A132044(n)*A154325(n)`
-/

namespace A132731.P12953003033859614402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132044 n * A154325 n

end

end A132731.P12953003033859614402

namespace A132731

/-- `A132044(n)*A154325(n)` -/
def P12953003033859614402.Spec : Prop :=
  ∀ n, P12953003033859614402.a n = A132731 n

end A132731

/-! ## A132731.P7823672925303143615

`A007318(n)+A132044(n)-1`
-/

namespace A132731.P7823672925303143615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n + (A132044 n - 1)

end

end A132731.P7823672925303143615

namespace A132731

/-- `A007318(n)+A132044(n)-1` -/
def P7823672925303143615.Spec : Prop :=
  ∀ n, P7823672925303143615.a n = A132731 n

end A132731

/-! ## A132731.P13433256147245314030

`A132729(n)+1-A103451(n)`
-/

namespace A132731.P13433256147245314030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132729 n + (1 - A103451 n)

end

end A132731.P13433256147245314030

namespace A132731

/-- `A132729(n)+1-A103451(n)` -/
def P13433256147245314030.Spec : Prop :=
  ∀ n, P13433256147245314030.a n = A132731 n

end A132731

/-! ## A132731.P17799273196569679890

`A132735(n)+A132823(n)-1`
-/

namespace A132731.P17799273196569679890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132735 n + (A132823 n - 1)

end

end A132731.P17799273196569679890

namespace A132731

/-- `A132735(n)+A132823(n)-1` -/
def P17799273196569679890.Spec : Prop :=
  ∀ n, P17799273196569679890.a n = A132731 n

end A132731

/-! ## A132731.P4178216531767663268

`A028326(n)+A103451(n)-2`
-/

namespace A132731.P4178216531767663268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028326 n + (A103451 n - 2)

end

end A132731.P4178216531767663268

namespace A132731

/-- `A028326(n)+A103451(n)-2` -/
def P4178216531767663268.Spec : Prop :=
  ∀ n, P4178216531767663268.a n = A132731 n

end A132731

/-! ## A132731.P6280529546927268814

`A103451(n)+2*A014473(n)`
-/

namespace A132731.P6280529546927268814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103451 n + 2 * A014473 n

end

end A132731.P6280529546927268814

namespace A132731

/-- `A103451(n)+2*A014473(n)` -/
def P6280529546927268814.Spec : Prop :=
  ∀ n, P6280529546927268814.a n = A132731 n

end A132731

/-! ## A132731.P17844830274104642242

`2*A007318(n)-A154325(n)`
-/

namespace A132731.P17844830274104642242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A007318 n - A154325 n

end

end A132731.P17844830274104642242

namespace A132731

/-- `2*A007318(n)-A154325(n)` -/
def P17844830274104642242.Spec : Prop :=
  ∀ n, P17844830274104642242.a n = A132731 n

end A132731

/-! ## A132731.P13340599030673505305

`(2-A103451(n))*A132044(n)`
-/

namespace A132731.P13340599030673505305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - A103451 n) * A132044 n

end

end A132731.P13340599030673505305

namespace A132731

/-- `(2-A103451(n))*A132044(n)` -/
def P13340599030673505305.Spec : Prop :=
  ∀ n, P13340599030673505305.a n = A132731 n

end A132731

/-! ## A132731.P11511648584504427349

`2*A109128(n)-A132046(n)`
-/

namespace A132731.P11511648584504427349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A109128 n - A132046 n

end

end A132731.P11511648584504427349

namespace A132731

/-- `2*A109128(n)-A132046(n)` -/
def P11511648584504427349.Spec : Prop :=
  ∀ n, P11511648584504427349.a n = A132731 n

end A132731

/-! ## A132731.P5308146978613492225

`(A132729(n)+A109128(n))/2`
-/

namespace A132731.P5308146978613492225
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A132729 n + A109128 n : ℚ) / 2

end

end A132731.P5308146978613492225

namespace A132731

/-- `(A132729(n)+A109128(n))/2` -/
def P5308146978613492225.Spec : Prop :=
  ∀ n, P5308146978613492225.a n = (A132731 n : ℚ)

end A132731

/-! ## A132731.P12783407610371817131

`gcd(2-A028326(n), A103452(n))`
-/

namespace A132731.P12783407610371817131
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (2 - A028326 n) (A103452 n)

end

end A132731.P12783407610371817131

namespace A132731

/-- `gcd(2-A028326(n), A103452(n))` -/
def P12783407610371817131.Spec : Prop :=
  ∀ n, (P12783407610371817131.a n : ℤ) = A132731 n

end A132731

/-! ## A132731.P8057589034264441714

`(2-A103452(n)²)*A132044(n)`
-/

namespace A132731.P8057589034264441714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - A103452 n ^ 2) * A132044 n

end

end A132731.P8057589034264441714

namespace A132731

/-- `(2-A103452(n)²)*A132044(n)` -/
def P8057589034264441714.Spec : Prop :=
  ∀ n, P8057589034264441714.a n = A132731 n

end A132731

/-! ## A132731.P13638653449875759834

`A014473(n)+(A132729(n)+1)/2`
-/

namespace A132731.P13638653449875759834
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A014473 n : ℚ) + (A132729 n + 1 : ℚ) / 2

end

end A132731.P13638653449875759834

namespace A132731

/-- `A014473(n)+(A132729(n)+1)/2` -/
def P13638653449875759834.Spec : Prop :=
  ∀ n, P13638653449875759834.a n = (A132731 n : ℚ)

end A132731

/-! ## A132731.P4733849769719126000

`A014473(n)+floor(sqrt(A007318(n)²+4))-1`
-/

namespace A132731.P4733849769719126000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014473 n + (Int.sqrt (A007318 n ^ 2 + 4) - 1)

end

end A132731.P4733849769719126000

namespace A132731

/-- `A014473(n)+floor(sqrt(A007318(n)²+4))-1` -/
def P4733849769719126000.Spec : Prop :=
  ∀ n, P4733849769719126000.a n = A132731 n

end A132731

/-!
# A132732: Row sums of triangle A132731.

The programs for A132732, the canonical program `A132732.P664999608340934973` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A132732 has offset 0).

The definition of A132732 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 332 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A132732.P7545297657293412558

`∑[floor(2^n-atan(n))]`
-/

namespace A132732.P7545297657293412558
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(2 ^ n : ℝ) - Real.arctan (n : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A132732.P7545297657293412558

namespace A132732

/-- `∑[floor(2^n-atan(n))]` -/
def P7545297657293412558.Spec : Prop :=
  ∀ n, P7545297657293412558.a n = A132732 n

end A132732

/-! ## A132732.P5531021838954109150

`∑[2^n-ceil(atan(n))]`
-/

namespace A132732.P5531021838954109150
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) - ⌈Real.arctan (n : ℝ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A132732.P5531021838954109150

namespace A132732

/-- `∑[2^n-ceil(atan(n))]` -/
def P5531021838954109150.Spec : Prop :=
  ∀ n, P5531021838954109150.a n = A132732 n

end A132732

/-! ## A132732.P8812356808456127916

`∑[ogf((1-2x+x^2+2x^3)/(1-3x+2x^2))]`
-/

namespace A132732.P8812356808456127916
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -2, 1, 2] [1, -3, 2] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A132732.P8812356808456127916

namespace A132732

/-- `∑[ogf((1-2x+x^2+2x^3)/(1-3x+2x^2))]` -/
def P8812356808456127916.Spec : Prop :=
  ∀ n, P8812356808456127916.a n = A132732 n

end A132732

/-! ## A132732.P5453374968698953110

`ogf((1-2x+x^2+2x^3)/(1-4x+5x^2-2x^3))`
-/

namespace A132732.P5453374968698953110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -2, 1, 2] [1, -4, 5, -2] n

end

end A132732.P5453374968698953110

namespace A132732

/-- `ogf((1-2x+x^2+2x^3)/(1-4x+5x^2-2x^3))` -/
def P5453374968698953110.Spec : Prop :=
  ∀ n, P5453374968698953110.a n = A132732 n

end A132732

/-! ## A132732.P664999608340934973

`∑[lcm(2, a(n-1)+1)]` with `a(0)=1, a(1)=1`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A132732

/-- `∑[lcm(2, a(n-1)+1)]` -/
def P664999608340934973.Spec : Prop :=
  ∀ n, (P664999608340934973.a n : ℤ) = A132732 n

theorem P664999608340934973.correct : P664999608340934973.Spec := by
  intro n
  simp only [A132732]

end A132732

/-! ## A132732.P8502405673909914860

`∑[2*or(1, a(n-1))]` with `a(0)=1, a(1)=1`
-/

namespace A132732.P8502405673909914860
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 1] fun n f1 =>
  2 * Nat.lor 1 (f1 (n - 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A132732.P8502405673909914860

namespace A132732

/-- `∑[2*or(1, a(n-1))]` -/
def P8502405673909914860.Spec : Prop :=
  ∀ n, (P8502405673909914860.a n : ℤ) = A132732 n

end A132732

/-! ## A132732.P4430514047288494238

`∑[2*(a(n-1)+1)]` with `a(0)=1, a(1)=1, a(2)=2`
-/

namespace A132732.P4430514047288494238
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 2] fun n f1 =>
  2 * (f1 (n - 1) + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A132732.P4430514047288494238

namespace A132732

/-- `∑[2*(a(n-1)+1)]` -/
def P4430514047288494238.Spec : Prop :=
  ∀ n, (P4430514047288494238.a n : ℤ) = A132732 n

end A132732

/-! ## A132732.P1430937899145933204

`∑[∑[2*a(n-1)]]` with `a(0)=1, a(1)=0, a(2)=1, a(3)=4`
-/

namespace A132732.P1430937899145933204
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [1, 0, 1, 4] fun n f2 =>
  2 * f2 (n - 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A132732.P1430937899145933204

namespace A132732

/-- `∑[∑[2*a(n-1)]]` -/
def P1430937899145933204.Spec : Prop :=
  ∀ n, (P1430937899145933204.a n : ℤ) = A132732 n

end A132732

/-! ## A132732.P3185192053505610913

`2*(a(n-1)-2+n)` with `a(0)=1, a(1)=2`
-/

namespace A132732.P3185192053505610913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  2 * (a (n - 1) - 2 + (n : ℤ))

end

end A132732.P3185192053505610913

namespace A132732

/-- `2*(a(n-1)-2+n)` -/
def P3185192053505610913.Spec : Prop :=
  ∀ n, P3185192053505610913.a n = A132732 n

end A132732

/-! ## A132732.P14007311331344435538

`2*(a(n-1)-(2-n))` with `a(0)=1, a(1)=2`
-/

namespace A132732.P14007311331344435538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  2 * (a (n - 1) - (2 - (n : ℤ)))

end

end A132732.P14007311331344435538

namespace A132732

/-- `2*(a(n-1)-(2-n))` -/
def P14007311331344435538.Spec : Prop :=
  ∀ n, P14007311331344435538.a n = A132732 n

end A132732

/-! ## A132732.P17175080684298044898

`2^n+a(n-1)-2` with `a(0)=1, a(1)=2`
-/

namespace A132732.P17175080684298044898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  (2 ^ n : ℤ) + (a (n - 1) - 2)

end

end A132732.P17175080684298044898

namespace A132732

/-- `2^n+a(n-1)-2` -/
def P17175080684298044898.Spec : Prop :=
  ∀ n, P17175080684298044898.a n = A132732 n

end A132732

/-! ## A132732.P7661356528442075578

`2^n-(2-a(n-1))` with `a(0)=1, a(1)=2`
-/

namespace A132732.P7661356528442075578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  (2 ^ n : ℤ) - (2 - a (n - 1))

end

end A132732.P7661356528442075578

namespace A132732

/-- `2^n-(2-a(n-1))` -/
def P7661356528442075578.Spec : Prop :=
  ∀ n, P7661356528442075578.a n = A132732 n

end A132732

/-! ## A132732.P7080948385307563123

`record[xor(3, 2^n)-(2*n+1)]`
-/

namespace A132732.P7080948385307563123
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.xor 3 (2 ^ n) : ℤ) - (2 * n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A132732.P7080948385307563123

namespace A132732

/-- `record[xor(3, 2^n)-(2*n+1)]` -/
def P7080948385307563123.Spec : Prop :=
  ∀ n, P7080948385307563123.a n = A132732 n

end A132732

/-! ## A132732.P5175641708305869793

`∑[char[1]+2^n-1]+1-n`
-/

namespace A132732.P5175641708305869793
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ) + ((2 ^ n : ℤ) - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (1 - (n : ℤ))

end

end A132732.P5175641708305869793

namespace A132732

/-- `∑[char[1]+2^n-1]+1-n` -/
def P5175641708305869793.Spec : Prop :=
  ∀ n, P5175641708305869793.a n = A132732 n

end A132732

/-! ## A132732.P8888848752148760541

`∑[xor(a(n-1)+2, a(n-1))]` with `a(0)=1, a(1)=1`
-/

namespace A132732.P8888848752148760541
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 1] fun n f1 =>
  Nat.xor (f1 (n - 1) + 2) (f1 (n - 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A132732.P8888848752148760541

namespace A132732

/-- `∑[xor(a(n-1)+2, a(n-1))]` -/
def P8888848752148760541.Spec : Prop :=
  ∀ n, (P8888848752148760541.a n : ℤ) = A132732 n

end A132732

/-! ## A132732.P13507257697926245414

`∑[a(n-1)+a(n-1)+2]` with `a(0)=1, a(1)=1, a(2)=2`
-/

namespace A132732.P13507257697926245414
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 2] fun n f1 =>
  f1 (n - 1) + (f1 (n - 1) + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A132732.P13507257697926245414

namespace A132732

/-- `∑[a(n-1)+a(n-1)+2]` -/
def P13507257697926245414.Spec : Prop :=
  ∀ n, (P13507257697926245414.a n : ℤ) = A132732 n

end A132732

/-! ## A132732.P16606016065773371640

`(2-(a(n-1)+n))/(1/2-1)` with `a(0)=1, a(1)=2`
-/

namespace A132732.P16606016065773371640
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 2] fun n a =>
  (2 - (a (n - 1) + (n : ℚ))) / ((1 : ℚ) / 2 - 1)

end

end A132732.P16606016065773371640

namespace A132732

/-- `(2-(a(n-1)+n))/(1/2-1)` -/
def P16606016065773371640.Spec : Prop :=
  ∀ n, P16606016065773371640.a n = (A132732 n : ℚ)

end A132732

/-! ## A132732.P3838809021980683090

`(2-a(n-1)-n)/(1/2-1)` with `a(0)=1, a(1)=2`
-/

namespace A132732.P3838809021980683090
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 2] fun n a =>
  (2 - a (n - 1) - (n : ℚ)) / ((1 : ℚ) / 2 - 1)

end

end A132732.P3838809021980683090

namespace A132732

/-- `(2-a(n-1)-n)/(1/2-1)` -/
def P3838809021980683090.Spec : Prop :=
  ∀ n, P3838809021980683090.a n = (A132732 n : ℚ)

end A132732

/-! ## A132732.P6645933501229188062

`record[A052551(n+1)-n]`
-/

namespace A132732.P6645933501229188062
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052551 (n + 1) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A132732.P6645933501229188062

namespace A132732

/-- `record[A052551(n+1)-n]` -/
def P6645933501229188062.Spec : Prop :=
  ∀ n, P6645933501229188062.a n = A132732 n

end A132732

/-! ## A132732.P18031015221489314906

`record[A052552(n+1)-n]`
-/

namespace A132732.P18031015221489314906
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052552 (n + 1) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A132732.P18031015221489314906

namespace A132732

/-- `record[A052552(n+1)-n]` -/
def P18031015221489314906.Spec : Prop :=
  ∀ n, P18031015221489314906.a n = A132732 n

end A132732

/-!
# A132733: Triangle T(n, k) = 4*binomial(n, k) - 5 with T(n, 0) = T(n, n) = 1, read by rows.

The programs for A132733, the canonical program `A132733.P10154900672015657817` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A132733 has offset 0).

The definition of A132733 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A132733.P10154900672015657817

`abs(2-A131061(n))`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A132733

/-- `abs(2-A131061(n))` -/
def P10154900672015657817.Spec : Prop :=
  ∀ n, P10154900672015657817.a n = A132733 n

theorem P10154900672015657817.correct : P10154900672015657817.Spec := by
  intro n
  simp only [A132733]

end A132733

/-! ## A132733.P15903458693253926751

`2*A132731(n)-1`
-/

namespace A132733.P15903458693253926751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A132731 n - 1

end

end A132733.P15903458693253926751

namespace A132733

/-- `2*A132731(n)-1` -/
def P15903458693253926751.Spec : Prop :=
  ∀ n, P15903458693253926751.a n = A132733 n

end A132733

/-! ## A132733.P6670788185942585830

`abs(3-2*A109128(n))`
-/

namespace A132733.P6670788185942585830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |3 - 2 * A109128 n|

end

end A132733.P6670788185942585830

namespace A132733

/-- `abs(3-2*A109128(n))` -/
def P6670788185942585830.Spec : Prop :=
  ∀ n, P6670788185942585830.a n = A132733 n

theorem P6670788185942585830.correct : P6670788185942585830.Spec := by
  intro n
  simp only [A132733, Nat.add_sub_cancel, A132733.P6670788185942585830.a, A132733.P10154900672015657817.a, A109128, A109128.P11896187039746255515.a, A131061, A131061.P592121948917823822.a, A028326, A028326.P16610217584664895500.a, A007318, A007318.P302227728145965961.a, A259525, A259525.P15603515225238104540.f1, A259525.P15603515225238104540.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A132733

/-! ## A132733.P9314901971459369873

`abs(4*A007318(n)-5)`
-/

namespace A132733.P9314901971459369873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |4 * A007318 n - 5|

end

end A132733.P9314901971459369873

namespace A132733

/-- `abs(4*A007318(n)-5)` -/
def P9314901971459369873.Spec : Prop :=
  ∀ n, P9314901971459369873.a n = A132733 n

end A132733

/-! ## A132733.P8511777585196520912

`abs(A135087(abs(1-n)+1)-4)`
-/

namespace A132733.P8511777585196520912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(A135087 (|1 - (n : ℤ)| + 1).toNat - 4)|

end

end A132733.P8511777585196520912

namespace A132733

/-- `abs(A135087(abs(1-n)+1)-4)` -/
def P8511777585196520912.Spec : Prop :=
  ∀ n, P8511777585196520912.a n = A132733 n

end A132733

/-! ## A132733.P2386919169360329835

`A109128(n)+A132729(n)-1`
-/

namespace A132733.P2386919169360329835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109128 n + (A132729 n - 1)

end

end A132733.P2386919169360329835

namespace A132733

/-- `A109128(n)+A132729(n)-1` -/
def P2386919169360329835.Spec : Prop :=
  ∀ n, P2386919169360329835.a n = A132733 n

end A132733

/-! ## A132733.P8450347081680977452

`A132729(n)+2*A014473(n)`
-/

namespace A132733.P8450347081680977452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132729 n + 2 * A014473 n

end

end A132733.P8450347081680977452

namespace A132733

/-- `A132729(n)+2*A014473(n)` -/
def P8450347081680977452.Spec : Prop :=
  ∀ n, P8450347081680977452.a n = A132733 n

end A132733

/-! ## A132733.P7372691330786986158

`2*(A132044(n)+A014473(n))-1`
-/

namespace A132733.P7372691330786986158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A132044 n + A014473 n) - 1

end

end A132733.P7372691330786986158

namespace A132733

/-- `2*(A132044(n)+A014473(n))-1` -/
def P7372691330786986158.Spec : Prop :=
  ∀ n, P7372691330786986158.a n = A132733 n

end A132733

/-! ## A132733.P2449445734863814242

`A132731(n)+A132731(n)-A132731(A008805(n))`
-/

namespace A132733.P2449445734863814242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132731 n + (A132731 n - A132731 (A008805 n).toNat)

end

end A132733.P2449445734863814242

namespace A132733

/-- `A132731(n)+A132731(n)-A132731(A008805(n))` -/
def P2449445734863814242.Spec : Prop :=
  ∀ n, P2449445734863814242.a n = A132733 n

end A132733

/-! ## A132733.P2270797142768095693

`A131098(A007318(n))`
-/

namespace A132733.P2270797142768095693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131098 (A007318 n).toNat

end

end A132733.P2270797142768095693

namespace A132733

/-- `A131098(A007318(n))` -/
def P2270797142768095693.Spec : Prop :=
  ∀ n, P2270797142768095693.a n = A132733 n

end A132733

/-! ## A132733.P13936328495553615349

`A130824(A007318(n)-1)+1`
-/

namespace A132733.P13936328495553615349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130824 (A007318 n - 1).toNat + 1

end

end A132733.P13936328495553615349

namespace A132733

/-- `A130824(A007318(n)-1)+1` -/
def P13936328495553615349.Spec : Prop :=
  ∀ n, P13936328495553615349.a n = A132733 n

end A132733

/-! ## A132733.P4436031959032398143

`2*(A004277(A007318(n)-1)-1)+1`
-/

namespace A132733.P4436031959032398143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A004277 (A007318 n - 1).toNat - 1) + 1

end

end A132733.P4436031959032398143

namespace A132733

/-- `2*(A004277(A007318(n)-1)-1)+1` -/
def P4436031959032398143.Spec : Prop :=
  ∀ n, P4436031959032398143.a n = A132733 n

end A132733

/-! ## A132733.P9795188377885556289

`A004274(A109128(n))`
-/

namespace A132733.P9795188377885556289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004274 (A109128 n).toNat

end

end A132733.P9795188377885556289

namespace A132733

/-- `A004274(A109128(n))` -/
def P9795188377885556289.Spec : Prop :=
  ∀ n, P9795188377885556289.a n = A132733 n

end A132733

/-! ## A132733.P18090738784768066049

`A004273(A132731(n))`
-/

namespace A132733.P18090738784768066049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (A132731 n).toNat

end

end A132733.P18090738784768066049

namespace A132733

/-- `A004273(A132731(n))` -/
def P18090738784768066049.Spec : Prop :=
  ∀ n, P18090738784768066049.a n = A132733 n

end A132733

/-! ## A132733.P16578949578223783250

`A004281(A028326(n))-2`
-/

namespace A132733.P16578949578223783250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004281 (A028326 n).toNat - 2

end

end A132733.P16578949578223783250

namespace A132733

/-- `A004281(A028326(n))-2` -/
def P16578949578223783250.Spec : Prop :=
  ∀ n, P16578949578223783250.a n = A132733 n

end A132733

/-! ## A132733.P13173642976702564515

`A004274(2*A007318(n)-1)`
-/

namespace A132733.P13173642976702564515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004274 (2 * A007318 n - 1).toNat

end

end A132733.P13173642976702564515

namespace A132733

/-- `A004274(2*A007318(n)-1)` -/
def P13173642976702564515.Spec : Prop :=
  ∀ n, P13173642976702564515.a n = A132733 n

end A132733

/-! ## A132733.P17699883454019488049

`A004280(2*A007318(n)-1)`
-/

namespace A132733.P17699883454019488049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004280 (2 * A007318 n - 1).toNat

end

end A132733.P17699883454019488049

namespace A132733

/-- `A004280(2*A007318(n)-1)` -/
def P17699883454019488049.Spec : Prop :=
  ∀ n, P17699883454019488049.a n = A132733 n

end A132733

/-! ## A132733.P3401755049494361868

`A053438(2*(A007318(n)-1))`
-/

namespace A132733.P3401755049494361868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053438 (2 * (A007318 n - 1)).toNat

end

end A132733.P3401755049494361868

namespace A132733

/-- `A053438(2*(A007318(n)-1))` -/
def P3401755049494361868.Spec : Prop :=
  ∀ n, P3401755049494361868.a n = A132733 n

end A132733

/-! ## A132733.P12569343049624207029

`2*A097141(A132046(n))-1`
-/

namespace A132733.P12569343049624207029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A097141 (A132046 n).toNat - 1

end

end A132733.P12569343049624207029

namespace A132733

/-- `2*A097141(A132046(n))-1` -/
def P12569343049624207029.Spec : Prop :=
  ∀ n, P12569343049624207029.a n = A132733 n

end A132733

/-! ## A132733.P13952889801258102339

`A266251(2*A007318(n))-2`
-/

namespace A132733.P13952889801258102339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266251 (2 * A007318 n).toNat - 2

end

end A132733.P13952889801258102339

namespace A132733

/-- `A266251(2*A007318(n))-2` -/
def P13952889801258102339.Spec : Prop :=
  ∀ n, P13952889801258102339.a n = A132733 n

end A132733

/-!
# A132734: Row sums of triangle A132733.

The programs for A132734, the canonical program `A132734.P1524176415202040544` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A132734 has offset 0).

The definition of A132734 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A132734.P1524176415202040544

`4*a(n-1)-5*a(n-2)+2*a(n-3)` with `a(0)=1, a(1)=2, a(2)=5, a(3)=16`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A132734

/-- `4*a(n-1)-5*a(n-2)+2*a(n-3)` -/
def P1524176415202040544.Spec : Prop :=
  ∀ n, P1524176415202040544.a n = A132734 n

theorem P1524176415202040544.correct : P1524176415202040544.Spec := by
  intro n
  simp only [A132734]

end A132734

/-! ## A132734.P9641541472208272545

`∑[abs(∑[2^n]-4)]-2`
-/

namespace A132734.P9641541472208272545
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) - 4|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 2

end

end A132734.P9641541472208272545

namespace A132734

/-- `∑[abs(∑[2^n]-4)]-2` -/
def P9641541472208272545.Spec : Prop :=
  ∀ n, P9641541472208272545.a n = A132734 n

end A132734

/-! ## A132734.P16688849987265550451

`∑[ogf((1-2x+2x^2+4x^3)/(1-3x+2x^2))]`
-/

namespace A132734.P16688849987265550451
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -2, 2, 4] [1, -3, 2] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A132734.P16688849987265550451

namespace A132734

/-- `∑[ogf((1-2x+2x^2+4x^3)/(1-3x+2x^2))]` -/
def P16688849987265550451.Spec : Prop :=
  ∀ n, P16688849987265550451.a n = A132734 n

end A132734

/-! ## A132734.P6216808893782554583

`ogf((1-2x+2x^2+4x^3)/(1-4x+5x^2-2x^3))`
-/

namespace A132734.P6216808893782554583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -2, 2, 4] [1, -4, 5, -2] n

end

end A132734.P6216808893782554583

namespace A132734

/-- `ogf((1-2x+2x^2+4x^3)/(1-4x+5x^2-2x^3))` -/
def P6216808893782554583.Spec : Prop :=
  ∀ n, P6216808893782554583.a n = A132734 n

end A132734

/-! ## A132734.P7484587177431867571

`∑[2*a(n-1)+5]` with `a(0)=1, a(1)=1, a(2)=3`
-/

namespace A132734.P7484587177431867571
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 3] fun n f1 =>
  2 * f1 (n - 1) + 5

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A132734.P7484587177431867571

namespace A132734

/-- `∑[2*a(n-1)+5]` -/
def P7484587177431867571.Spec : Prop :=
  ∀ n, (P7484587177431867571.a n : ℤ) = A132734 n

end A132734

/-! ## A132734.P933027806856407219

`∑[∑[2*a(n-1)]]` with `a(0)=1, a(1)=0, a(2)=2, a(3)=8`
-/

namespace A132734.P933027806856407219
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [1, 0, 2, 8] fun n f2 =>
  2 * f2 (n - 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A132734.P933027806856407219

namespace A132734

/-- `∑[∑[2*a(n-1)]]` -/
def P933027806856407219.Spec : Prop :=
  ∀ n, (P933027806856407219.a n : ℤ) = A132734 n

end A132734

/-! ## A132734.P1835746208371414259

`∑[a(n-1)+2^n]` with `a(0)=1, a(1)=1, a(2)=3`
-/

namespace A132734.P1835746208371414259
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 3] fun n f1 =>
  f1 (n - 1) + 2 ^ n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A132734.P1835746208371414259

namespace A132734

/-- `∑[a(n-1)+2^n]` -/
def P1835746208371414259.Spec : Prop :=
  ∀ n, (P1835746208371414259.a n : ℤ) = A132734 n

end A132734

/-! ## A132734.P2523711910866592937

`∑[floor(a(n-1)+a(n-1)+5)]` with `a(0)=1, a(1)=1, a(2)=3`

`floor` is left out, it is the identity on integers.
-/

namespace A132734.P2523711910866592937
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 3] fun n f1 =>
  f1 (n - 1) + (f1 (n - 1) + 5)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A132734.P2523711910866592937

namespace A132734

/-- `∑[floor(a(n-1)+a(n-1)+5)]` -/
def P2523711910866592937.Spec : Prop :=
  ∀ n, (P2523711910866592937.a n : ℤ) = A132734 n

end A132734

/-! ## A132734.P4118726516126358964

`∑[abs(2-∑[A186949(n)])]`
-/

namespace A132734.P4118726516126358964
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186949 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |2 - ∑ j ∈ Finset.range (n + 1), f2 j|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A132734.P4118726516126358964

namespace A132734

/-- `∑[abs(2-∑[A186949(n)])]` -/
def P4118726516126358964.Spec : Prop :=
  ∀ n, P4118726516126358964.a n = A132734 n

end A132734

/-! ## A132734.P14272796042343759083

`∑[abs(abs(A052955(2*n)-3)-1)]`
-/

namespace A132734.P14272796042343759083
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(|A052955 (2 * n) - 3| - 1)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A132734.P14272796042343759083

namespace A132734

/-- `∑[abs(abs(A052955(2*n)-3)-1)]` -/
def P14272796042343759083.Spec : Prop :=
  ∀ n, P14272796042343759083.a n = A132734 n

end A132734

/-!
# A132735: Triangle T(n,k) = binomial(n,k) + 1 with T(n,0) = T(n,n) = 1, read by rows.

The programs for A132735, the canonical program `A132735.P4142998940236059687` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A132735 has offset 0).

The definition of A132735 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A132735.P9309181732635149866

`(A132737(n)+1)/2`
-/

namespace A132735.P9309181732635149866
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A132737 n + 1 : ℚ) / 2

end

end A132735.P9309181732635149866

namespace A132735

/-- `(A132737(n)+1)/2` -/
def P9309181732635149866.Spec : Prop :=
  ∀ n, P9309181732635149866.a n = (A132735 n : ℚ)

end A132735

/-! ## A132735.P4142998940236059687

`floor(A132046(n)/2)+1`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A132735

/-- `floor(A132046(n)/2)+1` -/
def P4142998940236059687.Spec : Prop :=
  ∀ n, P4142998940236059687.a n = A132735 n

theorem P4142998940236059687.correct : P4142998940236059687.Spec := by
  intro n
  simp only [A132735]

end A132735

/-! ## A132735.P12997999994388527792

`A154325(n)+A014473(n)`
-/

namespace A132735.P12997999994388527792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154325 n + A014473 n

end

end A132735.P12997999994388527792

namespace A132735

/-- `A154325(n)+A014473(n)` -/
def P12997999994388527792.Spec : Prop :=
  ∀ n, P12997999994388527792.a n = A132735 n

end A132735

/-! ## A132735.P10217528898779326579

`A206735(n)+A023532(n)`
-/

namespace A132735.P10217528898779326579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206735 n + A023532 n

end

end A132735.P10217528898779326579

namespace A132735

/-- `A206735(n)+A023532(n)` -/
def P10217528898779326579.Spec : Prop :=
  ∀ n, P10217528898779326579.a n = A132735 n

end A132735

/-! ## A132735.P5129033259621771202

`A132071(n)-A003056(n)`
-/

namespace A132735.P5129033259621771202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132071 n - A003056 n

end

end A132735.P5129033259621771202

namespace A132735

/-- `A132071(n)-A003056(n)` -/
def P5129033259621771202.Spec : Prop :=
  ∀ n, P5129033259621771202.a n = A132735 n

end A132735

/-! ## A132735.P3408199779343017668

`A132046(n)-A014473(n)`
-/

namespace A132735.P3408199779343017668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132046 n - A014473 n

end

end A132735.P3408199779343017668

namespace A132735

/-- `A132046(n)-A014473(n)` -/
def P3408199779343017668.Spec : Prop :=
  ∀ n, P3408199779343017668.a n = A132735 n

end A132735

/-! ## A132735.P18284481915111196577

`A028326(n)-A132044(n)`
-/

namespace A132735.P18284481915111196577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028326 n - A132044 n

end

end A132735.P18284481915111196577

namespace A132735

/-- `A028326(n)-A132044(n)` -/
def P18284481915111196577.Spec : Prop :=
  ∀ n, P18284481915111196577.a n = A132735 n

end A132735

/-! ## A132735.P13587265980743690897

`A104795(n-A073424(n))`
-/

namespace A132735.P13587265980743690897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104795 ((n : ℤ) - A073424 n).toNat

end

end A132735.P13587265980743690897

namespace A132735

/-- `A104795(n-A073424(n))` -/
def P13587265980743690897.Spec : Prop :=
  ∀ n, P13587265980743690897.a n = A132735 n

end A132735

/-! ## A132735.P17790141430245341670

`gcd(A010816(n), A104795(n))`
-/

namespace A132735.P17790141430245341670
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A010816 n) (A104795 n)

end

end A132735.P17790141430245341670

namespace A132735

/-- `gcd(A010816(n), A104795(n))` -/
def P17790141430245341670.Spec : Prop :=
  ∀ n, (P17790141430245341670.a n : ℤ) = A132735 n

end A132735

/-! ## A132735.P10351644641601471815

`gcd(A103452(n), A132073(n))`
-/

namespace A132735.P10351644641601471815
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A103452 n) (A132073 n)

end

end A132735.P10351644641601471815

namespace A132735

/-- `gcd(A103452(n), A132073(n))` -/
def P10351644641601471815.Spec : Prop :=
  ∀ n, (P10351644641601471815.a n : ℤ) = A132735 n

end A132735

/-! ## A132735.P3378445136817500625

`A206735(A023531(n)+n)+1`
-/

namespace A132735.P3378445136817500625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206735 (A023531 n + (n : ℤ)).toNat + 1

end

end A132735.P3378445136817500625

namespace A132735

/-- `A206735(A023531(n)+n)+1` -/
def P3378445136817500625.Spec : Prop :=
  ∀ n, P3378445136817500625.a n = A132735 n

end A132735

/-! ## A132735.P9147230271137788015

`A007318(n)+1-A103451(n)`
-/

namespace A132735.P9147230271137788015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n + (1 - A103451 n)

end

end A132735.P9147230271137788015

namespace A132735

/-- `A007318(n)+1-A103451(n)` -/
def P9147230271137788015.Spec : Prop :=
  ∀ n, P9147230271137788015.a n = A132735 n

end A132735

/-! ## A132735.P1805793235387384709

`A132046(n)+1-A007318(n)`
-/

namespace A132735.P1805793235387384709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132046 n + (1 - A007318 n)

end

end A132735.P1805793235387384709

namespace A132735

/-- `A132046(n)+1-A007318(n)` -/
def P1805793235387384709.Spec : Prop :=
  ∀ n, P1805793235387384709.a n = A132735 n

end A132735

/-! ## A132735.P2261043206570322049

`A007318(n)+A154325(n)-1`
-/

namespace A132735.P2261043206570322049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n + (A154325 n - 1)

end

end A132735.P2261043206570322049

namespace A132735

/-- `A007318(n)+A154325(n)-1` -/
def P2261043206570322049.Spec : Prop :=
  ∀ n, P2261043206570322049.a n = A132735 n

end A132735

/-! ## A132735.P12673253099569414567

`A109128(n)+1-A132044(n)`
-/

namespace A132735.P12673253099569414567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109128 n + (1 - A132044 n)

end

end A132735.P12673253099569414567

namespace A132735

/-- `A109128(n)+1-A132044(n)` -/
def P12673253099569414567.Spec : Prop :=
  ∀ n, P12673253099569414567.a n = A132735 n

end A132735

/-! ## A132735.P15410899518476389913

`A129994(n)+1-A132749(n)`
-/

namespace A132735.P15410899518476389913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129994 n + (1 - A132749 n)

end

end A132735.P15410899518476389913

namespace A132735

/-- `A129994(n)+1-A132749(n)` -/
def P15410899518476389913.Spec : Prop :=
  ∀ n, P15410899518476389913.a n = A132735 n

end A132735

/-! ## A132735.P13854539873395241312

`A132731(n)+1-A132823(n)`
-/

namespace A132735.P13854539873395241312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132731 n + (1 - A132823 n)

end

end A132735.P13854539873395241312

namespace A132735

/-- `A132731(n)+1-A132823(n)` -/
def P13854539873395241312.Spec : Prop :=
  ∀ n, P13854539873395241312.a n = A132735 n

end A132735

/-! ## A132735.P10972841134228520993

`A135226(n)+1-A135225(n)`
-/

namespace A132735.P10972841134228520993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135226 n + (1 - A135225 n)

end

end A132735.P10972841134228520993

namespace A132735

/-- `A135226(n)+1-A135225(n)` -/
def P10972841134228520993.Spec : Prop :=
  ∀ n, P10972841134228520993.a n = A132735 n

end A132735

/-! ## A132735.P12846383316863948346

`A132073(n)-A144217(n+1)`
-/

namespace A132735.P12846383316863948346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132073 n - A144217 (n + 1)

end

end A132735.P12846383316863948346

namespace A132735

/-- `A132073(n)-A144217(n+1)` -/
def P12846383316863948346.Spec : Prop :=
  ∀ n, P12846383316863948346.a n = A132735 n

end A132735

/-! ## A132735.P10623370704008118070

`A103451(n)+A173740(n)-1`
-/

namespace A132735.P10623370704008118070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103451 n + (A173740 n - 1)

end

end A132735.P10623370704008118070

namespace A132735

/-- `A103451(n)+A173740(n)-1` -/
def P10623370704008118070.Spec : Prop :=
  ∀ n, P10623370704008118070.a n = A132735 n

end A132735

/-!
# A132736: Row sums of triangle A132735.

The programs for A132736, the canonical program `A132736.P5532838372142320237` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A132736 has offset 0).

The definition of A132736 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A132736.P5532838372142320237

`4*a(n-1)-5*a(n-2)+2*a(n-3)` with `a(0)=1, a(1)=2, a(2)=5, a(3)=10`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A132736

/-- `4*a(n-1)-5*a(n-2)+2*a(n-3)` -/
def P5532838372142320237.Spec : Prop :=
  ∀ n, P5532838372142320237.a n = A132736 n

theorem P5532838372142320237.correct : P5532838372142320237.Spec := by
  intro n
  simp only [A132736]

end A132736

/-! ## A132736.P3294268120692073996

`or(abs(1-n), 2^n)`
-/

namespace A132736.P3294268120692073996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor |1 - (n : ℤ)| (2 ^ n : ℤ)

end

end A132736.P3294268120692073996

namespace A132736

/-- `or(abs(1-n), 2^n)` -/
def P3294268120692073996.Spec : Prop :=
  ∀ n, P3294268120692073996.a n = A132736 n

end A132736

/-! ## A132736.P3721769521788230395

`n-or(1, -2^n)`
-/

namespace A132736.P3721769521788230395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - Int.lor 1 (-(2 ^ n : ℤ))

end

end A132736.P3721769521788230395

namespace A132736

/-- `n-or(1, -2^n)` -/
def P3721769521788230395.Spec : Prop :=
  ∀ n, P3721769521788230395.a n = A132736 n

end A132736

/-! ## A132736.P6914689399929555144

`or(1, 2^n-1)+n`
-/

namespace A132736.P6914689399929555144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 ((2 ^ n : ℤ) - 1) + (n : ℤ)

end

end A132736.P6914689399929555144

namespace A132736

/-- `or(1, 2^n-1)+n` -/
def P6914689399929555144.Spec : Prop :=
  ∀ n, P6914689399929555144.a n = A132736 n

end A132736

/-! ## A132736.P10372192496315947429

`∑[or(1, floor(2^(n-1)))]`
-/

namespace A132736.P10372192496315947429
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 ⌊(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A132736.P10372192496315947429

namespace A132736

/-- `∑[or(1, floor(2^(n-1)))]` -/
def P10372192496315947429.Spec : Prop :=
  ∀ n, P10372192496315947429.a n = A132736 n

end A132736

/-! ## A132736.P2617701527724795889

`lcm(2, (-2)^n)+n-1`
-/

namespace A132736.P2617701527724795889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.lcm 2 ((-2) ^ n) : ℤ) + ((n : ℤ) - 1)

end

end A132736.P2617701527724795889

namespace A132736

/-- `lcm(2, (-2)^n)+n-1` -/
def P2617701527724795889.Spec : Prop :=
  ∀ n, P2617701527724795889.a n = A132736 n

end A132736

/-! ## A132736.P10139837040929014142

`∑[ogf((1-2x+2x^2-2x^3)/(1-3x+2x^2))]`
-/

namespace A132736.P10139837040929014142
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -2, 2, -2] [1, -3, 2] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A132736.P10139837040929014142

namespace A132736

/-- `∑[ogf((1-2x+2x^2-2x^3)/(1-3x+2x^2))]` -/
def P10139837040929014142.Spec : Prop :=
  ∀ n, P10139837040929014142.a n = A132736 n

end A132736

/-! ## A132736.P17655318054960566174

`ogf((1-2x+2x^2-2x^3)/(1-4x+5x^2-2x^3))`
-/

namespace A132736.P17655318054960566174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -2, 2, -2] [1, -4, 5, -2] n

end

end A132736.P17655318054960566174

namespace A132736

/-- `ogf((1-2x+2x^2-2x^3)/(1-4x+5x^2-2x^3))` -/
def P17655318054960566174.Spec : Prop :=
  ∀ n, P17655318054960566174.a n = A132736 n

end A132736

/-! ## A132736.P1119150769673033960

`2^n-(1-n)%(n+1)`
-/

namespace A132736.P1119150769673033960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) - Int.tmod (1 - (n : ℤ)) (n + 1 : ℤ)

end

end A132736.P1119150769673033960

namespace A132736

/-- `2^n-(1-n)%(n+1)` -/
def P1119150769673033960.Spec : Prop :=
  ∀ n, P1119150769673033960.a n = A132736 n

end A132736

/-! ## A132736.P16073309059475548043

`xor(2^n, (2*n)%(n+1))`
-/

namespace A132736.P16073309059475548043
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor (2 ^ n) (2 * n % (n + 1))

end

end A132736.P16073309059475548043

namespace A132736

/-- `xor(2^n, (2*n)%(n+1))` -/
def P16073309059475548043.Spec : Prop :=
  ∀ n, (P16073309059475548043.a n : ℤ) = A132736 n

end A132736

/-! ## A132736.P16853696979368524890

`record[2^abs(2-n)+n-3]`
-/

namespace A132736.P16853696979368524890
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (|2 - (n : ℤ)| : ℤ) + ((n : ℤ) - 3 : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A132736.P16853696979368524890

namespace A132736

/-- `record[2^abs(2-n)+n-3]` -/
def P16853696979368524890.Spec : Prop :=
  ∀ n, P16853696979368524890.a n = (A132736 n : ℚ)

end A132736

/-! ## A132736.P16688856765746766598

`floor(2^n+n²/(n+1))`
-/

namespace A132736.P16688856765746766598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(2 ^ n : ℚ) + (n ^ 2 : ℚ) / (n + 1 : ℚ)⌋

end

end A132736.P16688856765746766598

namespace A132736

/-- `floor(2^n+n²/(n+1))` -/
def P16688856765746766598.Spec : Prop :=
  ∀ n, P16688856765746766598.a n = A132736 n

end A132736

/-! ## A132736.P9948634108767796949

`∑[2*a(n-1)-1]` with `a(0)=1, a(1)=1, a(2)=3`
-/

namespace A132736.P9948634108767796949
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 3] fun n f1 =>
  2 * f1 (n - 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A132736.P9948634108767796949

namespace A132736

/-- `∑[2*a(n-1)-1]` -/
def P9948634108767796949.Spec : Prop :=
  ∀ n, P9948634108767796949.a n = A132736 n

end A132736

/-! ## A132736.P2674548893513875607

`2*a(n-1)+3-n` with `a(0)=1, a(1)=2`
-/

namespace A132736.P2674548893513875607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  2 * a (n - 1) + (3 - (n : ℤ))

end

end A132736.P2674548893513875607

namespace A132736

/-- `2*a(n-1)+3-n` -/
def P2674548893513875607.Spec : Prop :=
  ∀ n, P2674548893513875607.a n = A132736 n

end A132736

/-! ## A132736.P11061716166676436591

`3-(n-2*a(n-1))` with `a(0)=1, a(1)=2`
-/

namespace A132736.P11061716166676436591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  3 - ((n : ℤ) - 2 * a (n - 1))

end

end A132736.P11061716166676436591

namespace A132736

/-- `3-(n-2*a(n-1))` -/
def P11061716166676436591.Spec : Prop :=
  ∀ n, P11061716166676436591.a n = A132736 n

end A132736

/-! ## A132736.P3652876640589646351

`∑[a(n-1)+a(n-1)-1]` with `a(0)=1, a(1)=1, a(2)=3`
-/

namespace A132736.P3652876640589646351
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 3] fun n f1 =>
  f1 (n - 1) + (f1 (n - 1) - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A132736.P3652876640589646351

namespace A132736

/-- `∑[a(n-1)+a(n-1)-1]` -/
def P3652876640589646351.Spec : Prop :=
  ∀ n, P3652876640589646351.a n = A132736 n

end A132736

/-! ## A132736.P17172933936338556619

`∑[a(n-1)-(1-a(n-1))]` with `a(0)=1, a(1)=1, a(2)=3`
-/

namespace A132736.P17172933936338556619
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 3] fun n f1 =>
  f1 (n - 1) - (1 - f1 (n - 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A132736.P17172933936338556619

namespace A132736

/-- `∑[a(n-1)-(1-a(n-1))]` -/
def P17172933936338556619.Spec : Prop :=
  ∀ n, P17172933936338556619.a n = A132736 n

end A132736

/-! ## A132736.P4866040710875792392

`a(n-1)+a(n-1)+3-n` with `a(0)=1, a(1)=2`
-/

namespace A132736.P4866040710875792392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  a (n - 1) + (a (n - 1) + (3 - (n : ℤ)))

end

end A132736.P4866040710875792392

namespace A132736

/-- `a(n-1)+a(n-1)+3-n` -/
def P4866040710875792392.Spec : Prop :=
  ∀ n, P4866040710875792392.a n = A132736 n

end A132736

/-! ## A132736.P11563223449300221120

`3-(n-a(n-1)-a(n-1))` with `a(0)=1, a(1)=2`
-/

namespace A132736.P11563223449300221120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  3 - ((n : ℤ) - a (n - 1) - a (n - 1))

end

end A132736.P11563223449300221120

namespace A132736

/-- `3-(n-a(n-1)-a(n-1))` -/
def P11563223449300221120.Spec : Prop :=
  ∀ n, P11563223449300221120.a n = A132736 n

end A132736

/-! ## A132736.P7354520027763906475

`A255047(n)+n`
-/

namespace A132736.P7354520027763906475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255047 n + (n : ℤ)

end

end A132736.P7354520027763906475

namespace A132736

/-- `A255047(n)+n` -/
def P7354520027763906475.Spec : Prop :=
  ∀ n, P7354520027763906475.a n = A132736 n

end A132736

/-!
# A132737: Triangle T(n,k) = 2*binomial(n,k) + 1, read by rows.

The programs for A132737, the canonical program `A132737.P15042610219091654609` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A132737 has offset 0).

The definition of A132737 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A132737.P15042610219091654609

`or(1, A132046(n))`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A132737

/-- `or(1, A132046(n))` -/
def P15042610219091654609.Spec : Prop :=
  ∀ n, P15042610219091654609.a n = A132737 n

theorem P15042610219091654609.correct : P15042610219091654609.Spec := by
  intro n
  simp only [A132737]

end A132737

/-! ## A132737.P8220519341408898754

`2*A132735(n)-1`
-/

namespace A132737.P8220519341408898754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A132735 n - 1

end

end A132737.P8220519341408898754

namespace A132737

/-- `2*A132735(n)-1` -/
def P8220519341408898754.Spec : Prop :=
  ∀ n, P8220519341408898754.a n = A132737 n

end A132737

/-! ## A132737.P7776637266465320470

`or(1, ceil(sqrt(A141596(n))))`
-/

namespace A132737.P7776637266465320470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 ⌈Real.sqrt (A141596 n : ℝ)⌉

end

end A132737.P7776637266465320470

namespace A132737

/-- `or(1, ceil(sqrt(A141596(n))))` -/
def P7776637266465320470.Spec : Prop :=
  ∀ n, P7776637266465320470.a n = A132737 n

end A132737

/-! ## A132737.P5652357100295643343

`A173740(n)+A014473(n)`
-/

namespace A132737.P5652357100295643343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173740 n + A014473 n

end

end A132737.P5652357100295643343

namespace A132737

/-- `A173740(n)+A014473(n)` -/
def P5652357100295643343.Spec : Prop :=
  ∀ n, P5652357100295643343.a n = A132737 n

theorem P5652357100295643343.correct : P5652357100295643343.Spec := by
  intro n
  simp only [A132737, Nat.add_sub_cancel, A132737.P5652357100295643343.a, A132737.P15042610219091654609.a, A014473, A014473.P9301799580602651200.a, A132046, A132046.P838827158964499590.a, A173740, A173740.P17450600128773935956.a, A007318, A007318.P302227728145965961.a, A028326, A028326.P16610217584664895500.a, A103451, A103451.P2977452712529643699.a, A103452, A103452.P9591001737205339396.f1, A103452.P9591001737205339396.a, A259525, A259525.P15603515225238104540.f1, A259525.P15603515225238104540.a, A003056, A003056.P5318256527314048597.a, A073424, A073424.P9168526329464022542.a, A074909, A074909.P6707642907239843837.f1, A074909.P6707642907239843837.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A132737

/-! ## A132737.P11214917917542705519

`A132047(n)-A014473(n)`
-/

namespace A132737.P11214917917542705519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132047 n - A014473 n

end

end A132737.P11214917917542705519

namespace A132737

/-- `A132047(n)-A014473(n)` -/
def P11214917917542705519.Spec : Prop :=
  ∀ n, P11214917917542705519.a n = A132737 n

end A132737

/-! ## A132737.P1222801944159410766

`A132047(n)+1-A007318(n)`
-/

namespace A132737.P1222801944159410766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132047 n + (1 - A007318 n)

end

end A132737.P1222801944159410766

namespace A132737

/-- `A132047(n)+1-A007318(n)` -/
def P1222801944159410766.Spec : Prop :=
  ∀ n, P1222801944159410766.a n = A132737 n

end A132737

/-! ## A132737.P15712244562699654964

`A007318(n)+A173740(n)-1`
-/

namespace A132737.P15712244562699654964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n + (A173740 n - 1)

end

end A132737.P15712244562699654964

namespace A132737

/-- `A007318(n)+A173740(n)-1` -/
def P15712244562699654964.Spec : Prop :=
  ∀ n, P15712244562699654964.a n = A132737 n

theorem P15712244562699654964.correct : P15712244562699654964.Spec := by
  intro n
  simp only [A132737, Nat.add_sub_cancel, A132737.P15712244562699654964.a, A132737.P15042610219091654609.a, A007318, A007318.P302227728145965961.a, A132046, A132046.P838827158964499590.a, A173740, A173740.P17450600128773935956.a, A014473, A014473.P9301799580602651200.a, A028326, A028326.P16610217584664895500.a, A103451, A103451.P2977452712529643699.a, A259525, A259525.P15603515225238104540.f1, A259525.P15603515225238104540.a, A003056, A003056.P5318256527314048597.a, A074909, A074909.P6707642907239843837.f1, A074909.P6707642907239843837.a, A103452, A103452.P9591001737205339396.f1, A103452.P9591001737205339396.a, A002262, A002262.P12129691700837801527.a, A010054, A010054.P18347828677204923252.a, A073424, A073424.P9168526329464022542.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A132737

/-! ## A132737.P7370804478306827552

`A132046(n)+1-A103451(n)`
-/

namespace A132737.P7370804478306827552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132046 n + (1 - A103451 n)

end

end A132737.P7370804478306827552

namespace A132737

/-- `A132046(n)+1-A103451(n)` -/
def P7370804478306827552.Spec : Prop :=
  ∀ n, P7370804478306827552.a n = A132737 n

end A132737

/-! ## A132737.P12719423619018361940

`A132046(n)+A154325(n)-1`
-/

namespace A132737.P12719423619018361940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132046 n + (A154325 n - 1)

end

end A132737.P12719423619018361940

namespace A132737

/-- `A132046(n)+A154325(n)-1` -/
def P12719423619018361940.Spec : Prop :=
  ∀ n, P12719423619018361940.a n = A132737 n

end A132737

/-! ## A132737.P12394950405085022600

`A132823(n)+A173741(n)-1`
-/

namespace A132737.P12394950405085022600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132823 n + (A173741 n - 1)

end

end A132737.P12394950405085022600

namespace A132737

/-- `A132823(n)+A173741(n)-1` -/
def P12394950405085022600.Spec : Prop :=
  ∀ n, P12394950405085022600.a n = A132737 n

end A132737

/-! ## A132737.P3565289942847879232

`2*A132046(n)-A109128(n)`
-/

namespace A132737.P3565289942847879232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A132046 n - A109128 n

end

end A132737.P3565289942847879232

namespace A132737

/-- `2*A132046(n)-A109128(n)` -/
def P3565289942847879232.Spec : Prop :=
  ∀ n, P3565289942847879232.a n = A132737 n

end A132737

/-! ## A132737.P3328019617857266307

`2*A109128(n)-A132729(n)`
-/

namespace A132737.P3328019617857266307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A109128 n - A132729 n

end

end A132737.P3328019617857266307

namespace A132737

/-- `2*A109128(n)-A132729(n)` -/
def P3328019617857266307.Spec : Prop :=
  ∀ n, P3328019617857266307.a n = A132737 n

end A132737

/-! ## A132737.P6894298386108693452

`gcd(A028326(n)+1, A103452(n))`
-/

namespace A132737.P6894298386108693452
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A028326 n + 1) (A103452 n)

end

end A132737.P6894298386108693452

namespace A132737

/-- `gcd(A028326(n)+1, A103452(n))` -/
def P6894298386108693452.Spec : Prop :=
  ∀ n, (P6894298386108693452.a n : ℤ) = A132737 n

end A132737

/-! ## A132737.P11669022368219254374

`or(1, A028326(n)-A103451(n))`
-/

namespace A132737.P11669022368219254374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A028326 n - A103451 n)

end

end A132737.P11669022368219254374

namespace A132737

/-- `or(1, A028326(n)-A103451(n))` -/
def P11669022368219254374.Spec : Prop :=
  ∀ n, P11669022368219254374.a n = A132737 n

end A132737

/-! ## A132737.P573045044083882839

`A007318(n)+A132735(n)-A103451(n)`
-/

namespace A132737.P573045044083882839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n + (A132735 n - A103451 n)

end

end A132737.P573045044083882839

namespace A132737

/-- `A007318(n)+A132735(n)-A103451(n)` -/
def P573045044083882839.Spec : Prop :=
  ∀ n, P573045044083882839.a n = A132737 n

end A132737

/-! ## A132737.P9875619358953504980

`A132046(n)+A132731(n)-A132729(n)`
-/

namespace A132737.P9875619358953504980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132046 n + (A132731 n - A132729 n)

end

end A132737.P9875619358953504980

namespace A132737

/-- `A132046(n)+A132731(n)-A132729(n)` -/
def P9875619358953504980.Spec : Prop :=
  ∀ n, P9875619358953504980.a n = A132737 n

end A132737

/-! ## A132737.P9129801073982665683

`A132731(n)+A132735(n)-A132823(n)`
-/

namespace A132737.P9129801073982665683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132731 n + (A132735 n - A132823 n)

end

end A132737.P9129801073982665683

namespace A132737

/-- `A132731(n)+A132735(n)-A132823(n)` -/
def P9129801073982665683.Spec : Prop :=
  ∀ n, P9129801073982665683.a n = A132737 n

end A132737

/-! ## A132737.P13782335422861485647

`A132044(n)+A173740(n)-A103451(n)`
-/

namespace A132737.P13782335422861485647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132044 n + (A173740 n - A103451 n)

end

end A132737.P13782335422861485647

namespace A132737

/-- `A132044(n)+A173740(n)-A103451(n)` -/
def P13782335422861485647.Spec : Prop :=
  ∀ n, P13782335422861485647.a n = A132737 n

end A132737

/-! ## A132737.P11198688531171618469

`A109128(n)-(A132731(n)-A132046(n))`
-/

namespace A132737.P11198688531171618469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109128 n - (A132731 n - A132046 n)

end

end A132737.P11198688531171618469

namespace A132737

/-- `A109128(n)-(A132731(n)-A132046(n))` -/
def P11198688531171618469.Spec : Prop :=
  ∀ n, P11198688531171618469.a n = A132737 n

end A132737

/-! ## A132737.P8754895298979874257

`2*A007318(n)%A344527(n+1)+1`
-/

namespace A132737.P8754895298979874257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * Int.tmod (A007318 n) (A344527 (n + 1)) + 1

end

end A132737.P8754895298979874257

namespace A132737

/-- `2*A007318(n)%A344527(n+1)+1` -/
def P8754895298979874257.Spec : Prop :=
  ∀ n, P8754895298979874257.a n = A132737 n

end A132737

/-!
# A132738: Row sums of triangle A132737.

The programs for A132738, the canonical program `A132738.P3776136964948588543` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A132738 has offset 0).

The definition of A132738 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A132738.P3776136964948588543

`4*a(n-1)-5*a(n-2)+2*a(n-3)` with `a(0)=1, a(1)=2, a(2)=7, a(3)=16`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A132738

/-- `4*a(n-1)-5*a(n-2)+2*a(n-3)` -/
def P3776136964948588543.Spec : Prop :=
  ∀ n, P3776136964948588543.a n = A132738 n

theorem P3776136964948588543.correct : P3776136964948588543.Spec := by
  intro n
  simp only [A132738]

end A132738

/-! ## A132738.P1769827939045639998

`∑[or(3, 2^n)-2]`
-/

namespace A132738.P1769827939045639998
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.lor 3 (2 ^ n) : ℤ) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A132738.P1769827939045639998

namespace A132738

/-- `∑[or(3, 2^n)-2]` -/
def P1769827939045639998.Spec : Prop :=
  ∀ n, P1769827939045639998.a n = A132738 n

end A132738

/-! ## A132738.P13838459617865423807

`∑[xor(2, or(3, 2^n))]`
-/

namespace A132738.P13838459617865423807
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 2 (Nat.lor 3 (2 ^ n))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A132738.P13838459617865423807

namespace A132738

/-- `∑[xor(2, or(3, 2^n))]` -/
def P13838459617865423807.Spec : Prop :=
  ∀ n, (P13838459617865423807.a n : ℤ) = A132738 n

end A132738

/-! ## A132738.P3777693245486817660

`abs(∑[2^n]+n-2)`
-/

namespace A132738.P3777693245486817660
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) + ((n : ℤ) - 2)|

end

end A132738.P3777693245486817660

namespace A132738

/-- `abs(∑[2^n]+n-2)` -/
def P3777693245486817660.Spec : Prop :=
  ∀ n, P3777693245486817660.a n = A132738 n

end A132738

/-! ## A132738.P11097351981847922029

`∑[and(-3, 2^n)]+n`
-/

namespace A132738.P11097351981847922029
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-3) (2 ^ n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)

end

end A132738.P11097351981847922029

namespace A132738

/-- `∑[and(-3, 2^n)]+n` -/
def P11097351981847922029.Spec : Prop :=
  ∀ n, P11097351981847922029.a n = A132738 n

end A132738

/-! ## A132738.P9117331405141836351

`n-or(3, -2^(n+1))`
-/

namespace A132738.P9117331405141836351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - Int.lor 3 (-(2 ^ (n + 1) : ℤ))

end

end A132738.P9117331405141836351

namespace A132738

/-- `n-or(3, -2^(n+1))` -/
def P9117331405141836351.Spec : Prop :=
  ∀ n, P9117331405141836351.a n = A132738 n

end A132738

/-! ## A132738.P8530871163461822394

`∑[or(1, (2%(n+1))^n)]`
-/

namespace A132738.P8530871163461822394
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 ((2 % (n + 1)) ^ n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A132738.P8530871163461822394

namespace A132738

/-- `∑[or(1, (2%(n+1))^n)]` -/
def P8530871163461822394.Spec : Prop :=
  ∀ n, (P8530871163461822394.a n : ℤ) = A132738 n

end A132738

/-! ## A132738.P14435636955946000868

`∑[ogf((1-2x+4x^2)/(1-2x))]+n`
-/

namespace A132738.P14435636955946000868
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -2, 4] [1, -2] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)

end

end A132738.P14435636955946000868

namespace A132738

/-- `∑[ogf((1-2x+4x^2)/(1-2x))]+n` -/
def P14435636955946000868.Spec : Prop :=
  ∀ n, P14435636955946000868.a n = A132738 n

end A132738

/-! ## A132738.P11919554339398332862

`∑[ogf((1-2x+4x^2-4x^3)/(1-3x+2x^2))]`
-/

namespace A132738.P11919554339398332862
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -2, 4, -4] [1, -3, 2] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A132738.P11919554339398332862

namespace A132738

/-- `∑[ogf((1-2x+4x^2-4x^3)/(1-3x+2x^2))]` -/
def P11919554339398332862.Spec : Prop :=
  ∀ n, P11919554339398332862.a n = A132738 n

end A132738

/-! ## A132738.P3987733487548606922

`ogf((1-2x+4x^2-4x^3)/(1-4x+5x^2-2x^3))`
-/

namespace A132738.P3987733487548606922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -2, 4, -4] [1, -4, 5, -2] n

end

end A132738.P3987733487548606922

namespace A132738

/-- `ogf((1-2x+4x^2-4x^3)/(1-4x+5x^2-2x^3))` -/
def P3987733487548606922.Spec : Prop :=
  ∀ n, P3987733487548606922.a n = A132738 n

end A132738

/-! ## A132738.P3081633804511472151

`lcm(4, 2^(n+1))+n-3`
-/

namespace A132738.P3081633804511472151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.lcm 4 (2 ^ (n + 1)) : ℤ) + ((n : ℤ) - 3)

end

end A132738.P3081633804511472151

namespace A132738

/-- `lcm(4, 2^(n+1))+n-3` -/
def P3081633804511472151.Spec : Prop :=
  ∀ n, P3081633804511472151.a n = A132738 n

end A132738

/-! ## A132738.P2282443555575718466

`∑[2*a(n-1)-1]` with `a(0)=1, a(1)=1, a(2)=5`
-/

namespace A132738.P2282443555575718466
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 5] fun n f1 =>
  2 * f1 (n - 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A132738.P2282443555575718466

namespace A132738

/-- `∑[2*a(n-1)-1]` -/
def P2282443555575718466.Spec : Prop :=
  ∀ n, P2282443555575718466.a n = A132738 n

end A132738

/-! ## A132738.P7780213290287247961

`2*a(n-1)+5-n` with `a(0)=1, a(1)=2`
-/

namespace A132738.P7780213290287247961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  2 * a (n - 1) + (5 - (n : ℤ))

end

end A132738.P7780213290287247961

namespace A132738

/-- `2*a(n-1)+5-n` -/
def P7780213290287247961.Spec : Prop :=
  ∀ n, P7780213290287247961.a n = A132738 n

end A132738

/-! ## A132738.P13090835692420569395

`2^n+a(n-1)+1` with `a(0)=1, a(1)=2`
-/

namespace A132738.P13090835692420569395
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2] fun n a =>
  2 ^ n + (a (n - 1) + 1)

end

end A132738.P13090835692420569395

namespace A132738

/-- `2^n+a(n-1)+1` -/
def P13090835692420569395.Spec : Prop :=
  ∀ n, (P13090835692420569395.a n : ℤ) = A132738 n

end A132738

/-! ## A132738.P8155345289660962406

`5-(n-2*a(n-1))` with `a(0)=1, a(1)=2`
-/

namespace A132738.P8155345289660962406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  5 - ((n : ℤ) - 2 * a (n - 1))

end

end A132738.P8155345289660962406

namespace A132738

/-- `5-(n-2*a(n-1))` -/
def P8155345289660962406.Spec : Prop :=
  ∀ n, P8155345289660962406.a n = A132738 n

end A132738

/-! ## A132738.P18416377410644591890

`abs(xor(n-1, 2^(n+1)))-2`
-/

namespace A132738.P18416377410644591890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.xor ((n : ℤ) - 1) (2 ^ (n + 1) : ℤ)| - 2

end

end A132738.P18416377410644591890

namespace A132738

/-- `abs(xor(n-1, 2^(n+1)))-2` -/
def P18416377410644591890.Spec : Prop :=
  ∀ n, P18416377410644591890.a n = A132738 n

end A132738

/-! ## A132738.P16804630289580133804

`∑[2^n]+(n-2)%(n+1)`
-/

namespace A132738.P16804630289580133804
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) + Int.tmod ((n : ℤ) - 2) (n + 1 : ℤ)

end

end A132738.P16804630289580133804

namespace A132738

/-- `∑[2^n]+(n-2)%(n+1)` -/
def P16804630289580133804.Spec : Prop :=
  ∀ n, P16804630289580133804.a n = A132738 n

end A132738

/-! ## A132738.P4846119968452926416

`or(n-3, abs(3-n))+2^(n+1)`
-/

namespace A132738.P4846119968452926416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((n : ℤ) - 3) |3 - (n : ℤ)| + (2 ^ (n + 1) : ℤ)

end

end A132738.P4846119968452926416

namespace A132738

/-- `or(n-3, abs(3-n))+2^(n+1)` -/
def P4846119968452926416.Spec : Prop :=
  ∀ n, P4846119968452926416.a n = A132738 n

end A132738

/-! ## A132738.P461021615635012137

`∑[a(n-1)+a(n-1)-1]` with `a(0)=1, a(1)=1, a(2)=5`
-/

namespace A132738.P461021615635012137
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 5] fun n f1 =>
  f1 (n - 1) + (f1 (n - 1) - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A132738.P461021615635012137

namespace A132738

/-- `∑[a(n-1)+a(n-1)-1]` -/
def P461021615635012137.Spec : Prop :=
  ∀ n, P461021615635012137.a n = A132738 n

end A132738

/-! ## A132738.P15572852258944800640

`∑[a(n-1)-(1-a(n-1))]` with `a(0)=1, a(1)=1, a(2)=5`
-/

namespace A132738.P15572852258944800640
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 5] fun n f1 =>
  f1 (n - 1) - (1 - f1 (n - 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A132738.P15572852258944800640

namespace A132738

/-- `∑[a(n-1)-(1-a(n-1))]` -/
def P15572852258944800640.Spec : Prop :=
  ∀ n, P15572852258944800640.a n = A132738 n

end A132738

/-!
# A132739: Largest divisor of n not divisible by 5.

The programs for A132739, the canonical program `A132739.P5094559636151163061` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A132739 has offset 1).

The definition of A132739 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A132739.P5094559636151163061

`(n+1)/5^val(n+1, 5)`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A132739

/-- `(n+1)/5^val(n+1, 5)` -/
def P5094559636151163061.Spec : Prop :=
  ∀ n, P5094559636151163061.a n = (A132739 (n + 1) : ℚ)

end A132739

/-! ## A132739.P17962427653946164307

`(n+1)/A060904(n+1)`
-/

namespace A132739.P17962427653946164307
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A060904 (n + 1) : ℚ)

end

end A132739.P17962427653946164307

namespace A132739

/-- `(n+1)/A060904(n+1)` -/
def P17962427653946164307.Spec : Prop :=
  ∀ n, P17962427653946164307.a n = (A132739 (n + 1) : ℚ)

end A132739

/-! ## A132739.P1814986335173023603

`(n+1)/5^A112765(n+1)`
-/

namespace A132739.P1814986335173023603
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (5 : ℚ) ^ (A112765 (n + 1) : ℤ)

end

end A132739.P1814986335173023603

namespace A132739

/-- `(n+1)/5^A112765(n+1)` -/
def P1814986335173023603.Spec : Prop :=
  ∀ n, P1814986335173023603.a n = (A132739 (n + 1) : ℚ)

end A132739

/-! ## A132739.P13453848258489265029

`(n+1)*5^-val(n+1, 5)`
-/

namespace A132739.P13453848258489265029
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) * (5 : ℚ) ^ (-(SequenceMachineLib.valuation (n + 1) 5 : ℤ) : ℤ)

end

end A132739.P13453848258489265029

namespace A132739

/-- `(n+1)*5^-val(n+1, 5)` -/
def P13453848258489265029.Spec : Prop :=
  ∀ n, P13453848258489265029.a n = (A132739 (n + 1) : ℚ)

end A132739

/-! ## A132739.P5865794581485745256

`gcd(n+1, A359100(n+1))`
-/

namespace A132739.P5865794581485745256
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A359100 (n + 1))

end

end A132739.P5865794581485745256

namespace A132739

/-- `gcd(n+1, A359100(n+1))` -/
def P5865794581485745256.Spec : Prop :=
  ∀ n, (P5865794581485745256.a n : ℤ) = A132739 (n + 1)

end A132739

/-! ## A132739.P3087822420341571408

`A264995(n+1-A055951(n+1))`
-/

namespace A132739.P3087822420341571408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264995 ((n + 1 : ℤ) - A055951 (n + 1)).toNat

end

end A132739.P3087822420341571408

namespace A132739

/-- `A264995(n+1-A055951(n+1))` -/
def P3087822420341571408.Spec : Prop :=
  ∀ n, P3087822420341571408.a n = A132739 (n + 1)

end A132739

/-! ## A132739.P15732351737251730838

`A264995(A055950(n+1)-(n+1))`
-/

namespace A132739.P15732351737251730838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264995 (A055950 (n + 1) - (n + 1 : ℤ)).toNat

end

end A132739.P15732351737251730838

namespace A132739

/-- `A264995(A055950(n+1)-(n+1))` -/
def P15732351737251730838.Spec : Prop :=
  ∀ n, P15732351737251730838.a n = A132739 (n + 1)

end A132739

/-! ## A132739.P2744757510597666871

`A006519(n+1)*A132740(n+1)`
-/

namespace A132739.P2744757510597666871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006519 (n + 1) * A132740 (n + 1)

end

end A132739.P2744757510597666871

namespace A132739

/-- `A006519(n+1)*A132740(n+1)` -/
def P2744757510597666871.Spec : Prop :=
  ∀ n, P2744757510597666871.a n = A132739 (n + 1)

end A132739

/-! ## A132739.P17567009043906706144

`A065331(n+1)*A165725(n+1)`
-/

namespace A132739.P17567009043906706144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065331 (n + 1) * A165725 (n + 1)

end

end A132739.P17567009043906706144

namespace A132739

/-- `A065331(n+1)*A165725(n+1)` -/
def P17567009043906706144.Spec : Prop :=
  ∀ n, P17567009043906706144.a n = A132739 (n + 1)

end A132739

/-! ## A132739.P2302522259649620799

`(n+1)/A132741(A000265(n+1))`
-/

namespace A132739.P2302522259649620799
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A132741 (A000265 (n + 1)).toNat : ℚ)

end

end A132739.P2302522259649620799

namespace A132739

/-- `(n+1)/A132741(A000265(n+1))` -/
def P2302522259649620799.Spec : Prop :=
  ∀ n, P2302522259649620799.a n = (A132739 (n + 1) : ℚ)

end A132739

/-! ## A132739.P15767375425281354501

`(n+1)/A355582(A065330(n+1))`
-/

namespace A132739.P15767375425281354501
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A355582 (A065330 (n + 1)).toNat : ℚ)

end

end A132739.P15767375425281354501

namespace A132739

/-- `(n+1)/A355582(A065330(n+1))` -/
def P15767375425281354501.Spec : Prop :=
  ∀ n, P15767375425281354501.a n = (A132739 (n + 1) : ℚ)

end A132739

/-! ## A132739.P12858194429007820769

`(n+1)/A343431(A132741(n+1))`
-/

namespace A132739.P12858194429007820769
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A343431 (A132741 (n + 1)).toNat : ℚ)

end

end A132739.P12858194429007820769

namespace A132739

/-- `(n+1)/A343431(A132741(n+1))` -/
def P12858194429007820769.Spec : Prop :=
  ∀ n, P12858194429007820769.a n = (A132739 (n + 1) : ℚ)

end A132739

/-! ## A132739.P15119477250366845618

`(n+1)/A355582(A170818(n+1))`
-/

namespace A132739.P15119477250366845618
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A355582 (A170818 (n + 1)).toNat : ℚ)

end

end A132739.P15119477250366845618

namespace A132739

/-- `(n+1)/A355582(A170818(n+1))` -/
def P15119477250366845618.Spec : Prop :=
  ∀ n, P15119477250366845618.a n = (A132739 (n + 1) : ℚ)

end A132739

/-! ## A132739.P7068624251331556539

`(n+1)/A355582(A343431(n+1))`
-/

namespace A132739.P7068624251331556539
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A355582 (A343431 (n + 1)).toNat : ℚ)

end

end A132739.P7068624251331556539

namespace A132739

/-- `(n+1)/A355582(A343431(n+1))` -/
def P7068624251331556539.Spec : Prop :=
  ∀ n, P7068624251331556539.a n = (A132739 (n + 1) : ℚ)

end A132739

/-! ## A132739.P11440028334028509271

`lcm(A055975(n+1), A132740(n+1))`
-/

namespace A132739.P11440028334028509271
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A055975 (n + 1)) (A132740 (n + 1))

end

end A132739.P11440028334028509271

namespace A132739

/-- `lcm(A055975(n+1), A132740(n+1))` -/
def P11440028334028509271.Spec : Prop :=
  ∀ n, (P11440028334028509271.a n : ℤ) = A132739 (n + 1)

end A132739

/-! ## A132739.P3139377950902385695

`lcm(A072438(n+1), A165725(n+1))`
-/

namespace A132739.P3139377950902385695
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A072438 (n + 1)) (A165725 (n + 1))

end

end A132739.P3139377950902385695

namespace A132739

/-- `lcm(A072438(n+1), A165725(n+1))` -/
def P3139377950902385695.Spec : Prop :=
  ∀ n, (P3139377950902385695.a n : ℤ) = A132739 (n + 1)

end A132739

/-! ## A132739.P158399538067039309

`∑{d}[n+1, A023900(#)*A368741((n+1)/#)]`
-/

namespace A132739.P158399538067039309
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A023900 d * A368741 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A132739.P158399538067039309

namespace A132739

/-- `∑{d}[n+1, A023900(#)*A368741((n+1)/#)]` -/
def P158399538067039309.Spec : Prop :=
  ∀ n, P158399538067039309.a n = A132739 (n + 1)

end A132739

/-! ## A132739.P16109673910633439587

`A264995(A030104(n+1))`
-/

namespace A132739.P16109673910633439587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264995 (A030104 (n + 1)).toNat

end

end A132739.P16109673910633439587

namespace A132739

/-- `A264995(A030104(n+1))` -/
def P16109673910633439587.Spec : Prop :=
  ∀ n, P16109673910633439587.a n = A132739 (n + 1)

end A132739

/-! ## A132739.P11754343256364210619

`(n+1)/A132741(A161151(2*n+1))`
-/

namespace A132739.P11754343256364210619
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A132741 (A161151 (2 * n + 1)).toNat : ℚ)

end

end A132739.P11754343256364210619

namespace A132739

/-- `(n+1)/A132741(A161151(2*n+1))` -/
def P11754343256364210619.Spec : Prop :=
  ∀ n, P11754343256364210619.a n = (A132739 (n + 1) : ℚ)

end A132739

/-! ## A132739.P13665280314674921

`A030104(A030104(n+1)+A000038(n+1))`
-/

namespace A132739.P13665280314674921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030104 (A030104 (n + 1) + A000038 (n + 1)).toNat

end

end A132739.P13665280314674921

namespace A132739

/-- `A030104(A030104(n+1)+A000038(n+1))` -/
def P13665280314674921.Spec : Prop :=
  ∀ n, P13665280314674921.a n = A132739 (n + 1)

end A132739

/-!
# A132740: Largest divisor of n coprime to 10.

The programs for A132740, the canonical program `A132740.P2204999059884889025` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A132740 has offset 1).

The definition of A132740 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A132740.P2204999059884889025

`(n+1)/A132741(n+1)`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A132740

/-- `(n+1)/A132741(n+1)` -/
def P2204999059884889025.Spec : Prop :=
  ∀ n, P2204999059884889025.a n = (A132740 (n + 1) : ℚ)

end A132740

/-! ## A132740.P13486017400876779825

`A132739(A000265(n+1))`
-/

namespace A132740.P13486017400876779825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132739 (A000265 (n + 1)).toNat

end

end A132740.P13486017400876779825

namespace A132740

/-- `A132739(A000265(n+1))` -/
def P13486017400876779825.Spec : Prop :=
  ∀ n, P13486017400876779825.a n = A132740 (n + 1)

end A132740

/-! ## A132740.P9811269749318344771

`(n+1)/(2^val(n+1, 2)*5^val(n+1, 5))`
-/

namespace A132740.P9811269749318344771
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (2 ^ SequenceMachineLib.valuation (n + 1) 2 * 5 ^ SequenceMachineLib.valuation (n + 1) 5 : ℚ)

end

end A132740.P9811269749318344771

namespace A132740

/-- `(n+1)/(2^val(n+1, 2)*5^val(n+1, 5))` -/
def P9811269749318344771.Spec : Prop :=
  ∀ n, P9811269749318344771.a n = (A132740 (n + 1) : ℚ)

end A132740

/-! ## A132740.P2061007243292624155

`floor((n+1)/2^val(n+1, 2))/5^val(n+1, 5)`
-/

namespace A132740.P2061007243292624155
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (⌊(n + 1 : ℚ) / (2 ^ SequenceMachineLib.valuation (n + 1) 2 : ℚ)⌋ : ℚ) / (5 ^ SequenceMachineLib.valuation (n + 1) 5 : ℚ)

end

end A132740.P2061007243292624155

namespace A132740

/-- `floor((n+1)/2^val(n+1, 2))/5^val(n+1, 5)` -/
def P2061007243292624155.Spec : Prop :=
  ∀ n, P2061007243292624155.a n = (A132740 (n + 1) : ℚ)

end A132740

/-! ## A132740.P17239461260223388350

`ceil((n+1)/2^val(n+1, 2))/5^val(n+1, 5)`
-/

namespace A132740.P17239461260223388350
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (⌈(n + 1 : ℚ) / (2 ^ SequenceMachineLib.valuation (n + 1) 2 : ℚ)⌉ : ℚ) / (5 ^ SequenceMachineLib.valuation (n + 1) 5 : ℚ)

end

end A132740.P17239461260223388350

namespace A132740

/-- `ceil((n+1)/2^val(n+1, 2))/5^val(n+1, 5)` -/
def P17239461260223388350.Spec : Prop :=
  ∀ n, P17239461260223388350.a n = (A132740 (n + 1) : ℚ)

end A132740

/-! ## A132740.P4709710068020312566

`round((n+1)/2^val(n+1, 2))/5^val(n+1, 5)`
-/

namespace A132740.P4709710068020312566
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (2 ^ SequenceMachineLib.valuation (n + 1) 2 : ℚ)) : ℚ) / (5 ^ SequenceMachineLib.valuation (n + 1) 5 : ℚ)

end

end A132740.P4709710068020312566

namespace A132740

/-- `round((n+1)/2^val(n+1, 2))/5^val(n+1, 5)` -/
def P4709710068020312566.Spec : Prop :=
  ∀ n, P4709710068020312566.a n = (A132740 (n + 1) : ℚ)

end A132740

/-! ## A132740.P13226910137696048063

`A132739(floor(n/2^val(n+1, 2))+1)`
-/

namespace A132740.P13226910137696048063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132739 (⌊(n : ℚ) / (2 ^ SequenceMachineLib.valuation (n + 1) 2 : ℚ)⌋ + 1).toNat

end

end A132740.P13226910137696048063

namespace A132740

/-- `A132739(floor(n/2^val(n+1, 2))+1)` -/
def P13226910137696048063.Spec : Prop :=
  ∀ n, P13226910137696048063.a n = A132740 (n + 1)

end A132740

/-! ## A132740.P18314633574973533457

`A132739((n+1)/and(n+1, -(n+1)))`
-/

namespace A132740.P18314633574973533457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132739 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (Int.land (n + 1 : ℤ) (-(n + 1 : ℤ)) : ℚ))).toNat

end

end A132740.P18314633574973533457

namespace A132740

/-- `A132739((n+1)/and(n+1, -(n+1)))` -/
def P18314633574973533457.Spec : Prop :=
  ∀ n, P18314633574973533457.a n = A132740 (n + 1)

end A132740

/-! ## A132740.P158778111928257801

`A132739(or(1, floor(n/(or(n, n+1)-n))))`
-/

namespace A132740.P158778111928257801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132739 (Int.lor 1 ⌊(n : ℚ) / ((Nat.lor n (n + 1) : ℤ) - (n : ℤ) : ℚ)⌋).toNat

end

end A132740.P158778111928257801

namespace A132740

/-- `A132739(or(1, floor(n/(or(n, n+1)-n))))` -/
def P158778111928257801.Spec : Prop :=
  ∀ n, P158778111928257801.a n = A132740 (n + 1)

end A132740

/-! ## A132740.P8536633555577385596

`A132739(xor(1, floor(n/(1-and(n, n+1)+n))))`
-/

namespace A132740.P8536633555577385596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132739 (Int.xor 1 ⌊(n : ℚ) / (1 - (Nat.land n (n + 1) : ℤ) + (n : ℤ) : ℚ)⌋).toNat

end

end A132740.P8536633555577385596

namespace A132740

/-- `A132739(xor(1, floor(n/(1-and(n, n+1)+n))))` -/
def P8536633555577385596.Spec : Prop :=
  ∀ n, P8536633555577385596.a n = A132740 (n + 1)

end A132740

/-! ## A132740.P10828713771706200518

`A132739(or(1, (n+1)/(n+1-and(n, n+1))))`
-/

namespace A132740.P10828713771706200518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132739 (Int.lor 1 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / ((n + 1 : ℤ) - (Nat.land n (n + 1) : ℤ) : ℚ)))).toNat

end

end A132740.P10828713771706200518

namespace A132740

/-- `A132739(or(1, (n+1)/(n+1-and(n, n+1))))` -/
def P10828713771706200518.Spec : Prop :=
  ∀ n, P10828713771706200518.a n = A132740 (n + 1)

end A132740

/-! ## A132740.P16762324480187633011

`A045572(A379003(n+1))`
-/

namespace A132740.P16762324480187633011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045572 (A379003 (n + 1)).toNat

end

end A132740.P16762324480187633011

namespace A132740

/-- `A045572(A379003(n+1))` -/
def P16762324480187633011.Spec : Prop :=
  ∀ n, P16762324480187633011.a n = A132740 (n + 1)

end A132740

/-! ## A132740.P1244669961817604570

`A132739(2*A025480(n)+1)`
-/

namespace A132740.P1244669961817604570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132739 (2 * A025480 n + 1).toNat

end

end A132740.P1244669961817604570

namespace A132740

/-- `A132739(2*A025480(n)+1)` -/
def P1244669961817604570.Spec : Prop :=
  ∀ n, P1244669961817604570.a n = A132740 (n + 1)

end A132740

/-! ## A132740.P4935929428588313361

`or(1, A322250(A132739(n+1)))`
-/

namespace A132740.P4935929428588313361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A322250 (A132739 (n + 1)).toNat)

end

end A132740.P4935929428588313361

namespace A132740

/-- `or(1, A322250(A132739(n+1)))` -/
def P4935929428588313361.Spec : Prop :=
  ∀ n, P4935929428588313361.a n = A132740 (n + 1)

end A132740

/-! ## A132740.P12758373228921445345

`A132739(2*A003602(n+1)-1)`
-/

namespace A132740.P12758373228921445345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132739 (2 * A003602 (n + 1) - 1).toNat

end

end A132740.P12758373228921445345

namespace A132740

/-- `A132739(2*A003602(n+1)-1)` -/
def P12758373228921445345.Spec : Prop :=
  ∀ n, P12758373228921445345.a n = A132740 (n + 1)

end A132740

/-! ## A132740.P14040513029188107714

`A038500(n+1)*A165725(n+1)`
-/

namespace A132740.P14040513029188107714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038500 (n + 1) * A165725 (n + 1)

end

end A132740.P14040513029188107714

namespace A132740

/-- `A038500(n+1)*A165725(n+1)` -/
def P14040513029188107714.Spec : Prop :=
  ∀ n, P14040513029188107714.a n = A132740 (n + 1)

end A132740

/-! ## A132740.P14773751524268080553

`A000265((n+1)/A060904(n+1))`
-/

namespace A132740.P14773751524268080553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A060904 (n + 1) : ℚ))).toNat

end

end A132740.P14773751524268080553

namespace A132740

/-- `A000265((n+1)/A060904(n+1))` -/
def P14773751524268080553.Spec : Prop :=
  ∀ n, P14773751524268080553.a n = A132740 (n + 1)

end A132740

/-! ## A132740.P8639358209758833866

`A132739((n+1)/A006519(n+1))`
-/

namespace A132740.P8639358209758833866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132739 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A006519 (n + 1) : ℚ))).toNat

end

end A132740.P8639358209758833866

namespace A132740

/-- `A132739((n+1)/A006519(n+1))` -/
def P8639358209758833866.Spec : Prop :=
  ∀ n, P8639358209758833866.a n = A132740 (n + 1)

end A132740

/-! ## A132740.P7836546378796842453

`(n+1)/A355582(A038502(n+1))`
-/

namespace A132740.P7836546378796842453
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A355582 (A038502 (n + 1)).toNat : ℚ)

end

end A132740.P7836546378796842453

namespace A132740

/-- `(n+1)/A355582(A038502(n+1))` -/
def P7836546378796842453.Spec : Prop :=
  ∀ n, P7836546378796842453.a n = (A132740 (n + 1) : ℚ)

end A132740

/-! ## A132740.P9113136557303408964

`(n+1)/A355582(A072436(n+1))`
-/

namespace A132740.P9113136557303408964
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A355582 (A072436 (n + 1)).toNat : ℚ)

end

end A132740.P9113136557303408964

namespace A132740

/-- `(n+1)/A355582(A072436(n+1))` -/
def P9113136557303408964.Spec : Prop :=
  ∀ n, P9113136557303408964.a n = (A132740 (n + 1) : ℚ)

end A132740

/-!
# A132741: Largest divisor of n having the form 2^i*5^j.

The programs for A132741, the canonical program `A132741.P5410821295142061741` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A132741 has offset 1).

The definition of A132741 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A132741.P8415982089161717340

`(n+1)/A132740(n+1)`
-/

namespace A132741.P8415982089161717340
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A132740 (n + 1) : ℚ)

end

end A132741.P8415982089161717340

namespace A132741

/-- `(n+1)/A132740(n+1)` -/
def P8415982089161717340.Spec : Prop :=
  ∀ n, P8415982089161717340.a n = (A132741 (n + 1) : ℚ)

end A132741

/-! ## A132741.P6704297588060183031

`A006519(n+1)*A060904(n+1)`
-/

namespace A132741.P6704297588060183031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006519 (n + 1) * A060904 (n + 1)

end

end A132741.P6704297588060183031

namespace A132741

/-- `A006519(n+1)*A060904(n+1)` -/
def P6704297588060183031.Spec : Prop :=
  ∀ n, P6704297588060183031.a n = A132741 (n + 1)

end A132741

/-! ## A132741.P5410821295142061741

`2^A007814(n+1)*5^A112765(n+1)`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A132741

/-- `2^A007814(n+1)*5^A112765(n+1)` -/
def P5410821295142061741.Spec : Prop :=
  ∀ n, P5410821295142061741.a n = (A132741 (n + 1) : ℚ)

end A132741

/-! ## A132741.P6055811279154462132

`gcd(n+1, (9-n)^13)`
-/

namespace A132741.P6055811279154462132
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) ((9 - (n : ℤ)) ^ 13)

end

end A132741.P6055811279154462132

namespace A132741

/-- `gcd(n+1, (9-n)^13)` -/
def P6055811279154462132.Spec : Prop :=
  ∀ n, (P6055811279154462132.a n : ℤ) = A132741 (n + 1)

end A132741

/-! ## A132741.P17074959185183385451

`2^val(n+1, 2)*5^val(n+1, 5)`
-/

namespace A132741.P17074959185183385451
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ SequenceMachineLib.valuation (n + 1) 2 * 5 ^ SequenceMachineLib.valuation (n + 1) 5

end

end A132741.P17074959185183385451

namespace A132741

/-- `2^val(n+1, 2)*5^val(n+1, 5)` -/
def P17074959185183385451.Spec : Prop :=
  ∀ n, (P17074959185183385451.a n : ℤ) = A132741 (n + 1)

end A132741

/-! ## A132741.P9898277524246544609

`lcm(2^val(n+1, 2), 5^val(n+1, 5))`
-/

namespace A132741.P9898277524246544609
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm (2 ^ SequenceMachineLib.valuation (n + 1) 2) (5 ^ SequenceMachineLib.valuation (n + 1) 5)

end

end A132741.P9898277524246544609

namespace A132741

/-- `lcm(2^val(n+1, 2), 5^val(n+1, 5))` -/
def P9898277524246544609.Spec : Prop :=
  ∀ n, (P9898277524246544609.a n : ℤ) = A132741 (n + 1)

end A132741

/-! ## A132741.P8791345505488941479

`(n+1)/ceil(floor((n+1)/2^val(n+1, 2))/5^val(n+1, 5))`
-/

namespace A132741.P8791345505488941479
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (⌈(⌊(n + 1 : ℚ) / (2 ^ SequenceMachineLib.valuation (n + 1) 2 : ℚ)⌋ : ℚ) / (5 ^ SequenceMachineLib.valuation (n + 1) 5 : ℚ)⌉ : ℚ)

end

end A132741.P8791345505488941479

namespace A132741

/-- `(n+1)/ceil(floor((n+1)/2^val(n+1, 2))/5^val(n+1, 5))` -/
def P8791345505488941479.Spec : Prop :=
  ∀ n, P8791345505488941479.a n = (A132741 (n + 1) : ℚ)

end A132741

/-! ## A132741.P11630380331848676445

`∏{d}[n+1, gcd(10, A014963(#))]`
-/

namespace A132741.P11630380331848676445
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n), Int.gcd 10 (A014963 d)

end

end A132741.P11630380331848676445

namespace A132741

/-- `∏{d}[n+1, gcd(10, A014963(#))]` -/
def P11630380331848676445.Spec : Prop :=
  ∀ n, (P11630380331848676445.a n : ℤ) = A132741 (n + 1)

end A132741

/-! ## A132741.P17980870543119838911

`A003592(A379004(n+1))`
-/

namespace A132741.P17980870543119838911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003592 (A379004 (n + 1)).toNat

end

end A132741.P17980870543119838911

namespace A132741

/-- `A003592(A379004(n+1))` -/
def P17980870543119838911.Spec : Prop :=
  ∀ n, P17980870543119838911.a n = A132741 (n + 1)

end A132741

/-! ## A132741.P15112934381505059460

`A355582(A038502(n+1))`
-/

namespace A132741.P15112934381505059460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355582 (A038502 (n + 1)).toNat

end

end A132741.P15112934381505059460

namespace A132741

/-- `A355582(A038502(n+1))` -/
def P15112934381505059460.Spec : Prop :=
  ∀ n, P15112934381505059460.a n = A132741 (n + 1)

end A132741

/-! ## A132741.P10150391051334691711

`A072012(A355582(n+1))`
-/

namespace A132741.P10150391051334691711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072012 (A355582 (n + 1)).toNat

end

end A132741.P10150391051334691711

namespace A132741

/-- `A072012(A355582(n+1))` -/
def P10150391051334691711.Spec : Prop :=
  ∀ n, P10150391051334691711.a n = A132741 (n + 1)

end A132741

/-! ## A132741.P1888154330578068249

`A355582(A072436(n+1))`
-/

namespace A132741.P1888154330578068249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355582 (A072436 (n + 1)).toNat

end

end A132741.P1888154330578068249

namespace A132741

/-- `A355582(A072436(n+1))` -/
def P1888154330578068249.Spec : Prop :=
  ∀ n, P1888154330578068249.a n = A132741 (n + 1)

end A132741

/-! ## A132741.P17750663180268629913

`A072436(A392597(n+1))`
-/

namespace A132741.P17750663180268629913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072436 (A392597 (n + 1)).toNat

end

end A132741.P17750663180268629913

namespace A132741

/-- `A072436(A392597(n+1))` -/
def P17750663180268629913.Spec : Prop :=
  ∀ n, P17750663180268629913.a n = A132741 (n + 1)

end A132741

/-! ## A132741.P2439735914609810317

`A072436(A392598(n+1))`
-/

namespace A132741.P2439735914609810317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072436 (A392598 (n + 1)).toNat

end

end A132741.P2439735914609810317

namespace A132741

/-- `A072436(A392598(n+1))` -/
def P2439735914609810317.Spec : Prop :=
  ∀ n, P2439735914609810317.a n = A132741 (n + 1)

end A132741

/-! ## A132741.P5893309206100043939

`A355582(A247503(n+1))`
-/

namespace A132741.P5893309206100043939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355582 (A247503 (n + 1)).toNat

end

end A132741.P5893309206100043939

namespace A132741

/-- `A355582(A247503(n+1))` -/
def P5893309206100043939.Spec : Prop :=
  ∀ n, P5893309206100043939.a n = A132741 (n + 1)

end A132741

/-! ## A132741.P12439519457272936465

`A355582(A343430(n+1))`
-/

namespace A132741.P12439519457272936465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355582 (A343430 (n + 1)).toNat

end

end A132741.P12439519457272936465

namespace A132741

/-- `A355582(A343430(n+1))` -/
def P12439519457272936465.Spec : Prop :=
  ∀ n, P12439519457272936465.a n = A132741 (n + 1)

end A132741

/-! ## A132741.P5797362413412592001

`(n+1)/A132739(A000265(n+1))`
-/

namespace A132741.P5797362413412592001
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A132739 (A000265 (n + 1)).toNat : ℚ)

end

end A132741.P5797362413412592001

namespace A132741

/-- `(n+1)/A132739(A000265(n+1))` -/
def P5797362413412592001.Spec : Prop :=
  ∀ n, P5797362413412592001.a n = (A132741 (n + 1) : ℚ)

end A132741

/-! ## A132741.P5221616610655749799

`A038502((n+1)/A165725(n+1))`
-/

namespace A132741.P5221616610655749799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038502 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A165725 (n + 1) : ℚ))).toNat

end

end A132741.P5221616610655749799

namespace A132741

/-- `A038502((n+1)/A165725(n+1))` -/
def P5221616610655749799.Spec : Prop :=
  ∀ n, P5221616610655749799.a n = A132741 (n + 1)

end A132741

/-! ## A132741.P3483175123117970825

`A355582((n+1)/A038500(n+1))`
-/

namespace A132741.P3483175123117970825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355582 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A038500 (n + 1) : ℚ))).toNat

end

end A132741.P3483175123117970825

namespace A132741

/-- `A355582((n+1)/A038500(n+1))` -/
def P3483175123117970825.Spec : Prop :=
  ∀ n, P3483175123117970825.a n = A132741 (n + 1)

end A132741

/-! ## A132741.P11910473816722650318

`A355582((n+1)/A097706(n+1))`
-/

namespace A132741.P11910473816722650318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355582 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A097706 (n + 1) : ℚ))).toNat

end

end A132741.P11910473816722650318

namespace A132741

/-- `A355582((n+1)/A097706(n+1))` -/
def P11910473816722650318.Spec : Prop :=
  ∀ n, P11910473816722650318.a n = A132741 (n + 1)

end A132741

/-!
# A132742: Triangle T(n,m) = 1 + ((2*n*3^m) mod 12), read by rows.

The programs for A132742, there is no canonical definition to state claims against.
-/

/-! ## A132742.P12916916664877913420

`A033489(A099627(n))%12`
-/

namespace A132742.P12916916664877913420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A033489 (A099627 n).toNat) 12

end

end A132742.P12916916664877913420

/-!
# A132745: Row sums of (A008550 formatted as a triangular array).

The programs for A132745, there is no canonical definition to state claims against.
-/

/-! ## A132745.P8584220640332179502

`A034887(A351874(n)+A261041(n))`
-/

namespace A132745.P8584220640332179502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034887 (A351874 n + A261041 n).toNat

end

end A132745.P8584220640332179502

/-! ## A132745.P12384138663523174059

`A342517(2*round(2^n/3))+and(n, floor(-(n/2)))`
-/

namespace A132745.P12384138663523174059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342517 (2 * SequenceMachineLib.roundAway ((2 ^ n : ℚ) / 3)).toNat + Int.land (n : ℤ) ⌊-((n : ℚ) / 2)⌋

end

end A132745.P12384138663523174059

/-! ## A132745.P2111662715817006276

`∑[A000196(A001046(n))]`
-/

namespace A132745.P2111662715817006276
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A001046 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A132745.P2111662715817006276

/-!
# A132746: Numbers k such that prime(k) + prime(k+1) is a perfect power.

The programs for A132746, there is no canonical definition to state claims against.
-/

/-! ## A132746.P7383998721545152209

`A000720(A091624(n+1))`
-/

namespace A132746.P7383998721545152209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A091624 (n + 1)).toNat

end

end A132746.P7383998721545152209

/-! ## A132746.P4519341216353251826

`A061395(p?[A091624(n+1)])`
-/

namespace A132746.P4519341216353251826
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091624 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A132746.P4519341216353251826

/-! ## A132746.P10730748344889116143

`A000720(A245360(n+1)/2)`
-/

namespace A132746.P10730748344889116143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (SequenceMachineLib.roundAway ((A245360 (n + 1) : ℚ) / 2)).toNat

end

end A132746.P10730748344889116143

/-! ## A132746.P16767831842572712994

`A056172(A245360(n+1))`
-/

namespace A132746.P16767831842572712994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056172 (A245360 (n + 1)).toNat

end

end A132746.P16767831842572712994

/-!
# A132747: a(n) = number of non-isolated divisors of n.

The programs for A132747, there is no canonical definition to state claims against.
-/

/-! ## A132747.P18288692061363964251

`A000005(n+1)-A132881(n+1)`
-/

namespace A132747.P18288692061363964251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) - A132881 (n + 1)

end

end A132747.P18288692061363964251

/-! ## A132747.P106043780023136288

`Δ[A006218(n)]-A132881(n+1)`
-/

namespace A132747.P106043780023136288
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006218 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A132881 (n + 1)

end

end A132747.P106043780023136288

/-! ## A132747.P3137767312338173020

`A243865(n+1)+A243917(n+1)-A132881(n+1)`
-/

namespace A132747.P3137767312338173020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243865 (n + 1) + (A243917 (n + 1) - A132881 (n + 1))

end

end A132747.P3137767312338173020

/-! ## A132747.P1499765652205910904

`A001227(n+1)*A001511(n+1)-A132881(n+1)`
-/

namespace A132747.P1499765652205910904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001227 (n + 1) * A001511 (n + 1) - A132881 (n + 1)

end

end A132747.P1499765652205910904

/-! ## A132747.P11084707046034999515

`A001227(A003961(n+1))-A132881(n+1)`
-/

namespace A132747.P11084707046034999515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001227 (A003961 (n + 1)).toNat - A132881 (n + 1)

end

end A132747.P11084707046034999515

/-! ## A132747.P13530811939465007849

`ceil(sqrt(A132748(n+1)%A131847(n+1)))`
-/

namespace A132747.P13530811939465007849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (Int.tmod (A132748 (n + 1)) (A131847 (n + 1)) : ℝ)⌉

end

end A132747.P13530811939465007849

/-!
# A132748: a(n) = the sum of the positive non-isolated divisors of n.

The programs for A132748, there is no canonical definition to state claims against.
-/

/-! ## A132748.P10771849989520326142

`A000203(n+1)-A132882(n+1)`
-/

namespace A132748.P10771849989520326142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) - A132882 (n + 1)

end

end A132748.P10771849989520326142

/-! ## A132748.P13654548754546288186

`Δ[A160664(n)]-A132882(n+1)`
-/

namespace A132748.P13654548754546288186
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160664 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A132882 (n + 1)

end

end A132748.P13654548754546288186

/-! ## A132748.P13403180892841468345

`A001065(n+1)+n+1-A132882(n+1)`
-/

namespace A132748.P13403180892841468345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001065 (n + 1) + ((n + 1 : ℤ) - A132882 (n + 1))

end

end A132748.P13403180892841468345

/-! ## A132748.P161693335297803698

`A243983(n+1)+A243984(n+1)-A132882(n+1)`
-/

namespace A132748.P161693335297803698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243983 (n + 1) + (A243984 (n + 1) - A132882 (n + 1))

end

end A132748.P161693335297803698

/-! ## A132748.P16111828271105552487

`A028310(∑{d}[n+1, #])-A132882(n+1)`
-/

namespace A132748.P16111828271105552487
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (∑ d ∈ Nat.divisors (f1 n), d) - A132882 (n + 1)

end

end A132748.P16111828271105552487

/-!
# A132749: Triangle T(n,k) = binomial(n, k) with T(n, 0) = 2, read by rows.

The programs for A132749, the canonical program `A132749.P9165985344718256506` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A132749 has offset 0).

The definition of A132749 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A132749.P5503888456066343946

`ceil(A132752(n)/2)`
-/

namespace A132749.P5503888456066343946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A132752 n : ℚ) / 2⌉

end

end A132749.P5503888456066343946

namespace A132749

/-- `ceil(A132752(n)/2)` -/
def P5503888456066343946.Spec : Prop :=
  ∀ n, P5503888456066343946.a n = A132749 n

end A132749

/-! ## A132749.P7753277331505521585

`char[∑[n+1]]+A007318(n)`
-/

namespace A132749.P7753277331505521585
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) + A007318 n

end

end A132749.P7753277331505521585

namespace A132749

/-- `char[∑[n+1]]+A007318(n)` -/
def P7753277331505521585.Spec : Prop :=
  ∀ n, P7753277331505521585.a n = A132749 n

end A132749

/-! ## A132749.P4798491759485988568

`char[∑[n+1]]+ceil(A134059(n)/3)`
-/

namespace A132749.P4798491759485988568
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) + ⌈(A134059 n : ℚ) / 3⌉

end

end A132749.P4798491759485988568

namespace A132749

/-- `char[∑[n+1]]+ceil(A134059(n)/3)` -/
def P4798491759485988568.Spec : Prop :=
  ∀ n, P4798491759485988568.a n = A132749 n

end A132749

/-! ## A132749.P17505018706317198934

`(A014473(n)+1)*(char[∑[n+1]]+1)`
-/

namespace A132749.P17505018706317198934
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A014473 n + 1) * (((if ∃ j, f1 j = n then 1 else 0) + 1 : ℕ) : ℤ)

end

end A132749.P17505018706317198934

namespace A132749

/-- `(A014473(n)+1)*(char[∑[n+1]]+1)` -/
def P17505018706317198934.Spec : Prop :=
  ∀ n, P17505018706317198934.a n = A132749 n

end A132749

/-! ## A132749.P9165985344718256506

`A132044(n)+A023532(n)`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A132749

/-- `A132044(n)+A023532(n)` -/
def P9165985344718256506.Spec : Prop :=
  ∀ n, P9165985344718256506.a n = A132749 n

theorem P9165985344718256506.correct : P9165985344718256506.Spec := by
  intro n
  simp only [A132749]

end A132749

/-! ## A132749.P4118799604203573499

`A029635(n)-A177767(n)`
-/

namespace A132749.P4118799604203573499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029635 n - A177767 n

end

end A132749.P4118799604203573499

namespace A132749

/-- `A029635(n)-A177767(n)` -/
def P4118799604203573499.Spec : Prop :=
  ∀ n, P4118799604203573499.a n = A132749 n

end A132749

/-! ## A132749.P14983370361195646935

`A028326(n)-A206735(n)`
-/

namespace A132749.P14983370361195646935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028326 n - A206735 n

end

end A132749.P14983370361195646935

namespace A132749

/-- `A028326(n)-A206735(n)` -/
def P14983370361195646935.Spec : Prop :=
  ∀ n, P14983370361195646935.a n = A132749 n

end A132749

/-! ## A132749.P649713351245812350

`A129994(n)/A154325(n)`
-/

namespace A132749.P649713351245812350
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A129994 n : ℚ) / (A154325 n : ℚ)

end

end A132749.P649713351245812350

namespace A132749

/-- `A129994(n)/A154325(n)` -/
def P649713351245812350.Spec : Prop :=
  ∀ n, P649713351245812350.a n = (A132749 n : ℚ)

end A132749

/-! ## A132749.P16515476894323041719

`A134058(n)/A238303(n)`
-/

namespace A132749.P16515476894323041719
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A134058 n : ℚ) / (A238303 n : ℚ)

end

end A132749.P16515476894323041719

namespace A132749

/-- `A134058(n)/A238303(n)` -/
def P16515476894323041719.Spec : Prop :=
  ∀ n, P16515476894323041719.a n = (A132749 n : ℚ)

end A132749

/-! ## A132749.P4522110847263038989

`gcd(A028326(n), A091917(n))`
-/

namespace A132749.P4522110847263038989
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A028326 n) (A091917 n)

end

end A132749.P4522110847263038989

namespace A132749

/-- `gcd(A028326(n), A091917(n))` -/
def P4522110847263038989.Spec : Prop :=
  ∀ n, (P4522110847263038989.a n : ℤ) = A132749 n

end A132749

/-! ## A132749.P13126885140882309528

`gcd(A091918(n), A094438(n))`
-/

namespace A132749.P13126885140882309528
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A091918 n) (A094438 n)

end

end A132749.P13126885140882309528

namespace A132749

/-- `gcd(A091918(n), A094438(n))` -/
def P13126885140882309528.Spec : Prop :=
  ∀ n, (P13126885140882309528.a n : ℤ) = A132749 n

end A132749

/-! ## A132749.P14191374173657019821

`gcd(A129994(n), A140575(n))`
-/

namespace A132749.P14191374173657019821
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A129994 n) (A140575 n)

end

end A132749.P14191374173657019821

namespace A132749

/-- `gcd(A129994(n), A140575(n))` -/
def P14191374173657019821.Spec : Prop :=
  ∀ n, (P14191374173657019821.a n : ℤ) = A132749 n

end A132749

/-! ## A132749.P11130982894239563907

`gcd(A089799(n), A206735(n))`
-/

namespace A132749.P11130982894239563907
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A089799 n) (A206735 n)

end

end A132749.P11130982894239563907

namespace A132749

/-- `gcd(A089799(n), A206735(n))` -/
def P11130982894239563907.Spec : Prop :=
  ∀ n, (P11130982894239563907.a n : ℤ) = A132749 n

end A132749

/-! ## A132749.P9998724071569590694

`gcd(A134058(n), A182042(n))`
-/

namespace A132749.P9998724071569590694
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A134058 n) (A182042 n)

end

end A132749.P9998724071569590694

namespace A132749

/-- `gcd(A134058(n), A182042(n))` -/
def P9998724071569590694.Spec : Prop :=
  ∀ n, (P9998724071569590694.a n : ℤ) = A132749 n

end A132749

/-! ## A132749.P12715878077538728872

`A014473(n)+A073424(n)+1`
-/

namespace A132749.P12715878077538728872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014473 n + (A073424 n + 1)

end

end A132749.P12715878077538728872

namespace A132749

/-- `A014473(n)+A073424(n)+1` -/
def P12715878077538728872.Spec : Prop :=
  ∀ n, P12715878077538728872.a n = A132749 n

end A132749

/-! ## A132749.P11724487285247709547

`A135225(n)+A097805(n+1)`
-/

namespace A132749.P11724487285247709547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135225 n + A097805 (n + 1)

end

end A132749.P11724487285247709547

namespace A132749

/-- `A135225(n)+A097805(n+1)` -/
def P11724487285247709547.Spec : Prop :=
  ∀ n, P11724487285247709547.a n = A132749 n

end A132749

/-! ## A132749.P6785293879744464420

`A198321(n+1)+A103451(n)`
-/

namespace A132749.P6785293879744464420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198321 (n + 1) + A103451 n

end

end A132749.P6785293879744464420

namespace A132749

/-- `A198321(n+1)+A103451(n)` -/
def P6785293879744464420.Spec : Prop :=
  ∀ n, P6785293879744464420.a n = A132749 n

end A132749

/-! ## A132749.P13667471068400613784

`A007318(n)+1-A123110(n)`
-/

namespace A132749.P13667471068400613784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n + (1 - A123110 n)

end

end A132749.P13667471068400613784

namespace A132749

/-- `A007318(n)+1-A123110(n)` -/
def P13667471068400613784.Spec : Prop :=
  ∀ n, P13667471068400613784.a n = A132749 n

end A132749

/-! ## A132749.P10729678479620574947

`A109128(n)+1-A206735(n)`
-/

namespace A132749.P10729678479620574947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109128 n + (1 - A206735 n)

end

end A132749.P10729678479620574947

namespace A132749

/-- `A109128(n)+1-A206735(n)` -/
def P10729678479620574947.Spec : Prop :=
  ∀ n, P10729678479620574947.a n = A132749 n

end A132749

/-! ## A132749.P1820182005582408450

`(A073424(n)+1)*A007318(n)`
-/

namespace A132749.P1820182005582408450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A073424 n + 1) * A007318 n

end

end A132749.P1820182005582408450

namespace A132749

/-- `(A073424(n)+1)*A007318(n)` -/
def P1820182005582408450.Spec : Prop :=
  ∀ n, P1820182005582408450.a n = A132749 n

end A132749

/-!
# A132750: A132749 * [1, 2, 3, ...] = A007318 * A065190.

The programs for A132750, the canonical program `A132750.P10656850674830085946` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A132750 has offset 0).

The definition of A132750 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A132750.P10656850674830085946

`5*a(n-1)-8*a(n-2)+4*a(n-3)` with `a(0)=1, a(1)=4, a(2)=9, a(3)=21`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A132750

/-- `5*a(n-1)-8*a(n-2)+4*a(n-3)` -/
def P10656850674830085946.Spec : Prop :=
  ∀ n, P10656850674830085946.a n = A132750 n

theorem P10656850674830085946.correct : P10656850674830085946.Spec := by
  intro n
  simp only [A132750]

end A132750

/-! ## A132750.P5088716738209973029

`∑[ogf((1-x-3x^2+4x^3)/(1-4x+4x^2))]`
-/

namespace A132750.P5088716738209973029
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -1, -3, 4] [1, -4, 4] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A132750.P5088716738209973029

namespace A132750

/-- `∑[ogf((1-x-3x^2+4x^3)/(1-4x+4x^2))]` -/
def P5088716738209973029.Spec : Prop :=
  ∀ n, P5088716738209973029.a n = A132750 n

end A132750

/-! ## A132750.P1109312180734641200

`(n+2)*floor(2^(n-1))+1`
-/

namespace A132750.P1109312180734641200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) * ⌊(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌋ + 1

end

end A132750.P1109312180734641200

namespace A132750

/-- `(n+2)*floor(2^(n-1))+1` -/
def P1109312180734641200.Spec : Prop :=
  ∀ n, P1109312180734641200.a n = A132750 n

end A132750

/-! ## A132750.P1310174416535452623

`∑[or(C(n, n²), ceil((n+3)*2^(n-2)))]`
-/

namespace A132750.P1310174416535452623
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (Nat.choose n (n ^ 2) : ℤ) ⌈(n + 3 : ℚ) * (2 : ℚ) ^ ((n : ℤ) - 2 : ℤ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A132750.P1310174416535452623

namespace A132750

/-- `∑[or(C(n, n²), ceil((n+3)*2^(n-2)))]` -/
def P1310174416535452623.Spec : Prop :=
  ∀ n, P1310174416535452623.a n = A132750 n

end A132750

/-! ## A132750.P7438693120646975159

`∑[A045623(n)+char[1]]`
-/

namespace A132750.P7438693120646975159
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045623 n + ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A132750.P7438693120646975159

namespace A132750

/-- `∑[A045623(n)+char[1]]` -/
def P7438693120646975159.Spec : Prop :=
  ∀ n, P7438693120646975159.a n = A132750 n

end A132750

/-! ## A132750.P17932993334244987807

`gcd(A001792(n)+1, floor(acot(n)))`
-/

namespace A132750.P17932993334244987807
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A001792 n + 1) ⌊SequenceMachineLib.acot (n : ℝ)⌋

end

end A132750.P17932993334244987807

namespace A132750

/-- `gcd(A001792(n)+1, floor(acot(n)))` -/
def P17932993334244987807.Spec : Prop :=
  ∀ n, (P17932993334244987807.a n : ℤ) = A132750 n

end A132750

/-! ## A132750.P6901055593480833631

`abs(A057428(n)-A001792(n))`
-/

namespace A132750.P6901055593480833631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A057428 n - A001792 n|

end

end A132750.P6901055593480833631

namespace A132750

/-- `abs(A057428(n)-A001792(n))` -/
def P6901055593480833631.Spec : Prop :=
  ∀ n, P6901055593480833631.a n = A132750 n

end A132750

/-! ## A132750.P11475169564231293592

`Δ[floor(A188626(n+1)+acot(n))]`
-/

namespace A132750.P11475169564231293592
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A188626 (n + 1) : ℝ) + SequenceMachineLib.acot (n : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A132750.P11475169564231293592

namespace A132750

/-- `Δ[floor(A188626(n+1)+acot(n))]` -/
def P11475169564231293592.Spec : Prop :=
  ∀ n, P11475169564231293592.a n = A132750 n

end A132750

/-! ## A132750.P3469876694258735061

`round(((n+2)*A155559(n)+1)/2)`
-/

namespace A132750.P3469876694258735061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (((n + 2 : ℤ) * A155559 n + 1 : ℚ) / 2)

end

end A132750.P3469876694258735061

namespace A132750

/-- `round(((n+2)*A155559(n)+1)/2)` -/
def P3469876694258735061.Spec : Prop :=
  ∀ n, P3469876694258735061.a n = A132750 n

end A132750

/-! ## A132750.P12598978916722963720

`Δ[∑[ceil(2^(n-2))]*A028310(n)]`
-/

namespace A132750.P12598978916722963720
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(2 : ℚ) ^ ((n : ℤ) - 2 : ℤ)⌉

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f2 j) * A028310 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A132750.P12598978916722963720

namespace A132750

/-- `Δ[∑[ceil(2^(n-2))]*A028310(n)]` -/
def P12598978916722963720.Spec : Prop :=
  ∀ n, P12598978916722963720.a n = A132750 n

end A132750

/-! ## A132750.P16245003566246726702

`ceil((2*(n+2)*A131577(n)+1)/2)`
-/

namespace A132750.P16245003566246726702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((2 * (n + 2) : ℤ) * A131577 n + 1 : ℚ) / 2⌉

end

end A132750.P16245003566246726702

namespace A132750

/-- `ceil((2*(n+2)*A131577(n)+1)/2)` -/
def P16245003566246726702.Spec : Prop :=
  ∀ n, P16245003566246726702.a n = A132750 n

end A132750

/-! ## A132750.P15646510587158230015

`Δ[A028310(n)+A001787(n)]`
-/

namespace A132750.P15646510587158230015
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 n + A001787 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A132750.P15646510587158230015

namespace A132750

/-- `Δ[A028310(n)+A001787(n)]` -/
def P15646510587158230015.Spec : Prop :=
  ∀ n, P15646510587158230015.a n = A132750 n

end A132750

/-! ## A132750.P11697708488755060048

`Δ[A028310(n)+A005183(n)]`
-/

namespace A132750.P11697708488755060048
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 n + A005183 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A132750.P11697708488755060048

namespace A132750

/-- `Δ[A028310(n)+A005183(n)]` -/
def P11697708488755060048.Spec : Prop :=
  ∀ n, P11697708488755060048.a n = A132750 n

end A132750

/-! ## A132750.P17175816214589790601

`Δ[A028310(n)*A094373(n)]`
-/

namespace A132750.P17175816214589790601
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 n * A094373 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A132750.P17175816214589790601

namespace A132750

/-- `Δ[A028310(n)*A094373(n)]` -/
def P17175816214589790601.Spec : Prop :=
  ∀ n, P17175816214589790601.a n = A132750 n

end A132750

/-! ## A132750.P7908286779100888487

`record[A057427(n)+A055249(n)]`
-/

namespace A132750.P7908286779100888487
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n + A055249 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A132750.P7908286779100888487

namespace A132750

/-- `record[A057427(n)+A055249(n)]` -/
def P7908286779100888487.Spec : Prop :=
  ∀ n, P7908286779100888487.a n = A132750 n

end A132750

/-! ## A132750.P6062235172247426027

`record[A055249(n)+A002262(n+1)]`
-/

namespace A132750.P6062235172247426027
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055249 n + A002262 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A132750.P6062235172247426027

namespace A132750

/-- `record[A055249(n)+A002262(n+1)]` -/
def P6062235172247426027.Spec : Prop :=
  ∀ n, P6062235172247426027.a n = A132750 n

end A132750

/-! ## A132750.P15124521140182196021

`record[A057427(n)+A053219(n+1)]`
-/

namespace A132750.P15124521140182196021
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n + A053219 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A132750.P15124521140182196021

namespace A132750

/-- `record[A057427(n)+A053219(n+1)]` -/
def P15124521140182196021.Spec : Prop :=
  ∀ n, P15124521140182196021.a n = A132750 n

end A132750

/-!
# A132751: Triangle T(n, k) = 2/Beta(n-k+1, k) - 1, read by rows.

The programs for A132751, the canonical program `A132751.P15149145036717789500` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A132751 has offset 1).

The definition of A132751 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A132751.P15149145036717789500

`2*A003506(n+1)-1`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A132751

/-- `2*A003506(n+1)-1` -/
def P15149145036717789500.Spec : Prop :=
  ∀ n, P15149145036717789500.a n = A132751 (n + 1)

theorem P15149145036717789500.correct : P15149145036717789500.Spec := by
  intro n
  simp only [A132751, Nat.add_sub_cancel]

end A132751

/-! ## A132751.P6529711156943346536

`2*A007318(n)*∑[char[∑[n]]]-1`
-/

namespace A132751.P6529711156943346536
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A007318 n * ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)) - 1

end

end A132751.P6529711156943346536

namespace A132751

/-- `2*A007318(n)*∑[char[∑[n]]]-1` -/
def P6529711156943346536.Spec : Prop :=
  ∀ n, P6529711156943346536.a n = A132751 (n + 1)

end A132751

/-! ## A132751.P5776125153245918383

`A132775(n)+A014473(n)`
-/

namespace A132751.P5776125153245918383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132775 n + A014473 n

end

end A132751.P5776125153245918383

namespace A132751

/-- `A132775(n)+A014473(n)` -/
def P5776125153245918383.Spec : Prop :=
  ∀ n, P5776125153245918383.a n = A132751 (n + 1)

end A132751

/-! ## A132751.P5937049967604394628

`A007318(n)+A132775(n)-1`
-/

namespace A132751.P5937049967604394628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n + (A132775 n - 1)

end

end A132751.P5937049967604394628

namespace A132751

/-- `A007318(n)+A132775(n)-1` -/
def P5937049967604394628.Spec : Prop :=
  ∀ n, P5937049967604394628.a n = A132751 (n + 1)

end A132751

/-! ## A132751.P16935981979802285267

`∑[A010054(n)]*A028326(n)-1`
-/

namespace A132751.P16935981979802285267
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A028326 n - 1

end

end A132751.P16935981979802285267

namespace A132751

/-- `∑[A010054(n)]*A028326(n)-1` -/
def P16935981979802285267.Spec : Prop :=
  ∀ n, P16935981979802285267.a n = A132751 (n + 1)

end A132751

/-! ## A132751.P15194180872294965057

`A002024(n+1)*A028326(n)-1`
-/

namespace A132751.P15194180872294965057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 (n + 1) * A028326 n - 1

end

end A132751.P15194180872294965057

namespace A132751

/-- `A002024(n+1)*A028326(n)-1` -/
def P15194180872294965057.Spec : Prop :=
  ∀ n, P15194180872294965057.a n = A132751 (n + 1)

end A132751

/-! ## A132751.P520953450290256819

`A007318(n)*A111650(n+1)-1`
-/

namespace A132751.P520953450290256819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n * A111650 (n + 1) - 1

end

end A132751.P520953450290256819

namespace A132751

/-- `A007318(n)*A111650(n+1)-1` -/
def P520953450290256819.Spec : Prop :=
  ∀ n, P520953450290256819.a n = A132751 (n + 1)

end A132751

/-! ## A132751.P2229256505441909185

`2*A002024(n+1)*A007318(n)-1`
-/

namespace A132751.P2229256505441909185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A002024 (n + 1) * A007318 n) - 1

end

end A132751.P2229256505441909185

namespace A132751

/-- `2*A002024(n+1)*A007318(n)-1` -/
def P2229256505441909185.Spec : Prop :=
  ∀ n, P2229256505441909185.a n = A132751 (n + 1)

end A132751

/-! ## A132751.P16519245472372685259

`A003506(n+1)+A003506(A038722(n+1))-1`
-/

namespace A132751.P16519245472372685259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003506 (n + 1) + (A003506 (A038722 (n + 1)).toNat - 1)

end

end A132751.P16519245472372685259

namespace A132751

/-- `A003506(n+1)+A003506(A038722(n+1))-1` -/
def P16519245472372685259.Spec : Prop :=
  ∀ n, P16519245472372685259.a n = A132751 (n + 1)

end A132751

/-! ## A132751.P3151311820489531006

`A116666(A038722(n+1))+A116666(n+1)-1`
-/

namespace A132751.P3151311820489531006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116666 (A038722 (n + 1)).toNat + (A116666 (n + 1) - 1)

end

end A132751.P3151311820489531006

namespace A132751

/-- `A116666(A038722(n+1))+A116666(n+1)-1` -/
def P3151311820489531006.Spec : Prop :=
  ∀ n, P3151311820489531006.a n = A132751 (n + 1)

end A132751

/-! ## A132751.P2064536356958412254

`2*A046206(Δ[n²])-1`
-/

namespace A132751.P2064536356958412254
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A046206 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat - 1

end

end A132751.P2064536356958412254

namespace A132751

/-- `2*A046206(Δ[n²])-1` -/
def P2064536356958412254.Spec : Prop :=
  ∀ n, P2064536356958412254.a n = A132751 (n + 1)

end A132751

/-! ## A132751.P14631977767689252632

`2*A046205(2*(n+1))-1`
-/

namespace A132751.P14631977767689252632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A046205 (2 * (n + 1)) - 1

end

end A132751.P14631977767689252632

namespace A132751

/-- `2*A046205(2*(n+1))-1` -/
def P14631977767689252632.Spec : Prop :=
  ∀ n, P14631977767689252632.a n = A132751 (n + 1)

end A132751

/-! ## A132751.P8145778335435723189

`2*gcd(A068424(n+1), A135853(n))-1`
-/

namespace A132751.P8145778335435723189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * Int.gcd (A068424 (n + 1)) (A135853 n) : ℤ) - 1

end

end A132751.P8145778335435723189

namespace A132751

/-- `2*gcd(A068424(n+1), A135853(n))-1` -/
def P8145778335435723189.Spec : Prop :=
  ∀ n, P8145778335435723189.a n = A132751 (n + 1)

end A132751

/-! ## A132751.P10553207305614953101

`A002024(n+1)*A004277(ceil(A134059(n)/3))-1`
-/

namespace A132751.P10553207305614953101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 (n + 1) * A004277 ⌈(A134059 n : ℚ) / 3⌉.toNat - 1

end

end A132751.P10553207305614953101

namespace A132751

/-- `A002024(n+1)*A004277(ceil(A134059(n)/3))-1` -/
def P10553207305614953101.Spec : Prop :=
  ∀ n, P10553207305614953101.a n = A132751 (n + 1)

end A132751

/-!
# A132752: Triangle T(n, k) = 2*A132749(n, k) - 1, read by rows.

The programs for A132752, the canonical program `A132752.P12795586409169669326` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A132752 has offset 0).

The definition of A132752 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A132752.P12795586409169669326

`2*A132749(n)-1`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A132752

/-- `2*A132749(n)-1` -/
def P12795586409169669326.Spec : Prop :=
  ∀ n, P12795586409169669326.a n = A132752 n

theorem P12795586409169669326.correct : P12795586409169669326.Spec := by
  intro n
  simp only [A132752]

end A132752

/-! ## A132752.P3026856669732960023

`(C(2, a(n-1))+1)*A109128(n)` with `a(0)=1`
-/

namespace A132752.P3026856669732960023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (Nat.choose 2 (a (n - 1)).toNat + 1 : ℤ) * A109128 n

end

end A132752.P3026856669732960023

namespace A132752

/-- `(C(2, a(n-1))+1)*A109128(n)` -/
def P3026856669732960023.Spec : Prop :=
  ∀ n, P3026856669732960023.a n = A132752 n

end A132752

/-! ## A132752.P5575861789737607330

`2*(char[∑[n+1]]+A007318(n))-1`
-/

namespace A132752.P5575861789737607330
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) + A007318 n) - 1

end

end A132752.P5575861789737607330

namespace A132752

/-- `2*(char[∑[n+1]]+A007318(n))-1` -/
def P5575861789737607330.Spec : Prop :=
  ∀ n, P5575861789737607330.a n = A132752 n

end A132752

/-! ## A132752.P7093218875209597348

`A135087(n)%A139524(n)`
-/

namespace A132752.P7093218875209597348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A135087 n) (A139524 n)

end

end A132752.P7093218875209597348

namespace A132752

/-- `A135087(n)%A139524(n)` -/
def P7093218875209597348.Spec : Prop :=
  ∀ n, P7093218875209597348.a n = A132752 n

end A132752

/-! ## A132752.P13176343603242847976

`2*A325002(A316669(n+1))-1`
-/

namespace A132752.P13176343603242847976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A325002 (A316669 (n + 1)).toNat - 1

end

end A132752.P13176343603242847976

namespace A132752

/-- `2*A325002(A316669(n+1))-1` -/
def P13176343603242847976.Spec : Prop :=
  ∀ n, P13176343603242847976.a n = A132752 n

end A132752

/-! ## A132752.P7827263024417843041

`2*A325002(A316964(n)+1)-1`
-/

namespace A132752.P7827263024417843041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A325002 (A316964 n + 1).toNat - 1

end

end A132752.P7827263024417843041

namespace A132752

/-- `2*A325002(A316964(n)+1)-1` -/
def P7827263024417843041.Spec : Prop :=
  ∀ n, P7827263024417843041.a n = A132752 n

end A132752

/-! ## A132752.P10241098143201609019

`A004273(A132749(n))`
-/

namespace A132752.P10241098143201609019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (A132749 n).toNat

end

end A132752.P10241098143201609019

namespace A132752

/-- `A004273(A132749(n))` -/
def P10241098143201609019.Spec : Prop :=
  ∀ n, P10241098143201609019.a n = A132752 n

end A132752

/-! ## A132752.P18213189964429888998

`A004275(A132749(n)+1)-1`
-/

namespace A132752.P18213189964429888998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004275 (A132749 n + 1).toNat - 1

end

end A132752.P18213189964429888998

namespace A132752

/-- `A004275(A132749(n)+1)-1` -/
def P18213189964429888998.Spec : Prop :=
  ∀ n, P18213189964429888998.a n = A132752 n

end A132752

/-! ## A132752.P4921324603404700273

`A004273(A073424(n)+A007318(n))`
-/

namespace A132752.P4921324603404700273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (A073424 n + A007318 n).toNat

end

end A132752.P4921324603404700273

namespace A132752

/-- `A004273(A073424(n)+A007318(n))` -/
def P4921324603404700273.Spec : Prop :=
  ∀ n, P4921324603404700273.a n = A132752 n

end A132752

/-! ## A132752.P6185834212796396685

`A014681(2*A132749(n))`
-/

namespace A132752.P6185834212796396685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014681 (2 * A132749 n).toNat

end

end A132752.P6185834212796396685

namespace A132752

/-- `A014681(2*A132749(n))` -/
def P6185834212796396685.Spec : Prop :=
  ∀ n, P6185834212796396685.a n = A132752 n

end A132752

/-! ## A132752.P4851967022993430121

`A004275(2*A132749(n))/2`
-/

namespace A132752.P4851967022993430121
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A004275 (2 * A132749 n).toNat : ℚ) / 2

end

end A132752.P4851967022993430121

namespace A132752

/-- `A004275(2*A132749(n))/2` -/
def P4851967022993430121.Spec : Prop :=
  ∀ n, P4851967022993430121.a n = (A132752 n : ℚ)

end A132752

/-! ## A132752.P6301647211566315218

`A014681(A132749(n)+A132749(n))`
-/

namespace A132752.P6301647211566315218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014681 (A132749 n + A132749 n).toNat

end

end A132752.P6301647211566315218

namespace A132752

/-- `A014681(A132749(n)+A132749(n))` -/
def P6301647211566315218.Spec : Prop :=
  ∀ n, P6301647211566315218.a n = A132752 n

end A132752

/-! ## A132752.P9063807613851720781

`A026741(A132749(n)+A132749(n)-1)`
-/

namespace A132752.P9063807613851720781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (A132749 n + (A132749 n - 1)).toNat

end

end A132752.P9063807613851720781

namespace A132752

/-- `A026741(A132749(n)+A132749(n)-1)` -/
def P9063807613851720781.Spec : Prop :=
  ∀ n, P9063807613851720781.a n = A132752 n

end A132752

/-! ## A132752.P5309909143723430269

`A026741(A132749(n)-(1-A132749(n)))`
-/

namespace A132752.P5309909143723430269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (A132749 n - (1 - A132749 n)).toNat

end

end A132752.P5309909143723430269

namespace A132752

/-- `A026741(A132749(n)-(1-A132749(n)))` -/
def P5309909143723430269.Spec : Prop :=
  ∀ n, P5309909143723430269.a n = A132752 n

end A132752

/-! ## A132752.P4375810711998340318

`A161680(2*A132749(n))/A132749(n)`
-/

namespace A132752.P4375810711998340318
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A161680 (2 * A132749 n).toNat : ℚ) / (A132749 n : ℚ)

end

end A132752.P4375810711998340318

namespace A132752

/-- `A161680(2*A132749(n))/A132749(n)` -/
def P4375810711998340318.Spec : Prop :=
  ∀ n, P4375810711998340318.a n = (A132752 n : ℚ)

end A132752

/-!
# A132753: a(n) = 2^(n+1) - n + 1.

The programs for A132753, the canonical program `A132753.P2439916606810151964` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A132753 has offset 0).

The definition of A132753 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2^(n+1)-n+1` (program `A132753.P2439916606810151964`, by `A132753.P2439916606810151964.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A132753.P2439916606810151964

`2^(n+1)-n+1`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A132753

/-- `2^(n+1)-n+1` -/
def P2439916606810151964.Spec : Prop :=
  ∀ n, P2439916606810151964.a n = A132753 n

theorem P2439916606810151964.correct : P2439916606810151964.Spec := by
  intro n
  simp only [A132753]

end A132753

/-! ## A132753.P15080158320099549920

`record[or(2, 2^n)-n]`
-/

namespace A132753.P15080158320099549920
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.lor 2 (2 ^ n) : ℤ) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A132753.P15080158320099549920

namespace A132753

/-- `record[or(2, 2^n)-n]` -/
def P15080158320099549920.Spec : Prop :=
  ∀ n, P15080158320099549920.a n = A132753 n

end A132753

/-! ## A132753.P10380803077041409447

`record[xor(2, 2^n)-n]`
-/

namespace A132753.P10380803077041409447
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.xor 2 (2 ^ n) : ℤ) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A132753.P10380803077041409447

namespace A132753

/-- `record[xor(2, 2^n)-n]` -/
def P10380803077041409447.Spec : Prop :=
  ∀ n, P10380803077041409447.a n = A132753 n

end A132753

/-! ## A132753.P8174214559845258796

`∑[ogf((3-8x+6x^2)/(1-3x+2x^2))]`
-/

namespace A132753.P8174214559845258796
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [3, -8, 6] [1, -3, 2] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A132753.P8174214559845258796

namespace A132753

/-- `∑[ogf((3-8x+6x^2)/(1-3x+2x^2))]` -/
def P8174214559845258796.Spec : Prop :=
  ∀ n, P8174214559845258796.a n = A132753 n

end A132753

/-! ## A132753.P6283345633157420462

`ogf((3-8x+6x^2)/(1-4x+5x^2-2x^3))`
-/

namespace A132753.P6283345633157420462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [3, -8, 6] [1, -4, 5, -2] n

end

end A132753.P6283345633157420462

namespace A132753

/-- `ogf((3-8x+6x^2)/(1-4x+5x^2-2x^3))` -/
def P6283345633157420462.Spec : Prop :=
  ∀ n, P6283345633157420462.a n = A132753 n

end A132753

/-! ## A132753.P3166021380082422874

`∑[2*a(n-1)+1]` with `a(0)=3, a(1)=1`
-/

namespace A132753.P3166021380082422874
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [3, 1] fun n f1 =>
  2 * f1 (n - 1) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A132753.P3166021380082422874

namespace A132753

/-- `∑[2*a(n-1)+1]` -/
def P3166021380082422874.Spec : Prop :=
  ∀ n, (P3166021380082422874.a n : ℤ) = A132753 n

end A132753

/-! ## A132753.P5452009098490071674

`∑[lcm(2, a(n-1))+1]` with `a(0)=3, a(1)=1`
-/

namespace A132753.P5452009098490071674
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [3, 1] fun n f1 =>
  Nat.lcm 2 (f1 (n - 1)) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A132753.P5452009098490071674

namespace A132753

/-- `∑[lcm(2, a(n-1))+1]` -/
def P5452009098490071674.Spec : Prop :=
  ∀ n, (P5452009098490071674.a n : ℤ) = A132753 n

end A132753

/-! ## A132753.P5593270097014372452

`∑[or(1, 2*a(n-1))]` with `a(0)=3, a(1)=1`
-/

namespace A132753.P5593270097014372452
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [3, 1] fun n f1 =>
  Nat.lor 1 (2 * f1 (n - 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A132753.P5593270097014372452

namespace A132753

/-- `∑[or(1, 2*a(n-1))]` -/
def P5593270097014372452.Spec : Prop :=
  ∀ n, (P5593270097014372452.a n : ℤ) = A132753 n

end A132753

/-! ## A132753.P9142911634369130617

`∑[xor(1, 2*a(n-1))]` with `a(0)=3, a(1)=1`
-/

namespace A132753.P9142911634369130617
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [3, 1] fun n f1 =>
  Nat.xor 1 (2 * f1 (n - 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A132753.P9142911634369130617

namespace A132753

/-- `∑[xor(1, 2*a(n-1))]` -/
def P9142911634369130617.Spec : Prop :=
  ∀ n, (P9142911634369130617.a n : ℤ) = A132753 n

end A132753

/-! ## A132753.P14855517893161609621

`floor(record[2^(n-1)-(n-3)])`
-/

namespace A132753.P14855517893161609621
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ ((n : ℤ) - 1 : ℤ) - ((n : ℤ) - 3 : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)⌋

end

end A132753.P14855517893161609621

namespace A132753

/-- `floor(record[2^(n-1)-(n-3)])` -/
def P14855517893161609621.Spec : Prop :=
  ∀ n, P14855517893161609621.a n = A132753 n

end A132753

/-! ## A132753.P9032628012126240122

`∑[∑[2*a(n-1)]]` with `a(0)=3, a(1)=-2, a(2)=2`
-/

namespace A132753.P9032628012126240122
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [3, -2, 2] fun n f2 =>
  2 * f2 (n - 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A132753.P9032628012126240122

namespace A132753

/-- `∑[∑[2*a(n-1)]]` -/
def P9032628012126240122.Spec : Prop :=
  ∀ n, P9032628012126240122.a n = A132753 n

end A132753

/-! ## A132753.P7919993704471293510

`floor(2*a(n-1)-3+n)` with `a(0)=3`

`floor` is left out, it is the identity on integers.
-/

namespace A132753.P7919993704471293510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  2 * a (n - 1) - 3 + (n : ℤ)

end

end A132753.P7919993704471293510

namespace A132753

/-- `floor(2*a(n-1)-3+n)` -/
def P7919993704471293510.Spec : Prop :=
  ∀ n, P7919993704471293510.a n = A132753 n

theorem P7919993704471293510.correct : P7919993704471293510.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A132753, Nat.add_sub_cancel, A132753.P7919993704471293510.a, A132753.P2439916606810151964.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A132753, Nat.add_sub_cancel, A132753.P7919993704471293510.a, A132753.P2439916606810151964.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A132753

/-! ## A132753.P18277203269494387842

`floor(2*a(n-1)-(3-n))` with `a(0)=3`

`floor` is left out, it is the identity on integers.
-/

namespace A132753.P18277203269494387842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  2 * a (n - 1) - (3 - (n : ℤ))

end

end A132753.P18277203269494387842

namespace A132753

/-- `floor(2*a(n-1)-(3-n))` -/
def P18277203269494387842.Spec : Prop :=
  ∀ n, P18277203269494387842.a n = A132753 n

theorem P18277203269494387842.correct : P18277203269494387842.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A132753, Nat.add_sub_cancel, A132753.P18277203269494387842.a, A132753.P2439916606810151964.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A132753, Nat.add_sub_cancel, A132753.P18277203269494387842.a, A132753.P2439916606810151964.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A132753

/-! ## A132753.P14287156535004168567

`floor(2^n-(1-a(n-1)))` with `a(0)=3`

`floor` is left out, it is the identity on integers.
-/

namespace A132753.P14287156535004168567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  (2 ^ n : ℤ) - (1 - a (n - 1))

end

end A132753.P14287156535004168567

namespace A132753

/-- `floor(2^n-(1-a(n-1)))` -/
def P14287156535004168567.Spec : Prop :=
  ∀ n, P14287156535004168567.a n = A132753 n

theorem P14287156535004168567.correct : P14287156535004168567.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A132753, Nat.add_sub_cancel, A132753.P14287156535004168567.a, A132753.P2439916606810151964.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A132753, Nat.add_sub_cancel, A132753.P14287156535004168567.a, A132753.P2439916606810151964.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A132753

/-! ## A132753.P16177542306238583472

`2*(a(n-1)+(n-3)/2)` with `a(0)=3`
-/

namespace A132753.P16177542306238583472
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [3] fun n a =>
  2 * (a (n - 1) + ((n : ℤ) - 3 : ℚ) / 2)

end

end A132753.P16177542306238583472

namespace A132753

/-- `2*(a(n-1)+(n-3)/2)` -/
def P16177542306238583472.Spec : Prop :=
  ∀ n, P16177542306238583472.a n = (A132753 n : ℚ)

theorem P16177542306238583472.correct : P16177542306238583472.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A132753, Nat.add_sub_cancel, A132753.P16177542306238583472.a, A132753.P2439916606810151964.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A132753, Nat.add_sub_cancel, A132753.P16177542306238583472.a, A132753.P2439916606810151964.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A132753

/-! ## A132753.P12187444025232478720

`∑[a(n-1)+a(n-1)+1]` with `a(0)=3, a(1)=1`
-/

namespace A132753.P12187444025232478720
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [3, 1] fun n f1 =>
  f1 (n - 1) + (f1 (n - 1) + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A132753.P12187444025232478720

namespace A132753

/-- `∑[a(n-1)+a(n-1)+1]` -/
def P12187444025232478720.Spec : Prop :=
  ∀ n, (P12187444025232478720.a n : ℤ) = A132753 n

end A132753

/-! ## A132753.P9223655181301891828

`floor(a(n-1)+a(n-1)-3+n)` with `a(0)=3`

`floor` is left out, it is the identity on integers.
-/

namespace A132753.P9223655181301891828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  a (n - 1) + (a (n - 1) - 3 + (n : ℤ))

end

end A132753.P9223655181301891828

namespace A132753

/-- `floor(a(n-1)+a(n-1)-3+n)` -/
def P9223655181301891828.Spec : Prop :=
  ∀ n, P9223655181301891828.a n = A132753 n

theorem P9223655181301891828.correct : P9223655181301891828.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A132753, Nat.add_sub_cancel, A132753.P9223655181301891828.a, A132753.P2439916606810151964.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A132753, Nat.add_sub_cancel, A132753.P9223655181301891828.a, A132753.P2439916606810151964.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A132753

/-! ## A132753.P17680964722633112237

`floor(a(n-1)-(3-a(n-1)-n))` with `a(0)=3`

`floor` is left out, it is the identity on integers.
-/

namespace A132753.P17680964722633112237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  a (n - 1) - (3 - a (n - 1) - (n : ℤ))

end

end A132753.P17680964722633112237

namespace A132753

/-- `floor(a(n-1)-(3-a(n-1)-n))` -/
def P17680964722633112237.Spec : Prop :=
  ∀ n, P17680964722633112237.a n = A132753 n

theorem P17680964722633112237.correct : P17680964722633112237.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A132753, Nat.add_sub_cancel, A132753.P17680964722633112237.a, A132753.P2439916606810151964.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A132753, Nat.add_sub_cancel, A132753.P17680964722633112237.a, A132753.P2439916606810151964.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A132753

/-! ## A132753.P2271628150850708207

`(2-(3-n)/a(n-1))*a(n-1)` with `a(0)=3`
-/

namespace A132753.P2271628150850708207
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [3] fun n a =>
  (2 - (3 - (n : ℤ) : ℚ) / a (n - 1)) * a (n - 1)

end

end A132753.P2271628150850708207

namespace A132753

/-- `(2-(3-n)/a(n-1))*a(n-1)` -/
def P2271628150850708207.Spec : Prop :=
  ∀ n, P2271628150850708207.a n = (A132753 n : ℚ)

end A132753

/-! ## A132753.P5391635728314746044

`∑[A126646(abs(1-n))]`
-/

namespace A132753.P5391635728314746044
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126646 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A132753.P5391635728314746044

namespace A132753

/-- `∑[A126646(abs(1-n))]` -/
def P5391635728314746044.Spec : Prop :=
  ∀ n, P5391635728314746044.a n = A132753 n

end A132753

/-!
# A132754: a(n) = n*(n + 23)/2.

The programs for A132754, the canonical program `A132754.P8696445248816725217` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A132754 has offset 0).

The definition of A132754 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n*(n+23)/2` (program `A132754.P10615887161665098443`, by `A132754.P10615887161665098443.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A132754.P10615887161665098443

`n*(n+23)/2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A132754.P10615887161665098443
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n * (n + 23) : ℚ) / 2

end

end A132754.P10615887161665098443

namespace A132754

/-- `n*(n+23)/2` -/
def P10615887161665098443.Spec : Prop :=
  ∀ n, P10615887161665098443.a n = (A132754 n : ℚ)

theorem P10615887161665098443.correct : P10615887161665098443.Spec := by
  intro n
  induction n with
  | zero => simp [A132754, A132754.P10615887161665098443.a, A132754.P8696445248816725217.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
  | succ m ih =>
    simp only [A132754, Nat.add_sub_cancel, A132754.P10615887161665098443.a, A132754.P8696445248816725217.a, SequenceMachineLib.memo_apply] at ih ⊢
    rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
    try simp only [Nat.add_sub_cancel, Nat.lt_add_one, ↓reduceIte]
    try push_cast at ih ⊢
    try linarith

end A132754

/-! ## A132754.P8696445248816725217

`n+a(n-1)+11` with `a(0)=0`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A132754

/-- `n+a(n-1)+11` -/
def P8696445248816725217.Spec : Prop :=
  ∀ n, (P8696445248816725217.a n : ℤ) = A132754 n

theorem P8696445248816725217.correct : P8696445248816725217.Spec := by
  intro n
  simp only [A132754]

end A132754

/-! ## A132754.P3540820442622571504

`C(n, 2)+12*n`
-/

namespace A132754.P3540820442622571504
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n 2 + 12 * n

end

end A132754.P3540820442622571504

namespace A132754

/-- `C(n, 2)+12*n` -/
def P3540820442622571504.Spec : Prop :=
  ∀ n, (P3540820442622571504.a n : ℤ) = A132754 n

end A132754

/-! ## A132754.P6951958227707089017

`record[(n-23)*n/2]`
-/

namespace A132754.P6951958227707089017
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 23 : ℚ) * ((n : ℚ) / 2)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A132754.P6951958227707089017

namespace A132754

/-- `record[(n-23)*n/2]` -/
def P6951958227707089017.Spec : Prop :=
  ∀ n, P6951958227707089017.a n = (A132754 n : ℚ)

end A132754

/-! ## A132754.P7563606447647821602

`xor(∑[xor(n, -1)], -1)+10*n`
-/

namespace A132754.P7563606447647821602
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) (-1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (∑ j ∈ Finset.range (n + 1), f1 j) (-1) + (10 * n : ℤ)

end

end A132754.P7563606447647821602

namespace A132754

/-- `xor(∑[xor(n, -1)], -1)+10*n` -/
def P7563606447647821602.Spec : Prop :=
  ∀ n, P7563606447647821602.a n = A132754 n

end A132754

/-! ## A132754.P1644219860540754673

`A132755(n)-n`
-/

namespace A132754.P1644219860540754673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132755 n - (n : ℤ)

end

end A132754.P1644219860540754673

namespace A132754

/-- `A132755(n)-n` -/
def P1644219860540754673.Spec : Prop :=
  ∀ n, P1644219860540754673.a n = A132754 n

end A132754

/-! ## A132754.P13563584345456980696

`A370238(n)-n²`
-/

namespace A132754.P13563584345456980696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370238 n - (n ^ 2 : ℤ)

end

end A132754.P13563584345456980696

namespace A132754

/-- `A370238(n)-n²` -/
def P13563584345456980696.Spec : Prop :=
  ∀ n, P13563584345456980696.a n = A132754 n

end A132754

/-! ## A132754.P4776964312292503314

`A056126(n)+3*n`
-/

namespace A132754.P4776964312292503314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056126 n + (3 * n : ℤ)

end

end A132754.P4776964312292503314

namespace A132754

/-- `A056126(n)+3*n` -/
def P4776964312292503314.Spec : Prop :=
  ∀ n, P4776964312292503314.a n = A132754 n

end A132754

/-! ## A132754.P17787047650068175140

`A132756(n)-2*n`
-/

namespace A132754.P17787047650068175140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132756 n - (2 * n : ℤ)

end

end A132754.P17787047650068175140

namespace A132754

/-- `A132756(n)-2*n` -/
def P17787047650068175140.Spec : Prop :=
  ∀ n, P17787047650068175140.a n = A132754 n

end A132754

/-! ## A132754.P14714814608225671874

`A132763(n)/2+n`
-/

namespace A132754.P14714814608225671874
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A132763 n : ℚ) / 2 + (n : ℚ)

end

end A132754.P14714814608225671874

namespace A132754

/-- `A132763(n)/2+n` -/
def P14714814608225671874.Spec : Prop :=
  ∀ n, P14714814608225671874.a n = (A132754 n : ℚ)

end A132754

/-! ## A132754.P4379167543981825828

`A056121(n)+4*n`
-/

namespace A132754.P4379167543981825828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056121 n + (4 * n : ℤ)

end

end A132754.P4379167543981825828

namespace A132754

/-- `A056121(n)+4*n` -/
def P4379167543981825828.Spec : Prop :=
  ∀ n, P4379167543981825828.a n = A132754 n

end A132754

/-! ## A132754.P13776370843936449812

`A132757(n)-3*n`
-/

namespace A132754.P13776370843936449812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132757 n - (3 * n : ℤ)

end

end A132754.P13776370843936449812

namespace A132754

/-- `A132757(n)-3*n` -/
def P13776370843936449812.Spec : Prop :=
  ∀ n, P13776370843936449812.a n = A132754 n

end A132754

/-! ## A132754.P15246096385193899276

`A132767(n)/2-n`
-/

namespace A132754.P15246096385193899276
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A132767 n : ℚ) / 2 - (n : ℚ)

end

end A132754.P15246096385193899276

namespace A132754

/-- `A132767(n)/2-n` -/
def P15246096385193899276.Spec : Prop :=
  ∀ n, P15246096385193899276.a n = (A132754 n : ℚ)

end A132754

/-! ## A132754.P17586164400294099192

`A056119(n)+5*n`
-/

namespace A132754.P17586164400294099192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056119 n + (5 * n : ℤ)

end

end A132754.P17586164400294099192

namespace A132754

/-- `A056119(n)+5*n` -/
def P17586164400294099192.Spec : Prop :=
  ∀ n, P17586164400294099192.a n = A132754 n

end A132754

/-! ## A132754.P9622966084729498748

`A132758(n)-4*n`
-/

namespace A132754.P9622966084729498748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132758 n - (4 * n : ℤ)

end

end A132754.P9622966084729498748

namespace A132754

/-- `A132758(n)-4*n` -/
def P9622966084729498748.Spec : Prop :=
  ∀ n, P9622966084729498748.a n = A132754 n

end A132754

/-! ## A132754.P2590455188057876195

`A212427(n)-5*n`
-/

namespace A132754.P2590455188057876195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212427 n - (5 * n : ℤ)

end

end A132754.P2590455188057876195

namespace A132754

/-- `A212427(n)-5*n` -/
def P2590455188057876195.Spec : Prop :=
  ∀ n, P2590455188057876195.a n = A132754 n

end A132754

/-! ## A132754.P13688306127032722720

`A008592(n)+A000096(n)`
-/

namespace A132754.P13688306127032722720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008592 n + A000096 n

end

end A132754.P13688306127032722720

namespace A132754

/-- `A008592(n)+A000096(n)` -/
def P13688306127032722720.Spec : Prop :=
  ∀ n, P13688306127032722720.a n = A132754 n

end A132754

/-! ## A132754.P8145318729030231739

`A008593(n)+A000217(n)`
-/

namespace A132754.P8145318729030231739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008593 n + A000217 n

end

end A132754.P8145318729030231739

namespace A132754

/-- `A008593(n)+A000217(n)` -/
def P8145318729030231739.Spec : Prop :=
  ∀ n, P8145318729030231739.a n = A132754 n

end A132754

/-! ## A132754.P15497959191729176118

`A046691(n)+A017173(n)`
-/

namespace A132754.P15497959191729176118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046691 n + A017173 n

end

end A132754.P15497959191729176118

namespace A132754

/-- `A046691(n)+A017173(n)` -/
def P15497959191729176118.Spec : Prop :=
  ∀ n, P15497959191729176118.a n = A132754 n

end A132754

/-!
# A132755: a(n) = n*(n + 25)/2.

The programs for A132755, the canonical program `A132755.P1593539010894263036` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A132755 has offset 0).

The definition of A132755 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n*(n+25)/2` (program `A132755.P14999379561994851507`, by `A132755.P14999379561994851507.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A132755.P14999379561994851507

`n*(n+25)/2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A132755.P14999379561994851507
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n * (n + 25) : ℚ) / 2

end

end A132755.P14999379561994851507

namespace A132755

/-- `n*(n+25)/2` -/
def P14999379561994851507.Spec : Prop :=
  ∀ n, P14999379561994851507.a n = (A132755 n : ℚ)

theorem P14999379561994851507.correct : P14999379561994851507.Spec := by
  intro n
  induction n with
  | zero => simp [A132755, A132755.P14999379561994851507.a, A132755.P1593539010894263036.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
  | succ m ih =>
    simp only [A132755, Nat.add_sub_cancel, A132755.P14999379561994851507.a, A132755.P1593539010894263036.a, SequenceMachineLib.memo_apply] at ih ⊢
    rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
    try simp only [Nat.add_sub_cancel, Nat.lt_add_one, ↓reduceIte]
    try push_cast at ih ⊢
    try linarith

end A132755

/-! ## A132755.P1593539010894263036

`n+a(n-1)+12` with `a(0)=0`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A132755

/-- `n+a(n-1)+12` -/
def P1593539010894263036.Spec : Prop :=
  ∀ n, (P1593539010894263036.a n : ℤ) = A132755 n

theorem P1593539010894263036.correct : P1593539010894263036.Spec := by
  intro n
  simp only [A132755]

end A132755

/-! ## A132755.P6386187523915057566

`record[(n-25)*n/2]`
-/

namespace A132755.P6386187523915057566
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 25 : ℚ) * ((n : ℚ) / 2)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A132755.P6386187523915057566

namespace A132755

/-- `record[(n-25)*n/2]` -/
def P6386187523915057566.Spec : Prop :=
  ∀ n, P6386187523915057566.a n = (A132755 n : ℚ)

end A132755

/-! ## A132755.P4936018125642342201

`A132754(n)+n`
-/

namespace A132755.P4936018125642342201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132754 n + (n : ℤ)

end

end A132755.P4936018125642342201

namespace A132755

/-- `A132754(n)+n` -/
def P4936018125642342201.Spec : Prop :=
  ∀ n, P4936018125642342201.a n = A132755 n

end A132755

/-! ## A132755.P16042930677976092319

`A132756(n)-n`
-/

namespace A132755.P16042930677976092319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132756 n - (n : ℤ)

end

end A132755.P16042930677976092319

namespace A132755

/-- `A132756(n)-n` -/
def P16042930677976092319.Spec : Prop :=
  ∀ n, P16042930677976092319.a n = A132755 n

end A132755

/-! ## A132755.P5867924935127065689

`A132757(n)-2*n`
-/

namespace A132755.P5867924935127065689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132757 n - (2 * n : ℤ)

end

end A132755.P5867924935127065689

namespace A132755

/-- `A132757(n)-2*n` -/
def P5867924935127065689.Spec : Prop :=
  ∀ n, P5867924935127065689.a n = A132755 n

end A132755

/-! ## A132755.P4675852004327435443

`A132765(n)/2+n`
-/

namespace A132755.P4675852004327435443
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A132765 n : ℚ) / 2 + (n : ℚ)

end

end A132755.P4675852004327435443

namespace A132755

/-- `A132765(n)/2+n` -/
def P4675852004327435443.Spec : Prop :=
  ∀ n, P4675852004327435443.a n = (A132755 n : ℚ)

end A132755

/-! ## A132755.P16876445389439443829

`A056126(n)+4*n`
-/

namespace A132755.P16876445389439443829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056126 n + (4 * n : ℤ)

end

end A132755.P16876445389439443829

namespace A132755

/-- `A056126(n)+4*n` -/
def P16876445389439443829.Spec : Prop :=
  ∀ n, P16876445389439443829.a n = A132755 n

end A132755

/-! ## A132755.P1218062388857618396

`A132758(n)-3*n`
-/

namespace A132755.P1218062388857618396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132758 n - (3 * n : ℤ)

end

end A132755.P1218062388857618396

namespace A132755

/-- `A132758(n)-3*n` -/
def P1218062388857618396.Spec : Prop :=
  ∀ n, P1218062388857618396.a n = A132755 n

end A132755

/-! ## A132755.P17781605934844768695

`A132769(n)/2-n`
-/

namespace A132755.P17781605934844768695
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A132769 n : ℚ) / 2 - (n : ℚ)

end

end A132755.P17781605934844768695

namespace A132755

/-- `A132769(n)/2-n` -/
def P17781605934844768695.Spec : Prop :=
  ∀ n, P17781605934844768695.a n = (A132755 n : ℚ)

end A132755

/-! ## A132755.P8960450569346871393

`A056121(n)+5*n`
-/

namespace A132755.P8960450569346871393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056121 n + (5 * n : ℤ)

end

end A132755.P8960450569346871393

namespace A132755

/-- `A056121(n)+5*n` -/
def P8960450569346871393.Spec : Prop :=
  ∀ n, P8960450569346871393.a n = A132755 n

end A132755

/-! ## A132755.P11958371395009598139

`A212427(n)-4*n`
-/

namespace A132755.P11958371395009598139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212427 n - (4 * n : ℤ)

end

end A132755.P11958371395009598139

namespace A132755

/-- `A212427(n)-4*n` -/
def P11958371395009598139.Spec : Prop :=
  ∀ n, P11958371395009598139.a n = A132755 n

end A132755

/-! ## A132755.P1277790168980827580

`A212428(n)-5*n`
-/

namespace A132755.P1277790168980827580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212428 n - (5 * n : ℤ)

end

end A132755.P1277790168980827580

namespace A132755

/-- `A212428(n)-5*n` -/
def P1277790168980827580.Spec : Prop :=
  ∀ n, P1277790168980827580.a n = A132755 n

end A132755

/-! ## A132755.P10602948039310000162

`∑[2*A021019(n)+n]`
-/

namespace A132755.P10602948039310000162
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A021019 n + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A132755.P10602948039310000162

namespace A132755

/-- `∑[2*A021019(n)+n]` -/
def P10602948039310000162.Spec : Prop :=
  ∀ n, P10602948039310000162.a n = A132755 n

end A132755

/-! ## A132755.P7791210381762607693

`∑[4*4*n]-A152773(n)`
-/

namespace A132755.P7791210381762607693
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * (4 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - A152773 n

end

end A132755.P7791210381762607693

namespace A132755

/-- `∑[4*4*n]-A152773(n)` -/
def P7791210381762607693.Spec : Prop :=
  ∀ n, P7791210381762607693.a n = A132755 n

end A132755

/-! ## A132755.P16519961843262992008

`A008593(n)+A000096(n)`
-/

namespace A132755.P16519961843262992008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008593 n + A000096 n

end

end A132755.P16519961843262992008

namespace A132755

/-- `A008593(n)+A000096(n)` -/
def P16519961843262992008.Spec : Prop :=
  ∀ n, P16519961843262992008.a n = A132755 n

end A132755

/-! ## A132755.P6555664752487224319

`A008594(n)+A000217(n)`
-/

namespace A132755.P6555664752487224319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008594 n + A000217 n

end

end A132755.P6555664752487224319

namespace A132755

/-- `A008594(n)+A000217(n)` -/
def P6555664752487224319.Spec : Prop :=
  ∀ n, P6555664752487224319.a n = A132755 n

end A132755

/-! ## A132755.P1954936306086467507

`A046691(n)+A017281(n)`
-/

namespace A132755.P1954936306086467507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046691 n + A017281 n

end

end A132755.P1954936306086467507

namespace A132755

/-- `A046691(n)+A017281(n)` -/
def P1954936306086467507.Spec : Prop :=
  ∀ n, P1954936306086467507.a n = A132755 n

end A132755

/-! ## A132755.P9659286474665353619

`A055998(n)+A008592(n)`
-/

namespace A132755.P9659286474665353619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055998 n + A008592 n

end

end A132755.P9659286474665353619

namespace A132755

/-- `A055998(n)+A008592(n)` -/
def P9659286474665353619.Spec : Prop :=
  ∀ n, P9659286474665353619.a n = A132755 n

end A132755

/-!
# A132756: a(n) = n*(n + 27)/2.

The programs for A132756, the canonical program `A132756.P17680439812964659320` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A132756 has offset 0).

The definition of A132756 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n*(n+27)/2` (program `A132756.P11233916919218801838`, by `A132756.P11233916919218801838.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A132756.P11233916919218801838

`n*(n+27)/2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A132756.P11233916919218801838
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n * (n + 27) : ℚ) / 2

end

end A132756.P11233916919218801838

namespace A132756

/-- `n*(n+27)/2` -/
def P11233916919218801838.Spec : Prop :=
  ∀ n, P11233916919218801838.a n = (A132756 n : ℚ)

theorem P11233916919218801838.correct : P11233916919218801838.Spec := by
  intro n
  induction n with
  | zero => simp [A132756, A132756.P11233916919218801838.a, A132756.P17680439812964659320.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
  | succ m ih =>
    simp only [A132756, Nat.add_sub_cancel, A132756.P11233916919218801838.a, A132756.P17680439812964659320.a, SequenceMachineLib.memo_apply] at ih ⊢
    rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
    try simp only [Nat.add_sub_cancel, Nat.lt_add_one, ↓reduceIte]
    try push_cast at ih ⊢
    try linarith

end A132756

/-! ## A132756.P17680439812964659320

`n+a(n-1)+13` with `a(0)=0`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A132756

/-- `n+a(n-1)+13` -/
def P17680439812964659320.Spec : Prop :=
  ∀ n, (P17680439812964659320.a n : ℤ) = A132756 n

theorem P17680439812964659320.correct : P17680439812964659320.Spec := by
  intro n
  simp only [A132756]

end A132756

/-! ## A132756.P9034649255618417805

`record[(n-27)*n/2]`
-/

namespace A132756.P9034649255618417805
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 27 : ℚ) * ((n : ℚ) / 2)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A132756.P9034649255618417805

namespace A132756

/-- `record[(n-27)*n/2]` -/
def P9034649255618417805.Spec : Prop :=
  ∀ n, P9034649255618417805.a n = (A132756 n : ℚ)

end A132756

/-! ## A132756.P9404757999641604154

`C(n, 2)+2*7*n`
-/

namespace A132756.P9404757999641604154
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n 2 + 2 * (7 * n)

end

end A132756.P9404757999641604154

namespace A132756

/-- `C(n, 2)+2*7*n` -/
def P9404757999641604154.Spec : Prop :=
  ∀ n, (P9404757999641604154.a n : ℤ) = A132756 n

end A132756

/-! ## A132756.P7011405666529442349

`A132755(n)+n`
-/

namespace A132756.P7011405666529442349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132755 n + (n : ℤ)

end

end A132756.P7011405666529442349

namespace A132756

/-- `A132755(n)+n` -/
def P7011405666529442349.Spec : Prop :=
  ∀ n, P7011405666529442349.a n = A132756 n

end A132756

/-! ## A132756.P9044830219868324997

`A132757(n)-n`
-/

namespace A132756.P9044830219868324997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132757 n - (n : ℤ)

end

end A132756.P9044830219868324997

namespace A132756

/-- `A132757(n)-n` -/
def P9044830219868324997.Spec : Prop :=
  ∀ n, P9044830219868324997.a n = A132756 n

end A132756

/-! ## A132756.P7017359517830824448

`A132754(n)+2*n`
-/

namespace A132756.P7017359517830824448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132754 n + (2 * n : ℤ)

end

end A132756.P7017359517830824448

namespace A132756

/-- `A132754(n)+2*n` -/
def P7017359517830824448.Spec : Prop :=
  ∀ n, P7017359517830824448.a n = A132756 n

end A132756

/-! ## A132756.P11178555093977264974

`A132758(n)-2*n`
-/

namespace A132756.P11178555093977264974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132758 n - (2 * n : ℤ)

end

end A132756.P11178555093977264974

namespace A132756

/-- `A132758(n)-2*n` -/
def P11178555093977264974.Spec : Prop :=
  ∀ n, P11178555093977264974.a n = A132756 n

end A132756

/-! ## A132756.P12383109691287340722

`A132767(n)/2+n`
-/

namespace A132756.P12383109691287340722
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A132767 n : ℚ) / 2 + (n : ℚ)

end

end A132756.P12383109691287340722

namespace A132756

/-- `A132767(n)/2+n` -/
def P12383109691287340722.Spec : Prop :=
  ∀ n, P12383109691287340722.a n = (A132756 n : ℚ)

end A132756

/-! ## A132756.P10865695792239667025

`A132771(n)/2-n`
-/

namespace A132756.P10865695792239667025
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A132771 n : ℚ) / 2 - (n : ℚ)

end

end A132756.P10865695792239667025

namespace A132756

/-- `A132771(n)/2-n` -/
def P10865695792239667025.Spec : Prop :=
  ∀ n, P10865695792239667025.a n = (A132756 n : ℚ)

end A132756

/-! ## A132756.P2280962679079996190

`A212427(n)-3*n`
-/

namespace A132756.P2280962679079996190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212427 n - (3 * n : ℤ)

end

end A132756.P2280962679079996190

namespace A132756

/-- `A212427(n)-3*n` -/
def P2280962679079996190.Spec : Prop :=
  ∀ n, P2280962679079996190.a n = A132756 n

end A132756

/-! ## A132756.P3687073074537943868

`A056126(n)+5*n`
-/

namespace A132756.P3687073074537943868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056126 n + (5 * n : ℤ)

end

end A132756.P3687073074537943868

namespace A132756

/-- `A056126(n)+5*n` -/
def P3687073074537943868.Spec : Prop :=
  ∀ n, P3687073074537943868.a n = A132756 n

end A132756

/-! ## A132756.P3010919008850172714

`A212428(n)-4*n`
-/

namespace A132756.P3010919008850172714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212428 n - (4 * n : ℤ)

end

end A132756.P3010919008850172714

namespace A132756

/-- `A212428(n)-4*n` -/
def P3010919008850172714.Spec : Prop :=
  ∀ n, P3010919008850172714.a n = A132756 n

end A132756

/-! ## A132756.P13604929539288366553

`14*n+A161680(n)`
-/

namespace A132756.P13604929539288366553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (14 * n : ℤ) + A161680 n

end

end A132756.P13604929539288366553

namespace A132756

/-- `14*n+A161680(n)` -/
def P13604929539288366553.Spec : Prop :=
  ∀ n, P13604929539288366553.a n = A132756 n

end A132756

/-! ## A132756.P15005109220074773917

`A008594(n)+A000096(n)`
-/

namespace A132756.P15005109220074773917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008594 n + A000096 n

end

end A132756.P15005109220074773917

namespace A132756

/-- `A008594(n)+A000096(n)` -/
def P15005109220074773917.Spec : Prop :=
  ∀ n, P15005109220074773917.a n = A132756 n

end A132756

/-! ## A132756.P6692258366135991140

`A008595(n)+A000217(n)`
-/

namespace A132756.P6692258366135991140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008595 n + A000217 n

end

end A132756.P6692258366135991140

namespace A132756

/-- `A008595(n)+A000217(n)` -/
def P6692258366135991140.Spec : Prop :=
  ∀ n, P6692258366135991140.a n = A132756 n

end A132756

/-! ## A132756.P9372206560821684207

`A046691(n)+A017401(n)`
-/

namespace A132756.P9372206560821684207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046691 n + A017401 n

end

end A132756.P9372206560821684207

namespace A132756

/-- `A046691(n)+A017401(n)` -/
def P9372206560821684207.Spec : Prop :=
  ∀ n, P9372206560821684207.a n = A132756 n

end A132756

/-! ## A132756.P2477302196026402890

`A055998(n)+A008593(n)`
-/

namespace A132756.P2477302196026402890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055998 n + A008593 n

end

end A132756.P2477302196026402890

namespace A132756

/-- `A055998(n)+A008593(n)` -/
def P2477302196026402890.Spec : Prop :=
  ∀ n, P2477302196026402890.a n = A132756 n

end A132756

/-! ## A132756.P16498874296525644968

`A055999(n)+A008592(n)`
-/

namespace A132756.P16498874296525644968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055999 n + A008592 n

end

end A132756.P16498874296525644968

namespace A132756

/-- `A055999(n)+A008592(n)` -/
def P16498874296525644968.Spec : Prop :=
  ∀ n, P16498874296525644968.a n = A132756 n

end A132756

/-!
# A132757: a(n) = n*(n+29)/2.

The programs for A132757, the canonical program `A132757.P7887233091327332285` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A132757 has offset 0).

The definition of A132757 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n*(n+29)/2` (program `A132757.P10264465193007206122`, by `A132757.P10264465193007206122.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A132757.P10264465193007206122

`n*(n+29)/2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A132757.P10264465193007206122
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n * (n + 29) : ℚ) / 2

end

end A132757.P10264465193007206122

namespace A132757

/-- `n*(n+29)/2` -/
def P10264465193007206122.Spec : Prop :=
  ∀ n, P10264465193007206122.a n = (A132757 n : ℚ)

theorem P10264465193007206122.correct : P10264465193007206122.Spec := by
  intro n
  induction n with
  | zero => simp [A132757, A132757.P10264465193007206122.a, A132757.P7887233091327332285.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
  | succ m ih =>
    simp only [A132757, Nat.add_sub_cancel, A132757.P10264465193007206122.a, A132757.P7887233091327332285.a, SequenceMachineLib.memo_apply] at ih ⊢
    rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
    try simp only [Nat.add_sub_cancel, Nat.lt_add_one, ↓reduceIte]
    try push_cast at ih ⊢
    try linarith

end A132757

/-! ## A132757.P7887233091327332285

`n+a(n-1)+14` with `a(0)=0`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A132757

/-- `n+a(n-1)+14` -/
def P7887233091327332285.Spec : Prop :=
  ∀ n, (P7887233091327332285.a n : ℤ) = A132757 n

theorem P7887233091327332285.correct : P7887233091327332285.Spec := by
  intro n
  simp only [A132757]

end A132757

/-! ## A132757.P13329440990628337896

`record[C(n, 2)-14*n]`
-/

namespace A132757.P13329440990628337896
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose n 2 : ℤ) - (14 * n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A132757.P13329440990628337896

namespace A132757

/-- `record[C(n, 2)-14*n]` -/
def P13329440990628337896.Spec : Prop :=
  ∀ n, P13329440990628337896.a n = A132757 n

end A132757

/-! ## A132757.P16870755657076665264

`A132756(n)+n`
-/

namespace A132757.P16870755657076665264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132756 n + (n : ℤ)

end

end A132757.P16870755657076665264

namespace A132757

/-- `A132756(n)+n` -/
def P16870755657076665264.Spec : Prop :=
  ∀ n, P16870755657076665264.a n = A132757 n

end A132757

/-! ## A132757.P10357653400004463587

`A132758(n)-n`
-/

namespace A132757.P10357653400004463587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132758 n - (n : ℤ)

end

end A132757.P10357653400004463587

namespace A132757

/-- `A132758(n)-n` -/
def P10357653400004463587.Spec : Prop :=
  ∀ n, P10357653400004463587.a n = A132757 n

end A132757

/-! ## A132757.P11438966713488211299

`A132755(n)+2*n`
-/

namespace A132757.P11438966713488211299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132755 n + (2 * n : ℤ)

end

end A132757.P11438966713488211299

namespace A132757

/-- `A132755(n)+2*n` -/
def P11438966713488211299.Spec : Prop :=
  ∀ n, P11438966713488211299.a n = A132757 n

end A132757

/-! ## A132757.P16151193151438916188

`A132754(n)+3*n`
-/

namespace A132757.P16151193151438916188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132754 n + (3 * n : ℤ)

end

end A132757.P16151193151438916188

namespace A132757

/-- `A132754(n)+3*n` -/
def P16151193151438916188.Spec : Prop :=
  ∀ n, P16151193151438916188.a n = A132757 n

end A132757

/-! ## A132757.P3727784999879838257

`A132769(n)/2+n`
-/

namespace A132757.P3727784999879838257
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A132769 n : ℚ) / 2 + (n : ℚ)

end

end A132757.P3727784999879838257

namespace A132757

/-- `A132769(n)/2+n` -/
def P3727784999879838257.Spec : Prop :=
  ∀ n, P3727784999879838257.a n = (A132757 n : ℚ)

end A132757

/-! ## A132757.P16040527070263771618

`A212427(n)-2*n`
-/

namespace A132757.P16040527070263771618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212427 n - (2 * n : ℤ)

end

end A132757.P16040527070263771618

namespace A132757

/-- `A212427(n)-2*n` -/
def P16040527070263771618.Spec : Prop :=
  ∀ n, P16040527070263771618.a n = A132757 n

end A132757

/-! ## A132757.P1697952968463508377

`A132773(n)/2-n`
-/

namespace A132757.P1697952968463508377
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A132773 n : ℚ) / 2 - (n : ℚ)

end

end A132757.P1697952968463508377

namespace A132757

/-- `A132773(n)/2-n` -/
def P1697952968463508377.Spec : Prop :=
  ∀ n, P1697952968463508377.a n = (A132757 n : ℚ)

end A132757

/-! ## A132757.P5247721647231877957

`A212428(n)-3*n`
-/

namespace A132757.P5247721647231877957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212428 n - (3 * n : ℤ)

end

end A132757.P5247721647231877957

namespace A132757

/-- `A212428(n)-3*n` -/
def P5247721647231877957.Spec : Prop :=
  ∀ n, P5247721647231877957.a n = A132757 n

end A132757

/-! ## A132757.P12564690849245200957

`A008596(n)+n²-C(n, 2)`
-/

namespace A132757.P12564690849245200957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008596 n + ((n ^ 2 : ℤ) - (Nat.choose n 2 : ℤ))

end

end A132757.P12564690849245200957

namespace A132757

/-- `A008596(n)+n²-C(n, 2)` -/
def P12564690849245200957.Spec : Prop :=
  ∀ n, P12564690849245200957.a n = A132757 n

end A132757

/-! ## A132757.P7305369716525404565

`A000217(n+1)+13*n-1`
-/

namespace A132757.P7305369716525404565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (n + 1) + (13 * n : ℤ) - 1

end

end A132757.P7305369716525404565

namespace A132757

/-- `A000217(n+1)+13*n-1` -/
def P7305369716525404565.Spec : Prop :=
  ∀ n, P7305369716525404565.a n = A132757 n

end A132757

/-! ## A132757.P10226336095590452026

`A008595(n)+A000096(n)`
-/

namespace A132757.P10226336095590452026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008595 n + A000096 n

end

end A132757.P10226336095590452026

namespace A132757

/-- `A008595(n)+A000096(n)` -/
def P10226336095590452026.Spec : Prop :=
  ∀ n, P10226336095590452026.a n = A132757 n

end A132757

/-! ## A132757.P1545978856556900578

`A008596(n)+A000217(n)`
-/

namespace A132757.P1545978856556900578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008596 n + A000217 n

end

end A132757.P1545978856556900578

namespace A132757

/-- `A008596(n)+A000217(n)` -/
def P1545978856556900578.Spec : Prop :=
  ∀ n, P1545978856556900578.a n = A132757 n

end A132757

/-! ## A132757.P16210543285926666256

`A046691(n)+A017533(n)`
-/

namespace A132757.P16210543285926666256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046691 n + A017533 n

end

end A132757.P16210543285926666256

namespace A132757

/-- `A046691(n)+A017533(n)` -/
def P16210543285926666256.Spec : Prop :=
  ∀ n, P16210543285926666256.a n = A132757 n

end A132757

/-! ## A132757.P8551624934436593938

`A055998(n)+A008594(n)`
-/

namespace A132757.P8551624934436593938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055998 n + A008594 n

end

end A132757.P8551624934436593938

namespace A132757

/-- `A055998(n)+A008594(n)` -/
def P8551624934436593938.Spec : Prop :=
  ∀ n, P8551624934436593938.a n = A132757 n

end A132757

/-! ## A132757.P7549190370108834984

`A055999(n)+A008593(n)`
-/

namespace A132757.P7549190370108834984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055999 n + A008593 n

end

end A132757.P7549190370108834984

namespace A132757

/-- `A055999(n)+A008593(n)` -/
def P7549190370108834984.Spec : Prop :=
  ∀ n, P7549190370108834984.a n = A132757 n

end A132757

/-! ## A132757.P6240284013951666211

`A056000(n)+A008592(n)`
-/

namespace A132757.P6240284013951666211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056000 n + A008592 n

end

end A132757.P6240284013951666211

namespace A132757

/-- `A056000(n)+A008592(n)` -/
def P6240284013951666211.Spec : Prop :=
  ∀ n, P6240284013951666211.a n = A132757 n

end A132757

/-!
# A132758: a(n) = n*(n + 31)/2.

The programs for A132758, the canonical program `A132758.P18414244189352797749` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A132758 has offset 0).

The definition of A132758 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n*(n+31)/2` (program `A132758.P13225287229772816859`, by `A132758.P13225287229772816859.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A132758.P13225287229772816859

`n*(n+31)/2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A132758.P13225287229772816859
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n * (n + 31) : ℚ) / 2

end

end A132758.P13225287229772816859

namespace A132758

/-- `n*(n+31)/2` -/
def P13225287229772816859.Spec : Prop :=
  ∀ n, P13225287229772816859.a n = (A132758 n : ℚ)

theorem P13225287229772816859.correct : P13225287229772816859.Spec := by
  intro n
  induction n with
  | zero => simp [A132758, A132758.P13225287229772816859.a, A132758.P18414244189352797749.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
  | succ m ih =>
    simp only [A132758, Nat.add_sub_cancel, A132758.P13225287229772816859.a, A132758.P18414244189352797749.a, SequenceMachineLib.memo_apply] at ih ⊢
    rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
    try simp only [Nat.add_sub_cancel, Nat.lt_add_one, ↓reduceIte]
    try push_cast at ih ⊢
    try linarith

end A132758

/-! ## A132758.P18414244189352797749

`n+a(n-1)+15` with `a(0)=0`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A132758

/-- `n+a(n-1)+15` -/
def P18414244189352797749.Spec : Prop :=
  ∀ n, (P18414244189352797749.a n : ℤ) = A132758 n

theorem P18414244189352797749.correct : P18414244189352797749.Spec := by
  intro n
  simp only [A132758]

end A132758

/-! ## A132758.P7007962217018294969

`record[C(n, 2)-15*n]`
-/

namespace A132758.P7007962217018294969
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose n 2 : ℤ) - (15 * n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A132758.P7007962217018294969

namespace A132758

/-- `record[C(n, 2)-15*n]` -/
def P7007962217018294969.Spec : Prop :=
  ∀ n, P7007962217018294969.a n = A132758 n

end A132758

/-! ## A132758.P13668479785458837059

`A132757(n)+n`
-/

namespace A132758.P13668479785458837059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132757 n + (n : ℤ)

end

end A132758.P13668479785458837059

namespace A132758

/-- `A132757(n)+n` -/
def P13668479785458837059.Spec : Prop :=
  ∀ n, P13668479785458837059.a n = A132758 n

end A132758

/-! ## A132758.P12191154116909589809

`A212427(n)-n`
-/

namespace A132758.P12191154116909589809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212427 n - (n : ℤ)

end

end A132758.P12191154116909589809

namespace A132758

/-- `A212427(n)-n` -/
def P12191154116909589809.Spec : Prop :=
  ∀ n, P12191154116909589809.a n = A132758 n

end A132758

/-! ## A132758.P10419688538227063089

`A132756(n)+2*n`
-/

namespace A132758.P10419688538227063089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132756 n + (2 * n : ℤ)

end

end A132758.P10419688538227063089

namespace A132758

/-- `A132756(n)+2*n` -/
def P10419688538227063089.Spec : Prop :=
  ∀ n, P10419688538227063089.a n = A132758 n

end A132758

/-! ## A132758.P4279291397037317974

`A132755(n)+3*n`
-/

namespace A132758.P4279291397037317974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132755 n + (3 * n : ℤ)

end

end A132758.P4279291397037317974

namespace A132758

/-- `A132755(n)+3*n` -/
def P4279291397037317974.Spec : Prop :=
  ∀ n, P4279291397037317974.a n = A132758 n

end A132758

/-! ## A132758.P11968697977715601890

`A132771(n)/2+n`
-/

namespace A132758.P11968697977715601890
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A132771 n : ℚ) / 2 + (n : ℚ)

end

end A132758.P11968697977715601890

namespace A132758

/-- `A132771(n)/2+n` -/
def P11968697977715601890.Spec : Prop :=
  ∀ n, P11968697977715601890.a n = (A132758 n : ℚ)

end A132758

/-! ## A132758.P1093970730536060517

`A212428(n)-2*n`
-/

namespace A132758.P1093970730536060517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212428 n - (2 * n : ℤ)

end

end A132758.P1093970730536060517

namespace A132758

/-- `A212428(n)-2*n` -/
def P1093970730536060517.Spec : Prop :=
  ∀ n, P1093970730536060517.a n = A132758 n

end A132758

/-! ## A132758.P13047567543042640138

`A132754(n)+4*n`
-/

namespace A132758.P13047567543042640138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132754 n + (4 * n : ℤ)

end

end A132758.P13047567543042640138

namespace A132758

/-- `A132754(n)+4*n` -/
def P13047567543042640138.Spec : Prop :=
  ∀ n, P13047567543042640138.a n = A132758 n

end A132758

/-! ## A132758.P11246054715210067013

`15*n+A000217(n)`
-/

namespace A132758.P11246054715210067013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (15 * n : ℤ) + A000217 n

end

end A132758.P11246054715210067013

namespace A132758

/-- `15*n+A000217(n)` -/
def P11246054715210067013.Spec : Prop :=
  ∀ n, P11246054715210067013.a n = A132758 n

end A132758

/-! ## A132758.P420371222895446802

`A008596(n)+A000096(n)`
-/

namespace A132758.P420371222895446802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008596 n + A000096 n

end

end A132758.P420371222895446802

namespace A132758

/-- `A008596(n)+A000096(n)` -/
def P420371222895446802.Spec : Prop :=
  ∀ n, P420371222895446802.a n = A132758 n

end A132758

/-! ## A132758.P8933872590417468685

`A055998(n)+A008595(n)`
-/

namespace A132758.P8933872590417468685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055998 n + A008595 n

end

end A132758.P8933872590417468685

namespace A132758

/-- `A055998(n)+A008595(n)` -/
def P8933872590417468685.Spec : Prop :=
  ∀ n, P8933872590417468685.a n = A132758 n

end A132758

/-! ## A132758.P17633821216802519795

`A055999(n)+A008594(n)`
-/

namespace A132758.P17633821216802519795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055999 n + A008594 n

end

end A132758.P17633821216802519795

namespace A132758

/-- `A055999(n)+A008594(n)` -/
def P17633821216802519795.Spec : Prop :=
  ∀ n, P17633821216802519795.a n = A132758 n

end A132758

/-! ## A132758.P7014865051516989682

`A056000(n)+A008593(n)`
-/

namespace A132758.P7014865051516989682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056000 n + A008593 n

end

end A132758.P7014865051516989682

namespace A132758

/-- `A056000(n)+A008593(n)` -/
def P7014865051516989682.Spec : Prop :=
  ∀ n, P7014865051516989682.a n = A132758 n

end A132758

/-! ## A132758.P10738622724466420110

`A056115(n)+A008592(n)`
-/

namespace A132758.P10738622724466420110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056115 n + A008592 n

end

end A132758.P10738622724466420110

namespace A132758

/-- `A056115(n)+A008592(n)` -/
def P10738622724466420110.Spec : Prop :=
  ∀ n, P10738622724466420110.a n = A132758 n

end A132758

/-! ## A132758.P5999407034726323871

`A056119(n)+A008591(n)`
-/

namespace A132758.P5999407034726323871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056119 n + A008591 n

end

end A132758.P5999407034726323871

namespace A132758

/-- `A056119(n)+A008591(n)` -/
def P5999407034726323871.Spec : Prop :=
  ∀ n, P5999407034726323871.a n = A132758 n

end A132758

/-! ## A132758.P9195277480771964755

`A056121(n)+A008590(n)`
-/

namespace A132758.P9195277480771964755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056121 n + A008590 n

end

end A132758.P9195277480771964755

namespace A132758

/-- `A056121(n)+A008590(n)` -/
def P9195277480771964755.Spec : Prop :=
  ∀ n, P9195277480771964755.a n = A132758 n

end A132758

/-! ## A132758.P16215330730168474606

`A056126(n)+A008589(n)`
-/

namespace A132758.P16215330730168474606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056126 n + A008589 n

end

end A132758.P16215330730168474606

namespace A132758

/-- `A056126(n)+A008589(n)` -/
def P16215330730168474606.Spec : Prop :=
  ∀ n, P16215330730168474606.a n = A132758 n

end A132758

/-!
# A132759: a(n) = n*(n+13).

The programs for A132759, the canonical program `A132759.P11337813535892278005` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A132759 has offset 0).

The definition of A132759 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n*(n+13)` (program `A132759.P11337813535892278005`, by `A132759.P11337813535892278005.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A132759.P11337813535892278005

`n*(n+13)`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A132759

/-- `n*(n+13)` -/
def P11337813535892278005.Spec : Prop :=
  ∀ n, (P11337813535892278005.a n : ℤ) = A132759 n

theorem P11337813535892278005.correct : P11337813535892278005.Spec := by
  intro n
  simp only [A132759]

end A132759

/-!
# A132760: a(n) = n*(n+15).

The programs for A132760, the canonical program `A132760.P17654456154960178820` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A132760 has offset 0).

The definition of A132760 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n*(n+15)` (program `A132760.P17654456154960178820`, by `A132760.P17654456154960178820.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A132760.P17654456154960178820

`n*(n+15)`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A132760

/-- `n*(n+15)` -/
def P17654456154960178820.Spec : Prop :=
  ∀ n, (P17654456154960178820.a n : ℤ) = A132760 n

theorem P17654456154960178820.correct : P17654456154960178820.Spec := by
  intro n
  simp only [A132760]

end A132760

/-!
# A132761: a(n) = n*(n+17).

The programs for A132761, the canonical program `A132761.P14936844187475922917` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A132761 has offset 0).

The definition of A132761 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n*(n+17)` (program `A132761.P14936844187475922917`, by `A132761.P14936844187475922917.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A132761.P14936844187475922917

`n*(n+17)`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A132761

/-- `n*(n+17)` -/
def P14936844187475922917.Spec : Prop :=
  ∀ n, (P14936844187475922917.a n : ℤ) = A132761 n

theorem P14936844187475922917.correct : P14936844187475922917.Spec := by
  intro n
  simp only [A132761]

end A132761

/-!
# A132762: a(n) = n*(n + 19).

The programs for A132762, the canonical program `A132762.P13283584558511949576` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A132762 has offset 0).

The definition of A132762 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n*(n+19)` (program `A132762.P13283584558511949576`, by `A132762.P13283584558511949576.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A132762.P13283584558511949576

`n*(n+19)`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A132762

/-- `n*(n+19)` -/
def P13283584558511949576.Spec : Prop :=
  ∀ n, (P13283584558511949576.a n : ℤ) = A132762 n

theorem P13283584558511949576.correct : P13283584558511949576.Spec := by
  intro n
  simp only [A132762]

end A132762

/-!
# A132763: a(n) = n*(n+21).

The programs for A132763, the canonical program `A132763.P15204131958599443596` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A132763 has offset 0).

The definition of A132763 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n*(n+21)` (program `A132763.P15204131958599443596`, by `A132763.P15204131958599443596.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A132763.P15204131958599443596

`n*(n+21)`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A132763

/-- `n*(n+21)` -/
def P15204131958599443596.Spec : Prop :=
  ∀ n, (P15204131958599443596.a n : ℤ) = A132763 n

theorem P15204131958599443596.correct : P15204131958599443596.Spec := by
  intro n
  simp only [A132763]

end A132763

/-!
# A132764: a(n) = n*(n+22).

The programs for A132764, the canonical program `A132764.P12818640193784093272` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A132764 has offset 0).

The definition of A132764 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n*(n+22)` (program `A132764.P12818640193784093272`, by `A132764.P12818640193784093272.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A132764.P12818640193784093272

`n*(n+22)`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A132764

/-- `n*(n+22)` -/
def P12818640193784093272.Spec : Prop :=
  ∀ n, (P12818640193784093272.a n : ℤ) = A132764 n

theorem P12818640193784093272.correct : P12818640193784093272.Spec := by
  intro n
  simp only [A132764]

end A132764

/-!
# A132765: a(n) = n*(n + 23).

The programs for A132765, the canonical program `A132765.P2423139807718157486` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A132765 has offset 0).

The definition of A132765 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n*(n+23)` (program `A132765.P2423139807718157486`, by `A132765.P2423139807718157486.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A132765.P2423139807718157486

`n*(n+23)`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A132765

/-- `n*(n+23)` -/
def P2423139807718157486.Spec : Prop :=
  ∀ n, (P2423139807718157486.a n : ℤ) = A132765 n

theorem P2423139807718157486.correct : P2423139807718157486.Spec := by
  intro n
  simp only [A132765]

end A132765

/-!
# A132766: a(n) = n*(n+24).

The programs for A132766, the canonical program `A132766.P16340710873553497223` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A132766 has offset 0).

The definition of A132766 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n*(n+24)` (program `A132766.P16340710873553497223`, by `A132766.P16340710873553497223.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A132766.P16340710873553497223

`n*(n+24)`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A132766

/-- `n*(n+24)` -/
def P16340710873553497223.Spec : Prop :=
  ∀ n, (P16340710873553497223.a n : ℤ) = A132766 n

theorem P16340710873553497223.correct : P16340710873553497223.Spec := by
  intro n
  simp only [A132766]

end A132766

/-!
# A132767: a(n) = n*(n + 25).

The programs for A132767, the canonical program `A132767.P13309384290684019065` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A132767 has offset 0).

The definition of A132767 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n*(n+25)` (program `A132767.P13309384290684019065`, by `A132767.P13309384290684019065.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A132767.P13309384290684019065

`n*(n+25)`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A132767

/-- `n*(n+25)` -/
def P13309384290684019065.Spec : Prop :=
  ∀ n, (P13309384290684019065.a n : ℤ) = A132767 n

theorem P13309384290684019065.correct : P13309384290684019065.Spec := by
  intro n
  simp only [A132767]

end A132767

/-!
# A132768: a(n) = n*(n + 26).

The programs for A132768, the canonical program `A132768.P13960031813266660541` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A132768 has offset 0).

The definition of A132768 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n*(n+26)` (program `A132768.P13960031813266660541`, by `A132768.P13960031813266660541.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A132768.P13960031813266660541

`n*(n+26)`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A132768

/-- `n*(n+26)` -/
def P13960031813266660541.Spec : Prop :=
  ∀ n, (P13960031813266660541.a n : ℤ) = A132768 n

theorem P13960031813266660541.correct : P13960031813266660541.Spec := by
  intro n
  simp only [A132768]

end A132768

/-!
# A132769: a(n) = n*(n + 27).

The programs for A132769, the canonical program `A132769.P14023908928819150232` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A132769 has offset 0).

The definition of A132769 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n*(n+27)` (program `A132769.P14023908928819150232`, by `A132769.P14023908928819150232.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A132769.P14023908928819150232

`n*(n+27)`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A132769

/-- `n*(n+27)` -/
def P14023908928819150232.Spec : Prop :=
  ∀ n, (P14023908928819150232.a n : ℤ) = A132769 n

theorem P14023908928819150232.correct : P14023908928819150232.Spec := by
  intro n
  simp only [A132769]

end A132769

/-!
# A132770: a(n) = n*(n + 28).

The programs for A132770, the canonical program `A132770.P12357990989208412572` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A132770 has offset 0).

The definition of A132770 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n*(n+28)` (program `A132770.P12357990989208412572`, by `A132770.P12357990989208412572.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A132770.P12357990989208412572

`n*(n+28)`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A132770

/-- `n*(n+28)` -/
def P12357990989208412572.Spec : Prop :=
  ∀ n, (P12357990989208412572.a n : ℤ) = A132770 n

theorem P12357990989208412572.correct : P12357990989208412572.Spec := by
  intro n
  simp only [A132770]

end A132770

/-!
# A132771: a(n) = n*(n + 29).

The programs for A132771, the canonical program `A132771.P12239395539002999973` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A132771 has offset 0).

The definition of A132771 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n*(n+29)` (program `A132771.P12239395539002999973`, by `A132771.P12239395539002999973.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A132771.P12239395539002999973

`n*(n+29)`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A132771

/-- `n*(n+29)` -/
def P12239395539002999973.Spec : Prop :=
  ∀ n, (P12239395539002999973.a n : ℤ) = A132771 n

theorem P12239395539002999973.correct : P12239395539002999973.Spec := by
  intro n
  simp only [A132771]

end A132771

/-!
# A132772: a(n) = n*(n + 30).

The programs for A132772, the canonical program `A132772.P2558700005956302944` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A132772 has offset 0).

The definition of A132772 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n*(n+30)` (program `A132772.P2558700005956302944`, by `A132772.P2558700005956302944.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A132772.P2558700005956302944

`n*(n+30)`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A132772

/-- `n*(n+30)` -/
def P2558700005956302944.Spec : Prop :=
  ∀ n, (P2558700005956302944.a n : ℤ) = A132772 n

theorem P2558700005956302944.correct : P2558700005956302944.Spec := by
  intro n
  simp only [A132772]

end A132772

/-!
# A132773: a(n) = n*(n + 31).

The programs for A132773, the canonical program `A132773.P1585102501411787334` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A132773 has offset 0).

The definition of A132773 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n*(n+31)` (program `A132773.P1585102501411787334`, by `A132773.P1585102501411787334.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A132773.P1585102501411787334

`n*(n+31)`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A132773

/-- `n*(n+31)` -/
def P1585102501411787334.Spec : Prop :=
  ∀ n, (P1585102501411787334.a n : ℤ) = A132773 n

theorem P1585102501411787334.correct : P1585102501411787334.Spec := by
  intro n
  simp only [A132773]

end A132773

/-!
# A132774: A natural number operator.

The programs for A132774, the canonical program `A132774.P14409811669311265366` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A132774 has offset 1).

The definition of A132774 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A132774.P7671464244891946919

`∑[2-Δ[∪[2*n, n²+1+n]]]*A097806(n)`
-/

namespace A132774.P7671464244891946919
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2 + 1 + n

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f3 j = x) ∨ ∃ j, f4 j = x) n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - ((f2 (n + 1) : ℤ) - (f2 n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A097806 n

end

end A132774.P7671464244891946919

namespace A132774

/-- `∑[2-Δ[∪[2*n, n²+1+n]]]*A097806(n)` -/
def P7671464244891946919.Spec : Prop :=
  ∀ n, P7671464244891946919.a n = A132774 (n + 1)

end A132774

/-! ## A132774.P7460367739911420997

`lcm(A131227(n), A134082(n))`
-/

namespace A132774.P7460367739911420997
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A131227 n) (A134082 n)

end

end A132774.P7460367739911420997

namespace A132774

/-- `lcm(A131227(n), A134082(n))` -/
def P7460367739911420997.Spec : Prop :=
  ∀ n, (P7460367739911420997.a n : ℤ) = A132774 (n + 1)

end A132774

/-! ## A132774.P14409811669311265366

`∑[A097806(n)]*A097806(n)`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A132774

/-- `∑[A097806(n)]*A097806(n)` -/
def P14409811669311265366.Spec : Prop :=
  ∀ n, P14409811669311265366.a n = A132774 (n + 1)

theorem P14409811669311265366.correct : P14409811669311265366.Spec := by
  intro n
  simp only [A132774, Nat.add_sub_cancel]

end A132774

/-! ## A132774.P1142411092874452910

`A094727(n+1)*A097806(n)`
-/

namespace A132774.P1142411092874452910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094727 (n + 1) * A097806 n

end

end A132774.P1142411092874452910

namespace A132774

/-- `A094727(n+1)*A097806(n)` -/
def P1142411092874452910.Spec : Prop :=
  ∀ n, P1142411092874452910.a n = A132774 (n + 1)

end A132774

/-! ## A132774.P12937607513077121196

`A097806(n)*A131225(n+1)`
-/

namespace A132774.P12937607513077121196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097806 n * A131225 (n + 1)

end

end A132774.P12937607513077121196

namespace A132774

/-- `A097806(n)*A131225(n+1)` -/
def P12937607513077121196.Spec : Prop :=
  ∀ n, P12937607513077121196.a n = A132774 (n + 1)

end A132774

/-! ## A132774.P9449710009180729307

`A128229(n+1)*A131227(n)`
-/

namespace A132774.P9449710009180729307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128229 (n + 1) * A131227 n

end

end A132774.P9449710009180729307

namespace A132774

/-- `A128229(n+1)*A131227(n)` -/
def P9449710009180729307.Spec : Prop :=
  ∀ n, P9449710009180729307.a n = A132774 (n + 1)

end A132774

/-! ## A132774.P15666706176665811315

`A097806(n)*A241151(n+2)`
-/

namespace A132774.P15666706176665811315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097806 n * A241151 (n + 2)

end

end A132774.P15666706176665811315

namespace A132774

/-- `A097806(n)*A241151(n+2)` -/
def P15666706176665811315.Spec : Prop :=
  ∀ n, P15666706176665811315.a n = A132774 (n + 1)

theorem P15666706176665811315.correct : P15666706176665811315.Spec := by
  intro n
  simp only [A132774, Nat.add_sub_cancel, A132774.P15666706176665811315.a, A132774.P14409811669311265366.f1, A132774.P14409811669311265366.a, A097806, A097806.P6713740258379660295.a, A241151, A241151.P10347220583869706345.f1, A241151.P10347220583869706345.a, A002260, A002260.P769748059679640451.a, A003056, A003056.P5318256527314048597.a, A002262, A002262.P12129691700837801527.a, A057944, A057944.P16851463738746886639.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A132774

/-! ## A132774.P15048564970126757905

`lcm(A094727(n+1), A132013(n))`
-/

namespace A132774.P15048564970126757905
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A094727 (n + 1)) (A132013 n)

end

end A132774.P15048564970126757905

namespace A132774

/-- `lcm(A094727(n+1), A132013(n))` -/
def P15048564970126757905.Spec : Prop :=
  ∀ n, (P15048564970126757905.a n : ℤ) = A132774 (n + 1)

end A132774

/-! ## A132774.P9250683856605326807

`lcm(A131225(n+1), A167374(n))`
-/

namespace A132774.P9250683856605326807
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A131225 (n + 1)) (A167374 n)

end

end A132774.P9250683856605326807

namespace A132774

/-- `lcm(A131225(n+1), A167374(n))` -/
def P9250683856605326807.Spec : Prop :=
  ∀ n, (P9250683856605326807.a n : ℤ) = A132774 (n + 1)

end A132774

/-! ## A132774.P8400295097595244932

`lcm(A251635(n), A386823(n+1))`
-/

namespace A132774.P8400295097595244932
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A251635 n) (A386823 (n + 1))

end

end A132774.P8400295097595244932

namespace A132774

/-- `lcm(A251635(n), A386823(n+1))` -/
def P8400295097595244932.Spec : Prop :=
  ∀ n, (P8400295097595244932.a n : ℤ) = A132774 (n + 1)

end A132774

/-! ## A132774.P16701836693434874432

`∑[A103451(n)]*A103451(n+1)`
-/

namespace A132774.P16701836693434874432
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103451 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A103451 (n + 1)

end

end A132774.P16701836693434874432

namespace A132774

/-- `∑[A103451(n)]*A103451(n+1)` -/
def P16701836693434874432.Spec : Prop :=
  ∀ n, P16701836693434874432.a n = A132774 (n + 1)

end A132774

/-! ## A132774.P18200541021116421767

`lcm(∑[A103451(n)], A103452(n+1))`
-/

namespace A132774.P18200541021116421767
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103451 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (∑ j ∈ Finset.range (n + 1), f1 j) (A103452 (n + 1))

end

end A132774.P18200541021116421767

namespace A132774

/-- `lcm(∑[A103451(n)], A103452(n+1))` -/
def P18200541021116421767.Spec : Prop :=
  ∀ n, (P18200541021116421767.a n : ℤ) = A132774 (n + 1)

end A132774

/-! ## A132774.P11219869233881257624

`A131843(n+1)-A035214(n+1)`
-/

namespace A132774.P11219869233881257624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131843 (n + 1) - A035214 (n + 1)

end

end A132774.P11219869233881257624

namespace A132774

/-- `A131843(n+1)-A035214(n+1)` -/
def P11219869233881257624.Spec : Prop :=
  ∀ n, P11219869233881257624.a n = A132774 (n + 1)

end A132774

/-! ## A132774.P15384348063751595368

`A128229(n+1)*A131307(n+1)`
-/

namespace A132774.P15384348063751595368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128229 (n + 1) * A131307 (n + 1)

end

end A132774.P15384348063751595368

namespace A132774

/-- `A128229(n+1)*A131307(n+1)` -/
def P15384348063751595368.Spec : Prop :=
  ∀ n, P15384348063751595368.a n = A132774 (n + 1)

end A132774

/-! ## A132774.P3582031639485698607

`A103451(n+1)*A241151(n+2)`
-/

namespace A132774.P3582031639485698607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103451 (n + 1) * A241151 (n + 2)

end

end A132774.P3582031639485698607

namespace A132774

/-- `A103451(n+1)*A241151(n+2)` -/
def P3582031639485698607.Spec : Prop :=
  ∀ n, P3582031639485698607.a n = A132774 (n + 1)

end A132774

/-! ## A132774.P17040575030728119608

`lcm(A156319(n+1), A241151(n+2))`
-/

namespace A132774.P17040575030728119608
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A156319 (n + 1)) (A241151 (n + 2))

end

end A132774.P17040575030728119608

namespace A132774

/-- `lcm(A156319(n+1), A241151(n+2))` -/
def P17040575030728119608.Spec : Prop :=
  ∀ n, (P17040575030728119608.a n : ℤ) = A132774 (n + 1)

end A132774

/-! ## A132774.P7434788946760296242

`C(2, 2*A025581(n))*A094727(n+1)`
-/

namespace A132774.P7434788946760296242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose 2 (2 * A025581 n).toNat : ℤ) * A094727 (n + 1)

end

end A132774.P7434788946760296242

namespace A132774

/-- `C(2, 2*A025581(n))*A094727(n+1)` -/
def P7434788946760296242.Spec : Prop :=
  ∀ n, P7434788946760296242.a n = A132774 (n + 1)

end A132774

/-! ## A132774.P14609164584839717440

`A026741(A097806(n)*A258415(n+1))`
-/

namespace A132774.P14609164584839717440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (A097806 n * A258415 (n + 1)).toNat

end

end A132774.P14609164584839717440

namespace A132774

/-- `A026741(A097806(n)*A258415(n+1))` -/
def P14609164584839717440.Spec : Prop :=
  ∀ n, P14609164584839717440.a n = A132774 (n + 1)

end A132774

/-! ## A132774.P13354357491313766960

`(A003056(n)+A002260(n+1))*A097806(n)`
-/

namespace A132774.P13354357491313766960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A003056 n + A002260 (n + 1)) * A097806 n

end

end A132774.P13354357491313766960

namespace A132774

/-- `(A003056(n)+A002260(n+1))*A097806(n)` -/
def P13354357491313766960.Spec : Prop :=
  ∀ n, P13354357491313766960.a n = A132774 (n + 1)

end A132774

/-! ## A132774.P18293595166806000774

`(A003056(n+1)+A003056(n))*A097806(n)`
-/

namespace A132774.P18293595166806000774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A003056 (n + 1) + A003056 n) * A097806 n

end

end A132774.P18293595166806000774

namespace A132774

/-- `(A003056(n+1)+A003056(n))*A097806(n)` -/
def P18293595166806000774.Spec : Prop :=
  ∀ n, P18293595166806000774.a n = A132774 (n + 1)

end A132774

/-!
# A132775: A007818 * A132774.

The programs for A132775, the canonical program `A132775.P15677657073027087239` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A132775 has offset 0).

The definition of A132775 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A132775.P5869920683895983380

`(∑[2*char[∑[n]]]-1)*A007318(n)`
-/

namespace A132775.P5869920683895983380
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (if ∃ j, f2 j = n then 1 else 0)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 1) * A007318 n

end

end A132775.P5869920683895983380

namespace A132775

/-- `(∑[2*char[∑[n]]]-1)*A007318(n)` -/
def P5869920683895983380.Spec : Prop :=
  ∀ n, P5869920683895983380.a n = A132775 n

end A132775

/-! ## A132775.P18069429981492381430

`(A014473(n)+1)*(∑[2*char[∑[n]]]-1)`
-/

namespace A132775.P18069429981492381430
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (if ∃ j, f2 j = n then 1 else 0)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A014473 n + 1) * (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 1)

end

end A132775.P18069429981492381430

namespace A132775

/-- `(A014473(n)+1)*(∑[2*char[∑[n]]]-1)` -/
def P18069429981492381430.Spec : Prop :=
  ∀ n, P18069429981492381430.a n = A132775 n

end A132775

/-! ## A132775.P3591032156880624699

`(∑[2*char[∑[n]]]-1)*A028326(n)/2`
-/

namespace A132775.P3591032156880624699
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (if ∃ j, f2 j = n then 1 else 0)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 1 : ℚ) * ((A028326 n : ℚ) / 2)

end

end A132775.P3591032156880624699

namespace A132775

/-- `(∑[2*char[∑[n]]]-1)*A028326(n)/2` -/
def P3591032156880624699.Spec : Prop :=
  ∀ n, P3591032156880624699.a n = (A132775 n : ℚ)

end A132775

/-! ## A132775.P383797057233282186

`(∑[2*char[∑[n]]]-1)*(A131061(n)+3)/4`
-/

namespace A132775.P383797057233282186
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (if ∃ j, f2 j = n then 1 else 0)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 1 : ℚ) * ((A131061 n + 3 : ℚ) / 4)

end

end A132775.P383797057233282186

namespace A132775

/-- `(∑[2*char[∑[n]]]-1)*(A131061(n)+3)/4` -/
def P383797057233282186.Spec : Prop :=
  ∀ n, P383797057233282186.a n = (A132775 n : ℚ)

end A132775

/-! ## A132775.P3827618742659704018

`(∑[2*char[∑[n]]]-1)*(A131063(n)+4)/5`
-/

namespace A132775.P3827618742659704018
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (if ∃ j, f2 j = n then 1 else 0)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 1 : ℚ) * ((A131063 n + 4 : ℚ) / 5)

end

end A132775.P3827618742659704018

namespace A132775

/-- `(∑[2*char[∑[n]]]-1)*(A131063(n)+4)/5` -/
def P3827618742659704018.Spec : Prop :=
  ∀ n, P3827618742659704018.a n = (A132775 n : ℚ)

end A132775

/-! ## A132775.P15677657073027087239

`A007318(n)*A131507(n)`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A132775

/-- `A007318(n)*A131507(n)` -/
def P15677657073027087239.Spec : Prop :=
  ∀ n, P15677657073027087239.a n = A132775 n

theorem P15677657073027087239.correct : P15677657073027087239.Spec := by
  intro n
  simp only [A132775]

end A132775

/-! ## A132775.P2104848338305852793

`abs(A108086(n)*A131507(n))`
-/

namespace A132775.P2104848338305852793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A108086 n * A131507 n|

end

end A132775.P2104848338305852793

namespace A132775

/-- `abs(A108086(n)*A131507(n))` -/
def P2104848338305852793.Spec : Prop :=
  ∀ n, P2104848338305852793.a n = A132775 n

end A132775

/-! ## A132775.P6495362729762309616

`abs(A130595(n)*A131507(n))`
-/

namespace A132775.P6495362729762309616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A130595 n * A131507 n|

end

end A132775.P6495362729762309616

namespace A132775

/-- `abs(A130595(n)*A131507(n))` -/
def P6495362729762309616.Spec : Prop :=
  ∀ n, P6495362729762309616.a n = A132775 n

end A132775

/-! ## A132775.P7981555645636940115

`sqrt(A008459(n))*A131507(n)`
-/

namespace A132775.P7981555645636940115
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A008459 n : ℝ) * (A131507 n : ℝ)

end

end A132775.P7981555645636940115

namespace A132775

/-- `sqrt(A008459(n))*A131507(n)` -/
def P7981555645636940115.Spec : Prop :=
  ∀ n, P7981555645636940115.a n = (A132775 n : ℝ)

end A132775

/-! ## A132775.P16940116407527585475

`A132751(n+1)-A014473(n)`
-/

namespace A132775.P16940116407527585475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132751 (n + 1) - A014473 n

end

end A132775.P16940116407527585475

namespace A132775

/-- `A132751(n+1)-A014473(n)` -/
def P16940116407527585475.Spec : Prop :=
  ∀ n, P16940116407527585475.a n = A132775 n

end A132775

/-! ## A132775.P5604080646213361410

`A116666(n+1)+2*A216973(n)`
-/

namespace A132775.P5604080646213361410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116666 (n + 1) + 2 * A216973 n

end

end A132775.P5604080646213361410

namespace A132775

/-- `A116666(n+1)+2*A216973(n)` -/
def P5604080646213361410.Spec : Prop :=
  ∀ n, P5604080646213361410.a n = A132775 n

end A132775

/-! ## A132775.P10037274623873046357

`2*A003506(n+1)-A007318(n)`
-/

namespace A132775.P10037274623873046357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A003506 (n + 1) - A007318 n

end

end A132775.P10037274623873046357

namespace A132775

/-- `2*A003506(n+1)-A007318(n)` -/
def P10037274623873046357.Spec : Prop :=
  ∀ n, P10037274623873046357.a n = A132775 n

end A132775

/-! ## A132775.P46280805895185762

`A103406(n)+A007318(n)*A294317(n)`
-/

namespace A132775.P46280805895185762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103406 n + A007318 n * A294317 n

end

end A132775.P46280805895185762

namespace A132775

/-- `A103406(n)+A007318(n)*A294317(n)` -/
def P46280805895185762.Spec : Prop :=
  ∀ n, P46280805895185762.a n = A132775 n

end A132775

/-! ## A132775.P10431006401802174391

`A116666(n+1)+A116666(n+2)-A007318(n+1)`
-/

namespace A132775.P10431006401802174391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116666 (n + 1) + (A116666 (n + 2) - A007318 (n + 1))

end

end A132775.P10431006401802174391

namespace A132775

/-- `A116666(n+1)+A116666(n+2)-A007318(n+1)` -/
def P10431006401802174391.Spec : Prop :=
  ∀ n, P10431006401802174391.a n = A132775 n

end A132775

/-! ## A132775.P279891501973953630

`A007318(n)*A071797(A002024(n+1)²)`
-/

namespace A132775.P279891501973953630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n * A071797 (A002024 (n + 1) ^ 2).toNat

end

end A132775.P279891501973953630

namespace A132775

/-- `A007318(n)*A071797(A002024(n+1)²)` -/
def P279891501973953630.Spec : Prop :=
  ∀ n, P279891501973953630.a n = A132775 n

end A132775

/-! ## A132775.P16898508536703058620

`A007318(n)*A099375(A245300(n))`
-/

namespace A132775.P16898508536703058620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n * A099375 (A245300 n).toNat

end

end A132775.P16898508536703058620

namespace A132775

/-- `A007318(n)*A099375(A245300(n))` -/
def P16898508536703058620.Spec : Prop :=
  ∀ n, P16898508536703058620.a n = A132775 n

end A132775

/-! ## A132775.P300546733448009174

`A347823(n)+A216973(n)`
-/

namespace A132775.P300546733448009174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347823 n + A216973 n

end

end A132775.P300546733448009174

namespace A132775

/-- `A347823(n)+A216973(n)` -/
def P300546733448009174.Spec : Prop :=
  ∀ n, P300546733448009174.a n = A132775 n

theorem P300546733448009174.correct : P300546733448009174.Spec := by
  intro n
  simp only [A132775, Nat.add_sub_cancel, A132775.P300546733448009174.a, A132775.P15677657073027087239.a, A007318, A007318.P302227728145965961.a, A131507, A131507.P15949945766004013839.a, A216973, A216973.P15082548232438197860.a, A347823, A347823.P13243761439211694045.a, A134400, A134400.P18111942240929711886.a, A259525, A259525.P15603515225238104540.f1, A259525.P15603515225238104540.a, A003056, A003056.P5318256527314048597.a, A028310, A028310.P18130301328277559831.a, A074909, A074909.P6707642907239843837.f1, A074909.P6707642907239843837.a, A002262, A002262.P12129691700837801527.a, A010054, A010054.P18347828677204923252.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A132775

/-!
# A132776: A128064 (unsigned) * A007318.

The programs for A132776, there is no canonical definition to state claims against.
-/

/-! ## A132776.P12524292223947783129

`A347823(∑[2*n]%comp[∑[n]])`
-/

namespace A132776.P12524292223947783129
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347823 ((∑ j ∈ Finset.range (n + 1), f1 j) % SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n)

end

end A132776.P12524292223947783129

/-! ## A132776.P10069275376255789042

`A347823(∑[char[∑[n]]]²-(n+1))`
-/

namespace A132776.P10069275376255789042
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347823 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 - (n + 1))

end

end A132776.P10069275376255789042

/-! ## A132776.P6910836410863894063

`(C(comp[∑[n]]+1-n, 2)-n-2)*A007318(n)`
-/

namespace A132776.P6910836410863894063
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + 1 : ℤ) - (n : ℤ)).toNat 2 : ℤ) - (n : ℤ) - 2) * A007318 n

end

end A132776.P6910836410863894063

/-! ## A132776.P1645301695654424937

`A347823(n)-A141692(n)`
-/

namespace A132776.P1645301695654424937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347823 n - A141692 n

end

end A132776.P1645301695654424937

/-! ## A132776.P16226458818267358660

`A134239(n)+∑[A008482(n)]`
-/

namespace A132776.P16226458818267358660
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008482 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134239 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A132776.P16226458818267358660

/-! ## A132776.P3095041477365788558

`A216973(n)+A003506(n+1)`
-/

namespace A132776.P3095041477365788558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216973 n + A003506 (n + 1)

end

end A132776.P3095041477365788558

/-! ## A132776.P6483076916718119810

`A002260(n+1)*A110813(n)`
-/

namespace A132776.P6483076916718119810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1) * A110813 n

end

end A132776.P6483076916718119810

/-! ## A132776.P5259505138685861598

`A007318(n)*A128076(n+1)`
-/

namespace A132776.P5259505138685861598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n * A128076 (n + 1)

end

end A132776.P5259505138685861598

/-! ## A132776.P16292210586739277495

`A007318(n)*(A294317(n)+1)`
-/

namespace A132776.P16292210586739277495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n * (A294317 n + 1)

end

end A132776.P16292210586739277495

/-! ## A132776.P5309832679004590951

`A103406(n)+2*A216973(n)`
-/

namespace A132776.P5309832679004590951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103406 n + 2 * A216973 n

end

end A132776.P5309832679004590951

/-!
# A132777: Nonsquare numbers which are the sum of 2 distinct squares.

The programs for A132777, there is no canonical definition to state claims against.
-/

/-! ## A132777.P17545734697266158420

`lt[3, lcm(3, A084888(n))]`
-/

namespace A132777.P17545734697266158420
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 3 (A084888 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A132777.P17545734697266158420

/-! ## A132777.P13601078127454439780

`eq[2, gcd(6, A331844(n))]`
-/

namespace A132777.P13601078127454439780
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 6 (A331844 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A132777.P13601078127454439780

/-! ## A132777.P15854970352882489545

`lt[char[n²], A025441(n)]`
-/

namespace A132777.P15854970352882489545
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025441 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f3 j) n

end

end A132777.P15854970352882489545

/-! ## A132777.P9249793373588079733

`eq[2, A360530(n+1)]+1`
-/

namespace A132777.P9249793373588079733
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360530 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A132777.P9249793373588079733

/-! ## A132777.P16531679246631090403

`eq[2, gcd(10, A063725(2*n))]`
-/

namespace A132777.P16531679246631090403
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 10 (A063725 (2 * n))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A132777.P16531679246631090403

/-!
# A132778: Triangle read by rows, n-1 terms of (2n - 1) followed by n.

The programs for A132778, the canonical program `A132778.P15237329709094283098` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A132778 has offset 1).

The definition of A132778 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A132778.P13125702257096891212

`a(n-round(sqrt(2*n)))+((∑{d}[8*n+9, #]+1)%2)²²+1` with `a(0)=1`
-/

namespace A132778.P13125702257096891212
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8 * n + 9

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  a ((n : ℤ) - SequenceMachineLib.roundAway (Real.sqrt (2 * n : ℝ))).toNat + (((∑ d ∈ Nat.divisors (f1 n), d + 1) % 2) ^ 2) ^ 2 + 1

end

end A132778.P13125702257096891212

namespace A132778

/-- `a(n-round(sqrt(2*n)))+((∑{d}[8*n+9, #]+1)%2)²²+1` -/
def P13125702257096891212.Spec : Prop :=
  ∀ n, (P13125702257096891212.a n : ℤ) = A132778 (n + 1)

end A132778

/-! ## A132778.P4924855041377185226

`a(n-round(sqrt(2*n)))+((A000005(8*n+9)+1)%2)²²+1` with `a(0)=1`
-/

namespace A132778.P4924855041377185226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a ((n : ℤ) - SequenceMachineLib.roundAway (Real.sqrt (2 * n : ℝ))).toNat + (Int.tmod (A000005 (8 * n + 9) + 1) 2 ^ 2) ^ 2 + 1

end

end A132778.P4924855041377185226

namespace A132778

/-- `a(n-round(sqrt(2*n)))+((A000005(8*n+9)+1)%2)²²+1` -/
def P4924855041377185226.Spec : Prop :=
  ∀ n, P4924855041377185226.a n = A132778 (n + 1)

end A132778

/-! ## A132778.P3585345112767414017

`A294317(n)+A128227(n)`
-/

namespace A132778.P3585345112767414017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294317 n + A128227 n

end

end A132778.P3585345112767414017

namespace A132778

/-- `A294317(n)+A128227(n)` -/
def P3585345112767414017.Spec : Prop :=
  ∀ n, P3585345112767414017.a n = A132778 (n + 1)

end A132778

/-! ## A132778.P15237329709094283098

`A111650(n+1)-A051340(n)`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A132778

/-- `A111650(n+1)-A051340(n)` -/
def P15237329709094283098.Spec : Prop :=
  ∀ n, P15237329709094283098.a n = A132778 (n + 1)

theorem P15237329709094283098.correct : P15237329709094283098.Spec := by
  intro n
  simp only [A132778, Nat.add_sub_cancel]

end A132778

/-! ## A132778.P10820217322153556596

`A130271(n+1)/A051340(n)`
-/

namespace A132778.P10820217322153556596
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A130271 (n + 1) : ℚ) / (A051340 n : ℚ)

end

end A132778.P10820217322153556596

namespace A132778

/-- `A130271(n+1)/A051340(n)` -/
def P10820217322153556596.Spec : Prop :=
  ∀ n, P10820217322153556596.a n = (A132778 (n + 1) : ℚ)

end A132778

/-! ## A132778.P17782090398225999458

`gcd(A127648(n), A130271(n+1))`
-/

namespace A132778.P17782090398225999458
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A127648 n) (A130271 (n + 1))

end

end A132778.P17782090398225999458

namespace A132778

/-- `gcd(A127648(n), A130271(n+1))` -/
def P17782090398225999458.Spec : Prop :=
  ∀ n, (P17782090398225999458.a n : ℤ) = A132778 (n + 1)

end A132778

/-! ## A132778.P11786178249484231413

`∑[A198954(n)-A144217(n+1)]`
-/

namespace A132778.P11786178249484231413
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198954 n - A144217 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A132778.P11786178249484231413

namespace A132778

/-- `∑[A198954(n)-A144217(n+1)]` -/
def P11786178249484231413.Spec : Prop :=
  ∀ n, P11786178249484231413.a n = A132778 (n + 1)

end A132778

/-! ## A132778.P18026892830076133621

`A004202(n+1)-A063656(n+1)`
-/

namespace A132778.P18026892830076133621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004202 (n + 1) - A063656 (n + 1)

end

end A132778.P18026892830076133621

namespace A132778

/-- `A004202(n+1)-A063656(n+1)` -/
def P18026892830076133621.Spec : Prop :=
  ∀ n, P18026892830076133621.a n = A132778 (n + 1)

end A132778

/-! ## A132778.P16546262306087922146

`2*A002024(n+1)-A051340(n)`
-/

namespace A132778.P16546262306087922146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A002024 (n + 1) - A051340 n

end

end A132778.P16546262306087922146

namespace A132778

/-- `2*A002024(n+1)-A051340(n)` -/
def P16546262306087922146.Spec : Prop :=
  ∀ n, P16546262306087922146.a n = A132778 (n + 1)

end A132778

/-! ## A132778.P14706911059068726397

`A294317(n)+val(lcm(2, A135764(n+2)), 2)`
-/

namespace A132778.P14706911059068726397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294317 n + (SequenceMachineLib.valuation (Int.lcm 2 (A135764 (n + 2))) 2 : ℤ)

end

end A132778.P14706911059068726397

namespace A132778

/-- `A294317(n)+val(lcm(2, A135764(n+2)), 2)` -/
def P14706911059068726397.Spec : Prop :=
  ∀ n, P14706911059068726397.a n = A132778 (n + 1)

end A132778

/-! ## A132778.P2147060406352541511

`A191521(A056942(n+1))+A003056(n)`
-/

namespace A132778.P2147060406352541511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191521 (A056942 (n + 1)).toNat + A003056 n

end

end A132778.P2147060406352541511

namespace A132778

/-- `A191521(A056942(n+1))+A003056(n)` -/
def P2147060406352541511.Spec : Prop :=
  ∀ n, P2147060406352541511.a n = A132778 (n + 1)

end A132778

/-! ## A132778.P2266989650574529591

`A002024(n+1)+A003056(n*A023532(n))`
-/

namespace A132778.P2266989650574529591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 (n + 1) + A003056 ((n : ℤ) * A023532 n).toNat

end

end A132778.P2266989650574529591

namespace A132778

/-- `A002024(n+1)+A003056(n*A023532(n))` -/
def P2266989650574529591.Spec : Prop :=
  ∀ n, P2266989650574529591.a n = A132778 (n + 1)

end A132778

/-! ## A132778.P12564816543934887014

`A003056(n)+A003056(n*A023532(n))+1`
-/

namespace A132778.P12564816543934887014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 n + (A003056 ((n : ℤ) * A023532 n).toNat + 1)

end

end A132778.P12564816543934887014

namespace A132778

/-- `A003056(n)+A003056(n*A023532(n))+1` -/
def P12564816543934887014.Spec : Prop :=
  ∀ n, P12564816543934887014.a n = A132778 (n + 1)

end A132778

/-! ## A132778.P15024821009028704003

`A003056(n)+A002024(n+1)/A051340(n)`
-/

namespace A132778.P15024821009028704003
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003056 n : ℚ) + (A002024 (n + 1) : ℚ) / (A051340 n : ℚ)

end

end A132778.P15024821009028704003

namespace A132778

/-- `A003056(n)+A002024(n+1)/A051340(n)` -/
def P15024821009028704003.Spec : Prop :=
  ∀ n, P15024821009028704003.a n = (A132778 (n + 1) : ℚ)

end A132778

/-! ## A132778.P10566469270416231547

`A063657(n+1)-(A051340(n)+A004201(n+1))`
-/

namespace A132778.P10566469270416231547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063657 (n + 1) - (A051340 n + A004201 (n + 1))

end

end A132778.P10566469270416231547

namespace A132778

/-- `A063657(n+1)-(A051340(n)+A004201(n+1))` -/
def P10566469270416231547.Spec : Prop :=
  ∀ n, P10566469270416231547.a n = A132778 (n + 1)

end A132778

/-! ## A132778.P14063621812199450441

`A003056(n+1)+A004202(n+1)-A061885(n+1)`
-/

namespace A132778.P14063621812199450441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (n + 1) + (A004202 (n + 1) - A061885 (n + 1))

end

end A132778.P14063621812199450441

namespace A132778

/-- `A003056(n+1)+A004202(n+1)-A061885(n+1)` -/
def P14063621812199450441.Spec : Prop :=
  ∀ n, P14063621812199450441.a n = A132778 (n + 1)

end A132778

/-! ## A132778.P7905748667571477112

`A294317(n)+A010054(n+1)+A002260(n+2)-1`
-/

namespace A132778.P7905748667571477112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294317 n + (A010054 (n + 1) + (A002260 (n + 2) - 1))

end

end A132778.P7905748667571477112

namespace A132778

/-- `A294317(n)+A010054(n+1)+A002260(n+2)-1` -/
def P7905748667571477112.Spec : Prop :=
  ∀ n, P7905748667571477112.a n = A132778 (n + 1)

end A132778

/-! ## A132778.P12229713127907502661

`A134478(n+1)+C(comp[∑[n]]-n, 2)-(n+1)`
-/

namespace A132778.P12229713127907502661
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134478 (n + 1) + ((Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 : ℤ) - (n + 1 : ℤ))

end

end A132778.P12229713127907502661

namespace A132778

/-- `A134478(n+1)+C(comp[∑[n]]-n, 2)-(n+1)` -/
def P12229713127907502661.Spec : Prop :=
  ∀ n, P12229713127907502661.a n = A132778 (n + 1)

end A132778

/-! ## A132778.P17581401583580345854

`A051162(n+1)+A025581(n)`
-/

namespace A132778.P17581401583580345854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051162 (n + 1) + A025581 n

end

end A132778.P17581401583580345854

namespace A132778

/-- `A051162(n+1)+A025581(n)` -/
def P17581401583580345854.Spec : Prop :=
  ∀ n, P17581401583580345854.a n = A132778 (n + 1)

end A132778

/-! ## A132778.P2915570673148590906

`A134478(n+1)+A025581(n)`
-/

namespace A132778.P2915570673148590906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134478 (n + 1) + A025581 n

end

end A132778.P2915570673148590906

namespace A132778

/-- `A134478(n+1)+A025581(n)` -/
def P2915570673148590906.Spec : Prop :=
  ∀ n, P2915570673148590906.a n = A132778 (n + 1)

end A132778

/-!
# A132779: Primes p such that 33 does not divide p^n - 2 for any n.

The programs for A132779, there is no canonical definition to state claims against.
-/

/-! ## A132779.P11395740905435278023

`p?[eq[1, n%A143117(A143117(n+1))]]`
-/

namespace A132779.P11395740905435278023
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n : ℤ) (A143117 (A143117 (n + 1)).toNat)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A132779.P11395740905435278023

/-! ## A132779.P3023611586966415379

`∪[A032742(A048629(n+1)), A056874(n+1)]`
-/

namespace A132779.P3023611586966415379
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032742 (A048629 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056874 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A132779.P3023611586966415379

/-! ## A132779.P5511341255834604974

`p?[(2*n+1)*A294250(A292745(n))]`
-/

namespace A132779.P5511341255834604974
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n + 1 : ℤ) * A294250 (A292745 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A132779.P5511341255834604974

/-! ## A132779.P16061141673803496470

`A000040(record[A342249(n+9)+A014194(n)])`
-/

namespace A132779.P16061141673803496470
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342249 (n + 9) + A014194 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A132779.P16061141673803496470

/-! ## A132779.P17620087172747524683

`A000040(record[A323437(n+1)+A131730(n+2)])`
-/

namespace A132779.P17620087172747524683
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323437 (n + 1) + A131730 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A132779.P17620087172747524683

/-!
# A132780: a(0)=1. a(n+1)=2*a(n)-A130151(n).

The programs for A132780, the canonical program `A132780.P2635886526740143656` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A132780 has offset 0).

The definition of A132780 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 335 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A132780.P15607852605410394791

`ogf((-1+x+x^2)/(-1+2x-x^3+2x^4))`
-/

namespace A132780.P15607852605410394791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -1, -1] [1, -2, 0, 1, -2] n

end

end A132780.P15607852605410394791

namespace A132780

/-- `ogf((-1+x+x^2)/(-1+2x-x^3+2x^4))` -/
def P15607852605410394791.Spec : Prop :=
  ∀ n, P15607852605410394791.a n = A132780 n

end A132780

/-! ## A132780.P1794283711019573322

`2*floor((sqrt(2)^n/3)²)+1`
-/

namespace A132780.P1794283711019573322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * ⌊(Real.sqrt (2 : ℝ) ^ n / 3) ^ 2⌋ + 1

end

end A132780.P1794283711019573322

namespace A132780

/-- `2*floor((sqrt(2)^n/3)²)+1` -/
def P1794283711019573322.Spec : Prop :=
  ∀ n, P1794283711019573322.a n = A132780 n

end A132780

/-! ## A132780.P2635886526740143656

`or(1, ∑[A113405(n)])`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A132780

/-- `or(1, ∑[A113405(n)])` -/
def P2635886526740143656.Spec : Prop :=
  ∀ n, P2635886526740143656.a n = A132780 n

theorem P2635886526740143656.correct : P2635886526740143656.Spec := by
  intro n
  simp only [A132780]

end A132780

/-! ## A132780.P8031706863216371443

`or(1, A153234(n+1))`
-/

namespace A132780.P8031706863216371443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A153234 (n + 1))

end

end A132780.P8031706863216371443

namespace A132780

/-- `or(1, A153234(n+1))` -/
def P8031706863216371443.Spec : Prop :=
  ∀ n, P8031706863216371443.a n = A132780 n

end A132780

/-! ## A132780.P3954266930036032777

`or(1, 2*A153234(n))`
-/

namespace A132780.P3954266930036032777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (2 * A153234 n)

end

end A132780.P3954266930036032777

namespace A132780

/-- `or(1, 2*A153234(n))` -/
def P3954266930036032777.Spec : Prop :=
  ∀ n, P3954266930036032777.a n = A132780 n

end A132780

/-! ## A132780.P1914527406392444393

`abs(∑[2*(1-(a(n-1)+n%3))])` with `a(0)=1`
-/

namespace A132780.P1914527406392444393
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  2 * (1 - (f1 (n - 1) + ((n % 3 : ℕ) : ℤ)))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∑ j ∈ Finset.range (n + 1), f1 j|

end

end A132780.P1914527406392444393

namespace A132780

/-- `abs(∑[2*(1-(a(n-1)+n%3))])` -/
def P1914527406392444393.Spec : Prop :=
  ∀ n, P1914527406392444393.a n = A132780 n

end A132780

/-! ## A132780.P16222131887631965608

`abs(∑[A131562(n)])`
-/

namespace A132780.P16222131887631965608
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131562 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∑ j ∈ Finset.range (n + 1), f1 j|

end

end A132780.P16222131887631965608

namespace A132780

/-- `abs(∑[A131562(n)])` -/
def P16222131887631965608.Spec : Prop :=
  ∀ n, P16222131887631965608.a n = A132780 n

end A132780

/-! ## A132780.P10132359494633942940

`or(1, ∑[round(2^n/9)])`
-/

namespace A132780.P10132359494633942940
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((2 ^ n : ℚ) / 9)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A132780.P10132359494633942940

namespace A132780

/-- `or(1, ∑[round(2^n/9)])` -/
def P10132359494633942940.Spec : Prop :=
  ∀ n, P10132359494633942940.a n = A132780 n

end A132780

/-! ## A132780.P7029821765574324076

`round(A130707(n+1)/3)`
-/

namespace A132780.P7029821765574324076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A130707 (n + 1) : ℚ) / 3)

end

end A132780.P7029821765574324076

namespace A132780

/-- `round(A130707(n+1)/3)` -/
def P7029821765574324076.Spec : Prop :=
  ∀ n, P7029821765574324076.a n = A132780 n

end A132780

/-! ## A132780.P881361809361659739

`round(A191370(n+1)/3)`
-/

namespace A132780.P881361809361659739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A191370 (n + 1) : ℚ) / 3)

end

end A132780.P881361809361659739

namespace A132780

/-- `round(A191370(n+1)/3)` -/
def P881361809361659739.Spec : Prop :=
  ∀ n, P881361809361659739.a n = A132780 n

end A132780

/-! ## A132780.P4011719222647515286

`Δ[Δ[A113405(n+1)]-A088911(n+1)]`
-/

namespace A132780.P4011719222647515286
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113405 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n - A088911 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A132780.P4011719222647515286

namespace A132780

/-- `Δ[Δ[A113405(n+1)]-A088911(n+1)]` -/
def P4011719222647515286.Spec : Prop :=
  ∀ n, P4011719222647515286.a n = A132780 n

end A132780

/-!
# A132781: Numbers not containing '1010' in binary representation.

The programs for A132781, the canonical program `A132781.P6106266185422034442` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A132781 has offset 1).

The definition of A132781 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A132781.P16162271264140584548

`comp[A132782(n+1)]`
-/

namespace A132781.P16162271264140584548
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132782 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A132781.P16162271264140584548

namespace A132781

/-- `comp[A132782(n+1)]` -/
def P16162271264140584548.Spec : Prop :=
  ∀ n, (P16162271264140584548.a n : ℤ) = A132781 (n + 1)

end A132781

/-! ## A132781.P6106266185422034442

`lt[A342697(or(n, floor(n/2))-n), 1]`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A132781

/-- `lt[A342697(or(n, floor(n/2))-n), 1]` -/
def P6106266185422034442.Spec : Prop :=
  ∀ n, (P6106266185422034442.a n : ℤ) = A132781 (n + 1)

theorem P6106266185422034442.correct : P6106266185422034442.Spec := by
  intro n
  simp only [A132781, Nat.add_sub_cancel]

end A132781

/-! ## A132781.P17140049214240297194

`lt[A048733(A229762(n)), 1]`
-/

namespace A132781.P17140049214240297194
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048733 (A229762 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A132781.P17140049214240297194

namespace A132781

/-- `lt[A048733(A229762(n)), 1]` -/
def P17140049214240297194.Spec : Prop :=
  ∀ n, (P17140049214240297194.a n : ℤ) = A132781 (n + 1)

end A132781

/-! ## A132781.P16620073170534644076

`eq[char[A132782(n+1)], A000007(n+2)]`
-/

namespace A132781.P16620073170534644076
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132782 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A132781.P16620073170534644076

namespace A132781

/-- `eq[char[A132782(n+1)], A000007(n+2)]` -/
def P16620073170534644076.Spec : Prop :=
  ∀ n, (P16620073170534644076.a n : ℤ) = A132781 (n + 1)

end A132781

/-! ## A132781.P14598738241499794669

`lt[A342697(A229762(2*n)), 2]`
-/

namespace A132781.P14598738241499794669
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342697 (A229762 (2 * n)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A132781.P14598738241499794669

namespace A132781

/-- `lt[A342697(A229762(2*n)), 2]` -/
def P14598738241499794669.Spec : Prop :=
  ∀ n, (P14598738241499794669.a n : ℤ) = A132781 (n + 1)

end A132781

/-! ## A132781.P17809428340617454690

`record[A367306(n)%(n+1)]`
-/

namespace A132781.P17809428340617454690
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A367306 n) (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A132781.P17809428340617454690

namespace A132781

/-- `record[A367306(n)%(n+1)]` -/
def P17809428340617454690.Spec : Prop :=
  ∀ n, P17809428340617454690.a n = A132781 (n + 1)

end A132781

/-!
# A132782: Numbers with at least one occurrence of '1010' in binary representation.

The programs for A132782, the canonical program `A132782.P11170084075801961624` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A132782 has offset 1).

The definition of A132782 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9727 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A132782.P11170084075801961624

`lt[0, A342697(or(n, floor(n/2))-n)]`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A132782

/-- `lt[0, A342697(or(n, floor(n/2))-n)]` -/
def P11170084075801961624.Spec : Prop :=
  ∀ n, (P11170084075801961624.a n : ℤ) = A132782 (n + 1)

theorem P11170084075801961624.correct : P11170084075801961624.Spec := by
  intro n
  simp only [A132782, Nat.add_sub_cancel]

end A132782

/-! ## A132782.P12774858011841293019

`comp[A132781(n+1)]`
-/

namespace A132782.P12774858011841293019
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132781 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A132782.P12774858011841293019

namespace A132782

/-- `comp[A132781(n+1)]` -/
def P12774858011841293019.Spec : Prop :=
  ∀ n, (P12774858011841293019.a n : ℤ) = A132782 (n + 1)

end A132782

/-! ## A132782.P3334951915242031132

`lt[8, A048730(n-and(n, 2*n))]`
-/

namespace A132782.P3334951915242031132
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048730 (n - Nat.land n (2 * n))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A132782.P3334951915242031132

namespace A132782

/-- `lt[8, A048730(n-and(n, 2*n))]` -/
def P3334951915242031132.Spec : Prop :=
  ∀ n, (P3334951915242031132.a n : ℤ) = A132782 (n + 1)

end A132782

/-! ## A132782.P8342962294525261433

`lt[0, A048733(A229762(n))]`
-/

namespace A132782.P8342962294525261433
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048733 (A229762 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A132782.P8342962294525261433

namespace A132782

/-- `lt[0, A048733(A229762(n))]` -/
def P8342962294525261433.Spec : Prop :=
  ∀ n, (P8342962294525261433.a n : ℤ) = A132782 (n + 1)

end A132782

/-! ## A132782.P14045520656564910588

`lt[2, A048733(A229763(n))]`
-/

namespace A132782.P14045520656564910588
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048733 (A229763 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A132782.P14045520656564910588

namespace A132782

/-- `lt[2, A048733(A229763(n))]` -/
def P14045520656564910588.Spec : Prop :=
  ∀ n, (P14045520656564910588.a n : ℤ) = A132782 (n + 1)

end A132782

/-! ## A132782.P749364353416194400

`lt[2, A342697(A229762(n)+1)]`
-/

namespace A132782.P749364353416194400
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342697 (A229762 n + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A132782.P749364353416194400

namespace A132782

/-- `lt[2, A342697(A229762(n)+1)]` -/
def P749364353416194400.Spec : Prop :=
  ∀ n, (P749364353416194400.a n : ℤ) = A132782 (n + 1)

end A132782

/-! ## A132782.P1725400401740614693

`lt[1, A342697(2*A229762(n))]`
-/

namespace A132782.P1725400401740614693
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342697 (2 * A229762 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A132782.P1725400401740614693

namespace A132782

/-- `lt[1, A342697(2*A229762(n))]` -/
def P1725400401740614693.Spec : Prop :=
  ∀ n, (P1725400401740614693.a n : ℤ) = A132782 (n + 1)

end A132782

/-! ## A132782.P11461962662623793199

`lt[A086747(n), A342697(A229762(n))]`
-/

namespace A132782.P11461962662623793199
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086747 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342697 (A229762 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A132782.P11461962662623793199

namespace A132782

/-- `lt[A086747(n), A342697(A229762(n))]` -/
def P11461962662623793199.Spec : Prop :=
  ∀ n, (P11461962662623793199.a n : ℤ) = A132782 (n + 1)

end A132782

/-!
# A132784: Triangle, read by rows of n*(n+1)/2 + 1 terms, where row n begins with n zeros followed by reverse partial sums of the prior row.

The programs for A132784, there is no canonical definition to state claims against.
-/

/-! ## A132784.P4223367906272055674

`A329902(A261585(n))%A005914(A350732(n+1))`
-/

namespace A132784.P4223367906272055674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A329902 (A261585 n).toNat) (A005914 (A350732 (n + 1)).toNat)

end

end A132784.P4223367906272055674

/-! ## A132784.P9758712191400744491

`A033764(A046681(n+3))`
-/

namespace A132784.P9758712191400744491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033764 (A046681 (n + 3)).toNat

end

end A132784.P9758712191400744491

/-! ## A132784.P9924487820107933692

`A351014(comp[3*n]*A049334(n+1))`
-/

namespace A132784.P9924487820107933692
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351014 ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) * A049334 (n + 1)).toNat

end

end A132784.P9924487820107933692

/-! ## A132784.P15410079504970668605

`A001221(A001611(A336255(n+1)))`
-/

namespace A132784.P15410079504970668605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A001611 (A336255 (n + 1)).toNat).toNat

end

end A132784.P15410079504970668605

/-! ## A132784.P8482404067661973843

`A329313(A124794(n+1)*A350488(n+1))`
-/

namespace A132784.P8482404067661973843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329313 (A124794 (n + 1) * A350488 (n + 1)).toNat

end

end A132784.P8482404067661973843

/-!
# A132785: Main diagonal of triangle A132784.

The programs for A132785, there is no canonical definition to state claims against.
-/

/-! ## A132785.P4954264821425492604

`A132784(A290778(n+1))`
-/

namespace A132785.P4954264821425492604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132784 (A290778 (n + 1)).toNat

end

end A132785.P4954264821425492604

/-! ## A132785.P7891824176704170945

`A132784(A307559(n+1))`
-/

namespace A132785.P7891824176704170945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132784 (A307559 (n + 1)).toNat

end

end A132785.P7891824176704170945

/-! ## A132785.P4858005313996546679

`A132784(or(4, A301798(n)))`
-/

namespace A132785.P4858005313996546679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132784 (Int.lor 4 (A301798 n)).toNat

end

end A132785.P4858005313996546679

/-! ## A132785.P10542157278185088222

`A132784(A004006(n)+n)`
-/

namespace A132785.P10542157278185088222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132784 (A004006 n + (n : ℤ)).toNat

end

end A132785.P10542157278185088222

/-!
# A132786: Column sums of triangle A132784.

The programs for A132786, there is no canonical definition to state claims against.
-/

/-! ## A132786.P11386540180490519597

`A384513(A001349(n)+n)`
-/

namespace A132786.P11386540180490519597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384513 (A001349 n + (n : ℤ)).toNat

end

end A132786.P11386540180490519597

/-! ## A132786.P13736571215949784811

`A320536(∑[∏[A324743(n)]])`
-/

namespace A132786.P13736571215949784811
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324743 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320536 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A132786.P13736571215949784811

/-! ## A132786.P16230425640271916330

`A294783(A002541(n+1))+A004526(A002494(n))`
-/

namespace A132786.P16230425640271916330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294783 (A002541 (n + 1)).toNat + A004526 (A002494 n).toNat

end

end A132786.P16230425640271916330

/-!
# A132787: Triangle read by rows: T(n,k) = 2*A001263(n,k) - 1.

The programs for A132787, the canonical program `A132787.P877745916948461370` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A132787 has offset 1).

The definition of A132787 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A132787.P5611581728766738242

`lcm(2, A174124(n))-1`
-/

namespace A132787.P5611581728766738242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.lcm 2 (A174124 n) : ℤ) - 1

end

end A132787.P5611581728766738242

namespace A132787

/-- `lcm(2, A174124(n))-1` -/
def P5611581728766738242.Spec : Prop :=
  ∀ n, P5611581728766738242.a n = A132787 (n + 1)

end A132787

/-! ## A132787.P877745916948461370

`2*A001263(n+1)-1`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A132787

/-- `2*A001263(n+1)-1` -/
def P877745916948461370.Spec : Prop :=
  ∀ n, P877745916948461370.a n = A132787 (n + 1)

theorem P877745916948461370.correct : P877745916948461370.Spec := by
  intro n
  simp only [A132787, Nat.add_sub_cancel]

end A132787

/-! ## A132787.P6641364980428095256

`A174124(n)+1-A154325(n)`
-/

namespace A132787.P6641364980428095256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174124 n + (1 - A154325 n)

end

end A132787.P6641364980428095256

namespace A132787

/-- `A174124(n)+1-A154325(n)` -/
def P6641364980428095256.Spec : Prop :=
  ∀ n, P6641364980428095256.a n = A132787 (n + 1)

end A132787

/-! ## A132787.P13443095132739535000

`A133200(n+1)+1-A238303(n)`
-/

namespace A132787.P13443095132739535000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133200 (n + 1) + (1 - A238303 n)

end

end A132787.P13443095132739535000

namespace A132787

/-- `A133200(n+1)+1-A238303(n)` -/
def P13443095132739535000.Spec : Prop :=
  ∀ n, P13443095132739535000.a n = A132787 (n + 1)

end A132787

/-! ## A132787.P17986933038591070950

`2*A103371(n)/A004736(n+1)-1`
-/

namespace A132787.P17986933038591070950
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 * ((A103371 n : ℚ) / (A004736 (n + 1) : ℚ)) - 1

end

end A132787.P17986933038591070950

namespace A132787

/-- `2*A103371(n)/A004736(n+1)-1` -/
def P17986933038591070950.Spec : Prop :=
  ∀ n, P17986933038591070950.a n = (A132787 (n + 1) : ℚ)

end A132787

/-! ## A132787.P11268659002901773750

`A001263(n+1)+A132789(n+1)-A007318(n)`
-/

namespace A132787.P11268659002901773750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001263 (n + 1) + (A132789 (n + 1) - A007318 n)

end

end A132787.P11268659002901773750

namespace A132787

/-- `A001263(n+1)+A132789(n+1)-A007318(n)` -/
def P11268659002901773750.Spec : Prop :=
  ∀ n, P11268659002901773750.a n = A132787 (n + 1)

theorem P11268659002901773750.correct : P11268659002901773750.Spec := by
  intro n
  simp only [A132787, Nat.add_sub_cancel, A132787.P11268659002901773750.a, A132787.P877745916948461370.a, A001263, A001263.P4972562200399461323.a, A007318, A007318.P302227728145965961.a, A132789, A132789.P6314999068272681053.a, A014473, A014473.P9301799580602651200.a, A050169, A050169.P236062353889344769.a, A161642, A161642.P15049293823349012266.a, A259525, A259525.P15603515225238104540.f1, A259525.P15603515225238104540.a, A003056, A003056.P5318256527314048597.a, A074909, A074909.P6707642907239843837.f1, A074909.P6707642907239843837.a, A135278, A135278.P10862305414900331449.a, A002262, A002262.P12129691700837801527.a, A010054, A010054.P18347828677204923252.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A132787

/-! ## A132787.P9807412652795442089

`A001263(n+1)+A001263(n+1)-A001263(A184389(n+1))`
-/

namespace A132787.P9807412652795442089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001263 (n + 1) + (A001263 (n + 1) - A001263 (A184389 (n + 1)).toNat)

end

end A132787.P9807412652795442089

namespace A132787

/-- `A001263(n+1)+A001263(n+1)-A001263(A184389(n+1))` -/
def P9807412652795442089.Spec : Prop :=
  ∀ n, P9807412652795442089.a n = A132787 (n + 1)

end A132787

/-! ## A132787.P17108855670162166702

`A001263(n+1)+A057428(n+1)+A001263(n+1)`
-/

namespace A132787.P17108855670162166702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001263 (n + 1) + (A057428 (n + 1) + A001263 (n + 1))

end

end A132787.P17108855670162166702

namespace A132787

/-- `A001263(n+1)+A057428(n+1)+A001263(n+1)` -/
def P17108855670162166702.Spec : Prop :=
  ∀ n, P17108855670162166702.a n = A132787 (n + 1)

theorem P17108855670162166702.correct : P17108855670162166702.Spec := by
  intro n
  simp only [A132787, Nat.add_sub_cancel, A132787.P17108855670162166702.a, A132787.P877745916948461370.a, A001263, A001263.P4972562200399461323.a, A057428, A057428.P2999489532230392221.a, A050169, A050169.P236062353889344769.a, A057427, A057427.P3058147525557661423.a, A161642, A161642.P15049293823349012266.a, A000007, A000007.P6599383543502402472.a, A007318, A007318.P302227728145965961.a, A074909, A074909.P6707642907239843837.f1, A074909.P6707642907239843837.a, A135278, A135278.P10862305414900331449.a, A002262, A002262.P12129691700837801527.a, A010054, A010054.P18347828677204923252.a, A259525, A259525.P15603515225238104540.f1, A259525.P15603515225238104540.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A132787

/-! ## A132787.P1375156196503002122

`A001263(n+1)+A153881(n+2)+A001263(n+1)`
-/

namespace A132787.P1375156196503002122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001263 (n + 1) + (A153881 (n + 2) + A001263 (n + 1))

end

end A132787.P1375156196503002122

namespace A132787

/-- `A001263(n+1)+A153881(n+2)+A001263(n+1)` -/
def P1375156196503002122.Spec : Prop :=
  ∀ n, P1375156196503002122.a n = A132787 (n + 1)

end A132787

/-! ## A132787.P13045495741748875374

`A001263(n+1)+A001263(n+1)-A001263(A127739(n+1))`
-/

namespace A132787.P13045495741748875374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001263 (n + 1) + (A001263 (n + 1) - A001263 (A127739 (n + 1)).toNat)

end

end A132787.P13045495741748875374

namespace A132787

/-- `A001263(n+1)+A001263(n+1)-A001263(A127739(n+1))` -/
def P13045495741748875374.Spec : Prop :=
  ∀ n, P13045495741748875374.a n = A132787 (n + 1)

end A132787

/-! ## A132787.P7825375672308656642

`2*A131198(A007401(n+1))-1`
-/

namespace A132787.P7825375672308656642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A131198 (A007401 (n + 1)).toNat - 1

end

end A132787.P7825375672308656642

namespace A132787

/-- `2*A131198(A007401(n+1))-1` -/
def P7825375672308656642.Spec : Prop :=
  ∀ n, P7825375672308656642.a n = A132787 (n + 1)

end A132787

/-! ## A132787.P4158487132232592476

`2*A090181(A014132(n+1))-1`
-/

namespace A132787.P4158487132232592476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A090181 (A014132 (n + 1)).toNat - 1

end

end A132787.P4158487132232592476

namespace A132787

/-- `2*A090181(A014132(n+1))-1` -/
def P4158487132232592476.Spec : Prop :=
  ∀ n, P4158487132232592476.a n = A132787 (n + 1)

end A132787

/-! ## A132787.P3784481406158439486

`2*sqrt(A174158(n+1))-1`
-/

namespace A132787.P3784481406158439486
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  2 * Real.sqrt (A174158 (n + 1) : ℝ) - 1

end

end A132787.P3784481406158439486

namespace A132787

/-- `2*sqrt(A174158(n+1))-1` -/
def P3784481406158439486.Spec : Prop :=
  ∀ n, P3784481406158439486.a n = (A132787 (n + 1) : ℝ)

end A132787

/-! ## A132787.P9344793022754808536

`A174158(n+1)-(1-A001263(n+1))²`
-/

namespace A132787.P9344793022754808536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174158 (n + 1) - (1 - A001263 (n + 1)) ^ 2

end

end A132787.P9344793022754808536

namespace A132787

/-- `A174158(n+1)-(1-A001263(n+1))²` -/
def P9344793022754808536.Spec : Prop :=
  ∀ n, P9344793022754808536.a n = A132787 (n + 1)

theorem P9344793022754808536.correct : P9344793022754808536.Spec := by
  intro n
  simp only [A132787, Nat.add_sub_cancel, A132787.P9344793022754808536.a, A132787.P877745916948461370.a, A001263, A001263.P4972562200399461323.a, A174158, A174158.P4598955516773709472.a, A050169, A050169.P236062353889344769.a, A161642, A161642.P15049293823349012266.a, A007318, A007318.P302227728145965961.a, A074909, A074909.P6707642907239843837.f1, A074909.P6707642907239843837.a, A135278, A135278.P10862305414900331449.a, A002262, A002262.P12129691700837801527.a, A010054, A010054.P18347828677204923252.a, A259525, A259525.P15603515225238104540.f1, A259525.P15603515225238104540.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A132787

/-! ## A132787.P6532981617986510054

`A001263(n+1)+A001263(n+1)-A002260(A000124(n))`
-/

namespace A132787.P6532981617986510054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001263 (n + 1) + (A001263 (n + 1) - A002260 (A000124 n).toNat)

end

end A132787.P6532981617986510054

namespace A132787

/-- `A001263(n+1)+A001263(n+1)-A002260(A000124(n))` -/
def P6532981617986510054.Spec : Prop :=
  ∀ n, P6532981617986510054.a n = A132787 (n + 1)

end A132787

/-! ## A132787.P1676601068329049111

`A001263(n+1)+A001263(n+1)-A010054(A000217(n))`
-/

namespace A132787.P1676601068329049111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001263 (n + 1) + (A001263 (n + 1) - A010054 (A000217 n).toNat)

end

end A132787.P1676601068329049111

namespace A132787

/-- `A001263(n+1)+A001263(n+1)-A010054(A000217(n))` -/
def P1676601068329049111.Spec : Prop :=
  ∀ n, P1676601068329049111.a n = A132787 (n + 1)

end A132787

/-!
# A132788: a(n) = 2*binomial(2*n,n)/(n+1) - n.

The programs for A132788, the canonical program `A132788.P2699789363673482983` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A132788 has offset 1).

The definition of A132788 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A132788.P2699789363673482983

`2*A000108(n+1)-(n+1)`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A132788

/-- `2*A000108(n+1)-(n+1)` -/
def P2699789363673482983.Spec : Prop :=
  ∀ n, P2699789363673482983.a n = A132788 (n + 1)

theorem P2699789363673482983.correct : P2699789363673482983.Spec := by
  intro n
  simp only [A132788, Nat.add_sub_cancel]

end A132788

/-! ## A132788.P12485947889028999769

`2*C(2*(n+1), n+1)/(n+2)-(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A132788.P12485947889028999769
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 * Nat.choose (2 * (n + 1)) (n + 1) : ℚ) / (n + 2 : ℚ) - (n + 1 : ℚ)

end

end A132788.P12485947889028999769

namespace A132788

/-- `2*C(2*(n+1), n+1)/(n+2)-(n+1)` -/
def P12485947889028999769.Spec : Prop :=
  ∀ n, P12485947889028999769.a n = (A132788 (n + 1) : ℚ)

end A132788

/-! ## A132788.P14007544810008234959

`2-∑[1-Δ[(4-6/(n+1))*a(n-1)]]` with `a(0)=2`
-/

namespace A132788.P14007544810008234959
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.rec [2] fun n f2 =>
  (4 - 6 / (n + 1 : ℚ)) * f2 (n - 1)

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  1 - (f2 (n + 1) - f2 n)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A132788.P14007544810008234959

namespace A132788

/-- `2-∑[1-Δ[(4-6/(n+1))*a(n-1)]]` -/
def P14007544810008234959.Spec : Prop :=
  ∀ n, P14007544810008234959.a n = (A132788 (n + 1) : ℚ)

end A132788

/-! ## A132788.P5460146612030926731

`∑[A071721(n)]-n`
-/

namespace A132788.P5460146612030926731
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071721 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ)

end

end A132788.P5460146612030926731

namespace A132788

/-- `∑[A071721(n)]-n` -/
def P5460146612030926731.Spec : Prop :=
  ∀ n, P5460146612030926731.a n = A132788 (n + 1)

end A132788

/-! ## A132788.P13144863935363327004

`A131428(n+1)-n`
-/

namespace A132788.P13144863935363327004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131428 (n + 1) - (n : ℤ)

end

end A132788.P13144863935363327004

namespace A132788

/-- `A131428(n+1)-n` -/
def P13144863935363327004.Spec : Prop :=
  ∀ n, P13144863935363327004.a n = A132788 (n + 1)

end A132788

/-! ## A132788.P924447924739699615

`∑[2*A071724(n)-1]`
-/

namespace A132788.P924447924739699615
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A071724 n - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A132788.P924447924739699615

namespace A132788

/-- `∑[2*A071724(n)-1]` -/
def P924447924739699615.Spec : Prop :=
  ∀ n, P924447924739699615.a n = A132788 (n + 1)

end A132788

/-! ## A132788.P7833420421988999270

`A068875(n+1)-(n+1)`
-/

namespace A132788.P7833420421988999270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068875 (n + 1) - (n + 1 : ℤ)

end

end A132788.P7833420421988999270

namespace A132788

/-- `A068875(n+1)-(n+1)` -/
def P7833420421988999270.Spec : Prop :=
  ∀ n, P7833420421988999270.a n = A132788 (n + 1)

end A132788

/-! ## A132788.P16549635484374961559

`A128634(n+1)+1-n`
-/

namespace A132788.P16549635484374961559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128634 (n + 1) + (1 - (n : ℤ))

end

end A132788.P16549635484374961559

namespace A132788

/-- `A128634(n+1)+1-n` -/
def P16549635484374961559.Spec : Prop :=
  ∀ n, P16549635484374961559.a n = A132788 (n + 1)

end A132788

/-! ## A132788.P8487807225598318115

`A262543(n+2)-(n+1)`
-/

namespace A132788.P8487807225598318115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262543 (n + 2) - (n + 1 : ℤ)

end

end A132788.P8487807225598318115

namespace A132788

/-- `A262543(n+2)-(n+1)` -/
def P8487807225598318115.Spec : Prop :=
  ∀ n, P8487807225598318115.a n = A132788 (n + 1)

theorem P8487807225598318115.correct : P8487807225598318115.Spec := by
  intro n
  simp only [A132788, Nat.add_sub_cancel, A132788.P8487807225598318115.a, A132788.P2699789363673482983.a, A000108, A000108.P17551949696095299361.a, A262543, A262543.P13500433892424337736.a, A141351, A141351.P15521239837132020654.a, A057427, A057427.P3058147525557661423.a, A000007, A000007.P6599383543502402472.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A132788

/-! ## A132788.P13377588392938930353

`A383251(n+1)-(n+2)`
-/

namespace A132788.P13377588392938930353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383251 (n + 1) - (n + 2 : ℤ)

end

end A132788.P13377588392938930353

namespace A132788

/-- `A383251(n+1)-(n+2)` -/
def P13377588392938930353.Spec : Prop :=
  ∀ n, P13377588392938930353.a n = A132788 (n + 1)

theorem P13377588392938930353.correct : P13377588392938930353.Spec := by
  intro n
  simp only [A132788, Nat.add_sub_cancel, A132788.P13377588392938930353.a, A132788.P2699789363673482983.a, A000108, A000108.P17551949696095299361.a, A383251, A383251.P10776672623636940607.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A132788

/-! ## A132788.P12159513348863659073

`A104722(Δ[n²])-(n+1)`
-/

namespace A132788.P12159513348863659073
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104722 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat - (n + 1 : ℤ)

end

end A132788.P12159513348863659073

namespace A132788

/-- `A104722(Δ[n²])-(n+1)` -/
def P12159513348863659073.Spec : Prop :=
  ∀ n, P12159513348863659073.a n = A132788 (n + 1)

end A132788

/-! ## A132788.P5901631115327628887

`∑[abs(1-Δ[2*A000108(n)])]`
-/

namespace A132788.P5901631115327628887
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000108 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - (f2 (n + 1) - f2 n)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A132788.P5901631115327628887

namespace A132788

/-- `∑[abs(1-Δ[2*A000108(n)])]` -/
def P5901631115327628887.Spec : Prop :=
  ∀ n, P5901631115327628887.a n = A132788 (n + 1)

end A132788

/-! ## A132788.P4621792709518466855

`2*A246604(n+1)+n+1`
-/

namespace A132788.P4621792709518466855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A246604 (n + 1) + (n + 1 : ℤ)

end

end A132788.P4621792709518466855

namespace A132788

/-- `2*A246604(n+1)+n+1` -/
def P4621792709518466855.Spec : Prop :=
  ∀ n, P4621792709518466855.a n = A132788 (n + 1)

theorem P4621792709518466855.correct : P4621792709518466855.Spec := by
  intro n
  simp only [A132788, Nat.add_sub_cancel, A132788.P4621792709518466855.a, A132788.P2699789363673482983.a, A000108, A000108.P17551949696095299361.a, A246604, A246604.P5603396420743086449.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A132788

/-! ## A132788.P17747918163398819466

`2*A273526(n+1)+n-1`
-/

namespace A132788.P17747918163398819466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A273526 (n + 1) + ((n : ℤ) - 1)

end

end A132788.P17747918163398819466

namespace A132788

/-- `2*A273526(n+1)+n-1` -/
def P17747918163398819466.Spec : Prop :=
  ∀ n, P17747918163398819466.a n = A132788 (n + 1)

end A132788

/-! ## A132788.P14742217932747869668

`A089408(2*(n+2))-(n+1)`
-/

namespace A132788.P14742217932747869668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089408 (2 * (n + 2)) - (n + 1 : ℤ)

end

end A132788.P14742217932747869668

namespace A132788

/-- `A089408(2*(n+2))-(n+1)` -/
def P14742217932747869668.Spec : Prop :=
  ∀ n, P14742217932747869668.a n = A132788 (n + 1)

end A132788

/-! ## A132788.P10507495369017131290

`2*A120588(n+2)-(n+1)`
-/

namespace A132788.P10507495369017131290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A120588 (n + 2) - (n + 1 : ℤ)

end

end A132788.P10507495369017131290

namespace A132788

/-- `2*A120588(n+2)-(n+1)` -/
def P10507495369017131290.Spec : Prop :=
  ∀ n, P10507495369017131290.a n = A132788 (n + 1)

end A132788

/-! ## A132788.P1948679511639154527

`A329688(3*(n+1))-(n+1)`
-/

namespace A132788.P1948679511639154527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329688 (3 * (n + 1)) - (n + 1 : ℤ)

end

end A132788.P1948679511639154527

namespace A132788

/-- `A329688(3*(n+1))-(n+1)` -/
def P1948679511639154527.Spec : Prop :=
  ∀ n, P1948679511639154527.a n = A132788 (n + 1)

end A132788

/-! ## A132788.P17794726847696709349

`A059348(2*n+3)-(n+1)`
-/

namespace A132788.P17794726847696709349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059348 (2 * n + 3) - (n + 1 : ℤ)

end

end A132788.P17794726847696709349

namespace A132788

/-- `A059348(2*n+3)-(n+1)` -/
def P17794726847696709349.Spec : Prop :=
  ∀ n, P17794726847696709349.a n = A132788 (n + 1)

end A132788

/-! ## A132788.P5471485021947670692

`2*A208355(2*(n+1))-(n+1)`
-/

namespace A132788.P5471485021947670692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A208355 (2 * (n + 1)) - (n + 1 : ℤ)

end

end A132788.P5471485021947670692

namespace A132788

/-- `2*A208355(2*(n+1))-(n+1)` -/
def P5471485021947670692.Spec : Prop :=
  ∀ n, P5471485021947670692.a n = A132788 (n + 1)

end A132788

/-!
# A132789: Triangle read by rows: T(n,k) = A007318(n-1, k-1) + A001263(n, k) - 1.

The programs for A132789, the canonical program `A132789.P6314999068272681053` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A132789 has offset 1).

The definition of A132789 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A132789.P6314999068272681053

`A014473(n)+A001263(n+1)`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A132789

/-- `A014473(n)+A001263(n+1)` -/
def P6314999068272681053.Spec : Prop :=
  ∀ n, P6314999068272681053.a n = A132789 (n + 1)

theorem P6314999068272681053.correct : P6314999068272681053.Spec := by
  intro n
  simp only [A132789, Nat.add_sub_cancel]

end A132789

/-! ## A132789.P1537319574916599894

`A001263(n+1)+A007318(n)-1`
-/

namespace A132789.P1537319574916599894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001263 (n + 1) + (A007318 n - 1)

end

end A132789.P1537319574916599894

namespace A132789

/-- `A001263(n+1)+A007318(n)-1` -/
def P1537319574916599894.Spec : Prop :=
  ∀ n, P1537319574916599894.a n = A132789 (n + 1)

theorem P1537319574916599894.correct : P1537319574916599894.Spec := by
  intro n
  simp only [A132789, Nat.add_sub_cancel, A132789.P1537319574916599894.a, A132789.P6314999068272681053.a, A001263, A001263.P4972562200399461323.a, A007318, A007318.P302227728145965961.a, A014473, A014473.P9301799580602651200.a, A050169, A050169.P236062353889344769.a, A161642, A161642.P15049293823349012266.a, A259525, A259525.P15603515225238104540.f1, A259525.P15603515225238104540.a, A003056, A003056.P5318256527314048597.a, A074909, A074909.P6707642907239843837.f1, A074909.P6707642907239843837.a, A135278, A135278.P10862305414900331449.a, A002262, A002262.P12129691700837801527.a, A010054, A010054.P18347828677204923252.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A132789

/-! ## A132789.P1684233913034398806

`A001263(n+1)+sqrt(A008459(n))-1`
-/

namespace A132789.P1684233913034398806
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A001263 (n + 1) : ℝ) + (Real.sqrt (A008459 n : ℝ) - 1)

end

end A132789.P1684233913034398806

namespace A132789

/-- `A001263(n+1)+sqrt(A008459(n))-1` -/
def P1684233913034398806.Spec : Prop :=
  ∀ n, P1684233913034398806.a n = (A132789 (n + 1) : ℝ)

end A132789

/-! ## A132789.P6458768710409193098

`A001263(n+1)+Δ[A102363(n)]-1`
-/

namespace A132789.P6458768710409193098
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102363 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001263 (n + 1) + (f1 (n + 1) - f1 n - 1)

end

end A132789.P6458768710409193098

namespace A132789

/-- `A001263(n+1)+Δ[A102363(n)]-1` -/
def P6458768710409193098.Spec : Prop :=
  ∀ n, P6458768710409193098.a n = A132789 (n + 1)

end A132789

/-! ## A132789.P8704640636451716261

`A001263(n+1)+A132044(n)%A001263(n+1)`
-/

namespace A132789.P8704640636451716261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001263 (n + 1) + Int.tmod (A132044 n) (A001263 (n + 1))

end

end A132789.P8704640636451716261

namespace A132789

/-- `A001263(n+1)+A132044(n)%A001263(n+1)` -/
def P8704640636451716261.Spec : Prop :=
  ∀ n, P8704640636451716261.a n = A132789 (n + 1)

end A132789

/-! ## A132789.P10244693981906442899

`A007318(n)+A132787(n+1)%A001263(n+1)`
-/

namespace A132789.P10244693981906442899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n + Int.tmod (A132787 (n + 1)) (A001263 (n + 1))

end

end A132789.P10244693981906442899

namespace A132789

/-- `A007318(n)+A132787(n+1)%A001263(n+1)` -/
def P10244693981906442899.Spec : Prop :=
  ∀ n, P10244693981906442899.a n = A132789 (n + 1)

end A132789

/-! ## A132789.P1987442249539545202

`A014473(n)+sqrt(A174158(n+1))`
-/

namespace A132789.P1987442249539545202
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A014473 n : ℝ) + Real.sqrt (A174158 (n + 1) : ℝ)

end

end A132789.P1987442249539545202

namespace A132789

/-- `A014473(n)+sqrt(A174158(n+1))` -/
def P1987442249539545202.Spec : Prop :=
  ∀ n, P1987442249539545202.a n = (A132789 (n + 1) : ℝ)

end A132789

/-! ## A132789.P14137103827062817925

`A213633(A109128(n))+A001263(n+1)`
-/

namespace A132789.P14137103827062817925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213633 (A109128 n).toNat + A001263 (n + 1)

end

end A132789.P14137103827062817925

namespace A132789

/-- `A213633(A109128(n))+A001263(n+1)` -/
def P14137103827062817925.Spec : Prop :=
  ∀ n, P14137103827062817925.a n = A132789 (n + 1)

end A132789

/-! ## A132789.P8850268617615974832

`A001263(n+1)+A004526(A028326(n)-1)`
-/

namespace A132789.P8850268617615974832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001263 (n + 1) + A004526 (A028326 n - 1).toNat

end

end A132789.P8850268617615974832

namespace A132789

/-- `A001263(n+1)+A004526(A028326(n)-1)` -/
def P8850268617615974832.Spec : Prop :=
  ∀ n, P8850268617615974832.a n = A132789 (n + 1)

end A132789

/-! ## A132789.P9372001418102916011

`A001263(n+1)+A026741(A134058(n))-1`
-/

namespace A132789.P9372001418102916011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001263 (n + 1) + (A026741 (A134058 n).toNat - 1)

end

end A132789.P9372001418102916011

namespace A132789

/-- `A001263(n+1)+A026741(A134058(n))-1` -/
def P9372001418102916011.Spec : Prop :=
  ∀ n, P9372001418102916011.a n = A132789 (n + 1)

end A132789

/-!
# A132790: Row sums of triangle A132789.

The programs for A132790, the canonical program `A132790.P12556336917507910766` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A132790 has offset 1).

The definition of A132790 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 172 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A132790.P10444001495680573503

`A246604(n+1)+2^n`
-/

namespace A132790.P10444001495680573503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246604 (n + 1) + (2 ^ n : ℤ)

end

end A132790.P10444001495680573503

namespace A132790

/-- `A246604(n+1)+2^n` -/
def P10444001495680573503.Spec : Prop :=
  ∀ n, P10444001495680573503.a n = A132790 (n + 1)

end A132790

/-! ## A132790.P12556336917507910766

`∑[A000245(n)]-(n-2^n)`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A132790

/-- `∑[A000245(n)]-(n-2^n)` -/
def P12556336917507910766.Spec : Prop :=
  ∀ n, P12556336917507910766.a n = A132790 (n + 1)

theorem P12556336917507910766.correct : P12556336917507910766.Spec := by
  intro n
  simp only [A132790, Nat.add_sub_cancel]

end A132790

/-! ## A132790.P15568766776233012737

`2^n+A000108(n+1)-(n+1)`
-/

namespace A132790.P15568766776233012737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) + (A000108 (n + 1) - (n + 1 : ℤ))

end

end A132790.P15568766776233012737

namespace A132790

/-- `2^n+A000108(n+1)-(n+1)` -/
def P15568766776233012737.Spec : Prop :=
  ∀ n, P15568766776233012737.a n = A132790 (n + 1)

end A132790

/-! ## A132790.P2644130312523594232

`A338726(n)+A000245(n)`
-/

namespace A132790.P2644130312523594232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338726 n + A000245 n

end

end A132790.P2644130312523594232

namespace A132790

/-- `A338726(n)+A000245(n)` -/
def P2644130312523594232.Spec : Prop :=
  ∀ n, P2644130312523594232.a n = A132790 (n + 1)

end A132790

/-! ## A132790.P5879772245415884556

`A338726(n)+Δ[A000108(n)]`
-/

namespace A132790.P5879772245415884556
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338726 n + (f1 (n + 1) - f1 n)

end

end A132790.P5879772245415884556

namespace A132790

/-- `A338726(n)+Δ[A000108(n)]` -/
def P5879772245415884556.Spec : Prop :=
  ∀ n, P5879772245415884556.a n = A132790 (n + 1)

end A132790

/-! ## A132790.P15334399147599688627

`A000295(n)+record[A097331(n)]`
-/

namespace A132790.P15334399147599688627
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097331 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000295 n + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A132790.P15334399147599688627

namespace A132790

/-- `A000295(n)+record[A097331(n)]` -/
def P15334399147599688627.Spec : Prop :=
  ∀ n, P15334399147599688627.a n = A132790 (n + 1)

end A132790

/-! ## A132790.P17191686802888763148

`A000295(n)+record[A126120(n)]`
-/

namespace A132790.P17191686802888763148
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126120 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000295 n + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A132790.P17191686802888763148

namespace A132790

/-- `A000295(n)+record[A126120(n)]` -/
def P17191686802888763148.Spec : Prop :=
  ∀ n, P17191686802888763148.a n = A132790 (n + 1)

end A132790

/-! ## A132790.P15512652714326918595

`A000295(n)+A000108(n+1)`
-/

namespace A132790.P15512652714326918595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000295 n + A000108 (n + 1)

end

end A132790.P15512652714326918595

namespace A132790

/-- `A000295(n)+A000108(n+1)` -/
def P15512652714326918595.Spec : Prop :=
  ∀ n, P15512652714326918595.a n = A132790 (n + 1)

end A132790

/-! ## A132790.P14471614554063317701

`A273526(n+1)+A000225(n)`
-/

namespace A132790.P14471614554063317701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273526 (n + 1) + A000225 n

end

end A132790.P14471614554063317701

namespace A132790

/-- `A273526(n+1)+A000225(n)` -/
def P14471614554063317701.Spec : Prop :=
  ∀ n, P14471614554063317701.a n = A132790 (n + 1)

end A132790

/-! ## A132790.P8490546212843391738

`A338726(n+1)-A000225(n)`
-/

namespace A132790.P8490546212843391738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338726 (n + 1) - A000225 n

end

end A132790.P8490546212843391738

namespace A132790

/-- `A338726(n+1)-A000225(n)` -/
def P8490546212843391738.Spec : Prop :=
  ∀ n, P8490546212843391738.a n = A132790 (n + 1)

end A132790

/-! ## A132790.P6514265011057537435

`A000108(n+1)+Δ[A002662(n)]`
-/

namespace A132790.P6514265011057537435
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002662 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 (n + 1) + (f1 (n + 1) - f1 n)

end

end A132790.P6514265011057537435

namespace A132790

/-- `A000108(n+1)+Δ[A002662(n)]` -/
def P6514265011057537435.Spec : Prop :=
  ∀ n, P6514265011057537435.a n = A132790 (n + 1)

end A132790

/-! ## A132790.P1037941991256703116

`A000108(n+1)+A000325(n)-1`
-/

namespace A132790.P1037941991256703116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 (n + 1) + (A000325 n - 1)

end

end A132790.P1037941991256703116

namespace A132790

/-- `A000108(n+1)+A000325(n)-1` -/
def P1037941991256703116.Spec : Prop :=
  ∀ n, P1037941991256703116.a n = A132790 (n + 1)

end A132790

/-! ## A132790.P5908833587509794983

`A208355(2*(n+1))+A000295(n)`
-/

namespace A132790.P5908833587509794983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208355 (2 * (n + 1)) + A000295 n

end

end A132790.P5908833587509794983

namespace A132790

/-- `A208355(2*(n+1))+A000295(n)` -/
def P5908833587509794983.Spec : Prop :=
  ∀ n, P5908833587509794983.a n = A132790 (n + 1)

end A132790

/-! ## A132790.P3302184631765762974

`A000108(n+1)+A000225(n)-n`
-/

namespace A132790.P3302184631765762974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 (n + 1) + (A000225 n - (n : ℤ))

end

end A132790.P3302184631765762974

namespace A132790

/-- `A000108(n+1)+A000225(n)-n` -/
def P3302184631765762974.Spec : Prop :=
  ∀ n, P3302184631765762974.a n = A132790 (n + 1)

end A132790

/-! ## A132790.P9677011705841738996

`A000108(n+1)+∑[A011782(n)-1]`
-/

namespace A132790.P9677011705841738996
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 n - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A132790.P9677011705841738996

namespace A132790

/-- `A000108(n+1)+∑[A011782(n)-1]` -/
def P9677011705841738996.Spec : Prop :=
  ∀ n, P9677011705841738996.a n = A132790 (n + 1)

end A132790

/-! ## A132790.P3520439530335324572

`A000108(n+1)+∑[A131577(n)]-n`
-/

namespace A132790.P3520439530335324572
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131577 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 (n + 1) + (∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ))

end

end A132790.P3520439530335324572

namespace A132790

/-- `A000108(n+1)+∑[A131577(n)]-n` -/
def P3520439530335324572.Spec : Prop :=
  ∀ n, P3520439530335324572.a n = A132790 (n + 1)

end A132790

/-! ## A132790.P5987025890678933157

`record[A126120(n)]-(1-A000079(n)+n)`
-/

namespace A132790.P5987025890678933157
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126120 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - (1 - A000079 n + (n : ℤ))

end

end A132790.P5987025890678933157

namespace A132790

/-- `record[A126120(n)]-(1-A000079(n)+n)` -/
def P5987025890678933157.Spec : Prop :=
  ∀ n, P5987025890678933157.a n = A132790 (n + 1)

end A132790

/-! ## A132790.P8536089133701808933

`A000108(n+1)+A000079(n)-(n+1)`
-/

namespace A132790.P8536089133701808933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 (n + 1) + (A000079 n - (n + 1 : ℤ))

end

end A132790.P8536089133701808933

namespace A132790

/-- `A000108(n+1)+A000079(n)-(n+1)` -/
def P8536089133701808933.Spec : Prop :=
  ∀ n, P8536089133701808933.a n = A132790 (n + 1)

end A132790

/-! ## A132790.P4598031138763827241

`A000108(n+1)+A000051(n)-(n+2)`
-/

namespace A132790.P4598031138763827241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 (n + 1) + (A000051 n - (n + 2 : ℤ))

end

end A132790.P4598031138763827241

namespace A132790

/-- `A000108(n+1)+A000051(n)-(n+2)` -/
def P4598031138763827241.Spec : Prop :=
  ∀ n, P4598031138763827241.a n = A132790 (n + 1)

end A132790

/-! ## A132790.P4204662196942603810

`A000108(n+1)+A338726(n)-A000108(n)`
-/

namespace A132790.P4204662196942603810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 (n + 1) + (A338726 n - A000108 n)

end

end A132790.P4204662196942603810

namespace A132790

/-- `A000108(n+1)+A338726(n)-A000108(n)` -/
def P4204662196942603810.Spec : Prop :=
  ∀ n, P4204662196942603810.a n = A132790 (n + 1)

end A132790

/-!
# A132791: Numbers k such that the sum of the digits of 4^k is prime.

The programs for A132791, the canonical program `A132791.P2807201736206907755` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A132791 has offset 1).

The definition of A132791 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1621 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A132791.P2807201736206907755

`eq[0, A005171(A065713(n))]`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A132791

/-- `eq[0, A005171(A065713(n))]` -/
def P2807201736206907755.Spec : Prop :=
  ∀ n, (P2807201736206907755.a n : ℤ) = A132791 (n + 1)

theorem P2807201736206907755.correct : P2807201736206907755.Spec := by
  intro n
  simp only [A132791, Nat.add_sub_cancel]

end A132791

/-! ## A132791.P15190945885011910704

`eq[A001222(A065713(n)), A054977(n)]`
-/

namespace A132791.P15190945885011910704
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A065713 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054977 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A132791.P15190945885011910704

namespace A132791

/-- `eq[A001222(A065713(n)), A054977(n)]` -/
def P15190945885011910704.Spec : Prop :=
  ∀ n, (P15190945885011910704.a n : ℤ) = A132791 (n + 1)

end A132791

/-! ## A132791.P9515308317417440895

`record[A025480(A076203(n+2))]`
-/

namespace A132791.P9515308317417440895
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025480 (A076203 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A132791.P9515308317417440895

namespace A132791

/-- `record[A025480(A076203(n+2))]` -/
def P9515308317417440895.Spec : Prop :=
  ∀ n, P9515308317417440895.a n = A132791 (n + 1)

end A132791

/-! ## A132791.P11137395935201147045

`eq[1, A001222(A001370(2*(n+1)))]+1`
-/

namespace A132791.P11137395935201147045
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A001370 (2 * (n + 1))).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A132791.P11137395935201147045

namespace A132791

/-- `eq[1, A001222(A001370(2*(n+1)))]+1` -/
def P11137395935201147045.Spec : Prop :=
  ∀ n, (P11137395935201147045.a n : ℤ) = A132791 (n + 1)

end A132791

/-! ## A132791.P6774400908309061596

`lt[A001370(n), A020639(A001370(2*n))]`
-/

namespace A132791.P6774400908309061596
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001370 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A001370 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A132791.P6774400908309061596

namespace A132791

/-- `lt[A001370(n), A020639(A001370(2*n))]` -/
def P6774400908309061596.Spec : Prop :=
  ∀ n, (P6774400908309061596.a n : ℤ) = A132791 (n + 1)

end A132791

/-! ## A132791.P11060081979953463172

`eq[0, A039651(A001370(2*n))]`
-/

namespace A132791.P11060081979953463172
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039651 (A001370 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A132791.P11060081979953463172

namespace A132791

/-- `eq[0, A039651(A001370(2*n))]` -/
def P11060081979953463172.Spec : Prop :=
  ∀ n, (P11060081979953463172.a n : ℤ) = A132791 (n + 1)

end A132791

/-! ## A132791.P5325569247454321303

`eq[A057427(n), A078898(A065713(n))]`
-/

namespace A132791.P5325569247454321303
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078898 (A065713 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A132791.P5325569247454321303

namespace A132791

/-- `eq[A057427(n), A078898(A065713(n))]` -/
def P5325569247454321303.Spec : Prop :=
  ∀ n, (P5325569247454321303.a n : ℤ) = A132791 (n + 1)

end A132791

/-! ## A132791.P11480788356242701721

`lt[A003415(A065713(n)), A161511(n)]`
-/

namespace A132791.P11480788356242701721
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 (A065713 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161511 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A132791.P11480788356242701721

namespace A132791

/-- `lt[A003415(A065713(n)), A161511(n)]` -/
def P11480788356242701721.Spec : Prop :=
  ∀ n, (P11480788356242701721.a n : ℤ) = A132791 (n + 1)

end A132791

/-! ## A132791.P15008274689256845711

`eq[A000038(n), A086165(A001370(2*n))]`
-/

namespace A132791.P15008274689256845711
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086165 (A001370 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A132791.P15008274689256845711

namespace A132791

/-- `eq[A000038(n), A086165(A001370(2*n))]` -/
def P15008274689256845711.Spec : Prop :=
  ∀ n, (P15008274689256845711.a n : ℤ) = A132791 (n + 1)

end A132791

/-!
# A132792: The infinitesimal Lah matrix: generator of unsigned A111596.

The programs for A132792, there is no canonical definition to state claims against.
-/

/-! ## A132792.P18211292701930013263

`C(∑[char[∑[n+1]]], (n+1-C(comp[∑[n]]-n, 2))²²)²-C(∑[char[∑[n+1]]], (n+1-C(comp[∑[n]]-n, 2))²²)`
-/

namespace A132792.P18211292701930013263
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f5 j

def f8 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f7 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f8 j

open Classical in
def f6 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f7 j = n then 1 else 0

def f10 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f9 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f10 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j) ((((n + 1 : ℤ) - (Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f4 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 : ℤ)) ^ 2) ^ 2).toNat ^ 2 : ℤ) - (Nat.choose (∑ j ∈ Finset.range (n + 1), f6 j) ((((n + 1 : ℤ) - (Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f9 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 : ℤ)) ^ 2) ^ 2).toNat : ℤ)

end

end A132792.P18211292701930013263

/-! ## A132792.P2157994840616231384

`2*C(A132440(n), 2)`
-/

namespace A132792.P2157994840616231384
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * Nat.choose (A132440 n).toNat 2

end

end A132792.P2157994840616231384

/-! ## A132792.P6208998732608768015

`floor((A112295(n)/2)²)`
-/

namespace A132792.P6208998732608768015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((A112295 n : ℚ) / 2) ^ 2⌋

end

end A132792.P6208998732608768015

/-! ## A132792.P12168385659092286438

`2*C(abs(A132013(n)), 2)`
-/

namespace A132792.P12168385659092286438
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * Nat.choose |A132013 n|.toNat 2

end

end A132792.P12168385659092286438

/-! ## A132792.P7575600211986579023

`2*C(A128229(n+1), 2)`
-/

namespace A132792.P7575600211986579023
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * Nat.choose (A128229 (n + 1)).toNat 2

end

end A132792.P7575600211986579023

/-! ## A132792.P2422665839831408213

`2*C(A130460(n+1), 2)`
-/

namespace A132792.P2422665839831408213
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * Nat.choose (A130460 (n + 1)).toNat 2

end

end A132792.P2422665839831408213

/-! ## A132792.P12697599533246506895

`char[C(n, 2)-2]*A271703(n)`
-/

namespace A132792.P12697599533246506895
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose n 2 : ℤ) - 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A271703 n

end

end A132792.P12697599533246506895

/-! ## A132792.P7161283803308693015

`2*char[∑[n]-2]*A132393(n)`
-/

namespace A132792.P7161283803308693015
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) - 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A132393 n)

end

end A132792.P7161283803308693015

/-! ## A132792.P14826895839445057035

`A002378(A218234(n))`
-/

namespace A132792.P14826895839445057035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002378 (A218234 n).toNat

end

end A132792.P14826895839445057035

/-! ## A132792.P2263609778797965282

`A182568(A131227(n+1))`
-/

namespace A132792.P2263609778797965282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182568 (A131227 (n + 1)).toNat

end

end A132792.P2263609778797965282

/-!
# A132794: Numbers n such that sigma(phi(n)) -phi(n) -1 = phi(sigma(n) -n -1).

The programs for A132794, there is no canonical definition to state claims against.
-/

/-! ## A132794.P17525913671141803118

`A139257(n+1)+2`
-/

namespace A132794.P17525913671141803118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139257 (n + 1) + 2

end

end A132794.P17525913671141803118

/-! ## A132794.P7496800625346440661

`2*A072868(n+1)`
-/

namespace A132794.P7496800625346440661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A072868 (n + 1)

end

end A132794.P7496800625346440661

/-! ## A132794.P16636227515792121137

`4*A019279(n+1)`
-/

namespace A132794.P16636227515792121137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A019279 (n + 1)

end

end A132794.P16636227515792121137

/-! ## A132794.P6049428083016276282

`2^A050475(n+1)`
-/

namespace A132794.P6049428083016276282
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A050475 (n + 1) : ℤ)

end

end A132794.P6049428083016276282

/-!
# A132795: Triangle of Gely numbers, read by rows.

The programs for A132795, there is no canonical definition to state claims against.
-/

/-! ## A132795.P10310402416891156343

`A303535(A335095(n))%17`
-/

namespace A132795.P10310402416891156343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A303535 (A335095 n).toNat) 17

end

end A132795.P10310402416891156343

/-! ## A132795.P6104081676618315509

`A203905(or(A006218(n), A286331(n)))`
-/

namespace A132795.P6104081676618315509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203905 (Int.lor (A006218 n) (A286331 n)).toNat

end

end A132795.P6104081676618315509

/-! ## A132795.P14247851193939839904

`A282355(A271194(n+1))+A060338(n)`
-/

namespace A132795.P14247851193939839904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282355 (A271194 (n + 1)).toNat + A060338 n

end

end A132795.P14247851193939839904

/-! ## A132795.P14324846822456707915

`A317302(A120552(n)%A120576(n+3))`
-/

namespace A132795.P14324846822456707915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317302 (Int.tmod (A120552 n) (A120576 (n + 3))).toNat

end

end A132795.P14324846822456707915

/-! ## A132795.P12269185679755491045

`A004146(A052173(n)%A066722(n+4))`
-/

namespace A132795.P12269185679755491045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004146 (Int.tmod (A052173 n) (A066722 (n + 4))).toNat

end

end A132795.P12269185679755491045

/-!
# A132796: Second diagonal of Gely numbers.

The programs for A132796, there is no canonical definition to state claims against.
-/

/-! ## A132796.P9740094971501690257

`abs(C(xor(1, n), n)-∑[(-2)^n])`
-/

namespace A132796.P9740094971501690257
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-2) ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(Nat.choose (Nat.xor 1 n) n : ℤ) - ∑ j ∈ Finset.range (n + 1), f1 j|

end

end A132796.P9740094971501690257

/-! ## A132796.P6953170319635463224

`2^n-or(1, n)-a(n-1)` with `a(0)=0`
-/

namespace A132796.P6953170319635463224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  (2 ^ n : ℤ) - (Nat.lor 1 n : ℤ) - a (n - 1)

end

end A132796.P6953170319635463224

/-! ## A132796.P6060373471930605822

`floor(∑[2^n/3])-n%or(1, n)`
-/

namespace A132796.P6060373471930605822
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℚ) / 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊∑ j ∈ Finset.range (n + 1), f1 j⌋ - ((n % Nat.lor 1 n : ℕ) : ℤ)

end

end A132796.P6060373471930605822

/-! ## A132796.P11753317565885420051

`∑[floor(2^n/3)-n*(-1)^n]`
-/

namespace A132796.P11753317565885420051
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(2 ^ n : ℚ) / 3⌋ - (n : ℤ) * (-1) ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A132796.P11753317565885420051

/-! ## A132796.P3734423413992351724

`floor(∑[2^n/3])-n*log2(gcd(2, n))`
-/

namespace A132796.P3734423413992351724
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℚ) / 3

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (⌊∑ j ∈ Finset.range (n + 1), f1 j⌋ : ℝ) - (n : ℝ) * Real.logb 2 (Nat.gcd 2 n : ℝ)

end

end A132796.P3734423413992351724

/-!
# A132798: Period 6: repeat [0, 2, 1, 0, -2, -1].

The programs for A132798, the canonical program `A132798.P12311710572282220137` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A132798 has offset 0).

The definition of A132798 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A132798.P12311710572282220137

`A080425(n)*A130151(n)`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A132798

/-- `A080425(n)*A130151(n)` -/
def P12311710572282220137.Spec : Prop :=
  ∀ n, P12311710572282220137.a n = A132798 n

theorem P12311710572282220137.correct : P12311710572282220137.Spec := by
  intro n
  simp only [A132798]

end A132798

