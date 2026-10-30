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
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C032
import Seq.B000.C034
import Seq.B000.C036
import Seq.B000.C037
import Seq.B000.C038
import Seq.B000.C039
import Seq.B000.C040
import Seq.B000.C041
import Seq.B000.C043
import Seq.B000.C044
import Seq.B000.C045
import Seq.B000.C047
import Seq.B000.C049
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
import Seq.B001.C011
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
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
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
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
import Seq.Opaque.C022
import Seq.Opaque.C023
import Seq.Opaque.C024
import SequenceMachineLib.Triangle

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A092900: A Jacobsthal sequence (A078008) to base 4.

The programs for A092900, the canonical program `A092900.P10379168394471564114` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A092900 has offset 0).

The definition of A092900 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A092900.P5994680930739395887

`ogf((1-9x^2+2x^3)/(1-11x^2+10x^4))`
-/

namespace A092900.P5994680930739395887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 0, -9, 2] [1, 0, -11, 0, 10] n

end

end A092900.P5994680930739395887

namespace A092900

/-- `ogf((1-9x^2+2x^3)/(1-11x^2+10x^4))` -/
def P5994680930739395887.Spec : Prop :=
  ∀ n, P5994680930739395887.a n = A092900 n

end A092900

/-! ## A092900.P10379168394471564114

`11*a(n-2)-10*a(n-4)` with `a(0)=1, a(1)=0, a(2)=2, a(3)=2`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A092900

/-- `11*a(n-2)-10*a(n-4)` -/
def P10379168394471564114.Spec : Prop :=
  ∀ n, P10379168394471564114.a n = A092900 n

theorem P10379168394471564114.correct : P10379168394471564114.Spec := by
  intro n
  simp only [A092900]

end A092900

/-! ## A092900.P235174054902032656

`A081857(n)+(-1)^n`
-/

namespace A092900.P235174054902032656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081857 n + (-1) ^ n

end

end A092900.P235174054902032656

namespace A092900

/-- `A081857(n)+(-1)^n` -/
def P235174054902032656.Spec : Prop :=
  ∀ n, P235174054902032656.a n = A092900 n

end A092900

/-! ## A092900.P3438127834792031519

`abs(A081857(n)+A033999(n))`
-/

namespace A092900.P3438127834792031519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A081857 n + A033999 n|

end

end A092900.P3438127834792031519

namespace A092900

/-- `abs(A081857(n)+A033999(n))` -/
def P3438127834792031519.Spec : Prop :=
  ∀ n, P3438127834792031519.a n = A092900 n

end A092900

/-! ## A092900.P15316464975462434841

`abs(A081857(n)-A010892(3*n+4))`
-/

namespace A092900.P15316464975462434841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A081857 n - A010892 (3 * n + 4)|

end

end A092900.P15316464975462434841

namespace A092900

/-- `abs(A081857(n)-A010892(3*n+4))` -/
def P15316464975462434841.Spec : Prop :=
  ∀ n, P15316464975462434841.a n = A092900 n

end A092900

/-! ## A092900.P14954609326011649574

`A078008(n)+A081857(n)-A001045(n)`
-/

namespace A092900.P14954609326011649574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078008 n + (A081857 n - A001045 n)

end

end A092900.P14954609326011649574

namespace A092900

/-- `A078008(n)+A081857(n)-A001045(n)` -/
def P14954609326011649574.Spec : Prop :=
  ∀ n, P14954609326011649574.a n = A092900 n

end A092900

/-! ## A092900.P6806504935599020125

`A002275(floor(n/2))+A002275(A057979(n))`
-/

namespace A092900.P6806504935599020125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002275 ⌊(n : ℚ) / 2⌋.toNat + A002275 (A057979 n).toNat

end

end A092900.P6806504935599020125

namespace A092900

/-- `A002275(floor(n/2))+A002275(A057979(n))` -/
def P6806504935599020125.Spec : Prop :=
  ∀ n, P6806504935599020125.a n = A092900 n

end A092900

/-!
# A092904: Number of decimal digits in the denominator of the Bernoulli number B(2n).

The programs for A092904, the canonical program `A092904.P9578178506371164155` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A092904 has offset 0).

The definition of A092904 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5001 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A092904.P807092036210074765

`∑{digits}[A002445(n), A113010(#)]`
-/

namespace A092904.P807092036210074765
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002445 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A113010 x).sum

end

end A092904.P807092036210074765

namespace A092904

/-- `∑{digits}[A002445(n), A113010(#)]` -/
def P807092036210074765.Spec : Prop :=
  ∀ n, P807092036210074765.a n = A092904 n

end A092904

/-! ## A092904.P10712708688828554284

`∑{digits}[A027642(2*n), A113010(#)]`
-/

namespace A092904.P10712708688828554284
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027642 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A113010 x).sum

end

end A092904.P10712708688828554284

namespace A092904

/-- `∑{digits}[A027642(2*n), A113010(#)]` -/
def P10712708688828554284.Spec : Prop :=
  ∀ n, P10712708688828554284.a n = A092904 n

end A092904

/-! ## A092904.P6738809141132379601

`∑{digits}[A106458(2*n), A113010(#)]`
-/

namespace A092904.P6738809141132379601
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106458 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A113010 x).sum

end

end A092904.P6738809141132379601

namespace A092904

/-- `∑{digits}[A106458(2*n), A113010(#)]` -/
def P6738809141132379601.Spec : Prop :=
  ∀ n, P6738809141132379601.a n = A092904 n

end A092904

/-! ## A092904.P14707678376529096973

`∑{digits}[A141056(2*n), A113010(#)]`
-/

namespace A092904.P14707678376529096973
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141056 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A113010 x).sum

end

end A092904.P14707678376529096973

namespace A092904

/-- `∑{digits}[A141056(2*n), A113010(#)]` -/
def P14707678376529096973.Spec : Prop :=
  ∀ n, P14707678376529096973.a n = A092904 n

end A092904

/-! ## A092904.P13958738361361430753

`∑{digits}[A002445(n), A014963(A002445(#))]`
-/

namespace A092904.P13958738361361430753
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002445 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A014963 (A002445 x).toNat).sum

end

end A092904.P13958738361361430753

namespace A092904

/-- `∑{digits}[A002445(n), A014963(A002445(#))]` -/
def P13958738361361430753.Spec : Prop :=
  ∀ n, P13958738361361430753.a n = A092904 n

end A092904

/-! ## A092904.P12573086767152584256

`∑{digits}[A002445(n), A028246(A138243(#))]`
-/

namespace A092904.P12573086767152584256
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002445 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A028246 (A138243 x).toNat).sum

end

end A092904.P12573086767152584256

namespace A092904

/-- `∑{digits}[A002445(n), A028246(A138243(#))]` -/
def P12573086767152584256.Spec : Prop :=
  ∀ n, P12573086767152584256.a n = A092904 n

end A092904

/-! ## A092904.P7359532996261813450

`∑{digits}[A002445(n), A138243(A002445(#+1))]`
-/

namespace A092904.P7359532996261813450
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002445 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A138243 (A002445 (x + 1)).toNat).sum

end

end A092904.P7359532996261813450

namespace A092904

/-- `∑{digits}[A002445(n), A138243(A002445(#+1))]` -/
def P7359532996261813450.Spec : Prop :=
  ∀ n, P7359532996261813450.a n = A092904 n

end A092904

/-! ## A092904.P9578178506371164155

`∑{digits}[A027642(2*n), A057427(A006501(#))]`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A092904

/-- `∑{digits}[A027642(2*n), A057427(A006501(#))]` -/
def P9578178506371164155.Spec : Prop :=
  ∀ n, P9578178506371164155.a n = A092904 n

theorem P9578178506371164155.correct : P9578178506371164155.Spec := by
  intro n
  simp only [A092904]

end A092904

/-! ## A092904.P7291620988741765013

`∑{digits}[A027642(2*n), A057427(A027642(#))]`
-/

namespace A092904.P7291620988741765013
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027642 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A057427 (A027642 x).toNat).sum

end

end A092904.P7291620988741765013

namespace A092904

/-- `∑{digits}[A027642(2*n), A057427(A027642(#))]` -/
def P7291620988741765013.Spec : Prop :=
  ∀ n, P7291620988741765013.a n = A092904 n

end A092904

/-! ## A092904.P15710124953067539018

`∑{digits}[A176591(2*n), A113010(#)]`
-/

namespace A092904.P15710124953067539018
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176591 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A113010 x).sum

end

end A092904.P15710124953067539018

namespace A092904

/-- `∑{digits}[A176591(2*n), A113010(#)]` -/
def P15710124953067539018.Spec : Prop :=
  ∀ n, P15710124953067539018.a n = A092904 n

end A092904

/-! ## A092904.P6459708751263432260

`∑{digits}[A051717(2*n), A008833(A051717(#))]`
-/

namespace A092904.P6459708751263432260
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051717 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A008833 (A051717 x).toNat).sum

end

end A092904.P6459708751263432260

namespace A092904

/-- `∑{digits}[A051717(2*n), A008833(A051717(#))]` -/
def P6459708751263432260.Spec : Prop :=
  ∀ n, P6459708751263432260.a n = A092904 n

end A092904

/-! ## A092904.P7637295352109656492

`∑{digits}[A176289(2*n), A113010(#)]`
-/

namespace A092904.P7637295352109656492
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176289 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A113010 x).sum

end

end A092904.P7637295352109656492

namespace A092904

/-- `∑{digits}[A176289(2*n), A113010(#)]` -/
def P7637295352109656492.Spec : Prop :=
  ∀ n, P7637295352109656492.a n = A092904 n

end A092904

/-! ## A092904.P13311894983627580711

`∑{digits}[A140814(n), A165573(#+1)²]`
-/

namespace A092904.P13311894983627580711
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140814 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A165573 (x + 1) ^ 2).sum

end

end A092904.P13311894983627580711

namespace A092904

/-- `∑{digits}[A140814(n), A165573(#+1)²]` -/
def P13311894983627580711.Spec : Prop :=
  ∀ n, P13311894983627580711.a n = A092904 n

end A092904

/-! ## A092904.P5719285586041229494

`∑{digits}[A164020(2*n), A113010(#)]`
-/

namespace A092904.P5719285586041229494
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164020 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A113010 x).sum

end

end A092904.P5719285586041229494

namespace A092904

/-- `∑{digits}[A164020(2*n), A113010(#)]` -/
def P5719285586041229494.Spec : Prop :=
  ∀ n, P5719285586041229494.a n = A092904 n

end A092904

/-!
# A092905: Triangle, read by rows, such that the partial sums of the n-th row form the n-th diagonal, for n>=0, where each row begins with 1.

The programs for A092905, the canonical program `A092905.P91447157392869702` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A092905 has offset 0).

The definition of A092905 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A092905.P10492692101902249431

`A072233(n)+T(n-1,k)` with `a(0)=1`
-/

namespace A092905.P10492692101902249431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A072233 n + SequenceMachineLib.triUp a n

end

end A092905.P10492692101902249431

namespace A092905

/-- `A072233(n)+T(n-1,k)` -/
def P10492692101902249431.Spec : Prop :=
  ∀ n, P10492692101902249431.a n = A092905 n

end A092905

/-! ## A092905.P91447157392869702

`A259324(A056943(n))`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A092905

/-- `A259324(A056943(n))` -/
def P91447157392869702.Spec : Prop :=
  ∀ n, P91447157392869702.a n = A092905 n

theorem P91447157392869702.correct : P91447157392869702.Spec := by
  intro n
  simp only [A092905]

end A092905

/-! ## A092905.P15622751786014762213

`A259324(A056942(n)-n)`
-/

namespace A092905.P15622751786014762213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259324 (A056942 n - (n : ℤ)).toNat

end

end A092905.P15622751786014762213

namespace A092905

/-- `A259324(A056942(n)-n)` -/
def P15622751786014762213.Spec : Prop :=
  ∀ n, P15622751786014762213.a n = A092905 n

end A092905

/-! ## A092905.P8995702321766791040

`A259324(n-A056944(n))`
-/

namespace A092905.P8995702321766791040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259324 ((n : ℤ) - A056944 n).toNat

end

end A092905.P8995702321766791040

namespace A092905

/-- `A259324(n-A056944(n))` -/
def P8995702321766791040.Spec : Prop :=
  ∀ n, P8995702321766791040.a n = A092905 n

theorem P8995702321766791040.correct : P8995702321766791040.Spec := by
  intro n
  simp only [A092905, Nat.add_sub_cancel, A092905.P8995702321766791040.a, A092905.P91447157392869702.a, A056943, A056943.P2657344456391598982.a, A056944, A056944.P15541445897934142795.a, A259324, A259324.P3208587440667658577.a, A058398, A058398.P14769662948630516046.a, A008284, A008284.P13080708486953753476.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A092905

/-! ## A092905.P8543541902718909132

`A259324(n-2*A002262(n))`
-/

namespace A092905.P8543541902718909132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259324 ((n : ℤ) - 2 * A002262 n).toNat

end

end A092905.P8543541902718909132

namespace A092905

/-- `A259324(n-2*A002262(n))` -/
def P8543541902718909132.Spec : Prop :=
  ∀ n, P8543541902718909132.a n = A092905 n

end A092905

/-! ## A092905.P5049722375831893489

`A259324(2*A057944(n)-n)`
-/

namespace A092905.P5049722375831893489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259324 (2 * A057944 n - (n : ℤ)).toNat

end

end A092905.P5049722375831893489

namespace A092905

/-- `A259324(2*A057944(n)-n)` -/
def P5049722375831893489.Spec : Prop :=
  ∀ n, P5049722375831893489.a n = A092905 n

end A092905

/-! ## A092905.P970537769931825312

`A259324(1-A158405(n+1)+n)`
-/

namespace A092905.P970537769931825312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259324 (1 - A158405 (n + 1) + (n : ℤ)).toNat

end

end A092905.P970537769931825312

namespace A092905

/-- `A259324(1-A158405(n+1)+n)` -/
def P970537769931825312.Spec : Prop :=
  ∀ n, P970537769931825312.a n = A092905 n

end A092905

/-! ## A092905.P12368627635222248166

`A259324(A002378(A003056(n))-n)`
-/

namespace A092905.P12368627635222248166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259324 (A002378 (A003056 n).toNat - (n : ℤ)).toNat

end

end A092905.P12368627635222248166

namespace A092905

/-- `A259324(A002378(A003056(n))-n)` -/
def P12368627635222248166.Spec : Prop :=
  ∀ n, P12368627635222248166.a n = A092905 n

end A092905

/-! ## A092905.P11274898441199565168

`A259324(A057944(n)-A002262(n))`
-/

namespace A092905.P11274898441199565168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259324 (A057944 n - A002262 n).toNat

end

end A092905.P11274898441199565168

namespace A092905

/-- `A259324(A057944(n)-A002262(n))` -/
def P11274898441199565168.Spec : Prop :=
  ∀ n, P11274898441199565168.a n = A092905 n

end A092905

/-! ## A092905.P9731353324203547814

`A259324(A061579(n)-A003056(n))`
-/

namespace A092905.P9731353324203547814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259324 (A061579 n - A003056 n).toNat

end

end A092905.P9731353324203547814

namespace A092905

/-- `A259324(A061579(n)-A003056(n))` -/
def P9731353324203547814.Spec : Prop :=
  ∀ n, P9731353324203547814.a n = A092905 n

end A092905

/-! ## A092905.P4997071506645006967

`A259324(A057944(n)+A057944(n)-n)`
-/

namespace A092905.P4997071506645006967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259324 (A057944 n + (A057944 n - (n : ℤ))).toNat

end

end A092905.P4997071506645006967

namespace A092905

/-- `A259324(A057944(n)+A057944(n)-n)` -/
def P4997071506645006967.Spec : Prop :=
  ∀ n, P4997071506645006967.a n = A092905 n

end A092905

/-! ## A092905.P8917860711326490050

`A373270(n+1)+A373242(n+1)`
-/

namespace A092905.P8917860711326490050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373270 (n + 1) + A373242 (n + 1)

end

end A092905.P8917860711326490050

namespace A092905

/-- `A373270(n+1)+A373242(n+1)` -/
def P8917860711326490050.Spec : Prop :=
  ∀ n, P8917860711326490050.a n = A092905 n

end A092905

/-!
# A092906: Number of iterations of the sine function to be less than 1/n with an initial argument of Pi/2 radians.

The programs for A092906, there is no canonical definition to state claims against.
-/

/-! ## A092906.P12390973262265144994

`floor(A033428(n+1)-(log(A106265(n+1))+1))`
-/

namespace A092906.P12390973262265144994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A033428 (n + 1) : ℝ) - (Real.log (A106265 (n + 1) : ℝ) + 1)⌋

end

end A092906.P12390973262265144994

/-! ## A092906.P4037969024215293863

`∑[A089684(3*n+2)-A228710(A128455(n+1))]`
-/

