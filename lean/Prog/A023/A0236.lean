import SequenceMachineLib
import Mathlib.Tactic
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C003
import Seq.B000.C004
import Seq.B000.C006
import Seq.B000.C007
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
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C037
import Seq.B000.C039
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
import Seq.B001.C012
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C005
import Seq.B002.C006
import Seq.B002.C007
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
import Seq.B008.C000
import Seq.B009.C000
import Seq.B010.C000
import Seq.B011.C000
import Seq.B012.C000
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

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A023600: Convolution of A023532 and (F(2), F(3), F(4), ...).

The programs for A023600, there is no canonical definition to state claims against.
-/

/-! ## A023600.P11065465161101557043

`∑[ceil(A023596(n+1)/ϕ)]`
-/

namespace A023600.P11065465161101557043
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A023596 (n + 1) : ℝ) / Real.goldenRatio⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A023600.P11065465161101557043

/-! ## A023600.P9966259323657485404

`A001911(n+1)-A023561(n+1)`
-/

namespace A023600.P9966259323657485404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001911 (n + 1) - A023561 (n + 1)

end

end A023600.P9966259323657485404

/-! ## A023600.P12587700436479361112

`A023596(n+2)-A023532(n+2)`
-/

namespace A023600.P12587700436479361112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023596 (n + 2) - A023532 (n + 2)

end

end A023600.P12587700436479361112

/-! ## A023600.P18273105701600281447

`∑[A000045(n+2)]-A023561(n+1)`
-/

namespace A023600.P18273105701600281447
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A023561 (n + 1)

end

end A023600.P18273105701600281447

/-! ## A023600.P10235867236982629419

`(A023597(n+1)+A023596(n+1))/2`
-/

namespace A023600.P10235867236982629419
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A023597 (n + 1) + A023596 (n + 1) : ℚ) / 2

end

end A023600.P10235867236982629419

/-!
# A023601: Convolution of A023532 and odd numbers.

The programs for A023601, the canonical program `A023601.P4165196643065523488` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A023601 has offset 1).

The definition of A023601 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A023601.P5965761827394330938

`∑[comp[2*comp[∑[n+1]]]]`
-/

namespace A023601.P5965761827394330938
noncomputable section

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ x) n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A023601.P5965761827394330938

namespace A023601

/-- `∑[comp[2*comp[∑[n+1]]]]` -/
def P5965761827394330938.Spec : Prop :=
  ∀ n, (P5965761827394330938.a n : ℤ) = A023601 (n + 1)

end A023601

/-! ## A023601.P8791775511038191494

`∪[2*n+1, (n+1)*(n+2)]+a(n-1)` with `a(0)=1`
-/

namespace A023601.P8791775511038191494
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) * (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∨ ∃ j, f2 j = x) n + a (n - 1)

end

end A023601.P8791775511038191494

namespace A023601

/-- `∪[2*n+1, (n+1)*(n+2)]+a(n-1)` -/
def P8791775511038191494.Spec : Prop :=
  ∀ n, (P8791775511038191494.a n : ℤ) = A023601 (n + 1)

end A023601

/-! ## A023601.P4165196643065523488

`(n+1)²-A023562(n+1)`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A023601

/-- `(n+1)²-A023562(n+1)` -/
def P4165196643065523488.Spec : Prop :=
  ∀ n, P4165196643065523488.a n = A023601 (n + 1)

theorem P4165196643065523488.correct : P4165196643065523488.Spec := by
  intro n
  simp only [A023601, Nat.add_sub_cancel]

end A023601

/-! ## A023601.P18262455533788715402

`(n+1)²-∑[∑[char[A101881(n)]]]`
-/

namespace A023601.P18262455533788715402
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101881 n

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℤ) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A023601.P18262455533788715402

namespace A023601

/-- `(n+1)²-∑[∑[char[A101881(n)]]]` -/
def P18262455533788715402.Spec : Prop :=
  ∀ n, P18262455533788715402.a n = A023601 (n + 1)

end A023601

/-! ## A023601.P3104455033118232087

`(n+1)²-∑[∑[A103451(n+1)]-1]`
-/

namespace A023601.P3104455033118232087
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103451 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℤ) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A023601.P3104455033118232087

namespace A023601

/-- `(n+1)²-∑[∑[A103451(n+1)]-1]` -/
def P3104455033118232087.Spec : Prop :=
  ∀ n, P3104455033118232087.a n = A023601 (n + 1)

end A023601

/-! ## A023601.P16200805083745040618

`A023536(n+1)+∑[∑[A023532(n)]]`
-/

namespace A023601.P16200805083745040618
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023532 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023536 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A023601.P16200805083745040618

namespace A023601

/-- `A023536(n+1)+∑[∑[A023532(n)]]` -/
def P16200805083745040618.Spec : Prop :=
  ∀ n, P16200805083745040618.a n = A023601 (n + 1)

end A023601

/-! ## A023601.P8030123469036975380

`A000217(n+1)+A000217(n)-A023562(n+1)`
-/

namespace A023601.P8030123469036975380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (n + 1) + (A000217 n - A023562 (n + 1))

end

end A023601.P8030123469036975380

namespace A023601

/-- `A000217(n+1)+A000217(n)-A023562(n+1)` -/
def P8030123469036975380.Spec : Prop :=
  ∀ n, P8030123469036975380.a n = A023601 (n + 1)

theorem P8030123469036975380.correct : P8030123469036975380.Spec := by
  intro n
  simp only [A023601, Nat.add_sub_cancel, A023601.P8030123469036975380.a, A023601.P4165196643065523488.a, A000217, A000217.P10269402890581615239.a, A023562, A023562.P8681614604525983552.f2, A023562.P8681614604525983552.f1, A023562.P8681614604525983552.a, A097806, A097806.P6713740258379660295.a, A002260, A002260.P9170571874073898642.a, A003056, A003056.P5318256527314048597.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A023601

/-! ## A023601.P14963182775492454592

`record[A000463(n+1)-∑[A000194(n)]]`
-/

namespace A023601.P14963182775492454592
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000194 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000463 (n + 1) - ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A023601.P14963182775492454592

namespace A023601

/-- `record[A000463(n+1)-∑[A000194(n)]]` -/
def P14963182775492454592.Spec : Prop :=
  ∀ n, P14963182775492454592.a n = A023601 (n + 1)

end A023601

/-!
# A023602: Convolution of A023532 and A000201.

The programs for A023602, there is no canonical definition to state claims against.
-/

/-! ## A023602.P8472183629383440646

`A023603(n+1)-A023536(n+1)`
-/

namespace A023602.P8472183629383440646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023603 (n + 1) - A023536 (n + 1)

end

end A023602.P8472183629383440646

/-! ## A023602.P4625058661532759902

`∑[∑[A001468(n)]]-A023563(n+1)`
-/

namespace A023602.P4625058661532759902
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001468 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A023563 (n + 1)

end

end A023602.P4625058661532759902

/-! ## A023602.P8760432659107107536

`∑[A000201(n+1)]-A023563(n+1)`
-/

namespace A023602.P8760432659107107536
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000201 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A023563 (n + 1)

end

end A023602.P8760432659107107536

/-! ## A023602.P2040568805711670169

`∑[A003622(n+1)-n]-A023563(n+1)`
-/

namespace A023602.P2040568805711670169
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003622 (n + 1) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A023563 (n + 1)

end

end A023602.P2040568805711670169

/-! ## A023602.P6329584042454330595

`∑[A005206(A003622(n+1))]-A023563(n+1)`
-/

namespace A023602.P6329584042454330595
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005206 (A003622 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A023563 (n + 1)

end

end A023602.P6329584042454330595

/-! ## A023602.P10423411532801128234

`∑[A002251(A001950(n+1))]-A023563(n+1)`
-/

namespace A023602.P10423411532801128234
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002251 (A001950 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A023563 (n + 1)

end

end A023602.P10423411532801128234

/-!
# A023603: Convolution of A023532 and A001950.

The programs for A023603, there is no canonical definition to state claims against.
-/

/-! ## A023603.P2502175351912298055

`A023602(n+1)+A023536(n+1)`
-/

namespace A023603.P2502175351912298055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023602 (n + 1) + A023536 (n + 1)

end

end A023603.P2502175351912298055

/-! ## A023603.P4443043124533161435

`∑[∑[A282162(n)]]-A023564(n+1)`
-/

namespace A023603.P4443043124533161435
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282162 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A023564 (n + 1)

end

end A023603.P4443043124533161435

/-! ## A023603.P2691252643501906428

`∑[A001950(n+1)]-A023564(n+1)`
-/

namespace A023603.P2691252643501906428
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001950 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A023564 (n + 1)

end

end A023603.P2691252643501906428

/-! ## A023603.P8338950469586802347

`A088207(n+1)-A023564(n+1)`
-/

namespace A023603.P8338950469586802347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088207 (n + 1) - A023564 (n + 1)

end

end A023603.P8338950469586802347

/-! ## A023603.P3966937930359968842

`A023602(n+1)+∑[∑[A023532(n+1)]]`
-/

namespace A023603.P3966937930359968842
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023532 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023602 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A023603.P3966937930359968842

/-! ## A023603.P14419058704542560084

`∑[A002251(A000201(n+1))]-A023564(n+1)`
-/

namespace A023603.P14419058704542560084
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002251 (A000201 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A023564 (n + 1)

end

end A023603.P14419058704542560084

/-!
# A023604: Convolution of A023532 and A023533.

The programs for A023604, there is no canonical definition to state claims against.
-/

/-! ## A023604.P11699364128289733079

`∑[A023533(n+1)]-A023565(n+1)`
-/

namespace A023604.P11699364128289733079
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023533 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A023565 (n + 1)

end

end A023604.P11699364128289733079

/-! ## A023604.P335397856862863648

`∑[A023533(n+1)]+A023565(n+1)*A057428(n)`
-/

namespace A023604.P335397856862863648
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023533 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + A023565 (n + 1) * A057428 n

end

end A023604.P335397856862863648

/-! ## A023604.P14198241916407151740

`A056556(n+1)-A023565(n+1)`
-/

namespace A023604.P14198241916407151740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056556 (n + 1) - A023565 (n + 1)

end

end A023604.P14198241916407151740

/-! ## A023604.P18019152914258336253

`∑[A023532(n+1)]-A023605(n+1)`
-/

namespace A023604.P18019152914258336253
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023532 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A023605 (n + 1)

end

end A023604.P18019152914258336253

/-! ## A023604.P4713629285884884200

`A331195(3*(n+1))-A023565(n+1)`
-/

namespace A023604.P4713629285884884200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331195 (3 * (n + 1)) - A023565 (n + 1)

end

end A023604.P4713629285884884200

/-! ## A023604.P14497830272166410006

`∑[A114607(n+3)]-A023605(n+1)`
-/

namespace A023604.P14497830272166410006
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114607 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A023605 (n + 1)

end

end A023604.P14497830272166410006

/-! ## A023604.P14884900268272386760

`∑[A023531(A120565(n))]-A023565(n+1)`
-/

namespace A023604.P14884900268272386760
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023531 (A120565 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A023565 (n + 1)

end

end A023604.P14884900268272386760

/-!
# A023605: Convolution of A023532 and A014306.

The programs for A023605, there is no canonical definition to state claims against.
-/

/-! ## A023605.P7773840229532868551

`∑[A014306(n+1)]-A023566(n+1)`
-/

namespace A023605.P7773840229532868551
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014306 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A023566 (n + 1)

end

end A023605.P7773840229532868551

/-! ## A023605.P2677921015174564153

`A083920(n+2)-A023604(n+1)`
-/

namespace A023605.P2677921015174564153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083920 (n + 2) - A023604 (n + 1)

end

end A023605.P2677921015174564153

/-! ## A023605.P13897621333264536610

`∑[A023532(n+1)]-A023604(n+1)`
-/

namespace A023605.P13897621333264536610
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023532 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A023604 (n + 1)

end

end A023605.P13897621333264536610

/-! ## A023605.P6215236235759114889

`∑[A114607(n+3)]-A023604(n+1)`
-/

namespace A023605.P6215236235759114889
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114607 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A023604 (n + 1)

end

end A023605.P6215236235759114889

/-! ## A023605.P12634260263756436032

`∑[A023532(A120565(n))]-A023566(n+1)`
-/

namespace A023605.P12634260263756436032
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023532 (A120565 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A023566 (n + 1)

end

end A023605.P12634260263756436032

/-!
# A023606: Convolution of A023532 and primes.

The programs for A023606, there is no canonical definition to state claims against.
-/

/-! ## A023606.P1527537763866804277

`A007504(n+1)-A023567(n+1)`
-/

namespace A023606.P1527537763866804277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 (n + 1) - A023567 (n + 1)

end

end A023606.P1527537763866804277

/-! ## A023606.P8389958442185692340

`A023598(n+2)-A023532(n+2)`
-/

namespace A023606.P8389958442185692340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023598 (n + 2) - A023532 (n + 2)

end

end A023606.P8389958442185692340

/-! ## A023606.P15075732939290813746

`∑[record[A051698(n)]]-A023567(n+1)`
-/

namespace A023606.P15075732939290813746
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051698 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A023567 (n + 1)

end

end A023606.P15075732939290813746

/-! ## A023606.P16086066559596170450

`∑[p?[A014681(n)]]-A023567(n+1)`
-/

namespace A023606.P16086066559596170450
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014681 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A023567 (n + 1)

end

end A023606.P16086066559596170450

/-! ## A023606.P15288592708433118747

`∑[record[A014963(n+2)]]-A023567(n+1)`
-/

namespace A023606.P15288592708433118747
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A023567 (n + 1)

end

end A023606.P15288592708433118747

/-! ## A023606.P17360170402894909733

`∑[p?[A006370(n)]]-A023567(n+1)`
-/

namespace A023606.P17360170402894909733
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006370 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A023567 (n + 1)

end

end A023606.P17360170402894909733

/-!
# A023607: a(n) = n * Fibonacci(n+1).

The programs for A023607, the canonical program `A023607.P1034350130520621684` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A023607 has offset 0).

The definition of A023607 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n*A000045(n+1)` (program `A023607.P1034350130520621684`, by `A023607.P1034350130520621684.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A023607.P1034350130520621684

`n*A000045(n+1)`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A023607

/-- `n*A000045(n+1)` -/
def P1034350130520621684.Spec : Prop :=
  ∀ n, P1034350130520621684.a n = A023607 n

theorem P1034350130520621684.correct : P1034350130520621684.Spec := by
  intro n
  simp only [A023607]

end A023607

/-! ## A023607.P9189774591848286934

`ogf((x+2x^2)/(1-2x-x^2+2x^3+x^4))`
-/

namespace A023607.P9189774591848286934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1, 2] [1, -2, -1, 2, 1] n

end

end A023607.P9189774591848286934

namespace A023607

/-- `ogf((x+2x^2)/(1-2x-x^2+2x^3+x^4))` -/
def P9189774591848286934.Spec : Prop :=
  ∀ n, P9189774591848286934.a n = A023607 n

end A023607

/-! ## A023607.P13141203806371746370

`n*Δ[floor(ϕ*a(n-1))]` with `a(0)=2`
-/

namespace A023607.P13141203806371746370
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [2] fun n f1 =>
  ⌊Real.goldenRatio * (f1 (n - 1) : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (f1 (n + 1) - f1 n)

end

end A023607.P13141203806371746370

namespace A023607

/-- `n*Δ[floor(ϕ*a(n-1))]` -/
def P13141203806371746370.Spec : Prop :=
  ∀ n, P13141203806371746370.a n = A023607 n

end A023607

/-! ## A023607.P9106534318635000948

`n*∑[a(n-1)+a(n-2)]` with `a(0)=1, a(1)=0`
-/

namespace A023607.P9106534318635000948
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 0] fun n f1 =>
  f1 (n - 1) + f1 (n - 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A023607.P9106534318635000948

namespace A023607

/-- `n*∑[a(n-1)+a(n-2)]` -/
def P9106534318635000948.Spec : Prop :=
  ∀ n, (P9106534318635000948.a n : ℤ) = A023607 n

end A023607

/-! ## A023607.P6275964296622419114

`n*Δ[a(n-1)+a(n-2)]` with `a(0)=1, a(1)=2`
-/

namespace A023607.P6275964296622419114
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 2] fun n f1 =>
  f1 (n - 1) + f1 (n - 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A023607.P6275964296622419114

namespace A023607

/-- `n*Δ[a(n-1)+a(n-2)]` -/
def P6275964296622419114.Spec : Prop :=
  ∀ n, P6275964296622419114.a n = A023607 n

end A023607

/-! ## A023607.P3586849332185420074

`n/∑[a(n-1)+a(n-2)]^(-1)` with `a(0)=1, a(1)=0`
-/

namespace A023607.P3586849332185420074
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 0] fun n f1 =>
  f1 (n - 1) + f1 (n - 2)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) ^ (-1 : ℤ)

end

end A023607.P3586849332185420074

namespace A023607

/-- `n/∑[a(n-1)+a(n-2)]^(-1)` -/
def P3586849332185420074.Spec : Prop :=
  ∀ n, P3586849332185420074.a n = (A023607 n : ℚ)

end A023607

/-! ## A023607.P14806974726633174693

`∑[A094588(n)]`
-/

namespace A023607.P14806974726633174693
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094588 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A023607.P14806974726633174693

namespace A023607

/-- `∑[A094588(n)]` -/
def P14806974726633174693.Spec : Prop :=
  ∀ n, P14806974726633174693.a n = A023607 n

end A023607

/-! ## A023607.P14569459485930450263

`n*∑[A212804(n)]`
-/

namespace A023607.P14569459485930450263
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212804 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A023607.P14569459485930450263

namespace A023607

/-- `n*∑[A212804(n)]` -/
def P14569459485930450263.Spec : Prop :=
  ∀ n, P14569459485930450263.a n = A023607 n

end A023607

/-! ## A023607.P11089219198920511067

`n*record[A053602(n)]`
-/

namespace A023607.P11089219198920511067
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053602 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A023607.P11089219198920511067

namespace A023607

/-- `n*record[A053602(n)]` -/
def P11089219198920511067.Spec : Prop :=
  ∀ n, P11089219198920511067.a n = A023607 n

end A023607

/-! ## A023607.P11834512474649673591

`n*record[A103610(n)]`
-/

namespace A023607.P11834512474649673591
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103610 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A023607.P11834512474649673591

namespace A023607

/-- `n*record[A103610(n)]` -/
def P11834512474649673591.Spec : Prop :=
  ∀ n, P11834512474649673591.a n = A023607 n

end A023607

/-! ## A023607.P12499499969370061484

`n*A212804(n+2)`
-/

namespace A023607.P12499499969370061484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A212804 (n + 2)

end

end A023607.P12499499969370061484

namespace A023607

/-- `n*A212804(n+2)` -/
def P12499499969370061484.Spec : Prop :=
  ∀ n, P12499499969370061484.a n = A023607 n

end A023607

/-! ## A023607.P13476158623127518297

`n*A324969(n+2)`
-/

namespace A023607.P13476158623127518297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A324969 (n + 2)

end

end A023607.P13476158623127518297

namespace A023607

/-- `n*A324969(n+2)` -/
def P13476158623127518297.Spec : Prop :=
  ∀ n, P13476158623127518297.a n = A023607 n

end A023607

/-! ## A023607.P7391135664376640891

`n*A079977(2*n)`
-/

namespace A023607.P7391135664376640891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A079977 (2 * n)

end

end A023607.P7391135664376640891

namespace A023607

/-- `n*A079977(2*n)` -/
def P7391135664376640891.Spec : Prop :=
  ∀ n, P7391135664376640891.a n = A023607 n

end A023607

/-! ## A023607.P13938757710836084366

`n*A327035(3*n)`
-/

namespace A023607.P13938757710836084366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A327035 (3 * n)

end

end A023607.P13938757710836084366

namespace A023607

/-- `n*A327035(3*n)` -/
def P13938757710836084366.Spec : Prop :=
  ∀ n, P13938757710836084366.a n = A023607 n

end A023607

/-! ## A023607.P6848623175397764472

`n*(A081659(n)-n)`
-/

namespace A023607.P6848623175397764472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A081659 n - (n : ℤ))

end

end A023607.P6848623175397764472

namespace A023607

/-- `n*(A081659(n)-n)` -/
def P6848623175397764472.Spec : Prop :=
  ∀ n, P6848623175397764472.a n = A023607 n

theorem P6848623175397764472.correct : P6848623175397764472.Spec := by
  intro n
  simp only [A023607, Nat.add_sub_cancel, A023607.P6848623175397764472.a, A023607.P1034350130520621684.a, A000045, A000045.P11838749114346432762.a, A081659, A081659.P2520138309410164665.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A023607

/-! ## A023607.P1703226669904379137

`abs(n*Δ[A119282(n)])`
-/

namespace A023607.P1703226669904379137
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119282 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(n : ℤ) * (f1 (n + 1) - f1 n)|

end

end A023607.P1703226669904379137

namespace A023607

/-- `abs(n*Δ[A119282(n)])` -/
def P1703226669904379137.Spec : Prop :=
  ∀ n, P1703226669904379137.a n = A023607 n

end A023607

/-! ## A023607.P8249129474061770265

`n*A123231(Δ[n²])`
-/

namespace A023607.P8249129474061770265
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A123231 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A023607.P8249129474061770265

namespace A023607

/-- `n*A123231(Δ[n²])` -/
def P8249129474061770265.Spec : Prop :=
  ∀ n, P8249129474061770265.a n = A023607 n

end A023607

/-! ## A023607.P15261104216411333790

`n*A163227(Δ[n²])`
-/

namespace A023607.P15261104216411333790
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A163227 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A023607.P15261104216411333790

namespace A023607

/-- `n*A163227(Δ[n²])` -/
def P15261104216411333790.Spec : Prop :=
  ∀ n, P15261104216411333790.a n = A023607 n

end A023607

/-! ## A023607.P8768122785304869452

`n*Δ[Δ[A001911(n)]]`
-/

namespace A023607.P8768122785304869452
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001911 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (f1 (n + 1) - f1 n)

end

end A023607.P8768122785304869452

namespace A023607

/-- `n*Δ[Δ[A001911(n)]]` -/
def P8768122785304869452.Spec : Prop :=
  ∀ n, P8768122785304869452.a n = A023607 n

end A023607

/-! ## A023607.P3302527842521149688

`n*Δ[Δ[A018910(n)]]`
-/

namespace A023607.P3302527842521149688
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018910 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (f1 (n + 1) - f1 n)

end

end A023607.P3302527842521149688

namespace A023607

/-- `n*Δ[Δ[A018910(n)]]` -/
def P3302527842521149688.Spec : Prop :=
  ∀ n, P3302527842521149688.a n = A023607 n

end A023607

/-!
# A023608: Convolution of Fibonacci numbers and (1, prime(1), prime(2), ...).

The programs for A023608, the canonical program `A023608.P1978400556510042510` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A023608 has offset 0).

The definition of A023608 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 475 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A023608.P1978400556510042510

`a(n-1)+A000040(n)+a(n-2)` with `a(0)=1, a(1)=3`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A023608

/-- `a(n-1)+A000040(n)+a(n-2)` -/
def P1978400556510042510.Spec : Prop :=
  ∀ n, P1978400556510042510.a n = A023608 n

theorem P1978400556510042510.correct : P1978400556510042510.Spec := by
  intro n
  simp only [A023608]

end A023608

/-! ## A023608.P5123022319328818971

`A008578(n+1)+a(n-2)+a(n-1)` with `a(0)=1, a(1)=3`
-/

namespace A023608.P5123022319328818971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3] fun n a =>
  A008578 (n + 1) + (a (n - 2) + a (n - 1))

end

end A023608.P5123022319328818971

namespace A023608

/-- `A008578(n+1)+a(n-2)+a(n-1)` -/
def P5123022319328818971.Spec : Prop :=
  ∀ n, P5123022319328818971.a n = A023608 n

end A023608

/-! ## A023608.P12556449783817174451

`A182986(n+1)+A023628(A028310(n))`
-/

namespace A023608.P12556449783817174451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182986 (n + 1) + A023628 (A028310 n).toNat

end

end A023608.P12556449783817174451

namespace A023608

/-- `A182986(n+1)+A023628(A028310(n))` -/
def P12556449783817174451.Spec : Prop :=
  ∀ n, P12556449783817174451.a n = A023608 n

end A023608

/-! ## A023608.P367009986871644254

`A023628(n+1)-a(n-1)` with `a(0)=1`
-/

namespace A023608.P367009986871644254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A023628 (n + 1) - a (n - 1)

end

end A023608.P367009986871644254

namespace A023608

/-- `A023628(n+1)-a(n-1)` -/
def P367009986871644254.Spec : Prop :=
  ∀ n, P367009986871644254.a n = A023608 n

end A023608

/-! ## A023608.P1592798368455866513

`A023617(n+1)-2*a(n-1)` with `a(0)=1`
-/

namespace A023608.P1592798368455866513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A023617 (n + 1) - 2 * a (n - 1)

end

end A023608.P1592798368455866513

namespace A023608

/-- `A023617(n+1)-2*a(n-1)` -/
def P1592798368455866513.Spec : Prop :=
  ∀ n, P1592798368455866513.a n = A023608 n

end A023608

/-! ## A023608.P6735596621594734608

`Δ[A023628(n+1)]-A000040(n+1)`
-/

namespace A023608.P6735596621594734608
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023628 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A000040 (n + 1)

end

end A023608.P6735596621594734608

namespace A023608

/-- `Δ[A023628(n+1)]-A000040(n+1)` -/
def P6735596621594734608.Spec : Prop :=
  ∀ n, P6735596621594734608.a n = A023608 n

end A023608

/-!
# A023609: Convolution of Fibonacci numbers and composite numbers.

The programs for A023609, the canonical program `A023609.P18385611758150687772` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A023609 has offset 0).

The definition of A023609 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 474 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A023609.P18385611758150687772

`A002808(n+1)+a(n-1)+a(n-2)` with `a(0)=4, a(1)=10`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A023609

/-- `A002808(n+1)+a(n-1)+a(n-2)` -/
def P18385611758150687772.Spec : Prop :=
  ∀ n, P18385611758150687772.a n = A023609 n

theorem P18385611758150687772.correct : P18385611758150687772.Spec := by
  intro n
  simp only [A023609]

end A023609

/-! ## A023609.P6218959380524467883

`A023649(n+1)-a(n-1)` with `a(0)=4`
-/

namespace A023609.P6218959380524467883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [4] fun n a =>
  A023649 (n + 1) - a (n - 1)

end

end A023609.P6218959380524467883

namespace A023609

/-- `A023649(n+1)-a(n-1)` -/
def P6218959380524467883.Spec : Prop :=
  ∀ n, P6218959380524467883.a n = A023609 n

end A023609

/-! ## A023609.P1921078222226171560

`Δ[A023649(n+1)]-A002808(n+2)`
-/

namespace A023609.P1921078222226171560
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023649 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A002808 (n + 2)

end

end A023609.P1921078222226171560

namespace A023609

/-- `Δ[A023649(n+1)]-A002808(n+2)` -/
def P1921078222226171560.Spec : Prop :=
  ∀ n, P1921078222226171560.a n = A023609 n

end A023609

/-! ## A023609.P16792538307442430492

`Δ[A023649(n+1)]-A018252(n+3)`
-/

namespace A023609.P16792538307442430492
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023649 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A018252 (n + 3)

end

end A023609.P16792538307442430492

namespace A023609

/-- `Δ[A023649(n+1)]-A018252(n+3)` -/
def P16792538307442430492.Spec : Prop :=
  ∀ n, P16792538307442430492.a n = A023609 n

end A023609

/-! ## A023609.P16472693094889031918

`A023618(n+2)-A023649(n+2)`
-/

namespace A023609.P16472693094889031918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023618 (n + 2) - A023649 (n + 2)

end

end A023609.P16472693094889031918

namespace A023609

/-- `A023618(n+2)-A023649(n+2)` -/
def P16472693094889031918.Spec : Prop :=
  ∀ n, P16472693094889031918.a n = A023609 n

end A023609

/-!
# A023610: Convolution of Fibonacci numbers and {F(2), F(3), F(4), ...}.

The programs for A023610, the canonical program `A023610.P5614618559082529944` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A023610 has offset 0).

The definition of A023610 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A023610.P5614618559082529944

`A001629(n+1)+A001629(n+2)`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A023610

/-- `A001629(n+1)+A001629(n+2)` -/
def P5614618559082529944.Spec : Prop :=
  ∀ n, P5614618559082529944.a n = A023610 n

theorem P5614618559082529944.correct : P5614618559082529944.Spec := by
  intro n
  simp only [A023610]

end A023610

/-! ## A023610.P7654704419568137121

`2*a(n-1)+a(n-2)-2*a(n-3)-a(n-4)` with `a(0)=1, a(1)=3, a(2)=7, a(3)=15`
-/

namespace A023610.P7654704419568137121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3, 7, 15] fun n a =>
  2 * a (n - 1) + a (n - 2) - 2 * a (n - 3) - a (n - 4)

end

end A023610.P7654704419568137121

namespace A023610

/-- `2*a(n-1)+a(n-2)-2*a(n-3)-a(n-4)` -/
def P7654704419568137121.Spec : Prop :=
  ∀ n, P7654704419568137121.a n = A023610 n

end A023610

/-! ## A023610.P3417215980783701581

`(n+2)*A000045(n+4)/5+(n-1)*A000045(n+2)/5`
-/

namespace A023610.P3417215980783701581
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 2 : ℤ) * A000045 (n + 4) : ℚ) / 5 + (((n : ℤ) - 1) * A000045 (n + 2) : ℚ) / 5

end

end A023610.P3417215980783701581

namespace A023610

/-- `(n+2)*A000045(n+4)/5+(n-1)*A000045(n+2)/5` -/
def P3417215980783701581.Spec : Prop :=
  ∀ n, P3417215980783701581.a n = (A023610 n : ℚ)

end A023610

/-! ## A023610.P15538200912578387763

`ogf((1+x)/(1-2x-x^2+2x^3+x^4))`
-/

namespace A023610.P15538200912578387763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 1] [1, -2, -1, 2, 1] n

end

end A023610.P15538200912578387763

namespace A023610

/-- `ogf((1+x)/(1-2x-x^2+2x^3+x^4))` -/
def P15538200912578387763.Spec : Prop :=
  ∀ n, P15538200912578387763.a n = A023610 n

end A023610

/-! ## A023610.P10787906588063937564

`∑[∑[A208354(n)]]`
-/

namespace A023610.P10787906588063937564
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208354 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A023610.P10787906588063937564

namespace A023610

/-- `∑[∑[A208354(n)]]` -/
def P10787906588063937564.Spec : Prop :=
  ∀ n, P10787906588063937564.a n = A023610 n

end A023610

/-! ## A023610.P8961914555914295862

`∑[A029907(n+1)]`
-/

namespace A023610.P8961914555914295862
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029907 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A023610.P8961914555914295862

namespace A023610

/-- `∑[A029907(n+1)]` -/
def P8961914555914295862.Spec : Prop :=
  ∀ n, P8961914555914295862.a n = A023610 n

end A023610

/-! ## A023610.P14373071734580224233

`∑[A211228(Δ[n²])]`
-/

