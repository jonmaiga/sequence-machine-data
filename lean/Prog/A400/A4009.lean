import SequenceMachineLib
import Mathlib.Tactic
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C006
import Seq.B000.C007
import Seq.B000.C008
import Seq.B000.C009
import Seq.B000.C010
import Seq.B000.C011
import Seq.B000.C013
import Seq.B000.C019
import Seq.B000.C022
import Seq.B000.C027
import Seq.B000.C030
import Seq.B000.C032
import Seq.B000.C040
import Seq.B000.C044
import Seq.B000.C048
import Seq.B000.C050
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C013
import Seq.B001.C014
import Seq.B002.C000
import Seq.B002.C002
import Seq.B002.C004
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B003.C005
import Seq.B004.C002
import Seq.B004.C003
import Seq.B005.C001
import Seq.B005.C002
import Seq.B008.C000
import Seq.B009.C000
import Seq.B010.C000
import Seq.B011.C000
import Seq.Opaque.C000
import Seq.Opaque.C001
import Seq.Opaque.C002
import Seq.Opaque.C003
import Seq.Opaque.C004
import Seq.Opaque.C006
import Seq.Opaque.C007
import Seq.Opaque.C009
import Seq.Opaque.C011
import Seq.Opaque.C012
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
# A400915: Number of nonisomorphic commutative g-dimonoids of order n.

The programs for A400915, there is no canonical definition to state claims against.
-/

/-! ## A400915.P7858050192255095490

`A173021(n^(n+2))`
-/

namespace A400915.P7858050192255095490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173021 (n ^ (n + 2))

end

end A400915.P7858050192255095490

/-!
# A400927: Number of distinct time intervals measurable by burning n non-uniform ropes, each burning for 1 unit of time, extinguishing allowed, as measured from the initial state to any transition.

The programs for A400927, there is no canonical definition to state claims against.
-/

/-! ## A400927.P3658538833533804430

`A001462(A077234(n))`
-/

namespace A400927.P3658538833533804430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001462 (A077234 n).toNat

end

end A400927.P3658538833533804430

/-! ## A400927.P16757353421001736540

`A001462(A047107(n+1))`
-/

namespace A400927.P16757353421001736540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001462 (A047107 (n + 1)).toNat

end

end A400927.P16757353421001736540

/-! ## A400927.P5903676746012575974

`A001462(A000108(n)*A047524(2*n+1))`
-/

namespace A400927.P5903676746012575974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001462 (A000108 n * A047524 (2 * n + 1)).toNat

end

end A400927.P5903676746012575974

/-!
# A400928: Array read by ascending antidiagonals: A(n,k) = Sum_{m=0..n} binomial(n,m)^k, with k >= 0.

The programs for A400928, there is no canonical definition to state claims against.
-/

/-! ## A400928.P2272488666070541244

`A309010(row(n)-2*col(n)+n)`
-/

namespace A400928.P2272488666070541244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309010 ((SequenceMachineLib.triRow n : ℤ) - (2 * SequenceMachineLib.triCol n : ℤ) + (n : ℤ)).toNat

end

end A400928.P2272488666070541244

/-! ## A400928.P17793910336234019643

`A309010(A061579(n))`
-/

namespace A400928.P17793910336234019643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309010 (A061579 n).toNat

end

end A400928.P17793910336234019643

/-! ## A400928.P7427730506963918767

`A309010(A114327(n)+n)`
-/

namespace A400928.P7427730506963918767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309010 (A114327 n + (n : ℤ)).toNat

end

end A400928.P7427730506963918767

/-! ## A400928.P14148206928161385161

`A309010(A038722(n+2))`
-/

namespace A400928.P14148206928161385161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309010 (A038722 (n + 2)).toNat

end

end A400928.P14148206928161385161

/-! ## A400928.P5020411562323039837

`A120397(A300437(n))`
-/

namespace A400928.P5020411562323039837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120397 (A300437 n).toNat

end

end A400928.P5020411562323039837

/-!
# A400929: Antidiagonal sums of the array A400928.

The programs for A400929, there is no canonical definition to state claims against.
-/

/-! ## A400929.P9206742414742349393

`∑[A029837(n+1)+A001462(A393744(n))]`
-/

namespace A400929.P9206742414742349393
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029837 (n + 1) + A001462 (A393744 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A400929.P9206742414742349393

/-! ## A400929.P12857252624133111978

`or(A027336(2*(n+1)), A324766(A000079(n)))`
-/

namespace A400929.P12857252624133111978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A027336 (2 * (n + 1))) (A324766 (A000079 n).toNat)

end

end A400929.P12857252624133111978

/-!
# A400930: Maximum length of a strictly increasing sequence of distinct prime divisors p_1, ..., p_k of n such that p_i divides p_{i+1} - 1 for 1 <= i < k.

