import SequenceMachineLib
import Mathlib.Tactic
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C003
import Seq.B000.C006
import Seq.B000.C007
import Seq.B000.C008
import Seq.B000.C011
import Seq.B000.C012
import Seq.B000.C013
import Seq.B000.C017
import Seq.B000.C019
import Seq.B000.C022
import Seq.B000.C027
import Seq.B000.C030
import Seq.B000.C033
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C038
import Seq.B000.C042
import Seq.B000.C045
import Seq.B000.C046
import Seq.B000.C050
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C008
import Seq.B001.C012
import Seq.B001.C014
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C003
import Seq.B002.C007
import Seq.B002.C008
import Seq.B003.C000
import Seq.B003.C002
import Seq.B003.C005
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C002
import Seq.B006.C001
import Seq.B007.C001
import Seq.B008.C000
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
import Seq.Opaque.C016
import Seq.Opaque.C017
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
# A399500: Triangle read by rows: row n gives the n consecutive integers centered at n, excluding n if n is even.

The programs for A399500, the canonical program `A399500.P9205957688936578004` is in `Seq.B001.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A399500 has offset 1).

The definition of A399500 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A399500.P3334772588492463849

`A339183(n)+col(n)+1`
-/

namespace A399500.P3334772588492463849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339183 n + (SequenceMachineLib.triCol n + 1 : ℤ)

end

end A399500.P3334772588492463849

namespace A399500

/-- `A339183(n)+col(n)+1` -/
def P3334772588492463849.Spec : Prop :=
  ∀ n, P3334772588492463849.a n = A399500 (n + 1)

theorem P3334772588492463849.correct : P3334772588492463849.Spec := by
  intro n
  simp only [A399500, Nat.add_sub_cancel, A399500.P3334772588492463849.a, A399500.P9205957688936578004.a, A002260, A002260.P9170571874073898642.a, A339183, A339183.P14330859921888403389.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A399500

/-! ## A399500.P8473525362163397768

`A002260(n+1)+∑[char[∑[4*n+2]]]`
-/

namespace A399500.P8473525362163397768
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n + 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A399500.P8473525362163397768

namespace A399500

/-- `A002260(n+1)+∑[char[∑[4*n+2]]]` -/
def P8473525362163397768.Spec : Prop :=
  ∀ n, P8473525362163397768.a n = A399500 (n + 1)

end A399500

/-! ## A399500.P9205957688936578004

`A339183(n)+A002260(n+1)`

The canonical program, it is in `Seq.B001.C014`.
-/

namespace A399500

/-- `A339183(n)+A002260(n+1)` -/
def P9205957688936578004.Spec : Prop :=
  ∀ n, P9205957688936578004.a n = A399500 (n + 1)

theorem P9205957688936578004.correct : P9205957688936578004.Spec := by
  intro n
  simp only [A399500, Nat.add_sub_cancel]

end A399500

/-! ## A399500.P16037039232047899992

`A183301(n+1)-A057944(n)`
-/

namespace A399500.P16037039232047899992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183301 (n + 1) - A057944 n

end

end A399500.P16037039232047899992

namespace A399500

/-- `A183301(n+1)-A057944(n)` -/
def P16037039232047899992.Spec : Prop :=
  ∀ n, P16037039232047899992.a n = A399500 (n + 1)

end A399500

/-! ## A399500.P14844753274362466071

`A074294(A399262(n+1))`
-/

namespace A399500.P14844753274362466071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074294 (A399262 (n + 1)).toNat

end

end A399500.P14844753274362466071

namespace A399500

/-- `A074294(A399262(n+1))` -/
def P14844753274362466071.Spec : Prop :=
  ∀ n, P14844753274362466071.a n = A399500 (n + 1)

end A399500

/-!
# A399503: The number of distinct regions in a regular n-gon with all diagonals, up to dihedral automorphisms of the n-gon.

The programs for A399503, there is no canonical definition to state claims against.
-/

/-! ## A399503.P16536866845906501447

`A187781(n+3)+A174903(A394989(n+1))`
-/

namespace A399503.P16536866845906501447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187781 (n + 3) + A174903 (A394989 (n + 1)).toNat

end

end A399503.P16536866845906501447

/-!
# A399504: b - c - d where b >= c >= d >= 0 ordered by b then c then d.

The programs for A399504, the canonical program `A399504.P3432684880369202973` is in `Seq.B005.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A399504 has offset 0).

The definition of A399504 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A056556, A056557, A056558, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A399504.P3432684880369202973

`A056556(n)-A056557(n)-A056558(n)`

The canonical program, it is in `Seq.B005.C002`.
-/

namespace A399504

/-- `A056556(n)-A056557(n)-A056558(n)` -/
def P3432684880369202973.Spec : Prop :=
  ∀ n, P3432684880369202973.a n = A399504 n

theorem P3432684880369202973.correct : P3432684880369202973.Spec := by
  intro n
  simp only [A399504]

end A399504

/-! ## A399504.P5581231787095340719

`A056559(n)-A056558(n)`
-/

namespace A399504.P5581231787095340719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056559 n - A056558 n

end

end A399504.P5581231787095340719

namespace A399504

/-- `A056559(n)-A056558(n)` -/
def P5581231787095340719.Spec : Prop :=
  ∀ n, P5581231787095340719.a n = A399504 n

end A399504

/-! ## A399504.P12177062478911150409

`2*A056556(n)-A070770(n)`
-/

namespace A399504.P12177062478911150409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A056556 n - A070770 n

end

end A399504.P12177062478911150409

namespace A399504

/-- `2*A056556(n)-A070770(n)` -/
def P12177062478911150409.Spec : Prop :=
  ∀ n, P12177062478911150409.a n = A399504 n