namespace A023610.P14373071734580224233
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211228 ((f2 (n + 1) : ℤ) - (f2 n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A023610.P14373071734580224233

namespace A023610

/-- `∑[A211228(Δ[n²])]` -/
def P14373071734580224233.Spec : Prop :=
  ∀ n, P14373071734580224233.a n = A023610 n

end A023610

/-! ## A023610.P14965711823811810302

`A113684(n)+1+n`
-/

namespace A023610.P14965711823811810302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113684 n + 1 + (n : ℤ)

end

end A023610.P14965711823811810302

namespace A023610

/-- `A113684(n)+1+n` -/
def P14965711823811810302.Spec : Prop :=
  ∀ n, P14965711823811810302.a n = A023610 n

end A023610

/-! ## A023610.P10439659805121499346

`record[Δ[A211228(n+1)]]`
-/

namespace A023610.P10439659805121499346
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211228 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A023610.P10439659805121499346

namespace A023610

/-- `record[Δ[A211228(n+1)]]` -/
def P10439659805121499346.Spec : Prop :=
  ∀ n, P10439659805121499346.a n = A023610 n

end A023610

/-! ## A023610.P14092349116683771606

`∑[A000045(n)+a(n-2)+a(n-1)]` with `a(0)=1, a(1)=2`
-/

namespace A023610.P14092349116683771606
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n f1 =>
  A000045 n + (f1 (n - 2) + f1 (n - 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A023610.P14092349116683771606

namespace A023610

/-- `∑[A000045(n)+a(n-2)+a(n-1)]` -/
def P14092349116683771606.Spec : Prop :=
  ∀ n, P14092349116683771606.a n = A023610 n

end A023610

/-! ## A023610.P8959142370008139356

`A000045(n+2)+a(n-2)+a(n-1)` with `a(0)=1, a(1)=3`
-/

namespace A023610.P8959142370008139356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3] fun n a =>
  A000045 (n + 2) + (a (n - 2) + a (n - 1))

end

end A023610.P8959142370008139356

namespace A023610

/-- `A000045(n+2)+a(n-2)+a(n-1)` -/
def P8959142370008139356.Spec : Prop :=
  ∀ n, P8959142370008139356.a n = A023610 n

end A023610

/-! ## A023610.P1545665278022175677

`A074331(n)+A054454(n)`
-/

namespace A023610.P1545665278022175677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074331 n + A054454 n

end

end A023610.P1545665278022175677

namespace A023610

/-- `A074331(n)+A054454(n)` -/
def P1545665278022175677.Spec : Prop :=
  ∀ n, P1545665278022175677.a n = A023610 n

end A023610

/-! ## A023610.P734430747768048542

`A131913(n)+A001629(n)`
-/

namespace A023610.P734430747768048542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131913 n + A001629 n

end

end A023610.P734430747768048542

namespace A023610

/-- `A131913(n)+A001629(n)` -/
def P734430747768048542.Spec : Prop :=
  ∀ n, P734430747768048542.a n = A023610 n

end A023610

/-! ## A023610.P11478308444573558601

`A354044(n)+A208354(n)`
-/

namespace A023610.P11478308444573558601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354044 n + A208354 n

end

end A023610.P11478308444573558601

namespace A023610

/-- `A354044(n)+A208354(n)` -/
def P11478308444573558601.Spec : Prop :=
  ∀ n, P11478308444573558601.a n = A023610 n

end A023610

/-! ## A023610.P4706756902237566267

`∑[A055244(n)+A000045(n)]`
-/

namespace A023610.P4706756902237566267
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055244 n + A000045 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A023610.P4706756902237566267

namespace A023610

/-- `∑[A055244(n)+A000045(n)]` -/
def P4706756902237566267.Spec : Prop :=
  ∀ n, P4706756902237566267.a n = A023610 n

end A023610

/-! ## A023610.P5060645838469741476

`A045925(n+1)+A010049(n)`
-/

namespace A023610.P5060645838469741476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045925 (n + 1) + A010049 n

end

end A023610.P5060645838469741476

namespace A023610

/-- `A045925(n+1)+A010049(n)` -/
def P5060645838469741476.Spec : Prop :=
  ∀ n, P5060645838469741476.a n = A023610 n

end A023610

/-! ## A023610.P1149877238725594236

`A131337(n+1)+A120940(n)`
-/

namespace A023610.P1149877238725594236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131337 (n + 1) + A120940 n

end

end A023610.P1149877238725594236

namespace A023610

/-- `A131337(n+1)+A120940(n)` -/
def P1149877238725594236.Spec : Prop :=
  ∀ n, P1149877238725594236.a n = A023610 n

end A023610

/-! ## A023610.P3124230732327128984

`∑[A010049(n)+∑[A006367(n)]]`
-/

namespace A023610.P3124230732327128984
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006367 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010049 n + ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A023610.P3124230732327128984

namespace A023610

/-- `∑[A010049(n)+∑[A006367(n)]]` -/
def P3124230732327128984.Spec : Prop :=
  ∀ n, P3124230732327128984.a n = A023610 n

end A023610

/-! ## A023610.P9397092201234678251

`∑[∑[A212804(n)+A010049(n)]]`
-/

namespace A023610.P9397092201234678251
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212804 n + A010049 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A023610.P9397092201234678251

namespace A023610

/-- `∑[∑[A212804(n)+A010049(n)]]` -/
def P9397092201234678251.Spec : Prop :=
  ∀ n, P9397092201234678251.a n = A023610 n

end A023610

/-! ## A023610.P4058592505657259050

`A001891(n)+∑[A006478(n)+1]`
-/

namespace A023610.P4058592505657259050
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006478 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001891 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A023610.P4058592505657259050

namespace A023610

/-- `A001891(n)+∑[A006478(n)+1]` -/
def P4058592505657259050.Spec : Prop :=
  ∀ n, P4058592505657259050.a n = A023610 n

end A023610

/-!
# A023611: Convolution of Fibonacci numbers and A000201.

The programs for A023611, the canonical program `A023611.P587451549185034991` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A023611 has offset 0).

The definition of A023611 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 475 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A023611.P10244313664704422194

`∑[A192757(n)]`
-/

namespace A023611.P10244313664704422194
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192757 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A023611.P10244313664704422194

namespace A023611

/-- `∑[A192757(n)]` -/
def P10244313664704422194.Spec : Prop :=
  ∀ n, P10244313664704422194.a n = A023611 n

end A023611

/-! ## A023611.P587451549185034991

`A000201(n+1)+a(n-2)+a(n-1)` with `a(0)=1, a(1)=4`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A023611

/-- `A000201(n+1)+a(n-2)+a(n-1)` -/
def P587451549185034991.Spec : Prop :=
  ∀ n, P587451549185034991.a n = A023611 n

theorem P587451549185034991.correct : P587451549185034991.Spec := by
  intro n
  simp only [A023611]

end A023611

/-! ## A023611.P7024159704281879566

`A192757(n+2)-A000201(n+3)`
-/

namespace A023611.P7024159704281879566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192757 (n + 2) - A000201 (n + 3)

end

end A023611.P7024159704281879566

namespace A023611

/-- `A192757(n+2)-A000201(n+3)` -/
def P7024159704281879566.Spec : Prop :=
  ∀ n, P7024159704281879566.a n = A023611 n

end A023611

/-! ## A023611.P1885294150721012343

`A023653(n+1)-a(n-1)` with `a(0)=1`
-/

namespace A023611.P1885294150721012343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A023653 (n + 1) - a (n - 1)

end

end A023611.P1885294150721012343

namespace A023611

/-- `A023653(n+1)-a(n-1)` -/
def P1885294150721012343.Spec : Prop :=
  ∀ n, P1885294150721012343.a n = A023611 n

end A023611

/-! ## A023611.P12493901058731526155

`A023612(n)-A001924(n+1)`
-/

namespace A023611.P12493901058731526155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023612 n - A001924 (n + 1)

end

end A023611.P12493901058731526155

namespace A023611

/-- `A023612(n)-A001924(n+1)` -/
def P12493901058731526155.Spec : Prop :=
  ∀ n, P12493901058731526155.a n = A023611 n

end A023611

/-! ## A023611.P7858238824804193883

`A023612(n)-∑[∑[A000045(n+1)]]`
-/

namespace A023611.P7858238824804193883
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023612 n - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A023611.P7858238824804193883

namespace A023611

/-- `A023612(n)-∑[∑[A000045(n+1)]]` -/
def P7858238824804193883.Spec : Prop :=
  ∀ n, P7858238824804193883.a n = A023611 n

end A023611

/-! ## A023611.P11246335220223838835

`(A192757(n)+A023653(n+1))/2`
-/

namespace A023611.P11246335220223838835
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A192757 n + A023653 (n + 1) : ℚ) / 2

end

end A023611.P11246335220223838835

namespace A023611

/-- `(A192757(n)+A023653(n+1))/2` -/
def P11246335220223838835.Spec : Prop :=
  ∀ n, P11246335220223838835.a n = (A023611 n : ℚ)

end A023611

/-! ## A023611.P6435359073774750637

`A023653(n+2)-(A023653(n+1)+A000201(n+2))`
-/

namespace A023611.P6435359073774750637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023653 (n + 2) - (A023653 (n + 1) + A000201 (n + 2))

end

end A023611.P6435359073774750637

namespace A023611

/-- `A023653(n+2)-(A023653(n+1)+A000201(n+2))` -/
def P6435359073774750637.Spec : Prop :=
  ∀ n, P6435359073774750637.a n = A023611 n

end A023611

/-! ## A023611.P15006493100277064754

`A023621(n+2)-A023653(n+2)`
-/

namespace A023611.P15006493100277064754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023621 (n + 2) - A023653 (n + 2)

end

end A023611.P15006493100277064754

namespace A023611

/-- `A023621(n+2)-A023653(n+2)` -/
def P15006493100277064754.Spec : Prop :=
  ∀ n, P15006493100277064754.a n = A023611 n

end A023611

/-!
# A023612: Convolution of Fibonacci numbers and A001950.

The programs for A023612, the canonical program `A023612.P3484570344473562160` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A023612 has offset 0).

The definition of A023612 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 474 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A023612.P3484570344473562160

`A023611(n)+Δ[A014162(n)]`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A023612

/-- `A023611(n)+Δ[A014162(n)]` -/
def P3484570344473562160.Spec : Prop :=
  ∀ n, P3484570344473562160.a n = A023612 n

theorem P3484570344473562160.correct : P3484570344473562160.Spec := by
  intro n
  simp only [A023612]

end A023612

/-! ## A023612.P4762357237091775845

`A023611(n)+A001924(n+1)`
-/

namespace A023612.P4762357237091775845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023611 n + A001924 (n + 1)

end

end A023612.P4762357237091775845

namespace A023612

/-- `A023611(n)+A001924(n+1)` -/
def P4762357237091775845.Spec : Prop :=
  ∀ n, P4762357237091775845.a n = A023612 n

end A023612

/-! ## A023612.P4698469248179998259

`A023611(n)+Δ[A116717(n+1)]`
-/

namespace A023612.P4698469248179998259
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116717 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023611 n + (f1 (n + 1) - f1 n)

end

end A023612.P4698469248179998259

namespace A023612

/-- `A023611(n)+Δ[A116717(n+1)]` -/
def P4698469248179998259.Spec : Prop :=
  ∀ n, P4698469248179998259.a n = A023612 n

end A023612

/-! ## A023612.P15930188331978771674

`A023654(n+1)-a(n-1)` with `a(0)=2`
-/

namespace A023612.P15930188331978771674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A023654 (n + 1) - a (n - 1)

end

end A023612.P15930188331978771674

namespace A023612

/-- `A023654(n+1)-a(n-1)` -/
def P15930188331978771674.Spec : Prop :=
  ∀ n, P15930188331978771674.a n = A023612 n

end A023612

/-! ## A023612.P16026557818578813434

`A023654(n+2)-(A023654(n+1)+A001950(n+2))`
-/

namespace A023612.P16026557818578813434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023654 (n + 2) - (A023654 (n + 1) + A001950 (n + 2))

end

end A023612.P16026557818578813434

namespace A023612

/-- `A023654(n+2)-(A023654(n+1)+A001950(n+2))` -/
def P16026557818578813434.Spec : Prop :=
  ∀ n, P16026557818578813434.a n = A023612 n

end A023612

/-!
# A023613: Convolution of Fibonacci numbers and A023533.

The programs for A023613, there is no canonical definition to state claims against.
-/

/-! ## A023613.P3980966369573134537

`A023655(n+1)-a(n-1)` with `a(0)=1`
-/

namespace A023613.P3980966369573134537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A023655 (n + 1) - a (n - 1)

end

end A023613.P3980966369573134537

/-! ## A023613.P12483883314383165827

`A001911(n)+1-A023614(n)`
-/

namespace A023613.P12483883314383165827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001911 n + (1 - A023614 n)

end

end A023613.P12483883314383165827

/-! ## A023613.P10301407887037828446

`A020695(n)-(A023614(n)+1)`
-/

namespace A023613.P10301407887037828446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020695 n - (A023614 n + 1)

end

end A023613.P10301407887037828446

/-! ## A023613.P3528304582717148146

`A000071(n+3)-A023614(n)`
-/

namespace A023613.P3528304582717148146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000071 (n + 3) - A023614 n

end

end A023613.P3528304582717148146

/-! ## A023613.P10295073411626849748

`∑[∑[A212804(n)]]-A023614(n)`
-/

namespace A023613.P10295073411626849748
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212804 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A023614 n

end

end A023613.P10295073411626849748

/-! ## A023613.P11459417789506557728

`A023623(n+2)-A023655(n+2)`
-/

namespace A023613.P11459417789506557728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023623 (n + 2) - A023655 (n + 2)

end

end A023613.P11459417789506557728

/-! ## A023613.P17350727930803691486

`Δ[A001924(n)]-A023614(n)`
-/

namespace A023613.P17350727930803691486
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001924 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A023614 n

end

end A023613.P17350727930803691486

/-!
# A023614: Convolution of Fibonacci numbers and A014306.

The programs for A023614, there is no canonical definition to state claims against.
-/

/-! ## A023614.P11440677945556603296

`A023656(n+1)-a(n-1)` with `a(0)=0`
-/

namespace A023614.P11440677945556603296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A023656 (n + 1) - a (n - 1)

end

end A023614.P11440677945556603296

/-! ## A023614.P12700019754917235797

`A001911(n)+1-A023613(n)`
-/

namespace A023614.P12700019754917235797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001911 n + (1 - A023613 n)

end

end A023614.P12700019754917235797

/-! ## A023614.P9958571155709687132

`A020695(n)-(A023613(n)+1)`
-/

namespace A023614.P9958571155709687132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020695 n - (A023613 n + 1)

end

end A023614.P9958571155709687132

/-! ## A023614.P7442893221416711597

`A000071(n+3)-A023613(n)`
-/

namespace A023614.P7442893221416711597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000071 (n + 3) - A023613 n

end

end A023614.P7442893221416711597

/-! ## A023614.P5571881326046515286

`∑[A000045(n+1)]-A023613(n)`
-/

namespace A023614.P5571881326046515286
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A023613 n

end

end A023614.P5571881326046515286

/-! ## A023614.P7445915554010973092

`2*A023656(n+1)-A023624(n+1)`
-/

namespace A023614.P7445915554010973092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A023656 (n + 1) - A023624 (n + 1)

end

end A023614.P7445915554010973092

/-! ## A023614.P6183083965260333768

`Δ[A001924(n)]-A023613(n)`
-/

namespace A023614.P6183083965260333768
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001924 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A023613 n

end

end A023614.P6183083965260333768

/-! ## A023614.P5456742836545180257

`A023624(n+2)-A023656(n+2)`
-/

namespace A023614.P5456742836545180257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023624 (n + 2) - A023656 (n + 2)

end

end A023614.P5456742836545180257

/-!
# A023615: Convolution of Fibonacci numbers and primes.

The programs for A023615, the canonical program `A023615.P9273506623120273616` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A023615 has offset 0).

The definition of A023615 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A023615.P9273506623120273616

`a(n-1)+a(n-2)+A000040(n+1)` with `a(0)=2, a(1)=5`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A023615

/-- `a(n-1)+a(n-2)+A000040(n+1)` -/
def P9273506623120273616.Spec : Prop :=
  ∀ n, P9273506623120273616.a n = A023615 n

theorem P9273506623120273616.correct : P9273506623120273616.Spec := by
  intro n
  simp only [A023615]

end A023615

/-! ## A023615.P14609064019191543531

`A008578(n+2)+a(n-2)+a(n-1)` with `a(0)=2, a(1)=5`
-/

namespace A023615.P14609064019191543531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 5] fun n a =>
  A008578 (n + 2) + (a (n - 2) + a (n - 1))

end

end A023615.P14609064019191543531

namespace A023615

/-- `A008578(n+2)+a(n-2)+a(n-1)` -/
def P14609064019191543531.Spec : Prop :=
  ∀ n, P14609064019191543531.a n = A023615 n

end A023615

/-! ## A023615.P34019969957249951

`A023608(n+1)-A000045(n+2)`
-/

namespace A023615.P34019969957249951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023608 (n + 1) - A000045 (n + 2)

end

end A023615.P34019969957249951

namespace A023615

/-- `A023608(n+1)-A000045(n+2)` -/
def P34019969957249951.Spec : Prop :=
  ∀ n, P34019969957249951.a n = A023615 n

end A023615

/-! ## A023615.P2686661526532064183

`A023657(n+1)-a(n-1)` with `a(0)=2`
-/

namespace A023615.P2686661526532064183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A023657 (n + 1) - a (n - 1)

end

end A023615.P2686661526532064183

namespace A023615

/-- `A023657(n+1)-a(n-1)` -/
def P2686661526532064183.Spec : Prop :=
  ∀ n, P2686661526532064183.a n = A023615 n

end A023615

/-! ## A023615.P296939542037854130

`Δ[A023657(n+1)]-A065091(n+1)`
-/

namespace A023615.P296939542037854130
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023657 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A065091 (n + 1)

end

end A023615.P296939542037854130

namespace A023615

/-- `Δ[A023657(n+1)]-A065091(n+1)` -/
def P296939542037854130.Spec : Prop :=
  ∀ n, P296939542037854130.a n = A023615 n

end A023615

/-! ## A023615.P2166492177598810093

`A023657(n+2)-(A023657(n+1)+A000040(n+2))`
-/

namespace A023615.P2166492177598810093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023657 (n + 2) - (A023657 (n + 1) + A000040 (n + 2))

end

end A023615.P2166492177598810093

namespace A023615

/-- `A023657(n+2)-(A023657(n+1)+A000040(n+2))` -/
def P2166492177598810093.Spec : Prop :=
  ∀ n, P2166492177598810093.a n = A023615 n

end A023615

/-!
# A023616: Self-convolution of A023532.

The programs for A023616, there is no canonical definition to state claims against.
-/

/-! ## A023616.P6702791773171523347

`A023547(n+1)-(A023556(n+1)+A023536(n+1))`
-/

namespace A023616.P6702791773171523347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023547 (n + 1) - (A023556 (n + 1) + A023536 (n + 1))

end

end A023616.P6702791773171523347

/-! ## A023616.P7670416031642952488

`A083920(n+2)-A023556(n+1)`
-/

namespace A023616.P7670416031642952488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083920 (n + 2) - A023556 (n + 1)

end

end A023616.P7670416031642952488

/-! ## A023616.P17059864616514905696

`∑[A023532(n+1)]-A023556(n+1)`
-/

namespace A023616.P17059864616514905696
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023532 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A023556 (n + 1)

end

end A023616.P17059864616514905696

/-! ## A023616.P7943145939348035055

`Δ[A125811(n+2)]-A023556(n+1)`
-/

namespace A023616.P7943145939348035055
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125811 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A023556 (n + 1)

end

end A023616.P7943145939348035055

/-! ## A023616.P12565992610528933641

`A056039(n+1)-A128834(A349968(n+3))`
-/

namespace A023616.P12565992610528933641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056039 (n + 1) - A128834 (A349968 (n + 3)).toNat

end

end A023616.P12565992610528933641

/-!
# A023617: Convolution of Lucas numbers and (1, p(1), p(2), ...).

The programs for A023617, the canonical program `A023617.P9096282738909620640` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A023617 has offset 1).

The definition of A023617 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 473 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A023617.P9096282738909620640

`2*A023628(n+1)-A023608(n)`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A023617

/-- `2*A023628(n+1)-A023608(n)` -/
def P9096282738909620640.Spec : Prop :=
  ∀ n, P9096282738909620640.a n = A023617 (n + 1)

theorem P9096282738909620640.correct : P9096282738909620640.Spec := by
  intro n
  simp only [A023617, Nat.add_sub_cancel]

end A023617

/-! ## A023617.P4926863805366644850

`A023608(n)+A005843(A023628(n+1)-A023608(n))`
-/

namespace A023617.P4926863805366644850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023608 n + A005843 (A023628 (n + 1) - A023608 n).toNat

end

end A023617.P4926863805366644850

namespace A023617

/-- `A023608(n)+A005843(A023628(n+1)-A023608(n))` -/
def P4926863805366644850.Spec : Prop :=
  ∀ n, P4926863805366644850.a n = A023617 (n + 1)

end A023617

/-! ## A023617.P14463105640383062423

`A005843(A023628(n+1))-A023608(n)`
-/

namespace A023617.P14463105640383062423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A023628 (n + 1)).toNat - A023608 n

end

end A023617.P14463105640383062423

namespace A023617

/-- `A005843(A023628(n+1))-A023608(n)` -/
def P14463105640383062423.Spec : Prop :=
  ∀ n, P14463105640383062423.a n = A023617 (n + 1)

end A023617

/-! ## A023617.P7431833018044087119

`A095396(∑[A100535(n)])`
-/

namespace A023617.P7431833018044087119
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100535 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095396 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A023617.P7431833018044087119

namespace A023617

/-- `A095396(∑[A100535(n)])` -/
def P7431833018044087119.Spec : Prop :=
  ∀ n, P7431833018044087119.a n = A023617 (n + 1)

end A023617

/-!
# A023618: Convolution of Lucas numbers and composite numbers.

The programs for A023618, the canonical program `A023618.P16496442946416001020` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A023618 has offset 1).

The definition of A023618 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 472 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A023618.P16496442946416001020

`A023649(n+1)+A023649(n+1)-A023609(n)`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A023618

/-- `A023649(n+1)+A023649(n+1)-A023609(n)` -/
def P16496442946416001020.Spec : Prop :=
  ∀ n, P16496442946416001020.a n = A023618 (n + 1)

theorem P16496442946416001020.correct : P16496442946416001020.Spec := by
  intro n
  simp only [A023618, Nat.add_sub_cancel]

end A023618

/-! ## A023618.P17943034589961764249

`2*A023649(n+1)-A023609(n)`
-/

namespace A023618.P17943034589961764249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A023649 (n + 1) - A023609 n

end

end A023618.P17943034589961764249

namespace A023618

/-- `2*A023649(n+1)-A023609(n)` -/
def P17943034589961764249.Spec : Prop :=
  ∀ n, P17943034589961764249.a n = A023618 (n + 1)

theorem P17943034589961764249.correct : P17943034589961764249.Spec := by
  intro n
  simp only [A023618, Nat.add_sub_cancel, A023618.P17943034589961764249.a, A023618.P16496442946416001020.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A023618

/-! ## A023618.P11027131219309297133

`A004277(A023649(n+1))-A023609(n)`
-/

namespace A023618.P11027131219309297133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A023649 (n + 1)).toNat - A023609 n

end

end A023618.P11027131219309297133

namespace A023618

/-- `A004277(A023649(n+1))-A023609(n)` -/
def P11027131219309297133.Spec : Prop :=
  ∀ n, P11027131219309297133.a n = A023618 (n + 1)

end A023618

/-!
# A023619: Convolution of Lucas numbers and (F(2), F(3), F(4), ...).

The programs for A023619, the canonical program `A023619.P11808100545596447754` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A023619 has offset 1).

The definition of A023619 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A023619.P11808100545596447754

`n*A000045(n+1)+(n+1)*A000045(n+2)`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A023619

/-- `n*A000045(n+1)+(n+1)*A000045(n+2)` -/
def P11808100545596447754.Spec : Prop :=
  ∀ n, P11808100545596447754.a n = A023619 (n + 1)

theorem P11808100545596447754.correct : P11808100545596447754.Spec := by
  intro n
  simp only [A023619, Nat.add_sub_cancel]

end A023619

/-! ## A023619.P201941052597232953

`2*A001629(n)+3*A001629(n+1)+A001629(n+2)`
-/

namespace A023619.P201941052597232953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A001629 n + 3 * A001629 (n + 1) + A001629 (n + 2)

end

end A023619.P201941052597232953

namespace A023619

/-- `2*A001629(n)+3*A001629(n+1)+A001629(n+2)` -/
def P201941052597232953.Spec : Prop :=
  ∀ n, P201941052597232953.a n = A023619 (n + 1)

end A023619

/-! ## A023619.P1385691833896804855

`ogf((1+3x+2x^2)/(1-2x-x^2+2x^3+x^4))`
-/

namespace A023619.P1385691833896804855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 3, 2] [1, -2, -1, 2, 1] n

end

end A023619.P1385691833896804855

namespace A023619

/-- `ogf((1+3x+2x^2)/(1-2x-x^2+2x^3+x^4))` -/
def P1385691833896804855.Spec : Prop :=
  ∀ n, P1385691833896804855.a n = A023619 (n + 1)

end A023619

/-! ## A023619.P5864113578201213143

`abs(Δ[n*Δ[A119282(n)]])`
-/

namespace A023619.P5864113578201213143
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119282 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A023619.P5864113578201213143

namespace A023619

/-- `abs(Δ[n*Δ[A119282(n)]])` -/
def P5864113578201213143.Spec : Prop :=
  ∀ n, P5864113578201213143.a n = A023619 (n + 1)

end A023619

/-! ## A023619.P7306206251090262265

`round((n-1+ϕ)*A000045(n+3))`
-/

namespace A023619.P7306206251090262265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((((n : ℤ) - 1 : ℝ) + Real.goldenRatio) * (A000045 (n + 3) : ℝ))

end

end A023619.P7306206251090262265

namespace A023619

/-- `round((n-1+ϕ)*A000045(n+3))` -/
def P7306206251090262265.Spec : Prop :=
  ∀ n, P7306206251090262265.a n = A023619 (n + 1)

end A023619

/-! ## A023619.P12069515746446400692

`A023607(n+1)+A023607(n)`
-/

namespace A023619.P12069515746446400692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023607 (n + 1) + A023607 n

end

end A023619.P12069515746446400692

namespace A023619

/-- `A023607(n+1)+A023607(n)` -/
def P12069515746446400692.Spec : Prop :=
  ∀ n, P12069515746446400692.a n = A023619 (n + 1)

theorem P12069515746446400692.correct : P12069515746446400692.Spec := by
  intro n
  simp only [A023619, Nat.add_sub_cancel, A023619.P12069515746446400692.a, A023619.P11808100545596447754.a, A000045, A000045.P11838749114346432762.a, A023607, A023607.P1034350130520621684.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A023619

/-! ## A023619.P12476056617479631309

`A264147(n)+A146005(n+1)`
-/

namespace A023619.P12476056617479631309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264147 n + A146005 (n + 1)

end

end A023619.P12476056617479631309

namespace A023619

/-- `A264147(n)+A146005(n+1)` -/
def P12476056617479631309.Spec : Prop :=
  ∀ n, P12476056617479631309.a n = A023619 (n + 1)

end A023619

/-! ## A023619.P5974012027386665593

`A354044(n)+A136376(n+1)`
-/

namespace A023619.P5974012027386665593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354044 n + A136376 (n + 1)

end

end A023619.P5974012027386665593

namespace A023619

/-- `A354044(n)+A136376(n+1)` -/
def P5974012027386665593.Spec : Prop :=
  ∀ n, P5974012027386665593.a n = A023619 (n + 1)

end A023619

/-! ## A023619.P1419349074685869146

`A264147(n+3)+A178521(n)`
-/

namespace A023619.P1419349074685869146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264147 (n + 3) + A178521 n

end

end A023619.P1419349074685869146

namespace A023619

/-- `A264147(n+3)+A178521(n)` -/
def P1419349074685869146.Spec : Prop :=
  ∀ n, P1419349074685869146.a n = A023619 (n + 1)

end A023619

/-! ## A023619.P1744880452800746534

`∑[A055244(n+1)+A029907(n)]`
-/

namespace A023619.P1744880452800746534
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055244 (n + 1) + A029907 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A023619.P1744880452800746534

namespace A023619

/-- `∑[A055244(n+1)+A029907(n)]` -/
def P1744880452800746534.Spec : Prop :=
  ∀ n, P1744880452800746534.a n = A023619 (n + 1)

end A023619

/-! ## A023619.P1349655778022523542

`∑[A094588(n+1)+A094588(n)]`
-/

namespace A023619.P1349655778022523542
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094588 (n + 1) + A094588 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A023619.P1349655778022523542

namespace A023619

/-- `∑[A094588(n+1)+A094588(n)]` -/
def P1349655778022523542.Spec : Prop :=
  ∀ n, P1349655778022523542.a n = A023619 (n + 1)

end A023619

/-! ## A023619.P17833638053854815349

`A023610(n)+∑[2*A029907(n)]`
-/

namespace A023619.P17833638053854815349
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A029907 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023610 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A023619.P17833638053854815349

namespace A023619

/-- `A023610(n)+∑[2*A029907(n)]` -/
def P17833638053854815349.Spec : Prop :=
  ∀ n, P17833638053854815349.a n = A023619 (n + 1)

end A023619

/-! ## A023619.P10190001860775657320

`∑[A006490(n+3)-A118658(n)]`
-/

namespace A023619.P10190001860775657320
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006490 (n + 3) - A118658 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A023619.P10190001860775657320

namespace A023619

/-- `∑[A006490(n+3)-A118658(n)]` -/
def P10190001860775657320.Spec : Prop :=
  ∀ n, P10190001860775657320.a n = A023619 (n + 1)

end A023619

/-! ## A023619.P17565808687036665251

`Δ[A020695(n)]+n*A020695(n)`
-/

namespace A023619.P17565808687036665251
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020695 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + (n : ℤ) * A020695 n

end

end A023619.P17565808687036665251

namespace A023619

/-- `Δ[A020695(n)]+n*A020695(n)` -/
def P17565808687036665251.Spec : Prop :=
  ∀ n, P17565808687036665251.a n = A023619 (n + 1)

end A023619

/-! ## A023619.P8925610980697978972

`A178521(n+1)+A045925(n+1)`
-/

namespace A023619.P8925610980697978972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178521 (n + 1) + A045925 (n + 1)

end

end A023619.P8925610980697978972

namespace A023619

/-- `A178521(n+1)+A045925(n+1)` -/
def P8925610980697978972.Spec : Prop :=
  ∀ n, P8925610980697978972.a n = A023619 (n + 1)

end A023619

/-! ## A023619.P14019213702909917712

`A264147(n+1)+2*A045925(n+1)`
-/

namespace A023619.P14019213702909917712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264147 (n + 1) + 2 * A045925 (n + 1)

end

end A023619.P14019213702909917712

namespace A023619

/-- `A264147(n+1)+2*A045925(n+1)` -/
def P14019213702909917712.Spec : Prop :=
  ∀ n, P14019213702909917712.a n = A023619 (n + 1)

theorem P14019213702909917712.correct : P14019213702909917712.Spec := by
  intro n
  simp only [A023619, Nat.add_sub_cancel, A023619.P14019213702909917712.a, A023619.P11808100545596447754.a, A000045, A000045.P11838749114346432762.a, A045925, A045925.P2609971174242523106.a, A264147, A264147.P9936490276008260745.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A023619

/-! ## A023619.P3972997702410757086

`A014286(n+1)+2*A000071(n+2)`
-/

namespace A023619.P3972997702410757086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014286 (n + 1) + 2 * A000071 (n + 2)

end

end A023619.P3972997702410757086

namespace A023619

/-- `A014286(n+1)+2*A000071(n+2)` -/
def P3972997702410757086.Spec : Prop :=
  ∀ n, P3972997702410757086.a n = A023619 (n + 1)

end A023619

/-! ## A023619.P12752224635469078199

`A000045(n+2)+n*A000045(n+3)`
-/

namespace A023619.P12752224635469078199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (n + 2) + (n : ℤ) * A000045 (n + 3)

end

end A023619.P12752224635469078199

namespace A023619

/-- `A000045(n+2)+n*A000045(n+3)` -/
def P12752224635469078199.Spec : Prop :=
  ∀ n, P12752224635469078199.a n = A023619 (n + 1)

end A023619

/-! ## A023619.P1266192987839585269

`A053602(2*n+1)+n*A116470(2*n+1)`
-/

namespace A023619.P1266192987839585269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053602 (2 * n + 1) + (n : ℤ) * A116470 (2 * n + 1)

end

end A023619.P1266192987839585269

namespace A023619

/-- `A053602(2*n+1)+n*A116470(2*n+1)` -/
def P1266192987839585269.Spec : Prop :=
  ∀ n, P1266192987839585269.a n = A023619 (n + 1)

end A023619

/-! ## A023619.P4292916150732827887

`A053602(2*n+1)+n*A123231(2*(n+1))`
-/

namespace A023619.P4292916150732827887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053602 (2 * n + 1) + (n : ℤ) * A123231 (2 * (n + 1))

end

end A023619.P4292916150732827887

namespace A023619

/-- `A053602(2*n+1)+n*A123231(2*(n+1))` -/
def P4292916150732827887.Spec : Prop :=
  ∀ n, P4292916150732827887.a n = A023619 (n + 1)

end A023619

/-!
# A023620: Convolution of Lucas numbers and odd numbers.

The programs for A023620, the canonical program `A023620.P10602615773165496403` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A023620 has offset 1).

The definition of A023620 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A023620.P2601553816558228487

`A033811(n+1)-2*(n+1)`
-/

namespace A023620.P2601553816558228487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033811 (n + 1) - (2 * (n + 1) : ℤ)

end

end A023620.P2601553816558228487

namespace A023620

/-- `A033811(n+1)-2*(n+1)` -/
def P2601553816558228487.Spec : Prop :=
  ∀ n, P2601553816558228487.a n = A023620 (n + 1)

end A023620

/-! ## A023620.P10602615773165496403

`3*a(n-1)-2*a(n-2)-a(n-3)+a(n-4)` with `a(0)=1, a(1)=6, a(2)=18, a(3)=41`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A023620

/-- `3*a(n-1)-2*a(n-2)-a(n-3)+a(n-4)` -/
def P10602615773165496403.Spec : Prop :=
  ∀ n, P10602615773165496403.a n = A023620 (n + 1)

theorem P10602615773165496403.correct : P10602615773165496403.Spec := by
  intro n
  simp only [A023620, Nat.add_sub_cancel]

end A023620

/-! ## A023620.P11211839431575329215

`∑[ceil(∑[ϕ^(n+2)])-2]`
-/

namespace A023620.P11211839431575329215
noncomputable section

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.goldenRatio ^ (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈∑ j ∈ Finset.range (n + 1), f2 j⌉ - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A023620.P11211839431575329215

namespace A023620

/-- `∑[ceil(∑[ϕ^(n+2)])-2]` -/
def P11211839431575329215.Spec : Prop :=
  ∀ n, P11211839431575329215.a n = A023620 (n + 1)

end A023620

/-! ## A023620.P7584456581051661219

`ogf((1+3x+2x^2)/(1-3x+2x^2+x^3-x^4))`
-/

namespace A023620.P7584456581051661219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 3, 2] [1, -3, 2, 1, -1] n

end

end A023620.P7584456581051661219

namespace A023620

/-- `ogf((1+3x+2x^2)/(1-3x+2x^2+x^3-x^4))` -/
def P7584456581051661219.Spec : Prop :=
  ∀ n, P7584456581051661219.a n = A023620 (n + 1)

end A023620

/-! ## A023620.P8391932862497181806

`A192978(n+1)+∑[2*n]`
-/

namespace A023620.P8391932862497181806
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192978 (n + 1) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A023620.P8391932862497181806

namespace A023620

/-- `A192978(n+1)+∑[2*n]` -/
def P8391932862497181806.Spec : Prop :=
  ∀ n, P8391932862497181806.a n = A023620 (n + 1)

end A023620

/-! ## A023620.P14282833291214372013

`∑[A023548(n+1)]+∑[n-1]`
-/

namespace A023620.P14282833291214372013
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023548 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + ∑ j ∈ Finset.range (n + 1), f2 j

end

end A023620.P14282833291214372013

namespace A023620

/-- `∑[A023548(n+1)]+∑[n-1]` -/
def P14282833291214372013.Spec : Prop :=
  ∀ n, P14282833291214372013.a n = A023620 (n + 1)

end A023620

/-! ## A023620.P1317969182742241163

`∑[∑[A163695(n+1)]]-(2*n+1)`
-/

namespace A023620.P1317969182742241163
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163695 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (2 * n + 1 : ℤ)

end

end A023620.P1317969182742241163

namespace A023620

/-- `∑[∑[A163695(n+1)]]-(2*n+1)` -/
def P1317969182742241163.Spec : Prop :=
  ∀ n, P1317969182742241163.a n = A023620 (n + 1)

end A023620

/-! ## A023620.P14693711391978569433

`∑[∑[A000204(n+2)]]-2*(n+1)`
-/

namespace A023620.P14693711391978569433
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000204 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (2 * (n + 1) : ℤ)

end

end A023620.P14693711391978569433

namespace A023620

/-- `∑[∑[A000204(n+2)]]-2*(n+1)` -/
def P14693711391978569433.Spec : Prop :=
  ∀ n, P14693711391978569433.a n = A023620 (n + 1)

end A023620

/-! ## A023620.P6276033500830723295

`A023652(n+1)+A001891(n)`
-/

namespace A023620.P6276033500830723295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023652 (n + 1) + A001891 n

end

end A023620.P6276033500830723295

namespace A023620

/-- `A023652(n+1)+A001891(n)` -/
def P6276033500830723295.Spec : Prop :=
  ∀ n, P6276033500830723295.a n = A023620 (n + 1)

end A023620

/-! ## A023620.P16153169484117797321

`A192971(n)+A192956(n+1)`
-/

namespace A023620.P16153169484117797321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192971 n + A192956 (n + 1)

end

end A023620.P16153169484117797321

namespace A023620

/-- `A192971(n)+A192956(n+1)` -/
def P16153169484117797321.Spec : Prop :=
  ∀ n, P16153169484117797321.a n = A023620 (n + 1)

end A023620

/-! ## A023620.P5719195045127550925

`A192755(n+1)+A065220(n+1)`
-/

namespace A023620.P5719195045127550925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192755 (n + 1) + A065220 (n + 1)

end

end A023620.P5719195045127550925

namespace A023620

/-- `A192755(n+1)+A065220(n+1)` -/
def P5719195045127550925.Spec : Prop :=
  ∀ n, P5719195045127550925.a n = A023620 (n + 1)

end A023620

/-! ## A023620.P10293894601965219156

`A001891(n+1)+2*A001891(n)`
-/

namespace A023620.P10293894601965219156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001891 (n + 1) + 2 * A001891 n

end

end A023620.P10293894601965219156

namespace A023620

/-- `A001891(n+1)+2*A001891(n)` -/
def P10293894601965219156.Spec : Prop :=
  ∀ n, P10293894601965219156.a n = A023620 (n + 1)

end A023620

/-! ## A023620.P15328182780224657341

`2*A023537(n+1)-A027961(n+1)`
-/

namespace A023620.P15328182780224657341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A023537 (n + 1) - A027961 (n + 1)

end

end A023620.P15328182780224657341

namespace A023620

/-- `2*A023537(n+1)-A027961(n+1)` -/
def P15328182780224657341.Spec : Prop :=
  ∀ n, P15328182780224657341.a n = A023620 (n + 1)

end A023620

/-! ## A023620.P3112049384512452491

`A001891(n)+A053808(n)-A163250(n)`
-/

namespace A023620.P3112049384512452491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001891 n + (A053808 n - A163250 n)

end

end A023620.P3112049384512452491

namespace A023620

/-- `A001891(n)+A053808(n)-A163250(n)` -/
def P3112049384512452491.Spec : Prop :=
  ∀ n, P3112049384512452491.a n = A023620 (n + 1)

end A023620

/-! ## A023620.P12298575799380211287

`A192953(n+1)+A192958(n+1)+A192954(n)`
-/

namespace A023620.P12298575799380211287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192953 (n + 1) + (A192958 (n + 1) + A192954 n)

end

end A023620.P12298575799380211287

namespace A023620

/-- `A192953(n+1)+A192958(n+1)+A192954(n)` -/
def P12298575799380211287.Spec : Prop :=
  ∀ n, P12298575799380211287.a n = A023620 (n + 1)

end A023620

/-! ## A023620.P12337011441896970030

`Δ[A027963(n+3)]-(3*n+4)`
-/

namespace A023620.P12337011441896970030
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027963 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - (3 * n + 4 : ℤ)

end

end A023620.P12337011441896970030

namespace A023620

/-- `Δ[A027963(n+3)]-(3*n+4)` -/
def P12337011441896970030.Spec : Prop :=
  ∀ n, P12337011441896970030.a n = A023620 (n + 1)

end A023620

/-!
# A023621: Convolution of Lucas numbers and A000201.

The programs for A023621, the canonical program `A023621.P16071833400035228711` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A023621 has offset 1).