namespace A092906.P4037969024215293863
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089684 (3 * n + 2) - A228710 (A128455 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A092906.P4037969024215293863

/-! ## A092906.P12992203555679411725

`A144391(n+1)-A070939(A053739(n))`
-/

namespace A092906.P12992203555679411725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144391 (n + 1) - A070939 (A053739 n).toNat

end

end A092906.P12992203555679411725

/-! ## A092906.P15830582560263573114

`∑[A008486(2*n+1)-A010054(A218482(n))]`
-/

namespace A092906.P15830582560263573114
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008486 (2 * n + 1) - A010054 (A218482 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A092906.P15830582560263573114

/-! ## A092906.P14010117146534037360

`A008810(3*(n+1))-A055642(A071153(2*n+1))`
-/

namespace A092906.P14010117146534037360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008810 (3 * (n + 1)) - A055642 (A071153 (2 * n + 1)).toNat

end

end A092906.P14010117146534037360

/-!
# A092908: Primes in A051022.

The programs for A092908, the canonical program `A092908.P18290066377958034937` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A092908 has offset 1).

The definition of A092908 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 103 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A092908.P18290066377958034937

`p?[A051022(n)]`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A092908

/-- `p?[A051022(n)]` -/
def P18290066377958034937.Spec : Prop :=
  ∀ n, P18290066377958034937.a n = A092908 (n + 1)

theorem P18290066377958034937.correct : P18290066377958034937.Spec := by
  intro n
  simp only [A092908, Nat.add_sub_cancel]

end A092908

/-! ## A092908.P1648205066956477437

`p?[A032945(n+1)]`
-/

namespace A092908.P1648205066956477437
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032945 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A092908.P1648205066956477437

namespace A092908

/-- `p?[A032945(n+1)]` -/
def P1648205066956477437.Spec : Prop :=
  ∀ n, P1648205066956477437.a n = A092908 (n + 1)

end A092908

/-! ## A092908.P111057214967466133

`p?[A055645(A102489(n))]`
-/

namespace A092908.P111057214967466133
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055645 (A102489 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A092908.P111057214967466133

namespace A092908

/-- `p?[A055645(A102489(n))]` -/
def P111057214967466133.Spec : Prop :=
  ∀ n, P111057214967466133.a n = A092908 (n + 1)

end A092908

/-! ## A092908.P12965894012869532474

`p?[A055649(A171397(n))]`
-/

namespace A092908.P12965894012869532474
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055649 (A171397 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A092908.P12965894012869532474

namespace A092908

/-- `p?[A055649(A171397(n))]` -/
def P12965894012869532474.Spec : Prop :=
  ∀ n, P12965894012869532474.a n = A092908 (n + 1)

end A092908

/-! ## A092908.P12934554197921609376

`record[A020639(A051022(n+2))]`
-/

namespace A092908.P12934554197921609376
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A051022 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A092908.P12934554197921609376

namespace A092908

/-- `record[A020639(A051022(n+2))]` -/
def P12934554197921609376.Spec : Prop :=
  ∀ n, P12934554197921609376.a n = A092908 (n + 1)

end A092908

/-! ## A092908.P4806917633621275681

`record[A020639(A032945(n+3))]`
-/

namespace A092908.P4806917633621275681
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A032945 (n + 3)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A092908.P4806917633621275681

namespace A092908

/-- `record[A020639(A032945(n+3))]` -/
def P4806917633621275681.Spec : Prop :=
  ∀ n, P4806917633621275681.a n = A092908 (n + 1)

end A092908

/-! ## A092908.P15017915804602757046

`filter[A051022(n+1), A010051(#)]`
-/

namespace A092908.P15017915804602757046
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051022 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A092908.P15017915804602757046

namespace A092908

/-- `filter[A051022(n+1), A010051(#)]` -/
def P15017915804602757046.Spec : Prop :=
  ∀ n, P15017915804602757046.a n = A092908 (n + 1)

end A092908

/-! ## A092908.P1309283846082658468

`filter[A032945(n+2), A010051(#)]`
-/

namespace A092908.P1309283846082658468
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032945 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A092908.P1309283846082658468

namespace A092908

/-- `filter[A032945(n+2), A010051(#)]` -/
def P1309283846082658468.Spec : Prop :=
  ∀ n, P1309283846082658468.a n = A092908 (n + 1)

end A092908

/-! ## A092908.P4727059705721726915

`∩[A000040(n+1), A051022(n)]`
-/

namespace A092908.P4727059705721726915
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051022 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A092908.P4727059705721726915

namespace A092908

/-- `∩[A000040(n+1), A051022(n)]` -/
def P4727059705721726915.Spec : Prop :=
  ∀ n, (P4727059705721726915.a n : ℤ) = A092908 (n + 1)

end A092908

/-! ## A092908.P9064594083669837339

`∩[A076805(n+1), A051022(n)]`
-/

namespace A092908.P9064594083669837339
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076805 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051022 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A092908.P9064594083669837339

namespace A092908

/-- `∩[A076805(n+1), A051022(n)]` -/
def P9064594083669837339.Spec : Prop :=
  ∀ n, (P9064594083669837339.a n : ℤ) = A092908 (n + 1)

end A092908

/-! ## A092908.P7784231647443654095

`∩[A091727(n+1), A051022(n)]`
-/

namespace A092908.P7784231647443654095
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091727 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051022 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A092908.P7784231647443654095

namespace A092908

/-- `∩[A091727(n+1), A051022(n)]` -/
def P7784231647443654095.Spec : Prop :=
  ∀ n, (P7784231647443654095.a n : ℤ) = A092908 (n + 1)

end A092908

/-! ## A092908.P6170353563550964189

`∩[A141409(n+1), A051022(n)]`
-/

namespace A092908.P6170353563550964189
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141409 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051022 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A092908.P6170353563550964189

namespace A092908

/-- `∩[A141409(n+1), A051022(n)]` -/
def P6170353563550964189.Spec : Prop :=
  ∀ n, (P6170353563550964189.a n : ℤ) = A092908 (n + 1)

end A092908

/-! ## A092908.P11089290059997523533

`∩[A182140(n+1), A051022(n)]`
-/

namespace A092908.P11089290059997523533
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182140 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051022 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A092908.P11089290059997523533

namespace A092908

/-- `∩[A182140(n+1), A051022(n)]` -/
def P11089290059997523533.Spec : Prop :=
  ∀ n, (P11089290059997523533.a n : ℤ) = A092908 (n + 1)

end A092908

/-! ## A092908.P16213609125019689698

`∩[A000040(n+1), A032945(n+1)]`
-/

namespace A092908.P16213609125019689698
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032945 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A092908.P16213609125019689698

namespace A092908

/-- `∩[A000040(n+1), A032945(n+1)]` -/
def P16213609125019689698.Spec : Prop :=
  ∀ n, (P16213609125019689698.a n : ℤ) = A092908 (n + 1)

end A092908

/-! ## A092908.P18315014473630470651

`∩[A032945(n+1), A076805(n+1)]`
-/

namespace A092908.P18315014473630470651
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032945 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076805 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A092908.P18315014473630470651

namespace A092908

/-- `∩[A032945(n+1), A076805(n+1)]` -/
def P18315014473630470651.Spec : Prop :=
  ∀ n, (P18315014473630470651.a n : ℤ) = A092908 (n + 1)

end A092908

/-!
# A092909: Interpolate 0's between each pair of digits of n-th prime.

The programs for A092909, the canonical program `A092909.P15884598925248976606` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A092909 has offset 1).

The definition of A092909 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A092909.P15884598925248976606

`A051022(A000040(n+1))`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A092909

/-- `A051022(A000040(n+1))` -/
def P15884598925248976606.Spec : Prop :=
  ∀ n, P15884598925248976606.a n = A092909 (n + 1)

theorem P15884598925248976606.correct : P15884598925248976606.Spec := by
  intro n
  simp only [A092909, Nat.add_sub_cancel]

end A092909

/-! ## A092909.P17049946540321644223

`A051022(p?[comp[n²]])`
-/

namespace A092909.P17049946540321644223
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051022 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A092909.P17049946540321644223

namespace A092909

/-- `A051022(p?[comp[n²]])` -/
def P17049946540321644223.Spec : Prop :=
  ∀ n, P17049946540321644223.a n = A092909 (n + 1)

end A092909

/-! ## A092909.P16483022358731264073

`A051022(A008578(n+2))`
-/

namespace A092909.P16483022358731264073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051022 (A008578 (n + 2)).toNat

end

end A092909.P16483022358731264073

namespace A092909

/-- `A051022(A008578(n+2))` -/
def P16483022358731264073.Spec : Prop :=
  ∀ n, P16483022358731264073.a n = A092909 (n + 1)

end A092909

/-! ## A092909.P13518335726321780948

`A051022(A182986(n+2))`
-/

namespace A092909.P13518335726321780948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051022 (A182986 (n + 2)).toNat

end

end A092909.P13518335726321780948

namespace A092909

/-- `A051022(A182986(n+2))` -/
def P13518335726321780948.Spec : Prop :=
  ∀ n, P13518335726321780948.a n = A092909 (n + 1)

end A092909

/-! ## A092909.P9560432068333089832

`A051022(eq[1, A032741(n)])`
-/

namespace A092909.P9560432068333089832
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051022 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A092909.P9560432068333089832

namespace A092909

/-- `A051022(eq[1, A032741(n)])` -/
def P9560432068333089832.Spec : Prop :=
  ∀ n, P9560432068333089832.a n = A092909 (n + 1)

end A092909

/-! ## A092909.P12967802415604646260

`A051022(lt[0, A055672(n)])`
-/

namespace A092909.P12967802415604646260
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055672 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051022 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A092909.P12967802415604646260

namespace A092909

/-- `A051022(lt[0, A055672(n)])` -/
def P12967802415604646260.Spec : Prop :=
  ∀ n, P12967802415604646260.a n = A092909 (n + 1)

end A092909

/-! ## A092909.P7690278999080790850

`A051022(record[A084127(n+1)])`
-/

namespace A092909.P7690278999080790850
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084127 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051022 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A092909.P7690278999080790850

namespace A092909

/-- `A051022(record[A084127(n+1)])` -/
def P7690278999080790850.Spec : Prop :=
  ∀ n, P7690278999080790850.a n = A092909 (n + 1)

end A092909

/-! ## A092909.P7027426017802569628

`A051022(record[A093074(n+1)])`
-/

namespace A092909.P7027426017802569628
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093074 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051022 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A092909.P7027426017802569628

namespace A092909

/-- `A051022(record[A093074(n+1)])` -/
def P7027426017802569628.Spec : Prop :=
  ∀ n, P7027426017802569628.a n = A092909 (n + 1)

end A092909

/-! ## A092909.P18198327190612198941

`A051022(record[A006530(n+2)])`
-/

namespace A092909.P18198327190612198941
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051022 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A092909.P18198327190612198941

namespace A092909

/-- `A051022(record[A006530(n+2)])` -/
def P18198327190612198941.Spec : Prop :=
  ∀ n, P18198327190612198941.a n = A092909 (n + 1)

end A092909

/-! ## A092909.P4382240357952225412

`A051022(record[A014963(n+2)])`
-/

namespace A092909.P4382240357952225412
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051022 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A092909.P4382240357952225412

namespace A092909

/-- `A051022(record[A014963(n+2)])` -/
def P4382240357952225412.Spec : Prop :=
  ∀ n, P4382240357952225412.a n = A092909 (n + 1)

end A092909

/-! ## A092909.P11508727429378676723

`A051022(record[A020639(n+2)])`
-/

namespace A092909.P11508727429378676723
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051022 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A092909.P11508727429378676723

namespace A092909

/-- `A051022(record[A020639(n+2)])` -/
def P11508727429378676723.Spec : Prop :=
  ∀ n, P11508727429378676723.a n = A092909 (n + 1)

end A092909

/-! ## A092909.P9670862765919792781

`A055649(A031216(n+1))`
-/

namespace A092909.P9670862765919792781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055649 (A031216 (n + 1)).toNat

end

end A092909.P9670862765919792781

namespace A092909

/-- `A055649(A031216(n+1))` -/
def P9670862765919792781.Spec : Prop :=
  ∀ n, P9670862765919792781.a n = A092909 (n + 1)

end A092909

/-! ## A092909.P1918598014434039470

`A049872(A031344(n+1))`
-/

namespace A092909.P1918598014434039470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049872 (A031344 (n + 1)).toNat

end

end A092909.P1918598014434039470

namespace A092909

/-- `A049872(A031344(n+1))` -/
def P1918598014434039470.Spec : Prop :=
  ∀ n, P1918598014434039470.a n = A092909 (n + 1)

end A092909

/-! ## A092909.P3415728900839999978

`A051022(record[p?[A028242(n)]])`
-/

namespace A092909.P3415728900839999978
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028242 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051022 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A092909.P3415728900839999978

namespace A092909

/-- `A051022(record[p?[A028242(n)]])` -/
def P3415728900839999978.Spec : Prop :=
  ∀ n, P3415728900839999978.a n = A092909 (n + 1)

end A092909

/-! ## A092909.P17274884640600405679

`A055648(A031345(n+1))`
-/

namespace A092909.P17274884640600405679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055648 (A031345 (n + 1)).toNat

end

end A092909.P17274884640600405679

namespace A092909

/-- `A055648(A031345(n+1))` -/
def P17274884640600405679.Spec : Prop :=
  ∀ n, P17274884640600405679.a n = A092909 (n + 1)

end A092909

/-! ## A092909.P7165278674340553919

`A051022(record[p?[A076314(n)+1]])`
-/

namespace A092909.P7165278674340553919
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076314 n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051022 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A092909.P7165278674340553919

namespace A092909

/-- `A051022(record[p?[A076314(n)+1]])` -/
def P7165278674340553919.Spec : Prop :=
  ∀ n, P7165278674340553919.a n = A092909 (n + 1)

end A092909

/-! ## A092909.P15536287045759404808

`A051022(record[p?[A076314(n)]])`
-/

namespace A092909.P15536287045759404808
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076314 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051022 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A092909.P15536287045759404808

namespace A092909

/-- `A051022(record[p?[A076314(n)]])` -/
def P15536287045759404808.Spec : Prop :=
  ∀ n, P15536287045759404808.a n = A092909 (n + 1)

end A092909

/-!
# A092910: a(n) is the (3n+2)-th component of the continued fraction for sum(k>=0,2^(-k!)).

The programs for A092910, the canonical program `A092910.P13158733223661204110` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A092910 has offset 0).

The definition of A092910 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A092910.P17901583889142576280

`5-A007400(n+2)/2`
-/

namespace A092910.P17901583889142576280
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  5 - (A007400 (n + 2) : ℚ) / 2

end

end A092910.P17901583889142576280

namespace A092910

/-- `5-A007400(n+2)/2` -/
def P17901583889142576280.Spec : Prop :=
  ∀ n, P17901583889142576280.a n = (A092910 n : ℚ)

end A092910

/-! ## A092910.P13158733223661204110

`5-A088431(n+1)`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A092910

/-- `5-A088431(n+1)` -/
def P13158733223661204110.Spec : Prop :=
  ∀ n, P13158733223661204110.a n = A092910 n

theorem P13158733223661204110.correct : P13158733223661204110.Spec := by
  intro n
  simp only [A092910]

end A092910

/-! ## A092910.P4002980712858195156

`Δ[A073089(n+1)]+3`
-/

namespace A092910.P4002980712858195156
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073089 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + 3

end

end A092910.P4002980712858195156

namespace A092910

/-- `Δ[A073089(n+1)]+3` -/
def P4002980712858195156.Spec : Prop :=
  ∀ n, P4002980712858195156.a n = A092910 n

theorem P4002980712858195156.correct : P4002980712858195156.Spec := by
  intro n
  simp only [A092910, Nat.add_sub_cancel, A092910.P4002980712858195156.f1, A092910.P4002980712858195156.a, A092910.P13158733223661204110.a, A073089, A073089.P6746371190418764077.a, A088431, A088431.P14447499120009447117.f1, A088431.P14447499120009447117.a, A382732, A382732.P8564990345405423015.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A092910

/-! ## A092910.P6179350058650777701

`ceil(log(A006464(n+1)²))`
-/

namespace A092910.P6179350058650777701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.log (A006464 (n + 1) ^ 2 : ℝ)⌉

end

end A092910.P6179350058650777701

namespace A092910

/-- `ceil(log(A006464(n+1)²))` -/
def P6179350058650777701.Spec : Prop :=
  ∀ n, P6179350058650777701.a n = A092910 n

end A092910

/-! ## A092910.P1973763369405730838

`ceil(sqrt(A004200(n+1)))+1`
-/

namespace A092910.P1973763369405730838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (A004200 (n + 1) : ℝ)⌉ + 1

end

end A092910.P1973763369405730838

namespace A092910

/-- `ceil(sqrt(A004200(n+1)))+1` -/
def P1973763369405730838.Spec : Prop :=
  ∀ n, P1973763369405730838.a n = A092910 n

end A092910

/-! ## A092910.P13254503287260854560

`runs[A073097(2*n+1)]+1`
-/

namespace A092910.P13254503287260854560
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073097 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => j = 0 ∨ f1 j ≠ f1 (j - 1)) (n + 1) - SequenceMachineLib.nth (fun j => j = 0 ∨ f1 j ≠ f1 (j - 1)) n + 1

end

end A092910.P13254503287260854560

namespace A092910

/-- `runs[A073097(2*n+1)]+1` -/
def P13254503287260854560.Spec : Prop :=
  ∀ n, (P13254503287260854560.a n : ℤ) = A092910 n

end A092910

/-! ## A092910.P5997609467895724882

`A073089(n+2)+3-A073089(n+1)`
-/

namespace A092910.P5997609467895724882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073089 (n + 2) + (3 - A073089 (n + 1))

end

end A092910.P5997609467895724882

namespace A092910

/-- `A073089(n+2)+3-A073089(n+1)` -/
def P5997609467895724882.Spec : Prop :=
  ∀ n, P5997609467895724882.a n = A092910 n

theorem P5997609467895724882.correct : P5997609467895724882.Spec := by
  intro n
  simp only [A092910, Nat.add_sub_cancel, A092910.P5997609467895724882.a, A092910.P13158733223661204110.a, A073089, A073089.P6746371190418764077.a, A088431, A088431.P14447499120009447117.f1, A088431.P14447499120009447117.a, A382732, A382732.P8564990345405423015.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A092910

/-! ## A092910.P2977588697774371151

`Δ[val(A007400(2*n+1), 4)]+3`
-/

namespace A092910.P2977588697774371151
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A007400 (2 * n + 1)).toNat 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ) + 3

end

end A092910.P2977588697774371151

namespace A092910

/-- `Δ[val(A007400(2*n+1), 4)]+3` -/
def P2977588697774371151.Spec : Prop :=
  ∀ n, P2977588697774371151.a n = A092910 n

end A092910

/-! ## A092910.P10831256320968911915

`A081772(3*n+1)`
-/

namespace A092910.P10831256320968911915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081772 (3 * n + 1)

end

end A092910.P10831256320968911915

namespace A092910

/-- `A081772(3*n+1)` -/
def P10831256320968911915.Spec : Prop :=
  ∀ n, P10831256320968911915.a n = A092910 n

end A092910

/-! ## A092910.P7243724390257749507

`6-Δ[A067060(A317539(n+1))]`
-/

namespace A092910.P7243724390257749507
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067060 (A317539 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 - (f1 (n + 1) - f1 n)

end

end A092910.P7243724390257749507

namespace A092910

/-- `6-Δ[A067060(A317539(n+1))]` -/
def P7243724390257749507.Spec : Prop :=
  ∀ n, P7243724390257749507.a n = A092910 n

end A092910

/-! ## A092910.P730314237843907637

`Δ[A008574(n+1)-A110655(A073088(n+2))]`
-/

namespace A092910.P730314237843907637
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 (n + 1) - A110655 (A073088 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A092910.P730314237843907637

namespace A092910

/-- `Δ[A008574(n+1)-A110655(A073088(n+2))]` -/
def P730314237843907637.Spec : Prop :=
  ∀ n, P730314237843907637.a n = A092910 n

end A092910

/-! ## A092910.P14544846134647137873

`runs[A090678(2*n)]+1`
-/

namespace A092910.P14544846134647137873
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090678 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => j = 0 ∨ f1 j ≠ f1 (j - 1)) (n + 1) - SequenceMachineLib.nth (fun j => j = 0 ∨ f1 j ≠ f1 (j - 1)) n + 1

end

end A092910.P14544846134647137873

namespace A092910

/-- `runs[A090678(2*n)]+1` -/
def P14544846134647137873.Spec : Prop :=
  ∀ n, (P14544846134647137873.a n : ℤ) = A092910 n

end A092910

/-! ## A092910.P10665971683951839054

`runs[A121241(2*n)]+1`
-/

namespace A092910.P10665971683951839054
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121241 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => j = 0 ∨ f1 j ≠ f1 (j - 1)) (n + 1) - SequenceMachineLib.nth (fun j => j = 0 ∨ f1 j ≠ f1 (j - 1)) n + 1

end

end A092910.P10665971683951839054

namespace A092910

/-- `runs[A121241(2*n)]+1` -/
def P10665971683951839054.Spec : Prop :=
  ∀ n, (P10665971683951839054.a n : ℤ) = A092910 n

end A092910

/-! ## A092910.P10412659652170903870

`A076152(A075328(n))`
-/

namespace A092910.P10412659652170903870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076152 (A075328 n).toNat

end

end A092910.P10412659652170903870

namespace A092910

/-- `A076152(A075328(n))` -/
def P10412659652170903870.Spec : Prop :=
  ∀ n, P10412659652170903870.a n = A092910 n

end A092910

/-! ## A092910.P12893385906495400925

`A076152(A047215(n+1))`
-/

namespace A092910.P12893385906495400925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076152 (A047215 (n + 1)).toNat

end

end A092910.P12893385906495400925

namespace A092910

/-- `A076152(A047215(n+1))` -/
def P12893385906495400925.Spec : Prop :=
  ∀ n, P12893385906495400925.a n = A092910 n

end A092910

/-! ## A092910.P10361565420503003485

`6-Δ[A110654(A317539(Δ[n²]))]`
-/

namespace A092910.P10361565420503003485
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (A317539 ((f2 (n + 1) : ℤ) - (f2 n : ℤ)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 - (f1 (n + 1) - f1 n)

end

end A092910.P10361565420503003485

namespace A092910

/-- `6-Δ[A110654(A317539(Δ[n²]))]` -/
def P10361565420503003485.Spec : Prop :=
  ∀ n, P10361565420503003485.a n = A092910 n

end A092910

/-! ## A092910.P6305074390109635190

`Δ[∑{d}[n², C(#, 2)]%2]+3`
-/

namespace A092910.P6305074390109635190
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ d ∈ Nat.divisors (f2 n), Nat.choose d 2) % 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ) + 3

end

end A092910.P6305074390109635190

namespace A092910

/-- `Δ[∑{d}[n², C(#, 2)]%2]+3` -/
def P6305074390109635190.Spec : Prop :=
  ∀ n, P6305074390109635190.a n = A092910 n

end A092910

/-! ## A092910.P950038683313886326

`round(log(A122165(n+1)²))`
-/

namespace A092910.P950038683313886326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.log (A122165 (n + 1) ^ 2 : ℝ))

end

end A092910.P950038683313886326

namespace A092910

/-- `round(log(A122165(n+1)²))` -/
def P950038683313886326.Spec : Prop :=
  ∀ n, P950038683313886326.a n = A092910 n

end A092910

/-!
# A092911: Numbers all of whose divisors can be formed using their digits. Divisor digits are a subset of the digits of the number.

The programs for A092911, there is no canonical definition to state claims against.
-/

/-! ## A092911.P14993911650638585233

`record[A028233(A092912(n+1))]-A166102(n+1)%2+1`
-/