theorem P12177062478911150409.correct : P12177062478911150409.Spec := by
  intro n
  simp only [A399504, Nat.add_sub_cancel, A399504.P12177062478911150409.a, A399504.P3432684880369202973.a, A056556, A056556.P11335361665985267770.f1, A056556.P11335361665985267770.a, A056557, A056557.P17486820174551382648.a, A056558, A056558.P9838016409462188239.a, A070770, A070770.P9804462315160195560.a, A000292, A000292.P18322089543142633594.a, A003056, A003056.P5318256527314048597.a, A023533, A023533.P16553737014273247425.a, A014306, A014306.P10618753585715922645.f2, A014306.P10618753585715922645.f1, A014306.P10618753585715922645.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A399504

/-! ## A399504.P13527363084392210229

`A056559(n)-val(A038471(n+1), 4)`
-/

namespace A399504.P13527363084392210229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056559 n - (SequenceMachineLib.valuation (A038471 (n + 1)).toNat 4 : ℤ)

end

end A399504.P13527363084392210229

namespace A399504

/-- `A056559(n)-val(A038471(n+1), 4)` -/
def P13527363084392210229.Spec : Prop :=
  ∀ n, P13527363084392210229.a n = A399504 n

end A399504

/-! ## A399504.P13244878177401014533

`A056556(n)-(A056558(n)+A056557(n))`
-/

namespace A399504.P13244878177401014533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056556 n - (A056558 n + A056557 n)

end

end A399504.P13244878177401014533

namespace A399504

/-- `A056556(n)-(A056558(n)+A056557(n))` -/
def P13244878177401014533.Spec : Prop :=
  ∀ n, P13244878177401014533.a n = A399504 n

theorem P13244878177401014533.correct : P13244878177401014533.Spec := by
  intro n
  simp only [A399504, Nat.add_sub_cancel, A399504.P13244878177401014533.a, A399504.P3432684880369202973.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A399504

/-! ## A399504.P12348449954647411656

`A056560(n)+A056559(n)-A056557(n)`
-/

namespace A399504.P12348449954647411656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056560 n + A056559 n - A056557 n

end

end A399504.P12348449954647411656

namespace A399504

/-- `A056560(n)+A056559(n)-A056557(n)` -/
def P12348449954647411656.Spec : Prop :=
  ∀ n, P12348449954647411656.a n = A399504 n

theorem P12348449954647411656.correct : P12348449954647411656.Spec := by
  intro n
  simp only [A399504, Nat.add_sub_cancel, A399504.P12348449954647411656.a, A399504.P3432684880369202973.a, A056556, A056556.P11335361665985267770.f1, A056556.P11335361665985267770.a, A056557, A056557.P17486820174551382648.a, A056558, A056558.P9838016409462188239.a, A056559, A056559.P3524647608024188451.a, A056560, A056560.P14693903049238240332.a, A000292, A000292.P18322089543142633594.a, A003056, A003056.P5318256527314048597.a, A023533, A023533.P16553737014273247425.a, A014306, A014306.P10618753585715922645.f2, A014306.P10618753585715922645.f1, A014306.P10618753585715922645.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A399504

/-! ## A399504.P9927854798567070027

`A360010(n+1)-(A194848(n)+A056558(n))`
-/

namespace A399504.P9927854798567070027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360010 (n + 1) - (A194848 n + A056558 n)

end

end A399504.P9927854798567070027

namespace A399504

/-- `A360010(n+1)-(A194848(n)+A056558(n))` -/
def P9927854798567070027.Spec : Prop :=
  ∀ n, P9927854798567070027.a n = A399504 n

theorem P9927854798567070027.correct : P9927854798567070027.Spec := by
  intro n
  simp only [A399504, Nat.add_sub_cancel, A399504.P9927854798567070027.a, A399504.P3432684880369202973.a, A056556, A056556.P11335361665985267770.f1, A056556.P11335361665985267770.a, A056557, A056557.P17486820174551382648.a, A056558, A056558.P9838016409462188239.a, A194848, A194848.P4641627590667546157.a, A360010, A360010.P17961547097730859062.a, A000292, A000292.P18322089543142633594.a, A003056, A003056.P5318256527314048597.a, A023533, A023533.P16553737014273247425.a, A014306, A014306.P10618753585715922645.f2, A014306.P10618753585715922645.f1, A014306.P10618753585715922645.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A399504

/-! ## A399504.P17521247218945761397

`A332662(2*n+1)-A056558(n)`
-/

namespace A399504.P17521247218945761397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332662 (2 * n + 1) - A056558 n

end

end A399504.P17521247218945761397

namespace A399504

/-- `A332662(2*n+1)-A056558(n)` -/
def P17521247218945761397.Spec : Prop :=
  ∀ n, P17521247218945761397.a n = A399504 n

end A399504

/-! ## A399504.P14374113818403747424

`A360010(n+1)-(A333516(n+1)+A056557(n))`
-/

namespace A399504.P14374113818403747424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360010 (n + 1) - (A333516 (n + 1) + A056557 n)

end

end A399504.P14374113818403747424

namespace A399504

/-- `A360010(n+1)-(A333516(n+1)+A056557(n))` -/
def P14374113818403747424.Spec : Prop :=
  ∀ n, P14374113818403747424.a n = A399504 n

end A399504

/-! ## A399504.P605346728657236246

`A345116(n+1)-A333516(n+1)`
-/

namespace A399504.P605346728657236246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345116 (n + 1) - A333516 (n + 1)

end

end A399504.P605346728657236246

namespace A399504

/-- `A345116(n+1)-A333516(n+1)` -/
def P605346728657236246.Spec : Prop :=
  ∀ n, P605346728657236246.a n = A399504 n

end A399504

/-!
# A399509: a(n) is the number of tilings of a 11 X 10n rectangle into L-pentominoes (no reflections, only rotations).

The programs for A399509, there is no canonical definition to state claims against.
-/

/-! ## A399509.P3035001508346511160

`A081472(A390571(n))-A103718(n)`
-/

namespace A399509.P3035001508346511160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081472 (A390571 n).toNat - A103718 n

end

end A399509.P3035001508346511160

/-!
# A399511: Trajectory of 1 under Conway's PIGAME.

The programs for A399511, there is no canonical definition to state claims against.
-/

/-! ## A399511.P17633686087655124734

`A399512(n)/A000005(A055625(n+1))`
-/

namespace A399511.P17633686087655124734
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A399512 n : ℚ) / (A000005 (A055625 (n + 1)).toNat : ℚ)

end

end A399511.P17633686087655124734

/-! ## A399511.P15334619820022857012

`A399512(n)/A000005(A077798(3*(n+1)))`
-/

namespace A399511.P15334619820022857012
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A399512 n : ℚ) / (A000005 (A077798 (3 * (n + 1))).toNat : ℚ)

end

end A399511.P15334619820022857012

/-!
# A399512: Trajectory of 2 under Conway's PIGAME.

The programs for A399512, there is no canonical definition to state claims against.
-/

/-! ## A399512.P13529699362026432146

`A399514(n)/2`
-/

namespace A399512.P13529699362026432146
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A399514 n : ℚ) / 2

end

end A399512.P13529699362026432146

/-! ## A399512.P14861810762887907783

`A000005(A055625(n+1))*A399511(n)`
-/

namespace A399512.P14861810762887907783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A055625 (n + 1)).toNat * A399511 n

end

end A399512.P14861810762887907783

/-!
# A399513: Trajectory of 3 under Conway's PIGAME function.

The programs for A399513, there is no canonical definition to state claims against.
-/

/-! ## A399513.P8581380250656458335

`A309060(A331735(n+1))*A399511(n)`
-/

namespace A399513.P8581380250656458335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309060 (A331735 (n + 1)).toNat * A399511 n

end

end A399513.P8581380250656458335

/-! ## A399513.P245964880580940923

`3*A000005(A055625(n+1))*A399511(n)/2`
-/

namespace A399513.P245964880580940923
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 * (A000005 (A055625 (n + 1)).toNat * A399511 n) : ℚ) / 2

end

end A399513.P245964880580940923

/-! ## A399513.P1451735662643750030

`A399511(n)+A000005(A055625(n+1))*A399511(n)`
-/

namespace A399513.P1451735662643750030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A399511 n + A000005 (A055625 (n + 1)).toNat * A399511 n

end

end A399513.P1451735662643750030

/-!
# A399514: Trajectory of 4 under Conway's PIGAME.

The programs for A399514, there is no canonical definition to state claims against.
-/

/-! ## A399514.P7953963334742531898

`2*A399512(n)`
-/

namespace A399514.P7953963334742531898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A399512 n

end