The programs for A400930, the canonical program `A400930.P9795398723456261995` is in `Seq.B005.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A400930 has offset 1).

The definition of A400930 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A400930.P9795398723456261995

`A326195(∏{p}[1+n, #])`

The canonical program, it is in `Seq.B005.C002`.
-/

namespace A400930

/-- `A326195(∏{p}[1+n, #])` -/
def P9795398723456261995.Spec : Prop :=
  ∀ n, P9795398723456261995.a n = A400930 (n + 1)

theorem P9795398723456261995.correct : P9795398723456261995.Spec := by
  intro n
  simp only [A400930, Nat.add_sub_cancel]

end A400930

/-! ## A400930.P8500271700140248074

`A326195(A007947(n+1))`
-/

namespace A400930.P8500271700140248074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326195 (A007947 (n + 1)).toNat

end

end A400930.P8500271700140248074

namespace A400930

/-- `A326195(A007947(n+1))` -/
def P8500271700140248074.Spec : Prop :=
  ∀ n, P8500271700140248074.a n = A400930 (n + 1)

end A400930

/-! ## A400930.P11958477952332550324

`A326195(A064549(n+1))-A326195(n+1)`
-/

namespace A400930.P11958477952332550324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326195 (A064549 (n + 1)).toNat - A326195 (n + 1)

end

end A400930.P11958477952332550324

namespace A400930

/-- `A326195(A064549(n+1))-A326195(n+1)` -/
def P11958477952332550324.Spec : Prop :=
  ∀ n, P11958477952332550324.a n = A400930 (n + 1)

end A400930

/-!
# A400931: Numbers all of whose divisors are undulating numbers (A355301).

The programs for A400931, there is no canonical definition to state claims against.
-/

/-! ## A400931.P7317097379673727350

`A185012(A000290(n))+A043096(n+2)`
-/

namespace A400931.P7317097379673727350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185012 (A000290 n).toNat + A043096 (n + 2)

end

end A400931.P7317097379673727350

/-! ## A400931.P15033831698747532276

`A043096(n+2)*A055023(A366523((n+1)²))`
-/

namespace A400931.P15033831698747532276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043096 (n + 2) * A055023 (A366523 ((n + 1) ^ 2)).toNat

end

end A400931.P15033831698747532276

/-! ## A400931.P12331682603729392261

`∑[A281618(Δ[A043096(n+1)])]`
-/

namespace A400931.P12331682603729392261
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043096 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281618 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A400931.P12331682603729392261

/-! ## A400931.P8248812382170177610

`∑[A343356(n+1)^A055641(n)]`
-/

namespace A400931.P8248812382170177610
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A343356 (n + 1) : ℚ) ^ (A055641 n : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A400931.P8248812382170177610

/-! ## A400931.P7117583646604308349

`lt[A000720(A109703(n)), A321801(n)]`
-/

namespace A400931.P7117583646604308349
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A109703 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321801 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A400931.P7117583646604308349

/-! ## A400931.P5270809645102262167

`∪[A043096(n+3), A080504(A376477(3*n))]`
-/

namespace A400931.P5270809645102262167
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043096 (n + 3)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080504 (A376477 (3 * n)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A400931.P5270809645102262167

/-! ## A400931.P4589876699363167171

`lt[A378160(n+2)/2, A098488(A321801(n))]`
-/

namespace A400931.P4589876699363167171
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A378160 (n + 2) : ℚ) / 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098488 (A321801 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℚ)) n

end

end A400931.P4589876699363167171

/-! ## A400931.P11183038549392536162

`lt[A378161(n+2)/2, A098488(A321801(n))]`
-/

namespace A400931.P11183038549392536162
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A378161 (n + 2) : ℚ) / 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098488 (A321801 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℚ)) n

end

end A400931.P11183038549392536162

/-! ## A400931.P15395294651173412968

`A043096(n+2)%A000217(A065727(3*n+1))`
-/

namespace A400931.P15395294651173412968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A043096 (n + 2)) (A000217 (A065727 (3 * n + 1)).toNat)

end

end A400931.P15395294651173412968

/-! ## A400931.P10080972728420277524

`lt[A079691(n), A321801(A082216(n))]`
-/

namespace A400931.P10080972728420277524
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079691 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321801 (A082216 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A400931.P10080972728420277524

/-!
# A400941: The number of order-preserving or reversing partial permutations of an n-element set.

The programs for A400941, the canonical program `A400941.P3048978257207949309` is in `Seq.B000.C050`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A400941 has offset 0).

The definition of A400941 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A400941.P3048978257207949309

`2*C(2*n, n)-n²-1`

The canonical program, it is in `Seq.B000.C050`.
-/

namespace A400941

/-- `2*C(2*n, n)-n²-1` -/
def P3048978257207949309.Spec : Prop :=
  ∀ n, P3048978257207949309.a n = A400941 n

theorem P3048978257207949309.correct : P3048978257207949309.Spec := by
  intro n
  simp only [A400941]

end A400941

/-! ## A400941.P4019262964370789805

`A134760(n)-n²`
-/

namespace A400941.P4019262964370789805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134760 n - (n ^ 2 : ℤ)

end

end A400941.P4019262964370789805

namespace A400941

/-- `A134760(n)-n²` -/
def P4019262964370789805.Spec : Prop :=
  ∀ n, P4019262964370789805.a n = A400941 n

