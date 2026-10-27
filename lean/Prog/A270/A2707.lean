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
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C038
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C009
import Seq.B001.C010
import Seq.B001.C011
import Seq.B001.C012
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C005
import Seq.B002.C007
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C004
import Seq.B003.C005
import Seq.B004.C000
import Seq.B004.C001
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
import Seq.B006.C000
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
import Seq.Opaque.C025

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A270700: Triangular Star of David numbers (the figurate number of triangles framing a hexagram: a(0) = 12; thereafter a(n) = 36*n + 6).

The programs for A270700, the canonical program `A270700.P13734662682718127805` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A270700 has offset 0).

The definition of A270700 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A270700.P13734662682718127805

`2*a(n-1)-a(n-2)` with `a(0)=12, a(1)=42, a(2)=78`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A270700

/-- `2*a(n-1)-a(n-2)` -/
def P13734662682718127805.Spec : Prop :=
  ∀ n, P13734662682718127805.a n = A270700 n

theorem P13734662682718127805.correct : P13734662682718127805.Spec := by
  intro n
  simp only [A270700]

end A270700

/-!
# A270701: Total sum T(n,k) of the sizes of all blocks with maximal element k in all set partitions of {1,2,...,n}; triangle T(n,k), n>=1, 1<=k<=n, read by rows.

The programs for A270701, there is no canonical definition to state claims against.
-/

/-! ## A270701.P3848368510966566475

`A270702(A038722(n+1))`
-/

namespace A270701.P3848368510966566475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270702 (A038722 (n + 1)).toNat

end

end A270701.P3848368510966566475

/-! ## A270701.P3156983246528464692

`A270702(A061579(n)+1)`
-/

namespace A270701.P3156983246528464692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270702 (A061579 n + 1).toNat

end

end A270701.P3156983246528464692

/-! ## A270701.P16624270139052842214

`A270702(A114327(n)+1+n)`
-/

namespace A270701.P16624270139052842214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270702 (A114327 n + 1 + (n : ℤ)).toNat

end

end A270701.P16624270139052842214

/-! ## A270701.P9790623615023682705

`A270702(A093995(n+1)-n)`
-/

namespace A270701.P9790623615023682705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270702 (A093995 (n + 1) - (n : ℤ)).toNat

end

end A270701.P9790623615023682705

/-! ## A270701.P7258557068542347569

`A270702(A014132(n+1)-A158405(n+1))`
-/

namespace A270701.P7258557068542347569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270702 (A014132 (n + 1) - A158405 (n + 1)).toNat

end

end A270701.P7258557068542347569

/-!
# A270702: Total sum T(n,k) of the sizes of all blocks with minimal element k in all set partitions of {1,2,...,n}; triangle T(n,k), n>=1, 1<=k<=n, read by rows.

The programs for A270702, there is no canonical definition to state claims against.
-/

/-! ## A270702.P12783360731385106733

`A270701(A038722(n+1))`
-/

namespace A270702.P12783360731385106733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270701 (A038722 (n + 1)).toNat

end

end A270702.P12783360731385106733

/-! ## A270702.P170064105505342530

`A270701(A061579(n)+1)`
-/

namespace A270702.P170064105505342530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270701 (A061579 n + 1).toNat

end

end A270702.P170064105505342530

/-! ## A270702.P11153344774754051269

`A270701(A114327(n)+1+n)`
-/

namespace A270702.P11153344774754051269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270701 (A114327 n + 1 + (n : ℤ)).toNat

end

end A270702.P11153344774754051269

/-! ## A270702.P10088972971557384236

`A270701(A093995(n+1)-n)`
-/

namespace A270702.P10088972971557384236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270701 (A093995 (n + 1) - (n : ℤ)).toNat

end

end A270702.P10088972971557384236

/-! ## A270702.P7290231020978300527

`A270701(A002024(n+1)²-n)`
-/

namespace A270702.P7290231020978300527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270701 (A002024 (n + 1) ^ 2 - (n : ℤ)).toNat

end

end A270702.P7290231020978300527

/-! ## A270702.P2634944618740460900

`A123346(n)-Δ[A123346(n)]*A025581(n)`
-/

namespace A270702.P2634944618740460900
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123346 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123346 n - (f1 (n + 1) - f1 n) * A025581 n

end

end A270702.P2634944618740460900

/-!
# A270703: Total sum of the sizes of all blocks with maximal element n in all set partitions of {1,2,...,2n-1}.

The programs for A270703, there is no canonical definition to state claims against.
-/

/-! ## A270703.P16239014755710023652

`A270701(∑[4*n]+1)`
-/

namespace A270703.P16239014755710023652
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270701 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A270703.P16239014755710023652

/-! ## A270703.P2881463180377694888

`A094577(n)+n*A020556(n)`
-/

namespace A270703.P2881463180377694888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094577 n + (n : ℤ) * A020556 n

end

end A270703.P2881463180377694888

/-! ## A270703.P8821531369964219035

`record[gcd(A008482(n), A270701(n+1))]`
-/

namespace A270703.P8821531369964219035
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A008482 n) (A270701 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A270703.P8821531369964219035

/-! ## A270703.P17209196006307935760

`A270702((n+1)²+n²)`
-/

namespace A270703.P17209196006307935760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270702 ((n + 1) ^ 2 + n ^ 2)

end

end A270703.P17209196006307935760

/-! ## A270703.P14000931641584569255

`or(A000007(n), A270702(A001844(n)))`
-/

namespace A270703.P14000931641584569255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A270702 (A001844 n).toNat)

end

end A270703.P14000931641584569255

/-!
# A270704: Even 14-gonal (or tetradecagonal) numbers.

The programs for A270704, the canonical program `A270704.P3134271867177922031` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A270704 has offset 0).

The definition of A270704 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A270704.P3134271867177922031

`2*n*(12*n-5)`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A270704

/-- `2*n*(12*n-5)` -/
def P3134271867177922031.Spec : Prop :=
  ∀ n, P3134271867177922031.a n = A270704 n

theorem P3134271867177922031.correct : P3134271867177922031.Spec := by
  intro n
  simp only [A270704]

end A270704

/-! ## A270704.P4004450070289902690

`∑[a(n-1)+48]` with `a(0)=0, a(1)=14`
-/

namespace A270704.P4004450070289902690
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 14] fun n f1 =>
  f1 (n - 1) + 48

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A270704.P4004450070289902690

namespace A270704

/-- `∑[a(n-1)+48]` -/
def P4004450070289902690.Spec : Prop :=
  ∀ n, (P4004450070289902690.a n : ℤ) = A270704 n

end A270704

/-! ## A270704.P11171568647698092164

`2*n+12*C(2*n, 2)`
-/

namespace A270704.P11171568647698092164
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 12 * Nat.choose (2 * n) 2

end

end A270704.P11171568647698092164

namespace A270704

/-- `2*n+12*C(2*n, 2)` -/
def P11171568647698092164.Spec : Prop :=
  ∀ n, (P11171568647698092164.a n : ℤ) = A270704 n

theorem P11171568647698092164.correct : P11171568647698092164.Spec := by
  intro n
  simp only [A270704, Nat.add_sub_cancel, A270704.P11171568647698092164.a, A270704.P3134271867177922031.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A270704

/-! ## A270704.P14448131217646408691

`2*n+3*n*record[lcm(4, n)]`
-/

namespace A270704.P14448131217646408691
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 4 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 3 * (n * f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))

end

end A270704.P14448131217646408691

namespace A270704

/-- `2*n+3*n*record[lcm(4, n)]` -/
def P14448131217646408691.Spec : Prop :=
  ∀ n, (P14448131217646408691.a n : ℤ) = A270704 n

end A270704

/-! ## A270704.P16752679131985376864

`2*n+12*n*comp[or(1, n)+1]`
-/

namespace A270704.P16752679131985376864
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 n + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 12 * n * SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A270704.P16752679131985376864

namespace A270704

/-- `2*n+12*n*comp[or(1, n)+1]` -/
def P16752679131985376864.Spec : Prop :=
  ∀ n, (P16752679131985376864.a n : ℤ) = A270704 n

end A270704

/-! ## A270704.P2805458742743764778

`A143698(n)+2*n`
-/

namespace A270704.P2805458742743764778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143698 n + (2 * n : ℤ)

end

end A270704.P2805458742743764778

namespace A270704

/-- `A143698(n)+2*n` -/
def P2805458742743764778.Spec : Prop :=
  ∀ n, P2805458742743764778.a n = A270704 n