end A399514.P7953963334742531898

/-! ## A399514.P10782558842453495842

`2*A000005(A055625(n+1))*A399511(n)`
-/

namespace A399514.P10782558842453495842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A000005 (A055625 (n + 1)).toNat * A399511 n)

end

end A399514.P10782558842453495842

/-! ## A399514.P18230881125626189550

`A050887(A318557(3*n+4))*A399511(n)`
-/

namespace A399514.P18230881125626189550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050887 (A318557 (3 * n + 4)).toNat * A399511 n

end

end A399514.P18230881125626189550

/-!
# A399515: Numbers a for which there are smaller integers b > c > d > 0 such that c^2 = a + d and d^2 = b + c.

The programs for A399515, there is no canonical definition to state claims against.
-/

/-! ## A399515.P5643099428578490364

`lt[A049014(A049063(n)), A049042(3*n+5)]`
-/

namespace A399515.P5643099428578490364
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049014 (A049063 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049042 (3 * n + 5)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A399515.P5643099428578490364

/-!
# A399516: Indices of jumps in A399515, where first differences A399515(n+1) - A399515(n) are > 1.

The programs for A399516, the canonical program `A399516.P6791580234526848647` is in `Seq.B003.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A399516 has offset 1).

The definition of A399516 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4999 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A399516.P6791580234526848647

`∑[∑[A267800(2*(n+2))]]`

The canonical program, it is in `Seq.B003.C005`.
-/

namespace A399516

/-- `∑[∑[A267800(2*(n+2))]]` -/
def P6791580234526848647.Spec : Prop :=
  ∀ n, P6791580234526848647.a n = A399516 (n + 1)

theorem P6791580234526848647.correct : P6791580234526848647.Spec := by
  intro n
  simp only [A399516, Nat.add_sub_cancel]

end A399516

/-! ## A399516.P11569220877115429728

`∑[∑[A000035(A101023(3*n+5))]]`
-/

namespace A399516.P11569220877115429728
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A101023 (3 * n + 5)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A399516.P11569220877115429728

namespace A399516

/-- `∑[∑[A000035(A101023(3*n+5))]]` -/
def P11569220877115429728.Spec : Prop :=
  ∀ n, P11569220877115429728.a n = A399516 (n + 1)

end A399516

/-! ## A399516.P13516794676734120845

`∑[∑[A059841(A367267(3*n+4))]]`
-/

namespace A399516.P13516794676734120845
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059841 (A367267 (3 * n + 4)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A399516.P13516794676734120845

namespace A399516

/-- `∑[∑[A059841(A367267(3*n+4))]]` -/
def P13516794676734120845.Spec : Prop :=
  ∀ n, P13516794676734120845.a n = A399516 (n + 1)

end A399516

/-! ## A399516.P2540686092932532970

`∑[A070939(A208354(n))]`
-/

namespace A399516.P2540686092932532970
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070939 (A208354 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A399516.P2540686092932532970

namespace A399516

/-- `∑[A070939(A208354(n))]` -/
def P2540686092932532970.Spec : Prop :=
  ∀ n, P2540686092932532970.a n = A399516 (n + 1)

end A399516

/-! ## A399516.P952670619399354799

`∑[A070939(Δ[A029907(n)])]`
-/

namespace A399516.P952670619399354799
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029907 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070939 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A399516.P952670619399354799

namespace A399516

/-- `∑[A070939(Δ[A029907(n)])]` -/
def P952670619399354799.Spec : Prop :=
  ∀ n, P952670619399354799.a n = A399516 (n + 1)

end A399516

/-!
# A399519: a(n) = n - round(exp(round(log(n)))), where round(x) is the nearest integer to x.

The programs for A399519, the canonical program `A399519.P15133205204752964634` is in `Seq.B000.C050`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A399519 has offset 1).

The definition of A399519 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n+1-round(exp(round(log(n+1))))` (program `A399519.P15133205204752964634`, by `A399519.P15133205204752964634.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A399519.P15133205204752964634

`n+1-round(exp(round(log(n+1))))`

The canonical program, it is in `Seq.B000.C050`.
-/

namespace A399519

/-- `n+1-round(exp(round(log(n+1))))` -/
def P15133205204752964634.Spec : Prop :=
  ∀ n, P15133205204752964634.a n = A399519 (n + 1)

theorem P15133205204752964634.correct : P15133205204752964634.Spec := by
  intro n
  simp only [A399519, Nat.add_sub_cancel]

end A399519

/-!
# A399520: a(n) = n - A000149(A000195(n)), where A000149 = floor o exp, A000195 = floor o log.

The programs for A399520, the canonical program `A399520.P9692045178190648794` is in `Seq.B001.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A399520 has offset 1).

The definition of A399520 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A399520.P1431870458212055765

`n+1-floor(exp(floor(log(n+1))))`
-/

namespace A399520.P1431870458212055765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - ⌊Real.exp (⌊Real.log (n + 1 : ℝ)⌋ : ℝ)⌋

end

end A399520.P1431870458212055765

namespace A399520

/-- `n+1-floor(exp(floor(log(n+1))))` -/
def P1431870458212055765.Spec : Prop :=
  ∀ n, P1431870458212055765.a n = A399520 (n + 1)

end A399520

/-! ## A399520.P9692045178190648794

`n+1-A000149(A000195(n+1))`

The canonical program, it is in `Seq.B001.C014`.
-/

namespace A399520

/-- `n+1-A000149(A000195(n+1))` -/
def P9692045178190648794.Spec : Prop :=
  ∀ n, P9692045178190648794.a n = A399520 (n + 1)

theorem P9692045178190648794.correct : P9692045178190648794.Spec := by
  intro n
  simp only [A399520, Nat.add_sub_cancel]

end A399520

/-!
# A399522: Indices of the Achilles numbers (A052486) in the sequence of powerful numbers (A001694).

The programs for A399522, there is no canonical definition to state claims against.
-/

/-! ## A399522.P5310391048716991896

`A217038(A052486(n+1)+1)`
-/

namespace A399522.P5310391048716991896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217038 (A052486 (n + 1) + 1).toNat

end

end A399522.P5310391048716991896

/-! ## A399522.P9960974092547598543

`comp[A399523(n+1)-1]+1`
-/

namespace A399522.P9960974092547598543
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A399523 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A399522.P9960974092547598543

/-!
# A399523: Indices of the perfect powers (A001597) in the sequence of powerful numbers (A001694).

The programs for A399523, there is no canonical definition to state claims against.
-/

/-! ## A399523.P2920223784944927013

`A217038(A001597(n+1))+1`
-/

namespace A399523.P2920223784944927013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217038 (A001597 (n + 1)).toNat + 1

end

end A399523.P2920223784944927013

/-! ## A399523.P885021277286853677

`A217038(A001597(n+1)+1)`
-/

namespace A399523.P885021277286853677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217038 (A001597 (n + 1) + 1).toNat

end

end A399523.P885021277286853677

/-! ## A399523.P14768205621690067010

`comp[A399522(n+1)-1]+1`
-/

namespace A399523.P14768205621690067010
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A399522 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A399523.P14768205621690067010

/-! ## A399523.P17615253910383554348

`eq[char[A399522(n+1)], A000007(n)]`
-/

namespace A399523.P17615253910383554348
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A399522 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A399523.P17615253910383554348

/-! ## A399523.P15110209985126638444

`comp[A233583(A399522(n+1))]+1`
-/

namespace A399523.P15110209985126638444
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233583 (A399522 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A399523.P15110209985126638444

/-!
# A399527: The length of the longest possible run of successive prime(n)-rough numbers that are all squarefree.

The programs for A399527, there is no canonical definition to state claims against.
-/

/-! ## A399527.P4011252276231002403

`A027669(A001740(n+1))`
-/

namespace A399527.P4011252276231002403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027669 (A001740 (n + 1)).toNat

end

end A399527.P4011252276231002403

/-!
# A399528: a(n) is the least Loeschian number A003136 that is at the end of an arithmetic progression of exactly n such numbers.

The programs for A399528, there is no canonical definition to state claims against.
-/

/-! ## A399528.P7786302768882790106

`A192628(A210680(n))`
-/

namespace A399528.P7786302768882790106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192628 (A210680 n).toNat

end

end A399528.P7786302768882790106

/-!
# A399530: a(n) is the least Loeschian number A003136 that is the n-th term of an arithmetic progression of such numbers.

The programs for A399530, there is no canonical definition to state claims against.
-/

/-! ## A399530.P8007304706915858176

`eq[A016345(n), A293219(n)]`
-/

namespace A399530.P8007304706915858176
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016345 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293219 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A399530.P8007304706915858176

/-! ## A399530.P5458805743093275194

`eq[A138962(n+1), A351113(n+1)]`
-/

namespace A399530.P5458805743093275194
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138962 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351113 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A399530.P5458805743093275194

/-! ## A399530.P6951670359224638101

`eq[A138962(n+1), A386573(n+1)]`
-/

namespace A399530.P6951670359224638101
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138962 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386573 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A399530.P6951670359224638101

/-!
# A399532: G.f. A(x) satisfies: A(x) = (1 - x^2 + x * A(2*x)) / (1 - x^3).

The programs for A399532, the canonical program `A399532.P4141707571895212141` is in `Seq.B000.C050`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A399532 has offset 0).

The definition of A399532 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A399532.P4141707571895212141

`2^(n-1)*a(n-1)+a(n-3)` with `a(0)=1, a(1)=1, a(2)=1`

The canonical program, it is in `Seq.B000.C050`.
-/

namespace A399532

/-- `2^(n-1)*a(n-1)+a(n-3)` -/
def P4141707571895212141.Spec : Prop :=
  ∀ n, P4141707571895212141.a n = (A399532 n : ℚ)

end A399532

/-! ## A399532.P16116147516147313404

`A146796(2*(2*n+1))`
-/

namespace A399532.P16116147516147313404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146796 (2 * (2 * n + 1))

end

end A399532.P16116147516147313404

namespace A399532

/-- `A146796(2*(2*n+1))` -/
def P16116147516147313404.Spec : Prop :=
  ∀ n, P16116147516147313404.a n = A399532 n

end A399532

/-!
# A399533: G.f. A(x) satisfies: A(x) = (1 + x^3 * A(2*x)) / (1 - x).

The programs for A399533, the canonical program `A399533.P15495638550834500928` is in `Seq.B000.C050`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A399533 has offset 0).