The definition of A023621 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 473 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A023621.P16071833400035228711

`A023653(n+1)+A023653(n+1)-A023611(n)`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A023621

/-- `A023653(n+1)+A023653(n+1)-A023611(n)` -/
def P16071833400035228711.Spec : Prop :=
  ∀ n, P16071833400035228711.a n = A023621 (n + 1)

theorem P16071833400035228711.correct : P16071833400035228711.Spec := by
  intro n
  simp only [A023621, Nat.add_sub_cancel]

end A023621

/-! ## A023621.P8357680176509730713

`A023653(n+2)-(A192757(n)+A000201(n+2))`
-/

namespace A023621.P8357680176509730713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023653 (n + 2) - (A192757 n + A000201 (n + 2))

end

end A023621.P8357680176509730713

namespace A023621

/-- `A023653(n+2)-(A192757(n)+A000201(n+2))` -/
def P8357680176509730713.Spec : Prop :=
  ∀ n, P8357680176509730713.a n = A023621 (n + 1)

end A023621

/-! ## A023621.P15047590324412813705

`A023622(n+1)-A023537(n+1)`
-/

namespace A023621.P15047590324412813705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023622 (n + 1) - A023537 (n + 1)

end

end A023621.P15047590324412813705

namespace A023621

/-- `A023622(n+1)-A023537(n+1)` -/
def P15047590324412813705.Spec : Prop :=
  ∀ n, P15047590324412813705.a n = A023621 (n + 1)

theorem P15047590324412813705.correct : P15047590324412813705.Spec := by
  intro n
  simp only [A023621, Nat.add_sub_cancel, A023621.P15047590324412813705.a, A023621.P16071833400035228711.a, A023537, A023537.P8170499368705976005.a, A023611, A023611.P587451549185034991.a, A023622, A023622.P4193336609147366981.a, A023653, A023653.P8982485491075407413.f2, A023653.P8982485491075407413.f1, A023653.P8982485491075407413.a, A000032, A000032.P8352177345629330861.a, A000201, A000201.P2935798382643029248.a, A014675, A014675.P17423219922035932121.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A023621

/-! ## A023621.P11775293431526811142

`2*A023653(n+1)-A023611(n)`
-/

namespace A023621.P11775293431526811142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A023653 (n + 1) - A023611 n

end

end A023621.P11775293431526811142

namespace A023621

/-- `2*A023653(n+1)-A023611(n)` -/
def P11775293431526811142.Spec : Prop :=
  ∀ n, P11775293431526811142.a n = A023621 (n + 1)

theorem P11775293431526811142.correct : P11775293431526811142.Spec := by
  intro n
  simp only [A023621, Nat.add_sub_cancel, A023621.P11775293431526811142.a, A023621.P16071833400035228711.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A023621

/-! ## A023621.P2161443679972964352

`2*A023654(n+1)-A023612(n)-A023537(n+1)`
-/

namespace A023621.P2161443679972964352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A023654 (n + 1) - A023612 n - A023537 (n + 1)

end

end A023621.P2161443679972964352

namespace A023621

/-- `2*A023654(n+1)-A023612(n)-A023537(n+1)` -/
def P2161443679972964352.Spec : Prop :=
  ∀ n, P2161443679972964352.a n = A023621 (n + 1)

end A023621

/-!
# A023622: Convolution of Lucas numbers and A001950.

The programs for A023622, the canonical program `A023622.P4193336609147366981` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A023622 has offset 1).

The definition of A023622 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 472 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A023622.P4193336609147366981

`A023621(n+1)+A023537(n+1)`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A023622

/-- `A023621(n+1)+A023537(n+1)` -/
def P4193336609147366981.Spec : Prop :=
  ∀ n, P4193336609147366981.a n = A023622 (n + 1)

theorem P4193336609147366981.correct : P4193336609147366981.Spec := by
  intro n
  simp only [A023622, Nat.add_sub_cancel]

end A023622

/-! ## A023622.P8018365384005209299

`A023654(n+1)+A023654(n+1)-A023612(n)`
-/

namespace A023622.P8018365384005209299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023654 (n + 1) + (A023654 (n + 1) - A023612 n)

end

end A023622.P8018365384005209299

namespace A023622

/-- `A023654(n+1)+A023654(n+1)-A023612(n)` -/
def P8018365384005209299.Spec : Prop :=
  ∀ n, P8018365384005209299.a n = A023622 (n + 1)

end A023622

/-! ## A023622.P5175685424153477486

`A023537(n+1)+2*A023653(n+1)-A023611(n)`
-/

namespace A023622.P5175685424153477486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023537 (n + 1) + (2 * A023653 (n + 1) - A023611 n)

end

end A023622.P5175685424153477486

namespace A023622

/-- `A023537(n+1)+2*A023653(n+1)-A023611(n)` -/
def P5175685424153477486.Spec : Prop :=
  ∀ n, P5175685424153477486.a n = A023622 (n + 1)

theorem P5175685424153477486.correct : P5175685424153477486.Spec := by
  intro n
  simp only [A023622, Nat.add_sub_cancel, A023622.P5175685424153477486.a, A023622.P4193336609147366981.a, A023537, A023537.P8170499368705976005.a, A023611, A023611.P587451549185034991.a, A023621, A023621.P16071833400035228711.a, A023653, A023653.P8982485491075407413.f2, A023653.P8982485491075407413.f1, A023653.P8982485491075407413.a, A000032, A000032.P8352177345629330861.a, A000201, A000201.P2935798382643029248.a, A014675, A014675.P17423219922035932121.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A023622

/-! ## A023622.P3245926134348653222

`A023537(n+1)+A023653(n+2)-(A192757(n)+A000201(n+2))`
-/

namespace A023622.P3245926134348653222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023537 (n + 1) + (A023653 (n + 2) - (A192757 n + A000201 (n + 2)))

end

end A023622.P3245926134348653222

namespace A023622

/-- `A023537(n+1)+A023653(n+2)-(A192757(n)+A000201(n+2))` -/
def P3245926134348653222.Spec : Prop :=
  ∀ n, P3245926134348653222.a n = A023622 (n + 1)

end A023622

/-! ## A023622.P428517074688201482

`2*A023654(n+1)-A023612(n)`
-/

namespace A023622.P428517074688201482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A023654 (n + 1) - A023612 n

end

end A023622.P428517074688201482

namespace A023622

/-- `2*A023654(n+1)-A023612(n)` -/
def P428517074688201482.Spec : Prop :=
  ∀ n, P428517074688201482.a n = A023622 (n + 1)

end A023622

/-!
# A023623: Convolution of Lucas numbers and A023533.

The programs for A023623, there is no canonical definition to state claims against.
-/

/-! ## A023623.P13509876401011652258

`A023655(n+1)+A023655(n+1)-A023613(n)`
-/

namespace A023623.P13509876401011652258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023655 (n + 1) + (A023655 (n + 1) - A023613 n)

end

end A023623.P13509876401011652258

/-! ## A023623.P1801970798291039855

`A023655(n+1)-(A020695(n)-(A023614(n)+1)-A023655(n+1))`
-/

namespace A023623.P1801970798291039855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023655 (n + 1) - (A020695 n - (A023614 n + 1) - A023655 (n + 1))

end

end A023623.P1801970798291039855

/-! ## A023623.P4317883189871618457

`2*A023655(n+1)-A023613(n)`
-/

namespace A023623.P4317883189871618457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A023655 (n + 1) - A023613 n

end

end A023623.P4317883189871618457

/-! ## A023623.P15355176646484612185

`A027961(n+1)-A023624(n+1)`
-/

namespace A023623.P15355176646484612185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027961 (n + 1) - A023624 (n + 1)

end

end A023623.P15355176646484612185

/-! ## A023623.P12965110123832965686

`∑[A000204(n+1)]-A023624(n+1)`
-/

namespace A023623.P12965110123832965686
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000204 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A023624 (n + 1)

end

end A023623.P12965110123832965686

/-!
# A023624: Convolution of Lucas numbers and A014306.

The programs for A023624, there is no canonical definition to state claims against.
-/

/-! ## A023624.P12763826658579661083

`2*A023656(n+1)-A023614(n)`
-/

namespace A023624.P12763826658579661083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A023656 (n + 1) - A023614 n

end

end A023624.P12763826658579661083

/-! ## A023624.P11648532272397532562

`A027961(n+1)-A023623(n+1)`
-/

namespace A023624.P11648532272397532562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027961 (n + 1) - A023623 (n + 1)

end

end A023624.P11648532272397532562

/-! ## A023624.P1038089164458216713

`∑[A000032(n+1)]-A023623(n+1)`
-/

namespace A023624.P1038089164458216713
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A023623 (n + 1)

end

end A023624.P1038089164458216713

/-! ## A023624.P10915541207149306788

`∑[A000204(n+1)]-A023623(n+1)`
-/

namespace A023624.P10915541207149306788
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000204 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A023623 (n + 1)

end

end A023624.P10915541207149306788

/-! ## A023624.P6075583054726193773

`A027961(n+1)-(2*A023655(n+1)-A023613(n))`
-/

namespace A023624.P6075583054726193773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027961 (n + 1) - (2 * A023655 (n + 1) - A023613 n)

end

end A023624.P6075583054726193773

/-!
# A023625: Convolution of Lucas numbers and primes.

The programs for A023625, the canonical program `A023625.P15838302889821291983` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A023625 has offset 1).

The definition of A023625 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 473 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A023625.P15838302889821291983

`A023657(n+1)+A023657(n+1)-A023615(n)`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A023625

/-- `A023657(n+1)+A023657(n+1)-A023615(n)` -/
def P15838302889821291983.Spec : Prop :=
  ∀ n, P15838302889821291983.a n = A023625 (n + 1)

theorem P15838302889821291983.correct : P15838302889821291983.Spec := by
  intro n
  simp only [A023625, Nat.add_sub_cancel]

end A023625

/-! ## A023625.P2237177330802651150

`2*A023657(n+1)-A023615(n)`
-/

namespace A023625.P2237177330802651150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A023657 (n + 1) - A023615 n

end

end A023625.P2237177330802651150

namespace A023625

/-- `2*A023657(n+1)-A023615(n)` -/
def P2237177330802651150.Spec : Prop :=
  ∀ n, P2237177330802651150.a n = A023625 (n + 1)

theorem P2237177330802651150.correct : P2237177330802651150.Spec := by
  intro n
  simp only [A023625, Nat.add_sub_cancel, A023625.P2237177330802651150.a, A023625.P15838302889821291983.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A023625

/-! ## A023625.P6884061377730244894

`A005843(A023657(n+1))-A023615(n)`
-/

namespace A023625.P6884061377730244894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A023657 (n + 1)).toNat - A023615 n

end

end A023625.P6884061377730244894

namespace A023625

/-- `A005843(A023657(n+1))-A023615(n)` -/
def P6884061377730244894.Spec : Prop :=
  ∀ n, P6884061377730244894.a n = A023625 (n + 1)

end A023625

/-!
# A023626: Self-convolution of (1, p(1), p(2), ...).

The programs for A023626, there is no canonical definition to state claims against.
-/

/-! ## A023626.P1704398175158501186

`∑[A003987(∑[A227809(n)])]`
-/

namespace A023626.P1704398175158501186
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227809 (n + 15)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003987 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A023626.P1704398175158501186

/-! ## A023626.P15087876783739460859

`∑[A324935(∑[A002822(n+1)])]`
-/

namespace A023626.P15087876783739460859
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002822 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324935 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A023626.P15087876783739460859

/-! ## A023626.P11613873117362103491

`∑[A325456(∑[A288256(n+1)])]`
-/

namespace A023626.P11613873117362103491
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288256 (n + 1 + 10)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325456 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A023626.P11613873117362103491

/-!
# A023627: Convolution of (1, p(1), p(2), ...) and composite numbers.

The programs for A023627, there is no canonical definition to state claims against.
-/

/-! ## A023627.P16664880386656453990

`A164923(n*eq[1, A141169(n)]+1)`
-/

namespace A023627.P16664880386656453990
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141169 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164923 (n * SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A023627.P16664880386656453990

/-! ## A023627.P15291026855672063376

`A332232(n+1)+∑[A139487(2*(n+1))]`
-/

namespace A023627.P15291026855672063376
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139487 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332232 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A023627.P15291026855672063376

/-!
# A023628: Convolution of (1, p(1), p(2), ...) and (F(2), F(3), F(4), ...).

The programs for A023628, the canonical program `A023628.P2110802593740284488` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A023628 has offset 1).

The definition of A023628 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 474 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A023628.P13012748354973077431

`A023608(n+1)-Δ[A007504(n)]`
-/

namespace A023628.P13012748354973077431
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023608 (n + 1) - (f1 (n + 1) - f1 n)

end

end A023628.P13012748354973077431

namespace A023628

/-- `A023608(n+1)-Δ[A007504(n)]` -/
def P13012748354973077431.Spec : Prop :=
  ∀ n, P13012748354973077431.a n = A023628 (n + 1)

end A023628

/-! ## A023628.P2110802593740284488

`A023608(n+1)-p?[A001057(n)]`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A023628

/-- `A023608(n+1)-p?[A001057(n)]` -/
def P2110802593740284488.Spec : Prop :=
  ∀ n, P2110802593740284488.a n = A023628 (n + 1)

theorem P2110802593740284488.correct : P2110802593740284488.Spec := by
  intro n
  simp only [A023628, Nat.add_sub_cancel]

end A023628

/-! ## A023628.P11554302707950014113

`A023608(n+1)-p?[A004276(n)]`
-/

namespace A023628.P11554302707950014113
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004276 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023608 (n + 1) - f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A023628.P11554302707950014113

namespace A023628

/-- `A023608(n+1)-p?[A004276(n)]` -/
def P11554302707950014113.Spec : Prop :=
  ∀ n, P11554302707950014113.a n = A023628 (n + 1)

end A023628

/-! ## A023628.P16826382332711453301

`A023608(n+1)-p?[A006370(n)]`
-/

namespace A023628.P16826382332711453301
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006370 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023608 (n + 1) - f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A023628.P16826382332711453301

namespace A023628

/-- `A023608(n+1)-p?[A006370(n)]` -/
def P16826382332711453301.Spec : Prop :=
  ∀ n, P16826382332711453301.a n = A023628 (n + 1)

end A023628

/-! ## A023628.P579797342829750425

`A023608(n+1)-p?[A007989(n)]`
-/

namespace A023628.P579797342829750425
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007989 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023608 (n + 1) - f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A023628.P579797342829750425

namespace A023628

/-- `A023608(n+1)-p?[A007989(n)]` -/
def P579797342829750425.Spec : Prop :=
  ∀ n, P579797342829750425.a n = A023628 (n + 1)

end A023628

/-! ## A023628.P16124064743880484361

`A023608(n+1)-A000040(n+1)`
-/

namespace A023628.P16124064743880484361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023608 (n + 1) - A000040 (n + 1)

end

end A023628.P16124064743880484361

namespace A023628

/-- `A023608(n+1)-A000040(n+1)` -/
def P16124064743880484361.Spec : Prop :=
  ∀ n, P16124064743880484361.a n = A023628 (n + 1)

end A023628

/-! ## A023628.P10493804121863478298

`A023608(n+1)-A008578(n+2)`
-/

namespace A023628.P10493804121863478298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023608 (n + 1) - A008578 (n + 2)

end

end A023628.P10493804121863478298

namespace A023628

/-- `A023608(n+1)-A008578(n+2)` -/
def P10493804121863478298.Spec : Prop :=
  ∀ n, P10493804121863478298.a n = A023628 (n + 1)

end A023628

/-!
# A023629: a(n) = c([ n/2 ]) + n, with a(1) = 1, c = complement to a.

The programs for A023629, there is no canonical definition to state claims against.
-/

/-! ## A023629.P9275782316692788196

`eq[2, A023630(n+1)]`
-/

namespace A023629.P9275782316692788196
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023630 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A023629.P9275782316692788196

/-! ## A023629.P9577861113200057244

`eq[2, A194688(A080079(n+1))]`
-/

namespace A023629.P9577861113200057244
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194688 (A080079 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A023629.P9577861113200057244

/-! ## A023629.P12120784394306126993

`lt[A217586(lt[A217586(n+1), 1]), 1]`
-/

namespace A023629.P12120784394306126993
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217586 (n + 1)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217586 (SequenceMachineLib.nth (fun j => f2 j < (f3 j : ℤ)) n)

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f4 j : ℤ)) n

end

end A023629.P12120784394306126993

/-! ## A023629.P3675038543586774389

`lt[1, A175880(lt[1, A175880(n+1)])]`
-/

namespace A023629.P3675038543586774389
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175880 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175880 (SequenceMachineLib.nth (fun j => (f3 j : ℤ) < f4 j) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A023629.P3675038543586774389

/-! ## A023629.P3191785221311575631

`eq[1, A080426(A053754(n+1)+2)]`
-/

namespace A023629.P3191785221311575631
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080426 (A053754 (n + 1) + 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A023629.P3191785221311575631

/-! ## A023629.P251160059009047015

`eq[1, A026465(A010078(n+1)+1)]`
-/

namespace A023629.P251160059009047015
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026465 (A010078 (n + 1) + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A023629.P251160059009047015

/-! ## A023629.P9389083928152214530

`A171945(A080513(n))+A004526(n)`
-/

namespace A023629.P9389083928152214530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171945 (A080513 n).toNat + A004526 n

end

end A023629.P9389083928152214530

/-! ## A023629.P12536290415902490357

`A171945(A080513(n))+A140106(n+2)`
-/

namespace A023629.P12536290415902490357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171945 (A080513 n).toNat + A140106 (n + 2)

end

end A023629.P12536290415902490357

/-! ## A023629.P15947966502417436496

`A171945(A004526(n+3))+A004526(n)`
-/

namespace A023629.P15947966502417436496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171945 (A004526 (n + 3)).toNat + A004526 n

end

end A023629.P15947966502417436496

/-! ## A023629.P1058867115415048281

`A171945(A080513(n))+A008615(3*n)`
-/

namespace A023629.P1058867115415048281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171945 (A080513 n).toNat + A008615 (3 * n)

end

end A023629.P1058867115415048281

/-! ## A023629.P4528188673183068336

`A032766(n)+A171945(A080513(n))-n`
-/

namespace A023629.P4528188673183068336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032766 n + (A171945 (A080513 n).toNat - (n : ℤ))

end

end A023629.P4528188673183068336

/-! ## A023629.P8576503658569888451

`A171945(A080513(n))+A123108(A028310(n))`
-/

namespace A023629.P8576503658569888451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171945 (A080513 n).toNat + A123108 (A028310 n).toNat

end

end A023629.P8576503658569888451

/-! ## A023629.P7882478705072403638

`A080513(n)+A171945(A080513(n))-A000034(n)`
-/

namespace A023629.P7882478705072403638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080513 n + (A171945 (A080513 n).toNat - A000034 n)

end

end A023629.P7882478705072403638

/-!
# A023630: a(n) = s(2n) - s(2n-1), where s( ) is sequence A023629.

The programs for A023630, the canonical program `A023630.P2488653469154600080` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A023630 has offset 1).

The definition of A023630 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A023630.P2488653469154600080

`Δ[lt[0, A217586(n+1)]]`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A023630

/-- `Δ[lt[0, A217586(n+1)]]` -/
def P2488653469154600080.Spec : Prop :=
  ∀ n, P2488653469154600080.a n = A023630 (n + 1)

theorem P2488653469154600080.correct : P2488653469154600080.Spec := by
  intro n
  simp only [A023630, Nat.add_sub_cancel]

end A023630

/-! ## A023630.P113274759605349130

`Δ[lt[0, A039982(2*n)]]`
-/

namespace A023630.P113274759605349130
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039982 (2 * n)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) < f3 j) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A023630.P113274759605349130

namespace A023630

/-- `Δ[lt[0, A039982(2*n)]]` -/
def P113274759605349130.Spec : Prop :=
  ∀ n, P113274759605349130.a n = A023630 (n + 1)

end A023630

/-! ## A023630.P3155459350821692834

`A000007(n)+Δ[2*A053661(n+1)]`
-/

namespace A023630.P3155459350821692834
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A053661 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n + (f1 (n + 1) - f1 n)

end

end A023630.P3155459350821692834

namespace A023630

/-- `A000007(n)+Δ[2*A053661(n+1)]` -/
def P3155459350821692834.Spec : Prop :=
  ∀ n, P3155459350821692834.a n = A023630 (n + 1)

end A023630

/-! ## A023630.P14384249966278344756

`Δ[gcd(2, A000010(n+2))*A053661(n+1)]`
-/

namespace A023630.P14384249966278344756
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.gcd 2 (A000010 (n + 2)) : ℤ) * A053661 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A023630.P14384249966278344756

namespace A023630

/-- `Δ[gcd(2, A000010(n+2))*A053661(n+1)]` -/
def P14384249966278344756.Spec : Prop :=
  ∀ n, P14384249966278344756.a n = A023630 (n + 1)

end A023630

/-! ## A023630.P8699334547798341758

`A023632(A337909(n+2))`
-/

namespace A023630.P8699334547798341758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023632 (A337909 (n + 2)).toNat

end

end A023630.P8699334547798341758

namespace A023630

/-- `A023632(A337909(n+2))` -/
def P8699334547798341758.Spec : Prop :=
  ∀ n, P8699334547798341758.a n = A023630 (n + 1)

end A023630

/-! ## A023630.P1376498358458715075

`A023629(2*(n+1))-A023629(2*n+1)`
-/

namespace A023630.P1376498358458715075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023629 (2 * (n + 1)) - A023629 (2 * n + 1)

end

end A023630.P1376498358458715075

namespace A023630

/-- `A023629(2*(n+1))-A023629(2*n+1)` -/
def P1376498358458715075.Spec : Prop :=
  ∀ n, P1376498358458715075.a n = A023630 (n + 1)

end A023630

/-! ## A023630.P8789152927120196509

`Δ[A023629(2*n+1)]-1`
-/

namespace A023630.P8789152927120196509
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023629 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - 1

end

end A023630.P8789152927120196509

namespace A023630

/-- `Δ[A023629(2*n+1)]-1` -/
def P8789152927120196509.Spec : Prop :=
  ∀ n, P8789152927120196509.a n = A023630 (n + 1)

end A023630

/-! ## A023630.P2589412424877295143

`Δ[lt[A175880(n+1), 2]]`
-/

namespace A023630.P2589412424877295143
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175880 (n + 1)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < (f3 j : ℤ)) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A023630.P2589412424877295143

namespace A023630

/-- `Δ[lt[A175880(n+1), 2]]` -/
def P2589412424877295143.Spec : Prop :=
  ∀ n, P2589412424877295143.a n = A023630 (n + 1)

end A023630

/-! ## A023630.P12592248007085967495

`Δ[eq[A209229(n), A285384(n+1)]]`
-/

namespace A023630.P12592248007085967495
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209229 n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285384 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j = f3 j) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A023630.P12592248007085967495

namespace A023630

/-- `Δ[eq[A209229(n), A285384(n+1)]]` -/
def P12592248007085967495.Spec : Prop :=
  ∀ n, P12592248007085967495.a n = A023630 (n + 1)

end A023630

/-! ## A023630.P6483696420190568638

`2*A034701(2*(n+1))-A034701(2*n+1)`
-/

namespace A023630.P6483696420190568638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A034701 (2 * (n + 1)) - A034701 (2 * n + 1)

end

end A023630.P6483696420190568638

namespace A023630

/-- `2*A034701(2*(n+1))-A034701(2*n+1)` -/
def P6483696420190568638.Spec : Prop :=
  ∀ n, P6483696420190568638.a n = A023630 (n + 1)

end A023630

/-! ## A023630.P17799875787462107658

`A004277(A034701(2*(n+1)))-A034701(2*n+1)`
-/

namespace A023630.P17799875787462107658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A034701 (2 * (n + 1))).toNat - A034701 (2 * n + 1)

end

end A023630.P17799875787462107658

namespace A023630

/-- `A004277(A034701(2*(n+1)))-A034701(2*n+1)` -/
def P17799875787462107658.Spec : Prop :=
  ∀ n, P17799875787462107658.a n = A023630 (n + 1)

end A023630

/-! ## A023630.P17570502494973662397

`Δ[A034701(Δ[n²])]`
-/

namespace A023630.P17570502494973662397
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034701 ((f2 (n + 1) : ℤ) - (f2 n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A023630.P17570502494973662397

namespace A023630

/-- `Δ[A034701(Δ[n²])]` -/
def P17570502494973662397.Spec : Prop :=
  ∀ n, P17570502494973662397.a n = A023630 (n + 1)

end A023630

/-! ## A023630.P12988623072489284917

`A034701(2*n+3)-A034701(2*n+1)`
-/

namespace A023630.P12988623072489284917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034701 (2 * n + 3) - A034701 (2 * n + 1)

end

end A023630.P12988623072489284917

namespace A023630

/-- `A034701(2*n+3)-A034701(2*n+1)` -/
def P12988623072489284917.Spec : Prop :=
  ∀ n, P12988623072489284917.a n = A023630 (n + 1)

end A023630

/-! ## A023630.P657784551388575857

`Δ[lt[A039984(2*(n+1)), 1]]`
-/

namespace A023630.P657784551388575857
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039984 (2 * (n + 1))

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < (f3 j : ℤ)) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A023630.P657784551388575857

namespace A023630

/-- `Δ[lt[A039984(2*(n+1)), 1]]` -/
def P657784551388575857.Spec : Prop :=
  ∀ n, P657784551388575857.a n = A023630 (n + 1)

end A023630

/-! ## A023630.P7975768326442470966

`Δ[eq[A001511(n+1), A039982(n)]/2]`
-/

namespace A023630.P7975768326442470966
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039982 n

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => f2 j = f3 j) n : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A023630.P7975768326442470966

namespace A023630

/-- `Δ[eq[A001511(n+1), A039982(n)]/2]` -/
def P7975768326442470966.Spec : Prop :=
  ∀ n, P7975768326442470966.a n = (A023630 (n + 1) : ℚ)

end A023630

/-! ## A023630.P9195595152041571123

`Δ[eq[A001511(2*n+1), A039982(2*n)]]`
-/

namespace A023630.P9195595152041571123
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (2 * n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039982 (2 * n)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j = f3 j) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A023630.P9195595152041571123

namespace A023630

/-- `Δ[eq[A001511(2*n+1), A039982(2*n)]]` -/
def P9195595152041571123.Spec : Prop :=
  ∀ n, P9195595152041571123.a n = A023630 (n + 1)

end A023630

/-!
# A023631: a(n) = c([ (n+1)/2 ]) + n, with a(1) = 1 and a(2) = 4, c = complement to a.

The programs for A023631, the canonical program `A023631.P10237634559327045715` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A023631 has offset 1).

The definition of A023631 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2950 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A023631.P10579769632509693987

`eq[2, A023632(n+1)]+1`
-/

namespace A023631.P10579769632509693987
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023632 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A023631.P10579769632509693987

namespace A023631

/-- `eq[2, A023632(n+1)]+1` -/
def P10579769632509693987.Spec : Prop :=
  ∀ n, (P10579769632509693987.a n : ℤ) = A023631 (n + 1)

end A023631

/-! ## A023631.P10237634559327045715

`eq[2, A194688(A004761(n+2))]`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A023631

/-- `eq[2, A194688(A004761(n+2))]` -/
def P10237634559327045715.Spec : Prop :=
  ∀ n, (P10237634559327045715.a n : ℤ) = A023631 (n + 1)

theorem P10237634559327045715.correct : P10237634559327045715.Spec := by
  intro n
  simp only [A023631, Nat.add_sub_cancel]

end A023631

/-! ## A023631.P1935146563393466138

`record[A115352(A284392(n+1)-1)]`
-/

namespace A023631.P1935146563393466138
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115352 (A284392 (n + 1) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A023631.P1935146563393466138

namespace A023631

/-- `record[A115352(A284392(n+1)-1)]` -/
def P1935146563393466138.Spec : Prop :=
  ∀ n, P1935146563393466138.a n = A023631 (n + 1)

end A023631

/-!
# A023632: a(n) = s(2n+1) - s(2n), where s( ) is sequence A023631.

The programs for A023632, the canonical program `A023632.P17596121348302090998` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A023632 has offset 1).

The definition of A023632 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8192 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A023632.P17596121348302090998

`A023630(A337909(n+1)-A158388(n))`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A023632

/-- `A023630(A337909(n+1)-A158388(n))` -/
def P17596121348302090998.Spec : Prop :=
  ∀ n, P17596121348302090998.a n = A023632 (n + 1)

theorem P17596121348302090998.correct : P17596121348302090998.Spec := by
  intro n
  simp only [A023632, Nat.add_sub_cancel]

end A023632

/-! ## A023632.P4439772184975415895

`A023630(abs(A337909(n+1)+A260196(n)))`
-/

namespace A023632.P4439772184975415895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023630 |A337909 (n + 1) + A260196 n|.toNat

end

end A023632.P4439772184975415895

namespace A023632

/-- `A023630(abs(A337909(n+1)+A260196(n)))` -/
def P4439772184975415895.Spec : Prop :=
  ∀ n, P4439772184975415895.a n = A023632 (n + 1)

end A023632

/-! ## A023632.P4248076864160274878

`Δ[A023631(2*(n+1))]-1`
-/

namespace A023632.P4248076864160274878
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023631 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - 1

end

end A023632.P4248076864160274878

namespace A023632

/-- `Δ[A023631(2*(n+1))]-1` -/
def P4248076864160274878.Spec : Prop :=
  ∀ n, P4248076864160274878.a n = A023632 (n + 1)

end A023632

/-! ## A023632.P7619931289401499929

`A023443(Δ[A023631(2*(n+1))])`
-/

namespace A023632.P7619931289401499929
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023631 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (f1 (n + 1) - f1 n).toNat

end

end A023632.P7619931289401499929

namespace A023632

/-- `A023443(Δ[A023631(2*(n+1))])` -/
def P7619931289401499929.Spec : Prop :=
  ∀ n, P7619931289401499929.a n = A023632 (n + 1)

end A023632

/-! ## A023632.P15426422706401169302

`A233583(Δ[A023631(2*(n+1))])`
-/

namespace A023632.P15426422706401169302
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023631 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233583 (f1 (n + 1) - f1 n).toNat

end

end A023632.P15426422706401169302

namespace A023632

/-- `A233583(Δ[A023631(2*(n+1))])` -/
def P15426422706401169302.Spec : Prop :=
  ∀ n, P15426422706401169302.a n = A023632 (n + 1)

end A023632

/-! ## A023632.P16413670570110933056

`A295010(Δ[A023631(2*(n+1))])`
-/

namespace A023632.P16413670570110933056
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023631 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295010 (f1 (n + 1) - f1 n).toNat

end

end A023632.P16413670570110933056

namespace A023632

/-- `A295010(Δ[A023631(2*(n+1))])` -/
def P16413670570110933056.Spec : Prop :=
  ∀ n, P16413670570110933056.a n = A023632 (n + 1)

end A023632

/-! ## A023632.P2733270581168429767

`A023444(Δ[A023631(2*(n+1))]+1)`
-/

namespace A023632.P2733270581168429767
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023631 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023444 (f1 (n + 1) - f1 n + 1).toNat