theorem P4019262964370789805.correct : P4019262964370789805.Spec := by
  intro n
  simp only [A400941, Nat.add_sub_cancel, A400941.P4019262964370789805.a, A400941.P3048978257207949309.a, A134760, A134760.P5337587419616991528.a, A000984, A000984.P7946844122574426130.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A400941

/-! ## A400941.P127750380292337440

`A134759(n)-(n²-n)`
-/

namespace A400941.P127750380292337440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134759 n - ((n ^ 2 : ℤ) - (n : ℤ))

end

end A400941.P127750380292337440

namespace A400941

/-- `A134759(n)-(n²-n)` -/
def P127750380292337440.Spec : Prop :=
  ∀ n, P127750380292337440.a n = A400941 n

theorem P127750380292337440.correct : P127750380292337440.Spec := by
  intro n
  simp only [A400941, Nat.add_sub_cancel, A400941.P127750380292337440.a, A400941.P3048978257207949309.a, A134759, A134759.P90257600578840069.a, A000984, A000984.P7946844122574426130.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A400941

/-! ## A400941.P2666375146492854406

`2*A000984(n)-(n²+1)`
-/

namespace A400941.P2666375146492854406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000984 n - (n ^ 2 + 1 : ℤ)

end

end A400941.P2666375146492854406

namespace A400941

/-- `2*A000984(n)-(n²+1)` -/
def P2666375146492854406.Spec : Prop :=
  ∀ n, P2666375146492854406.a n = A400941 n

theorem P2666375146492854406.correct : P2666375146492854406.Spec := by
  intro n
  simp only [A400941, Nat.add_sub_cancel, A400941.P2666375146492854406.a, A400941.P3048978257207949309.a, A000984, A000984.P7946844122574426130.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A400941

/-! ## A400941.P3916475890556145585

`A131428(n)*(n+1)-(n²-n)`
-/

namespace A400941.P3916475890556145585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131428 n * (n + 1 : ℤ) - ((n ^ 2 : ℤ) - (n : ℤ))

end

end A400941.P3916475890556145585

namespace A400941

/-- `A131428(n)*(n+1)-(n²-n)` -/
def P3916475890556145585.Spec : Prop :=
  ∀ n, P3916475890556145585.a n = A400941 n

end A400941

/-! ## A400941.P8041737130174391356

`(A089408(2*(n+1))-1)*(n+1)-(n²-n)`
-/

namespace A400941.P8041737130174391356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A089408 (2 * (n + 1)) - 1) * (n + 1 : ℤ) - ((n ^ 2 : ℤ) - (n : ℤ))

end

end A400941.P8041737130174391356

namespace A400941

/-- `(A089408(2*(n+1))-1)*(n+1)-(n²-n)` -/
def P8041737130174391356.Spec : Prop :=
  ∀ n, P8041737130174391356.a n = A400941 n

end A400941

/-! ## A400941.P1564897535194009999

`A028329(n)-A002522(n)`
-/

namespace A400941.P1564897535194009999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028329 n - A002522 n

end

end A400941.P1564897535194009999

namespace A400941

/-- `A028329(n)-A002522(n)` -/
def P1564897535194009999.Spec : Prop :=
  ∀ n, P1564897535194009999.a n = A400941 n

theorem P1564897535194009999.correct : P1564897535194009999.Spec := by
  intro n
  simp only [A400941, Nat.add_sub_cancel, A400941.P1564897535194009999.a, A400941.P3048978257207949309.a, A002522, A002522.P3778392011853271743.a, A028329, A028329.P2723209719397665586.a, A000984, A000984.P7946844122574426130.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A400941

/-!
# A400945: Symmetric array read by ascending antidiagonals: A(n,m) = denominator(B(n,m)), where B is defined as B(n,1)=1, B(1,m)=1 and B(n,m) = 1 + (1/(n*m))*Sum_{j=1..n-1} Sum_{k=1..m-1} B(j,k), with m > 0.

The programs for A400945, there is no canonical definition to state claims against.
-/

/-! ## A400945.P17503432149291325271

`A057561(A400944(n+1))`
-/

namespace A400945.P17503432149291325271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057561 (A400944 (n + 1)).toNat

end

end A400945.P17503432149291325271

/-! ## A400945.P16372464979696447972

`gcd(A000010(A018020(n)), A141686(n+1))`
-/

namespace A400945.P16372464979696447972
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000010 (A018020 n).toNat) (A141686 (n + 1))

end

end A400945.P16372464979696447972

/-!
# A400948: Primes p such that (p-1)/2 is either prime or a squarefree semiprime.

The programs for A400948, the canonical program `A400948.P2250991978134965370` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A400948 has offset 1).

The definition of A400948 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 688 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A400948.P2250991978134965370

`∩[A000040(n+1), A223134(A167171(n+1))]`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A400948

/-- `∩[A000040(n+1), A223134(A167171(n+1))]` -/
def P2250991978134965370.Spec : Prop :=
  ∀ n, (P2250991978134965370.a n : ℤ) = A400948 (n + 1)

theorem P2250991978134965370.correct : P2250991978134965370.Spec := by
  intro n
  simp only [A400948, Nat.add_sub_cancel]

end A400948

/-! ## A400948.P970357528880152779

`∩[A066651(n+1), A139143(n+1)]`
-/

namespace A400948.P970357528880152779
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066651 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139143 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A400948.P970357528880152779

namespace A400948

/-- `∩[A066651(n+1), A139143(n+1)]` -/
def P970357528880152779.Spec : Prop :=
  ∀ n, (P970357528880152779.a n : ℤ) = A400948 (n + 1)

end A400948

/-! ## A400948.P4144304451843428107

`A350179(A262524(n+2))`
-/

namespace A400948.P4144304451843428107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350179 (A262524 (n + 2)).toNat

end

end A400948.P4144304451843428107

namespace A400948

/-- `A350179(A262524(n+2))` -/
def P4144304451843428107.Spec : Prop :=
  ∀ n, P4144304451843428107.a n = A400948 (n + 1)

end A400948

/-! ## A400948.P792957168871527613

`filter[A079151(n+3), A110471(#)]`
-/

namespace A400948.P792957168871527613
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079151 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A110471 (f1 j).toNat = 1) n)

end

end A400948.P792957168871527613

namespace A400948