namespace A092911.P14993911650638585233
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028233 (A092912 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - Int.tmod (A166102 (n + 1)) 2 + 1

end

end A092911.P14993911650638585233

/-! ## A092911.P18350520751601460710

`record[A028233(A092912(n+1))]%A279953(n+7)`
-/

namespace A092911.P18350520751601460710
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028233 (A092912 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) (A279953 (n + 7))

end

end A092911.P18350520751601460710

/-! ## A092911.P3875075965649531864

`record[A028233(A092912(n+1))%A250322(n+1)]`
-/

namespace A092911.P3875075965649531864
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A028233 (A092912 (n + 1)).toNat) (A250322 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A092911.P3875075965649531864

/-! ## A092911.P10177581119487360784

`record[A162961(A092912(n+1))]`
-/

namespace A092911.P10177581119487360784
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162961 (A092912 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A092911.P10177581119487360784

/-! ## A092911.P9171035323468755433

`A203887(n+1)%2*record[A028233(A092912(n+1))]`
-/

namespace A092911.P9171035323468755433
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028233 (A092912 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A203887 (n + 1)) 2 * f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A092911.P9171035323468755433

/-! ## A092911.P3169133265596313028

`record[A028233(A092912(n+1)^A178489(n))]`
-/

namespace A092911.P3169133265596313028
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028233 (SequenceMachineLib.roundAway ((A092912 (n + 1) : ℚ) ^ (A178489 n : ℤ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A092911.P3169133265596313028

/-!
# A092912: Numbers k all of whose divisors contain only digits that occur at least once in k.

The programs for A092912, there is no canonical definition to state claims against.
-/

/-! ## A092912.P1785555754167555794

`∪[A092911(n+1), A397677(n+1)]`
-/

namespace A092912.P1785555754167555794
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092911 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A397677 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A092912.P1785555754167555794

/-! ## A092912.P13236819876915956749

`∪[A239058(n+1), A397677(n+1)]`
-/

namespace A092912.P13236819876915956749
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239058 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A397677 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A092912.P13236819876915956749

/-! ## A092912.P11789546306545007397

`eq[A043537(n+1), A095048(n+1)]+1`
-/

namespace A092912.P11789546306545007397
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043537 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095048 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A092912.P11789546306545007397

/-!
# A092913: a(0) = 1; a(n) = least multiple of a(n-1) such that every k with a(n)-n <= k <= a(n) + n is composite. The least distance of a prime on either side from a(n) is >n.

The programs for A092913, there is no canonical definition to state claims against.
-/

/-! ## A092913.P9784867056801635328

`∏[gcd(A114974(2*(n+1)), A114988(2*(n+1)))]`
-/

namespace A092913.P9784867056801635328
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A114974 (2 * (n + 1))) (A114988 (2 * (n + 1)))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A092913.P9784867056801635328

/-!
# A092914: a(n) = (n-1)*(n-2)*...*(n-r) with the least value of r so that n divides a(n).

The programs for A092914, there is no canonical definition to state claims against.
-/

/-! ## A092914.P11971244213724585144

`(n+6)*A092916(n+6)`
-/

namespace A092914.P11971244213724585144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 6 : ℤ) * A092916 (n + 6)

end

end A092914.P11971244213724585144

/-!
# A092915: a(n) = largest k such that n divides (n-1)!/k!, or 0 if no such k exists (i.e., if n is prime).

The programs for A092915, there is no canonical definition to state claims against.
-/

/-! ## A092915.P12335453949904012690

`floor(sqrt(2*C(A072480(n+6), 2)))`
-/

namespace A092915.P12335453949904012690
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.sqrt (2 * Nat.choose (A072480 (n + 6)).toNat 2)

end

end A092915.P12335453949904012690

/-! ## A092915.P14594961916092477871

`A028310(A072480(n+6))-1`
-/

namespace A092915.P14594961916092477871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A072480 (n + 6)).toNat - 1

end

end A092915.P14594961916092477871

/-! ## A092915.P13938526248356855818

`A025581(C(A072480(n+6), 2))`
-/

namespace A092915.P13938526248356855818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 (Nat.choose (A072480 (n + 6)).toNat 2)

end

end A092915.P13938526248356855818

/-! ## A092915.P17349526558621453917

`A065033(2*A072480(n+6))-1`
-/

namespace A092915.P17349526558621453917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (2 * A072480 (n + 6)).toNat - 1

end

end A092915.P17349526558621453917

/-! ## A092915.P6908369757092657927

`A057428(n+1)+A028310(A072480(n+6))`
-/

namespace A092915.P6908369757092657927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 (n + 1) + A028310 (A072480 (n + 6)).toNat

end

end A092915.P6908369757092657927

/-! ## A092915.P8404748097093736075

`A134824(n+2)+A028310(A072480(n+6))`
-/

namespace A092915.P8404748097093736075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134824 (n + 2) + A028310 (A072480 (n + 6)).toNat

end

end A092915.P8404748097093736075

/-! ## A092915.P2364834334663484581

`A033999(2*n+1)+A028310(A072480(n+6))`
-/

namespace A092915.P2364834334663484581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (2 * n + 1) + A028310 (A072480 (n + 6)).toNat

end

end A092915.P2364834334663484581

/-! ## A092915.P5008004195126003928

`A072480(n+6)-A000040(A072480(n+6)+1)%2`
-/

namespace A092915.P5008004195126003928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072480 (n + 6) - Int.tmod (A000040 (A072480 (n + 6) + 1).toNat) 2

end

end A092915.P5008004195126003928

/-! ## A092915.P13731641458133994415

`A165326(A146081(n))+A028310(A072480(n+6))`
-/

namespace A092915.P13731641458133994415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165326 (A146081 n).toNat + A028310 (A072480 (n + 6)).toNat

end

end A092915.P13731641458133994415

/-! ## A092915.P4031672244330500839

`A092673(A065091(n+1))+A028310(A072480(n+6))`
-/

namespace A092915.P4031672244330500839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092673 (A065091 (n + 1)).toNat + A028310 (A072480 (n + 6)).toNat

end

end A092915.P4031672244330500839

/-!
# A092916: a(n) = A092914(n)/n = the least integer value of (n-1)!/(n*k!).

The programs for A092916, there is no canonical definition to state claims against.
-/

/-! ## A092916.P14445990636085458759

`A092914(n+6)/(n+6)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A092916.P14445990636085458759
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A092914 (n + 6) : ℚ) / (n + 6 : ℚ)

end

end A092916.P14445990636085458759

/-!
# A092917: Group the natural numbers such that the n-th group sum is divisible by prime(n): (1, 2, 3), (4, 5), (6, 7, 8, 9), (10, 11), (12, 13, 14, 15, 16, 17, 18, 19, 20, 21), ... Sequence contains the last term of every group.

The programs for A092917, there is no canonical definition to state claims against.
-/

/-! ## A092917.P9706923662465729552

`A086493(n+1)-1`
-/

namespace A092917.P9706923662465729552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086493 (n + 1) - 1

end

end A092917.P9706923662465729552

/-! ## A092917.P15803767865934644542

`A023443(A086493(n+1))`
-/

namespace A092917.P15803767865934644542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A086493 (n + 1)).toNat

end

end A092917.P15803767865934644542

/-! ## A092917.P2025054908413370983

`A289207(A086493(n+1)+1)`
-/

namespace A092917.P2025054908413370983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289207 (A086493 (n + 1) + 1).toNat

end

end A092917.P2025054908413370983

/-! ## A092917.P8763266983478783125

`A023445(A086493(n+1)+2)`
-/

namespace A092917.P8763266983478783125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023445 (A086493 (n + 1) + 2).toNat

end

end A092917.P8763266983478783125

/-! ## A092917.P1519329625651184680

`A065423(2*A086493(n+1))`
-/

namespace A092917.P1519329625651184680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065423 (2 * A086493 (n + 1)).toNat

end

end A092917.P1519329625651184680

/-! ## A092917.P8181594565746474077

`A023448(A086493(n+1)+5)`
-/

namespace A092917.P8181594565746474077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023448 (A086493 (n + 1) + 5).toNat

end

end A092917.P8181594565746474077

/-! ## A092917.P4524204935067150440

`A059169(4*A086493(n+1))`
-/

namespace A092917.P4524204935067150440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059169 (4 * A086493 (n + 1)).toNat

end

end A092917.P4524204935067150440

/-! ## A092917.P12481569335445679663

`A023451(A086493(n+1)+8)`
-/

namespace A092917.P12481569335445679663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023451 (A086493 (n + 1) + 8).toNat

end

end A092917.P12481569335445679663

/-! ## A092917.P10899333421350443803

`abs(A086493(n+1)+or(-1, A000041(n)))`
-/

namespace A092917.P10899333421350443803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A086493 (n + 1) + Int.lor (-1) (A000041 n)|

end

end A092917.P10899333421350443803

/-! ## A092917.P3508225248026352951

`A094267(A000328(n))+A086493(n+1)`
-/

namespace A092917.P3508225248026352951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094267 (A000328 n).toNat + A086493 (n + 1)

end

end A092917.P3508225248026352951

/-!
# A092918: Number of connected hypergraphs (without multiple edges and without empty edges) on n labeled vertices.

The programs for A092918, there is no canonical definition to state claims against.
-/

/-! ## A092918.P12084222292794965170

`lcm(2, A323818(n+1))`
-/

namespace A092918.P12084222292794965170
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A323818 (n + 1))

end

end A092918.P12084222292794965170

/-! ## A092918.P5244029497010770143

`record[A323818(n)+floor(acot(n))]`
-/

namespace A092918.P5244029497010770143
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323818 n + ⌊SequenceMachineLib.acot (n : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A092918.P5244029497010770143

/-! ## A092918.P10793013005169836266

`record[A323818(n)+A000007(n)]`
-/

namespace A092918.P10793013005169836266
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323818 n + A000007 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A092918.P10793013005169836266

/-! ## A092918.P3613617980056821346

`A323818(n+1)+A178798(n)^n`
-/

namespace A092918.P3613617980056821346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323818 (n + 1) + A178798 n ^ n

end

end A092918.P3613617980056821346

/-!
# A092919: Partial sums of A000193 (round(log(n))).

The programs for A092919, the canonical program `A092919.P6854998301569668294` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A092919 has offset 1).

The definition of A092919 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A092919.P11673438789447789901

`∑[round(log(1+n))]`
-/

namespace A092919.P11673438789447789901
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.log (1 + n : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A092919.P11673438789447789901

namespace A092919

/-- `∑[round(log(1+n))]` -/
def P11673438789447789901.Spec : Prop :=
  ∀ n, P11673438789447789901.a n = A092919 (n + 1)

end A092919

/-! ## A092919.P14934128145876820653

`round(a(n-1)+log(n+1))` with `a(0)=0`
-/

namespace A092919.P14934128145876820653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  SequenceMachineLib.roundAway ((a (n - 1) : ℝ) + Real.log (n + 1 : ℝ))

end

end A092919.P14934128145876820653

namespace A092919

/-- `round(a(n-1)+log(n+1))` -/
def P14934128145876820653.Spec : Prop :=
  ∀ n, P14934128145876820653.a n = A092919 (n + 1)

end A092919

/-! ## A092919.P17709749483040888588

`or(∑[A000193(n+1)], char[1])`
-/

namespace A092919.P17709749483040888588
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000193 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (∑ j ∈ Finset.range (n + 1), f1 j) ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ)

end

end A092919.P17709749483040888588

namespace A092919

/-- `or(∑[A000193(n+1)], char[1])` -/
def P17709749483040888588.Spec : Prop :=
  ∀ n, P17709749483040888588.a n = A092919 (n + 1)

end A092919

/-! ## A092919.P5046422857457523604

`and(∑[A000193(n+1)], A057428(n))`
-/

namespace A092919.P5046422857457523604
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000193 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (∑ j ∈ Finset.range (n + 1), f1 j) (A057428 n)

end

end A092919.P5046422857457523604

namespace A092919

/-- `and(∑[A000193(n+1)], A057428(n))` -/
def P5046422857457523604.Spec : Prop :=
  ∀ n, P5046422857457523604.a n = A092919 (n + 1)

end A092919

/-! ## A092919.P6854998301569668294

`∑[A000193(A000122(n)+1+n)]-1`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A092919

/-- `∑[A000193(A000122(n)+1+n)]-1` -/
def P6854998301569668294.Spec : Prop :=
  ∀ n, P6854998301569668294.a n = A092919 (n + 1)

theorem P6854998301569668294.correct : P6854998301569668294.Spec := by
  intro n
  simp only [A092919, Nat.add_sub_cancel]

end A092919

/-! ## A092919.P6894641991932006279

`∑[A000193(n+1)]%A025487(n+1)`
-/

namespace A092919.P6894641991932006279
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000193 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) (A025487 (n + 1))

end

end A092919.P6894641991932006279

namespace A092919

/-- `∑[A000193(n+1)]%A025487(n+1)` -/
def P6894641991932006279.Spec : Prop :=
  ∀ n, P6894641991932006279.a n = A092919 (n + 1)

end A092919

/-! ## A092919.P13140389471661709564

`∑[A000193(n+1)]%A000230(n)`
-/

namespace A092919.P13140389471661709564
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000193 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) (A000230 n)

end

end A092919.P13140389471661709564

namespace A092919

/-- `∑[A000193(n+1)]%A000230(n)` -/
def P13140389471661709564.Spec : Prop :=
  ∀ n, P13140389471661709564.a n = A092919 (n + 1)

end A092919

/-!
# A092920: Number of strongly monotone partitions of [n].

The programs for A092920, there is no canonical definition to state claims against.
-/

/-! ## A092920.P12303019840596572148

`A185284(4*n)+A024427(n+1)`
-/

namespace A092920.P12303019840596572148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185284 (4 * n) + A024427 (n + 1)

end

end A092920.P12303019840596572148

/-! ## A092920.P8902544604771575618

`A157271(2*A024427(n+1))`
-/

namespace A092920.P8902544604771575618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157271 (2 * A024427 (n + 1)).toNat

end

end A092920.P8902544604771575618

/-! ## A092920.P15701989152806864909

`A177377(n)-A002026(A011816(n))`
-/

namespace A092920.P15701989152806864909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177377 n - A002026 (A011816 n).toNat

end

end A092920.P15701989152806864909

/-! ## A092920.P1407255993411689971

`A177377(n)-A102683(A047970(n))`
-/

namespace A092920.P1407255993411689971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177377 n - A102683 (A047970 n).toNat

end

end A092920.P1407255993411689971

/-! ## A092920.P12038247011020463006

`A335460(A036590(n))+A024427(n+1)`
-/

namespace A092920.P12038247011020463006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335460 (A036590 n).toNat + A024427 (n + 1)

end

end A092920.P12038247011020463006

/-!
# A092921: Array F(k, n) read by descending antidiagonals: k-generalized Fibonacci numbers in row k >= 1, starting (0, 1, 1, ...), for column n >= 0.

The programs for A092921, there is no canonical definition to state claims against.
-/

/-! ## A092921.P8055329217719086891

`A247506(A061579(n+1))`
-/

namespace A092921.P8055329217719086891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247506 (A061579 (n + 1)).toNat

end

end A092921.P8055329217719086891

/-! ## A092921.P2453366414508798671

`A247506(A038722(n+2)-1)`
-/

namespace A092921.P2453366414508798671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247506 (A038722 (n + 2) - 1).toNat

end

end A092921.P2453366414508798671

/-! ## A092921.P9062314526029675469

`A247506(A038722(n+3))`
-/

namespace A092921.P9062314526029675469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247506 (A038722 (n + 3)).toNat

end

end A092921.P9062314526029675469

/-! ## A092921.P7300054530621168608

`A324662(A370772(n))`
-/

namespace A092921.P7300054530621168608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324662 (A370772 n).toNat

end

end A092921.P7300054530621168608

/-! ## A092921.P2342642283086464468

`A372593(A108947(n+1))`
-/

namespace A092921.P2342642283086464468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372593 (A108947 (n + 1)).toNat

end

end A092921.P2342642283086464468

/-!
# A092922: a(1) = prime(1), a(2) = prime(prime( a(1) )), a(3) = prime(prime(prime( a(2) ))), a(4) = prime(prime(prime(prime( a(3) )))), etc.

The programs for A092922, there is no canonical definition to state claims against.
-/

/-! ## A092922.P11492728150786986845

`A007097(∑[gcd(n+1, (n+1)%5)])`
-/

namespace A092922.P11492728150786986845
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd (n + 1) ((n + 1) % 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007097 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A092922.P11492728150786986845

/-! ## A092922.P14660330622078543050

`A007097(∑[A339256(n+1)])`
-/

namespace A092922.P14660330622078543050
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339256 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007097 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A092922.P14660330622078543050

/-! ## A092922.P7988782835982120362

`A007097(lt[A204459(n), A350111(n)])`
-/

namespace A092922.P7988782835982120362
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204459 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350111 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007097 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A092922.P7988782835982120362

/-! ## A092922.P6910262217768043953

`A007097(lt[A209701(n+1), A146607(n+1)])`
-/

namespace A092922.P6910262217768043953
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209701 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146607 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007097 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A092922.P6910262217768043953

/-!
# A092923: Number of permutations containing exactly one occurrence of the pattern #, with # one of {1-23, 3-21, 12-3, 32-1}.

The programs for A092923, there is no canonical definition to state claims against.
-/

/-! ## A092923.P17757186468034926287

`Δ[A177257(n+2)]`
-/

namespace A092923.P17757186468034926287
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177257 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A092923.P17757186468034926287

/-! ## A092923.P9073323950944656715

`Δ[record[A177257(A008611(n))]]`
-/

namespace A092923.P9073323950944656715
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177257 (A008611 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A092923.P9073323950944656715

/-! ## A092923.P17883883148807276606

`Δ[record[A177257(A008616(n))]]`
-/

namespace A092923.P17883883148807276606
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177257 (A008616 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A092923.P17883883148807276606

/-! ## A092923.P7788156278931914953

`Δ[record[A177257(A008647(n))]]`
-/

namespace A092923.P7788156278931914953
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177257 (A008647 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A092923.P7788156278931914953

/-! ## A092923.P5323376655723845776

`Δ[record[A177257(A049581(n))]]`
-/

namespace A092923.P5323376655723845776
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177257 (A049581 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A092923.P5323376655723845776

/-! ## A092923.P18413250191519055430

`Δ[record[A177257(A057979(n))]]`
-/

namespace A092923.P18413250191519055430
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177257 (A057979 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A092923.P18413250191519055430

/-! ## A092923.P4411602612126477683

`A177257(n+3)-A177257(n+2)`
-/

namespace A092923.P4411602612126477683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177257 (n + 3) - A177257 (n + 2)

end

end A092923.P4411602612126477683

/-! ## A092923.P18079445504102990820

`Δ[A000110(n+3)]-A124427(n+3)`
-/

namespace A092923.P18079445504102990820
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000110 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A124427 (n + 3)

end

end A092923.P18079445504102990820

/-! ## A092923.P17436511838205817466

`A200660(n+2)-A200580(n+1)`
-/

namespace A092923.P17436511838205817466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200660 (n + 2) - A200580 (n + 1)

end

end A092923.P17436511838205817466

/-!
# A092925: Smallest prime of the form n(n-1)(n-2)...(n-k)-1, or 0 if no such prime exists.

The programs for A092925, there is no canonical definition to state claims against.
-/

/-! ## A092925.P4751156413418933656

`A269251(A068634(n+3))`
-/

namespace A092925.P4751156413418933656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269251 (A068634 (n + 3)).toNat

end

end A092925.P4751156413418933656

/-! ## A092925.P2006938560039489522

`p?[A269251(A043316(n+1))]`
-/

namespace A092925.P2006938560039489522
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269251 (A043316 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A092925.P2006938560039489522

/-! ## A092925.P7905813360259672844

`A269251(A032555(n+1)+2)`
-/

namespace A092925.P7905813360259672844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269251 (A032555 (n + 1) + 2).toNat

end

end A092925.P7905813360259672844

/-! ## A092925.P3855482116595383469

`A269251(A032559(n+1)+2)`
-/

namespace A092925.P3855482116595383469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269251 (A032559 (n + 1) + 2).toNat

end

end A092925.P3855482116595383469

/-! ## A092925.P2102500938293000317

`A269251(A061219(n+1)+2)`
-/

namespace A092925.P2102500938293000317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269251 (A061219 (n + 1) + 2).toNat

end

end A092925.P2102500938293000317

/-!
# A092926: Value of k pertaining to A092925. a(n) = k if n*(n-1)*(n-2)...*(n-k)-1 is the least prime of this form.

The programs for A092926, there is no canonical definition to state claims against.
-/

/-! ## A092926.P3696751727791196398

`A000045(A213980(n+2))%A075947(n)`
-/

namespace A092926.P3696751727791196398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000045 (A213980 (n + 2)).toNat) (A075947 n)

end

end A092926.P3696751727791196398

/-! ## A092926.P6784517611773979151

`A001221(A243404(n+3)%A075947(n))`
-/

namespace A092926.P6784517611773979151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (Int.tmod (A243404 (n + 3)) (A075947 n)).toNat

end

end A092926.P6784517611773979151

/-! ## A092926.P5057925917281639148

`∑{e}[A243404(n+3), A007318(A243411(#))]`
-/

namespace A092926.P5057925917281639148
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243404 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A007318 (A243411 (Nat.factorization (f1 n).natAbs p)).toNat

end

end A092926.P5057925917281639148

/-! ## A092926.P4871824556455302632

`A000045(A213980(n+2)%A190298(n+1))`
-/

namespace A092926.P4871824556455302632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (Int.tmod (A213980 (n + 2)) (A190298 (n + 1))).toNat

end

end A092926.P4871824556455302632

/-! ## A092926.P2844987659579191197

`A006005(A249790(3*n+4))%A077565(2*(n+2))`
-/

namespace A092926.P2844987659579191197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A006005 (A249790 (3 * n + 4)).toNat) (A077565 (2 * (n + 2)))

end

end A092926.P2844987659579191197

/-!
# A092928: Value of k pertaining to A092927: value of k such that n(n-1)(n-2)...(n-k)+1 is the least prime of this form; a(n)=-1 if no such k exists, i.e., A092927(n)=0.

The programs for A092928, there is no canonical definition to state claims against.
-/

/-! ## A092928.P16293857464135703337

`A227481(A118658(n))%A005451(n+2)`
-/

namespace A092928.P16293857464135703337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A227481 (A118658 n).toNat) (A005451 (n + 2))

end

end A092928.P16293857464135703337

/-! ## A092928.P1930107776819590459

`Δ[A062298(n+1)]*A227481(A118658(n))`
-/

namespace A092928.P1930107776819590459
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062298 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A227481 (A118658 n).toNat

end

end A092928.P1930107776819590459

/-! ## A092928.P737841615025303486

`A227481(A118658(n))*A300384(A079617(n+2))`
-/

namespace A092928.P737841615025303486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227481 (A118658 n).toNat * A300384 (A079617 (n + 2)).toNat

end

end A092928.P737841615025303486

/-! ## A092928.P5032600132620015094

`A227481(A118658(n))*A300384(A316436(n+2))`
-/

namespace A092928.P5032600132620015094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227481 (A118658 n).toNat * A300384 (A316436 (n + 2)).toNat

end

end A092928.P5032600132620015094

/-! ## A092928.P6513532063960114124

`∑{p}[∑{d}[n+1, #²-#], A242530(#)]`
-/

namespace A092928.P6513532063960114124
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n), ((d ^ 2 : ℤ) - (d : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A242530 p

end

end A092928.P6513532063960114124

/-!
# A092929: n-th partial arithmetic mean is equal to the n-th noncomposite number or to prime(n-1) for n>1.

The programs for A092929, the canonical program `A092929.P4535680550638949594` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A092929 has offset 1).

The definition of A092929 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A092929.P16838265369252729291

`Δ[n*record[A259153(n)]]`
-/

namespace A092929.P16838265369252729291
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259153 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A092929.P16838265369252729291

namespace A092929

/-- `Δ[n*record[A259153(n)]]` -/
def P16838265369252729291.Spec : Prop :=
  ∀ n, P16838265369252729291.a n = A092929 (n + 1)

end A092929

/-! ## A092929.P4535680550638949594

`Δ[n*A008578(abs(1-n)+1)]`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A092929

/-- `Δ[n*A008578(abs(1-n)+1)]` -/
def P4535680550638949594.Spec : Prop :=
  ∀ n, P4535680550638949594.a n = A092929 (n + 1)

theorem P4535680550638949594.correct : P4535680550638949594.Spec := by
  intro n
  simp only [A092929, Nat.add_sub_cancel]

end A092929

/-! ## A092929.P9355689688559182493

`Δ[n*A158611(n+1)]`
-/

namespace A092929.P9355689688559182493
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A158611 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A092929.P9355689688559182493

namespace A092929

/-- `Δ[n*A158611(n+1)]` -/
def P9355689688559182493.Spec : Prop :=
  ∀ n, P9355689688559182493.a n = A092929 (n + 1)

end A092929

/-! ## A092929.P2836123664104230174

`Δ[n*lt[A328771(n), 2]]`
-/

namespace A092929.P2836123664104230174
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328771 n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * SequenceMachineLib.nth (fun j => f2 j < (f3 j : ℤ)) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A092929.P2836123664104230174

namespace A092929

/-- `Δ[n*lt[A328771(n), 2]]` -/
def P2836123664104230174.Spec : Prop :=
  ∀ n, P2836123664104230174.a n = A092929 (n + 1)

end A092929

/-! ## A092929.P2376102902508480289

`Δ[n*lt[A072491(n), 2]]`
-/

namespace A092929.P2376102902508480289
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072491 n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * SequenceMachineLib.nth (fun j => f2 j < (f3 j : ℤ)) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A092929.P2376102902508480289

namespace A092929

/-- `Δ[n*lt[A072491(n), 2]]` -/
def P2376102902508480289.Spec : Prop :=
  ∀ n, P2376102902508480289.a n = A092929 (n + 1)

end A092929

/-! ## A092929.P2097045997250997902

`Δ[n*eq[1, A226378(n)]]`
-/

namespace A092929.P2097045997250997902
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226378 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A092929.P2097045997250997902

namespace A092929

/-- `Δ[n*eq[1, A226378(n)]]` -/
def P2097045997250997902.Spec : Prop :=
  ∀ n, P2097045997250997902.a n = A092929 (n + 1)

end A092929

/-! ## A092929.P4093561274573416235

`Δ[n*lt[A032741(n), 2]]`
-/

namespace A092929.P4093561274573416235
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * SequenceMachineLib.nth (fun j => f2 j < (f3 j : ℤ)) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A092929.P4093561274573416235

namespace A092929

/-- `Δ[n*lt[A032741(n), 2]]` -/
def P4093561274573416235.Spec : Prop :=
  ∀ n, P4093561274573416235.a n = A092929 (n + 1)

end A092929

/-! ## A092929.P7348690809803585480

`Δ[n*A064989(A008578(n+1))]`
-/

namespace A092929.P7348690809803585480
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A064989 (A008578 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A092929.P7348690809803585480

namespace A092929

/-- `Δ[n*A064989(A008578(n+1))]` -/
def P7348690809803585480.Spec : Prop :=
  ∀ n, P7348690809803585480.a n = A092929 (n + 1)

end A092929

/-! ## A092929.P7429388963959660211

`Δ[n*A064989(record[A064989(n+1)])]`
-/

namespace A092929.P7429388963959660211
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064989 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A064989 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A092929.P7429388963959660211

namespace A092929

/-- `Δ[n*A064989(record[A064989(n+1)])]` -/
def P7429388963959660211.Spec : Prop :=
  ∀ n, P7429388963959660211.a n = A092929 (n + 1)

end A092929

/-! ## A092929.P2306605691524766507

`Δ[n*A285727(A000040(n+1))]`
-/

namespace A092929.P2306605691524766507
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A285727 (A000040 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A092929.P2306605691524766507

namespace A092929

/-- `Δ[n*A285727(A000040(n+1))]` -/
def P2306605691524766507.Spec : Prop :=
  ∀ n, P2306605691524766507.a n = A092929 (n + 1)

end A092929

/-! ## A092929.P2060383188668421797

`Δ[n*A064989(A001747(n+1))]`
-/

namespace A092929.P2060383188668421797
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A064989 (A001747 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A092929.P2060383188668421797

namespace A092929

/-- `Δ[n*A064989(A001747(n+1))]` -/
def P2060383188668421797.Spec : Prop :=
  ∀ n, P2060383188668421797.a n = A092929 (n + 1)

end A092929

/-! ## A092929.P17011055538844705868

`Δ[n*A199333(A000124(n))]`
-/

namespace A092929.P17011055538844705868
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A199333 (A000124 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A092929.P17011055538844705868

namespace A092929

/-- `Δ[n*A199333(A000124(n))]` -/
def P17011055538844705868.Spec : Prop :=
  ∀ n, P17011055538844705868.a n = A092929 (n + 1)

end A092929

/-!
# A092930: n-th partial arithmetic mean is equal to the n-th composite number.

The programs for A092930, the canonical program `A092930.P5832077431615322689` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A092930 has offset 1).

The definition of A092930 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A092930.P5832077431615322689

`Δ[A018252(1+n)*n]`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A092930

/-- `Δ[A018252(1+n)*n]` -/
def P5832077431615322689.Spec : Prop :=
  ∀ n, P5832077431615322689.a n = A092930 (n + 1)

theorem P5832077431615322689.correct : P5832077431615322689.Spec := by
  intro n
  simp only [A092930, Nat.add_sub_cancel]

end A092930

/-! ## A092930.P17051526212611191508

`Δ[n*A141468(n+2)]`
-/

namespace A092930.P17051526212611191508
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A141468 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A092930.P17051526212611191508

namespace A092930

/-- `Δ[n*A141468(n+2)]` -/
def P17051526212611191508.Spec : Prop :=
  ∀ n, P17051526212611191508.a n = A092930 (n + 1)

end A092930

/-! ## A092930.P10484065931987217935

`Δ[n*comp[A006530(n+1)]]`
-/

namespace A092930.P10484065931987217935
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A092930.P10484065931987217935

namespace A092930

/-- `Δ[n*comp[A006530(n+1)]]` -/
def P10484065931987217935.Spec : Prop :=
  ∀ n, P10484065931987217935.a n = A092930 (n + 1)

end A092930

/-! ## A092930.P15792140311132289213

`Δ[n*comp[A008578(n+1)]]`
-/

namespace A092930.P15792140311132289213
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A092930.P15792140311132289213

namespace A092930

/-- `Δ[n*comp[A008578(n+1)]]` -/
def P15792140311132289213.Spec : Prop :=
  ∀ n, P15792140311132289213.a n = A092930 (n + 1)

end A092930

/-! ## A092930.P12731395620198026437

`Δ[n*comp[A020639(n+1)]]`
-/

namespace A092930.P12731395620198026437
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A092930.P12731395620198026437

namespace A092930

/-- `Δ[n*comp[A020639(n+1)]]` -/
def P12731395620198026437.Spec : Prop :=
  ∀ n, P12731395620198026437.a n = A092930 (n + 1)

end A092930

/-! ## A092930.P4040851546224502813

`Δ[n*A222307(2*n+1)]`
-/

namespace A092930.P4040851546224502813
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A222307 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A092930.P4040851546224502813

namespace A092930

/-- `Δ[n*A222307(2*n+1)]` -/
def P4040851546224502813.Spec : Prop :=
  ∀ n, P4040851546224502813.a n = A092930 (n + 1)

end A092930

/-! ## A092930.P206758760976059954

`Δ[n*(comp[record[A000010(n+1)]]+1)]`
-/

namespace A092930.P206758760976059954
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (SequenceMachineLib.nth (fun j => ∀ l < j, f3 l < f3 j) n)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A092930.P206758760976059954

namespace A092930

/-- `Δ[n*(comp[record[A000010(n+1)]]+1)]` -/
def P206758760976059954.Spec : Prop :=
  ∀ n, P206758760976059954.a n = A092930 (n + 1)

end A092930

/-! ## A092930.P24004553010618257

`Δ[n*(comp[A000040(n+1)-1]+1)]`
-/

namespace A092930.P24004553010618257
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A092930.P24004553010618257

namespace A092930

/-- `Δ[n*(comp[A000040(n+1)-1]+1)]` -/
def P24004553010618257.Spec : Prop :=
  ∀ n, P24004553010618257.a n = A092930 (n + 1)

end A092930

/-! ## A092930.P3876656221243934911

`Δ[n*(comp[eq[1, A001222(n+1)]]+1)]`
-/

namespace A092930.P3876656221243934911
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f3 j : ℤ) = f4 j) n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A092930.P3876656221243934911

namespace A092930

/-- `Δ[n*(comp[eq[1, A001222(n+1)]]+1)]` -/
def P3876656221243934911.Spec : Prop :=
  ∀ n, P3876656221243934911.a n = A092930 (n + 1)

end A092930

/-! ## A092930.P15707262729533770606

`A002808(n+1)+n*A065310(n+1)`
-/

namespace A092930.P15707262729533770606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002808 (n + 1) + (n : ℤ) * A065310 (n + 1)

end

end A092930.P15707262729533770606

namespace A092930

/-- `A002808(n+1)+n*A065310(n+1)` -/
def P15707262729533770606.Spec : Prop :=
  ∀ n, P15707262729533770606.a n = A092930 (n + 1)

end A092930

/-! ## A092930.P4419032925907043648

`(n+1)*A018252(n+2)-n*A018252(n+1)`
-/

namespace A092930.P4419032925907043648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A018252 (n + 2) - (n : ℤ) * A018252 (n + 1)

end

end A092930.P4419032925907043648

namespace A092930

/-- `(n+1)*A018252(n+2)-n*A018252(n+1)` -/
def P4419032925907043648.Spec : Prop :=
  ∀ n, P4419032925907043648.a n = A092930 (n + 1)

theorem P4419032925907043648.correct : P4419032925907043648.Spec := by
  intro n
  simp only [A092930, Nat.add_sub_cancel, A092930.P4419032925907043648.a, A092930.P5832077431615322689.f1, A092930.P5832077431615322689.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A092930

/-! ## A092930.P18244665960044920563

`Δ[n*Δ[A051349(n)]]`
-/

namespace A092930.P18244665960044920563
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051349 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A092930.P18244665960044920563

namespace A092930

/-- `Δ[n*Δ[A051349(n)]]` -/
def P18244665960044920563.Spec : Prop :=
  ∀ n, P18244665960044920563.a n = A092930 (n + 1)

end A092930

/-! ## A092930.P17541478060947355528

`Δ[n*sqrt(A062312(n+1))]`
-/

namespace A092930.P17541478060947355528
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (n : ℝ) * Real.sqrt (A062312 (n + 1) : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A092930.P17541478060947355528

namespace A092930

/-- `Δ[n*sqrt(A062312(n+1))]` -/
def P17541478060947355528.Spec : Prop :=
  ∀ n, P17541478060947355528.a n = (A092930 (n + 1) : ℝ)

end A092930

/-! ## A092930.P6641717949092893837

`Δ[n*∑[A054546(n+1)]]`
-/

namespace A092930.P6641717949092893837
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054546 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A092930.P6641717949092893837

namespace A092930

/-- `Δ[n*∑[A054546(n+1)]]` -/
def P6641717949092893837.Spec : Prop :=
  ∀ n, P6641717949092893837.a n = A092930 (n + 1)

end A092930

/-! ## A092930.P1671197875157142537

`Δ[n*(A060462(n+1)+1)]`
-/

namespace A092930.P1671197875157142537
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A060462 (n + 1) + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A092930.P1671197875157142537

namespace A092930

/-- `Δ[n*(A060462(n+1)+1)]` -/
def P1671197875157142537.Spec : Prop :=
  ∀ n, P1671197875157142537.a n = A092930 (n + 1)

end A092930

/-! ## A092930.P9550955636641664172

`Δ[n/2*A139270(n+1)]`
-/

namespace A092930.P9550955636641664172
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / 2 * (A139270 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A092930.P9550955636641664172

namespace A092930

/-- `Δ[n/2*A139270(n+1)]` -/
def P9550955636641664172.Spec : Prop :=
  ∀ n, P9550955636641664172.a n = (A092930 (n + 1) : ℚ)

end A092930

/-! ## A092930.P15632227739576721169

`A018252(n+2)+n*A054546(n+2)`
-/

namespace A092930.P15632227739576721169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (n + 2) + (n : ℤ) * A054546 (n + 2)

end

end A092930.P15632227739576721169

namespace A092930

/-- `A018252(n+2)+n*A054546(n+2)` -/
def P15632227739576721169.Spec : Prop :=
  ∀ n, P15632227739576721169.a n = A092930 (n + 1)

end A092930

/-! ## A092930.P1712335867199797630

`Δ[n*A065090(n+2)]`
-/

namespace A092930.P1712335867199797630
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A065090 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A092930.P1712335867199797630

namespace A092930

/-- `Δ[n*A065090(n+2)]` -/
def P1712335867199797630.Spec : Prop :=
  ∀ n, P1712335867199797630.a n = A092930 (n + 1)

end A092930

/-! ## A092930.P29862561580992452

`Δ[n*sqrt(A161753(n+2))]`
-/

namespace A092930.P29862561580992452
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (n : ℝ) * Real.sqrt (A161753 (n + 2) : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A092930.P29862561580992452

namespace A092930

/-- `Δ[n*sqrt(A161753(n+2))]` -/
def P29862561580992452.Spec : Prop :=
  ∀ n, P29862561580992452.a n = (A092930 (n + 1) : ℝ)

end A092930

/-! ## A092930.P9801574063187948947

`Δ[n*Δ[A175967(n+1)]]`
-/

namespace A092930.P9801574063187948947
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175967 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A092930.P9801574063187948947

namespace A092930

/-- `Δ[n*Δ[A175967(n+1)]]` -/
def P9801574063187948947.Spec : Prop :=
  ∀ n, P9801574063187948947.a n = A092930 (n + 1)

end A092930

/-!
# A092931: Number of ways of factorizing n into parts whose sum divides n.

The programs for A092931, there is no canonical definition to state claims against.
-/

/-! ## A092931.P2899281012485652848

`A059268(a(n-1)*A318371(n+1))` with `a(0)=0`
-/

namespace A092931.P2899281012485652848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A059268 (a (n - 1) * A318371 (n + 1)).toNat

end

end A092931.P2899281012485652848

/-! ## A092931.P16837834296859083751

`A059268(lcm(a(n-1), A318371(n+1)))` with `a(0)=0`
-/

namespace A092931.P16837834296859083751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A059268 (Int.lcm (a (n - 1)) (A318371 (n + 1)))

end

end A092931.P16837834296859083751

/-! ## A092931.P11873329960098456699

`A063647(A382876(3*n+1)+A071178(n+1))`
-/

namespace A092931.P11873329960098456699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063647 (A382876 (3 * n + 1) + A071178 (n + 1)).toNat

end

end A092931.P11873329960098456699

/-!
# A092932: Index of first occurrence of n in A092931, or 0 if n does not appear.

The programs for A092932, there is no canonical definition to state claims against.
-/

/-! ## A092932.P17644593186093221779

`A000607(n+2)*A085311(A290368(n+3))`
-/

namespace A092932.P17644593186093221779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000607 (n + 2) * A085311 (A290368 (n + 3)).toNat

end

end A092932.P17644593186093221779

/-!
# A092933: Let 1, a, b, c,... be the numbers coprime to k in ascending order; then k belongs to this sequence if k = a partial sum of these numbers.

The programs for A092933, there is no canonical definition to state claims against.
-/

/-! ## A092933.P6008587120595077642

`record[A117893(n+1)%(n+2)]`
-/

namespace A092933.P6008587120595077642
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A117893 (n + 1)) (n + 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A092933.P6008587120595077642

/-! ## A092933.P450574120472360725

`eq[n, A117893(A028310(n))]`
-/

namespace A092933.P450574120472360725
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117893 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A092933.P450574120472360725

/-! ## A092933.P11019430149119932692

`record[C(A117892(n+1), n)]`
-/

namespace A092933.P11019430149119932692
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A117892 (n + 1)).toNat n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A092933.P11019430149119932692

/-! ## A092933.P8895540791323779385

`eq[n, A117892(A233583(n+1))]`
-/

namespace A092933.P8895540791323779385
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117892 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A092933.P8895540791323779385

/-! ## A092933.P16685697959597567766

`eq[n, A117892(A065033(2*n))]`
-/

namespace A092933.P16685697959597567766
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117892 (A065033 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A092933.P16685697959597567766

/-!
# A092934: a(n) = floor((product of next n even numbers) / (product of first n odd numbers)).

The programs for A092934, the canonical program `A092934.P10273152657809498967` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A092934 has offset 1).

The definition of A092934 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A092934.P10273152657809498967

`floor(2^(n+1)*A057003(n+1)/A001147(n+1))`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A092934

/-- `floor(2^(n+1)*A057003(n+1)/A001147(n+1))` -/
def P10273152657809498967.Spec : Prop :=
  ∀ n, P10273152657809498967.a n = A092934 (n + 1)

theorem P10273152657809498967.correct : P10273152657809498967.Spec := by
  intro n
  simp only [A092934, Nat.add_sub_cancel]

end A092934

/-!
# A092935: a(1) = 1; a(n) = floor {(n+1)(n+2)(n+3)...(n+k)}/{(n-1)(n-2)(n-3)...(n-k)} for the least value of k.

The programs for A092935, there is no canonical definition to state claims against.
-/

/-! ## A092935.P13414654045054689369

`or(A328400(n+1), A375931(A000108(n)))`
-/

namespace A092935.P13414654045054689369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A328400 (n + 1)) (A375931 (A000108 n).toNat)

end

end A092935.P13414654045054689369

/-!
# A092936: Area of n-th triple of hexagons around a triangle.

The programs for A092936, the canonical program `A092936.P3246854417782446817` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A092936 has offset 1).

The definition of A092936 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A092936.P5031475201576095325

`ogf((1-x)/(1-10x-10x^2+x^3))`
-/

namespace A092936.P5031475201576095325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -1] [1, -10, -10, 1] n

end

end A092936.P5031475201576095325

namespace A092936

/-- `ogf((1-x)/(1-10x-10x^2+x^3))` -/
def P5031475201576095325.Spec : Prop :=
  ∀ n, P5031475201576095325.a n = A092936 (n + 1)

end A092936

/-! ## A092936.P16309875880542344920

`10*(a(n-1)+a(n-2))-a(n-3)` with `a(0)=1, a(1)=9, a(2)=100`
-/

namespace A092936.P16309875880542344920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 9, 100] fun n a =>
  10 * (a (n - 1) + a (n - 2)) - a (n - 3)

end

end A092936.P16309875880542344920

namespace A092936

/-- `10*(a(n-1)+a(n-2))-a(n-3)` -/
def P16309875880542344920.Spec : Prop :=
  ∀ n, P16309875880542344920.a n = A092936 (n + 1)

end A092936

/-! ## A092936.P3246854417782446817

`A006190(n+1)²`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A092936

/-- `A006190(n+1)²` -/
def P3246854417782446817.Spec : Prop :=
  ∀ n, P3246854417782446817.a n = A092936 (n + 1)

theorem P3246854417782446817.correct : P3246854417782446817.Spec := by
  intro n
  simp only [A092936, Nat.add_sub_cancel]

end A092936

/-! ## A092936.P16121490541860507442

`round(((3+sqrt(13))^(n+1))²/(13*4^(n+1)))`
-/

namespace A092936.P16121490541860507442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (((3 + Real.sqrt (13 : ℝ)) ^ (n + 1)) ^ 2 / (13 * 4 ^ (n + 1) : ℝ))

end

end A092936.P16121490541860507442

namespace A092936

/-- `round(((3+sqrt(13))^(n+1))²/(13*4^(n+1)))` -/
def P16121490541860507442.Spec : Prop :=
  ∀ n, P16121490541860507442.a n = A092936 (n + 1)

end A092936

/-! ## A092936.P4199577011436207608

`∑[a(n-2)+3*a(n-1)]²` with `a(0)=1, a(1)=2`
-/

namespace A092936.P4199577011436207608
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 2] fun n f1 =>
  f1 (n - 2) + 3 * f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2

end

end A092936.P4199577011436207608

namespace A092936

/-- `∑[a(n-2)+3*a(n-1)]²` -/
def P4199577011436207608.Spec : Prop :=
  ∀ n, (P4199577011436207608.a n : ℤ) = A092936 (n + 1)

end A092936

/-! ## A092936.P10691291883654809967

`record[3*a(n-1)-floor(-a(n-2))]²` with `a(0)=1, a(1)=0, a(2)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A092936.P10691291883654809967
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 1] fun n f1 =>
  3 * f1 (n - 1) - (-f1 (n - 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) ^ 2

end

end A092936.P10691291883654809967

namespace A092936

/-- `record[3*a(n-1)-floor(-a(n-2))]²` -/
def P10691291883654809967.Spec : Prop :=
  ∀ n, P10691291883654809967.a n = A092936 (n + 1)

end A092936

/-! ## A092936.P1316083079690969761

`record[3-(3*(1-a(n-1))-a(n-2))]²` with `a(0)=1, a(1)=0, a(2)=1`
-/

namespace A092936.P1316083079690969761
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 1] fun n f1 =>
  3 - (3 * (1 - f1 (n - 1)) - f1 (n - 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) ^ 2

end

end A092936.P1316083079690969761

namespace A092936

/-- `record[3-(3*(1-a(n-1))-a(n-2))]²` -/
def P1316083079690969761.Spec : Prop :=
  ∀ n, P1316083079690969761.a n = A092936 (n + 1)

end A092936

/-! ## A092936.P4021026482263051561

`record[a(n-2)+a(n-1)/(1-2/3)]²` with `a(0)=1, a(1)=0, a(2)=1`
-/

namespace A092936.P4021026482263051561
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [1, 0, 1] fun n f1 =>
  f1 (n - 2) + f1 (n - 1) / (1 - (2 : ℚ) / 3)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) ^ 2

end

end A092936.P4021026482263051561

namespace A092936

/-- `record[a(n-2)+a(n-1)/(1-2/3)]²` -/
def P4021026482263051561.Spec : Prop :=
  ∀ n, P4021026482263051561.a n = (A092936 (n + 1) : ℚ)

end A092936

/-! ## A092936.P305334408080942236

`A089931(2*n)`
-/

namespace A092936.P305334408080942236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089931 (2 * n)

end

end A092936.P305334408080942236

namespace A092936

/-- `A089931(2*n)` -/
def P305334408080942236.Spec : Prop :=
  ∀ n, P305334408080942236.a n = A092936 (n + 1)

end A092936

/-! ## A092936.P4444351091367421088

`∑[A052924(n)]²`
-/

namespace A092936.P4444351091367421088
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052924 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2

end

end A092936.P4444351091367421088

namespace A092936

/-- `∑[A052924(n)]²` -/
def P4444351091367421088.Spec : Prop :=
  ∀ n, P4444351091367421088.a n = A092936 (n + 1)

end A092936

/-!
# A092938: a(n) = least prime p such that 2*prime(n) - p is prime.

The programs for A092938, there is no canonical definition to state claims against.
-/

/-! ## A092938.P7032561340992033785

`A000040(n+1)-A104197(n+1)`
-/

namespace A092938.P7032561340992033785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) - A104197 (n + 1)

end

end A092938.P7032561340992033785

/-! ## A092938.P4842760241607671358

`A020481(Δ[A007504(n)])`
-/

namespace A092938.P4842760241607671358
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020481 (f1 (n + 1) - f1 n).toNat

end

end A092938.P4842760241607671358

/-! ## A092938.P2542706503869816454

`A020481(A000040(1+n))`
-/

namespace A092938.P2542706503869816454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020481 (A000040 (1 + n)).toNat

end

end A092938.P2542706503869816454

/-! ## A092938.P6424731049296558100

`A020481(A008578(n+2))`
-/

namespace A092938.P6424731049296558100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020481 (A008578 (n + 2)).toNat

end

end A092938.P6424731049296558100

/-! ## A092938.P3670980141818582454

`A020481(A182986(n+2))`
-/

namespace A092938.P3670980141818582454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020481 (A182986 (n + 2)).toNat

end

end A092938.P3670980141818582454

/-! ## A092938.P16562323405537940527

`A020481(record[A006530(n+2)])`
-/

namespace A092938.P16562323405537940527
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020481 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A092938.P16562323405537940527

/-! ## A092938.P1479032556502301353

`A020481(record[A020482(n+2)])`
-/

namespace A092938.P1479032556502301353
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020482 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020481 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A092938.P1479032556502301353

/-! ## A092938.P4417400725330683113

`A020481(record[A020639(n+2)])`
-/

namespace A092938.P4417400725330683113
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020481 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A092938.P4417400725330683113

/-! ## A092938.P8605698272903095334

`A020481(A014692(n+1)+n)`
-/

namespace A092938.P8605698272903095334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020481 (A014692 (n + 1) + (n : ℤ)).toNat

end

end A092938.P8605698272903095334

/-! ## A092938.P15478518510544868737

`A020481(record[A039649(n+1)])`
-/

namespace A092938.P15478518510544868737
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039649 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020481 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A092938.P15478518510544868737

/-! ## A092938.P11506272329684560008

`A020481(record[A014963(n+2)])`
-/

namespace A092938.P11506272329684560008
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020481 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A092938.P11506272329684560008

/-! ## A092938.P375027225171889498

`A020481(record[A020500(n+2)])`
-/

namespace A092938.P375027225171889498
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020500 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020481 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A092938.P375027225171889498

/-! ## A092938.P17071074368353341716

`A210957(A037168(n+1))`
-/

namespace A092938.P17071074368353341716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210957 (A037168 (n + 1)).toNat

end

end A092938.P17071074368353341716

/-! ## A092938.P7515909803813945316

`A210957(A076274(n+2)-1)`
-/

namespace A092938.P7515909803813945316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210957 (A076274 (n + 2) - 1).toNat

end

end A092938.P7515909803813945316

/-! ## A092938.P17065482812233759605

`A020639(A073046(record[A020639(n+2)]))`
-/

namespace A092938.P17065482812233759605
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A073046 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat).toNat

end

end A092938.P17065482812233759605

/-! ## A092938.P18268230965294084205

`p?[A020481(n+2)*A284639(n+2)]`
-/

namespace A092938.P18268230965294084205
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020481 (n + 2) * A284639 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A092938.P18268230965294084205

/-!
# A092940: a(n) = largest prime p such that 2*prime(n) - p is prime.

The programs for A092940, there is no canonical definition to state claims against.
-/

/-! ## A092940.P1752749468318961709

`2*A000040(n+1)-A092938(n+1)`
-/

namespace A092940.P1752749468318961709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000040 (n + 1) - A092938 (n + 1)

end

end A092940.P1752749468318961709

/-! ## A092940.P6802415046545421379

`A020482(p?[comp[n²]])`
-/

namespace A092940.P6802415046545421379
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020482 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A092940.P6802415046545421379

/-! ## A092940.P6597961571309540667

`A020482(Δ[A007504(n)])`
-/

namespace A092940.P6597961571309540667
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020482 (f1 (n + 1) - f1 n).toNat

end

end A092940.P6597961571309540667

/-! ## A092940.P8413670147201281684

`A020482(record[A051698(n)])`
-/

namespace A092940.P8413670147201281684
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051698 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020482 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A092940.P8413670147201281684

/-! ## A092940.P14358331838899295414

`A020482(comp[A103164(n)])`
-/

namespace A092940.P14358331838899295414
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103164 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020482 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A092940.P14358331838899295414

/-! ## A092940.P15180013546122197588

`A020482(A000040(n+1))`
-/

namespace A092940.P15180013546122197588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020482 (A000040 (n + 1)).toNat

end

end A092940.P15180013546122197588

/-! ## A092940.P676008502677948827

`A020482(A216883(n+1))`
-/

namespace A092940.P676008502677948827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020482 (A216883 (n + 1)).toNat

end

end A092940.P676008502677948827

/-! ## A092940.P14917331760242061578

`A020482(A216884(n+1))`
-/

namespace A092940.P14917331760242061578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020482 (A216884 (n + 1)).toNat

end

end A092940.P14917331760242061578

/-! ## A092940.P7529497039719782642

`A020482(A216885(n+1))`
-/

namespace A092940.P7529497039719782642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020482 (A216885 (n + 1)).toNat

end

end A092940.P7529497039719782642

/-! ## A092940.P3169696288531426188

`A020482(A216886(n+1))`
-/

namespace A092940.P3169696288531426188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020482 (A216886 (n + 1)).toNat

end

end A092940.P3169696288531426188

/-!
# A092942: A Fibonacci sequence with "corrections" at every third step: -++-++-++-++-++..., i.e., at every 3rd step there is a subtraction instead of an addition.

The programs for A092942, the canonical program `A092942.P17970392237867375467` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A092942 has offset 0).

The definition of A092942 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A092942.P15055074609105907577

`ogf((x+x^2+2x^3+x^4-x^5)/(1-2x^3+x^6))`
-/

namespace A092942.P15055074609105907577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1, 1, 2, 1, -1] [1, 0, 0, -2, 0, 0, 1] n

end

end A092942.P15055074609105907577

namespace A092942

/-- `ogf((x+x^2+2x^3+x^4-x^5)/(1-2x^3+x^6))` -/
def P15055074609105907577.Spec : Prop :=
  ∀ n, P15055074609105907577.a n = A092942 n

end A092942

/-! ## A092942.P17970392237867375467

`2*a(n-3)-a(n-6)` with `a(0)=0, a(1)=1, a(2)=1, a(3)=2, a(4)=3, a(5)=1`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A092942

/-- `2*a(n-3)-a(n-6)` -/
def P17970392237867375467.Spec : Prop :=
  ∀ n, P17970392237867375467.a n = A092942 n

theorem P17970392237867375467.correct : P17970392237867375467.Spec := by
  intro n
  simp only [A092942]

end A092942

/-! ## A092942.P15573272359870854060

`gcd(C(n, 2)%3, ∑[n²%3])`
-/

namespace A092942.P15573272359870854060
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2 % 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd (Nat.choose n 2 % 3) (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A092942.P15573272359870854060

namespace A092942

/-- `gcd(C(n, 2)%3, ∑[n²%3])` -/
def P15573272359870854060.Spec : Prop :=
  ∀ n, (P15573272359870854060.a n : ℤ) = A092942 n

end A092942

/-! ## A092942.P10078505800471950616

`C(round(2*n/3), a(n-1))` with `a(0)=0`
-/

namespace A092942.P10078505800471950616
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  Nat.choose (SequenceMachineLib.roundAway (2 * ((n : ℚ) / 3))).toNat (a (n - 1))

end

end A092942.P10078505800471950616

namespace A092942

/-- `C(round(2*n/3), a(n-1))` -/
def P10078505800471950616.Spec : Prop :=
  ∀ n, (P10078505800471950616.a n : ℤ) = A092942 n

end A092942

/-! ## A092942.P15909697719683643808

`gcd(round(2*n/3), ∑[(2*n)²])`
-/

namespace A092942.P15909697719683643808
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (2 * n) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (SequenceMachineLib.roundAway (2 * ((n : ℚ) / 3))) ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A092942.P15909697719683643808

namespace A092942

/-- `gcd(round(2*n/3), ∑[(2*n)²])` -/
def P15909697719683643808.Spec : Prop :=
  ∀ n, (P15909697719683643808.a n : ℤ) = A092942 n

end A092942

/-! ## A092942.P3508674380395239574

`abs(1-round((lcm(3, n+1)-n)/3))`
-/

namespace A092942.P3508674380395239574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - SequenceMachineLib.roundAway (((Nat.lcm 3 (n + 1) : ℤ) - (n : ℤ) : ℚ) / 3)|

end

end A092942.P3508674380395239574

namespace A092942

/-- `abs(1-round((lcm(3, n+1)-n)/3))` -/
def P3508674380395239574.Spec : Prop :=
  ∀ n, P3508674380395239574.a n = A092942 n

end A092942

/-! ## A092942.P17851801540790489686

`round(2*n/3)^((n+1)²%3)`
-/

namespace A092942.P17851801540790489686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (2 * ((n : ℚ) / 3)) ^ ((n + 1) ^ 2 % 3)

end

end A092942.P17851801540790489686

namespace A092942

/-- `round(2*n/3)^((n+1)²%3)` -/
def P17851801540790489686.Spec : Prop :=
  ∀ n, P17851801540790489686.a n = A092942 n

end A092942

/-! ## A092942.P3137862919909310936

`round(2*n/3)^∑[1-n%3]`
-/

namespace A092942.P3137862919909310936
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ((n % 3 : ℕ) : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.roundAway (2 * ((n : ℚ) / 3)) : ℚ) ^ (∑ j ∈ Finset.range (n + 1), f1 j : ℤ)

end

end A092942.P3137862919909310936

namespace A092942

/-- `round(2*n/3)^∑[1-n%3]` -/
def P3137862919909310936.Spec : Prop :=
  ∀ n, P3137862919909310936.a n = (A092942 n : ℚ)

end A092942

/-! ## A092942.P386896788934431805

`a(n-3)+3-gcd(3, n+1)` with `a(0)=0, a(1)=1, a(2)=1`
-/

namespace A092942.P386896788934431805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 1] fun n a =>
  a (n - 3) + (3 - (Nat.gcd 3 (n + 1) : ℤ))

end

end A092942.P386896788934431805

namespace A092942

/-- `a(n-3)+3-gcd(3, n+1)` -/
def P386896788934431805.Spec : Prop :=
  ∀ n, P386896788934431805.a n = A092942 n

end A092942

/-! ## A092942.P18071139017908678887

`a(n-3)+2*a(n-2)%2` with `a(0)=0, a(1)=1, a(2)=1`
-/

namespace A092942.P18071139017908678887
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 1] fun n a =>
  a (n - 3) + 2 * (a (n - 2) % 2)

end

end A092942.P18071139017908678887

namespace A092942

/-- `a(n-3)+2*a(n-2)%2` -/
def P18071139017908678887.Spec : Prop :=
  ∀ n, (P18071139017908678887.a n : ℤ) = A092942 n

end A092942

/-! ## A092942.P9433601471384255483

`a(n-3)+1-(-1)^a(n-2)` with `a(0)=0, a(1)=1, a(2)=1`
-/

namespace A092942.P9433601471384255483
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.rec [0, 1, 1] fun n a =>
  a (n - 3) + 1 - (-1 : ℝ) ^ (a (n - 2))

end

end A092942.P9433601471384255483

namespace A092942

/-- `a(n-3)+1-(-1)^a(n-2)` -/
def P9433601471384255483.Spec : Prop :=
  ∀ n, P9433601471384255483.a n = (A092942 n : ℝ)

end A092942

/-! ## A092942.P14346974330509717245

`1-((-1)^a(n-2)-a(n-3))` with `a(0)=0, a(1)=1, a(2)=1`
-/

namespace A092942.P14346974330509717245
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.rec [0, 1, 1] fun n a =>
  1 - ((-1 : ℝ) ^ (a (n - 2)) - a (n - 3))

end

end A092942.P14346974330509717245

namespace A092942

/-- `1-((-1)^a(n-2)-a(n-3))` -/
def P14346974330509717245.Spec : Prop :=
  ∀ n, P14346974330509717245.a n = (A092942 n : ℝ)

end A092942

/-! ## A092942.P4491768310477321634

`C(a(n-2)+a(n-1), and(1, a(n-2)))` with `a(0)=0, a(1)=1`
-/

namespace A092942.P4491768310477321634
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n a =>
  Nat.choose (a (n - 2) + a (n - 1)) (Nat.land 1 (a (n - 2)))

end

end A092942.P4491768310477321634

namespace A092942

/-- `C(a(n-2)+a(n-1), and(1, a(n-2)))` -/
def P4491768310477321634.Spec : Prop :=
  ∀ n, (P4491768310477321634.a n : ℤ) = A092942 n

end A092942

/-! ## A092942.P7839810439826728940

`(a(n-1)+a(n-2))%(a(n-3)+3)` with `a(0)=0, a(1)=1, a(2)=1`
-/

namespace A092942.P7839810439826728940
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 1] fun n a =>
  (a (n - 1) + a (n - 2)) % (a (n - 3) + 3)

end

end A092942.P7839810439826728940

namespace A092942

/-- `(a(n-1)+a(n-2))%(a(n-3)+3)` -/
def P7839810439826728940.Spec : Prop :=
  ∀ n, (P7839810439826728940.a n : ℤ) = A092942 n

end A092942

/-! ## A092942.P6872687866070205891

`abs(1-A117909(n))`
-/

namespace A092942.P6872687866070205891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - A117909 n|

end

end A092942.P6872687866070205891

namespace A092942

/-- `abs(1-A117909(n))` -/
def P6872687866070205891.Spec : Prop :=
  ∀ n, P6872687866070205891.a n = A092942 n

end A092942

/-! ## A092942.P14699116032381771794

`A181983(a(n-2))+a(n-1)` with `a(0)=0, a(1)=1`
-/

namespace A092942.P14699116032381771794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  A181983 (a (n - 2)).toNat + a (n - 1)

end

end A092942.P14699116032381771794

namespace A092942

/-- `A181983(a(n-2))+a(n-1)` -/
def P14699116032381771794.Spec : Prop :=
  ∀ n, P14699116032381771794.a n = A092942 n

end A092942

/-! ## A092942.P10258508315477677273

`A186731(n)+A131358(n)`
-/

namespace A092942.P10258508315477677273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186731 n + A131358 n

end

end A092942.P10258508315477677273

namespace A092942

/-- `A186731(n)+A131358(n)` -/
def P10258508315477677273.Spec : Prop :=
  ∀ n, P10258508315477677273.a n = A092942 n

end A092942

/-! ## A092942.P3899832622996483047

`A117909(n)-A131561(n)`
-/

namespace A092942.P3899832622996483047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117909 n - A131561 n

end

end A092942.P3899832622996483047

namespace A092942

/-- `A117909(n)-A131561(n)` -/
def P3899832622996483047.Spec : Prop :=
  ∀ n, P3899832622996483047.a n = A092942 n

end A092942

/-! ## A092942.P1942170422305550455

`A385938(n)%A319980(n)`
-/

namespace A092942.P1942170422305550455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A385938 n) (A319980 n)

end

end A092942.P1942170422305550455

namespace A092942

/-- `A385938(n)%A319980(n)` -/
def P1942170422305550455.Spec : Prop :=
  ∀ n, P1942170422305550455.a n = A092942 n

end A092942

/-! ## A092942.P5977477208351975246

`A322042(n+1)/A003417(n)`
-/

namespace A092942.P5977477208351975246
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A322042 (n + 1) : ℚ) / (A003417 n : ℚ)

end

end A092942.P5977477208351975246

namespace A092942

/-- `A322042(n+1)/A003417(n)` -/
def P5977477208351975246.Spec : Prop :=
  ∀ n, P5977477208351975246.a n = (A092942 n : ℚ)

end A092942

/-!
# A092946: Group the natural numbers so that the n-th group contains n numbers whose sum as well as the group product +1 is prime. Sequence contains the primes arising as the sum of the terms of groups.

The programs for A092946, there is no canonical definition to state claims against.
-/

/-! ## A092946.P11655130118599164330

`record[A096916(Δ[n^3])]`
-/

namespace A092946.P11655130118599164330
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 3

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096916 ((f2 (n + 1) : ℤ) - (f2 n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A092946.P11655130118599164330

/-! ## A092946.P7418974657179938225

`record[A020639(A006881(Δ[n^3]))]`
-/

namespace A092946.P7418974657179938225
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 3

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A006881 ((f2 (n + 1) : ℤ) - (f2 n : ℤ)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A092946.P7418974657179938225

/-!
# A092949: Numbers of the form prime(n+1) + prime(n) + 1.

The programs for A092949, the canonical program `A092949.P1382492647621219255` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A092949 has offset 1).

The definition of A092949 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A092949.P1382492647621219255

`A001043(n+1)+1`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A092949

/-- `A001043(n+1)+1` -/
def P1382492647621219255.Spec : Prop :=
  ∀ n, P1382492647621219255.a n = A092949 (n + 1)

theorem P1382492647621219255.correct : P1382492647621219255.Spec := by
  intro n
  simp only [A092949, Nat.add_sub_cancel]

end A092949

/-! ## A092949.P1337608346135383479

`A000040(n+2)+A000040(n+1)+1`
-/

namespace A092949.P1337608346135383479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 2) + A000040 (n + 1) + 1

end

end A092949.P1337608346135383479

namespace A092949

/-- `A000040(n+2)+A000040(n+1)+1` -/
def P1337608346135383479.Spec : Prop :=
  ∀ n, P1337608346135383479.a n = A092949 (n + 1)

theorem P1337608346135383479.correct : P1337608346135383479.Spec := by
  intro n
  simp only [A092949, Nat.add_sub_cancel, A092949.P1337608346135383479.a, A092949.P1382492647621219255.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A001043, A001043.P18269783162673735460.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A092949

/-! ## A092949.P2008220076544364453

`Δ[A061802(n)]+1`
-/

namespace A092949.P2008220076544364453
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061802 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + 1

end

end A092949.P2008220076544364453

namespace A092949

/-- `Δ[A061802(n)]+1` -/
def P2008220076544364453.Spec : Prop :=
  ∀ n, P2008220076544364453.a n = A092949 (n + 1)

end A092949

/-! ## A092949.P2393624420764499301

`∑[A075527(n)]+4`
-/

namespace A092949.P2393624420764499301
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075527 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 4

end

end A092949.P2393624420764499301

namespace A092949

/-- `∑[A075527(n)]+4` -/
def P2393624420764499301.Spec : Prop :=
  ∀ n, P2393624420764499301.a n = A092949 (n + 1)

end A092949

/-! ## A092949.P14211593681182349651

`1+A001043(1+n)`
-/

namespace A092949.P14211593681182349651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 + A001043 (1 + n)

end

end A092949.P14211593681182349651

namespace A092949

/-- `1+A001043(1+n)` -/
def P14211593681182349651.Spec : Prop :=
  ∀ n, P14211593681182349651.a n = A092949 (n + 1)

theorem P14211593681182349651.correct : P14211593681182349651.Spec := by
  intro n
  simp only [A092949, Nat.add_sub_cancel, A092949.P14211593681182349651.a, A092949.P1382492647621219255.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A092949

/-! ## A092949.P4389332056957854311

`A011974(2+n)+1`
-/

namespace A092949.P4389332056957854311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011974 (2 + n) + 1

end

end A092949.P4389332056957854311

namespace A092949

/-- `A011974(2+n)+1` -/
def P4389332056957854311.Spec : Prop :=
  ∀ n, P4389332056957854311.a n = A092949 (n + 1)

end A092949

/-! ## A092949.P4776116260158367464

`A031131(n)+a(n-1)` with `a(0)=6`
-/

namespace A092949.P4776116260158367464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [6] fun n a =>
  A031131 n + a (n - 1)

end

end A092949.P4776116260158367464

namespace A092949

/-- `A031131(n)+a(n-1)` -/
def P4776116260158367464.Spec : Prop :=
  ∀ n, P4776116260158367464.a n = A092949 (n + 1)

end A092949

/-! ## A092949.P14253894528107318060

`ceil(sqrt(2*A069484(n+1)))`
-/

namespace A092949.P14253894528107318060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (2 * A069484 (n + 1) : ℝ)⌉

end

end A092949.P14253894528107318060

namespace A092949

/-- `ceil(sqrt(2*A069484(n+1)))` -/
def P14253894528107318060.Spec : Prop :=
  ∀ n, P14253894528107318060.a n = A092949 (n + 1)

end A092949

/-! ## A092949.P2028694509315682932

`floor(2*sqrt(A123134(n+1)))+1`
-/

namespace A092949.P2028694509315682932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊2 * Real.sqrt (A123134 (n + 1) : ℝ)⌋ + 1

end

end A092949.P2028694509315682932

namespace A092949

/-- `floor(2*sqrt(A123134(n+1)))+1` -/
def P2028694509315682932.Spec : Prop :=
  ∀ n, P2028694509315682932.a n = A092949 (n + 1)

end A092949

/-! ## A092949.P14485991589199627629

`floor(2*sqrt(A006094(n+1)))+2`
-/

namespace A092949.P14485991589199627629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊2 * Real.sqrt (A006094 (n + 1) : ℝ)⌋ + 2

end

end A092949.P14485991589199627629

namespace A092949

/-- `floor(2*sqrt(A006094(n+1)))+2` -/
def P14485991589199627629.Spec : Prop :=
  ∀ n, P14485991589199627629.a n = A092949 (n + 1)

end A092949

/-! ## A092949.P1644331240759402613

`A014692(n+1)+A014690(n+1)`
-/

namespace A092949.P1644331240759402613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014692 (n + 1) + A014690 (n + 1)

end

end A092949.P1644331240759402613

namespace A092949

/-- `A014692(n+1)+A014690(n+1)` -/
def P1644331240759402613.Spec : Prop :=
  ∀ n, P1644331240759402613.a n = A092949 (n + 1)

theorem P1644331240759402613.correct : P1644331240759402613.Spec := by
  intro n
  simp only [A092949, Nat.add_sub_cancel, A092949.P1644331240759402613.a, A092949.P1382492647621219255.a, A001043, A001043.P18269783162673735460.a, A014690, A014690.P15659938011012629912.a, A014692, A014692.P2004927767556050134.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A092949

/-! ## A092949.P2232572317374104710

`A048974(n+1)+A006093(n+1)`
-/

namespace A092949.P2232572317374104710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048974 (n + 1) + A006093 (n + 1)

end

end A092949.P2232572317374104710

namespace A092949

/-- `A048974(n+1)+A006093(n+1)` -/
def P2232572317374104710.Spec : Prop :=
  ∀ n, P2232572317374104710.a n = A092949 (n + 1)

theorem P2232572317374104710.correct : P2232572317374104710.Spec := by
  intro n
  simp only [A092949, Nat.add_sub_cancel, A092949.P2232572317374104710.a, A092949.P1382492647621219255.a, A001043, A001043.P18269783162673735460.a, A006093, A006093.P2906174024863549003.a, A048974, A048974.P12620924037349992420.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A065091, A065091.P6971844946592549357.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A092949

/-! ## A092949.P10276850715483502906

`A072055(n+1)+A001223(n+1)`
-/

namespace A092949.P10276850715483502906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072055 (n + 1) + A001223 (n + 1)

end

end A092949.P10276850715483502906

namespace A092949

/-- `A072055(n+1)+A001223(n+1)` -/
def P10276850715483502906.Spec : Prop :=
  ∀ n, P10276850715483502906.a n = A092949 (n + 1)

theorem P10276850715483502906.correct : P10276850715483502906.Spec := by
  intro n
  simp only [A092949, Nat.add_sub_cancel, A092949.P10276850715483502906.a, A092949.P1382492647621219255.a, A001043, A001043.P18269783162673735460.a, A001223, A001223.P5034056745985311719.a, A072055, A072055.P8252801676711237860.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A092949

/-! ## A092949.P14210241884817730406

`A065091(n+1)+A008864(n+1)`
-/

namespace A092949.P14210241884817730406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (n + 1) + A008864 (n + 1)

end

end A092949.P14210241884817730406

namespace A092949

/-- `A065091(n+1)+A008864(n+1)` -/
def P14210241884817730406.Spec : Prop :=
  ∀ n, P14210241884817730406.a n = A092949 (n + 1)

theorem P14210241884817730406.correct : P14210241884817730406.Spec := by
  intro n
  simp only [A092949, Nat.add_sub_cancel, A092949.P14210241884817730406.a, A092949.P1382492647621219255.a, A001043, A001043.P18269783162673735460.a, A008864, A008864.P9177617808325052279.a, A065091, A065091.P6971844946592549357.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A092949

/-! ## A092949.P11248616808502568645

`A089241(n+1)+A046933(n+1)`
-/

namespace A092949.P11248616808502568645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089241 (n + 1) + A046933 (n + 1)

end

end A092949.P11248616808502568645

namespace A092949

/-- `A089241(n+1)+A046933(n+1)` -/
def P11248616808502568645.Spec : Prop :=
  ∀ n, P11248616808502568645.a n = A092949 (n + 1)

theorem P11248616808502568645.correct : P11248616808502568645.Spec := by
  intro n
  simp only [A092949, Nat.add_sub_cancel, A092949.P11248616808502568645.a, A092949.P1382492647621219255.a, A001043, A001043.P18269783162673735460.a, A046933, A046933.P9479947770746769512.a, A089241, A089241.P14705987553220613803.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A092949

/-! ## A092949.P13615023124122024756

`A175216(n+1)+A045344(n+1)`
-/

namespace A092949.P13615023124122024756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175216 (n + 1) + A045344 (n + 1)

end

end A092949.P13615023124122024756

namespace A092949

/-- `A175216(n+1)+A045344(n+1)` -/
def P13615023124122024756.Spec : Prop :=
  ∀ n, P13615023124122024756.a n = A092949 (n + 1)

end A092949

/-! ## A092949.P2506501111728285620

`A283623(n+1)+A006254(n+1)`
-/

namespace A092949.P2506501111728285620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283623 (n + 1) + A006254 (n + 1)

end

end A092949.P2506501111728285620

namespace A092949

/-- `A283623(n+1)+A006254(n+1)` -/
def P2506501111728285620.Spec : Prop :=
  ∀ n, P2506501111728285620.a n = A092949 (n + 1)

end A092949

/-! ## A092949.P5886327450128289089

`A175223(n+1)+A118538(n+1)`
-/

namespace A092949.P5886327450128289089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175223 (n + 1) + A118538 (n + 1)

end

end A092949.P5886327450128289089

namespace A092949

/-- `A175223(n+1)+A118538(n+1)` -/
def P5886327450128289089.Spec : Prop :=
  ∀ n, P5886327450128289089.a n = A092949 (n + 1)

theorem P5886327450128289089.correct : P5886327450128289089.Spec := by
  intro n
  simp only [A092949, Nat.add_sub_cancel, A092949.P5886327450128289089.a, A092949.P1382492647621219255.a, A001043, A001043.P18269783162673735460.a, A118538, A118538.P16184586288289674409.a, A175223, A175223.P2338184414980826064.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A092949

/-! ## A092949.P13349132614399460285

`A175221(n+1)+A154115(n+1)`
-/

namespace A092949.P13349132614399460285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175221 (n + 1) + A154115 (n + 1)

end

end A092949.P13349132614399460285

namespace A092949

/-- `A175221(n+1)+A154115(n+1)` -/
def P13349132614399460285.Spec : Prop :=
  ∀ n, P13349132614399460285.a n = A092949 (n + 1)

theorem P13349132614399460285.correct : P13349132614399460285.Spec := by
  intro n
  simp only [A092949, Nat.add_sub_cancel, A092949.P13349132614399460285.a, A092949.P1382492647621219255.a, A001043, A001043.P18269783162673735460.a, A154115, A154115.P220062109648616098.a, A175221, A175221.P11226718615464862765.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A086801, A086801.P17699144881820784956.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A092949

/-! ## A092949.P1075453165432937351

`A298252(n+1)+A040976(n+1)`
-/

namespace A092949.P1075453165432937351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298252 (n + 1) + A040976 (n + 1)

end

end A092949.P1075453165432937351

namespace A092949

/-- `A298252(n+1)+A040976(n+1)` -/
def P1075453165432937351.Spec : Prop :=
  ∀ n, P1075453165432937351.a n = A092949 (n + 1)

theorem P1075453165432937351.correct : P1075453165432937351.Spec := by
  intro n
  simp only [A092949, Nat.add_sub_cancel, A092949.P1075453165432937351.a, A092949.P1382492647621219255.a, A001043, A001043.P18269783162673735460.a, A040976, A040976.P11599754272797435513.a, A298252, A298252.P859259455876682479.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A113935, A113935.P8490065931569907193.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A092949

/-!
# A092953: Number of primes of the form n+p, where p is a prime < n.

The programs for A092953, there is no canonical definition to state claims against.
-/

/-! ## A092953.P7638607345262075204

`A001222(n+1)-A352824(A160256(n+1))`
-/

namespace A092953.P7638607345262075204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1) - A352824 (A160256 (n + 1)).toNat

end

end A092953.P7638607345262075204

/-! ## A092953.P1370931528514228000

`and(3^n, A001221(A256494(n+2)))`
-/

namespace A092953.P1370931528514228000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (3 ^ n : ℤ) (A001221 (A256494 (n + 2)).toNat)

end

end A092953.P1370931528514228000

/-! ## A092953.P3096292078735767541

`and((-1)^n, A001221(ceil(A007910(n)/2)))`
-/

namespace A092953.P3096292078735767541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land ((-1) ^ n) (A001221 ⌈(A007910 n : ℚ) / 2⌉.toNat)

end

end A092953.P3096292078735767541

/-! ## A092953.P15759948456174751663

`and(A001221(A256494(n+2)), A000244(n))`
-/

namespace A092953.P15759948456174751663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A001221 (A256494 (n + 2)).toNat) (A000244 n)

end

end A092953.P15759948456174751663

/-! ## A092953.P2250868096148120950

`and(A001221(A256494(n+2)), A033999(n))`
-/

namespace A092953.P2250868096148120950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A001221 (A256494 (n + 2)).toNat) (A033999 n)

end

end A092953.P2250868096148120950

/-!
# A092956: a(n) = (2*n+2)!/((n+2)*n!).

The programs for A092956, the canonical program `A092956.P14125771003532820417` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A092956 has offset 0).

The definition of A092956 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A092956.P5242141046718897188

`(n+1)!*C(2*n+2, n)`
-/

namespace A092956.P5242141046718897188
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (n + 1) * Nat.choose (2 * n + 2) n

end

end A092956.P5242141046718897188

namespace A092956

/-- `(n+1)!*C(2*n+2, n)` -/
def P5242141046718897188.Spec : Prop :=
  ∀ n, (P5242141046718897188.a n : ℤ) = A092956 n

end A092956

/-! ## A092956.P5737755959350166213

`A092582(C(2*n+2, 2)+n+1)`
-/

namespace A092956.P5737755959350166213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092582 (Nat.choose (2 * n + 2) 2 + (n + 1))

end

end A092956.P5737755959350166213

namespace A092956

/-- `A092582(C(2*n+2, 2)+n+1)` -/
def P5737755959350166213.Spec : Prop :=
  ∀ n, P5737755959350166213.a n = A092956 n

end A092956

/-! ## A092956.P14125771003532820417

`(2*n+2)!/((n+2)*n!)`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A092956

/-- `(2*n+2)!/((n+2)*n!)` -/
def P14125771003532820417.Spec : Prop :=
  ∀ n, P14125771003532820417.a n = (A092956 n : ℚ)

end A092956

/-! ## A092956.P2283386785133517964

`C(2*(n+1), n)*∏[n+1]`
-/

namespace A092956.P2283386785133517964
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (2 * (n + 1)) n * (∏ j ∈ Finset.range (n + 1), f1 j)

end

end A092956.P2283386785133517964

namespace A092956

/-- `C(2*(n+1), n)*∏[n+1]` -/
def P2283386785133517964.Spec : Prop :=
  ∀ n, (P2283386785133517964.a n : ℤ) = A092956 n

end A092956

/-! ## A092956.P1287147437218875425

`(n+1)*∏[4*n+2]/(n+2)`
-/

namespace A092956.P1287147437218875425
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n + 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) * (((∏ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / (n + 2 : ℚ))

end

end A092956.P1287147437218875425

namespace A092956

/-- `(n+1)*∏[4*n+2]/(n+2)` -/
def P1287147437218875425.Spec : Prop :=
  ∀ n, P1287147437218875425.a n = (A092956 n : ℚ)

end A092956

/-! ## A092956.P8779754286150619365

`record[-A343861(n+2)]`
-/

namespace A092956.P8779754286150619365
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A343861 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A092956.P8779754286150619365

namespace A092956

/-- `record[-A343861(n+2)]` -/
def P8779754286150619365.Spec : Prop :=
  ∀ n, P8779754286150619365.a n = A092956 n

end A092956

/-! ## A092956.P9365719504715186897

`A126804(n+1)/(n+2)`
-/

namespace A092956.P9365719504715186897
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A126804 (n + 1) : ℚ) / (n + 2 : ℚ)

end

end A092956.P9365719504715186897

namespace A092956

/-- `A126804(n+1)/(n+2)` -/
def P9365719504715186897.Spec : Prop :=
  ∀ n, P9365719504715186897.a n = (A092956 n : ℚ)

end A092956

/-! ## A092956.P13414955388513833873

`∏[4*n+2]/ratio[A004277(n+1)]`
-/

namespace A092956.P13414955388513833873
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∏ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / ((f2 (n + 1) : ℚ) / (f2 n : ℚ))

end

end A092956.P13414955388513833873

namespace A092956

/-- `∏[4*n+2]/ratio[A004277(n+1)]` -/
def P13414955388513833873.Spec : Prop :=
  ∀ n, P13414955388513833873.a n = (A092956 n : ℚ)

end A092956

/-! ## A092956.P12571486187689440178

`∏[4*n+2]/ratio[A005843(n+1)]`
-/

namespace A092956.P12571486187689440178
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∏ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / ((f2 (n + 1) : ℚ) / (f2 n : ℚ))

end

end A092956.P12571486187689440178

namespace A092956

/-- `∏[4*n+2]/ratio[A005843(n+1)]` -/
def P12571486187689440178.Spec : Prop :=
  ∀ n, P12571486187689440178.a n = (A092956 n : ℚ)

end A092956

/-! ## A092956.P3280814750473076439

`A001813(n+1)-A001761(n+1)`
-/

namespace A092956.P3280814750473076439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001813 (n + 1) - A001761 (n + 1)

end

end A092956.P3280814750473076439

namespace A092956

/-- `A001813(n+1)-A001761(n+1)` -/
def P3280814750473076439.Spec : Prop :=
  ∀ n, P3280814750473076439.a n = A092956 n

end A092956

/-!
# A092960: Least square of the form 'sum of n successive terms of a geometric progression + 1', or 0 if no such square exists.

The programs for A092960, there is no canonical definition to state claims against.
-/

/-! ## A092960.P5305415317794341959

`A070667(∑[2^n])²`
-/

namespace A092960.P5305415317794341959
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070667 (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2

end

end A092960.P5305415317794341959

/-! ## A092960.P7224836709470409155

`A070667(A126646(n))^2`
-/

namespace A092960.P7224836709470409155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070667 (A126646 n).toNat ^ 2

end

end A092960.P7224836709470409155

/-! ## A092960.P5531839027624361837

`A070667(A000225(n+1))^2`
-/

namespace A092960.P5531839027624361837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070667 (A000225 (n + 1)).toNat ^ 2

end

end A092960.P5531839027624361837

/-! ## A092960.P12289271729781457158

`(A070667(A126646(n))%A126646(n+2))²`
-/

namespace A092960.P12289271729781457158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A070667 (A126646 n).toNat) (A126646 (n + 2)) ^ 2

end

end A092960.P12289271729781457158

/-!
# A092961: Least k such that (k-1)/n and k*n + 1 both are primes.

The programs for A092961, there is no canonical definition to state claims against.
-/

/-! ## A092961.P14033490778596631400

`(1+n)*A092962(n+1)+1`
-/

namespace A092961.P14033490778596631400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 + n : ℤ) * A092962 (n + 1) + 1

end

end A092961.P14033490778596631400

/-! ## A092961.P4975878743536246292

`A020725((n+1)*A092962(n+1))`
-/

namespace A092961.P4975878743536246292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 ((n + 1 : ℤ) * A092962 (n + 1)).toNat

end

end A092961.P4975878743536246292

/-! ## A092961.P17036800094899941057

`A065475((n+1)*A092962(n+1))`
-/

namespace A092961.P17036800094899941057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 ((n + 1 : ℤ) * A092962 (n + 1)).toNat

end

end A092961.P17036800094899941057

/-! ## A092961.P5266222572992997174

`A114637((n+1)*A092962(n+1))`
-/

namespace A092961.P5266222572992997174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114637 ((n + 1 : ℤ) * A092962 (n + 1)).toNat

end

end A092961.P5266222572992997174

/-! ## A092961.P9352009768097381266

`ceil(A092962(n+1)/acot(A069782(n+1)))`
-/

namespace A092961.P9352009768097381266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A092962 (n + 1) : ℝ) / SequenceMachineLib.acot (A069782 (n + 1) : ℝ)⌉

end

end A092961.P9352009768097381266

/-! ## A092961.P11836576581759501837

`A052938(A092962(n+1)*A103517(n))`
-/

namespace A092961.P11836576581759501837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052938 (A092962 (n + 1) * A103517 n).toNat

end

end A092961.P11836576581759501837

/-! ## A092961.P1953460183973035721

`A008619(A008619(A004767(n))*A092962(n+1))`
-/

namespace A092961.P1953460183973035721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A008619 (A004767 n).toNat * A092962 (n + 1)).toNat

end

end A092961.P1953460183973035721

/-!
# A092962: Primes (A092961(n)-1)/n.

The programs for A092962, there is no canonical definition to state claims against.
-/

/-! ## A092962.P1930606704553521424

`(A092961(n+1)-1)/(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A092962.P1930606704553521424
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A092961 (n + 1) - 1 : ℚ) / (n + 1 : ℚ)

end

end A092962.P1930606704553521424

/-! ## A092962.P10846608070191875555

`A023443(A092961(n+1))/(n+1)`
-/

namespace A092962.P10846608070191875555
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A023443 (A092961 (n + 1)).toNat : ℚ) / (n + 1 : ℚ)

end

end A092962.P10846608070191875555

/-! ## A092962.P9262062344480294152

`A039649(floor(A092961(n+1)/(n+1)))`
-/

namespace A092962.P9262062344480294152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039649 ⌊(A092961 (n + 1) : ℚ) / (n + 1 : ℚ)⌋.toNat

end

end A092962.P9262062344480294152

/-! ## A092962.P11568409717683313535

`A151800(floor(A092961(n+1)/(n+2)))`
-/

namespace A092962.P11568409717683313535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 ⌊(A092961 (n + 1) : ℚ) / (n + 2 : ℚ)⌋.toNat

end

end A092962.P11568409717683313535

/-! ## A092962.P12601800353837792652

`A233583(ceil(A092961(n+1)/(n+1)))`
-/

namespace A092962.P12601800353837792652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233583 ⌈(A092961 (n + 1) : ℚ) / (n + 1 : ℚ)⌉.toNat

end

end A092962.P12601800353837792652

/-! ## A092962.P15988190960917324347

`floor(acot(A069782(n+1))*A092961(n+1))`
-/

namespace A092962.P15988190960917324347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊SequenceMachineLib.acot (A069782 (n + 1) : ℝ) * (A092961 (n + 1) : ℝ)⌋

end

end A092962.P15988190960917324347

/-!
# A092963: Primes n*A092961(n) + 1.

The programs for A092963, there is no canonical definition to state claims against.
-/

/-! ## A092963.P12603100399859060598

`(n+1)*A092961(n+1)+1`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A092963.P12603100399859060598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A092961 (n + 1) + 1

end

end A092963.P12603100399859060598

/-! ## A092963.P3385930656005128674

`(n+1)²*A092962(n+1)+n+2`
-/

namespace A092963.P3385930656005128674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℤ) * A092962 (n + 1) + (n + 2 : ℤ)