end

end A023632.P2733270581168429767

namespace A023632

/-- `A023444(Δ[A023631(2*(n+1))]+1)` -/
def P2733270581168429767.Spec : Prop :=
  ∀ n, P2733270581168429767.a n = A023632 (n + 1)

end A023632

/-! ## A023632.P14425389623574330371

`A260196(n+1)+Δ[A023631(2*n+1)]`
-/

namespace A023632.P14425389623574330371
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023631 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260196 (n + 1) + (f1 (n + 1) - f1 n)

end

end A023632.P14425389623574330371

namespace A023632

/-- `A260196(n+1)+Δ[A023631(2*n+1)]` -/
def P14425389623574330371.Spec : Prop :=
  ∀ n, P14425389623574330371.a n = A023632 (n + 1)

end A023632

/-! ## A023632.P3565944591315934022

`A023631(2*n+3)-A023631(2*(n+1))`
-/

namespace A023632.P3565944591315934022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023631 (2 * n + 3) - A023631 (2 * (n + 1))

end

end A023632.P3565944591315934022

namespace A023632

/-- `A023631(2*n+3)-A023631(2*(n+1))` -/
def P3565944591315934022.Spec : Prop :=
  ∀ n, P3565944591315934022.a n = A023632 (n + 1)

end A023632

/-!
# A023633: a(n) = c([ n/3 ]) + n, with a(1) = 1, a(2) = 2, c = complement to a.

The programs for A023633, there is no canonical definition to state claims against.
-/

/-! ## A023633.P15312357967248358775

`eq[2, A023634(n+1)]`
-/

namespace A023633.P15312357967248358775
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023634 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A023633.P15312357967248358775

/-! ## A023633.P17193323667566880361

`record[2*(n+1)/A023634(n+2)]`
-/

namespace A023633.P17193323667566880361
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 * (n + 1) : ℚ) / (A023634 (n + 2) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A023633.P17193323667566880361

/-! ## A023633.P10990007587711524432

`lt[2, A020639(A023634(n+1)+A000040(n+1))]`
-/

namespace A023633.P10990007587711524432
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A023634 (n + 1) + A000040 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A023633.P10990007587711524432

/-! ## A023633.P14468568214666631989

`lt[A023634(n+1), A000005(A241817(n+1))]`
-/

namespace A023633.P14468568214666631989
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023634 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A241817 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A023633.P14468568214666631989

/-!
# A023634: s(3n)-s(3n-1), where s( ) is sequence A023633.

The programs for A023634, there is no canonical definition to state claims against.
-/

/-! ## A023634.P754566686892036944

`A023444(Δ[A023633(3*n+1)])`
-/

namespace A023634.P754566686892036944
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023633 (3 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023444 (f1 (n + 1) - f1 n).toNat

end

end A023634.P754566686892036944

/-! ## A023634.P15026560493165517030

`A094991(Δ[A023633(3*n+1)])`
-/

namespace A023634.P15026560493165517030
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023633 (3 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094991 (f1 (n + 1) - f1 n).toNat

end

end A023634.P15026560493165517030

/-! ## A023634.P1363754920319216724

`A094983(Δ[A023633(3*n+1)]+2)`
-/

namespace A023634.P1363754920319216724
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023633 (3 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094983 (f1 (n + 1) - f1 n + 2).toNat

end

end A023634.P1363754920319216724

/-! ## A023634.P12574833076754913198

`A000005(Δ[A023633(3*n+1)]+9)`
-/

namespace A023634.P12574833076754913198
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023633 (3 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (f1 (n + 1) - f1 n + 9).toNat

end

end A023634.P12574833076754913198

/-! ## A023634.P8838758605687444045

`Δ[A023633(3*n+2)]-2`
-/

namespace A023634.P8838758605687444045
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023633 (3 * n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - 2

end

end A023634.P8838758605687444045

/-!
# A023635: a(n) = c([ 2n/3 ]) + n, with a(1) = 1, a(2) = 4, c = complement to a.

The programs for A023635, there is no canonical definition to state claims against.
-/

/-! ## A023635.P17123892294164745035

`∑[A023636(n+1)]`
-/

namespace A023635.P17123892294164745035
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023636 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A023635.P17123892294164745035

/-! ## A023635.P2753994351234045571

`∑[A023636(-xor(n, -1))]-A001489(n)-n`
-/

namespace A023635.P2753994351234045571
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023636 (-Int.xor (n : ℤ) (-1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A001489 n - (n : ℤ)

end

end A023635.P2753994351234045571

/-! ## A023635.P15901035971762378051

`A028310(∑[A023636(-xor(n, -1))])`
-/

namespace A023635.P15901035971762378051
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023636 (-Int.xor (n : ℤ) (-1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A023635.P15901035971762378051

/-! ## A023635.P2338701858878897239

`eq[2, A023636(round((n-1)/2+n+1)+1)]`
-/

namespace A023635.P2338701858878897239
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023636 (SequenceMachineLib.roundAway (((n : ℤ) - 1 : ℚ) / 2 + (n + 1 : ℚ)) + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A023635.P2338701858878897239

/-! ## A023635.P1569294716394130077

`A004523(eq[2, A023636(n+1)])`
-/

namespace A023635.P1569294716394130077
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023636 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004523 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A023635.P1569294716394130077

/-!
# A023636: a(n) = s(3n) - s(3n-1), where s( ) is sequence A023635.

The programs for A023636, there is no canonical definition to state claims against.
-/

/-! ## A023636.P15448100470748061720

`A324827(A239791(n)+A017137(n))`
-/

namespace A023636.P15448100470748061720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324827 (A239791 n + A017137 n).toNat

end

end A023636.P15448100470748061720

/-! ## A023636.P14400840338192501004

`A001511(A204418(2*n+1)+A064551(n+3))`
-/

namespace A023636.P14400840338192501004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (A204418 (2 * n + 1) + A064551 (n + 3)).toNat

end

end A023636.P14400840338192501004

/-! ## A023636.P17607089243799734736

`ceil(log2(A340407(2^n)))`
-/

namespace A023636.P17607089243799734736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.logb 2 (A340407 (2 ^ n) : ℝ)⌉

end

end A023636.P17607089243799734736

/-! ## A023636.P11171118461527905035

`A000720(A340407(2^n))`
-/

namespace A023636.P11171118461527905035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A340407 (2 ^ n)).toNat

end

end A023636.P11171118461527905035

/-!
# A023637: Vertex-transitive graphs of valency 10 with n nodes.

The programs for A023637, there is no canonical definition to state claims against.
-/

/-! ## A023637.P5160085029759769664

`A319367(eq[10, A193592(n)])`
-/

namespace A023637.P5160085029759769664
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319367 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A023637.P5160085029759769664

/-! ## A023637.P4312431930007940030

`A319367(A052905(n+8)-5)`
-/

namespace A023637.P4312431930007940030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319367 (A052905 (n + 8) - 5).toNat

end

end A023637.P4312431930007940030

/-! ## A023637.P3965264176485788808

`A319367(A167614(n+9)+8)`
-/

namespace A023637.P3965264176485788808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319367 (A167614 (n + 9) + 8).toNat

end

end A023637.P3965264176485788808

/-! ## A023637.P12058154828184040098

`A319367(A000124(n+10)+10)`
-/

namespace A023637.P12058154828184040098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319367 (A000124 (n + 10) + 10).toNat

end

end A023637.P12058154828184040098

/-! ## A023637.P10190611289767756760

`A319367(A000217(n+10)+n+1)`
-/

namespace A023637.P10190611289767756760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319367 (A000217 (n + 10) + (n + 1 : ℤ)).toNat

end

end A023637.P10190611289767756760

/-!
# A023638: Vertex-transitive graphs of valency 11 with 2n nodes.

The programs for A023638, there is no canonical definition to state claims against.
-/

/-! ## A023638.P5727065433627079355

`A167605(A364622(n))`
-/

namespace A023638.P5727065433627079355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167605 (A364622 n).toNat

end

end A023638.P5727065433627079355

/-!
# A023639: Vertex-transitive graphs of valency 12 with n nodes.

The programs for A023639, there is no canonical definition to state claims against.
-/

/-! ## A023639.P430603733161453862

`A319367(eq[12, A193592(n)])`
-/

namespace A023639.P430603733161453862
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  12

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319367 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A023639.P430603733161453862

/-! ## A023639.P7643365406743187972

`A319367(eq[15, A219347(n)])`
-/

namespace A023639.P7643365406743187972
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  15

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319367 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A023639.P7643365406743187972

/-! ## A023639.P5384001174833350825

`A319367(eq[29, A066657(n)])`
-/

namespace A023639.P5384001174833350825
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  29

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319367 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A023639.P5384001174833350825

/-! ## A023639.P10458150806601964118

`A319367(A000217(n+12)+13)`
-/

namespace A023639.P10458150806601964118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319367 (A000217 (n + 12) + 13).toNat

end

end A023639.P10458150806601964118

/-! ## A023639.P11164981198978309200

`A319367(eq[14, A131818(n+1)])`
-/

namespace A023639.P11164981198978309200
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  14

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319367 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A023639.P11164981198978309200

/-!
# A023640: Number of vertex-transitive graphs of valency 5 with 2n nodes.

The programs for A023640, there is no canonical definition to state claims against.
-/

/-! ## A023640.P10907361176125086062

`A319367(A100039(n+1)-1)`
-/

namespace A023640.P10907361176125086062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319367 (A100039 (n + 1) - 1).toNat

end

end A023640.P10907361176125086062

/-! ## A023640.P715501884188552916

`A319367(A100038(n+2)+1)`
-/

namespace A023640.P715501884188552916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319367 (A100038 (n + 2) + 1).toNat

end

end A023640.P715501884188552916

/-! ## A023640.P8210789554409586275

`A319367(A130883(n+3)+5)`
-/

namespace A023640.P8210789554409586275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319367 (A130883 (n + 3) + 5).toNat

end

end A023640.P8210789554409586275

/-! ## A023640.P3334447347805426855

`A319367(A056237(n+1)+10)`
-/

namespace A023640.P3334447347805426855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319367 (A056237 (n + 1) + 10).toNat

end

end A023640.P3334447347805426855

/-! ## A023640.P7634646574350699218

`A319367(A167499(2*(n+2))+1)`
-/

namespace A023640.P7634646574350699218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319367 (A167499 (2 * (n + 2)) + 1).toNat

end

end A023640.P7634646574350699218

/-!
# A023641: Number of vertex-transitive graphs of valency 6 with n nodes.

The programs for A023641, there is no canonical definition to state claims against.
-/

/-! ## A023641.P9394712944141783890

`A319367(A374008(n+1))`
-/

namespace A023641.P9394712944141783890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319367 (A374008 (n + 1)).toNat

end

end A023641.P9394712944141783890

/-! ## A023641.P16558561144017856867

`A319367(A055999(n+4))`
-/

namespace A023641.P16558561144017856867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319367 (A055999 (n + 4)).toNat

end

end A023641.P16558561144017856867

/-! ## A023641.P15664814957518041545

`A319367(A167487(n+5))`
-/

namespace A023641.P15664814957518041545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319367 (A167487 (n + 5)).toNat

end

end A023641.P15664814957518041545

/-! ## A023641.P8125146180864547741

`A319367(A056119(n)+28)`
-/

namespace A023641.P8125146180864547741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319367 (A056119 n + 28).toNat

end

end A023641.P8125146180864547741

/-! ## A023641.P12000742746044744195

`A319367(eq[4, A219347(n)])`
-/

namespace A023641.P12000742746044744195
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319367 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A023641.P12000742746044744195

/-!
# A023642: Vertex-transitive graphs of valency 7 with 2n nodes.

The programs for A023642, there is no canonical definition to state claims against.
-/

/-! ## A023642.P2601279234139461272

`A319367(A100039(n+2)+1)`
-/

namespace A023642.P2601279234139461272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319367 (A100039 (n + 2) + 1).toNat

end

end A023642.P2601279234139461272

/-! ## A023642.P5546142165830395753

`A319367(A155212(2*(n+2))+1)`
-/

namespace A023642.P5546142165830395753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319367 (A155212 (2 * (n + 2)) + 1).toNat

end

end A023642.P5546142165830395753

/-! ## A023642.P233139750500211413

`A319367(A374008(2*(n+1))-1)`
-/

namespace A023642.P233139750500211413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319367 (A374008 (2 * (n + 1)) - 1).toNat

end

end A023642.P233139750500211413

/-!
# A023643: Number of vertex-transitive graphs of valency 8 with n nodes.

The programs for A023643, there is no canonical definition to state claims against.
-/

/-! ## A023643.P7790378521747858102

`A319367(A374010(n+1))`
-/

namespace A023643.P7790378521747858102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319367 (A374010 (n + 1)).toNat

end

end A023643.P7790378521747858102

/-! ## A023643.P14304658559889686186

`A319367(A155212(n+5))`
-/

namespace A023643.P14304658559889686186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319367 (A155212 (n + 5)).toNat

end

end A023643.P14304658559889686186

/-! ## A023643.P529182724431582998

`A319367(eq[6, A219347(n)])`
-/

namespace A023643.P529182724431582998
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319367 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A023643.P529182724431582998

/-! ## A023643.P17992275541481403258

`A319367(eq[8, A193592(n)])`
-/

namespace A023643.P17992275541481403258
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319367 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A023643.P17992275541481403258

/-! ## A023643.P11818162859034738494

`A319367(A052905(n+6)-3)`
-/

namespace A023643.P11818162859034738494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319367 (A052905 (n + 6) - 3).toNat

end

end A023643.P11818162859034738494

/-!
# A023644: Vertex-transitive graphs of valency 9 with 2n nodes.

The programs for A023644, there is no canonical definition to state claims against.
-/

/-! ## A023644.P8615444194813930858

`A319367(A374010(2*(n+1))-1)`
-/

namespace A023644.P8615444194813930858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319367 (A374010 (2 * (n + 1)) - 1).toNat

end

end A023644.P8615444194813930858

/-! ## A023644.P16650786827512882519

`A191612(A029862(n+1))`
-/

namespace A023644.P16650786827512882519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191612 (A029862 (n + 1)).toNat

end

end A023644.P16650786827512882519

/-!
# A023645: a(n) = tau(n)-1 if n is odd or tau(n)-2 if n is even.

The programs for A023645, the canonical program `A023645.P14181426108447540437` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A023645 has offset 1).

The definition of A023645 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A023645.P14181426108447540437

`A000005(n+1)-2+(n+1)%2`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A023645

/-- `A000005(n+1)-2+(n+1)%2` -/
def P14181426108447540437.Spec : Prop :=
  ∀ n, P14181426108447540437.a n = A023645 (n + 1)

theorem P14181426108447540437.correct : P14181426108447540437.Spec := by
  intro n
  simp only [A023645, Nat.add_sub_cancel]

end A023645

/-! ## A023645.P2980247136670509377

`A049992(n+1)-A014405(n+1)`
-/

namespace A023645.P2980247136670509377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049992 (n + 1) - A014405 (n + 1)

end

end A023645.P2980247136670509377

namespace A023645

/-- `A049992(n+1)-A014405(n+1)` -/
def P2980247136670509377.Spec : Prop :=
  ∀ n, P2980247136670509377.a n = A023645 (n + 1)

end A023645

/-! ## A023645.P14016569717942431899

`∑{d}[n+1, 2%#/2]`
-/

namespace A023645.P14016569717942431899
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), ((2 % d : ℕ) : ℚ) / 2

end

end A023645.P14016569717942431899

namespace A023645

/-- `∑{d}[n+1, 2%#/2]` -/
def P14016569717942431899.Spec : Prop :=
  ∀ n, P14016569717942431899.a n = (A023645 (n + 1) : ℚ)

end A023645

/-! ## A023645.P17827093049504393277

`∑{d}[n+1, 1-round(1/#)]`
-/

namespace A023645.P17827093049504393277
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (1 - SequenceMachineLib.roundAway (1 / (d : ℚ)))

end

end A023645.P17827093049504393277

namespace A023645

/-- `∑{d}[n+1, 1-round(1/#)]` -/
def P17827093049504393277.Spec : Prop :=
  ∀ n, P17827093049504393277.a n = A023645 (n + 1)

end A023645

/-! ## A023645.P12572018056662709929

`A076984(n+1)-1`
-/

namespace A023645.P12572018056662709929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076984 (n + 1) - 1

end

end A023645.P12572018056662709929

namespace A023645

/-- `A076984(n+1)-1` -/
def P12572018056662709929.Spec : Prop :=
  ∀ n, P12572018056662709929.a n = A023645 (n + 1)

theorem P12572018056662709929.correct : P12572018056662709929.Spec := by
  intro n
  simp only [A023645, Nat.add_sub_cancel, A023645.P12572018056662709929.a, A023645.P14181426108447540437.a, A000005, A000005.P16091521709108585461.a, A076984, A076984.P13104546406193990713.a, A032741, A032741.P3022166995030670566.f1, A032741.P3022166995030670566.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A023645

/-! ## A023645.P1946932881285130800

`A062558(n+1)-2`
-/

namespace A023645.P1946932881285130800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062558 (n + 1) - 2

end

end A023645.P1946932881285130800

namespace A023645

/-- `A062558(n+1)-2` -/
def P1946932881285130800.Spec : Prop :=
  ∀ n, P1946932881285130800.a n = A023645 (n + 1)

theorem P1946932881285130800.correct : P1946932881285130800.Spec := by
  intro n
  simp only [A023645, Nat.add_sub_cancel, A023645.P1946932881285130800.a, A023645.P14181426108447540437.a, A000005, A000005.P16091521709108585461.a, A062558, A062558.P7608322866353480072.a, A000035, A000035.P2023072528413494694.a, A032741, A032741.P3022166995030670566.f1, A032741.P3022166995030670566.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A023645

/-! ## A023645.P10741299024376264169

`A296966(n+1)/(n+1)`
-/

namespace A023645.P10741299024376264169
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A296966 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A023645.P10741299024376264169

namespace A023645

/-- `A296966(n+1)/(n+1)` -/
def P10741299024376264169.Spec : Prop :=
  ∀ n, P10741299024376264169.a n = (A023645 (n + 1) : ℚ)

end A023645

/-! ## A023645.P1657617936204616332

`A303873(n+1)%(n+2)`
-/

namespace A023645.P1657617936204616332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A303873 (n + 1)) (n + 2 : ℤ)

end

end A023645.P1657617936204616332

namespace A023645

/-- `A303873(n+1)%(n+2)` -/
def P1657617936204616332.Spec : Prop :=
  ∀ n, P1657617936204616332.a n = A023645 (n + 1)

end A023645

/-! ## A023645.P7080623521185283823

`A032741(n+1)-and(1, n)`
-/

namespace A023645.P7080623521185283823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 (n + 1) - (Nat.land 1 n : ℤ)

end

end A023645.P7080623521185283823

namespace A023645

/-- `A032741(n+1)-and(1, n)` -/
def P7080623521185283823.Spec : Prop :=
  ∀ n, P7080623521185283823.a n = A023645 (n + 1)

end A023645

/-! ## A023645.P12196345010744852740

`or(1, n)-A062968(n+1)`
-/

namespace A023645.P12196345010744852740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.lor 1 n : ℤ) - A062968 (n + 1)

end

end A023645.P12196345010744852740

namespace A023645

/-- `or(1, n)-A062968(n+1)` -/
def P12196345010744852740.Spec : Prop :=
  ∀ n, P12196345010744852740.a n = A023645 (n + 1)

end A023645

/-! ## A023645.P10032910891210879330

`log2(A100577(n+1))-and(1, n)`
-/

namespace A023645.P10032910891210879330
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A100577 (n + 1) : ℝ) - (Nat.land 1 n : ℝ)

end

end A023645.P10032910891210879330

namespace A023645

/-- `log2(A100577(n+1))-and(1, n)` -/
def P10032910891210879330.Spec : Prop :=
  ∀ n, P10032910891210879330.a n = (A023645 (n + 1) : ℝ)

end A023645

/-! ## A023645.P6128972015952376712

`A303972(n+1)/(n+1)^3`
-/

namespace A023645.P6128972015952376712
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A303972 (n + 1) : ℚ) / ((n + 1) ^ 3 : ℚ)

end

end A023645.P6128972015952376712

namespace A023645

/-- `A303972(n+1)/(n+1)^3` -/
def P6128972015952376712.Spec : Prop :=
  ∀ n, P6128972015952376712.a n = (A023645 (n + 1) : ℚ)

end A023645

/-! ## A023645.P3117783084612556887

`A000005(n+1)-(n%2+1)`
-/

namespace A023645.P3117783084612556887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) - ((n % 2 + 1 : ℕ) : ℤ)

end

end A023645.P3117783084612556887

namespace A023645

/-- `A000005(n+1)-(n%2+1)` -/
def P3117783084612556887.Spec : Prop :=
  ∀ n, P3117783084612556887.a n = A023645 (n + 1)

theorem P3117783084612556887.correct : P3117783084612556887.Spec := by
  intro n
  simp only [A023645, Nat.add_sub_cancel, A023645.P3117783084612556887.a, A023645.P14181426108447540437.a, SequenceMachineLib.memo_apply]
  try push_cast
  try omega

end A023645

/-! ## A023645.P8006442664691365898

`A023444(A062558(n+1))`
-/

namespace A023645.P8006442664691365898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023444 (A062558 (n + 1)).toNat

end

end A023645.P8006442664691365898

namespace A023645

/-- `A023444(A062558(n+1))` -/
def P8006442664691365898.Spec : Prop :=
  ∀ n, P8006442664691365898.a n = A023645 (n + 1)

end A023645

/-! ## A023645.P10212482687626824070

`A003056(A337363(n+1))`
-/

namespace A023645.P10212482687626824070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (A337363 (n + 1)).toNat

end

end A023645.P10212482687626824070

namespace A023645

/-- `A003056(A337363(n+1))` -/
def P10212482687626824070.Spec : Prop :=
  ∀ n, P10212482687626824070.a n = A023645 (n + 1)

end A023645

/-! ## A023645.P14273063464606540976

`A003056(A348665(n+1))`
-/

namespace A023645.P14273063464606540976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (A348665 (n + 1)).toNat

end

end A023645.P14273063464606540976

namespace A023645

/-- `A003056(A348665(n+1))` -/
def P14273063464606540976.Spec : Prop :=
  ∀ n, P14273063464606540976.a n = A023645 (n + 1)

end A023645

/-! ## A023645.P12366264837956383380

`A052146(A337362(n+1))`
-/

namespace A023645.P12366264837956383380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052146 (A337362 (n + 1)).toNat

end

end A023645.P12366264837956383380

namespace A023645

/-- `A052146(A337362(n+1))` -/
def P12366264837956383380.Spec : Prop :=
  ∀ n, P12366264837956383380.a n = A023645 (n + 1)

end A023645

/-! ## A023645.P9730795184533140554

`Δ[A006218(n)]-A000034(n)`
-/

namespace A023645.P9730795184533140554
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006218 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A000034 n

end

end A023645.P9730795184533140554

namespace A023645

/-- `Δ[A006218(n)]-A000034(n)` -/
def P9730795184533140554.Spec : Prop :=
  ∀ n, P9730795184533140554.a n = A023645 (n + 1)

end A023645

/-! ## A023645.P1153365469203751713

`A080513(A360999(n+1))-2`
-/

namespace A023645.P1153365469203751713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080513 (A360999 (n + 1)).toNat - 2

end

end A023645.P1153365469203751713

namespace A023645

/-- `A080513(A360999(n+1))-2` -/
def P1153365469203751713.Spec : Prop :=
  ∀ n, P1153365469203751713.a n = A023645 (n + 1)

end A023645

/-! ## A023645.P15925925493494178374

`A373925(n+1)+A000034(n)`
-/

namespace A023645.P15925925493494178374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373925 (n + 1) + A000034 n

end

end A023645.P15925925493494178374

namespace A023645

/-- `A373925(n+1)+A000034(n)` -/
def P15925925493494178374.Spec : Prop :=
  ∀ n, P15925925493494178374.a n = A023645 (n + 1)

end A023645

/-!
# A023646: Number of vertex-transitive graphs of valency 3 with 2n nodes.

The programs for A023646, there is no canonical definition to state claims against.
-/

/-! ## A023646.P949014115677932732

`A319367((n+1)*(2*n+7))`
-/

namespace A023646.P949014115677932732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319367 ((n + 1) * (2 * n + 7))

end

end A023646.P949014115677932732

/-!
# A023647: Number of vertex-transitive graphs of valency 4 with n nodes.

The programs for A023647, there is no canonical definition to state claims against.
-/

/-! ## A023647.P10516506652518033750

`A319367(∑[n+5]+6)`
-/

namespace A023647.P10516506652518033750
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319367 (∑ j ∈ Finset.range (n + 1), f1 j + 6)

end

end A023647.P10516506652518033750

/-! ## A023647.P12521203832840804013

`A060680(2*(n+3))*A319367(A167499(n+3))`
-/

namespace A023647.P12521203832840804013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060680 (2 * (n + 3)) * A319367 (A167499 (n + 3)).toNat

end

end A023647.P12521203832840804013

/-! ## A023647.P15820335541731619015

`A319367(A167499(n+3))+A000038(A131894(n))`
-/

namespace A023647.P15820335541731619015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319367 (A167499 (n + 3)).toNat + A000038 (A131894 n).toNat

end

end A023647.P15820335541731619015

/-! ## A023647.P8896538943020635139

`A319367(A046691(n+3))+A055641(A333159(n))`
-/

namespace A023647.P8896538943020635139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319367 (A046691 (n + 3)).toNat + A055641 (A333159 n).toNat

end

end A023647.P8896538943020635139

/-! ## A023647.P9069599685547440107

`A319367(A056000(n)+15)+A055641(A333159(n))`
-/

namespace A023647.P9069599685547440107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319367 (A056000 n + 15).toNat + A055641 (A333159 n).toNat

end

end A023647.P9069599685547440107

/-!
# A023648: Self-convolution of composite numbers.

The programs for A023648, there is no canonical definition to state claims against.
-/

/-! ## A023648.P2421544353981882005

`A359831(A008153(n))`
-/

namespace A023648.P2421544353981882005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359831 (A008153 n).toNat

end

end A023648.P2421544353981882005

/-! ## A023648.P8191251516662441968

`4*A155879(A014105(n))`
-/

namespace A023648.P8191251516662441968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A155879 (A014105 n).toNat

end

end A023648.P8191251516662441968

/-!
# A023649: Convolution of composite numbers and (F(2), F(3), F(4), ...).

The programs for A023649, the canonical program `A023649.P8276616955042322382` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A023649 has offset 1).

The definition of A023649 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 473 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A023649.P8276616955042322382

`A023609(n+1)-A002808(n+2)`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A023649

/-- `A023609(n+1)-A002808(n+2)` -/
def P8276616955042322382.Spec : Prop :=
  ∀ n, P8276616955042322382.a n = A023649 (n + 1)

theorem P8276616955042322382.correct : P8276616955042322382.Spec := by
  intro n
  simp only [A023649, Nat.add_sub_cancel]

end A023649

/-! ## A023649.P206191039753839122

`A023609(n+1)-A018252(n+3)`
-/

namespace A023649.P206191039753839122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023609 (n + 1) - A018252 (n + 3)

end

end A023649.P206191039753839122

namespace A023649

/-- `A023609(n+1)-A018252(n+3)` -/
def P206191039753839122.Spec : Prop :=
  ∀ n, P206191039753839122.a n = A023649 (n + 1)

end A023649

/-! ## A023649.P6557062723299098022

`(A023618(n+1)+A023609(n))/2`
-/

namespace A023649.P6557062723299098022
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A023618 (n + 1) + A023609 n : ℚ) / 2

end

end A023649.P6557062723299098022

namespace A023649

/-- `(A023618(n+1)+A023609(n))/2` -/
def P6557062723299098022.Spec : Prop :=
  ∀ n, P6557062723299098022.a n = (A023649 (n + 1) : ℚ)

end A023649

/-! ## A023649.P17634310177811443385

`(A023618(n+1)+A023609(n))*2^A008683(A020484(n))`
-/

namespace A023649.P17634310177811443385
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A023618 (n + 1) + A023609 n : ℚ) * (2 : ℚ) ^ (A008683 (A020484 n).toNat : ℤ)

end

end A023649.P17634310177811443385

namespace A023649

/-- `(A023618(n+1)+A023609(n))*2^A008683(A020484(n))` -/
def P17634310177811443385.Spec : Prop :=
  ∀ n, P17634310177811443385.a n = (A023649 (n + 1) : ℚ)

end A023649

/-! ## A023649.P10503939491119160730

`A023609(n)+A014682(A023618(n+1)-A023609(n))`
-/

namespace A023649.P10503939491119160730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023609 n + A014682 (A023618 (n + 1) - A023609 n).toNat

end

end A023649.P10503939491119160730

namespace A023649

/-- `A023609(n)+A014682(A023618(n+1)-A023609(n))` -/
def P10503939491119160730.Spec : Prop :=
  ∀ n, P10503939491119160730.a n = A023649 (n + 1)

end A023649

/-!
# A023650: Convolution of composite numbers and odd numbers.

The programs for A023650, the canonical program `A023650.P1233721125443470116` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A023650 has offset 1).

The definition of A023650 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A023650.P4083943245598121873

`∑[∑[∑[A161811(n+1)]]+n]`
-/

namespace A023650.P4083943245598121873
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161811 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A023650.P4083943245598121873

namespace A023650

/-- `∑[∑[∑[A161811(n+1)]]+n]` -/
def P4083943245598121873.Spec : Prop :=
  ∀ n, P4083943245598121873.a n = A023650 (n + 1)

end A023650

/-! ## A023650.P1233721125443470116

`A023539(n+1)+∑[A053767(n)]`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A023650

/-- `A023539(n+1)+∑[A053767(n)]` -/
def P1233721125443470116.Spec : Prop :=
  ∀ n, P1233721125443470116.a n = A023650 (n + 1)

theorem P1233721125443470116.correct : P1233721125443470116.Spec := by
  intro n
  simp only [A023650, Nat.add_sub_cancel]

end A023650

/-! ## A023650.P12541900989094985663

`∑[A053767(n+1)+A053767(n)]`
-/

namespace A023650.P12541900989094985663
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053767 (n + 1) + A053767 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A023650.P12541900989094985663

namespace A023650

/-- `∑[A053767(n+1)+A053767(n)]` -/
def P12541900989094985663.Spec : Prop :=
  ∀ n, P12541900989094985663.a n = A023650 (n + 1)

end A023650

/-! ## A023650.P166680008950672064

`A023539(n+1)+∑[∑[A073425(n)+n]+n]`
-/

namespace A023650.P166680008950672064
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073425 n + (n : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023539 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A023650.P166680008950672064

namespace A023650

/-- `A023539(n+1)+∑[∑[A073425(n)+n]+n]` -/
def P166680008950672064.Spec : Prop :=
  ∀ n, P166680008950672064.a n = A023650 (n + 1)

end A023650

/-! ## A023650.P16489659802378122649

`A023539(n+1)+∑[A161569(n+1)+A000096(n)]`
-/

namespace A023650.P16489659802378122649
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161569 (n + 1) + A000096 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023539 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A023650.P16489659802378122649

namespace A023650

/-- `A023539(n+1)+∑[A161569(n+1)+A000096(n)]` -/
def P16489659802378122649.Spec : Prop :=
  ∀ n, P16489659802378122649.a n = A023650 (n + 1)

end A023650

/-! ## A023650.P11390219794287811596

`A023539(n+1)+A023539(n+1)-A053767(n+1)`
-/

namespace A023650.P11390219794287811596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023539 (n + 1) + (A023539 (n + 1) - A053767 (n + 1))

end

end A023650.P11390219794287811596

namespace A023650

/-- `A023539(n+1)+A023539(n+1)-A053767(n+1)` -/
def P11390219794287811596.Spec : Prop :=
  ∀ n, P11390219794287811596.a n = A023650 (n + 1)

end A023650

/-! ## A023650.P10530464708929416099

`∑[∑[A166037(n+2)]-1]`
-/

namespace A023650.P10530464708929416099
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166037 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A023650.P10530464708929416099

namespace A023650

/-- `∑[∑[A166037(n+2)]-1]` -/
def P10530464708929416099.Spec : Prop :=
  ∀ n, P10530464708929416099.a n = A023650 (n + 1)

end A023650

/-!
# A023651: Numbers k such that (product of digits of k) * (sum of digits of k) = 2k.

The programs for A023651, there is no canonical definition to state claims against.
-/

/-! ## A023651.P7378911231825355631

`A259482(n+1)%A259561(3*n+2)`
-/

namespace A023651.P7378911231825355631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A259482 (n + 1)) (A259561 (3 * n + 2))

end

end A023651.P7378911231825355631

/-!
# A023652: Convolution of (F(2), F(3), F(4), ...) and odd numbers.

The programs for A023652, the canonical program `A023652.P9846762925165203096` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A023652 has offset 1).

The definition of A023652 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A023652.P9846762925165203096

`A000045(n+7)-4*(n+1)-8`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A023652

/-- `A000045(n+7)-4*(n+1)-8` -/
def P9846762925165203096.Spec : Prop :=
  ∀ n, P9846762925165203096.a n = A023652 (n + 1)

theorem P9846762925165203096.correct : P9846762925165203096.Spec := by
  intro n
  simp only [A023652, Nat.add_sub_cancel]

end A023652

/-! ## A023652.P10805556063962722606

`∑[ogf((1+2x+x^2)/(1-2x+x^3))]`
-/

namespace A023652.P10805556063962722606
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 2, 1] [1, -2, 0, 1] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A023652.P10805556063962722606

namespace A023652

/-- `∑[ogf((1+2x+x^2)/(1-2x+x^3))]` -/
def P10805556063962722606.Spec : Prop :=
  ∀ n, P10805556063962722606.a n = A023652 (n + 1)

end A023652

/-! ## A023652.P7987046246369847854

`ogf((1+2x+x^2)/(1-3x+2x^2+x^3-x^4))`
-/

namespace A023652.P7987046246369847854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 2, 1] [1, -3, 2, 1, -1] n

end

end A023652.P7987046246369847854

namespace A023652

/-- `ogf((1+2x+x^2)/(1-3x+2x^2+x^3-x^4))` -/
def P7987046246369847854.Spec : Prop :=
  ∀ n, P7987046246369847854.a n = A023652 (n + 1)

end A023652

/-! ## A023652.P7553589554488508555

`∑[floor(ϕ*(a(n-1)+2))]` with `a(0)=1`
-/