/-- `filter[A079151(n+3), A110471(#)]` -/
def P792957168871527613.Spec : Prop :=
  ∀ n, P792957168871527613.a n = A400948 (n + 1)

end A400948

/-! ## A400948.P1994061347030789714

`filter[A118849(n+3), A110471(#)]`
-/

namespace A400948.P1994061347030789714
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118849 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A110471 (f1 j).toNat = 1) n)

end

end A400948.P1994061347030789714

namespace A400948

/-- `filter[A118849(n+3), A110471(#)]` -/
def P1994061347030789714.Spec : Prop :=
  ∀ n, P1994061347030789714.a n = A400948 (n + 1)

end A400948

/-!
# A400954: Triangle read by rows: T(n,k) is the number of distinct ways to get the minimum runtime for k threads to complete n tasks, where time(n_i) = 2^(i-1), with 1 <= i <= n.

The programs for A400954, the canonical program `A400954.P15630144389841210989` is in `Seq.B001.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A400954 has offset 1).

The definition of A400954 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 153 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A400954.P15630144389841210989

`A048993(A073423(n)+n)`

The canonical program, it is in `Seq.B001.C014`.
-/

namespace A400954

/-- `A048993(A073423(n)+n)` -/
def P15630144389841210989.Spec : Prop :=
  ∀ n, P15630144389841210989.a n = A400954 (n + 1)

theorem P15630144389841210989.correct : P15630144389841210989.Spec := by
  intro n
  simp only [A400954, Nat.add_sub_cancel]

end A400954

/-! ## A400954.P1021828722792667779

`A048993(A073424(n)+n)`
-/

namespace A400954.P1021828722792667779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048993 (A073424 n + (n : ℤ)).toNat

end

end A400954.P1021828722792667779

namespace A400954

/-- `A048993(A073424(n)+n)` -/
def P1021828722792667779.Spec : Prop :=
  ∀ n, P1021828722792667779.a n = A400954 (n + 1)

end A400954

/-! ## A400954.P15016350995863340727

`A048993(n%A013616(n))`
-/

namespace A400954.P15016350995863340727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048993 (Int.tmod (n : ℤ) (A013616 n)).toNat

end

end A400954.P15016350995863340727

namespace A400954

/-- `A048993(n%A013616(n))` -/
def P15016350995863340727.Spec : Prop :=
  ∀ n, P15016350995863340727.a n = A400954 (n + 1)

end A400954

/-! ## A400954.P16366023270313390398

`gcd(A048993(n), A073423(n))`
-/

namespace A400954.P16366023270313390398
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A048993 n) (A073423 n)

end

end A400954.P16366023270313390398

namespace A400954

/-- `gcd(A048993(n), A073423(n))` -/
def P16366023270313390398.Spec : Prop :=
  ∀ n, (P16366023270313390398.a n : ℤ) = A400954 (n + 1)

end A400954

/-! ## A400954.P7530973163829873624

`or(A010054(n), A048993(n))`
-/

namespace A400954.P7530973163829873624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A010054 n) (A048993 n)

end

end A400954.P7530973163829873624

namespace A400954

/-- `or(A010054(n), A048993(n))` -/
def P7530973163829873624.Spec : Prop :=
  ∀ n, P7530973163829873624.a n = A400954 (n + 1)

end A400954

/-! ## A400954.P13592335779534149083

`or(A197870(n)², A048993(n))`
-/

namespace A400954.P13592335779534149083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A197870 n ^ 2) (A048993 n)

end

end A400954.P13592335779534149083

namespace A400954

/-- `or(A197870(n)², A048993(n))` -/
def P13592335779534149083.Spec : Prop :=
  ∀ n, P13592335779534149083.a n = A400954 (n + 1)

end A400954

/-! ## A400954.P3730279536921275695

`or(char[A000217(n)], A048993(n))`
-/

namespace A400954.P3730279536921275695
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) (A048993 n)

end

end A400954.P3730279536921275695

namespace A400954

/-- `or(char[A000217(n)], A048993(n))` -/
def P3730279536921275695.Spec : Prop :=
  ∀ n, P3730279536921275695.a n = A400954 (n + 1)

end A400954

/-! ## A400954.P18420335796023989407

`A373173(gcd(n, A059778(n)))`
-/

namespace A400954.P18420335796023989407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373173 (Int.gcd (n : ℤ) (A059778 n))

end

end A400954.P18420335796023989407

namespace A400954

/-- `A373173(gcd(n, A059778(n)))` -/
def P18420335796023989407.Spec : Prop :=
  ∀ n, P18420335796023989407.a n = A400954 (n + 1)

end A400954

/-! ## A400954.P8408219400527026660

`A028310(A048993(n))`
-/

namespace A400954.P8408219400527026660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A048993 n).toNat

end

end A400954.P8408219400527026660

namespace A400954

/-- `A028310(A048993(n))` -/
def P8408219400527026660.Spec : Prop :=
  ∀ n, P8408219400527026660.a n = A400954 (n + 1)

end A400954

/-! ## A400954.P5695447128373213957

`A048993(n-A000007(A048993(n)))`
-/

namespace A400954.P5695447128373213957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048993 ((n : ℤ) - A000007 (A048993 n).toNat).toNat

end

end A400954.P5695447128373213957

namespace A400954

/-- `A048993(n-A000007(A048993(n)))` -/
def P5695447128373213957.Spec : Prop :=
  ∀ n, P5695447128373213957.a n = A400954 (n + 1)

end A400954

/-!
# A400955: Triangle read by rows: T(n,k) is the minimum runtime for k threads to complete n tasks, where time(n_i) = 2^(i-1), with 1 <= i <= n.

The programs for A400955, the canonical program `A400955.P5010137716607798832` is in `Seq.B005.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A400955 has offset 1).