theorem P2805458742743764778.correct : P2805458742743764778.Spec := by
  intro n
  simp only [A270704, Nat.add_sub_cancel, A270704.P2805458742743764778.a, A270704.P3134271867177922031.a, A143698, A143698.P346745898935711225.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A270704

/-! ## A270704.P13775625568216497918

`3*A139273(n)-n`
-/

namespace A270704.P13775625568216497918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A139273 n - (n : ℤ)

end

end A270704.P13775625568216497918

namespace A270704

/-- `3*A139273(n)-n` -/
def P13775625568216497918.Spec : Prop :=
  ∀ n, P13775625568216497918.a n = A270704 n

theorem P13775625568216497918.correct : P13775625568216497918.Spec := by
  intro n
  simp only [A270704, Nat.add_sub_cancel, A270704.P13775625568216497918.a, A270704.P3134271867177922031.a, A139273, A139273.P14013562454579091989.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A270704

/-! ## A270704.P8956170617084724828

`A144560(n)+(2*n)²`
-/

namespace A270704.P8956170617084724828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144560 n + ((2 * n) ^ 2 : ℤ)

end

end A270704.P8956170617084724828

namespace A270704

/-- `A144560(n)+(2*n)²` -/
def P8956170617084724828.Spec : Prop :=
  ∀ n, P8956170617084724828.a n = A270704 n

theorem P8956170617084724828.correct : P8956170617084724828.Spec := by
  intro n
  simp only [A270704, Nat.add_sub_cancel, A270704.P8956170617084724828.a, A270704.P3134271867177922031.a, A144560, A144560.P17731211630582671558.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A270704

/-! ## A270704.P9351924198454949179

`A051875(n)+A022284(n)`
-/

namespace A270704.P9351924198454949179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051875 n + A022284 n

end

end A270704.P9351924198454949179

namespace A270704

/-- `A051875(n)+A022284(n)` -/
def P9351924198454949179.Spec : Prop :=
  ∀ n, P9351924198454949179.a n = A270704 n

end A270704

/-! ## A270704.P1035447481742434468

`A085250(n)+A028994(n)`
-/

namespace A270704.P1035447481742434468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085250 n + A028994 n

end

end A270704.P1035447481742434468

namespace A270704

/-- `A085250(n)+A028994(n)` -/
def P1035447481742434468.Spec : Prop :=
  ∀ n, P1035447481742434468.a n = A270704 n

theorem P1035447481742434468.correct : P1035447481742434468.Spec := by
  intro n
  simp only [A270704, Nat.add_sub_cancel, A270704.P1035447481742434468.a, A270704.P3134271867177922031.a, A028994, A028994.P2614720213617424781.a, A085250, A085250.P6274301986790995116.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A270704

/-! ## A270704.P13662237519644671181

`A153808(n)+A008588(n)`
-/

namespace A270704.P13662237519644671181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153808 n + A008588 n

end

end A270704.P13662237519644671181

namespace A270704

/-- `A153808(n)+A008588(n)` -/
def P13662237519644671181.Spec : Prop :=
  ∀ n, P13662237519644671181.a n = A270704 n

theorem P13662237519644671181.correct : P13662237519644671181.Spec := by
  intro n
  simp only [A270704, Nat.add_sub_cancel, A270704.P13662237519644671181.a, A270704.P3134271867177922031.a, A008588, A008588.P12386450284809463491.a, A153808, A153808.P12582623721954130915.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A270704

/-! ## A270704.P9262610263178416559

`A152746(n)+A014642(n)`
-/

namespace A270704.P9262610263178416559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152746 n + A014642 n

end

end A270704.P9262610263178416559

namespace A270704

/-- `A152746(n)+A014642(n)` -/
def P9262610263178416559.Spec : Prop :=
  ∀ n, P9262610263178416559.a n = A270704 n

theorem P9262610263178416559.correct : P9262610263178416559.Spec := by
  intro n
  simp only [A270704, Nat.add_sub_cancel, A270704.P9262610263178416559.a, A270704.P3134271867177922031.a, A014642, A014642.P1230047363248524840.a, A152746, A152746.P17154373183025308854.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A270704

/-! ## A270704.P17572398861137168960

`A152750(n)+A014635(n)`
-/

namespace A270704.P17572398861137168960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152750 n + A014635 n

end

end A270704.P17572398861137168960

namespace A270704

/-- `A152750(n)+A014635(n)` -/
def P17572398861137168960.Spec : Prop :=
  ∀ n, P17572398861137168960.a n = A270704 n

theorem P17572398861137168960.correct : P17572398861137168960.Spec := by
  intro n
  simp only [A270704, Nat.add_sub_cancel, A270704.P17572398861137168960.a, A270704.P3134271867177922031.a, A014635, A014635.P12617269699985302371.a, A152750, A152750.P9324821272604293728.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A270704

/-! ## A270704.P16250291197550430484

`A154617(n)+A014105(n)`
-/

namespace A270704.P16250291197550430484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154617 n + A014105 n

end

end A270704.P16250291197550430484

namespace A270704

/-- `A154617(n)+A014105(n)` -/
def P16250291197550430484.Spec : Prop :=
  ∀ n, P16250291197550430484.a n = A270704 n

theorem P16250291197550430484.correct : P16250291197550430484.Spec := by
  intro n
  simp only [A270704, Nat.add_sub_cancel, A270704.P16250291197550430484.a, A270704.P3134271867177922031.a, A014105, A014105.P182524374866796289.a, A154617, A154617.P15010392269036294234.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A270704

/-! ## A270704.P7800778222575990428

`A153795(n)+A016766(n)`
-/

namespace A270704.P7800778222575990428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153795 n + A016766 n

end

end A270704.P7800778222575990428

namespace A270704

/-- `A153795(n)+A016766(n)` -/
def P7800778222575990428.Spec : Prop :=
  ∀ n, P7800778222575990428.a n = A270704 n

theorem P7800778222575990428.correct : P7800778222575990428.Spec := by
  intro n
  simp only [A270704, Nat.add_sub_cancel, A270704.P7800778222575990428.a, A270704.P3134271867177922031.a, A016766, A016766.P3834823630241441293.a, A153795, A153795.P4253151262494616072.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A270704

/-! ## A270704.P1161793959004755574

`A152777(n)+A022271(n)`
-/

namespace A270704.P1161793959004755574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152777 n + A022271 n

end

end A270704.P1161793959004755574

namespace A270704

/-- `A152777(n)+A022271(n)` -/
def P1161793959004755574.Spec : Prop :=
  ∀ n, P1161793959004755574.a n = A270704 n

end A270704

/-! ## A270704.P6630650507037406774

`A153783(n)+A022279(n)`
-/

namespace A270704.P6630650507037406774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153783 n + A022279 n

end

end A270704.P6630650507037406774

namespace A270704

/-- `A153783(n)+A022279(n)` -/
def P6630650507037406774.Spec : Prop :=
  ∀ n, P6630650507037406774.a n = A270704 n

end A270704

/-! ## A270704.P14438872604918444223

`A152760(n)+A033583(n)`
-/

namespace A270704.P14438872604918444223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152760 n + A033583 n

end

end A270704.P14438872604918444223

namespace A270704

/-- `A152760(n)+A033583(n)` -/
def P14438872604918444223.Spec : Prop :=
  ∀ n, P14438872604918444223.a n = A270704 n

theorem P14438872604918444223.correct : P14438872604918444223.Spec := by
  intro n
  simp only [A270704, Nat.add_sub_cancel, A270704.P14438872604918444223.a, A270704.P3134271867177922031.a, A033583, A033583.P12285480609414282410.a, A152760, A152760.P16098557334382843204.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A270704

/-! ## A270704.P8093571252760935604

`A153796(n)+A033580(n)`
-/

namespace A270704.P8093571252760935604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153796 n + A033580 n

end

end A270704.P8093571252760935604

namespace A270704

/-- `A153796(n)+A033580(n)` -/
def P8093571252760935604.Spec : Prop :=
  ∀ n, P8093571252760935604.a n = A270704 n

theorem P8093571252760935604.correct : P8093571252760935604.Spec := by
  intro n
  simp only [A270704, Nat.add_sub_cancel, A270704.P8093571252760935604.a, A270704.P3134271867177922031.a, A033580, A033580.P10508890947649140634.a, A153796, A153796.P2544292493987041900.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A270704

/-! ## A270704.P887650490653631669

`A193872(n)+A002939(n)`
-/

namespace A270704.P887650490653631669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193872 n + A002939 n

end

end A270704.P887650490653631669

namespace A270704

/-- `A193872(n)+A002939(n)` -/
def P887650490653631669.Spec : Prop :=
  ∀ n, P887650490653631669.a n = A270704 n

theorem P887650490653631669.correct : P887650490653631669.Spec := by
  intro n
  simp only [A270704, Nat.add_sub_cancel, A270704.P887650490653631669.a, A270704.P3134271867177922031.a, A002939, A002939.P11095602872349887610.a, A193872, A193872.P12395081508790096406.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A270704

/-!
# A270706: Number of ordered ways to write n as x^2*T(x) + y^2 + T(z), where x, y and z are integers with x nonzero, y positive and z nonnegative, and T(m) denotes the triangular number m*(m+1)/2.

The programs for A270706, there is no canonical definition to state claims against.
-/

/-! ## A270706.P13801641246606818071

`A340988(A016116(n))+A270594(n+1)`
-/

namespace A270706.P13801641246606818071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340988 ((A016116 n).toNat + 91) + A270594 (n + 1)

end

end A270706.P13801641246606818071

/-! ## A270706.P2022878939207403145

`A270594(lt[A349149(n), A004436(n+1)])`
-/

namespace A270706.P2022878939207403145
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349149 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004436 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270594 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A270706.P2022878939207403145

/-! ## A270706.P12876016759969507524

`A167439(A098781(n+1))`
-/

namespace A270706.P12876016759969507524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167439 (A098781 (n + 1)).toNat

end

end A270706.P12876016759969507524

/-! ## A270706.P284561589723219790

`A001222(A193554(n+1)+A026566(n))`
-/

namespace A270706.P284561589723219790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A193554 (n + 1) + A026566 n).toNat

end

end A270706.P284561589723219790

/-!
# A270707: a(n) = (n+1)!*Sum_{k=0..(n-1)/2}(k!*stirling1(n-k,k+1)*(-1)^(n+1)/(n-k)!/(k+1)!).

The programs for A270707, there is no canonical definition to state claims against.
-/

/-! ## A270707.P1416317572165206886

`A331157(n)-dr(A151575(n))`
-/

namespace A270707.P1416317572165206886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331157 n - (SequenceMachineLib.digitalRoot (A151575 n) : ℤ)

end

end A270707.P1416317572165206886

/-! ## A270707.P16686022647243282392

`A260644(A260650(n+1))-(n+1)/∏{p}[n+1, (n+1)/#]`
-/

namespace A270707.P16686022647243282392
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A260644 (A260650 (n + 1)).toNat : ℚ) - (n + 1 : ℚ) / (∏ p ∈ Nat.primeFactors (f1 n), (n + 1 : ℚ) / (p : ℚ))

end

end A270707.P16686022647243282392

/-!
# A270708: a(n) = A048739(n-1) mod A000129(floor(n/2)).

The programs for A270708, the canonical program `A270708.P15050694149149901678` is in `Seq.B001.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A270708 has offset 2).

The definition of A270708 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A048739(n+1)%A000129(floor((n+2)/2))` (program `A270708.P15050694149149901678`, by `A270708.P15050694149149901678.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A270708.P15050694149149901678

`A048739(n+1)%A000129(floor((n+2)/2))`

The canonical program, it is in `Seq.B001.C010`.
-/

namespace A270708

/-- `A048739(n+1)%A000129(floor((n+2)/2))` -/
def P15050694149149901678.Spec : Prop :=
  ∀ n, P15050694149149901678.a n = A270708 (n + 2)

theorem P15050694149149901678.correct : P15050694149149901678.Spec := by
  intro n
  simp only [A270708, Nat.add_sub_cancel]

end A270708

/-! ## A270708.P6114464564147849864

`A001108(A008619(n+1))%A135153(n+2)`
-/

namespace A270708.P6114464564147849864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001108 (A008619 (n + 1)).toNat) (A135153 (n + 2))

end

end A270708.P6114464564147849864

namespace A270708

/-- `A001108(A008619(n+1))%A135153(n+2)` -/
def P6114464564147849864.Spec : Prop :=
  ∀ n, P6114464564147849864.a n = A270708 (n + 2)

end A270708

/-! ## A270708.P4969810495707233053

`A216134(n+2)%A135153(n+2)`
-/

namespace A270708.P4969810495707233053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A216134 (n + 2)) (A135153 (n + 2))

end

end A270708.P4969810495707233053

namespace A270708

/-- `A216134(n+2)%A135153(n+2)` -/
def P4969810495707233053.Spec : Prop :=
  ∀ n, P4969810495707233053.a n = A270708 (n + 2)

end A270708

/-! ## A270708.P7115599420335773649

`Δ[A048776(n)]%A215928(A008619(n))`
-/

namespace A270708.P7115599420335773649
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048776 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (n + 1) - f1 n) (A215928 (A008619 n).toNat)

end

end A270708.P7115599420335773649

namespace A270708

/-- `Δ[A048776(n)]%A215928(A008619(n))` -/
def P7115599420335773649.Spec : Prop :=
  ∀ n, P7115599420335773649.a n = A270708 (n + 2)

end A270708

/-! ## A270708.P3048121074097937333

`A216162(A004273(n+3))%A135153(n+2)`
-/

namespace A270708.P3048121074097937333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A216162 (A004273 (n + 3)).toNat) (A135153 (n + 2))

end

end A270708.P3048121074097937333

namespace A270708

/-- `A216162(A004273(n+3))%A135153(n+2)` -/
def P3048121074097937333.Spec : Prop :=
  ∀ n, P3048121074097937333.a n = A270708 (n + 2)

end A270708

/-!
# A270710: a(n) = 3*n^2 + 2*n - 1.

The programs for A270710, the canonical program `A270710.P7193795266762276404` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A270710 has offset 0).

The definition of A270710 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `3*n²+2*n-1` (program `A270710.P7193795266762276404`, by `A270710.P7193795266762276404.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A270710.P7193795266762276404

`3*n²+2*n-1`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A270710

/-- `3*n²+2*n-1` -/
def P7193795266762276404.Spec : Prop :=
  ∀ n, P7193795266762276404.a n = A270710 n

theorem P7193795266762276404.correct : P7193795266762276404.Spec := by
  intro n
  simp only [A270710]

end A270710

/-! ## A270710.P15686173112875967333

`-∑[or(1, -(6*n))]`
-/

namespace A270710.P15686173112875967333
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (-(6 * n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(∑ j ∈ Finset.range (n + 1), f1 j)

end

end A270710.P15686173112875967333

namespace A270710

/-- `-∑[or(1, -(6*n))]` -/
def P15686173112875967333.Spec : Prop :=
  ∀ n, P15686173112875967333.a n = A270710 n

end A270710

/-! ## A270710.P13846514576559870391

`-∑[xor(1, -(6*n))]`
-/

namespace A270710.P13846514576559870391
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (-(6 * n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(∑ j ∈ Finset.range (n + 1), f1 j)

end

end A270710.P13846514576559870391

namespace A270710

/-- `-∑[xor(1, -(6*n))]` -/
def P13846514576559870391.Spec : Prop :=
  ∀ n, P13846514576559870391.a n = A270710 n

end A270710

/-! ## A270710.P3967459986156669197

`∑[ogf((-1+7x)/(1-2x+x^2))]`
-/

namespace A270710.P3967459986156669197
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [-1, 7] [1, -2, 1] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A270710.P3967459986156669197

namespace A270710

/-- `∑[ogf((-1+7x)/(1-2x+x^2))]` -/
def P3967459986156669197.Spec : Prop :=
  ∀ n, P3967459986156669197.a n = A270710 n

end A270710

/-! ## A270710.P5149390229451999385

`ogf((-1+7x)/(1-3x+3x^2-x^3))`
-/

namespace A270710.P5149390229451999385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [-1, 7] [1, -3, 3, -1] n

end

end A270710.P5149390229451999385

namespace A270710

/-- `ogf((-1+7x)/(1-3x+3x^2-x^3))` -/
def P5149390229451999385.Spec : Prop :=
  ∀ n, P5149390229451999385.a n = A270710 n

end A270710

/-! ## A270710.P9580825273602677422

`-∑[a(n-1)-6]` with `a(0)=1`
-/

namespace A270710.P9580825273602677422
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  f1 (n - 1) - 6

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(∑ j ∈ Finset.range (n + 1), f1 j)

end

end A270710.P9580825273602677422

namespace A270710

/-- `-∑[a(n-1)-6]` -/
def P9580825273602677422.Spec : Prop :=
  ∀ n, P9580825273602677422.a n = A270710 n

end A270710

/-! ## A270710.P10704220286100009232

`floor(∑[a(n-1)+6])` with `a(0)=-1`

`floor` is left out, it is the identity on integers.
-/

namespace A270710.P10704220286100009232
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [-1] fun n f1 =>
  f1 (n - 1) + 6

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A270710.P10704220286100009232

namespace A270710

/-- `floor(∑[a(n-1)+6])` -/
def P10704220286100009232.Spec : Prop :=
  ∀ n, P10704220286100009232.a n = A270710 n

end A270710

/-! ## A270710.P1996116854241190830

`Δ[n^3-C(n+2, 2)]`
-/

namespace A270710.P1996116854241190830
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 3 : ℤ) - (Nat.choose (n + 2) 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A270710.P1996116854241190830

namespace A270710

/-- `Δ[n^3-C(n+2, 2)]` -/
def P1996116854241190830.Spec : Prop :=
  ∀ n, P1996116854241190830.a n = A270710 n

theorem P1996116854241190830.correct : P1996116854241190830.Spec := by
  intro n
  simp only [A270710, Nat.add_sub_cancel, A270710.P1996116854241190830.f1, A270710.P1996116854241190830.a, A270710.P7193795266762276404.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A270710

/-! ## A270710.P15231549471895186104

`(n+1)*(n-or(1, -(2*n)))`
-/

namespace A270710.P15231549471895186104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * ((n : ℤ) - Int.lor 1 (-(2 * n : ℤ)))

end

end A270710.P15231549471895186104

namespace A270710

/-- `(n+1)*(n-or(1, -(2*n)))` -/
def P15231549471895186104.Spec : Prop :=
  ∀ n, P15231549471895186104.a n = A270710 n

end A270710

/-! ## A270710.P8397685502621742090

`(n+1)*(n-xor(1, -(2*n)))`
-/

namespace A270710.P8397685502621742090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * ((n : ℤ) - Int.xor 1 (-(2 * n : ℤ)))

end

end A270710.P8397685502621742090

namespace A270710

/-- `(n+1)*(n-xor(1, -(2*n)))` -/
def P8397685502621742090.Spec : Prop :=
  ∀ n, P8397685502621742090.a n = A270710 n

end A270710

/-! ## A270710.P2208080423298489467

`(n+1)*(a(n-1)/n+3)` with `a(0)=-1`
-/

namespace A270710.P2208080423298489467
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [-1] fun n a =>
  (n + 1 : ℚ) * (a (n - 1) / (n : ℚ) + 3)

end

end A270710.P2208080423298489467

namespace A270710

/-- `(n+1)*(a(n-1)/n+3)` -/
def P2208080423298489467.Spec : Prop :=
  ∀ n, P2208080423298489467.a n = (A270710 n : ℚ)

end A270710

/-! ## A270710.P2729213514467422036

`(and(2*n+1, 2*n)+n-1)*(n+1)`
-/

namespace A270710.P2729213514467422036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((Nat.land (2 * n + 1) (2 * n) : ℤ) + ((n : ℤ) - 1)) * (n + 1 : ℤ)

end

end A270710.P2729213514467422036

namespace A270710

/-- `(and(2*n+1, 2*n)+n-1)*(n+1)` -/
def P2729213514467422036.Spec : Prop :=
  ∀ n, P2729213514467422036.a n = A270710 n

end A270710

/-! ## A270710.P4484557556575159139

`(A080859(n)-3)/2`
-/

namespace A270710.P4484557556575159139
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A080859 n - 3 : ℚ) / 2

end

end A270710.P4484557556575159139

namespace A270710

/-- `(A080859(n)-3)/2` -/
def P4484557556575159139.Spec : Prop :=
  ∀ n, P4484557556575159139.a n = (A270710 n : ℚ)

theorem P4484557556575159139.correct : P4484557556575159139.Spec := by
  intro n
  simp only [A270710, Nat.add_sub_cancel, A270710.P4484557556575159139.a, A270710.P7193795266762276404.a, A080859, A080859.P14823795919072812333.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A270710

/-! ## A270710.P6380262502686842024

`(A016778(n)-4)/3`
-/

namespace A270710.P6380262502686842024
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016778 n - 4 : ℚ) / 3

end

end A270710.P6380262502686842024

namespace A270710

/-- `(A016778(n)-4)/3` -/
def P6380262502686842024.Spec : Prop :=
  ∀ n, P6380262502686842024.a n = (A270710 n : ℚ)

theorem P6380262502686842024.correct : P6380262502686842024.Spec := by
  intro n
  simp only [A270710, Nat.add_sub_cancel, A270710.P6380262502686842024.a, A270710.P7193795266762276404.a, A016778, A016778.P16000663877604072744.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A270710

/-! ## A270710.P3768787519194682429

`(A014641(n)-5)/4`
-/

namespace A270710.P3768787519194682429
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A014641 n - 5 : ℚ) / 4

end

end A270710.P3768787519194682429

namespace A270710

/-- `(A014641(n)-5)/4` -/
def P3768787519194682429.Spec : Prop :=
  ∀ n, P3768787519194682429.a n = (A270710 n : ℚ)

theorem P3768787519194682429.correct : P3768787519194682429.Spec := by
  intro n
  simp only [A270710, Nat.add_sub_cancel, A270710.P3768787519194682429.a, A270710.P7193795266762276404.a, A014641, A014641.P17401664217162026339.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A270710

/-! ## A270710.P7958011727108852924

`∑[-A084060(2*n)]`
-/

namespace A270710.P7958011727108852924
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A084060 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A270710.P7958011727108852924

namespace A270710

/-- `∑[-A084060(2*n)]` -/
def P7958011727108852924.Spec : Prop :=
  ∀ n, P7958011727108852924.a n = A270710 n

end A270710

/-! ## A270710.P3589136096892630751

`(n+1)*record[∑{digits}[2*n, #]+n-1]`
-/

namespace A270710.P3589136096892630751
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((((SequenceMachineLib.digits10 (f2 n)).map fun (x : ℕ) => x).sum : ℕ) : ℤ) + ((n : ℤ) - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A270710.P3589136096892630751

namespace A270710

/-- `(n+1)*record[∑{digits}[2*n, #]+n-1]` -/
def P3589136096892630751.Spec : Prop :=
  ∀ n, P3589136096892630751.a n = A270710 n

end A270710

/-! ## A270710.P16596693919504224243

`(n+1)*record[n-dr(∑[n+1])]`
-/

namespace A270710.P16596693919504224243
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (SequenceMachineLib.digitalRoot ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A270710.P16596693919504224243

namespace A270710

/-- `(n+1)*record[n-dr(∑[n+1])]` -/
def P16596693919504224243.Spec : Prop :=
  ∀ n, P16596693919504224243.a n = A270710 n

end A270710

/-! ## A270710.P11820913973939388955

`(2*n+n-1)*gcd(n+1, C(2*n, n))`
-/

namespace A270710.P11820913973939388955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((2 * n : ℤ) + ((n : ℤ) - 1)) * (Nat.gcd (n + 1) (Nat.choose (2 * n) n) : ℤ)

end

end A270710.P11820913973939388955

namespace A270710

/-- `(2*n+n-1)*gcd(n+1, C(2*n, n))` -/
def P11820913973939388955.Spec : Prop :=
  ∀ n, P11820913973939388955.a n = A270710 n

end A270710

/-!
# A270711: Half of increasing gaps between primes.

The programs for A270711, there is no canonical definition to state claims against.
-/

/-! ## A270711.P9455463473113913139

`A005250(n+2)/2`
-/

namespace A270711.P9455463473113913139
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005250 (n + 2) : ℚ) / 2

end

end A270711.P9455463473113913139

/-! ## A270711.P12278028287076997897

`record[A014321(n+1)]`
-/

namespace A270711.P12278028287076997897
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014321 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A270711.P12278028287076997897

/-! ## A270711.P4784497850987213429

`ceil(A008996(n+1)/2)`
-/

namespace A270711.P4784497850987213429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A008996 (n + 1) : ℚ) / 2⌉

end

end A270711.P4784497850987213429

/-! ## A270711.P16374925175024753966

`record[A014320(n+2)/2]`
-/

namespace A270711.P16374925175024753966
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A014320 (n + 2) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A270711.P16374925175024753966

/-! ## A270711.P17202269067893653175

`∑[ceil(A053695(n+1)/2)]`
-/

namespace A270711.P17202269067893653175
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A053695 (n + 1) : ℚ) / 2⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A270711.P17202269067893653175

/-! ## A270711.P13521241937631365022

`a(n-1)*ratio[A005250(n+1)]` with `a(0)=1`
-/

namespace A270711.P13521241937631365022
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005250 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) * ((f1 (n + 1) : ℚ) / (f1 n : ℚ))

end

end A270711.P13521241937631365022

/-! ## A270711.P9135678934258243580

`∑[A053695(C(2, C(2, n))+n)]/2`
-/

namespace A270711.P9135678934258243580
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053695 (Nat.choose 2 (Nat.choose 2 n) + n)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / 2

end

end A270711.P9135678934258243580

/-! ## A270711.P4572725436637958128

`∑[A053695(round(sqrt(n²+1))+1)/2]`
-/

namespace A270711.P4572725436637958128
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A053695 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ)) + 1).toNat : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A270711.P4572725436637958128

/-! ## A270711.P14944549049110991044

`A000463(A008996(n+1))`
-/

namespace A270711.P14944549049110991044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000463 (A008996 (n + 1)).toNat

end

end A270711.P14944549049110991044

/-! ## A270711.P7065240650310008084

`A001281(A005250(n+2))`
-/

namespace A270711.P7065240650310008084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A005250 (n + 2)).toNat

end

end A270711.P7065240650310008084

/-!
# A270714: Decimal expansion of (1/2)^(1/3).

The programs for A270714, there is no canonical definition to state claims against.
-/

/-! ## A270714.P13644586968454010513

`9-A261883(n)`
-/

namespace A270714.P13644586968454010513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 - A261883 n

end

end A270714.P13644586968454010513

/-!
# A270715: a(n) = ((n+2)/2)*Sum_{k=0..n/2}(Sum_{i=0..n-2*k} binomial(k+1,n-2*k-i)*binomial(k+i,k))/(k+1).

The programs for A270715, the canonical program `A270715.P2996188681549751360` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A270715 has offset 0).

The definition of A270715 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 377 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A270715.P1745054706337857407

`ogf((1+x-x^2)/(1-2x+x^4))`
-/

namespace A270715.P1745054706337857407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 1, -1] [1, -2, 0, 0, 1] n

end

end A270715.P1745054706337857407

namespace A270715

/-- `ogf((1+x-x^2)/(1-2x+x^4))` -/
def P1745054706337857407.Spec : Prop :=
  ∀ n, P1745054706337857407.a n = A270715 n

end A270715

/-! ## A270715.P2996188681549751360

`2*a(n-1)-a(n-4)` with `a(0)=1, a(1)=3, a(2)=5, a(3)=10`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A270715

/-- `2*a(n-1)-a(n-4)` -/
def P2996188681549751360.Spec : Prop :=
  ∀ n, P2996188681549751360.a n = A270715 n

theorem P2996188681549751360.correct : P2996188681549751360.Spec := by
  intro n
  simp only [A270715]

end A270715

/-! ## A270715.P10165004357107258978

`a(n-1)+a(n-1)-a(n-4)` with `a(0)=1, a(1)=3, a(2)=5, a(3)=10`
-/

namespace A270715.P10165004357107258978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3, 5, 10] fun n a =>
  a (n - 1) + (a (n - 1) - a (n - 4))

end

end A270715.P10165004357107258978

namespace A270715

/-- `a(n-1)+a(n-1)-a(n-4)` -/
def P10165004357107258978.Spec : Prop :=
  ∀ n, P10165004357107258978.a n = A270715 n

theorem P10165004357107258978.correct : P10165004357107258978.Spec := by
  intro n
  simp only [A270715, Nat.add_sub_cancel, A270715.P10165004357107258978.a, A270715.P2996188681549751360.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A270715

/-! ## A270715.P12741332213464136389

`∑[A214727(n)]`
-/

namespace A270715.P12741332213464136389
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214727 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A270715.P12741332213464136389

namespace A270715

/-- `∑[A214727(n)]` -/
def P12741332213464136389.Spec : Prop :=
  ∀ n, P12741332213464136389.a n = A270715 n

end A270715

/-! ## A270715.P15853771338323317190

`A047081(n)+A008937(n)`
-/

namespace A270715.P15853771338323317190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047081 n + A008937 n

end

end A270715.P15853771338323317190

namespace A270715

/-- `A047081(n)+A008937(n)` -/
def P15853771338323317190.Spec : Prop :=
  ∀ n, P15853771338323317190.a n = A270715 n

end A270715

/-! ## A270715.P15374469932314216004

`A008937(n)+∑[A000213(n)]`
-/

namespace A270715.P15374469932314216004
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000213 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008937 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A270715.P15374469932314216004

namespace A270715

/-- `A008937(n)+∑[A000213(n)]` -/
def P15374469932314216004.Spec : Prop :=
  ∀ n, P15374469932314216004.a n = A270715 n

end A270715

/-! ## A270715.P6191318747488875273

`A354784(n+1)+A202012(n)`
-/

namespace A270715.P6191318747488875273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354784 (n + 1) + A202012 n

end

end A270715.P6191318747488875273

namespace A270715

/-- `A354784(n+1)+A202012(n)` -/
def P6191318747488875273.Spec : Prop :=
  ∀ n, P6191318747488875273.a n = A270715 n

end A270715

/-! ## A270715.P8684485964188970005

`A202012(n+1)-A000073(n)`
-/

namespace A270715.P8684485964188970005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202012 (n + 1) - A000073 n

end

end A270715.P8684485964188970005

namespace A270715

/-- `A202012(n+1)-A000073(n)` -/
def P8684485964188970005.Spec : Prop :=
  ∀ n, P8684485964188970005.a n = A270715 n

end A270715

/-! ## A270715.P7052369121728109352

`A008937(n)+A001590(n+3)`
-/

namespace A270715.P7052369121728109352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008937 n + A001590 (n + 3)

end

end A270715.P7052369121728109352

namespace A270715

/-- `A008937(n)+A001590(n+3)` -/
def P7052369121728109352.Spec : Prop :=
  ∀ n, P7052369121728109352.a n = A270715 n

end A270715

/-! ## A270715.P14837527675919787600

`A192804(n)+2*A008937(n)`
-/

namespace A270715.P14837527675919787600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192804 n + 2 * A008937 n

end

end A270715.P14837527675919787600

namespace A270715

/-- `A192804(n)+2*A008937(n)` -/
def P14837527675919787600.Spec : Prop :=
  ∀ n, P14837527675919787600.a n = A270715 n

end A270715

/-! ## A270715.P12903097525187428529

`∑[A000213(n)+∑[A001590(n)]]`
-/

namespace A270715.P12903097525187428529
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001590 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000213 n + ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A270715.P12903097525187428529

namespace A270715

/-- `∑[A000213(n)+∑[A001590(n)]]` -/
def P12903097525187428529.Spec : Prop :=
  ∀ n, P12903097525187428529.a n = A270715 n

end A270715

/-! ## A270715.P16966768387358956315

`∑[∑[A000213(n)]-A000073(n)]`
-/

namespace A270715.P16966768387358956315
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000213 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - A000073 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A270715.P16966768387358956315

namespace A270715

/-- `∑[∑[A000213(n)]-A000073(n)]` -/
def P16966768387358956315.Spec : Prop :=
  ∀ n, P16966768387358956315.a n = A270715 n

end A270715

/-! ## A270715.P16842345362520783731

`∑[A214825(n)-∑[A001590(n)]]`
-/

namespace A270715.P16842345362520783731
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001590 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214825 n - ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A270715.P16842345362520783731

namespace A270715

/-- `∑[A214825(n)-∑[A001590(n)]]` -/
def P16842345362520783731.Spec : Prop :=
  ∀ n, P16842345362520783731.a n = A270715 n

end A270715

/-! ## A270715.P6486373249065248412

`∑[A000213(n)+A000073(n+1)]`
-/

namespace A270715.P6486373249065248412
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000213 n + A000073 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A270715.P6486373249065248412

namespace A270715

/-- `∑[A000213(n)+A000073(n+1)]` -/
def P6486373249065248412.Spec : Prop :=
  ∀ n, P6486373249065248412.a n = A270715 n

end A270715

/-! ## A270715.P619623185278793201

`A000073(n+1)+Δ[A062544(n)]`
-/

namespace A270715.P619623185278793201
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062544 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000073 (n + 1) + (f1 (n + 1) - f1 n)

end

end A270715.P619623185278793201

namespace A270715

/-- `A000073(n+1)+Δ[A062544(n)]` -/
def P619623185278793201.Spec : Prop :=
  ∀ n, P619623185278793201.a n = A270715 n

end A270715

/-! ## A270715.P2426657901612446983

`A202012(n)+Δ[A000213(n+1)]`
-/

namespace A270715.P2426657901612446983
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000213 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202012 n + (f1 (n + 1) - f1 n)

end

end A270715.P2426657901612446983

namespace A270715

/-- `A202012(n)+Δ[A000213(n+1)]` -/
def P2426657901612446983.Spec : Prop :=
  ∀ n, P2426657901612446983.a n = A270715 n

end A270715

/-! ## A270715.P11421008727017061019

`∑[2*A000213(n)]-A192804(n)`
-/

namespace A270715.P11421008727017061019
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000213 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A192804 n

end

end A270715.P11421008727017061019

namespace A270715

/-- `∑[2*A000213(n)]-A192804(n)` -/
def P11421008727017061019.Spec : Prop :=
  ∀ n, P11421008727017061019.a n = A270715 n

end A270715

/-! ## A270715.P3927540531971353783

`∑[(A214825(n)+A000213(n))/2]`
-/

namespace A270715.P3927540531971353783
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A214825 n + A000213 n : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A270715.P3927540531971353783

namespace A270715

/-- `∑[(A214825(n)+A000213(n))/2]` -/
def P3927540531971353783.Spec : Prop :=
  ∀ n, P3927540531971353783.a n = (A270715 n : ℚ)

end A270715

/-! ## A270715.P8742276052128119086

`record[A248098(n+1)-A001590(n)]`
-/

namespace A270715.P8742276052128119086
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248098 (n + 1) - A001590 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A270715.P8742276052128119086

namespace A270715

/-- `record[A248098(n+1)-A001590(n)]` -/
def P8742276052128119086.Spec : Prop :=
  ∀ n, P8742276052128119086.a n = A270715 n

end A270715

/-! ## A270715.P3604177531406766721

`A008937(n+1)+A000073(n+1)`
-/

namespace A270715.P3604177531406766721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008937 (n + 1) + A000073 (n + 1)

end

end A270715.P3604177531406766721

namespace A270715

/-- `A008937(n+1)+A000073(n+1)` -/
def P3604177531406766721.Spec : Prop :=
  ∀ n, P3604177531406766721.a n = A270715 n

end A270715

/-!
# A270716: Number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 197", based on the 5-celled von Neumann neighborhood.

The programs for A270716, there is no canonical definition to state claims against.
-/

/-! ## A270716.P8391330942197781942

`A270719(n-1)+a(n-1)` with `a(0)=1`
-/

namespace A270716.P8391330942197781942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A270719 (n - 1) + a (n - 1)

end

end A270716.P8391330942197781942

/-! ## A270716.P10407212832072500421

`a(n-1)-A057428(A246029(n))*A270719(n-1)` with `a(0)=1`
-/

namespace A270716.P10407212832072500421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) - A057428 (A246029 n).toNat * A270719 (n - 1)

end

end A270716.P10407212832072500421

/-! ## A270716.P9268412229813281468

`Δ[A270718(n)]-A270719(n)`
-/

namespace A270716.P9268412229813281468
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270718 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A270719 n

end

end A270716.P9268412229813281468

/-! ## A270716.P2031555246752870569

`A270718(n+1)-(A270719(n)+A270718(n))`
-/

namespace A270716.P2031555246752870569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270718 (n + 1) - (A270719 n + A270718 n)

end

end A270716.P2031555246752870569

/-!
# A270717: Number of active (ON, black) cells at stage 2^n-1 of the two-dimensional cellular automaton defined by "Rule 197", based on the 5-celled von Neumann neighborhood.

The programs for A270717, there is no canonical definition to state claims against.
-/

/-! ## A270717.P15618504202271043326

`A270716(2^n-1)`
-/

namespace A270717.P15618504202271043326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270716 (2 ^ n - 1)

end

end A270717.P15618504202271043326

/-! ## A270717.P12713793929451715364

`record[A270716(A227351(n))]`
-/

namespace A270717.P12713793929451715364
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270716 (A227351 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A270717.P12713793929451715364

/-! ## A270717.P3732522892679157725

`and(-3, A270716(A000225(n)))`
-/

namespace A270717.P3732522892679157725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-3) (A270716 (A000225 n).toNat)

end

end A270717.P3732522892679157725

/-! ## A270717.P897610557715861867

`record[A270716(A023758(n+1))]`
-/

namespace A270717.P897610557715861867
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270716 (A023758 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A270717.P897610557715861867

/-! ## A270717.P13537178878100646306

`record[A270716(A181062(n+1))]`
-/

namespace A270717.P13537178878100646306
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270716 (A181062 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A270717.P13537178878100646306

/-!
# A270718: Partial sums of the number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 197", based on the 5-celled von Neumann neighborhood.

The programs for A270718, there is no canonical definition to state claims against.
-/

/-! ## A270718.P12787919734789571552

`∑[A270716(n)]`
-/

namespace A270718.P12787919734789571552
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270716 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A270718.P12787919734789571552

/-! ## A270718.P11974835118464926172

`A270716(A110654(n+n))+a(n-1)` with `a(0)=1`
-/

namespace A270718.P11974835118464926172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A270716 (A110654 (n + n)).toNat + a (n - 1)

end

end A270718.P11974835118464926172

/-! ## A270718.P14006492125960069704

`A270716(n%A000040(n))+a(n-1)` with `a(0)=1`
-/

namespace A270718.P14006492125960069704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A270716 (Int.tmod (n : ℤ) (A000040 n)).toNat + a (n - 1)

end

end A270718.P14006492125960069704

/-! ## A270718.P14017154197550259566

`∑[A270719(n-1)+a(n-1)]` with `a(0)=1`
-/

namespace A270718.P14017154197550259566
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  A270719 (n - 1) + f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A270718.P14017154197550259566

/-! ## A270718.P16623329218009117706

`A270716(n+1)+a(n-1)-A270719(n)` with `a(0)=1`
-/

namespace A270718.P16623329218009117706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A270716 (n + 1) + (a (n - 1) - A270719 n)

end

end A270718.P16623329218009117706

/-!
# A270719: First differences of number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 197", based on the 5-celled von Neumann neighborhood.

The programs for A270719, there is no canonical definition to state claims against.
-/

/-! ## A270719.P1898567433441237213

`Δ[A270716(n)]`
-/

namespace A270719.P1898567433441237213
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270716 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A270719.P1898567433441237213

/-! ## A270719.P17031406537441238971

`A270716(n+1)-A270716(n)`
-/

namespace A270719.P17031406537441238971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270716 (n + 1) - A270716 n

end

end A270719.P17031406537441238971

/-! ## A270719.P2904424062303519266

`A270235(n)+A184955(A275733(n))`
-/

namespace A270719.P2904424062303519266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270235 n + A184955 (A275733 n).toNat

end

end A270719.P2904424062303519266

/-! ## A270719.P1295444116653771341

`A347689(A185135(n))+A270235(n)`
-/

namespace A270719.P1295444116653771341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347689 (A185135 n).toNat + A270235 n

end

end A270719.P1295444116653771341

/-! ## A270719.P264766436181069630

`A184955(A275733(n))+Δ[A270232(n)]`
-/

namespace A270719.P264766436181069630
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270232 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184955 (A275733 n).toNat + (f1 (n + 1) - f1 n)

end

end A270719.P264766436181069630

/-!
# A270720: Number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 201", based on the 5-celled von Neumann neighborhood.

The programs for A270720, there is no canonical definition to state claims against.
-/

/-! ## A270720.P1848965835322565242

`A270723(n-1)+a(n-1)` with `a(0)=1`
-/

namespace A270720.P1848965835322565242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A270723 (n - 1) + a (n - 1)

end

end A270720.P1848965835322565242

/-! ## A270720.P9907367410910578979

`Δ[A270722(n)]-A270723(n)`
-/

namespace A270720.P9907367410910578979
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270722 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A270723 n

end

end A270720.P9907367410910578979

/-! ## A270720.P17108194919485274187

`∑[A270723(A028310(n)-1)]-2`
-/

namespace A270720.P17108194919485274187
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270723 (A028310 n - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 2

end

end A270720.P17108194919485274187

/-! ## A270720.P14178245011002852296

`∑[A270723(2*n-n)]+1-A270723(n)`
-/

namespace A270720.P14178245011002852296
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270723 (2 * n - n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (1 - A270723 n)

end

end A270720.P14178245011002852296

/-! ## A270720.P10996309154891206385

`A270722(n+1)-(A270723(n)+A270722(n))`
-/

namespace A270720.P10996309154891206385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270722 (n + 1) - (A270723 n + A270722 n)

end

end A270720.P10996309154891206385

/-!
# A270721: Number of active (ON, black) cells at stage 2^n-1 of the two-dimensional cellular automaton defined by "Rule 201", based on the 5-celled von Neumann neighborhood.

The programs for A270721, there is no canonical definition to state claims against.
-/

/-! ## A270721.P7375630469169830579

`A270720(2^n-1)`
-/

namespace A270721.P7375630469169830579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270720 (2 ^ n - 1)

end

end A270721.P7375630469169830579

/-! ## A270721.P9175121115481045756

`record[A270720(A091264(n))]`
-/

namespace A270721.P9175121115481045756
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270720 (A091264 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A270721.P9175121115481045756

/-! ## A270721.P8950413905966225127

`record[A270720(A218616(n))]`
-/

namespace A270721.P8950413905966225127
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270720 (A218616 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A270721.P8950413905966225127

/-! ## A270721.P8353122038284298023

`record[A270720(A318921(n))]`
-/

namespace A270721.P8353122038284298023
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270720 (A318921 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A270721.P8353122038284298023

/-! ## A270721.P2920400908483087675

`record[A270720(A245611(n+1))]`
-/

namespace A270721.P2920400908483087675
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270720 (A245611 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A270721.P2920400908483087675

/-!
# A270722: Partial sums of the number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 201", based on the 5-celled von Neumann neighborhood.

The programs for A270722, there is no canonical definition to state claims against.
-/

/-! ## A270722.P11325893365893096352

`∑[A270723(n-1)+a(n-1)]` with `a(0)=1`
-/

namespace A270722.P11325893365893096352
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  A270723 (n - 1) + f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A270722.P11325893365893096352

/-! ## A270722.P12006471729511874293

`∑[∑[A270723(A028310(n)-1)]-2]`
-/

namespace A270722.P12006471729511874293
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270723 (A028310 n - 1).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A270722.P12006471729511874293

/-! ## A270722.P6212317496504205194

`∑[∑[A270723(n)]+1-A270723(n)]`
-/

namespace A270722.P6212317496504205194
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270723 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + (1 - A270723 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A270722.P6212317496504205194

/-! ## A270722.P16498453173562589851

`∑[A270720(n)]`
-/

namespace A270722.P16498453173562589851
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270720 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A270722.P16498453173562589851

/-! ## A270722.P14845296779809539419

`a(n-1)+A270720(n)+A000038(n)` with `a(0)=1`
-/

namespace A270722.P14845296779809539419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (A270720 n + A000038 n)

end

end A270722.P14845296779809539419

/-! ## A270722.P15540646679480160224

`A270720(n%A270720(n))+a(n-1)` with `a(0)=1`
-/

namespace A270722.P15540646679480160224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A270720 (Int.tmod (n : ℤ) (A270720 n)).toNat + a (n - 1)

end

end A270722.P15540646679480160224

/-! ## A270722.P5168730707549404297

`a(n-1)+A270720(n)+A000007(n+1)` with `a(0)=1`
-/

namespace A270722.P5168730707549404297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (A270720 n + A000007 (n + 1))

end

end A270722.P5168730707549404297

/-!
# A270723: First differences of number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 201", based on the 5-celled von Neumann neighborhood.

The programs for A270723, there is no canonical definition to state claims against.
-/

/-! ## A270723.P8302348571867760633

`Δ[A270722(n)]-A270720(n)`
-/

namespace A270723.P8302348571867760633
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270722 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A270720 n

end

end A270723.P8302348571867760633

/-! ## A270723.P4031100679869176038

`Δ[A270720(n)]`
-/

namespace A270723.P4031100679869176038
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270720 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A270723.P4031100679869176038

/-! ## A270723.P6570629918831017009

`A270720(n+1)-A270720(n)`
-/

namespace A270723.P6570629918831017009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270720 (n + 1) - A270720 n

end

end A270723.P6570629918831017009

/-! ## A270723.P16973101084172938717

`A270720(-xor(n, -1))+A001489(A270720(n))`
-/

namespace A270723.P16973101084172938717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270720 (-Int.xor (n : ℤ) (-1)).toNat + A001489 (A270720 n).toNat

end

end A270723.P16973101084172938717

/-! ## A270723.P10650457513530819166

`A270720(A000027(n+1))+A001489(A270720(n))`
-/

namespace A270723.P10650457513530819166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270720 (A000027 (n + 1)).toNat + A001489 (A270720 n).toNat

end

end A270723.P10650457513530819166

/-!
# A270724: a(n) = ((n+2)/2)*Sum_{k=0..n/2} (Sum_{i=0..n-2*k} (binomial(k+1,n-2*k-i)*binomial(k+i,k))/(k+1)*C(k)), where C(k) is Catalan numbers.

The programs for A270724, there is no canonical definition to state claims against.
-/

/-! ## A270724.P9237126872511942388

`∑[A127389(n)+∑[A127389(n+1)]]-1`
-/

namespace A270724.P9237126872511942388
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127389 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127389 n + ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A270724.P9237126872511942388

/-! ## A270724.P8600303746111750189

`floor(root(A167811(n+3), 5))`
-/

namespace A270724.P8600303746111750189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A167811 (n + 3) : ℝ) ^ (1 / (5 : ℝ))⌋

end

end A270724.P8600303746111750189

/-! ## A270724.P1877463411670127466

`A001462(A225826(n)-(1-2^n))`
-/

namespace A270724.P1877463411670127466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001462 (A225826 n - (1 - (2 ^ n : ℤ))).toNat

end

end A270724.P1877463411670127466

/-! ## A270724.P6106536532848297182

`A193832(A005493(n)-A348382(n))`
-/

namespace A270724.P6106536532848297182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193832 (A005493 n - A348382 n).toNat

end

end A270724.P6106536532848297182

/-!
# A270725: Number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 203", based on the 5-celled von Neumann neighborhood.

The programs for A270725, there is no canonical definition to state claims against.
-/

/-! ## A270725.P5088052940725989200

`A270728(n-1)+a(n-1)` with `a(0)=1`
-/

namespace A270725.P5088052940725989200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A270728 (n - 1) + a (n - 1)

end

end A270725.P5088052940725989200

/-! ## A270725.P13035092226149394821

`Δ[A270727(n)]-A270728(n)`
-/

namespace A270725.P13035092226149394821
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270727 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A270728 n

end

end A270725.P13035092226149394821

/-! ## A270725.P12641263233226704975

`∑[A270728(A028310(n)-1)]-3`
-/

namespace A270725.P12641263233226704975
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270728 (A028310 n - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 3

end

end A270725.P12641263233226704975

/-! ## A270725.P13257497645969265069

`A270727(n+1)-(A270728(n)+A270727(n))`
-/

namespace A270725.P13257497645969265069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270727 (n + 1) - (A270728 n + A270727 n)

end

end A270725.P13257497645969265069

/-! ## A270725.P5404509647450769125

`A141310(∑[A270728(abs(1-n))])`
-/

namespace A270725.P5404509647450769125
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270728 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141310 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A270725.P5404509647450769125

/-! ## A270725.P12085168616801098219

`A141310(∑[A270728(n)]-A270728(n))`
-/

namespace A270725.P12085168616801098219
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270728 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141310 (∑ j ∈ Finset.range (n + 1), f1 j - A270728 n).toNat

end

end A270725.P12085168616801098219

/-!
# A270726: Number of active (ON, black) cells at stage 2^n-1 of the two-dimensional cellular automaton defined by "Rule 203", based on the 5-celled von Neumann neighborhood.

The programs for A270726, there is no canonical definition to state claims against.
-/

/-! ## A270726.P4595436739939963614

`A270725(2^n-1)`
-/

namespace A270726.P4595436739939963614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270725 (2 ^ n - 1)

end

end A270726.P4595436739939963614

/-! ## A270726.P4452176291474522298

`or(1, A270725(A000225(n)))`
-/

namespace A270726.P4452176291474522298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A270725 (A000225 n).toNat)

end

end A270726.P4452176291474522298

/-! ## A270726.P16237327642958922392

`record[A270725(A181062(n+1))]`
-/

namespace A270726.P16237327642958922392
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270725 (A181062 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A270726.P16237327642958922392

/-! ## A270726.P17968561193336071680

`record[A036987(n)*A270725(n)]`
-/

namespace A270726.P17968561193336071680
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036987 n * A270725 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A270726.P17968561193336071680

/-! ## A270726.P16135743328739528139

`record[A270725(abs(A324543(n+1)))]`
-/

namespace A270726.P16135743328739528139
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270725 |A324543 (n + 1)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A270726.P16135743328739528139

/-!
# A270727: Partial sums of the number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 203", based on the 5-celled von Neumann neighborhood.

The programs for A270727, there is no canonical definition to state claims against.
-/

/-! ## A270727.P18237247507682035916

`∑[A270728(n-1)+a(n-1)]` with `a(0)=1`
-/

namespace A270727.P18237247507682035916
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  A270728 (n - 1) + f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A270727.P18237247507682035916

/-! ## A270727.P12199874551527976484

`∑[∑[A270728(n)]+1-A270728(n)]`
-/

namespace A270727.P12199874551527976484
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270728 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + (1 - A270728 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A270727.P12199874551527976484

/-! ## A270727.P9539210420689379477

`∑[A270725(n)]`
-/

namespace A270727.P9539210420689379477
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270725 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A270727.P9539210420689379477

/-! ## A270727.P14464379997720370144

`A270725(n)+a(A023443(n))` with `a(0)=1`
-/

namespace A270727.P14464379997720370144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A270725 n + a (A023443 n).toNat

end

end A270727.P14464379997720370144

/-! ## A270727.P9378140506160294589

`a(n-1)+A001221(A001316(n))*A270725(n)` with `a(0)=1`
-/

namespace A270727.P9378140506160294589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + A001221 (A001316 n).toNat * A270725 n

end

end A270727.P9378140506160294589

/-!
# A270728: First differences of number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 203", based on the 5-celled von Neumann neighborhood.

The programs for A270728, there is no canonical definition to state claims against.
-/

/-! ## A270728.P13415875097972297213

`Δ[A270725(n)]`
-/

namespace A270728.P13415875097972297213
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270725 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A270728.P13415875097972297213

/-! ## A270728.P6602562686895870955

`A270725(n+1)-A270725(n)`
-/

namespace A270728.P6602562686895870955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270725 (n + 1) - A270725 n

end

end A270728.P6602562686895870955

/-!
# A270729: Number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 205", based on the 5-celled von Neumann neighborhood.

The programs for A270729, there is no canonical definition to state claims against.
-/

/-! ## A270729.P15265072649808564740

`A270732(n-1)+a(n-1)` with `a(0)=1`
-/

namespace A270729.P15265072649808564740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A270732 (n - 1) + a (n - 1)

end

end A270729.P15265072649808564740

/-! ## A270729.P528183360368647579

`A008683(4*(n+1))!+∑[A270732(n)]-A270732(n)`
-/

namespace A270729.P528183360368647579
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270732 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (A008683 (4 * (n + 1))).toNat : ℤ) + (∑ j ∈ Finset.range (n + 1), f1 j - A270732 n)

end

end A270729.P528183360368647579

/-! ## A270729.P17328388211635435342

`A014963(6*(n+3))+∑[A270732(n)]-A270732(n)`
-/

namespace A270729.P17328388211635435342
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270732 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (6 * (n + 3)) + (∑ j ∈ Finset.range (n + 1), f1 j - A270732 n)

end

end A270729.P17328388211635435342

/-! ## A270729.P8239593894144001952

`Δ[A270731(n)]-A270732(n)`
-/

namespace A270729.P8239593894144001952
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270731 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A270732 n

end

end A270729.P8239593894144001952

/-! ## A270729.P556919524568967521

`A270731(n+1)-(A270732(n)+A270731(n))`
-/

namespace A270729.P556919524568967521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270731 (n + 1) - (A270732 n + A270731 n)

end

end A270729.P556919524568967521

/-! ## A270729.P14111806336154873895

`A098181(∑[A270732(n)]-A270732(n))`
-/

namespace A270729.P14111806336154873895
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270732 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098181 (∑ j ∈ Finset.range (n + 1), f1 j - A270732 n).toNat

end

end A270729.P14111806336154873895

/-!
# A270730: Number of active (ON, black) cells at stage 2^n-1 of the two-dimensional cellular automaton defined by "Rule 205", based on the 5-celled von Neumann neighborhood.

The programs for A270730, there is no canonical definition to state claims against.
-/

/-! ## A270730.P12314919748922212184

`A270729(2^n-1)`
-/

namespace A270730.P12314919748922212184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270729 (2 ^ n - 1)

end

end A270730.P12314919748922212184

/-! ## A270730.P8765289529174465560

`record[A270729(A173787(n))]`
-/

namespace A270730.P8765289529174465560
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270729 (A173787 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A270730.P8765289529174465560

/-! ## A270730.P768498673547452263

`record[A270729(A192120(n+1))]`
-/

namespace A270730.P768498673547452263
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270729 (A192120 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A270730.P768498673547452263

/-! ## A270730.P13028213895220962235

`record[A270729(A269386(n+1))]`
-/

namespace A270730.P13028213895220962235
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270729 (A269386 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A270730.P13028213895220962235

/-! ## A270730.P18376123994105146067

`record[A270729(A059268(n)-1)]`
-/

namespace A270730.P18376123994105146067
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270729 (A059268 n - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A270730.P18376123994105146067

/-!
# A270731: Partial sums of the number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 205", based on the 5-celled von Neumann neighborhood.

The programs for A270731, there is no canonical definition to state claims against.
-/

/-! ## A270731.P14747109365740543463

`∑[A270729(n)]`
-/

namespace A270731.P14747109365740543463
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270729 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A270731.P14747109365740543463

/-! ## A270731.P7672232842069994674

`∑[A270732(n-1)+a(n-1)]` with `a(0)=1`
-/

namespace A270731.P7672232842069994674
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  A270732 (n - 1) + f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A270731.P7672232842069994674

/-! ## A270731.P16684143094194514889

`A270729(n)+a(A023443(n))` with `a(0)=1`
-/

namespace A270731.P16684143094194514889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A270729 n + a (A023443 n).toNat

end

end A270731.P16684143094194514889

/-! ## A270731.P13554728516920254982

`∑[∑[A270732(n)]-A270732(n)+1]`
-/

namespace A270731.P13554728516920254982
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270732 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - A270732 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A270731.P13554728516920254982

/-! ## A270731.P11552928777813939108

`a(n-1)+A062157(n)²*A270729(n)` with `a(0)=1`
-/

namespace A270731.P11552928777813939108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + A062157 n ^ 2 * A270729 n

end

end A270731.P11552928777813939108

/-!
# A270732: First differences of number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 205", based on the 5-celled von Neumann neighborhood.

The programs for A270732, there is no canonical definition to state claims against.
-/

/-! ## A270732.P12670129970573343582

`Δ[A270729(n)]`
-/

namespace A270732.P12670129970573343582
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270729 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A270732.P12670129970573343582

/-! ## A270732.P10194644553350399910

`A270729(n+1)-A270729(n)`
-/

namespace A270732.P10194644553350399910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270729 (n + 1) - A270729 n

end

end A270732.P10194644553350399910

/-! ## A270732.P10921230184881435180

`A270729(C(n+1, n))+A001489(A270729(n))`
-/

namespace A270732.P10921230184881435180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270729 (Nat.choose (n + 1) n) + A001489 (A270729 n).toNat

end

end A270732.P10921230184881435180

/-! ## A270732.P2596772451491380556

`A270729(A000027(n+1))+A001489(A270729(n))`
-/

namespace A270732.P2596772451491380556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270729 (A000027 (n + 1)).toNat + A001489 (A270729 n).toNat

end

end A270732.P2596772451491380556

/-! ## A270732.P1611019576042012628

`A270729(-A001478(n+1))+A001489(A270729(n))`
-/

namespace A270732.P1611019576042012628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270729 (-A001478 (n + 1)).toNat + A001489 (A270729 n).toNat

end

end A270732.P1611019576042012628

/-!
# A270733: Number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 206", based on the 5-celled von Neumann neighborhood.

The programs for A270733, there is no canonical definition to state claims against.
-/

/-! ## A270733.P16891116284990459025

`∑[A270736(abs(1-n))]-2`
-/

namespace A270733.P16891116284990459025
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270736 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 2

end

end A270733.P16891116284990459025

/-! ## A270733.P2018983659561086885

`A270736(n-1)+a(n-1)` with `a(0)=1`
-/

namespace A270733.P2018983659561086885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A270736 (n - 1) + a (n - 1)

end

end A270733.P2018983659561086885

/-! ## A270733.P15982689818422482635

`Δ[A270735(n)]-A270736(n)`
-/

namespace A270733.P15982689818422482635
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270735 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A270736 n

end

end A270733.P15982689818422482635

/-! ## A270733.P45306673655085128

`∑[A270736(n)+A000007(n)]-A270736(n)`
-/

namespace A270733.P45306673655085128
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270736 n + A000007 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A270736 n

end

end A270733.P45306673655085128

/-! ## A270733.P11403605932837592127

`A270735(n+1)-(A270736(n)+A270735(n))`
-/

namespace A270733.P11403605932837592127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270735 (n + 1) - (A270736 n + A270735 n)

end

end A270733.P11403605932837592127

/-! ## A270733.P7856843939661053834

`A289207(∑[A270736(abs(1-n))])`
-/

namespace A270733.P7856843939661053834
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270736 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289207 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A270733.P7856843939661053834

/-!
# A270734: Number of active (ON, black) cells at stage 2^n-1 of the two-dimensional cellular automaton defined by "Rule 206", based on the 5-celled von Neumann neighborhood.

The programs for A270734, there is no canonical definition to state claims against.
-/

/-! ## A270734.P2554162616362560876

`A270733(2^n-1)`
-/

namespace A270734.P2554162616362560876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270733 (2 ^ n - 1)

end

end A270734.P2554162616362560876

/-! ## A270734.P5871541383455054089

`record[A270733(A135481(n))]`
-/

namespace A270734.P5871541383455054089
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270733 (A135481 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A270734.P5871541383455054089

/-! ## A270734.P16360092794900480188

`record[A270733(A154436(n))]`
-/

namespace A270734.P16360092794900480188
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270733 (A154436 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A270734.P16360092794900480188

/-! ## A270734.P2712449250970293281

`record[A270733(A218616(n))]`
-/

namespace A270734.P2712449250970293281
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270733 (A218616 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A270734.P2712449250970293281

/-! ## A270734.P15908197317903358614

`record[A270733(A255565(n))]`
-/

namespace A270734.P15908197317903358614
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270733 (A255565 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A270734.P15908197317903358614

/-!
# A270735: Partial sums of the number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 206", based on the 5-celled von Neumann neighborhood.

The programs for A270735, there is no canonical definition to state claims against.
-/

/-! ## A270735.P13906811437640493910

`∑[A270733(n)]`
-/

namespace A270735.P13906811437640493910
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270733 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A270735.P13906811437640493910

/-! ## A270735.P5396025565356149838

`A270733(n%A000040(n))+a(n-1)` with `a(0)=1`
-/

namespace A270735.P5396025565356149838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A270733 (Int.tmod (n : ℤ) (A000040 n)).toNat + a (n - 1)

end

end A270735.P5396025565356149838

/-! ## A270735.P6301929121322413695

`a(n-1)+A270733(n)+A000007(n+1)` with `a(0)=1`
-/

namespace A270735.P6301929121322413695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (A270733 n + A000007 (n + 1))

end

end A270735.P6301929121322413695

/-! ## A270735.P2134092017757534195

`∑[∑[A270736(abs(1-n))]-2]`
-/

namespace A270735.P2134092017757534195
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270736 |1 - (n : ℤ)|.toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A270735.P2134092017757534195

/-! ## A270735.P17423347706954847720

`∑[A270736(n-1)+a(n-1)]` with `a(0)=1`
-/

namespace A270735.P17423347706954847720
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  A270736 (n - 1) + f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A270735.P17423347706954847720

/-! ## A270735.P11737159166394028463

`∑[A289207(∑[A270736(abs(1-n))])]`
-/

namespace A270735.P11737159166394028463
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270736 |1 - (n : ℤ)|.toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289207 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A270735.P11737159166394028463

/-! ## A270735.P7734433181697569041

`a(n-1)+A270733(n)+A060862(A059268(n)²)` with `a(0)=1`
-/

namespace A270735.P7734433181697569041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (A270733 n + A060862 (A059268 n ^ 2).toNat)

end

end A270735.P7734433181697569041

/-!
# A270736: First differences of number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 206", based on the 5-celled von Neumann neighborhood.

The programs for A270736, there is no canonical definition to state claims against.
-/

/-! ## A270736.P12519986452513765986

`Δ[A270733(n)]`
-/

namespace A270736.P12519986452513765986
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270733 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A270736.P12519986452513765986

/-! ## A270736.P15291597386106805964

`A270733(n+1)-A270733(n)`
-/

namespace A270736.P15291597386106805964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270733 (n + 1) - A270733 n

end

end A270736.P15291597386106805964

/-! ## A270736.P530894803846259865

`A270733(n+1)+A270733(n)*A307428(A000040(n+1))`
-/

namespace A270736.P530894803846259865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270733 (n + 1) + A270733 n * A307428 (A000040 (n + 1)).toNat

end

end A270736.P530894803846259865

/-!
# A270737: a(n) = ((n+2)/2)*Sum_{k=0..n/2} (Sum_{i=0..n-2*k} (binomial(k+1,n-2*k-i)*binomial(k+i,k))*F(k+1)/(k+1)), where F(k) is Fibonacci numbers.

The programs for A270737, the canonical program `A270737.P17311610244327417608` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A270737 has offset 0).

The definition of A270737 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A270737.P17311610244327417608

`2*a(n-1)+2*a(n-5)+a(n-6)` with `a(0)=1, a(1)=3, a(2)=5, a(3)=10, a(4)=20, a(5)=42`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A270737

/-- `2*a(n-1)+2*a(n-5)+a(n-6)` -/
def P17311610244327417608.Spec : Prop :=
  ∀ n, (P17311610244327417608.a n : ℤ) = A270737 n

theorem P17311610244327417608.correct : P17311610244327417608.Spec := by
  intro n
  simp only [A270737]

end A270737

/-! ## A270737.P15471712449419923286

`A110110(n)+A064547(A090317(n))`
-/

namespace A270737.P15471712449419923286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110110 n + A064547 (A090317 n).toNat

end

end A270737.P15471712449419923286

namespace A270737

/-- `A110110(n)+A064547(A090317(n))` -/
def P15471712449419923286.Spec : Prop :=
  ∀ n, P15471712449419923286.a n = A270737 n

end A270737

/-! ## A270737.P12279588735243389905

`A001650(A150580(n))-A002264(n)`
-/

namespace A270737.P12279588735243389905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001650 (A150580 n).toNat - A002264 n

end

end A270737.P12279588735243389905

namespace A270737

/-- `A001650(A150580(n))-A002264(n)` -/
def P12279588735243389905.Spec : Prop :=
  ∀ n, P12279588735243389905.a n = A270737 n

end A270737

/-! ## A270737.P12901984399928521094

`A003056(n)+∑[A342778(A205484(n))]`
-/

namespace A270737.P12901984399928521094
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342778 (A205484 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A270737.P12901984399928521094

namespace A270737

/-- `A003056(n)+∑[A342778(A205484(n))]` -/
def P12901984399928521094.Spec : Prop :=
  ∀ n, P12901984399928521094.a n = A270737 n

end A270737

/-!
# A270739: Prime powers (p^k, p prime, k > 1) of the form x^2 + y^2 where x and y are nonzero integers.

The programs for A270739, there is no canonical definition to state claims against.
-/

/-! ## A270739.P13872330215169646135

`record[A008475(A266927(n+1))]`
-/

namespace A270739.P13872330215169646135
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008475 (A266927 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A270739.P13872330215169646135

/-! ## A270739.P5780385605297816456

`filter[A266927(n+1), A069513(#)]`
-/

namespace A270739.P5780385605297816456
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266927 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A069513 (f1 j).toNat = 1) n)

end

end A270739.P5780385605297816456

/-! ## A270739.P11880320565395658149

`filter[A266927(n+1), A354923(#)]`
-/

namespace A270739.P11880320565395658149
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266927 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354923 (f1 j).toNat = 1) n)

end

end A270739.P11880320565395658149

/-! ## A270739.P16622445141025671723

`filter[A266927(n+1), A354924(#)]`
-/

namespace A270739.P16622445141025671723
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266927 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354924 (f1 j).toNat = 1) n)

end

end A270739.P16622445141025671723

/-! ## A270739.P16777883405418896518

`filter[A266927(n+1), A359466(#)]`
-/

namespace A270739.P16777883405418896518
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266927 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359466 (f1 j).toNat = 1) n)

end

end A270739.P16777883405418896518

/-!
# A270740: Period 9: repeat 0,1,2,2,0,1,1,2,0.

The programs for A270740, the canonical program `A270740.P9904091041801953225` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A270740 has offset 0).

The definition of A270740 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A270740.P9904091041801953225

`(n-floor(n/3))%3`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A270740

/-- `(n-floor(n/3))%3` -/
def P9904091041801953225.Spec : Prop :=
  ∀ n, P9904091041801953225.a n = A270740 n

theorem P9904091041801953225.correct : P9904091041801953225.Spec := by
  intro n
  simp only [A270740]

end A270740

/-!
# A270741: a(n) = (Fibonacci(n+2)-1) mod Fibonacci(floor(n/2)).

The programs for A270741, the canonical program `A270741.P8617871322809193337` is in `Seq.B001.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A270741 has offset 2).

The definition of A270741 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(A000045(n+4)-1)%A000045(floor((n+2)/2))` (program `A270741.P8617871322809193337`, by `A270741.P8617871322809193337.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A270741.P8617871322809193337

`(A000045(n+4)-1)%A000045(floor((n+2)/2))`

The canonical program, it is in `Seq.B001.C010`.
-/

namespace A270741

/-- `(A000045(n+4)-1)%A000045(floor((n+2)/2))` -/
def P8617871322809193337.Spec : Prop :=
  ∀ n, P8617871322809193337.a n = A270741 (n + 2)

theorem P8617871322809193337.correct : P8617871322809193337.Spec := by
  intro n
  simp only [A270741, Nat.add_sub_cancel]

end A270741

/-! ## A270741.P16031643782964406430

`(∑[a(n-1)-(1-a(n-2))]-n)%A103609(n+2)` with `a(0)=2, a(1)=3`
-/

namespace A270741.P16031643782964406430
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [2, 3] fun n f1 =>
  f1 (n - 1) - (1 - f1 (n - 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ)) (A103609 (n + 2))

end

end A270741.P16031643782964406430

namespace A270741

/-- `(∑[a(n-1)-(1-a(n-2))]-n)%A103609(n+2)` -/
def P16031643782964406430.Spec : Prop :=
  ∀ n, P16031643782964406430.a n = A270741 (n + 2)

end A270741

/-! ## A270741.P5129628174324867034

`(A020701(n)-1)%A103609(n+2)`
-/

namespace A270741.P5129628174324867034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A020701 n - 1) (A103609 (n + 2))

end

end A270741.P5129628174324867034

namespace A270741

/-- `(A020701(n)-1)%A103609(n+2)` -/
def P5129628174324867034.Spec : Prop :=
  ∀ n, P5129628174324867034.a n = A270741 (n + 2)

end A270741

/-! ## A270741.P14371282372409893725

`(A020706(n)-2)%A103609(n+2)`
-/

namespace A270741.P14371282372409893725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A020706 n - 2) (A103609 (n + 2))

end

end A270741.P14371282372409893725

namespace A270741

/-- `(A020706(n)-2)%A103609(n+2)` -/
def P14371282372409893725.Spec : Prop :=
  ∀ n, P14371282372409893725.a n = A270741 (n + 2)

end A270741

/-! ## A270741.P4177817439382320027

`A061489(2*n+3)%A103609(n+2)`
-/

namespace A270741.P4177817439382320027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A061489 (2 * n + 3)) (A103609 (n + 2))

end

end A270741.P4177817439382320027

namespace A270741

/-- `A061489(2*n+3)%A103609(n+2)` -/
def P4177817439382320027.Spec : Prop :=
  ∀ n, P4177817439382320027.a n = A270741 (n + 2)

end A270741

/-! ## A270741.P549799084408091244

`A027941(A008619(n+1))%A103609(n+2)`
-/

namespace A270741.P549799084408091244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A027941 (A008619 (n + 1)).toNat) (A103609 (n + 2))

end

end A270741.P549799084408091244

namespace A270741

/-- `A027941(A008619(n+1))%A103609(n+2)` -/
def P549799084408091244.Spec : Prop :=
  ∀ n, P549799084408091244.a n = A270741 (n + 2)

end A270741

/-! ## A270741.P3651445047950400873

`A226538(A005843(n+1))%A103609(n+2)`
-/

namespace A270741.P3651445047950400873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A226538 (A005843 (n + 1)).toNat) (A103609 (n + 2))

end

end A270741.P3651445047950400873

namespace A270741

/-- `A226538(A005843(n+1))%A103609(n+2)` -/
def P3651445047950400873.Spec : Prop :=
  ∀ n, P3651445047950400873.a n = A270741 (n + 2)

end A270741

/-! ## A270741.P9902272860473757569

`A131524(A005408(n+2))%A103609(n+2)`
-/

namespace A270741.P9902272860473757569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A131524 (A005408 (n + 2)).toNat) (A103609 (n + 2))

end

end A270741.P9902272860473757569

namespace A270741

/-- `A131524(A005408(n+2))%A103609(n+2)` -/
def P9902272860473757569.Spec : Prop :=
  ∀ n, P9902272860473757569.a n = A270741 (n + 2)

end A270741

/-! ## A270741.P1416466596785637948

`A163227(A005843(n+2))%A163227(A109613(n))`
-/

namespace A270741.P1416466596785637948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A163227 (A005843 (n + 2)).toNat) (A163227 (A109613 n).toNat)

end

end A270741.P1416466596785637948

namespace A270741

/-- `A163227(A005843(n+2))%A163227(A109613(n))` -/
def P1416466596785637948.Spec : Prop :=
  ∀ n, P1416466596785637948.a n = A270741 (n + 2)

end A270741

/-! ## A270741.P13001303680362984485

`Δ[A001924(n+1)]%A103609(n+2)`
-/

namespace A270741.P13001303680362984485
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001924 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (n + 1) - f1 n) (A103609 (n + 2))

end

end A270741.P13001303680362984485

namespace A270741

/-- `Δ[A001924(n+1)]%A103609(n+2)` -/
def P13001303680362984485.Spec : Prop :=
  ∀ n, P13001303680362984485.a n = A270741 (n + 2)

end A270741

/-!
# A270742: Binary expansion of C = (1/2)*(3/4)*(7/8)*(15/16)... .

The programs for A270742, the canonical program `A270742.P9511645227848509118` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A270742 has offset 0).

The definition of A270742 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A270742.P9511645227848509118

`and(1, A235963(n)+A000124(A235963(n+1)))`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A270742

/-- `and(1, A235963(n)+A000124(A235963(n+1)))` -/
def P9511645227848509118.Spec : Prop :=
  ∀ n, P9511645227848509118.a n = A270742 n

theorem P9511645227848509118.correct : P9511645227848509118.Spec := by
  intro n
  simp only [A270742]

end A270742

/-! ## A270742.P17762130896311538196

`A000035(A180446(n+1)+A180446(A180446(n)))`
-/

namespace A270742.P17762130896311538196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A180446 (n + 1) + A180446 (A180446 n).toNat).toNat

end

end A270742.P17762130896311538196

namespace A270742

/-- `A000035(A180446(n+1)+A180446(A180446(n)))` -/
def P17762130896311538196.Spec : Prop :=
  ∀ n, P17762130896311538196.a n = A270742 n

end A270742

/-! ## A270742.P7794272077619542369

`A132038(n)%2`
-/

namespace A270742.P7794272077619542369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A132038 n) 2

end

end A270742.P7794272077619542369

namespace A270742

/-- `A132038(n)%2` -/
def P7794272077619542369.Spec : Prop :=
  ∀ n, P7794272077619542369.a n = A270742 n

end A270742

/-! ## A270742.P7370560038567052082

`and(1, A132038(A175126(2*n)))`
-/

namespace A270742.P7370560038567052082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A132038 (A175126 (2 * n)).toNat)

end

end A270742.P7370560038567052082

namespace A270742

/-- `and(1, A132038(A175126(2*n)))` -/
def P7370560038567052082.Spec : Prop :=
  ∀ n, P7370560038567052082.a n = A270742 n

end A270742

/-! ## A270742.P9875163448269544588

`and(A057979(2*n), A132038(n))`
-/

namespace A270742.P9875163448269544588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A057979 (2 * n)) (A132038 n)

end

end A270742.P9875163448269544588

namespace A270742

/-- `and(A057979(2*n), A132038(n))` -/
def P9875163448269544588.Spec : Prop :=
  ∀ n, P9875163448269544588.a n = A270742 n

end A270742

/-! ## A270742.P12497697286162310092

`and(1, A132038(A057979(n+1+n)))`
-/

namespace A270742.P12497697286162310092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A132038 (A057979 (n + 1 + n)).toNat)

end

end A270742.P12497697286162310092

namespace A270742

/-- `and(1, A132038(A057979(n+1+n)))` -/
def P12497697286162310092.Spec : Prop :=
  ∀ n, P12497697286162310092.a n = A270742 n

end A270742

/-! ## A270742.P17101326802353832537

`and(1, A132038(n)*A151800(n+1))`
-/

namespace A270742.P17101326802353832537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A132038 n * A151800 (n + 1))

end

end A270742.P17101326802353832537

namespace A270742

/-- `and(1, A132038(n)*A151800(n+1))` -/
def P17101326802353832537.Spec : Prop :=
  ∀ n, P17101326802353832537.a n = A270742 n

end A270742

/-! ## A270742.P16171534666624037395

`and(A053735(xor(n, n+1)), A132038(n))`
-/

namespace A270742.P16171534666624037395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A053735 (Nat.xor n (n + 1))) (A132038 n)

end

end A270742.P16171534666624037395

namespace A270742

/-- `and(A053735(xor(n, n+1)), A132038(n))` -/
def P16171534666624037395.Spec : Prop :=
  ∀ n, P16171534666624037395.a n = A270742 n

end A270742

/-! ## A270742.P12597704551474767870

`and(A132038(n), A175126(A151800(n)))`
-/

namespace A270742.P12597704551474767870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A132038 n) (A175126 (A151800 n).toNat)

end

end A270742.P12597704551474767870

namespace A270742

/-- `and(A132038(n), A175126(A151800(n)))` -/
def P12597704551474767870.Spec : Prop :=
  ∀ n, P12597704551474767870.a n = A270742 n

end A270742

/-!
# A270743: Runlength sequence of the zero-one sequence A270742.

The programs for A270743, the canonical program `A270743.P10836667229800408735` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A270743 has offset 1).

The definition of A270743 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A270743.P10836667229800408735

`floor(n/3*n%3)+1`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A270743

/-- `floor(n/3*n%3)+1` -/
def P10836667229800408735.Spec : Prop :=
  ∀ n, P10836667229800408735.a n = A270743 (n + 1)

theorem P10836667229800408735.correct : P10836667229800408735.Spec := by
  intro n
  simp only [A270743, Nat.add_sub_cancel]

end A270743

/-! ## A270743.P9252357939069810603

`A010872(n)+a(n-3)` with `a(0)=1, a(1)=1, a(2)=2`
-/

namespace A270743.P9252357939069810603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 2] fun n a =>
  A010872 n + a (n - 3)

end

end A270743.P9252357939069810603

namespace A270743

/-- `A010872(n)+a(n-3)` -/
def P9252357939069810603.Spec : Prop :=
  ∀ n, P9252357939069810603.a n = A270743 (n + 1)

end A270743

/-! ## A270743.P5767090378868164194

`A000212(n)%(abs(1-n)+1)+1`
-/

namespace A270743.P5767090378868164194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000212 n) (|1 - (n : ℤ)| + 1) + 1

end

end A270743.P5767090378868164194

namespace A270743

/-- `A000212(n)%(abs(1-n)+1)+1` -/
def P5767090378868164194.Spec : Prop :=
  ∀ n, P5767090378868164194.a n = A270743 (n + 1)

end A270743

/-! ## A270743.P8679162221871286345

`A177702(n)+A115273(n)`
-/

namespace A270743.P8679162221871286345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177702 n + A115273 n

end

end A270743.P8679162221871286345

namespace A270743

/-- `A177702(n)+A115273(n)` -/
def P8679162221871286345.Spec : Prop :=
  ∀ n, P8679162221871286345.a n = A270743 (n + 1)

end A270743

/-! ## A270743.P9802782758349969379

`gcd(A082667(n+1), A087627(n))`
-/

namespace A270743.P9802782758349969379
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A082667 (n + 1)) (A087627 n)

end

end A270743.P9802782758349969379

namespace A270743

/-- `gcd(A082667(n+1), A087627(n))` -/
def P9802782758349969379.Spec : Prop :=
  ∀ n, (P9802782758349969379.a n : ℤ) = A270743 (n + 1)

end A270743

/-! ## A270743.P17271897577391522269

`gcd(A092092(n+1), A138189(n))`
-/

namespace A270743.P17271897577391522269
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A092092 (n + 1)) (A138189 n)

end

end A270743.P17271897577391522269

namespace A270743

/-- `gcd(A092092(n+1), A138189(n))` -/
def P17271897577391522269.Spec : Prop :=
  ∀ n, (P17271897577391522269.a n : ℤ) = A270743 (n + 1)

end A270743

/-! ## A270743.P4997131938989454590

`A007980(n)-n*A008620(n)`
-/

namespace A270743.P4997131938989454590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007980 n - (n : ℤ) * A008620 n

end

end A270743.P4997131938989454590

namespace A270743

/-- `A007980(n)-n*A008620(n)` -/
def P4997131938989454590.Spec : Prop :=
  ∀ n, P4997131938989454590.a n = A270743 (n + 1)

end A270743

/-! ## A270743.P3878235198871940208

`A009947(n*A128834(n)²)+1`
-/

namespace A270743.P3878235198871940208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009947 ((n : ℤ) * A128834 n ^ 2).toNat + 1

end

end A270743.P3878235198871940208

namespace A270743

/-- `A009947(n*A128834(n)²)+1` -/
def P3878235198871940208.Spec : Prop :=
  ∀ n, P3878235198871940208.a n = A270743 (n + 1)

end A270743

/-! ## A270743.P2525334507761274922

`A079978(n)+A011655(n)*A186731(n+1)`
-/

namespace A270743.P2525334507761274922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079978 n + A011655 n * A186731 (n + 1)

end

end A270743.P2525334507761274922

namespace A270743

/-- `A079978(n)+A011655(n)*A186731(n+1)` -/
def P2525334507761274922.Spec : Prop :=
  ∀ n, P2525334507761274922.a n = A270743 (n + 1)

end A270743

/-! ## A270743.P1353685676990460700

`A011655(n+1)-A057078(n+1)*A122918(n)`
-/

namespace A270743.P1353685676990460700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011655 (n + 1) - A057078 (n + 1) * A122918 n

end

end A270743.P1353685676990460700

namespace A270743

/-- `A011655(n+1)-A057078(n+1)*A122918(n)` -/
def P1353685676990460700.Spec : Prop :=
  ∀ n, P1353685676990460700.a n = A270743 (n + 1)

end A270743

/-! ## A270743.P364937049667372778

`A008620(n*A010872(n))`
-/

namespace A270743.P364937049667372778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008620 ((n : ℤ) * A010872 n).toNat

end

end A270743.P364937049667372778

namespace A270743

/-- `A008620(n*A010872(n))` -/
def P364937049667372778.Spec : Prop :=
  ∀ n, P364937049667372778.a n = A270743 (n + 1)

end A270743

/-! ## A270743.P3986969873504025562

`A002264(n*A010872(n))+1`
-/

namespace A270743.P3986969873504025562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 ((n : ℤ) * A010872 n).toNat + 1

end

end A270743.P3986969873504025562

namespace A270743

/-- `A002264(n*A010872(n))+1` -/
def P3986969873504025562.Spec : Prop :=
  ∀ n, P3986969873504025562.a n = A270743 (n + 1)

end A270743

/-! ## A270743.P4802934413388206459

`A008620(n*(A010882(n)-1))`
-/

namespace A270743.P4802934413388206459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008620 ((n : ℤ) * (A010882 n - 1)).toNat

end

end A270743.P4802934413388206459

namespace A270743

/-- `A008620(n*(A010882(n)-1))` -/
def P4802934413388206459.Spec : Prop :=
  ∀ n, P4802934413388206459.a n = A270743 (n + 1)

end A270743

/-! ## A270743.P5204933810314778928

`A008620(n*(1-A057078(n)))`
-/

namespace A270743.P5204933810314778928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008620 ((n : ℤ) * (1 - A057078 n)).toNat

end

end A270743.P5204933810314778928

namespace A270743

/-- `A008620(n*(1-A057078(n)))` -/
def P5204933810314778928.Spec : Prop :=
  ∀ n, P5204933810314778928.a n = A270743 (n + 1)

end A270743

/-! ## A270743.P3542323582584748674

`A117910(n*A010872(n))`
-/

namespace A270743.P3542323582584748674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117910 ((n : ℤ) * A010872 n).toNat

end

end A270743.P3542323582584748674

namespace A270743

/-- `A117910(n*A010872(n))` -/
def P3542323582584748674.Spec : Prop :=
  ∀ n, P3542323582584748674.a n = A270743 (n + 1)

end A270743

/-! ## A270743.P3219866500168304188

`A109614(n*A010872(n)+1)`
-/

namespace A270743.P3219866500168304188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109614 ((n : ℤ) * A010872 n + 1).toNat

end

end A270743.P3219866500168304188

namespace A270743

/-- `A109614(n*A010872(n)+1)` -/
def P3219866500168304188.Spec : Prop :=
  ∀ n, P3219866500168304188.a n = A270743 (n + 1)

end A270743

/-! ## A270743.P13656763792505987605

`A109816(n*A010872(n)+1)`
-/

namespace A270743.P13656763792505987605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109816 ((n : ℤ) * A010872 n + 1).toNat

end

end A270743.P13656763792505987605

namespace A270743

/-- `A109816(n*A010872(n)+1)` -/
def P13656763792505987605.Spec : Prop :=
  ∀ n, P13656763792505987605.a n = A270743 (n + 1)

end A270743

/-! ## A270743.P17570512747833118396

`A109595(n*A010872(n)+2)`
-/

namespace A270743.P17570512747833118396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109595 ((n : ℤ) * A010872 n + 2).toNat

end

end A270743.P17570512747833118396

namespace A270743

/-- `A109595(n*A010872(n)+2)` -/
def P17570512747833118396.Spec : Prop :=
  ∀ n, P17570512747833118396.a n = A270743 (n + 1)

end A270743

/-! ## A270743.P8662896980623271576

`A109815(n*A010872(n)+2)`
-/

namespace A270743.P8662896980623271576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109815 ((n : ℤ) * A010872 n + 2).toNat

end

end A270743.P8662896980623271576

namespace A270743

/-- `A109815(n*A010872(n)+2)` -/
def P8662896980623271576.Spec : Prop :=
  ∀ n, P8662896980623271576.a n = A270743 (n + 1)

end A270743

/-! ## A270743.P15407725234284139119

`A008620(n*A080425(2*n))`
-/

namespace A270743.P15407725234284139119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008620 ((n : ℤ) * A080425 (2 * n)).toNat

end

end A270743.P15407725234284139119

namespace A270743

/-- `A008620(n*A080425(2*n))` -/
def P15407725234284139119.Spec : Prop :=
  ∀ n, P15407725234284139119.a n = A270743 (n + 1)

end A270743

/-!
# A270744: (r,1)-greedy sequence, where r(k) = 1/phi^k, where phi = golden ratio.

The programs for A270744, there is no canonical definition to state claims against.
-/

/-! ## A270744.P6551529842619145172

`A151413(A348928(n+1)+A324014(n+1))`
-/

namespace A270744.P6551529842619145172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151413 (A348928 (n + 1) + A324014 (n + 1)).toNat

end

end A270744.P6551529842619145172

/-! ## A270744.P13883860994821355054

`A317245(3*n)*A329744(A317081(2*(n+1)))`
-/

namespace A270744.P13883860994821355054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317245 (3 * n) * A329744 (A317081 (2 * (n + 1))).toNat

end

end A270744.P13883860994821355054

/-!
# A270745: (r,1)-greedy sequence, where r(k) = k/phi^k and phi = golden ratio.

The programs for A270745, there is no canonical definition to state claims against.
-/

/-! ## A270745.P5136112421986497856

`∑[ceil(A176720(A100071(n))/2)]+n`
-/

namespace A270745.P5136112421986497856
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A176720 (A100071 n).toNat : ℚ) / 2⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)

end

end A270745.P5136112421986497856

/-!
# A270747: (r,1)-greedy sequence, where r(k) = 4/Pi^k.

The programs for A270747, there is no canonical definition to state claims against.
-/

/-! ## A270747.P11618173558356336180

`A211890(and(A005011(n), A179554(n+1)))`
-/

namespace A270747.P11618173558356336180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211890 (Int.land (A005011 n) (A179554 (n + 1))).toNat

end

end A270747.P11618173558356336180

/-! ## A270747.P4110479419237947644

`A329689(A241067(n²)+A241065(n))+A329689(n)`
-/

namespace A270747.P4110479419237947644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329689 (A241067 (n ^ 2) + A241065 n).toNat + A329689 n

end

end A270747.P4110479419237947644

/-! ## A270747.P12835751763503775441

`A240866(n*A264791(n+1))+A221914(A303432(n+5))`
-/

namespace A270747.P12835751763503775441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240866 ((n : ℤ) * A264791 (n + 1)).toNat + A221914 (A303432 (n + 5)).toNat

end

end A270747.P12835751763503775441

/-!
# A270750: (r,1)-greedy sequence, where r(k) = 1/(k*log(k+1)).

The programs for A270750, there is no canonical definition to state claims against.
-/

/-! ## A270750.P9936810333362719125

`A201503(n+1)*A269303(A042950(n))`
-/

namespace A270750.P9936810333362719125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201503 (n + 1) * A269303 (A042950 n).toNat

end

end A270750.P9936810333362719125

/-!
# A270751: (r,1)-greedy sequence, where r(k) = 1/(k*phi) and phi = golden ratio.

The programs for A270751, there is no canonical definition to state claims against.
-/

/-! ## A270751.P4863775573676354652

`A270584(A028310(n))`
-/

namespace A270751.P4863775573676354652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270584 (A028310 n).toNat

end

end A270751.P4863775573676354652

/-! ## A270751.P7660306167594086316

`A270584(A134478(∑[n]))`
-/

namespace A270751.P7660306167594086316
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270584 (A134478 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A270751.P7660306167594086316

/-! ## A270751.P12063423438188137092

`A270584(A007318(C(n+1, 2)+1))`
-/

namespace A270751.P12063423438188137092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270584 (A007318 (Nat.choose (n + 1) 2 + 1)).toNat

end

end A270751.P12063423438188137092

/-! ## A270751.P1301613221295490547

`A270584(A007318((n²+n)*tan(acot(2))+1))`
-/

namespace A270751.P1301613221295490547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270584 (A007318 (SequenceMachineLib.roundAway ((n ^ 2 + n : ℝ) * Real.tan (SequenceMachineLib.acot (2 : ℝ)) + 1)).toNat).toNat

end

end A270751.P1301613221295490547

/-! ## A270751.P17363562018029904191

`A270584(A007318(round((2*n+1)²/8)+1))`
-/

namespace A270751.P17363562018029904191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270584 (A007318 (SequenceMachineLib.roundAway (((2 * n + 1) ^ 2 : ℚ) / 8) + 1).toNat).toNat

end

end A270751.P17363562018029904191

/-!
# A270753: The least prime q > p for which n = p + q - r for some prime r, where p = A270003(n).

The programs for A270753, there is no canonical definition to state claims against.
-/

/-! ## A270753.P16462673930402423542

`A000265(A271353(n+1)+n-A270003(n+1)+1)`
-/

namespace A270753.P16462673930402423542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A271353 (n + 1) + ((n : ℤ) - A270003 (n + 1)) + 1).toNat

end

end A270753.P16462673930402423542

/-! ## A270753.P18091726900449315110

`A051698(A271353(n+1)+n)`
-/

namespace A270753.P18091726900449315110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051698 (A271353 (n + 1) + (n : ℤ)).toNat

end

end A270753.P18091726900449315110

/-! ## A270753.P14843864592124639468

`A052928(A271353(n+1)+n)-1`
-/

namespace A270753.P14843864592124639468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052928 (A271353 (n + 1) + (n : ℤ)).toNat - 1

end

end A270753.P14843864592124639468

/-! ## A270753.P12512375567225128822

`A136548(A271353(n+1)+n)`
-/

namespace A270753.P12512375567225128822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136548 (A271353 (n + 1) + (n : ℤ)).toNat

end

end A270753.P12512375567225128822

/-! ## A270753.P10210017938576294715

`A124741(A271353(n+1)+n)`
-/

namespace A270753.P10210017938576294715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124741 (A271353 (n + 1) + (n : ℤ)).toNat

end

end A270753.P10210017938576294715

/-! ## A270753.P10028605419685705072

`A195140(A151800(n)+and(1, A335795(n)))`
-/

namespace A270753.P10028605419685705072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195140 (A151800 n + Int.land 1 (A335795 n)).toNat

end

end A270753.P10028605419685705072

/-!
# A270755: a(1) = 1; a(n) = min{(n-1-a(n-1));(n-1-i)}, where i (0<=i<=n-2) is the largest number such that a(n-1)=a(i) or i=0 if no such a(i) exists.

The programs for A270755, there is no canonical definition to state claims against.
-/

/-! ## A270755.P14194816983723644661

`A113743(A101281(3*n))%7`
-/

namespace A270755.P14194816983723644661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A113743 (A101281 (3 * n)).toNat) 7

end

end A270755.P14194816983723644661

/-! ## A270755.P9842180983135844451

`A122200(or(∑{d}[2*n+1, 3-#%6]/2, A092893(n)))`
-/

namespace A270755.P9842180983135844451
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122200 (Int.lor (SequenceMachineLib.roundAway (((∑ d ∈ Nat.divisors (f1 n), (3 - ((d % 6 : ℕ) : ℤ)) : ℤ) : ℚ) / 2)) (A092893 n)).toNat

end

end A270755.P9842180983135844451

/-! ## A270755.P10491794996262311195

`A025581(lt[A257468(n+1), A052905(n)])`
-/

namespace A270755.P10491794996262311195
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257468 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052905 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A270755.P10491794996262311195

/-! ## A270755.P6927099473865449831

`A122200(lt[A257468(n+1), A052905(n)])`
-/

namespace A270755.P6927099473865449831
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257468 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052905 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122200 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A270755.P6927099473865449831

/-!
# A270756: Total sum of the sizes of all blocks with maximal element 2 in all set partitions of {1,2,...,n}.

The programs for A270756, there is no canonical definition to state claims against.
-/

/-! ## A270756.P8075992503502234711

`A011968(n+1)+A000110(n)`
-/

namespace A270756.P8075992503502234711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011968 (n + 1) + A000110 n

end

end A270756.P8075992503502234711

/-! ## A270756.P2564239066403776124

`A171859(n)+A005001(n+2)`
-/

namespace A270756.P2564239066403776124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171859 n + A005001 (n + 2)

end

end A270756.P2564239066403776124

/-! ## A270756.P1920732651304260186

`abs(A292935(n)-Δ[A292935(n)])`
-/

namespace A270756.P1920732651304260186
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292935 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A292935 n - (f1 (n + 1) - f1 n)|

end

end A270756.P1920732651304260186

/-! ## A270756.P14964539728957329408

`record[A274835(n)]+2*A000110(n)`
-/

namespace A270756.P14964539728957329408
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274835 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + 2 * A000110 n

end

end A270756.P14964539728957329408

/-! ## A270756.P2368471254193915731

`record[A275069(n)]+2*A000110(n)`
-/

namespace A270756.P2368471254193915731
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275069 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + 2 * A000110 n

end

end A270756.P2368471254193915731

/-! ## A270756.P6013730496075967647

`record[A293024(n)]+2*A000110(n)`
-/

namespace A270756.P6013730496075967647
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293024 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + 2 * A000110 n

end

end A270756.P6013730496075967647

/-! ## A270756.P3571206469294444521

`record[A327884(n)]+2*A000110(n)`
-/

namespace A270756.P3571206469294444521
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327884 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + 2 * A000110 n

end

end A270756.P3571206469294444521

/-! ## A270756.P5504669277189370224

`record[A346426(n)]+2*A000110(n)`
-/

namespace A270756.P5504669277189370224
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346426 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + 2 * A000110 n

end

end A270756.P5504669277189370224

/-! ## A270756.P2832699348121791719

`A024716(n+1)+A171859(n)+1`
-/

namespace A270756.P2832699348121791719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024716 (n + 1) + (A171859 n + 1)

end

end A270756.P2832699348121791719

/-! ## A270756.P16445271464182630694

`A000110(n+1)+2*A000110(n)`
-/

namespace A270756.P16445271464182630694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000110 (n + 1) + 2 * A000110 n

end

end A270756.P16445271464182630694

/-!
# A270757: Total sum of the sizes of all blocks with maximal element 3 in all set partitions of {1,2,...,n}.

The programs for A270757, there is no canonical definition to state claims against.
-/

/-! ## A270757.P7940906667174454776

`A270701(∑[n+2]+4)`
-/

namespace A270757.P7940906667174454776
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270701 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A270757.P7940906667174454776

/-! ## A270757.P15755156913377438794

`lcm((-1)^n, A270701(A167614(n+1)))`
-/

namespace A270757.P15755156913377438794
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm ((-1) ^ n) (A270701 (A167614 (n + 1)).toNat)

end

end A270757.P15755156913377438794

/-! ## A270757.P15224629744957928850

`or(A000007(n), A270701(A167614(n+1)))`
-/

namespace A270757.P15224629744957928850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A270701 (A167614 (n + 1)).toNat)

end

end A270757.P15224629744957928850

/-! ## A270757.P8246019632933316656

`A007318(C(n, 2))*A270701(A167614(n+1))`
-/

namespace A270757.P8246019632933316656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose n 2) * A270701 (A167614 (n + 1)).toNat

end

end A270757.P8246019632933316656

/-! ## A270757.P6749526791051969384

`A270702(∑[n+3]+1)`
-/

namespace A270757.P6749526791051969384
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270702 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A270757.P6749526791051969384

/-!
# A270758: Total sum of the sizes of all blocks with maximal element 4 in all set partitions of {1,2,...,n}.

The programs for A270758, there is no canonical definition to state claims against.
-/

/-! ## A270758.P7852270371798618170

`A270701(A055999(n)+10)`
-/

namespace A270758.P7852270371798618170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270701 (A055999 n + 10).toNat

end

end A270758.P7852270371798618170

/-! ## A270758.P10726253707155480893

`A270701(Δ[A008778(n)]+6)`
-/

namespace A270758.P10726253707155480893
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008778 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270701 (f1 (n + 1) - f1 n + 6).toNat

end

end A270758.P10726253707155480893

/-! ## A270758.P3561742930535452157

`A270701(A167614(n+2)+1)`
-/

namespace A270758.P3561742930535452157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270701 (A167614 (n + 2) + 1).toNat

end

end A270758.P3561742930535452157

/-! ## A270758.P12853228491982836276

`A270701(A166136(n+2)-2)`
-/

namespace A270758.P12853228491982836276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270701 (A166136 (n + 2) - 2).toNat

end

end A270758.P12853228491982836276

/-! ## A270758.P10174746058150618346

`A270701(A134869(n+3)+3)`
-/

namespace A270758.P10174746058150618346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270701 (A134869 (n + 3) + 3).toNat

end

end A270758.P10174746058150618346

/-! ## A270758.P917271020170259735

`A270701(A166136(n+1)+1+n)`
-/

namespace A270758.P917271020170259735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270701 (A166136 (n + 1) + 1 + (n : ℤ)).toNat

end

end A270758.P917271020170259735

/-! ## A270758.P3249613892529240701

`A270701(Δ[A023545(n+1)-n²])`
-/

namespace A270758.P3249613892529240701
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1) - (n ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270701 (f1 (n + 1) - f1 n).toNat

end

end A270758.P3249613892529240701

/-! ## A270758.P6665522041562525632

`A270701(A020705(A161680(n+4)))`
-/

namespace A270758.P6665522041562525632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270701 (A020705 (A161680 (n + 4)).toNat).toNat

end

end A270758.P6665522041562525632

/-! ## A270758.P2324596675364551392

`A270702(A027379(n+2))`
-/

namespace A270758.P2324596675364551392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270702 (A027379 (n + 2)).toNat

end

end A270758.P2324596675364551392

/-! ## A270758.P1843963606049854303

`A270702(A055998(n+2))`
-/

namespace A270758.P1843963606049854303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270702 (A055998 (n + 2)).toNat

end

end A270758.P1843963606049854303

/-!
# A270759: Total sum of the sizes of all blocks with maximal element 5 in all set partitions of {1,2,...,n}.

The programs for A270759, there is no canonical definition to state claims against.
-/

/-! ## A270759.P14455792445774083882

`A270701(A167499(n+3))`
-/

namespace A270759.P14455792445774083882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270701 (A167499 (n + 3)).toNat

end

end A270759.P14455792445774083882

/-! ## A270759.P6768305632377652396

`A270701(A155212(n)+13)`
-/

namespace A270759.P6768305632377652396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270701 (A155212 n + 13).toNat

end

end A270759.P6768305632377652396

/-! ## A270759.P3007123639813813190

`A270701(A056000(n)+15)`
-/

namespace A270759.P3007123639813813190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270701 (A056000 n + 15).toNat

end

end A270759.P3007123639813813190

/-! ## A270759.P3592908257818355618

`A270701(A000096(n+3)+6)`
-/

namespace A270759.P3592908257818355618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270701 (A000096 (n + 3) + 6).toNat

end

end A270759.P3592908257818355618

/-! ## A270759.P9447421110234692591

`A270701(A055998(n+2)+8)`
-/

namespace A270759.P9447421110234692591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270701 (A055998 (n + 2) + 8).toNat

end

end A270759.P9447421110234692591

/-! ## A270759.P16673903282839139979

`A270701(A166136(n+4)-(n+6))`
-/

namespace A270759.P16673903282839139979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270701 (A166136 (n + 4) - (n + 6 : ℤ)).toNat

end

end A270759.P16673903282839139979

/-! ## A270759.P3115919265553342842

`A270702(A046691(n+3))`
-/

namespace A270759.P3115919265553342842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270702 (A046691 (n + 3)).toNat

end

end A270759.P3115919265553342842

/-! ## A270759.P11307061914752726622

`A270702(eq[4, A193592(n)])`
-/

namespace A270759.P11307061914752726622
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270702 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A270759.P11307061914752726622

/-! ## A270759.P10218178843950417994

`A270702(Δ[A023545(n+1)])`
-/

namespace A270759.P10218178843950417994
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270702 (f1 (n + 1) - f1 n).toNat

end

end A270759.P10218178843950417994

/-! ## A270759.P5195587174878299621

`A270702(A000124(n+5)-5)`
-/

namespace A270759.P5195587174878299621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270702 (A000124 (n + 5) - 5).toNat

end

end A270759.P5195587174878299621

/-!
# A270760: Total sum of the sizes of all blocks with maximal element 6 in all set partitions of {1,2,...,n}.

The programs for A270760, there is no canonical definition to state claims against.
-/

/-! ## A270760.P6864779367154895499

`A270701(A166136(n+4))`
-/

namespace A270760.P6864779367154895499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270701 (A166136 (n + 4)).toNat

end

end A270760.P6864779367154895499

/-! ## A270760.P11335573681325578693

`A270701(A167499(n+4)+1)`
-/

namespace A270760.P11335573681325578693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270701 (A167499 (n + 4) + 1).toNat

end

end A270760.P11335573681325578693

/-! ## A270760.P6033620174809100506

`A270701(A000217(n+5)+6)`
-/

namespace A270760.P6033620174809100506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270701 (A000217 (n + 5) + 6).toNat

end

end A270760.P6033620174809100506

/-! ## A270760.P16330514745700890328

`A270701(A161680(n+6)+6)`
-/

namespace A270760.P16330514745700890328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270701 (A161680 (n + 6) + 6).toNat

end

end A270760.P16330514745700890328

/-! ## A270760.P6315222782438260743

`A270701(A002620(n+2)+A002620(n+9))`
-/

namespace A270760.P6315222782438260743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270701 (A002620 (n + 2) + A002620 (n + 9)).toNat

end

end A270760.P6315222782438260743

/-! ## A270760.P6143709859061832481

`A270701(Δ[A026043(n+5)]-A034856(n+1))`
-/

namespace A270760.P6143709859061832481
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026043 (n + 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270701 (f1 (n + 1) - f1 n - A034856 (n + 1)).toNat

end

end A270760.P6143709859061832481

/-! ## A270760.P14685162018871461024

`A270702(A052905(n+3))`
-/

namespace A270760.P14685162018871461024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270702 (A052905 (n + 3)).toNat

end

end A270760.P14685162018871461024

/-! ## A270760.P7154143453274167485

`A270702(eq[3, A219347(n)])`
-/

namespace A270760.P7154143453274167485
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270702 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A270760.P7154143453274167485

/-! ## A270760.P13756326510462827647

`A270702(A000124(n+6)-6)`
-/

namespace A270760.P13756326510462827647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270702 (A000124 (n + 6) - 6).toNat

end

end A270760.P13756326510462827647

/-! ## A270760.P16847724586849041517

`A270702(Δ[A023545(n+2)]-1)`
-/

namespace A270760.P16847724586849041517
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270702 (f1 (n + 1) - f1 n - 1).toNat

end

end A270760.P16847724586849041517

/-!
# A270761: Total sum of the sizes of all blocks with maximal element 7 in all set partitions of {1,2,...,n}.

The programs for A270761, there is no canonical definition to state claims against.
-/

/-! ## A270761.P1749980526057282401

`A270701(A056119(n)+28)`
-/

namespace A270761.P1749980526057282401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270701 (A056119 n + 28).toNat

end

end A270761.P1749980526057282401

/-! ## A270761.P3934493174096472887

`A270701(A167499(n+5)+2)`
-/

namespace A270761.P3934493174096472887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270701 (A167499 (n + 5) + 2).toNat

end

end A270761.P3934493174096472887

/-! ## A270761.P709946492110161114

`A270701(A000124(n+6)+6)`
-/

namespace A270761.P709946492110161114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270701 (A000124 (n + 6) + 6).toNat

end

end A270761.P709946492110161114

/-! ## A270761.P7821761518287220859

`A270702(A055999(n+4))`
-/

namespace A270761.P7821761518287220859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270702 (A055999 (n + 4)).toNat

end

end A270761.P7821761518287220859

/-! ## A270761.P11562122878198646946

`A270702(eq[4, A219347(n)])`
-/

namespace A270761.P11562122878198646946
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270702 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A270761.P11562122878198646946

/-! ## A270761.P4851912715055966009

`A270702(A000124(n+7)-7)`
-/

namespace A270761.P4851912715055966009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270702 (A000124 (n + 7) - 7).toNat

end

end A270761.P4851912715055966009

/-! ## A270761.P8562188955347280902

`A270702(A005408(n+3)+A000217(n+5))`
-/

namespace A270761.P8562188955347280902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270702 (A005408 (n + 3) + A000217 (n + 5)).toNat

end

end A270761.P8562188955347280902

/-! ## A270761.P17566073582810813364

`A270702(A004273(n+4)+A000217(n+5))`
-/

namespace A270761.P17566073582810813364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270702 (A004273 (n + 4) + A000217 (n + 5)).toNat

end

end A270761.P17566073582810813364

/-!
# A270762: Total sum of the sizes of all blocks with maximal element 8 in all set partitions of {1,2,...,n}.

The programs for A270762, there is no canonical definition to state claims against.
-/

/-! ## A270762.P9618924351420562266

`A270701(A167499(n+6)+3)`
-/

namespace A270762.P9618924351420562266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270701 (A167499 (n + 6) + 3).toNat

end

end A270762.P9618924351420562266

/-! ## A270762.P4296737920781102373

`A270701(A167614(n+6)+5)`
-/

namespace A270762.P4296737920781102373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270701 (A167614 (n + 6) + 5).toNat

end

end A270762.P4296737920781102373

/-! ## A270762.P17825228524723603680

`A270701(A000124(n+7)+7)`
-/

namespace A270762.P17825228524723603680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270701 (A000124 (n + 7) + 7).toNat

end

end A270762.P17825228524723603680

/-! ## A270762.P17703281324532092572

`A270701(A000217(n+7)+8)`
-/

namespace A270762.P17703281324532092572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270701 (A000217 (n + 7) + 8).toNat

end

end A270762.P17703281324532092572

/-! ## A270762.P12148736950512300709

`A270701(eq[21, A104763(n+1)]+1)`
-/

namespace A270762.P12148736950512300709
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  21

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104763 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270701 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A270762.P12148736950512300709

/-! ## A270762.P3829458428998884472

`A270701(A133263(n+8)-(n+2))`
-/

namespace A270762.P3829458428998884472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270701 (A133263 (n + 8) - (n + 2 : ℤ)).toNat

end

end A270762.P3829458428998884472

/-!
# A270763: Total sum of the sizes of all blocks with maximal element 9 in all set partitions of {1,2,...,n}.

The programs for A270763, there is no canonical definition to state claims against.
-/

/-! ## A270763.P11467460022842723498

`A270701(eq[10, A131818(n+1)])`
-/

namespace A270763.P11467460022842723498
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270701 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A270763.P11467460022842723498

/-! ## A270763.P4350123861920609440

`A270701(A014963(4*n+6)+A000217(n+8)+8)`
-/

namespace A270763.P4350123861920609440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270701 (A014963 (4 * n + 6) + (A000217 (n + 8) + 8)).toNat

end

end A270763.P4350123861920609440

/-! ## A270763.P8476541702999010519

`A270702(eq[6, A219347(n)])`
-/

namespace A270763.P8476541702999010519
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270702 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A270763.P8476541702999010519

/-! ## A270763.P3416079787616478742

`A270702(eq[8, A193592(n)])`
-/

namespace A270763.P3416079787616478742
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270702 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A270763.P3416079787616478742

/-! ## A270763.P13778301173417147044

`A270702(eq[14, A185782(n+1)])`
-/

namespace A270763.P13778301173417147044
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  14

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185782 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270702 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A270763.P13778301173417147044

/-!
# A270764: Total sum of the sizes of all blocks with maximal element 10 in all set partitions of {1,2,...,n}.

The programs for A270764, there is no canonical definition to state claims against.
-/

/-! ## A270764.P5619618178578165100

`A270701(A000217(n+9)+10)`
-/

namespace A270764.P5619618178578165100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270701 (A000217 (n + 9) + 10).toNat

end

end A270764.P5619618178578165100

/-! ## A270764.P2231793096892900065

`A270701(eq[11, A131818(n+1)])`
-/

namespace A270764.P2231793096892900065
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270701 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A270764.P2231793096892900065

/-! ## A270764.P9177205874717583598

`A270702(eq[8, A219347(n)])`
-/

namespace A270764.P9177205874717583598
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270702 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A270764.P9177205874717583598

/-! ## A270764.P12066910227079479148

`A270702(eq[9, A193592(n)])`
-/

namespace A270764.P12066910227079479148
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270702 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A270764.P12066910227079479148

/-! ## A270764.P11228876029623295750

`A270702(eq[4, sqrt(A185782(n+1))])`
-/

namespace A270764.P11228876029623295750
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A185782 (n + 1) : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270702 (SequenceMachineLib.nth (fun j => (f1 j : ℝ) = f2 j) n)

end

end A270764.P11228876029623295750

/-!
# A270765: Total sum of the sizes of all blocks with minimal element 2 in all set partitions of {1,2,...,n}.

The programs for A270765, there is no canonical definition to state claims against.
-/

/-! ## A270765.P10457882814708376131

`A270701(∑[n+2])`
-/

namespace A270765.P10457882814708376131
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270701 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A270765.P10457882814708376131

/-! ## A270765.P8318858568062183057

`A270702(∑[n+1]+2)`
-/

namespace A270765.P8318858568062183057
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270702 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A270765.P8318858568062183057

/-! ## A270765.P14756385328992643581

`record[A270702(A080036(n))]`
-/

namespace A270765.P14756385328992643581
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270702 (A080036 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A270765.P14756385328992643581

/-! ## A270765.P3577820918764834554

`record[A270701(A061579(n+1))]`
-/

namespace A270765.P3577820918764834554
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270701 (A061579 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A270765.P3577820918764834554

/-! ## A270765.P4871523904759129405

`or(char[3], A270702(A000096(n)+3))`
-/

namespace A270765.P4871523904759129405
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A270702 (A000096 n + 3).toNat)

end

end A270765.P4871523904759129405

/-! ## A270765.P5505691828486717897

`Δ[A124427(n+1)]-A000110(n+1)`
-/

namespace A270765.P5505691828486717897
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124427 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A000110 (n + 1)

end

end A270765.P5505691828486717897

/-! ## A270765.P9332059883799171766

`record[A270701(A000096(A133310(n)))]`
-/

namespace A270765.P9332059883799171766
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270701 (A000096 (A133310 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A270765.P9332059883799171766

/-! ## A270765.P9343491541833752927

`record[A270701(A000096(A290103(n+1)))]`
-/

namespace A270765.P9343491541833752927
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270701 (A000096 (A290103 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A270765.P9343491541833752927

/-! ## A270765.P6828006164815600254

`gcd(A000038(n), A270702(A000096(n)+3))`
-/

namespace A270765.P6828006164815600254
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A270702 (A000096 n + 3).toNat)

end

end A270765.P6828006164815600254

/-! ## A270765.P17077912759563152759

`A270702(A000096(n)+3)+A007814(2*n+1)`
-/

namespace A270765.P17077912759563152759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270702 (A000096 n + 3).toNat + A007814 (2 * n + 1)

end

end A270765.P17077912759563152759

/-!
# A270766: Total sum of the sizes of all blocks with minimal element 3 in all set partitions of {1,2,...,n}.

The programs for A270766, there is no canonical definition to state claims against.
-/

/-! ## A270766.P6278232413641050774

`A270701(∑[n+3]+1)`
-/

namespace A270766.P6278232413641050774
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270701 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A270766.P6278232413641050774

/-! ## A270766.P14897326002214582594

`A270702(∑[n+2]+4)`
-/

namespace A270766.P14897326002214582594
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270702 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A270766.P14897326002214582594

/-! ## A270766.P7116590613059893069

`lcm((-1)^n, A270702(A167614(n+1)))`
-/

namespace A270766.P7116590613059893069
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm ((-1) ^ n) (A270702 (A167614 (n + 1)).toNat)

end

end A270766.P7116590613059893069

/-! ## A270766.P7143985766681900368

`A020985(n)²*A270702(A167614(n+1))`
-/

namespace A270766.P7143985766681900368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020985 n ^ 2 * A270702 (A167614 (n + 1)).toNat

end

end A270766.P7143985766681900368

/-! ## A270766.P5222684691120314877

`A270702(A167614(n+1))+A000035(2*n)`
-/

namespace A270766.P5222684691120314877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270702 (A167614 (n + 1)).toNat + A000035 (2 * n)

end

end A270766.P5222684691120314877

/-!
# A270767: Total sum of the sizes of all blocks with minimal element 4 in all set partitions of {1,2,...,n}.

The programs for A270767, there is no canonical definition to state claims against.
-/

/-! ## A270767.P16636671370381991695

`A270701(A027379(n+2))`
-/

namespace A270767.P16636671370381991695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270701 (A027379 (n + 2)).toNat

end

end A270767.P16636671370381991695

/-! ## A270767.P15667783536559289448

`A270701(A055998(n+2))`
-/

namespace A270767.P15667783536559289448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270701 (A055998 (n + 2)).toNat

end

end A270767.P15667783536559289448

/-! ## A270767.P9625136036701666230

`A270701(A155212(n)+5)`
-/

namespace A270767.P9625136036701666230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270701 (A155212 n + 5).toNat

end

end A270767.P9625136036701666230

/-! ## A270767.P12223684226588250460

`A270701(A056000(n)+7)`
-/

namespace A270767.P12223684226588250460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270701 (A056000 n + 7).toNat

end

end A270767.P12223684226588250460

/-! ## A270767.P6220072155542550013

`A270702(A052905(n)+9)`
-/

namespace A270767.P6220072155542550013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270702 (A052905 n + 9).toNat

end

end A270767.P6220072155542550013

/-! ## A270767.P6337831590236189939

`A270702(A055999(n)+10)`
-/

namespace A270767.P6337831590236189939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270702 (A055999 n + 10).toNat

end

end A270767.P6337831590236189939

/-! ## A270767.P4617362187023690765

`A270701(eq[3, A193592(n)])`
-/

namespace A270767.P4617362187023690765
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270701 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A270767.P4617362187023690765

/-! ## A270767.P16623857261085955700

`A270701(A052905(n+1)+2)`
-/

namespace A270767.P16623857261085955700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270701 (A052905 (n + 1) + 2).toNat

end

end A270767.P16623857261085955700

/-! ## A270767.P15069305448055228193

`A270702(A167614(n+2)+1)`
-/

namespace A270767.P15069305448055228193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270702 (A167614 (n + 2) + 1).toNat

end

end A270767.P15069305448055228193

/-! ## A270767.P15434267758198629191

`A270702(A166136(n+2)-2)`
-/

namespace A270767.P15434267758198629191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270702 (A166136 (n + 2) - 2).toNat

end

end A270767.P15434267758198629191

/-!
# A270768: Total sum of the sizes of all blocks with minimal element 5 in all set partitions of {1,2,...,n}.

The programs for A270768, there is no canonical definition to state claims against.
-/

/-! ## A270768.P3490488382853678384

`A270701(A046691(n+3))`
-/

namespace A270768.P3490488382853678384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270701 (A046691 (n + 3)).toNat

end

end A270768.P3490488382853678384

/-! ## A270768.P5617518920021794006

`A270702(A167499(n+3))`
-/

namespace A270768.P5617518920021794006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270702 (A167499 (n + 3)).toNat

end

end A270768.P5617518920021794006

/-! ## A270768.P13397386657216233426

`A270702(A155212(n)+13)`
-/

namespace A270768.P13397386657216233426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270702 (A155212 n + 13).toNat

end

end A270768.P13397386657216233426

/-! ## A270768.P7368001020429952333

`A270702(A056000(n)+15)`
-/

namespace A270768.P7368001020429952333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270702 (A056000 n + 15).toNat

end

end A270768.P7368001020429952333

/-! ## A270768.P15693253649234320865

`A270701(eq[4, A193592(n)])`
-/

namespace A270768.P15693253649234320865
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270701 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A270768.P15693253649234320865

/-! ## A270768.P14587592008740728666

`A270701(Δ[A023545(n+1)])`
-/

namespace A270768.P14587592008740728666
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270701 (f1 (n + 1) - f1 n).toNat

end

end A270768.P14587592008740728666

/-! ## A270768.P645414147252412188

`A270702(A000096(n+3)+6)`
-/

namespace A270768.P645414147252412188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270702 (A000096 (n + 3) + 6).toNat

end

end A270768.P645414147252412188

/-! ## A270768.P18343294659569252193

`A270701(A000096(A020705(n))-3)`
-/

namespace A270768.P18343294659569252193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270701 (A000096 (A020705 n).toNat - 3).toNat

end

end A270768.P18343294659569252193

/-! ## A270768.P9203290875186101966

`A270702(A038722(Δ[A023545(n+1)]))`
-/

namespace A270768.P9203290875186101966
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270702 (A038722 (f1 (n + 1) - f1 n).toNat).toNat

end

end A270768.P9203290875186101966

/-!
# A270769: Total sum of the sizes of all blocks with minimal element 6 in all set partitions of {1,2,...,n}.

The programs for A270769, there is no canonical definition to state claims against.
-/

/-! ## A270769.P1344184972834447926

`A270701(A052905(n+3))`
-/

namespace A270769.P1344184972834447926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270701 (A052905 (n + 3)).toNat

end

end A270769.P1344184972834447926

/-! ## A270769.P9045827612669992296

`A270702(A166136(n+4))`
-/

namespace A270769.P9045827612669992296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270702 (A166136 (n + 4)).toNat

end

end A270769.P9045827612669992296

/-! ## A270769.P13564200292987723541

`A270701(eq[3, A219347(n)])`
-/

namespace A270769.P13564200292987723541
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270701 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A270769.P13564200292987723541

/-! ## A270769.P4774444694429671212

`A270702(A167499(n+4)+1)`
-/

namespace A270769.P4774444694429671212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270702 (A167499 (n + 4) + 1).toNat

end

end A270769.P4774444694429671212

/-! ## A270769.P14999016349521122714

`A270701(A000096(n+5)-4)`
-/

namespace A270769.P14999016349521122714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270701 (A000096 (n + 5) - 4).toNat

end

end A270769.P14999016349521122714

/-! ## A270769.P7125284363341035756

`A270702(A000217(n+5)+6)`
-/

namespace A270769.P7125284363341035756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270702 (A000217 (n + 5) + 6).toNat

end

end A270769.P7125284363341035756

/-! ## A270769.P8643602847141214193

`A270701(A000217(n+6)-5)`
-/

namespace A270769.P8643602847141214193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270701 (A000217 (n + 6) - 5).toNat

end

end A270769.P8643602847141214193

/-! ## A270769.P3250280182402785183

`A270701(Δ[A023545(n+2)]-1)`
-/

namespace A270769.P3250280182402785183
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270701 (f1 (n + 1) - f1 n - 1).toNat

end

end A270769.P3250280182402785183

/-! ## A270769.P3869770328658414357

`A270701(A020705(n)²-A000096(n))`
-/

namespace A270769.P3869770328658414357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270701 (A020705 n ^ 2 - A000096 n).toNat

end

end A270769.P3869770328658414357

/-! ## A270769.P8618366519871004567

`A270702(A005843(n+7)+A000124(n+3))`
-/

namespace A270769.P8618366519871004567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270702 (A005843 (n + 7) + A000124 (n + 3)).toNat

end

end A270769.P8618366519871004567

/-!
# A270770: Total sum of the sizes of all blocks with minimal element 7 in all set partitions of {1,2,...,n}.

The programs for A270770, there is no canonical definition to state claims against.
-/

/-! ## A270770.P2096345551342332641

`A270701(A055999(n+4))`
-/

namespace A270770.P2096345551342332641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270701 (A055999 (n + 4)).toNat

end

end A270770.P2096345551342332641

/-! ## A270770.P7810694737548468589

`A270702(A056119(n)+28)`
-/

namespace A270770.P7810694737548468589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270702 (A056119 n + 28).toNat

end

end A270770.P7810694737548468589

/-! ## A270770.P2418861092537988501

`A270701(eq[4, A219347(n)])`
-/

namespace A270770.P2418861092537988501
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270701 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A270770.P2418861092537988501

/-! ## A270770.P3619084599834092487

`A270702(A167499(n+5)+2)`
-/

namespace A270770.P3619084599834092487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270702 (A167499 (n + 5) + 2).toNat

end

end A270770.P3619084599834092487

/-! ## A270770.P3141151215102219109

`A270702(A133263(n+6)+5)`
-/

namespace A270770.P3141151215102219109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270702 (A133263 (n + 6) + 5).toNat

end

end A270770.P3141151215102219109

/-! ## A270770.P18398798511305191073

`A270702(A000124(n+6)+6)`
-/

namespace A270770.P18398798511305191073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270702 (A000124 (n + 6) + 6).toNat

end

end A270770.P18398798511305191073

/-! ## A270770.P2212328381651624085

`A270702(A000217(n+6)+7)`
-/

namespace A270770.P2212328381651624085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270702 (A000217 (n + 6) + 7).toNat

end

end A270770.P2212328381651624085

/-! ## A270770.P1022430127252738341

`A270701(A000217(n+6)+n+1)`
-/

namespace A270770.P1022430127252738341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270701 (A000217 (n + 6) + (n + 1 : ℤ)).toNat

end

end A270770.P1022430127252738341

/-! ## A270770.P4410327446874839073

`A270701(n+4+A027379(n+4))`
-/

namespace A270770.P4410327446874839073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270701 ((n + 4 : ℤ) + A027379 (n + 4)).toNat

end

end A270770.P4410327446874839073

/-!
# A270771: Total sum of the sizes of all blocks with minimal element 8 in all set partitions of {1,2,...,n}.

The programs for A270771, there is no canonical definition to state claims against.
-/

/-! ## A270771.P1640300900871967503

`A270701(A027379(n+6)-4)`
-/

namespace A270771.P1640300900871967503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270701 (A027379 (n + 6) - 4).toNat

end

end A270771.P1640300900871967503

/-! ## A270771.P11097620288140650733

`A270701(A000096(n+7)-6)`
-/

namespace A270771.P11097620288140650733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270701 (A000096 (n + 7) - 6).toNat

end

end A270771.P11097620288140650733

/-! ## A270771.P9663890707411740189

`A270701(eq[8, A004736(n+1)]+1)`
-/

namespace A270771.P9663890707411740189
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270701 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A270771.P9663890707411740189

/-! ## A270771.P1276827681085273057

`A270701(n+4+A027379(n+5))`
-/

namespace A270771.P1276827681085273057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270701 ((n + 4 : ℤ) + A027379 (n + 5)).toNat

end

end A270771.P1276827681085273057

/-! ## A270771.P8340118891658557046

`A270701(A167614(n+5)+2*n+5)`
-/

namespace A270771.P8340118891658557046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270701 (A167614 (n + 5) + (2 * n + 5 : ℤ)).toNat

end

end A270771.P8340118891658557046

/-! ## A270771.P7561213558494105141

`A270701(Δ[n²]+A161680(n+7)+7)`
-/

namespace A270771.P7561213558494105141
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270701 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) + (A161680 (n + 7) + 7)).toNat

end

end A270771.P7561213558494105141

/-!
# A270772: Total sum of the sizes of all blocks with minimal element 9 in all set partitions of {1,2,...,n}.

The programs for A270772, there is no canonical definition to state claims against.
-/

/-! ## A270772.P11401359258086009399

`A270701(eq[6, A219347(n)])`
-/

namespace A270772.P11401359258086009399
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270701 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A270772.P11401359258086009399

/-! ## A270772.P3970077903784805130

`A270701(eq[8, A193592(n)])`
-/

namespace A270772.P3970077903784805130
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270701 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A270772.P3970077903784805130

/-! ## A270772.P12495883969330861353

`A270702(eq[10, A131818(n+1)])`
-/

namespace A270772.P12495883969330861353
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270702 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A270772.P12495883969330861353

/-! ## A270772.P16666826385423282916

`A270701(eq[14, A185782(n+1)])`
-/

namespace A270772.P16666826385423282916
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  14

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185782 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270701 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A270772.P16666826385423282916

/-! ## A270772.P880926547586905541

`A270702(A014963(4*n+6)+A000217(n+8)+8)`
-/

namespace A270772.P880926547586905541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270702 (A014963 (4 * n + 6) + (A000217 (n + 8) + 8)).toNat

end

end A270772.P880926547586905541

/-!
# A270773: Total sum of the sizes of all blocks with minimal element 10 in all set partitions of {1,2,...,n}.

The programs for A270773, there is no canonical definition to state claims against.
-/

/-! ## A270773.P12101733925259820189

`A270701(eq[8, A219347(n)])`
-/

namespace A270773.P12101733925259820189
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270701 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A270773.P12101733925259820189

/-! ## A270773.P13214439463019676996

`A270701(eq[9, A193592(n)])`
-/

namespace A270773.P13214439463019676996
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270701 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A270773.P13214439463019676996

/-! ## A270773.P16537135788652469003

`A270702(eq[11, A131818(n+1)])`
-/

namespace A270773.P16537135788652469003
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270702 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A270773.P16537135788652469003

/-! ## A270773.P57915418112217691

`A270701(eq[4, sqrt(A185782(n+1))])`
-/

namespace A270773.P57915418112217691
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A185782 (n + 1) : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270701 (SequenceMachineLib.nth (fun j => (f1 j : ℝ) = f2 j) n)

end

end A270773.P57915418112217691

/-! ## A270773.P3749828933184547796

`A270701(A000217(n+9)+n+1)`
-/

namespace A270773.P3749828933184547796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270701 (A000217 (n + 9) + (n + 1 : ℤ)).toNat

end

end A270773.P3749828933184547796

/-!
# A270774: a(n) = (A005706(n) - A194459(n))/5.

The programs for A270774, the canonical program `A270774.P9173378272536170861` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A270774 has offset 0).

The definition of A270774 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A194459, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A270774.P9173378272536170861

`(A005706(n)-A194459(n))/5`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A270774

/-- `(A005706(n)-A194459(n))/5` -/
def P9173378272536170861.Spec : Prop :=
  ∀ n, P9173378272536170861.a n = (A270774 n : ℚ)

end A270774

/-! ## A270774.P3846142746466176463

`A002266(A292477(∑[n+4]+2)-A194459(n))`
-/

namespace A270774.P3846142746466176463
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002266 (A292477 (∑ j ∈ Finset.range (n + 1), f1 j + 2) - A194459 n).toNat

end

end A270774.P3846142746466176463

namespace A270774

/-- `A002266(A292477(∑[n+4]+2)-A194459(n))` -/
def P3846142746466176463.Spec : Prop :=
  ∀ n, P3846142746466176463.a n = A270774 n

end A270774

/-!
# A270775: a(n) is the number of invertible 2 X 2 upper triangular matrices over Z_p where p = prime(n).

The programs for A270775, there is no canonical definition to state claims against.
-/

/-! ## A270775.P17865798232020886232

`(p?[xor(1, n)+1]-1)²*p?[xor(1, n)+1]`
-/

namespace A270775.P17865798232020886232
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) : ℤ) - 1) ^ 2 * (f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n) : ℤ)

end

end A270775.P17865798232020886232

/-! ## A270775.P17424252148360502884

`(p?[n%3+n]-1)²*p?[n%3+n]`
-/

namespace A270775.P17424252148360502884
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n % 3 + n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n % 3 + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) : ℤ) - 1) ^ 2 * (f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n) : ℤ)

end

end A270775.P17424252148360502884

/-! ## A270775.P7293847362655588080

`(p?[-xor(1, -n)]-1)²*p?[-xor(1, -n)]`
-/

namespace A270775.P7293847362655588080
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -Int.xor 1 (-(n : ℤ))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -Int.xor 1 (-(n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - 1) ^ 2 * f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

end

end A270775.P7293847362655588080

/-! ## A270775.P12240181915036575352

`(p?[n*gcd(2, n)+2]-1)²*p?[n*gcd(2, n)+2]`
-/

namespace A270775.P12240181915036575352
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * Nat.gcd 2 n + 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * Nat.gcd 2 n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) : ℤ) - 1) ^ 2 * (f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n) : ℤ)

end

end A270775.P12240181915036575352

/-! ## A270775.P6718957148541499491

`(p?[round(8*n/7)]²+1)*(p?[round(8*n/7)]-2)+2`
-/

namespace A270775.P6718957148541499491
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (8 * ((n : ℚ) / 7))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (8 * ((n : ℚ) / 7))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) ^ 2 + 1) * (f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n) - 2) + 2

end

end A270775.P6718957148541499491

/-!
# A270776: Smallest non-Wieferich prime to base n, i.e., smallest prime p such that n^(p-1) != 1 (mod p^2).

The programs for A270776, there is no canonical definition to state claims against.
-/

/-! ## A270776.P13273271572749631721

`A380528(A056237(n+2))`
-/

namespace A270776.P13273271572749631721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380528 (A056237 (n + 2)).toNat

end

end A270776.P13273271572749631721

/-! ## A270776.P3133144028503808605

`A053669(∑[A047223(A052938(n+5))])`
-/

namespace A270776.P3133144028503808605
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047223 (A052938 (n + 5)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053669 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A270776.P3133144028503808605

/-! ## A270776.P5063602628141940606

`A053669(gcd(A008778(n), A228292(n)))`
-/

namespace A270776.P5063602628141940606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053669 (Int.gcd (A008778 n) (A228292 n))

end

end A270776.P5063602628141940606

/-! ## A270776.P780066444583366633

`A077075(Δ[A088481(A129756(n))])`
-/

namespace A270776.P780066444583366633
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088481 (A129756 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077075 (f1 (n + 1) - f1 n).toNat

end

end A270776.P780066444583366633

/-! ## A270776.P2012450826737428702

`A007978(gcd(A006528(n), A096000(n)))`
-/

namespace A270776.P2012450826737428702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007978 (Int.gcd (A006528 n) (A096000 n))

end

end A270776.P2012450826737428702

/-! ## A270776.P6623082199649064035

`A053669(∑[∑[A053589(n+1)]+n])`
-/

namespace A270776.P6623082199649064035
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053589 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053669 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A270776.P6623082199649064035

/-! ## A270776.P11551252583381414875

`A007978(∑[A008611(A155096(n+1))])`
-/

namespace A270776.P11551252583381414875
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008611 (A155096 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007978 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A270776.P11551252583381414875

/-! ## A270776.P9650984872193294406

`A053669(A000188(n+1)*A094136(A205722(n+1)))`
-/

namespace A270776.P9650984872193294406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053669 (A000188 (n + 1) * A094136 (A205722 (n + 1)).toNat).toNat

end

end A270776.P9650984872193294406

/-! ## A270776.P2975454450959997709

`A053669(A003557(∑[A017101(n)]))`
-/

namespace A270776.P2975454450959997709
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017101 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053669 (A003557 (∑ j ∈ Finset.range (n + 1), f1 j).toNat).toNat

end

end A270776.P2975454450959997709

/-!
# A270777: Integers k such that A003266(k) is not divisible by k.

The programs for A270777, there is no canonical definition to state claims against.
-/

/-! ## A270777.P14344367711217469024

`filter[A064414(n+1), A354817(#)]`
-/

namespace A270777.P14344367711217469024
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064414 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354817 (f1 j).toNat = 1) n)

end

end A270777.P14344367711217469024

/-! ## A270777.P3594489238985963338

`∩[A064414(n+1), A066191(n+1)]`
-/

namespace A270777.P3594489238985963338
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064414 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066191 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A270777.P3594489238985963338

/-! ## A270777.P13390720150175698904

`∩[A064414(n+1), A175787(n+1)]`
-/

namespace A270777.P13390720150175698904
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064414 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175787 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A270777.P13390720150175698904

/-! ## A270777.P15302974731145839015

`∩[A064414(n+1), A354816(n+1)]`
-/

namespace A270777.P15302974731145839015
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064414 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354816 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A270777.P15302974731145839015

/-! ## A270777.P16989795269967652661

`∩[A064414(n+1), A396594(n+1)]`
-/

namespace A270777.P16989795269967652661
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064414 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A396594 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A270777.P16989795269967652661

/-! ## A270777.P11649172430187287594

`∪[A000057(n+1), A370683(n+1)]`
-/

namespace A270777.P11649172430187287594
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000057 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370683 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A270777.P11649172430187287594

/-! ## A270777.P14712525067890740421

`∪[A000057(n+1), A352837(n+1)²]`
-/

namespace A270777.P14712525067890740421
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000057 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352837 (n + 1) ^ 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A270777.P14712525067890740421

/-! ## A270777.P4896891036034648329

`∪[A000057(n+1), A007352(n+1)+2+n]`
-/

namespace A270777.P4896891036034648329
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000057 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007352 (n + 1) + 2 + (n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A270777.P4896891036034648329

/-! ## A270777.P1209182509671925539

`∩[A023162(n+1), A270839(n+1)]`
-/

namespace A270777.P1209182509671925539
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023162 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270839 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A270777.P1209182509671925539

/-! ## A270777.P4565925980478729349

`record[A002034(A064414(n+2))]`
-/

namespace A270777.P4565925980478729349
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002034 (A064414 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A270777.P4565925980478729349

/-! ## A270777.P6843926953139755202

`record[A033677(2*A064414(n+1))]`
-/

namespace A270777.P6843926953139755202
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033677 (2 * A064414 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A270777.P6843926953139755202

/-! ## A270777.P1271053361104225095

`A270475(A004274(n+1))`
-/

namespace A270777.P1271053361104225095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270475 (A004274 (n + 1)).toNat

end

end A270777.P1271053361104225095

/-! ## A270777.P15679096159964419203

`A270475(A004280(n+1))`
-/

namespace A270777.P15679096159964419203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270475 (A004280 (n + 1)).toNat

end

end A270777.P15679096159964419203

/-! ## A270777.P16094854348088176717

`filter[A270475(n+1), A010055(#)]`
-/

namespace A270777.P16094854348088176717
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270475 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010055 (f1 j).toNat = 1) n)

end

end A270777.P16094854348088176717

/-! ## A270777.P5811914600802747096

`filter[A270475(n+1), A069513(#)]`
-/

namespace A270777.P5811914600802747096
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270475 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A069513 (f1 j).toNat = 1) n)

end

end A270777.P5811914600802747096

/-! ## A270777.P3776069441167034176

`filter[A270475(n+1), A182067(#)]`
-/

namespace A270777.P3776069441167034176
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270475 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A182067 (f1 j).toNat = 1) n)

end

end A270777.P3776069441167034176

/-! ## A270777.P16592252794294392596

`filter[A270475(n+1), A302777(#)]`
-/

namespace A270777.P16592252794294392596
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270475 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A302777 (f1 j).toNat = 1) n)

end

end A270777.P16592252794294392596

/-! ## A270777.P9838638805017601226

`filter[A270475(n+1), A324290(#)]`
-/

namespace A270777.P9838638805017601226
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270475 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A324290 (f1 j).toNat = 1) n)