end

end A092963.P3385930656005128674

/-! ## A092963.P8714266943318673964

`A151800((n+1)*A092961(n+1))`
-/

namespace A092963.P8714266943318673964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 ((n + 1 : ℤ) * A092961 (n + 1)).toNat

end

end A092963.P8714266943318673964

/-! ## A092963.P15842447364611874777

`A151800(lcm(n+1, A092961(n+1)))`
-/

namespace A092963.P15842447364611874777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 (Int.lcm (n + 1 : ℤ) (A092961 (n + 1)))

end

end A092963.P15842447364611874777

/-! ## A092963.P9470752174965081248

`A020725((n+1)*A092961(n+1))`
-/

namespace A092963.P9470752174965081248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 ((n + 1 : ℤ) * A092961 (n + 1)).toNat

end

end A092963.P9470752174965081248

/-!
# A092964: Numbers > 1 in A051168, with a(0) = 1.

The programs for A092964, there is no canonical definition to state claims against.
-/

/-! ## A092964.P435494358328274935

`A051168(lt[n+1, A131060(n)])`
-/

namespace A092964.P435494358328274935
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131060 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051168 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A092964.P435494358328274935

/-! ## A092964.P12030571414186483735

`A051168(lt[n, A011847(n+1)²])`
-/

namespace A092964.P12030571414186483735
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011847 (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051168 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A092964.P12030571414186483735

/-! ## A092964.P4951482170020528110

`A051168(lt[A003984(n), A004247(n)])`
-/

namespace A092964.P4951482170020528110
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003984 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004247 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051168 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A092964.P4951482170020528110

/-! ## A092964.P14365715070148318903

`A051168(lt[A003984(n), A048720(n)])`
-/

namespace A092964.P14365715070148318903
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003984 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048720 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051168 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A092964.P14365715070148318903

/-! ## A092964.P13848066004230676290

`A051168(lt[A003984(n), A067138(n)])`
-/

namespace A092964.P13848066004230676290
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003984 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067138 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051168 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A092964.P13848066004230676290

/-! ## A092964.P7301665170769912578

`A051168(lt[A011847(n+1), A034851(n)])`
-/

namespace A092964.P7301665170769912578
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011847 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034851 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051168 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A092964.P7301665170769912578

/-! ## A092964.P4025005116193291639

`A051168(lt[A176270(n)+A003984(n), 1])`
-/

namespace A092964.P4025005116193291639
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176270 n + A003984 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051168 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A092964.P4025005116193291639

/-! ## A092964.P496905447855148624

`A051168(lt[A003984(n), 1-A176270(n)])`
-/

namespace A092964.P496905447855148624
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003984 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A176270 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051168 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A092964.P496905447855148624

/-! ## A092964.P8135293604124709003

`A051168(lt[A003984(n), A051168(n)²²])`
-/

namespace A092964.P8135293604124709003
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003984 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A051168 n ^ 2) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051168 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A092964.P8135293604124709003