The definition of A399533 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A399533.P15495638550834500928

`a(n-1)+2^(n-3)*a(n-3)` with `a(0)=1, a(1)=1, a(2)=1`

The canonical program, it is in `Seq.B000.C050`.
-/

namespace A399533

/-- `a(n-1)+2^(n-3)*a(n-3)` -/
def P15495638550834500928.Spec : Prop :=
  ∀ n, P15495638550834500928.a n = (A399533 n : ℚ)

end A399533

/-! ## A399533.P12202499966712266260

`A228354(A092483(n+1))`
-/

namespace A399533.P12202499966712266260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228354 (A092483 (n + 1)).toNat

end

end A399533.P12202499966712266260

namespace A399533

/-- `A228354(A092483(n+1))` -/
def P12202499966712266260.Spec : Prop :=
  ∀ n, P12202499966712266260.a n = A399533 n

end A399533

/-!
# A399534: G.f. A(x) satisfies: A(x) = (1 + x + x^2 * A(2*x)) / (1 - x^3).

The programs for A399534, the canonical program `A399534.P8032153606335244007` is in `Seq.B000.C050`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A399534 has offset 0).

The definition of A399534 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A399534.P8032153606335244007

`2^(n-2)*a(n-2)+a(n-3)` with `a(0)=1, a(1)=1, a(2)=1`

The canonical program, it is in `Seq.B000.C050`.
-/

namespace A399534

/-- `2^(n-2)*a(n-2)+a(n-3)` -/
def P8032153606335244007.Spec : Prop :=
  ∀ n, P8032153606335244007.a n = (A399534 n : ℚ)

end A399534

/-!
# A399536: G.f. A(x) satisfies: A(x) = (1 + x + x^3 * A(2*x)) / (1 - x^2).

The programs for A399536, the canonical program `A399536.P7741014011758907903` is in `Seq.B000.C050`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A399536 has offset 0).

The definition of A399536 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A399536.P7741014011758907903

`a(n-2)+2^(n-3)*a(n-3)` with `a(0)=1, a(1)=1, a(2)=1`

The canonical program, it is in `Seq.B000.C050`.
-/

namespace A399536

/-- `a(n-2)+2^(n-3)*a(n-3)` -/
def P7741014011758907903.Spec : Prop :=
  ∀ n, P7741014011758907903.a n = (A399536 n : ℚ)

end A399536

/-!
# A399537: Number of nonempty subsets S of {1,...,n} such that Sum_{k in S} k = min(S)*max(S).

The programs for A399537, there is no canonical definition to state claims against.
-/

/-! ## A399537.P16139169506097161914

`A109543(n)+A066247(A027931(n+4))`
-/

namespace A399537.P16139169506097161914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109543 n + A066247 (A027931 (n + 4)).toNat

end

end A399537.P16139169506097161914

/-! ## A399537.P16844346085517263492

`A351846(A393245(n+1))`
-/

namespace A399537.P16844346085517263492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351846 (A393245 (n + 1)).toNat

end

end A399537.P16844346085517263492

/-!
# A399538: G.f. A(x) satisfies: A(x) = x * (1 + A(2*x)) / (1 - x^3).

The programs for A399538, the canonical program `A399538.P8373243976437889193` is in `Seq.B000.C050`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A399538 has offset 0).

The definition of A399538 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A399538.P8373243976437889193

`2^(n-1)*a(n-1)+a(n-3)` with `a(0)=0, a(1)=1, a(2)=2`

The canonical program, it is in `Seq.B000.C050`.
-/

namespace A399538

/-- `2^(n-1)*a(n-1)+a(n-3)` -/
def P8373243976437889193.Spec : Prop :=
  ∀ n, P8373243976437889193.a n = (A399538 n : ℚ)

end A399538

/-! ## A399538.P9431661358744097733

`A333256(A057427(n)+A000110(n))`
-/

namespace A399538.P9431661358744097733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333256 (A057427 n + A000110 n).toNat