end

end A270777.P9838638805017601226

/-! ## A270777.P3875200725289088134

`filter[A270475(n+1), A325964(#)]`
-/

namespace A270777.P3875200725289088134
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270475 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A325964 (f1 j).toNat = 1) n)

end

end A270777.P3875200725289088134

/-! ## A270777.P1779070794567463295

`filter[A270475(n+1), A327866(#)]`
-/

namespace A270777.P1779070794567463295
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270475 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A327866 (f1 j).toNat = 1) n)

end

end A270777.P1779070794567463295

/-!
# A270778: Primes p such that sigma(p-1) - phi(p-1) = (3p-5)/2.

The programs for A270778, there is no canonical definition to state claims against.
-/

/-! ## A270778.P1036645926330186633

`p?[A270836(n+1)]`
-/

namespace A270778.P1036645926330186633
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270836 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A270778.P1036645926330186633

/-! ## A270778.P14568914111663169092

`p?[record[A270836(A000119(n))]]`
-/

namespace A270778.P14568914111663169092
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270836 (A000119 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A270778.P14568914111663169092

/-! ## A270778.P160125574333346432

`record[p?[A270836(A007306(n))]]`
-/

namespace A270778.P160125574333346432
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270836 (A007306 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A270778.P160125574333346432

/-!
# A270779: Primes p such that sigma(p-1) + phi(p-1) = (5p-7)/2.

The programs for A270779, there is no canonical definition to state claims against.
-/

/-! ## A270779.P7991165930695069309

`p?[A270837(n+1)]`
-/

namespace A270779.P7991165930695069309
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270837 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A270779.P7991165930695069309

/-! ## A270779.P11581997492304348381

`filter[A270837(n+1), A010051(#)]`
-/

namespace A270779.P11581997492304348381
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270837 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A270779.P11581997492304348381

/-! ## A270779.P17467081452361867669

`filter[A270837(n+1), A174897(#)]`
-/

namespace A270779.P17467081452361867669
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270837 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A174897 (f1 j).toNat = 1) n)