The definition of A400955 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 153 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A400955.P5010137716607798832

`A264802(n+1)-A057728(n+1)`

The canonical program, it is in `Seq.B005.C002`.
-/

namespace A400955

/-- `A264802(n+1)-A057728(n+1)` -/
def P5010137716607798832.Spec : Prop :=
  ∀ n, P5010137716607798832.a n = A400955 (n + 1)

theorem P5010137716607798832.correct : P5010137716607798832.Spec := by
  intro n
  simp only [A400955, Nat.add_sub_cancel]

end A400955

/-! ## A400955.P8943457142628572902

`A297110(A276618(n))`
-/

namespace A400955.P8943457142628572902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297110 (A276618 n).toNat

end

end A400955.P8943457142628572902

namespace A400955

/-- `A297110(A276618(n))` -/
def P8943457142628572902.Spec : Prop :=
  ∀ n, P8943457142628572902.a n = A400955 (n + 1)

end A400955

/-! ## A400955.P11232773038027880328

`A364571(A209492(n))`
-/

namespace A400955.P11232773038027880328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364571 (A209492 n).toNat

end

end A400955.P11232773038027880328

namespace A400955

/-- `A364571(A209492(n))` -/
def P11232773038027880328.Spec : Prop :=
  ∀ n, P11232773038027880328.a n = A400955 (n + 1)

end A400955

/-! ## A400955.P15350248058167932266

`A059942(A081118(n+1))`
-/

namespace A400955.P15350248058167932266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059942 (A081118 (n + 1)).toNat

end

end A400955.P15350248058167932266

namespace A400955

/-- `A059942(A081118(n+1))` -/
def P15350248058167932266.Spec : Prop :=
  ∀ n, P15350248058167932266.a n = A400955 (n + 1)

end A400955

/-! ## A400955.P4203620677206401887

`A200322(A130328(n))`
-/

namespace A400955.P4203620677206401887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200322 (A130328 n).toNat

end

end A400955.P4203620677206401887

namespace A400955

/-- `A200322(A130328(n))` -/
def P4203620677206401887.Spec : Prop :=
  ∀ n, P4203620677206401887.a n = A400955 (n + 1)

end A400955

/-!
# A400959: a(n) = Sum_{i=1..10^n} (-1)^BigOmega(i)*(-1)^BigOmega(i+1), where BigOmega(n) = A001222(n).

The programs for A400959, there is no canonical definition to state claims against.
-/

/-! ## A400959.P4778177982481668272

`A349229(A086067(n))`
-/

namespace A400959.P4778177982481668272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349229 (A086067 n).toNat

end

end A400959.P4778177982481668272

/-!
# A400962: Largest integer e such that, for every k with 1 <= k < n, binomial(n,k) is divisible by p^e for some prime p (depending on k).

The programs for A400962, there is no canonical definition to state claims against.
-/

/-! ## A400962.P5102527872618614112

`A238337(A001018(A238337(A238337(n+2))))`
-/

namespace A400962.P5102527872618614112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238337 (A001018 (A238337 (A238337 (n + 2)).toNat).toNat).toNat

end

end A400962.P5102527872618614112

/-! ## A400962.P18379260414940663825

`A169988(A008833(n+2))`
-/

namespace A400962.P18379260414940663825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169988 (A008833 (n + 2)).toNat

end

end A400962.P18379260414940663825

/-! ## A400962.P12862688843680537647

`A002947(A351308(n+2))`
-/

namespace A400962.P12862688843680537647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002947 (A351308 (n + 2)).toNat

end

end A400962.P12862688843680537647

/-! ## A400962.P11066655815182840190

`A112085(A348049(n+2))`
-/

namespace A400962.P11066655815182840190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112085 (A348049 (n + 2)).toNat

end

end A400962.P11066655815182840190

/-! ## A400962.P6998265481324993239

`A169988(A336642(n+2))`
-/

namespace A400962.P6998265481324993239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169988 (A336642 (n + 2)).toNat

end

end A400962.P6998265481324993239

/-!
# A400965: a(n) = 2^A006666(n) - n*3^A006667(n).

The programs for A400965, there is no canonical definition to state claims against.
-/

/-! ## A400965.P15458733518144005300