/-! ## A092964.P6061085763041285082

`A051168(lt[n, A051168(n)*A130154(n+1)])`
-/

namespace A092964.P6061085763041285082
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051168 n * A130154 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051168 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A092964.P6061085763041285082

/-! ## A092964.P8163930665074685539

`A051168(lt[n/A130154(n+1), A051168(n)])`
-/

namespace A092964.P8163930665074685539
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / (A130154 (n + 1) : ℚ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051168 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051168 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℚ)) n)

end

end A092964.P8163930665074685539

/-! ## A092964.P8532892847265645000

`A051168(lt[n/A011847(n+1), A011847(n+1)])`
-/

namespace A092964.P8532892847265645000
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / (A011847 (n + 1) : ℚ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011847 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051168 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℚ)) n)

end

end A092964.P8532892847265645000

/-!
# A092966: Number of interior balls in a truncated tetrahedral arrangement.

The programs for A092966, the canonical program `A092966.P3958599955101723644` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A092966 has offset 1).

The definition of A092966 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A092966.P14419165221940985538

`ogf((10x+12x^2+x^3)/(1-4x+6x^2-4x^3+x^4))`
-/

namespace A092966.P14419165221940985538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 10, 12, 1] [1, -4, 6, -4, 1] n

end

end A092966.P14419165221940985538