end

end A270779.P17467081452361867669

/-!
# A270781: Numbers n with the property that n is both of the form p^2 + q^2 + r^2 + s^2 for some primes p, q, r, and s, and not of the form a^2 + b^2 + c^2 for any integers a, b, and c.

The programs for A270781, there is no canonical definition to state claims against.
-/

/-! ## A270781.P2760842760309634408

`filter[A214515(n+1), A072401(#)]`
-/

namespace A270781.P2760842760309634408
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214515 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A072401 (f1 j).toNat = 1) n)

end

end A270781.P2760842760309634408

/-! ## A270781.P17023125522631786584

`eq[4, or(A002828(n), A183214(n))]`
-/

namespace A270781.P17023125522631786584
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A002828 n) (A183214 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A270781.P17023125522631786584

/-! ## A270781.P9664011713974984011

`eq[(A000164(n)+2)², A183214(n)]`
-/

namespace A270781.P9664011713974984011
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000164 n + 2) ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183214 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A270781.P9664011713974984011

/-! ## A270781.P1407239495437657323

`eq[(A246631(n)+2)², A183214(n)]`
-/

namespace A270781.P1407239495437657323
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A246631 n + 2) ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183214 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A270781.P1407239495437657323

/-! ## A270781.P164145789687276858

`∩[A004215(n+1), A214515(n+1)]`
-/