`2^A006666(n+1)-(n+1)*3^A006667(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A400965.P15458733518144005300
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A006666 (n + 1) : ℤ) - (n + 1 : ℚ) * (3 : ℚ) ^ (A006667 (n + 1) : ℤ)

end

end A400965.P15458733518144005300

/-!
# A400967: a(n) is the number of boundary lattice points minus the number of interior lattice points of the regular tetrahedron with vertices (0,0,0), (n,n,0), (n,0,n) and (0,n,n).

The programs for A400967, the canonical program `A400967.P16530172883198578615` is in `Seq.B000.C050`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A400967 has offset 1).

The definition of A400967 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A400967.P16530172883198578615

`ogf((4-7x+4x^2-3x^3)/(1-4x+6x^2-4x^3+x^4))`

The canonical program, it is in `Seq.B000.C050`.
-/

namespace A400967

/-- `ogf((4-7x+4x^2-3x^3)/(1-4x+6x^2-4x^3+x^4))` -/
def P16530172883198578615.Spec : Prop :=
  ∀ n, P16530172883198578615.a n = A400967 (n + 1)

theorem P16530172883198578615.correct : P16530172883198578615.Spec := by
  intro n
  simp only [A400967, Nat.add_sub_cancel]

end A400967

/-! ## A400967.P8031028981000569539

`3-(n+1)*((n+1)*(n-8)+5)/3`
-/

namespace A400967.P8031028981000569539
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  3 - ((n + 1 : ℤ) * ((n + 1 : ℤ) * ((n : ℤ) - 8) + 5) : ℚ) / 3

end

end A400967.P8031028981000569539

namespace A400967

/-- `3-(n+1)*((n+1)*(n-8)+5)/3` -/
def P8031028981000569539.Spec : Prop :=
  ∀ n, P8031028981000569539.a n = (A400967 (n + 1) : ℚ)

end A400967

/-! ## A400967.P16209634448407231240

`(n+2)²-2*C(n, 3)`
-/

namespace A400967.P16209634448407231240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 2) ^ 2 : ℤ) - (2 * Nat.choose n 3 : ℤ)

end

end A400967.P16209634448407231240

namespace A400967

/-- `(n+2)²-2*C(n, 3)` -/
def P16209634448407231240.Spec : Prop :=
  ∀ n, P16209634448407231240.a n = A400967 (n + 1)

end A400967

/-! ## A400967.P5568076341751830594

`∑[∑[a(n-1)-2]]` with `a(0)=4, a(1)=1, a(2)=2`
-/

namespace A400967.P5568076341751830594
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [4, 1, 2] fun n f2 =>
  f2 (n - 1) - 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A400967.P5568076341751830594

namespace A400967

/-- `∑[∑[a(n-1)-2]]` -/
def P5568076341751830594.Spec : Prop :=
  ∀ n, P5568076341751830594.a n = A400967 (n + 1)

end A400967

/-! ## A400967.P15524729545866164038

`∑{e}[A003945(n+2), A161702(#)]`
-/

namespace A400967.P15524729545866164038
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003945 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A161702 (Nat.factorization (f1 n).natAbs p)

end

end A400967.P15524729545866164038

namespace A400967

/-- `∑{e}[A003945(n+2), A161702(#)]` -/
def P15524729545866164038.Spec : Prop :=
  ∀ n, P15524729545866164038.a n = A400967 (n + 1)

end A400967

/-!
# A400968: a(n) is the number of boundary lattice points minus the number of interior lattice points of the octahedron |x| + |y| + |z| <= n.

The programs for A400968, the canonical program `A400968.P10195912970142873605` is in `Seq.B000.C050`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A400968 has offset 1).

The definition of A400968 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A400968.P10195912970142873605

`ogf((5-9x-x^2-3x^3)/(1-4x+6x^2-4x^3+x^4))`

The canonical program, it is in `Seq.B000.C050`.
-/

namespace A400968

/-- `ogf((5-9x-x^2-3x^3)/(1-4x+6x^2-4x^3+x^4))` -/
def P10195912970142873605.Spec : Prop :=
  ∀ n, P10195912970142873605.a n = A400968 (n + 1)

theorem P10195912970142873605.correct : P10195912970142873605.Spec := by
  intro n
  simp only [A400968, Nat.add_sub_cancel]

end A400968

/-! ## A400968.P8390051273968153348

`3-2*(n-3)*(n+1)*(2*(n+1)-1)/3`
-/

namespace A400968.P8390051273968153348
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  3 - (2 * ((n : ℤ) - 3) * (n + 1 : ℤ) * ((2 * (n + 1) : ℤ) - 1) : ℚ) / 3

end

end A400968.P8390051273968153348

namespace A400968

/-- `3-2*(n-3)*(n+1)*(2*(n+1)-1)/3` -/
def P8390051273968153348.Spec : Prop :=
  ∀ n, P8390051273968153348.a n = (A400968 (n + 1) : ℚ)

end A400968

/-! ## A400968.P12656618721010927040

`∑[∑[a(n-1)-8]]+3` with `a(0)=2, a(1)=4`
-/

namespace A400968.P12656618721010927040
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [2, 4] fun n f2 =>
  f2 (n - 1) - 8

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 3

end

end A400968.P12656618721010927040

namespace A400968

/-- `∑[∑[a(n-1)-8]]+3` -/
def P12656618721010927040.Spec : Prop :=
  ∀ n, P12656618721010927040.a n = A400968 (n + 1)

end A400968

/-!
# A400979: Maximum of r + s - n over positive integers r and s such that r!*s! divides n!.

The programs for A400979, there is no canonical definition to state claims against.
-/

/-! ## A400979.P16553100193998556426

`A218878(A018122(n))`
-/

namespace A400979.P16553100193998556426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218878 (A018122 n).toNat

end

end A400979.P16553100193998556426

/-!
# A400980: a(n) = Sum_{j=0..n} A400979(j).

The programs for A400980, there is no canonical definition to state claims against.
-/

/-! ## A400980.P6711144035674947424

`∑[A400979(n)]`
-/

namespace A400980.P6711144035674947424
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A400979 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A400980.P6711144035674947424

/-!
# A400982: a(n) = Sum_{j=0..n} A400981(j).

The programs for A400982, there is no canonical definition to state claims against.
-/

/-! ## A400982.P16007537785930452937

`∑[A400981(n)]`
-/

namespace A400982.P16007537785930452937
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A400981 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A400982.P16007537785930452937

/-! ## A400982.P16133617935526674516

`∑[A275806(A283507(n+4)-A327310(n))]`
-/

namespace A400982.P16133617935526674516
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275806 (A283507 (n + 4) - A327310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A400982.P16133617935526674516

/-!
# A400984: Numbers k > 1 whose trajectory under the Collatz map A014682 contains k+1.

The programs for A400984, there is no canonical definition to state claims against.
-/

/-! ## A400984.P15375058839492054871

`∩[A070993(n+1), A125007(n+1)]`
-/

namespace A400984.P15375058839492054871
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070993 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125007 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A400984.P15375058839492054871

/-! ## A400984.P16119876537399300640

`∩[A070993(n+1), A305081(n+1)]`
-/

namespace A400984.P16119876537399300640
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070993 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305081 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A400984.P16119876537399300640

/-! ## A400984.P15126447616418170780

`∩[A070993(n+1), A325395(n+1)]`
-/

namespace A400984.P15126447616418170780
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070993 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325395 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A400984.P15126447616418170780

/-!
# A400986: a(n) = max_{1 <= k < n} (k + tau(k)) - n, where tau(k) is the number of positive divisors of k.

The programs for A400986, there is no canonical definition to state claims against.
-/

/-! ## A400986.P15145796584412135359

`A351946(A026644(n))`
-/

namespace A400986.P15145796584412135359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351946 (A026644 n).toNat

end

end A400986.P15145796584412135359

/-! ## A400986.P14547179834347176047

`A238949(A011947(n+1))`
-/

namespace A400986.P14547179834347176047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238949 (A011947 (n + 1)).toNat

end

end A400986.P14547179834347176047

/-! ## A400986.P2036115661009828418

`A305054(A392552(n+1))`
-/

namespace A400986.P2036115661009828418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305054 (A392552 (n + 1)).toNat

end

end A400986.P2036115661009828418

/-! ## A400986.P13368363358748837399

`A001221(∑[A293747(n)])`
-/

namespace A400986.P13368363358748837399
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293747 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A400986.P13368363358748837399

/-! ## A400986.P6233705295977297330

`n-A109129(A002944(n+1))`
-/

namespace A400986.P6233705295977297330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A109129 (A002944 (n + 1)).toNat

end

end A400986.P6233705295977297330

/-!
# A400991: G.f. A(x) satisfies: A(x) = 1 + x * A(3*x/(1 + x)) / (1 + x).

The programs for A400991, there is no canonical definition to state claims against.
-/

/-! ## A400991.P4409315734143392153

`A337567(C(2*n, n+2))`
-/

namespace A400991.P4409315734143392153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337567 (Nat.choose (2 * n) (n + 2))

end

end A400991.P4409315734143392153

/-!
# A400992: G.f. A(x) satisfies: A(x) = 1 + x * A(4*x/(1 + x)) / (1 + x).

The programs for A400992, there is no canonical definition to state claims against.
-/

/-! ## A400992.P14454194439632647852

`A161984(A005195(n)^n)`
-/

namespace A400992.P14454194439632647852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161984 (A005195 n ^ n).toNat

end

end A400992.P14454194439632647852

/-!
# A400993: a(n) = (prime index of the n-th prime power)^(exponent of the n-th prime power) (cf. A000961).

The programs for A400993, the canonical program `A400993.P15630145363670834433` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A400993 has offset 1).

The definition of A400993 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000961, A003963, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A400993.P8924168450683391592

`A330669(n+1)^A025474(n+1)`
-/

namespace A400993.P8924168450683391592
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A330669 (n + 1) : ℚ) ^ (A025474 (n + 1) : ℤ)