end

end A399538.P9431661358744097733

namespace A399538

/-- `A333256(A057427(n)+A000110(n))` -/
def P9431661358744097733.Spec : Prop :=
  ∀ n, P9431661358744097733.a n = A399538 n

end A399538

/-!
# A399540: Numbers k such that psi(k) = phi(k) + tau(k)^5.

The programs for A399540, there is no canonical definition to state claims against.
-/

/-! ## A399540.P982499058107725202

`A399944(A043318(n+1))`
-/

namespace A399540.P982499058107725202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A399944 (A043318 (n + 1)).toNat

end

end A399540.P982499058107725202

/-! ## A399540.P9714377353746332042

`A399944(A044915(n+1))`
-/

namespace A399540.P9714377353746332042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A399944 (A044915 (n + 1)).toNat

end

end A399540.P9714377353746332042

/-! ## A399540.P6100856964671795347

`A399944(A055647(n+1))`
-/

namespace A399540.P6100856964671795347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A399944 (A055647 (n + 1)).toNat

end

end A399540.P6100856964671795347

/-! ## A399540.P10087129896029010184

`A399944(A057846(n+1))`
-/

namespace A399540.P10087129896029010184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A399944 (A057846 (n + 1)).toNat

end

end A399540.P10087129896029010184

/-! ## A399540.P11072591280487003458

`A399944(A161951(n+1))`
-/

namespace A399540.P11072591280487003458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A399944 (A161951 (n + 1)).toNat

end

end A399540.P11072591280487003458

/-!
# A399541: Numbers k such that psi(k) = phi(k) + tau(k)^6.

The programs for A399541, there is no canonical definition to state claims against.
-/

/-! ## A399541.P11100848503590601091

`A399226(A090106(n+1))`
-/

namespace A399541.P11100848503590601091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A399226 (A090106 (n + 1)).toNat

end

end A399541.P11100848503590601091

/-! ## A399541.P7202873417481398512

`A399226(n+1)%A398806(n+2)`
-/

namespace A399541.P7202873417481398512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A399226 (n + 1)) (A398806 (n + 2))

end

end A399541.P7202873417481398512

/-! ## A399541.P2612078259448348798

`A399226(n+1)+A000007(A270929(n+1))`
-/

namespace A399541.P2612078259448348798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A399226 (n + 1) + A000007 (A270929 (n + 1)).toNat

end

end A399541.P2612078259448348798

/-! ## A399541.P2962990546443221201

`A399226(n+1)+A000007(A066189(n+4))`
-/

namespace A399541.P2962990546443221201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A399226 (n + 1) + A000007 (A066189 (n + 4)).toNat

end

end A399541.P2962990546443221201

/-! ## A399541.P16444139929308888653

`lcm(A362927(A232920(n+4)), A399226(n+1))`
-/

namespace A399541.P16444139929308888653
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A362927 (A232920 (n + 4)).toNat) (A399226 (n + 1))

end

end A399541.P16444139929308888653

/-!
# A399542: Array read by ascending antidiagonals: A(n,k) = n*k*(n^2 - k^2)/6, with n, k >= 0.

The programs for A399542, the canonical program `A399542.P9741589405166616267` is in `Seq.B000.C050`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A399542 has offset 0).

The definition of A399542 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A399542.P9741589405166616267

`(row(n)-col(n))*col(n)*((row(n)-col(n))²-col(n)²)/6`

The canonical program, it is in `Seq.B000.C050`.
-/

namespace A399542

/-- `(row(n)-col(n))*col(n)*((row(n)-col(n))²-col(n)²)/6` -/
def P9741589405166616267.Spec : Prop :=
  ∀ n, P9741589405166616267.a n = (A399542 n : ℚ)

end A399542

/-!
# A399544: Number of unlabeled Ferrers relations on an n-element set.

The programs for A399544, there is no canonical definition to state claims against.
-/

/-! ## A399544.P12592523161507961806

`A000122(n²)*A220353(n)`
-/

namespace A399544.P12592523161507961806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000122 (n ^ 2) * A220353 n

end

end A399544.P12592523161507961806

/-! ## A399544.P15160448398514040238

`A100063(3*n)*A220353(n)`
-/

namespace A399544.P15160448398514040238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100063 (3 * n) * A220353 n

end

end A399544.P15160448398514040238

/-! ## A399544.P9100187956625392723

`A185437(A017173(n))*A220353(n)`
-/

namespace A399544.P9100187956625392723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185437 (A017173 n).toNat * A220353 n

end

end A399544.P9100187956625392723

/-! ## A399544.P5414699491274810994

`A001227(A059168(n+1))*A220353(n)`
-/

namespace A399544.P5414699491274810994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001227 (A059168 (n + 1)).toNat * A220353 n

end

end A399544.P5414699491274810994

/-!
# A399545: Number of unlabeled Ferrers relations on an n-element set having trivial automorphism group.

The programs for A399545, there is no canonical definition to state claims against.
-/

/-! ## A399545.P3635418968085302027

`A040001(2*n)*A220352(n)`
-/

namespace A399545.P3635418968085302027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040001 (2 * n) * A220352 n

end

end A399545.P3635418968085302027

/-! ## A399545.P3088716492899737738

`A047657(A178334(n))*A220352(n)`
-/

namespace A399545.P3088716492899737738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047657 (A178334 n).toNat * A220352 n

end

end A399545.P3088716492899737738

/-!
# A399547: Triangle T(n,k) read by rows: number of permutations of [0,n-1] which become identical to their Lehmer code transform for the first time after exactly k iterations of that transform.

The programs for A399547, there is no canonical definition to state claims against.
-/

/-! ## A399547.P2730679016362589454

`A185284(A153176(n))+A047874(n+1)`
-/

namespace A399547.P2730679016362589454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185284 (A153176 n).toNat + A047874 (n + 1)

end

end A399547.P2730679016362589454

/-!
# A399550: Pascal's cube: entries in the 3-dimensional multivariate Pascal matrix, read by cubes, slices, and rows.

The programs for A399550, there is no canonical definition to state claims against.
-/

/-! ## A399550.P9233581173326735597

`A396710(A295388(n+2))`
-/

namespace A399550.P9233581173326735597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A396710 (A295388 (n + 2)).toNat

end

end A399550.P9233581173326735597

/-! ## A399550.P12557392401992412811

`A055642(C(A026741(n), A049479(n+2)))`
-/

namespace A399550.P12557392401992412811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055642 (Nat.choose (A026741 n).toNat (A049479 (n + 2)).toNat)

end

end A399550.P12557392401992412811

/-! ## A399550.P16958640722048912396

`A284558(A383098(n)+A191930(3*n+4))`
-/

namespace A399550.P16958640722048912396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284558 (A383098 n + A191930 (3 * n + 4)).toNat

end

end A399550.P16958640722048912396

/-! ## A399550.P5155300220768478442

`A317791(A026799(2*n)*A003056(3*n+4)*A026741(n)+1)`
-/

namespace A399550.P5155300220768478442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317791 (A026799 (2 * n) * A003056 (3 * n + 4) * A026741 n + 1).toNat

end

end A399550.P5155300220768478442