namespace A270781.P164145789687276858
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004215 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214515 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A270781.P164145789687276858

/-! ## A270781.P14669404920236134609

`eq[A153480(A000164(n)), A183214(n)]`
-/

namespace A270781.P14669404920236134609
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153480 (A000164 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183214 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A270781.P14669404920236134609

/-! ## A270781.P15923628149403990601

`eq[A153480(A246631(n)), A183214(n)]`
-/

namespace A270781.P15923628149403990601
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153480 (A246631 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183214 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A270781.P15923628149403990601

/-! ## A270781.P5505212129691964694

`eq[A183214(n), A246631(A246631(n)+2)]`
-/

namespace A270781.P5505212129691964694
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183214 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246631 (A246631 n + 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A270781.P5505212129691964694

/-!
# A270783: Numbers of the form p^2 + q^2 + r^2 + s^2 = a^2 + b^2 + c^2 for some primes p, q, r, and s and some integers a, b, and c.

The programs for A270783, there is no canonical definition to state claims against.
-/

/-! ## A270783.P7588894033131326170

`filter[A214515(n+1), A071374(#)]`
-/

namespace A270783.P7588894033131326170
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214515 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A071374 (f1 j).toNat = 1) n)

end

end A270783.P7588894033131326170

/-! ## A270783.P8893979485967705086

`∩[A000378(n+1), A214515(n+1)]`
-/

namespace A270783.P8893979485967705086
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000378 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214515 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A270783.P8893979485967705086

/-! ## A270783.P5660337773923871455

`A214515(A004195(n+1))+A000122(A162691(n+1))`
-/

namespace A270783.P5660337773923871455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214515 (A004195 (n + 1)).toNat + A000122 (A162691 (n + 1)).toNat

end

end A270783.P5660337773923871455

/-! ## A270783.P14980197950176613597

`A034460(A105132(n+1))*A214515(A004195(n+1))`
-/

namespace A270783.P14980197950176613597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034460 (A105132 (n + 1)).toNat * A214515 (A004195 (n + 1)).toNat

end

end A270783.P14980197950176613597

/-!
# A270784: Expansion of (1-sqrt(1-4*x^4/(1-x)^4))/(2*x^4*(1-x)).

The programs for A270784, there is no canonical definition to state claims against.
-/

/-! ## A270784.P8667028044449136656

`∑[A360046(n)]`
-/

namespace A270784.P8667028044449136656
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360046 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A270784.P8667028044449136656

/-! ## A270784.P3891448090738377577

`A360046(A028310(n))+a(n-1)` with `a(0)=1`
-/

namespace A270784.P3891448090738377577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A360046 (A028310 n).toNat + a (n - 1)

end

end A270784.P3891448090738377577

/-! ## A270784.P422102871721360154

`A360046(n)+a(A026741(2*n)-1)` with `a(0)=1`
-/

namespace A270784.P422102871721360154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A360046 n + a (A026741 (2 * n) - 1).toNat

end

end A270784.P422102871721360154

/-! ## A270784.P13682410928510702668

`A038503(n+4)-A121373(A361705(n))`
-/

namespace A270784.P13682410928510702668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038503 (n + 4) - A121373 (A361705 n).toNat

end

end A270784.P13682410928510702668

/-! ## A270784.P2025698842102729038

`∑[A025461(A232126(n+2))+A000749(n+3)]`
-/

namespace A270784.P2025698842102729038
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025461 (A232126 (n + 2)).toNat + A000749 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A270784.P2025698842102729038

/-!
# A270785: Number of Schur rings over Z_{3^n}.

The programs for A270785, there is no canonical definition to state claims against.
-/

/-! ## A270785.P10038871533169400916

`A320948(A179865(n+1))/A054977(n)`
-/

namespace A270785.P10038871533169400916
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A320948 (A179865 (n + 1)).toNat : ℚ) / (A054977 n : ℚ)