end

end A400993.P8924168450683391592

namespace A400993

/-- `A330669(n+1)^A025474(n+1)` -/
def P8924168450683391592.Spec : Prop :=
  ∀ n, P8924168450683391592.a n = (A400993 (n + 1) : ℚ)

end A400993

/-! ## A400993.P1045948214736387744

`A000720(A025473(n+1))^A025474(n+1)`
-/

namespace A400993.P1045948214736387744
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000720 (A025473 (n + 1)).toNat : ℚ) ^ (A025474 (n + 1) : ℤ)

end

end A400993.P1045948214736387744

namespace A400993

/-- `A000720(A025473(n+1))^A025474(n+1)` -/
def P1045948214736387744.Spec : Prop :=
  ∀ n, P1045948214736387744.a n = (A400993 (n + 1) : ℚ)

end A400993

/-! ## A400993.P15630145363670834433

`A003963(A000961(n+1))`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A400993

/-- `A003963(A000961(n+1))` -/
def P15630145363670834433.Spec : Prop :=
  ∀ n, P15630145363670834433.a n = A400993 (n + 1)

theorem P15630145363670834433.correct : P15630145363670834433.Spec := by
  intro n
  simp only [A400993, Nat.add_sub_cancel]

end A400993

/-! ## A400993.P11246701198359241445

`A289508(A000961(n+1))^A025474(n+1)`
-/

namespace A400993.P11246701198359241445
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A289508 (A000961 (n + 1)).toNat : ℚ) ^ (A025474 (n + 1) : ℤ)

end

end A400993.P11246701198359241445

namespace A400993

/-- `A289508(A000961(n+1))^A025474(n+1)` -/
def P11246701198359241445.Spec : Prop :=
  ∀ n, P11246701198359241445.a n = (A400993 (n + 1) : ℚ)

end A400993

/-! ## A400993.P7393458515280532828

`A289508(sqrt(A056798(n+1)))^A025474(n+1)`
-/