namespace A023652.P7553589554488508555
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  ⌊Real.goldenRatio * (f1 (n - 1) + 2 : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A023652.P7553589554488508555

namespace A023652

/-- `∑[floor(ϕ*(a(n-1)+2))]` -/
def P7553589554488508555.Spec : Prop :=
  ∀ n, P7553589554488508555.a n = A023652 (n + 1)

end A023652

/-! ## A023652.P13331020290279648735

`∑[∑[round(ϕ*a(n-1))]]` with `a(0)=1, a(1)=3`
-/

namespace A023652.P13331020290279648735
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1, 3] fun n f2 =>
  SequenceMachineLib.roundAway (Real.goldenRatio * (f2 (n - 1) : ℝ))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A023652.P13331020290279648735

namespace A023652

/-- `∑[∑[round(ϕ*a(n-1))]]` -/
def P13331020290279648735.Spec : Prop :=
  ∀ n, P13331020290279648735.a n = A023652 (n + 1)

end A023652

/-! ## A023652.P8216835272544465389

`∑[a(n-1)+a(n-2)+4]` with `a(0)=1, a(1)=4`
-/

namespace A023652.P8216835272544465389
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 4] fun n f1 =>
  f1 (n - 1) + (f1 (n - 2) + 4)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A023652.P8216835272544465389

namespace A023652

/-- `∑[a(n-1)+a(n-2)+4]` -/
def P8216835272544465389.Spec : Prop :=
  ∀ n, (P8216835272544465389.a n : ℤ) = A023652 (n + 1)

end A023652

/-! ## A023652.P13767862341445487297

`4*n+a(n-1)+a(n-2)` with `a(0)=1, a(1)=5`
-/

namespace A023652.P13767862341445487297
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 5] fun n a =>
  4 * n + (a (n - 1) + a (n - 2))

end

end A023652.P13767862341445487297

namespace A023652

/-- `4*n+a(n-1)+a(n-2)` -/
def P13767862341445487297.Spec : Prop :=
  ∀ n, (P13767862341445487297.a n : ℤ) = A023652 (n + 1)

end A023652

/-! ## A023652.P12507167294462696014

`∑[A020732(n)-3]`
-/

namespace A023652.P12507167294462696014
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020732 n - 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A023652.P12507167294462696014

namespace A023652

/-- `∑[A020732(n)-3]` -/
def P12507167294462696014.Spec : Prop :=
  ∀ n, P12507167294462696014.a n = A023652 (n + 1)

end A023652

/-! ## A023652.P6854475972893600968

`∑[A238374(2*n)]`
-/

namespace A023652.P6854475972893600968
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238374 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A023652.P6854475972893600968

namespace A023652

/-- `∑[A238374(2*n)]` -/
def P6854475972893600968.Spec : Prop :=
  ∀ n, P6854475972893600968.a n = A023652 (n + 1)

end A023652

/-! ## A023652.P1492191101263464599

`∑[A020712(n)-4]`
-/

namespace A023652.P1492191101263464599
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020712 n - 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A023652.P1492191101263464599

namespace A023652

/-- `∑[A020712(n)-4]` -/
def P1492191101263464599.Spec : Prop :=
  ∀ n, P1492191101263464599.a n = A023652 (n + 1)

end A023652

/-! ## A023652.P12008470438607517279

`∑[A157728(n+5)]`
-/

namespace A023652.P12008470438607517279
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157728 (n + 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A023652.P12008470438607517279

namespace A023652

/-- `∑[A157728(n+5)]` -/
def P12008470438607517279.Spec : Prop :=
  ∀ n, P12008470438607517279.a n = A023652 (n + 1)

end A023652

/-! ## A023652.P13025251678613127327

`∑[A020717(n)-5]`
-/

namespace A023652.P13025251678613127327
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020717 n - 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A023652.P13025251678613127327

namespace A023652

/-- `∑[A020717(n)-5]` -/
def P13025251678613127327.Spec : Prop :=
  ∀ n, P13025251678613127327.a n = A023652 (n + 1)

end A023652

/-! ## A023652.P9875847612112884652

`A033937(n)-(n+1)`
-/

namespace A023652.P9875847612112884652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033937 n - (n + 1 : ℤ)

end

end A023652.P9875847612112884652

namespace A023652

/-- `A033937(n)-(n+1)` -/
def P9875847612112884652.Spec : Prop :=
  ∀ n, P9875847612112884652.a n = A023652 (n + 1)

theorem P9875847612112884652.correct : P9875847612112884652.Spec := by
  intro n
  simp only [A023652, Nat.add_sub_cancel, A023652.P9875847612112884652.a, A023652.P9846762925165203096.a, A000045, A000045.P11838749114346432762.a, A033937, A033937.P16657048820302200629.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A023652

/-! ## A023652.P12402481768457798427

`∑[∑[A071679(n+1)]]`
-/

namespace A023652.P12402481768457798427
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071679 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A023652.P12402481768457798427

namespace A023652

/-- `∑[∑[A071679(n+1)]]` -/
def P12402481768457798427.Spec : Prop :=
  ∀ n, P12402481768457798427.a n = A023652 (n + 1)

end A023652

/-! ## A023652.P9811718167451978674

`∑[∑[A020695(n)]-1]`
-/

namespace A023652.P9811718167451978674
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020695 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A023652.P9811718167451978674

namespace A023652

/-- `∑[∑[A020695(n)]-1]` -/
def P9811718167451978674.Spec : Prop :=
  ∀ n, P9811718167451978674.a n = A023652 (n + 1)

end A023652

/-! ## A023652.P849104875005483497

`∑[A001911(n+2)-2]`
-/

namespace A023652.P849104875005483497
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001911 (n + 2) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A023652.P849104875005483497

namespace A023652

/-- `∑[A001911(n+2)-2]` -/
def P849104875005483497.Spec : Prop :=
  ∀ n, P849104875005483497.a n = A023652 (n + 1)

end A023652

/-! ## A023652.P5726850825067624251

`∑[A020701(n+1)-4]`
-/

namespace A023652.P5726850825067624251
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020701 (n + 1) - 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A023652.P5726850825067624251

namespace A023652

/-- `∑[A020701(n+1)-4]` -/
def P5726850825067624251.Spec : Prop :=
  ∀ n, P5726850825067624251.a n = A023652 (n + 1)

end A023652

/-! ## A023652.P10427506813621267685

`∑[A167616(n+5)+1]`
-/

namespace A023652.P10427506813621267685
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167616 (n + 5) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A023652.P10427506813621267685

namespace A023652

/-- `∑[A167616(n+5)+1]` -/
def P10427506813621267685.Spec : Prop :=
  ∀ n, P10427506813621267685.a n = A023652 (n + 1)

end A023652

/-! ## A023652.P13684802046617249413

`∑[A006327(n+5)-1]`
-/

namespace A023652.P13684802046617249413
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006327 (n + 5) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A023652.P13684802046617249413

namespace A023652

/-- `∑[A006327(n+5)-1]` -/
def P13684802046617249413.Spec : Prop :=
  ∀ n, P13684802046617249413.a n = A023652 (n + 1)

end A023652

/-! ## A023652.P13739055154601448713

`∑[A020706(n+1)-5]`
-/

namespace A023652.P13739055154601448713
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020706 (n + 1) - 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A023652.P13739055154601448713

namespace A023652

/-- `∑[A020706(n+1)-5]` -/
def P13739055154601448713.Spec : Prop :=
  ∀ n, P13739055154601448713.a n = A023652 (n + 1)

end A023652

/-!
# A023653: Convolution of (F(2), F(3), F(4), ...) and A000201.

The programs for A023653, the canonical program `A023653.P8982485491075407413` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A023653 has offset 1).

The definition of A023653 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 474 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A023653.P8982485491075407413

`∑[Δ[A023611(n)]-A014675(n)]`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A023653

/-- `∑[Δ[A023611(n)]-A014675(n)]` -/
def P8982485491075407413.Spec : Prop :=
  ∀ n, P8982485491075407413.a n = A023653 (n + 1)

theorem P8982485491075407413.correct : P8982485491075407413.Spec := by
  intro n
  simp only [A023653, Nat.add_sub_cancel]

end A023653

/-! ## A023653.P15040028984548736835

`A023611(n+1)-A000201(n+2)`
-/

namespace A023653.P15040028984548736835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023611 (n + 1) - A000201 (n + 2)

end

end A023653.P15040028984548736835

namespace A023653

/-- `A023611(n+1)-A000201(n+2)` -/
def P15040028984548736835.Spec : Prop :=
  ∀ n, P15040028984548736835.a n = A023653 (n + 1)

end A023653

/-! ## A023653.P9396826965826326329

`A023611(n+1)-A066096(n+2)`
-/

namespace A023653.P9396826965826326329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023611 (n + 1) - A066096 (n + 2)

end

end A023653.P9396826965826326329

namespace A023653

/-- `A023611(n+1)-A066096(n+2)` -/
def P9396826965826326329.Spec : Prop :=
  ∀ n, P9396826965826326329.a n = A023653 (n + 1)

end A023653

/-! ## A023653.P15109980179864609669

`A023611(n)+A023611(n)-A192757(n)`
-/

namespace A023653.P15109980179864609669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023611 n + (A023611 n - A192757 n)

end

end A023653.P15109980179864609669

namespace A023653

/-- `A023611(n)+A023611(n)-A192757(n)` -/
def P15109980179864609669.Spec : Prop :=
  ∀ n, P15109980179864609669.a n = A023653 (n + 1)

end A023653

/-! ## A023653.P14039358220444628116

`2*A023611(n)-A192757(n)`
-/

namespace A023653.P14039358220444628116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A023611 n - A192757 n

end

end A023653.P14039358220444628116

namespace A023653

/-- `2*A023611(n)-A192757(n)` -/
def P14039358220444628116.Spec : Prop :=
  ∀ n, P14039358220444628116.a n = A023653 (n + 1)

end A023653

/-! ## A023653.P8080837169038508633

`A023621(n+1)+A000201(n+2)-A192757(n+1)`
-/

namespace A023653.P8080837169038508633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023621 (n + 1) + (A000201 (n + 2) - A192757 (n + 1))

end

end A023653.P8080837169038508633

namespace A023653

/-- `A023621(n+1)+A000201(n+2)-A192757(n+1)` -/
def P8080837169038508633.Spec : Prop :=
  ∀ n, P8080837169038508633.a n = A023653 (n + 1)

end A023653

/-! ## A023653.P16454629814004184180

`(A023621(n+1)+A023611(n))/2`
-/

namespace A023653.P16454629814004184180
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A023621 (n + 1) + A023611 n : ℚ) / 2

end

end A023653.P16454629814004184180

namespace A023653

/-- `(A023621(n+1)+A023611(n))/2` -/
def P16454629814004184180.Spec : Prop :=
  ∀ n, P16454629814004184180.a n = (A023653 (n + 1) : ℚ)

theorem P16454629814004184180.correct : P16454629814004184180.Spec := by
  intro n
  simp only [A023653, Nat.add_sub_cancel, A023653.P16454629814004184180.a, A023653.P8982485491075407413.f2, A023653.P8982485491075407413.f1, A023653.P8982485491075407413.a, A014675, A014675.P17423219922035932121.a, A023611, A023611.P587451549185034991.a, A023621, A023621.P16071833400035228711.a, A000201, A000201.P2935798382643029248.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A023653

/-!
# A023654: Convolution of (F(2), F(3), F(4), ...) and A001950.

The programs for A023654, the canonical program `A023654.P2765289348436436072` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A023654 has offset 1).

The definition of A023654 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 473 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A023654.P2765289348436436072

`A023612(n+1)-A001950(n+2)`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A023654

/-- `A023612(n+1)-A001950(n+2)` -/
def P2765289348436436072.Spec : Prop :=
  ∀ n, P2765289348436436072.a n = A023654 (n + 1)

theorem P2765289348436436072.correct : P2765289348436436072.Spec := by
  intro n
  simp only [A023654, Nat.add_sub_cancel]

end A023654

/-! ## A023654.P2388143412053401396

`A023653(n+1)+∑[A001911(n+1)]`
-/

namespace A023654.P2388143412053401396
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001911 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023653 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A023654.P2388143412053401396

namespace A023654

/-- `A023653(n+1)+∑[A001911(n+1)]` -/
def P2388143412053401396.Spec : Prop :=
  ∀ n, P2388143412053401396.a n = A023654 (n + 1)

end A023654

/-! ## A023654.P11360317159179254701

`A023653(n+1)+∑[∑[A000045(n+2)]]`
-/

namespace A023654.P11360317159179254701
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023653 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A023654.P11360317159179254701

namespace A023654

/-- `A023653(n+1)+∑[∑[A000045(n+2)]]` -/
def P11360317159179254701.Spec : Prop :=
  ∀ n, P11360317159179254701.a n = A023654 (n + 1)

end A023654

/-! ## A023654.P17964388524108125436

`(A023622(n+1)+A023612(n))/2`
-/

namespace A023654.P17964388524108125436
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A023622 (n + 1) + A023612 n : ℚ) / 2

end

end A023654.P17964388524108125436

namespace A023654

/-- `(A023622(n+1)+A023612(n))/2` -/
def P17964388524108125436.Spec : Prop :=
  ∀ n, P17964388524108125436.a n = (A023654 (n + 1) : ℚ)

end A023654

/-! ## A023654.P7742744916273765078

`A160997(n+1)+A001924(n+1)`
-/

namespace A023654.P7742744916273765078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160997 (n + 1) + A001924 (n + 1)

end

end A023654.P7742744916273765078

namespace A023654

/-- `A160997(n+1)+A001924(n+1)` -/
def P7742744916273765078.Spec : Prop :=
  ∀ n, P7742744916273765078.a n = A023654 (n + 1)

end A023654

/-!
# A023655: Convolution of (F(2), F(3), F(4), ...) and A023533.

The programs for A023655, there is no canonical definition to state claims against.
-/

/-! ## A023655.P5501087676076741242

`A023613(n+1)-A023533(n+2)`
-/

namespace A023655.P5501087676076741242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023613 (n + 1) - A023533 (n + 2)

end

end A023655.P5501087676076741242

/-! ## A023655.P8103882693374911347

`A001911(n+1)-A023656(n+1)`
-/

namespace A023655.P8103882693374911347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001911 (n + 1) - A023656 (n + 1)

end

end A023655.P8103882693374911347

/-! ## A023655.P2052766429347028371

`(A023623(n+1)+A023613(n))/2`
-/

namespace A023655.P2052766429347028371
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A023623 (n + 1) + A023613 n : ℚ) / 2

end

end A023655.P2052766429347028371

/-! ## A023655.P17974133104635700272

`∑[record[A212804(n)]]-A023656(n+1)`
-/

namespace A023655.P17974133104635700272
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212804 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A023656 (n + 1)

end

end A023655.P17974133104635700272

/-! ## A023655.P7552339886924692701

`∑[record[A058071(n)]]-A023656(n+1)`
-/

namespace A023655.P7552339886924692701
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058071 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A023656 (n + 1)

end

end A023655.P7552339886924692701

/-!
# A023656: Convolution of (F(2), F(3), F(4), ...) and A014306.

The programs for A023656, there is no canonical definition to state claims against.
-/

/-! ## A023656.P15136986388232324349

`∑[ceil(A023614(n)/ϕ)]`
-/

namespace A023656.P15136986388232324349
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A023614 n : ℝ) / Real.goldenRatio⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A023656.P15136986388232324349

/-! ## A023656.P10014209409590040833

`A023614(n+1)-A014306(n+2)`
-/

namespace A023656.P10014209409590040833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023614 (n + 1) - A014306 (n + 2)

end

end A023656.P10014209409590040833

/-! ## A023656.P1477625473695198552

`A023614(A004273(n)-n)+A023614(n)`
-/

namespace A023656.P1477625473695198552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023614 (A004273 n - (n : ℤ)).toNat + A023614 n

end

end A023656.P1477625473695198552

/-! ## A023656.P2029402746624635905

`A023614(A004526(A004273(n)))+A023614(n)`
-/

namespace A023656.P2029402746624635905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023614 (A004526 (A004273 n).toNat).toNat + A023614 n

end

end A023656.P2029402746624635905

/-! ## A023656.P13233080293366297555

`A001911(n+1)-A023655(n+1)`
-/

namespace A023656.P13233080293366297555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001911 (n + 1) - A023655 (n + 1)

end

end A023656.P13233080293366297555

/-! ## A023656.P11924529712976122047

`(A023624(n+1)+A023614(n))/2`
-/

namespace A023656.P11924529712976122047
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A023624 (n + 1) + A023614 n : ℚ) / 2

end

end A023656.P11924529712976122047

/-! ## A023656.P11995134449945131276

`A023614(A259361(n²))+A023614(n)`
-/

namespace A023656.P11995134449945131276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023614 (A259361 (n ^ 2)).toNat + A023614 n

end

end A023656.P11995134449945131276

/-!
# A023657: Convolution of (F(2), F(3), F(4), ...) and primes.

The programs for A023657, the canonical program `A023657.P7268910839977161681` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A023657 has offset 1).

The definition of A023657 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 473 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A023657.P7268910839977161681

`A023615(n+1)-A000040(n+2)`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A023657

/-- `A023615(n+1)-A000040(n+2)` -/
def P7268910839977161681.Spec : Prop :=
  ∀ n, P7268910839977161681.a n = A023657 (n + 1)

theorem P7268910839977161681.correct : P7268910839977161681.Spec := by
  intro n
  simp only [A023657, Nat.add_sub_cancel]

end A023657

/-! ## A023657.P3575192475801409444

`A023615(n+1)-A008578(n+3)`
-/

namespace A023657.P3575192475801409444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023615 (n + 1) - A008578 (n + 3)

end

end A023657.P3575192475801409444

namespace A023657

/-- `A023615(n+1)-A008578(n+3)` -/
def P3575192475801409444.Spec : Prop :=
  ∀ n, P3575192475801409444.a n = A023657 (n + 1)

end A023657

/-! ## A023657.P12216760681528487299

`∑[Δ[A023615(n)]-A001223(n+1)]`
-/

namespace A023657.P12216760681528487299
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023615 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n - A001223 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A023657.P12216760681528487299

namespace A023657

/-- `∑[Δ[A023615(n)]-A001223(n+1)]` -/
def P12216760681528487299.Spec : Prop :=
  ∀ n, P12216760681528487299.a n = A023657 (n + 1)

end A023657

/-! ## A023657.P7558771898817950845

`A023615(n+1)-p?[A003961(n+1)]`
-/

namespace A023657.P7558771898817950845
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003961 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023615 (n + 1) - f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A023657.P7558771898817950845

namespace A023657

/-- `A023615(n+1)-p?[A003961(n+1)]` -/
def P7558771898817950845.Spec : Prop :=
  ∀ n, P7558771898817950845.a n = A023657 (n + 1)

end A023657

/-! ## A023657.P5268721007214236372

`A023615(n+1)-p?[A042965(n+1)]`
-/

namespace A023657.P5268721007214236372
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042965 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023615 (n + 1) - f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A023657.P5268721007214236372

namespace A023657

/-- `A023615(n+1)-p?[A042965(n+1)]` -/
def P5268721007214236372.Spec : Prop :=
  ∀ n, P5268721007214236372.a n = A023657 (n + 1)

end A023657

/-! ## A023657.P12455445939392234475

`A023615(n+1)-(A006093(n+2)+1)`
-/

namespace A023657.P12455445939392234475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023615 (n + 1) - (A006093 (n + 2) + 1)

end

end A023657.P12455445939392234475

namespace A023657

/-- `A023615(n+1)-(A006093(n+2)+1)` -/
def P12455445939392234475.Spec : Prop :=
  ∀ n, P12455445939392234475.a n = A023657 (n + 1)

theorem P12455445939392234475.correct : P12455445939392234475.Spec := by
  intro n
  simp only [A023657, Nat.add_sub_cancel, A023657.P12455445939392234475.a, A023657.P7268910839977161681.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A006093, A006093.P2906174024863549003.a, A023615, A023615.P9273506623120273616.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A023657

/-! ## A023657.P929017807200004667

`A023608(n)+A023615(n)-A000045(n+1)`
-/

namespace A023657.P929017807200004667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023608 n + (A023615 n - A000045 (n + 1))

end

end A023657.P929017807200004667

namespace A023657

/-- `A023608(n)+A023615(n)-A000045(n+1)` -/
def P929017807200004667.Spec : Prop :=
  ∀ n, P929017807200004667.a n = A023657 (n + 1)

end A023657

/-!
# A023658: Convolution of odd numbers and A000201.

The programs for A023658, the canonical program `A023658.P1215508874137078903` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A023658 has offset 1).

The definition of A023658 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A023658.P16695187603260186608

`∑[∑[floor(floor(ϕ*(n+1))+ϕ*n)]]`
-/

namespace A023658.P16695187603260186608
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(⌊Real.goldenRatio * (n + 1 : ℝ)⌋ : ℝ) + Real.goldenRatio * (n : ℝ)⌋

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A023658.P16695187603260186608

namespace A023658

/-- `∑[∑[floor(floor(ϕ*(n+1))+ϕ*n)]]` -/
def P16695187603260186608.Spec : Prop :=
  ∀ n, P16695187603260186608.a n = A023658 (n + 1)

end A023658

/-! ## A023658.P13094726309205171087

`root(∑[∑[A191402(n)]], 2)²`
-/

namespace A023658.P13094726309205171087
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191402 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℝ) ^ (1 / (2 : ℝ))) ^ 2

end

end A023658.P13094726309205171087

namespace A023658

/-- `root(∑[∑[A191402(n)]], 2)²` -/
def P13094726309205171087.Spec : Prop :=
  ∀ n, P13094726309205171087.a n = (A023658 (n + 1) : ℝ)

end A023658

/-! ## A023658.P13923831716252446615

`A023659(n+1)-∑[(n+1)²]`
-/

namespace A023658.P13923831716252446615
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023659 (n + 1) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A023658.P13923831716252446615

namespace A023658

/-- `A023659(n+1)-∑[(n+1)²]` -/
def P13923831716252446615.Spec : Prop :=
  ∀ n, P13923831716252446615.a n = A023658 (n + 1)

theorem P13923831716252446615.correct : P13923831716252446615.Spec := by
  intro n
  simp only [A023658, Nat.add_sub_cancel, A023658.P13923831716252446615.f1, A023658.P13923831716252446615.a, A023658.P1215508874137078903.f2, A023658.P1215508874137078903.f1, A023658.P1215508874137078903.a, A003622, A003622.P18369330713868503528.a, A023659, A023659.P17041428698161868738.f1, A023659.P17041428698161868738.a, A060143, A060143.P4349736368293734599.a, A000201, A000201.P2935798382643029248.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A023658

/-! ## A023658.P16923731044545389340

`A023541(n+1)+∑[∑[floor(ϕ*n)]]`
-/

namespace A023658.P16923731044545389340
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.goldenRatio * (n : ℝ)⌋

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023541 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A023658.P16923731044545389340

namespace A023658

/-- `A023541(n+1)+∑[∑[floor(ϕ*n)]]` -/
def P16923731044545389340.Spec : Prop :=
  ∀ n, P16923731044545389340.a n = A023658 (n + 1)

end A023658

/-! ## A023658.P13287516345457042603

`∑[∑[A191402(n)]]+A008683(4*(n+1))`
-/

namespace A023658.P13287516345457042603
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191402 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + A008683 (4 * (n + 1))

end

end A023658.P13287516345457042603

namespace A023658

/-- `∑[∑[A191402(n)]]+A008683(4*(n+1))` -/
def P13287516345457042603.Spec : Prop :=
  ∀ n, P13287516345457042603.a n = A023658 (n + 1)

end A023658

/-! ## A023658.P1215508874137078903

`∑[∑[A060143(n)+A003622(n+1)]]+(2*n)%2`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A023658

/-- `∑[∑[A060143(n)+A003622(n+1)]]+(2*n)%2` -/
def P1215508874137078903.Spec : Prop :=
  ∀ n, P1215508874137078903.a n = A023658 (n + 1)

theorem P1215508874137078903.correct : P1215508874137078903.Spec := by
  intro n
  simp only [A023658, Nat.add_sub_cancel]

end A023658

/-! ## A023658.P12628828786292534597

`∑[A088207(n+1)+A088207(n)]-∑[(n+1)²]`
-/

namespace A023658.P12628828786292534597
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088207 (n + 1) + A088207 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)

end

end A023658.P12628828786292534597

namespace A023658

/-- `∑[A088207(n+1)+A088207(n)]-∑[(n+1)²]` -/
def P12628828786292534597.Spec : Prop :=
  ∀ n, P12628828786292534597.a n = A023658 (n + 1)

end A023658

/-! ## A023658.P436572459601231667

`∑[∑[A191402(n)]]^A014963(4*n+2)`
-/

namespace A023658.P436572459601231667
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191402 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) ^ (A014963 (4 * n + 2) : ℤ)

end

end A023658.P436572459601231667

namespace A023658

/-- `∑[∑[A191402(n)]]^A014963(4*n+2)` -/
def P436572459601231667.Spec : Prop :=
  ∀ n, P436572459601231667.a n = (A023658 (n + 1) : ℚ)

end A023658

/-! ## A023658.P10874900093600908202

`A014963(32*n+14)*∑[∑[A191402(n)]]`
-/

namespace A023658.P10874900093600908202
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191402 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (32 * n + 14) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A023658.P10874900093600908202

namespace A023658

/-- `A014963(32*n+14)*∑[∑[A191402(n)]]` -/
def P10874900093600908202.Spec : Prop :=
  ∀ n, P10874900093600908202.a n = A023658 (n + 1)

end A023658

/-!
# A023659: Convolution of odd numbers and A001950.

The programs for A023659, the canonical program `A023659.P17041428698161868738` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A023659 has offset 1).

The definition of A023659 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A023659.P17041428698161868738

`A023658(n+1)+∑[(n+1)²]`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A023659

/-- `A023658(n+1)+∑[(n+1)²]` -/
def P17041428698161868738.Spec : Prop :=
  ∀ n, P17041428698161868738.a n = A023659 (n + 1)

theorem P17041428698161868738.correct : P17041428698161868738.Spec := by
  intro n
  simp only [A023659, Nat.add_sub_cancel]

end A023659

/-! ## A023659.P11347250502802392104

`∑[∑[A191402(n)+A005408(n)]]`
-/

namespace A023659.P11347250502802392104
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191402 n + A005408 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A023659.P11347250502802392104

namespace A023659

/-- `∑[∑[A191402(n)+A005408(n)]]` -/
def P11347250502802392104.Spec : Prop :=
  ∀ n, P11347250502802392104.a n = A023659 (n + 1)

end A023659

/-! ## A023659.P6140520755375055976

`A023542(n+1)+∑[A088207(n)]`
-/

namespace A023659.P6140520755375055976
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088207 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023542 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A023659.P6140520755375055976

namespace A023659

/-- `A023542(n+1)+∑[A088207(n)]` -/
def P6140520755375055976.Spec : Prop :=
  ∀ n, P6140520755375055976.a n = A023659 (n + 1)

end A023659

/-! ## A023659.P3694904794715024463

`∑[A088207(n)+∑[A001950(n+1)]]`
-/

namespace A023659.P3694904794715024463
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001950 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088207 n + ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A023659.P3694904794715024463

namespace A023659

/-- `∑[A088207(n)+∑[A001950(n+1)]]` -/
def P3694904794715024463.Spec : Prop :=
  ∀ n, P3694904794715024463.a n = A023659 (n + 1)

end A023659

/-! ## A023659.P1584808490623319870

`∑[∑[A075318(n+1)-A001468(n)]]`
-/

namespace A023659.P1584808490623319870
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075318 (n + 1) - A001468 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A023659.P1584808490623319870

namespace A023659

/-- `∑[∑[A075318(n+1)-A001468(n)]]` -/
def P1584808490623319870.Spec : Prop :=
  ∀ n, P1584808490623319870.a n = A023659 (n + 1)

end A023659

/-! ## A023659.P9411685951764925028

`∑[A088207(n+1)+A088207(n)]`
-/

namespace A023659.P9411685951764925028
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088207 (n + 1) + A088207 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A023659.P9411685951764925028

namespace A023659

/-- `∑[A088207(n+1)+A088207(n)]` -/
def P9411685951764925028.Spec : Prop :=
  ∀ n, P9411685951764925028.a n = A023659 (n + 1)

end A023659

/-! ## A023659.P4555904859002305569

`∑[∑[A004956(A191402(n))]]`
-/

namespace A023659.P4555904859002305569
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004956 (A191402 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A023659.P4555904859002305569

namespace A023659

/-- `∑[∑[A004956(A191402(n))]]` -/
def P4555904859002305569.Spec : Prop :=
  ∀ n, P4555904859002305569.a n = A023659 (n + 1)

end A023659

/-!
# A023660: Convolution of odd numbers and A023533.

The programs for A023660, the canonical program `A023660.P2501000984400973498` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A023660 has offset 1).

The definition of A023660 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A023660.P2501000984400973498

`∑[∑[Δ[A023533(n)]²]+1]`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A023660

/-- `∑[∑[Δ[A023533(n)]²]+1]` -/
def P2501000984400973498.Spec : Prop :=
  ∀ n, P2501000984400973498.a n = A023660 (n + 1)

theorem P2501000984400973498.correct : P2501000984400973498.Spec := by
  intro n
  simp only [A023660, Nat.add_sub_cancel]

end A023660

/-! ## A023660.P13071977232969863965

`(n+1)²-A023661(n+1)`
-/

namespace A023660.P13071977232969863965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℤ) - A023661 (n + 1)

end

end A023660.P13071977232969863965

namespace A023660

/-- `(n+1)²-A023661(n+1)` -/
def P13071977232969863965.Spec : Prop :=
  ∀ n, P13071977232969863965.a n = A023660 (n + 1)