/-!
# A399552: a(n) = (Sum_{d|k} gpf(d)) / gpf(k), where k = A399551(n) and gpf = A006530.

The programs for A399552, there is no canonical definition to state claims against.
-/

/-! ## A399552.P10671584490822030643

`∑{d}[A399551(n+1), A006530(#)/A006530(A399551(n+1))]`
-/

namespace A399552.P10671584490822030643
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A399551 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, (A006530 d : ℚ) / (A006530 (A399551 (n + 1)).toNat : ℚ)

end

end A399552.P10671584490822030643

/-!
# A399553: a(n) is the least odd k such that neither k nor the odd part of k + 1 is yet in the sequence.

The programs for A399553, the canonical program `A399553.P3075501320082949688` is in `Seq.B001.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A399553 has offset 0).

The definition of A399553 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A059009, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A399553.P3075501320082949688

`2*A059009(n)+1`

The canonical program, it is in `Seq.B001.C014`.
-/

namespace A399553

/-- `2*A059009(n)+1` -/
def P3075501320082949688.Spec : Prop :=
  ∀ n, P3075501320082949688.a n = A399553 n

theorem P3075501320082949688.correct : P3075501320082949688.Spec := by
  intro n
  simp only [A399553]

end A399553

/-! ## A399553.P13427495665636546859

`1+2*A059009(n)`
-/

namespace A399553.P13427495665636546859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 + 2 * A059009 n

end

end A399553.P13427495665636546859

namespace A399553

/-- `1+2*A059009(n)` -/
def P13427495665636546859.Spec : Prop :=
  ∀ n, P13427495665636546859.a n = A399553 n

theorem P13427495665636546859.correct : P13427495665636546859.Spec := by
  intro n
  simp only [A399553, Nat.add_sub_cancel, A399553.P13427495665636546859.a, A399553.P3075501320082949688.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A399553

/-! ## A399553.P14442845860770700515

`xor(2, A328012(n+2))`
-/

namespace A399553.P14442845860770700515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 2 (A328012 (n + 2))

end

end A399553.P14442845860770700515

namespace A399553

/-- `xor(2, A328012(n+2))` -/
def P14442845860770700515.Spec : Prop :=
  ∀ n, P14442845860770700515.a n = A399553 n

end A399553

/-! ## A399553.P13636211297634620759

`A005408(A059009(n))`
-/

namespace A399553.P13636211297634620759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (A059009 n).toNat

end

end A399553.P13636211297634620759

namespace A399553

/-- `A005408(A059009(n))` -/
def P13636211297634620759.Spec : Prop :=
  ∀ n, P13636211297634620759.a n = A399553 n

end A399553

/-! ## A399553.P17817193238304555318

`A166519(A059010(n))`
-/

namespace A399553.P17817193238304555318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166519 (A059010 n).toNat

end

end A399553.P17817193238304555318

namespace A399553

/-- `A166519(A059010(n))` -/
def P17817193238304555318.Spec : Prop :=
  ∀ n, P17817193238304555318.a n = A399553 n

end A399553

/-! ## A399553.P2227694995187343658

`A004273(A059009(n)+1)`
-/

namespace A399553.P2227694995187343658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (A059009 n + 1).toNat

end

end A399553.P2227694995187343658

namespace A399553

/-- `A004273(A059009(n)+1)` -/
def P2227694995187343658.Spec : Prop :=
  ∀ n, P2227694995187343658.a n = A399553 n

end A399553

/-! ## A399553.P6877100839689185067

`A004443(A328012(n+2))`
-/

namespace A399553.P6877100839689185067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004443 (A328012 (n + 2)).toNat

end

end A399553.P6877100839689185067

namespace A399553

/-- `A004443(A328012(n+2))` -/
def P6877100839689185067.Spec : Prop :=
  ∀ n, P6877100839689185067.a n = A399553 n

end A399553

/-! ## A399553.P13445861358440484543

`A122155(A065621(A122198(A122155(2*n+1))))`
-/

namespace A399553.P13445861358440484543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122155 (A065621 (A122198 (A122155 (2 * n + 1)).toNat).toNat).toNat

end

end A399553.P13445861358440484543

namespace A399553

/-- `A122155(A065621(A122198(A122155(2*n+1))))` -/
def P13445861358440484543.Spec : Prop :=
  ∀ n, P13445861358440484543.a n = A399553 n

end A399553

/-! ## A399553.P11208064055467271892

`lt[(n+1)%2, A298952(n-n%2)]`
-/

namespace A399553.P11208064055467271892
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) % 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298952 (n - n % 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A399553.P11208064055467271892

namespace A399553

/-- `lt[(n+1)%2, A298952(n-n%2)]` -/
def P11208064055467271892.Spec : Prop :=
  ∀ n, (P11208064055467271892.a n : ℤ) = A399553 n

end A399553

/-! ## A399553.P17940931284618592328

`eq[A059009(n), A266220(n)]`
-/

namespace A399553.P17940931284618592328
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059009 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266220 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A399553.P17940931284618592328

namespace A399553

/-- `eq[A059009(n), A266220(n)]` -/
def P17940931284618592328.Spec : Prop :=
  ∀ n, (P17940931284618592328.a n : ℤ) = A399553 n

end A399553

/-! ## A399553.P10391532140158328311

`eq[A266222(n), A298952(n)]`
-/

namespace A399553.P10391532140158328311
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266222 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298952 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A399553.P10391532140158328311

namespace A399553

/-- `eq[A266222(n), A298952(n)]` -/
def P10391532140158328311.Spec : Prop :=
  ∀ n, (P10391532140158328311.a n : ℤ) = A399553 n

end A399553

/-! ## A399553.P9361203827036851602

`eq[A096269(n+1), A298952(n)]`
-/

namespace A399553.P9361203827036851602
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096269 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298952 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A399553.P9361203827036851602

namespace A399553

/-- `eq[A096269(n+1), A298952(n)]` -/
def P9361203827036851602.Spec : Prop :=
  ∀ n, (P9361203827036851602.a n : ℤ) = A399553 n

end A399553

/-! ## A399553.P13224224087284874188

`filter[A006949(2*n+1), A000035(#)]`
-/

namespace A399553.P13224224087284874188
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006949 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A000035 (f1 j).toNat = 1) n)

end

end A399553.P13224224087284874188

namespace A399553

/-- `filter[A006949(2*n+1), A000035(#)]` -/
def P13224224087284874188.Spec : Prop :=
  ∀ n, P13224224087284874188.a n = A399553 n

end A399553

/-!
# A399555: Number of rooted unlabeled cacti with blocks of sizes 5 and 7, having n blocks.

The programs for A399555, there is no canonical definition to state claims against.
-/

/-! ## A399555.P1920379191485449274

`A276989(2*n+1)-A351290(A385764(n))`
-/

namespace A399555.P1920379191485449274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276989 (2 * n + 1) - A351290 (A385764 n).toNat

end

end A399555.P1920379191485449274

/-!
# A399558: Number of strongly connected labeled loopless digraphs on n vertices having period greater than 1.

The programs for A399558, there is no canonical definition to state claims against.
-/

/-! ## A399558.P18223770228805722634

`A186081(n+1)-A070322(n+1)`
-/