namespace A092966

/-- `ogf((10x+12x^2+x^3)/(1-4x+6x^2-4x^3+x^4))` -/
def P14419165221940985538.Spec : Prop :=
  ∀ n, P14419165221940985538.a n = A092966 (n + 1)

end A092966

/-! ## A092966.P15912444730500472125

`1/6*n*(23*(n+1)²-19*(n+1)+6)`
-/

namespace A092966.P15912444730500472125
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 : ℚ) / 6 * (n : ℚ) * ((23 * (n + 1) ^ 2 : ℤ) - (19 * (n + 1) : ℤ) + 6 : ℚ)

end

end A092966.P15912444730500472125

namespace A092966

/-- `1/6*n*(23*(n+1)²-19*(n+1)+6)` -/
def P15912444730500472125.Spec : Prop :=
  ∀ n, P15912444730500472125.a n = (A092966 (n + 1) : ℚ)

theorem P15912444730500472125.correct : P15912444730500472125.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 | 3 =>
      simp [A092966, Nat.add_sub_cancel, A092966.P15912444730500472125.a, A092966.P3958599955101723644.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 4 =>
      have h1 := ih (m + 3) (by omega)
      have h2 := ih (m + 2) (by omega)
      have h3 := ih (m + 1) (by omega)
      have h4 := ih m (by omega)
      simp only [A092966, Nat.add_sub_cancel, A092966.P15912444730500472125.a, A092966.P3958599955101723644.a, SequenceMachineLib.memo_apply] at h1 h2 h3 h4 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 4 - 1 = m + 3 by omega, show m + 4 - 2 = m + 2 by omega, show m + 4 - 3 = m + 1 by omega, show m + 4 - 4 = m by omega, show m + 3 < m + 4 by omega, show m + 2 < m + 4 by omega, show m + 1 < m + 4 by omega, show m < m + 4 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 h4 ⊢
      rw [← h1, ← h2, ← h3, ← h4]
      first | ring1 | ring_nf | (field_simp; (first | ring1 | ring_nf)) | omega | (push_cast; ring_nf) | nlinarith

end A092966

/-! ## A092966.P3958599955101723644

`4*a(n-1)-6*a(n-2)+4*a(n-3)-a(n-4)` with `a(0)=0, a(1)=10, a(2)=52, a(3)=149`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A092966

/-- `4*a(n-1)-6*a(n-2)+4*a(n-3)-a(n-4)` -/
def P3958599955101723644.Spec : Prop :=
  ∀ n, P3958599955101723644.a n = A092966 (n + 1)

theorem P3958599955101723644.correct : P3958599955101723644.Spec := by
  intro n
  simp only [A092966, Nat.add_sub_cancel]

end A092966

/-! ## A092966.P18396782792753774374

`∑[A022280(n)]-n²`
-/

namespace A092966.P18396782792753774374
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022280 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (n ^ 2 : ℤ)

end

end A092966.P18396782792753774374

namespace A092966

/-- `∑[A022280(n)]-n²` -/
def P18396782792753774374.Spec : Prop :=
  ∀ n, P18396782792753774374.a n = A092966 (n + 1)

end A092966

/-! ## A092966.P13832905923433318427

`Δ[n²²]-A008778(n)`
-/

namespace A092966.P13832905923433318427
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n ^ 2) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ) - A008778 n