theorem P13071977232969863965.correct : P13071977232969863965.Spec := by
  intro n
  simp only [A023660, Nat.add_sub_cancel, A023660.P13071977232969863965.a, A023660.P2501000984400973498.f3, A023660.P2501000984400973498.f2, A023660.P2501000984400973498.f1, A023660.P2501000984400973498.a, A023533, A023533.P16553737014273247425.a, A023661, A023661.P11872832273071429119.a, A014306, A014306.P10618753585715922645.f2, A014306.P10618753585715922645.f1, A014306.P10618753585715922645.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A023660

/-! ## A023660.P13754397645344942935

`∑[∑[A023533(A014306(n)+n)]]`
-/

namespace A023660.P13754397645344942935
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023533 (A014306 n + (n : ℤ)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A023660.P13754397645344942935

namespace A023660

/-- `∑[∑[A023533(A014306(n)+n)]]` -/
def P13754397645344942935.Spec : Prop :=
  ∀ n, P13754397645344942935.a n = A023660 (n + 1)

end A023660

/-! ## A023660.P3633721977435485868

`A023543(n+1)+∑[A056556(n)]`
-/

namespace A023660.P3633721977435485868
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056556 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023543 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A023660.P3633721977435485868

namespace A023660

/-- `A023543(n+1)+∑[A056556(n)]` -/
def P3633721977435485868.Spec : Prop :=
  ∀ n, P3633721977435485868.a n = A023660 (n + 1)

end A023660

/-! ## A023660.P7369191927002674019

`∑[∑[A023533(A023533(n+1)+n)]]`
-/

namespace A023660.P7369191927002674019
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023533 (A023533 (n + 1) + (n : ℤ)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A023660.P7369191927002674019

namespace A023660

/-- `∑[∑[A023533(A023533(n+1)+n)]]` -/
def P7369191927002674019.Spec : Prop :=
  ∀ n, P7369191927002674019.a n = A023660 (n + 1)

end A023660

/-! ## A023660.P408256074735632020

`∑[∑[1-A014306(A014306(n)+n)]]`
-/

namespace A023660.P408256074735632020
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A014306 (A014306 n + (n : ℤ)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A023660.P408256074735632020

namespace A023660

/-- `∑[∑[1-A014306(A014306(n)+n)]]` -/
def P408256074735632020.Spec : Prop :=
  ∀ n, P408256074735632020.a n = A023660 (n + 1)

end A023660

/-! ## A023660.P10800907808710667529

`∑[∑[Δ[char[∑[∑[n+1]]]]²]]`
-/

namespace A023660.P10800907808710667529
noncomputable section

def f6 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f6 j

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f5 j

open Classical in
def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f4 j = n then 1 else 0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((f3 (n + 1) : ℤ) - (f3 n : ℤ)) ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A023660.P10800907808710667529

namespace A023660

/-- `∑[∑[Δ[char[∑[∑[n+1]]]]²]]` -/
def P10800907808710667529.Spec : Prop :=
  ∀ n, P10800907808710667529.a n = A023660 (n + 1)

end A023660

/-! ## A023660.P7552602643369094887

`A023543(n+1)+A023543(n+1)-A056556(n+1)`
-/

namespace A023660.P7552602643369094887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023543 (n + 1) + (A023543 (n + 1) - A056556 (n + 1))

end

end A023660.P7552602643369094887

namespace A023660

/-- `A023543(n+1)+A023543(n+1)-A056556(n+1)` -/
def P7552602643369094887.Spec : Prop :=
  ∀ n, P7552602643369094887.a n = A023660 (n + 1)

end A023660

/-!
# A023661: Convolution of odd numbers and A014306.

The programs for A023661, the canonical program `A023661.P11872832273071429119` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A023661 has offset 1).

The definition of A023661 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A023661.P11857063387256403062

`∑[comp[2*comp[A005581(n)]]]`
-/

namespace A023661.P11857063387256403062
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005581 n

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ (x : ℤ)) n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A023661.P11857063387256403062

namespace A023661

/-- `∑[comp[2*comp[A005581(n)]]]` -/
def P11857063387256403062.Spec : Prop :=
  ∀ n, (P11857063387256403062.a n : ℤ) = A023661 (n + 1)

end A023661

/-! ## A023661.P11872832273071429119

`(n+1)²-A023660(n+1)`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A023661

/-- `(n+1)²-A023660(n+1)` -/
def P11872832273071429119.Spec : Prop :=
  ∀ n, P11872832273071429119.a n = A023661 (n + 1)

theorem P11872832273071429119.correct : P11872832273071429119.Spec := by
  intro n
  simp only [A023661, Nat.add_sub_cancel]

end A023661

/-! ## A023661.P11013092966831933498

`A023544(n+1)+∑[∑[A014306(n)]]`
-/

namespace A023661.P11013092966831933498
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014306 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023544 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A023661.P11013092966831933498

namespace A023661

/-- `A023544(n+1)+∑[∑[A014306(n)]]` -/
def P11013092966831933498.Spec : Prop :=
  ∀ n, P11013092966831933498.a n = A023661 (n + 1)

end A023661

/-! ## A023661.P15131610825562611287

`∑[2*n+1-∑[A023533(A014306(n)+n)]]`
-/

namespace A023661.P15131610825562611287
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023533 (A014306 n + (n : ℤ)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n + 1 : ℤ) - ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A023661.P15131610825562611287

namespace A023661

/-- `∑[2*n+1-∑[A023533(A014306(n)+n)]]` -/
def P15131610825562611287.Spec : Prop :=
  ∀ n, P15131610825562611287.a n = A023661 (n + 1)

end A023661

/-! ## A023661.P5760043153175438564

`A023544(n+1)+A023544(A028310(n))`
-/

namespace A023661.P5760043153175438564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023544 (n + 1) + A023544 (A028310 n).toNat

end

end A023661.P5760043153175438564

namespace A023661

/-- `A023544(n+1)+A023544(A028310(n))` -/
def P5760043153175438564.Spec : Prop :=
  ∀ n, P5760043153175438564.a n = A023661 (n + 1)

end A023661

/-!
# A023662: Convolution of odd numbers and primes.

The programs for A023662, the canonical program `A023662.P10648617195950893557` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A023662 has offset 1).

The definition of A023662 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A062020, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A023662.P10648617195950893557

`A167214(n+1)-A062020(n+1)`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A023662

/-- `A167214(n+1)-A062020(n+1)` -/
def P10648617195950893557.Spec : Prop :=
  ∀ n, P10648617195950893557.a n = A023662 (n + 1)

theorem P10648617195950893557.correct : P10648617195950893557.Spec := by
  intro n
  simp only [A023662, Nat.add_sub_cancel]

end A023662

/-! ## A023662.P16554401035612205271

`2*A167214(n+1)-A316322(n+1)`
-/

namespace A023662.P16554401035612205271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A167214 (n + 1) - A316322 (n + 1)

end

end A023662.P16554401035612205271

namespace A023662

/-- `2*A167214(n+1)-A316322(n+1)` -/
def P16554401035612205271.Spec : Prop :=
  ∀ n, P16554401035612205271.a n = A023662 (n + 1)

theorem P16554401035612205271.correct : P16554401035612205271.Spec := by
  intro n
  simp only [A023662, Nat.add_sub_cancel, A023662.P16554401035612205271.a, A023662.P10648617195950893557.a, A062020, A062020.P11042138404562219295.a, A167214, A167214.P9697442408688225616.a, A316322, A316322.P16038970231065936341.a, A007504, A007504.P14310834286015847203.a, A014285, A014285.P2422315619309490149.f1, A014285.P2422315619309490149.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A014284, A014284.P18183547548072881472.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A023662

/-! ## A023662.P10456251422694364920

`∑[A061802(n)]`
-/

namespace A023662.P10456251422694364920
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061802 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A023662.P10456251422694364920

namespace A023662

/-- `∑[A061802(n)]` -/
def P10456251422694364920.Spec : Prop :=
  ∀ n, P10456251422694364920.a n = A023662 (n + 1)

end A023662

/-! ## A023662.P15976460006039089235

`∑[∑[A011974(n+1)]]`
-/

namespace A023662.P15976460006039089235
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011974 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A023662.P15976460006039089235

namespace A023662

/-- `∑[∑[A011974(n+1)]]` -/
def P15976460006039089235.Spec : Prop :=
  ∀ n, P15976460006039089235.a n = A023662 (n + 1)

end A023662

/-! ## A023662.P17140449480249460907

`A061802(n)+a(A023443(n))` with `a(0)=2`
-/

namespace A023662.P17140449480249460907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A061802 n + a (A023443 n).toNat

end

end A023662.P17140449480249460907

namespace A023662

/-- `A061802(n)+a(A023443(n))` -/
def P17140449480249460907.Spec : Prop :=
  ∀ n, P17140449480249460907.a n = A023662 (n + 1)

end A023662

/-! ## A023662.P17101048124289175689

`∑[A007504(n+1)+A007504(n)]`
-/

namespace A023662.P17101048124289175689
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 (n + 1) + A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A023662.P17101048124289175689

namespace A023662

/-- `∑[A007504(n+1)+A007504(n)]` -/
def P17101048124289175689.Spec : Prop :=
  ∀ n, P17101048124289175689.a n = A023662 (n + 1)

end A023662

/-! ## A023662.P13607284422396231981

`∑[A237589(n+1)+A014284(n+1)]`
-/

namespace A023662.P13607284422396231981
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237589 (n + 1) + A014284 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A023662.P13607284422396231981

namespace A023662

/-- `∑[A237589(n+1)+A014284(n+1)]` -/
def P13607284422396231981.Spec : Prop :=
  ∀ n, P13607284422396231981.a n = A023662 (n + 1)

end A023662

/-! ## A023662.P11917055533776610080

`A316322(n+1)-2*A062020(n+1)`
-/

namespace A023662.P11917055533776610080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316322 (n + 1) - 2 * A062020 (n + 1)

end

end A023662.P11917055533776610080

namespace A023662

/-- `A316322(n+1)-2*A062020(n+1)` -/
def P11917055533776610080.Spec : Prop :=
  ∀ n, P11917055533776610080.a n = A023662 (n + 1)

theorem P11917055533776610080.correct : P11917055533776610080.Spec := by
  intro n
  simp only [A023662, Nat.add_sub_cancel, A023662.P11917055533776610080.a, A023662.P10648617195950893557.a, A062020, A062020.P11042138404562219295.a, A167214, A167214.P9697442408688225616.a, A316322, A316322.P16038970231065936341.a, A007504, A007504.P14310834286015847203.a, A014285, A014285.P2422315619309490149.f1, A014285.P2422315619309490149.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A014284, A014284.P18183547548072881472.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A023662

/-! ## A023662.P6361733589622693727

`∑[∑[A008578(n+1)+A006005(n+1)]]`
-/

namespace A023662.P6361733589622693727
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1) + A006005 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A023662.P6361733589622693727

namespace A023662

/-- `∑[∑[A008578(n+1)+A006005(n+1)]]` -/
def P6361733589622693727.Spec : Prop :=
  ∀ n, P6361733589622693727.a n = A023662 (n + 1)

end A023662

/-! ## A023662.P7873034837664442961

`∑[A040976(n+1)+∑[A001747(n+1)]]`
-/

namespace A023662.P7873034837664442961
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001747 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040976 (n + 1) + ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A023662.P7873034837664442961

namespace A023662

/-- `∑[A040976(n+1)+∑[A001747(n+1)]]` -/
def P7873034837664442961.Spec : Prop :=
  ∀ n, P7873034837664442961.a n = A023662 (n + 1)

end A023662

/-! ## A023662.P11945668941850136802

`∑[∑[A182986(n+1)+A000040(n+1)]]`
-/

namespace A023662.P11945668941850136802
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182986 (n + 1) + A000040 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A023662.P11945668941850136802

namespace A023662

/-- `∑[∑[A182986(n+1)+A000040(n+1)]]` -/
def P11945668941850136802.Spec : Prop :=
  ∀ n, P11945668941850136802.a n = A023662 (n + 1)

end A023662

/-! ## A023662.P532483239752740051

`∑[∑[A028815(n)+A006093(n+1)]-1]`
-/

namespace A023662.P532483239752740051
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028815 n + A006093 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A023662.P532483239752740051

namespace A023662

/-- `∑[∑[A028815(n)+A006093(n+1)]-1]` -/
def P532483239752740051.Spec : Prop :=
  ∀ n, P532483239752740051.a n = A023662 (n + 1)

end A023662

/-! ## A023662.P6523778886334996019

`∑[∑[A100484(n+1)]-A000040(n+1)]`
-/

namespace A023662.P6523778886334996019
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100484 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - A000040 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A023662.P6523778886334996019

namespace A023662

/-- `∑[∑[A100484(n+1)]-A000040(n+1)]` -/
def P6523778886334996019.Spec : Prop :=
  ∀ n, P6523778886334996019.a n = A023662 (n + 1)

end A023662

/-! ## A023662.P17218130176066055293

`2*A014148(n+1)-∑[A000040(n+1)]`
-/

namespace A023662.P17218130176066055293
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A014148 (n + 1) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A023662.P17218130176066055293

namespace A023662

/-- `2*A014148(n+1)-∑[A000040(n+1)]` -/
def P17218130176066055293.Spec : Prop :=
  ∀ n, P17218130176066055293.a n = A023662 (n + 1)

end A023662

/-! ## A023662.P12619088799506719468

`∑[A000040(n+1)+A000040(n)+a(n-1)]` with `a(0)=2`
-/

namespace A023662.P12619088799506719468
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [2] fun n f1 =>
  A000040 (n + 1) + (A000040 n + f1 (n - 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A023662.P12619088799506719468

namespace A023662

/-- `∑[A000040(n+1)+A000040(n)+a(n-1)]` -/
def P12619088799506719468.Spec : Prop :=
  ∀ n, P12619088799506719468.a n = A023662 (n + 1)

end A023662

/-! ## A023662.P1292417469949137762

`A014148(n+1)+A014148(n+1)-A007504(n+1)`
-/

namespace A023662.P1292417469949137762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014148 (n + 1) + (A014148 (n + 1) - A007504 (n + 1))

end

end A023662.P1292417469949137762

namespace A023662

/-- `A014148(n+1)+A014148(n+1)-A007504(n+1)` -/
def P1292417469949137762.Spec : Prop :=
  ∀ n, P1292417469949137762.a n = A023662 (n + 1)

end A023662

/-! ## A023662.P63107163171846858

`∑[∑[A164653(n+2)]-1]`
-/

namespace A023662.P63107163171846858
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164653 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A023662.P63107163171846858

namespace A023662

/-- `∑[∑[A164653(n+2)]-1]` -/
def P63107163171846858.Spec : Prop :=
  ∀ n, P63107163171846858.a n = A023662 (n + 1)

end A023662

/-! ## A023662.P14312358098871781814

`∑[∑[A076273(n+1)]+n]`
-/

namespace A023662.P14312358098871781814
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076273 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A023662.P14312358098871781814

namespace A023662

/-- `∑[∑[A076273(n+1)]+n]` -/
def P14312358098871781814.Spec : Prop :=
  ∀ n, P14312358098871781814.a n = A023662 (n + 1)

end A023662

/-! ## A023662.P14761549120244323339

`∑[∑[A001747(n+2)]-A000040(n+1)]`
-/

namespace A023662.P14761549120244323339
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001747 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - A000040 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A023662.P14761549120244323339

namespace A023662

/-- `∑[∑[A001747(n+2)]-A000040(n+1)]` -/
def P14761549120244323339.Spec : Prop :=
  ∀ n, P14761549120244323339.a n = A023662 (n + 1)

end A023662

/-! ## A023662.P15196508967870079456

`A014148(n+1)+A014148(n+2)-A061802(n+1)`
-/

namespace A023662.P15196508967870079456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014148 (n + 1) + (A014148 (n + 2) - A061802 (n + 1))

end

end A023662.P15196508967870079456

namespace A023662

/-- `A014148(n+1)+A014148(n+2)-A061802(n+1)` -/
def P15196508967870079456.Spec : Prop :=
  ∀ n, P15196508967870079456.a n = A023662 (n + 1)

end A023662

/-!
# A023663: Convolution of A000201 with itself.

The programs for A023663, there is no canonical definition to state claims against.
-/

/-! ## A023663.P15594164570469714544

`A023664(n+1)-A023541(n+1)`
-/

namespace A023663.P15594164570469714544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023664 (n + 1) - A023541 (n + 1)

end

end A023663.P15594164570469714544

/-! ## A023663.P16232160847433648268

`A023664(n+1)-∑[∑[A000201(n+1)]]`
-/

namespace A023663.P16232160847433648268
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000201 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023664 (n + 1) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A023663.P16232160847433648268

/-! ## A023663.P2651903580871226608

`A023667(n+1)-∑[∑[A003623(n+1)]]`
-/

namespace A023663.P2651903580871226608
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003623 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023667 (n + 1) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A023663.P2651903580871226608

/-! ## A023663.P8626385942407924965

`A023667(n+1)-(A023542(n+1)+A023541(n+1))`
-/

namespace A023663.P8626385942407924965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023667 (n + 1) - (A023542 (n + 1) + A023541 (n + 1))

end

end A023663.P8626385942407924965

/-!
# A023664: Convolution of the lower and upper Wythoff sequences (A000201 and A001950).

The programs for A023664, there is no canonical definition to state claims against.
-/

/-! ## A023664.P14716003076233022365

`A023663(n+1)+A023541(n+1)`
-/

namespace A023664.P14716003076233022365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023663 (n + 1) + A023541 (n + 1)

end

end A023664.P14716003076233022365

/-! ## A023664.P7463677039299300299

`A023667(n+1)-A023542(n+1)`
-/

namespace A023664.P7463677039299300299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023667 (n + 1) - A023542 (n + 1)

end

end A023664.P7463677039299300299

/-! ## A023664.P2955789539209325352

`A023663(n+1)+∑[∑[A000201(n+1)]]`
-/

namespace A023664.P2955789539209325352
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000201 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023663 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A023664.P2955789539209325352

/-! ## A023664.P10185752515783328944

`A023667(n+1)-∑[∑[A001950(n+1)]]`
-/

namespace A023664.P10185752515783328944
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001950 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023667 (n + 1) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A023664.P10185752515783328944

/-! ## A023664.P170404619580880114

`A023663(n+1)+∑[∑[A003623(n+1)]]-A023542(n+1)`
-/

namespace A023664.P170404619580880114
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003623 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023663 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j - A023542 (n + 1)

end

end A023664.P170404619580880114

/-!
# A023665: Convolution of A000201 and A023533.

The programs for A023665, there is no canonical definition to state claims against.
-/

/-! ## A023665.P11469374702805953799

`A023668(n+1)-A023543(n+1)`
-/

namespace A023665.P11469374702805953799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023668 (n + 1) - A023543 (n + 1)

end

end A023665.P11469374702805953799

/-! ## A023665.P708732399038756428

`∑[∑[A001468(n)]]-A023666(n+1)`
-/

namespace A023665.P708732399038756428
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001468 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A023666 (n + 1)

end

end A023665.P708732399038756428

/-! ## A023665.P14855906343524533063

`∑[A000201(n+1)]-A023666(n+1)`
-/

namespace A023665.P14855906343524533063
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000201 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A023666 (n + 1)

end

end A023665.P14855906343524533063

/-! ## A023665.P14517622864688414642

`A023668(n+1)-∑[∑[A023533(n+1)]]`
-/

namespace A023665.P14517622864688414642
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023533 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023668 (n + 1) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A023665.P14517622864688414642

/-! ## A023665.P1155702395614708407

`∑[A003622(n+1)-n]-A023666(n+1)`
-/

namespace A023665.P1155702395614708407
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003622 (n + 1) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A023666 (n + 1)

end

end A023665.P1155702395614708407

/-! ## A023665.P14310596895287835808

`∑[A005206(A003622(n+1))]-A023666(n+1)`
-/

namespace A023665.P14310596895287835808
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005206 (A003622 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A023666 (n + 1)

end

end A023665.P14310596895287835808

/-! ## A023665.P7623520799917889830

`∑[A002251(A001950(n+1))]-A023666(n+1)`
-/

namespace A023665.P7623520799917889830
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002251 (A001950 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A023666 (n + 1)

end

end A023665.P7623520799917889830

/-!
# A023666: Convolution of A000201 and A014306.

The programs for A023666, there is no canonical definition to state claims against.
-/

/-! ## A023666.P7658280298453180774

`A023669(n+1)-A023544(n+1)`
-/

namespace A023666.P7658280298453180774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023669 (n + 1) - A023544 (n + 1)

end

end A023666.P7658280298453180774

/-! ## A023666.P7944422711987887972

`∑[∑[A001468(n)]]-A023665(n+1)`
-/

namespace A023666.P7944422711987887972
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001468 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A023665 (n + 1)

end

end A023666.P7944422711987887972

/-! ## A023666.P14062187702853621016

`∑[A000201(n+1)]-A023665(n+1)`
-/

namespace A023666.P14062187702853621016
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000201 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A023665 (n + 1)

end

end A023666.P14062187702853621016

/-! ## A023666.P10396547233386501681

`∑[A003622(n+1)-n]-A023665(n+1)`
-/

namespace A023666.P10396547233386501681
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003622 (n + 1) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A023665 (n + 1)

end

end A023666.P10396547233386501681

/-! ## A023666.P5791161604638178067

`∑[A005206(A003622(n+1))]-A023665(n+1)`
-/

namespace A023666.P5791161604638178067
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005206 (A003622 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A023665 (n + 1)

end

end A023666.P5791161604638178067

/-! ## A023666.P13050661662788976761

`∑[A002251(A001950(n+1))]-A023665(n+1)`
-/

namespace A023666.P13050661662788976761
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002251 (A001950 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A023665 (n + 1)

end

end A023666.P13050661662788976761

/-!
# A023667: Convolution of A001950 with itself.

The programs for A023667, there is no canonical definition to state claims against.
-/

/-! ## A023667.P1122084499022287651

`A023664(n+1)+A023542(n+1)`
-/

namespace A023667.P1122084499022287651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023664 (n + 1) + A023542 (n + 1)

end

end A023667.P1122084499022287651

/-! ## A023667.P12592249795974409402

`A023664(n+1)+∑[∑[A001950(n+1)]]`
-/

namespace A023667.P12592249795974409402
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001950 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023664 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A023667.P12592249795974409402

/-! ## A023667.P4889601955707520174

`A023663(n+1)+∑[∑[A003623(n+1)]]`
-/

namespace A023667.P4889601955707520174
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003623 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023663 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A023667.P4889601955707520174

/-! ## A023667.P6691135840430942029

`A023541(n+1)+A023663(n+1)+A023542(n+1)`
-/

namespace A023667.P6691135840430942029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023541 (n + 1) + (A023663 (n + 1) + A023542 (n + 1))

end

end A023667.P6691135840430942029

/-!
# A023668: Convolution of A001950 and A023533.

The programs for A023668, there is no canonical definition to state claims against.
-/

/-! ## A023668.P10674363676996501522

`A023665(n+1)+A023543(n+1)`
-/

namespace A023668.P10674363676996501522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023665 (n + 1) + A023543 (n + 1)

end

end A023668.P10674363676996501522

/-! ## A023668.P2490077642634054604

`∑[∑[A282162(n)]]-A023669(n+1)`
-/

namespace A023668.P2490077642634054604
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282162 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A023669 (n + 1)

end

end A023668.P2490077642634054604

/-! ## A023668.P15813990215885898913

`∑[A001950(n+1)]-A023669(n+1)`
-/

namespace A023668.P15813990215885898913
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001950 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A023669 (n + 1)

end

end A023668.P15813990215885898913

/-! ## A023668.P1403672846454575764

`A023665(n+1)+∑[∑[A023533(n+1)]]`
-/

namespace A023668.P1403672846454575764
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023533 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023665 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A023668.P1403672846454575764

/-! ## A023668.P12178706969052541815

`A088207(n+1)-A023669(n+1)`
-/

namespace A023668.P12178706969052541815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088207 (n + 1) - A023669 (n + 1)

end

end A023668.P12178706969052541815

/-!
# A023669: Convolution of A001950 and A014306.

The programs for A023669, there is no canonical definition to state claims against.
-/

/-! ## A023669.P13372095806667223194

`A023666(n+1)+A023544(n+1)`
-/

namespace A023669.P13372095806667223194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023666 (n + 1) + A023544 (n + 1)

end

end A023669.P13372095806667223194

/-! ## A023669.P3642684618728055399

`∑[∑[A282162(n)]]-A023668(n+1)`
-/

namespace A023669.P3642684618728055399
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282162 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A023668 (n + 1)

end

end A023669.P3642684618728055399

/-! ## A023669.P16173978180318145775

`∑[A001950(n+1)]-A023668(n+1)`
-/

namespace A023669.P16173978180318145775
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001950 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A023668 (n + 1)

end

end A023669.P16173978180318145775

/-! ## A023669.P2485408066846463277

`A088207(n+1)-A023668(n+1)`
-/

namespace A023669.P2485408066846463277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088207 (n + 1) - A023668 (n + 1)

end

end A023669.P2485408066846463277

/-! ## A023669.P10545875020742898643

`∑[A002251(A000201(n+1))]-A023668(n+1)`
-/

namespace A023669.P10545875020742898643
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002251 (A000201 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A023668 (n + 1)

end

end A023669.P10545875020742898643

/-!
# A023670: Convolution of A023533 with itself.

The programs for A023670, there is no canonical definition to state claims against.
-/

/-! ## A023670.P13240463963431941577

`A025125(round(sqrt(n²+1)))+A024692(n+1)`
-/

namespace A023670.P13240463963431941577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025125 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat + A024692 (n + 1)

end

end A023670.P13240463963431941577

/-! ## A023670.P2102935995828751861

`A056556(n+1)-A023671(n+1)`
-/

namespace A023670.P2102935995828751861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056556 (n + 1) - A023671 (n + 1)

end

end A023670.P2102935995828751861

/-! ## A023670.P11285148284271005960

`A134451(A024692(n+1)*A341809(n))`
-/

namespace A023670.P11285148284271005960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134451 (A024692 (n + 1) * A341809 (n + 10)).toNat

end

end A023670.P11285148284271005960

/-! ## A023670.P8824117738563889458

`A216176(A023655(n+1))`
-/

namespace A023670.P8824117738563889458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216176 (A023655 (n + 1)).toNat

end

end A023670.P8824117738563889458

/-! ## A023670.P3289154727228819059

`A061773(A372227(n+1))%gcd(3, n)`
-/

namespace A023670.P3289154727228819059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A061773 (A372227 (n + 1)).toNat) (Nat.gcd 3 n : ℤ)

end

end A023670.P3289154727228819059

/-!
# A023671: Convolution of A023533 and A014306.

The programs for A023671, there is no canonical definition to state claims against.
-/

/-! ## A023671.P6251527044828931801

`A056556(n+1)-A023670(n+1)`
-/

namespace A023671.P6251527044828931801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056556 (n + 1) - A023670 (n + 1)

end

end A023671.P6251527044828931801

/-! ## A023671.P1369501093241811491

`∑[A014306(n+1)]-A023673(n+1)`
-/

namespace A023671.P1369501093241811491
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014306 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A023673 (n + 1)

end

end A023671.P1369501093241811491

/-! ## A023671.P9394839999942707695

`∑[A023533(n+1)]-A023670(n+1)`
-/

namespace A023671.P9394839999942707695
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023533 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A023670 (n + 1)

end

end A023671.P9394839999942707695

/-! ## A023671.P13348516202815755903

`A023565(n+1)+A023604(n+1)-A023670(n+1)`
-/

namespace A023671.P13348516202815755903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023565 (n + 1) + (A023604 (n + 1) - A023670 (n + 1))

end

end A023671.P13348516202815755903

/-! ## A023671.P2345422922562894830

`A217693(∑[A023670(n+1)²²])-A023670(n+1)`
-/

namespace A023671.P2345422922562894830
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A023670 (n + 1) ^ 2) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217693 (∑ j ∈ Finset.range (n + 1), f1 j).toNat - A023670 (n + 1)

end

end A023671.P2345422922562894830

/-!
# A023672: Convolution of A023533 and primes.

The programs for A023672, there is no canonical definition to state claims against.
-/

/-! ## A023672.P249694516328315660

`A007504(n+1)-A023674(n+1)`
-/

namespace A023672.P249694516328315660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 (n + 1) - A023674 (n + 1)

end

end A023672.P249694516328315660

/-! ## A023672.P10537065652819751972

`∑[A000040(n+1)]-A023674(n+1)`
-/

namespace A023672.P10537065652819751972
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A023674 (n + 1)

end

end A023672.P10537065652819751972

/-! ## A023672.P16208846547483465726

`∑[p?[A015919(n+1)]]-A023674(n+1)`
-/

namespace A023672.P16208846547483465726
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015919 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A023674 (n + 1)

end

end A023672.P16208846547483465726

/-! ## A023672.P14488103750170521350

`∑[p?[A007989(n)]]-A023674(n+1)`
-/

namespace A023672.P14488103750170521350
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007989 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A023674 (n + 1)

end

end A023672.P14488103750170521350

/-! ## A023672.P9055650528275468671

`∑[record[A051698(n)]]-A023674(n+1)`
-/

namespace A023672.P9055650528275468671
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051698 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A023674 (n + 1)

end

end A023672.P9055650528275468671

/-! ## A023672.P9239648258882693283

`∑[p?[A080412(n)]]-A023674(n+1)`
-/

namespace A023672.P9239648258882693283
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080412 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A023674 (n + 1)

end

end A023672.P9239648258882693283

/-!
# A023673: Convolution of A014306 with itself.

The programs for A023673, there is no canonical definition to state claims against.
-/

/-! ## A023673.P5873907408002808916

`∑[A014306(n+1)]-A023671(n+1)`
-/

namespace A023673.P5873907408002808916
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014306 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A023671 (n + 1)

end

end A023673.P5873907408002808916

/-! ## A023673.P10541551547432057950

`A025128(round(sqrt(n²+1)))+A024695(n+1)`
-/

namespace A023673.P10541551547432057950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025128 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat + A024695 (n + 1)

end

end A023673.P10541551547432057950

/-! ## A023673.P31712688426345380

`n+1-(A056556(n+1)+A023671(n+1))`
-/

namespace A023673.P31712688426345380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - (A056556 (n + 1) + A023671 (n + 1))

end

end A023673.P31712688426345380

/-! ## A023673.P13491140559013834216

`A076874(n+3)+A016330(record[A068217(n+1)])`
-/

namespace A023673.P13491140559013834216
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068217 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076874 (n + 3) + A016330 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A023673.P13491140559013834216

/-! ## A023673.P5629772176854536104

`A028391(n)-A125005(∑[n+1])`
-/

namespace A023673.P5629772176854536104
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028391 n - A125005 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A023673.P5629772176854536104

/-!
# A023674: Convolution of A014306 (starting 0,0,1,1,0,1,1,1,1,...) and primes.

The programs for A023674, there is no canonical definition to state claims against.
-/

/-! ## A023674.P15997998916884459348

`A007504(n+1)-A023672(n+1)`
-/

namespace A023674.P15997998916884459348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 (n + 1) - A023672 (n + 1)

end

end A023674.P15997998916884459348

/-! ## A023674.P2006695479582664829

`∑[A000040(n+1)]-A023672(n+1)`
-/

namespace A023674.P2006695479582664829
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A023672 (n + 1)

end

end A023674.P2006695479582664829

/-! ## A023674.P14587973927278997807

`∑[record[A020639(n+2)]]-A023672(n+1)`
-/

namespace A023674.P14587973927278997807
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A023672 (n + 1)

end

end A023674.P14587973927278997807

/-! ## A023674.P13458488775336039357

`∑[p?[A007989(n)]]-A023672(n+1)`
-/

namespace A023674.P13458488775336039357
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007989 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A023672 (n + 1)

end

end A023674.P13458488775336039357

/-! ## A023674.P12063573486977364669

`∑[p?[A014681(n)]]-A023672(n+1)`
-/

namespace A023674.P12063573486977364669
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014681 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A023672 (n + 1)

end

end A023674.P12063573486977364669

/-! ## A023674.P8006862693916490833

`∑[record[A014963(n+2)]]-A023672(n+1)`
-/

namespace A023674.P8006862693916490833
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A023672 (n + 1)

end

end A023674.P8006862693916490833

/-! ## A023674.P2411375610317406044

`∑[p?[A056847(n)]]-A023672(n+1)`
-/

namespace A023674.P2411375610317406044
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056847 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A023672 (n + 1)

end

end A023674.P2411375610317406044

/-! ## A023674.P10485796074494178472

`∑[p?[A001057(n)]]-A023672(n+1)`
-/

namespace A023674.P10485796074494178472
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A023672 (n + 1)

end

end A023674.P10485796074494178472

/-!
# A023677: Value of x corresponding to the minimal solution of the Pell equation x^2+d*y^2, as d runs through the squarefree numbers.

The programs for A023677, there is no canonical definition to state claims against.
-/

/-! ## A023677.P3377258529085459224

`A006704(A144338(n+1))`
-/

namespace A023677.P3377258529085459224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006704 (A144338 (n + 1)).toNat

end

end A023677.P3377258529085459224

/-! ## A023677.P1248486957997960307

`A006704(A005117(n+2))`
-/

namespace A023677.P1248486957997960307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006704 (A005117 (n + 2)).toNat

end

end A023677.P1248486957997960307

/-! ## A023677.P10458989169109233768

`A006704(record[A007913(n+2)])`
-/

namespace A023677.P10458989169109233768
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006704 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A023677.P10458989169109233768

/-! ## A023677.P12684107873185936956

`A006704(record[A007947(n+2)])`
-/

namespace A023677.P12684107873185936956
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006704 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A023677.P12684107873185936956

/-! ## A023677.P4696569643674625482

`A006704(record[A019554(n+2)])`
-/

namespace A023677.P4696569643674625482
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019554 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006704 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A023677.P4696569643674625482

/-! ## A023677.P18423054515342308019

`A006704(record[A019555(n+2)])`
-/

namespace A023677.P18423054515342308019
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019555 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006704 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A023677.P18423054515342308019

/-! ## A023677.P1197782751053029505

`A006704(record[A072775(n+2)])`
-/

namespace A023677.P1197782751053029505
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072775 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006704 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A023677.P1197782751053029505

/-! ## A023677.P6397530281330977162

`A006704(record[xor(n+1, 1-A085731(n+2))]+1)`
-/

namespace A023677.P6397530281330977162
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n + 1 : ℤ) (1 - A085731 (n + 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006704 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + 1).toNat

end

end A023677.P6397530281330977162

/-!
# A023678: y values corresponding to the x values in A023677.

The programs for A023678, there is no canonical definition to state claims against.
-/

/-! ## A023678.P10649353254371691106

`A006705(A144338(n+1))`
-/

namespace A023678.P10649353254371691106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006705 (A144338 (n + 1)).toNat

end

end A023678.P10649353254371691106

/-! ## A023678.P3021888013082369084

`A006705(A005117(n+2))`
-/

namespace A023678.P3021888013082369084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006705 (A005117 (n + 2)).toNat

end

end A023678.P3021888013082369084

/-! ## A023678.P13292624398079536277

`A006705(eq[0, A087049(n)])`
-/

namespace A023678.P13292624398079536277
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087049 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006705 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A023678.P13292624398079536277

/-! ## A023678.P1114199040409329067

`A006705(record[A007913(n+2)])`
-/

namespace A023678.P1114199040409329067
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006705 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A023678.P1114199040409329067

/-! ## A023678.P15490293881549775307

`A006705(record[A007947(n+2)])`
-/

namespace A023678.P15490293881549775307
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006705 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A023678.P15490293881549775307

/-! ## A023678.P8888522762404059133

`A006705(record[A015052(n+2)])`
-/

namespace A023678.P8888522762404059133
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015052 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006705 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A023678.P8888522762404059133

/-! ## A023678.P17674584309213297725

`A006705(record[A015053(n+2)])`
-/

namespace A023678.P17674584309213297725
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015053 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006705 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A023678.P17674584309213297725

/-! ## A023678.P11528151833564555165

`A006705(record[A055231(n+2)])`
-/

namespace A023678.P11528151833564555165
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055231 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006705 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A023678.P11528151833564555165

/-! ## A023678.P10032259819878656389

`A006705(eq[A000122(n), A105570(n)])`
-/

namespace A023678.P10032259819878656389
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000122 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105570 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006705 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A023678.P10032259819878656389

/-! ## A023678.P11121136798936006655

`A006705(eq[A002448(n), A105570(n)])`
-/

namespace A023678.P11121136798936006655
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002448 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105570 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006705 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A023678.P11121136798936006655

/-! ## A023678.P1829281813162575458

`A006705(eq[A010052(n), A105570(n)])`
-/

namespace A023678.P1829281813162575458
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010052 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105570 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006705 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A023678.P1829281813162575458

/-!
# A023679: Discriminants of complex cubic fields (negated).

The programs for A023679, there is no canonical definition to state claims against.
-/

/-! ## A023679.P13267968364384267335

`A106312(A325360(n+1)%A374337(2*n+5))`
-/

namespace A023679.P13267968364384267335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106312 (Int.tmod (A325360 (n + 1)) (A374337 (2 * n + 5))).toNat

end

end A023679.P13267968364384267335

/-! ## A023679.P744422666322618632

`A106312(n+1)%A237875(n+1)`
-/

namespace A023679.P744422666322618632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A106312 (n + 1)) (A237875 (n + 1))

end

end A023679.P744422666322618632

/-! ## A023679.P1332090330362714848

`A187773(n+1)%A259808(n+4)`
-/

namespace A023679.P1332090330362714848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A187773 (n + 1)) (A259808 (n + 4))

end

end A023679.P1332090330362714848

/-! ## A023679.P7762333336465631222

`lcm(A144473(3*n+5), A187773(n+1))`
-/

namespace A023679.P7762333336465631222
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A144473 (3 * n + 5)) (A187773 (n + 1))

end

end A023679.P7762333336465631222

/-!
# A023680: Discriminants of totally real quartic fields.

The programs for A023680, there is no canonical definition to state claims against.
-/

/-! ## A023680.P419323488017285027

`A143748(A034067(n))`
-/

namespace A023680.P419323488017285027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143748 (A034067 n).toNat

end

end A023680.P419323488017285027

/-!
# A023688: Numbers with exactly 6 ones in binary expansion.

The programs for A023688, the canonical program `A023688.P13854367885440004465` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A023688 has offset 1).

The definition of A023688 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7208 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A023688.P11920353839221189264

`eq[7, A000005(A001316(n+1))]+1`
-/

namespace A023688.P11920353839221189264
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A001316 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A023688.P11920353839221189264

namespace A023688

/-- `eq[7, A000005(A001316(n+1))]+1` -/
def P11920353839221189264.Spec : Prop :=
  ∀ n, (P11920353839221189264.a n : ℤ) = A023688 (n + 1)

end A023688

/-! ## A023688.P13854367885440004465

`eq[6, a(and(n, n-1))+1]` with `a(0)=0`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A023688

/-- `eq[6, a(and(n, n-1))+1]` -/
def P13854367885440004465.Spec : Prop :=
  ∀ n, (P13854367885440004465.a n : ℤ) = A023688 (n + 1)

theorem P13854367885440004465.correct : P13854367885440004465.Spec := by
  intro n
  simp only [A023688, Nat.add_sub_cancel]

end A023688

/-! ## A023688.P2580926639475347300

`eq[64, 2*a(and(n, n-1))]` with `a(0)=1`
-/

namespace A023688.P2580926639475347300
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  64

def f2 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f2 =>
  2 * f2 (Int.land (n : ℤ) ((n : ℤ) - 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A023688.P2580926639475347300

namespace A023688

/-- `eq[64, 2*a(and(n, n-1))]` -/
def P2580926639475347300.Spec : Prop :=
  ∀ n, (P2580926639475347300.a n : ℤ) = A023688 (n + 1)

end A023688

/-! ## A023688.P15237806888086644441

`eq[8, sqrt(A001316(n))]`
-/

namespace A023688.P15237806888086644441
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A001316 n : ℝ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℝ) = f2 j) n

end

end A023688.P15237806888086644441

namespace A023688

/-- `eq[8, sqrt(A001316(n))]` -/
def P15237806888086644441.Spec : Prop :=
  ∀ n, (P15237806888086644441.a n : ℤ) = A023688 (n + 1)

end A023688

/-! ## A023688.P1922215662251242635

`lt[2, A014963(17*log2(A001316(n))²+1)]`
-/

namespace A023688.P1922215662251242635
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (SequenceMachineLib.roundAway (17 * Real.logb 2 (A001316 n : ℝ) ^ 2 + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A023688.P1922215662251242635

namespace A023688

/-- `lt[2, A014963(17*log2(A001316(n))²+1)]` -/
def P1922215662251242635.Spec : Prop :=
  ∀ n, (P1922215662251242635.a n : ℤ) = A023688 (n + 1)

end A023688

/-! ## A023688.P8946609500186314271

`A048679(A179246(n+1))`
-/

namespace A023688.P8946609500186314271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048679 (A179246 (n + 1)).toNat

end

end A023688.P8946609500186314271

namespace A023688

/-- `A048679(A179246(n+1))` -/
def P8946609500186314271.Spec : Prop :=
  ∀ n, P8946609500186314271.a n = A023688 (n + 1)

end A023688

/-! ## A023688.P17181139746948582915

`eq[1, A089051(2*n+1)+A089051(2*n)]`
-/

namespace A023688.P17181139746948582915
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089051 (2 * n + 1) + A089051 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A023688.P17181139746948582915

namespace A023688

/-- `eq[1, A089051(2*n+1)+A089051(2*n)]` -/
def P17181139746948582915.Spec : Prop :=
  ∀ n, (P17181139746948582915.a n : ℤ) = A023688 (n + 1)

end A023688

/-! ## A023688.P9402190907745824147

`eq[A089051(2*n), A321305(A089051(2*n+1))]`
-/

namespace A023688.P9402190907745824147
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089051 (2 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321305 (A089051 (2 * n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A023688.P9402190907745824147

namespace A023688

/-- `eq[A089051(2*n), A321305(A089051(2*n+1))]` -/
def P9402190907745824147.Spec : Prop :=
  ∀ n, (P9402190907745824147.a n : ℤ) = A023688 (n + 1)

end A023688

/-! ## A023688.P4666993171128270419

`eq[(A040056(n)/2)², A001316(n)]`
-/

namespace A023688.P4666993171128270419
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A040056 n : ℚ) / 2) ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001316 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (f2 j : ℚ)) n

end

end A023688.P4666993171128270419

namespace A023688

/-- `eq[(A040056(n)/2)², A001316(n)]` -/
def P4666993171128270419.Spec : Prop :=
  ∀ n, (P4666993171128270419.a n : ℤ) = A023688 (n + 1)

end A023688

/-! ## A023688.P10429784676502709297

`eq[3, ceil(A048896(n)/14)]+1`
-/

namespace A023688.P10429784676502709297
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A048896 n : ℚ) / 14⌉

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A023688.P10429784676502709297

namespace A023688

/-- `eq[3, ceil(A048896(n)/14)]+1` -/
def P10429784676502709297.Spec : Prop :=
  ∀ n, (P10429784676502709297.a n : ℤ) = A023688 (n + 1)

end A023688

/-! ## A023688.P11997094136711565992

`eq[6, A000120(n)]`
-/

namespace A023688.P11997094136711565992
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A023688.P11997094136711565992

namespace A023688

/-- `eq[6, A000120(n)]` -/
def P11997094136711565992.Spec : Prop :=
  ∀ n, (P11997094136711565992.a n : ℤ) = A023688 (n + 1)

end A023688

/-! ## A023688.P12350972663490826052

`eq[7, A063787(n+1)]`
-/

namespace A023688.P12350972663490826052
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063787 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A023688.P12350972663490826052

namespace A023688

/-- `eq[7, A063787(n+1)]` -/
def P12350972663490826052.Spec : Prop :=
  ∀ n, (P12350972663490826052.a n : ℤ) = A023688 (n + 1)

end A023688

/-! ## A023688.P15290026536564826911

`eq[n+6, A092391(n)]`
-/

namespace A023688.P15290026536564826911
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092391 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A023688.P15290026536564826911

namespace A023688

/-- `eq[n+6, A092391(n)]` -/
def P15290026536564826911.Spec : Prop :=
  ∀ n, (P15290026536564826911.a n : ℤ) = A023688 (n + 1)

end A023688

/-! ## A023688.P3946072110511359502

`lt[dr(A131762(n)+2), 2]`
-/

namespace A023688.P3946072110511359502
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A131762 n + 2)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A023688.P3946072110511359502

namespace A023688

/-- `lt[dr(A131762(n)+2), 2]` -/
def P3946072110511359502.Spec : Prop :=
  ∀ n, (P3946072110511359502.a n : ℤ) = A023688 (n + 1)

end A023688

/-! ## A023688.P14718842524909608060

`eq[A040110(n), A102395(n)]`
-/

namespace A023688.P14718842524909608060
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040110 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102395 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A023688.P14718842524909608060

namespace A023688

/-- `eq[A040110(n), A102395(n)]` -/
def P14718842524909608060.Spec : Prop :=
  ∀ n, (P14718842524909608060.a n : ℤ) = A023688 (n + 1)

end A023688

/-! ## A023688.P6018080734095975575

`eq[A040156(n), A131762(n)]`
-/

namespace A023688.P6018080734095975575
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040156 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131762 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A023688.P6018080734095975575

namespace A023688

/-- `eq[A040156(n), A131762(n)]` -/
def P6018080734095975575.Spec : Prop :=
  ∀ n, (P6018080734095975575.a n : ℤ) = A023688 (n + 1)

end A023688

/-! ## A023688.P3079768016085962217

`eq[A057334(n), A168096(n)]`
-/

namespace A023688.P3079768016085962217
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057334 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168096 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A023688.P3079768016085962217

namespace A023688

/-- `eq[A057334(n), A168096(n)]` -/
def P3079768016085962217.Spec : Prop :=
  ∀ n, (P3079768016085962217.a n : ℤ) = A023688 (n + 1)

end A023688

/-! ## A023688.P7467016191896547776

`eq[A089051(n), A144915(n)]`
-/

namespace A023688.P7467016191896547776
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089051 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144915 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A023688.P7467016191896547776

namespace A023688

/-- `eq[A089051(n), A144915(n)]` -/
def P7467016191896547776.Spec : Prop :=
  ∀ n, (P7467016191896547776.a n : ℤ) = A023688 (n + 1)

end A023688

/-! ## A023688.P17395699021148449283

`eq[A008458(n), A245788(n)]`
-/

namespace A023688.P17395699021148449283
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245788 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A023688.P17395699021148449283

namespace A023688

/-- `eq[A008458(n), A245788(n)]` -/
def P17395699021148449283.Spec : Prop :=
  ∀ n, (P17395699021148449283.a n : ℤ) = A023688 (n + 1)

end A023688

/-! ## A023688.P13010906517056198863

`eq[A102396(n), A168100(n)]`
-/

namespace A023688.P13010906517056198863
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102396 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168100 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A023688.P13010906517056198863

namespace A023688

/-- `eq[A102396(n), A168100(n)]` -/
def P13010906517056198863.Spec : Prop :=
  ∀ n, (P13010906517056198863.a n : ℤ) = A023688 (n + 1)

end A023688

/-!
# A023689: Numbers with exactly 7 ones in binary expansion.

The programs for A023689, the canonical program `A023689.P1708230724972766741` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A023689 has offset 1).

The definition of A023689 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9660 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A023689.P1708230724972766741

`eq[7, a(and(n, n-1))+1]` with `a(0)=0`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A023689

/-- `eq[7, a(and(n, n-1))+1]` -/
def P1708230724972766741.Spec : Prop :=
  ∀ n, (P1708230724972766741.a n : ℤ) = A023689 (n + 1)

theorem P1708230724972766741.correct : P1708230724972766741.Spec := by
  intro n
  simp only [A023689, Nat.add_sub_cancel]

end A023689

/-! ## A023689.P6471998584214790990

`eq[6, 2*n-1-A005187(n)]`
-/

namespace A023689.P6471998584214790990
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) - 1 - A005187 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A023689.P6471998584214790990

namespace A023689

/-- `eq[6, 2*n-1-A005187(n)]` -/
def P6471998584214790990.Spec : Prop :=
  ∀ n, (P6471998584214790990.a n : ℤ) = A023689 (n + 1)

end A023689

/-! ## A023689.P6276117579571882813

`A000069(eq[6, and(6, A000120(n))]+1)`
-/

namespace A023689.P6276117579571882813
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 6 (A000120 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000069 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A023689.P6276117579571882813

namespace A023689

/-- `A000069(eq[6, and(6, A000120(n))]+1)` -/
def P6276117579571882813.Spec : Prop :=
  ∀ n, P6276117579571882813.a n = A023689 (n + 1)

end A023689

/-! ## A023689.P9026122228195129818

`A000069(eq[A001285(n)+5, A000120(n)]+1)`
-/

namespace A023689.P9026122228195129818
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001285 n + 5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000069 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1)

end

end A023689.P9026122228195129818

namespace A023689

/-- `A000069(eq[A001285(n)+5, A000120(n)]+1)` -/
def P9026122228195129818.Spec : Prop :=
  ∀ n, P9026122228195129818.a n = A023689 (n + 1)

end A023689

/-! ## A023689.P9101297174454855753

`A048679(A179247(n+1))`
-/

namespace A023689.P9101297174454855753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048679 (A179247 (n + 1)).toNat

end

end A023689.P9101297174454855753

namespace A023689

/-- `A048679(A179247(n+1))` -/
def P9101297174454855753.Spec : Prop :=
  ∀ n, P9101297174454855753.a n = A023689 (n + 1)

end A023689

/-! ## A023689.P6945509990186218451

`eq[7, A000120(n)]`
-/

namespace A023689.P6945509990186218451
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A023689.P6945509990186218451

namespace A023689

/-- `eq[7, A000120(n)]` -/
def P6945509990186218451.Spec : Prop :=
  ∀ n, (P6945509990186218451.a n : ℤ) = A023689 (n + 1)

end A023689

/-! ## A023689.P13217545514932399537

`eq[7, dr(A197353(n))]`
-/

namespace A023689.P13217545514932399537
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A197353 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A023689.P13217545514932399537

namespace A023689

/-- `eq[7, dr(A197353(n))]` -/
def P13217545514932399537.Spec : Prop :=
  ∀ n, (P13217545514932399537.a n : ℤ) = A023689 (n + 1)

end A023689

/-! ## A023689.P7670421496181477457

`∩[A333975(n+1), A371894(n+1)]`
-/

namespace A023689.P7670421496181477457
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333975 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371894 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A023689.P7670421496181477457

namespace A023689

/-- `∩[A333975(n+1), A371894(n+1)]` -/
def P7670421496181477457.Spec : Prop :=
  ∀ n, (P7670421496181477457.a n : ℤ) = A023689 (n + 1)

end A023689

/-! ## A023689.P17949644048115735142

`A341910(A043574(n+1))`
-/

namespace A023689.P17949644048115735142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341910 (A043574 (n + 1)).toNat

end

end A023689.P17949644048115735142

namespace A023689

/-- `A341910(A043574(n+1))` -/
def P17949644048115735142.Spec : Prop :=
  ∀ n, P17949644048115735142.a n = A023689 (n + 1)

end A023689

/-! ## A023689.P8716983561564318496

`eq[1, 8-A005811(A341916(n))]`
-/

namespace A023689.P8716983561564318496
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  8 - A005811 (A341916 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A023689.P8716983561564318496

namespace A023689

/-- `eq[1, 8-A005811(A341916(n))]` -/
def P8716983561564318496.Spec : Prop :=
  ∀ n, (P8716983561564318496.a n : ℤ) = A023689 (n + 1)

end A023689

/-! ## A023689.P309974758047408434

`lt[19, A014963(A001316(2*(n+1)+1)+1)]+1`
-/

namespace A023689.P309974758047408434
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  19

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A001316 (2 * (n + 1) + 1) + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A023689.P309974758047408434

namespace A023689

/-- `lt[19, A014963(A001316(2*(n+1)+1)+1)]+1` -/
def P309974758047408434.Spec : Prop :=
  ∀ n, (P309974758047408434.a n : ℤ) = A023689 (n + 1)

end A023689

/-! ## A023689.P2921315375314894877

`A305493(A052221(n+1))`
-/

namespace A023689.P2921315375314894877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305493 (A052221 (n + 1)).toNat

end

end A023689.P2921315375314894877

namespace A023689

/-- `A305493(A052221(n+1))` -/
def P2921315375314894877.Spec : Prop :=
  ∀ n, P2921315375314894877.a n = A023689 (n + 1)

end A023689

/-!
# A023690: Numbers with exactly 8 ones in binary expansion.

The programs for A023690, there is no canonical definition to state claims against.
-/

/-! ## A023690.P15156542484843153040

`filter[A381720(n+2), A347523(#)]`
-/

namespace A023690.P15156542484843153040
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381720 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A347523 (f1 j).toNat = 1) n)