namespace A399558.P18223770228805722634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186081 (n + 1) - A070322 (n + 1)

end

end A399558.P18223770228805722634

/-!
# A399560: G.f. A(x) satisfies: A(x) = (1 - 2*x^2 + x*A(2*x)) / (1 - x^2 - x^3).

The programs for A399560, the canonical program `A399560.P3438043881530279004` is in `Seq.B000.C050`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A399560 has offset 0).

The definition of A399560 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A399560.P3438043881530279004

`2^(n-1)*a(n-1)+a(n-2)+a(n-3)` with `a(0)=1, a(1)=1, a(2)=1`

The canonical program, it is in `Seq.B000.C050`.
-/

namespace A399560

/-- `2^(n-1)*a(n-1)+a(n-2)+a(n-3)` -/
def P3438043881530279004.Spec : Prop :=
  ∀ n, P3438043881530279004.a n = (A399560 n : ℚ)

end A399560

/-!
# A399561: G.f. A(x) satisfies: A(x) = (1 - x^2 + x^2 * A(2*x)) / (1 - x - x^3).

The programs for A399561, the canonical program `A399561.P13876457118130922269` is in `Seq.B000.C050`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A399561 has offset 0).

The definition of A399561 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A399561.P13876457118130922269

`a(n-1)+2^(n-2)*a(n-2)+a(n-3)` with `a(0)=1, a(1)=1, a(2)=1`

The canonical program, it is in `Seq.B000.C050`.
-/

namespace A399561

/-- `a(n-1)+2^(n-2)*a(n-2)+a(n-3)` -/
def P13876457118130922269.Spec : Prop :=
  ∀ n, P13876457118130922269.a n = (A399561 n : ℚ)

end A399561

/-!
# A399562: G.f. A(x) satisfies: A(x) = (1 - x^2 + x^3 * A(2*x)) / (1 - x - x^2).

The programs for A399562, the canonical program `A399562.P7116375726050139193` is in `Seq.B000.C050`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A399562 has offset 0).

The definition of A399562 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A399562.P7116375726050139193

`a(n-1)+a(n-2)+2^(n-3)*a(n-3)` with `a(0)=1, a(1)=1, a(2)=1`

The canonical program, it is in `Seq.B000.C050`.
-/

namespace A399562

/-- `a(n-1)+a(n-2)+2^(n-3)*a(n-3)` -/
def P7116375726050139193.Spec : Prop :=
  ∀ n, P7116375726050139193.a n = (A399562 n : ℚ)

end A399562

/-! ## A399562.P16827338145195705641

`A271608(xor(A000265(n+1), A007716(n)))`
-/

namespace A399562.P16827338145195705641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271608 (Int.xor (A000265 (n + 1)) (A007716 n)).toNat

end

end A399562.P16827338145195705641

namespace A399562

/-- `A271608(xor(A000265(n+1), A007716(n)))` -/
def P16827338145195705641.Spec : Prop :=
  ∀ n, P16827338145195705641.a n = A399562 n

end A399562

/-!
# A399564: Number of perfect matchings of the 3 X 2n grid graph embedded on the Klein bottle.

The programs for A399564, the canonical program `A399564.P8159499002176019174` is in `Seq.B000.C050`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A399564 has offset 1).

The definition of A399564 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A399564.P8159499002176019174

`ogf((10-4x)/(1-5x+x^2))`

The canonical program, it is in `Seq.B000.C050`.
-/

namespace A399564

/-- `ogf((10-4x)/(1-5x+x^2))` -/
def P8159499002176019174.Spec : Prop :=
  ∀ n, P8159499002176019174.a n = A399564 (n + 1)

theorem P8159499002176019174.correct : P8159499002176019174.Spec := by
  intro n
  simp only [A399564, Nat.add_sub_cancel]

end A399564

/-! ## A399564.P15696918095359074542

`5*a(n-1)-a(n-2)` with `a(0)=10, a(1)=46`
-/

namespace A399564.P15696918095359074542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [10, 46] fun n a =>
  5 * a (n - 1) - a (n - 2)

end

end A399564.P15696918095359074542

namespace A399564

/-- `5*a(n-1)-a(n-2)` -/
def P15696918095359074542.Spec : Prop :=
  ∀ n, P15696918095359074542.a n = A399564 (n + 1)

end A399564

/-! ## A399564.P7449547638261329898

`2*Δ[A030221(n)]`
-/

namespace A399564.P7449547638261329898
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030221 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (f1 (n + 1) - f1 n)

end

end A399564.P7449547638261329898

namespace A399564

/-- `2*Δ[A030221(n)]` -/
def P7449547638261329898.Spec : Prop :=
  ∀ n, P7449547638261329898.a n = A399564 (n + 1)

end A399564

/-! ## A399564.P6281813005380910382

`2*A003501(n+1)`
-/

namespace A399564.P6281813005380910382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A003501 (n + 1)

end

end A399564.P6281813005380910382

namespace A399564

/-- `2*A003501(n+1)` -/
def P6281813005380910382.Spec : Prop :=
  ∀ n, P6281813005380910382.a n = A399564 (n + 1)

end A399564

/-! ## A399564.P5220243367987631161

`A002320(n)+A002310(n+2)`
-/

namespace A399564.P5220243367987631161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002320 n + A002310 (n + 2)

end

end A399564.P5220243367987631161

namespace A399564

/-- `A002320(n)+A002310(n+2)` -/
def P5220243367987631161.Spec : Prop :=
  ∀ n, P5220243367987631161.a n = A399564 (n + 1)

end A399564

/-! ## A399564.P17014937555077097250

`A030221(n+1)+A003501(n+1)-A030221(n)`
-/

namespace A399564.P17014937555077097250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030221 (n + 1) + A003501 (n + 1) - A030221 n

end

end A399564.P17014937555077097250

namespace A399564

/-- `A030221(n+1)+A003501(n+1)-A030221(n)` -/
def P17014937555077097250.Spec : Prop :=
  ∀ n, P17014937555077097250.a n = A399564 (n + 1)

end A399564

/-!
# A399570: a(n) = Product_{k=1..n} (2*k-1)^k.

The programs for A399570, there is no canonical definition to state claims against.
-/

/-! ## A399570.P7545652212517958643

`∏[Δ[n²]^(n+1)]`
-/

namespace A399570.P7545652212517958643
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((f2 (n + 1) : ℤ) - (f2 n : ℤ)) ^ (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A399570.P7545652212517958643

/-! ## A399570.P7973718162658639234

`(2*n+1)^(n+1)*a(n-1)` with `a(0)=1`
-/

namespace A399570.P7973718162658639234
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  (2 * n + 1) ^ (n + 1) * a (n - 1)

end

end A399570.P7973718162658639234

/-!
# A399572: Triangular numbers in the Padovan sequence A000931.

The programs for A399572, there is no canonical definition to state claims against.
-/

/-! ## A399572.P1897478154985267663

`∩[C(n+1, 2), record[A000931(n+1)]]`
-/

namespace A399572.P1897478154985267663
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (n + 1) 2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000931 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (SequenceMachineLib.nth (fun j => ∀ l < j, f3 l < f3 j) n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A399572.P1897478154985267663

/-! ## A399572.P1649995624309437518

`∩[record[A133034(n)], A000217(n)]`
-/

namespace A399572.P1649995624309437518
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133034 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f3 j = (x : ℤ)) n

end

end A399572.P1649995624309437518

/-! ## A399572.P8795258081225908959

`filter[A228361(n+1), A010054(#)]`
-/

namespace A399572.P8795258081225908959
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228361 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010054 (f1 j).toNat = 1) n)

