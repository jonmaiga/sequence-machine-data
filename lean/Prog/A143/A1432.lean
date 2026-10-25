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
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
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
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C005
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
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
import Seq.B006.C002
import Seq.B007.C000
import Seq.B007.C001
import Seq.B008.C000
import Seq.B008.C001
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
import Seq.Opaque.C023
import Seq.Opaque.C024
import Seq.Opaque.C025

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A143200: Triangle read by rows: T(n, k) = 1 if k = 0 or k = n, T(n, k) = -1 if ( binomial(n, k) mod 2 ) = 1, otherwise T(n, k) = 0.

The programs for A143200, the canonical program `A143200.P1078575733488683412` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A143200 has offset 0).

The definition of A143200 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A143200.P6552562946581242691

`A174718(n)%2`
-/

namespace A143200.P6552562946581242691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A174718 n) 2

end

end A143200.P6552562946581242691

namespace A143200

/-- `A174718(n)%2` -/
def P6552562946581242691.Spec : Prop :=
  ∀ n, P6552562946581242691.a n = A143200 n

end A143200

/-! ## A143200.P1078575733488683412

`(1-A014473(n))%2`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A143200

/-- `(1-A014473(n))%2` -/
def P1078575733488683412.Spec : Prop :=
  ∀ n, P1078575733488683412.a n = A143200 n

theorem P1078575733488683412.correct : P1078575733488683412.Spec := by
  intro n
  simp only [A143200]

end A143200

/-! ## A143200.P17727243607901495922

`(2-A007318(n))%2`
-/

namespace A143200.P17727243607901495922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (2 - A007318 n) 2

end

end A143200.P17727243607901495922

namespace A143200

/-- `(2-A007318(n))%2` -/
def P17727243607901495922.Spec : Prop :=
  ∀ n, P17727243607901495922.a n = A143200 n

theorem P17727243607901495922.correct : P17727243607901495922.Spec := by
  intro n
  simp only [A143200, Nat.add_sub_cancel, A143200.P17727243607901495922.a, A143200.P1078575733488683412.a, A007318, A007318.P302227728145965961.a, A014473, A014473.P9301799580602651200.a, A259525, A259525.P15603515225238104540.f1, A259525.P15603515225238104540.a, A003056, A003056.P5318256527314048597.a, A074909, A074909.P6707642907239843837.f1, A074909.P6707642907239843837.a, A002262, A002262.P12129691700837801527.a, A010054, A010054.P18347828677204923252.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A143200

/-! ## A143200.P15196085017512490181

`A174720(n)%2`
-/

namespace A143200.P15196085017512490181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A174720 n) 2

end

end A143200.P15196085017512490181

namespace A143200

/-- `A174720(n)%2` -/
def P15196085017512490181.Spec : Prop :=
  ∀ n, P15196085017512490181.a n = A143200 n

end A143200

/-! ## A143200.P12773408627378713613

`A174966(n)%2`
-/

namespace A143200.P12773408627378713613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A174966 n) 2

end

end A143200.P12773408627378713613

namespace A143200

/-- `A174966(n)%2` -/
def P12773408627378713613.Spec : Prop :=
  ∀ n, P12773408627378713613.a n = A143200 n

end A143200

/-! ## A143200.P7796962827146797278

`A174728(n)%2`
-/

namespace A143200.P7796962827146797278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A174728 n) 2

end

end A143200.P7796962827146797278

namespace A143200

/-- `A174728(n)%2` -/
def P7796962827146797278.Spec : Prop :=
  ∀ n, P7796962827146797278.a n = A143200 n

end A143200

/-! ## A143200.P8735946529490476578

`A174730(n)%2`
-/

namespace A143200.P8735946529490476578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A174730 n) 2

end

end A143200.P8735946529490476578

namespace A143200

/-- `A174730(n)%2` -/
def P8735946529490476578.Spec : Prop :=
  ∀ n, P8735946529490476578.a n = A143200 n

end A143200

/-! ## A143200.P14077715496482818197

`A177228(n)%2`
-/

namespace A143200.P14077715496482818197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A177228 n) 2

end

end A143200.P14077715496482818197

namespace A143200

/-- `A177228(n)%2` -/
def P14077715496482818197.Spec : Prop :=
  ∀ n, P14077715496482818197.a n = A143200 n

end A143200

/-! ## A143200.P2613660151660669727

`A154338(n)%2`
-/

namespace A143200.P2613660151660669727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A154338 n) 2

end

end A143200.P2613660151660669727

namespace A143200

/-- `A154338(n)%2` -/
def P2613660151660669727.Spec : Prop :=
  ∀ n, P2613660151660669727.a n = A143200 n

end A143200

/-! ## A143200.P1944083376425181293

`A134824(A143333(n))`
-/

namespace A143200.P1944083376425181293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134824 (A143333 n).toNat

end

end A143200.P1944083376425181293

namespace A143200

/-- `A134824(A143333(n))` -/
def P1944083376425181293.Spec : Prop :=
  ∀ n, P1944083376425181293.a n = A143200 n

end A143200

/-! ## A143200.P17166908329235263121

`2-A020639(A132047(n))`
-/

namespace A143200.P17166908329235263121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A020639 (A132047 n).toNat

end

end A143200.P17166908329235263121

namespace A143200

/-- `2-A020639(A132047(n))` -/
def P17166908329235263121.Spec : Prop :=
  ∀ n, P17166908329235263121.a n = A143200 n

end A143200

/-! ## A143200.P5216671650615580721

`2-A158478(A007318(n))`
-/

namespace A143200.P5216671650615580721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A158478 (A007318 n).toNat

end

end A143200.P5216671650615580721

namespace A143200

/-- `2-A158478(A007318(n))` -/
def P5216671650615580721.Spec : Prop :=
  ∀ n, P5216671650615580721.a n = A143200 n

end A143200

/-! ## A143200.P8528849762854067692

`2-A158478(A028275(n))`
-/

namespace A143200.P8528849762854067692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A158478 (A028275 n).toNat

end

end A143200.P8528849762854067692

namespace A143200

/-- `2-A158478(A028275(n))` -/
def P8528849762854067692.Spec : Prop :=
  ∀ n, P8528849762854067692.a n = A143200 n

end A143200

/-! ## A143200.P9668073823819122000

`A003816(A132046(n))`
-/

namespace A143200.P9668073823819122000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003816 (A132046 n).toNat

end

end A143200.P9668073823819122000

namespace A143200

/-- `A003816(A132046(n))` -/
def P9668073823819122000.Spec : Prop :=
  ∀ n, P9668073823819122000.a n = A143200 n

end A143200

/-! ## A143200.P7667137249188565611

`A110514(A132046(n)-1)`
-/

namespace A143200.P7667137249188565611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110514 (A132046 n - 1).toNat

end

end A143200.P7667137249188565611

namespace A143200

/-- `A110514(A132046(n)-1)` -/
def P7667137249188565611.Spec : Prop :=
  ∀ n, P7667137249188565611.a n = A143200 n

end A143200

/-! ## A143200.P9196611078207954116

`A103368(A132048(n))`
-/

namespace A143200.P9196611078207954116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103368 (A132048 n).toNat

end

end A143200.P9196611078207954116

namespace A143200

/-- `A103368(A132048(n))` -/
def P9196611078207954116.Spec : Prop :=
  ∀ n, P9196611078207954116.a n = A143200 n

end A143200

/-! ## A143200.P13329668144704094827

`A110037(A132733(n))`
-/

namespace A143200.P13329668144704094827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110037 (A132733 n).toNat

end

end A143200.P13329668144704094827

namespace A143200

/-- `A110037(A132733(n))` -/
def P13329668144704094827.Spec : Prop :=
  ∀ n, P13329668144704094827.a n = A143200 n

end A143200

/-!
# A143201: Product of distances between prime factors in factorization of n.

The programs for A143201, there is no canonical definition to state claims against.
-/

/-! ## A143201.P3191896038178269137

`A097031(A290479(n+1))+A046665(n+1)`
-/

namespace A143201.P3191896038178269137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097031 (A290479 (n + 1)).toNat + A046665 (n + 1)

end

end A143201.P3191896038178269137

/-! ## A143201.P12286020051954549393

`A097031(A290480(n+1))+A046665(n+1)`
-/

namespace A143201.P12286020051954549393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097031 (A290480 (n + 1)).toNat + A046665 (n + 1)

end

end A143201.P12286020051954549393

/-! ## A143201.P7321183188054219593

`A081060(n+1)+A064911(A290479(n+1))`
-/

namespace A143201.P7321183188054219593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081060 (n + 1) + A064911 (A290479 (n + 1)).toNat

end

end A143201.P7321183188054219593

/-! ## A143201.P2779531486224859844

`A215480(n+1)+A081060(A183092(n+1))`
-/

namespace A143201.P2779531486224859844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215480 (n + 1) + A081060 (A183092 (n + 1)).toNat

end

end A143201.P2779531486224859844

/-! ## A143201.P17456894216264001910

`A215480(n+1)+A081060(A290479(n+1))`
-/

namespace A143201.P17456894216264001910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215480 (n + 1) + A081060 (A290479 (n + 1)).toNat

end

end A143201.P17456894216264001910

/-!
# A143202: Numbers having exactly two distinct prime factors p, q with q = p+2.

The programs for A143202, the canonical program `A143202.P5912992865618144092` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A143202 has offset 1).

The definition of A143202 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 250 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A143202.P5912992865618144092

`∩[A089632(n+1), A256617(n+1)]`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A143202

/-- `∩[A089632(n+1), A256617(n+1)]` -/
def P5912992865618144092.Spec : Prop :=
  ∀ n, (P5912992865618144092.a n : ℤ) = A143202 (n + 1)

theorem P5912992865618144092.correct : P5912992865618144092.Spec := by
  intro n
  simp only [A143202, Nat.add_sub_cancel]

end A143202

/-! ## A143202.P8880760657058924766

`∩[A089341(n+1), A089632(n+1)]`
-/

namespace A143202.P8880760657058924766
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089341 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089632 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A143202.P8880760657058924766

namespace A143202

/-- `∩[A089341(n+1), A089632(n+1)]` -/
def P8880760657058924766.Spec : Prop :=
  ∀ n, (P8880760657058924766.a n : ℤ) = A143202 (n + 1)

end A143202

/-! ## A143202.P15326616082818604194

`∩[A215951(n+1), A256617(n+1)]`
-/

namespace A143202.P15326616082818604194
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215951 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256617 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A143202.P15326616082818604194

namespace A143202

/-- `∩[A215951(n+1), A256617(n+1)]` -/
def P15326616082818604194.Spec : Prop :=
  ∀ n, (P15326616082818604194.a n : ℤ) = A143202 (n + 1)

end A143202

/-! ## A143202.P8984995725587357203

`∩[A079877(n+1), A256617(n+1)]`
-/

namespace A143202.P8984995725587357203
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079877 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256617 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A143202.P8984995725587357203

namespace A143202

/-- `∩[A079877(n+1), A256617(n+1)]` -/
def P8984995725587357203.Spec : Prop :=
  ∀ n, (P8984995725587357203.a n : ℤ) = A143202 (n + 1)

end A143202

/-! ## A143202.P13750171232616812256

`∩[A062373(n+1), A089632(n+1)]`
-/

namespace A143202.P13750171232616812256
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062373 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089632 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A143202.P13750171232616812256

namespace A143202

/-- `∩[A062373(n+1), A089632(n+1)]` -/
def P13750171232616812256.Spec : Prop :=
  ∀ n, (P13750171232616812256.a n : ℤ) = A143202 (n + 1)

end A143202

/-! ## A143202.P4998141769074976182

`∩[A079877(n+1), A329229(n+1)]`
-/

namespace A143202.P4998141769074976182
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079877 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329229 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A143202.P4998141769074976182

namespace A143202

/-- `∩[A079877(n+1), A329229(n+1)]` -/
def P4998141769074976182.Spec : Prop :=
  ∀ n, (P4998141769074976182.a n : ℤ) = A143202 (n + 1)

end A143202

/-! ## A143202.P2720042334268206094

`∩[A089632(n+1), A329229(n+1)]`
-/

namespace A143202.P2720042334268206094
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089632 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329229 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A143202.P2720042334268206094

namespace A143202

/-- `∩[A089632(n+1), A329229(n+1)]` -/
def P2720042334268206094.Spec : Prop :=
  ∀ n, (P2720042334268206094.a n : ℤ) = A143202 (n + 1)

end A143202

/-! ## A143202.P3393073673591775973

`∩[A215951(n+1), A329229(n+1)]`
-/

namespace A143202.P3393073673591775973
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215951 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329229 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A143202.P3393073673591775973

namespace A143202

/-- `∩[A215951(n+1), A329229(n+1)]` -/
def P3393073673591775973.Spec : Prop :=
  ∀ n, (P3393073673591775973.a n : ℤ) = A143202 (n + 1)

end A143202

/-! ## A143202.P15424875511862592018

`filter[A079877(n+1), A353676(#)]`
-/

namespace A143202.P15424875511862592018
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079877 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353676 (f1 j).toNat = 1) n)

end

end A143202.P15424875511862592018

namespace A143202

/-- `filter[A079877(n+1), A353676(#)]` -/
def P15424875511862592018.Spec : Prop :=
  ∀ n, P15424875511862592018.a n = A143202 (n + 1)

end A143202

/-! ## A143202.P8646693090505952595

`filter[A079877(n+1), A353677(#)]`
-/

namespace A143202.P8646693090505952595
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079877 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353677 (f1 j).toNat = 1) n)

end

end A143202.P8646693090505952595

namespace A143202

/-- `filter[A079877(n+1), A353677(#)]` -/
def P8646693090505952595.Spec : Prop :=
  ∀ n, P8646693090505952595.a n = A143202 (n + 1)

end A143202

/-!
# A143203: Numbers having exactly two distinct prime factors p, q with q = p+4.

The programs for A143203, there is no canonical definition to state claims against.
-/

/-! ## A143203.P3003875558759513449

`filter[A195106(n+1), A374134(#)]`
-/

namespace A143203.P3003875558759513449
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195106 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A374134 (f1 j).toNat = 1) n)

end

end A143203.P3003875558759513449

/-! ## A143203.P14594260210167239509

`filter[A195106(n+1), A011558(#)]`
-/

namespace A143203.P14594260210167239509
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195106 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A011558 (f1 j).toNat = 1) n)

end

end A143203.P14594260210167239509

/-! ## A143203.P5212558712665203759

`filter[A195106(n+1), A353675(#)]`
-/

namespace A143203.P5212558712665203759
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195106 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353675 (f1 j).toNat = 1) n)

end

end A143203.P5212558712665203759

/-! ## A143203.P18048420080980131370

`filter[A195106(n+1), A353676(#)]`
-/

namespace A143203.P18048420080980131370
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195106 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353676 (f1 j).toNat = 1) n)

end

end A143203.P18048420080980131370

/-!
# A143204: Union of A143207 and A033847.

The programs for A143204, there is no canonical definition to state claims against.
-/

/-! ## A143204.P6718061015980891294

`∪[A033847(n+1), A143207(n+1)]`
-/

namespace A143204.P6718061015980891294
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033847 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143207 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A143204.P6718061015980891294

/-! ## A143204.P1603195543414571909

`∪[14*A003591(n+1), A143207(n+1)]`
-/

namespace A143204.P1603195543414571909
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  14 * A003591 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143207 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A143204.P1603195543414571909

/-! ## A143204.P6667099923172020208

`∪[30*A051037(n+1), A033847(n+1)]`
-/

namespace A143204.P6667099923172020208
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  30 * A051037 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033847 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A143204.P6667099923172020208

/-! ## A143204.P8581678728593683871

`∪[14*A003591(n+1), 30*A051037(n+1)]`
-/

namespace A143204.P8581678728593683871
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  14 * A003591 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  30 * A051037 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A143204.P8581678728593683871

/-! ## A143204.P10616490877987956702

`2*(eq[7, A318884(n+1)]+1)`
-/

namespace A143204.P10616490877987956702
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318884 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A143204.P10616490877987956702

/-! ## A143204.P18391722442480353552

`∩[A174164(n+1), A195238(n+1)]`
-/

namespace A143204.P18391722442480353552
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174164 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195238 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A143204.P18391722442480353552

/-! ## A143204.P10944409093357738499

`∩[2*n, A085900(n)]`
-/

namespace A143204.P10944409093357738499
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085900 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A143204.P10944409093357738499

/-! ## A143204.P399771250338424893

`record[A038608(A085900(n))]`
-/

namespace A143204.P399771250338424893
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038608 (A085900 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A143204.P399771250338424893

/-! ## A143204.P16410301979557950250

`filter[A085900(n), A059841(#)]`
-/

namespace A143204.P16410301979557950250
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085900 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A059841 (f1 j).toNat = 1) n)

end

end A143204.P16410301979557950250

/-! ## A143204.P4093821602880764560

`filter[A085900(n), A135528(#)]`
-/

namespace A143204.P4093821602880764560
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085900 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A135528 (f1 j).toNat = 1) n)

end

end A143204.P4093821602880764560

/-!
# A143205: Numbers having exactly two distinct prime factors p, q with q = p+6.

The programs for A143205, there is no canonical definition to state claims against.
-/

/-! ## A143205.P8141925538139785017

`filter[A195118(n+1), A353675(#)]`
-/

namespace A143205.P8141925538139785017
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195118 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353675 (f1 j).toNat = 1) n)

end

end A143205.P8141925538139785017

/-! ## A143205.P12493580489610428890

`filter[A195118(n+1), A353676(#)]`
-/

namespace A143205.P12493580489610428890
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195118 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353676 (f1 j).toNat = 1) n)

end

end A143205.P12493580489610428890

/-! ## A143205.P10877389262740717772

`∩[A078613(n+1), A195118(n+1)]`
-/

namespace A143205.P10877389262740717772
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078613 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195118 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A143205.P10877389262740717772

/-! ## A143205.P15773826746270591323

`∩[A070005(n+1), A195118(n+1)]`
-/

namespace A143205.P15773826746270591323
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070005 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195118 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A143205.P15773826746270591323

/-!
# A143206: Product of the n-th cousin prime pair.

The programs for A143206, there is no canonical definition to state claims against.
-/

/-! ## A143206.P4175350064258784163

`A087679(n+1)²-4`
-/

namespace A143206.P4175350064258784163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087679 (n + 1) ^ 2 - 4

end

end A143206.P4175350064258784163

/-! ## A143206.P656731065051984422

`2*A163634(n+1)-1`
-/

namespace A143206.P656731065051984422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A163634 (n + 1) - 1

end

end A143206.P656731065051984422

/-! ## A143206.P1665330352039629985

`(A015913(n+1)+2)²-4`
-/

namespace A143206.P1665330352039629985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A015913 (n + 1) + 2) ^ 2 - 4

end

end A143206.P1665330352039629985

/-! ## A143206.P14481564490099148094

`(A046132(n+1)-2)²-4`
-/

namespace A143206.P14481564490099148094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A046132 (n + 1) - 2) ^ 2 - 4

end

end A143206.P14481564490099148094

/-! ## A143206.P7718656799124680872

`(2*A088762(n+1)+1)²-4`
-/

namespace A143206.P7718656799124680872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * A088762 (n + 1) + 1) ^ 2 - 4

end

end A143206.P7718656799124680872

/-! ## A143206.P4656985911779745379

`A015913(n+1)*A046132(n+1)`
-/

namespace A143206.P4656985911779745379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015913 (n + 1) * A046132 (n + 1)

end

end A143206.P4656985911779745379

/-! ## A143206.P14431596465892176151

`(A087679(n+1)-2)*A046132(n+1)`
-/

namespace A143206.P14431596465892176151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A087679 (n + 1) - 2) * A046132 (n + 1)

end

end A143206.P14431596465892176151

/-! ## A143206.P7074608258647464568

`(A072541(2*(n+1))-3)²-4`
-/

namespace A143206.P7074608258647464568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A072541 (2 * (n + 1)) - 3) ^ 2 - 4

end

end A143206.P7074608258647464568

/-! ## A143206.P7316641219784665808

`A046132(n+1)*A094343(2*n+1)`
-/

namespace A143206.P7316641219784665808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046132 (n + 1) * A094343 (2 * n + 1)

end

end A143206.P7316641219784665808

/-! ## A143206.P9141337464072740203

`A067830(n+2)*A094343(2*n+1)`
-/

namespace A143206.P9141337464072740203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067830 (n + 2) * A094343 (2 * n + 1)

end

end A143206.P9141337464072740203

/-! ## A143206.P17221561737543088507

`A094343(2*(n+1))*A094343(2*n+1)`
-/

namespace A143206.P17221561737543088507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094343 (2 * (n + 1)) * A094343 (2 * n + 1)

end

end A143206.P17221561737543088507

/-! ## A143206.P11306628446993224516

`(p?[A040976(n+1)-2]+2)²-4`
-/

namespace A143206.P11306628446993224516
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040976 (n + 1) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) + 2) ^ 2 - 4

end

end A143206.P11306628446993224516

/-! ## A143206.P13730710961924954912

`(p?[A006093(n+1)-3]+2)²-4`
-/

namespace A143206.P13730710961924954912
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006093 (n + 1) - 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) + 2) ^ 2 - 4

end

end A143206.P13730710961924954912

/-! ## A143206.P8961829908979707625

`(p?[A008864(n+1)+3]-2)²-4`
-/

namespace A143206.P8961829908979707625
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008864 (n + 1) + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - 2) ^ 2 - 4

end

end A143206.P8961829908979707625

/-! ## A143206.P5309548277978205048

`(p?[A000040(n+2)+4]-2)²-4`
-/

namespace A143206.P5309548277978205048
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 2) + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - 2) ^ 2 - 4

end

end A143206.P5309548277978205048

/-! ## A143206.P15860154530110163747

`(A167607(n+1)-A046132(n+1))*A046132(n+1)`
-/

namespace A143206.P15860154530110163747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A167607 (n + 1) - A046132 (n + 1)) * A046132 (n + 1)

end

end A143206.P15860154530110163747

/-! ## A143206.P10190906269223291919

`A001414(A165986(n+1))²-4`
-/

namespace A143206.P10190906269223291919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001414 (A165986 (n + 1)).toNat ^ 2 - 4

end

end A143206.P10190906269223291919

/-! ## A143206.P12673779424880008588

`∩[A333747(n+1), A245034(n+3)]`
-/

namespace A143206.P12673779424880008588
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333747 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245034 (n + 3)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A143206.P12673779424880008588

/-! ## A143206.P12903546083101974116

`∩[A261078(n+1), A245034(n+3)]`
-/

namespace A143206.P12903546083101974116
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261078 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245034 (n + 3)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A143206.P12903546083101974116

/-! ## A143206.P8968905526968123519

`∩[A156759(n+1), A245034(n+3)]`
-/

namespace A143206.P8968905526968123519
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156759 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245034 (n + 3)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A143206.P8968905526968123519

/-!
# A143207: Numbers with distinct prime factors 2, 3, and 5.

The programs for A143207, there is no canonical definition to state claims against.
-/

/-! ## A143207.P2279437796180908546

`30*A051037(n+1)`
-/

namespace A143207.P2279437796180908546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  30 * A051037 (n + 1)

end

end A143207.P2279437796180908546

/-! ## A143207.P387959816954286197

`6*A080193(n+1)`
-/

namespace A143207.P387959816954286197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * A080193 (n + 1)

end

end A143207.P387959816954286197

/-! ## A143207.P1526367214610236175

`lcm(A080193(n+1)+A051037(n+1), A080193(n+1))`
-/

namespace A143207.P1526367214610236175
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A080193 (n + 1) + A051037 (n + 1)) (A080193 (n + 1))

end

end A143207.P1526367214610236175

/-! ## A143207.P347555831762399904

`and(6*A080193(A080513(2*n)), -2)`
-/

namespace A143207.P347555831762399904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (6 * A080193 (A080513 (2 * n)).toNat) (-2)

end

end A143207.P347555831762399904

/-! ## A143207.P1236992761441777350

`∩[A080193(n+1), A085129(n+1)]`
-/

namespace A143207.P1236992761441777350
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080193 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085129 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A143207.P1236992761441777350

/-! ## A143207.P3831807003620524725

`∩[A085129(n+1), A143204(n+1)]`
-/

namespace A143207.P3831807003620524725
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085129 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143204 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A143207.P3831807003620524725

/-! ## A143207.P8615115111974296985

`∩[A085126(n+1), A143204(n+1)]`
-/

namespace A143207.P8615115111974296985
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085126 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143204 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A143207.P8615115111974296985

/-! ## A143207.P2117461338490868075

`∩[2*A143513(n+1), A143204(n+1)]`
-/

namespace A143207.P2117461338490868075
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A143513 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143204 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A143207.P2117461338490868075

/-! ## A143207.P13914312527892090313

`∩[2*A143513(n+1), A365795(n+1)]`
-/

namespace A143207.P13914312527892090313
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A143513 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365795 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A143207.P13914312527892090313

/-! ## A143207.P7361577627310818011

`∩[A143204(n+1), A143513(n+1)]`
-/

namespace A143207.P7361577627310818011
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143204 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143513 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A143207.P7361577627310818011

/-! ## A143207.P18204629896853068797

`∩[A143513(n+1), A365795(n+1)]`
-/

namespace A143207.P18204629896853068797
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143513 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365795 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A143207.P18204629896853068797

/-! ## A143207.P1095403519793776278

`∩[A002473(n+1), A069819(n+1)]`
-/

namespace A143207.P1095403519793776278
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002473 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069819 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A143207.P1095403519793776278

/-! ## A143207.P9519887356375133393

`∩[A051037(n+1), A069819(n+1)]`
-/

namespace A143207.P9519887356375133393
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051037 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069819 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A143207.P9519887356375133393

/-! ## A143207.P11025329396722307394

`∩[A069819(n+1), A085126(n+1)]`
-/

namespace A143207.P11025329396722307394
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069819 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085126 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A143207.P11025329396722307394

/-! ## A143207.P4230832341127061235

`∩[A069819(n+1), A085129(n+1)]`
-/

namespace A143207.P4230832341127061235
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069819 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085129 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A143207.P4230832341127061235

/-! ## A143207.P6062410053186945841

`∩[A069819(n+1), A143513(n+1)]`
-/

namespace A143207.P6062410053186945841
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069819 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143513 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A143207.P6062410053186945841

/-! ## A143207.P16293997736349790821

`A055932(eq[3, A124830(n+1)]+1)`
-/

namespace A143207.P16293997736349790821
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124830 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055932 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A143207.P16293997736349790821

/-! ## A143207.P8501521470376138830

`∩[A055932(n+1), A080193(n+1)]`
-/

namespace A143207.P8501521470376138830
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055932 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080193 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A143207.P8501521470376138830

/-! ## A143207.P17068456713173774116

`∩[2*A068095(n+1), A143204(n+1)]`
-/

namespace A143207.P17068456713173774116
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A068095 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143204 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A143207.P17068456713173774116

/-! ## A143207.P9485087315076582237

`∩[2*A068095(n+1), A365795(n+1)]`
-/

namespace A143207.P9485087315076582237
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A068095 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365795 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A143207.P9485087315076582237

/-!
# A143208: a(1)=2; for n>1, a(n) = (4-9*n+3*n^2)/2.

The programs for A143208, the canonical program `A143208.P8023691845898272452` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A143208 has offset 1).

The definition of A143208 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A143208.P8023691845898272452

`3*a(n-1)-3*a(n-2)+a(n-3)` with `a(0)=2, a(1)=-1, a(2)=2, a(3)=8`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A143208

/-- `3*a(n-1)-3*a(n-2)+a(n-3)` -/
def P8023691845898272452.Spec : Prop :=
  ∀ n, P8023691845898272452.a n = A143208 (n + 1)

theorem P8023691845898272452.correct : P8023691845898272452.Spec := by
  intro n
  simp only [A143208, Nat.add_sub_cancel]

end A143208

/-! ## A143208.P10699946083673962280

`∑[a(n-1)+3]` with `a(0)=2, a(1)=-3, a(2)=3`
-/

namespace A143208.P10699946083673962280
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [2, -3, 3] fun n f1 =>
  f1 (n - 1) + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A143208.P10699946083673962280

namespace A143208

/-- `∑[a(n-1)+3]` -/
def P10699946083673962280.Spec : Prop :=
  ∀ n, P10699946083673962280.a n = A143208 (n + 1)

end A143208

/-! ## A143208.P3423714390598206478

`3*C(n, 2%(n+2))-1`
-/

namespace A143208.P3423714390598206478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 * Nat.choose n (2 % (n + 2)) : ℤ) - 1

end

end A143208.P3423714390598206478

namespace A143208

/-- `3*C(n, 2%(n+2))-1` -/
def P3423714390598206478.Spec : Prop :=
  ∀ n, P3423714390598206478.a n = A143208 (n + 1)

end A143208

/-! ## A143208.P18060471628531384945

`3*C(abs(1-n)+1, 2)-1`
-/

namespace A143208.P18060471628531384945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 * Nat.choose (|1 - (n : ℤ)| + 1).toNat 2 : ℤ) - 1

end

end A143208.P18060471628531384945

namespace A143208

/-- `3*C(abs(1-n)+1, 2)-1` -/
def P18060471628531384945.Spec : Prop :=
  ∀ n, P18060471628531384945.a n = A143208 (n + 1)

end A143208

/-! ## A143208.P17155772283790918611

`2-∑[a(n-1)-3]` with `a(0)=0, a(1)=3, a(2)=-3`
-/

namespace A143208.P17155772283790918611
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 3, -3] fun n f1 =>
  f1 (n - 1) - 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A143208.P17155772283790918611

namespace A143208

/-- `2-∑[a(n-1)-3]` -/
def P17155772283790918611.Spec : Prop :=
  ∀ n, P17155772283790918611.a n = A143208 (n + 1)

end A143208

/-! ## A143208.P5087382998107127662

`a(n-1)+3*(n-1)` with `a(0)=2, a(1)=-1`
-/

namespace A143208.P5087382998107127662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, -1] fun n a =>
  a (n - 1) + 3 * ((n : ℤ) - 1)

end

end A143208.P5087382998107127662

namespace A143208

/-- `a(n-1)+3*(n-1)` -/
def P5087382998107127662.Spec : Prop :=
  ∀ n, P5087382998107127662.a n = A143208 (n + 1)

end A143208

/-! ## A143208.P12339352520334991286

`3*n-(3-a(n-1))` with `a(0)=2, a(1)=-1`
-/

namespace A143208.P12339352520334991286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, -1] fun n a =>
  (3 * n : ℤ) - (3 - a (n - 1))

end

end A143208.P12339352520334991286

namespace A143208

/-- `3*n-(3-a(n-1))` -/
def P12339352520334991286.Spec : Prop :=
  ∀ n, P12339352520334991286.a n = A143208 (n + 1)

end A143208

/-! ## A143208.P3976364419906922127

`a(n-1)+a(n-1)+3-a(n-2)` with `a(0)=2, a(1)=-1, a(2)=2`
-/

namespace A143208.P3976364419906922127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, -1, 2] fun n a =>
  a (n - 1) + (a (n - 1) + 3) - a (n - 2)

end

end A143208.P3976364419906922127

namespace A143208

/-- `a(n-1)+a(n-1)+3-a(n-2)` -/
def P3976364419906922127.Spec : Prop :=
  ∀ n, P3976364419906922127.a n = A143208 (n + 1)

end A143208

/-! ## A143208.P2999062506804285079

`A045943(abs(1-n))-1`
-/

namespace A143208.P2999062506804285079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045943 |1 - (n : ℤ)|.toNat - 1

end

end A143208.P2999062506804285079

namespace A143208

/-- `A045943(abs(1-n))-1` -/
def P2999062506804285079.Spec : Prop :=
  ∀ n, P2999062506804285079.a n = A143208 (n + 1)

end A143208

/-! ## A143208.P5874859301376376082

`3*A000217(abs(1-n))-1`
-/

namespace A143208.P5874859301376376082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A000217 |1 - (n : ℤ)|.toNat - 1

end

end A143208.P5874859301376376082

namespace A143208

/-- `3*A000217(abs(1-n))-1` -/
def P5874859301376376082.Spec : Prop :=
  ∀ n, P5874859301376376082.a n = A143208 (n + 1)

end A143208

/-! ## A143208.P1012504400018276473

`abs(∑[3*n-1]-A028310(n))-n`
-/

namespace A143208.P1012504400018276473
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 * n : ℤ) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∑ j ∈ Finset.range (n + 1), f1 j - A028310 n| - (n : ℤ)

end

end A143208.P1012504400018276473

namespace A143208

/-- `abs(∑[3*n-1]-A028310(n))-n` -/
def P1012504400018276473.Spec : Prop :=
  ∀ n, P1012504400018276473.a n = A143208 (n + 1)

end A143208

/-! ## A143208.P8325685384627588811

`A081359(n+1)-A040012(n)`
-/

namespace A143208.P8325685384627588811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081359 (n + 1) - A040012 n

end

end A143208.P8325685384627588811

namespace A143208

/-- `A081359(n+1)-A040012(n)` -/
def P8325685384627588811.Spec : Prop :=
  ∀ n, P8325685384627588811.a n = A143208 (n + 1)

end A143208

/-! ## A143208.P4786409832059455527

`2*A028310(n)²-A253145(n)`
-/

namespace A143208.P4786409832059455527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A028310 n ^ 2 - A253145 n

end

end A143208.P4786409832059455527

namespace A143208

/-- `2*A028310(n)²-A253145(n)` -/
def P4786409832059455527.Spec : Prop :=
  ∀ n, P4786409832059455527.a n = A143208 (n + 1)

end A143208

/-! ## A143208.P14004240211920152042

`A059193(n+1)-A166137(n+1)`
-/

namespace A143208.P14004240211920152042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059193 (n + 1) - A166137 (n + 1)

end

end A143208.P14004240211920152042

namespace A143208

/-- `A059193(n+1)-A166137(n+1)` -/
def P14004240211920152042.Spec : Prop :=
  ∀ n, P14004240211920152042.a n = A143208 (n + 1)

end A143208

/-! ## A143208.P2875840370652228514

`3*(∑[n]-n-A001221(A303809(n+1))+1)-1`
-/

namespace A143208.P2875840370652228514
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - (n : ℤ) - A001221 (A303809 (n + 1)).toNat + 1) - 1

end

end A143208.P2875840370652228514

namespace A143208

/-- `3*(∑[n]-n-A001221(A303809(n+1))+1)-1` -/
def P2875840370652228514.Spec : Prop :=
  ∀ n, P2875840370652228514.a n = A143208 (n + 1)

end A143208

/-! ## A143208.P11525127399017308560

`A175631(n+2)+n*(n-2)`
-/

namespace A143208.P11525127399017308560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175631 (n + 2) + (n : ℤ) * ((n : ℤ) - 2)

end

end A143208.P11525127399017308560

namespace A143208

/-- `A175631(n+2)+n*(n-2)` -/
def P11525127399017308560.Spec : Prop :=
  ∀ n, P11525127399017308560.a n = A143208 (n + 1)

end A143208

/-! ## A143208.P11969799498405750507

`A166136(2*n+1)-A183897(n+2)`
-/

namespace A143208.P11969799498405750507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166136 (2 * n + 1) - A183897 (n + 2)

end

end A143208.P11969799498405750507

namespace A143208

/-- `A166136(2*n+1)-A183897(n+2)` -/
def P11969799498405750507.Spec : Prop :=
  ∀ n, P11969799498405750507.a n = A143208 (n + 1)

end A143208

/-! ## A143208.P13635872967734750209

`A055998(A004277(n))-A302537(n)`
-/

namespace A143208.P13635872967734750209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055998 (A004277 n).toNat - A302537 n

end

end A143208.P13635872967734750209

namespace A143208

/-- `A055998(A004277(n))-A302537(n)` -/
def P13635872967734750209.Spec : Prop :=
  ∀ n, P13635872967734750209.a n = A143208 (n + 1)

end A143208

/-! ## A143208.P3084459114288585759

`A095660(A055998(n))-(n+1)`
-/

namespace A143208.P3084459114288585759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095660 (A055998 n).toNat - (n + 1 : ℤ)

end

end A143208.P3084459114288585759

namespace A143208

/-- `A095660(A055998(n))-(n+1)` -/
def P3084459114288585759.Spec : Prop :=
  ∀ n, P3084459114288585759.a n = A143208 (n + 1)

end A143208

/-! ## A143208.P6286392706880010191

`A095660(A165157(2*n))-(n+1)`
-/

namespace A143208.P6286392706880010191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095660 (A165157 (2 * n)).toNat - (n + 1 : ℤ)

end

end A143208.P6286392706880010191

namespace A143208

/-- `A095660(A165157(2*n))-(n+1)` -/
def P6286392706880010191.Spec : Prop :=
  ∀ n, P6286392706880010191.a n = A143208 (n + 1)

end A143208

/-!
# A143209: A "completed" set of cyclotomic polynomial with coefficients that are a triangular sequence: ( filled out with powers of (x+1)^m) p(x,n)=If[PrimeQ[n], Cyclotomic[n, x]*(x + 1), Cyclotomic[n, x]*(x + 1)^(n + 1 - Length[CoefficientList[Cyclotomic[n, x], x]])];.

The programs for A143209, there is no canonical definition to state claims against.
-/

/-! ## A143209.P9853131441121725361

`or(A159075(n), A332334(A001263(n+1)))`
-/

namespace A143209.P9853131441121725361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A159075 n) (A332334 (A001263 (n + 1)).toNat)

end

end A143209.P9853131441121725361

/-! ## A143209.P5667819859319501922

`or(A240348(n), A332334(A001263(n+1)))`
-/

namespace A143209.P5667819859319501922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A240348 n) (A332334 (A001263 (n + 1)).toNat)

end

end A143209.P5667819859319501922

/-! ## A143209.P13332959328490093207

`A332334(A001263(n+1))-A000038(A004442(n))`
-/

namespace A143209.P13332959328490093207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332334 (A001263 (n + 1)).toNat - A000038 (A004442 n).toNat

end

end A143209.P13332959328490093207

/-! ## A143209.P16835050199154982269

`or(-char[1], A020639(A078536(n)))`
-/

namespace A143209.P16835050199154982269
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (-((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)) (A020639 (A078536 n).toNat)

end

end A143209.P16835050199154982269

/-! ## A143209.P4505184272958666049

`or(A020639(A078536(n)), A159075(n))`
-/

namespace A143209.P4505184272958666049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A020639 (A078536 n).toNat) (A159075 n)

end

end A143209.P4505184272958666049

/-!
# A143210: Triangle read by rows: Gray code of Eulerian(n,m), 1<=m<=n.

The programs for A143210, there is no canonical definition to state claims against.
-/

/-! ## A143210.P2684646548106969753

`A003188(A008292(n+1)^A098744(n))`
-/

namespace A143210.P2684646548106969753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003188 (SequenceMachineLib.roundAway ((A008292 (n + 1) : ℚ) ^ (A098744 n : ℤ))).toNat

end

end A143210.P2684646548106969753

/-! ## A143210.P12876705245261154117

`A003188(or(A008292(n+1), A111332(n)))`
-/

namespace A143210.P12876705245261154117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003188 (Int.lor (A008292 (n + 1)) (A111332 n)).toNat

end

end A143210.P12876705245261154117

/-! ## A143210.P12354249966208358374

`A003188(ceil(A176200(n)/2)^A098744(n))`
-/

namespace A143210.P12354249966208358374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003188 (SequenceMachineLib.roundAway ((⌈(A176200 n : ℚ) / 2⌉ : ℚ) ^ (A098744 n : ℤ))).toNat

end

end A143210.P12354249966208358374

/-! ## A143210.P14467617582908297261

`A003188(A008292(n+1)^A117358(n+1))`
-/

namespace A143210.P14467617582908297261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003188 (SequenceMachineLib.roundAway ((A008292 (n + 1) : ℚ) ^ (A117358 (n + 1) : ℤ))).toNat

end

end A143210.P14467617582908297261

/-! ## A143210.P7828769512891432331

`A003188(A008292(n+1)^A345999(n+1))`
-/

namespace A143210.P7828769512891432331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003188 (SequenceMachineLib.roundAway ((A008292 (n + 1) : ℚ) ^ (A345999 (n + 1) : ℤ))).toNat

end

end A143210.P7828769512891432331

/-!
# A143211: Triangle read by rows, T(n,k) = Fibonacci(n)*Fibonacci(k).

The programs for A143211, the canonical program `A143211.P2366822607170228707` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A143211 has offset 1).

The definition of A143211 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A143211.P2366822607170228707

`A104763(n+1)*A131410(n+1)`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A143211

/-- `A104763(n+1)*A131410(n+1)` -/
def P2366822607170228707.Spec : Prop :=
  ∀ n, P2366822607170228707.a n = A143211 (n + 1)

theorem P2366822607170228707.correct : P2366822607170228707.Spec := by
  intro n
  simp only [A143211, Nat.add_sub_cancel]

end A143211

/-! ## A143211.P3908207065712705055

`A016095(A057944(n))*A104763(n+1)`
-/

namespace A143211.P3908207065712705055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016095 (A057944 n).toNat * A104763 (n + 1)

end

end A143211.P3908207065712705055

namespace A143211

/-- `A016095(A057944(n))*A104763(n+1)` -/
def P3908207065712705055.Spec : Prop :=
  ∀ n, P3908207065712705055.a n = A143211 (n + 1)

end A143211

/-! ## A143211.P3460612212061797585

`A000045(A002024(n+1))*A104763(n+1)`
-/

namespace A143211.P3460612212061797585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A002024 (n + 1)).toNat * A104763 (n + 1)

end

end A143211.P3460612212061797585

namespace A143211

/-- `A000045(A002024(n+1))*A104763(n+1)` -/
def P3460612212061797585.Spec : Prop :=
  ∀ n, P3460612212061797585.a n = A143211 (n + 1)

end A143211

/-! ## A143211.P9164619068443373806

`A104763(n+1)*A212804(A003057(n+2))`
-/

namespace A143211.P9164619068443373806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104763 (n + 1) * A212804 (A003057 (n + 2)).toNat

end

end A143211.P9164619068443373806

namespace A143211

/-- `A104763(n+1)*A212804(A003057(n+2))` -/
def P9164619068443373806.Spec : Prop :=
  ∀ n, P9164619068443373806.a n = A143211 (n + 1)

end A143211

/-! ## A143211.P4557565679488407720

`A000045(A002024(n+1))*A000045(A002260(n+1))`
-/

namespace A143211.P4557565679488407720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A002024 (n + 1)).toNat * A000045 (A002260 (n + 1)).toNat

end

end A143211.P4557565679488407720

namespace A143211

/-- `A000045(A002024(n+1))*A000045(A002260(n+1))` -/
def P4557565679488407720.Spec : Prop :=
  ∀ n, P4557565679488407720.a n = A143211 (n + 1)

end A143211

/-! ## A143211.P10206659661649243514

`A058071(A245300(n))`
-/

namespace A143211.P10206659661649243514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058071 (A245300 n).toNat

end

end A143211.P10206659661649243514

namespace A143211

/-- `A058071(A245300(n))` -/
def P10206659661649243514.Spec : Prop :=
  ∀ n, P10206659661649243514.a n = A143211 (n + 1)

end A143211

/-! ## A143211.P11592840142814169624

`A117965(n+1)/A135278(n)`
-/

namespace A143211.P11592840142814169624
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A117965 (n + 1) : ℚ) / (A135278 n : ℚ)

end

end A143211.P11592840142814169624

namespace A143211

/-- `A117965(n+1)/A135278(n)` -/
def P11592840142814169624.Spec : Prop :=
  ∀ n, P11592840142814169624.a n = (A143211 (n + 1) : ℚ)

end A143211

/-! ## A143211.P13980258981381802280

`A117965(n+1)/A074909(n+1)`
-/

namespace A143211.P13980258981381802280
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A117965 (n + 1) : ℚ) / (A074909 (n + 1) : ℚ)

end

end A143211.P13980258981381802280

namespace A143211

/-- `A117965(n+1)/A074909(n+1)` -/
def P13980258981381802280.Spec : Prop :=
  ∀ n, P13980258981381802280.a n = (A143211 (n + 1) : ℚ)

end A143211

/-!
# A143212: a(n) = Fibonacci(n) * (Fibonacci(n+2) - 1).

The programs for A143212, the canonical program `A143212.P10230428343141082012` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A143212 has offset 1).

The definition of A143212 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A143212.P10230428343141082012

`A000045(n+1)*A000071(n+3)`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A143212

/-- `A000045(n+1)*A000071(n+3)` -/
def P10230428343141082012.Spec : Prop :=
  ∀ n, P10230428343141082012.a n = A143212 (n + 1)

theorem P10230428343141082012.correct : P10230428343141082012.Spec := by
  intro n
  simp only [A143212, Nat.add_sub_cancel]

end A143212

/-! ## A143212.P6061942061414542053

`ogf((1-x+x^2)/(1-3x-x^2+5x^3+x^4-x^5))`
-/

namespace A143212.P6061942061414542053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -1, 1] [1, -3, -1, 5, 1, -1] n

end

end A143212.P6061942061414542053

namespace A143212

/-- `ogf((1-x+x^2)/(1-3x-x^2+5x^3+x^4-x^5))` -/
def P6061942061414542053.Spec : Prop :=
  ∀ n, P6061942061414542053.a n = A143212 (n + 1)

end A143212

/-! ## A143212.P6794494726872551531

`A217694(2*n)`
-/

namespace A143212.P6794494726872551531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217694 (2 * n)

end

end A143212.P6794494726872551531

namespace A143212

/-- `A217694(2*n)` -/
def P6794494726872551531.Spec : Prop :=
  ∀ n, P6794494726872551531.a n = A143212 (n + 1)

end A143212

/-! ## A143212.P5596809947420375511

`A096140(n+1)-a(n-1)` with `a(0)=1`
-/

namespace A143212.P5596809947420375511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A096140 (n + 1) - a (n - 1)

end

end A143212.P5596809947420375511

namespace A143212

/-- `A096140(n+1)-a(n-1)` -/
def P5596809947420375511.Spec : Prop :=
  ∀ n, P5596809947420375511.a n = A143212 (n + 1)

end A143212

/-! ## A143212.P3778308778941417319

`A129361(2*n)-a(n-1)` with `a(0)=1`
-/

namespace A143212.P3778308778941417319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A129361 (2 * n) - a (n - 1)

end

end A143212.P3778308778941417319

namespace A143212

/-- `A129361(2*n)-a(n-1)` -/
def P3778308778941417319.Spec : Prop :=
  ∀ n, P3778308778941417319.a n = A143212 (n + 1)

end A143212

/-! ## A143212.P8641616199997049414

`A236428(n)+A096140(n)`
-/

namespace A143212.P8641616199997049414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236428 n + A096140 n

end

end A143212.P8641616199997049414

namespace A143212

/-- `A236428(n)+A096140(n)` -/
def P8641616199997049414.Spec : Prop :=
  ∀ n, P8641616199997049414.a n = A143212 (n + 1)

end A143212

/-! ## A143212.P5415772642495216070

`A190173(n+1)+A052952(n)`
-/

namespace A143212.P5415772642495216070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190173 (n + 1) + A052952 n

end

end A143212.P5415772642495216070

namespace A143212

/-- `A190173(n+1)+A052952(n)` -/
def P5415772642495216070.Spec : Prop :=
  ∀ n, P5415772642495216070.a n = A143212 (n + 1)

end A143212

/-! ## A143212.P684001030102996561

`A166516(n+2)-A127968(n)`
-/

namespace A143212.P684001030102996561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166516 (n + 2) - A127968 n

end

end A143212.P684001030102996561

namespace A143212

/-- `A166516(n+2)-A127968(n)` -/
def P684001030102996561.Spec : Prop :=
  ∀ n, P684001030102996561.a n = A143212 (n + 1)

end A143212

/-! ## A143212.P2024867763618136195

`A000045(n+1)*Δ[A001924(n)]`
-/

namespace A143212.P2024867763618136195
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001924 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (n + 1) * (f1 (n + 1) - f1 n)

end

end A143212.P2024867763618136195

namespace A143212

/-- `A000045(n+1)*Δ[A001924(n)]` -/
def P2024867763618136195.Spec : Prop :=
  ∀ n, P2024867763618136195.a n = A143212 (n + 1)

end A143212

/-! ## A143212.P8286507071208518163

`∑[A212804(n)]*A000071(n+3)`
-/

namespace A143212.P8286507071208518163
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212804 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A000071 (n + 3)

end

end A143212.P8286507071208518163

namespace A143212

/-- `∑[A212804(n)]*A000071(n+3)` -/
def P8286507071208518163.Spec : Prop :=
  ∀ n, P8286507071208518163.a n = A143212 (n + 1)

end A143212

/-! ## A143212.P7014819165536247831

`A191797(n+1)+A122931(n+1)`
-/

namespace A143212.P7014819165536247831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191797 (n + 1) + A122931 (n + 1)

end

end A143212.P7014819165536247831

namespace A143212

/-- `A191797(n+1)+A122931(n+1)` -/
def P7014819165536247831.Spec : Prop :=
  ∀ n, P7014819165536247831.a n = A143212 (n + 1)

end A143212

/-! ## A143212.P13614392332125847061

`A059929(n+1)-A000045(n+1)`
-/

namespace A143212.P13614392332125847061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059929 (n + 1) - A000045 (n + 1)

end

end A143212.P13614392332125847061

namespace A143212

/-- `A059929(n+1)-A000045(n+1)` -/
def P13614392332125847061.Spec : Prop :=
  ∀ n, P13614392332125847061.a n = A143212 (n + 1)

end A143212

/-! ## A143212.P6041710008328360661

`A269803(n+1)+A121646(n+2)`
-/

namespace A143212.P6041710008328360661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269803 (n + 1) + A121646 (n + 2)

end

end A143212.P6041710008328360661

namespace A143212

/-- `A269803(n+1)+A121646(n+2)` -/
def P6041710008328360661.Spec : Prop :=
  ∀ n, P6041710008328360661.a n = A143212 (n + 1)

end A143212

/-! ## A143212.P16334839295681923656

`(A001911(n)+1)*A000045(n+1)`
-/

namespace A143212.P16334839295681923656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A001911 n + 1) * A000045 (n + 1)

end

end A143212.P16334839295681923656

namespace A143212

/-- `(A001911(n)+1)*A000045(n+1)` -/
def P16334839295681923656.Spec : Prop :=
  ∀ n, P16334839295681923656.a n = A143212 (n + 1)

end A143212

/-! ## A143212.P1450119318736302714

`A000045(n+1)*A226538(2*n)`
-/

namespace A143212.P1450119318736302714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (n + 1) * A226538 (2 * n)

end

end A143212.P1450119318736302714

namespace A143212

/-- `A000045(n+1)*A226538(2*n)` -/
def P1450119318736302714.Spec : Prop :=
  ∀ n, P1450119318736302714.a n = A143212 (n + 1)

end A143212

/-! ## A143212.P14495547709719835656

`∑[A260259(n+1)]-A000045(n+1)`
-/

namespace A143212.P14495547709719835656
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260259 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A000045 (n + 1)

end

end A143212.P14495547709719835656

namespace A143212

/-- `∑[A260259(n+1)]-A000045(n+1)` -/
def P14495547709719835656.Spec : Prop :=
  ∀ n, P14495547709719835656.a n = A143212 (n + 1)

end A143212

/-! ## A143212.P15992980468661237141

`A000045(n+1)*Δ[A000126(n+1)]`
-/

namespace A143212.P15992980468661237141
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000126 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (n + 1) * (f1 (n + 1) - f1 n)

end

end A143212.P15992980468661237141

namespace A143212

/-- `A000045(n+1)*Δ[A000126(n+1)]` -/
def P15992980468661237141.Spec : Prop :=
  ∀ n, P15992980468661237141.a n = A143212 (n + 1)

end A143212

/-! ## A143212.P12389074602270952612

`Δ[A059840(n+2)]-A000045(n+1)`
-/

namespace A143212.P12389074602270952612
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059840 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A000045 (n + 1)

end

end A143212.P12389074602270952612

namespace A143212

/-- `Δ[A059840(n+2)]-A000045(n+1)` -/
def P12389074602270952612.Spec : Prop :=
  ∀ n, P12389074602270952612.a n = A143212 (n + 1)

end A143212

/-! ## A143212.P11844741612148788070

`∑[A324969(n+2)]*A324969(n+2)`
-/

namespace A143212.P11844741612148788070
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324969 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A324969 (n + 2)

end

end A143212.P11844741612148788070

namespace A143212

/-- `∑[A324969(n+2)]*A324969(n+2)` -/
def P11844741612148788070.Spec : Prop :=
  ∀ n, P11844741612148788070.a n = A143212 (n + 1)

end A143212

/-! ## A143212.P10382947970034318782

`∑[A079977(2*n)]*A079977(2*n)`
-/

namespace A143212.P10382947970034318782
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079977 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A079977 (2 * n)

end

end A143212.P10382947970034318782

namespace A143212

/-- `∑[A079977(2*n)]*A079977(2*n)` -/
def P10382947970034318782.Spec : Prop :=
  ∀ n, P10382947970034318782.a n = A143212 (n + 1)

end A143212

/-!
# A143213: Triangle T(n,m) read by rows: Gray code of A060187(n, k) (decimal representation), 1 <= k <= n, n >= 1.

The programs for A143213, there is no canonical definition to state claims against.
-/

/-! ## A143213.P15303715484564995666

`A003188(A060187(n+1)^A278657(n))`
-/

namespace A143213.P15303715484564995666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003188 (SequenceMachineLib.roundAway ((A060187 (n + 1) : ℚ) ^ (A278657 n : ℤ))).toNat

end

end A143213.P15303715484564995666

/-! ## A143213.P10962495322198348958

`A003188(C(A060187(n+1), A278657(n)))`
-/

namespace A143213.P10962495322198348958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003188 (Nat.choose (A060187 (n + 1)).toNat (A278657 n).toNat)

end

end A143213.P10962495322198348958

/-! ## A143213.P11268013821732645927

`A003188(A278657(n)²*A060187(n+1))`
-/

namespace A143213.P11268013821732645927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003188 (A278657 n ^ 2 * A060187 (n + 1)).toNat

end

end A143213.P11268013821732645927

/-! ## A143213.P8856893420018133753

`A003188(A181502(∑[n])+A060187(n+1))`
-/

namespace A143213.P8856893420018133753
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003188 (A181502 (∑ j ∈ Finset.range (n + 1), f1 j) + A060187 (n + 1)).toNat

end

end A143213.P8856893420018133753

/-! ## A143213.P283159469835211274

`A003188(A060187(n+1)%A334078(3*n+5))`
-/

namespace A143213.P283159469835211274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003188 (Int.tmod (A060187 (n + 1)) (A334078 (3 * n + 5))).toNat

end

end A143213.P283159469835211274

/-!
# A143214: Gray code applied to Pascal's triangle: T(n,k) = GrayCode(binomial(n, k)).

The programs for A143214, there is no canonical definition to state claims against.
-/

/-! ## A143214.P16353946252150153160

`A003188(A007318(n)%A231463(n+2))`
-/

namespace A143214.P16353946252150153160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003188 (Int.tmod (A007318 n) (A231463 (n + 2))).toNat

end

end A143214.P16353946252150153160

/-! ## A143214.P418637739097343863

`A003188(A007318(n))%A195871(n+5)`
-/

namespace A143214.P418637739097343863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A003188 (A007318 n).toNat) (A195871 (n + 5))

end

end A143214.P418637739097343863

/-! ## A143214.P13015569429021455766

`A003188(A007318(n)^A133707(n+1))`
-/

namespace A143214.P13015569429021455766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003188 (SequenceMachineLib.roundAway ((A007318 n : ℚ) ^ (A133707 (n + 1) : ℤ))).toNat

end

end A143214.P13015569429021455766

/-! ## A143214.P13877834963125794551

`A003188(gcd(A007318(n), A339552(2*(n+1))))`
-/

namespace A143214.P13877834963125794551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003188 (Int.gcd (A007318 n) (A339552 (2 * (n + 1))))

end

end A143214.P13877834963125794551

/-! ## A143214.P17130607308319919330

`A003188(A007318(n)^A043288(3*n+2))`
-/

namespace A143214.P17130607308319919330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003188 (SequenceMachineLib.roundAway ((A007318 n : ℚ) ^ (A043288 (3 * n + 2) : ℤ))).toNat

end

end A143214.P17130607308319919330

/-! ## A143214.P9611584355441032907

`A281553(A152236(n))`
-/

namespace A143214.P9611584355441032907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281553 (A152236 n).toNat

end

end A143214.P9611584355441032907

/-! ## A143214.P13796023165114837792

`A003188(A007318(n))%A261416(n)`
-/

namespace A143214.P13796023165114837792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A003188 (A007318 n).toNat) (A261416 n)

end

end A143214.P13796023165114837792

/-! ## A143214.P16693427284400717601

`A268820(A141597(n))`
-/

namespace A143214.P16693427284400717601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268820 (A141597 n).toNat

end

end A143214.P16693427284400717601

/-!
# A143215: a(n) = prime(n) * Sum_{i=1..n} prime(i).

The programs for A143215, the canonical program `A143215.P1994719759372848110` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A143215 has offset 1).

The definition of A143215 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007504, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A143215.P1994719759372848110

`A000040(n+1)*A007504(n+1)`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A143215

/-- `A000040(n+1)*A007504(n+1)` -/
def P1994719759372848110.Spec : Prop :=
  ∀ n, P1994719759372848110.a n = A143215 (n + 1)

theorem P1994719759372848110.correct : P1994719759372848110.Spec := by
  intro n
  simp only [A143215, Nat.add_sub_cancel]

end A143215

/-! ## A143215.P11238782622536128514

`Δ[A007504(n)]*A007504(n+1)`
-/

namespace A143215.P11238782622536128514
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A007504 (n + 1)

end

end A143215.P11238782622536128514

namespace A143215

/-- `Δ[A007504(n)]*A007504(n+1)` -/
def P11238782622536128514.Spec : Prop :=
  ∀ n, P11238782622536128514.a n = A143215 (n + 1)

end A143215

/-! ## A143215.P2413782116346029299

`A034956(n+1)+A008837(n+1)`
-/

namespace A143215.P2413782116346029299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034956 (n + 1) + A008837 (n + 1)

end

end A143215.P2413782116346029299

namespace A143215

/-- `A034956(n+1)+A008837(n+1)` -/
def P2413782116346029299.Spec : Prop :=
  ∀ n, P2413782116346029299.a n = A143215 (n + 1)

end A143215

/-! ## A143215.P11838158810013052296

`A034957(n+1)+A034953(n+1)`
-/

namespace A143215.P11838158810013052296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034957 (n + 1) + A034953 (n + 1)

end

end A143215.P11838158810013052296

namespace A143215

/-- `A034957(n+1)+A034953(n+1)` -/
def P11838158810013052296.Spec : Prop :=
  ∀ n, P11838158810013052296.a n = A143215 (n + 1)

end A143215

/-! ## A143215.P9385005778183505966

`A339194(n+1)+A001248(n+1)`
-/

namespace A143215.P9385005778183505966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339194 (n + 1) + A001248 (n + 1)

end

end A143215.P9385005778183505966

namespace A143215

/-- `A339194(n+1)+A001248(n+1)` -/
def P9385005778183505966.Spec : Prop :=
  ∀ n, P9385005778183505966.a n = A143215 (n + 1)

end A143215

/-! ## A143215.P11023461442026025325

`A034960(n+1)-A339194(n+1)`
-/

namespace A143215.P11023461442026025325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034960 (n + 1) - A339194 (n + 1)

end

end A143215.P11023461442026025325

namespace A143215

/-- `A034960(n+1)-A339194(n+1)` -/
def P11023461442026025325.Spec : Prop :=
  ∀ n, P11023461442026025325.a n = A143215 (n + 1)

theorem P11023461442026025325.correct : P11023461442026025325.Spec := by
  intro n
  simp only [A143215, Nat.add_sub_cancel, A143215.P11023461442026025325.a, A143215.P1994719759372848110.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A007504, A007504.P16529107901788736493.f1, A007504.P16529107901788736493.a, A034960, A034960.P12268259456304225378.a, A339194, A339194.P3840768483066506201.a, A061802, A061802.P6001650494483680040.f1, A061802.P6001650494483680040.a, A182986, A182986.P2625431067462217415.a, A011974, A011974.P2665693327137284562.a, A054541, A054541.P347795157194570387.a, A001043, A001043.P18269783162673735460.a, A046930, A046930.P1162450832993365803.f1, A046930.P1162450832993365803.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A143215

/-! ## A143215.P973121176312924053

`A339194(n+1)+A000040(n+1)²`
-/

namespace A143215.P973121176312924053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339194 (n + 1) + A000040 (n + 1) ^ 2

end

end A143215.P973121176312924053

namespace A143215

/-- `A339194(n+1)+A000040(n+1)²` -/
def P973121176312924053.Spec : Prop :=
  ∀ n, P973121176312924053.a n = A143215 (n + 1)

end A143215

/-! ## A143215.P9908383380469247316

`(A237589(n+1)+1)*A000040(n+1)`
-/

namespace A143215.P9908383380469247316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A237589 (n + 1) + 1) * A000040 (n + 1)

end

end A143215.P9908383380469247316

namespace A143215

/-- `(A237589(n+1)+1)*A000040(n+1)` -/
def P9908383380469247316.Spec : Prop :=
  ∀ n, P9908383380469247316.a n = A143215 (n + 1)

theorem P9908383380469247316.correct : P9908383380469247316.Spec := by
  intro n
  simp only [A143215, Nat.add_sub_cancel, A143215.P9908383380469247316.a, A143215.P1994719759372848110.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A007504, A007504.P16529107901788736493.f1, A007504.P16529107901788736493.a, A237589, A237589.P15064465826932885110.a, A014284, A014284.P16560659510973334811.a, A182986, A182986.P2625431067462217415.a, A054541, A054541.P347795157194570387.a, A046930, A046930.P1162450832993365803.f1, A046930.P1162450832993365803.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A143215

/-! ## A143215.P15521562350392790828

`(A034960(n+1)+A000040(n+1)²)/2`
-/

namespace A143215.P15521562350392790828
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A034960 (n + 1) + A000040 (n + 1) ^ 2 : ℚ) / 2

end

end A143215.P15521562350392790828

namespace A143215

/-- `(A034960(n+1)+A000040(n+1)²)/2` -/
def P15521562350392790828.Spec : Prop :=
  ∀ n, P15521562350392790828.a n = (A143215 (n + 1) : ℚ)

end A143215

/-! ## A143215.P1449415517998751192

`(A008347(n+1)+A008347(n))*A007504(n+1)`
-/

namespace A143215.P1449415517998751192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A008347 (n + 1) + A008347 n) * A007504 (n + 1)

end

end A143215.P1449415517998751192

namespace A143215

/-- `(A008347(n+1)+A008347(n))*A007504(n+1)` -/
def P1449415517998751192.Spec : Prop :=
  ∀ n, P1449415517998751192.a n = A143215 (n + 1)

end A143215

/-! ## A143215.P5886843602028581974

`(A163116(n+1)+A051349(n))*A000040(n+1)`
-/

namespace A143215.P5886843602028581974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A163116 (n + 1) + A051349 n) * A000040 (n + 1)

end

end A143215.P5886843602028581974

namespace A143215

/-- `(A163116(n+1)+A051349(n))*A000040(n+1)` -/
def P5886843602028581974.Spec : Prop :=
  ∀ n, P5886843602028581974.a n = A143215 (n + 1)

theorem P5886843602028581974.correct : P5886843602028581974.Spec := by
  intro n
  simp only [A143215, Nat.add_sub_cancel, A143215.P5886843602028581974.a, A143215.P1994719759372848110.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A007504, A007504.P16529107901788736493.f1, A007504.P16529107901788736493.a, A051349, A051349.P2414547720400107792.a, A163116, A163116.P9298683324671648407.a, A018252, A018252.P16557407491482004301.f1, A018252.P16557407491482004301.a, A182986, A182986.P2625431067462217415.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A054541, A054541.P347795157194570387.a, A046930, A046930.P1162450832993365803.f1, A046930.P1162450832993365803.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A143215

/-! ## A143215.P18359314647663268029

`(A163061(n+1)-A051349(n))*A000040(n+1)`
-/

namespace A143215.P18359314647663268029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A163061 (n + 1) - A051349 n) * A000040 (n + 1)

end

end A143215.P18359314647663268029

namespace A143215

/-- `(A163061(n+1)-A051349(n))*A000040(n+1)` -/
def P18359314647663268029.Spec : Prop :=
  ∀ n, P18359314647663268029.a n = A143215 (n + 1)

theorem P18359314647663268029.correct : P18359314647663268029.Spec := by
  intro n
  simp only [A143215, Nat.add_sub_cancel, A143215.P18359314647663268029.a, A143215.P1994719759372848110.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A007504, A007504.P16529107901788736493.f1, A007504.P16529107901788736493.a, A051349, A051349.P2414547720400107792.a, A163061, A163061.P15581848910612517848.a, A018252, A018252.P16557407491482004301.f1, A018252.P16557407491482004301.a, A182986, A182986.P2625431067462217415.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A054541, A054541.P347795157194570387.a, A046930, A046930.P1162450832993365803.f1, A046930.P1162450832993365803.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A143215

/-! ## A143215.P2943013847914344070

`A007504(n+1)*A034960(n+1)/A061802(n)`
-/

namespace A143215.P2943013847914344070
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007504 (n + 1) * A034960 (n + 1) : ℚ) / (A061802 n : ℚ)

end

end A143215.P2943013847914344070

namespace A143215

/-- `A007504(n+1)*A034960(n+1)/A061802(n)` -/
def P2943013847914344070.Spec : Prop :=
  ∀ n, P2943013847914344070.a n = (A143215 (n + 1) : ℚ)

end A143215

/-! ## A143215.P1588079998370726414

`A007504(n+1)+A006093(n+1)*A007504(n+1)`
-/

namespace A143215.P1588079998370726414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 (n + 1) + A006093 (n + 1) * A007504 (n + 1)

end

end A143215.P1588079998370726414

namespace A143215

/-- `A007504(n+1)+A006093(n+1)*A007504(n+1)` -/
def P1588079998370726414.Spec : Prop :=
  ∀ n, P1588079998370726414.a n = A143215 (n + 1)

theorem P1588079998370726414.correct : P1588079998370726414.Spec := by
  intro n
  simp only [A143215, Nat.add_sub_cancel, A143215.P1588079998370726414.a, A143215.P1994719759372848110.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A006093, A006093.P2906174024863549003.a, A007504, A007504.P16529107901788736493.f1, A007504.P16529107901788736493.a, A182986, A182986.P2625431067462217415.a, A054541, A054541.P347795157194570387.a, A046930, A046930.P1162450832993365803.f1, A046930.P1162450832993365803.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A143215

/-! ## A143215.P9110515281418821217

`(A239731(n+1)+A006450(n+1))*A000040(n+1)`
-/

namespace A143215.P9110515281418821217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A239731 (n + 1) + A006450 (n + 1)) * A000040 (n + 1)

end

end A143215.P9110515281418821217

namespace A143215

/-- `(A239731(n+1)+A006450(n+1))*A000040(n+1)` -/
def P9110515281418821217.Spec : Prop :=
  ∀ n, P9110515281418821217.a n = A143215 (n + 1)

theorem P9110515281418821217.correct : P9110515281418821217.Spec := by
  intro n
  simp only [A143215, Nat.add_sub_cancel, A143215.P9110515281418821217.a, A143215.P1994719759372848110.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A006450, A006450.P16445646407241112379.a, A007504, A007504.P16529107901788736493.f1, A007504.P16529107901788736493.a, A239731, A239731.P14772903405319056009.a, A182986, A182986.P2625431067462217415.a, A054541, A054541.P347795157194570387.a, A046930, A046930.P1162450832993365803.f1, A046930.P1162450832993365803.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A143215

/-! ## A143215.P3656036188493581489

`(A161671(n+1)+A141468(n+1))*A007504(n+1)`
-/

namespace A143215.P3656036188493581489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A161671 (n + 1) + A141468 (n + 1)) * A007504 (n + 1)

end

end A143215.P3656036188493581489

namespace A143215

/-- `(A161671(n+1)+A141468(n+1))*A007504(n+1)` -/
def P3656036188493581489.Spec : Prop :=
  ∀ n, P3656036188493581489.a n = A143215 (n + 1)

theorem P3656036188493581489.correct : P3656036188493581489.Spec := by
  intro n
  simp only [A143215, Nat.add_sub_cancel, A143215.P3656036188493581489.a, A143215.P1994719759372848110.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A007504, A007504.P16529107901788736493.f1, A007504.P16529107901788736493.a, A141468, A141468.P11281748312058034280.a, A161671, A161671.P6686431630733255058.a, A018252, A018252.P16557407491482004301.f1, A018252.P16557407491482004301.a, A054546, A054546.P12235855701833693749.a, A182986, A182986.P2625431067462217415.a, A000038, A000038.P13734959004655594922.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A054541, A054541.P347795157194570387.a, A065310, A065310.P13031903484145223612.f1, A065310.P13031903484145223612.a, A000007, A000007.P6599383543502402472.a, A046930, A046930.P1162450832993365803.f1, A046930.P1162450832993365803.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A143215

/-! ## A143215.P6809069116882634571

`A007504(n+1)*A008578(n+2)`
-/

namespace A143215.P6809069116882634571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 (n + 1) * A008578 (n + 2)

end

end A143215.P6809069116882634571

namespace A143215

/-- `A007504(n+1)*A008578(n+2)` -/
def P6809069116882634571.Spec : Prop :=
  ∀ n, P6809069116882634571.a n = A143215 (n + 1)

end A143215

/-! ## A143215.P11828676572091949463

`A007504(n+1)*A182986(n+2)`
-/

namespace A143215.P11828676572091949463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 (n + 1) * A182986 (n + 2)

end

end A143215.P11828676572091949463

namespace A143215

/-- `A007504(n+1)*A182986(n+2)` -/
def P11828676572091949463.Spec : Prop :=
  ∀ n, P11828676572091949463.a n = A143215 (n + 1)

end A143215

/-! ## A143215.P14565499760101256964

`A000040(n+1)*A014284(n+2)-A000040(n+1)`
-/

namespace A143215.P14565499760101256964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) * A014284 (n + 2) - A000040 (n + 1)

end

end A143215.P14565499760101256964

namespace A143215

/-- `A000040(n+1)*A014284(n+2)-A000040(n+1)` -/
def P14565499760101256964.Spec : Prop :=
  ∀ n, P14565499760101256964.a n = A143215 (n + 1)

theorem P14565499760101256964.correct : P14565499760101256964.Spec := by
  intro n
  simp only [A143215, Nat.add_sub_cancel, A143215.P14565499760101256964.a, A143215.P1994719759372848110.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A007504, A007504.P16529107901788736493.f1, A007504.P16529107901788736493.a, A014284, A014284.P16560659510973334811.a, A182986, A182986.P2625431067462217415.a, A054541, A054541.P347795157194570387.a, A046930, A046930.P1162450832993365803.f1, A046930.P1162450832993365803.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A143215

/-! ## A143215.P7766180149587882806

`A008578(n+2)+A008578(n+2)*A237589(n+1)`
-/

namespace A143215.P7766180149587882806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 2) + A008578 (n + 2) * A237589 (n + 1)

end

end A143215.P7766180149587882806

namespace A143215

/-- `A008578(n+2)+A008578(n+2)*A237589(n+1)` -/
def P7766180149587882806.Spec : Prop :=
  ∀ n, P7766180149587882806.a n = A143215 (n + 1)

end A143215

/-!
# A143216: Triangle read by rows: T(n,k) = n!*k!, 0 <= k <= n.

The programs for A143216, the canonical program `A143216.P9510215905544509168` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A143216 has offset 0).

The definition of A143216 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 944 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A143216.P9510215905544509168

`A008279(n)*A098361(n)`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A143216

/-- `A008279(n)*A098361(n)` -/
def P9510215905544509168.Spec : Prop :=
  ∀ n, P9510215905544509168.a n = A143216 n

theorem P9510215905544509168.correct : P9510215905544509168.Spec := by
  intro n
  simp only [A143216]

end A143216

/-! ## A143216.P10859291918470213779

`A119502(n)*A371767(n)`
-/

namespace A143216.P10859291918470213779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119502 n * A371767 n

end

end A143216.P10859291918470213779

namespace A143216

/-- `A119502(n)*A371767(n)` -/
def P10859291918470213779.Spec : Prop :=
  ∀ n, P10859291918470213779.a n = A143216 n

theorem P10859291918470213779.correct : P10859291918470213779.Spec := by
  intro n
  simp only [A143216, Nat.add_sub_cancel, A143216.P10859291918470213779.a, A143216.P9510215905544509168.a, A008279, A008279.P7177801246737440238.a, A098361, A098361.P7044536785034610126.a, A119502, A119502.P16886903027794226168.a, A371767, A371767.P2734306466527776873.a, A000142, A000142.P3272619076580183195.a, A002262, A002262.P12129691700837801527.a, A003056, A003056.P5318256527314048597.a, A025581, A025581.P420762180635059694.a, A233543, A233543.P15139316813997982793.a, A004736, A004736.P10337537277358081527.a, A057944, A057944.P16851463738746886639.a, A000217, A000217.P10269402890581615239.a, A002024, A002024.P11700297927830783882.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A143216

/-! ## A143216.P1909222871686345266

`A233543(n)²*A094587(n)`
-/

namespace A143216.P1909222871686345266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233543 n ^ 2 * A094587 n

end

end A143216.P1909222871686345266

namespace A143216

/-- `A233543(n)²*A094587(n)` -/
def P1909222871686345266.Spec : Prop :=
  ∀ n, P1909222871686345266.a n = A143216 n

end A143216

/-! ## A143216.P188000627083958732

`A094587(A112367(n))²*A094587(n)`
-/

namespace A143216.P188000627083958732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094587 (A112367 n).toNat ^ 2 * A094587 n

end

end A143216.P188000627083958732

namespace A143216

/-- `A094587(A112367(n))²*A094587(n)` -/
def P188000627083958732.Spec : Prop :=
  ∀ n, P188000627083958732.a n = A143216 n

end A143216

/-! ## A143216.P12701388802353182653

`A098361(A245300(n))`
-/

namespace A143216.P12701388802353182653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098361 (A245300 n).toNat

end

end A143216.P12701388802353182653

namespace A143216

/-- `A098361(A245300(n))` -/
def P12701388802353182653.Spec : Prop :=
  ∀ n, P12701388802353182653.a n = A143216 n

end A143216

/-! ## A143216.P12858697192075314364

`A143084(n)/A046899(n)`
-/

namespace A143216.P12858697192075314364
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A143084 n : ℚ) / (A046899 n : ℚ)

end

end A143216.P12858697192075314364

namespace A143216

/-- `A143084(n)/A046899(n)` -/
def P12858697192075314364.Spec : Prop :=
  ∀ n, P12858697192075314364.a n = (A143216 n : ℚ)

end A143216

/-! ## A143216.P2851723626830333689

`A119502(A245300(n))*A233543(n)`
-/

namespace A143216.P2851723626830333689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119502 (A245300 n).toNat * A233543 n

end

end A143216.P2851723626830333689

namespace A143216

/-- `A119502(A245300(n))*A233543(n)` -/
def P2851723626830333689.Spec : Prop :=
  ∀ n, P2851723626830333689.a n = A143216 n

end A143216

/-!
# A143217: a(n) = n! * (!(n+1)) = n! * Sum_{k=0..n} k!.

The programs for A143217, the canonical program `A143217.P18343159879643153823` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A143217 has offset 0).

The definition of A143217 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A143217.P18343159879643153823

`A000142(n)*A003422(n+1)`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A143217

/-- `A000142(n)*A003422(n+1)` -/
def P18343159879643153823.Spec : Prop :=
  ∀ n, P18343159879643153823.a n = A143217 n

theorem P18343159879643153823.correct : P18343159879643153823.Spec := by
  intro n
  simp only [A143217]

end A143217

/-! ## A143217.P16345910872370529846

`n!*∑[n!]`
-/

namespace A143217.P16345910872370529846
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial n * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A143217.P16345910872370529846

namespace A143217

/-- `n!*∑[n!]` -/
def P16345910872370529846.Spec : Prop :=
  ∀ n, (P16345910872370529846.a n : ℤ) = A143217 n

end A143217

/-! ## A143217.P12663902935109342158

`n!²+n*a(n-1)` with `a(0)=1`
-/

namespace A143217.P12663902935109342158
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Nat.factorial n ^ 2 + n * a (n - 1)

end

end A143217.P12663902935109342158

namespace A143217

/-- `n!²+n*a(n-1)` -/
def P12663902935109342158.Spec : Prop :=
  ∀ n, (P12663902935109342158.a n : ℤ) = A143217 n

end A143217

/-! ## A143217.P462877279355630092

`root(n!, 2/4)+n*a(n-1)` with `a(0)=1`
-/

namespace A143217.P462877279355630092
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.rec [1] fun n a =>
  (Nat.factorial n : ℝ) ^ (1 / ((2 : ℚ) / 4 : ℝ)) + (n : ℝ) * a (n - 1)

end

end A143217.P462877279355630092

namespace A143217

/-- `root(n!, 2/4)+n*a(n-1)` -/
def P462877279355630092.Spec : Prop :=
  ∀ n, P462877279355630092.a n = (A143217 n : ℝ)

end A143217

/-! ## A143217.P6597791691588480875

`∏[floor(acot(n)-n)]²+n*a(n-1)` with `a(0)=1`
-/

namespace A143217.P6597791691588480875
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊SequenceMachineLib.acot (n : ℝ) - (n : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (∏ j ∈ Finset.range (n + 1), f1 j) ^ 2 + (n : ℤ) * a (n - 1)

end

end A143217.P6597791691588480875

namespace A143217

/-- `∏[floor(acot(n)-n)]²+n*a(n-1)` -/
def P6597791691588480875.Spec : Prop :=
  ∀ n, P6597791691588480875.a n = A143217 n

end A143217

/-!
# A143218: Triangle read by rows, A127775 * A000012 * A127775; 1<=k<=n.

The programs for A143218, the canonical program `A143218.P4624166105486444444` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A143218 has offset 1).

The definition of A143218 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A143218.P9043618215297315902

`2*A151890(n)+1`
-/

namespace A143218.P9043618215297315902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A151890 n + 1

end

end A143218.P9043618215297315902

namespace A143218

/-- `2*A151890(n)+1` -/
def P9043618215297315902.Spec : Prop :=
  ∀ n, P9043618215297315902.a n = A143218 (n + 1)

end A143218

/-! ## A143218.P8217412022608623933

`2*A244418(n+1)-1`
-/

namespace A143218.P8217412022608623933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A244418 (n + 1) - 1

end

end A143218.P8217412022608623933

namespace A143218

/-- `2*A244418(n+1)-1` -/
def P8217412022608623933.Spec : Prop :=
  ∀ n, P8217412022608623933.a n = A143218 (n + 1)

end A143218

/-! ## A143218.P6068995039564768010

`(∑[2*char[∑[n]]]-1)*A158405(n+1)`
-/

namespace A143218.P6068995039564768010
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (if ∃ j, f2 j = n then 1 else 0)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 1) * A158405 (n + 1)

end

end A143218.P6068995039564768010

namespace A143218

/-- `(∑[2*char[∑[n]]]-1)*A158405(n+1)` -/
def P6068995039564768010.Spec : Prop :=
  ∀ n, P6068995039564768010.a n = A143218 (n + 1)

end A143218

/-! ## A143218.P924166165965514687

`A000265(xor(1, 2*A151890(n)))`
-/

namespace A143218.P924166165965514687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (Int.xor 1 (2 * A151890 n)).toNat

end

end A143218.P924166165965514687

namespace A143218

/-- `A000265(xor(1, 2*A151890(n)))` -/
def P924166165965514687.Spec : Prop :=
  ∀ n, P924166165965514687.a n = A143218 (n + 1)

end A143218

/-! ## A143218.P8374050453261670046

`A244418(n+1)+A151890(n)`
-/

namespace A143218.P8374050453261670046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244418 (n + 1) + A151890 n

end

end A143218.P8374050453261670046

namespace A143218

/-- `A244418(n+1)+A151890(n)` -/
def P8374050453261670046.Spec : Prop :=
  ∀ n, P8374050453261670046.a n = A143218 (n + 1)

end A143218

/-! ## A143218.P527662634119840343

`2*A330613(A038722(n+1))-1`
-/

namespace A143218.P527662634119840343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A330613 (A038722 (n + 1)).toNat - 1

end

end A143218.P527662634119840343

namespace A143218

/-- `2*A330613(A038722(n+1))-1` -/
def P527662634119840343.Spec : Prop :=
  ∀ n, P527662634119840343.a n = A143218 (n + 1)

end A143218

/-! ## A143218.P12803224632024394037

`A214604(n+1)-A095832(n+1)`
-/

namespace A143218.P12803224632024394037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214604 (n + 1) - A095832 (n + 1)

end

end A143218.P12803224632024394037

namespace A143218

/-- `A214604(n+1)-A095832(n+1)` -/
def P12803224632024394037.Spec : Prop :=
  ∀ n, P12803224632024394037.a n = A143218 (n + 1)

end A143218

/-! ## A143218.P4624166105486444444

`(A051162(n)+1)²-A025581(n)²`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A143218

/-- `(A051162(n)+1)²-A025581(n)²` -/
def P4624166105486444444.Spec : Prop :=
  ∀ n, P4624166105486444444.a n = A143218 (n + 1)

theorem P4624166105486444444.correct : P4624166105486444444.Spec := by
  intro n
  simp only [A143218, Nat.add_sub_cancel]

end A143218

/-! ## A143218.P15920377765763998218

`A094727(n+1)²-A025581(n)²`
-/

namespace A143218.P15920377765763998218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094727 (n + 1) ^ 2 - A025581 n ^ 2

end

end A143218.P15920377765763998218

namespace A143218

/-- `A094727(n+1)²-A025581(n)²` -/
def P15920377765763998218.Spec : Prop :=
  ∀ n, P15920377765763998218.a n = A143218 (n + 1)

theorem P15920377765763998218.correct : P15920377765763998218.Spec := by
  intro n
  simp only [A143218, Nat.add_sub_cancel, A143218.P15920377765763998218.a, A143218.P4624166105486444444.a, A025581, A025581.P420762180635059694.a, A051162, A051162.P14261216125704105833.a, A094727, A094727.P1759177724676722475.a, A002260, A002260.P769748059679640451.a, A002262, A002262.P12129691700837801527.a, A003056, A003056.P5318256527314048597.a, A004736, A004736.P10337537277358081527.a, A000217, A000217.P10269402890581615239.a, A002024, A002024.P11700297927830783882.a, A057944, A057944.P16851463738746886639.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A143218

/-! ## A143218.P4294357348298601307

`A000265(A151890(n)+A151890(n)+1)`
-/

namespace A143218.P4294357348298601307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A151890 n + (A151890 n + 1)).toNat

end

end A143218.P4294357348298601307

namespace A143218

/-- `A000265(A151890(n)+A151890(n)+1)` -/
def P4294357348298601307.Spec : Prop :=
  ∀ n, P4294357348298601307.a n = A143218 (n + 1)

end A143218

/-! ## A143218.P140993806344412239

`A004273(A002262(n)+1)*A131507(n)`
-/

namespace A143218.P140993806344412239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (A002262 n + 1).toNat * A131507 n

end

end A143218.P140993806344412239

namespace A143218

/-- `A004273(A002262(n)+1)*A131507(n)` -/
def P140993806344412239.Spec : Prop :=
  ∀ n, P140993806344412239.a n = A143218 (n + 1)

end A143218

/-! ## A143218.P8057623848174167939

`A214604(n+1)-(A025581(n)+A025581(n)²)`
-/

namespace A143218.P8057623848174167939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214604 (n + 1) - (A025581 n + A025581 n ^ 2)

end

end A143218.P8057623848174167939

namespace A143218

/-- `A214604(n+1)-(A025581(n)+A025581(n)²)` -/
def P8057623848174167939.Spec : Prop :=
  ∀ n, P8057623848174167939.a n = A143218 (n + 1)

end A143218

/-! ## A143218.P13207756422068795324

`A214661(n+1)+A025581(n)-A025581(n)²`
-/

namespace A143218.P13207756422068795324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214661 (n + 1) + (A025581 n - A025581 n ^ 2)

end

end A143218.P13207756422068795324

namespace A143218

/-- `A214661(n+1)+A025581(n)-A025581(n)²` -/
def P13207756422068795324.Spec : Prop :=
  ∀ n, P13207756422068795324.a n = A143218 (n + 1)

theorem P13207756422068795324.correct : P13207756422068795324.Spec := by
  intro n
  simp only [A143218, Nat.add_sub_cancel, A143218.P13207756422068795324.a, A143218.P4624166105486444444.a, A025581, A025581.P420762180635059694.a, A051162, A051162.P14261216125704105833.a, A214661, A214661.P2084257495514736411.a, A002262, A002262.P12129691700837801527.a, A003056, A003056.P5318256527314048597.a, A004736, A004736.P10337537277358081527.a, A000217, A000217.P10269402890581615239.a, A002024, A002024.P11700297927830783882.a, A057944, A057944.P16851463738746886639.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A143218

/-! ## A143218.P6343984249926292037

`A005408(A002262(n))*A005408(A003056(n))`
-/

namespace A143218.P6343984249926292037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (A002262 n).toNat * A005408 (A003056 n).toNat

end

end A143218.P6343984249926292037

namespace A143218

/-- `A005408(A002262(n))*A005408(A003056(n))` -/
def P6343984249926292037.Spec : Prop :=
  ∀ n, P6343984249926292037.a n = A143218 (n + 1)

end A143218

/-! ## A143218.P6634013703162820774

`A214661(n+1)-A025581(n+1)*A025581(n)`
-/

namespace A143218.P6634013703162820774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214661 (n + 1) - A025581 (n + 1) * A025581 n

end

end A143218.P6634013703162820774

namespace A143218

/-- `A214661(n+1)-A025581(n+1)*A025581(n)` -/
def P6634013703162820774.Spec : Prop :=
  ∀ n, P6634013703162820774.a n = A143218 (n + 1)

end A143218

/-! ## A143218.P2650421520029681866

`A000265(or(2, 4*A151890(n)))`
-/

namespace A143218.P2650421520029681866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (Int.lor 2 (4 * A151890 n)).toNat

end

end A143218.P2650421520029681866

namespace A143218

/-- `A000265(or(2, 4*A151890(n)))` -/
def P2650421520029681866.Spec : Prop :=
  ∀ n, P2650421520029681866.a n = A143218 (n + 1)

end A143218

/-! ## A143218.P4028338511408282605

`(A001670(2*(n+1))-1)*A074294(2*n+1)`
-/

namespace A143218.P4028338511408282605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A001670 (2 * (n + 1)) - 1) * A074294 (2 * n + 1)

end

end A143218.P4028338511408282605

namespace A143218

/-- `(A001670(2*(n+1))-1)*A074294(2*n+1)` -/
def P4028338511408282605.Spec : Prop :=
  ∀ n, P4028338511408282605.a n = A143218 (n + 1)

end A143218

/-! ## A143218.P17589552529673323189

`(A130829(2*(n+1))-2)*A074294(2*n+1)`
-/

namespace A143218.P17589552529673323189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A130829 (2 * (n + 1)) - 2) * A074294 (2 * n + 1)

end

end A143218.P17589552529673323189

namespace A143218

/-- `(A130829(2*(n+1))-2)*A074294(2*n+1)` -/
def P17589552529673323189.Spec : Prop :=
  ∀ n, P17589552529673323189.a n = A143218 (n + 1)

end A143218

/-! ## A143218.P14473310363720570458

`A075362(A185868(n+1))`
-/

namespace A143218.P14473310363720570458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075362 (A185868 (n + 1)).toNat

end

end A143218.P14473310363720570458

namespace A143218

/-- `A075362(A185868(n+1))` -/
def P14473310363720570458.Spec : Prop :=
  ∀ n, P14473310363720570458.a n = A143218 (n + 1)

end A143218

/-! ## A143218.P14003034879122757079

`A079904(A185869(n+1))`
-/

namespace A143218.P14003034879122757079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079904 (A185869 (n + 1)).toNat

end

end A143218.P14003034879122757079

namespace A143218

/-- `A079904(A185869(n+1))` -/
def P14003034879122757079.Spec : Prop :=
  ∀ n, P14003034879122757079.a n = A143218 (n + 1)

end A143218

/-!
# A143219: Triangle read by rows, A127648 * A000012 * A127773, 1 <= k <= n.

The programs for A143219, the canonical program `A143219.P5950329359830316773` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A143219 has offset 1).

The definition of A143219 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A143219.P10464174887305803936

`(1-A049780(n)+n)*∑[char[∑[n]]]`
-/

namespace A143219.P10464174887305803936
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A049780 n + (n : ℤ)) * ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A143219.P10464174887305803936

namespace A143219

/-- `(1-A049780(n)+n)*∑[char[∑[n]]]` -/
def P10464174887305803936.Spec : Prop :=
  ∀ n, P10464174887305803936.a n = A143219 (n + 1)

end A143219

/-! ## A143219.P7350845135011814719

`∑[char[∑[n]]]*A000217(1-C(∑[char[∑[n]]], 2)+n)`
-/

namespace A143219.P7350845135011814719
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

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

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) * A000217 (1 - (Nat.choose (∑ j ∈ Finset.range (n + 1), f4 j) 2 : ℤ) + (n : ℤ)).toNat

end

end A143219.P7350845135011814719

namespace A143219

/-- `∑[char[∑[n]]]*A000217(1-C(∑[char[∑[n]]], 2)+n)` -/
def P7350845135011814719.Spec : Prop :=
  ∀ n, P7350845135011814719.a n = A143219 (n + 1)

end A143219

/-! ## A143219.P3686246959614723371

`∑[char[∑[n]]]*A278818(C(1-C(∑[char[∑[n]]], 2)+n, 2))`
-/

namespace A143219.P3686246959614723371
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

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

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) * A278818 (Nat.choose (1 - (Nat.choose (∑ j ∈ Finset.range (n + 1), f4 j) 2 : ℤ) + (n : ℤ)).toNat 2)

end

end A143219.P3686246959614723371

namespace A143219

/-- `∑[char[∑[n]]]*A278818(C(1-C(∑[char[∑[n]]], 2)+n, 2))` -/
def P3686246959614723371.Spec : Prop :=
  ∀ n, P3686246959614723371.a n = A143219 (n + 1)

end A143219

/-! ## A143219.P5950329359830316773

`(n+1-A049780(n))*∑[A010054(n)]`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A143219

/-- `(n+1-A049780(n))*∑[A010054(n)]` -/
def P5950329359830316773.Spec : Prop :=
  ∀ n, P5950329359830316773.a n = A143219 (n + 1)

theorem P5950329359830316773.correct : P5950329359830316773.Spec := by
  intro n
  simp only [A143219, Nat.add_sub_cancel]

end A143219

/-! ## A143219.P13254225333151368117

`(comp[∑[n-1]]-n)*A000217(A002260(n+1))`
-/

namespace A143219.P13254225333151368117
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) - (n : ℤ)) * A000217 (A002260 (n + 1)).toNat

end

end A143219.P13254225333151368117

namespace A143219

/-- `(comp[∑[n-1]]-n)*A000217(A002260(n+1))` -/
def P13254225333151368117.Spec : Prop :=
  ∀ n, P13254225333151368117.a n = A143219 (n + 1)

end A143219

/-! ## A143219.P8747033432220647273

`A082652(n+1)+A000292(A002262(n))`
-/

namespace A143219.P8747033432220647273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082652 (n + 1) + A000292 (A002262 n).toNat

end

end A143219.P8747033432220647273

namespace A143219

/-- `A082652(n+1)+A000292(A002262(n))` -/
def P8747033432220647273.Spec : Prop :=
  ∀ n, P8747033432220647273.a n = A143219 (n + 1)

end A143219

/-! ## A143219.P2508481545315533476

`(A000096(A002262(n))+1)*A002024(n+1)`
-/

namespace A143219.P2508481545315533476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000096 (A002262 n).toNat + 1) * A002024 (n + 1)

end

end A143219.P2508481545315533476

namespace A143219

/-- `(A000096(A002262(n))+1)*A002024(n+1)` -/
def P2508481545315533476.Spec : Prop :=
  ∀ n, P2508481545315533476.a n = A143219 (n + 1)

end A143219

/-! ## A143219.P4184601397925385693

`A000217(A002260(n+1))*A002024(n+1)`
-/

namespace A143219.P4184601397925385693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A002260 (n + 1)).toNat * A002024 (n + 1)

end

end A143219.P4184601397925385693

namespace A143219

/-- `A000217(A002260(n+1))*A002024(n+1)` -/
def P4184601397925385693.Spec : Prop :=
  ∀ n, P4184601397925385693.a n = A143219 (n + 1)

end A143219

/-! ## A143219.P13230494485098942462

`A000217(A002262(n)+1)*A002024(n+1)`
-/

namespace A143219.P13230494485098942462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A002262 n + 1).toNat * A002024 (n + 1)

end

end A143219.P13230494485098942462

namespace A143219

/-- `A000217(A002262(n)+1)*A002024(n+1)` -/
def P13230494485098942462.Spec : Prop :=
  ∀ n, P13230494485098942462.a n = A143219 (n + 1)

end A143219

/-! ## A143219.P4992616910649958847

`A082652(n+1)+A000292(A002260(n+1)-1)`
-/

namespace A143219.P4992616910649958847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082652 (n + 1) + A000292 (A002260 (n + 1) - 1).toNat

end

end A143219.P4992616910649958847

namespace A143219

/-- `A082652(n+1)+A000292(A002260(n+1)-1)` -/
def P4992616910649958847.Spec : Prop :=
  ∀ n, P4992616910649958847.a n = A143219 (n + 1)

end A143219

/-! ## A143219.P11627770789943596634

`A000217(A002260(n+1))*A002260(A127739(n+1))`
-/

namespace A143219.P11627770789943596634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A002260 (n + 1)).toNat * A002260 (A127739 (n + 1)).toNat

end

end A143219.P11627770789943596634

namespace A143219

/-- `A000217(A002260(n+1))*A002260(A127739(n+1))` -/
def P11627770789943596634.Spec : Prop :=
  ∀ n, P11627770789943596634.a n = A143219 (n + 1)

end A143219

/-! ## A143219.P3461500224289213953

`A000217(A002024(n+1)-A025581(n))*A002024(n+1)`
-/

namespace A143219.P3461500224289213953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A002024 (n + 1) - A025581 n).toNat * A002024 (n + 1)

end

end A143219.P3461500224289213953

namespace A143219

/-- `A000217(A002024(n+1)-A025581(n))*A002024(n+1)` -/
def P3461500224289213953.Spec : Prop :=
  ∀ n, P3461500224289213953.a n = A143219 (n + 1)

end A143219

/-! ## A143219.P8632107832843659861

`A000217(A075362(n+1)/A002024(n+1))*A002024(n+1)`
-/

namespace A143219.P8632107832843659861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (SequenceMachineLib.roundAway ((A075362 (n + 1) : ℚ) / (A002024 (n + 1) : ℚ))).toNat * A002024 (n + 1)

end

end A143219.P8632107832843659861

namespace A143219

/-- `A000217(A075362(n+1)/A002024(n+1))*A002024(n+1)` -/
def P8632107832843659861.Spec : Prop :=
  ∀ n, P8632107832843659861.a n = A143219 (n + 1)

end A143219

/-! ## A143219.P8802942236775717123

`A000217(A002260(n+1))/A002260(n+1)*A075362(n+1)`
-/

namespace A143219.P8802942236775717123
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000217 (A002260 (n + 1)).toNat : ℚ) / (A002260 (n + 1) : ℚ) * (A075362 (n + 1) : ℚ)

end

end A143219.P8802942236775717123

namespace A143219

/-- `A000217(A002260(n+1))/A002260(n+1)*A075362(n+1)` -/
def P8802942236775717123.Spec : Prop :=
  ∀ n, P8802942236775717123.a n = (A143219 (n + 1) : ℚ)

end A143219

/-! ## A143219.P4188056583435766261

`(comp[∑[n-1]]-n)*C(A131818(n+2), 2)`
-/

namespace A143219.P4188056583435766261
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) - (n : ℤ)) * (Nat.choose (A131818 (n + 2)).toNat 2 : ℤ)

end

end A143219.P4188056583435766261

namespace A143219

/-- `(comp[∑[n-1]]-n)*C(A131818(n+2), 2)` -/
def P4188056583435766261.Spec : Prop :=
  ∀ n, P4188056583435766261.a n = A143219 (n + 1)

end A143219

/-! ## A143219.P7506615289079124766

`A000217(A349520(2*n+1))*A349520(2*(n+1))`
-/

namespace A143219.P7506615289079124766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A349520 (2 * n + 1)).toNat * A349520 (2 * (n + 1))

end

end A143219.P7506615289079124766

namespace A143219

/-- `A000217(A349520(2*n+1))*A349520(2*(n+1))` -/
def P7506615289079124766.Spec : Prop :=
  ∀ n, P7506615289079124766.a n = A143219 (n + 1)

end A143219

/-! ## A143219.P16304879317746392277

`A281881(n+1)/A008279(n)`
-/

namespace A143219.P16304879317746392277
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A281881 (n + 1) : ℚ) / (A008279 n : ℚ)

end

end A143219.P16304879317746392277

namespace A143219

/-- `A281881(n+1)/A008279(n)` -/
def P16304879317746392277.Spec : Prop :=
  ∀ n, P16304879317746392277.a n = (A143219 (n + 1) : ℚ)

end A143219

/-! ## A143219.P4072897571299093531

`∑[char[∑[n]]]*A007425(2^(n-C(∑[char[∑[n]]], 2)))`
-/

namespace A143219.P4072897571299093531
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

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

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) * A007425 (SequenceMachineLib.roundAway ((2 : ℚ) ^ ((n : ℤ) - (Nat.choose (∑ j ∈ Finset.range (n + 1), f4 j) 2 : ℤ) : ℤ))).toNat

end

end A143219.P4072897571299093531

namespace A143219

/-- `∑[char[∑[n]]]*A007425(2^(n-C(∑[char[∑[n]]], 2)))` -/
def P4072897571299093531.Spec : Prop :=
  ∀ n, P4072897571299093531.a n = A143219 (n + 1)

end A143219

/-! ## A143219.P13650853775563422002

`∑[char[∑[n]]]*A326417(2^(n-C(∑[char[∑[n]]], 2)))`
-/

namespace A143219.P13650853775563422002
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

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

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) * A326417 (SequenceMachineLib.roundAway ((2 : ℚ) ^ ((n : ℤ) - (Nat.choose (∑ j ∈ Finset.range (n + 1), f4 j) 2 : ℤ) : ℤ))).toNat

end

end A143219.P13650853775563422002

namespace A143219

/-- `∑[char[∑[n]]]*A326417(2^(n-C(∑[char[∑[n]]], 2)))` -/
def P13650853775563422002.Spec : Prop :=
  ∀ n, P13650853775563422002.a n = A143219 (n + 1)

end A143219

/-!
# A143220: a(0)=1. For n >=1, a(n) = 1 if the binary representation of n occurs at least once in the concatenation of (a(0),a(1),...,a(n-1)). a(n) = 0 otherwise.

The programs for A143220, there is no canonical definition to state claims against.
-/

/-! ## A143220.P6729644789765528283

`ceil(A118269(n)/A095677(n))`
-/

namespace A143220.P6729644789765528283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A118269 n : ℚ) / (A095677 n : ℚ)⌉

end

end A143220.P6729644789765528283

/-! ## A143220.P2860919178713898057

`ceil(A118269(n)/A118033(n))`
-/

namespace A143220.P2860919178713898057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A118269 n : ℚ) / (A118033 n : ℚ)⌉

end

end A143220.P2860919178713898057

/-! ## A143220.P5974804335008236607

`ceil(A118269(n)/A226452(n))`
-/

namespace A143220.P5974804335008236607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A118269 n : ℚ) / (A226452 n : ℚ)⌉

end

end A143220.P5974804335008236607

/-! ## A143220.P3755694738840984636

`ceil(A118269(n)/A248370(n))`
-/

namespace A143220.P3755694738840984636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A118269 n : ℚ) / (A248370 n : ℚ)⌉

end

end A143220.P3755694738840984636

/-! ## A143220.P4000758536899571217

`ceil(A118269(n)/A336815(n))`
-/

namespace A143220.P4000758536899571217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A118269 n : ℚ) / (A336815 n : ℚ)⌉

end

end A143220.P4000758536899571217

/-!
# A143221: a(0)=1. For n >=1, a(n) = 0 if the binary representation of n occurs at least once in the concatenation of (a(0),a(1),...,a(n-1)). a(n) = 1 otherwise.

The programs for A143221, there is no canonical definition to state claims against.
-/

/-! ## A143221.P7538641595527957883

`A374769(A374783(2*(n+1))+A367403(n))`
-/

namespace A143221.P7538641595527957883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374769 (A374783 (2 * (n + 1)) + A367403 n).toNat

end

end A143221.P7538641595527957883

/-! ## A143221.P16132043630546105874

`A188374(p?[A242923(n+1)+A046309(n+1)])`
-/

namespace A143221.P16132043630546105874
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242923 (n + 1) + A046309 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188374 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A143221.P16132043630546105874

/-! ## A143221.P3929642762678834508

`ceil(A217564(A249555(n+1))/A178587(n+1))`
-/

namespace A143221.P3929642762678834508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A217564 (A249555 (n + 1)).toNat : ℚ) / (A178587 (n + 1) : ℚ)⌉

end

end A143221.P3929642762678834508

/-! ## A143221.P3285771669340487404

`A296554(A345910(2*(n+2)))%2`
-/

namespace A143221.P3285771669340487404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A296554 (A345910 (2 * (n + 2))).toNat) 2

end

end A143221.P3285771669340487404

/-! ## A143221.P17040011742849034047

`ceil(A217564(A249555(n+1))/A178588(n+1))`
-/

namespace A143221.P17040011742849034047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A217564 (A249555 (n + 1)).toNat : ℚ) / (A178588 (n + 1) : ℚ)⌉

end

end A143221.P17040011742849034047

/-!
# A143222: a(0)=0. For n >=1, a(n) = 0 if the binary representation of n occurs at least once in the concatenation of (a(0),a(1),...,a(n-1)). a(n) = 1 otherwise.

The programs for A143222, there is no canonical definition to state claims against.
-/

/-! ## A143222.P3261775086436515887

`A339846(A211455(n+1))^A034374(n+1)`
-/

namespace A143222.P3261775086436515887
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A339846 (A211455 (n + 1)).toNat : ℚ) ^ (A034374 (n + 1) : ℤ)

end

end A143222.P3261775086436515887

/-! ## A143222.P18331877873158845169

`A107846(A333726(n+1))^A343453(A192006(n)+3)`
-/

namespace A143222.P18331877873158845169
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A107846 (A333726 (n + 1)).toNat : ℚ) ^ (A343453 (A192006 n + 3).toNat : ℤ)

end

end A143222.P18331877873158845169

/-! ## A143222.P4747239057456662167

`A005614(A270339(n+3)+A261440(n))`
-/

namespace A143222.P4747239057456662167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005614 (A270339 (n + 3) + A261440 n).toNat

end

end A143222.P4747239057456662167

/-! ## A143222.P510505682896502085

`A010060(and(A090231(n+1), A213935(n+1)))`
-/

namespace A143222.P510505682896502085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010060 (Int.land (A090231 (n + 1)) (A213935 (n + 1))).toNat

end

end A143222.P510505682896502085

/-! ## A143222.P11137672721213303975

`A323045(A027293(2*n+5)*A238352(3*n+4))`
-/

namespace A143222.P11137672721213303975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323045 (A027293 (2 * n + 5) * A238352 (3 * n + 4)).toNat

end

end A143222.P11137672721213303975

/-!
# A143223: (Number of primes between n^2 and (n+1)^2) - (number of primes between n and 2n).

The programs for A143223, there is no canonical definition to state claims against.
-/

/-! ## A143223.P13671809154246417701

`A014085(n)-A060715(A028310(n))`
-/

namespace A143223.P13671809154246417701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014085 n - A060715 (A028310 n).toNat

end

end A143223.P13671809154246417701

/-! ## A143223.P14008241454104827582

`A014085(n)-A060715(A065033(2*n))`
-/

namespace A143223.P14008241454104827582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014085 n - A060715 (A065033 (2 * n)).toNat

end

end A143223.P14008241454104827582

/-! ## A143223.P16040113117107065424

`A014085(n)-A060715(record[A124625(n)]-n)`
-/

namespace A143223.P16040113117107065424
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124625 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014085 n - A060715 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - (n : ℤ)).toNat

end

end A143223.P16040113117107065424

/-! ## A143223.P8929924610698016774

`A014085(n)-A060715(A108954(A060756(n)))`
-/

namespace A143223.P8929924610698016774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014085 n - A060715 (A108954 (A060756 n).toNat).toNat

end

end A143223.P8929924610698016774

/-! ## A143223.P13476289827108244692

`A014085(n)-A060715(A108954(A084139(n)))`
-/

namespace A143223.P13476289827108244692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014085 n - A060715 (A108954 (A084139 n).toNat).toNat

end

end A143223.P13476289827108244692

/-! ## A143223.P11704269562856337519

`A014085(n)-A083415(A238531(n))`
-/

namespace A143223.P11704269562856337519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014085 n - A083415 (A238531 n).toNat

end

end A143223.P11704269562856337519

/-! ## A143223.P11235866609233688887

`A014085(n)-A060715(A137735(n²))`
-/

namespace A143223.P11235866609233688887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014085 n - A060715 (A137735 (n ^ 2)).toNat

end

end A143223.P11235866609233688887

/-!
# A143224: Numbers n such that (number of primes between n^2 and (n+1)^2) = (number of primes between n and 2n).

The programs for A143224, there is no canonical definition to state claims against.
-/

/-! ## A143224.P16537633286480887295

`eq[0, A143223(n)]`
-/

namespace A143224.P16537633286480887295
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143223 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A143224.P16537633286480887295

/-! ## A143224.P14070863344833409898

`lt[A001221(A143223(n)²+1), 1]`
-/

namespace A143224.P14070863344833409898
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A143223 n ^ 2 + 1).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A143224.P14070863344833409898

/-! ## A143224.P3727078885708890408

`eq[A014085(n), A056171(A004277(n))]`
-/

namespace A143224.P3727078885708890408
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014085 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056171 (A004277 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A143224.P3727078885708890408

/-! ## A143224.P5156978826360198482

`eq[A014085(n), A060715(A028310(n))]`
-/

namespace A143224.P5156978826360198482
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014085 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060715 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A143224.P5156978826360198482

/-! ## A143224.P2192343494055959097

`eq[A014085(n), A060715(A065033(2*n))]`
-/

namespace A143224.P2192343494055959097
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014085 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060715 (A065033 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A143224.P2192343494055959097

/-!
# A143225: Number of primes between n^2 and (n+1)^2, if equal to the number of primes between n and 2n.

The programs for A143225, there is no canonical definition to state claims against.
-/

/-! ## A143225.P6809523798723063179

`A014085(A143224(n+1))`
-/

namespace A143225.P6809523798723063179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014085 (A143224 (n + 1)).toNat

end

end A143225.P6809523798723063179

/-! ## A143225.P4752203084043881223

`A060715(floor(A143224(n+1)+acot(n)))`
-/

namespace A143225.P4752203084043881223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060715 ⌊(A143224 (n + 1) : ℝ) + SequenceMachineLib.acot (n : ℝ)⌋.toNat

end

end A143225.P4752203084043881223

/-! ## A143225.P2139794474136367560

`A060715(A143224(n+1)^ceil(sin(n)²))`
-/

namespace A143225.P2139794474136367560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060715 (SequenceMachineLib.roundAway ((A143224 (n + 1) : ℚ) ^ (⌈Real.sin (n : ℝ) ^ 2⌉ : ℤ))).toNat

end

end A143225.P2139794474136367560

/-! ## A143225.P2044762000491378364

`A060715(A143224(n+1)+A000007(n))`
-/

namespace A143225.P2044762000491378364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060715 (A143224 (n + 1) + A000007 n).toNat

end

end A143225.P2044762000491378364

/-! ## A143225.P1193868788539518400

`A014085(eq[0, A143223(n)])`
-/

namespace A143225.P1193868788539518400
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143223 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014085 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A143225.P1193868788539518400

/-! ## A143225.P8301950551611670719

`A060715(A015689(n)+eq[0, A143223(n)])`
-/

namespace A143225.P8301950551611670719
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143223 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060715 (A015689 n + (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n : ℤ)).toNat

end

end A143225.P8301950551611670719

/-!
# A143226: Numbers n such that there are more primes between n and 2n than between n^2 and (n+1)^2.

The programs for A143226, there is no canonical definition to state claims against.
-/

/-! ## A143226.P3069787787574803090

`lt[A143223(n), 0]`
-/

namespace A143226.P3069787787574803090
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143223 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A143226.P3069787787574803090

/-! ## A143226.P10162529949296942948

`lt[A014085(n+1), A056171(2*(n+1))]+1`
-/

namespace A143226.P10162529949296942948
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014085 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056171 (2 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A143226.P10162529949296942948

/-! ## A143226.P14443807847489843566

`lt[A014085(n), A056171(A004277(n))]`
-/

namespace A143226.P14443807847489843566
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014085 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056171 (A004277 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A143226.P14443807847489843566

/-! ## A143226.P12756430670462919942

`lt[A014085(n), A060715(A028310(n))]`
-/

namespace A143226.P12756430670462919942
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014085 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060715 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A143226.P12756430670462919942

/-! ## A143226.P4669384516013282343

`lt[A014085(n), A060715(A065033(2*n))]`
-/

namespace A143226.P4669384516013282343
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014085 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060715 (A065033 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A143226.P4669384516013282343

/-!
# A143227: (Number of primes between n and 2n) - (number of primes between n^2 and (n+1)^2), if > 0.

The programs for A143227, there is no canonical definition to state claims against.
-/

/-! ## A143227.P359582408094851419

`abs(A143223(A143226(n+1)))`
-/

namespace A143227.P359582408094851419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A143223 (A143226 (n + 1)).toNat|

end

end A143227.P359582408094851419

/-! ## A143227.P16127919572952044004

`∑{d}[A143223(A143226(n+1)), A000010(#)]`
-/

namespace A143227.P16127919572952044004
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143223 (A143226 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d

end

end A143227.P16127919572952044004

/-! ## A143227.P12401264201839783986

`∏{d}[A143223(A143226(n+1)), A014963(#)]`
-/

namespace A143227.P12401264201839783986
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143223 (A143226 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n).natAbs, A014963 d

end

end A143227.P12401264201839783986

/-! ## A143227.P10828995550943347681

`gcd(2*A143216(n), A143223(A143226(n+1)))`
-/

namespace A143227.P10828995550943347681
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (2 * A143216 n) (A143223 (A143226 (n + 1)).toNat)

end

end A143227.P10828995550943347681

/-! ## A143227.P17415730552321510825

`-(A143223(A143226(n+1))%A000040(n+1))`
-/

namespace A143227.P17415730552321510825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -Int.tmod (A143223 (A143226 (n + 1)).toNat) (A000040 (n + 1))

end

end A143227.P17415730552321510825

/-! ## A143227.P8432062617749890750

`-A143223(A143226(n+1))%A104272(n+1)`
-/

namespace A143227.P8432062617749890750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (-A143223 (A143226 (n + 1)).toNat) (A104272 (n + 1))

end

end A143227.P8432062617749890750

/-! ## A143227.P14160503985657933718

`A143223(A143224(n+1))-A143223(A143226(n+1))`
-/

namespace A143227.P14160503985657933718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143223 (A143224 (n + 1)).toNat - A143223 (A143226 (n + 1)).toNat

end

end A143227.P14160503985657933718

/-!
# A143228: Triangle read by rows, T(n,k) = p(n) * p(k), where p(n) = the number of partitions of n, for 0 <= k <= n.

The programs for A143228, there is no canonical definition to state claims against.
-/

/-! ## A143228.P18257474115863065494

`A000041(A002262(n))*A000041(A003056(n))`
-/

namespace A143228.P18257474115863065494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (A002262 n).toNat * A000041 (A003056 n).toNat

end

end A143228.P18257474115863065494

/-! ## A143228.P9154256467386226754

`A000688(A100851(n))`
-/

namespace A143228.P9154256467386226754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000688 (A100851 n).toNat

end

end A143228.P9154256467386226754

/-! ## A143228.P8088757738855985784

`A000688(A100852(n))`
-/

namespace A143228.P8088757738855985784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000688 (A100852 n).toNat

end

end A143228.P8088757738855985784

/-! ## A143228.P13430615281616271254

`A143211(n+1)-A295875(A074483(n))`
-/

namespace A143228.P13430615281616271254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143211 (n + 1) - A295875 (A074483 n).toNat

end

end A143228.P13430615281616271254

/-! ## A143228.P4407474787964790639

`A143211(n+1)+A010815(A016754(3*n+4))`
-/

namespace A143228.P4407474787964790639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143211 (n + 1) + A010815 (A016754 (3 * n + 4)).toNat

end

end A143228.P4407474787964790639

/-!
# A143229: a(n) = A000041(n) * A000070(n).

The programs for A143229, there is no canonical definition to state claims against.
-/

/-! ## A143229.P4790499428400041531

`A000041(n)*A000070(n)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A143229.P4790499428400041531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n * A000070 n

end

end A143229.P4790499428400041531

/-! ## A143229.P17535139507875458641

`sqrt(A001255(n))*A000070(n)`
-/

namespace A143229.P17535139507875458641
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A001255 n : ℝ) * (A000070 n : ℝ)

end

end A143229.P17535139507875458641

/-! ## A143229.P2364611545589178386

`∑[A002865(n)]*A000070(n)`
-/

namespace A143229.P2364611545589178386
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002865 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A000070 n

end

end A143229.P2364611545589178386

/-! ## A143229.P12722009166578633873

`(A000065(n)+1)*A000070(n)`
-/

namespace A143229.P12722009166578633873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000065 n + 1) * A000070 n

end

end A143229.P12722009166578633873

/-! ## A143229.P7204282363893055579

`A000041(n)*A025065(2*n)`
-/

namespace A143229.P7204282363893055579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n * A025065 (2 * n)

end

end A143229.P7204282363893055579

/-! ## A143229.P17922206079354095400

`A000070(n)*A035363(2*n)`
-/

namespace A143229.P17922206079354095400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000070 n * A035363 (2 * n)

end

end A143229.P17922206079354095400

/-! ## A143229.P1315478986981121901

`A000070(n)*A119620(2*n)`
-/

namespace A143229.P1315478986981121901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000070 n * A119620 (2 * n)

end

end A143229.P1315478986981121901

/-! ## A143229.P7607101702975921667

`A000070(n)/2*A139582(n)`
-/

namespace A143229.P7607101702975921667
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000070 n : ℚ) / 2 * (A139582 n : ℚ)

end

end A143229.P7607101702975921667

/-! ## A143229.P8853206964662662202

`record[∑[A035363(n)]*A035363(n)]`
-/

namespace A143229.P8853206964662662202
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035363 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f2 j) * A035363 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A143229.P8853206964662662202

/-! ## A143229.P4082647604516036244

`record[∑[A035377(n)]*A035377(n)]`
-/

namespace A143229.P4082647604516036244
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035377 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f2 j) * A035377 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A143229.P4082647604516036244

/-! ## A143229.P5394916155671014489

`record[∑[A035444(n)]*A035444(n)]`
-/

namespace A143229.P5394916155671014489
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035444 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f2 j) * A035444 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A143229.P5394916155671014489

/-! ## A143229.P5184884317083460680

`(A216053(n+1)-1)*A000041(n)`
-/

namespace A143229.P5184884317083460680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A216053 (n + 1) - 1) * A000041 n

end

end A143229.P5184884317083460680

/-! ## A143229.P17274616123541093050

`A025065(2*n)*A035363(2*n)`
-/

namespace A143229.P17274616123541093050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025065 (2 * n) * A035363 (2 * n)

end

end A143229.P17274616123541093050

/-! ## A143229.P13894218900932955097

`(A000065(n)+1)*∑[∑[A002865(n)]]`
-/

namespace A143229.P13894218900932955097
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002865 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000065 n + 1) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A143229.P13894218900932955097

/-! ## A143229.P3878531343123179825

`∑[A035363(2*n)]*∑[A002865(n)]`
-/

namespace A143229.P3878531343123179825
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035363 (2 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002865 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * (∑ j ∈ Finset.range (n + 1), f2 j)

end

end A143229.P3878531343123179825

/-! ## A143229.P5662410095957736844

`∑[A002865(n)]*∑[A139582(n)/2]`
-/

namespace A143229.P5662410095957736844
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002865 n

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A139582 n : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) * (∑ j ∈ Finset.range (n + 1), f2 j)

end

end A143229.P5662410095957736844

/-! ## A143229.P549347520544361196

`(A216053(n+1)-1)*∑[A002865(n)]`
-/

namespace A143229.P549347520544361196
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002865 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A216053 (n + 1) - 1) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A143229.P549347520544361196

/-! ## A143229.P3856300191629274020

`A139582(n)/2*∑[A035363(2*n)]`
-/

namespace A143229.P3856300191629274020
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035363 (2 * n)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A139582 n : ℚ) / 2 * ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ)

end

end A143229.P3856300191629274020

/-! ## A143229.P9726999960469390608

`A000070(n)*A035444(A008586(n))`
-/

namespace A143229.P9726999960469390608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000070 n * A035444 (A008586 n).toNat

end

end A143229.P9726999960469390608

/-! ## A143229.P13057859945789270901

`(A047967(n)+A000009(n))*A000070(n)`
-/

namespace A143229.P13057859945789270901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A047967 n + A000009 n) * A000070 n

end

end A143229.P13057859945789270901

/-!
# A143230: Triangle read by rows, A130207 * A000012 * A130207.

The programs for A143230, the canonical program `A143230.P75593432218593418` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A143230 has offset 1).

The definition of A143230 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A143230.P75593432218593418

`A000010(A002024(n+1))*A054526(n+1)`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A143230

/-- `A000010(A002024(n+1))*A054526(n+1)` -/
def P75593432218593418.Spec : Prop :=
  ∀ n, P75593432218593418.a n = A143230 (n + 1)

theorem P75593432218593418.correct : P75593432218593418.Spec := by
  intro n
  simp only [A143230, Nat.add_sub_cancel]

end A143230

/-! ## A143230.P7597826627910067524

`A000010(A002024(n+1))*A349137(A174028(n))`
-/

namespace A143230.P7597826627910067524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A002024 (n + 1)).toNat * A349137 (A174028 n).toNat

end

end A143230.P7597826627910067524

namespace A143230

/-- `A000010(A002024(n+1))*A349137(A174028(n))` -/
def P7597826627910067524.Spec : Prop :=
  ∀ n, P7597826627910067524.a n = A143230 (n + 1)

end A143230

/-! ## A143230.P541837267155938689

`A000010(A002024(n+1))*A067541(A158405(n+1))`
-/

namespace A143230.P541837267155938689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A002024 (n + 1)).toNat * A067541 (A158405 (n + 1)).toNat

end

end A143230.P541837267155938689

namespace A143230

/-- `A000010(A002024(n+1))*A067541(A158405(n+1))` -/
def P541837267155938689.Spec : Prop :=
  ∀ n, P541837267155938689.a n = A143230 (n + 1)

end A143230

/-! ## A143230.P5617066432014589252

`A000010(A002024(n+1))*A002260(A286235(n+1))`
-/

namespace A143230.P5617066432014589252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A002024 (n + 1)).toNat * A002260 (A286235 (n + 1)).toNat

end

end A143230.P5617066432014589252

namespace A143230

/-- `A000010(A002024(n+1))*A002260(A286235(n+1))` -/
def P5617066432014589252.Spec : Prop :=
  ∀ n, P5617066432014589252.a n = A143230 (n + 1)

end A143230

/-! ## A143230.P7318995085798167310

`(A109606(A002262(n)+1)+1)*A000010(A002024(n+1))`
-/

namespace A143230.P7318995085798167310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A109606 (A002262 n + 1).toNat + 1) * A000010 (A002024 (n + 1)).toNat

end

end A143230.P7318995085798167310

namespace A143230

/-- `(A109606(A002262(n)+1)+1)*A000010(A002024(n+1))` -/
def P7318995085798167310.Spec : Prop :=
  ∀ n, P7318995085798167310.a n = A143230 (n + 1)

end A143230

/-! ## A143230.P13786529391049031227

`A000010(1-A057944(n)+n)*A000010(A002024(n+1))`
-/

namespace A143230.P13786529391049031227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (1 - A057944 n + (n : ℤ)).toNat * A000010 (A002024 (n + 1)).toNat

end

end A143230.P13786529391049031227

namespace A143230

/-- `A000010(1-A057944(n)+n)*A000010(A002024(n+1))` -/
def P13786529391049031227.Spec : Prop :=
  ∀ n, P13786529391049031227.a n = A143230 (n + 1)

end A143230

/-!
# A143231: a(n) = A000010(n) * A002088(n).

The programs for A143231, the canonical program `A143231.P5537858308455081862` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A143231 has offset 1).

The definition of A143231 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, A002088, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A143231.P5537858308455081862

`A000010(n+1)*A002088(n+1)`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A143231

/-- `A000010(n+1)*A002088(n+1)` -/
def P5537858308455081862.Spec : Prop :=
  ∀ n, P5537858308455081862.a n = A143231 (n + 1)

theorem P5537858308455081862.correct : P5537858308455081862.Spec := by
  intro n
  simp only [A143231, Nat.add_sub_cancel]

end A143231

/-! ## A143231.P7616733220411571808

`(n+1)/∏{p}[n+1, #]*∏{p}[n+1, #-1]*∑[n-A219428(n+1)]`
-/

namespace A143231.P7616733220411571808
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A219428 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ) * ((∏ p ∈ Nat.primeFactors (f2 n), ((p : ℤ) - 1) : ℤ) : ℚ) * ((∑ j ∈ Finset.range (n + 1), f3 j : ℤ) : ℚ)

end

end A143231.P7616733220411571808

namespace A143231

/-- `(n+1)/∏{p}[n+1, #]*∏{p}[n+1, #-1]*∑[n-A219428(n+1)]` -/
def P7616733220411571808.Spec : Prop :=
  ∀ n, P7616733220411571808.a n = (A143231 (n + 1) : ℚ)

end A143231

/-! ## A143231.P11355452450798410611

`(n+1)/∏{p}[n+1, #]*∏{p}[n+1, #-1]*∑[1-A051953(n+1)+n]`
-/

namespace A143231.P11355452450798410611
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A051953 (n + 1) + (n : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ) * ((∏ p ∈ Nat.primeFactors (f2 n), ((p : ℤ) - 1) : ℤ) : ℚ) * ((∑ j ∈ Finset.range (n + 1), f3 j : ℤ) : ℚ)

end

end A143231.P11355452450798410611

namespace A143231

/-- `(n+1)/∏{p}[n+1, #]*∏{p}[n+1, #-1]*∑[1-A051953(n+1)+n]` -/
def P11355452450798410611.Spec : Prop :=
  ∀ n, P11355452450798410611.a n = (A143231 (n + 1) : ℚ)

end A143231

/-! ## A143231.P9799552390902521564

`Δ[A002088(n)]*A002088(n+1)`
-/

namespace A143231.P9799552390902521564
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002088 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A002088 (n + 1)

end

end A143231.P9799552390902521564

namespace A143231

/-- `Δ[A002088(n)]*A002088(n+1)` -/
def P9799552390902521564.Spec : Prop :=
  ∀ n, P9799552390902521564.a n = A143231 (n + 1)

end A143231

/-! ## A143231.P6365259866673867791

`Δ[A103116(n)]*A000010(n+1)`
-/

namespace A143231.P6365259866673867791
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103116 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A000010 (n + 1)

end

end A143231.P6365259866673867791

namespace A143231

/-- `Δ[A103116(n)]*A000010(n+1)` -/
def P6365259866673867791.Spec : Prop :=
  ∀ n, P6365259866673867791.a n = A143231 (n + 1)

end A143231

/-! ## A143231.P5001492285553796125

`A000010(n+1)*A092249(n+1)`
-/

namespace A143231.P5001492285553796125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1) * A092249 (n + 1)

end

end A143231.P5001492285553796125

namespace A143231

/-- `A000010(n+1)*A092249(n+1)` -/
def P5001492285553796125.Spec : Prop :=
  ∀ n, P5001492285553796125.a n = A143231 (n + 1)

end A143231

/-! ## A143231.P8639870680932394600

`∑[A000010(n+1)]*Δ[A005728(n)]`
-/

namespace A143231.P8639870680932394600
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005728 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * (f2 (n + 1) - f2 n)

end

end A143231.P8639870680932394600

namespace A143231

/-- `∑[A000010(n+1)]*Δ[A005728(n)]` -/
def P8639870680932394600.Spec : Prop :=
  ∀ n, P8639870680932394600.a n = A143231 (n + 1)

end A143231

/-! ## A143231.P6951691830072355157

`(A015614(n+1)+1)*A000010(n+1)`
-/

namespace A143231.P6951691830072355157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A015614 (n + 1) + 1) * A000010 (n + 1)

end

end A143231.P6951691830072355157

namespace A143231

/-- `(A015614(n+1)+1)*A000010(n+1)` -/
def P6951691830072355157.Spec : Prop :=
  ∀ n, P6951691830072355157.a n = A143231 (n + 1)

theorem P6951691830072355157.correct : P6951691830072355157.Spec := by
  intro n
  simp only [A143231, Nat.add_sub_cancel, A143231.P6951691830072355157.a, A143231.P5537858308455081862.a, A000010, A000010.P4673923239450215316.a, A002088, A002088.P8962335469571691680.f2, A002088.P8962335469571691680.f1, A002088.P8962335469571691680.a, A015614, A015614.P13535555482679389419.a, A000217, A000217.P10269402890581615239.a, A003557, A003557.P6364735403900941810.a, A007431, A007431.P16849793818733668455.f1, A007431.P16849793818733668455.a, A173557, A173557.P15666735857375843373.a, A185670, A185670.P7671735460308608982.a, A001221, A001221.P10258181745752134128.a, A007432, A007432.P16663120023730915232.f1, A007432.P16663120023730915232.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A023900, A023900.P6802385856234332486.f1, A023900.P6802385856234332486.a, A063985, A063985.P3942861327483730228.a, A100613, A100613.P7468063633472476903.a, A005089, A005089.P4329807401814625450.f1, A005089.P4329807401814625450.a, A005091, A005091.P2802037195389751204.f1, A005091.P2802037195389751204.a, A007428, A007428.P12532017655611739201.f1, A007428.P12532017655611739201.a, A059841, A059841.P2666504972441551157.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A143231

/-! ## A143231.P698576712400672491

`(A109606(n+1)+1)*A002088(n+1)`
-/

namespace A143231.P698576712400672491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A109606 (n + 1) + 1) * A002088 (n + 1)

end

end A143231.P698576712400672491

namespace A143231

/-- `(A109606(n+1)+1)*A002088(n+1)` -/
def P698576712400672491.Spec : Prop :=
  ∀ n, P698576712400672491.a n = A143231 (n + 1)

theorem P698576712400672491.correct : P698576712400672491.Spec := by
  intro n
  simp only [A143231, Nat.add_sub_cancel, A143231.P698576712400672491.a, A143231.P5537858308455081862.a, A000010, A000010.P4673923239450215316.a, A002088, A002088.P8962335469571691680.f2, A002088.P8962335469571691680.f1, A002088.P8962335469571691680.a, A109606, A109606.P2415810041766612210.a, A003557, A003557.P6364735403900941810.a, A007431, A007431.P16849793818733668455.f1, A007431.P16849793818733668455.a, A173557, A173557.P15666735857375843373.a, A001221, A001221.P10258181745752134128.a, A007432, A007432.P16663120023730915232.f1, A007432.P16663120023730915232.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A023900, A023900.P6802385856234332486.f1, A023900.P6802385856234332486.a, A005089, A005089.P4329807401814625450.f1, A005089.P4329807401814625450.a, A005091, A005091.P2802037195389751204.f1, A005091.P2802037195389751204.a, A007428, A007428.P12532017655611739201.f1, A007428.P12532017655611739201.a, A059841, A059841.P2666504972441551157.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A143231

/-! ## A143231.P13081806331083977536

`A002088(n+1)*A349137(2*n+1)`
-/

namespace A143231.P13081806331083977536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002088 (n + 1) * A349137 (2 * n + 1)

end

end A143231.P13081806331083977536

namespace A143231

/-- `A002088(n+1)*A349137(2*n+1)` -/
def P13081806331083977536.Spec : Prop :=
  ∀ n, P13081806331083977536.a n = A143231 (n + 1)

end A143231

/-! ## A143231.P14283653036636174750

`A319998(2*(n+1))/2*A002088(n+1)`
-/

namespace A143231.P14283653036636174750
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A319998 (2 * (n + 1)) : ℚ) / 2 * (A002088 (n + 1) : ℚ)

end

end A143231.P14283653036636174750

namespace A143231

/-- `A319998(2*(n+1))/2*A002088(n+1)` -/
def P14283653036636174750.Spec : Prop :=
  ∀ n, P14283653036636174750.a n = (A143231 (n + 1) : ℚ)

end A143231

/-! ## A143231.P5260575822417307951

`∑[A109606(n+1)+1]*Δ[A100449(n)/4]`
-/

namespace A143231.P5260575822417307951
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109606 (n + 1) + 1

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A100449 n : ℚ) / 4

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) * (f2 (n + 1) - f2 n)

end

end A143231.P5260575822417307951

namespace A143231

/-- `∑[A109606(n+1)+1]*Δ[A100449(n)/4]` -/
def P5260575822417307951.Spec : Prop :=
  ∀ n, P5260575822417307951.a n = (A143231 (n + 1) : ℚ)

end A143231

/-! ## A143231.P7299200439095877094

`∑[A039649(n+1)-1]*Δ[A100449(n)/4]`
-/

namespace A143231.P7299200439095877094
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039649 (n + 1) - 1

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A100449 n : ℚ) / 4

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) * (f2 (n + 1) - f2 n)

end

end A143231.P7299200439095877094

namespace A143231

/-- `∑[A039649(n+1)-1]*Δ[A100449(n)/4]` -/
def P7299200439095877094.Spec : Prop :=
  ∀ n, P7299200439095877094.a n = (A143231 (n + 1) : ℚ)

end A143231

/-! ## A143231.P4448343276147024795

`(A106481(n)+A106477(n))*A000010(n+1)`
-/

namespace A143231.P4448343276147024795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A106481 n + A106477 n) * A000010 (n + 1)

end

end A143231.P4448343276147024795

namespace A143231

/-- `(A106481(n)+A106477(n))*A000010(n+1)` -/
def P4448343276147024795.Spec : Prop :=
  ∀ n, P4448343276147024795.a n = A143231 (n + 1)

end A143231

/-! ## A143231.P12309469885861136165

`(A083239(n+1)+A083239(n))*A002088(n+1)`
-/

namespace A143231.P12309469885861136165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A083239 (n + 1) + A083239 n) * A002088 (n + 1)

end

end A143231.P12309469885861136165

namespace A143231

/-- `(A083239(n+1)+A083239(n))*A002088(n+1)` -/
def P12309469885861136165.Spec : Prop :=
  ∀ n, P12309469885861136165.a n = A143231 (n + 1)

end A143231

/-! ## A143231.P12835853180313503822

`(A091369(n+1)-A000217(n))*A000010(n+1)`
-/

namespace A143231.P12835853180313503822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A091369 (n + 1) - A000217 n) * A000010 (n + 1)

end

end A143231.P12835853180313503822

namespace A143231

/-- `(A091369(n+1)-A000217(n))*A000010(n+1)` -/
def P12835853180313503822.Spec : Prop :=
  ∀ n, P12835853180313503822.a n = A143231 (n + 1)

theorem P12835853180313503822.correct : P12835853180313503822.Spec := by
  intro n
  simp only [A143231, Nat.add_sub_cancel, A143231.P12835853180313503822.a, A143231.P5537858308455081862.a, A000010, A000010.P4673923239450215316.a, A000217, A000217.P10269402890581615239.a, A002088, A002088.P8962335469571691680.f2, A002088.P8962335469571691680.f1, A002088.P8962335469571691680.a, A091369, A091369.P3969440163011087150.a, A003557, A003557.P6364735403900941810.a, A007431, A007431.P16849793818733668455.f1, A007431.P16849793818733668455.a, A063985, A063985.P3942861327483730228.a, A173557, A173557.P15666735857375843373.a, A001221, A001221.P10258181745752134128.a, A007432, A007432.P16663120023730915232.f1, A007432.P16663120023730915232.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A023900, A023900.P6802385856234332486.f1, A023900.P6802385856234332486.a, A005089, A005089.P4329807401814625450.f1, A005089.P4329807401814625450.a, A005091, A005091.P2802037195389751204.f1, A005091.P2802037195389751204.a, A007428, A007428.P12532017655611739201.f1, A007428.P12532017655611739201.a, A059841, A059841.P2666504972441551157.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A143231

/-! ## A143231.P5101966022646168162

`(A092249(n+1)-A002088(n))*A092249(n+1)`
-/

namespace A143231.P5101966022646168162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A092249 (n + 1) - A002088 n) * A092249 (n + 1)

end

end A143231.P5101966022646168162

namespace A143231

/-- `(A092249(n+1)-A002088(n))*A092249(n+1)` -/
def P5101966022646168162.Spec : Prop :=
  ∀ n, P5101966022646168162.a n = A143231 (n + 1)

end A143231

/-! ## A143231.P13161207111871581651

`(A103116(n+1)-A103116(n))*A000010(n+1)`
-/

namespace A143231.P13161207111871581651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A103116 (n + 1) - A103116 n) * A000010 (n + 1)

end

end A143231.P13161207111871581651

namespace A143231

/-- `(A103116(n+1)-A103116(n))*A000010(n+1)` -/
def P13161207111871581651.Spec : Prop :=
  ∀ n, P13161207111871581651.a n = A143231 (n + 1)

end A143231

/-! ## A143231.P13319768732846281928

`(A053139(n+1)+A008683(n+1))*A002088(n+1)`
-/

namespace A143231.P13319768732846281928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A053139 (n + 1) + A008683 (n + 1)) * A002088 (n + 1)

end

end A143231.P13319768732846281928

namespace A143231

/-- `(A053139(n+1)+A008683(n+1))*A002088(n+1)` -/
def P13319768732846281928.Spec : Prop :=
  ∀ n, P13319768732846281928.a n = A143231 (n + 1)

end A143231

/-! ## A143231.P17236658729158898668

`A000010(n+1)*A005728(n+1)-A000010(n+1)`
-/

namespace A143231.P17236658729158898668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1) * A005728 (n + 1) - A000010 (n + 1)

end

end A143231.P17236658729158898668

namespace A143231

/-- `A000010(n+1)*A005728(n+1)-A000010(n+1)` -/
def P17236658729158898668.Spec : Prop :=
  ∀ n, P17236658729158898668.a n = A143231 (n + 1)

theorem P17236658729158898668.correct : P17236658729158898668.Spec := by
  intro n
  simp only [A143231, Nat.add_sub_cancel, A143231.P17236658729158898668.a, A143231.P5537858308455081862.a, A000010, A000010.P4673923239450215316.a, A002088, A002088.P8962335469571691680.f2, A002088.P8962335469571691680.f1, A002088.P8962335469571691680.a, A005728, A005728.P12032251568510858139.a, A003557, A003557.P6364735403900941810.a, A007431, A007431.P16849793818733668455.f1, A007431.P16849793818733668455.a, A173557, A173557.P15666735857375843373.a, A001221, A001221.P10258181745752134128.a, A007432, A007432.P16663120023730915232.f1, A007432.P16663120023730915232.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A023900, A023900.P6802385856234332486.f1, A023900.P6802385856234332486.a, A005089, A005089.P4329807401814625450.f1, A005089.P4329807401814625450.a, A005091, A005091.P2802037195389751204.f1, A005091.P2802037195389751204.a, A007428, A007428.P12532017655611739201.f1, A007428.P12532017655611739201.a, A059841, A059841.P2666504972441551157.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A143231

/-!
# A143232: Sum of denominators of Egyptian fraction expansion of A004001(n) - n/2.

The programs for A143232, the canonical program `A143232.P2526893967125323833` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A143232 has offset 1).

The definition of A143232 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A143232.P12555048719853533170

`A004001(n+1)+∑[(-2)^(n%2)]`
-/

namespace A143232.P12555048719853533170
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-2) ^ (n % 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004001 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A143232.P12555048719853533170

namespace A143232

/-- `A004001(n+1)+∑[(-2)^(n%2)]` -/
def P12555048719853533170.Spec : Prop :=
  ∀ n, P12555048719853533170.a n = A143232 (n + 1)

end A143232

/-! ## A143232.P5695393698511614566

`ceil(log2(gcd(2, n))+A004074(n+1)/2)`
-/

namespace A143232.P5695393698511614566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.logb 2 (Nat.gcd 2 n : ℝ) + ((A004074 (n + 1) : ℚ) / 2 : ℝ)⌉

end

end A143232.P5695393698511614566

namespace A143232

/-- `ceil(log2(gcd(2, n))+A004074(n+1)/2)` -/
def P5695393698511614566.Spec : Prop :=
  ∀ n, P5695393698511614566.a n = A143232 (n + 1)

end A143232

/-! ## A143232.P2526893967125323833

`ceil(xor(1, n)/2)+2-A080677(n+1)`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A143232

/-- `ceil(xor(1, n)/2)+2-A080677(n+1)` -/
def P2526893967125323833.Spec : Prop :=
  ∀ n, P2526893967125323833.a n = A143232 (n + 1)

theorem P2526893967125323833.correct : P2526893967125323833.Spec := by
  intro n
  simp only [A143232, Nat.add_sub_cancel]

end A143232

/-! ## A143232.P7597752011389427375

`A030451(A004074(n+1))`
-/

namespace A143232.P7597752011389427375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030451 (A004074 (n + 1)).toNat

end

end A143232.P7597752011389427375

namespace A143232

/-- `A030451(A004074(n+1))` -/
def P7597752011389427375.Spec : Prop :=
  ∀ n, P7597752011389427375.a n = A143232 (n + 1)

end A143232

/-! ## A143232.P15776785879048487394

`A028242(A004074(n+1)+1)`
-/

namespace A143232.P15776785879048487394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028242 (A004074 (n + 1) + 1).toNat

end

end A143232.P15776785879048487394

namespace A143232

/-- `A028242(A004074(n+1)+1)` -/
def P15776785879048487394.Spec : Prop :=
  ∀ n, P15776785879048487394.a n = A143232 (n + 1)

end A143232

/-! ## A143232.P10973458185138039257

`A110657(2*A004074(n+1))`
-/

namespace A143232.P10973458185138039257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110657 (2 * A004074 (n + 1)).toNat

end

end A143232.P10973458185138039257

namespace A143232

/-- `A110657(2*A004074(n+1))` -/
def P10973458185138039257.Spec : Prop :=
  ∀ n, P10973458185138039257.a n = A143232 (n + 1)

end A143232

/-! ## A143232.P13015104771021658818

`A226577(2*A004074(n+1))`
-/

namespace A143232.P13015104771021658818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226577 (2 * A004074 (n + 1)).toNat

end

end A143232.P13015104771021658818

namespace A143232

/-- `A226577(2*A004074(n+1))` -/
def P13015104771021658818.Spec : Prop :=
  ∀ n, P13015104771021658818.a n = A143232 (n + 1)

end A143232

/-! ## A143232.P16582724014910018914

`A084964(xor(1, A004074(n+1)))`
-/

namespace A143232.P16582724014910018914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084964 (Int.xor 1 (A004074 (n + 1))).toNat

end

end A143232.P16582724014910018914

namespace A143232

/-- `A084964(xor(1, A004074(n+1)))` -/
def P16582724014910018914.Spec : Prop :=
  ∀ n, P16582724014910018914.a n = A143232 (n + 1)

end A143232

/-! ## A143232.P12170027231480638499

`A028242(n)+2-A080677(n+1)`
-/

namespace A143232.P12170027231480638499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028242 n + (2 - A080677 (n + 1))

end

end A143232.P12170027231480638499

namespace A143232

/-- `A028242(n)+2-A080677(n+1)` -/
def P12170027231480638499.Spec : Prop :=
  ∀ n, P12170027231480638499.a n = A143232 (n + 1)

end A143232

/-! ## A143232.P1441363310938108483

`A028242(2*A004001(n+1)-n)`
-/

namespace A143232.P1441363310938108483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028242 (2 * A004001 (n + 1) - (n : ℤ)).toNat

end

end A143232.P1441363310938108483

namespace A143232

/-- `A028242(2*A004001(n+1)-n)` -/
def P1441363310938108483.Spec : Prop :=
  ∀ n, P1441363310938108483.a n = A143232 (n + 1)

end A143232

/-! ## A143232.P1578083389420790752

`A004001(n+1)+A028242(n)-n`
-/

namespace A143232.P1578083389420790752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004001 (n + 1) + (A028242 n - (n : ℤ))

end

end A143232.P1578083389420790752

namespace A143232

/-- `A004001(n+1)+A028242(n)-n` -/
def P1578083389420790752.Spec : Prop :=
  ∀ n, P1578083389420790752.a n = A143232 (n + 1)

end A143232

/-! ## A143232.P794078497694150209

`A004526(A004074(n+1)+gcd(2, n)²)`
-/

namespace A143232.P794078497694150209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A004074 (n + 1) + (Nat.gcd 2 n ^ 2 : ℤ)).toNat

end

end A143232.P794078497694150209

namespace A143232

/-- `A004526(A004074(n+1)+gcd(2, n)²)` -/
def P794078497694150209.Spec : Prop :=
  ∀ n, P794078497694150209.a n = A143232 (n + 1)

end A143232

/-! ## A143232.P7489796899529917661

`A028242(A005843(A004001(n+1))-n)`
-/

namespace A143232.P7489796899529917661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028242 (A005843 (A004001 (n + 1)).toNat - (n : ℤ)).toNat

end

end A143232.P7489796899529917661

namespace A143232

/-- `A028242(A005843(A004001(n+1))-n)` -/
def P7489796899529917661.Spec : Prop :=
  ∀ n, P7489796899529917661.a n = A143232 (n + 1)

end A143232

/-! ## A143232.P6877933829278186829

`A080513(A004074(n+1))-A000035(n)`
-/

namespace A143232.P6877933829278186829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080513 (A004074 (n + 1)).toNat - A000035 n

end

end A143232.P6877933829278186829

namespace A143232

/-- `A080513(A004074(n+1))-A000035(n)` -/
def P6877933829278186829.Spec : Prop :=
  ∀ n, P6877933829278186829.a n = A143232 (n + 1)

end A143232

/-! ## A143232.P15695406628213516713

`A110654(A004074(n+1))+Δ[A110654(n)]`
-/

namespace A143232.P15695406628213516713
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (A004074 (n + 1)).toNat + (f1 (n + 1) - f1 n)

end

end A143232.P15695406628213516713

namespace A143232

/-- `A110654(A004074(n+1))+Δ[A110654(n)]` -/
def P15695406628213516713.Spec : Prop :=
  ∀ n, P15695406628213516713.a n = A143232 (n + 1)

end A143232

/-! ## A143232.P14387420658340007489

`A080513(A004074(n+1))-Δ[A080513(n+1)]`
-/

namespace A143232.P14387420658340007489
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080513 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080513 (A004074 (n + 1)).toNat - (f1 (n + 1) - f1 n)

end

end A143232.P14387420658340007489

namespace A143232

/-- `A080513(A004074(n+1))-Δ[A080513(n+1)]` -/
def P14387420658340007489.Spec : Prop :=
  ∀ n, P14387420658340007489.a n = A143232 (n + 1)

end A143232

/-! ## A143232.P17078911668232590866

`abs(n-A285763(2*n+1))+1-a(n-1)` with `a(0)=2`
-/

namespace A143232.P17078911668232590866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  |(n : ℤ) - A285763 (2 * n + 1)| + 1 - a (n - 1)

end

end A143232.P17078911668232590866

namespace A143232

/-- `abs(n-A285763(2*n+1))+1-a(n-1)` -/
def P17078911668232590866.Spec : Prop :=
  ∀ n, P17078911668232590866.a n = A143232 (n + 1)

end A143232

/-! ## A143232.P890197771564897506

`A028242(A285763(2*(n+1))-n)`
-/

namespace A143232.P890197771564897506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028242 (A285763 (2 * (n + 1)) - (n : ℤ)).toNat

end

end A143232.P890197771564897506

namespace A143232

/-- `A028242(A285763(2*(n+1))-n)` -/
def P890197771564897506.Spec : Prop :=
  ∀ n, P890197771564897506.a n = A143232 (n + 1)

end A143232

/-! ## A143232.P5038618530452043174

`A001222(A135530(A004074(n+1)+1))`
-/

namespace A143232.P5038618530452043174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A135530 (A004074 (n + 1) + 1).toNat).toNat

end

end A143232.P5038618530452043174

namespace A143232

/-- `A001222(A135530(A004074(n+1)+1))` -/
def P5038618530452043174.Spec : Prop :=
  ∀ n, P5038618530452043174.a n = A143232 (n + 1)

end A143232

/-!
# A143235: Triangle read by rows: T(n,k) = tau(n)*tau(k), the product of the number of divisors.

The programs for A143235, the canonical program `A143235.P8249432583352221017` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A143235 has offset 1).

The definition of A143235 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A143235.P8249432583352221017

`A000005(A051173(n+1))*A051194(n+1)`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A143235

/-- `A000005(A051173(n+1))*A051194(n+1)` -/
def P8249432583352221017.Spec : Prop :=
  ∀ n, P8249432583352221017.a n = A143235 (n + 1)

theorem P8249432583352221017.correct : P8249432583352221017.Spec := by
  intro n
  simp only [A143235, Nat.add_sub_cancel]

end A143235

/-! ## A143235.P5500070762481748603

`A000005(A002024(n+1))*A000005(A002260(n+1))`
-/

namespace A143235.P5500070762481748603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A002024 (n + 1)).toNat * A000005 (A002260 (n + 1)).toNat

end

end A143235.P5500070762481748603

namespace A143235

/-- `A000005(A002024(n+1))*A000005(A002260(n+1))` -/
def P5500070762481748603.Spec : Prop :=
  ∀ n, P5500070762481748603.a n = A143235 (n + 1)

end A143235

/-! ## A143235.P5840552049217749043

`A000005(A002024(n+1))*A000005(A002262(n)+1)`
-/

namespace A143235.P5840552049217749043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A002024 (n + 1)).toNat * A000005 (A002262 n + 1).toNat

end

end A143235.P5840552049217749043

namespace A143235

/-- `A000005(A002024(n+1))*A000005(A002262(n)+1)` -/
def P5840552049217749043.Spec : Prop :=
  ∀ n, P5840552049217749043.a n = A143235 (n + 1)

end A143235

/-! ## A143235.P15721532911050601624

`A000005(A002260(n+1))*A000005(A003056(n)+1)`
-/

namespace A143235.P15721532911050601624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A002260 (n + 1)).toNat * A000005 (A003056 n + 1).toNat

end

end A143235.P15721532911050601624

namespace A143235

/-- `A000005(A002260(n+1))*A000005(A003056(n)+1)` -/
def P15721532911050601624.Spec : Prop :=
  ∀ n, P15721532911050601624.a n = A143235 (n + 1)

end A143235

/-! ## A143235.P6744362646761381618

`A000005(A002262(n)+1)*A000005(A003056(n)+1)`
-/

namespace A143235.P6744362646761381618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A002262 n + 1).toNat * A000005 (A003056 n + 1).toNat

end

end A143235.P6744362646761381618

namespace A143235

/-- `A000005(A002262(n)+1)*A000005(A003056(n)+1)` -/
def P6744362646761381618.Spec : Prop :=
  ∀ n, P6744362646761381618.a n = A143235 (n + 1)

end A143235

/-! ## A143235.P6047159176501451521

`A000005(A050873(n+1))*A000005(A051173(n+1))`
-/

namespace A143235.P6047159176501451521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A050873 (n + 1)).toNat * A000005 (A051173 (n + 1)).toNat

end

end A143235.P6047159176501451521

namespace A143235

/-- `A000005(A050873(n+1))*A000005(A051173(n+1))` -/
def P6047159176501451521.Spec : Prop :=
  ∀ n, P6047159176501451521.a n = A143235 (n + 1)

theorem P6047159176501451521.correct : P6047159176501451521.Spec := by
  intro n
  simp only [A143235, Nat.add_sub_cancel, A143235.P6047159176501451521.a, A143235.P8249432583352221017.a, A000005, A000005.P16091521709108585461.a, A050873, A050873.P9978690137907043901.a, A051173, A051173.P15389408228656621901.f1, A051173.P15389408228656621901.a, A051194, A051194.P17118644438746036718.a, A002024, A002024.P11700297927830783882.a, A002260, A002260.P769748059679640451.a, A010054, A010054.P18347828677204923252.a, A032741, A032741.P3022166995030670566.f1, A032741.P3022166995030670566.a, A002262, A002262.P12129691700837801527.a, A005369, A005369.P10796159359873341658.a, A057944, A057944.P16851463738746886639.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A143235

/-! ## A143235.P10985741584279744670

`A000005(A002260(n+1))*A114896(A057944(n))`
-/

namespace A143235.P10985741584279744670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A002260 (n + 1)).toNat * A114896 (A057944 n).toNat

end

end A143235.P10985741584279744670

namespace A143235

/-- `A000005(A002260(n+1))*A114896(A057944(n))` -/
def P10985741584279744670.Spec : Prop :=
  ∀ n, P10985741584279744670.a n = A143235 (n + 1)

end A143235

/-! ## A143235.P12126079888315840510

`A000005(A349520(2*n+1))*A000005(A349520(2*(n+1)))`
-/

namespace A143235.P12126079888315840510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A349520 (2 * n + 1)).toNat * A000005 (A349520 (2 * (n + 1))).toNat

end

end A143235.P12126079888315840510

namespace A143235

/-- `A000005(A349520(2*n+1))*A000005(A349520(2*(n+1)))` -/
def P12126079888315840510.Spec : Prop :=
  ∀ n, P12126079888315840510.a n = A143235 (n + 1)

end A143235

/-! ## A143235.P16582520162753465850

`A114896(A245300(n))`
-/

namespace A143235.P16582520162753465850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114896 (A245300 n).toNat

end

end A143235.P16582520162753465850

namespace A143235

/-- `A114896(A245300(n))` -/
def P16582520162753465850.Spec : Prop :=
  ∀ n, P16582520162753465850.a n = A143235 (n + 1)

end A143235

/-! ## A143235.P1066751072905759956

`A355731(A087112(n+1))`
-/

namespace A143235.P1066751072905759956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355731 (A087112 (n + 1)).toNat

end

end A143235.P1066751072905759956

namespace A143235

/-- `A355731(A087112(n+1))` -/
def P1066751072905759956.Spec : Prop :=
  ∀ n, P1066751072905759956.a n = A143235 (n + 1)

end A143235

/-!
# A143236: a(n) = A000005(n) * A006218(n).

The programs for A143236, the canonical program `A143236.P13310137451305250568` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A143236 has offset 1).

The definition of A143236 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000005(n+1)*A006218(n+1)` (program `A143236.P13310137451305250568`, by `A143236.P13310137451305250568.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A143236.P13310137451305250568

`A000005(n+1)*A006218(n+1)`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A143236

/-- `A000005(n+1)*A006218(n+1)` -/
def P13310137451305250568.Spec : Prop :=
  ∀ n, P13310137451305250568.a n = A143236 (n + 1)

theorem P13310137451305250568.correct : P13310137451305250568.Spec := by
  intro n
  simp only [A143236, Nat.add_sub_cancel]

end A143236

/-! ## A143236.P4983274452014383340

`∑[∏{e}[n+1, #+1]]*∏{e}[n+1, #+1]`
-/

namespace A143236.P4983274452014383340
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), (Nat.factorization (f2 n) p + 1)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * (∏ p ∈ Nat.primeFactors (f3 n), (Nat.factorization (f3 n) p + 1))

end

end A143236.P4983274452014383340

namespace A143236

/-- `∑[∏{e}[n+1, #+1]]*∏{e}[n+1, #+1]` -/
def P4983274452014383340.Spec : Prop :=
  ∀ n, (P4983274452014383340.a n : ℤ) = A143236 (n + 1)

end A143236

/-! ## A143236.P15049763264816657919

`∑{d}[n+1, A372709(#)]`
-/

namespace A143236.P15049763264816657919
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A372709 d

end

end A143236.P15049763264816657919

namespace A143236

/-- `∑{d}[n+1, A372709(#)]` -/
def P15049763264816657919.Spec : Prop :=
  ∀ n, P15049763264816657919.a n = A143236 (n + 1)

end A143236

/-! ## A143236.P11149019760644027555

`Δ[A006218(n)]*A006218(n+1)`
-/

namespace A143236.P11149019760644027555
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006218 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A006218 (n + 1)

end

end A143236.P11149019760644027555

namespace A143236

/-- `Δ[A006218(n)]*A006218(n+1)` -/
def P11149019760644027555.Spec : Prop :=
  ∀ n, P11149019760644027555.a n = A143236 (n + 1)

end A143236

/-! ## A143236.P10307774865303081311

`∑[A000005(n+1)]*Δ[A054519(n)]`
-/

namespace A143236.P10307774865303081311
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054519 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * (f2 (n + 1) - f2 n)

end

end A143236.P10307774865303081311

namespace A143236

/-- `∑[A000005(n+1)]*Δ[A054519(n)]` -/
def P10307774865303081311.Spec : Prop :=
  ∀ n, P10307774865303081311.a n = A143236 (n + 1)

end A143236

/-! ## A143236.P5648912778490902692

`(A032741(n+1)+1)*A006218(n+1)`
-/

namespace A143236.P5648912778490902692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A032741 (n + 1) + 1) * A006218 (n + 1)

end

end A143236.P5648912778490902692

namespace A143236

/-- `(A032741(n+1)+1)*A006218(n+1)` -/
def P5648912778490902692.Spec : Prop :=
  ∀ n, P5648912778490902692.a n = A143236 (n + 1)

end A143236

/-! ## A143236.P1500238300326001912

`∑[A320111(2*(n+1))]*A320111(2*(n+1))`
-/

namespace A143236.P1500238300326001912
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320111 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A320111 (2 * (n + 1))

end

end A143236.P1500238300326001912

namespace A143236

/-- `∑[A320111(2*(n+1))]*A320111(2*(n+1))` -/
def P1500238300326001912.Spec : Prop :=
  ∀ n, P1500238300326001912.a n = A143236 (n + 1)

end A143236

/-! ## A143236.P10417100967250524633

`A000196(A035116(n+1))*A006218(n+1)`
-/

namespace A143236.P10417100967250524633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A035116 (n + 1)).toNat * A006218 (n + 1)

end

end A143236.P10417100967250524633

namespace A143236

/-- `A000196(A035116(n+1))*A006218(n+1)` -/
def P10417100967250524633.Spec : Prop :=
  ∀ n, P10417100967250524633.a n = A143236 (n + 1)

end A143236

/-! ## A143236.P10083813638192310978

`A000005(n+1)*A000027(∑[A000005(n+1)])`
-/

namespace A143236.P10083813638192310978
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) * A000027 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A143236.P10083813638192310978

namespace A143236

/-- `A000005(n+1)*A000027(∑[A000005(n+1)])` -/
def P10083813638192310978.Spec : Prop :=
  ∀ n, P10083813638192310978.a n = A143236 (n + 1)

end A143236

/-! ## A143236.P653139722045333295

`(A098798(n+1)+A000203(n+1))*A000005(n+1)`
-/

namespace A143236.P653139722045333295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A098798 (n + 1) + A000203 (n + 1)) * A000005 (n + 1)

end

end A143236.P653139722045333295

namespace A143236

/-- `(A098798(n+1)+A000203(n+1))*A000005(n+1)` -/
def P653139722045333295.Spec : Prop :=
  ∀ n, P653139722045333295.a n = A143236 (n + 1)

theorem P653139722045333295.correct : P653139722045333295.Spec := by
  intro n
  simp only [A143236, Nat.add_sub_cancel, A143236.P653139722045333295.a, A143236.P13310137451305250568.a, A000005, A000005.P16091521709108585461.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A006218, A006218.P9218434490128439557.a, A098798, A098798.P14244074542585348825.a, A032741, A032741.P3022166995030670566.f1, A032741.P3022166995030670566.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A143236

/-! ## A143236.P11810717612524503213

`(A134156(n+1)+A049820(n+1))*A006218(n+1)`
-/

namespace A143236.P11810717612524503213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A134156 (n + 1) + A049820 (n + 1)) * A006218 (n + 1)

end

end A143236.P11810717612524503213

namespace A143236

/-- `(A134156(n+1)+A049820(n+1))*A006218(n+1)` -/
def P11810717612524503213.Spec : Prop :=
  ∀ n, P11810717612524503213.a n = A143236 (n + 1)

theorem P11810717612524503213.correct : P11810717612524503213.Spec := by
  intro n
  simp only [A143236, Nat.add_sub_cancel, A143236.P11810717612524503213.a, A143236.P13310137451305250568.a, A000005, A000005.P16091521709108585461.a, A006218, A006218.P9218434490128439557.a, A049820, A049820.P9428372222244335888.a, A134156, A134156.P1804567720612264438.a, A032741, A032741.P3022166995030670566.f1, A032741.P3022166995030670566.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A143236

/-! ## A143236.P9254128311511740261

`A000005(n+1)*A054519(n+1)-A000005(n+1)`
-/

namespace A143236.P9254128311511740261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) * A054519 (n + 1) - A000005 (n + 1)

end

end A143236.P9254128311511740261

namespace A143236

/-- `A000005(n+1)*A054519(n+1)-A000005(n+1)` -/
def P9254128311511740261.Spec : Prop :=
  ∀ n, P9254128311511740261.a n = A143236 (n + 1)

theorem P9254128311511740261.correct : P9254128311511740261.Spec := by
  intro n
  simp only [A143236, Nat.add_sub_cancel, A143236.P9254128311511740261.a, A143236.P13310137451305250568.a, A000005, A000005.P16091521709108585461.a, A006218, A006218.P9218434490128439557.a, A054519, A054519.P3292618312068876157.a, A032741, A032741.P3022166995030670566.f1, A032741.P3022166995030670566.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A143236

/-! ## A143236.P16058118362512775308

`(A006590(n+1)-A049820(n+1))*A000005(n+1)`
-/

namespace A143236.P16058118362512775308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A006590 (n + 1) - A049820 (n + 1)) * A000005 (n + 1)

end

end A143236.P16058118362512775308

namespace A143236

/-- `(A006590(n+1)-A049820(n+1))*A000005(n+1)` -/
def P16058118362512775308.Spec : Prop :=
  ∀ n, P16058118362512775308.a n = A143236 (n + 1)

end A143236

/-! ## A143236.P6262014972332364370

`(A002088(n+1)-A063088(n+1))*A000005(n+1)`
-/

namespace A143236.P6262014972332364370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A002088 (n + 1) - A063088 (n + 1)) * A000005 (n + 1)

end

end A143236.P6262014972332364370

namespace A143236

/-- `(A002088(n+1)-A063088(n+1))*A000005(n+1)` -/
def P6262014972332364370.Spec : Prop :=
  ∀ n, P6262014972332364370.a n = A143236 (n + 1)

theorem P6262014972332364370.correct : P6262014972332364370.Spec := by
  intro n
  simp only [A143236, Nat.add_sub_cancel, A143236.P6262014972332364370.a, A143236.P13310137451305250568.a, A000005, A000005.P16091521709108585461.a, A002088, A002088.P8962335469571691680.f2, A002088.P8962335469571691680.f1, A002088.P8962335469571691680.a, A006218, A006218.P9218434490128439557.a, A063088, A063088.P233869695303598364.a, A007431, A007431.P16849793818733668455.f1, A007431.P16849793818733668455.a, A032741, A032741.P3022166995030670566.f1, A032741.P3022166995030670566.a, A007432, A007432.P16663120023730915232.f1, A007432.P16663120023730915232.a, A007428, A007428.P12532017655611739201.f1, A007428.P12532017655611739201.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A143236

/-! ## A143236.P4890523310723754618

`(A077024(n+1)-A075989(n+1))*A000005(n+1)`
-/

namespace A143236.P4890523310723754618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A077024 (n + 1) - A075989 (n + 1)) * A000005 (n + 1)

end

end A143236.P4890523310723754618

namespace A143236

/-- `(A077024(n+1)-A075989(n+1))*A000005(n+1)` -/
def P4890523310723754618.Spec : Prop :=
  ∀ n, P4890523310723754618.a n = A143236 (n + 1)

end A143236

/-! ## A143236.P17935377676454902944

`(A052488(n+1)-A102722(n+1))*A000005(n+1)`
-/

namespace A143236.P17935377676454902944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A052488 (n + 1) - A102722 (n + 1)) * A000005 (n + 1)

end

end A143236.P17935377676454902944

namespace A143236

/-- `(A052488(n+1)-A102722(n+1))*A000005(n+1)` -/
def P17935377676454902944.Spec : Prop :=
  ∀ n, P17935377676454902944.a n = A143236 (n + 1)

theorem P17935377676454902944.correct : P17935377676454902944.Spec := by
  intro n
  simp only [A143236, Nat.add_sub_cancel, A143236.P17935377676454902944.a, A143236.P13310137451305250568.a, A000005, A000005.P16091521709108585461.a, A006218, A006218.P9218434490128439557.a, A052488, A052488.P11841203822231542227.f1, A052488.P11841203822231542227.a, A102722, A102722.P15212480551384616353.a, A032741, A032741.P3022166995030670566.f1, A032741.P3022166995030670566.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A143236

/-! ## A143236.P13727082381878540409

`(A000217(n+1)-A161664(n+1))*A000005(n+1)`
-/

namespace A143236.P13727082381878540409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000217 (n + 1) - A161664 (n + 1)) * A000005 (n + 1)

end

end A143236.P13727082381878540409

namespace A143236

/-- `(A000217(n+1)-A161664(n+1))*A000005(n+1)` -/
def P13727082381878540409.Spec : Prop :=
  ∀ n, P13727082381878540409.a n = A143236 (n + 1)

theorem P13727082381878540409.correct : P13727082381878540409.Spec := by
  intro n
  simp only [A143236, Nat.add_sub_cancel, A143236.P13727082381878540409.a, A143236.P13310137451305250568.a, A000005, A000005.P16091521709108585461.a, A000217, A000217.P10269402890581615239.a, A006218, A006218.P9218434490128439557.a, A161664, A161664.P17260438586018701071.a, A032741, A032741.P3022166995030670566.f1, A032741.P3022166995030670566.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A143236

/-! ## A143236.P17712639296178627366

`(A024916(n+1)-A236632(n+1))*A000005(n+1)`
-/

namespace A143236.P17712639296178627366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A024916 (n + 1) - A236632 (n + 1)) * A000005 (n + 1)

end

end A143236.P17712639296178627366

namespace A143236

/-- `(A024916(n+1)-A236632(n+1))*A000005(n+1)` -/
def P17712639296178627366.Spec : Prop :=
  ∀ n, P17712639296178627366.a n = A143236 (n + 1)

theorem P17712639296178627366.correct : P17712639296178627366.Spec := by
  intro n
  simp only [A143236, Nat.add_sub_cancel, A143236.P17712639296178627366.a, A143236.P13310137451305250568.a, A000005, A000005.P16091521709108585461.a, A006218, A006218.P9218434490128439557.a, A024916, A024916.P6070136297472608546.a, A236632, A236632.P7240843620257617603.a, A032741, A032741.P3022166995030670566.f1, A032741.P3022166995030670566.a, A160664, A160664.P14996881624845338289.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A143236

/-! ## A143236.P1256762957211223522

`A006218(n+1)/A035116(n+1)*A319089(n+1)`
-/

namespace A143236.P1256762957211223522
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A006218 (n + 1) : ℚ) / (A035116 (n + 1) : ℚ) * (A319089 (n + 1) : ℚ)

end

end A143236.P1256762957211223522

namespace A143236

/-- `A006218(n+1)/A035116(n+1)*A319089(n+1)` -/
def P1256762957211223522.Spec : Prop :=
  ∀ n, P1256762957211223522.a n = (A143236 (n + 1) : ℚ)

end A143236

/-! ## A143236.P8512869535570781367

`(A327326(n+1)+A005187(n+1))*A000005(n+1)`
-/

namespace A143236.P8512869535570781367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A327326 (n + 1) + A005187 (n + 1)) * A000005 (n + 1)

end

end A143236.P8512869535570781367

namespace A143236

/-- `(A327326(n+1)+A005187(n+1))*A000005(n+1)` -/
def P8512869535570781367.Spec : Prop :=
  ∀ n, P8512869535570781367.a n = A143236 (n + 1)

theorem P8512869535570781367.correct : P8512869535570781367.Spec := by
  intro n
  simp only [A143236, Nat.add_sub_cancel, A143236.P8512869535570781367.a, A143236.P13310137451305250568.a, A000005, A000005.P16091521709108585461.a, A005187, A005187.P3874015513960485494.a, A006218, A006218.P9218434490128439557.a, A327326, A327326.P15839165817513930619.a, A032741, A032741.P3022166995030670566.f1, A032741.P3022166995030670566.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A143236

/-!
# A143237: Triangle read by rows, T(n, k) = A000203(n)*A000203(k), for n >= 1, 1 <= k <= n.

The programs for A143237, the canonical program `A143237.P17615845201018552635` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A143237 has offset 1).

The definition of A143237 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A143237.P3087419088006875968

`A000203(∑[char[∑[n]]])*A245093(n+1)`
-/

namespace A143237.P3087419088006875968
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (∑ j ∈ Finset.range (n + 1), f1 j) * A245093 (n + 1)

end

end A143237.P3087419088006875968

namespace A143237

/-- `A000203(∑[char[∑[n]]])*A245093(n+1)` -/
def P3087419088006875968.Spec : Prop :=
  ∀ n, P3087419088006875968.a n = A143237 (n + 1)

end A143237

/-! ## A143237.P3580376835774455055

`A221529(C(comp[∑[n]]-n, 2))*A245093(n+1)`
-/

namespace A143237.P3580376835774455055
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221529 (Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2) * A245093 (n + 1)

end

end A143237.P3580376835774455055

namespace A143237

/-- `A221529(C(comp[∑[n]]-n, 2))*A245093(n+1)` -/
def P3580376835774455055.Spec : Prop :=
  ∀ n, P3580376835774455055.a n = A143237 (n + 1)

end A143237

/-! ## A143237.P17615845201018552635

`A245092(A131507(n))*A245093(n+1)`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A143237

/-- `A245092(A131507(n))*A245093(n+1)` -/
def P17615845201018552635.Spec : Prop :=
  ∀ n, P17615845201018552635.a n = A143237 (n + 1)

theorem P17615845201018552635.correct : P17615845201018552635.Spec := by
  intro n
  simp only [A143237, Nat.add_sub_cancel]

end A143237

/-! ## A143237.P11114438723206511334

`A000203(A002024(n+1))*A000203(A002260(n+1))`
-/

namespace A143237.P11114438723206511334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A002024 (n + 1)).toNat * A000203 (A002260 (n + 1)).toNat

end

end A143237.P11114438723206511334

namespace A143237

/-- `A000203(A002024(n+1))*A000203(A002260(n+1))` -/
def P11114438723206511334.Spec : Prop :=
  ∀ n, P11114438723206511334.a n = A143237 (n + 1)

end A143237

/-! ## A143237.P8407464390725762966

`A245093(n+1)*A245093(C(comp[∑[n]]-n, 2))`
-/

namespace A143237.P8407464390725762966
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245093 (n + 1) * A245093 (Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2)

end

end A143237.P8407464390725762966

namespace A143237

/-- `A245093(n+1)*A245093(C(comp[∑[n]]-n, 2))` -/
def P8407464390725762966.Spec : Prop :=
  ∀ n, P8407464390725762966.a n = A143237 (n + 1)

end A143237

/-! ## A143237.P7535793316078804044

`A245093(A127739(n+1))*A245093(n+1)`
-/

namespace A143237.P7535793316078804044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245093 (A127739 (n + 1)).toNat * A245093 (n + 1)

end

end A143237.P7535793316078804044

namespace A143237

/-- `A245093(A127739(n+1))*A245093(n+1)` -/
def P7535793316078804044.Spec : Prop :=
  ∀ n, P7535793316078804044.a n = A143237 (n + 1)

end A143237

/-! ## A143237.P13041369856208224137

`A000203(A051173(n+1))*A132442(n+1)`
-/

namespace A143237.P13041369856208224137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A051173 (n + 1)).toNat * A132442 (n + 1)

end

end A143237.P13041369856208224137

namespace A143237

/-- `A000203(A051173(n+1))*A132442(n+1)` -/
def P13041369856208224137.Spec : Prop :=
  ∀ n, P13041369856208224137.a n = A143237 (n + 1)

end A143237

/-! ## A143237.P3472245955592779754

`A069290(A093995(n+1))*A245093(n+1)`
-/

namespace A143237.P3472245955592779754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069290 (A093995 (n + 1)).toNat * A245093 (n + 1)

end

end A143237.P3472245955592779754

namespace A143237

/-- `A069290(A093995(n+1))*A245093(n+1)` -/
def P3472245955592779754.Spec : Prop :=
  ∀ n, P3472245955592779754.a n = A143237 (n + 1)

end A143237

/-! ## A143237.P13501226197624540140

`A000203(A349520(2*n+1))*A000203(A349520(2*(n+1)))`
-/

namespace A143237.P13501226197624540140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A349520 (2 * n + 1)).toNat * A000203 (A349520 (2 * (n + 1))).toNat

end

end A143237.P13501226197624540140

namespace A143237

/-- `A000203(A349520(2*n+1))*A000203(A349520(2*(n+1)))` -/
def P13501226197624540140.Spec : Prop :=
  ∀ n, P13501226197624540140.a n = A143237 (n + 1)

end A143237

/-! ## A143237.P511797303195759082

`A245093(2*A093995(n+1))*A245093(n+1)`
-/

namespace A143237.P511797303195759082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245093 (2 * A093995 (n + 1)).toNat * A245093 (n + 1)

end

end A143237.P511797303195759082

namespace A143237

/-- `A245093(2*A093995(n+1))*A245093(n+1)` -/
def P511797303195759082.Spec : Prop :=
  ∀ n, P511797303195759082.a n = A143237 (n + 1)

end A143237

/-!
# A143238: a(n) = A000203(n) * A024916(n).

The programs for A143238, the canonical program `A143238.P14069403323471333184` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A143238 has offset 1).

The definition of A143238 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A143238.P14069403323471333184

`A000203(n+1)*A024916(n+1)`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A143238

/-- `A000203(n+1)*A024916(n+1)` -/
def P14069403323471333184.Spec : Prop :=
  ∀ n, P14069403323471333184.a n = A143238 (n + 1)

theorem P14069403323471333184.correct : P14069403323471333184.Spec := by
  intro n
  simp only [A143238, Nat.add_sub_cancel]

end A143238

/-! ## A143238.P613622095672475745

`∑[∑{d}[n+1, #]]*∑{d}[n+1, #]`
-/

namespace A143238.P613622095672475745
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n), d

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * (∑ d ∈ Nat.divisors (f3 n), d)

end

end A143238.P613622095672475745

namespace A143238

/-- `∑[∑{d}[n+1, #]]*∑{d}[n+1, #]` -/
def P613622095672475745.Spec : Prop :=
  ∀ n, (P613622095672475745.a n : ℤ) = A143238 (n + 1)

end A143238

/-! ## A143238.P13310070152264578236

`Δ[A160664(n)]*A024916(n+1)`
-/

namespace A143238.P13310070152264578236
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160664 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A024916 (n + 1)

end

end A143238.P13310070152264578236

namespace A143238

/-- `Δ[A160664(n)]*A024916(n+1)` -/
def P13310070152264578236.Spec : Prop :=
  ∀ n, P13310070152264578236.a n = A143238 (n + 1)

end A143238

/-! ## A143238.P9301080862545277559

`∑[A000203(n+1)]*Δ[A160664(n)]`
-/

namespace A143238.P9301080862545277559
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160664 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * (f2 (n + 1) - f2 n)

end

end A143238.P9301080862545277559

namespace A143238

/-- `∑[A000203(n+1)]*Δ[A160664(n)]` -/
def P9301080862545277559.Spec : Prop :=
  ∀ n, P9301080862545277559.a n = A143238 (n + 1)

end A143238

/-! ## A143238.P18193939889749150444

`abs(A024916(n+1)*A143348(n+1))`
-/

namespace A143238.P18193939889749150444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A024916 (n + 1) * A143348 (n + 1)|

end

end A143238.P18193939889749150444

namespace A143238

/-- `abs(A024916(n+1)*A143348(n+1))` -/
def P18193939889749150444.Spec : Prop :=
  ∀ n, P18193939889749150444.a n = A143238 (n + 1)

end A143238

/-! ## A143238.P11882250153558758785

`sqrt(A072861(n+1))*A024916(n+1)`
-/

namespace A143238.P11882250153558758785
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A072861 (n + 1) : ℝ) * (A024916 (n + 1) : ℝ)

end

end A143238.P11882250153558758785

namespace A143238

/-- `sqrt(A072861(n+1))*A024916(n+1)` -/
def P11882250153558758785.Spec : Prop :=
  ∀ n, P11882250153558758785.a n = (A143238 (n + 1) : ℝ)

end A143238

/-! ## A143238.P10380066585701014627

`∑[A340793(n+1)]*A024916(n+1)`
-/

namespace A143238.P10380066585701014627
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340793 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A024916 (n + 1)

end

end A143238.P10380066585701014627

namespace A143238

/-- `∑[A340793(n+1)]*A024916(n+1)` -/
def P10380066585701014627.Spec : Prop :=
  ∀ n, P10380066585701014627.a n = A143238 (n + 1)

end A143238

/-! ## A143238.P11638374606335571242

`(A088580(n+1)-1)*A024916(n+1)`
-/

namespace A143238.P11638374606335571242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A088580 (n + 1) - 1) * A024916 (n + 1)

end

end A143238.P11638374606335571242

namespace A143238

/-- `(A088580(n+1)-1)*A024916(n+1)` -/
def P11638374606335571242.Spec : Prop :=
  ∀ n, P11638374606335571242.a n = A143238 (n + 1)

theorem P11638374606335571242.correct : P11638374606335571242.Spec := by
  intro n
  simp only [A143238, Nat.add_sub_cancel, A143238.P11638374606335571242.a, A143238.P14069403323471333184.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A024916, A024916.P6070136297472608546.a, A088580, A088580.P3089093194242277422.a, A160664, A160664.P14996881624845338289.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A143238

/-! ## A143238.P9355542935317150263

`(A160664(n+1)-1)*A000203(n+1)`
-/

namespace A143238.P9355542935317150263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A160664 (n + 1) - 1) * A000203 (n + 1)

end

end A143238.P9355542935317150263

namespace A143238

/-- `(A160664(n+1)-1)*A000203(n+1)` -/
def P9355542935317150263.Spec : Prop :=
  ∀ n, P9355542935317150263.a n = A143238 (n + 1)

theorem P9355542935317150263.correct : P9355542935317150263.Spec := by
  intro n
  simp only [A143238, Nat.add_sub_cancel, A143238.P9355542935317150263.a, A143238.P14069403323471333184.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A024916, A024916.P6070136297472608546.a, A160664, A160664.P14996881624845338289.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A143238

/-! ## A143238.P5676197340939620558

`A024916(n+1)*A245092(2*n+1)`
-/

namespace A143238.P5676197340939620558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024916 (n + 1) * A245092 (2 * n + 1)

end

end A143238.P5676197340939620558

namespace A143238

/-- `A024916(n+1)*A245092(2*n+1)` -/
def P5676197340939620558.Spec : Prop :=
  ∀ n, P5676197340939620558.a n = A143238 (n + 1)

end A143238

/-! ## A143238.P15342950721358494957

`A000203(n+1)/2*A327329(n+1)`
-/

namespace A143238.P15342950721358494957
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000203 (n + 1) : ℚ) / 2 * (A327329 (n + 1) : ℚ)

end

end A143238.P15342950721358494957

namespace A143238

/-- `A000203(n+1)/2*A327329(n+1)` -/
def P15342950721358494957.Spec : Prop :=
  ∀ n, P15342950721358494957.a n = (A143238 (n + 1) : ℚ)

theorem P15342950721358494957.correct : P15342950721358494957.Spec := by
  intro n
  simp only [A143238, Nat.add_sub_cancel, A143238.P15342950721358494957.a, A143238.P14069403323471333184.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A024916, A024916.P6070136297472608546.a, A327329, A327329.P5185755489289824233.a, A160664, A160664.P14996881624845338289.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A143238

/-! ## A143238.P7350227922855116944

`((n+1)²-A004125(n+1))*A000203(n+1)`
-/

namespace A143238.P7350227922855116944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((n + 1) ^ 2 : ℤ) - A004125 (n + 1)) * A000203 (n + 1)

end

end A143238.P7350227922855116944

namespace A143238

/-- `((n+1)²-A004125(n+1))*A000203(n+1)` -/
def P7350227922855116944.Spec : Prop :=
  ∀ n, P7350227922855116944.a n = A143238 (n + 1)

end A143238

/-! ## A143238.P9086219267986632722

`((n+1)²-A235799(n+1))*A024916(n+1)`
-/

namespace A143238.P9086219267986632722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((n + 1) ^ 2 : ℤ) - A235799 (n + 1)) * A024916 (n + 1)

end

end A143238.P9086219267986632722

namespace A143238

/-- `((n+1)²-A235799(n+1))*A024916(n+1)` -/
def P9086219267986632722.Spec : Prop :=
  ∀ n, P9086219267986632722.a n = A143238 (n + 1)

theorem P9086219267986632722.correct : P9086219267986632722.Spec := by
  intro n
  simp only [A143238, Nat.add_sub_cancel, A143238.P9086219267986632722.a, A143238.P14069403323471333184.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A024916, A024916.P6070136297472608546.a, A235799, A235799.P2518108065630090782.a, A000217, A000217.P10269402890581615239.a, A024816, A024816.P10728806423584859610.a, A160664, A160664.P14996881624845338289.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A143238

/-! ## A143238.P10272504504775764661

`(A001065(n+1)+1+n)*∑[A001065(n+1)+1+n]`
-/

namespace A143238.P10272504504775764661
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001065 (n + 1) + 1 + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A001065 (n + 1) + 1 + (n : ℤ)) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A143238.P10272504504775764661

namespace A143238

/-- `(A001065(n+1)+1+n)*∑[A001065(n+1)+1+n]` -/
def P10272504504775764661.Spec : Prop :=
  ∀ n, P10272504504775764661.a n = A143238 (n + 1)

end A143238

/-! ## A143238.P15635492446176974705

`(A155085(n+1)-(n+1))*∑[A155085(n+1)-(n+1)]`
-/

namespace A143238.P15635492446176974705
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155085 (n + 1) - (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A155085 (n + 1) - (n + 1 : ℤ)) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A143238.P15635492446176974705

namespace A143238

/-- `(A155085(n+1)-(n+1))*∑[A155085(n+1)-(n+1)]` -/
def P15635492446176974705.Spec : Prop :=
  ∀ n, P15635492446176974705.a n = A143238 (n + 1)

end A143238

/-! ## A143238.P7606292766781753727

`(A160664(n+1)-A160664(n))*A024916(n+1)`
-/

namespace A143238.P7606292766781753727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A160664 (n + 1) - A160664 n) * A024916 (n + 1)

end

end A143238.P7606292766781753727

namespace A143238

/-- `(A160664(n+1)-A160664(n))*A024916(n+1)` -/
def P7606292766781753727.Spec : Prop :=
  ∀ n, P7606292766781753727.a n = A143238 (n + 1)

end A143238

/-! ## A143238.P12682312845226095118

`(A076663(n+1)+A007429(n+1))*A000203(n+1)`
-/

namespace A143238.P12682312845226095118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A076663 (n + 1) + A007429 (n + 1)) * A000203 (n + 1)

end

end A143238.P12682312845226095118

namespace A143238

/-- `(A076663(n+1)+A007429(n+1))*A000203(n+1)` -/
def P12682312845226095118.Spec : Prop :=
  ∀ n, P12682312845226095118.a n = A143238 (n + 1)

theorem P12682312845226095118.correct : P12682312845226095118.Spec := by
  intro n
  simp only [A143238, Nat.add_sub_cancel, A143238.P12682312845226095118.a, A143238.P14069403323471333184.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A007429, A007429.P3226404755406933578.f1, A007429.P3226404755406933578.a, A024916, A024916.P6070136297472608546.a, A076663, A076663.P9173981958373011071.a, A001065, A001065.P4097147489331274860.a, A160664, A160664.P14996881624845338289.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A143238

/-! ## A143238.P2905031944245195423

`(A236632(n+1)+A006218(n+1))*A000203(n+1)`
-/

namespace A143238.P2905031944245195423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A236632 (n + 1) + A006218 (n + 1)) * A000203 (n + 1)

end

end A143238.P2905031944245195423

namespace A143238

/-- `(A236632(n+1)+A006218(n+1))*A000203(n+1)` -/
def P2905031944245195423.Spec : Prop :=
  ∀ n, P2905031944245195423.a n = A143238 (n + 1)

theorem P2905031944245195423.correct : P2905031944245195423.Spec := by
  intro n
  simp only [A143238, Nat.add_sub_cancel, A143238.P2905031944245195423.a, A143238.P14069403323471333184.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A006218, A006218.P9218434490128439557.a, A024916, A024916.P6070136297472608546.a, A236632, A236632.P7240843620257617603.a, A000005, A000005.P16091521709108585461.a, A160664, A160664.P14996881624845338289.a, A032741, A032741.P3022166995030670566.f1, A032741.P3022166995030670566.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A143238

/-! ## A143238.P15503380334198286428

`(A244049(n+1)+A034856(n+1))*A000203(n+1)`
-/

namespace A143238.P15503380334198286428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A244049 (n + 1) + A034856 (n + 1)) * A000203 (n + 1)

end

end A143238.P15503380334198286428

namespace A143238

/-- `(A244049(n+1)+A034856(n+1))*A000203(n+1)` -/
def P15503380334198286428.Spec : Prop :=
  ∀ n, P15503380334198286428.a n = A143238 (n + 1)

end A143238

/-! ## A143238.P6574275317497254924

`(A271342(n+1)+A078471(n+1))*A000203(n+1)`
-/

namespace A143238.P6574275317497254924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A271342 (n + 1) + A078471 (n + 1)) * A000203 (n + 1)

end

end A143238.P6574275317497254924

namespace A143238

/-- `(A271342(n+1)+A078471(n+1))*A000203(n+1)` -/
def P6574275317497254924.Spec : Prop :=
  ∀ n, P6574275317497254924.a n = A143238 (n + 1)

theorem P6574275317497254924.correct : P6574275317497254924.Spec := by
  intro n
  simp only [A143238, Nat.add_sub_cancel, A143238.P6574275317497254924.a, A143238.P14069403323471333184.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A024916, A024916.P6070136297472608546.a, A078471, A078471.P966964113016564166.a, A271342, A271342.P3433703997216414430.a, A000217, A000217.P10269402890581615239.a, A160664, A160664.P14996881624845338289.a, A333194, A333194.P13463208347369344208.f2, A333194.P13463208347369344208.f1, A333194.P13463208347369344208.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A143238

/-!
# A143239: Triangle read by rows, A126988 * A128407 as infinite lower triangular matrices.

The programs for A143239, the canonical program `A143239.P4788495363014780299` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A143239 has offset 1).

The definition of A143239 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A143239.P4788495363014780299

`A010766(n+1)*A054524(n+1)`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A143239

/-- `A010766(n+1)*A054524(n+1)` -/
def P4788495363014780299.Spec : Prop :=
  ∀ n, P4788495363014780299.a n = A143239 (n + 1)

theorem P4788495363014780299.correct : P4788495363014780299.Spec := by
  intro n
  simp only [A143239, Nat.add_sub_cancel]

end A143239

/-! ## A143239.P10231608856374082999

`A049834(n+1)*A054524(n+1)`
-/

namespace A143239.P10231608856374082999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049834 (n + 1) * A054524 (n + 1)

end

end A143239.P10231608856374082999

namespace A143239

/-- `A049834(n+1)*A054524(n+1)` -/
def P10231608856374082999.Spec : Prop :=
  ∀ n, P10231608856374082999.a n = A143239 (n + 1)

end A143239

/-! ## A143239.P6193551269643215216

`A051537(n+1)*A054524(n+1)`
-/

namespace A143239.P6193551269643215216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051537 (n + 1) * A054524 (n + 1)

end

end A143239.P6193551269643215216

namespace A143239

/-- `A051537(n+1)*A054524(n+1)` -/
def P6193551269643215216.Spec : Prop :=
  ∀ n, P6193551269643215216.a n = A143239 (n + 1)

end A143239

/-! ## A143239.P14295566366419527311

`A054524(n+1)*A054531(n+1)`
-/

namespace A143239.P14295566366419527311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054524 (n + 1) * A054531 (n + 1)

end

end A143239.P14295566366419527311

namespace A143239

/-- `A054524(n+1)*A054531(n+1)` -/
def P14295566366419527311.Spec : Prop :=
  ∀ n, P14295566366419527311.a n = A143239 (n + 1)

end A143239

/-! ## A143239.P18342776234179067184

`A054524(n+1)*A059026(n+1)`
-/

namespace A143239.P18342776234179067184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054524 (n + 1) * A059026 (n + 1)

end

end A143239.P18342776234179067184

namespace A143239

/-- `A054524(n+1)*A059026(n+1)` -/
def P18342776234179067184.Spec : Prop :=
  ∀ n, P18342776234179067184.a n = A143239 (n + 1)

end A143239

/-! ## A143239.P1799464645457381421

`A054524(n+1)*A126988(n+1)`
-/

namespace A143239.P1799464645457381421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054524 (n + 1) * A126988 (n + 1)

end

end A143239.P1799464645457381421

namespace A143239

/-- `A054524(n+1)*A126988(n+1)` -/
def P1799464645457381421.Spec : Prop :=
  ∀ n, P1799464645457381421.a n = A143239 (n + 1)

end A143239

/-! ## A143239.P11080054332185709332

`A054527(n+1)*A126988(n+1)`
-/

namespace A143239.P11080054332185709332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054527 (n + 1) * A126988 (n + 1)

end

end A143239.P11080054332185709332

namespace A143239

/-- `A054527(n+1)*A126988(n+1)` -/
def P11080054332185709332.Spec : Prop :=
  ∀ n, P11080054332185709332.a n = A143239 (n + 1)

end A143239

/-! ## A143239.P17789686981106423090

`A054534(n+1)*A126988(n+1)`
-/

namespace A143239.P17789686981106423090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054534 (n + 1) * A126988 (n + 1)

end

end A143239.P17789686981106423090

namespace A143239

/-- `A054534(n+1)*A126988(n+1)` -/
def P17789686981106423090.Spec : Prop :=
  ∀ n, P17789686981106423090.a n = A143239 (n + 1)

end A143239

/-! ## A143239.P5713030575125442133

`A051731(n+1)*A143349(n+1)`
-/

namespace A143239.P5713030575125442133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051731 (n + 1) * A143349 (n + 1)

end

end A143239.P5713030575125442133

namespace A143239

/-- `A051731(n+1)*A143349(n+1)` -/
def P5713030575125442133.Spec : Prop :=
  ∀ n, P5713030575125442133.a n = A143239 (n + 1)

end A143239

/-! ## A143239.P7313760325512492712

`A054524(n+1)*A219158(n+1)`
-/

namespace A143239.P7313760325512492712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054524 (n + 1) * A219158 (n + 1)

end

end A143239.P7313760325512492712

namespace A143239

/-- `A054524(n+1)*A219158(n+1)` -/
def P7313760325512492712.Spec : Prop :=
  ∀ n, P7313760325512492712.a n = A143239 (n + 1)

end A143239

/-! ## A143239.P6924445877552268117

`A054524(n+1)*A234575(n+1)`
-/

namespace A143239.P6924445877552268117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054524 (n + 1) * A234575 (n + 1)

end

end A143239.P6924445877552268117

namespace A143239

/-- `A054524(n+1)*A234575(n+1)` -/
def P6924445877552268117.Spec : Prop :=
  ∀ n, P6924445877552268117.a n = A143239 (n + 1)

end A143239

/-! ## A143239.P17515915207874757980

`A054524(n+1)*A372523(n+1)`
-/

namespace A143239.P17515915207874757980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054524 (n + 1) * A372523 (n + 1)

end

end A143239.P17515915207874757980

namespace A143239

/-- `A054524(n+1)*A372523(n+1)` -/
def P17515915207874757980.Spec : Prop :=
  ∀ n, P17515915207874757980.a n = A143239 (n + 1)

end A143239

/-! ## A143239.P8698099361896524202

`A143349(n+1)*A304569(n+1)`
-/

namespace A143239.P8698099361896524202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143349 (n + 1) * A304569 (n + 1)

end

end A143239.P8698099361896524202

namespace A143239

/-- `A143349(n+1)*A304569(n+1)` -/
def P8698099361896524202.Spec : Prop :=
  ∀ n, P8698099361896524202.a n = A143239 (n + 1)

end A143239

/-! ## A143239.P5838988353510589268

`A054524(n+1)²*A143349(n+1)`
-/

namespace A143239.P5838988353510589268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054524 (n + 1) ^ 2 * A143349 (n + 1)

end

end A143239.P5838988353510589268

namespace A143239

/-- `A054524(n+1)²*A143349(n+1)` -/
def P5838988353510589268.Spec : Prop :=
  ∀ n, P5838988353510589268.a n = A143239 (n + 1)

end A143239

/-! ## A143239.P18140813823066243748

`A008683(1-C(∑[char[∑[n]]], 2)+n)*A126988(n+1)`
-/

namespace A143239.P18140813823066243748
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (1 - (Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j) 2 : ℤ) + (n : ℤ)).toNat * A126988 (n + 1)

end

end A143239.P18140813823066243748

namespace A143239

/-- `A008683(1-C(∑[char[∑[n]]], 2)+n)*A126988(n+1)` -/
def P18140813823066243748.Spec : Prop :=
  ∀ n, P18140813823066243748.a n = A143239 (n + 1)

end A143239

/-! ## A143239.P17135694896666991324

`A008683(A002260(n+1))*A126988(n+1)`
-/

namespace A143239.P17135694896666991324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A002260 (n + 1)).toNat * A126988 (n + 1)

end

end A143239.P17135694896666991324

namespace A143239

/-- `A008683(A002260(n+1))*A126988(n+1)` -/
def P17135694896666991324.Spec : Prop :=
  ∀ n, P17135694896666991324.a n = A143239 (n + 1)

end A143239

/-! ## A143239.P11079080947460888008

`A008683(A002262(n)+1)*A126988(n+1)`
-/

namespace A143239.P11079080947460888008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A002262 n + 1).toNat * A126988 (n + 1)

end

end A143239.P11079080947460888008

namespace A143239

/-- `A008683(A002262(n)+1)*A126988(n+1)` -/
def P11079080947460888008.Spec : Prop :=
  ∀ n, P11079080947460888008.a n = A143239 (n + 1)

end A143239

/-! ## A143239.P17827124028383524363

`A008683(A050873(n+1))*A126988(n+1)`
-/

namespace A143239.P17827124028383524363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A050873 (n + 1)).toNat * A126988 (n + 1)

end

end A143239.P17827124028383524363

namespace A143239

/-- `A008683(A050873(n+1))*A126988(n+1)` -/
def P17827124028383524363.Spec : Prop :=
  ∀ n, P17827124028383524363.a n = A143239 (n + 1)

end A143239

/-! ## A143239.P13945423808574692893

`A054535(A038722(n+1))*A126988(n+1)`
-/

namespace A143239.P13945423808574692893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054535 (A038722 (n + 1)).toNat * A126988 (n + 1)

end

end A143239.P13945423808574692893

namespace A143239

/-- `A054535(A038722(n+1))*A126988(n+1)` -/
def P13945423808574692893.Spec : Prop :=
  ∀ n, P13945423808574692893.a n = A143239 (n + 1)

end A143239

/-! ## A143239.P10514188141162305934

`A008683(A123275(n+1))*A126988(n+1)`
-/

namespace A143239.P10514188141162305934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A123275 (n + 1)).toNat * A126988 (n + 1)

end

end A143239.P10514188141162305934

namespace A143239

/-- `A008683(A123275(n+1))*A126988(n+1)` -/
def P10514188141162305934.Spec : Prop :=
  ∀ n, P10514188141162305934.a n = A143239 (n + 1)

end A143239

/-!
# A143240: Expansion of Product_{k>0} (1 - x^(3*k)) / (1 - x^(3*k - 1)).

The programs for A143240, there is no canonical definition to state claims against.
-/

/-! ## A143240.P10567128010417880547

`Δ[A043534(A254670(A282647(n+1)))]`
-/

namespace A143240.P10567128010417880547
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043534 (A254670 (A282647 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A143240.P10567128010417880547

/-! ## A143240.P15602198595850100083

`Δ[floor(log(A325390(3*n+5)))]`
-/

namespace A143240.P15602198595850100083
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.log (A325390 (3 * n + 5) : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A143240.P15602198595850100083

/-! ## A143240.P10986672183301398798

`Δ[A297033(6*A234882(n+1))]`
-/

namespace A143240.P10986672183301398798
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297033 (6 * A234882 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A143240.P10986672183301398798

/-! ## A143240.P15778536979174954630

`A029883(A236026(3*n+1))^A329333(n+4)`
-/

namespace A143240.P15778536979174954630
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A029883 (A236026 (3 * n + 1)).toNat : ℚ) ^ (A329333 (n + 4) : ℤ)

end

end A143240.P15778536979174954630

/-! ## A143240.P7848358040037792821

`Δ[A064547(A026008(n)+n)]`
-/

namespace A143240.P7848358040037792821
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064547 (A026008 n + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A143240.P7848358040037792821

/-!
# A143241: Expansion of Product_{k>0} (1 - x^k) / (1 - x^(6*k - 2)).

The programs for A143241, there is no canonical definition to state claims against.
-/

/-! ## A143241.P8706458105560328215

`A014295(A014260(n)+A014257(n+3))`
-/

namespace A143241.P8706458105560328215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014295 (A014260 n + A014257 (n + 3)).toNat

end

end A143241.P8706458105560328215

/-! ## A143241.P5047059685154560557

`A030199(A275729(n)+A000931(2*n+3))`
-/

namespace A143241.P5047059685154560557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030199 (A275729 n + A000931 (2 * n + 3)).toNat

end

end A143241.P5047059685154560557

/-! ## A143241.P8558771001145493933

`A008683(A212322(n)*A252022(n+1))`
-/

namespace A143241.P8558771001145493933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A212322 n * A252022 (n + 1)).toNat

end

end A143241.P8558771001145493933

/-! ## A143241.P12943714215037717049

`A008683(A010786(n+1)-A281080(n+1))`
-/

namespace A143241.P12943714215037717049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A010786 (n + 1) - A281080 (n + 1)).toNat

end

end A143241.P12943714215037717049

/-! ## A143241.P2021974958487353932

`A281011(A226520(n+1)+A000700(3*(n+1)))`
-/

namespace A143241.P2021974958487353932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281011 (A226520 (n + 1) + A000700 (3 * (n + 1))).toNat

end

end A143241.P2021974958487353932

/-!
# A143242: Expansion of Product_{k>0} (1 - x^(9*k)) * (1-x^(9*k-2)) * (1-x^(9*k-7)) / ((1-x^(9*k-1)) * (1-x^(9*k-6)) * (1-x^(9*k-8))).

The programs for A143242, there is no canonical definition to state claims against.
-/

/-! ## A143242.P8720311296809773296

`(A017665(n+3)*A115583(3*(n+1)))²%3`
-/

namespace A143242.P8720311296809773296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((A017665 (n + 3) * A115583 (3 * (n + 1))) ^ 2) 3

end

end A143242.P8720311296809773296

/-! ## A143242.P6009881466366524716

`Δ[A039836(A175413(A175413(n+1)))]`
-/

namespace A143242.P6009881466366524716
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039836 (A175413 (A175413 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A143242.P6009881466366524716

/-! ## A143242.P9299244905671988857

`A023103(A254616(2*(n+1)))%A131714(n+1)`
-/

namespace A143242.P9299244905671988857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A023103 (A254616 (2 * (n + 1))).toNat) (A131714 (n + 1))

end

end A143242.P9299244905671988857

/-! ## A143242.P7691299412501691511

`A011655(C((n+1)/2^val(n+1, 2), A306297(n)))`
-/

namespace A143242.P7691299412501691511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011655 (Nat.choose (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (2 ^ SequenceMachineLib.valuation (n + 1) 2 : ℚ))).toNat (A306297 n).toNat)

end

end A143242.P7691299412501691511

/-! ## A143242.P12088801873168531440

`A053866(A348477(n+1)+A057498(n+1))`
-/

namespace A143242.P12088801873168531440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053866 (A348477 (n + 1) + A057498 (n + 1)).toNat

end

end A143242.P12088801873168531440

/-!
# A143243: a(n) = the smallest multiple of the n-th prime such that (a(n)+1) is divisible by both the (n-1)th prime and the (n+1)st prime.

The programs for A143243, there is no canonical definition to state claims against.
-/

/-! ## A143243.P1056690612642937558

`A046301(n+1)-A143244(n+2)`
-/

namespace A143243.P1056690612642937558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046301 (n + 1) - A143244 (n + 2)

end

end A143243.P1056690612642937558

/-!
# A143244: a(n) = the smallest multiple of the n-th prime such that (a(n)-1) is divisible by both the (n-1)th prime and the (n+1)st prime.

The programs for A143244, there is no canonical definition to state claims against.
-/

/-! ## A143244.P12302509053875350863

`A046301(n+1)-A143243(n+2)`
-/

namespace A143244.P12302509053875350863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046301 (n + 1) - A143243 (n + 2)

end

end A143244.P12302509053875350863

/-!
# A143245: Primes in A098957.

The programs for A143245, there is no canonical definition to state claims against.
-/

/-! ## A143245.P12252030800593231991

`A074832(A388055(n+1))`
-/

namespace A143245.P12252030800593231991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074832 (A388055 (n + 1)).toNat

end

end A143245.P12252030800593231991

/-! ## A143245.P13464625951495972294

`p?[A098957(n+1)]`
-/

namespace A143245.P13464625951495972294
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098957 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A143245.P13464625951495972294

/-! ## A143245.P7381902691376798640

`p?[A000040(n+1)-A265326(n+1)]`
-/

namespace A143245.P7381902691376798640
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) - A265326 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A143245.P7381902691376798640

/-! ## A143245.P3089091486286383009

`filter[A098957(n+1), A010051(#)]`
-/

namespace A143245.P3089091486286383009
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098957 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A143245.P3089091486286383009

/-! ## A143245.P12289437717977217802

`filter[A098957(n+1), A323153(#)]`
-/

namespace A143245.P12289437717977217802
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098957 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323153 (f1 j).toNat = 1) n)

end

end A143245.P12289437717977217802

/-! ## A143245.P14317062582913121335

`filter[A098957(n+1), A353670(#)]`
-/

namespace A143245.P14317062582913121335
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098957 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353670 (f1 j).toNat = 1) n)

end

end A143245.P14317062582913121335

/-! ## A143245.P7473257510986173090

`filter[A098957(n+2), A323152(#)]`
-/

namespace A143245.P7473257510986173090
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098957 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323152 (f1 j).toNat = 1) n)

end

end A143245.P7473257510986173090

/-! ## A143245.P17649081132674314597

`filter[A098957(n+2), A340371(#)]`
-/

namespace A143245.P17649081132674314597
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098957 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A340371 (f1 j).toNat = 1) n)

end

end A143245.P17649081132674314597

/-! ## A143245.P18389209262517693006

`p?[A162742(2*n+1)]`
-/

namespace A143245.P18389209262517693006
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162742 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A143245.P18389209262517693006

/-! ## A143245.P15144977395465728829

`filter[A162742(2*n+1), A010051(#)]`
-/

namespace A143245.P15144977395465728829
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162742 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A143245.P15144977395465728829

/-! ## A143245.P16966095943956879734

`filter[A162742(2*n+1), A323153(#)]`
-/

namespace A143245.P16966095943956879734
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162742 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323153 (f1 j).toNat = 1) n)

end

end A143245.P16966095943956879734

/-! ## A143245.P15654046975324419425

`filter[A162742(2*n+1), A353670(#)]`
-/

namespace A143245.P15654046975324419425
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162742 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353670 (f1 j).toNat = 1) n)

end

end A143245.P15654046975324419425

/-! ## A143245.P11185997006177636313

`filter[A162742(2*n+1), A379969(#)]`
-/

namespace A143245.P11185997006177636313
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162742 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A379969 (f1 j).toNat = 1) n)

end

end A143245.P11185997006177636313

/-! ## A143245.P2745456894008475190

`p?[A057889(p?[2*n+1])]`
-/

namespace A143245.P2745456894008475190
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057889 (f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A143245.P2745456894008475190

/-! ## A143245.P16399338701756702539

`A057889(A074832(n+1))`
-/

namespace A143245.P16399338701756702539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057889 (A074832 (n + 1)).toNat

end

end A143245.P16399338701756702539

/-! ## A143245.P1564706275885438538

`p?[A235027(n+3)]`
-/

namespace A143245.P1564706275885438538
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235027 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A143245.P1564706275885438538

/-! ## A143245.P2167105851391253896

`p?[A030101(p?[2*n+1])]`
-/

namespace A143245.P2167105851391253896
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030101 (f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A143245.P2167105851391253896

/-! ## A143245.P4382330261830657366

`p?[A056539(p?[2*n+1])]`
-/

namespace A143245.P4382330261830657366
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056539 (f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A143245.P4382330261830657366

/-! ## A143245.P4458590426166269648

`p?[A163807(p?[2*n+1])]`
-/

namespace A143245.P4458590426166269648
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163807 (f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A143245.P4458590426166269648

/-! ## A143245.P8375550868613543518

`p?[A165789(p?[2*n+1])]`
-/

namespace A143245.P8375550868613543518
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165789 (f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A143245.P8375550868613543518

/-!
# A143247: Number of (directed) Hamiltonian circuits in the Mycielski graph of order n.

The programs for A143247, there is no canonical definition to state claims against.
-/

/-! ## A143247.P7290311495632881441

`2*A307927(n+1)`
-/

namespace A143247.P7290311495632881441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A307927 (n + 1)

end

end A143247.P7290311495632881441

/-!
# A143249: Number of (directed) Hamiltonian circuits in the n-th order Andrásfai graph.

The programs for A143249, there is no canonical definition to state claims against.
-/

/-! ## A143249.P6050734972917003085

`2*A307902(n+1)`
-/

namespace A143249.P6050734972917003085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A307902 (n + 1)

end

end A143249.P6050734972917003085

/-! ## A143249.P12784730506924977285

`lcm(2, A307902(A000027(n+1)))`
-/

namespace A143249.P12784730506924977285
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A307902 (A000027 (n + 1)).toNat)

end

end A143249.P12784730506924977285

/-! ## A143249.P13736271788657956540

`A307902(A000027(n+1))+A307902(n+1)`
-/

namespace A143249.P13736271788657956540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307902 (A000027 (n + 1)).toNat + A307902 (n + 1)

end

end A143249.P13736271788657956540

/-! ## A143249.P3009517683216251082

`A307902(A153679(n+1))+A307902(n+1)`
-/

namespace A143249.P3009517683216251082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307902 (A153679 (n + 1)).toNat + A307902 (n + 1)

end

end A143249.P3009517683216251082

/-!
# A143250: Reverse binary expansion of the Fibonacci numbers.

The programs for A143250, there is no canonical definition to state claims against.
-/

/-! ## A143250.P5609571093987597818

`A030101(A167808(n+1))`
-/

namespace A143250.P5609571093987597818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030101 (A167808 (n + 1)).toNat

end

end A143250.P5609571093987597818

/-! ## A143250.P6624664755739473588

`A030101(A174883(n+1))`
-/

namespace A143250.P6624664755739473588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030101 (A174883 (n + 1)).toNat

end

end A143250.P6624664755739473588

/-! ## A143250.P10700264047782141438

`A281589(2*A174883(n+1))`
-/

namespace A143250.P10700264047782141438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281589 (2 * A174883 (n + 1)).toNat

end

end A143250.P10700264047782141438

/-! ## A143250.P965245390318808095

`A325401(2*A174883(n+1))`
-/

namespace A143250.P965245390318808095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325401 (2 * A174883 (n + 1)).toNat

end

end A143250.P965245390318808095

/-! ## A143250.P2959231305566544175

`A281589(lcm(2, A000045(n+1)))`
-/

namespace A143250.P2959231305566544175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281589 (Int.lcm 2 (A000045 (n + 1)))

end

end A143250.P2959231305566544175

/-!
# A143251: Expansion of f(-x, -x^7) * f(-x^2, -x^6) in powers of x where f(,) is Ramanujan's two-variable theta function.

The programs for A143251, there is no canonical definition to state claims against.
-/

/-! ## A143251.P7645034535416074576

`A121373(A231926(3*(n+1))%A321174(n))`
-/

namespace A143251.P7645034535416074576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121373 (Int.tmod (A231926 (3 * (n + 1))) (A321174 n)).toNat

end

end A143251.P7645034535416074576

/-! ## A143251.P5744887409195309628

`A008683(A003105(n+2)*A025147(3*n+2))`
-/

namespace A143251.P5744887409195309628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A003105 (n + 2) * A025147 (3 * n + 2)).toNat

end

end A143251.P5744887409195309628

/-! ## A143251.P8268985576855929733

`A008683(A084600(n)*A212607(n))`
-/

namespace A143251.P8268985576855929733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A084600 n * A212607 n).toNat

end

end A143251.P8268985576855929733

/-! ## A143251.P564806933920686088

`A008683(A252745(n)+A053478(n+1))`
-/

namespace A143251.P564806933920686088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A252745 n + A053478 (n + 1)).toNat

end

end A143251.P564806933920686088

/-!
# A143254: Triangle read by rows, T(n,k) = (4n-3)*(4k-3); 1<=k<=n.

The programs for A143254, the canonical program `A143254.P10504582063666441600` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A143254 has offset 1).

The definition of A143254 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A143254.P10504582063666441600

`A016813(A002262(n))*A016813(A003056(n))`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A143254

/-- `A016813(A002262(n))*A016813(A003056(n))` -/
def P10504582063666441600.Spec : Prop :=
  ∀ n, P10504582063666441600.a n = A143254 (n + 1)

theorem P10504582063666441600.correct : P10504582063666441600.Spec := by
  intro n
  simp only [A143254, Nat.add_sub_cancel]

end A143254

/-! ## A143254.P15779390721726389362

`A004273(A131507(n))*A016813(A002262(n))`
-/

namespace A143254.P15779390721726389362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (A131507 n).toNat * A016813 (A002262 n).toNat

end

end A143254.P15779390721726389362

namespace A143254

/-- `A004273(A131507(n))*A016813(A002262(n))` -/
def P15779390721726389362.Spec : Prop :=
  ∀ n, P15779390721726389362.a n = A143254 (n + 1)

end A143254

/-! ## A143254.P3410263614406002374

`A004273(A158405(n+1))*A004273(A131507(n))`
-/

namespace A143254.P3410263614406002374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (A158405 (n + 1)).toNat * A004273 (A131507 n).toNat

end

end A143254.P3410263614406002374

namespace A143254

/-- `A004273(A158405(n+1))*A004273(A131507(n))` -/
def P3410263614406002374.Spec : Prop :=
  ∀ n, P3410263614406002374.a n = A143254 (n + 1)

end A143254

/-! ## A143254.P15575503425513970424

`A017365(A151890(n))-A163676(n+1)`
-/

namespace A143254.P15575503425513970424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017365 (A151890 n).toNat - A163676 (n + 1)

end

end A143254.P15575503425513970424

namespace A143254

/-- `A017365(A151890(n))-A163676(n+1)` -/
def P15575503425513970424.Spec : Prop :=
  ∀ n, P15575503425513970424.a n = A143254 (n + 1)

end A143254

/-! ## A143254.P12710000038153628404

`A143218(A185868(n+1))`
-/

namespace A143254.P12710000038153628404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143218 (A185868 (n + 1)).toNat

end

end A143254.P12710000038153628404

namespace A143254

/-- `A143218(A185868(n+1))` -/
def P12710000038153628404.Spec : Prop :=
  ∀ n, P12710000038153628404.a n = A143254 (n + 1)

end A143254

/-! ## A143254.P13670994069702012514

`A017089(A143218(n+1))-A241747(n)`
-/

namespace A143254.P13670994069702012514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017089 (A143218 (n + 1)).toNat - A241747 n

end

end A143254.P13670994069702012514

namespace A143254

/-- `A017089(A143218(n+1))-A241747(n)` -/
def P13670994069702012514.Spec : Prop :=
  ∀ n, P13670994069702012514.a n = A143254 (n + 1)

end A143254

/-! ## A143254.P8973810711276970055

`A016813(A143218(n+1)-A094727(n+1))`
-/

namespace A143254.P8973810711276970055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016813 (A143218 (n + 1) - A094727 (n + 1)).toNat

end

end A143254.P8973810711276970055

namespace A143254

/-- `A016813(A143218(n+1)-A094727(n+1))` -/
def P8973810711276970055.Spec : Prop :=
  ∀ n, P8973810711276970055.a n = A143254 (n + 1)

end A143254

/-! ## A143254.P10802945462265986619

`A016885(A143218(n+1))-A163676(n+1)`
-/

namespace A143254.P10802945462265986619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016885 (A143218 (n + 1)).toNat - A163676 (n + 1)

end

end A143254.P10802945462265986619

namespace A143254

/-- `A016885(A143218(n+1))-A163676(n+1)` -/
def P10802945462265986619.Spec : Prop :=
  ∀ n, P10802945462265986619.a n = A143254 (n + 1)

end A143254

/-!
# A143255: Triangle read by rows, A128407 * A126988; 1<=k<=n.

The programs for A143255, the canonical program `A143255.P4690898372087737114` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A143255 has offset 1).

The definition of A143255 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A143255.P4690898372087737114

`A010766(n+1)*A128408(n+1)`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A143255

/-- `A010766(n+1)*A128408(n+1)` -/
def P4690898372087737114.Spec : Prop :=
  ∀ n, P4690898372087737114.a n = A143255 (n + 1)

theorem P4690898372087737114.correct : P4690898372087737114.Spec := by
  intro n
  simp only [A143255, Nat.add_sub_cancel]

end A143255

/-! ## A143255.P9936941413895674270

`A049834(n+1)*A128408(n+1)`
-/

namespace A143255.P9936941413895674270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049834 (n + 1) * A128408 (n + 1)

end

end A143255.P9936941413895674270

namespace A143255

/-- `A049834(n+1)*A128408(n+1)` -/
def P9936941413895674270.Spec : Prop :=
  ∀ n, P9936941413895674270.a n = A143255 (n + 1)

end A143255

/-! ## A143255.P11121144205009003153

`A051537(n+1)*A128408(n+1)`
-/

namespace A143255.P11121144205009003153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051537 (n + 1) * A128408 (n + 1)

end

end A143255.P11121144205009003153

namespace A143255

/-- `A051537(n+1)*A128408(n+1)` -/
def P11121144205009003153.Spec : Prop :=
  ∀ n, P11121144205009003153.a n = A143255 (n + 1)

end A143255

/-! ## A143255.P10060701940230742537

`A054531(n+1)*A128408(n+1)`
-/

namespace A143255.P10060701940230742537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054531 (n + 1) * A128408 (n + 1)

end

end A143255.P10060701940230742537

namespace A143255

/-- `A054531(n+1)*A128408(n+1)` -/
def P10060701940230742537.Spec : Prop :=
  ∀ n, P10060701940230742537.a n = A143255 (n + 1)

end A143255

/-! ## A143255.P1039220216734486412

`A059026(n+1)*A128408(n+1)`
-/

namespace A143255.P1039220216734486412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059026 (n + 1) * A128408 (n + 1)

end

end A143255.P1039220216734486412

namespace A143255

/-- `A059026(n+1)*A128408(n+1)` -/
def P1039220216734486412.Spec : Prop :=
  ∀ n, P1039220216734486412.a n = A143255 (n + 1)

end A143255

/-! ## A143255.P4446499165123837257

`A126988(n+1)*A127507(n+1)`
-/

namespace A143255.P4446499165123837257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126988 (n + 1) * A127507 (n + 1)

end

end A143255.P4446499165123837257

namespace A143255

/-- `A126988(n+1)*A127507(n+1)` -/
def P4446499165123837257.Spec : Prop :=
  ∀ n, P4446499165123837257.a n = A143255 (n + 1)

theorem P4446499165123837257.correct : P4446499165123837257.Spec := by
  intro n
  simp only [A143255, Nat.add_sub_cancel, A143255.P4446499165123837257.a, A143255.P4690898372087737114.a, A010766, A010766.P13358049683493517902.f1, A010766.P13358049683493517902.a, A126988, A126988.P9816827205040377566.a, A127507, A127507.P8560988778016771768.a, A128408, A128408.P3158238349057078599.a, A002260, A002260.P769748059679640451.a, A051731, A051731.P11318043630102858095.a, A054525, A054525.P5010349066179246070.f1, A054525.P5010349066179246070.a, A074909, A074909.P6707642907239843837.f1, A074909.P6707642907239843837.a, A000007, A000007.P6599383543502402472.a, A002262, A002262.P12129691700837801527.a, A007427, A007427.P16346481250890679101.f1, A007427.P16346481250890679101.a, A010054, A010054.P18347828677204923252.a, A048158, A048158.P5985551271054969895.a, A005369, A005369.P10796159359873341658.a, A051127, A051127.P6714805154847763680.a, A057944, A057944.P16851463738746886639.a, A122797, A122797.P12059737121592676741.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A143255

/-! ## A143255.P1561061756343656123

`A126988(n+1)*A128408(n+1)`
-/

namespace A143255.P1561061756343656123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126988 (n + 1) * A128408 (n + 1)

end

end A143255.P1561061756343656123

namespace A143255

/-- `A126988(n+1)*A128408(n+1)` -/
def P1561061756343656123.Spec : Prop :=
  ∀ n, P1561061756343656123.a n = A143255 (n + 1)

end A143255

/-! ## A143255.P8821287497889662213

`A143239(n+1)*A156241(n+1)`
-/

namespace A143255.P8821287497889662213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143239 (n + 1) * A156241 (n + 1)

end

end A143255.P8821287497889662213

namespace A143255

/-- `A143239(n+1)*A156241(n+1)` -/
def P8821287497889662213.Spec : Prop :=
  ∀ n, P8821287497889662213.a n = A143255 (n + 1)

end A143255

/-! ## A143255.P5558377460012096482

`A143349(n+1)*A156241(n+1)`
-/

namespace A143255.P5558377460012096482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143349 (n + 1) * A156241 (n + 1)

end

end A143255.P5558377460012096482

namespace A143255

/-- `A143349(n+1)*A156241(n+1)` -/
def P5558377460012096482.Spec : Prop :=
  ∀ n, P5558377460012096482.a n = A143255 (n + 1)

end A143255

/-! ## A143255.P4346787251844485573

`A128408(n+1)*A219158(n+1)`
-/

namespace A143255.P4346787251844485573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128408 (n + 1) * A219158 (n + 1)

end

end A143255.P4346787251844485573

namespace A143255

/-- `A128408(n+1)*A219158(n+1)` -/
def P4346787251844485573.Spec : Prop :=
  ∀ n, P4346787251844485573.a n = A143255 (n + 1)

end A143255

/-! ## A143255.P14705160381018979551

`A128408(n+1)*A234575(n+1)`
-/

namespace A143255.P14705160381018979551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128408 (n + 1) * A234575 (n + 1)

end

end A143255.P14705160381018979551

namespace A143255

/-- `A128408(n+1)*A234575(n+1)` -/
def P14705160381018979551.Spec : Prop :=
  ∀ n, P14705160381018979551.a n = A143255 (n + 1)

end A143255

/-! ## A143255.P13306658231160457931

`A128408(n+1)*A338797(n+1)`
-/

namespace A143255.P13306658231160457931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128408 (n + 1) * A338797 (n + 1)

end

end A143255.P13306658231160457931

namespace A143255

/-- `A128408(n+1)*A338797(n+1)` -/
def P13306658231160457931.Spec : Prop :=
  ∀ n, P13306658231160457931.a n = A143255 (n + 1)

end A143255

/-! ## A143255.P11080585897823166979

`A128408(n+1)*A372523(n+1)`
-/

namespace A143255.P11080585897823166979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128408 (n + 1) * A372523 (n + 1)

end

end A143255.P11080585897823166979

namespace A143255

/-- `A128408(n+1)*A372523(n+1)` -/
def P11080585897823166979.Spec : Prop :=
  ∀ n, P11080585897823166979.a n = A143255 (n + 1)

end A143255

/-! ## A143255.P10815459920767013808

`A008683(∑[char[∑[n]]])*A126988(n+1)`
-/

namespace A143255.P10815459920767013808
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (∑ j ∈ Finset.range (n + 1), f1 j) * A126988 (n + 1)

end

end A143255.P10815459920767013808

namespace A143255

/-- `A008683(∑[char[∑[n]]])*A126988(n+1)` -/
def P10815459920767013808.Spec : Prop :=
  ∀ n, P10815459920767013808.a n = A143255 (n + 1)

end A143255

/-! ## A143255.P5897130622251995751

`A141672(comp[∑[n]])`
-/

namespace A143255.P5897130622251995751
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141672 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A143255.P5897130622251995751

namespace A143255

/-- `A141672(comp[∑[n]])` -/
def P5897130622251995751.Spec : Prop :=
  ∀ n, P5897130622251995751.a n = A143255 (n + 1)

end A143255

/-! ## A143255.P13079067362824975287

`A007318(C(2, n))*A141672(A014132(n+1))`
-/

namespace A143255.P13079067362824975287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A141672 (A014132 (n + 1)).toNat

end

end A143255.P13079067362824975287

namespace A143255

/-- `A007318(C(2, n))*A141672(A014132(n+1))` -/
def P13079067362824975287.Spec : Prop :=
  ∀ n, P13079067362824975287.a n = A143255 (n + 1)

end A143255

/-! ## A143255.P8263930963803080270

`A141672(A014132(n+1))/A007318(C(3, n))`
-/

namespace A143255.P8263930963803080270
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A141672 (A014132 (n + 1)).toNat : ℚ) / (A007318 (Nat.choose 3 n) : ℚ)

end

end A143255.P8263930963803080270

namespace A143255

/-- `A141672(A014132(n+1))/A007318(C(3, n))` -/
def P8263930963803080270.Spec : Prop :=
  ∀ n, P8263930963803080270.a n = (A143255 (n + 1) : ℚ)

end A143255

/-! ## A143255.P16678647931193868112

`A126988(n+1)*A271102(A093995(n+1))`
-/

namespace A143255.P16678647931193868112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126988 (n + 1) * A271102 (A093995 (n + 1)).toNat

end

end A143255.P16678647931193868112

namespace A143255

/-- `A126988(n+1)*A271102(A093995(n+1))` -/
def P16678647931193868112.Spec : Prop :=
  ∀ n, P16678647931193868112.a n = A143255 (n + 1)

end A143255

/-! ## A143255.P11568861441664002383

`A141672(A014132(n+1))+A008683(60*(n+1))`
-/

namespace A143255.P11568861441664002383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141672 (A014132 (n + 1)).toNat + A008683 (60 * (n + 1))

end

end A143255.P11568861441664002383

namespace A143255

/-- `A141672(A014132(n+1))+A008683(60*(n+1))` -/
def P11568861441664002383.Spec : Prop :=
  ∀ n, P11568861441664002383.a n = A143255 (n + 1)

end A143255

/-!
# A143256: Triangle read by rows, matrix multiplication A051731 * A128407 * A127648, 1<=k<=n.

The programs for A143256, the canonical program `A143256.P573487630212465793` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A143256 has offset 1).

The definition of A143256 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A143256.P573487630212465793

`∑{d}[A127093(n+1), A046692(#)]`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A143256

/-- `∑{d}[A127093(n+1), A046692(#)]` -/
def P573487630212465793.Spec : Prop :=
  ∀ n, P573487630212465793.a n = A143256 (n + 1)

theorem P573487630212465793.correct : P573487630212465793.Spec := by
  intro n
  simp only [A143256, Nat.add_sub_cancel]

end A143256

/-! ## A143256.P8413448753157358498

`A002260(n+1)*A054524(n+1)`
-/

namespace A143256.P8413448753157358498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1) * A054524 (n + 1)

end

end A143256.P8413448753157358498

namespace A143256

/-- `A002260(n+1)*A054524(n+1)` -/
def P8413448753157358498.Spec : Prop :=
  ∀ n, P8413448753157358498.a n = A143256 (n + 1)

end A143256

/-! ## A143256.P15050283063746825829

`(A002262(n)+1)*A054524(n+1)`
-/

namespace A143256.P15050283063746825829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A002262 n + 1) * A054524 (n + 1)

end

end A143256.P15050283063746825829

namespace A143256

/-- `(A002262(n)+1)*A054524(n+1)` -/
def P15050283063746825829.Spec : Prop :=
  ∀ n, P15050283063746825829.a n = A143256 (n + 1)

end A143256

/-! ## A143256.P5667066862876480087

`A050873(n+1)*A054524(n+1)`
-/

namespace A143256.P5667066862876480087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050873 (n + 1) * A054524 (n + 1)

end

end A143256.P5667066862876480087

namespace A143256

/-- `A050873(n+1)*A054524(n+1)` -/
def P5667066862876480087.Spec : Prop :=
  ∀ n, P5667066862876480087.a n = A143256 (n + 1)

end A143256

/-! ## A143256.P13247970704584624311

`A054524(n+1)*A123275(n+1)`
-/

namespace A143256.P13247970704584624311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054524 (n + 1) * A123275 (n + 1)

end

end A143256.P13247970704584624311

namespace A143256

/-- `A054524(n+1)*A123275(n+1)` -/
def P13247970704584624311.Spec : Prop :=
  ∀ n, P13247970704584624311.a n = A143256 (n + 1)

end A143256

/-! ## A143256.P11610296761941032805

`A054524(n+1)*A127093(n+1)`
-/

namespace A143256.P11610296761941032805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054524 (n + 1) * A127093 (n + 1)

end

end A143256.P11610296761941032805

namespace A143256

/-- `A054524(n+1)*A127093(n+1)` -/
def P11610296761941032805.Spec : Prop :=
  ∀ n, P11610296761941032805.a n = A143256 (n + 1)

end A143256

/-! ## A143256.P2797613623683844269

`A054527(n+1)*A127093(n+1)`
-/

namespace A143256.P2797613623683844269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054527 (n + 1) * A127093 (n + 1)

end

end A143256.P2797613623683844269

namespace A143256

/-- `A054527(n+1)*A127093(n+1)` -/
def P2797613623683844269.Spec : Prop :=
  ∀ n, P2797613623683844269.a n = A143256 (n + 1)

end A143256

/-! ## A143256.P12144170028088139022

`A054534(n+1)*A127093(n+1)`
-/

namespace A143256.P12144170028088139022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054534 (n + 1) * A127093 (n + 1)

end

end A143256.P12144170028088139022

namespace A143256

/-- `A054534(n+1)*A127093(n+1)` -/
def P12144170028088139022.Spec : Prop :=
  ∀ n, P12144170028088139022.a n = A143256 (n + 1)

end A143256

/-! ## A143256.P3354394183425202811

`A054524(n+1)*A130106(n+1)`
-/

namespace A143256.P3354394183425202811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054524 (n + 1) * A130106 (n + 1)

end

end A143256.P3354394183425202811

namespace A143256

/-- `A054524(n+1)*A130106(n+1)` -/
def P3354394183425202811.Spec : Prop :=
  ∀ n, P3354394183425202811.a n = A143256 (n + 1)

end A143256

/-! ## A143256.P6902574739561995224

`A054527(n+1)*A130106(n+1)`
-/

namespace A143256.P6902574739561995224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054527 (n + 1) * A130106 (n + 1)

end

end A143256.P6902574739561995224

namespace A143256

/-- `A054527(n+1)*A130106(n+1)` -/
def P6902574739561995224.Spec : Prop :=
  ∀ n, P6902574739561995224.a n = A143256 (n + 1)

end A143256

/-! ## A143256.P5164242167757635028

`A054534(n+1)*A130106(n+1)`
-/

namespace A143256.P5164242167757635028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054534 (n + 1) * A130106 (n + 1)

end

end A143256.P5164242167757635028

namespace A143256

/-- `A054534(n+1)*A130106(n+1)` -/
def P5164242167757635028.Spec : Prop :=
  ∀ n, P5164242167757635028.a n = A143256 (n + 1)

end A143256

/-! ## A143256.P18000625041906882160

`A054524(n+1)*A334230(n+1)`
-/

namespace A143256.P18000625041906882160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054524 (n + 1) * A334230 (n + 1)

end

end A143256.P18000625041906882160

namespace A143256

/-- `A054524(n+1)*A334230(n+1)` -/
def P18000625041906882160.Spec : Prop :=
  ∀ n, P18000625041906882160.a n = A143256 (n + 1)

end A143256

/-! ## A143256.P17769742457220586744

`A054524(n+1)*A357554(n+1)`
-/

namespace A143256.P17769742457220586744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054524 (n + 1) * A357554 (n + 1)

end

end A143256.P17769742457220586744

namespace A143256

/-- `A054524(n+1)*A357554(n+1)` -/
def P17769742457220586744.Spec : Prop :=
  ∀ n, P17769742457220586744.a n = A143256 (n + 1)

end A143256

/-! ## A143256.P12945033633497775420

`A051731(n+1)*A055615(A002260(n+1))`
-/

namespace A143256.P12945033633497775420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051731 (n + 1) * A055615 (A002260 (n + 1)).toNat

end

end A143256.P12945033633497775420

namespace A143256

/-- `A051731(n+1)*A055615(A002260(n+1))` -/
def P12945033633497775420.Spec : Prop :=
  ∀ n, P12945033633497775420.a n = A143256 (n + 1)

end A143256

/-! ## A143256.P5132491108502080318

`A008683(A002260(n+1))*A127093(n+1)`
-/

namespace A143256.P5132491108502080318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A002260 (n + 1)).toNat * A127093 (n + 1)

end

end A143256.P5132491108502080318

namespace A143256

/-- `A008683(A002260(n+1))*A127093(n+1)` -/
def P5132491108502080318.Spec : Prop :=
  ∀ n, P5132491108502080318.a n = A143256 (n + 1)

end A143256

/-! ## A143256.P11491096736459391693

`A008683(A050873(n+1))*A127093(n+1)`
-/

namespace A143256.P11491096736459391693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A050873 (n + 1)).toNat * A127093 (n + 1)

end

end A143256.P11491096736459391693

namespace A143256

/-- `A008683(A050873(n+1))*A127093(n+1)` -/
def P11491096736459391693.Spec : Prop :=
  ∀ n, P11491096736459391693.a n = A143256 (n + 1)

end A143256

/-! ## A143256.P9711856028214804858

`∑{d}[A127093(n+1), A007427(#)*A127093(n+1)]`
-/

namespace A143256.P9711856028214804858
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127093 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A007427 d * A127093 (n + 1)

end

end A143256.P9711856028214804858

namespace A143256

/-- `∑{d}[A127093(n+1), A007427(#)*A127093(n+1)]` -/
def P9711856028214804858.Spec : Prop :=
  ∀ n, P9711856028214804858.a n = A143256 (n + 1)

end A143256

/-! ## A143256.P14471790486794927684

`(A002260(n+1)-A173541(n+1))*A008683(A002260(n+1))`
-/

namespace A143256.P14471790486794927684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A002260 (n + 1) - A173541 (n + 1)) * A008683 (A002260 (n + 1)).toNat

end

end A143256.P14471790486794927684

namespace A143256

/-- `(A002260(n+1)-A173541(n+1))*A008683(A002260(n+1))` -/
def P14471790486794927684.Spec : Prop :=
  ∀ n, P14471790486794927684.a n = A143256 (n + 1)

end A143256

/-! ## A143256.P15403192189775223830

`A008683(A002260(n+1)*A164306(n+1))*A002260(n+1)`
-/

namespace A143256.P15403192189775223830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A002260 (n + 1) * A164306 (n + 1)).toNat * A002260 (n + 1)

end

end A143256.P15403192189775223830

namespace A143256

/-- `A008683(A002260(n+1)*A164306(n+1))*A002260(n+1)` -/
def P15403192189775223830.Spec : Prop :=
  ∀ n, P15403192189775223830.a n = A143256 (n + 1)

end A143256

/-! ## A143256.P9291214480399737110

`A054524(n+1)*A307662(n+1)`
-/

namespace A143256.P9291214480399737110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054524 (n + 1) * A307662 (n + 1)

end

end A143256.P9291214480399737110

namespace A143256

/-- `A054524(n+1)*A307662(n+1)` -/
def P9291214480399737110.Spec : Prop :=
  ∀ n, P9291214480399737110.a n = A143256 (n + 1)

end A143256

/-!
# A143257: Reverse binary expansion of the factorial numbers.

The programs for A143257, the canonical program `A143257.P16987740070771962844` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A143257 has offset 0).

The definition of A143257 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A030101, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A143257.P16987740070771962844

`A030101(n!)`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A143257

/-- `A030101(n!)` -/
def P16987740070771962844.Spec : Prop :=
  ∀ n, P16987740070771962844.a n = A143257 n

theorem P16987740070771962844.correct : P16987740070771962844.Spec := by
  intro n
  simp only [A143257]

end A143257

/-! ## A143257.P11904443598065463402

`A057889(A049606(n))`
-/

namespace A143257.P11904443598065463402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057889 (A049606 n).toNat

end

end A143257.P11904443598065463402

namespace A143257

/-- `A057889(A049606(n))` -/
def P11904443598065463402.Spec : Prop :=
  ∀ n, P11904443598065463402.a n = A143257 n

end A143257

/-! ## A143257.P3096000612206012527

`A057889(gcd(A001147(n), A032184(n+1)))`
-/

namespace A143257.P3096000612206012527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057889 (Int.gcd (A001147 n) (A032184 (n + 1)))

end

end A143257.P3096000612206012527

namespace A143257

/-- `A057889(gcd(A001147(n), A032184(n+1)))` -/
def P3096000612206012527.Spec : Prop :=
  ∀ n, P3096000612206012527.a n = A143257 n

end A143257

/-! ## A143257.P14333125147930323129

`A057889(gcd(A000142(n), A067655(n+1)))`
-/

namespace A143257.P14333125147930323129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057889 (Int.gcd (A000142 n) (A067655 (n + 1)))

end

end A143257.P14333125147930323129

namespace A143257

/-- `A057889(gcd(A000142(n), A067655(n+1)))` -/
def P14333125147930323129.Spec : Prop :=
  ∀ n, P14333125147930323129.a n = A143257 n

end A143257

/-! ## A143257.P1766487286764135159

`A030101(∏[gcd(2*n, -∏[-n^(n%2)])])`
-/

namespace A143257.P1766487286764135159
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(n ^ (n % 2) : ℤ)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (2 * n : ℤ) (-(∏ j ∈ Finset.range (n + 1), f2 j))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030101 (∏ j ∈ Finset.range (n + 1), f1 j)

end

end A143257.P1766487286764135159

namespace A143257

/-- `A030101(∏[gcd(2*n, -∏[-n^(n%2)])])` -/
def P1766487286764135159.Spec : Prop :=
  ∀ n, P1766487286764135159.a n = A143257 n

end A143257

/-!
# A143258: Triangle read by rows, A054525 * A143257, 1<=k<=n.

The programs for A143258, there is no canonical definition to state claims against.
-/

/-! ## A143258.P2536810699629330359

`A000010(A141294(n+1))^A167688(A052905(n))!`
-/

namespace A143258.P2536810699629330359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A141294 (n + 1)).toNat ^ Nat.factorial (A167688 (A052905 n).toNat).toNat

end

end A143258.P2536810699629330359

/-! ## A143258.P17490429892779680991

`A000010(gcd(A010766(n+1), A246174(n+2)))`
-/

namespace A143258.P17490429892779680991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (Int.gcd (A010766 (n + 1)) (A246174 (n + 2)))

end

end A143258.P17490429892779680991

/-! ## A143258.P5771903241699730690

`A057828(A085383(n+1))^A097031(A322800(n))`
-/

namespace A143258.P5771903241699730690
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A057828 (A085383 (n + 1)).toNat : ℚ) ^ (A097031 (A322800 n).toNat : ℤ)

end

end A143258.P5771903241699730690

/-! ## A143258.P15711412485421206998

`A057828(A085383(n+1))%A098707(n+1)`
-/

namespace A143258.P15711412485421206998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A057828 (A085383 (n + 1)).toNat) (A098707 (n + 1))

end

end A143258.P15711412485421206998

/-! ## A143258.P12781001812764722552

`A084301(A106766(n+1))+A000010(A141294(n+1))`
-/

namespace A143258.P12781001812764722552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084301 (A106766 (n + 1)).toNat + A000010 (A141294 (n + 1)).toNat

end

end A143258.P12781001812764722552

/-!
# A143259: a(n) = 1 if n is a nonzero square, -1 if n is twice a nonzero square, 0 otherwise.

The programs for A143259, the canonical program `A143259.P1082884645466635288` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A143259 has offset 1).

The definition of A143259 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A008836, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A143259.P1082884645466635288

`A008836(n+1)*A053866(n+1)`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A143259

/-- `A008836(n+1)*A053866(n+1)` -/
def P1082884645466635288.Spec : Prop :=
  ∀ n, P1082884645466635288.a n = A143259 (n + 1)

theorem P1082884645466635288.correct : P1082884645466635288.Spec := by
  intro n
  simp only [A143259, Nat.add_sub_cancel]

end A143259

/-! ## A143259.P3843439630467469264

`A061020(n+1)%2`
-/

namespace A143259.P3843439630467469264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A061020 (n + 1)) 2

end

end A143259.P3843439630467469264

namespace A143259

/-- `A061020(n+1)%2` -/
def P3843439630467469264.Spec : Prop :=
  ∀ n, P3843439630467469264.a n = A143259 (n + 1)

end A143259

/-! ## A143259.P3467212498852625995

`A071323(n+1)%2`
-/

namespace A143259.P3467212498852625995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A071323 (n + 1)) 2

end

end A143259.P3467212498852625995

namespace A143259

/-- `A071323(n+1)%2` -/
def P3467212498852625995.Spec : Prop :=
  ∀ n, P3467212498852625995.a n = A143259 (n + 1)

end A143259

/-! ## A143259.P4563504483420081707

`A076792(n+1)%2`
-/

namespace A143259.P4563504483420081707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A076792 (n + 1)) 2

end

end A143259.P4563504483420081707

namespace A143259

/-- `A076792(n+1)%2` -/
def P4563504483420081707.Spec : Prop :=
  ∀ n, P4563504483420081707.a n = A143259 (n + 1)

end A143259

/-! ## A143259.P997692930819946586

`A118209(n+1)%2`
-/

namespace A143259.P997692930819946586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A118209 (n + 1)) 2

end

end A143259.P997692930819946586

namespace A143259

/-- `A118209(n+1)%2` -/
def P997692930819946586.Spec : Prop :=
  ∀ n, P997692930819946586.a n = A143259 (n + 1)

end A143259

/-! ## A143259.P5519557360170809160

`round(A358272(n+1)/(n+1))`
-/

namespace A143259.P5519557360170809160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A358272 (n + 1) : ℚ) / (n + 1 : ℚ))

end

end A143259.P5519557360170809160

namespace A143259

/-- `round(A358272(n+1)/(n+1))` -/
def P5519557360170809160.Spec : Prop :=
  ∀ n, P5519557360170809160.a n = A143259 (n + 1)

end A143259

/-! ## A143259.P9408030808449106904

`∑{d}[n+1, #*A008836(#)]%2`
-/

namespace A143259.P9408030808449106904
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A008836 d) 2

end

end A143259.P9408030808449106904

namespace A143259

/-- `∑{d}[n+1, #*A008836(#)]%2` -/
def P9408030808449106904.Spec : Prop :=
  ∀ n, P9408030808449106904.a n = A143259 (n + 1)

end A143259

/-! ## A143259.P4554224697295982351

`(-1)^val(n+1, 2)*A010052((n+1)/2^val(n+1, 2))`
-/

namespace A143259.P4554224697295982351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ SequenceMachineLib.valuation (n + 1) 2 * A010052 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (2 ^ SequenceMachineLib.valuation (n + 1) 2 : ℚ))).toNat

end

end A143259.P4554224697295982351

namespace A143259

/-- `(-1)^val(n+1, 2)*A010052((n+1)/2^val(n+1, 2))` -/
def P4554224697295982351.Spec : Prop :=
  ∀ n, P4554224697295982351.a n = A143259 (n + 1)

end A143259

/-! ## A143259.P2990868902518912594

`A154269(A007913(n+1))`
-/

namespace A143259.P2990868902518912594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154269 (A007913 (n + 1)).toNat

end

end A143259.P2990868902518912594

namespace A143259

/-- `A154269(A007913(n+1))` -/
def P2990868902518912594.Spec : Prop :=
  ∀ n, P2990868902518912594.a n = A143259 (n + 1)

end A143259

/-! ## A143259.P6057613153781864081

`A154269(A037449(n+1))`
-/

namespace A143259.P6057613153781864081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154269 (A037449 (n + 1)).toNat

end

end A143259.P6057613153781864081

namespace A143259

/-- `A154269(A037449(n+1))` -/
def P6057613153781864081.Spec : Prop :=
  ∀ n, P6057613153781864081.a n = A143259 (n + 1)

end A143259

/-! ## A143259.P320531252096526664

`A154269(A038387(n+1))`
-/

namespace A143259.P320531252096526664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154269 (A038387 (n + 1)).toNat

end

end A143259.P320531252096526664

namespace A143259

/-- `A154269(A038387(n+1))` -/
def P320531252096526664.Spec : Prop :=
  ∀ n, P320531252096526664.a n = A143259 (n + 1)

end A143259

/-! ## A143259.P11109399310425361284

`A154269(A056135(n+1))`
-/

namespace A143259.P11109399310425361284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154269 (A056135 (n + 1)).toNat

end

end A143259.P11109399310425361284

namespace A143259

/-- `A154269(A056135(n+1))` -/
def P11109399310425361284.Spec : Prop :=
  ∀ n, P11109399310425361284.a n = A143259 (n + 1)

end A143259

/-! ## A143259.P3903707108705281431

`A181563(A065883(n+1))`
-/

namespace A143259.P3903707108705281431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181563 (A065883 (n + 1)).toNat

end

end A143259.P3903707108705281431

namespace A143259

/-- `A181563(A065883(n+1))` -/
def P3903707108705281431.Spec : Prop :=
  ∀ n, P3903707108705281431.a n = A143259 (n + 1)

end A143259

/-! ## A143259.P4261950051214885890

`A154269(A204993(n+1))`
-/

namespace A143259.P4261950051214885890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154269 (A204993 (n + 1)).toNat

end

end A143259.P4261950051214885890

namespace A143259

/-- `A154269(A204993(n+1))` -/
def P4261950051214885890.Spec : Prop :=
  ∀ n, P4261950051214885890.a n = A143259 (n + 1)

end A143259

/-! ## A143259.P13041134800772928886

`2-A020639(A351569(n+1))`
-/

namespace A143259.P13041134800772928886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A020639 (A351569 (n + 1)).toNat

end

end A143259.P13041134800772928886

namespace A143259

/-- `2-A020639(A351569(n+1))` -/
def P13041134800772928886.Spec : Prop :=
  ∀ n, P13041134800772928886.a n = A143259 (n + 1)

end A143259

/-! ## A143259.P5914329800814410946

`A057077(n)*A214509(n+1)`
-/

namespace A143259.P5914329800814410946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057077 n * A214509 (n + 1)

end

end A143259.P5914329800814410946

namespace A143259

/-- `A057077(n)*A214509(n+1)` -/
def P5914329800814410946.Spec : Prop :=
  ∀ n, P5914329800814410946.a n = A143259 (n + 1)

end A143259

/-! ## A143259.P5318202009723856439

`A093829(n+1)%A014710(n)`
-/

namespace A143259.P5318202009723856439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A093829 (n + 1)) (A014710 n)

end

end A143259.P5318202009723856439

namespace A143259

/-- `A093829(n+1)%A014710(n)` -/
def P5318202009723856439.Spec : Prop :=
  ∀ n, P5318202009723856439.a n = A143259 (n + 1)

end A143259

/-! ## A143259.P2552692264170762557

`A103440(n+1)%A014710(n)`
-/

namespace A143259.P2552692264170762557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A103440 (n + 1)) (A014710 n)

end

end A143259.P2552692264170762557

namespace A143259

/-- `A103440(n+1)%A014710(n)` -/
def P2552692264170762557.Spec : Prop :=
  ∀ n, P2552692264170762557.a n = A143259 (n + 1)

end A143259

/-! ## A143259.P1226042316408909137

`A112298(n+1)%A014710(n)`
-/

namespace A143259.P1226042316408909137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A112298 (n + 1)) (A014710 n)

end

end A143259.P1226042316408909137

namespace A143259

/-- `A112298(n+1)%A014710(n)` -/
def P1226042316408909137.Spec : Prop :=
  ∀ n, P1226042316408909137.a n = A143259 (n + 1)

end A143259

/-! ## A143259.P7415284060280598658

`A115660(n+1)%A014710(n)`
-/

namespace A143259.P7415284060280598658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A115660 (n + 1)) (A014710 n)

end

end A143259.P7415284060280598658

namespace A143259

/-- `A115660(n+1)%A014710(n)` -/
def P7415284060280598658.Spec : Prop :=
  ∀ n, P7415284060280598658.a n = A143259 (n + 1)

end A143259

/-!
# A143260: Primes that are not emirps.

The programs for A143260, there is no canonical definition to state claims against.
-/

/-! ## A143260.P613857465578700133

`∪[A002385(n+1), A076056(n+1)]`
-/

namespace A143260.P613857465578700133
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002385 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076056 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A143260.P613857465578700133

/-!
# A143261: Triangle read by rows: binary reversed Gray code of binomial(n,m).

The programs for A143261, there is no canonical definition to state claims against.
-/

/-! ## A143261.P17229556773614165415

`A030101(A143214(n+1))`
-/

namespace A143261.P17229556773614165415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030101 (A143214 (n + 1)).toNat

end

end A143261.P17229556773614165415

/-! ## A143261.P12022671505716941717

`A280995(A007318(n))`
-/

namespace A143261.P12022671505716941717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280995 (A007318 n).toNat

end

end A143261.P12022671505716941717

/-! ## A143261.P13183469178609863870

`A280995(abs(A108086(n)))`
-/

namespace A143261.P13183469178609863870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280995 |A108086 n|.toNat

end

end A143261.P13183469178609863870

/-! ## A143261.P4655416354047730820

`A280995(abs(A117440(n)))`
-/

namespace A143261.P4655416354047730820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280995 |A117440 n|.toNat

end

end A143261.P4655416354047730820

/-! ## A143261.P7662377659266985838

`A280995(abs(A130595(n)))`
-/

namespace A143261.P7662377659266985838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280995 |A130595 n|.toNat

end

end A143261.P7662377659266985838

/-! ## A143261.P7126398396517853

`A280995(sqrt(A008459(n)))`
-/

namespace A143261.P7126398396517853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280995 (SequenceMachineLib.roundAway (Real.sqrt (A008459 n : ℝ))).toNat

end

end A143261.P7126398396517853

/-! ## A143261.P11963444333451844054

`A280995(Δ[A102363(n)])`
-/

namespace A143261.P11963444333451844054
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102363 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280995 (f1 (n + 1) - f1 n).toNat

end

end A143261.P11963444333451844054

/-! ## A143261.P5112448627537187104

`A280995(A014473(n)+1)`
-/

namespace A143261.P5112448627537187104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280995 (A014473 n + 1).toNat

end

end A143261.P5112448627537187104

/-! ## A143261.P4774062352597595385

`A280995(A028326(n)/2)`
-/

namespace A143261.P4774062352597595385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280995 (SequenceMachineLib.roundAway ((A028326 n : ℚ) / 2)).toNat

end

end A143261.P4774062352597595385

/-! ## A143261.P7668274002697470029

`A280995((A109128(n)+1)/2)`
-/

namespace A143261.P7668274002697470029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280995 (SequenceMachineLib.roundAway ((A109128 n + 1 : ℚ) / 2)).toNat

end

end A143261.P7668274002697470029

/-!
# A143262: a(n) = the number of times the binary representation of the number of divisors of n occurs in the binary representation of n.

The programs for A143262, there is no canonical definition to state claims against.
-/

/-! ## A143262.P1670268513970371954

`A179081(A016789(n)*A164930(n+1))`
-/

namespace A143262.P1670268513970371954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179081 (A016789 n * A164930 (n + 1)).toNat

end

end A143262.P1670268513970371954

/-! ## A143262.P9125880626831988945

`A179081(lcm(A016789(n), A164930(n+1)))`
-/

namespace A143262.P9125880626831988945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179081 (Int.lcm (A016789 n) (A164930 (n + 1)))

end

end A143262.P9125880626831988945

/-! ## A143262.P11454975688914031095

`A007953(A016789(n)*A164930(n+1))%2`
-/

namespace A143262.P11454975688914031095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A007953 (A016789 n * A164930 (n + 1)).toNat) 2

end

end A143262.P11454975688914031095

/-! ## A143262.P12862175028119698962

`A014577(xor(8, A044995(A044995(n+1))))`
-/

namespace A143262.P12862175028119698962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014577 (Int.xor 8 (A044995 (A044995 (n + 1)).toNat)).toNat

end

end A143262.P12862175028119698962

/-! ## A143262.P9663878675122780439

`A030190(or(A028335(n+1), A136522(n)))`
-/

namespace A143262.P9663878675122780439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030190 (Int.lor (A028335 (n + 1)) (A136522 n)).toNat

end

end A143262.P9663878675122780439

/-!
# A143263: A positive integer k is included if the binary representation of the number of divisors of k occurs in the binary representation of k at least once.

The programs for A143263, there is no canonical definition to state claims against.
-/

/-! ## A143263.P8379210678207386380

`eq[char[A143264(n+1)], A000007(n)]`
-/

namespace A143263.P8379210678207386380
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143264 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A143263.P8379210678207386380

/-! ## A143263.P8229727698545450436

`eq[char[A143264(n+1)], A000038(n)]`
-/

namespace A143263.P8229727698545450436
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143264 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A143263.P8229727698545450436

/-! ## A143263.P4155343150760337462

`eq[2, char[A143264(n+1)]+2%A185869(n+1)]`
-/

namespace A143263.P4155343150760337462
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143264 (n + 1)

open Classical in
def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f3 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) + Int.tmod 2 (A185869 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A143263.P4155343150760337462

/-! ## A143263.P1603668839184123557

`record[(n+1)%(A143262(n+1)+n+1)]`
-/

namespace A143263.P1603668839184123557
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n + 1 : ℤ) (A143262 (n + 1) + (n + 1 : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A143263.P1603668839184123557

/-! ## A143263.P6342216142008346316

`lt[A000007(n), A143262(A028310(n))]`
-/

namespace A143263.P6342216142008346316
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143262 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A143263.P6342216142008346316

/-! ## A143263.P15962725467041483843

`lt[A000007(n), A143262(A000007(n)+n)]`
-/

namespace A143263.P15962725467041483843
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143262 (A000007 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A143263.P15962725467041483843

/-! ## A143263.P6160288598948745201

`eq[char[A143264(n+1)], A151933(n)]`
-/

namespace A143263.P6160288598948745201
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143264 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151933 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A143263.P6160288598948745201

/-!
# A143264: A positive integer n is included if the binary representation of the number of divisors of n does not occur anywhere in the binary representation of n.

The programs for A143264, there is no canonical definition to state claims against.
-/

/-! ## A143264.P6348672398433351434

`eq[0, A143262(n+1)]+1`
-/

namespace A143264.P6348672398433351434
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143262 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A143264.P6348672398433351434

/-! ## A143264.P4084691189429362749

`lt[A143262(A028310(n)), 1]`
-/

namespace A143264.P4084691189429362749
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143262 (A028310 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A143264.P4084691189429362749

/-! ## A143264.P17224624455412973756

`lt[A143262(A000007(n)+n), 1]`
-/

namespace A143264.P17224624455412973756
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143262 (A000007 n + (n : ℤ)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A143264.P17224624455412973756

/-! ## A143264.P18230174612859694479

`eq[3, A000203(a(A143262(n)))]` with `a(0)=2, a(1)=1`
-/

namespace A143264.P18230174612859694479
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.rec [2, 1] fun n f2 =>
  A000203 (f2 (A143262 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A143264.P18230174612859694479

/-! ## A143264.P11534916234144888019

`eq[3, A000045(a(A143262(n)))]` with `a(0)=4, a(1)=0`
-/

namespace A143264.P11534916234144888019
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.rec [4, 0] fun n f2 =>
  A000045 (f2 (A143262 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A143264.P11534916234144888019

/-! ## A143264.P15874128132689366447

`eq[3, A000005(a(A143262(n)))]` with `a(0)=4, a(1)=2, a(2)=1`
-/

namespace A143264.P15874128132689366447
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.rec [4, 2, 1] fun n f2 =>
  A000005 (f2 (A143262 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A143264.P15874128132689366447

/-! ## A143264.P3227967494411989010

`eq[0, A143262(A233583(n+1))]`
-/

namespace A143264.P3227967494411989010
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143262 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A143264.P3227967494411989010

/-!
# A143265: a(n) = the smallest integer >= n such that all the distinct primes that divide n and a(n) together are members of a set of consecutive primes. In other words, a(n) is the smallest integer >= n such that n*a(n) is contained in sequence A073491.

The programs for A143265, there is no canonical definition to state claims against.
-/

/-! ## A143265.P11789396668245891011

`A137795(n+1)*ceil((n+1)/A137795(n+1))`
-/

namespace A143265.P11789396668245891011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137795 (n + 1) * ⌈(n + 1 : ℚ) / (A137795 (n + 1) : ℚ)⌉

end

end A143265.P11789396668245891011

/-! ## A143265.P4314212579906818186

`A137795(n+1)-n%A137795(n+1)+n`
-/

namespace A143265.P4314212579906818186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137795 (n + 1) - Int.tmod (n : ℤ) (A137795 (n + 1)) + (n : ℤ)

end

end A143265.P4314212579906818186

/-!
# A143267: Triangle read by rows, A130207 * A000012 * A127648.

The programs for A143267, the canonical program `A143267.P18070143520200093026` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A143267 has offset 1).

The definition of A143267 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A143267.P14067391240238599655

`A000010(round(sqrt(2*(n+1))))*A002260(n+1)`
-/

namespace A143267.P14067391240238599655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (SequenceMachineLib.roundAway (Real.sqrt (2 * (n + 1) : ℝ))).toNat * A002260 (n + 1)

end

end A143267.P14067391240238599655

namespace A143267

/-- `A000010(round(sqrt(2*(n+1))))*A002260(n+1)` -/
def P14067391240238599655.Spec : Prop :=
  ∀ n, P14067391240238599655.a n = A143267 (n + 1)

end A143267

/-! ## A143267.P18070143520200093026

`A002260(n+1)*A106476(A057944(n))`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A143267

/-- `A002260(n+1)*A106476(A057944(n))` -/
def P18070143520200093026.Spec : Prop :=
  ∀ n, P18070143520200093026.a n = A143267 (n + 1)

theorem P18070143520200093026.correct : P18070143520200093026.Spec := by
  intro n
  simp only [A143267, Nat.add_sub_cancel]

end A143267

/-! ## A143267.P13573767920095003376

`A002260(n+1)*A067541(A131507(n))`
-/

namespace A143267.P13573767920095003376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1) * A067541 (A131507 n).toNat

end

end A143267.P13573767920095003376

namespace A143267

/-- `A002260(n+1)*A067541(A131507(n))` -/
def P13573767920095003376.Spec : Prop :=
  ∀ n, P13573767920095003376.a n = A143267 (n + 1)

end A143267

/-! ## A143267.P9016654507879412511

`(A002262(n)+1)*A000010(∑[A010054(n)])`
-/

namespace A143267.P9016654507879412511
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A002262 n + 1) * A000010 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A143267.P9016654507879412511

namespace A143267

/-- `(A002262(n)+1)*A000010(∑[A010054(n)])` -/
def P9016654507879412511.Spec : Prop :=
  ∀ n, P9016654507879412511.a n = A143267 (n + 1)

end A143267

/-! ## A143267.P3874291375877932738

`(A002262(n)+1)*A000010(A002024(n+1))`
-/

namespace A143267.P3874291375877932738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A002262 n + 1) * A000010 (A002024 (n + 1)).toNat

end

end A143267.P3874291375877932738

namespace A143267

/-- `(A002262(n)+1)*A000010(A002024(n+1))` -/
def P3874291375877932738.Spec : Prop :=
  ∀ n, P3874291375877932738.a n = A143267 (n + 1)

end A143267

/-! ## A143267.P5957877738051846277

`A000010(A002024(n+1))*A026100(A026098(n+1))`
-/

namespace A143267.P5957877738051846277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A002024 (n + 1)).toNat * A026100 (A026098 (n + 1)).toNat

end

end A143267.P5957877738051846277

namespace A143267

/-- `A000010(A002024(n+1))*A026100(A026098(n+1))` -/
def P5957877738051846277.Spec : Prop :=
  ∀ n, P5957877738051846277.a n = A143267 (n + 1)

end A143267

/-! ## A143267.P5333282101924796019

`A000010(A349520(2*(n+1)))*A349520(2*n+1)`
-/

namespace A143267.P5333282101924796019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A349520 (2 * (n + 1))).toNat * A349520 (2 * n + 1)

end

end A143267.P5333282101924796019

namespace A143267

/-- `A000010(A349520(2*(n+1)))*A349520(2*n+1)` -/
def P5333282101924796019.Spec : Prop :=
  ∀ n, P5333282101924796019.a n = A143267 (n + 1)

end A143267

/-! ## A143267.P6934093267066623151

`(A002262(n)+1)*A000010(A000194(Δ[n²]))`
-/

namespace A143267.P6934093267066623151
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A002262 n + 1) * A000010 (A000194 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat).toNat

end

end A143267.P6934093267066623151

namespace A143267

/-- `(A002262(n)+1)*A000010(A000194(Δ[n²]))` -/
def P6934093267066623151.Spec : Prop :=
  ∀ n, P6934093267066623151.a n = A143267 (n + 1)

end A143267

/-! ## A143267.P16354278722782295657

`A000010(A002024(n+1))*A057555(2*n+1)`
-/

namespace A143267.P16354278722782295657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A002024 (n + 1)).toNat * A057555 (2 * n + 1)

end

end A143267.P16354278722782295657

namespace A143267

/-- `A000010(A002024(n+1))*A057555(2*n+1)` -/
def P16354278722782295657.Spec : Prop :=
  ∀ n, P16354278722782295657.a n = A143267 (n + 1)

end A143267

/-! ## A143267.P18212893531474227391

`A000010(A003056(n)+1)*A057555(2*n+1)`
-/

namespace A143267.P18212893531474227391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A003056 n + 1).toNat * A057555 (2 * n + 1)

end

end A143267.P18212893531474227391

namespace A143267

/-- `A000010(A003056(n)+1)*A057555(2*n+1)` -/
def P18212893531474227391.Spec : Prop :=
  ∀ n, P18212893531474227391.a n = A143267 (n + 1)

end A143267

/-! ## A143267.P6464812978083039805

`A002260(n+1)*A059380(A004736(n+1)+n)`
-/

namespace A143267.P6464812978083039805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1) * A059380 (A004736 (n + 1) + (n : ℤ)).toNat

end

end A143267.P6464812978083039805

namespace A143267

/-- `A002260(n+1)*A059380(A004736(n+1)+n)` -/
def P6464812978083039805.Spec : Prop :=
  ∀ n, P6464812978083039805.a n = A143267 (n + 1)

end A143267

/-! ## A143267.P10108858474853394587

`A000005(A059268(n))*A106476(A057944(n))`
-/

namespace A143267.P10108858474853394587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A059268 n).toNat * A106476 (A057944 n).toNat

end

end A143267.P10108858474853394587

namespace A143267

/-- `A000005(A059268(n))*A106476(A057944(n))` -/
def P10108858474853394587.Spec : Prop :=
  ∀ n, P10108858474853394587.a n = A143267 (n + 1)

end A143267

/-! ## A143267.P3835212266713151828

`A000005(A059268(n))*A000010(A002024(n+1))`
-/

namespace A143267.P3835212266713151828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A059268 n).toNat * A000010 (A002024 (n + 1)).toNat

end

end A143267.P3835212266713151828

namespace A143267

/-- `A000005(A059268(n))*A000010(A002024(n+1))` -/
def P3835212266713151828.Spec : Prop :=
  ∀ n, P3835212266713151828.a n = A143267 (n + 1)

end A143267

/-!
# A143268: a(n) = phi(n)*T(n), where phi(n) is Euler's totient function (A000010) and T(n) = n*(n+1)/2 is the n-th triangular number (A000217).

The programs for A143268, the canonical program `A143268.P18032262183029284941` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A143268 has offset 1).

The definition of A143268 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A143268.P3008248284932072447

`(n+1)/∏{p}[n+1, #]*∏{p}[n+1, #-1]*∑[n+1]`
-/

namespace A143268.P3008248284932072447
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ) * ((∏ p ∈ Nat.primeFactors (f2 n), ((p : ℤ) - 1) : ℤ) : ℚ) * ((∑ j ∈ Finset.range (n + 1), f3 j : ℕ) : ℚ)

end

end A143268.P3008248284932072447

namespace A143268

/-- `(n+1)/∏{p}[n+1, #]*∏{p}[n+1, #-1]*∑[n+1]` -/
def P3008248284932072447.Spec : Prop :=
  ∀ n, P3008248284932072447.a n = (A143268 (n + 1) : ℚ)

end A143268

/-! ## A143268.P12194249042441393451

`∑[n+1]*Δ[A002088(n)]`
-/

namespace A143268.P12194249042441393451
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002088 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) * (f2 (n + 1) - f2 n)

end

end A143268.P12194249042441393451

namespace A143268

/-- `∑[n+1]*Δ[A002088(n)]` -/
def P12194249042441393451.Spec : Prop :=
  ∀ n, P12194249042441393451.a n = A143268 (n + 1)

end A143268

/-! ## A143268.P16348245507896620066

`∑[n+1]*Δ[A005728(n)]`
-/

namespace A143268.P16348245507896620066
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005728 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) * (f2 (n + 1) - f2 n)

end

end A143268.P16348245507896620066

namespace A143268

/-- `∑[n+1]*Δ[A005728(n)]` -/
def P16348245507896620066.Spec : Prop :=
  ∀ n, P16348245507896620066.a n = A143268 (n + 1)

end A143268

/-! ## A143268.P16737570000495132727

`∑[n+1]*A000010(n+1)`
-/

namespace A143268.P16737570000495132727
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) * A000010 (n + 1)

end

end A143268.P16737570000495132727

namespace A143268

/-- `∑[n+1]*A000010(n+1)` -/
def P16737570000495132727.Spec : Prop :=
  ∀ n, P16737570000495132727.a n = A143268 (n + 1)

end A143268

/-! ## A143268.P15078692337559435821

`(n/2+1)*A002618(n+1)`
-/

namespace A143268.P15078692337559435821
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n : ℚ) / 2 + 1) * (A002618 (n + 1) : ℚ)

end

end A143268.P15078692337559435821

namespace A143268

/-- `(n/2+1)*A002618(n+1)` -/
def P15078692337559435821.Spec : Prop :=
  ∀ n, P15078692337559435821.a n = (A143268 (n + 1) : ℚ)

end A143268

/-! ## A143268.P17453724009700925770

`sqrt(A127473(n+1))*∑[n+1]`
-/

namespace A143268.P17453724009700925770
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A127473 (n + 1) : ℝ) * ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℝ)

end

end A143268.P17453724009700925770

namespace A143268

/-- `sqrt(A127473(n+1))*∑[n+1]` -/
def P17453724009700925770.Spec : Prop :=
  ∀ n, P17453724009700925770.a n = (A143268 (n + 1) : ℝ)

end A143268

/-! ## A143268.P3713549190458184417

`∑[n+1]*Δ[A100449(n)/4]`
-/

namespace A143268.P3713549190458184417
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A100449 n : ℚ) / 4

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) * (f2 (n + 1) - f2 n)

end

end A143268.P3713549190458184417

namespace A143268

/-- `∑[n+1]*Δ[A100449(n)/4]` -/
def P3713549190458184417.Spec : Prop :=
  ∀ n, P3713549190458184417.a n = (A143268 (n + 1) : ℚ)

end A143268

/-! ## A143268.P3709837314593909062

`(A109606(n+1)+1)*∑[n+1]`
-/

namespace A143268.P3709837314593909062
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A109606 (n + 1) + 1) * ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A143268.P3709837314593909062

namespace A143268

/-- `(A109606(n+1)+1)*∑[n+1]` -/
def P3709837314593909062.Spec : Prop :=
  ∀ n, P3709837314593909062.a n = A143268 (n + 1)

end A143268

/-! ## A143268.P12823490411118063283

`A000010(C(n+1, n))%(n+2)*C(n+2, 2)`
-/

namespace A143268.P12823490411118063283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000010 (Nat.choose (n + 1) n)) (n + 2 : ℤ) * (Nat.choose (n + 2) 2 : ℤ)

end

end A143268.P12823490411118063283

namespace A143268

/-- `A000010(C(n+1, n))%(n+2)*C(n+2, 2)` -/
def P12823490411118063283.Spec : Prop :=
  ∀ n, P12823490411118063283.a n = A143268 (n + 1)

end A143268

/-! ## A143268.P1749866635666749146

`∑[n+1]*∑{d}[n+1, (n+1)/#*A008683(#)]`
-/

namespace A143268.P1749866635666749146
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) * (∑ d ∈ Nat.divisors (f2 n), (n + 1 : ℚ) / (d : ℚ) * (A008683 d : ℚ))

end

end A143268.P1749866635666749146

namespace A143268

/-- `∑[n+1]*∑{d}[n+1, (n+1)/#*A008683(#)]` -/
def P1749866635666749146.Spec : Prop :=
  ∀ n, P1749866635666749146.a n = (A143268 (n + 1) : ℚ)

end A143268

/-! ## A143268.P14541865760518497009

`A000010(n+1)*A000217(n+1)`
-/

namespace A143268.P14541865760518497009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1) * A000217 (n + 1)

end

end A143268.P14541865760518497009

namespace A143268

/-- `A000010(n+1)*A000217(n+1)` -/
def P14541865760518497009.Spec : Prop :=
  ∀ n, P14541865760518497009.a n = A143268 (n + 1)

end A143268

/-! ## A143268.P18032262183029284941

`A023896(n+1)*A065475(n+1)`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A143268

/-- `A023896(n+1)*A065475(n+1)` -/
def P18032262183029284941.Spec : Prop :=
  ∀ n, P18032262183029284941.a n = A143268 (n + 1)

theorem P18032262183029284941.correct : P18032262183029284941.Spec := by
  intro n
  simp only [A143268, Nat.add_sub_cancel]

end A143268

/-! ## A143268.P7276985074724887005

`(A103517(n)-n)*A023896(n+1)`
-/

namespace A143268.P7276985074724887005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A103517 n - (n : ℤ)) * A023896 (n + 1)

end

end A143268.P7276985074724887005

namespace A143268

/-- `(A103517(n)-n)*A023896(n+1)` -/
def P7276985074724887005.Spec : Prop :=
  ∀ n, P7276985074724887005.a n = A143268 (n + 1)

end A143268

/-! ## A143268.P9131272297966392389

`(A087156(n+1)+1)*A023896(n+1)`
-/

namespace A143268.P9131272297966392389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A087156 (n + 1) + 1) * A023896 (n + 1)

end

end A143268.P9131272297966392389

namespace A143268

/-- `(A087156(n+1)+1)*A023896(n+1)` -/
def P9131272297966392389.Spec : Prop :=
  ∀ n, P9131272297966392389.a n = A143268 (n + 1)

end A143268

/-! ## A143268.P7139430385658941236

`(A053191(n+1)+A002618(n+1))/2`
-/

namespace A143268.P7139430385658941236
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A053191 (n + 1) + A002618 (n + 1) : ℚ) / 2

end

end A143268.P7139430385658941236

namespace A143268

/-- `(A053191(n+1)+A002618(n+1))/2` -/
def P7139430385658941236.Spec : Prop :=
  ∀ n, P7139430385658941236.a n = (A143268 (n + 1) : ℚ)

end A143268

/-! ## A143268.P10554957390607836275

`A002618(n+1)+n*A023896(n+1)`
-/

namespace A143268.P10554957390607836275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002618 (n + 1) + (n : ℤ) * A023896 (n + 1)

end

end A143268.P10554957390607836275

namespace A143268

/-- `A002618(n+1)+n*A023896(n+1)` -/
def P10554957390607836275.Spec : Prop :=
  ∀ n, P10554957390607836275.a n = A143268 (n + 1)

end A143268

/-! ## A143268.P3622851013914403246

`A053191(n+1)-n*A023896(n+1)`
-/

namespace A143268.P3622851013914403246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053191 (n + 1) - (n : ℤ) * A023896 (n + 1)

end

end A143268.P3622851013914403246

namespace A143268

/-- `A053191(n+1)-n*A023896(n+1)` -/
def P3622851013914403246.Spec : Prop :=
  ∀ n, P3622851013914403246.a n = A143268 (n + 1)

end A143268

/-! ## A143268.P9336179804162701357

`C(n+2, 2)*∑{d}[A000010(n+1), A000010(#)]`
-/

namespace A143268.P9336179804162701357
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (n + 2) 2 : ℤ) * (∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d)

end

end A143268.P9336179804162701357

namespace A143268

/-- `C(n+2, 2)*∑{d}[A000010(n+1), A000010(#)]` -/
def P9336179804162701357.Spec : Prop :=
  ∀ n, P9336179804162701357.a n = A143268 (n + 1)

end A143268

/-! ## A143268.P7114132571144760084

`A000010(n+1)+A000010(n+1)*A000096(n)`
-/

namespace A143268.P7114132571144760084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1) + A000010 (n + 1) * A000096 n

end

end A143268.P7114132571144760084

namespace A143268

/-- `A000010(n+1)+A000010(n+1)*A000096(n)` -/
def P7114132571144760084.Spec : Prop :=
  ∀ n, P7114132571144760084.a n = A143268 (n + 1)

end A143268

/-!
# A143269: Triangle read by rows, A127648 * A000012 * A130207, 1<=k<=n.

The programs for A143269, the canonical program `A143269.P16153719034199843744` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A143269 has offset 1).

The definition of A143269 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A143269.P16153719034199843744

`∑[char[∑[n]]]*A054526(n+1)`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A143269

/-- `∑[char[∑[n]]]*A054526(n+1)` -/
def P16153719034199843744.Spec : Prop :=
  ∀ n, P16153719034199843744.a n = A143269 (n + 1)

theorem P16153719034199843744.correct : P16153719034199843744.Spec := by
  intro n
  simp only [A143269, Nat.add_sub_cancel]

end A143269

/-! ## A143269.P6401895958175912155

`A000010(1-C(∑[char[∑[n]]], 2)+n)*∑[char[∑[n]]]`
-/

namespace A143269.P6401895958175912155
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

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

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (1 - (Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j) 2 : ℤ) + (n : ℤ)).toNat * ((∑ j ∈ Finset.range (n + 1), f4 j : ℕ) : ℤ)

end

end A143269.P6401895958175912155

namespace A143269

/-- `A000010(1-C(∑[char[∑[n]]], 2)+n)*∑[char[∑[n]]]` -/
def P6401895958175912155.Spec : Prop :=
  ∀ n, P6401895958175912155.a n = A143269 (n + 1)

end A143269

/-! ## A143269.P3935152629434140880

`A054531(n+1)*A181538(n+1)`
-/

namespace A143269.P3935152629434140880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054531 (n + 1) * A181538 (n + 1)

end

end A143269.P3935152629434140880

namespace A143269

/-- `A054531(n+1)*A181538(n+1)` -/
def P3935152629434140880.Spec : Prop :=
  ∀ n, P3935152629434140880.a n = A143269 (n + 1)

end A143269

/-! ## A143269.P7201729803483953232

`ceil(log2(A140513(n))*A054526(n+1))`
-/

namespace A143269.P7201729803483953232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.logb 2 (A140513 n : ℝ) * (A054526 (n + 1) : ℝ)⌉

end

end A143269.P7201729803483953232

namespace A143269

/-- `ceil(log2(A140513(n))*A054526(n+1))` -/
def P7201729803483953232.Spec : Prop :=
  ∀ n, P7201729803483953232.a n = A143269 (n + 1)

end A143269

/-! ## A143269.P8335107855649232732

`A000010(A002260(n+1))*∑[char[∑[n]]]`
-/

namespace A143269.P8335107855649232732
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A002260 (n + 1)).toNat * ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A143269.P8335107855649232732

namespace A143269

/-- `A000010(A002260(n+1))*∑[char[∑[n]]]` -/
def P8335107855649232732.Spec : Prop :=
  ∀ n, P8335107855649232732.a n = A143269 (n + 1)

end A143269

/-! ## A143269.P925500935465027329

`A000010(A002262(n)+1)*∑[char[∑[n]]]`
-/

namespace A143269.P925500935465027329
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A002262 n + 1).toNat * ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A143269.P925500935465027329

namespace A143269

/-- `A000010(A002262(n)+1)*∑[char[∑[n]]]` -/
def P925500935465027329.Spec : Prop :=
  ∀ n, P925500935465027329.a n = A143269 (n + 1)

end A143269

/-! ## A143269.P2913256618333946221

`A000010(A134868(n+1))*∑[char[∑[n]]]`
-/

namespace A143269.P2913256618333946221
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A134868 (n + 1)).toNat * ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A143269.P2913256618333946221

namespace A143269

/-- `A000010(A134868(n+1))*∑[char[∑[n]]]` -/
def P2913256618333946221.Spec : Prop :=
  ∀ n, P2913256618333946221.a n = A143269 (n + 1)

end A143269

/-! ## A143269.P3284248842923834429

`A000010(A349520(2*n+1))*∑[char[∑[n]]]`
-/

namespace A143269.P3284248842923834429
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A349520 (2 * n + 1)).toNat * ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A143269.P3284248842923834429

namespace A143269

/-- `A000010(A349520(2*n+1))*∑[char[∑[n]]]` -/
def P3284248842923834429.Spec : Prop :=
  ∀ n, P3284248842923834429.a n = A143269 (n + 1)

end A143269

/-! ## A143269.P8178197317242128431

`A000010(A057555(2*n+1))*∑[char[∑[n]]]`
-/

namespace A143269.P8178197317242128431
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A057555 (2 * n + 1)).toNat * ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A143269.P8178197317242128431

namespace A143269

/-- `A000010(A057555(2*n+1))*∑[char[∑[n]]]` -/
def P8178197317242128431.Spec : Prop :=
  ∀ n, P8178197317242128431.a n = A143269 (n + 1)

end A143269

/-! ## A143269.P16178221286680031005

`round(sqrt(2*n+1))*A000010(A097285(2*n+1))`
-/

namespace A143269.P16178221286680031005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (2 * n + 1 : ℝ)) * A000010 (A097285 (2 * n + 1)).toNat

end

end A143269.P16178221286680031005

namespace A143269

/-- `round(sqrt(2*n+1))*A000010(A097285(2*n+1))` -/
def P16178221286680031005.Spec : Prop :=
  ∀ n, P16178221286680031005.a n = A143269 (n + 1)

end A143269

/-!
# A143270: a(n) = n*A002088(n).

The programs for A143270, the canonical program `A143270.P7173211897729135477` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A143270 has offset 1).

The definition of A143270 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002088, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A143270.P7173211897729135477

`(n+1)*A002088(n+1)`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A143270

/-- `(n+1)*A002088(n+1)` -/
def P7173211897729135477.Spec : Prop :=
  ∀ n, P7173211897729135477.a n = A143270 (n + 1)

theorem P7173211897729135477.correct : P7173211897729135477.Spec := by
  intro n
  simp only [A143270, Nat.add_sub_cancel]

end A143270

/-! ## A143270.P10444100291510552269

`(n+1)*∑[(n+1)/∏{p}[n+1, #]*∏{p}[n+1, #-1]]`
-/

namespace A143270.P10444100291510552269
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f2 n), p : ℕ) : ℚ) * ((∏ p ∈ Nat.primeFactors (f3 n), ((p : ℤ) - 1) : ℤ) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A143270.P10444100291510552269

namespace A143270

/-- `(n+1)*∑[(n+1)/∏{p}[n+1, #]*∏{p}[n+1, #-1]]` -/
def P10444100291510552269.Spec : Prop :=
  ∀ n, P10444100291510552269.a n = (A143270 (n + 1) : ℚ)

end A143270

/-! ## A143270.P7024330129229130003

`(n+1)*Δ[A103116(n)]`
-/

namespace A143270.P7024330129229130003
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103116 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (f1 (n + 1) - f1 n)

end

end A143270.P7024330129229130003

namespace A143270

/-- `(n+1)*Δ[A103116(n)]` -/
def P7024330129229130003.Spec : Prop :=
  ∀ n, P7024330129229130003.a n = A143270 (n + 1)

end A143270

/-! ## A143270.P14800265188891555264

`(n+1)*A092249(n+1)`
-/

namespace A143270.P14800265188891555264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A092249 (n + 1)

end

end A143270.P14800265188891555264

namespace A143270

/-- `(n+1)*A092249(n+1)` -/
def P14800265188891555264.Spec : Prop :=
  ∀ n, P14800265188891555264.a n = A143270 (n + 1)

end A143270

/-! ## A143270.P15479992040589853431

`(n+1)*∑[A000010(n+1)]`
-/

namespace A143270.P15479992040589853431
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A143270.P15479992040589853431

namespace A143270

/-- `(n+1)*∑[A000010(n+1)]` -/
def P15479992040589853431.Spec : Prop :=
  ∀ n, P15479992040589853431.a n = A143270 (n + 1)

end A143270

/-! ## A143270.P2829686945878615038

`(n+1)*(A015614(n+1)+1)`
-/

namespace A143270.P2829686945878615038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A015614 (n + 1) + 1)

end

end A143270.P2829686945878615038

namespace A143270

/-- `(n+1)*(A015614(n+1)+1)` -/
def P2829686945878615038.Spec : Prop :=
  ∀ n, P2829686945878615038.a n = A143270 (n + 1)

theorem P2829686945878615038.correct : P2829686945878615038.Spec := by
  intro n
  simp only [A143270, Nat.add_sub_cancel, A143270.P2829686945878615038.a, A143270.P7173211897729135477.a, A002088, A002088.P8962335469571691680.f2, A002088.P8962335469571691680.f1, A002088.P8962335469571691680.a, A015614, A015614.P13535555482679389419.a, A000217, A000217.P10269402890581615239.a, A007431, A007431.P16849793818733668455.f1, A007431.P16849793818733668455.a, A185670, A185670.P7671735460308608982.a, A007432, A007432.P16663120023730915232.f1, A007432.P16663120023730915232.a, A063985, A063985.P3942861327483730228.a, A100613, A100613.P7468063633472476903.a, A007428, A007428.P12532017655611739201.f1, A007428.P12532017655611739201.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A143270

/-! ## A143270.P10665262340421392069

`(n+1)*(A005728(n+1)-1)`
-/

namespace A143270.P10665262340421392069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A005728 (n + 1) - 1)

end

end A143270.P10665262340421392069

namespace A143270

/-- `(n+1)*(A005728(n+1)-1)` -/
def P10665262340421392069.Spec : Prop :=
  ∀ n, P10665262340421392069.a n = A143270 (n + 1)

theorem P10665262340421392069.correct : P10665262340421392069.Spec := by
  intro n
  simp only [A143270, Nat.add_sub_cancel, A143270.P10665262340421392069.a, A143270.P7173211897729135477.a, A002088, A002088.P8962335469571691680.f2, A002088.P8962335469571691680.f1, A002088.P8962335469571691680.a, A005728, A005728.P12032251568510858139.a, A007431, A007431.P16849793818733668455.f1, A007431.P16849793818733668455.a, A007432, A007432.P16663120023730915232.f1, A007432.P16663120023730915232.a, A007428, A007428.P12532017655611739201.f1, A007428.P12532017655611739201.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A143270

/-! ## A143270.P13480679382044549973

`(n+1)*(A187263(n+1)-n)`
-/

namespace A143270.P13480679382044549973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A187263 (n + 1) - (n : ℤ))

end

end A143270.P13480679382044549973

namespace A143270

/-- `(n+1)*(A187263(n+1)-n)` -/
def P13480679382044549973.Spec : Prop :=
  ∀ n, P13480679382044549973.a n = A143270 (n + 1)

end A143270

/-! ## A143270.P1755090078650598092

`(n+1)*∑[sqrt(A127473(n+1))]`
-/

namespace A143270.P1755090078650598092
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A127473 (n + 1) : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℝ) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A143270.P1755090078650598092

namespace A143270

/-- `(n+1)*∑[sqrt(A127473(n+1))]` -/
def P1755090078650598092.Spec : Prop :=
  ∀ n, P1755090078650598092.a n = (A143270 (n + 1) : ℝ)

end A143270

/-! ## A143270.P10883650086503611877

`(n+1)*∑[A109606(n+1)+1]`
-/

namespace A143270.P10883650086503611877
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109606 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A143270.P10883650086503611877

namespace A143270

/-- `(n+1)*∑[A109606(n+1)+1]` -/
def P10883650086503611877.Spec : Prop :=
  ∀ n, P10883650086503611877.a n = A143270 (n + 1)

end A143270

/-! ## A143270.P422495216675197139

`(n+1)*(A015613(n+1)+n+1)`
-/

namespace A143270.P422495216675197139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A015613 (n + 1) + (n + 1 : ℤ))

end

end A143270.P422495216675197139

namespace A143270

/-- `(n+1)*(A015613(n+1)+n+1)` -/
def P422495216675197139.Spec : Prop :=
  ∀ n, P422495216675197139.a n = A143270 (n + 1)

theorem P422495216675197139.correct : P422495216675197139.Spec := by
  intro n
  simp only [A143270, Nat.add_sub_cancel, A143270.P422495216675197139.a, A143270.P7173211897729135477.a, A002088, A002088.P8962335469571691680.f2, A002088.P8962335469571691680.f1, A002088.P8962335469571691680.a, A015613, A015613.P10342117008868844032.a, A007431, A007431.P16849793818733668455.f1, A007431.P16849793818733668455.a, A007432, A007432.P16663120023730915232.f1, A007432.P16663120023730915232.a, A007428, A007428.P12532017655611739201.f1, A007428.P12532017655611739201.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A143270

/-! ## A143270.P5874713687724353430

`∑[A000010(n-log2(1/2))]/(n+1)^-1`
-/

namespace A143270.P5874713687724353430
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (SequenceMachineLib.roundAway ((n : ℝ) - Real.logb 2 ((1 : ℚ) / 2 : ℝ))).toNat

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / (n + 1 : ℚ) ^ (-1 : ℤ)

end

end A143270.P5874713687724353430

namespace A143270

/-- `∑[A000010(n-log2(1/2))]/(n+1)^-1` -/
def P5874713687724353430.Spec : Prop :=
  ∀ n, P5874713687724353430.a n = (A143270 (n + 1) : ℚ)

end A143270

/-! ## A143270.P8996263775451383371

`(n+1)*∑[∑{d}[n+1, (n+1)/#*A008683(#)]]`
-/

namespace A143270.P8996263775451383371
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n), (n + 1 : ℚ) / (d : ℚ) * (A008683 d : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A143270.P8996263775451383371

namespace A143270

/-- `(n+1)*∑[∑{d}[n+1, (n+1)/#*A008683(#)]]` -/
def P8996263775451383371.Spec : Prop :=
  ∀ n, P8996263775451383371.a n = (A143270 (n + 1) : ℚ)

end A143270

/-! ## A143270.P9068579328798998195

`A103116(n)+A011755(n+1)`
-/

namespace A143270.P9068579328798998195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103116 n + A011755 (n + 1)

end

end A143270.P9068579328798998195

namespace A143270

/-- `A103116(n)+A011755(n+1)` -/
def P9068579328798998195.Spec : Prop :=
  ∀ n, P9068579328798998195.a n = A143270 (n + 1)

end A143270

/-! ## A143270.P13919763371163753247

`∑[A002618(n+1)+A002088(n)]`
-/

namespace A143270.P13919763371163753247
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002618 (n + 1) + A002088 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A143270.P13919763371163753247

namespace A143270

/-- `∑[A002618(n+1)+A002088(n)]` -/
def P13919763371163753247.Spec : Prop :=
  ∀ n, P13919763371163753247.a n = A143270 (n + 1)

end A143270

/-! ## A143270.P1102975595101878610

`A385682(n+1)+A187263(n+1)`
-/

namespace A143270.P1102975595101878610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385682 (n + 1) + A187263 (n + 1)

end

end A143270.P1102975595101878610

namespace A143270

/-- `A385682(n+1)+A187263(n+1)` -/
def P1102975595101878610.Spec : Prop :=
  ∀ n, P1102975595101878610.a n = A143270 (n + 1)

end A143270

/-! ## A143270.P6526774924558137404

`A011755(n+1)+A005598(n)-1`
-/

namespace A143270.P6526774924558137404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011755 (n + 1) + (A005598 n - 1)

end

end A143270.P6526774924558137404

namespace A143270

/-- `A011755(n+1)+A005598(n)-1` -/
def P6526774924558137404.Spec : Prop :=
  ∀ n, P6526774924558137404.a n = A143270 (n + 1)

end A143270

/-! ## A143270.P14583194439482342032

`A330503(n+1)-A002088(n+1)`
-/

namespace A143270.P14583194439482342032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330503 (n + 1) - A002088 (n + 1)

end

end A143270.P14583194439482342032

namespace A143270

/-- `A330503(n+1)-A002088(n+1)` -/
def P14583194439482342032.Spec : Prop :=
  ∀ n, P14583194439482342032.a n = A143270 (n + 1)

theorem P14583194439482342032.correct : P14583194439482342032.Spec := by
  intro n
  simp only [A143270, Nat.add_sub_cancel, A143270.P14583194439482342032.a, A143270.P7173211897729135477.a, A002088, A002088.P8962335469571691680.f2, A002088.P8962335469571691680.f1, A002088.P8962335469571691680.a, A330503, A330503.P8991438941767947125.a, A007431, A007431.P16849793818733668455.f1, A007431.P16849793818733668455.a, A007432, A007432.P16663120023730915232.f1, A007432.P16663120023730915232.a, A007428, A007428.P12532017655611739201.f1, A007428.P12532017655611739201.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A143270

/-! ## A143270.P8247642826071254388

`A330503(n+1)-A092249(n+1)`
-/

namespace A143270.P8247642826071254388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330503 (n + 1) - A092249 (n + 1)

end

end A143270.P8247642826071254388

namespace A143270

/-- `A330503(n+1)-A092249(n+1)` -/
def P8247642826071254388.Spec : Prop :=
  ∀ n, P8247642826071254388.a n = A143270 (n + 1)

end A143270

/-! ## A143270.P4349648194876349854

`(n+1)*Δ[A005598(n)]`
-/

namespace A143270.P4349648194876349854
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005598 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (f1 (n + 1) - f1 n)

end

end A143270.P4349648194876349854

namespace A143270

/-- `(n+1)*Δ[A005598(n)]` -/
def P4349648194876349854.Spec : Prop :=
  ∀ n, P4349648194876349854.a n = A143270 (n + 1)

end A143270

/-!
# A143271: Triangle read by rows: A130209 * A000012 * A127648.

The programs for A143271, the canonical program `A143271.P8968321967540902119` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A143271 has offset 1).

The definition of A143271 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A143271.P8991242188741278229

`(2*(n+1)-A004201(n+1))*A000005(comp[C(n, 2)]-(n+1))`
-/

namespace A143271.P8991242188741278229
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((2 * (n + 1) : ℤ) - A004201 (n + 1)) * A000005 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n - (n + 1))

end

end A143271.P8991242188741278229

namespace A143271

/-- `(2*(n+1)-A004201(n+1))*A000005(comp[C(n, 2)]-(n+1))` -/
def P8991242188741278229.Spec : Prop :=
  ∀ n, P8991242188741278229.a n = A143271 (n + 1)

end A143271

/-! ## A143271.P29432019748565013

`A002260(n+1)*A130267(A057944(n))`
-/

namespace A143271.P29432019748565013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1) * A130267 (A057944 n).toNat

end

end A143271.P29432019748565013

namespace A143271

/-- `A002260(n+1)*A130267(A057944(n))` -/
def P29432019748565013.Spec : Prop :=
  ∀ n, P29432019748565013.a n = A143271 (n + 1)

end A143271

/-! ## A143271.P8968321967540902119

`A000005(A002024(n+1))*A002260(n+1)`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A143271

/-- `A000005(A002024(n+1))*A002260(n+1)` -/
def P8968321967540902119.Spec : Prop :=
  ∀ n, P8968321967540902119.a n = A143271 (n + 1)

theorem P8968321967540902119.correct : P8968321967540902119.Spec := by
  intro n
  simp only [A143271, Nat.add_sub_cancel]

end A143271

/-! ## A143271.P2091237951477555894

`abs(A000005(A002024(n+1))*A140756(n+1))`
-/

namespace A143271.P2091237951477555894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A000005 (A002024 (n + 1)).toNat * A140756 (n + 1)|

end

end A143271.P2091237951477555894

namespace A143271

/-- `abs(A000005(A002024(n+1))*A140756(n+1))` -/
def P2091237951477555894.Spec : Prop :=
  ∀ n, P2091237951477555894.a n = A143271 (n + 1)

end A143271

/-! ## A143271.P9675823529033899739

`sqrt(A133819(n+1))*A000005(A002024(n+1))`
-/

namespace A143271.P9675823529033899739
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A133819 (n + 1) : ℝ) * (A000005 (A002024 (n + 1)).toNat : ℝ)

end

end A143271.P9675823529033899739

namespace A143271

/-- `sqrt(A133819(n+1))*A000005(A002024(n+1))` -/
def P9675823529033899739.Spec : Prop :=
  ∀ n, P9675823529033899739.a n = (A143271 (n + 1) : ℝ)

end A143271

/-! ## A143271.P11655906873614190777

`(2*(n+1)-A004201(n+1))*A000005(A002024(n+1))`
-/

namespace A143271.P11655906873614190777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((2 * (n + 1) : ℤ) - A004201 (n + 1)) * A000005 (A002024 (n + 1)).toNat

end

end A143271.P11655906873614190777

namespace A143271

/-- `(2*(n+1)-A004201(n+1))*A000005(A002024(n+1))` -/
def P11655906873614190777.Spec : Prop :=
  ∀ n, P11655906873614190777.a n = A143271 (n + 1)

end A143271

/-! ## A143271.P9788374154834084694

`A000005(A349520(2*(n+1)))*A349520(2*n+1)`
-/

namespace A143271.P9788374154834084694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A349520 (2 * (n + 1))).toNat * A349520 (2 * n + 1)

end

end A143271.P9788374154834084694

namespace A143271

/-- `A000005(A349520(2*(n+1)))*A349520(2*n+1)` -/
def P9788374154834084694.Spec : Prop :=
  ∀ n, P9788374154834084694.a n = A143271 (n + 1)

end A143271

/-! ## A143271.P3603189738215457399

`A000005(A002024(n+1))*A000005(A059268(n))`
-/

namespace A143271.P3603189738215457399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A002024 (n + 1)).toNat * A000005 (A059268 n).toNat

end

end A143271.P3603189738215457399

namespace A143271

/-- `A000005(A002024(n+1))*A000005(A059268(n))` -/
def P3603189738215457399.Spec : Prop :=
  ∀ n, P3603189738215457399.a n = A143271 (n + 1)

end A143271

/-! ## A143271.P7645155832366996445

`A000005(A001511(A118416(n+1)))*A002260(n+1)`
-/

namespace A143271.P7645155832366996445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A001511 (A118416 (n + 1)).toNat).toNat * A002260 (n + 1)

end

end A143271.P7645155832366996445

namespace A143271

/-- `A000005(A001511(A118416(n+1)))*A002260(n+1)` -/
def P7645155832366996445.Spec : Prop :=
  ∀ n, P7645155832366996445.a n = A143271 (n + 1)

end A143271

/-! ## A143271.P17670878283396795054

`A000005(A002024(n+1))*A003602(A118416(n+1))`
-/

namespace A143271.P17670878283396795054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A002024 (n + 1)).toNat * A003602 (A118416 (n + 1)).toNat

end

end A143271.P17670878283396795054

namespace A143271

/-- `A000005(A002024(n+1))*A003602(A118416(n+1))` -/
def P17670878283396795054.Spec : Prop :=
  ∀ n, P17670878283396795054.a n = A143271 (n + 1)

end A143271

/-!
# A143272: a(n) = d(n)*T(n), where d(n) is the number of divisors of n (A000005) and T(n)=n(n+1)/2 are the triangular numbers (A000217).

The programs for A143272, the canonical program `A143272.P6280344008672614282` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A143272 has offset 1).

The definition of A143272 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A143272.P6280344008672614282

`∑[n+1]*∏{e}[n+1, #+1]`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A143272

/-- `∑[n+1]*∏{e}[n+1, #+1]` -/
def P6280344008672614282.Spec : Prop :=
  ∀ n, (P6280344008672614282.a n : ℤ) = A143272 (n + 1)

theorem P6280344008672614282.correct : P6280344008672614282.Spec := by
  intro n
  simp only [A143272, Nat.add_sub_cancel]

end A143272

/-! ## A143272.P853378028029252267

`∑[n+1]*∑{d}[n+1, gcd(n, #)]`
-/

namespace A143272.P853378028029252267
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * (∑ d ∈ Nat.divisors (f2 n), Nat.gcd n d)

end

end A143272.P853378028029252267

namespace A143272

/-- `∑[n+1]*∑{d}[n+1, gcd(n, #)]` -/
def P853378028029252267.Spec : Prop :=
  ∀ n, (P853378028029252267.a n : ℤ) = A143272 (n + 1)

end A143272

/-! ## A143272.P7209562707841472656

`∑[n+1]*Δ[A006218(n)]`
-/

namespace A143272.P7209562707841472656
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006218 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) * (f2 (n + 1) - f2 n)

end

end A143272.P7209562707841472656

namespace A143272

/-- `∑[n+1]*Δ[A006218(n)]` -/
def P7209562707841472656.Spec : Prop :=
  ∀ n, P7209562707841472656.a n = A143272 (n + 1)

end A143272

/-! ## A143272.P3783073109170795585

`∑[n+1]*Δ[A054519(n)]`
-/

namespace A143272.P3783073109170795585
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054519 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) * (f2 (n + 1) - f2 n)

end

end A143272.P3783073109170795585

namespace A143272

/-- `∑[n+1]*Δ[A054519(n)]` -/
def P3783073109170795585.Spec : Prop :=
  ∀ n, P3783073109170795585.a n = A143272 (n + 1)

end A143272

/-! ## A143272.P15154519460114483802

`∑[n+1]*A000005(n+1)`
-/

namespace A143272.P15154519460114483802
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) * A000005 (n + 1)

end

end A143272.P15154519460114483802

namespace A143272

/-- `∑[n+1]*A000005(n+1)` -/
def P15154519460114483802.Spec : Prop :=
  ∀ n, P15154519460114483802.a n = A143272 (n + 1)

theorem P15154519460114483802.correct : P15154519460114483802.Spec := by
  intro n
  simp only [A143272, Nat.add_sub_cancel, A143272.P15154519460114483802.f1, A143272.P15154519460114483802.a, A143272.P6280344008672614282.f1, A143272.P6280344008672614282.f2, A143272.P6280344008672614282.a, A000005, A000005.P16091521709108585461.a, A032741, A032741.P3022166995030670566.f1, A032741.P3022166995030670566.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A143272

/-! ## A143272.P4676306237877944316

`(n+2)/2*A038040(n+1)`
-/

namespace A143272.P4676306237877944316
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℚ) / 2 * (A038040 (n + 1) : ℚ)

end

end A143272.P4676306237877944316

namespace A143272

/-- `(n+2)/2*A038040(n+1)` -/
def P4676306237877944316.Spec : Prop :=
  ∀ n, P4676306237877944316.a n = (A143272 (n + 1) : ℚ)

end A143272

/-! ## A143272.P7118120731642857145

`Δ[A006218(n)]*A000217(n+1)`
-/

namespace A143272.P7118120731642857145
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006218 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A000217 (n + 1)

end

end A143272.P7118120731642857145

namespace A143272

/-- `Δ[A006218(n)]*A000217(n+1)` -/
def P7118120731642857145.Spec : Prop :=
  ∀ n, P7118120731642857145.a n = A143272 (n + 1)

end A143272

/-! ## A143272.P2577766603968434241

`A000005(n+1)*A000217(n+1)`
-/

namespace A143272.P2577766603968434241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) * A000217 (n + 1)

end

end A143272.P2577766603968434241

namespace A143272

/-- `A000005(n+1)*A000217(n+1)` -/
def P2577766603968434241.Spec : Prop :=
  ∀ n, P2577766603968434241.a n = A143272 (n + 1)

end A143272

/-! ## A143272.P3082042741763146644

`(A032741(n+1)+1)*A000217(n+1)`
-/

namespace A143272.P3082042741763146644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A032741 (n + 1) + 1) * A000217 (n + 1)

end

end A143272.P3082042741763146644

namespace A143272

/-- `(A032741(n+1)+1)*A000217(n+1)` -/
def P3082042741763146644.Spec : Prop :=
  ∀ n, P3082042741763146644.a n = A143272 (n + 1)

end A143272

/-! ## A143272.P6599603150726152484

`A000217(n+1)*A320111(2*(n+1))`
-/

namespace A143272.P6599603150726152484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (n + 1) * A320111 (2 * (n + 1))

end

end A143272.P6599603150726152484

namespace A143272

/-- `A000217(n+1)*A320111(2*(n+1))` -/
def P6599603150726152484.Spec : Prop :=
  ∀ n, P6599603150726152484.a n = A143272 (n + 1)

end A143272

/-! ## A143272.P10819822022698368603

`A000217(n+1)/(n+1)²*A034714(n+1)`
-/

namespace A143272.P10819822022698368603
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000217 (n + 1) : ℚ) / ((n + 1) ^ 2 : ℚ) * (A034714 (n + 1) : ℚ)

end

end A143272.P10819822022698368603

namespace A143272

/-- `A000217(n+1)/(n+1)²*A034714(n+1)` -/
def P10819822022698368603.Spec : Prop :=
  ∀ n, P10819822022698368603.a n = (A143272 (n + 1) : ℚ)

end A143272

/-! ## A143272.P17845643891367289425

`A000005(n+1)+A000005(n+1)*A000096(n)`
-/

namespace A143272.P17845643891367289425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) + A000005 (n + 1) * A000096 n

end

end A143272.P17845643891367289425

namespace A143272

/-- `A000005(n+1)+A000005(n+1)*A000096(n)` -/
def P17845643891367289425.Spec : Prop :=
  ∀ n, P17845643891367289425.a n = A143272 (n + 1)

end A143272

/-! ## A143272.P17465981879131624010

`(A006218(n+1)-A006218(n))*A000217(n+1)`
-/

namespace A143272.P17465981879131624010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A006218 (n + 1) - A006218 n) * A000217 (n + 1)

end

end A143272.P17465981879131624010

namespace A143272

/-- `(A006218(n+1)-A006218(n))*A000217(n+1)` -/
def P17465981879131624010.Spec : Prop :=
  ∀ n, P17465981879131624010.a n = A143272 (n + 1)

end A143272

/-! ## A143272.P1859814575087043100

`(A054519(n+1)-A054519(n))*A000217(n+1)`
-/

namespace A143272.P1859814575087043100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A054519 (n + 1) - A054519 n) * A000217 (n + 1)

end

end A143272.P1859814575087043100

namespace A143272

/-- `(A054519(n+1)-A054519(n))*A000217(n+1)` -/
def P1859814575087043100.Spec : Prop :=
  ∀ n, P1859814575087043100.a n = A143272 (n + 1)

end A143272

/-! ## A143272.P17844589109422934464

`A038040(n+1)+A309732(n+1)-A309731(n+1)`
-/

namespace A143272.P17844589109422934464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038040 (n + 1) + (A309732 (n + 1) - A309731 (n + 1))

end

end A143272.P17844589109422934464

namespace A143272

/-- `A038040(n+1)+A309732(n+1)-A309731(n+1)` -/
def P17844589109422934464.Spec : Prop :=
  ∀ n, P17844589109422934464.a n = A143272 (n + 1)

end A143272

/-! ## A143272.P9545793062207596945

`A309731(n+1)+A309732(n+1)-A064987(n+1)`
-/

namespace A143272.P9545793062207596945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309731 (n + 1) + (A309732 (n + 1) - A064987 (n + 1))

end

end A143272.P9545793062207596945

namespace A143272

/-- `A309731(n+1)+A309732(n+1)-A064987(n+1)` -/
def P9545793062207596945.Spec : Prop :=
  ∀ n, P9545793062207596945.a n = A143272 (n + 1)

end A143272

/-! ## A143272.P11720078847868445469

`(A007503(n+1)-A000203(n+1))*A000217(n+1)`
-/

namespace A143272.P11720078847868445469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A007503 (n + 1) - A000203 (n + 1)) * A000217 (n + 1)

end

end A143272.P11720078847868445469

namespace A143272

/-- `(A007503(n+1)-A000203(n+1))*A000217(n+1)` -/
def P11720078847868445469.Spec : Prop :=
  ∀ n, P11720078847868445469.a n = A143272 (n + 1)

end A143272

/-! ## A143272.P3576718139767227560

`(A184389(n+1)-A066446(n+1))*A000217(n+1)`
-/

namespace A143272.P3576718139767227560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A184389 (n + 1) - A066446 (n + 1)) * A000217 (n + 1)

end

end A143272.P3576718139767227560

namespace A143272

/-- `(A184389(n+1)-A066446(n+1))*A000217(n+1)` -/
def P3576718139767227560.Spec : Prop :=
  ∀ n, P3576718139767227560.a n = A143272 (n + 1)

end A143272

/-! ## A143272.P13521776418676879407

`A000217(n+1)/A001227(n+1)*A335841(n+1)`
-/

namespace A143272.P13521776418676879407
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000217 (n + 1) : ℚ) / (A001227 (n + 1) : ℚ) * (A335841 (n + 1) : ℚ)

end

end A143272.P13521776418676879407

namespace A143272

/-- `A000217(n+1)/A001227(n+1)*A335841(n+1)` -/
def P13521776418676879407.Spec : Prop :=
  ∀ n, P13521776418676879407.a n = (A143272 (n + 1) : ℚ)

end A143272

/-! ## A143272.P9365450281130054570

`A000005(n+1)*A161680(n+2)`
-/

namespace A143272.P9365450281130054570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) * A161680 (n + 2)

end

end A143272.P9365450281130054570

namespace A143272

/-- `A000005(n+1)*A161680(n+2)` -/
def P9365450281130054570.Spec : Prop :=
  ∀ n, P9365450281130054570.a n = A143272 (n + 1)

end A143272

/-!
# A143273: Triangle read by rows: A127648 * A000012 * A130209.

The programs for A143273, the canonical program `A143273.P10442517176887740100` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A143273 has offset 1).

The definition of A143273 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A143273.P10466326738558172560

`(comp[C(n, 2)]-(n+1))*A000005(2*(n+1)-A004201(n+1))`
-/

namespace A143273.P10466326738558172560
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n + 1 : ℤ)) * A000005 ((2 * (n + 1) : ℤ) - A004201 (n + 1)).toNat

end

end A143273.P10466326738558172560

namespace A143273

/-- `(comp[C(n, 2)]-(n+1))*A000005(2*(n+1)-A004201(n+1))` -/
def P10466326738558172560.Spec : Prop :=
  ∀ n, P10466326738558172560.a n = A143273 (n + 1)

end A143273

/-! ## A143273.P10442517176887740100

`A000005(A002260(n+1))*A002024(n+1)`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A143273

/-- `A000005(A002260(n+1))*A002024(n+1)` -/
def P10442517176887740100.Spec : Prop :=
  ∀ n, P10442517176887740100.a n = A143273 (n + 1)

theorem P10442517176887740100.correct : P10442517176887740100.Spec := by
  intro n
  simp only [A143273, Nat.add_sub_cancel]

end A143273

/-! ## A143273.P17528208108449623379

`A000005(abs(A140756(n+1)))*A002024(n+1)`
-/

namespace A143273.P17528208108449623379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 |A140756 (n + 1)|.toNat * A002024 (n + 1)

end

end A143273.P17528208108449623379

namespace A143273

/-- `A000005(abs(A140756(n+1)))*A002024(n+1)` -/
def P17528208108449623379.Spec : Prop :=
  ∀ n, P17528208108449623379.a n = A143273 (n + 1)

end A143273

/-! ## A143273.P1944830291697312333

`A000005(sqrt(A133819(n+1)))*A002024(n+1)`
-/

namespace A143273.P1944830291697312333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (SequenceMachineLib.roundAway (Real.sqrt (A133819 (n + 1) : ℝ))).toNat * A002024 (n + 1)

end

end A143273.P1944830291697312333

namespace A143273

/-- `A000005(sqrt(A133819(n+1)))*A002024(n+1)` -/
def P1944830291697312333.Spec : Prop :=
  ∀ n, P1944830291697312333.a n = A143273 (n + 1)

end A143273

/-! ## A143273.P5904770806623978494

`A000005(2*(n+1)-A004201(n+1))*A002024(n+1)`
-/

namespace A143273.P5904770806623978494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 ((2 * (n + 1) : ℤ) - A004201 (n + 1)).toNat * A002024 (n + 1)

end

end A143273.P5904770806623978494

namespace A143273

/-- `A000005(2*(n+1)-A004201(n+1))*A002024(n+1)` -/
def P5904770806623978494.Spec : Prop :=
  ∀ n, P5904770806623978494.a n = A143273 (n + 1)

end A143273

/-! ## A143273.P7685958035204746833

`A000005(A349520(2*n+1))*A349520(2*(n+1))`
-/

namespace A143273.P7685958035204746833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A349520 (2 * n + 1)).toNat * A349520 (2 * (n + 1))

end

end A143273.P7685958035204746833

namespace A143273

/-- `A000005(A349520(2*n+1))*A349520(2*(n+1))` -/
def P7685958035204746833.Spec : Prop :=
  ∀ n, P7685958035204746833.a n = A143273 (n + 1)

end A143273

/-! ## A143273.P10104438227188634701

`A000005(A002260(n+1))*A001511(A118416(n+1))`
-/

namespace A143273.P10104438227188634701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A002260 (n + 1)).toNat * A001511 (A118416 (n + 1)).toNat

end

end A143273.P10104438227188634701

namespace A143273

/-- `A000005(A002260(n+1))*A001511(A118416(n+1))` -/
def P10104438227188634701.Spec : Prop :=
  ∀ n, P10104438227188634701.a n = A143273 (n + 1)

end A143273

/-!
# A143274: a(n) = n * A006218(n).

The programs for A143274, the canonical program `A143274.P852831069115198320` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A143274 has offset 1).

The definition of A143274 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(n+1)*A006218(n+1)` (program `A143274.P852831069115198320`, by `A143274.P852831069115198320.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A143274.P852831069115198320

`(n+1)*A006218(n+1)`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A143274

/-- `(n+1)*A006218(n+1)` -/
def P852831069115198320.Spec : Prop :=
  ∀ n, P852831069115198320.a n = A143274 (n + 1)

theorem P852831069115198320.correct : P852831069115198320.Spec := by
  intro n
  simp only [A143274, Nat.add_sub_cancel]

end A143274

/-! ## A143274.P5555211481616288758

`(n+1)*∑[∏{e}[n+1, #+1]]`
-/

namespace A143274.P5555211481616288758
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), (Nat.factorization (f2 n) p + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A143274.P5555211481616288758

namespace A143274

/-- `(n+1)*∑[∏{e}[n+1, #+1]]` -/
def P5555211481616288758.Spec : Prop :=
  ∀ n, (P5555211481616288758.a n : ℤ) = A143274 (n + 1)

end A143274

/-! ## A143274.P3147612003732136112

`(n+1)*∑[∑{d}[n+1, gcd(n, #)]]`
-/

namespace A143274.P3147612003732136112
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n), Nat.gcd n d

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A143274.P3147612003732136112

namespace A143274

/-- `(n+1)*∑[∑{d}[n+1, gcd(n, #)]]` -/
def P3147612003732136112.Spec : Prop :=
  ∀ n, (P3147612003732136112.a n : ℤ) = A143274 (n + 1)

end A143274

/-! ## A143274.P10546398785010364110

`(n+1)*∑[∑{d}[n+1, ceil(acot(#))]]`
-/

namespace A143274.P10546398785010364110
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n), ⌈SequenceMachineLib.acot (d : ℝ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A143274.P10546398785010364110

namespace A143274

/-- `(n+1)*∑[∑{d}[n+1, ceil(acot(#))]]` -/
def P10546398785010364110.Spec : Prop :=
  ∀ n, P10546398785010364110.a n = A143274 (n + 1)

end A143274

/-! ## A143274.P3461717582999163060

`(n+1)*∑[∑{d}[n+1, ceil(1/#)]]`
-/

namespace A143274.P3461717582999163060
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n), ⌈1 / (d : ℚ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A143274.P3461717582999163060

namespace A143274

/-- `(n+1)*∑[∑{d}[n+1, ceil(1/#)]]` -/
def P3461717582999163060.Spec : Prop :=
  ∀ n, P3461717582999163060.a n = A143274 (n + 1)

end A143274

/-! ## A143274.P18377945661917688929

`(n+1)*(A077597(n)+1)`
-/

namespace A143274.P18377945661917688929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A077597 n + 1)

end

end A143274.P18377945661917688929

namespace A143274

/-- `(n+1)*(A077597(n)+1)` -/
def P18377945661917688929.Spec : Prop :=
  ∀ n, P18377945661917688929.a n = A143274 (n + 1)

end A143274

/-! ## A143274.P9787121639372075242

`(n+1)*∑[A000005(n+1)]`
-/

namespace A143274.P9787121639372075242
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A143274.P9787121639372075242

namespace A143274

/-- `(n+1)*∑[A000005(n+1)]` -/
def P9787121639372075242.Spec : Prop :=
  ∀ n, P9787121639372075242.a n = A143274 (n + 1)

end A143274

/-! ## A143274.P12235025169713685188

`(n+1)*(A054519(n+1)-1)`
-/

namespace A143274.P12235025169713685188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A054519 (n + 1) - 1)

end

end A143274.P12235025169713685188

namespace A143274

/-- `(n+1)*(A054519(n+1)-1)` -/
def P12235025169713685188.Spec : Prop :=
  ∀ n, P12235025169713685188.a n = A143274 (n + 1)

theorem P12235025169713685188.correct : P12235025169713685188.Spec := by
  intro n
  simp only [A143274, Nat.add_sub_cancel, A143274.P12235025169713685188.a, A143274.P852831069115198320.a, A006218, A006218.P9218434490128439557.a, A054519, A054519.P3292618312068876157.a, A000005, A000005.P16091521709108585461.a, A032741, A032741.P3022166995030670566.f1, A032741.P3022166995030670566.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A143274

/-! ## A143274.P7402290329166566236

`(n+1)*(A161886(n+1)-n)`
-/

namespace A143274.P7402290329166566236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A161886 (n + 1) - (n : ℤ))

end

end A143274.P7402290329166566236

namespace A143274

/-- `(n+1)*(A161886(n+1)-n)` -/
def P7402290329166566236.Spec : Prop :=
  ∀ n, P7402290329166566236.a n = A143274 (n + 1)

end A143274

/-! ## A143274.P2915160503238566913

`(n+1)*∑[A032741(n+1)+1]`
-/

namespace A143274.P2915160503238566913
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A143274.P2915160503238566913

namespace A143274

/-- `(n+1)*∑[A032741(n+1)+1]` -/
def P2915160503238566913.Spec : Prop :=
  ∀ n, P2915160503238566913.a n = A143274 (n + 1)

end A143274

/-! ## A143274.P5943307840789997326

`(n+1)*(A002541(n+1)+n+1)`
-/

namespace A143274.P5943307840789997326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A002541 (n + 1) + (n + 1 : ℤ))

end

end A143274.P5943307840789997326

namespace A143274

/-- `(n+1)*(A002541(n+1)+n+1)` -/
def P5943307840789997326.Spec : Prop :=
  ∀ n, P5943307840789997326.a n = A143274 (n + 1)

theorem P5943307840789997326.correct : P5943307840789997326.Spec := by
  intro n
  simp only [A143274, Nat.add_sub_cancel, A143274.P5943307840789997326.a, A143274.P852831069115198320.a, A002541, A002541.P10664040244727747136.a, A006218, A006218.P9218434490128439557.a, A000005, A000005.P16091521709108585461.a, A032741, A032741.P3022166995030670566.f1, A032741.P3022166995030670566.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A143274

/-! ## A143274.P15198722472863031008

`(n+1)*(A156745(n+1)-(n+1))`
-/

namespace A143274.P15198722472863031008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A156745 (n + 1) - (n + 1 : ℤ))

end

end A143274.P15198722472863031008

namespace A143274

/-- `(n+1)*(A156745(n+1)-(n+1))` -/
def P15198722472863031008.Spec : Prop :=
  ∀ n, P15198722472863031008.a n = A143274 (n + 1)

theorem P15198722472863031008.correct : P15198722472863031008.Spec := by
  intro n
  simp only [A143274, Nat.add_sub_cancel, A143274.P15198722472863031008.a, A143274.P852831069115198320.a, A006218, A006218.P9218434490128439557.a, A156745, A156745.P4004578976620637230.a, A000005, A000005.P16091521709108585461.a, A032741, A032741.P3022166995030670566.f1, A032741.P3022166995030670566.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A143274

/-! ## A143274.P5468956304249052158

`∑[∑{d}[n+1, A020639(2*#)]/2]*(n+1)`
-/

namespace A143274.P5468956304249052158
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ d ∈ Nat.divisors (f2 n), A020639 (2 * d) : ℤ) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * (n + 1 : ℚ)

end

end A143274.P5468956304249052158

namespace A143274

/-- `∑[∑{d}[n+1, A020639(2*#)]/2]*(n+1)` -/
def P5468956304249052158.Spec : Prop :=
  ∀ n, P5468956304249052158.a n = (A143274 (n + 1) : ℚ)

end A143274

/-! ## A143274.P10600736227117036692

`∑[∑{d}[n+1, 1-#]+A000203(n+1)]*(n+1)`
-/

namespace A143274.P10600736227117036692
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n), (1 - (d : ℤ)) + A000203 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * (n + 1 : ℤ)

end

end A143274.P10600736227117036692

namespace A143274

/-- `∑[∑{d}[n+1, 1-#]+A000203(n+1)]*(n+1)` -/
def P10600736227117036692.Spec : Prop :=
  ∀ n, P10600736227117036692.a n = A143274 (n + 1)

end A143274

/-! ## A143274.P8162476176595529597

`∑[A038040(n+1)+A006218(n)]`
-/

namespace A143274.P8162476176595529597
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038040 (n + 1) + A006218 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A143274.P8162476176595529597

namespace A143274

/-- `∑[A038040(n+1)+A006218(n)]` -/
def P8162476176595529597.Spec : Prop :=
  ∀ n, P8162476176595529597.a n = A143274 (n + 1)

end A143274

/-! ## A143274.P16952220774415480343

`A024920(n+1)+A024916(n+1)`
-/

namespace A143274.P16952220774415480343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024920 (n + 1) + A024916 (n + 1)

end

end A143274.P16952220774415480343

namespace A143274

/-- `A024920(n+1)+A024916(n+1)` -/
def P16952220774415480343.Spec : Prop :=
  ∀ n, P16952220774415480343.a n = A143274 (n + 1)

theorem P16952220774415480343.correct : P16952220774415480343.Spec := by
  intro n
  simp only [A143274, Nat.add_sub_cancel, A143274.P16952220774415480343.a, A143274.P852831069115198320.a, A006218, A006218.P9218434490128439557.a, A024916, A024916.P6070136297472608546.a, A024920, A024920.P14181860566313865578.a, A000005, A000005.P16091521709108585461.a, A160664, A160664.P14996881624845338289.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A032741, A032741.P3022166995030670566.f1, A032741.P3022166995030670566.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A143274

/-! ## A143274.P1562599898484174021

`A143127(n+1)+A078567(n+1)`
-/

namespace A143274.P1562599898484174021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143127 (n + 1) + A078567 (n + 1)

end

end A143274.P1562599898484174021

namespace A143274

/-- `A143127(n+1)+A078567(n+1)` -/
def P1562599898484174021.Spec : Prop :=
  ∀ n, P1562599898484174021.a n = A143274 (n + 1)

end A143274

/-! ## A143274.P6336906916896954288

`A024920(n+1)+∑[A000203(n+1)]`
-/

namespace A143274.P6336906916896954288
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024920 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A143274.P6336906916896954288

namespace A143274

/-- `A024920(n+1)+∑[A000203(n+1)]` -/
def P6336906916896954288.Spec : Prop :=
  ∀ n, P6336906916896954288.a n = A143274 (n + 1)

end A143274

/-! ## A143274.P6706183866739903928

`A024916(n+1)+A355947(n+1)-A006218(n+1)`
-/

namespace A143274.P6706183866739903928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024916 (n + 1) + (A355947 (n + 1) - A006218 (n + 1))

end

end A143274.P6706183866739903928

namespace A143274

/-- `A024916(n+1)+A355947(n+1)-A006218(n+1)` -/
def P6706183866739903928.Spec : Prop :=
  ∀ n, P6706183866739903928.a n = A143274 (n + 1)

end A143274

/-! ## A143274.P4958606711226439038

`A038040(n+1)+A106847(n+1)-A106847(n)`
-/

namespace A143274.P4958606711226439038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038040 (n + 1) + (A106847 (n + 1) - A106847 n)

end

end A143274.P4958606711226439038

namespace A143274

/-- `A038040(n+1)+A106847(n+1)-A106847(n)` -/
def P4958606711226439038.Spec : Prop :=
  ∀ n, P4958606711226439038.a n = A143274 (n + 1)

end A143274

/-!
# A143275: A054525 * A029935.

The programs for A143275, the canonical program `A143275.P7811182970154624071` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A143275 has offset 1).

The definition of A143275 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A143275.P7811182970154624071

`∑{d}[n+1, #*A007432((n+1)/#)]`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A143275

/-- `∑{d}[n+1, #*A007432((n+1)/#)]` -/
def P7811182970154624071.Spec : Prop :=
  ∀ n, P7811182970154624071.a n = A143275 (n + 1)

theorem P7811182970154624071.correct : P7811182970154624071.Spec := by
  intro n
  simp only [A143275, Nat.add_sub_cancel]

end A143275

/-! ## A143275.P8382007524283060443

`∑{d}[n+1, A000010(#)*A007431((n+1)/#)]`
-/

namespace A143275.P8382007524283060443
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000010 d * A007431 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A143275.P8382007524283060443

namespace A143275

/-- `∑{d}[n+1, A000010(#)*A007431((n+1)/#)]` -/
def P8382007524283060443.Spec : Prop :=
  ∀ n, P8382007524283060443.a n = A143275 (n + 1)

end A143275

/-! ## A143275.P2618129523169397115

`∑{d}[n+1, A007427(#)*A018804((n+1)/#)]`
-/

namespace A143275.P2618129523169397115
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007427 d * A018804 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A143275.P2618129523169397115

namespace A143275

/-- `∑{d}[n+1, A007427(#)*A018804((n+1)/#)]` -/
def P2618129523169397115.Spec : Prop :=
  ∀ n, P2618129523169397115.a n = A143275 (n + 1)

end A143275

/-! ## A143275.P5567421852157476308

`∑{d}[n+1, A008683(#)*A029935((n+1)/#)]`
-/

namespace A143275.P5567421852157476308
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008683 d * A029935 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A143275.P5567421852157476308

namespace A143275

/-- `∑{d}[n+1, A008683(#)*A029935((n+1)/#)]` -/
def P5567421852157476308.Spec : Prop :=
  ∀ n, P5567421852157476308.a n = A143275 (n + 1)

end A143275

/-! ## A143275.P6173971302880711453

`∑{d}[n+1, A007428(#)*A038040((n+1)/#)]`
-/

namespace A143275.P6173971302880711453
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007428 d * A038040 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A143275.P6173971302880711453

namespace A143275

/-- `∑{d}[n+1, A007428(#)*A038040((n+1)/#)]` -/
def P6173971302880711453.Spec : Prop :=
  ∀ n, P6173971302880711453.a n = A143275 (n + 1)

end A143275

/-! ## A143275.P15968438803553632612

`∑{d}[n+1, A074722(#)*A130107((n+1)/#)]`
-/

namespace A143275.P15968438803553632612
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A074722 d * A130107 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A143275.P15968438803553632612

namespace A143275

/-- `∑{d}[n+1, A074722(#)*A130107((n+1)/#)]` -/
def P15968438803553632612.Spec : Prop :=
  ∀ n, P15968438803553632612.a n = A143275 (n + 1)

end A143275

/-! ## A143275.P15004243356427551576

`∑{d}[n+1, A060640(#)*A247343((n+1)/#)]`
-/

namespace A143275.P15004243356427551576
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A060640 d * A247343 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A143275.P15004243356427551576

namespace A143275

/-- `∑{d}[n+1, A060640(#)*A247343((n+1)/#)]` -/
def P15004243356427551576.Spec : Prop :=
  ∀ n, P15004243356427551576.a n = A143275 (n + 1)

end A143275

/-! ## A143275.P2239555278357395119

`∑{d}[n+1, A034761(#)*A341831((n+1)/#)]`
-/

namespace A143275.P2239555278357395119
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A034761 d * A341831 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A143275.P2239555278357395119

namespace A143275

/-- `∑{d}[n+1, A034761(#)*A341831((n+1)/#)]` -/
def P2239555278357395119.Spec : Prop :=
  ∀ n, P2239555278357395119.a n = A143275 (n + 1)

end A143275

/-! ## A143275.P2316741473821547125

`∑{d}[n+1, A055615(#)*A344683((n+1)/#)]`
-/

namespace A143275.P2316741473821547125
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A055615 d * A344683 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A143275.P2316741473821547125

namespace A143275

/-- `∑{d}[n+1, A055615(#)*A344683((n+1)/#)]` -/
def P2316741473821547125.Spec : Prop :=
  ∀ n, P2316741473821547125.a n = A143275 (n + 1)

end A143275

/-! ## A143275.P1765605888840015217

`∑{d}[n+1, A255655(#)*A327274((n+1)/#)]`
-/

namespace A143275.P1765605888840015217
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A255655 d * A327274 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A143275.P1765605888840015217

namespace A143275

/-- `∑{d}[n+1, A255655(#)*A327274((n+1)/#)]` -/
def P1765605888840015217.Spec : Prop :=
  ∀ n, P1765605888840015217.a n = A143275 (n + 1)

end A143275

/-! ## A143275.P14558155044891145655

`∑{d}[n+1, A322577(#)*A326415((n+1)/#)]`
-/

namespace A143275.P14558155044891145655
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A322577 d * A326415 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A143275.P14558155044891145655

namespace A143275

/-- `∑{d}[n+1, A322577(#)*A326415((n+1)/#)]` -/
def P14558155044891145655.Spec : Prop :=
  ∀ n, P14558155044891145655.a n = A143275 (n + 1)

end A143275

/-! ## A143275.P6282087073007189511

`∑{d}[n+1, A328502(#)*A341772((n+1)/#)]`
-/

namespace A143275.P6282087073007189511
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A328502 d * A341772 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A143275.P6282087073007189511

namespace A143275

/-- `∑{d}[n+1, A328502(#)*A341772((n+1)/#)]` -/
def P6282087073007189511.Spec : Prop :=
  ∀ n, P6282087073007189511.a n = A143275 (n + 1)

end A143275

/-! ## A143275.P16194991427251496819

`∑{d}[n+1, A327960(#)*A349692((n+1)/#)]`
-/

namespace A143275.P16194991427251496819
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A327960 d * A349692 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A143275.P16194991427251496819

namespace A143275

/-- `∑{d}[n+1, A327960(#)*A349692((n+1)/#)]` -/
def P16194991427251496819.Spec : Prop :=
  ∀ n, P16194991427251496819.a n = A143275 (n + 1)

end A143275

/-!
# A143276: Triangle read by rows: A054525 * A054523 as infinite lower triangular matrices.

The programs for A143276, the canonical program `A143276.P14600609899696088407` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A143276 has offset 1).

The definition of A143276 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A143276.P17630714547670282506

`A007431(A126988(n+1))`
-/

namespace A143276.P17630714547670282506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007431 (A126988 (n + 1)).toNat

end

end A143276.P17630714547670282506

namespace A143276

/-- `A007431(A126988(n+1))` -/
def P17630714547670282506.Spec : Prop :=
  ∀ n, P17630714547670282506.a n = A143276 (n + 1)

end A143276

/-! ## A143276.P14600609899696088407

`∑{d}[A126988(n+1), A007432(#)]`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A143276

/-- `∑{d}[A126988(n+1), A007432(#)]` -/
def P14600609899696088407.Spec : Prop :=
  ∀ n, P14600609899696088407.a n = A143276 (n + 1)

theorem P14600609899696088407.correct : P14600609899696088407.Spec := by
  intro n
  simp only [A143276, Nat.add_sub_cancel]

end A143276

/-! ## A143276.P6396841237887742926

`A007431(A141680(n+1)/A135278(n))`
-/

namespace A143276.P6396841237887742926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007431 (SequenceMachineLib.roundAway ((A141680 (n + 1) : ℚ) / (A135278 n : ℚ))).toNat

end

end A143276.P6396841237887742926

namespace A143276

/-- `A007431(A141680(n+1)/A135278(n))` -/
def P6396841237887742926.Spec : Prop :=
  ∀ n, P6396841237887742926.a n = A143276 (n + 1)

end A143276

/-! ## A143276.P15222412993897920140

`A007431(A010766(n+1)*A051731(n+1))`
-/

namespace A143276.P15222412993897920140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007431 (A010766 (n + 1) * A051731 (n + 1)).toNat

end

end A143276.P15222412993897920140

namespace A143276

/-- `A007431(A010766(n+1)*A051731(n+1))` -/
def P15222412993897920140.Spec : Prop :=
  ∀ n, P15222412993897920140.a n = A143276 (n + 1)

end A143276

/-! ## A143276.P10211143679555843335

`A007431(A049834(n+1)*A051731(n+1))`
-/

namespace A143276.P10211143679555843335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007431 (A049834 (n + 1) * A051731 (n + 1)).toNat

end

end A143276.P10211143679555843335

namespace A143276

/-- `A007431(A049834(n+1)*A051731(n+1))` -/
def P10211143679555843335.Spec : Prop :=
  ∀ n, P10211143679555843335.a n = A143276 (n + 1)

end A143276

/-! ## A143276.P17191362832121481501

`A007431(A127446(n+1)/A002260(n+1))`
-/

namespace A143276.P17191362832121481501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007431 (SequenceMachineLib.roundAway ((A127446 (n + 1) : ℚ) / (A002260 (n + 1) : ℚ))).toNat

end

end A143276.P17191362832121481501

namespace A143276

/-- `A007431(A127446(n+1)/A002260(n+1))` -/
def P17191362832121481501.Spec : Prop :=
  ∀ n, P17191362832121481501.a n = A143276 (n + 1)

end A143276

/-!
# A143278: Convolution of A006352 and A010815.

The programs for A143278, the canonical program `A143278.P3385981285395499080` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A143278 has offset 0).

The definition of A143278 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1257 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A143278.P12930314652122749173

`(24*n+1)*A010815(n)`
-/

namespace A143278.P12930314652122749173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (24 * n + 1 : ℤ) * A010815 n

end

end A143278.P12930314652122749173

namespace A143278

/-- `(24*n+1)*A010815(n)` -/
def P12930314652122749173.Spec : Prop :=
  ∀ n, P12930314652122749173.a n = A143278 n

end A143278

/-! ## A143278.P12676842880587898952

`(24*n+1)*A204843(24*n+1)`
-/

namespace A143278.P12676842880587898952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (24 * n + 1 : ℤ) * A204843 (24 * n + 1)

end

end A143278.P12676842880587898952

namespace A143278

/-- `(24*n+1)*A204843(24*n+1)` -/
def P12676842880587898952.Spec : Prop :=
  ∀ n, P12676842880587898952.a n = A143278 n

end A143278

/-! ## A143278.P7559172515837578119

`A010815(n)*A103214(n)`
-/

namespace A143278.P7559172515837578119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010815 n * A103214 n

end

end A143278.P7559172515837578119

namespace A143278

/-- `A010815(n)*A103214(n)` -/
def P7559172515837578119.Spec : Prop :=
  ∀ n, P7559172515837578119.a n = A143278 n

end A143278

/-! ## A143278.P6618263354098568150

`A080332(n)*A116916(n)`
-/

namespace A143278.P6618263354098568150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080332 n * A116916 n

end

end A143278.P6618263354098568150

namespace A143278

/-- `A080332(n)*A116916(n)` -/
def P6618263354098568150.Spec : Prop :=
  ∀ n, P6618263354098568150.a n = A143278 n

end A143278

/-! ## A143278.P8628575178410547906

`A133079(n)*A178902(n)`
-/

namespace A143278.P8628575178410547906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133079 n * A178902 n

end

end A143278.P8628575178410547906

namespace A143278

/-- `A133079(n)*A178902(n)` -/
def P8628575178410547906.Spec : Prop :=
  ∀ n, P8628575178410547906.a n = A143278 n

end A143278

/-! ## A143278.P4399572858262578806

`abs(A080332(n))*A134756(n)`
-/

namespace A143278.P4399572858262578806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A080332 n| * A134756 n

end

end A143278.P4399572858262578806

namespace A143278

/-- `abs(A080332(n))*A134756(n)` -/
def P4399572858262578806.Spec : Prop :=
  ∀ n, P4399572858262578806.a n = A143278 n

end A143278

/-! ## A143278.P867318115325660980

`abs(A116916(n))*A134756(n)`
-/

namespace A143278.P867318115325660980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A116916 n| * A134756 n

end

end A143278.P867318115325660980

namespace A143278

/-- `abs(A116916(n))*A134756(n)` -/
def P867318115325660980.Spec : Prop :=
  ∀ n, P867318115325660980.a n = A143278 n

end A143278

/-! ## A143278.P2770751386739592336

`abs(A133079(n))*A134756(n)`
-/

namespace A143278.P2770751386739592336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A133079 n| * A134756 n

end

end A143278.P2770751386739592336

namespace A143278

/-- `abs(A133079(n))*A134756(n)` -/
def P2770751386739592336.Spec : Prop :=
  ∀ n, P2770751386739592336.a n = A143278 n

end A143278

/-! ## A143278.P3826541113895761788

`A010815(n)*A080332(n)*A080332(n)`
-/

namespace A143278.P3826541113895761788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010815 n * A080332 n * A080332 n

end

end A143278.P3826541113895761788

namespace A143278

/-- `A010815(n)*A080332(n)*A080332(n)` -/
def P3826541113895761788.Spec : Prop :=
  ∀ n, P3826541113895761788.a n = A143278 n

end A143278

/-! ## A143278.P6386445737402592065

`A010815(n)*A116916(n)*A116916(n)`
-/

namespace A143278.P6386445737402592065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010815 n * A116916 n * A116916 n

end

end A143278.P6386445737402592065

namespace A143278

/-- `A010815(n)*A116916(n)*A116916(n)` -/
def P6386445737402592065.Spec : Prop :=
  ∀ n, P6386445737402592065.a n = A143278 n

end A143278

/-! ## A143278.P10041667390308139779

`A010815(n)*A133079(n)*A133079(n)`
-/

namespace A143278.P10041667390308139779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010815 n * A133079 n * A133079 n

end

end A143278.P10041667390308139779

namespace A143278

/-- `A010815(n)*A133079(n)*A133079(n)` -/
def P10041667390308139779.Spec : Prop :=
  ∀ n, P10041667390308139779.a n = A143278 n

end A143278

/-! ## A143278.P14703574402004441528

`A010815(n)*A134756(n)*A134756(n)`
-/

namespace A143278.P14703574402004441528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010815 n * A134756 n * A134756 n

end

end A143278.P14703574402004441528

namespace A143278

/-- `A010815(n)*A134756(n)*A134756(n)` -/
def P14703574402004441528.Spec : Prop :=
  ∀ n, P14703574402004441528.a n = A143278 n

end A143278

/-! ## A143278.P9884176678745625633

`A010815(n)*A178902(n)*A178902(n)`
-/

namespace A143278.P9884176678745625633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010815 n * A178902 n * A178902 n

end

end A143278.P9884176678745625633

namespace A143278

/-- `A010815(n)*A178902(n)*A178902(n)` -/
def P9884176678745625633.Spec : Prop :=
  ∀ n, P9884176678745625633.a n = A143278 n

end A143278

/-! ## A143278.P15174071576666313990

`A116916(n)*A121373(n)*A133079(n)`
-/

namespace A143278.P15174071576666313990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116916 n * A121373 n * A133079 n

end

end A143278.P15174071576666313990

namespace A143278

/-- `A116916(n)*A121373(n)*A133079(n)` -/
def P15174071576666313990.Spec : Prop :=
  ∀ n, P15174071576666313990.a n = A143278 n

end A143278

/-! ## A143278.P15446500041280113233

`A080332(n)*A121373(n)*A178902(n)`
-/

namespace A143278.P15446500041280113233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080332 n * A121373 n * A178902 n

end

end A143278.P15446500041280113233

namespace A143278

/-- `A080332(n)*A121373(n)*A178902(n)` -/
def P15446500041280113233.Spec : Prop :=
  ∀ n, P15446500041280113233.a n = A143278 n

end A143278

/-! ## A143278.P3385981285395499080

`(24*n+1)*(A007706(n)-1)`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A143278

/-- `(24*n+1)*(A007706(n)-1)` -/
def P3385981285395499080.Spec : Prop :=
  ∀ n, P3385981285395499080.a n = A143278 n

theorem P3385981285395499080.correct : P3385981285395499080.Spec := by
  intro n
  simp only [A143278]

end A143278

/-! ## A143278.P1989816597293595689

`(A007706(n)-1)*A103214(n)`
-/

namespace A143278.P1989816597293595689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A007706 n - 1) * A103214 n

end

end A143278.P1989816597293595689

namespace A143278

/-- `(A007706(n)-1)*A103214(n)` -/
def P1989816597293595689.Spec : Prop :=
  ∀ n, P1989816597293595689.a n = A143278 n

theorem P1989816597293595689.correct : P1989816597293595689.Spec := by
  intro n
  simp only [A143278, Nat.add_sub_cancel, A143278.P1989816597293595689.a, A143278.P3385981285395499080.a, A007706, A007706.P7962893497832790206.a, A103214, A103214.P17136705003217623136.a, A000007, A000007.P6599383543502402472.a, A257628, A257628.P18237328773760466214.a, A147843, A147843.P14429766809705781327.a, A010815, A010815.P5219802530418017542.f1, A010815.P5219802530418017542.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A143278

/-! ## A143278.P644551675538284554

`(24*n+1)*A322212(∑[n])`
-/

namespace A143278.P644551675538284554
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (24 * n + 1 : ℤ) * A322212 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A143278.P644551675538284554

namespace A143278

/-- `(24*n+1)*A322212(∑[n])` -/
def P644551675538284554.Spec : Prop :=
  ∀ n, P644551675538284554.a n = A143278 n

end A143278

/-!
# A143281: Number of binary words of length n containing at least one subword 101 and no subword 11.

The programs for A143281, the canonical program `A143281.P18435193582386234759` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A143281 has offset 0).

The definition of A143281 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A143281.P18435193582386234759

`A000045(n+2)-A000930(n+2)`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A143281

/-- `A000045(n+2)-A000930(n+2)` -/
def P18435193582386234759.Spec : Prop :=
  ∀ n, P18435193582386234759.a n = A143281 n

theorem P18435193582386234759.correct : P18435193582386234759.Spec := by
  intro n
  simp only [A143281]

end A143281

/-! ## A143281.P2867325202459241903

`a(n-1)+A000045(n-2)+a(n-3)` with `a(0)=0, a(1)=0, a(2)=0`
-/

namespace A143281.P2867325202459241903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0, 0] fun n a =>
  a (n - 1) + (A000045 (n - 2) + a (n - 3))

end

end A143281.P2867325202459241903

namespace A143281

/-- `a(n-1)+A000045(n-2)+a(n-3)` -/
def P2867325202459241903.Spec : Prop :=
  ∀ n, P2867325202459241903.a n = A143281 n

end A143281

/-! ## A143281.P9008228049768143329

`A000045(n+2)-A068921(n+1)`
-/

namespace A143281.P9008228049768143329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (n + 2) - A068921 (n + 1)

end

end A143281.P9008228049768143329

namespace A143281

/-- `A000045(n+2)-A068921(n+1)` -/
def P9008228049768143329.Spec : Prop :=
  ∀ n, P9008228049768143329.a n = A143281 n

end A143281

/-! ## A143281.P12904903011823435904

`A115339(2*n+1)-A068921(n+1)`
-/

namespace A143281.P12904903011823435904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115339 (2 * n + 1) - A068921 (n + 1)

end

end A143281.P12904903011823435904

namespace A143281

/-- `A115339(2*n+1)-A068921(n+1)` -/
def P12904903011823435904.Spec : Prop :=
  ∀ n, P12904903011823435904.a n = A143281 n

end A143281

/-! ## A143281.P12580686352684921468

`A115339(2*n+1)-A000930(n+2)`
-/

namespace A143281.P12580686352684921468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115339 (2 * n + 1) - A000930 (n + 2)

end

end A143281.P12580686352684921468

namespace A143281

/-- `A115339(2*n+1)-A000930(n+2)` -/
def P12580686352684921468.Spec : Prop :=
  ∀ n, P12580686352684921468.a n = A143281 n

end A143281

/-! ## A143281.P2245651275652799354

`A272912(2*n+3)-A000930(n+2)`
-/

namespace A143281.P2245651275652799354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272912 (2 * n + 3) - A000930 (n + 2)

end

end A143281.P2245651275652799354

namespace A143281

/-- `A272912(2*n+3)-A000930(n+2)` -/
def P2245651275652799354.Spec : Prop :=
  ∀ n, P2245651275652799354.a n = A143281 n

end A143281

/-! ## A143281.P8372484884109947343

`A000071(n+2)+A000930(n)-A077868(n)`
-/

namespace A143281.P8372484884109947343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000071 (n + 2) + (A000930 n - A077868 n)

end

end A143281.P8372484884109947343

namespace A143281

/-- `A000071(n+2)+A000930(n)-A077868(n)` -/
def P8372484884109947343.Spec : Prop :=
  ∀ n, P8372484884109947343.a n = A143281 n

end A143281

/-! ## A143281.P17550291096918189840

`2*a(n-1)-a(n-4)-a(n-5)` with `a(0)=0, a(1)=0, a(2)=0, a(3)=1, a(4)=2`
-/

namespace A143281.P17550291096918189840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0, 0, 1, 2] fun n a =>
  2 * a (n - 1) - a (n - 4) - a (n - 5)

end

end A143281.P17550291096918189840

namespace A143281

/-- `2*a(n-1)-a(n-4)-a(n-5)` -/
def P17550291096918189840.Spec : Prop :=
  ∀ n, P17550291096918189840.a n = A143281 n

end A143281

/-! ## A143281.P4363361145928357759

`A118645(n)-A008466(n)`
-/

namespace A143281.P4363361145928357759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118645 n - A008466 n

end

end A143281.P4363361145928357759

namespace A143281

/-- `A118645(n)-A008466(n)` -/
def P4363361145928357759.Spec : Prop :=
  ∀ n, P4363361145928357759.a n = A143281 n

end A143281

/-!
# A143282: Number of binary words of length n containing at least one subword 1001 and no subwords 10^{i}1 with i

The programs for A143282, the canonical program `A143282.P17898293873386048579` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A143282 has offset 0).

The definition of A143282 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A143282.P17898293873386048579

`A000930(n+2)-A003269(n+4)`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A143282

/-- `A000930(n+2)-A003269(n+4)` -/
def P17898293873386048579.Spec : Prop :=
  ∀ n, P17898293873386048579.a n = A143282 n

theorem P17898293873386048579.correct : P17898293873386048579.Spec := by
  intro n
  simp only [A143282]

end A143282

/-! ## A143282.P18389444942868408695

`∑[Δ[A068921(n)]-A003269(n)]`
-/

namespace A143282.P18389444942868408695
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068921 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n - A003269 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A143282.P18389444942868408695

namespace A143282

/-- `∑[Δ[A068921(n)]-A003269(n)]` -/
def P18389444942868408695.Spec : Prop :=
  ∀ n, P18389444942868408695.a n = A143282 n

end A143282

/-! ## A143282.P4353774978267789278

`A000930(n+2)-record[A017898(n)]`
-/

namespace A143282.P4353774978267789278
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017898 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000930 (n + 2) - f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A143282.P4353774978267789278

namespace A143282

/-- `A000930(n+2)-record[A017898(n)]` -/
def P4353774978267789278.Spec : Prop :=
  ∀ n, P4353774978267789278.a n = A143282 n

end A143282

/-! ## A143282.P1025496730096711213

`A077868(n)-(A098578(n)+A000930(n))`
-/

namespace A143282.P1025496730096711213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077868 n - (A098578 n + A000930 n)

end

end A143282.P1025496730096711213

namespace A143282

/-- `A077868(n)-(A098578(n)+A000930(n))` -/
def P1025496730096711213.Spec : Prop :=
  ∀ n, P1025496730096711213.a n = A143282 n

end A143282

/-! ## A143282.P10909217935345703968

`∑[A000930(n)-A003269(n)]-A000930(n)`
-/

namespace A143282.P10909217935345703968
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000930 n - A003269 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A000930 n

end

end A143282.P10909217935345703968

namespace A143282

/-- `∑[A000930(n)-A003269(n)]-A000930(n)` -/
def P10909217935345703968.Spec : Prop :=
  ∀ n, P10909217935345703968.a n = A143282 n

end A143282

/-!
# A143283: Number of binary words of length n containing at least one subword 10001 and no subwords 10^{i}1 with i

The programs for A143283, the canonical program `A143283.P17170733134350020410` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A143283 has offset 0).

The definition of A143283 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A143283.P17170733134350020410

`A003269(n+4)-A003520(n+4)`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A143283

/-- `A003269(n+4)-A003520(n+4)` -/
def P17170733134350020410.Spec : Prop :=
  ∀ n, P17170733134350020410.a n = A143283 n

theorem P17170733134350020410.correct : P17170733134350020410.Spec := by
  intro n
  simp only [A143283]

end A143283

/-! ## A143283.P8507111438842202450

`A098578(n)-A099559(n)`
-/

namespace A143283.P8507111438842202450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098578 n - A099559 n

end

end A143283.P8507111438842202450

namespace A143283

/-- `A098578(n)-A099559(n)` -/
def P8507111438842202450.Spec : Prop :=
  ∀ n, P8507111438842202450.a n = A143283 n

end A143283

/-! ## A143283.P4515104288496742468

`∑[A003269(n)]-A099559(n)`
-/

namespace A143283.P4515104288496742468
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003269 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A099559 n

end

end A143283.P4515104288496742468

namespace A143283

/-- `∑[A003269(n)]-A099559(n)` -/
def P4515104288496742468.Spec : Prop :=
  ∀ n, P4515104288496742468.a n = A143283 n

end A143283

/-! ## A143283.P4464273141151430529

`record[A017898(n)]-record[A017899(n)]`
-/

namespace A143283.P4464273141151430529
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017898 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017899 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

end

end A143283.P4464273141151430529

namespace A143283

/-- `record[A017898(n)]-record[A017899(n)]` -/
def P4464273141151430529.Spec : Prop :=
  ∀ n, P4464273141151430529.a n = A143283 n

end A143283

/-! ## A143283.P13929597937708269610

`record[A017898(n)]-A003520(n+4)`
-/

namespace A143283.P13929597937708269610
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017898 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A003520 (n + 4)

end

end A143283.P13929597937708269610

namespace A143283

/-- `record[A017898(n)]-A003520(n+4)` -/
def P13929597937708269610.Spec : Prop :=
  ∀ n, P13929597937708269610.a n = A143283 n

end A143283

/-!
# A143284: Number of binary words of length n containing at least one subword 100001 and no subwords 10^{i}1 with i

The programs for A143284, the canonical program `A143284.P12262816341558427075` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A143284 has offset 0).

The definition of A143284 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A143284.P12262816341558427075

`A003520(n+4)-A005708(n+5)`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A143284

/-- `A003520(n+4)-A005708(n+5)` -/
def P12262816341558427075.Spec : Prop :=
  ∀ n, P12262816341558427075.a n = A143284 n

theorem P12262816341558427075.correct : P12262816341558427075.Spec := by
  intro n
  simp only [A143284]

end A143284

/-! ## A143284.P15799975797630836828

`record[A017899(n)]-A005708(n+5)`
-/

namespace A143284.P15799975797630836828
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017899 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A005708 (n + 5)

end

end A143284.P15799975797630836828

namespace A143284

/-- `record[A017899(n)]-A005708(n+5)` -/
def P15799975797630836828.Spec : Prop :=
  ∀ n, P15799975797630836828.a n = A143284 n

end A143284

/-! ## A143284.P6535631751038319996

`A017899(n+9)-A005708(n+5)`
-/

namespace A143284.P6535631751038319996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017899 (n + 9) - A005708 (n + 5)

end

end A143284.P6535631751038319996

namespace A143284

/-- `A017899(n+9)-A005708(n+5)` -/
def P6535631751038319996.Spec : Prop :=
  ∀ n, P6535631751038319996.a n = A143284 n

end A143284

/-! ## A143284.P10345736722985939522

`A017899(n+9)-A017900(n+11)`
-/

namespace A143284.P10345736722985939522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017899 (n + 9) - A017900 (n + 11)

end

end A143284.P10345736722985939522

namespace A143284

/-- `A017899(n+9)-A017900(n+11)` -/
def P10345736722985939522.Spec : Prop :=
  ∀ n, P10345736722985939522.a n = A143284 n

end A143284

/-! ## A143284.P1703379277543360546

`A003520(n+9)%(A005708(n+5)+A003520(n+8))`
-/

namespace A143284.P1703379277543360546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A003520 (n + 9)) (A005708 (n + 5) + A003520 (n + 8))

end

end A143284.P1703379277543360546

namespace A143284

/-- `A003520(n+9)%(A005708(n+5)+A003520(n+8))` -/
def P1703379277543360546.Spec : Prop :=
  ∀ n, P1703379277543360546.a n = A143284 n

end A143284

/-!
# A143285: Number of binary words of length n containing at least one subword 1000001 and no subwords 10^{i}1 with i

The programs for A143285, the canonical program `A143285.P16206103124320944146` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A143285 has offset 0).

The definition of A143285 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A143285.P16206103124320944146

`A005708(n+5)-A005709(n+6)`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A143285

/-- `A005708(n+5)-A005709(n+6)` -/
def P16206103124320944146.Spec : Prop :=
  ∀ n, P16206103124320944146.a n = A143285 n

theorem P16206103124320944146.correct : P16206103124320944146.Spec := by
  intro n
  simp only [A143285]

end A143285

/-! ## A143285.P2343984281094230579

`record[A017900(n)]-record[A017901(n)]`
-/

namespace A143285.P2343984281094230579
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017900 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017901 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

end

end A143285.P2343984281094230579

namespace A143285

/-- `record[A017900(n)]-record[A017901(n)]` -/
def P2343984281094230579.Spec : Prop :=
  ∀ n, P2343984281094230579.a n = A143285 n

end A143285

/-! ## A143285.P17243047894181583717

`A017900(n+11)-A005709(n+6)`
-/

namespace A143285.P17243047894181583717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017900 (n + 11) - A005709 (n + 6)

end

end A143285.P17243047894181583717

namespace A143285

/-- `A017900(n+11)-A005709(n+6)` -/
def P17243047894181583717.Spec : Prop :=
  ∀ n, P17243047894181583717.a n = A143285 n

end A143285

/-! ## A143285.P14195289968993035425

`A017900(n+11)-A017901(n+13)`
-/

namespace A143285.P14195289968993035425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017900 (n + 11) - A017901 (n + 13)

end

end A143285.P14195289968993035425

namespace A143285

/-- `A017900(n+11)-A017901(n+13)` -/
def P14195289968993035425.Spec : Prop :=
  ∀ n, P14195289968993035425.a n = A143285 n

end A143285

/-! ## A143285.P5172959048773742887

`record[A017900(n)]-A005709(A020715(n))`
-/

namespace A143285.P5172959048773742887
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017900 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A005709 (A020715 n).toNat

end

end A143285.P5172959048773742887

namespace A143285

/-- `record[A017900(n)]-A005709(A020715(n))` -/
def P5172959048773742887.Spec : Prop :=
  ∀ n, P5172959048773742887.a n = A143285 n

end A143285

/-! ## A143285.P2754490248664727679

`A005708(n+11)%(A005709(n+6)+A005708(n+10))`
-/

namespace A143285.P2754490248664727679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A005708 (n + 11)) (A005709 (n + 6) + A005708 (n + 10))

end

end A143285.P2754490248664727679

namespace A143285

/-- `A005708(n+11)%(A005709(n+6)+A005708(n+10))` -/
def P2754490248664727679.Spec : Prop :=
  ∀ n, P2754490248664727679.a n = A143285 n

end A143285

/-!
# A143286: Number of binary words of length n containing at least one subword 10^{6}1 and no subwords 10^{i}1 with i

The programs for A143286, the canonical program `A143286.P7076045960563745098` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A143286 has offset 0).

The definition of A143286 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A143286.P7076045960563745098

`A005709(n+6)-A005710(n+7)`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A143286

/-- `A005709(n+6)-A005710(n+7)` -/
def P7076045960563745098.Spec : Prop :=
  ∀ n, P7076045960563745098.a n = A143286 n

theorem P7076045960563745098.correct : P7076045960563745098.Spec := by
  intro n
  simp only [A143286]

end A143286

/-! ## A143286.P16100371944341174488

`record[A017901(n)]-record[A017902(n)]`
-/

namespace A143286.P16100371944341174488
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017901 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017902 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

end

end A143286.P16100371944341174488

namespace A143286

/-- `record[A017901(n)]-record[A017902(n)]` -/
def P16100371944341174488.Spec : Prop :=
  ∀ n, P16100371944341174488.a n = A143286 n

end A143286

/-! ## A143286.P17387311585791294795

`A005709(n+6)-A017902(n+15)`
-/

namespace A143286.P17387311585791294795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005709 (n + 6) - A017902 (n + 15)

end

end A143286.P17387311585791294795

namespace A143286

/-- `A005709(n+6)-A017902(n+15)` -/
def P17387311585791294795.Spec : Prop :=
  ∀ n, P17387311585791294795.a n = A143286 n

end A143286

/-! ## A143286.P11383057020669278890

`A017901(n+13)-A017902(n+15)`
-/

namespace A143286.P11383057020669278890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017901 (n + 13) - A017902 (n + 15)

end

end A143286.P11383057020669278890

namespace A143286

/-- `A017901(n+13)-A017902(n+15)` -/
def P11383057020669278890.Spec : Prop :=
  ∀ n, P11383057020669278890.a n = A143286 n

end A143286

/-! ## A143286.P7638891212979379759

`record[A017901(n)]-A005710(A020719(n))`
-/

namespace A143286.P7638891212979379759
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017901 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A005710 (A020719 n).toNat

end

end A143286.P7638891212979379759

namespace A143286

/-- `record[A017901(n)]-A005710(A020719(n))` -/
def P7638891212979379759.Spec : Prop :=
  ∀ n, P7638891212979379759.a n = A143286 n

end A143286

/-!
# A143287: Number of binary words of length n containing at least one subword 10^{7}1 and no subwords 10^{i}1 with i

The programs for A143287, the canonical program `A143287.P5161336264023573381` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A143287 has offset 0).

The definition of A143287 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A143287.P5161336264023573381

`A005710(n+7)-A005711(n+7)`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A143287

/-- `A005710(n+7)-A005711(n+7)` -/
def P5161336264023573381.Spec : Prop :=
  ∀ n, P5161336264023573381.a n = A143287 n

theorem P5161336264023573381.correct : P5161336264023573381.Spec := by
  intro n
  simp only [A143287]

end A143287

/-! ## A143287.P6056925386122851710

`record[A017902(n)]-record[A017903(n)]`
-/

namespace A143287.P6056925386122851710
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017902 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017903 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

end

end A143287.P6056925386122851710

namespace A143287

/-- `record[A017902(n)]-record[A017903(n)]` -/
def P6056925386122851710.Spec : Prop :=
  ∀ n, P6056925386122851710.a n = A143287 n

end A143287

/-! ## A143287.P15604074780827857786

`∑[A017902(n+7)-A017903(n+8)]`
-/

namespace A143287.P15604074780827857786
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017902 (n + 7) - A017903 (n + 8)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A143287.P15604074780827857786

namespace A143287

/-- `∑[A017902(n+7)-A017903(n+8)]` -/
def P15604074780827857786.Spec : Prop :=
  ∀ n, P15604074780827857786.a n = A143287 n

end A143287

/-!
# A143288: Number of binary words of length n containing at least one subword 10^{8}1 and no subwords 10^{i}1 with i

The programs for A143288, the canonical program `A143288.P2093284263421101681` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A143288 has offset 0).

The definition of A143288 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A017904, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A143288.P2093284263421101681

`A005711(n+7)-A017904(n+19)`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A143288

/-- `A005711(n+7)-A017904(n+19)` -/
def P2093284263421101681.Spec : Prop :=
  ∀ n, P2093284263421101681.a n = A143288 n

theorem P2093284263421101681.correct : P2093284263421101681.Spec := by
  intro n
  simp only [A143288]

end A143288

/-! ## A143288.P1754082784936916092

`record[A017903(n)]-record[A017904(n)]`
-/

namespace A143288.P1754082784936916092
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017903 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017904 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

end

end A143288.P1754082784936916092

namespace A143288

/-- `record[A017903(n)]-record[A017904(n)]` -/
def P1754082784936916092.Spec : Prop :=
  ∀ n, P1754082784936916092.a n = A143288 n

end A143288

/-! ## A143288.P1904809669511891110

`∑[A017903(n+8)-A017904(n+9)]`
-/

namespace A143288.P1904809669511891110
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017903 (n + 8) - A017904 (n + 9)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A143288.P1904809669511891110

namespace A143288

/-- `∑[A017903(n+8)-A017904(n+9)]` -/
def P1904809669511891110.Spec : Prop :=
  ∀ n, P1904809669511891110.a n = A143288 n

end A143288

/-!
# A143289: Number of binary words of length n containing at least one subword 10^{9}1 and no subwords 10^{i}1 with i

The programs for A143289, there is no canonical definition to state claims against.
-/

/-! ## A143289.P15035541401357454250

`A017904(n+19)-A017905(n+21)`
-/

namespace A143289.P15035541401357454250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017904 (n + 19) - A017905 (n + 21)

end

end A143289.P15035541401357454250

/-! ## A143289.P16243784794703466645

`record[A017904(n)]-record[A017905(n)]`
-/

namespace A143289.P16243784794703466645
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017904 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017905 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

end

end A143289.P16243784794703466645

/-!
# A143290: Number of binary words of length n containing at least one subword 10^{10}1 and no subwords 10^{i}1 with i

The programs for A143290, there is no canonical definition to state claims against.
-/

/-! ## A143290.P18351141458171336770

`A017905(n+21)-A017906(n+23)`
-/

namespace A143290.P18351141458171336770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017905 (n + 21) - A017906 (n + 23)

end

end A143290.P18351141458171336770

/-! ## A143290.P1671461303409580281

`record[A017905(n)]-record[A017906(n)]`
-/

namespace A143290.P1671461303409580281
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017905 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017906 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

end

end A143290.P1671461303409580281

/-!
# A143291: Triangle T(n,k), n>=2, 0<=k<=n-2, read by rows: numbers of binary words of length n containing at least one subword 10^{k}1 and no subwords 10^{i}1 with i

The programs for A143291, there is no canonical definition to state claims against.
-/

/-! ## A143291.P17035733714786471660

`A093717(A134546(n+1)%A093793(n+1))`
-/

namespace A143291.P17035733714786471660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093717 (Int.tmod (A134546 (n + 1)) (A093793 (n + 1))).toNat

end

end A143291.P17035733714786471660

/-! ## A143291.P13863351810429731042

`A093717(A134546(n+1))%A171280(n+1)`
-/

namespace A143291.P13863351810429731042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A093717 (A134546 (n + 1)).toNat) (A171280 (n + 1))

end

end A143291.P13863351810429731042

/-!
# A143292: Gray code of prime(n) (decimal representation).

The programs for A143292, the canonical program `A143292.P9561529969644033132` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A143292 has offset 1).

The definition of A143292 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A143292.P9561529969644033132

`A003188(A000040(n+1))`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A143292

/-- `A003188(A000040(n+1))` -/
def P9561529969644033132.Spec : Prop :=
  ∀ n, P9561529969644033132.a n = A143292 (n + 1)

theorem P9561529969644033132.correct : P9561529969644033132.Spec := by
  intro n
  simp only [A143292, Nat.add_sub_cancel]

end A143292

/-! ## A143292.P12735546730531768587

`xor(A000040(n+1), A130290(n+1))`
-/

namespace A143292.P12735546730531768587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A000040 (n + 1)) (A130290 (n + 1))

end

end A143292.P12735546730531768587

namespace A143292

/-- `xor(A000040(n+1), A130290(n+1))` -/
def P12735546730531768587.Spec : Prop :=
  ∀ n, P12735546730531768587.a n = A143292 (n + 1)

end A143292

/-! ## A143292.P1158749918259801219

`xor(floor(p?[n%3+n]/2), p?[n%3+n])`
-/

namespace A143292.P1158749918259801219
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n % 3 + n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n % 3 + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor ⌊(f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) : ℚ) / 2⌋ (f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n) : ℤ)

end

end A143292.P1158749918259801219

namespace A143292

/-- `xor(floor(p?[n%3+n]/2), p?[n%3+n])` -/
def P1158749918259801219.Spec : Prop :=
  ∀ n, P1158749918259801219.a n = A143292 (n + 1)

end A143292

/-! ## A143292.P8929184478899185692

`A003188(∏{d}[p?[xor(1, n)+1], #])`
-/

namespace A143292.P8929184478899185692
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003188 (∏ d ∈ Nat.divisors (f1 n), d)

end

end A143292.P8929184478899185692

namespace A143292

/-- `A003188(∏{d}[p?[xor(1, n)+1], #])` -/
def P8929184478899185692.Spec : Prop :=
  ∀ n, P8929184478899185692.a n = A143292 (n + 1)

end A143292

/-! ## A143292.P5785733661349330823

`A003188(∏{p}[p?[xor(1, n)+1], #])`
-/

namespace A143292.P5785733661349330823
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003188 (∏ p ∈ Nat.primeFactors (f1 n), p)

end

end A143292.P5785733661349330823

namespace A143292

/-- `A003188(∏{p}[p?[xor(1, n)+1], #])` -/
def P5785733661349330823.Spec : Prop :=
  ∀ n, P5785733661349330823.a n = A143292 (n + 1)

end A143292

/-! ## A143292.P7006637482829972173

`A003188(and(p?[xor(1, n)+1], -1))`
-/

namespace A143292.P7006637482829972173
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003188 (Int.land (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) : ℤ) (-1)).toNat

end

end A143292.P7006637482829972173

namespace A143292

/-- `A003188(and(p?[xor(1, n)+1], -1))` -/
def P7006637482829972173.Spec : Prop :=
  ∀ n, P7006637482829972173.a n = A143292 (n + 1)

end A143292

/-! ## A143292.P8799925154383246251

`A003188(Δ[A007504(n)])`
-/

namespace A143292.P8799925154383246251
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003188 (f1 (n + 1) - f1 n).toNat

end

end A143292.P8799925154383246251

namespace A143292

/-- `A003188(Δ[A007504(n)])` -/
def P8799925154383246251.Spec : Prop :=
  ∀ n, P8799925154383246251.a n = A143292 (n + 1)

end A143292

/-! ## A143292.P1853186232772475395

`A003188(p?[A209259(n)])`
-/

namespace A143292.P1853186232772475395
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209259 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003188 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A143292.P1853186232772475395

namespace A143292

/-- `A003188(p?[A209259(n)])` -/
def P1853186232772475395.Spec : Prop :=
  ∀ n, P1853186232772475395.a n = A143292 (n + 1)

end A143292

/-! ## A143292.P15203254799040043337

`A003188(A008578(n+2))`
-/

namespace A143292.P15203254799040043337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003188 (A008578 (n + 2)).toNat

end

end A143292.P15203254799040043337

namespace A143292

/-- `A003188(A008578(n+2))` -/
def P15203254799040043337.Spec : Prop :=
  ∀ n, P15203254799040043337.a n = A143292 (n + 1)

end A143292

/-! ## A143292.P628940333906927375

`A003188(A182986(n+2))`
-/

namespace A143292.P628940333906927375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003188 (A182986 (n + 2)).toNat

end

end A143292.P628940333906927375

namespace A143292

/-- `A003188(A182986(n+2))` -/
def P628940333906927375.Spec : Prop :=
  ∀ n, P628940333906927375.a n = A143292 (n + 1)

end A143292

/-! ## A143292.P8354465662214785789

`A003188(eq[2, A256750(n)])`
-/

namespace A143292.P8354465662214785789
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256750 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003188 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A143292.P8354465662214785789

namespace A143292

/-- `A003188(eq[2, A256750(n)])` -/
def P8354465662214785789.Spec : Prop :=
  ∀ n, P8354465662214785789.a n = A143292 (n + 1)

end A143292

/-! ## A143292.P17327559590796512875

`A003188(record[A006530(n+2)])`
-/

namespace A143292.P17327559590796512875
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003188 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A143292.P17327559590796512875

namespace A143292

/-- `A003188(record[A006530(n+2)])` -/
def P17327559590796512875.Spec : Prop :=
  ∀ n, P17327559590796512875.a n = A143292 (n + 1)

end A143292

/-! ## A143292.P14553431935217961322

`A003188(record[A020639(n+2)])`
-/

namespace A143292.P14553431935217961322
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003188 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A143292.P14553431935217961322

namespace A143292

/-- `A003188(record[A020639(n+2)])` -/
def P14553431935217961322.Spec : Prop :=
  ∀ n, P14553431935217961322.a n = A143292 (n + 1)

end A143292

/-! ## A143292.P13931592288083265707

`A003188(A006093(n+1)+1)`
-/

namespace A143292.P13931592288083265707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003188 (A006093 (n + 1) + 1).toNat

end

end A143292.P13931592288083265707

namespace A143292

/-- `A003188(A006093(n+1)+1)` -/
def P13931592288083265707.Spec : Prop :=
  ∀ n, P13931592288083265707.a n = A143292 (n + 1)

theorem P13931592288083265707.correct : P13931592288083265707.Spec := by
  intro n
  simp only [A143292, Nat.add_sub_cancel, A143292.P13931592288083265707.a, A143292.P9561529969644033132.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A003188, A003188.P10544524695508875182.a, A006093, A006093.P2906174024863549003.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A143292

/-! ## A143292.P13385171578548041008

`A003188(A040976(n+1)+2)`
-/

namespace A143292.P13385171578548041008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003188 (A040976 (n + 1) + 2).toNat

end

end A143292.P13385171578548041008

namespace A143292

/-- `A003188(A040976(n+1)+2)` -/
def P13385171578548041008.Spec : Prop :=
  ∀ n, P13385171578548041008.a n = A143292 (n + 1)

theorem P13385171578548041008.correct : P13385171578548041008.Spec := by
  intro n
  simp only [A143292, Nat.add_sub_cancel, A143292.P13385171578548041008.a, A143292.P9561529969644033132.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A003188, A003188.P10544524695508875182.a, A040976, A040976.P11599754272797435513.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A143292

/-! ## A143292.P2666781111667096727

`A003188(A209259(2*n+1))`
-/

namespace A143292.P2666781111667096727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003188 (A209259 (2 * n + 1)).toNat

end

end A143292.P2666781111667096727

namespace A143292

/-- `A003188(A209259(2*n+1))` -/
def P2666781111667096727.Spec : Prop :=
  ∀ n, P2666781111667096727.a n = A143292 (n + 1)

end A143292

/-! ## A143292.P3647842639156063152

`A003188(record[A000010(n+1)+1])`
-/

namespace A143292.P3647842639156063152
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003188 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A143292.P3647842639156063152

namespace A143292

/-- `A003188(record[A000010(n+1)+1])` -/
def P3647842639156063152.Spec : Prop :=
  ∀ n, P3647842639156063152.a n = A143292 (n + 1)

end A143292

/-! ## A143292.P15910963132903071088

`A003188(A129543(A006068(n)))`
-/

namespace A143292.P15910963132903071088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003188 (A129543 (A006068 n).toNat).toNat

end

end A143292.P15910963132903071088

namespace A143292

/-- `A003188(A129543(A006068(n)))` -/
def P15910963132903071088.Spec : Prop :=
  ∀ n, P15910963132903071088.a n = A143292 (n + 1)

end A143292

/-! ## A143292.P2467531553991867994

`A003188(A091265(A038722(n+1)))`
-/

namespace A143292.P2467531553991867994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003188 (A091265 (A038722 (n + 1)).toNat).toNat

end

end A143292.P2467531553991867994

namespace A143292

/-- `A003188(A091265(A038722(n+1)))` -/
def P2467531553991867994.Spec : Prop :=
  ∀ n, P2467531553991867994.a n = A143292 (n + 1)

end A143292

/-! ## A143292.P8493362387971640011

`A003188(A003188(A338524(n+1)))`
-/

namespace A143292.P8493362387971640011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003188 (A003188 (A338524 (n + 1)).toNat).toNat

end

end A143292.P8493362387971640011

namespace A143292

/-- `A003188(A003188(A338524(n+1)))` -/
def P8493362387971640011.Spec : Prop :=
  ∀ n, P8493362387971640011.a n = A143292 (n + 1)

end A143292

/-!
# A143293: Partial sums of A002110, the primorial numbers.

The programs for A143293, there is no canonical definition to state claims against.
-/

/-! ## A143293.P18133058279431525580

`A084737(2+n)-1`
-/

namespace A143293.P18133058279431525580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084737 (2 + n) - 1

end

end A143293.P18133058279431525580

/-! ## A143293.P7784210148546146257

`A276156(A000225(1+n))`
-/

namespace A143293.P7784210148546146257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276156 (A000225 (1 + n)).toNat

end

end A143293.P7784210148546146257

/-! ## A143293.P3463347498127157810

`∑[A002110(n)]`
-/

namespace A143293.P3463347498127157810
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002110 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A143293.P3463347498127157810

/-! ## A143293.P9211867962536414557

`∑[A096334(∑[n])]`
-/

namespace A143293.P9211867962536414557
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096334 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A143293.P9211867962536414557

/-! ## A143293.P6996847059196879159

`∑[A121281(∑[n])]`
-/

namespace A143293.P6996847059196879159
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121281 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A143293.P6996847059196879159

/-! ## A143293.P11256609009498930848

`∑[A246868(∑[n])]`
-/

namespace A143293.P11256609009498930848
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246868 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A143293.P11256609009498930848

/-! ## A143293.P10675616023479013243

`∑[record[A303761(n)]]`
-/

namespace A143293.P10675616023479013243
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303761 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A143293.P10675616023479013243

/-! ## A143293.P10240187097993506000

`∑[A006862(n)-1]`
-/

namespace A143293.P10240187097993506000
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006862 n - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A143293.P10240187097993506000

/-! ## A143293.P10006994848699742174

`record[A346105(n+2)]`
-/

namespace A143293.P10006994848699742174
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346105 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A143293.P10006994848699742174

/-! ## A143293.P418528068908787485

`∑[abs(A070918(∑[n]))]`
-/

namespace A143293.P418528068908787485
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A070918 (∑ j ∈ Finset.range (n + 1), f2 j)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A143293.P418528068908787485

/-!
# A143294: Least k such that p(n)*(p(n)+k)-1 and p(n)*(p(n)+k)+1 are twin primes with p(i)=i-th prime.

The programs for A143294, there is no canonical definition to state claims against.
-/

/-! ## A143294.P6947897565442311307

`A082466(p?[xor(1, n)])`
-/

namespace A143294.P6947897565442311307
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082466 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A143294.P6947897565442311307

/-! ## A143294.P5907680521096036248

`A082466(Δ[A007504(n)])`
-/

namespace A143294.P5907680521096036248
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082466 (f1 (n + 1) - f1 n).toNat

end

end A143294.P5907680521096036248

/-! ## A143294.P10220973511437836343

`A082466(A000040(n+1))`
-/

namespace A143294.P10220973511437836343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082466 (A000040 (n + 1)).toNat

end

end A143294.P10220973511437836343

/-! ## A143294.P11288950157255422761

`A082466(A008578(n+2))`
-/

namespace A143294.P11288950157255422761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082466 (A008578 (n + 2)).toNat

end

end A143294.P11288950157255422761

/-! ## A143294.P3812487535249825362

`A082466(A116974(n+2))`
-/

namespace A143294.P3812487535249825362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082466 (A116974 (n + 2)).toNat

end

end A143294.P3812487535249825362

/-! ## A143294.P18079617397483223266

`A082466(A182986(n+2))`
-/

namespace A143294.P18079617397483223266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082466 (A182986 (n + 2)).toNat

end

end A143294.P18079617397483223266

/-! ## A143294.P17120635425420698046

`A082466(record[A006530(n+2)])`
-/

namespace A143294.P17120635425420698046
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082466 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A143294.P17120635425420698046

/-! ## A143294.P8861825169512695259

`A082466(record[A014963(n+2)])`
-/

namespace A143294.P8861825169512695259
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082466 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A143294.P8861825169512695259

/-! ## A143294.P17212209846309810251

`A082466(record[A020639(n+2)])`
-/

namespace A143294.P17212209846309810251
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082466 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A143294.P17212209846309810251

/-! ## A143294.P13426162127701447168

`A082466(record[A000010(n+1)+1])`
-/

namespace A143294.P13426162127701447168
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082466 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A143294.P13426162127701447168

/-! ## A143294.P3461191086058971554

`A082466(eq[2, A000005(n+1)]+1)`
-/

namespace A143294.P3461191086058971554
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082466 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A143294.P3461191086058971554

/-! ## A143294.P12691849653093012878

`A082466(A007504(n+1)-A007504(n))`
-/

namespace A143294.P12691849653093012878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082466 (A007504 (n + 1) - A007504 n).toNat

end

end A143294.P12691849653093012878

/-!
# A143299: Number of terms in the Zeckendorf representation of every number in row n of the Wythoff array.

The programs for A143299, the canonical program `A143299.P15563677956109418683` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A143299 has offset 1).

The definition of A143299 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A143299.P12178535065792994724

`A007895(n)+1`
-/

namespace A143299.P12178535065792994724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007895 n + 1

end

end A143299.P12178535065792994724

namespace A143299

/-- `A007895(n)+1` -/
def P12178535065792994724.Spec : Prop :=
  ∀ n, P12178535065792994724.a n = A143299 (n + 1)

theorem P12178535065792994724.correct : P12178535065792994724.Spec := by
  intro n
  simp only [A143299, Nat.add_sub_cancel, A143299.P12178535065792994724.a, A143299.P15563677956109418683.a, A007895, A007895.P13159574906702943091.a, A066628, A066628.P4571683134443220888.f1, A066628.P4571683134443220888.a, A003849, A003849.P15070805603138295355.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A143299

/-! ## A143299.P3208888169121362704

`dr(A014417(n))+1`
-/

namespace A143299.P3208888169121362704
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A014417 n) + 1

end

end A143299.P3208888169121362704

namespace A143299

/-- `dr(A014417(n))+1` -/
def P3208888169121362704.Spec : Prop :=
  ∀ n, (P3208888169121362704.a n : ℤ) = A143299 (n + 1)

end A143299

/-! ## A143299.P7496035503082120737

`a(A019586(n))+1` with `a(0)=1`
-/

namespace A143299.P7496035503082120737
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  a (A019586 n).toNat + 1

end

end A143299.P7496035503082120737

namespace A143299

/-- `a(A019586(n))+1` -/
def P7496035503082120737.Spec : Prop :=
  ∀ n, (P7496035503082120737.a n : ℤ) = A143299 (n + 1)

end A143299

/-! ## A143299.P15563677956109418683

`a(A066628(n))+1` with `a(0)=1`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A143299

/-- `a(A066628(n))+1` -/
def P15563677956109418683.Spec : Prop :=
  ∀ n, (P15563677956109418683.a n : ℤ) = A143299 (n + 1)

theorem P15563677956109418683.correct : P15563677956109418683.Spec := by
  intro n
  simp only [A143299, Nat.add_sub_cancel]

end A143299

/-! ## A143299.P10351006139139609399

`1-A219641(n)+n`
-/

namespace A143299.P10351006139139609399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A219641 n + (n : ℤ)

end

end A143299.P10351006139139609399

namespace A143299

/-- `1-A219641(n)+n` -/
def P10351006139139609399.Spec : Prop :=
  ∀ n, P10351006139139609399.a n = A143299 (n + 1)

theorem P10351006139139609399.correct : P10351006139139609399.Spec := by
  intro n
  simp only [A143299, Nat.add_sub_cancel, A143299.P10351006139139609399.a, A143299.P15563677956109418683.a, A066628, A066628.P4571683134443220888.f1, A066628.P4571683134443220888.a, A219641, A219641.P1602393212941527080.a, A003849, A003849.P15070805603138295355.a, A007895, A007895.P13159574906702943091.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A143299

/-! ## A143299.P8709521125480730150

`ceil(A104324(n)/2)+1`
-/

namespace A143299.P8709521125480730150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A104324 n : ℚ) / 2⌉ + 1

end

end A143299.P8709521125480730150

namespace A143299

/-- `ceil(A104324(n)/2)+1` -/
def P8709521125480730150.Spec : Prop :=
  ∀ n, P8709521125480730150.a n = A143299 (n + 1)

end A143299

/-! ## A143299.P10813288440794902983

`2*n+3-A288625(n+1)`
-/

namespace A143299.P10813288440794902983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n + 3 : ℤ) - A288625 (n + 1)

end

end A143299.P10813288440794902983

namespace A143299

/-- `2*n+3-A288625(n+1)` -/
def P10813288440794902983.Spec : Prop :=
  ∀ n, P10813288440794902983.a n = A143299 (n + 1)

theorem P10813288440794902983.correct : P10813288440794902983.Spec := by
  intro n
  simp only [A143299, Nat.add_sub_cancel, A143299.P10813288440794902983.a, A143299.P15563677956109418683.a, A066628, A066628.P4571683134443220888.f1, A066628.P4571683134443220888.a, A288625, A288625.P5745602300368746224.a, A003849, A003849.P15070805603138295355.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A143299

/-! ## A143299.P6418274052640026767

`A080513(A104324(n))`
-/

namespace A143299.P6418274052640026767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080513 (A104324 n).toNat

end

end A143299.P6418274052640026767

namespace A143299

/-- `A080513(A104324(n))` -/
def P6418274052640026767.Spec : Prop :=
  ∀ n, P6418274052640026767.a n = A143299 (n + 1)

end A143299

/-! ## A143299.P16402924854083233517

`A034888(A104324(n)+2)`
-/

namespace A143299.P16402924854083233517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034888 (A104324 n + 2).toNat

end

end A143299.P16402924854083233517

namespace A143299

/-- `A034888(A104324(n)+2)` -/
def P16402924854083233517.Spec : Prop :=
  ∀ n, P16402924854083233517.a n = A143299 (n + 1)

end A143299

/-! ## A143299.P11463504688375388222

`A065033(A104324(n)+2)`
-/

namespace A143299.P11463504688375388222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (A104324 n + 2).toNat

end

end A143299.P11463504688375388222

namespace A143299

/-- `A065033(A104324(n)+2)` -/
def P11463504688375388222.Spec : Prop :=
  ∀ n, P11463504688375388222.a n = A143299 (n + 1)

end A143299

/-! ## A143299.P2798945467116609716

`A213911(n)+A003842(n)`
-/

namespace A143299.P2798945467116609716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213911 n + A003842 n

end

end A143299.P2798945467116609716

namespace A143299

/-- `A213911(n)+A003842(n)` -/
def P2798945467116609716.Spec : Prop :=
  ∀ n, P2798945467116609716.a n = A143299 (n + 1)

end A143299

/-! ## A143299.P11411649483803366036

`A000201(n+1)-A219640(n)`
-/

namespace A143299.P11411649483803366036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000201 (n + 1) - A219640 n

end

end A143299.P11411649483803366036

namespace A143299

/-- `A000201(n+1)-A219640(n)` -/
def P11411649483803366036.Spec : Prop :=
  ∀ n, P11411649483803366036.a n = A143299 (n + 1)

end A143299

/-! ## A143299.P6155756083182898496

`A131234(n+1)-A102364(n)`
-/

namespace A143299.P6155756083182898496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131234 (n + 1) - A102364 n

end

end A143299.P6155756083182898496

namespace A143299

/-- `A131234(n+1)-A102364(n)` -/
def P6155756083182898496.Spec : Prop :=
  ∀ n, P6155756083182898496.a n = A143299 (n + 1)

end A143299

/-! ## A143299.P17727166417024149003

`A063787(n+1)-A220115(n)`
-/

namespace A143299.P17727166417024149003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063787 (n + 1) - A220115 n

end

end A143299.P17727166417024149003

namespace A143299

/-- `A063787(n+1)-A220115(n)` -/
def P17727166417024149003.Spec : Prop :=
  ∀ n, P17727166417024149003.a n = A143299 (n + 1)

theorem P17727166417024149003.correct : P17727166417024149003.Spec := by
  intro n
  simp only [A143299, Nat.add_sub_cancel, A143299.P17727166417024149003.a, A143299.P15563677956109418683.a, A063787, A063787.P13236937262237871159.a, A066628, A066628.P4571683134443220888.f1, A066628.P4571683134443220888.a, A220115, A220115.P11390568708152913507.a, A000120, A000120.P2816527436160941581.a, A003849, A003849.P15070805603138295355.a, A007895, A007895.P13159574906702943091.a, A005187, A005187.P3874015513960485494.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A143299

/-! ## A143299.P5714243074602842079

`A035336(n+1)-A219639(n+1)`
-/

namespace A143299.P5714243074602842079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035336 (n + 1) - A219639 (n + 1)

end

end A143299.P5714243074602842079

namespace A143299

/-- `A035336(n+1)-A219639(n+1)` -/
def P5714243074602842079.Spec : Prop :=
  ∀ n, P5714243074602842079.a n = A143299 (n + 1)

end A143299

/-! ## A143299.P3895053027540287152

`A144396(n+1)%A288625(n+1)`
-/

namespace A143299.P3895053027540287152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A144396 (n + 1)) (A288625 (n + 1))

end

end A143299.P3895053027540287152

namespace A143299

/-- `A144396(n+1)%A288625(n+1)` -/
def P3895053027540287152.Spec : Prop :=
  ∀ n, P3895053027540287152.a n = A143299 (n + 1)

end A143299

/-! ## A143299.P1824331384634054295

`A116543(A063732(n+1))+1`
-/

namespace A143299.P1824331384634054295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116543 (A063732 (n + 1)).toNat + 1

end

end A143299.P1824331384634054295

namespace A143299

/-- `A116543(A063732(n+1))+1` -/
def P1824331384634054295.Spec : Prop :=
  ∀ n, P1824331384634054295.a n = A143299 (n + 1)

end A143299

/-! ## A143299.P9641814266576484307

`A213911(A004956(n))+1`
-/

namespace A143299.P9641814266576484307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213911 (A004956 n).toNat + 1

end

end A143299.P9641814266576484307

namespace A143299

/-- `A213911(A004956(n))+1` -/
def P9641814266576484307.Spec : Prop :=
  ∀ n, P9641814266576484307.a n = A143299 (n + 1)

end A143299

/-! ## A143299.P11354649790773996129

`A213911(A026351(n))+1`
-/

namespace A143299.P11354649790773996129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213911 (A026351 n).toNat + 1

end

end A143299.P11354649790773996129

namespace A143299

/-- `A213911(A026351(n))+1` -/
def P11354649790773996129.Spec : Prop :=
  ∀ n, P11354649790773996129.a n = A143299 (n + 1)

end A143299

/-! ## A143299.P17889830473561918680

`A213911(A004937(n))+1`
-/

namespace A143299.P17889830473561918680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213911 (A004937 n).toNat + 1

end

end A143299.P17889830473561918680

namespace A143299

/-- `A213911(A004937(n))+1` -/
def P17889830473561918680.Spec : Prop :=
  ∀ n, P17889830473561918680.a n = A143299 (n + 1)

end A143299