end

end A023690.P15156542484843153040

/-! ## A023690.P5390423162227669213

`filter[A381720(n+3), A254651(#)]`
-/

namespace A023690.P5390423162227669213
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381720 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A254651 (f1 j).toNat = 1) n)

end

end A023690.P5390423162227669213

/-! ## A023690.P17989692018037322534

`∩[A317295(n+1), A381720(n+1)]`
-/

namespace A023690.P17989692018037322534
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317295 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381720 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A023690.P17989692018037322534

/-! ## A023690.P454352219370393051

`∩[A025389(n+1), A381720(n+1)]`
-/

namespace A023690.P454352219370393051
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025389 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381720 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A023690.P454352219370393051

/-! ## A023690.P9039255440770852132

`∩[A025374(n+1), A381720(n+1)]`
-/

namespace A023690.P9039255440770852132
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025374 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381720 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A023690.P9039255440770852132

/-! ## A023690.P8021501849791887537

`∩[A025388(n+1), A381720(n+1)]`
-/

namespace A023690.P8021501849791887537
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025388 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381720 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A023690.P8021501849791887537

/-! ## A023690.P13606358986152622427

`∩[A025373(n+1), A381720(n+1)]`
-/

namespace A023690.P13606358986152622427
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025373 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381720 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A023690.P13606358986152622427

/-! ## A023690.P10476099701428771698

`filter[A381720(n+2), A010059(#)]`
-/

namespace A023690.P10476099701428771698
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381720 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010059 (f1 j).toNat = 1) n)

end

end A023690.P10476099701428771698

/-! ## A023690.P1158696958774360579

`filter[A381720(n+2), A092436(#)]`
-/

namespace A023690.P1158696958774360579
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381720 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A092436 (f1 j).toNat = 1) n)

end

end A023690.P1158696958774360579

/-! ## A023690.P9425825231356495454

`filter[A381720(n+3), A115516(#)]`
-/

namespace A023690.P9425825231356495454
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381720 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A115516 (f1 j).toNat = 1) n)

end

end A023690.P9425825231356495454

/-! ## A023690.P1517383036544979128

`filter[A381720(n+3), A267579(#)]`
-/

namespace A023690.P1517383036544979128
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381720 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A267579 (f1 j).toNat = 1) n)

end

end A023690.P1517383036544979128

/-! ## A023690.P15951066790922464165

`A048679(A179248(n+1))`
-/

namespace A023690.P15951066790922464165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048679 (A179248 (n + 1)).toNat

end

end A023690.P15951066790922464165

/-! ## A023690.P10715364104712990213

`A341910(A043575(n+1))`
-/

namespace A023690.P10715364104712990213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341910 (A043575 (n + 1)).toNat

end

end A023690.P10715364104712990213

/-! ## A023690.P11057016508333567800

`filter[A381720(n+1), A235046(#)]`
-/

namespace A023690.P11057016508333567800
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381720 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A235046 (f1 j).toNat = 1) n)

end

end A023690.P11057016508333567800

/-! ## A023690.P7244269009561762350

`filter[A381720(n+1), A252743(#)]`
-/

namespace A023690.P7244269009561762350
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381720 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A252743 (f1 j).toNat = 1) n)

end

end A023690.P7244269009561762350

/-! ## A023690.P2108457105205954957

`record[A003602(A023691(n+1))-1]`
-/

namespace A023690.P2108457105205954957
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003602 (A023691 (n + 1)).toNat - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A023690.P2108457105205954957

/-! ## A023690.P13744487070804156839

`A029578(record[A029578(A023691(n+1))])`
-/