end

end A399572.P8795258081225908959

/-! ## A399572.P7262802042306071353

`∩[record[A000931(n+1)], A000217(n)]`
-/

namespace A399572.P7262802042306071353
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000931 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f3 j = (x : ℤ)) n

end

end A399572.P7262802042306071353

/-!
# A399574: Strictly non-antipalindromic numbers: k is not antipalindromic in any base b with 2 <= b <= k-2.

The programs for A399574, there is no canonical definition to state claims against.
-/

/-! ## A399574.P274537345448383271

`eq[A113047(n), A240205(n)]`
-/

namespace A399574.P274537345448383271
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113047 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240205 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A399574.P274537345448383271

/-! ## A399574.P7884162225437140122

`eq[A134192(n), A375668(n+1)]`
-/

namespace A399574.P7884162225437140122
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134192 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375668 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A399574.P7884162225437140122

/-! ## A399574.P12169640835187504339

`eq[A385005(2*n+3), A062821(A102627(n+1))]+1`
-/

namespace A399574.P12169640835187504339
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385005 (2 * n + 3)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062821 (A102627 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A399574.P12169640835187504339

/-! ## A399574.P2667620551072912184

`eq[A234434(n+3), A237053(n)]`
-/

namespace A399574.P2667620551072912184
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234434 (n + 3)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237053 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A399574.P2667620551072912184

/-! ## A399574.P6497296422856346416

`eq[A113047(n), A240491(n)]`
-/

namespace A399574.P6497296422856346416
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113047 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240491 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A399574.P6497296422856346416

/-!
# A399579: Irregular triangle read by rows: row n lists numbers in A055932 with n divisors.

The programs for A399579, there is no canonical definition to state claims against.
-/

/-! ## A399579.P10380696664416685151

`filter[A394917(n+1), A341629(#)]`
-/

namespace A399579.P10380696664416685151
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A394917 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A341629 (f1 j).toNat = 1) n)

end

end A399579.P10380696664416685151

/-! ## A399579.P15118583590872220120

`filter[A073915(n+1), A341629(#)]`
-/

namespace A399579.P15118583590872220120
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073915 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A341629 (f1 j).toNat = 1) n)

end

end A399579.P15118583590872220120

/-! ## A399579.P12891625666379147824

`A382117(A341277(n+1))`
-/

namespace A399579.P12891625666379147824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382117 (A341277 (n + 1)).toNat

end

end A399579.P12891625666379147824

/-! ## A399579.P7121773059663925142

`A000005(A319719(n+1)*A329739(n))`
-/

namespace A399579.P7121773059663925142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A319719 (n + 1) * A329739 n).toNat

end

end A399579.P7121773059663925142

/-! ## A399579.P13695310502776136388

`A365173(A134955(n)*A365172(n+1))`
-/

namespace A399579.P13695310502776136388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365173 (A134955 n * A365172 (n + 1)).toNat

end

end A399579.P13695310502776136388

/-!
# A399581: Upper bound for the smallest term of a cycle of the 7x+1 map with n odd terms: a(n) = floor(n/(7*log(2)*(ceiling(n*log_2(7)) - n*log_2(7)))).

The programs for A399581, the canonical program `A399581.P14488087694834106052` is in `Seq.B000.C050`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A399581 has offset 1).

The definition of A399581 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A399581.P14488087694834106052

`floor((n+1)/(7*log(2)*(ceil((n+1)*log2(7))-(n+1)*log2(7))))`

The canonical program, it is in `Seq.B000.C050`.
-/

namespace A399581

/-- `floor((n+1)/(7*log(2)*(ceil((n+1)*log2(7))-(n+1)*log2(7))))` -/
def P14488087694834106052.Spec : Prop :=
  ∀ n, P14488087694834106052.a n = A399581 (n + 1)

theorem P14488087694834106052.correct : P14488087694834106052.Spec := by
  intro n
  simp only [A399581, Nat.add_sub_cancel]

end A399581

/-!
# A399582: Numbers k not divisible by 3 such that at least one of 3+2k and 3+4k is composite.

The programs for A399582, there is no canonical definition to state claims against.
-/

/-! ## A399582.P15480442024903347909

`A360735(n+1)/2`
-/

namespace A399582.P15480442024903347909
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A360735 (n + 1) : ℚ) / 2

end

end A399582.P15480442024903347909

/-! ## A399582.P5176911688725716139

`A001057(A360735(n+1)-1)`
-/

namespace A399582.P5176911688725716139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 (A360735 (n + 1) - 1).toNat

end

end A399582.P5176911688725716139

/-! ## A399582.P1997697156749527077

`A189733(A360735(n+1)-1)`
-/

namespace A399582.P1997697156749527077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189733 (A360735 (n + 1) - 1).toNat

end

end A399582.P1997697156749527077

/-! ## A399582.P11728920893056814014

`A001281(A360735(n+1))`
-/

namespace A399582.P11728920893056814014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A360735 (n + 1)).toNat

end

end A399582.P11728920893056814014

/-! ## A399582.P17983159019710728954

`A004524(A360735(n+1)+1)`
-/

namespace A399582.P17983159019710728954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004524 (A360735 (n + 1) + 1).toNat

end

end A399582.P17983159019710728954

/-! ## A399582.P17776420489163391850

`A134746(2*(n+2))+A032742(A360735(n+1))`
-/

namespace A399582.P17776420489163391850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134746 (2 * (n + 2)) + A032742 (A360735 (n + 1)).toNat

end

end A399582.P17776420489163391850

/-!
# A399595: Number of nonnegative integer solutions to the equation 2*x^2 + 3*y^2 = n.

The programs for A399595, there is no canonical definition to state claims against.
-/

/-! ## A399595.P2696288236293990158

`ceil(A108563(n)/4)`
-/

namespace A399595.P2696288236293990158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A108563 n : ℚ) / 4⌉

end

end A399595.P2696288236293990158

/-! ## A399595.P11714387534182068063

`A216513(2*n)`
-/

namespace A399595.P11714387534182068063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216513 (2 * n)

end

end A399595.P11714387534182068063

/-! ## A399595.P6679175145251896296

`ceil(ceil(A046113(2*n)/2)/2)`
-/

namespace A399595.P6679175145251896296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(⌈(A046113 (2 * n) : ℚ) / 2⌉ : ℚ) / 2⌉

end

end A399595.P6679175145251896296

/-! ## A399595.P8214295537361922439

`A000120(A108563(n)^5)`
-/

namespace A399595.P8214295537361922439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A108563 n ^ 5).toNat

end

end A399595.P8214295537361922439

/-! ## A399595.P4244645087041440694

`A010060(A108563(n)^6)`
-/

namespace A399595.P4244645087041440694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010060 (A108563 n ^ 6).toNat

end

end A399595.P4244645087041440694