end

end A270785.P10038871533169400916

/-! ## A270785.P16731436695318296853

`A110303(A151293(n))`
-/

namespace A270785.P16731436695318296853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110303 (A151293 n).toNat

end

end A270785.P16731436695318296853

/-! ## A270785.P17160527998974178221

`A043327(2*n)+A006855(A043327(n))`
-/

namespace A270785.P17160527998974178221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043327 (2 * n) + A006855 (A043327 n).toNat

end

end A270785.P17160527998974178221

/-!
# A270786: Number of Schur rings over Z_{5^n}.

The programs for A270786, there is no canonical definition to state claims against.
-/

/-! ## A270786.P5424539995573431026

`record[gcd(A053120(n), A320948(n+1))]`
-/

namespace A270786.P5424539995573431026
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A053120 n) (A320948 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A270786.P5424539995573431026

/-! ## A270786.P14707896997023175426

`A320948(A179865(n+1)+n)/A054977(n)`
-/

namespace A270786.P14707896997023175426
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A320948 (A179865 (n + 1) + (n : ℤ)).toNat : ℚ) / (A054977 n : ℚ)

end

end A270786.P14707896997023175426

/-!
# A270787: Number of Schur rings over Z_{7^n}.

The programs for A270787, there is no canonical definition to state claims against.
-/