end

end A092966.P13832905923433318427

namespace A092966

/-- `Δ[n²²]-A008778(n)` -/
def P13832905923433318427.Spec : Prop :=
  ∀ n, P13832905923433318427.a n = A092966 (n + 1)

end A092966

/-! ## A092966.P2592805571480824579

`A100149(n+1)-(∑[∑[2*n+12*n-1]+1]+1)`
-/

namespace A092966.P2592805571480824579
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) + ((12 * n : ℤ) - 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100149 (n + 1) - (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A092966.P2592805571480824579

namespace A092966

/-- `A100149(n+1)-(∑[∑[2*n+12*n-1]+1]+1)` -/
def P2592805571480824579.Spec : Prop :=
  ∀ n, P2592805571480824579.a n = A092966 (n + 1)

end A092966

/-! ## A092966.P8632254825107430954

`A220443(n)+A004068(n)`
-/

namespace A092966.P8632254825107430954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220443 n + A004068 n

end

end A092966.P8632254825107430954

namespace A092966

/-- `A220443(n)+A004068(n)` -/
def P8632254825107430954.Spec : Prop :=
  ∀ n, P8632254825107430954.a n = A092966 (n + 1)

end A092966

/-! ## A092966.P3955053175050822110

`A203551(n)+A027903(n)`
-/

namespace A092966.P3955053175050822110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203551 n + A027903 n

end

end A092966.P3955053175050822110

namespace A092966

/-- `A203551(n)+A027903(n)` -/
def P3955053175050822110.Spec : Prop :=
  ∀ n, P3955053175050822110.a n = A092966 (n + 1)

end A092966

/-! ## A092966.P1400994667780386662

`A215646(n)+A051895(n)`
-/

namespace A092966.P1400994667780386662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215646 n + A051895 n

end

end A092966.P1400994667780386662

namespace A092966

/-- `A215646(n)+A051895(n)` -/
def P1400994667780386662.Spec : Prop :=
  ∀ n, P1400994667780386662.a n = A092966 (n + 1)

end A092966

/-! ## A092966.P8696630265772798122

`A281381(n)+A004467(n)`
-/

namespace A092966.P8696630265772798122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281381 n + A004467 n

end

end A092966.P8696630265772798122

namespace A092966

/-- `A281381(n)+A004467(n)` -/
def P8696630265772798122.Spec : Prop :=
  ∀ n, P8696630265772798122.a n = A092966 (n + 1)

end A092966

/-! ## A092966.P3236310559352456199

`A254407(n)+A099721(n)`
-/

namespace A092966.P3236310559352456199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254407 n + A099721 n

end

end A092966.P3236310559352456199

namespace A092966

/-- `A254407(n)+A099721(n)` -/
def P3236310559352456199.Spec : Prop :=
  ∀ n, P3236310559352456199.a n = A092966 (n + 1)

end A092966

/-! ## A092966.P12903735139284792446

`A237617(n)+A152619(n)`
-/

namespace A092966.P12903735139284792446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237617 n + A152619 n

end

end A092966.P12903735139284792446

namespace A092966

/-- `A237617(n)+A152619(n)` -/
def P12903735139284792446.Spec : Prop :=
  ∀ n, P12903735139284792446.a n = A092966 (n + 1)

end A092966

/-! ## A092966.P10082809023486564482

`A249354(n)+A162147(n)`
-/

namespace A092966.P10082809023486564482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249354 n + A162147 n

end

end A092966.P10082809023486564482

namespace A092966

/-- `A249354(n)+A162147(n)` -/
def P10082809023486564482.Spec : Prop :=
  ∀ n, P10082809023486564482.a n = A092966 (n + 1)

end A092966

/-! ## A092966.P9284833114467777293

`A258582(n)+A245301(n)`
-/

namespace A092966.P9284833114467777293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258582 n + A245301 n

end

end A092966.P9284833114467777293

namespace A092966

/-- `A258582(n)+A245301(n)` -/
def P9284833114467777293.Spec : Prop :=
  ∀ n, P9284833114467777293.a n = A092966 (n + 1)

end A092966

/-! ## A092966.P14288949048202948292

`A005906(n)-A005891(n)`
-/

namespace A092966.P14288949048202948292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005906 n - A005891 n

end

end A092966.P14288949048202948292

namespace A092966

/-- `A005906(n)-A005891(n)` -/
def P14288949048202948292.Spec : Prop :=
  ∀ n, P14288949048202948292.a n = A092966 (n + 1)

end A092966

/-! ## A092966.P12867163355336853804

`A343560(n+1)+A256645(n)`
-/

namespace A092966.P12867163355336853804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343560 (n + 1) + A256645 n

end

end A092966.P12867163355336853804

namespace A092966

/-- `A343560(n+1)+A256645(n)` -/
def P12867163355336853804.Spec : Prop :=
  ∀ n, P12867163355336853804.a n = A092966 (n + 1)

end A092966

/-! ## A092966.P14713993950191648287

`A063496(n+1)-A005920(n)`
-/

namespace A092966.P14713993950191648287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063496 (n + 1) - A005920 n

end

end A092966.P14713993950191648287

namespace A092966

/-- `A063496(n+1)-A005920(n)` -/
def P14713993950191648287.Spec : Prop :=
  ∀ n, P14713993950191648287.a n = A092966 (n + 1)

end A092966

/-! ## A092966.P4236674968549524728

`A050492(n+1)-A027378(n)`
-/

namespace A092966.P4236674968549524728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050492 (n + 1) - A027378 n

end

end A092966.P4236674968549524728

namespace A092966

/-- `A050492(n+1)-A027378(n)` -/
def P4236674968549524728.Spec : Prop :=
  ∀ n, P4236674968549524728.a n = A092966 (n + 1)

end A092966

/-! ## A092966.P16847666922988053881

`A268201(n+1)-A006503(n)`
-/

namespace A092966.P16847666922988053881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268201 (n + 1) - A006503 n

end

end A092966.P16847666922988053881

namespace A092966

/-- `A268201(n+1)-A006503(n)` -/
def P16847666922988053881.Spec : Prop :=
  ∀ n, P16847666922988053881.a n = A092966 (n + 1)

end A092966

/-! ## A092966.P13294393181651313271

`A364401(n+1)-A001844(n)`
-/

namespace A092966.P13294393181651313271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364401 (n + 1) - A001844 n

end

end A092966.P13294393181651313271

namespace A092966

/-- `A364401(n+1)-A001844(n)` -/
def P13294393181651313271.Spec : Prop :=
  ∀ n, P13294393181651313271.a n = A092966 (n + 1)

end A092966

/-!
# A092967: Largest prime of the form a squarefree number + 1 where the prime divisors of the squarefree number are < n.

The programs for A092967, there is no canonical definition to state claims against.
-/

/-! ## A092967.P12711792240847260899

`A006530(A269626(n+3)+A034386(n+1))`
-/

namespace A092967.P12711792240847260899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A269626 (n + 3) + A034386 (n + 1)).toNat

end

end A092967.P12711792240847260899

/-! ## A092967.P13052685734397678997

`∏{p}[A058312(A002796(n+1)), #]+1`
-/

namespace A092967.P13052685734397678997
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058312 (A002796 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, p + 1

end

end A092967.P13052685734397678997

/-! ## A092967.P4781482869531277373

`∏{p}[∏[gcd(n, n%2)+1], #]+1`
-/

namespace A092967.P4781482869531277373
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd n (n % 2) + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), p + 1

end

end A092967.P4781482869531277373

/-! ## A092967.P1708341005281551785

`A020725(A034386(n+1))`
-/

namespace A092967.P1708341005281551785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (A034386 (n + 1)).toNat

end

end A092967.P1708341005281551785

/-! ## A092967.P11617356851708206959

`A020725(A080326(n+1))`
-/

namespace A092967.P11617356851708206959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (A080326 (n + 1)).toNat

end

end A092967.P11617356851708206959

/-!
# A092968: Numbers n such that 2n^2 + 11 is a prime.

The programs for A092968, there is no canonical definition to state claims against.
-/

/-! ## A092968.P858453567126083491

`sqrt((A050265(n+1)-11)/2)`
-/

namespace A092968.P858453567126083491
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt ((A050265 (n + 1) - 11 : ℚ) / 2 : ℝ)

end

end A092968.P858453567126083491

/-! ## A092968.P17282307055447647209

`eq[2, A305973(n²+6)]`
-/

namespace A092968.P17282307055447647209
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305973 (n ^ 2 + 6)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A092968.P17282307055447647209

/-! ## A092968.P16402738833117087345

`eq[1, A001221(2*n²+11)]`
-/

namespace A092968.P16402738833117087345
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (2 * n ^ 2 + 11)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A092968.P16402738833117087345

/-! ## A092968.P5180622806083050716

`eq[1, A001222(2*n²+11)]`
-/

namespace A092968.P5180622806083050716
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (2 * n ^ 2 + 11)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A092968.P5180622806083050716

/-! ## A092968.P6365434011765660683

`eq[2, A000005(2*n²+11)]`
-/

namespace A092968.P6365434011765660683
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (2 * n ^ 2 + 11)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A092968.P6365434011765660683

/-! ## A092968.P14175413328902958099

`lt[A000005(n*2*n+11), 3]`
-/

namespace A092968.P14175413328902958099
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n * (2 * n) + 11)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A092968.P14175413328902958099

/-! ## A092968.P18418139192787252324

`lt[A001222(2*(n²+2)+7), 2]`
-/

namespace A092968.P18418139192787252324
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (2 * (n ^ 2 + 2) + 7)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A092968.P18418139192787252324

/-!
# A092969: a(1) = 2; for n>1, a(n) = largest prime of the form n!/k + 1, where k < n, or 0 if no such prime exists.

The programs for A092969, there is no canonical definition to state claims against.
-/

/-! ## A092969.P12255058042685802685

`A089136(n+1)*A322674(A319226(3*n+5))`
-/

namespace A092969.P12255058042685802685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089136 (n + 1) * A322674 (A319226 (3 * n + 5)).toNat

end

end A092969.P12255058042685802685

/-! ## A092969.P9352339515778610339

`A089136(n+1)*A322674(A322672(n+1))`
-/

namespace A092969.P9352339515778610339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089136 (n + 1) * A322674 (A322672 (n + 1)).toNat

end

end A092969.P9352339515778610339

/-! ## A092969.P4218542492586997911

`A089136(n+1)%(A092970(n+1)+A089136(n+1))`
-/

namespace A092969.P4218542492586997911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A089136 (n + 1)) (A092970 (n + 1) + A089136 (n + 1))

end

end A092969.P4218542492586997911

/-! ## A092969.P3459035389228022888

`lcm(A008683(A281759(n)), A089136(n+1))`
-/

namespace A092969.P3459035389228022888
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A008683 (A281759 n).toNat) (A089136 (n + 1))

end

end A092969.P3459035389228022888

/-! ## A092969.P8270010257336311891

`A185705(2^n)+A089136(n+1)`
-/

namespace A092969.P8270010257336311891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185705 (2 ^ n) + A089136 (n + 1)

end

end A092969.P8270010257336311891

/-!
# A092970: Smallest prime of the form n!/k + 1. k < = n, or 0 if no such prime exists.

The programs for A092970, there is no canonical definition to state claims against.
-/

/-! ## A092970.P17710019944422169320

`A080513(record[A123899(n)])`
-/

namespace A092970.P17710019944422169320
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123899 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080513 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A092970.P17710019944422169320

/-! ## A092970.P1530377463498707764

`A081947(n^A333348(n))`
-/

namespace A092970.P1530377463498707764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081947 (SequenceMachineLib.roundAway ((n : ℚ) ^ (A333348 n : ℤ))).toNat

end

end A092970.P1530377463498707764

/-! ## A092970.P8572657046025176529

`A187203(A365975(n)+1)+1`
-/

namespace A092970.P8572657046025176529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187203 (A365975 n + 1).toNat + 1

end

end A092970.P8572657046025176529

/-!
# A092972: Row 7 of array in A288580.

The programs for A092972, there is no canonical definition to state claims against.
-/

/-! ## A092972.P14373468225190956168

`A288580(eq[6, A025581(n)])`
-/

namespace A092972.P14373468225190956168
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288580 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A092972.P14373468225190956168

/-!
# A092975: Consider all partitions of n into parts all of which are divisors of n; a(n) = maximal product of parts.

The programs for A092975, there is no canonical definition to state claims against.
-/

/-! ## A092975.P11328794911493777537

`A292269(2*(n+1))^((n+1)/A292269(2*(n+1)))`
-/

namespace A092975.P11328794911493777537
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A292269 (2 * (n + 1)) : ℝ) ^ ((n + 1 : ℚ) / (A292269 (2 * (n + 1)) : ℚ) : ℝ)

end

end A092975.P11328794911493777537

/-! ## A092975.P8956300355276694243

`sqrt(A090369(n+1)^A184727(n+2))`
-/

namespace A092975.P8956300355276694243
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt ((A090369 (n + 1) : ℚ) ^ (A184727 (n + 2) : ℤ) : ℝ)

end

end A092975.P8956300355276694243

/-! ## A092975.P6656703506885441197

`A109674(n+1)^((n+1)/A109674(n+1))`
-/

namespace A092975.P6656703506885441197
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A109674 (n + 1) : ℝ) ^ ((n + 1 : ℚ) / (A109674 (n + 1) : ℚ) : ℝ)

end

end A092975.P6656703506885441197

/-! ## A092975.P11519385898157372512

`root(A109674(n+1), A109674(n+1)/A000027(n+1))`
-/

namespace A092975.P11519385898157372512
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A109674 (n + 1) : ℝ) ^ (1 / ((A109674 (n + 1) : ℚ) / (A000027 (n + 1) : ℚ) : ℝ))

end

end A092975.P11519385898157372512

/-! ## A092975.P15863860733686455214

`A164340(∏{p}[n+1, #])^((n+1)/∏{p}[n+1, #])`
-/

namespace A092975.P15863860733686455214
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A164340 (∏ p ∈ Nat.primeFactors (f1 n), p) : ℝ) ^ ((n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f2 n), p : ℕ) : ℚ) : ℝ)

end

end A092975.P15863860733686455214

/-!
# A092976: Consider all partitions of n into parts all of which are divisors of n; a(n) = number of distinct values taken by the product of the parts.

The programs for A092976, there is no canonical definition to state claims against.
-/

/-! ## A092976.P8860876412226133901

`A066882(A028310(n))+A014652(A028310(n))`
-/

namespace A092976.P8860876412226133901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066882 (A028310 n).toNat + A014652 (A028310 n).toNat

end

end A092976.P8860876412226133901

/-! ## A092976.P15291098628712842130

`A222084(A374431(n))`
-/

namespace A092976.P15291098628712842130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222084 (A374431 n).toNat

end

end A092976.P15291098628712842130

/-! ## A092976.P14621807672669036118

`A169869(A225244(n))-4`
-/

namespace A092976.P14621807672669036118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169869 (A225244 n).toNat - 4

end

end A092976.P14621807672669036118

/-! ## A092976.P3843230627233672960

`A165003(A328673(n)^4)`
-/

namespace A092976.P3843230627233672960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165003 (A328673 n ^ 4).toNat

end

end A092976.P3843230627233672960

/-! ## A092976.P5148553340799130307

`A165003(A328673(n)²²)`
-/

namespace A092976.P5148553340799130307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165003 ((A328673 n ^ 2) ^ 2).toNat

end

end A092976.P5148553340799130307

/-!
# A092978: (Product of first n even numbers)/(product of first k odd numbers) where k is chosen to give the least integer.

The programs for A092978, there is no canonical definition to state claims against.
-/

/-! ## A092978.P5191126731430857224

`∏[A020651(A007283(n))*A124625(n+2)]`
-/

namespace A092978.P5191126731430857224
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020651 (A007283 n).toNat * A124625 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A092978.P5191126731430857224

/-! ## A092978.P15533263148416889629

`∏[Δ[eq[3, A280136(n+1)]]]`
-/

namespace A092978.P15533263148416889629
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280136 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f3 j : ℤ) = f4 j) n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℤ) - (f2 n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A092978.P15533263148416889629

/-! ## A092978.P3322511092759107984

`A032568(n+5)*A046161(A032557(n+1))`
-/

namespace A092978.P3322511092759107984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032568 (n + 5) * A046161 (A032557 (n + 1)).toNat

end

end A092978.P3322511092759107984

/-! ## A092978.P7746711659966976417

`A032568(n+5)*A046161(A032563(n+1))`
-/

namespace A092978.P7746711659966976417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032568 (n + 5) * A046161 (A032563 (n + 1)).toNat

end

end A092978.P7746711659966976417

/-! ## A092978.P2502828102542861463

`A032568(n+5)*A046161(A032565(n+1))`
-/

namespace A092978.P2502828102542861463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032568 (n + 5) * A046161 (A032565 (n + 1)).toNat

end

end A092978.P2502828102542861463

/-!
# A092979: Least k such that (n+1)*(n+2)*...*(k-1)*k >= n!.

The programs for A092979, there is no canonical definition to state claims against.
-/

/-! ## A092979.P12082575197898945090

`n+1+A094331(n+1)`
-/

namespace A092979.P12082575197898945090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) + A094331 (n + 1)

end

end A092979.P12082575197898945090

/-! ## A092979.P7272329057023334022

`∑[A225515(abs(2-n)+1)]`
-/

namespace A092979.P7272329057023334022
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225515 (|2 - (n : ℤ)| + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A092979.P7272329057023334022

/-! ## A092979.P1163447096507783322

`A075357(n+1)+ceil(acot(n)+n)`
-/

namespace A092979.P1163447096507783322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075357 (n + 1) + ⌈SequenceMachineLib.acot (n : ℝ) + (n : ℝ)⌉

end

end A092979.P1163447096507783322

/-! ## A092979.P1871355699629024644

`A225515(n-1)+a(n-1)` with `a(0)=2, a(1)=3`
-/

namespace A092979.P1871355699629024644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 3] fun n a =>
  A225515 (n - 1) + a (n - 1)

end

end A092979.P1871355699629024644

/-! ## A092979.P13583533755475650122

`∑[char[A225515(n+1)+n]+1]+1`
-/

namespace A092979.P13583533755475650122
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225515 (n + 1) + (n : ℤ)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f2 j = (n : ℤ) then 1 else 0) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A092979.P13583533755475650122

/-! ## A092979.P7739620929941901445

`A075357(ceil(abs(γ-n))+1)+1+n`
-/

namespace A092979.P7739620929941901445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075357 (⌈|Real.eulerMascheroniConstant - (n : ℝ)|⌉ + 1).toNat + 1 + (n : ℤ)

end

end A092979.P7739620929941901445

/-! ## A092979.P16678795389334459428

`A075357(floor(acot(n)+n)+1)+n+1`
-/

namespace A092979.P16678795389334459428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075357 (⌊SequenceMachineLib.acot (n : ℝ) + (n : ℝ)⌋ + 1).toNat + (n + 1 : ℤ)

end

end A092979.P16678795389334459428

/-! ## A092979.P13691828019205303437

`A020725(A094331(n+1)+n)`
-/

namespace A092979.P13691828019205303437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (A094331 (n + 1) + (n : ℤ)).toNat

end

end A092979.P13691828019205303437

/-! ## A092979.P7839446103767204041

`A028310(A075357(n+1)+n)+1`
-/

namespace A092979.P7839446103767204041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A075357 (n + 1) + (n : ℤ)).toNat + 1

end

end A092979.P7839446103767204041

/-! ## A092979.P8873919753271703006

`A254667(A075357(n+1)+1+n)`
-/

namespace A092979.P8873919753271703006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254667 (A075357 (n + 1) + 1 + (n : ℤ)).toNat

end

end A092979.P8873919753271703006

/-!
# A092980: Partition the sequence of natural numbers into groups so that each group product is just >=n! until the group contains only one number which is >= n!; a(n) = the number of such groups.

The programs for A092980, there is no canonical definition to state claims against.
-/

/-! ## A092980.P14216609697059945768

`A008619(A147741(n+1)-A174145(n))`
-/

namespace A092980.P14216609697059945768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A147741 (n + 1) - A174145 n).toNat

end

end A092980.P14216609697059945768

/-! ## A092980.P7956068186882285848

`A057023(n+1)+A056171(A015577(n)+1)`
-/

namespace A092980.P7956068186882285848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057023 (n + 1) + A056171 (A015577 n + 1).toNat

end

end A092980.P7956068186882285848

/-!
# A092981: Least product of successive primes beginning from just greater than n which is > n!.

The programs for A092981, there is no canonical definition to state claims against.
-/

/-! ## A092981.P12703619572970758148

`lcm(A055773(3*n+1), A117366(A104350(n+1)))`
-/

namespace A092981.P12703619572970758148
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A055773 (3 * n + 1)) (A117366 (A104350 (n + 1)).toNat)

end

end A092981.P12703619572970758148

/-! ## A092981.P8702170770768569894

`A346091(A002805(n+1)*A064796(n+1))`
-/

namespace A092981.P8702170770768569894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346091 (A002805 (n + 1) * A064796 (n + 1)).toNat

end

end A092981.P8702170770768569894

/-! ## A092981.P7508192604393641304

`A346091(A104350(n+1)*A167600(n+1))`
-/

namespace A092981.P7508192604393641304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346091 (A104350 (n + 1) * A167600 (n + 1)).toNat

end

end A092981.P7508192604393641304

/-! ## A092981.P6318348595650288673

`A332462(A007918(n+2)^A065033(n+1))`
-/

namespace A092981.P6318348595650288673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332462 (SequenceMachineLib.roundAway ((A007918 (n + 2) : ℚ) ^ (A065033 (n + 1) : ℤ))).toNat

end

end A092981.P6318348595650288673

/-!
# A092982: Number of prime divisors of the squarefree number A092981(n).

The programs for A092982, there is no canonical definition to state claims against.
-/

/-! ## A092982.P445071382549330156

`A059995(A324760(2*n+5)+A210585(n+1))`
-/