namespace A400993.P7393458515280532828
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A289508 (SequenceMachineLib.roundAway (Real.sqrt (A056798 (n + 1) : ℝ))).toNat : ℚ) ^ (A025474 (n + 1) : ℤ)

end

end A400993.P7393458515280532828

namespace A400993

/-- `A289508(sqrt(A056798(n+1)))^A025474(n+1)` -/
def P7393458515280532828.Spec : Prop :=
  ∀ n, P7393458515280532828.a n = (A400993 (n + 1) : ℚ)

end A400993

/-! ## A400993.P17284868399813158964

`A289508(A181062(n+1)+1)^A025474(n+1)`
-/

namespace A400993.P17284868399813158964
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A289508 (A181062 (n + 1) + 1).toNat : ℚ) ^ (A025474 (n + 1) : ℤ)

end

end A400993.P17284868399813158964

namespace A400993

/-- `A289508(A181062(n+1)+1)^A025474(n+1)` -/
def P17284868399813158964.Spec : Prop :=
  ∀ n, P17284868399813158964.a n = (A400993 (n + 1) : ℚ)

end A400993

/-! ## A400993.P743174321159021049

`A003963(sqrt(A056798(n+1)))`
-/

namespace A400993.P743174321159021049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003963 (SequenceMachineLib.roundAway (Real.sqrt (A056798 (n + 1) : ℝ))).toNat

end

end A400993.P743174321159021049

namespace A400993

/-- `A003963(sqrt(A056798(n+1)))` -/
def P743174321159021049.Spec : Prop :=
  ∀ n, P743174321159021049.a n = A400993 (n + 1)

end A400993

/-! ## A400993.P5335309543131408226

`A003963(record[A028233(1+n)])`
-/

namespace A400993.P5335309543131408226
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028233 (1 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003963 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A400993.P5335309543131408226

namespace A400993

/-- `A003963(record[A028233(1+n)])` -/
def P5335309543131408226.Spec : Prop :=
  ∀ n, P5335309543131408226.a n = A400993 (n + 1)

end A400993

/-! ## A400993.P2406819382182258302

`A003963(record[A053585(n+1)])`
-/

namespace A400993.P2406819382182258302
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053585 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003963 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A400993.P2406819382182258302

namespace A400993

/-- `A003963(record[A053585(n+1)])` -/
def P2406819382182258302.Spec : Prop :=
  ∀ n, P2406819382182258302.a n = A400993 (n + 1)

end A400993

/-! ## A400993.P7801769106025495794

`A003963(A138929(n+1))`
-/

namespace A400993.P7801769106025495794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003963 (A138929 (n + 1)).toNat

end

end A400993.P7801769106025495794

namespace A400993

/-- `A003963(A138929(n+1))` -/
def P7801769106025495794.Spec : Prop :=
  ∀ n, P7801769106025495794.a n = A400993 (n + 1)

end A400993

/-! ## A400993.P8222635640993358179

`A325032(A302493(n+1))`
-/

namespace A400993.P8222635640993358179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325032 (A302493 (n + 1)).toNat

end

end A400993.P8222635640993358179

namespace A400993

/-- `A325032(A302493(n+1))` -/
def P8222635640993358179.Spec : Prop :=
  ∀ n, P8222635640993358179.a n = A400993 (n + 1)

end A400993

/-!
# A400996: Number of fixed point free involutions in S_{2n} (or perfect matchings on [2n]) which avoid the patterns {123, 231, 321}.

The programs for A400996, the canonical program `A400996.P805758818463875474` is in `Seq.B000.C050`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A400996 has offset 0).

The definition of A400996 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A400996.P805758818463875474

`ogf((1-5x+5x^2)/(1-6x+8x^2-2x^3))`

The canonical program, it is in `Seq.B000.C050`.
-/

namespace A400996

/-- `ogf((1-5x+5x^2)/(1-6x+8x^2-2x^3))` -/
def P805758818463875474.Spec : Prop :=
  ∀ n, P805758818463875474.a n = A400996 n

theorem P805758818463875474.correct : P805758818463875474.Spec := by
  intro n
  simp only [A400996]

end A400996

/-! ## A400996.P17520821056734228887

`6*a(n-1)-8*a(n-2)+2*a(n-3)` with `a(0)=1, a(1)=1, a(2)=3`
-/

namespace A400996.P17520821056734228887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 3] fun n a =>
  6 * a (n - 1) - 8 * a (n - 2) + 2 * a (n - 3)

end

end A400996.P17520821056734228887

namespace A400996

/-- `6*a(n-1)-8*a(n-2)+2*a(n-3)` -/
def P17520821056734228887.Spec : Prop :=
  ∀ n, P17520821056734228887.a n = A400996 n

end A400996

/-!
# A400998: Number of fixed left-handed polymarquises with n cells.

The programs for A400998, there is no canonical definition to state claims against.
-/

/-! ## A400998.P17949128548742611082

`A009279((n+1)^(n+1)+n)`
-/

namespace A400998.P17949128548742611082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009279 ((n + 1) ^ (n + 1) + n)

end

end A400998.P17949128548742611082

/-!
# A400999: Number of one-sided left-handed polymarquises with n cells.

The programs for A400999, there is no canonical definition to state claims against.
-/

/-! ## A400999.P12232305980942675806

`A115405(A115405((n+1)!))`
-/

namespace A400999.P12232305980942675806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115405 (A115405 (Nat.factorial (n + 1))).toNat

end

end A400999.P12232305980942675806