/-! ## A270787.P12785296269614876125

`A320948(A034856(n+1))-A000007(n)`
-/

namespace A270787.P12785296269614876125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320948 (A034856 (n + 1)).toNat - A000007 n

end

end A270787.P12785296269614876125

/-! ## A270787.P2706000752455817109

`A320948(A034856(n+1))-A015161(n)`
-/

namespace A270787.P2706000752455817109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320948 (A034856 (n + 1)).toNat - A015161 n

end

end A270787.P2706000752455817109

/-! ## A270787.P17529475050770824243

`A320948(A034856(n+1))-A058343(n)`
-/

namespace A270787.P17529475050770824243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320948 (A034856 (n + 1)).toNat - A058343 n

end

end A270787.P17529475050770824243

/-! ## A270787.P17689626965437193391

`A320948(A034856(n+1))-A353501(n)`
-/

namespace A270787.P17689626965437193391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320948 (A034856 (n + 1)).toNat - A353501 n

end

end A270787.P17689626965437193391

/-! ## A270787.P16552417590250064836

`A320948(A034856(n+1))/A054977(n)`
-/

namespace A270787.P16552417590250064836
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A320948 (A034856 (n + 1)).toNat : ℚ) / (A054977 n : ℚ)

end

end A270787.P16552417590250064836

/-!
# A270788: Unique fixed point of the 3-symbol Fibonacci morphism phi-hat_2.

The programs for A270788, the canonical program `A270788.P16333503401830027837` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A270788 has offset 1).

The definition of A270788 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A270788.P16333503401830027837

`record[xor(n, 2*n+1)]%4`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A270788

/-- `record[xor(n, 2*n+1)]%4` -/
def P16333503401830027837.Spec : Prop :=
  ∀ n, (P16333503401830027837.a n : ℤ) = A270788 (n + 1)

theorem P16333503401830027837.correct : P16333503401830027837.Spec := by
  intro n
  simp only [A270788, Nat.add_sub_cancel]

end A270788

/-! ## A270788.P11252543535938528770

`and(3, record[xor(n, 2*n+1)])`
-/

namespace A270788.P11252543535938528770
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor n (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 3 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))

end

end A270788.P11252543535938528770

namespace A270788

/-- `and(3, record[xor(n, 2*n+1)])` -/
def P11252543535938528770.Spec : Prop :=
  ∀ n, (P11252543535938528770.a n : ℤ) = A270788 (n + 1)

end A270788

/-! ## A270788.P8583349010419806289

`eq[0, and(n, 2*n)]%4+1`
-/