namespace A092982.P445071382549330156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059995 (A324760 (2 * n + 5) + A210585 (n + 1)).toNat

end

end A092982.P445071382549330156

/-! ## A092982.P8646408246007035520

`A034888(A207674(n+1))+A000038(A114593(n+2))`
-/

namespace A092982.P8646408246007035520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034888 (A207674 (n + 1)).toNat + A000038 (A114593 (n + 2)).toNat

end

end A092982.P8646408246007035520

/-! ## A092982.P4262730132879669904

`A008619(eq[A368413(3*n+5), A380955(3*n+5)])`
-/

namespace A092982.P4262730132879669904
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368413 (3 * n + 5)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380955 (3 * n + 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A092982.P4262730132879669904

/-! ## A092982.P7324503676345366740

`A364631(A177485(n))`
-/

namespace A092982.P7324503676345366740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364631 (A177485 n).toNat

end

end A092982.P7324503676345366740

/-! ## A092982.P3558550172287613999

`A008619(lt[A348613(3*n+5), A265411(n)])`
-/

namespace A092982.P3558550172287613999
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348613 (3 * n + 5)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265411 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A092982.P3558550172287613999

/-!
# A092983: Least squarefree number > n!.

The programs for A092983, there is no canonical definition to state claims against.
-/

/-! ## A092983.P527933194604642296

`A092984(n+1)+(n+1)!`
-/

namespace A092983.P527933194604642296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092984 (n + 1) + (Nat.factorial (n + 1) : ℤ)

end

end A092983.P527933194604642296

/-! ## A092983.P17170761057835362242

`A092984(n+1)+record[A047920(n)]`
-/

namespace A092983.P17170761057835362242
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047920 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092984 (n + 1) + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A092983.P17170761057835362242

/-! ## A092983.P16649675406583866604

`A092984(n+1)+record[A295381(n)]`
-/

namespace A092983.P16649675406583866604
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295381 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092984 (n + 1) + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A092983.P16649675406583866604

/-! ## A092983.P8040831948816627794

`A092984(n+1)+A000142(n+1)`
-/

namespace A092983.P8040831948816627794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092984 (n + 1) + A000142 (n + 1)

end

end A092983.P8040831948816627794

/-! ## A092983.P2717042235856907149

`A332289(A327690(n))+A000142(n+1)`
-/

namespace A092983.P2717042235856907149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332289 (A327690 n).toNat + A000142 (n + 1)

end

end A092983.P2717042235856907149

/-!
# A092984: a(n) = the least k >= 1 such that n! + k is squarefree.

The programs for A092984, the canonical program `A092984.P11196949858830115087` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A092984 has offset 1).

The definition of A092984 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A092984.P13626265572093307497

`gcd(2, A084846(n+1))`
-/

namespace A092984.P13626265572093307497
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 2 (A084846 (n + 1))

end

end A092984.P13626265572093307497

namespace A092984

/-- `gcd(2, A084846(n+1))` -/
def P13626265572093307497.Spec : Prop :=
  ∀ n, (P13626265572093307497.a n : ℤ) = A092984 (n + 1)

end A092984

/-! ## A092984.P1671894399246688804

`val(A064144(n+1), 3)+1`
-/

namespace A092984.P1671894399246688804
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A064144 (n + 1)).toNat 3 + 1

end

end A092984.P1671894399246688804

namespace A092984

/-- `val(A064144(n+1), 3)+1` -/
def P1671894399246688804.Spec : Prop :=
  ∀ n, (P1671894399246688804.a n : ℤ) = A092984 (n + 1)

end A092984

/-! ## A092984.P13941951063164055853

`2-A084846(C(n+1, n))²`
-/

namespace A092984.P13941951063164055853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A084846 (Nat.choose (n + 1) n) ^ 2

end

end A092984.P13941951063164055853

namespace A092984

/-- `2-A084846(C(n+1, n))²` -/
def P13941951063164055853.Spec : Prop :=
  ∀ n, P13941951063164055853.a n = A092984 (n + 1)

end A092984

/-! ## A092984.P11196949858830115087

`char[∑{d}[A071726(n)+1, #]+n]+1`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A092984

/-- `char[∑{d}[A071726(n)+1, #]+n]+1` -/
def P11196949858830115087.Spec : Prop :=
  ∀ n, (P11196949858830115087.a n : ℤ) = A092984 (n + 1)

theorem P11196949858830115087.correct : P11196949858830115087.Spec := by
  intro n
  simp only [A092984, Nat.add_sub_cancel]

end A092984

/-! ## A092984.P6960246070799066254

`A000120(A064144(n+1))`
-/

namespace A092984.P6960246070799066254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A064144 (n + 1)).toNat

end

end A092984.P6960246070799066254

namespace A092984

/-- `A000120(A064144(n+1))` -/
def P6960246070799066254.Spec : Prop :=
  ∀ n, P6960246070799066254.a n = A092984 (n + 1)

end A092984

/-! ## A092984.P5621283303978512049

`A001221(2*A064144(n+1))`
-/

namespace A092984.P5621283303978512049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (2 * A064144 (n + 1)).toNat

end

end A092984.P5621283303978512049

namespace A092984

/-- `A001221(2*A064144(n+1))` -/
def P5621283303978512049.Spec : Prop :=
  ∀ n, P5621283303978512049.a n = A092984 (n + 1)

end A092984

/-! ## A092984.P1094680321442947071

`A001221(lcm(2, A064144(n+1)))`
-/

namespace A092984.P1094680321442947071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (Int.lcm 2 (A064144 (n + 1)))

end

end A092984.P1094680321442947071

namespace A092984

/-- `A001221(lcm(2, A064144(n+1)))` -/
def P1094680321442947071.Spec : Prop :=
  ∀ n, P1094680321442947071.a n = A092984 (n + 1)

end A092984

/-! ## A092984.P4066618641351631627

`2-A084846(A000027(n+1))²`
-/

namespace A092984.P4066618641351631627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A084846 (A000027 (n + 1)).toNat ^ 2

end

end A092984.P4066618641351631627

namespace A092984

/-- `2-A084846(A000027(n+1))²` -/
def P4066618641351631627.Spec : Prop :=
  ∀ n, P4066618641351631627.a n = A092984 (n + 1)

end A092984

/-! ## A092984.P15740962115881693383

`2-A154269(A064144(n+1)²)`
-/

namespace A092984.P15740962115881693383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A154269 (A064144 (n + 1) ^ 2).toNat

end

end A092984.P15740962115881693383

namespace A092984

/-- `2-A154269(A064144(n+1)²)` -/
def P15740962115881693383.Spec : Prop :=
  ∀ n, P15740962115881693383.a n = A092984 (n + 1)

end A092984

/-! ## A092984.P14060007837969259275

`A000032(A084846(n+1)²^n)`
-/

namespace A092984.P14060007837969259275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 ((A084846 (n + 1) ^ 2) ^ n).toNat

end

end A092984.P14060007837969259275

namespace A092984

/-- `A000032(A084846(n+1)²^n)` -/
def P14060007837969259275.Spec : Prop :=
  ∀ n, P14060007837969259275.a n = A092984 (n + 1)

end A092984

/-! ## A092984.P7731459447945185694

`A000032(A084846(n+1)^(2*n))`
-/

namespace A092984.P7731459447945185694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 (A084846 (n + 1) ^ (2 * n)).toNat

end

end A092984.P7731459447945185694

namespace A092984

/-- `A000032(A084846(n+1)^(2*n))` -/
def P7731459447945185694.Spec : Prop :=
  ∀ n, P7731459447945185694.a n = A092984 (n + 1)

end A092984

/-! ## A092984.P6958046861579190146

`char[A057030(A328322(n+1)+1)]+1`
-/

namespace A092984.P6958046861579190146
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057030 (A328322 (n + 1) + 1).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f1 j = (n : ℤ) then 1 else 0) + 1

end

end A092984.P6958046861579190146

namespace A092984

/-- `char[A057030(A328322(n+1)+1)]+1` -/
def P6958046861579190146.Spec : Prop :=
  ∀ n, (P6958046861579190146.a n : ℤ) = A092984 (n + 1)

end A092984

/-! ## A092984.P6801036540894898027

`2-A000045(A084846(n+1)²^n)`
-/

namespace A092984.P6801036540894898027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A000045 ((A084846 (n + 1) ^ 2) ^ n).toNat

end

end A092984.P6801036540894898027

namespace A092984

/-- `2-A000045(A084846(n+1)²^n)` -/
def P6801036540894898027.Spec : Prop :=
  ∀ n, P6801036540894898027.a n = A092984 (n + 1)

end A092984

/-! ## A092984.P12740877319121059305

`A020639(2*(n+1))-A084846(n+1)²`
-/

namespace A092984.P12740877319121059305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (2 * (n + 1)) - A084846 (n + 1) ^ 2

end

end A092984.P12740877319121059305

namespace A092984

/-- `A020639(2*(n+1))-A084846(n+1)²` -/
def P12740877319121059305.Spec : Prop :=
  ∀ n, P12740877319121059305.a n = A092984 (n + 1)

end A092984

/-! ## A092984.P14185293048673160652

`A000010(a(n-1))+1-A084846(n+1)²` with `a(0)=1`
-/

namespace A092984.P14185293048673160652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A000010 (a (n - 1)).toNat + (1 - A084846 (n + 1) ^ 2)

end

end A092984.P14185293048673160652

namespace A092984

/-- `A000010(a(n-1))+1-A084846(n+1)²` -/
def P14185293048673160652.Spec : Prop :=
  ∀ n, P14185293048673160652.a n = A092984 (n + 1)

end A092984

/-! ## A092984.P14011194959584703951

`A000045(a(n-1))+1-A084846(n+1)²` with `a(0)=1`
-/

namespace A092984.P14011194959584703951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A000045 (a (n - 1)).toNat + (1 - A084846 (n + 1) ^ 2)

end

end A092984.P14011194959584703951

namespace A092984

/-- `A000045(a(n-1))+1-A084846(n+1)²` -/
def P14011194959584703951.Spec : Prop :=
  ∀ n, P14011194959584703951.a n = A092984 (n + 1)

end A092984

/-! ## A092984.P7956167774870422840

`A014963(A000010(A025694(2*n+3)+5))`
-/

namespace A092984.P7956167774870422840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A000010 (A025694 (2 * n + 3) + 5).toNat).toNat

end

end A092984.P7956167774870422840

namespace A092984

/-- `A014963(A000010(A025694(2*n+3)+5))` -/
def P7956167774870422840.Spec : Prop :=
  ∀ n, P7956167774870422840.a n = A092984 (n + 1)

end A092984

/-!
# A092985: a(n) is the product of the first n terms of an arithmetic progression with the first term 1 and common difference n.

The programs for A092985, there is no canonical definition to state claims against.
-/

/-! ## A092985.P6091714389835074833

`A153189(A027379(n)-(n+1))`
-/

namespace A092985.P6091714389835074833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153189 (A027379 n - (n + 1 : ℤ)).toNat

end

end A092985.P6091714389835074833

/-! ## A092985.P14095944700578753578

`A153189(A027379(n)-1-n)`
-/

namespace A092985.P14095944700578753578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153189 (A027379 n - 1 - (n : ℤ)).toNat

end

end A092985.P14095944700578753578

/-! ## A092985.P17920414871311283379

`A153189(∑[comp[A153213(n+1)]])`
-/

namespace A092985.P17920414871311283379
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153213 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153189 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A092985.P17920414871311283379

/-! ## A092985.P17370271607312745175

`A153189(record[n/A094021(n+2)])`
-/

namespace A092985.P17370271607312745175
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / (A094021 (n + 2) : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153189 (SequenceMachineLib.roundAway (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))).toNat

end

end A092985.P17370271607312745175

/-! ## A092985.P13818191208526581020

`A153189(A057428(n)+A000096(n))`
-/

namespace A092985.P13818191208526581020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153189 (A057428 n + A000096 n).toNat

end

end A092985.P13818191208526581020

/-!
# A092987: A092985(n) divided by {A057237(n)}!.

The programs for A092987, there is no canonical definition to state claims against.
-/

/-! ## A092987.P7632836983618033330

`A092985(n+1)/A057237(n+1)!`
-/

namespace A092987.P7632836983618033330
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A092985 (n + 1) : ℚ) / (Nat.factorial (A057237 (n + 1)).toNat : ℚ)

end

end A092987.P7632836983618033330

/-!
# A092989: a(n) = tau(n*A092988(n)); maximal value attained by the number of divisors of n*k, k < n.

The programs for A092989, there is no canonical definition to state claims against.
-/

/-! ## A092989.P8395514437881116060

`A000005((n+2)*A092988(n+2))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A092989.P8395514437881116060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 ((n + 2 : ℤ) * A092988 (n + 2)).toNat

end

end A092989.P8395514437881116060

/-! ## A092989.P10518531815927496706

`A000005(A122378(A343750(A272215(2*n+1))))`
-/

namespace A092989.P10518531815927496706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A122378 (A343750 (A272215 (2 * n + 1)).toNat).toNat).toNat

end

end A092989.P10518531815927496706

/-!
# A092990: Least product of the partitions of n into two parts with maximal tau value: let n = a+b be a partition of n, then a(n) = a*b such that tau(a*b) is maximal.

The programs for A092990, there is no canonical definition to state claims against.
-/

/-! ## A092990.P3780672578667602309

`A320111(record[Δ[A341119(n)]])`
-/

namespace A092990.P3780672578667602309
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341119 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320111 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A092990.P3780672578667602309

/-! ## A092990.P17362167583621006943

`A000005(A174572(∑[n*gcd(2, n)+1]))`
-/

namespace A092990.P17362167583621006943
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * Nat.gcd 2 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A174572 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A092990.P17362167583621006943

/-! ## A092990.P1092155414755579228

`A355880(A292403(n)+A190689(n+1))`
-/

namespace A092990.P1092155414755579228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355880 (A292403 n + A190689 (n + 1)).toNat

end

end A092990.P1092155414755579228

/-! ## A092990.P657537562119948441

`A102440(eq[A001221(n+1), A321765(n+1)])`
-/

namespace A092990.P657537562119948441
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321765 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102440 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A092990.P657537562119948441

/-! ## A092990.P12598139601857294126

`A112329(A181809(n+2))`
-/

namespace A092990.P12598139601857294126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112329 (A181809 (n + 2)).toNat

end

end A092990.P12598139601857294126

/-!
# A092991: Least product of the parts of the partitions of n where that product has the maximum number of divisors.

The programs for A092991, there is no canonical definition to state claims against.
-/

/-! ## A092991.P17321345924058141043

`gcd(A135974(a(n-1)), A275244(2*n+1))` with `a(0)=1`
-/

namespace A092991.P17321345924058141043
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Int.gcd (A135974 (a (n - 1))) (A275244 (2 * n + 1))

end

end A092991.P17321345924058141043

/-! ## A092991.P11597602493508549967

`A002182(∑[A301568(n)^A355610(n)^n])`
-/

namespace A092991.P11597602493508549967
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A301568 n : ℚ) ^ (A355610 n ^ n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002182 (SequenceMachineLib.roundAway (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A092991.P11597602493508549967

/-! ## A092991.P9244370595206091125

`A256440(A086737(n))`
-/

namespace A092991.P9244370595206091125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256440 (A086737 n).toNat

end

end A092991.P9244370595206091125

/-! ## A092991.P8181943921730079327

`A256440(C(A000041(n)+1, 2))`
-/

namespace A092991.P8181943921730079327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256440 (Nat.choose (A000041 n + 1).toNat 2)

end

end A092991.P8181943921730079327

/-!
# A092992: Smallest prime of the form concatenation of prime(n) with itself followed by a 1.

The programs for A092992, there is no canonical definition to state claims against.
-/

/-! ## A092992.P16010380475345013407

`A087403(record[p?[A087401(n)]])`
-/

namespace A092992.P16010380475345013407
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087401 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087403 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A092992.P16010380475345013407

/-! ## A092992.P14374827879886584338

`A087403(p?[A087441(n+1)])`
-/

namespace A092992.P14374827879886584338
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087441 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087403 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A092992.P14374827879886584338

/-! ## A092992.P12626163431812618021

`A087403(p?[comp[A087374(n+1)]])`
-/

namespace A092992.P12626163431812618021
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087374 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087403 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A092992.P12626163431812618021

/-! ## A092992.P16478436696301824549

`A087403(p?[comp[A087378(n+1)]])`
-/

namespace A092992.P16478436696301824549
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087378 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087403 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A092992.P16478436696301824549

/-!
# A092993: Smallest prime of the form concatenation(s) of prime(n) with itself followed by a 3, or 0 if no such prime exists.

The programs for A092993, there is no canonical definition to state claims against.
-/

/-! ## A092993.P11590883064388820343

`A162538(A191117(n+1)+11)`
-/

namespace A092993.P11590883064388820343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162538 (A191117 (n + 1) + 11).toNat

end

end A092993.P11590883064388820343

/-!
# A092996: Least k such that 1 < p < n < c < k, where p is a prime and c is a composite number such that for every p there exists a distinct c.

The programs for A092996, there is no canonical definition to state claims against.
-/

/-! ## A092996.P12872221693484604118

`A065090(A113636(n+2))+1`
-/

namespace A092996.P12872221693484604118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065090 (A113636 (n + 2)).toNat + 1

end

end A092996.P12872221693484604118

/-! ## A092996.P763522896103762617

`A060462(A014684(n+2))+2`
-/

namespace A092996.P763522896103762617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060462 (A014684 (n + 2)).toNat + 2

end

end A092996.P763522896103762617

/-! ## A092996.P6902697428831148253

`A054977(n)+A018252(A014684(n+2))`
-/

namespace A092996.P6902697428831148253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054977 n + A018252 (A014684 (n + 2)).toNat

end

end A092996.P6902697428831148253

/-! ## A092996.P2701074282557878765

`A113636(Δ[A053767(n)]-A010051(n+2))`
-/

namespace A092996.P2701074282557878765
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053767 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113636 (f1 (n + 1) - f1 n - A010051 (n + 2)).toNat

end

end A092996.P2701074282557878765

/-! ## A092996.P7101959132809811314

`A018252(A014684(n+2))+A000007(n)+1`
-/

namespace A092996.P7101959132809811314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (A014684 (n + 2)).toNat + (A000007 n + 1)

end

end A092996.P7101959132809811314

/-! ## A092996.P11802748831820171887

`A113636(A072668(n+1)+1-A010051(n+2))`
-/

namespace A092996.P11802748831820171887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113636 (A072668 (n + 1) + 1 - A010051 (n + 2)).toNat

end

end A092996.P11802748831820171887

/-! ## A092996.P7636954272361564665

`A135560(2*n+1)+A018252(A014684(n+2))`
-/

namespace A092996.P7636954272361564665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135560 (2 * n + 1) + A018252 (A014684 (n + 2)).toNat

end

end A092996.P7636954272361564665

/-! ## A092996.P14195216116955956802

`A014963(4*n+2)+A018252(A014684(n+2))`
-/

namespace A092996.P14195216116955956802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (4 * n + 2) + A018252 (A014684 (n + 2)).toNat

end

end A092996.P14195216116955956802

/-! ## A092996.P8321507648431909134

`A018252(A014684(n+2))+2-ceil(n/A000041(n))`
-/

namespace A092996.P8321507648431909134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (A014684 (n + 2)).toNat + 2 - ⌈(n : ℚ) / (A000041 n : ℚ)⌉

end

end A092996.P8321507648431909134

/-! ## A092996.P9694574088535201791

`A018252(A014684(n+2))+A000032(A178334(n))`
-/

namespace A092996.P9694574088535201791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (A014684 (n + 2)).toNat + A000032 (A178334 n).toNat

end

end A092996.P9694574088535201791

/-!
# A092998: Least integer k > n such that the number of primes between 1 and n (exclusive) is the same as the number of primes between n and k (exclusive).

The programs for A092998, there is no canonical definition to state claims against.
-/

/-! ## A092998.P14978398818811415749

`A156037(∑[A278907(n)])+2`
-/

namespace A092998.P14978398818811415749
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278907 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156037 (∑ j ∈ Finset.range (n + 1), f1 j).toNat + 2

end

end A092998.P14978398818811415749

/-! ## A092998.P8857861407782604189

`A057427(n)+A000040(∑[A278907(n)])`
-/

namespace A092998.P8857861407782604189
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278907 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n + A000040 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A092998.P8857861407782604189

/-! ## A092998.P10936760834900677845

`A178334(n)+A000040(∑[A278907(n)])`
-/

namespace A092998.P10936760834900677845
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278907 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178334 n + A000040 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A092998.P10936760834900677845

/-! ## A092998.P14417845587625887004

`A178489(n)+A000040(∑[A278907(n)])`
-/

namespace A092998.P14417845587625887004
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278907 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178489 n + A000040 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A092998.P14417845587625887004

/-! ## A092998.P8431957585422539575

`A000040(∑[A278907(n)])-A057428(n)`
-/

namespace A092998.P8431957585422539575
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278907 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (∑ j ∈ Finset.range (n + 1), f1 j).toNat - A057428 n

end

end A092998.P8431957585422539575

/-! ## A092998.P13909234628095203277

`A008864(∑[A278907(n)]/A054977(n))`
-/

namespace A092998.P13909234628095203277
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278907 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008864 (SequenceMachineLib.roundAway (((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / (A054977 n : ℚ))).toNat

end

end A092998.P13909234628095203277

/-! ## A092998.P11811082770371021547

`A000040(∑[A278907(n)])+A070750(n+1)²`
-/

namespace A092998.P11811082770371021547
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278907 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (∑ j ∈ Finset.range (n + 1), f1 j).toNat + A070750 (n + 1) ^ 2

end

end A092998.P11811082770371021547

/-! ## A092998.P5173778096727974505

`A000040(∑[A278907(n)])+A000040(n+1)%2`
-/

namespace A092998.P5173778096727974505
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278907 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (∑ j ∈ Finset.range (n + 1), f1 j).toNat + Int.tmod (A000040 (n + 1)) 2

end

end A092998.P5173778096727974505

/-! ## A092998.P13628085811829968370

`n+1-(A028310(n)-A000040(∑[A278907(n)]))`
-/

namespace A092998.P13628085811829968370
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278907 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - (A028310 n - A000040 (∑ j ∈ Finset.range (n + 1), f1 j).toNat)

end

end A092998.P13628085811829968370

/-! ## A092998.P5904406781182144124

`A000040(A000720(n+1)+A000720(n+2))+1`
-/

namespace A092998.P5904406781182144124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A000720 (n + 1) + A000720 (n + 2)).toNat + 1

end

end A092998.P5904406781182144124