namespace A023690.P13744487070804156839
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029578 (A023691 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029578 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A023690.P13744487070804156839

/-! ## A023690.P5312623461404788336

`record[A053645(A023691(n+1))]`
-/

namespace A023690.P5312623461404788336
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053645 (A023691 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A023690.P5312623461404788336

/-! ## A023690.P15280511408041310234

`A305493(A052222(n+1))`
-/

namespace A023690.P15280511408041310234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305493 (A052222 (n + 1)).toNat

end

end A023690.P15280511408041310234

/-!
# A023691: Numbers with exactly 9 ones in binary expansion.

The programs for A023691, there is no canonical definition to state claims against.
-/

/-! ## A023691.P15883748987671568625

`record[A305897(A038461(n+1)-3)]`
-/

namespace A023691.P15883748987671568625
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305897 (A038461 (n + 1) - 3).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A023691.P15883748987671568625

/-! ## A023691.P4621065307790643328

`A325985(eq[9, A053735(n)])`
-/

namespace A023691.P4621065307790643328
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053735 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325985 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A023691.P4621065307790643328

/-! ## A023691.P9169452760114552669

`eq[9, A000120(n)]`
-/

namespace A023691.P9169452760114552669
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A023691.P9169452760114552669

/-! ## A023691.P15259336019590087884

`record[A249122(A038461(n+1))]`
-/

namespace A023691.P15259336019590087884
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249122 (A038461 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A023691.P15259336019590087884

/-! ## A023691.P13156168347666035852

`A341910(A043576(n+1))`
-/

namespace A023691.P13156168347666035852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341910 (A043576 (n + 1)).toNat

end

end A023691.P13156168347666035852

/-! ## A023691.P13035357479996426985

`record[A025480(A038461(n+1)-1)]`
-/

namespace A023691.P13035357479996426985
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025480 (A038461 (n + 1) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A023691.P13035357479996426985

/-! ## A023691.P2368389719989642245

`record[A032742(A038461(n+1)-1)]`
-/

namespace A023691.P2368389719989642245
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032742 (A038461 (n + 1) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A023691.P2368389719989642245

/-! ## A023691.P7946417210240884486

`record[A025480(xor(1, A038461(n+1)))]`
-/

namespace A023691.P7946417210240884486
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025480 (Int.xor 1 (A038461 (n + 1))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A023691.P7946417210240884486

/-! ## A023691.P12235300748844418551

`record[A032742(xor(1, A038461(n+1)))]`
-/

namespace A023691.P12235300748844418551
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032742 (Int.xor 1 (A038461 (n + 1))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A023691.P12235300748844418551

/-! ## A023691.P16813561103204850932

`A029578(record[A029578(A038461(n+1))])`
-/

namespace A023691.P16813561103204850932
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029578 (A038461 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029578 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A023691.P16813561103204850932

/-! ## A023691.P16808220762045033045

`A048679(A179249(n+1))`
-/

namespace A023691.P16808220762045033045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048679 (A179249 (n + 1)).toNat

end

end A023691.P16808220762045033045

/-! ## A023691.P9363746183433524249

`A305493(A052223(n+1))`
-/

namespace A023691.P9363746183433524249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305493 (A052223 (n + 1)).toNat

end

end A023691.P9363746183433524249

/-! ## A023691.P4588799602660574152

`record[A087734(A038461(n+2))]`
-/

namespace A023691.P4588799602660574152
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087734 (A038461 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A023691.P4588799602660574152

/-! ## A023691.P1457757841462866264

`record[A053645(A038461(A008619(n)))]`
-/

namespace A023691.P1457757841462866264
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053645 (A038461 (A008619 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A023691.P1457757841462866264

/-! ## A023691.P13878707429237259959

`A066884(A155212(n+5))`
-/

namespace A023691.P13878707429237259959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066884 (A155212 (n + 5)).toNat

end

end A023691.P13878707429237259959

/-! ## A023691.P6991939245897424889

`A066884(A000217(n+8)+n+1)`
-/

namespace A023691.P6991939245897424889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066884 (A000217 (n + 8) + (n + 1 : ℤ)).toNat

end

end A023691.P6991939245897424889

/-!
# A023692: Numbers with a single 1 in their ternary expansion.

The programs for A023692, the canonical program `A023692.P18411010243286777937` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A023692 has offset 1).

The definition of A023692 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2305 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A023692.P14483683923206862584

`eq[2, A290091(n)]`
-/

namespace A023692.P14483683923206862584
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290091 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A023692.P14483683923206862584

namespace A023692

/-- `eq[2, A290091(n)]` -/
def P14483683923206862584.Spec : Prop :=
  ∀ n, (P14483683923206862584.a n : ℤ) = A023692 (n + 1)

end A023692

/-! ## A023692.P18411010243286777937

`eq[1, val(A006047(n), 2)]`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A023692

/-- `eq[1, val(A006047(n), 2)]` -/
def P18411010243286777937.Spec : Prop :=
  ∀ n, (P18411010243286777937.a n : ℤ) = A023692 (n + 1)

theorem P18411010243286777937.correct : P18411010243286777937.Spec := by
  intro n
  simp only [A023692, Nat.add_sub_cancel]

end A023692

/-! ## A023692.P47481713809855596

`eq[1, A227428(A006047(n))]`
-/

namespace A023692.P47481713809855596
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227428 (A006047 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A023692.P47481713809855596

namespace A023692

/-- `eq[1, A227428(A006047(n))]` -/
def P47481713809855596.Spec : Prop :=
  ∀ n, (P47481713809855596.a n : ℤ) = A023692 (n + 1)

end A023692

/-! ## A023692.P15115328936566347992

`eq[A040059(n), A331279(A006047(n))]`
-/

namespace A023692.P15115328936566347992
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040059 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331279 (A006047 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A023692.P15115328936566347992

namespace A023692

/-- `eq[A040059(n), A331279(A006047(n))]` -/
def P15115328936566347992.Spec : Prop :=
  ∀ n, (P15115328936566347992.a n : ℤ) = A023692 (n + 1)

end A023692

/-! ## A023692.P7346183417393709756

`eq[A040041(n)+2, A006047(A006047(n))]`
-/

namespace A023692.P7346183417393709756
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040041 n + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006047 (A006047 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A023692.P7346183417393709756

namespace A023692

/-- `eq[A040041(n)+2, A006047(A006047(n))]` -/
def P7346183417393709756.Spec : Prop :=
  ∀ n, (P7346183417393709756.a n : ℤ) = A023692 (n + 1)

end A023692

/-! ## A023692.P13699466196282970574

`eq[1, A053735(n-A300222(n))]`
-/

namespace A023692.P13699466196282970574
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053735 ((n : ℤ) - A300222 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A023692.P13699466196282970574

namespace A023692

/-- `eq[1, A053735(n-A300222(n))]` -/
def P13699466196282970574.Spec : Prop :=
  ∀ n, (P13699466196282970574.a n : ℤ) = A023692 (n + 1)

end A023692

/-! ## A023692.P7597150586984002300

`eq[1, A062756(n)]`
-/

namespace A023692.P7597150586984002300
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062756 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A023692.P7597150586984002300

namespace A023692

/-- `eq[1, A062756(n)]` -/
def P7597150586984002300.Spec : Prop :=
  ∀ n, (P7597150586984002300.a n : ℤ) = A023692 (n + 1)

end A023692

/-! ## A023692.P2403578421333029525

`eq[2, A120880(n)]`
-/

namespace A023692.P2403578421333029525
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120880 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A023692.P2403578421333029525

namespace A023692

/-- `eq[2, A120880(n)]` -/
def P2403578421333029525.Spec : Prop :=
  ∀ n, (P2403578421333029525.a n : ℤ) = A023692 (n + 1)

end A023692

/-! ## A023692.P10938253292842151698

`eq[n%2, A205565(n)]`
-/

namespace A023692.P10938253292842151698
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n % 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205565 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A023692.P10938253292842151698

namespace A023692

/-- `eq[n%2, A205565(n)]` -/
def P10938253292842151698.Spec : Prop :=
  ∀ n, (P10938253292842151698.a n : ℤ) = A023692 (n + 1)

end A023692

/-! ## A023692.P14560374466680009281

`eq[1, A000120(A289813(n))]`
-/

namespace A023692.P14560374466680009281
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A289813 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A023692.P14560374466680009281

namespace A023692

/-- `eq[1, A000120(A289813(n))]` -/
def P14560374466680009281.Spec : Prop :=
  ∀ n, (P14560374466680009281.a n : ℤ) = A023692 (n + 1)

end A023692

/-! ## A023692.P15524292364904073931

`eq[1, A065363(A244042(n))]`
-/

namespace A023692.P15524292364904073931
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065363 (A244042 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A023692.P15524292364904073931

namespace A023692

/-- `eq[1, A065363(A244042(n))]` -/
def P15524292364904073931.Spec : Prop :=
  ∀ n, (P15524292364904073931.a n : ℤ) = A023692 (n + 1)

end A023692

/-! ## A023692.P7271980212689047269

`eq[A000035(n), A205565(n)]`
-/

namespace A023692.P7271980212689047269
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205565 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A023692.P7271980212689047269

namespace A023692

/-- `eq[A000035(n), A205565(n)]` -/
def P7271980212689047269.Spec : Prop :=
  ∀ n, (P7271980212689047269.a n : ℤ) = A023692 (n + 1)

end A023692

/-! ## A023692.P14821512355260675091

`eq[A205565(n), A316829(n)]`
-/

namespace A023692.P14821512355260675091
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205565 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316829 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A023692.P14821512355260675091

namespace A023692

/-- `eq[A205565(n), A316829(n)]` -/
def P14821512355260675091.Spec : Prop :=
  ∀ n, (P14821512355260675091.a n : ℤ) = A023692 (n + 1)

end A023692

/-! ## A023692.P2292617121929651981

`eq[2, A030102(A038574(n)+1)]`
-/

namespace A023692.P2292617121929651981
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030102 (A038574 n + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A023692.P2292617121929651981

namespace A023692

/-- `eq[2, A030102(A038574(n)+1)]` -/
def P2292617121929651981.Spec : Prop :=
  ∀ n, (P2292617121929651981.a n : ℤ) = A023692 (n + 1)

end A023692

/-! ## A023692.P14349476505683378124

`eq[2, A038574(A038574(n)+1)]`
-/

namespace A023692.P14349476505683378124
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038574 (A038574 n + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A023692.P14349476505683378124

namespace A023692

/-- `eq[2, A038574(A038574(n)+1)]` -/
def P14349476505683378124.Spec : Prop :=
  ∀ n, (P14349476505683378124.a n : ℤ) = A023692 (n + 1)

end A023692

/-! ## A023692.P12295924655532291296

`eq[A000120(2*A094114(n+1)), A010690(n+1)]`
-/

namespace A023692.P12295924655532291296
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (2 * A094114 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010690 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A023692.P12295924655532291296

namespace A023692

/-- `eq[A000120(2*A094114(n+1)), A010690(n+1)]` -/
def P12295924655532291296.Spec : Prop :=
  ∀ n, (P12295924655532291296.a n : ℤ) = A023692 (n + 1)

end A023692

/-! ## A023692.P1277549725645601274

`eq[1, A081603(A137305(n))]`
-/

namespace A023692.P1277549725645601274
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081603 (A137305 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A023692.P1277549725645601274

namespace A023692

/-- `eq[1, A081603(A137305(n))]` -/
def P1277549725645601274.Spec : Prop :=
  ∀ n, (P1277549725645601274.a n : ℤ) = A023692 (n + 1)

end A023692

/-! ## A023692.P8737446277191163456

`eq[1, A081603(A004488(n))]`
-/

namespace A023692.P8737446277191163456
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081603 (A004488 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A023692.P8737446277191163456

namespace A023692

/-- `eq[1, A081603(A004488(n))]` -/
def P8737446277191163456.Spec : Prop :=
  ∀ n, (P8737446277191163456.a n : ℤ) = A023692 (n + 1)

end A023692

/-! ## A023692.P8999123835413788016

`lt[A289815(3*n+2), A010690(n)²]`
-/

namespace A023692.P8999123835413788016
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289815 (3 * n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010690 n ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A023692.P8999123835413788016

namespace A023692

/-- `lt[A289815(3*n+2), A010690(n)²]` -/
def P8999123835413788016.Spec : Prop :=
  ∀ n, (P8999123835413788016.a n : ℤ) = A023692 (n + 1)

end A023692

/-! ## A023692.P9405874719327111591

`A215090(A045114(n+1))`
-/

namespace A023692.P9405874719327111591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215090 (A045114 (n + 1)).toNat

end

end A023692.P9405874719327111591

namespace A023692

/-- `A215090(A045114(n+1))` -/
def P9405874719327111591.Spec : Prop :=
  ∀ n, P9405874719327111591.a n = A023692 (n + 1)

end A023692

/-!
# A023693: Numbers with exactly 2 1's in ternary expansion.

The programs for A023693, the canonical program `A023693.P3127764006694396744` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A023693 has offset 1).

The definition of A023693 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4608 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A023693.P15731161411074291653

`2*eq[2, A273514(n)]`
-/

namespace A023693.P15731161411074291653
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273514 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A023693.P15731161411074291653

namespace A023693

/-- `2*eq[2, A273514(n)]` -/
def P15731161411074291653.Spec : Prop :=
  ∀ n, (P15731161411074291653.a n : ℤ) = A023693 (n + 1)

end A023693

/-! ## A023693.P15100743346325463902

`A005843(eq[2, A273514(n)])`
-/

namespace A023693.P15100743346325463902
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273514 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A023693.P15100743346325463902

namespace A023693

/-- `A005843(eq[2, A273514(n)])` -/
def P15100743346325463902.Spec : Prop :=
  ∀ n, P15100743346325463902.a n = A023693 (n + 1)

end A023693

/-! ## A023693.P3127764006694396744

`eq[2, val(A006047(n), 2)]`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A023693

/-- `eq[2, val(A006047(n), 2)]` -/
def P3127764006694396744.Spec : Prop :=
  ∀ n, (P3127764006694396744.a n : ℤ) = A023693 (n + 1)

theorem P3127764006694396744.correct : P3127764006694396744.Spec := by
  intro n
  simp only [A023693, Nat.add_sub_cancel]

end A023693

/-! ## A023693.P149287739579312330

`eq[2, A000010(A290091(n))]`
-/

namespace A023693.P149287739579312330
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A290091 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A023693.P149287739579312330

namespace A023693

/-- `eq[2, A000010(A290091(n))]` -/
def P149287739579312330.Spec : Prop :=
  ∀ n, (P149287739579312330.a n : ℤ) = A023693 (n + 1)

end A023693

/-! ## A023693.P505376524519735876

`eq[3, A331279(A006047(n))]`
-/

namespace A023693.P505376524519735876
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331279 (A006047 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A023693.P505376524519735876

namespace A023693

/-- `eq[3, A331279(A006047(n))]` -/
def P505376524519735876.Spec : Prop :=
  ∀ n, (P505376524519735876.a n : ℤ) = A023693 (n + 1)

end A023693

/-! ## A023693.P5744732575489570824

`eq[2, A062756(n)]`
-/

namespace A023693.P5744732575489570824
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062756 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A023693.P5744732575489570824

namespace A023693

/-- `eq[2, A062756(n)]` -/
def P5744732575489570824.Spec : Prop :=
  ∀ n, (P5744732575489570824.a n : ℤ) = A023693 (n + 1)

end A023693

/-! ## A023693.P5679008551462026595

`eq[2, A205565(n)]`
-/

namespace A023693.P5679008551462026595
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205565 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A023693.P5679008551462026595

namespace A023693

/-- `eq[2, A205565(n)]` -/
def P5679008551462026595.Spec : Prop :=
  ∀ n, (P5679008551462026595.a n : ℤ) = A023693 (n + 1)

end A023693

/-! ## A023693.P17674643810809437925

`eq[4, A120880(n)]`
-/

namespace A023693.P17674643810809437925
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120880 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A023693.P17674643810809437925

namespace A023693

/-- `eq[4, A120880(n)]` -/
def P17674643810809437925.Spec : Prop :=
  ∀ n, (P17674643810809437925.a n : ℤ) = A023693 (n + 1)

end A023693

/-! ## A023693.P1296798551184931231

`eq[2, A000120(A289813(n))]`
-/

namespace A023693.P1296798551184931231
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A289813 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A023693.P1296798551184931231

namespace A023693

/-- `eq[2, A000120(A289813(n))]` -/
def P1296798551184931231.Spec : Prop :=
  ∀ n, (P1296798551184931231.a n : ℤ) = A023693 (n + 1)

end A023693

/-! ## A023693.P5855983114704662811

`eq[2, A065363(A244042(n))]`
-/

namespace A023693.P5855983114704662811
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065363 (A244042 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A023693.P5855983114704662811

namespace A023693

/-- `eq[2, A065363(A244042(n))]` -/
def P5855983114704662811.Spec : Prop :=
  ∀ n, (P5855983114704662811.a n : ℤ) = A023693 (n + 1)

end A023693

/-! ## A023693.P6732600239010044877

`eq[2, A081603(A004488(n))]`
-/

namespace A023693.P6732600239010044877
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081603 (A004488 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A023693.P6732600239010044877

namespace A023693

/-- `eq[2, A081603(A004488(n))]` -/
def P6732600239010044877.Spec : Prop :=
  ∀ n, (P6732600239010044877.a n : ℤ) = A023693 (n + 1)

end A023693

/-! ## A023693.P3924270418226356046

`eq[2, A081603(A137305(n))]`
-/

namespace A023693.P3924270418226356046
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081603 (A137305 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A023693.P3924270418226356046

namespace A023693

/-- `eq[2, A081603(A137305(n))]` -/
def P3924270418226356046.Spec : Prop :=
  ∀ n, (P3924270418226356046.a n : ℤ) = A023693 (n + 1)

end A023693

/-! ## A023693.P16351273628508676832

`A215090(A045119(n+1))`
-/

namespace A023693.P16351273628508676832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215090 (A045119 (n + 1)).toNat

end

end A023693.P16351273628508676832

namespace A023693

/-- `A215090(A045119(n+1))` -/
def P16351273628508676832.Spec : Prop :=
  ∀ n, P16351273628508676832.a n = A023693 (n + 1)

end A023693

/-! ## A023693.P1248001705436942791

`eq[2, A139351(A023717(n))]`
-/

namespace A023693.P1248001705436942791
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139351 (A023717 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A023693.P1248001705436942791

namespace A023693

/-- `eq[2, A139351(A023717(n))]` -/
def P1248001705436942791.Spec : Prop :=
  ∀ n, (P1248001705436942791.a n : ℤ) = A023693 (n + 1)

end A023693

/-! ## A023693.P9902791306919888731

`eq[2, A160381(eq[0, A160382(n)])]`
-/

namespace A023693.P9902791306919888731
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160382 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160381 (SequenceMachineLib.nth (fun j => (f3 j : ℤ) = f4 j) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A023693.P9902791306919888731

namespace A023693

/-- `eq[2, A160381(eq[0, A160382(n)])]` -/
def P9902791306919888731.Spec : Prop :=
  ∀ n, (P9902791306919888731.a n : ℤ) = A023693 (n + 1)

end A023693

/-! ## A023693.P1796974797769367116

`eq[2, A001221(A289815(n))]`
-/

namespace A023693.P1796974797769367116
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A289815 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A023693.P1796974797769367116

namespace A023693

/-- `eq[2, A001221(A289815(n))]` -/
def P1796974797769367116.Spec : Prop :=
  ∀ n, (P1796974797769367116.a n : ℤ) = A023693 (n + 1)

end A023693

/-! ## A023693.P13083116798476240851

`eq[A049479(n+2), A105203(n)]`
-/

namespace A023693.P13083116798476240851
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049479 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105203 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A023693.P13083116798476240851

namespace A023693

/-- `eq[A049479(n+2), A105203(n)]` -/
def P13083116798476240851.Spec : Prop :=
  ∀ n, (P13083116798476240851.a n : ℤ) = A023693 (n + 1)

end A023693

/-!
# A023694: Numbers with exactly 3 1's in ternary expansion.

The programs for A023694, the canonical program `A023694.P6778596780132138470` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A023694 has offset 1).

The definition of A023694 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5376 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A023694.P6778596780132138470

`eq[3, val(A006047(n), 2)]`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A023694

/-- `eq[3, val(A006047(n), 2)]` -/
def P6778596780132138470.Spec : Prop :=
  ∀ n, (P6778596780132138470.a n : ℤ) = A023694 (n + 1)

theorem P6778596780132138470.correct : P6778596780132138470.Spec := by
  intro n
  simp only [A023694, Nat.add_sub_cancel]

end A023694

/-! ## A023694.P5927686449430583009

`eq[9, A006047(A006047(n))]`
-/

namespace A023694.P5927686449430583009
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006047 (A006047 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A023694.P5927686449430583009

namespace A023694

/-- `eq[9, A006047(A006047(n))]` -/
def P5927686449430583009.Spec : Prop :=
  ∀ n, (P5927686449430583009.a n : ℤ) = A023694 (n + 1)

end A023694

/-! ## A023694.P8291475401825981838

`eq[1, A001222(A290091(n))-2]`
-/

namespace A023694.P8291475401825981838
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A290091 n).toNat - 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A023694.P8291475401825981838

namespace A023694

/-- `eq[1, A001222(A290091(n))-2]` -/
def P8291475401825981838.Spec : Prop :=
  ∀ n, (P8291475401825981838.a n : ℤ) = A023694 (n + 1)

end A023694

/-! ## A023694.P7461910024382293505

`eq[3, A062756(n)]`
-/

namespace A023694.P7461910024382293505
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062756 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A023694.P7461910024382293505

namespace A023694

/-- `eq[3, A062756(n)]` -/
def P7461910024382293505.Spec : Prop :=
  ∀ n, (P7461910024382293505.a n : ℤ) = A023694 (n + 1)

end A023694

/-! ## A023694.P4082482326323531466

`eq[4, A205565(n)]`
-/

namespace A023694.P4082482326323531466
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205565 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A023694.P4082482326323531466

namespace A023694

/-- `eq[4, A205565(n)]` -/
def P4082482326323531466.Spec : Prop :=
  ∀ n, (P4082482326323531466.a n : ℤ) = A023694 (n + 1)

end A023694

/-! ## A023694.P4613931220220470522

`eq[8, A120880(n)]`
-/

namespace A023694.P4613931220220470522
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120880 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A023694.P4613931220220470522

namespace A023694

/-- `eq[8, A120880(n)]` -/
def P4613931220220470522.Spec : Prop :=
  ∀ n, (P4613931220220470522.a n : ℤ) = A023694 (n + 1)

end A023694

/-! ## A023694.P4949998513573724395

`eq[1, A000120(A289813(n))-2]`
-/

namespace A023694.P4949998513573724395
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A289813 n).toNat - 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A023694.P4949998513573724395

namespace A023694

/-- `eq[1, A000120(A289813(n))-2]` -/
def P4949998513573724395.Spec : Prop :=
  ∀ n, (P4949998513573724395.a n : ℤ) = A023694 (n + 1)

end A023694

/-! ## A023694.P2694336144525174855

`eq[1, A065363(A244042(n))-2]`
-/

namespace A023694.P2694336144525174855
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065363 (A244042 n).toNat - 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A023694.P2694336144525174855

namespace A023694

/-- `eq[1, A065363(A244042(n))-2]` -/
def P2694336144525174855.Spec : Prop :=
  ∀ n, (P2694336144525174855.a n : ℤ) = A023694 (n + 1)

end A023694

/-! ## A023694.P7141283405097383971

`eq[A038574(A038574(n)+1), A040042(n)]`
-/

namespace A023694.P7141283405097383971
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038574 (A038574 n + 1).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040042 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A023694.P7141283405097383971

namespace A023694

/-- `eq[A038574(A038574(n)+1), A040042(n)]` -/
def P7141283405097383971.Spec : Prop :=
  ∀ n, (P7141283405097383971.a n : ℤ) = A023694 (n + 1)

end A023694

/-! ## A023694.P11536050945695809680

`eq[1, A081603(A004488(n))-2]`
-/

namespace A023694.P11536050945695809680
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081603 (A004488 n).toNat - 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A023694.P11536050945695809680

namespace A023694

/-- `eq[1, A081603(A004488(n))-2]` -/
def P11536050945695809680.Spec : Prop :=
  ∀ n, (P11536050945695809680.a n : ℤ) = A023694 (n + 1)

end A023694

/-! ## A023694.P9467772048621286656

`eq[1, A081603(A137305(n))-2]`
-/

namespace A023694.P9467772048621286656
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081603 (A137305 n).toNat - 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A023694.P9467772048621286656

namespace A023694

/-- `eq[1, A081603(A137305(n))-2]` -/
def P9467772048621286656.Spec : Prop :=
  ∀ n, (P9467772048621286656.a n : ℤ) = A023694 (n + 1)

end A023694

/-! ## A023694.P16703549649376772920

`eq[A027760(n+2)*A105203(n), A027760(2*n+1)]`
-/

namespace A023694.P16703549649376772920
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027760 (n + 2) * A105203 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027760 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A023694.P16703549649376772920

namespace A023694

/-- `eq[A027760(n+2)*A105203(n), A027760(2*n+1)]` -/
def P16703549649376772920.Spec : Prop :=
  ∀ n, (P16703549649376772920.a n : ℤ) = A023694 (n + 1)

end A023694

/-! ## A023694.P1890505571016359379

`eq[2, A105203(n)*A163894(n)]`
-/

namespace A023694.P1890505571016359379
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105203 n * A163894 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A023694.P1890505571016359379

namespace A023694

/-- `eq[2, A105203(n)*A163894(n)]` -/
def P1890505571016359379.Spec : Prop :=
  ∀ n, (P1890505571016359379.a n : ℤ) = A023694 (n + 1)

end A023694

/-! ## A023694.P9917039323596874437

`eq[A088705(3*n), A105203(n)]`
-/

namespace A023694.P9917039323596874437
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088705 (3 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105203 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A023694.P9917039323596874437

namespace A023694

/-- `eq[A088705(3*n), A105203(n)]` -/
def P9917039323596874437.Spec : Prop :=
  ∀ n, (P9917039323596874437.a n : ℤ) = A023694 (n + 1)

end A023694

/-! ## A023694.P13763657681674903625

`eq[A010132(n*A010132(n)), A105203(n)]`
-/

namespace A023694.P13763657681674903625
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010132 ((n : ℤ) * A010132 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105203 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A023694.P13763657681674903625

namespace A023694

/-- `eq[A010132(n*A010132(n)), A105203(n)]` -/
def P13763657681674903625.Spec : Prop :=
  ∀ n, (P13763657681674903625.a n : ℤ) = A023694 (n + 1)

end A023694

/-! ## A023694.P5025404454315302653

`A215090(A045124(n+1))`
-/

namespace A023694.P5025404454315302653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215090 (A045124 (n + 1)).toNat

end

end A023694.P5025404454315302653

namespace A023694

/-- `A215090(A045124(n+1))` -/
def P5025404454315302653.Spec : Prop :=
  ∀ n, P5025404454315302653.a n = A023694 (n + 1)

end A023694

/-! ## A023694.P4872798792312554692

`eq[1, A139351(A023717(n))-2]`
-/

namespace A023694.P4872798792312554692
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139351 (A023717 n).toNat - 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A023694.P4872798792312554692

namespace A023694

/-- `eq[1, A139351(A023717(n))-2]` -/
def P4872798792312554692.Spec : Prop :=
  ∀ n, (P4872798792312554692.a n : ℤ) = A023694 (n + 1)

end A023694

/-! ## A023694.P14270427307164883471

`eq[A106154(n), A244609(n)]`
-/

namespace A023694.P14270427307164883471
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106154 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244609 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A023694.P14270427307164883471

namespace A023694

/-- `eq[A106154(n), A244609(n)]` -/
def P14270427307164883471.Spec : Prop :=
  ∀ n, (P14270427307164883471.a n : ℤ) = A023694 (n + 1)

end A023694

/-! ## A023694.P8308297287176865265

`eq[3, A001221(A289815(n))]`
-/

namespace A023694.P8308297287176865265
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A289815 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A023694.P8308297287176865265

namespace A023694

/-- `eq[3, A001221(A289815(n))]` -/
def P8308297287176865265.Spec : Prop :=
  ∀ n, (P8308297287176865265.a n : ℤ) = A023694 (n + 1)

end A023694

/-! ## A023694.P17952347836994035660

`eq[A052552(n), A105203(n)]`
-/

namespace A023694.P17952347836994035660
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052552 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105203 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A023694.P17952347836994035660

namespace A023694

/-- `eq[A052552(n), A105203(n)]` -/
def P17952347836994035660.Spec : Prop :=
  ∀ n, (P17952347836994035660.a n : ℤ) = A023694 (n + 1)

end A023694

/-!
# A023695: Numbers with exactly 4 1's in their ternary expansion.

The programs for A023695, the canonical program `A023695.P1436911764056398350` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A023695 has offset 1).

The definition of A023695 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4032 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A023695.P9481137886164433945

`eq[3, A229215(n+1)]`
-/

namespace A023695.P9481137886164433945
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229215 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A023695.P9481137886164433945

namespace A023695

/-- `eq[3, A229215(n+1)]` -/
def P9481137886164433945.Spec : Prop :=
  ∀ n, (P9481137886164433945.a n : ℤ) = A023695 (n + 1)

end A023695

/-! ## A023695.P1436911764056398350

`eq[2, gcd(n, A105203(n))]`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A023695

/-- `eq[2, gcd(n, A105203(n))]` -/
def P1436911764056398350.Spec : Prop :=
  ∀ n, (P1436911764056398350.a n : ℤ) = A023695 (n + 1)

theorem P1436911764056398350.correct : P1436911764056398350.Spec := by
  intro n
  simp only [A023695, Nat.add_sub_cancel]

end A023695

/-! ## A023695.P4135075172836608957

`2*eq[2, A105203(2*n)]`
-/

namespace A023695.P4135075172836608957
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105203 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A023695.P4135075172836608957

namespace A023695

/-- `2*eq[2, A105203(2*n)]` -/
def P4135075172836608957.Spec : Prop :=
  ∀ n, (P4135075172836608957.a n : ℤ) = A023695 (n + 1)

end A023695

/-! ## A023695.P10915607150481743797

`eq[2, A001222(A290091(n))-2]`
-/

namespace A023695.P10915607150481743797
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A290091 n).toNat - 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A023695.P10915607150481743797

namespace A023695

/-- `eq[2, A001222(A290091(n))-2]` -/
def P10915607150481743797.Spec : Prop :=
  ∀ n, (P10915607150481743797.a n : ℤ) = A023695 (n + 1)

end A023695

/-! ## A023695.P16736561612433792779

`A005843(eq[2, A105203(2*n)])`
-/

namespace A023695.P16736561612433792779
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105203 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A023695.P16736561612433792779

namespace A023695

/-- `A005843(eq[2, A105203(2*n)])` -/
def P16736561612433792779.Spec : Prop :=
  ∀ n, P16736561612433792779.a n = A023695 (n + 1)

end A023695

/-! ## A023695.P11309973099797101175

`eq[2, A007814(A006047(n))-2]`
-/

namespace A023695.P11309973099797101175
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (A006047 n).toNat - 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A023695.P11309973099797101175

namespace A023695

/-- `eq[2, A007814(A006047(n))-2]` -/
def P11309973099797101175.Spec : Prop :=
  ∀ n, (P11309973099797101175.a n : ℤ) = A023695 (n + 1)

end A023695

/-! ## A023695.P9389396626129323048

`eq[2, A106154(n)]`
-/

namespace A023695.P9389396626129323048
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106154 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A023695.P9389396626129323048

namespace A023695

/-- `eq[2, A106154(n)]` -/
def P9389396626129323048.Spec : Prop :=
  ∀ n, (P9389396626129323048.a n : ℤ) = A023695 (n + 1)

end A023695

/-! ## A023695.P1462613903252511481

`eq[4, A062756(n)]`
-/

namespace A023695.P1462613903252511481
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062756 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A023695.P1462613903252511481

namespace A023695

/-- `eq[4, A062756(n)]` -/
def P1462613903252511481.Spec : Prop :=
  ∀ n, (P1462613903252511481.a n : ℤ) = A023695 (n + 1)

end A023695

/-! ## A023695.P10980144585795326269

`eq[8, A205565(n)]`
-/

namespace A023695.P10980144585795326269
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205565 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A023695.P10980144585795326269

namespace A023695

/-- `eq[8, A205565(n)]` -/
def P10980144585795326269.Spec : Prop :=
  ∀ n, (P10980144585795326269.a n : ℤ) = A023695 (n + 1)

end A023695

/-! ## A023695.P14169742072310244928

`eq[4, sqrt(A120880(n))]`
-/

namespace A023695.P14169742072310244928
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A120880 n : ℝ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℝ) = f2 j) n

end

end A023695.P14169742072310244928

namespace A023695

/-- `eq[4, sqrt(A120880(n))]` -/
def P14169742072310244928.Spec : Prop :=
  ∀ n, (P14169742072310244928.a n : ℤ) = A023695 (n + 1)

end A023695

/-! ## A023695.P18298327763957646050

`eq[A010694(n), A105203(n)]`
-/

namespace A023695.P18298327763957646050
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010694 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105203 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A023695.P18298327763957646050

namespace A023695

/-- `eq[A010694(n), A105203(n)]` -/
def P18298327763957646050.Spec : Prop :=
  ∀ n, (P18298327763957646050.a n : ℤ) = A023695 (n + 1)

end A023695

/-! ## A023695.P8831746356892528325

`eq[A010695(n), A105203(n)]`
-/

namespace A023695.P8831746356892528325
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010695 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105203 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A023695.P8831746356892528325

namespace A023695

/-- `eq[A010695(n), A105203(n)]` -/
def P8831746356892528325.Spec : Prop :=
  ∀ n, (P8831746356892528325.a n : ℤ) = A023695 (n + 1)

end A023695

/-! ## A023695.P5932487051299476150

`eq[A010696(n), A105203(n)]`
-/

namespace A023695.P5932487051299476150
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010696 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105203 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A023695.P5932487051299476150

namespace A023695

/-- `eq[A010696(n), A105203(n)]` -/
def P5932487051299476150.Spec : Prop :=
  ∀ n, (P5932487051299476150.a n : ℤ) = A023695 (n + 1)

end A023695

/-! ## A023695.P1022855947776282572

`eq[A010697(n), A105203(n)]`
-/

namespace A023695.P1022855947776282572
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010697 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105203 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A023695.P1022855947776282572

namespace A023695

/-- `eq[A010697(n), A105203(n)]` -/
def P1022855947776282572.Spec : Prop :=
  ∀ n, (P1022855947776282572.a n : ℤ) = A023695 (n + 1)

end A023695

/-! ## A023695.P11081443267184386195

`eq[A010698(n), A105203(n)]`
-/

namespace A023695.P11081443267184386195
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010698 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105203 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A023695.P11081443267184386195

namespace A023695

/-- `eq[A010698(n), A105203(n)]` -/
def P11081443267184386195.Spec : Prop :=
  ∀ n, (P11081443267184386195.a n : ℤ) = A023695 (n + 1)

end A023695

/-! ## A023695.P10462286816156528679

`eq[A010699(n), A105203(n)]`
-/

namespace A023695.P10462286816156528679
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010699 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105203 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A023695.P10462286816156528679

namespace A023695

/-- `eq[A010699(n), A105203(n)]` -/
def P10462286816156528679.Spec : Prop :=
  ∀ n, (P10462286816156528679.a n : ℤ) = A023695 (n + 1)

end A023695

/-! ## A023695.P17128793540147101536

`eq[A010700(n), A105203(n)]`
-/

namespace A023695.P17128793540147101536
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010700 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105203 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A023695.P17128793540147101536

namespace A023695

/-- `eq[A010700(n), A105203(n)]` -/
def P17128793540147101536.Spec : Prop :=
  ∀ n, (P17128793540147101536.a n : ℤ) = A023695 (n + 1)

end A023695

/-! ## A023695.P1385697795669037160

`lt[A091895(A120880(n)+2), 1]`
-/

namespace A023695.P1385697795669037160
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091895 (A120880 n + 2).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A023695.P1385697795669037160

namespace A023695

/-- `lt[A091895(A120880(n)+2), 1]` -/
def P1385697795669037160.Spec : Prop :=
  ∀ n, (P1385697795669037160.a n : ℤ) = A023695 (n + 1)

end A023695

/-! ## A023695.P16036799329460195739

`eq[A027760(n+1), A105203(n)]`
-/

namespace A023695.P16036799329460195739
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027760 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105203 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A023695.P16036799329460195739

namespace A023695

/-- `eq[A027760(n+1), A105203(n)]` -/
def P16036799329460195739.Spec : Prop :=
  ∀ n, (P16036799329460195739.a n : ℤ) = A023695 (n + 1)

end A023695

/-! ## A023695.P15420280152246208939

`eq[A030057(n+1), A105203(n)]`
-/

namespace A023695.P15420280152246208939
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030057 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105203 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A023695.P15420280152246208939

namespace A023695

/-- `eq[A030057(n+1), A105203(n)]` -/
def P15420280152246208939.Spec : Prop :=
  ∀ n, (P15420280152246208939.a n : ℤ) = A023695 (n + 1)

end A023695

/-!
# A023696: Numbers with exactly 5 1's in ternary expansion.

The programs for A023696, the canonical program `A023696.P1765320762815526595` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A023696 has offset 1).

The definition of A023696 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1568 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A023696.P3405672786368804576

`eq[5, A001222(A290091(n))]`
-/

namespace A023696.P3405672786368804576
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A290091 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A023696.P3405672786368804576

namespace A023696

/-- `eq[5, A001222(A290091(n))]` -/
def P3405672786368804576.Spec : Prop :=
  ∀ n, (P3405672786368804576.a n : ℤ) = A023696 (n + 1)

end A023696

/-! ## A023696.P1765320762815526595

`eq[5, A007814(A006047(n))]`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A023696

/-- `eq[5, A007814(A006047(n))]` -/
def P1765320762815526595.Spec : Prop :=
  ∀ n, (P1765320762815526595.a n : ℤ) = A023696 (n + 1)

theorem P1765320762815526595.correct : P1765320762815526595.Spec := by
  intro n
  simp only [A023696, Nat.add_sub_cancel]

end A023696

/-! ## A023696.P12157369386637687664

`eq[1, A106154(n)]`
-/

namespace A023696.P12157369386637687664
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106154 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A023696.P12157369386637687664

namespace A023696

/-- `eq[1, A106154(n)]` -/
def P12157369386637687664.Spec : Prop :=
  ∀ n, (P12157369386637687664.a n : ℤ) = A023696 (n + 1)

end A023696

/-! ## A023696.P3399770761209632384

`eq[5, A062756(n)]`
-/

namespace A023696.P3399770761209632384
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062756 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A023696.P3399770761209632384

namespace A023696

/-- `eq[5, A062756(n)]` -/
def P3399770761209632384.Spec : Prop :=
  ∀ n, (P3399770761209632384.a n : ℤ) = A023696 (n + 1)

end A023696

/-! ## A023696.P13481843101989530067

`eq[16, A205565(n)]`
-/

namespace A023696.P13481843101989530067
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  16

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205565 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A023696.P13481843101989530067

namespace A023696

/-- `eq[16, A205565(n)]` -/
def P13481843101989530067.Spec : Prop :=
  ∀ n, (P13481843101989530067.a n : ℤ) = A023696 (n + 1)

end A023696

/-! ## A023696.P18265990627057755786

`eq[32, A120880(n)]`
-/

namespace A023696.P18265990627057755786
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  32

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120880 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A023696.P18265990627057755786

namespace A023696

/-- `eq[32, A120880(n)]` -/
def P18265990627057755786.Spec : Prop :=
  ∀ n, (P18265990627057755786.a n : ℤ) = A023696 (n + 1)

end A023696

/-! ## A023696.P8154975395139056999

`eq[5, A000120(A289813(n))]`
-/

namespace A023696.P8154975395139056999
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A289813 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A023696.P8154975395139056999

namespace A023696

/-- `eq[5, A000120(A289813(n))]` -/
def P8154975395139056999.Spec : Prop :=
  ∀ n, (P8154975395139056999.a n : ℤ) = A023696 (n + 1)

end A023696

/-! ## A023696.P12585217072954794725

`eq[5, A081603(A004488(n))]`
-/

namespace A023696.P12585217072954794725
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081603 (A004488 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A023696.P12585217072954794725

namespace A023696

/-- `eq[5, A081603(A004488(n))]` -/
def P12585217072954794725.Spec : Prop :=
  ∀ n, (P12585217072954794725.a n : ℤ) = A023696 (n + 1)

end A023696

/-! ## A023696.P1086971557499171349

`eq[5, A081603(A137305(n))]`
-/

namespace A023696.P1086971557499171349
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081603 (A137305 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A023696.P1086971557499171349

namespace A023696

/-- `eq[5, A081603(A137305(n))]` -/
def P1086971557499171349.Spec : Prop :=
  ∀ n, (P1086971557499171349.a n : ℤ) = A023696 (n + 1)

end A023696

/-!
# A023697: Numbers with exactly 6 1's in their ternary expansion.

The programs for A023697, the canonical program `A023697.P3220481640824258587` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A023697 has offset 1).

The definition of A023697 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 560 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A023697.P17863190959850972028

`A005843(eq[32, A273514(n)])`
-/

namespace A023697.P17863190959850972028
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  32

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273514 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A023697.P17863190959850972028

namespace A023697

/-- `A005843(eq[32, A273514(n)])` -/
def P17863190959850972028.Spec : Prop :=
  ∀ n, P17863190959850972028.a n = A023697 (n + 1)

end A023697

/-! ## A023697.P15885525211437027853

`eq[6, A001222(A290091(n))]`
-/

namespace A023697.P15885525211437027853
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A290091 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A023697.P15885525211437027853

namespace A023697

/-- `eq[6, A001222(A290091(n))]` -/
def P15885525211437027853.Spec : Prop :=
  ∀ n, (P15885525211437027853.a n : ℤ) = A023697 (n + 1)

end A023697

/-! ## A023697.P3220481640824258587

`eq[6, A007814(A006047(n))]`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A023697

/-- `eq[6, A007814(A006047(n))]` -/
def P3220481640824258587.Spec : Prop :=
  ∀ n, (P3220481640824258587.a n : ℤ) = A023697 (n + 1)

theorem P3220481640824258587.correct : P3220481640824258587.Spec := by
  intro n
  simp only [A023697, Nat.add_sub_cancel]

end A023697

/-! ## A023697.P4364727186399333606

`eq[6, A062756(n)]`
-/

namespace A023697.P4364727186399333606
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062756 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A023697.P4364727186399333606

namespace A023697

/-- `eq[6, A062756(n)]` -/
def P4364727186399333606.Spec : Prop :=
  ∀ n, (P4364727186399333606.a n : ℤ) = A023697 (n + 1)

end A023697

/-! ## A023697.P9808539690246492932

`eq[8, sqrt(A120880(n))]`
-/

namespace A023697.P9808539690246492932
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A120880 n : ℝ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℝ) = f2 j) n

end

end A023697.P9808539690246492932

namespace A023697

/-- `eq[8, sqrt(A120880(n))]` -/
def P9808539690246492932.Spec : Prop :=
  ∀ n, (P9808539690246492932.a n : ℤ) = A023697 (n + 1)

end A023697

/-! ## A023697.P4379481677875189762

`eq[5, log2(A205565(n))]`
-/

namespace A023697.P4379481677875189762
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A205565 n : ℝ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℝ) = f2 j) n

end

end A023697.P4379481677875189762

namespace A023697

/-- `eq[5, log2(A205565(n))]` -/
def P4379481677875189762.Spec : Prop :=
  ∀ n, (P4379481677875189762.a n : ℤ) = A023697 (n + 1)

end A023697

/-! ## A023697.P616749917646042378

`eq[6, A000120(A289813(n))]`
-/

namespace A023697.P616749917646042378
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A289813 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A023697.P616749917646042378

namespace A023697

/-- `eq[6, A000120(A289813(n))]` -/
def P616749917646042378.Spec : Prop :=
  ∀ n, (P616749917646042378.a n : ℤ) = A023697 (n + 1)

end A023697

/-!
# A023699: Numbers with a single 2 in their ternary expansion.

The programs for A023699, the canonical program `A023699.P15230863015613878465` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A023699 has offset 1).

The definition of A023699 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2304 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A023699.P14791492933729014931

`eq[1, A273513(n)]`
-/

namespace A023699.P14791492933729014931
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273513 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A023699.P14791492933729014931

namespace A023699

/-- `eq[1, A273513(n)]` -/
def P14791492933729014931.Spec : Prop :=
  ∀ n, (P14791492933729014931.a n : ℤ) = A023699 (n + 1)

end A023699

/-! ## A023699.P4817623661041090405

`eq[2, A290092(n)]`
-/

namespace A023699.P4817623661041090405
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290092 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A023699.P4817623661041090405

namespace A023699

/-- `eq[2, A290092(n)]` -/
def P4817623661041090405.Spec : Prop :=
  ∀ n, (P4817623661041090405.a n : ℤ) = A023699 (n + 1)

end A023699

/-! ## A023699.P3680091011648036308

`eq[2, abs(A117942(n))]`
-/

namespace A023699.P3680091011648036308
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A117942 n|

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A023699.P3680091011648036308

namespace A023699

/-- `eq[2, abs(A117942(n))]` -/
def P3680091011648036308.Spec : Prop :=
  ∀ n, (P3680091011648036308.a n : ℤ) = A023699 (n + 1)

end A023699

/-! ## A023699.P15230863015613878465

`eq[1, val(A006047(n), 3)]`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A023699

/-- `eq[1, val(A006047(n), 3)]` -/
def P15230863015613878465.Spec : Prop :=
  ∀ n, (P15230863015613878465.a n : ℤ) = A023699 (n + 1)

theorem P15230863015613878465.correct : P15230863015613878465.Spec := by
  intro n
  simp only [A023699, Nat.add_sub_cancel]

end A023699

/-! ## A023699.P12626164750683429692

`eq[1, A302242(A006047(n))]`
-/

namespace A023699.P12626164750683429692
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302242 (A006047 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A023699.P12626164750683429692

namespace A023699

/-- `eq[1, A302242(A006047(n))]` -/
def P12626164750683429692.Spec : Prop :=
  ∀ n, (P12626164750683429692.a n : ℤ) = A023699 (n + 1)

end A023699

/-! ## A023699.P6404692797594371125

`eq[1, A081603(n)]`
-/

namespace A023699.P6404692797594371125
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081603 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A023699.P6404692797594371125

namespace A023699

/-- `eq[1, A081603(n)]` -/
def P6404692797594371125.Spec : Prop :=
  ∀ n, (P6404692797594371125.a n : ℤ) = A023699 (n + 1)

end A023699

/-! ## A023699.P4069452035010235854

`eq[2, A117592(n)]`
-/

namespace A023699.P4069452035010235854
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117592 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A023699.P4069452035010235854

namespace A023699

/-- `eq[2, A117592(n)]` -/
def P4069452035010235854.Spec : Prop :=
  ∀ n, (P4069452035010235854.a n : ℤ) = A023699 (n + 1)

end A023699

/-! ## A023699.P17924933424164425982

`eq[1, val(A120879(n), 2)]`
-/

namespace A023699.P17924933424164425982
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A120879 n).toNat 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A023699.P17924933424164425982

namespace A023699

/-- `eq[1, val(A120879(n), 2)]` -/
def P17924933424164425982.Spec : Prop :=
  ∀ n, (P17924933424164425982.a n : ℤ) = A023699 (n + 1)

end A023699

/-! ## A023699.P12440827453870188441

`eq[A120880(n), A227428(n)]`
-/

namespace A023699.P12440827453870188441
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120880 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227428 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A023699.P12440827453870188441

namespace A023699

/-- `eq[A120880(n), A227428(n)]` -/
def P12440827453870188441.Spec : Prop :=
  ∀ n, (P12440827453870188441.a n : ℤ) = A023699 (n + 1)

end A023699

/-! ## A023699.P1773927800844347459

`eq[1, A000120(A289814(n))]`
-/

namespace A023699.P1773927800844347459
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A289814 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A023699.P1773927800844347459

namespace A023699

/-- `eq[1, A000120(A289814(n))]` -/
def P1773927800844347459.Spec : Prop :=
  ∀ n, (P1773927800844347459.a n : ℤ) = A023699 (n + 1)

end A023699

/-! ## A023699.P17804292420460885048

`eq[2, A120879(A120879(n))]`
-/

namespace A023699.P17804292420460885048
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120879 (A120879 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A023699.P17804292420460885048

namespace A023699

/-- `eq[2, A120879(A120879(n))]` -/
def P17804292420460885048.Spec : Prop :=
  ∀ n, (P17804292420460885048.a n : ℤ) = A023699 (n + 1)

end A023699

/-! ## A023699.P6212063749433388453

`eq[1, A062756(A004488(n))]`
-/

namespace A023699.P6212063749433388453
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062756 (A004488 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A023699.P6212063749433388453

namespace A023699

/-- `eq[1, A062756(A004488(n))]` -/
def P6212063749433388453.Spec : Prop :=
  ∀ n, (P6212063749433388453.a n : ℤ) = A023699 (n + 1)

end A023699

/-! ## A023699.P15620145741850076168

`eq[1, A062756(A357616(n))]`
-/

namespace A023699.P15620145741850076168
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062756 (A357616 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A023699.P15620145741850076168

namespace A023699

/-- `eq[1, A062756(A357616(n))]` -/
def P15620145741850076168.Spec : Prop :=
  ∀ n, (P15620145741850076168.a n : ℤ) = A023699 (n + 1)

end A023699

/-! ## A023699.P12269544056399594082

`A215090(A045138(n+1))`
-/

namespace A023699.P12269544056399594082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215090 (A045138 (n + 1)).toNat

end

end A023699.P12269544056399594082

namespace A023699

/-- `A215090(A045138(n+1))` -/
def P12269544056399594082.Spec : Prop :=
  ∀ n, P12269544056399594082.a n = A023699 (n + 1)

end A023699

/-! ## A023699.P334615020824566563

`eq[1, A160382(A023717(n))]`
-/

namespace A023699.P334615020824566563
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160382 (A023717 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A023699.P334615020824566563

namespace A023699

/-- `eq[1, A160382(A023717(n))]` -/
def P334615020824566563.Spec : Prop :=
  ∀ n, (P334615020824566563.a n : ℤ) = A023699 (n + 1)

end A023699

/-! ## A023699.P6121742194576462827

`eq[1, A001221(A289816(n))]`
-/

namespace A023699.P6121742194576462827
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A289816 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A023699.P6121742194576462827

namespace A023699

/-- `eq[1, A001221(A289816(n))]` -/
def P6121742194576462827.Spec : Prop :=
  ∀ n, (P6121742194576462827.a n : ℤ) = A023699 (n + 1)

end A023699

/-! ## A023699.P7861806956982452158

`eq[A117942(n)², A120880(A117942(n)²)]`
-/

namespace A023699.P7861806956982452158
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117942 n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120880 (A117942 n ^ 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A023699.P7861806956982452158

namespace A023699

/-- `eq[A117942(n)², A120880(A117942(n)²)]` -/
def P7861806956982452158.Spec : Prop :=
  ∀ n, (P7861806956982452158.a n : ℤ) = A023699 (n + 1)

end A023699

/-! ## A023699.P9377083627453000417

`eq[1, A160383(eq[0, A160381(n)])]`
-/

namespace A023699.P9377083627453000417
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160381 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160383 (SequenceMachineLib.nth (fun j => (f3 j : ℤ) = f4 j) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A023699.P9377083627453000417

namespace A023699

/-- `eq[1, A160383(eq[0, A160381(n)])]` -/
def P9377083627453000417.Spec : Prop :=
  ∀ n, (P9377083627453000417.a n : ℤ) = A023699 (n + 1)

end A023699