namespace A270788.P8583349010419806289
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land n (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n % 4 + 1

end

end A270788.P8583349010419806289

namespace A270788

/-- `eq[0, and(n, 2*n)]%4+1` -/
def P8583349010419806289.Spec : Prop :=
  ∀ n, (P8583349010419806289.a n : ℤ) = A270788 (n + 1)

end A270788

/-! ## A270788.P1916504646167755062

`record[1-xor(1, -xor(n-1, 2*n))]%4`
-/

namespace A270788.P1916504646167755062
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - Int.xor 1 (-Int.xor ((n : ℤ) - 1) (2 * n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) 4

end

end A270788.P1916504646167755062

namespace A270788

/-- `record[1-xor(1, -xor(n-1, 2*n))]%4` -/
def P1916504646167755062.Spec : Prop :=
  ∀ n, P1916504646167755062.a n = A270788 (n + 1)

end A270788

/-! ## A270788.P17865622095070819739

`A159917(n)+1`
-/

namespace A270788.P17865622095070819739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159917 n + 1

end

end A270788.P17865622095070819739

namespace A270788

/-- `A159917(n)+1` -/
def P17865622095070819739.Spec : Prop :=
  ∀ n, P17865622095070819739.a n = A270788 (n + 1)

end A270788

/-! ## A270788.P7882569813846981212

`and(3, A003714(n))+1`
-/

namespace A270788.P7882569813846981212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 3 (A003714 n) + 1

end

end A270788.P7882569813846981212

namespace A270788

/-- `and(3, A003714(n))+1` -/
def P7882569813846981212.Spec : Prop :=
  ∀ n, P7882569813846981212.a n = A270788 (n + 1)

end A270788

/-! ## A270788.P8896905942960524006

`and(3, A014417(n)+1)`
-/

namespace A270788.P8896905942960524006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 3 (A014417 n + 1)

end

end A270788.P8896905942960524006

namespace A270788

/-- `and(3, A014417(n)+1)` -/
def P8896905942960524006.Spec : Prop :=
  ∀ n, P8896905942960524006.a n = A270788 (n + 1)

end A270788

/-! ## A270788.P8092836124534484285

`A129761(ceil(ϕ*n))%4`
-/

namespace A270788.P8092836124534484285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A129761 ⌈Real.goldenRatio * (n : ℝ)⌉.toNat) 4

end

end A270788.P8092836124534484285

namespace A270788

/-- `A129761(ceil(ϕ*n))%4` -/
def P8092836124534484285.Spec : Prop :=
  ∀ n, P8092836124534484285.a n = A270788 (n + 1)

end A270788

/-! ## A270788.P15696040184769090504

`A139713(A035614(n))`
-/

namespace A270788.P15696040184769090504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139713 (A035614 n).toNat

end

end A270788.P15696040184769090504

namespace A270788

/-- `A139713(A035614(n))` -/
def P15696040184769090504.Spec : Prop :=
  ∀ n, P15696040184769090504.a n = A270788 (n + 1)

end A270788

/-! ## A270788.P7071690653957547340

`A010873(A003714(n)+1)`
-/

namespace A270788.P7071690653957547340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010873 (A003714 n + 1).toNat

end

end A270788.P7071690653957547340

namespace A270788

/-- `A010873(A003714(n)+1)` -/
def P7071690653957547340.Spec : Prop :=
  ∀ n, P7071690653957547340.a n = A270788 (n + 1)

end A270788

/-! ## A270788.P15100280706120114778

`A158478(A035612(n+1))`
-/

namespace A270788.P15100280706120114778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158478 (A035612 (n + 1)).toNat

end

end A270788.P15100280706120114778

namespace A270788

/-- `A158478(A035612(n+1))` -/
def P15100280706120114778.Spec : Prop :=
  ∀ n, P15100280706120114778.a n = A270788 (n + 1)

end A270788

/-! ## A270788.P16666936976587679354

`A158478(A035614(n)+1)`
-/

namespace A270788.P16666936976587679354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158478 (A035614 n + 1).toNat

end

end A270788.P16666936976587679354

namespace A270788

/-- `A158478(A035614(n)+1)` -/
def P16666936976587679354.Spec : Prop :=
  ∀ n, P16666936976587679354.a n = A270788 (n + 1)

end A270788

/-! ## A270788.P11064228711415365148

`A364447(A232642(n+1))`
-/

namespace A270788.P11064228711415365148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364447 (A232642 (n + 1)).toNat

end

end A270788.P11064228711415365148

namespace A270788

/-- `A364447(A232642(n+1))` -/
def P11064228711415365148.Spec : Prop :=
  ∀ n, P11064228711415365148.a n = A270788 (n + 1)

end A270788

/-! ## A270788.P17565948936195286990

`gcd(6, A010873(A048679(n))+1)`
-/

namespace A270788.P17565948936195286990
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 6 (A010873 (A048679 n).toNat + 1)

end

end A270788.P17565948936195286990

namespace A270788

/-- `gcd(6, A010873(A048679(n))+1)` -/
def P17565948936195286990.Spec : Prop :=
  ∀ n, (P17565948936195286990.a n : ℤ) = A270788 (n + 1)

end A270788

/-! ## A270788.P16537964140294379858

`A123740(n+1)+A059426(n)`
-/

namespace A270788.P16537964140294379858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123740 (n + 1) + A059426 n

end

end A270788.P16537964140294379858

namespace A270788

/-- `A123740(n+1)+A059426(n)` -/
def P16537964140294379858.Spec : Prop :=
  ∀ n, P16537964140294379858.a n = A270788 (n + 1)

end A270788

/-! ## A270788.P17756438859320414095

`A059426(n)+1-A005713(n)`
-/

namespace A270788.P17756438859320414095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059426 n + (1 - A005713 n)

end

end A270788.P17756438859320414095

namespace A270788

/-- `A059426(n)+1-A005713(n)` -/
def P17756438859320414095.Spec : Prop :=
  ∀ n, P17756438859320414095.a n = A270788 (n + 1)

end A270788

/-! ## A270788.P1643307809681322027

`A050141(n+2)-A003849(n)`
-/

namespace A270788.P1643307809681322027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050141 (n + 2) - A003849 n

end

end A270788.P1643307809681322027

namespace A270788

/-- `A050141(n+2)-A003849(n)` -/
def P1643307809681322027.Spec : Prop :=
  ∀ n, P1643307809681322027.a n = A270788 (n + 1)

end A270788

/-! ## A270788.P8359594938295721613

`A014675(n)*A296135(n)+1`
-/

namespace A270788.P8359594938295721613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014675 n * A296135 n + 1

end

end A270788.P8359594938295721613

namespace A270788

/-- `A014675(n)*A296135(n)+1` -/
def P8359594938295721613.Spec : Prop :=
  ∀ n, P8359594938295721613.a n = A270788 (n + 1)

end A270788

/-! ## A270788.P9912587520520583418

`A005614(n)+2*A296135(n)`
-/

namespace A270788.P9912587520520583418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005614 n + 2 * A296135 n

end

end A270788.P9912587520520583418

namespace A270788

/-- `A005614(n)+2*A296135(n)` -/
def P9912587520520583418.Spec : Prop :=
  ∀ n, P9912587520520583418.a n = A270788 (n + 1)

end A270788

/-!
# A270789: Number of Schur rings over Z_{2^n}.

The programs for A270789, there is no canonical definition to state claims against.
-/

/-! ## A270789.P13286502599663237623

`A384156(2^n)`
-/

namespace A270789.P13286502599663237623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384156 (2 ^ n)

end

end A270789.P13286502599663237623

/-! ## A270789.P4322017261746996460

`A049425(n)+A003285(A249078(n))`
-/

namespace A270789.P4322017261746996460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049425 n + A003285 (A249078 n).toNat

end

end A270789.P4322017261746996460

/-! ## A270789.P16026876174836459965

`A187187(A151072(n)+A151066(n))`
-/

namespace A270789.P16026876174836459965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187187 (A151072 n + A151066 n).toNat

end

end A270789.P16026876174836459965

/-!
# A270791: Triangle read by rows: coefficients of polynomials P_n(x) arising from RNA combinatorics.

The programs for A270791, there is no canonical definition to state claims against.
-/

/-! ## A270791.P7220360762421341794

`A181064(A189237(n+1))`
-/

namespace A270791.P7220360762421341794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181064 (A189237 (n + 1)).toNat

end

end A270791.P7220360762421341794

/-!
# A270792: The prime/nonprime compound sequence ABA.

The programs for A270792, there is no canonical definition to state claims against.
-/

/-! ## A270792.P10361712746993946210

`A007821(p?[comp[n²]])`
-/

namespace A270792.P10361712746993946210
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007821 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A270792.P10361712746993946210

/-! ## A270792.P11439289519777791585

`or(1, A007821(p?[xor(1, n)+1]))`
-/

namespace A270792.P11439289519777791585
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A007821 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)))

end

end A270792.P11439289519777791585

/-! ## A270792.P16249330873007807771

`or(1, A007821(p?[-xor(1, 1-n)]))`
-/

namespace A270792.P16249330873007807771
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -Int.xor 1 (1 - (n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A007821 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat)

end

end A270792.P16249330873007807771

/-! ## A270792.P5414291833749998999

`A007821(∑{p}[p?[round(8*n/7)]², #])`
-/

namespace A270792.P5414291833749998999
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (8 * ((n : ℚ) / 7))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007821 (∑ p ∈ Nat.primeFactors (f1 n).natAbs, p)

end

end A270792.P5414291833749998999

/-! ## A270792.P2387632456708628697

`A007821(Δ[A007504(n)])`
-/

namespace A270792.P2387632456708628697
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007821 (f1 (n + 1) - f1 n).toNat

end

end A270792.P2387632456708628697

/-!
# A270793: First differences of number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 369", based on the 5-celled von Neumann neighborhood.

The programs for A270793, there is no canonical definition to state claims against.
-/

/-! ## A270793.P2136886460233368273

`Δ[A268277(n)]`
-/

namespace A270793.P2136886460233368273
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268277 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A270793.P2136886460233368273

/-! ## A270793.P24720071701065548

`A268277(n+1)-A268277(n)`
-/

namespace A270793.P24720071701065548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268277 (n + 1) - A268277 n

end

end A270793.P24720071701065548

/-! ## A270793.P15343243557429909661

`Δ[or(3, 2*n)²-A272273(n+1)]`
-/

namespace A270793.P15343243557429909661
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.lor 3 (2 * n) ^ 2 : ℤ) - A272273 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A270793.P15343243557429909661

/-!
# A270794: The prime/nonprime compound sequence BAA.

The programs for A270794, there is no canonical definition to state claims against.
-/

/-! ## A270794.P9420707087096011153

`A078782(p?[xor(1, n)+1])`
-/

namespace A270794.P9420707087096011153
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078782 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A270794.P9420707087096011153

/-! ## A270794.P2534437206260520323

`A078782(Δ[A007504(n)])`
-/

namespace A270794.P2534437206260520323
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078782 (f1 (n + 1) - f1 n).toNat

end

end A270794.P2534437206260520323

/-! ## A270794.P7449167341600034420

`A078782(record[A051698(n)])`
-/

namespace A270794.P7449167341600034420
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051698 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078782 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A270794.P7449167341600034420

/-! ## A270794.P16744579005104380200

`A078782(record[A162753(n)])`
-/

namespace A270794.P16744579005104380200
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162753 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078782 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A270794.P16744579005104380200

/-! ## A270794.P2975486993024743516

`A018252(A006450(n+1))`
-/

namespace A270794.P2975486993024743516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (A006450 (n + 1)).toNat

end

end A270794.P2975486993024743516

/-! ## A270794.P8140179482511567116

`A078782(A000040(n+1))`
-/

namespace A270794.P8140179482511567116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078782 (A000040 (n + 1)).toNat

end

end A270794.P8140179482511567116

/-! ## A270794.P14371770904245332632

`A002808(A141138(n+1))`
-/

namespace A270794.P14371770904245332632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002808 (A141138 (n + 1)).toNat

end

end A270794.P14371770904245332632

/-! ## A270794.P9496968913290743970

`A078782(A216883(n+1))`
-/

namespace A270794.P9496968913290743970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078782 (A216883 (n + 1)).toNat

end

end A270794.P9496968913290743970

/-! ## A270794.P8239449405153607394

`A078782(A216884(n+1))`
-/

namespace A270794.P8239449405153607394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078782 (A216884 (n + 1)).toNat

end

end A270794.P8239449405153607394

/-! ## A270794.P6682871713667600937

`A078782(A216885(n+1))`
-/

namespace A270794.P6682871713667600937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078782 (A216885 (n + 1)).toNat

end

end A270794.P6682871713667600937

/-!
# A270795: The prime/nonprime compound sequence BAB.

The programs for A270795, there is no canonical definition to state claims against.
-/

/-! ## A270795.P13151151535734426967

`A078782(Δ[A051349(n)])`
-/

namespace A270795.P13151151535734426967
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051349 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078782 (f1 (n + 1) - f1 n).toNat

end

end A270795.P13151151535734426967

/-! ## A270795.P12232042157121064216

`A018252(A007821(n+1))`
-/

namespace A270795.P12232042157121064216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (A007821 (n + 1)).toNat

end

end A270795.P12232042157121064216

/-! ## A270795.P256402696882003244

`A026234(A049078(n+1))`
-/

namespace A270795.P256402696882003244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026234 (A049078 (n + 1)).toNat

end

end A270795.P256402696882003244

/-! ## A270795.P13480104319029705205

`A078782(A018252(n+1))`
-/

namespace A270795.P13480104319029705205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078782 (A018252 (n + 1)).toNat

end

end A270795.P13480104319029705205

/-! ## A270795.P8455234622078178428

`A078782(A141468(n+2))`
-/

namespace A270795.P8455234622078178428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078782 (A141468 (n + 2)).toNat

end

end A270795.P8455234622078178428

/-! ## A270795.P11879565644177494597

`A078782(∑[A054546(n+1)])`
-/

namespace A270795.P11879565644177494597
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054546 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078782 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A270795.P11879565644177494597

/-! ## A270795.P6924165334693269508

`A018252(p?[A141437(n+1)])`
-/

namespace A270795.P6924165334693269508
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141437 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A270795.P6924165334693269508

/-! ## A270795.P3975779480159691102

`A018252(p?[A152769(n+1)])`
-/

namespace A270795.P3975779480159691102
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152769 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A270795.P3975779480159691102

/-! ## A270795.P7164223666492105021

`A018252(p?[A236676(n+1)])`
-/

namespace A270795.P7164223666492105021
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236676 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A270795.P7164223666492105021

/-! ## A270795.P14592752447321048362

`A018252(p?[A320628(n+1)])`
-/

namespace A270795.P14592752447321048362
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320628 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A270795.P14592752447321048362

/-!
# A270796: The prime/nonprime compound sequence BBA.

The programs for A270796, there is no canonical definition to state claims against.
-/

/-! ## A270796.P11201206999897583207

`A018252(A078782(n+1))`
-/

namespace A270796.P11201206999897583207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (A078782 (n + 1)).toNat

end

end A270796.P11201206999897583207

/-! ## A270796.P13765185978251924452

`A002808(record[A361709(n+2)])`
-/

namespace A270796.P13765185978251924452
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361709 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002808 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A270796.P13765185978251924452

/-! ## A270796.P17663956544958564560

`A018252(A018252(p?[comp[n²]]))`
-/

namespace A270796.P17663956544958564560
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (A018252 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))).toNat

end

end A270796.P17663956544958564560

/-! ## A270796.P13014445968727220705

`A065090(A078782(n+1)+1)`
-/

namespace A270796.P13014445968727220705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065090 (A078782 (n + 1) + 1).toNat

end

end A270796.P13014445968727220705

/-! ## A270796.P16878728747998051559

`A141468(A078782(n+1)+1)`
-/

namespace A270796.P16878728747998051559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141468 (A078782 (n + 1) + 1).toNat

end

end A270796.P16878728747998051559

/-! ## A270796.P14877088655814516564

`A002808(A078782(n+1)-1)`
-/

namespace A270796.P14877088655814516564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002808 (A078782 (n + 1) - 1).toNat

end

end A270796.P14877088655814516564

/-! ## A270796.P9668211600766472745

`A002808(A060462(p?[xor(1, n)+1]))`
-/

namespace A270796.P9668211600766472745
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002808 (A060462 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))).toNat

end

end A270796.P9668211600766472745

/-! ## A270796.P17048189517497723634

`A018252(A018252(record[∑{p}[n+2, #]]))`
-/

namespace A270796.P17048189517497723634
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n), p

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (A018252 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))).toNat

end

end A270796.P17048189517497723634

/-!
# A270797: a(n) = J(n) if n odd, or 4*J(n) if n even, where J = Jacobsthal numbers A001045.

The programs for A270797, the canonical program `A270797.P7614380881823318460` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A270797 has offset 0).

The definition of A270797 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A270797.P7614380881823318460

`5*a(n-2)-4*a(n-4)` with `a(0)=0, a(1)=1, a(2)=4, a(3)=3`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A270797

/-- `5*a(n-2)-4*a(n-4)` -/
def P7614380881823318460.Spec : Prop :=
  ∀ n, P7614380881823318460.a n = A270797 n

theorem P7614380881823318460.correct : P7614380881823318460.Spec := by
  intro n
  simp only [A270797]

end A270797

/-! ## A270797.P890453582507099149

`ogf((x+4x^2-2x^3)/(1-5x^2+4x^4))`
-/

namespace A270797.P890453582507099149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1, 4, -2] [1, 0, -5, 0, 4] n

end

end A270797.P890453582507099149

namespace A270797

/-- `ogf((x+4x^2-2x^3)/(1-5x^2+4x^4))` -/
def P890453582507099149.Spec : Prop :=
  ∀ n, P890453582507099149.a n = A270797 n

end A270797

/-! ## A270797.P2132914526941818142

`A097072(xor(1, n))`
-/

namespace A270797.P2132914526941818142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097072 (Nat.xor 1 n)

end

end A270797.P2132914526941818142

namespace A270797

/-- `A097072(xor(1, n))` -/
def P2132914526941818142.Spec : Prop :=
  ∀ n, P2132914526941818142.a n = A270797 n

end A270797

/-! ## A270797.P6928544771800093502

`xor(1, A000975(xor(1, n)))`
-/

namespace A270797.P6928544771800093502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A000975 (Nat.xor 1 n))

end

end A270797.P6928544771800093502

namespace A270797

/-- `xor(1, A000975(xor(1, n)))` -/
def P6928544771800093502.Spec : Prop :=
  ∀ n, P6928544771800093502.a n = A270797 n

end A270797

/-! ## A270797.P9486474589160595886

`gcd(2, n)²*A001045(n)`
-/

namespace A270797.P9486474589160595886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.gcd 2 n ^ 2 : ℤ) * A001045 n

end

end A270797.P9486474589160595886

namespace A270797

/-- `gcd(2, n)²*A001045(n)` -/
def P9486474589160595886.Spec : Prop :=
  ∀ n, P9486474589160595886.a n = A270797 n

end A270797

/-! ## A270797.P8720418240515586759

`A154383(n)+a(n-2)` with `a(0)=0, a(1)=1`
-/

namespace A270797.P8720418240515586759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  A154383 n + a (n - 2)

end

end A270797.P8720418240515586759

namespace A270797

/-- `A154383(n)+a(n-2)` -/
def P8720418240515586759.Spec : Prop :=
  ∀ n, P8720418240515586759.a n = A270797 n

end A270797

/-! ## A270797.P17716545413173955021

`A097072(A004442(n))`
-/

namespace A270797.P17716545413173955021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097072 (A004442 n).toNat

end

end A270797.P17716545413173955021

namespace A270797

/-- `A097072(A004442(n))` -/
def P17716545413173955021.Spec : Prop :=
  ∀ n, P17716545413173955021.a n = A270797 n

end A270797

/-! ## A270797.P8258881689407880343

`A051049(n)-A087213(n)`
-/

namespace A270797.P8258881689407880343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051049 n - A087213 n

end

end A270797.P8258881689407880343

namespace A270797

/-- `A051049(n)-A087213(n)` -/
def P8258881689407880343.Spec : Prop :=
  ∀ n, P8258881689407880343.a n = A270797 n

end A270797

/-! ## A270797.P14339402992894109016

`A092809(n)-A167193(n)`
-/

namespace A270797.P14339402992894109016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092809 n - A167193 n

end

end A270797.P14339402992894109016

namespace A270797

/-- `A092809(n)-A167193(n)` -/
def P14339402992894109016.Spec : Prop :=
  ∀ n, P14339402992894109016.a n = A270797 n

end A270797

/-! ## A270797.P13498419930794949854

`A282453(n)-A092808(n)`
-/

namespace A270797.P13498419930794949854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282453 n - A092808 n

end

end A270797.P13498419930794949854

namespace A270797

/-- `A282453(n)-A092808(n)` -/
def P13498419930794949854.Spec : Prop :=
  ∀ n, P13498419930794949854.a n = A270797 n

end A270797

/-! ## A270797.P7840548342459506445

`A001045(n)*A040005(n)`
-/

namespace A270797.P7840548342459506445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001045 n * A040005 n

end

end A270797.P7840548342459506445

namespace A270797

/-- `A001045(n)*A040005(n)` -/
def P7840548342459506445.Spec : Prop :=
  ∀ n, P7840548342459506445.a n = A270797 n

end A270797

/-! ## A270797.P13638214478093056050

`A040001(n)*A193652(n)`
-/

namespace A270797.P13638214478093056050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040001 n * A193652 n

end

end A270797.P13638214478093056050

namespace A270797

/-- `A040001(n)*A193652(n)` -/
def P13638214478093056050.Spec : Prop :=
  ∀ n, P13638214478093056050.a n = A270797 n

end A270797

/-! ## A270797.P17559536415406687655

`A134451(n)*A193652(n)`
-/

namespace A270797.P17559536415406687655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134451 n * A193652 n

end

end A270797.P17559536415406687655

namespace A270797

/-- `A134451(n)*A193652(n)` -/
def P17559536415406687655.Spec : Prop :=
  ∀ n, P17559536415406687655.a n = A270797 n

end A270797

/-! ## A270797.P18417639701476101498

`xor(A131588(n), A282798(n))`
-/

namespace A270797.P18417639701476101498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A131588 n) (A282798 n)

end

end A270797.P18417639701476101498

namespace A270797

/-- `xor(A131588(n), A282798(n))` -/
def P18417639701476101498.Spec : Prop :=
  ∀ n, P18417639701476101498.a n = A270797 n

end A270797

/-! ## A270797.P12204673474039013885

`xor(A166752(n), A282799(n))`
-/

namespace A270797.P12204673474039013885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A166752 n) (A282799 n)

end

end A270797.P12204673474039013885

namespace A270797

/-- `xor(A166752(n), A282799(n))` -/
def P12204673474039013885.Spec : Prop :=
  ∀ n, P12204673474039013885.a n = A270797 n

end A270797

/-! ## A270797.P13169473791035003711

`A040001(n)²*A001045(n)`
-/

namespace A270797.P13169473791035003711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040001 n ^ 2 * A001045 n

end

end A270797.P13169473791035003711

namespace A270797

/-- `A040001(n)²*A001045(n)` -/
def P13169473791035003711.Spec : Prop :=
  ∀ n, P13169473791035003711.a n = A270797 n

end A270797

/-! ## A270797.P6243952632018687748

`A134451(n)²*A001045(n)`
-/

namespace A270797.P6243952632018687748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134451 n ^ 2 * A001045 n

end

end A270797.P6243952632018687748

namespace A270797

/-- `A134451(n)²*A001045(n)` -/
def P6243952632018687748.Spec : Prop :=
  ∀ n, P6243952632018687748.a n = A270797 n

end A270797

/-! ## A270797.P17536711606249740947

`A280193(n)²*A001045(n)`
-/

namespace A270797.P17536711606249740947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280193 n ^ 2 * A001045 n

end

end A270797.P17536711606249740947

namespace A270797

/-- `A280193(n)²*A001045(n)` -/
def P17536711606249740947.Spec : Prop :=
  ∀ n, P17536711606249740947.a n = A270797 n

end A270797

/-! ## A270797.P17684878346205707417

`A134451(n)²*A152046(n)`
-/

namespace A270797.P17684878346205707417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134451 n ^ 2 * A152046 n

end

end A270797.P17684878346205707417

namespace A270797

/-- `A134451(n)²*A152046(n)` -/
def P17684878346205707417.Spec : Prop :=
  ∀ n, P17684878346205707417.a n = A270797 n

end A270797

/-! ## A270797.P5723641272908458259

`A134451(n)²*A167167(n)`
-/

namespace A270797.P5723641272908458259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134451 n ^ 2 * A167167 n

end

end A270797.P5723641272908458259

namespace A270797

/-- `A134451(n)²*A167167(n)` -/
def P5723641272908458259.Spec : Prop :=
  ∀ n, P5723641272908458259.a n = A270797 n

end A270797

