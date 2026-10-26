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
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C037
import Seq.B000.C039
import Seq.B000.C040
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
import Seq.B002.C004
import Seq.B002.C005
import Seq.B002.C006
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
import Seq.B006.C000
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
import Seq.Opaque.C023
import Seq.Opaque.C024
import SequenceMachineLib.Triangle

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A103600: Smallest prime p such that Sum_{primes q <= p} 1/q >= n/6.

The programs for A103600, there is no canonical definition to state claims against.
-/

/-! ## A103600.P13994240473209302269

`A000040(A103599(n+1))`
-/

namespace A103600.P13994240473209302269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A103599 (n + 1)).toNat

end

end A103600.P13994240473209302269

/-! ## A103600.P13730622685932807949

`A008578(A103599(n+1)+1)`
-/

namespace A103600.P13730622685932807949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (A103599 (n + 1) + 1).toNat

end

end A103600.P13730622685932807949

/-! ## A103600.P13579590577587462683

`A182986(A103599(n+1)+1)`
-/

namespace A103600.P13579590577587462683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182986 (A103599 (n + 1) + 1).toNat

end

end A103600.P13579590577587462683

/-! ## A103600.P6637182120466208081

`∑{d}[A103599(n+1), A007444(#)]`
-/

namespace A103600.P6637182120466208081
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103599 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A007444 d

end

end A103600.P6637182120466208081

/-! ## A103600.P4416667248608361838

`A109763(2*A103599(n+1))`
-/

namespace A103600.P4416667248608361838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109763 (2 * A103599 (n + 1)).toNat

end

end A103600.P4416667248608361838

/-!
# A103601: Numbers k such that the string 10k is the decimal expansion of a prime number.

The programs for A103601, there is no canonical definition to state claims against.
-/

/-! ## A103601.P14601673526281161659

`eq[A087087(A324398(3*n+4)), A349135(2*n+5)]`
-/

namespace A103601.P14601673526281161659
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087087 (A324398 (3 * n + 4)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349135 (2 * n + 5)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A103601.P14601673526281161659

/-! ## A103601.P4405928437046122792

`eq[A313480(A324398(3*n+4)), A323244(2*n+5)]`
-/

namespace A103601.P4405928437046122792
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313480 (A324398 (3 * n + 4)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323244 (2 * n + 5)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A103601.P4405928437046122792

/-! ## A103601.P4384597340402635190

`eq[A322003(A322023(3*n+4)), A322034(2*n+5)]`
-/

namespace A103601.P4384597340402635190
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322003 (A322023 (3 * n + 4)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322034 (2 * n + 5)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A103601.P4384597340402635190

/-! ## A103601.P2556758464507051490

`eq[A000002(A364537(n+1)), A062327(2*n+5)]`
-/

namespace A103601.P2556758464507051490
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000002 (A364537 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062327 (2 * n + 5)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A103601.P2556758464507051490

/-! ## A103601.P17333691299960063105

`lt[A340076(2*(n+2)), A340045(A340084(2*n+5))]`
-/

namespace A103601.P17333691299960063105
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340076 (2 * (n + 2))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340045 (A340084 (2 * n + 5)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A103601.P17333691299960063105

/-!
# A103603: Numbers k such that the string 101001000k is prime.

The programs for A103603, there is no canonical definition to state claims against.
-/

/-! ## A103603.P15869665562252022800

`A320055(A002144(n+1)+2^n-1)`
-/

namespace A103603.P15869665562252022800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320055 (A002144 (n + 1) + ((2 ^ n : ℤ) - 1)).toNat

end

end A103603.P15869665562252022800

/-!
# A103604: a(n) = binomial(n+6,6) * binomial(n+10,6).

The programs for A103604, the canonical program `A103604.P14656982833471769942` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A103604 has offset 0).

The definition of A103604 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `C(n+6, 6)*C(n+10, 6)` (program `A103604.P14656982833471769942`, by `A103604.P14656982833471769942.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A103604.P14656982833471769942

`C(n+6, 6)*C(n+10, 6)`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A103604

/-- `C(n+6, 6)*C(n+10, 6)` -/
def P14656982833471769942.Spec : Prop :=
  ∀ n, (P14656982833471769942.a n : ℤ) = A103604 n

theorem P14656982833471769942.correct : P14656982833471769942.Spec := by
  intro n
  simp only [A103604]

end A103604

/-! ## A103604.P12092912013653746525

`A000579(n+6)*A000579(n+10)`
-/

namespace A103604.P12092912013653746525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000579 (n + 6) * A000579 (n + 10)

end

end A103604.P12092912013653746525

namespace A103604

/-- `A000579(n+6)*A000579(n+10)` -/
def P12092912013653746525.Spec : Prop :=
  ∀ n, P12092912013653746525.a n = A103604 n

theorem P12092912013653746525.correct : P12092912013653746525.Spec := by
  intro n
  simp only [A103604, Nat.add_sub_cancel, A103604.P12092912013653746525.a, A103604.P14656982833471769942.a, A000579, A000579.P13663713855180125612.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A103604

/-! ## A103604.P17539749789940508924

`A027823(n+5)-A027815(n+5)`
-/

namespace A103604.P17539749789940508924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027823 (n + 5) - A027815 (n + 5)

end

end A103604.P17539749789940508924

namespace A103604

/-- `A027823(n+5)-A027815(n+5)` -/
def P17539749789940508924.Spec : Prop :=
  ∀ n, P17539749789940508924.a n = A103604 n

theorem P17539749789940508924.correct : P17539749789940508924.Spec := by
  intro n
  simp only [A103604, Nat.add_sub_cancel, A103604.P17539749789940508924.a, A103604.P14656982833471769942.a, A027815, A027815.P17155762864666877845.a, A027823, A027823.P16249549344903145161.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A103604

/-! ## A103604.P7721224723195150197

`∑[A027822(n+4)+A027815(n+5)]-A027815(n+5)`
-/

namespace A103604.P7721224723195150197
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027822 (n + 4) + A027815 (n + 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A027815 (n + 5)

end

end A103604.P7721224723195150197

namespace A103604

/-- `∑[A027822(n+4)+A027815(n+5)]-A027815(n+5)` -/
def P7721224723195150197.Spec : Prop :=
  ∀ n, P7721224723195150197.a n = A103604 n

end A103604

/-! ## A103604.P7229456795850035691

`A105942(n+1)/A105939(n+1)*A105939(n)`
-/

namespace A103604.P7229456795850035691
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A105942 (n + 1) : ℚ) / (A105939 (n + 1) : ℚ) * (A105939 n : ℚ)

end

end A103604.P7229456795850035691

namespace A103604

/-- `A105942(n+1)/A105939(n+1)*A105939(n)` -/
def P7229456795850035691.Spec : Prop :=
  ∀ n, P7229456795850035691.a n = (A103604 n : ℚ)

end A103604

/-! ## A103604.P16057284512929630459

`(A124089(n+6)+1)*Δ[A000580(n+10)]`
-/

namespace A103604.P16057284512929630459
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000580 (n + 10)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A124089 (n + 6) + 1) * (f1 (n + 1) - f1 n)

end

end A103604.P16057284512929630459

namespace A103604

/-- `(A124089(n+6)+1)*Δ[A000580(n+10)]` -/
def P16057284512929630459.Spec : Prop :=
  ∀ n, P16057284512929630459.a n = A103604 n

theorem P16057284512929630459.correct : P16057284512929630459.Spec := by
  intro n
  simp only [A103604, Nat.add_sub_cancel, A103604.P16057284512929630459.f1, A103604.P16057284512929630459.a, A103604.P14656982833471769942.a, A000580, A000580.P16667415707980948191.a, A124089, A124089.P16269199596857535660.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A103604

/-! ## A103604.P5374647751700137629

`A299338(2*(n+4))*A299338(2*n)`
-/

namespace A103604.P5374647751700137629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299338 (2 * (n + 4)) * A299338 (2 * n)

end

end A103604.P5374647751700137629

namespace A103604

/-- `A299338(2*(n+4))*A299338(2*n)` -/
def P5374647751700137629.Spec : Prop :=
  ∀ n, P5374647751700137629.a n = A103604 n

end A103604

/-! ## A103604.P18281775490721693244

`A085478(A167614(n+2))*A085478(A167614(n+6))`
-/

namespace A103604.P18281775490721693244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085478 (A167614 (n + 2)).toNat * A085478 (A167614 (n + 6)).toNat

end

end A103604.P18281775490721693244

namespace A103604

/-- `A085478(A167614(n+2))*A085478(A167614(n+6))` -/
def P18281775490721693244.Spec : Prop :=
  ∀ n, P18281775490721693244.a n = A103604 n

end A103604

/-!
# A103605: Pythagorean triples in increasing order of perimeter (a+b+c). If two successive perimeters are equals, then in order of decreasing areas; each triple [a(i), a(j), a(k)] (with k multiple of 3, j=k-1, i=k-2) in increasing order.

The programs for A103605, there is no canonical definition to state claims against.
-/

/-! ## A103605.P732418080179511170

`A376608(n+1)%A096746(n+4)`
-/

namespace A103605.P732418080179511170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A376608 (n + 1)) (A096746 (n + 4))

end

end A103605.P732418080179511170

/-! ## A103605.P2944233044946211901

`A376608(n+1)+A070109(A048162(n))`
-/

namespace A103605.P2944233044946211901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376608 (n + 1) + A070109 (A048162 n).toNat

end

end A103605.P2944233044946211901

/-! ## A103605.P8347432568239541291

`A376608(n+1)+A000007(A376582(n))`
-/

namespace A103605.P8347432568239541291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376608 (n + 1) + A000007 (A376582 n).toNat

end

end A103605.P8347432568239541291

/-! ## A103605.P3184005192179267116

`A376608(n+1)+A341619(A376634(n))`
-/

namespace A103605.P3184005192179267116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376608 (n + 1) + A341619 (A376634 n).toNat

end

end A103605.P3184005192179267116

/-! ## A103605.P16895534288406935921

`A376608(n+1)^A318829(A337353(n))`
-/

namespace A103605.P16895534288406935921
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A376608 (n + 1) : ℚ) ^ (A318829 (A337353 n).toNat : ℤ)

end

end A103605.P16895534288406935921

/-!
# A103607: Write down the semiprimes but omit any semiprime (such as 46 or 69) that is the concatenation of consecutive semiprimes.

The programs for A103607, there is no canonical definition to state claims against.
-/

/-! ## A103607.P17763984875983457407

`A001358(comp[A204696(n)])`
-/

namespace A103607.P17763984875983457407
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204696 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001358 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A103607.P17763984875983457407

/-! ## A103607.P5938506510424400019

`A001358(comp[Δ[A333173(n)]])`
-/

namespace A103607.P5938506510424400019
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333173 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001358 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A103607.P5938506510424400019

/-! ## A103607.P660412679028428952

`A001358(comp[A334229(n+1)])`
-/

namespace A103607.P660412679028428952
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334229 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001358 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A103607.P660412679028428952

/-! ## A103607.P7191083587186364427

`A001358(comp[Δ[A185769(n+1)]])`
-/

namespace A103607.P7191083587186364427
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185769 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001358 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A103607.P7191083587186364427

/-! ## A103607.P1202603925871658143

`A001358(comp[Δ[A186939(n+1)]])`
-/

namespace A103607.P1202603925871658143
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186939 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001358 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A103607.P1202603925871658143

/-! ## A103607.P9237933990482564220

`A001358(comp[8*A138880(n+1)])`
-/

namespace A103607.P9237933990482564220
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  8 * A138880 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001358 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A103607.P9237933990482564220

/-! ## A103607.P12238546993912642437

`A001358(comp[A277087(n)-95]+1)`
-/

namespace A103607.P12238546993912642437
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277087 n - 95

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001358 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1)

end

end A103607.P12238546993912642437

/-! ## A103607.P6894597973017477143

`A001358(comp[4*n*A052928(n)])`
-/

namespace A103607.P6894597973017477143
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * ((n : ℤ) * A052928 n)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001358 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A103607.P6894597973017477143

/-!
# A103608: Prime centuries with exactly one prime year in each decade.

The programs for A103608, there is no canonical definition to state claims against.
-/

/-! ## A103608.P7729317669438707039

`A307890(A316841(3*n+1)+A307887(n))`
-/

namespace A103608.P7729317669438707039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307890 (A316841 (3 * n + 1) + A307887 n).toNat

end

end A103608.P7729317669438707039

/-! ## A103608.P11053706660672969935

`A307890(∑[A324510(n+1)!])`
-/

namespace A103608.P11053706660672969935
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A324510 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307890 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A103608.P11053706660672969935

/-!
# A103609: Fibonacci numbers repeated (cf. A000045).

The programs for A103609, the canonical program `A103609.P15544429394990847361` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A103609 has offset 0).

The definition of A103609 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A103609.P15544429394990847361

`a(n-2)+a(n-4)` with `a(0)=0, a(1)=0, a(2)=1, a(3)=1`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A103609

/-- `a(n-2)+a(n-4)` -/
def P15544429394990847361.Spec : Prop :=
  ∀ n, (P15544429394990847361.a n : ℤ) = A103609 n

theorem P15544429394990847361.correct : P15544429394990847361.Spec := by
  intro n
  simp only [A103609]

end A103609

/-! ## A103609.P475759726653851529

`A000045(floor(n/2))`
-/

namespace A103609.P475759726653851529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 ⌊(n : ℚ) / 2⌋.toNat

end

end A103609.P475759726653851529

namespace A103609

/-- `A000045(floor(n/2))` -/
def P475759726653851529.Spec : Prop :=
  ∀ n, P475759726653851529.a n = A103609 n

end A103609

/-! ## A103609.P4606881990074460238

`ogf((x^2+x^3)/(1-x^2-x^4))`
-/

namespace A103609.P4606881990074460238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 0, 1, 1] [1, 0, -1, 0, -1] n

end

end A103609.P4606881990074460238

namespace A103609

/-- `ogf((x^2+x^3)/(1-x^2-x^4))` -/
def P4606881990074460238.Spec : Prop :=
  ∀ n, P4606881990074460238.a n = A103609 n

end A103609

/-! ## A103609.P13853797937053786870

`A129982(or(1, n))`
-/

namespace A103609.P13853797937053786870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129982 (Nat.lor 1 n)

end

end A103609.P13853797937053786870

namespace A103609

/-- `A129982(or(1, n))` -/
def P13853797937053786870.Spec : Prop :=
  ∀ n, P13853797937053786870.a n = A103609 n

end A103609

/-! ## A103609.P18102268432846382952

`abs(A236191(floor(n/2)))`
-/

namespace A103609.P18102268432846382952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A236191 ⌊(n : ℚ) / 2⌋.toNat|

end

end A103609.P18102268432846382952

namespace A103609

/-- `abs(A236191(floor(n/2)))` -/
def P18102268432846382952.Spec : Prop :=
  ∀ n, P18102268432846382952.a n = A103609 n

end A103609

/-! ## A103609.P8823256024756004448

`A212804(∑[char[2*n]])`
-/

namespace A103609.P8823256024756004448
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212804 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A103609.P8823256024756004448

namespace A103609

/-- `A212804(∑[char[2*n]])` -/
def P8823256024756004448.Spec : Prop :=
  ∀ n, P8823256024756004448.a n = A103609 n

end A103609

/-! ## A103609.P13611030114532633333

`A001611(floor(n/2))-1`
-/

namespace A103609.P13611030114532633333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001611 ⌊(n : ℚ) / 2⌋.toNat - 1

end

end A103609.P13611030114532633333

namespace A103609

/-- `A001611(floor(n/2))-1` -/
def P13611030114532633333.Spec : Prop :=
  ∀ n, P13611030114532633333.a n = A103609 n

end A103609

/-! ## A103609.P6088224877315386669

`A129982(A109613(n))`
-/

namespace A103609.P6088224877315386669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129982 (A109613 n).toNat

end

end A103609.P6088224877315386669

namespace A103609

/-- `A129982(A109613(n))` -/
def P6088224877315386669.Spec : Prop :=
  ∀ n, P6088224877315386669.a n = A103609 n

end A103609

/-! ## A103609.P7729752250538142617

`A247049(A055562(n))`
-/

namespace A103609.P7729752250538142617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247049 (A055562 n).toNat

end

end A103609.P7729752250538142617

namespace A103609

/-- `A247049(A055562(n))` -/
def P7729752250538142617.Spec : Prop :=
  ∀ n, P7729752250538142617.a n = A103609 n

end A103609

/-! ## A103609.P6124735318807236757

`A247049(A114119(n))`
-/

namespace A103609.P6124735318807236757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247049 (A114119 n).toNat

end

end A103609.P6124735318807236757

namespace A103609

/-- `A247049(A114119(n))` -/
def P6124735318807236757.Spec : Prop :=
  ∀ n, P6124735318807236757.a n = A103609 n

end A103609

/-! ## A103609.P11895165148238352822

`A247049(A166517(n))`
-/

namespace A103609.P11895165148238352822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247049 (A166517 n).toNat

end

end A103609.P11895165148238352822

namespace A103609

/-- `A247049(A166517(n))` -/
def P11895165148238352822.Spec : Prop :=
  ∀ n, P11895165148238352822.a n = A103609 n

end A103609

/-! ## A103609.P16830771022025975518

`A247049(A299417(n))`
-/

namespace A103609.P16830771022025975518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247049 (A299417 n).toNat

end

end A103609.P16830771022025975518

namespace A103609

/-- `A247049(A299417(n))` -/
def P16830771022025975518.Spec : Prop :=
  ∀ n, P16830771022025975518.a n = A103609 n

end A103609

/-! ## A103609.P6939328864547039445

`A129982(n+1)*A129982(n)`
-/

namespace A103609.P6939328864547039445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129982 (n + 1) * A129982 n

end

end A103609.P6939328864547039445

namespace A103609

/-- `A129982(n+1)*A129982(n)` -/
def P6939328864547039445.Spec : Prop :=
  ∀ n, P6939328864547039445.a n = A103609 n

end A103609

/-! ## A103609.P7314377036051941034

`A000045(A002265(2*n))-2*n+n+n`
-/

namespace A103609.P7314377036051941034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A002265 (2 * n)).toNat - (2 * n : ℤ) + (n : ℤ) + (n : ℤ)

end

end A103609.P7314377036051941034

namespace A103609

/-- `A000045(A002265(2*n))-2*n+n+n` -/
def P7314377036051941034.Spec : Prop :=
  ∀ n, P7314377036051941034.a n = A103609 n

end A103609

/-! ## A103609.P797129774213947113

`A000045(A004526(n))*A141044(n)`
-/

namespace A103609.P797129774213947113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A004526 n).toNat * A141044 n

end

end A103609.P797129774213947113

namespace A103609

/-- `A000045(A004526(n))*A141044(n)` -/
def P797129774213947113.Spec : Prop :=
  ∀ n, P797129774213947113.a n = A103609 n

end A103609

/-! ## A103609.P3953298870883679764

`A000045(A123108(n))*A057427(n)`
-/

namespace A103609.P3953298870883679764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A123108 n).toNat * A057427 n

end

end A103609.P3953298870883679764

namespace A103609

/-- `A000045(A123108(n))*A057427(n)` -/
def P3953298870883679764.Spec : Prop :=
  ∀ n, P3953298870883679764.a n = A103609 n

end A103609

/-! ## A103609.P5165058309451117716

`A212804(A004526(n)+1)/A141044(n)`
-/

namespace A103609.P5165058309451117716
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A212804 (A004526 n + 1).toNat : ℚ) / (A141044 n : ℚ)

end

end A103609.P5165058309451117716

namespace A103609

/-- `A212804(A004526(n)+1)/A141044(n)` -/
def P5165058309451117716.Spec : Prop :=
  ∀ n, P5165058309451117716.a n = (A103609 n : ℚ)

end A103609

/-! ## A103609.P190585259476837364

`A141044(n+3)*A212804(A004526(n+2))`
-/

namespace A103609.P190585259476837364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141044 (n + 3) * A212804 (A004526 (n + 2)).toNat

end

end A103609.P190585259476837364

namespace A103609

/-- `A141044(n+3)*A212804(A004526(n+2))` -/
def P190585259476837364.Spec : Prop :=
  ∀ n, P190585259476837364.a n = A103609 n

end A103609

/-! ## A103609.P12594013831091798053

`A098054(xor(3, n+3))`
-/

namespace A103609.P12594013831091798053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098054 (Nat.xor 3 (n + 3))

end

end A103609.P12594013831091798053

namespace A103609

/-- `A098054(xor(3, n+3))` -/
def P12594013831091798053.Spec : Prop :=
  ∀ n, P12594013831091798053.a n = A103609 n

end A103609

/-!
# A103610: 4 X infinity array read by rows: let M = {{0, 1, 0, 0}, {0, 0, 1, 0}, {0, 0, 0, 1}, {1, 0, 1, 0}}, w[0] = {0, 0, 1, 1}', w[n]' = M*w[n -1]'; the n-th row of the array is w[n]' (the prime denotes transpose).

The programs for A103610, the canonical program `A103610.P13812086684880233208` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A103610 has offset 0).

The definition of A103610 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3839 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A103610.P13812086684880233208

`A000045(floor(5*n/8)-and(n, -4)/2)`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A103610

/-- `A000045(floor(5*n/8)-and(n, -4)/2)` -/
def P13812086684880233208.Spec : Prop :=
  ∀ n, P13812086684880233208.a n = A103610 n

theorem P13812086684880233208.correct : P13812086684880233208.Spec := by
  intro n
  simp only [A103610]

end A103610

/-! ## A103610.P18200583389811548336

`A103609(A110657(n+3))`
-/

namespace A103610.P18200583389811548336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103609 (A110657 (n + 3)).toNat

end

end A103610.P18200583389811548336

namespace A103610

/-- `A103609(A110657(n+3))` -/
def P18200583389811548336.Spec : Prop :=
  ∀ n, P18200583389811548336.a n = A103610 n

end A103610

/-! ## A103610.P6368590331923486305

`A000045(floor(A110657(n+3)/2))`
-/

namespace A103610.P6368590331923486305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 ⌊(A110657 (n + 3) : ℚ) / 2⌋.toNat

end

end A103610.P6368590331923486305

namespace A103610

/-- `A000045(floor(A110657(n+3)/2))` -/
def P6368590331923486305.Spec : Prop :=
  ∀ n, P6368590331923486305.a n = A103610 n

end A103610

/-! ## A103610.P6962103363326129802

`A000045(A008647(∑[n%2+1]))`
-/

namespace A103610.P6962103363326129802
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n % 2 + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A008647 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A103610.P6962103363326129802

namespace A103610

/-- `A000045(A008647(∑[n%2+1]))` -/
def P6962103363326129802.Spec : Prop :=
  ∀ n, P6962103363326129802.a n = A103610 n

end A103610

/-! ## A103610.P15422230965736468558

`A000045(A008647(∑[gcd(2, n+1)]))`
-/

namespace A103610.P15422230965736468558
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd 2 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A008647 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A103610.P15422230965736468558

namespace A103610

/-- `A000045(A008647(∑[gcd(2, n+1)]))` -/
def P15422230965736468558.Spec : Prop :=
  ∀ n, P15422230965736468558.a n = A103610 n

end A103610

/-! ## A103610.P10148750080535369204

`A000045(A008647(∑[and(1, n)+1]))`
-/

namespace A103610.P10148750080535369204
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 1 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A008647 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A103610.P10148750080535369204

namespace A103610

/-- `A000045(A008647(∑[and(1, n)+1]))` -/
def P10148750080535369204.Spec : Prop :=
  ∀ n, P10148750080535369204.a n = A103610 n

end A103610

/-! ## A103610.P4937308626365719898

`A000045(A008647(ceil(3*n/2)+1))`
-/

namespace A103610.P4937308626365719898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A008647 (⌈3 * ((n : ℚ) / 2)⌉ + 1).toNat).toNat

end

end A103610.P4937308626365719898

namespace A103610

/-- `A000045(A008647(ceil(3*n/2)+1))` -/
def P4937308626365719898.Spec : Prop :=
  ∀ n, P4937308626365719898.a n = A103610 n

end A103610

/-! ## A103610.P7130221037069576411

`A000045(val(A004655(n), 4))`
-/

namespace A103610.P7130221037069576411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (SequenceMachineLib.valuation (A004655 n).toNat 4)

end

end A103610.P7130221037069576411

namespace A103610

/-- `A000045(val(A004655(n), 4))` -/
def P7130221037069576411.Spec : Prop :=
  ∀ n, P7130221037069576411.a n = A103610 n

end A103610

/-! ## A103610.P4595648347288543278

`A000045(Δ[A002265(floor((n/2)²+n))])`
-/

namespace A103610.P4595648347288543278
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 ⌊((n : ℚ) / 2) ^ 2 + (n : ℚ)⌋.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (f1 (n + 1) - f1 n).toNat

end

end A103610.P4595648347288543278

namespace A103610

/-- `A000045(Δ[A002265(floor((n/2)²+n))])` -/
def P4595648347288543278.Spec : Prop :=
  ∀ n, P4595648347288543278.a n = A103610 n

end A103610

/-!
# A103611: Smallest prime p with at least two non-overlapping occurrences of n in decimal representation of p.

The programs for A103611, there is no canonical definition to state claims against.
-/

/-! ## A103611.P7209555965521387699

`A062584(A020338(n+1)^A139549(n))`
-/

namespace A103611.P7209555965521387699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062584 (SequenceMachineLib.roundAway ((A020338 (n + 1) : ℚ) ^ (A139549 n : ℤ))).toNat

end

end A103611.P7209555965521387699

/-! ## A103611.P9390432955492619643

`A062584(C(A020338(n+1), A139549(n)))`
-/

namespace A103611.P9390432955492619643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062584 (Nat.choose (A020338 (n + 1)).toNat (A139549 n).toNat)

end

end A103611.P9390432955492619643

/-! ## A103611.P10415583934297882981

`A062584(lcm(A020338(n+1), A246450(n+1)))`
-/

namespace A103611.P10415583934297882981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062584 (Int.lcm (A020338 (n + 1)) (A246450 (n + 1)))

end

end A103611.P10415583934297882981

/-! ## A103611.P9404348638096787732

`A062584(A139549(n)²²*A020338(n+1))`
-/

namespace A103611.P9404348638096787732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062584 ((A139549 n ^ 2) ^ 2 * A020338 (n + 1)).toNat

end

end A103611.P9404348638096787732

/-! ## A103611.P14334028508863608651

`A062584(lcm(A020338(n+1), A321804(n)))`
-/

namespace A103611.P14334028508863608651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062584 (Int.lcm (A020338 (n + 1)) (A321804 n))

end

end A103611.P14334028508863608651

/-!
# A103612: Number of solutions to 5+B^2=p^2+q^2 with B=2n, p,q>0 and 2p^2

The programs for A103612, the canonical program `A103612.P10543445186733692250` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A103612 has offset 0).

The definition of A103612 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 101 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A103612.P2817211189792812942

`round(atan(A104768(n)))`
-/

namespace A103612.P2817211189792812942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.arctan (A104768 n : ℝ))

end

end A103612.P2817211189792812942

namespace A103612

/-- `round(atan(A104768(n)))` -/
def P2817211189792812942.Spec : Prop :=
  ∀ n, P2817211189792812942.a n = A103612 n

end A103612

/-! ## A103612.P10543445186733692250

`A001876(A104768(n))`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A103612

/-- `A001876(A104768(n))` -/
def P10543445186733692250.Spec : Prop :=
  ∀ n, P10543445186733692250.a n = A103612 n

theorem P10543445186733692250.correct : P10543445186733692250.Spec := by
  intro n
  simp only [A103612]

end A103612

/-! ## A103612.P8476844893504049005

`A076489(A104768(n)²)`
-/

namespace A103612.P8476844893504049005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076489 (A104768 n ^ 2).toNat

end

end A103612.P8476844893504049005

namespace A103612

/-- `A076489(A104768(n)²)` -/
def P8476844893504049005.Spec : Prop :=
  ∀ n, P8476844893504049005.a n = A103612 n

end A103612

/-! ## A103612.P57245847286453301

`A072233(A104768(n)+1)`
-/

namespace A103612.P57245847286453301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072233 (A104768 n + 1).toNat

end

end A103612.P57245847286453301

namespace A103612

/-- `A072233(A104768(n)+1)` -/
def P57245847286453301.Spec : Prop :=
  ∀ n, P57245847286453301.a n = A103612 n

end A103612

/-! ## A103612.P49752198946781425

`A086288(A104768(n)+1)`
-/

namespace A103612.P49752198946781425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086288 (A104768 n + 1).toNat

end

end A103612.P49752198946781425

namespace A103612

/-- `A086288(A104768(n)+1)` -/
def P49752198946781425.Spec : Prop :=
  ∀ n, P49752198946781425.a n = A103612 n

end A103612

/-! ## A103612.P7481895206843577687

`A093998(A104768(n)+2)`
-/

namespace A103612.P7481895206843577687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093998 (A104768 n + 2).toNat

end

end A103612.P7481895206843577687

namespace A103612

/-- `A093998(A104768(n)+2)` -/
def P7481895206843577687.Spec : Prop :=
  ∀ n, P7481895206843577687.a n = A103612 n

end A103612

/-! ## A103612.P9888441867409288592

`A153246(A104768(n)+2)`
-/

namespace A103612.P9888441867409288592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153246 (A104768 n + 2).toNat

end

end A103612.P9888441867409288592

namespace A103612

/-- `A153246(A104768(n)+2)` -/
def P9888441867409288592.Spec : Prop :=
  ∀ n, P9888441867409288592.a n = A103612 n

end A103612

/-! ## A103612.P14289311091641283714

`A281116(A104768(n)+2)`
-/

namespace A103612.P14289311091641283714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281116 (A104768 n + 2).toNat

end

end A103612.P14289311091641283714

namespace A103612

/-- `A281116(A104768(n)+2)` -/
def P14289311091641283714.Spec : Prop :=
  ∀ n, P14289311091641283714.a n = A103612 n

end A103612

/-! ## A103612.P4986270220816723199

`A007376(3*A104768(n))`
-/

namespace A103612.P4986270220816723199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007376 (3 * A104768 n).toNat

end

end A103612.P4986270220816723199

namespace A103612

/-- `A007376(3*A104768(n))` -/
def P4986270220816723199.Spec : Prop :=
  ∀ n, P4986270220816723199.a n = A103612 n

end A103612

/-! ## A103612.P13048977471931604080

`A051724(A104768(n)/2)`
-/

namespace A103612.P13048977471931604080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051724 (SequenceMachineLib.roundAway ((A104768 n : ℚ) / 2)).toNat

end

end A103612.P13048977471931604080

namespace A103612

/-- `A051724(A104768(n)/2)` -/
def P13048977471931604080.Spec : Prop :=
  ∀ n, P13048977471931604080.a n = A103612 n

end A103612

/-! ## A103612.P987241981228533801

`A000194(A104768(n)/4)`
-/

namespace A103612.P987241981228533801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000194 (SequenceMachineLib.roundAway ((A104768 n : ℚ) / 4)).toNat

end

end A103612.P987241981228533801

namespace A103612

/-- `A000194(A104768(n)/4)` -/
def P987241981228533801.Spec : Prop :=
  ∀ n, P987241981228533801.a n = A103612 n

end A103612

/-! ## A103612.P2343565380939405504

`A025827(A104768(n)+7)`
-/

namespace A103612.P2343565380939405504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025827 (A104768 n + 7).toNat

end

end A103612.P2343565380939405504

namespace A103612

/-- `A025827(A104768(n)+7)` -/
def P2343565380939405504.Spec : Prop :=
  ∀ n, P2343565380939405504.a n = A103612 n

end A103612

/-! ## A103612.P15026349020241975795

`A007376(lcm(3, A104768(n)))`
-/

namespace A103612.P15026349020241975795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007376 (Int.lcm 3 (A104768 n))

end

end A103612.P15026349020241975795

namespace A103612

/-- `A007376(lcm(3, A104768(n)))` -/
def P15026349020241975795.Spec : Prop :=
  ∀ n, P15026349020241975795.a n = A103612 n

end A103612

/-! ## A103612.P15608087788425714614

`∑{e}[A104768(n), A001222(#)]`
-/

namespace A103612.P15608087788425714614
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104768 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A001222 (Nat.factorization (f1 n).natAbs p)

end

end A103612.P15608087788425714614

namespace A103612

/-- `∑{e}[A104768(n), A001222(#)]` -/
def P15608087788425714614.Spec : Prop :=
  ∀ n, P15608087788425714614.a n = A103612 n

end A103612

/-! ## A103612.P2348431256494927142

`∑{e}[A104768(n), A007318(#)]`
-/

namespace A103612.P2348431256494927142
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104768 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A007318 (Nat.factorization (f1 n).natAbs p)

end

end A103612.P2348431256494927142

namespace A103612

/-- `∑{e}[A104768(n), A007318(#)]` -/
def P2348431256494927142.Spec : Prop :=
  ∀ n, P2348431256494927142.a n = A103612 n

end A103612

/-! ## A103612.P15431738243362239539

`∑{e}[A104768(n), A104762(#)]`
-/

namespace A103612.P15431738243362239539
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104768 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A104762 (Nat.factorization (f1 n).natAbs p)

end

end A103612.P15431738243362239539

namespace A103612

/-- `∑{e}[A104768(n), A104762(#)]` -/
def P15431738243362239539.Spec : Prop :=
  ∀ n, P15431738243362239539.a n = A103612 n

end A103612

/-! ## A103612.P9465650656615700418

`A001222(∏{e}[A104768(n), #])`
-/

namespace A103612.P9465650656615700418
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104768 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p)

end

end A103612.P9465650656615700418

namespace A103612

/-- `A001222(∏{e}[A104768(n), #])` -/
def P9465650656615700418.Spec : Prop :=
  ∀ n, P9465650656615700418.a n = A103612 n

end A103612

/-! ## A103612.P12555747164321430160

`A032741(∏{e}[A104768(n), #])`
-/

namespace A103612.P12555747164321430160
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104768 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p)

end

end A103612.P12555747164321430160

namespace A103612

/-- `A032741(∏{e}[A104768(n), #])` -/
def P12555747164321430160.Spec : Prop :=
  ∀ n, P12555747164321430160.a n = A103612 n

end A103612

/-! ## A103612.P11424451408566211873

`A001222(abs(1-A104768(n)))`
-/

namespace A103612.P11424451408566211873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 |1 - A104768 n|.toNat

end

end A103612.P11424451408566211873

namespace A103612

/-- `A001222(abs(1-A104768(n)))` -/
def P11424451408566211873.Spec : Prop :=
  ∀ n, P11424451408566211873.a n = A103612 n

end A103612

/-! ## A103612.P6370681649255755867

`A001222(A104768(n)+2)-1`
-/

namespace A103612.P6370681649255755867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A104768 n + 2).toNat - 1

end

end A103612.P6370681649255755867

namespace A103612

/-- `A001222(A104768(n)+2)-1` -/
def P6370681649255755867.Spec : Prop :=
  ∀ n, P6370681649255755867.a n = A103612 n

end A103612

/-!
# A103615: Number of zeros in A103542(n) (binary equivalent of A102370(n)).

The programs for A103615, there is no canonical definition to state claims against.
-/

/-! ## A103615.P10742388177717262678

`A023416(A102370(n))`
-/

namespace A103615.P10742388177717262678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023416 (A102370 n).toNat

end

end A103615.P10742388177717262678

/-! ## A103615.P3517838951506588523

`∑{digits}[A103542(n), 1-#]`
-/

namespace A103615.P3517838951506588523
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103542 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => 1 - (x : ℤ)).sum

end

end A103615.P3517838951506588523

/-! ## A103615.P3869007176024441360

`abs(∑{digits}[A103542(n), A023443(#)])`
-/

namespace A103615.P3869007176024441360
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103542 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A023443 x).sum|

end

end A103615.P3869007176024441360

/-! ## A103615.P17330713431557601108

`abs(∑{digits}[A103542(n), A181976(#)])`
-/

namespace A103615.P17330713431557601108
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103542 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A181976 x).sum|

end

end A103615.P17330713431557601108

/-! ## A103615.P1064254523465531184

`∑{digits}[A103542(n), A181976(#)]%A000041(n+4)`
-/

namespace A103615.P1064254523465531184
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103542 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A181976 x).sum (A000041 (n + 4))

end

end A103615.P1064254523465531184

/-! ## A103615.P2614796726080652915

`A023416(A105023(n)+n)`
-/

namespace A103615.P2614796726080652915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023416 (A105023 n + (n : ℤ)).toNat

end

end A103615.P2614796726080652915

/-! ## A103615.P10027563012224324313

`A023416(2*A103185(n)+n)`
-/

namespace A103615.P10027563012224324313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023416 (2 * A103185 n + (n : ℤ)).toNat

end

end A103615.P10027563012224324313

/-! ## A103615.P6559293083061993054

`A080791(A102370(A000038(n)+n))`
-/

namespace A103615.P6559293083061993054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080791 (A102370 (A000038 n + (n : ℤ)).toNat).toNat

end

end A103615.P6559293083061993054

/-! ## A103615.P4569159986972716452

`A103586(n)-A000120(A102370(n))`
-/

namespace A103615.P4569159986972716452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103586 n - A000120 (A102370 n).toNat

end

end A103615.P4569159986972716452

/-! ## A103615.P15930515214299591188

`A080791(or(A000038(n), A102370(n)))`
-/

namespace A103615.P15930515214299591188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080791 (Int.lor (A000038 n) (A102370 n)).toNat

end

end A103615.P15930515214299591188

/-! ## A103615.P6690928679508168110

`A080791(xor(A000038(n), A102370(n)))`
-/

namespace A103615.P6690928679508168110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080791 (Int.xor (A000038 n) (A102370 n)).toNat

end

end A103615.P6690928679508168110

/-! ## A103615.P15507779663486618879

`A023416(A103185(n)+A103185(n)+n)`
-/

namespace A103615.P15507779663486618879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023416 (A103185 n + (A103185 n + (n : ℤ))).toNat

end

end A103615.P15507779663486618879

/-! ## A103615.P3346630319566526145

`A070939(A102370(n))-A000120(A105104(n))`
-/

namespace A103615.P3346630319566526145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070939 (A102370 n).toNat - A000120 (A105104 n).toNat

end

end A103615.P3346630319566526145

/-! ## A103615.P17629489558027305884

`A103586(n)-A089400(n)`
-/

namespace A103615.P17629489558027305884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103586 n - A089400 n

end

end A103615.P17629489558027305884

/-! ## A103615.P1580564792283868286

`A070939(A070939(n)+n)-A089400(n)`
-/

namespace A103615.P1580564792283868286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070939 (A070939 n + (n : ℤ)).toNat - A089400 n

end

end A103615.P1580564792283868286

/-!
# A103618: Number of steps required for n to reach a digit count invariant or cycle loop under the 'Look and Say' function A045918.

The programs for A103618, there is no canonical definition to state claims against.
-/

/-! ## A103618.P7270298287105705575

`A036212(n)-1`
-/

namespace A103618.P7270298287105705575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036212 n - 1

end

end A103618.P7270298287105705575

/-! ## A103618.P4453961220048538078

`A057918(A036212(n)²)`
-/

namespace A103618.P4453961220048538078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057918 (A036212 n ^ 2).toNat

end

end A103618.P4453961220048538078

/-! ## A103618.P7641956515649205021

`A086520(A036212(n)²)`
-/

namespace A103618.P7641956515649205021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086520 (A036212 n ^ 2).toNat

end

end A103618.P7641956515649205021

/-! ## A103618.P5560694902675237637

`A088226(A036212(n)²)`
-/

namespace A103618.P5560694902675237637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088226 (A036212 n ^ 2).toNat

end

end A103618.P5560694902675237637

/-! ## A103618.P16910885777653391241

`A259361(A036212(n)²)`
-/

namespace A103618.P16910885777653391241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259361 (A036212 n ^ 2).toNat

end

end A103618.P16910885777653391241

/-! ## A103618.P16400859308135922924

`A059169(4*A036212(n))`
-/

namespace A103618.P16400859308135922924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059169 (4 * A036212 n).toNat

end

end A103618.P16400859308135922924

/-! ## A103618.P225757544088620997

`A308781(n)`
-/

namespace A103618.P225757544088620997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308781 n

end

end A103618.P225757544088620997

/-!
# A103619: Number of permutations of n elements admitting a cube root.

The programs for A103619, there is no canonical definition to state claims against.
-/

/-! ## A103619.P9889992186084766693

`A247005(∑[n+4]+2)`
-/

namespace A103619.P9889992186084766693
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247005 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A103619.P9889992186084766693

/-! ## A103619.P1688370668675567102

`(n-A059448(a(n-1)))*a(n-1)` with `a(0)=1`
-/

namespace A103619.P1688370668675567102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ((n : ℤ) - A059448 (a (n - 1)).toNat) * a (n - 1)

end

end A103619.P1688370668675567102

/-! ## A103619.P4995340573203512511

`(n-A078979(a(n-1)))*a(n-1)` with `a(0)=1`
-/

namespace A103619.P4995340573203512511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ((n : ℤ) - A078979 (a (n - 1)).toNat) * a (n - 1)

end

end A103619.P4995340573203512511

/-! ## A103619.P3256306090473199706

`A102736(A029965(n+1))`
-/

namespace A103619.P3256306090473199706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102736 (A029965 (n + 1)).toNat

end

end A103619.P3256306090473199706

/-! ## A103619.P15397155553321115356

`A014682(2*A102736(n))`
-/

namespace A103619.P15397155553321115356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (2 * A102736 n).toNat

end

end A103619.P15397155553321115356

/-!
# A103620: Number of permutations of n elements admitting a fourth root.

The programs for A103620, there is no canonical definition to state claims against.
-/

/-! ## A103620.P15689159969707335038

`A247005(A052905(n+2))`
-/

namespace A103620.P15689159969707335038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247005 (A052905 (n + 2)).toNat

end

end A103620.P15689159969707335038

/-! ## A103620.P14433939839254013609

`A247005(eq[4, A025581(n)])`
-/

namespace A103620.P14433939839254013609
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247005 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A103620.P14433939839254013609

/-! ## A103620.P6599240302032880741

`A247005(eq[5, A193739(n)])`
-/

namespace A103620.P6599240302032880741
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193739 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247005 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A103620.P6599240302032880741

/-! ## A103620.P441162815962269579

`A247005(eq[9, A099375(n)])`
-/

namespace A103620.P441162815962269579
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099375 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247005 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A103620.P441162815962269579

/-! ## A103620.P6942533188063394655

`A247005(A046691(n+3)-1)`
-/

namespace A103620.P6942533188063394655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247005 (A046691 (n + 3) - 1).toNat

end

end A103620.P6942533188063394655

/-! ## A103620.P8381802806041900091

`A247005(eq[2, A144257(n+1)-2])`
-/

namespace A103620.P8381802806041900091
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144257 (n + 1) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247005 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A103620.P8381802806041900091

/-! ## A103620.P964730817044244558

`A247005(eq[2, A144257(n+1)/2])`
-/

namespace A103620.P964730817044244558
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A144257 (n + 1) : ℚ) / 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247005 (SequenceMachineLib.nth (fun j => (f1 j : ℚ) = f2 j) n)

end

end A103620.P964730817044244558

/-! ## A103620.P7185851825231682954

`A247005(A145018(n+4)+2*n)`
-/

namespace A103620.P7185851825231682954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247005 (A145018 (n + 4) + (2 * n : ℤ)).toNat

end

end A103620.P7185851825231682954

/-!
# A103621: Trajectory of 7 under repeated application of the map n -> A102370(n).

The programs for A103621, the canonical program `A103621.P924444659250184572` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A103621 has offset 1).

The definition of A103621 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A103621.P924444659250184572

`a(n-1)+a(n-8)-a(n-9)` with `a(0)=7, a(1)=9, a(2)=11, a(3)=13, a(4)=23, a(5)=25, a(6)=27, a(7)=61, a(8)=71`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A103621

/-- `a(n-1)+a(n-8)-a(n-9)` -/
def P924444659250184572.Spec : Prop :=
  ∀ n, P924444659250184572.a n = A103621 (n + 1)

theorem P924444659250184572.correct : P924444659250184572.Spec := by
  intro n
  simp only [A103621, Nat.add_sub_cancel]

end A103621

/-! ## A103621.P4487302021238921732

`A158938(n+1)`
-/

namespace A103621.P4487302021238921732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158938 (n + 1)

end

end A103621.P4487302021238921732

namespace A103621

/-- `A158938(n+1)` -/
def P4487302021238921732.Spec : Prop :=
  ∀ n, P4487302021238921732.a n = A103621 (n + 1)

end A103621

/-! ## A103621.P3319197916389253828

`record[A158938(abs(1-n))]`
-/

namespace A103621.P3319197916389253828
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158938 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A103621.P3319197916389253828

namespace A103621

/-- `record[A158938(abs(1-n))]` -/
def P3319197916389253828.Spec : Prop :=
  ∀ n, P3319197916389253828.a n = A103621 (n + 1)

end A103621

/-! ## A103621.P10900166856859813303

`abs(A158938(abs(xor(n, -1))))`
-/

namespace A103621.P10900166856859813303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(A158938 |Int.xor (n : ℤ) (-1)|.toNat)|

end

end A103621.P10900166856859813303

namespace A103621

/-- `abs(A158938(abs(xor(n, -1))))` -/
def P10900166856859813303.Spec : Prop :=
  ∀ n, P10900166856859813303.a n = A103621 (n + 1)

end A103621

/-! ## A103621.P3729107349438046926

`or(1, A158938(-xor(n, -1)))`
-/

namespace A103621.P3729107349438046926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A158938 (-Int.xor (n : ℤ) (-1)).toNat)

end

end A103621.P3729107349438046926

namespace A103621

/-- `or(1, A158938(-xor(n, -1)))` -/
def P3729107349438046926.Spec : Prop :=
  ∀ n, P3729107349438046926.a n = A103621 (n + 1)

end A103621

/-! ## A103621.P12632145168139641554

`∩[A004273(n), A158938(n)]`
-/

namespace A103621.P12632145168139641554
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158938 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A103621.P12632145168139641554

namespace A103621

/-- `∩[A004273(n), A158938(n)]` -/
def P12632145168139641554.Spec : Prop :=
  ∀ n, (P12632145168139641554.a n : ℤ) = A103621 (n + 1)

end A103621

/-! ## A103621.P10391491279811132890

`∩[A004274(n), A158938(n)]`
-/

namespace A103621.P10391491279811132890
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004274 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158938 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A103621.P10391491279811132890

namespace A103621

/-- `∩[A004274(n), A158938(n)]` -/
def P10391491279811132890.Spec : Prop :=
  ∀ n, (P10391491279811132890.a n : ℤ) = A103621 (n + 1)

end A103621

/-! ## A103621.P5755744340406688463

`∩[A004281(n), A158938(n)]`
-/

namespace A103621.P5755744340406688463
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004281 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158938 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A103621.P5755744340406688463

namespace A103621

/-- `∩[A004281(n), A158938(n)]` -/
def P5755744340406688463.Spec : Prop :=
  ∀ n, (P5755744340406688463.a n : ℤ) = A103621 (n + 1)

end A103621

/-! ## A103621.P10563430784318369478

`∩[A020742(n), A158938(n)]`
-/

namespace A103621.P10563430784318369478
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020742 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158938 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A103621.P10563430784318369478

namespace A103621

/-- `∩[A020742(n), A158938(n)]` -/
def P10563430784318369478.Spec : Prop :=
  ∀ n, (P10563430784318369478.a n : ℤ) = A103621 (n + 1)

end A103621

/-! ## A103621.P17333780504813180078

`∩[A060747(n), A158938(n)]`
-/

namespace A103621.P17333780504813180078
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060747 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158938 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A103621.P17333780504813180078

namespace A103621

/-- `∩[A060747(n), A158938(n)]` -/
def P17333780504813180078.Spec : Prop :=
  ∀ n, (P17333780504813180078.a n : ℤ) = A103621 (n + 1)

end A103621

/-! ## A103621.P1438495070149060940

`∩[A062545(n), A158938(n)]`
-/

namespace A103621.P1438495070149060940
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062545 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158938 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A103621.P1438495070149060940

namespace A103621

/-- `∩[A062545(n), A158938(n)]` -/
def P1438495070149060940.Spec : Prop :=
  ∀ n, (P1438495070149060940.a n : ℤ) = A103621 (n + 1)

end A103621

/-! ## A103621.P13109254726508469969

`∩[A130773(n), A158938(n)]`
-/

namespace A103621.P13109254726508469969
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130773 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158938 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A103621.P13109254726508469969

namespace A103621

/-- `∩[A130773(n), A158938(n)]` -/
def P13109254726508469969.Spec : Prop :=
  ∀ n, (P13109254726508469969.a n : ℤ) = A103621 (n + 1)

end A103621

/-! ## A103621.P17186556426515178016

`∩[A158938(n), A163985(n)]`
-/

namespace A103621.P17186556426515178016
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158938 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163985 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A103621.P17186556426515178016

namespace A103621

/-- `∩[A158938(n), A163985(n)]` -/
def P17186556426515178016.Spec : Prop :=
  ∀ n, (P17186556426515178016.a n : ℤ) = A103621 (n + 1)

end A103621

/-! ## A103621.P17561764850886758538

`∩[A158938(n), A223134(n)]`
-/

namespace A103621.P17561764850886758538
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158938 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223134 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A103621.P17561764850886758538

namespace A103621

/-- `∩[A158938(n), A223134(n)]` -/
def P17561764850886758538.Spec : Prop :=
  ∀ n, (P17561764850886758538.a n : ℤ) = A103621 (n + 1)

end A103621

/-! ## A103621.P12836396494084736808

`∩[A004276(n), A158938(n)]`
-/

namespace A103621.P12836396494084736808
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004276 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158938 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A103621.P12836396494084736808

namespace A103621

/-- `∩[A004276(n), A158938(n)]` -/
def P12836396494084736808.Spec : Prop :=
  ∀ n, (P12836396494084736808.a n : ℤ) = A103621 (n + 1)

end A103621

/-! ## A103621.P6974749922815227861

`∩[A158938(n), A190941(n)]`
-/

namespace A103621.P6974749922815227861
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158938 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190941 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A103621.P6974749922815227861

namespace A103621

/-- `∩[A158938(n), A190941(n)]` -/
def P6974749922815227861.Spec : Prop :=
  ∀ n, (P6974749922815227861.a n : ℤ) = A103621 (n + 1)

end A103621

/-! ## A103621.P12080041813044664736

`∩[A079945(n), A158938(n)]`
-/

namespace A103621.P12080041813044664736
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079945 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158938 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A103621.P12080041813044664736

namespace A103621

/-- `∩[A079945(n), A158938(n)]` -/
def P12080041813044664736.Spec : Prop :=
  ∀ n, (P12080041813044664736.a n : ℤ) = A103621 (n + 1)

end A103621

/-! ## A103621.P4102537513256439078

`∩[A080587(n), A158938(n)]`
-/

namespace A103621.P4102537513256439078
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080587 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158938 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A103621.P4102537513256439078

namespace A103621

/-- `∩[A080587(n), A158938(n)]` -/
def P4102537513256439078.Spec : Prop :=
  ∀ n, (P4102537513256439078.a n : ℤ) = A103621 (n + 1)

end A103621

/-! ## A103621.P17799254623791431421

`∩[A081692(n), A158938(n)]`
-/

namespace A103621.P17799254623791431421
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081692 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158938 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A103621.P17799254623791431421

namespace A103621

/-- `∩[A081692(n), A158938(n)]` -/
def P17799254623791431421.Spec : Prop :=
  ∀ n, (P17799254623791431421.a n : ℤ) = A103621 (n + 1)

end A103621

/-! ## A103621.P13450404042469058093

`∩[A107750(n), A158938(n)]`
-/

namespace A103621.P13450404042469058093
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107750 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158938 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A103621.P13450404042469058093

namespace A103621

/-- `∩[A107750(n), A158938(n)]` -/
def P13450404042469058093.Spec : Prop :=
  ∀ n, (P13450404042469058093.a n : ℤ) = A103621 (n + 1)

end A103621

/-!
# A103623: a(n) = n^9 + n^8 + n^7 + n^6 + n^5 + n^4 + n^3 + n^2 + n + 1.

The programs for A103623, the canonical program `A103623.P4185738790634728714` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A103623 has offset 0).

The definition of A103623 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A103623.P4185738790634728714

`n*(n²+1+n)*(n^3+n^6+1)+1`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A103623

/-- `n*(n²+1+n)*(n^3+n^6+1)+1` -/
def P4185738790634728714.Spec : Prop :=
  ∀ n, (P4185738790634728714.a n : ℤ) = A103623 n

theorem P4185738790634728714.correct : P4185738790634728714.Spec := by
  intro n
  simp only [A103623]

end A103623

/-! ## A103623.P13356395714250981867

`(n+1)*A059839(n)`
-/

namespace A103623.P13356395714250981867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A059839 n

end

end A103623.P13356395714250981867

namespace A103623

/-- `(n+1)*A059839(n)` -/
def P13356395714250981867.Spec : Prop :=
  ∀ n, P13356395714250981867.a n = A103623 n

theorem P13356395714250981867.correct : P13356395714250981867.Spec := by
  intro n
  simp only [A103623, Nat.add_sub_cancel, A103623.P13356395714250981867.a, A103623.P4185738790634728714.a, A059839, A059839.P16029782246819662926.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A103623

/-! ## A103623.P16977863945848041456

`-xor(-1, A228293(n))`
-/

namespace A103623.P16977863945848041456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -Int.xor (-1) (A228293 n)

end

end A103623.P16977863945848041456

namespace A103623

/-- `-xor(-1, A228293(n))` -/
def P16977863945848041456.Spec : Prop :=
  ∀ n, P16977863945848041456.a n = A103623 n

end A103623

/-! ## A103623.P10990900343345703801

`∑{digits}[A050278(n+1), n^#]`
-/

namespace A103623.P10990900343345703801
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050278 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => n ^ x).sum

end

end A103623.P10990900343345703801

namespace A103623

/-- `∑{digits}[A050278(n+1), n^#]` -/
def P10990900343345703801.Spec : Prop :=
  ∀ n, (P10990900343345703801.a n : ℤ) = A103623 n

end A103623

/-! ## A103623.P1650790830300998112

`gcd(A024008(n), A228294(n))`
-/

namespace A103623.P1650790830300998112
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A024008 n) (A228294 n)

end

end A103623.P1650790830300998112

namespace A103623

/-- `gcd(A024008(n), A228294(n))` -/
def P1650790830300998112.Spec : Prop :=
  ∀ n, (P1650790830300998112.a n : ℤ) = A103623 n

end A103623

/-! ## A103623.P3442110560895600249

`(A000584(n)+1)*A053699(n)`
-/

namespace A103623.P3442110560895600249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000584 n + 1) * A053699 n

end

end A103623.P3442110560895600249

namespace A103623

/-- `(A000584(n)+1)*A053699(n)` -/
def P3442110560895600249.Spec : Prop :=
  ∀ n, P3442110560895600249.a n = A103623 n

theorem P3442110560895600249.correct : P3442110560895600249.Spec := by
  intro n
  simp only [A103623, Nat.add_sub_cancel, A103623.P3442110560895600249.a, A103623.P4185738790634728714.a, A000584, A000584.P5477385692209315495.a, A053699, A053699.P12401549741545410249.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A103623

/-! ## A103623.P18171021271532240968

`(2-A024003(n))*A053699(n)`
-/

namespace A103623.P18171021271532240968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - A024003 n) * A053699 n

end

end A103623.P18171021271532240968

namespace A103623

/-- `(2-A024003(n))*A053699(n)` -/
def P18171021271532240968.Spec : Prop :=
  ∀ n, P18171021271532240968.a n = A103623 n

theorem P18171021271532240968.correct : P18171021271532240968.Spec := by
  intro n
  simp only [A103623, Nat.add_sub_cancel, A103623.P18171021271532240968.a, A103623.P4185738790634728714.a, A024003, A024003.P9184774219160180946.a, A053699, A053699.P12401549741545410249.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A103623

/-! ## A103623.P17681996706165461689

`lcm(A059839(n), A394222(n+1))`
-/

namespace A103623.P17681996706165461689
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A059839 n) (A394222 (n + 1))

end

end A103623.P17681996706165461689

namespace A103623

/-- `lcm(A059839(n), A394222(n+1))` -/
def P17681996706165461689.Spec : Prop :=
  ∀ n, (P17681996706165461689.a n : ℤ) = A103623 n

end A103623

/-! ## A103623.P2176159255915641220

`xor(A038712(n+1), A228293(n))`
-/

namespace A103623.P2176159255915641220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A038712 (n + 1)) (A228293 n)

end

end A103623.P2176159255915641220

namespace A103623

/-- `xor(A038712(n+1), A228293(n))` -/
def P2176159255915641220.Spec : Prop :=
  ∀ n, P2176159255915641220.a n = A103623 n

end A103623

/-! ## A103623.P1404589648944271217

`(n+1)*A053699(n²)`
-/

namespace A103623.P1404589648944271217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A053699 (n ^ 2)

end

end A103623.P1404589648944271217

namespace A103623

/-- `(n+1)*A053699(n²)` -/
def P1404589648944271217.Spec : Prop :=
  ∀ n, P1404589648944271217.a n = A103623 n

theorem P1404589648944271217.correct : P1404589648944271217.Spec := by
  intro n
  simp only [A103623, Nat.add_sub_cancel, A103623.P1404589648944271217.a, A103623.P4185738790634728714.a, A053699, A053699.P12401549741545410249.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A103623

/-! ## A103623.P8802861104174773898

`(n+1)*(A027445(n²)+1)`
-/

namespace A103623.P8802861104174773898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A027445 (n ^ 2) + 1)

end

end A103623.P8802861104174773898

namespace A103623

/-- `(n+1)*(A027445(n²)+1)` -/
def P8802861104174773898.Spec : Prop :=
  ∀ n, P8802861104174773898.a n = A103623 n

theorem P8802861104174773898.correct : P8802861104174773898.Spec := by
  intro n
  simp only [A103623, Nat.add_sub_cancel, A103623.P8802861104174773898.a, A103623.P4185738790634728714.a, A027445, A027445.P2062535294747488403.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A103623

/-!
# A103624: Quotient F(n(n+1))/{F(n)*F(n+1)}, where F(n) is the n-th Fibonacci number A000045(n).

The programs for A103624, the canonical program `A103624.P803267642147067145` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A103624 has offset 1).

The definition of A103624 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A103624.P803267642147067145

`A000045((n+1)*(n+2))/(A000045(n+1)*A000045(n+2))`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A103624

/-- `A000045((n+1)*(n+2))/(A000045(n+1)*A000045(n+2))` -/
def P803267642147067145.Spec : Prop :=
  ∀ n, P803267642147067145.a n = (A103624 (n + 1) : ℚ)

end A103624

/-! ## A103624.P9968213543157615994

`record[gcd(A028412(n+1), A028412(n))]`
-/

namespace A103624.P9968213543157615994
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A028412 (n + 1)) (A028412 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A103624.P9968213543157615994

namespace A103624

/-- `record[gcd(A028412(n+1), A028412(n))]` -/
def P9968213543157615994.Spec : Prop :=
  ∀ n, (P9968213543157615994.a n : ℤ) = A103624 (n + 1)

end A103624

/-! ## A103624.P9918529022368381117

`A205505(n+1)/A000045(n+2)`
-/

namespace A103624.P9918529022368381117
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A205505 (n + 1) : ℚ) / (A000045 (n + 2) : ℚ)

end

end A103624.P9918529022368381117

namespace A103624

/-- `A205505(n+1)/A000045(n+2)` -/
def P9918529022368381117.Spec : Prop :=
  ∀ n, P9918529022368381117.a n = (A103624 (n + 1) : ℚ)

end A103624

/-! ## A103624.P10926532399887694647

`A000045((n+1)*(n+2))/∑[A000045(n+1)²]`
-/

namespace A103624.P10926532399887694647
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (n + 1) ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000045 ((n + 1) * (n + 2)) : ℚ) / ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ)

end

end A103624.P10926532399887694647

namespace A103624

/-- `A000045((n+1)*(n+2))/∑[A000045(n+1)²]` -/
def P10926532399887694647.Spec : Prop :=
  ∀ n, P10926532399887694647.a n = (A103624 (n + 1) : ℚ)

end A103624

/-! ## A103624.P18153943241984719584

`A001906(A000217(n+1))/A001654(n+1)`
-/

namespace A103624.P18153943241984719584
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001906 (A000217 (n + 1)).toNat : ℚ) / (A001654 (n + 1) : ℚ)

end

end A103624.P18153943241984719584

namespace A103624

/-- `A001906(A000217(n+1))/A001654(n+1)` -/
def P18153943241984719584.Spec : Prop :=
  ∀ n, P18153943241984719584.a n = (A103624 (n + 1) : ℚ)

end A103624

/-!
# A103625: a(n) = 3 + 7*a(n-2) + sqrt(1 + 48*a(n-2) + 48*a(n-2)^2), with a(1) = 0, a(2) = 0, a(3) = 2.

The programs for A103625, the canonical program `A103625.P14672347064880178736` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A103625 has offset 1).

The definition of A103625 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A103625.P14672347064880178736

`3+7*a(n-2)+sqrt(1+48*a(n-2)+48*a(n-2)²)` with `a(0)=0, a(1)=0, a(2)=2`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A103625

/-- `3+7*a(n-2)+sqrt(1+48*a(n-2)+48*a(n-2)²)` -/
def P14672347064880178736.Spec : Prop :=
  ∀ n, P14672347064880178736.a n = (A103625 (n + 1) : ℝ)

end A103625

/-! ## A103625.P2152568937740111721

`A172475(Δ[A005246(n)²])`
-/

namespace A103625.P2152568937740111721
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005246 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172475 (f1 (n + 1) - f1 n).toNat

end

end A103625.P2152568937740111721

namespace A103625

/-- `A172475(Δ[A005246(n)²])` -/
def P2152568937740111721.Spec : Prop :=
  ∀ n, P2152568937740111721.a n = A103625 (n + 1)

end A103625

/-! ## A103625.P5574290686520746412

`A004277(A008986(n+1)-A097805(2*(n+2)))%A002577(n)`
-/

namespace A103625.P5574290686520746412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A004277 (A008986 (n + 1) - A097805 (2 * (n + 2))).toNat) (A002577 n)

end

end A103625.P5574290686520746412

namespace A103625

/-- `A004277(A008986(n+1)-A097805(2*(n+2)))%A002577(n)` -/
def P5574290686520746412.Spec : Prop :=
  ∀ n, P5574290686520746412.a n = A103625 (n + 1)

end A103625

/-!
# A103626: Expansion of (1 + x + x^2 + x^3 + x^5 + x^6 + x^7 - x^8 + x^10 + x^11 - 2*x^12 - x^13 - x^14)/(1 - x^4 - x^8 - x^12 + 2*x^16).

The programs for A103626, there is no canonical definition to state claims against.
-/

/-! ## A103626.P15672583150097500153

`A035451(n)^A035444(A035444(3*n))`
-/

namespace A103626.P15672583150097500153
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A035451 n : ℚ) ^ (A035444 (A035444 (3 * n)).toNat : ℤ)

end

end A103626.P15672583150097500153

/-! ## A103626.P9748308345313982693

`gcd(A025456(A086885(n+1)), A035451(n))`
-/

namespace A103626.P9748308345313982693
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A025456 (A086885 (n + 1)).toNat) (A035451 n)

end

end A103626.P9748308345313982693

/-! ## A103626.P10281047328266472099

`A238598(A002865(gcd(n, A035444(n))))`
-/

namespace A103626.P10281047328266472099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238598 (A002865 (Int.gcd (n : ℤ) (A035444 n))).toNat

end

end A103626.P10281047328266472099

/-! ## A103626.P6058515571407971185

`gcd(A035451(n), A238598(A002865(n)))`
-/

namespace A103626.P6058515571407971185
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A035451 n) (A238598 (A002865 n).toNat)

end

end A103626.P6058515571407971185

/-! ## A103626.P4435503384384258935

`A238598(A002865(n))^A035444(A035444(n))`
-/

namespace A103626.P4435503384384258935
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A238598 (A002865 n).toNat : ℚ) ^ (A035444 (A035444 n).toNat : ℤ)

end

end A103626.P4435503384384258935

/-!
# A103627: Let S(n) = {n,1,n}; sequence gives concatenation S(0), S(1), S(2), ...

The programs for A103627, the canonical program `A103627.P3723465905982573151` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A103627 has offset 0).

The definition of A103627 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A103627.P1487988812421525136

`C(floor(n/3), a(n-1))` with `a(0)=0`
-/

namespace A103627.P1487988812421525136
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  Nat.choose ⌊(n : ℚ) / 3⌋.toNat (a (n - 1))

end

end A103627.P1487988812421525136

namespace A103627

/-- `C(floor(n/3), a(n-1))` -/
def P1487988812421525136.Spec : Prop :=
  ∀ n, (P1487988812421525136.a n : ℤ) = A103627 n

end A103627

/-! ## A103627.P3723465905982573151

`2*a(n-3)-a(n-6)` with `a(0)=0, a(1)=1, a(2)=0, a(3)=1, a(4)=1, a(5)=1`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A103627

/-- `2*a(n-3)-a(n-6)` -/
def P3723465905982573151.Spec : Prop :=
  ∀ n, P3723465905982573151.a n = A103627 n

theorem P3723465905982573151.correct : P3723465905982573151.Spec := by
  intro n
  simp only [A103627]

end A103627

/-! ## A103627.P4325231155471578046

`gcd((n%3)%2, floor(n/3))`
-/

namespace A103627.P4325231155471578046
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd ((n % 3 % 2 : ℕ) : ℤ) ⌊(n : ℚ) / 3⌋

end

end A103627.P4325231155471578046

namespace A103627

/-- `gcd((n%3)%2, floor(n/3))` -/
def P4325231155471578046.Spec : Prop :=
  ∀ n, (P4325231155471578046.a n : ℤ) = A103627 n

end A103627

/-! ## A103627.P7218731915060291396

`floor(n/3)^Δ[round(2*n/3)]`
-/

namespace A103627.P7218731915060291396
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (2 * ((n : ℚ) / 3))

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (⌊(n : ℚ) / 3⌋ : ℚ) ^ (f1 (n + 1) - f1 n : ℤ)

end

end A103627.P7218731915060291396

namespace A103627

/-- `floor(n/3)^Δ[round(2*n/3)]` -/
def P7218731915060291396.Spec : Prop :=
  ∀ n, P7218731915060291396.a n = (A103627 n : ℚ)

end A103627

/-! ## A103627.P4352321037022867350

`C(floor(n/3), Δ[round(2*n/3)])`
-/

namespace A103627.P4352321037022867350
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (2 * ((n : ℚ) / 3))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose ⌊(n : ℚ) / 3⌋.toNat (f1 (n + 1) - f1 n).toNat

end

end A103627.P4352321037022867350

namespace A103627

/-- `C(floor(n/3), Δ[round(2*n/3)])` -/
def P4352321037022867350.Spec : Prop :=
  ∀ n, (P4352321037022867350.a n : ℤ) = A103627 n

end A103627

/-! ## A103627.P6628388080531266697

`abs(Δ[abs(A099471(n))])-1`
-/

namespace A103627.P6628388080531266697
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A099471 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n| - 1

end

end A103627.P6628388080531266697

namespace A103627

/-- `abs(Δ[abs(A099471(n))])-1` -/
def P6628388080531266697.Spec : Prop :=
  ∀ n, P6628388080531266697.a n = A103627 n

end A103627

/-! ## A103627.P5389833066332950077

`gcd(n*(n-2), A002264(n))`
-/

namespace A103627.P5389833066332950077
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd ((n : ℤ) * ((n : ℤ) - 2)) (A002264 n)

end

end A103627.P5389833066332950077

namespace A103627

/-- `gcd(n*(n-2), A002264(n))` -/
def P5389833066332950077.Spec : Prop :=
  ∀ n, (P5389833066332950077.a n : ℤ) = A103627 n

end A103627

/-! ## A103627.P358993786504024785

`A204418(n)+a(n-3)` with `a(0)=0, a(1)=1, a(2)=0`
-/

namespace A103627.P358993786504024785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 0] fun n a =>
  A204418 n + a (n - 3)

end

end A103627.P358993786504024785

namespace A103627

/-- `A204418(n)+a(n-3)` -/
def P358993786504024785.Spec : Prop :=
  ∀ n, P358993786504024785.a n = A103627 n

end A103627

/-! ## A103627.P9530030138301180268

`A329682(n)+a(n-3)` with `a(0)=0, a(1)=1, a(2)=0`
-/

namespace A103627.P9530030138301180268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 0] fun n a =>
  A329682 n + a (n - 3)

end

end A103627.P9530030138301180268

namespace A103627

/-- `A329682(n)+a(n-3)` -/
def P9530030138301180268.Spec : Prop :=
  ∀ n, P9530030138301180268.a n = A103627 n

end A103627

/-! ## A103627.P14894236738825657247

`A057979(A133310(n))`
-/

namespace A103627.P14894236738825657247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057979 (A133310 n).toNat

end

end A103627.P14894236738825657247

namespace A103627

/-- `A057979(A133310(n))` -/
def P14894236738825657247.Spec : Prop :=
  ∀ n, P14894236738825657247.a n = A103627 n

end A103627

/-! ## A103627.P8211931895530109409

`A131380(n)-A151842(n)`
-/

namespace A103627.P8211931895530109409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131380 n - A151842 n

end

end A103627.P8211931895530109409

namespace A103627

/-- `A131380(n)-A151842(n)` -/
def P8211931895530109409.Spec : Prop :=
  ∀ n, P8211931895530109409.a n = A103627 n

end A103627

/-! ## A103627.P2376496811268328132

`A110091(n)%A099254(n)`
-/

namespace A103627.P2376496811268328132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A110091 n) (A099254 n)

end

end A103627.P2376496811268328132

namespace A103627

/-- `A110091(n)%A099254(n)` -/
def P2376496811268328132.Spec : Prop :=
  ∀ n, P2376496811268328132.a n = A103627 n

end A103627

/-! ## A103627.P17722043387841530307

`gcd(A002264(n), A067998(n))`
-/

namespace A103627.P17722043387841530307
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002264 n) (A067998 n)

end

end A103627.P17722043387841530307

namespace A103627

/-- `gcd(A002264(n), A067998(n))` -/
def P17722043387841530307.Spec : Prop :=
  ∀ n, (P17722043387841530307.a n : ℤ) = A103627 n

end A103627

/-! ## A103627.P16873385123916098797

`gcd(A125301(n), A131358(n))`
-/

namespace A103627.P16873385123916098797
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A125301 n) (A131358 n)

end

end A103627.P16873385123916098797

namespace A103627

/-- `gcd(A125301(n), A131358(n))` -/
def P16873385123916098797.Spec : Prop :=
  ∀ n, (P16873385123916098797.a n : ℤ) = A103627 n

end A103627

/-! ## A103627.P4673579586064533032

`gcd(A112986(n), A146298(n))`
-/

namespace A103627.P4673579586064533032
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A112986 n) (A146298 n)

end

end A103627.P4673579586064533032

namespace A103627

/-- `gcd(A112986(n), A146298(n))` -/
def P4673579586064533032.Spec : Prop :=
  ∀ n, (P4673579586064533032.a n : ℤ) = A103627 n

end A103627

/-! ## A103627.P14758718900956474526

`A008620(n*A204418(n))-A204418(n)`
-/

namespace A103627.P14758718900956474526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008620 ((n : ℤ) * A204418 n).toNat - A204418 n

end

end A103627.P14758718900956474526

namespace A103627

/-- `A008620(n*A204418(n))-A204418(n)` -/
def P14758718900956474526.Spec : Prop :=
  ∀ n, P14758718900956474526.a n = A103627 n

end A103627

/-! ## A103627.P3805283882277405

`A057979(A131380(n+1)-1)`
-/

namespace A103627.P3805283882277405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057979 (A131380 (n + 1) - 1).toNat

end

end A103627.P3805283882277405

namespace A103627

/-- `A057979(A131380(n+1)-1)` -/
def P3805283882277405.Spec : Prop :=
  ∀ n, P3805283882277405.a n = A103627 n

end A103627

/-! ## A103627.P11822701727726995944

`Δ[A008130(n)+Δ[A002264(n)]]`
-/

namespace A103627.P11822701727726995944
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008130 n + (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A103627.P11822701727726995944

namespace A103627

/-- `Δ[A008130(n)+Δ[A002264(n)]]` -/
def P11822701727726995944.Spec : Prop :=
  ∀ n, P11822701727726995944.a n = A103627 n

end A103627

/-! ## A103627.P10006080223260386260

`A004396(n)-A029578(A004523(n+1))`
-/

namespace A103627.P10006080223260386260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 n - A029578 (A004523 (n + 1)).toNat

end

end A103627.P10006080223260386260

namespace A103627

/-- `A004396(n)-A029578(A004523(n+1))` -/
def P10006080223260386260.Spec : Prop :=
  ∀ n, P10006080223260386260.a n = A103627 n

end A103627

/-!
# A103628: Total sum of parts of multiplicity 1 in all partitions of n.

The programs for A103628, there is no canonical definition to state claims against.
-/

/-! ## A103628.P17496469005319064953

`A066186(n)-A194544(n)`
-/

namespace A103628.P17496469005319064953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066186 n - A194544 n

end

end A103628.P17496469005319064953

/-! ## A103628.P14568792290697352980

`3*A014153(n)/4-3*A000070(n)/4-A270143(n+1)/4+A087787(n)/4`
-/

namespace A103628.P14568792290697352980
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 * A014153 n : ℚ) / 4 - (3 * A000070 n : ℚ) / 4 - (A270143 (n + 1) : ℚ) / 4 + (A087787 n : ℚ) / 4

end

end A103628.P14568792290697352980

/-! ## A103628.P13715247423059600970

`∑[∑[A270143(n)+A182712(n)]]`
-/

namespace A103628.P13715247423059600970
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270143 n + A182712 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A103628.P13715247423059600970

/-! ## A103628.P8839343178859809124

`A103650(n+1)+A000097(n)-A000070(n)`
-/

namespace A103628.P8839343178859809124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103650 (n + 1) + (A000097 n - A000070 n)

end

end A103628.P8839343178859809124

/-! ## A103628.P8139550131187677916

`A103650(n+1)+A093695(n)/2`
-/

namespace A103628.P8139550131187677916
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A103650 (n + 1) : ℚ) + (A093695 n : ℚ) / 2

end

end A103628.P8139550131187677916

/-! ## A103628.P3334275836580106470

`n*A000041(n)-A194544(n)`
-/

namespace A103628.P3334275836580106470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A000041 n - A194544 n

end

end A103628.P3334275836580106470

/-! ## A103628.P865769823745526670

`A220909(n)/2-A194544(n)`
-/

namespace A103628.P865769823745526670
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A220909 n : ℚ) / 2 - (A194544 n : ℚ)

end

end A103628.P865769823745526670

/-! ## A103628.P16150918077862393569

`n*A035363(2*n)-A194544(n)`
-/

namespace A103628.P16150918077862393569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A035363 (2 * n) - A194544 n

end

end A103628.P16150918077862393569

/-! ## A103628.P10486438220817909522

`A276425(n)+A276423(n)`
-/

namespace A103628.P10486438220817909522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276425 n + A276423 n

end

end A103628.P10486438220817909522

/-! ## A103628.P14557449666883028171

`A182094(n)-(A194544(n)+A188814(n))`
-/

namespace A103628.P14557449666883028171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182094 n - (A194544 n + A188814 n)

end

end A103628.P14557449666883028171

/-! ## A103628.P7474833601761846229

`A222730(∑[n]+1)`
-/

namespace A103628.P7474833601761846229
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222730 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A103628.P7474833601761846229

/-!
# A103631: Triangle read by rows: T(n,k) = abs(qStirling2(n,k,q)) for q = -1, with 0 <= k <= n.

The programs for A103631, the canonical program `A103631.P9894107747466964003` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A103631 has offset 0).

The definition of A103631 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A103631.P1658139694262865125

`T(n-1,k-1)+(1+(-1)^(col(n)+1))/2*T(n-1,k)` with `a(0)=1`
-/

namespace A103631.P1658139694262865125
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  SequenceMachineLib.triUpLeft a n + (1 + (-1) ^ (SequenceMachineLib.triCol n + 1) : ℚ) / 2 * SequenceMachineLib.triUp a n

end

end A103631.P1658139694262865125

namespace A103631

/-- `T(n-1,k-1)+(1+(-1)^(col(n)+1))/2*T(n-1,k)` -/
def P1658139694262865125.Spec : Prop :=
  ∀ n, P1658139694262865125.a n = (A103631 n : ℚ)

end A103631

/-! ## A103631.P13360822351910304714

`abs(A133607(n))`
-/

namespace A103631.P13360822351910304714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A133607 n|

end

end A103631.P13360822351910304714

namespace A103631

/-- `abs(A133607(n))` -/
def P13360822351910304714.Spec : Prop :=
  ∀ n, P13360822351910304714.a n = A103631 n

end A103631

/-! ## A103631.P13698147058759060031

`gcd(A000038(n), A133607(n))`
-/

namespace A103631.P13698147058759060031
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A133607 n)

end

end A103631.P13698147058759060031

namespace A103631

/-- `gcd(A000038(n), A133607(n))` -/
def P13698147058759060031.Spec : Prop :=
  ∀ n, (P13698147058759060031.a n : ℤ) = A103631 n

end A103631

/-! ## A103631.P12947411581009796225

`lcm(A020985(n), A133607(n))`
-/

namespace A103631.P12947411581009796225
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A020985 n) (A133607 n)

end

end A103631.P12947411581009796225

namespace A103631

/-- `lcm(A020985(n), A133607(n))` -/
def P12947411581009796225.Spec : Prop :=
  ∀ n, (P12947411581009796225.a n : ℤ) = A103631 n

end A103631

/-! ## A103631.P1094740216765857684

`abs(A065941(n)-A162514(n))`
-/

namespace A103631.P1094740216765857684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A065941 n - A162514 n|

end

end A103631.P1094740216765857684

namespace A103631

/-- `abs(A065941(n)-A162514(n))` -/
def P1094740216765857684.Spec : Prop :=
  ∀ n, P1094740216765857684.a n = A103631 n

end A103631

/-! ## A103631.P9894107747466964003

`A065941(n+1)+A065941(n)-A374439(n+1)`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A103631

/-- `A065941(n+1)+A065941(n)-A374439(n+1)` -/
def P9894107747466964003.Spec : Prop :=
  ∀ n, P9894107747466964003.a n = A103631 n

theorem P9894107747466964003.correct : P9894107747466964003.Spec := by
  intro n
  simp only [A103631]

end A103631

/-! ## A103631.P16663429102714473511

`A153764(A061579(n))`
-/

namespace A103631.P16663429102714473511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153764 (A061579 n).toNat

end

end A103631.P16663429102714473511

namespace A103631

/-- `A153764(A061579(n))` -/
def P16663429102714473511.Spec : Prop :=
  ∀ n, P16663429102714473511.a n = A103631 n

end A103631

/-! ## A103631.P15592907865439965503

`A153764(A038722(n+1)-1)`
-/

namespace A103631.P15592907865439965503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153764 (A038722 (n + 1) - 1).toNat

end

end A103631.P15592907865439965503

namespace A103631

/-- `A153764(A038722(n+1)-1)` -/
def P15592907865439965503.Spec : Prop :=
  ∀ n, P15592907865439965503.a n = A103631 n

end A103631

/-! ## A103631.P8891922276274372357

`A153764(A093995(n+1)-(n+1))`
-/

namespace A103631.P8891922276274372357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153764 (A093995 (n + 1) - (n + 1 : ℤ)).toNat

end

end A103631.P8891922276274372357

namespace A103631

/-- `A153764(A093995(n+1)-(n+1))` -/
def P8891922276274372357.Spec : Prop :=
  ∀ n, P8891922276274372357.a n = A103631 n

end A103631

/-! ## A103631.P10745169332559011394

`A153764(A002378(n)%A014132(n+1))`
-/

namespace A103631.P10745169332559011394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153764 (Int.tmod (A002378 n) (A014132 (n + 1))).toNat

end

end A103631.P10745169332559011394

namespace A103631

/-- `A153764(A002378(n)%A014132(n+1))` -/
def P10745169332559011394.Spec : Prop :=
  ∀ n, P10745169332559011394.a n = A103631 n

end A103631

/-! ## A103631.P5882280467016783410

`A153764(A038722(n+2))`
-/

namespace A103631.P5882280467016783410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153764 (A038722 (n + 2)).toNat

end

end A103631.P5882280467016783410

namespace A103631

/-- `A153764(A038722(n+2))` -/
def P5882280467016783410.Spec : Prop :=
  ∀ n, P5882280467016783410.a n = A103631 n

end A103631

/-! ## A103631.P486428066514239171

`A000196(A133607(n)²)`
-/

namespace A103631.P486428066514239171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A133607 n ^ 2).toNat

end

end A103631.P486428066514239171

namespace A103631

/-- `A000196(A133607(n)²)` -/
def P486428066514239171.Spec : Prop :=
  ∀ n, P486428066514239171.a n = A103631 n

end A103631

/-!
# A103632: Expansion of (1 - x + x^2)/(1 - x - x^4).

The programs for A103632, the canonical program `A103632.P3168371361197844340` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A103632 has offset 0).

The definition of A103632 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1-x+x^2)/(1-x-x^4))` (program `A103632.P3168371361197844340`, by `A103632.P3168371361197844340.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A103632.P3168371361197844340

`ogf((1-x+x^2)/(1-x-x^4))`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A103632

/-- `ogf((1-x+x^2)/(1-x-x^4))` -/
def P3168371361197844340.Spec : Prop :=
  ∀ n, P3168371361197844340.a n = A103632 n

theorem P3168371361197844340.correct : P3168371361197844340.Spec := by
  intro n
  simp only [A103632]

end A103632

/-! ## A103632.P16639763068055507504

`a(n-1)+a(n-4)` with `a(0)=1, a(1)=0, a(2)=1, a(3)=1`
-/

namespace A103632.P16639763068055507504
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 0, 1, 1] fun n a =>
  a (n - 1) + a (n - 4)

end

end A103632.P16639763068055507504

namespace A103632

/-- `a(n-1)+a(n-4)` -/
def P16639763068055507504.Spec : Prop :=
  ∀ n, (P16639763068055507504.a n : ℤ) = A103632 n

end A103632

/-! ## A103632.P16417612093045348114

`A226517(2*(n+3))`
-/

namespace A103632.P16417612093045348114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226517 (2 * (n + 3))

end

end A103632.P16417612093045348114

namespace A103632

/-- `A226517(2*(n+3))` -/
def P16417612093045348114.Spec : Prop :=
  ∀ n, P16417612093045348114.a n = A103632 n

end A103632

/-! ## A103632.P9717043283930997372

`A017898(n+2)+A017898(n)`
-/

namespace A103632.P9717043283930997372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017898 (n + 2) + A017898 n

end

end A103632.P9717043283930997372

namespace A103632

/-- `A017898(n+2)+A017898(n)` -/
def P9717043283930997372.Spec : Prop :=
  ∀ n, P9717043283930997372.a n = A103632 n

end A103632

/-! ## A103632.P4246358136064758613

`A003269(n+2)-a(n-1)` with `a(0)=1`
-/

namespace A103632.P4246358136064758613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A003269 (n + 2) - a (n - 1)

end

end A103632.P4246358136064758613

namespace A103632

/-- `A003269(n+2)-a(n-1)` -/
def P4246358136064758613.Spec : Prop :=
  ∀ n, P4246358136064758613.a n = A103632 n

end A103632

/-! ## A103632.P15374542565896733723

`Δ[A003269(n+2)+A003269(n)]`
-/

namespace A103632.P15374542565896733723
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003269 (n + 2) + A003269 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A103632.P15374542565896733723

namespace A103632

/-- `Δ[A003269(n+2)+A003269(n)]` -/
def P15374542565896733723.Spec : Prop :=
  ∀ n, P15374542565896733723.a n = A103632 n

end A103632

/-! ## A103632.P7138777392263026635

`A078467(n+1)-2*A003269(n)`
-/

namespace A103632.P7138777392263026635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078467 (n + 1) - 2 * A003269 n

end

end A103632.P7138777392263026635

namespace A103632

/-- `A078467(n+1)-2*A003269(n)` -/
def P7138777392263026635.Spec : Prop :=
  ∀ n, P7138777392263026635.a n = A103632 n

end A103632

/-! ## A103632.P5776608815178731951

`A168639(n+1)-(A098578(n)+A003269(n))`
-/

namespace A103632.P5776608815178731951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168639 (n + 1) - (A098578 n + A003269 n)

end

end A103632.P5776608815178731951

namespace A103632

/-- `A168639(n+1)-(A098578(n)+A003269(n))` -/
def P5776608815178731951.Spec : Prop :=
  ∀ n, P5776608815178731951.a n = A103632 n

end A103632

/-! ## A103632.P15434105565015287076

`Δ[Δ[A003411(n+2)]]`
-/

namespace A103632.P15434105565015287076
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003411 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A103632.P15434105565015287076

namespace A103632

/-- `Δ[Δ[A003411(n+2)]]` -/
def P15434105565015287076.Spec : Prop :=
  ∀ n, P15434105565015287076.a n = A103632 n

end A103632

/-!
# A103633: Triangle read by rows: triangle of repeated stepped binomial coefficients.

The programs for A103633, the canonical program `A103633.P7125411254599608659` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A103633 has offset 0).

The definition of A103633 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A103633.P7125411254599608659

`C(floor(row(n)/2), row(n)-col(n))`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A103633

/-- `C(floor(row(n)/2), row(n)-col(n))` -/
def P7125411254599608659.Spec : Prop :=
  ∀ n, (P7125411254599608659.a n : ℤ) = A103633 n

theorem P7125411254599608659.correct : P7125411254599608659.Spec := by
  intro n
  simp only [A103633]

end A103633

/-! ## A103633.P1305340660936771345

`A152815(A061579(n))`
-/

namespace A103633.P1305340660936771345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152815 (A061579 n).toNat

end

end A103633.P1305340660936771345

namespace A103633

/-- `A152815(A061579(n))` -/
def P1305340660936771345.Spec : Prop :=
  ∀ n, P1305340660936771345.a n = A103633 n

end A103633

/-! ## A103633.P9084215005613937445

`A152815(A038722(n+2))`
-/

namespace A103633.P9084215005613937445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152815 (A038722 (n + 2)).toNat

end

end A103633.P9084215005613937445

namespace A103633

/-- `A152815(A038722(n+2))` -/
def P9084215005613937445.Spec : Prop :=
  ∀ n, P9084215005613937445.a n = A103633 n

end A103633

/-! ## A103633.P7918497870598387440

`A152815(A114327(n)+n)`
-/

namespace A103633.P7918497870598387440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152815 (A114327 n + (n : ℤ)).toNat

end

end A103633.P7918497870598387440

namespace A103633

/-- `A152815(A114327(n)+n)` -/
def P7918497870598387440.Spec : Prop :=
  ∀ n, P7918497870598387440.a n = A103633 n

end A103633

/-! ## A103633.P75912282577911054

`A101688(n)*A152830(n)`
-/

namespace A103633.P75912282577911054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101688 n * A152830 n

end

end A103633.P75912282577911054

namespace A103633

/-- `A101688(n)*A152830(n)` -/
def P75912282577911054.Spec : Prop :=
  ∀ n, P75912282577911054.a n = A103633 n

end A103633

/-! ## A103633.P11584893064825457414

`lcm(A152830(n), A187034(n))`
-/

namespace A103633.P11584893064825457414
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A152830 n) (A187034 n)

end

end A103633.P11584893064825457414

namespace A103633

/-- `lcm(A152830(n), A187034(n))` -/
def P11584893064825457414.Spec : Prop :=
  ∀ n, (P11584893064825457414.a n : ℤ) = A103633 n

end A103633

/-! ## A103633.P2270697807022532954

`A152815(A093995(n+1)-(n+1))`
-/

namespace A103633.P2270697807022532954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152815 (A093995 (n + 1) - (n + 1 : ℤ)).toNat

end

end A103633.P2270697807022532954

namespace A103633

/-- `A152815(A093995(n+1)-(n+1))` -/
def P2270697807022532954.Spec : Prop :=
  ∀ n, P2270697807022532954.a n = A103633 n

end A103633

/-! ## A103633.P16299745658950574875

`C(A003056(floor(n/4)), A004736(n+1)-1)`
-/

namespace A103633.P16299745658950574875
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A003056 ⌊(n : ℚ) / 4⌋.toNat).toNat (A004736 (n + 1) - 1).toNat

end

end A103633.P16299745658950574875

namespace A103633

/-- `C(A003056(floor(n/4)), A004736(n+1)-1)` -/
def P16299745658950574875.Spec : Prop :=
  ∀ n, (P16299745658950574875.a n : ℤ) = A103633 n

end A103633

/-! ## A103633.P2714115303246870754

`C(A003056(A002265(n)), A025581(n))`
-/

namespace A103633.P2714115303246870754
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A003056 (A002265 n).toNat).toNat (A025581 n).toNat

end

end A103633.P2714115303246870754

namespace A103633

/-- `C(A003056(A002265(n)), A025581(n))` -/
def P2714115303246870754.Spec : Prop :=
  ∀ n, (P2714115303246870754.a n : ℤ) = A103633 n

end A103633

/-! ## A103633.P926221166874399510

`C(A004526(A003056(n)), A025581(n))`
-/

namespace A103633.P926221166874399510
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A004526 (A003056 n).toNat).toNat (A025581 n).toNat

end

end A103633.P926221166874399510

namespace A103633

/-- `C(A004526(A003056(n)), A025581(n))` -/
def P926221166874399510.Spec : Prop :=
  ∀ n, (P926221166874399510.a n : ℤ) = A103633 n

end A103633

/-! ## A103633.P13345189932987623422

`C(A057554(A003056(n+1)²), A057554(2*(n+1)))`
-/

namespace A103633.P13345189932987623422
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A057554 (A003056 (n + 1) ^ 2).toNat).toNat (A057554 (2 * (n + 1))).toNat

end

end A103633.P13345189932987623422

namespace A103633

/-- `C(A057554(A003056(n+1)²), A057554(2*(n+1)))` -/
def P13345189932987623422.Spec : Prop :=
  ∀ n, (P13345189932987623422.a n : ℤ) = A103633 n

end A103633

/-! ## A103633.P16993539914916809671

`A178112(A185180(n+1)-1)`
-/

namespace A103633.P16993539914916809671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178112 (A185180 (n + 1) - 1).toNat

end

end A103633.P16993539914916809671

namespace A103633

/-- `A178112(A185180(n+1)-1)` -/
def P16993539914916809671.Spec : Prop :=
  ∀ n, P16993539914916809671.a n = A103633 n

end A103633

/-! ## A103633.P15431216886312150060

`A152830(n)%A309858(n)`
-/

namespace A103633.P15431216886312150060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A152830 n) (A309858 n)

end

end A103633.P15431216886312150060

namespace A103633

/-- `A152830(n)%A309858(n)` -/
def P15431216886312150060.Spec : Prop :=
  ∀ n, P15431216886312150060.a n = A103633 n

end A103633

/-!
# A103634: a(1) = 0; a(n) = the least k such that ((n+1)(n+2)(n+3)...(n+k))/((n-1)(n-2)(n-3)...(n-k)) is an integer (see A092935).

The programs for A103634, there is no canonical definition to state claims against.
-/

/-! ## A103634.P16300158802308389058

`n-A084115(A005247(A028310(n)))`
-/

namespace A103634.P16300158802308389058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A084115 (A005247 (A028310 n).toNat).toNat

end

end A103634.P16300158802308389058

/-! ## A103634.P4583281758151303301

`A290726(A080075(n+1)-1)-A046660(A070011(n+1))`
-/

namespace A103634.P4583281758151303301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290726 (A080075 (n + 1) - 1).toNat - A046660 (A070011 (n + 1)).toNat

end

end A103634.P4583281758151303301

/-!
# A103636: a(n) = Sum_{d|n, d==0 mod 3} d^2.

The programs for A103636, the canonical program `A103636.P3747029318413453185` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A103636 has offset 1).

The definition of A103636 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A103636.P11366108893168390309

`∑{d}[∑[∑[n+1]]%(n+1), ((n+1)/#)²]`
-/

namespace A103636.P11366108893168390309
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f2 j) % (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), ((n + 1 : ℚ) / (d : ℚ)) ^ 2

end

end A103636.P11366108893168390309

namespace A103636

/-- `∑{d}[∑[∑[n+1]]%(n+1), ((n+1)/#)²]` -/
def P11366108893168390309.Spec : Prop :=
  ∀ n, P11366108893168390309.a n = (A103636 (n + 1) : ℚ)

end A103636

/-! ## A103636.P3747029318413453185

`∑{d}[n+1, (#-A091684(#))²]`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A103636

/-- `∑{d}[n+1, (#-A091684(#))²]` -/
def P3747029318413453185.Spec : Prop :=
  ∀ n, P3747029318413453185.a n = A103636 (n + 1)

theorem P3747029318413453185.correct : P3747029318413453185.Spec := by
  intro n
  simp only [A103636, Nat.add_sub_cancel]

end A103636

/-! ## A103636.P12249780497430636609

`∑{d}[n+1, (#*A079978(#))²]`
-/

namespace A103636.P12249780497430636609
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), ((d : ℤ) * A079978 d) ^ 2

end

end A103636.P12249780497430636609

namespace A103636

/-- `∑{d}[n+1, (#*A079978(#))²]` -/
def P12249780497430636609.Spec : Prop :=
  ∀ n, P12249780497430636609.a n = A103636 (n + 1)

end A103636

/-! ## A103636.P18085372922565475958

`∑{d}[A175676(n+1), A008585(#)²]`
-/

namespace A103636.P18085372922565475958
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175676 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A008585 d ^ 2

end

end A103636.P18085372922565475958

namespace A103636

/-- `∑{d}[A175676(n+1), A008585(#)²]` -/
def P18085372922565475958.Spec : Prop :=
  ∀ n, P18085372922565475958.a n = A103636 (n + 1)

end A103636

/-! ## A103636.P15570380173469280542

`∑{d}[n+1, A007494(#-A051176(#))²]`
-/

namespace A103636.P15570380173469280542
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007494 ((d : ℤ) - A051176 d).toNat ^ 2

end

end A103636.P15570380173469280542

namespace A103636

/-- `∑{d}[n+1, A007494(#-A051176(#))²]` -/
def P15570380173469280542.Spec : Prop :=
  ∀ n, P15570380173469280542.a n = A103636 (n + 1)

end A103636

/-! ## A103636.P8343029886523624851

`A001157(n+1)-A001157(A038502(n+1))`
-/

namespace A103636.P8343029886523624851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001157 (n + 1) - A001157 (A038502 (n + 1)).toNat

end

end A103636.P8343029886523624851

namespace A103636

/-- `A001157(n+1)-A001157(A038502(n+1))` -/
def P8343029886523624851.Spec : Prop :=
  ∀ n, P8343029886523624851.a n = A103636 (n + 1)

end A103636

/-! ## A103636.P17451161997841667210

`∑{d}[n+1, (#*A060398(#²))²]`
-/

namespace A103636.P17451161997841667210
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), ((d : ℤ) * A060398 (d ^ 2)) ^ 2

end

end A103636.P17451161997841667210

namespace A103636

/-- `∑{d}[n+1, (#*A060398(#²))²]` -/
def P17451161997841667210.Spec : Prop :=
  ∀ n, P17451161997841667210.a n = A103636 (n + 1)

end A103636

/-! ## A103636.P1866388026474402558

`∑{d}[n+1, 1-A239286(#*#)]`
-/

namespace A103636.P1866388026474402558
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (1 - A239286 (d * d))

end

end A103636.P1866388026474402558

namespace A103636

/-- `∑{d}[n+1, 1-A239286(#*#)]` -/
def P1866388026474402558.Spec : Prop :=
  ∀ n, P1866388026474402558.a n = A103636 (n + 1)

end A103636

/-! ## A103636.P2630877102867323803

`∑{d}[(n+1)², A037213(3*#)²]`
-/

namespace A103636.P2630877102867323803
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A037213 (3 * d) ^ 2

end

end A103636.P2630877102867323803

namespace A103636

/-- `∑{d}[(n+1)², A037213(3*#)²]` -/
def P2630877102867323803.Spec : Prop :=
  ∀ n, P2630877102867323803.a n = A103636 (n + 1)

end A103636

/-!
# A103637: a(n) = Sum_{d|n, d==1 mod 3} d^2.

The programs for A103637, the canonical program `A103637.P8644165102707501571` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A103637 has offset 1).

The definition of A103637 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A103637.P8644165102707501571

`∑{d}[n+1, (#*(#%3)%2)²]`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A103637

/-- `∑{d}[n+1, (#*(#%3)%2)²]` -/
def P8644165102707501571.Spec : Prop :=
  ∀ n, (P8644165102707501571.a n : ℤ) = A103637 (n + 1)

theorem P8644165102707501571.correct : P8644165102707501571.Spec := by
  intro n
  simp only [A103637, Nat.add_sub_cancel]

end A103637

/-! ## A103637.P8856157492576710841

`∑{d}[n+1, (#*A079978(#-1))²]`
-/

namespace A103637.P8856157492576710841
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), ((d : ℤ) * A079978 (d - 1)) ^ 2

end

end A103637.P8856157492576710841

namespace A103637

/-- `∑{d}[n+1, (#*A079978(#-1))²]` -/
def P8856157492576710841.Spec : Prop :=
  ∀ n, P8856157492576710841.a n = A103637 (n + 1)

end A103637

/-! ## A103637.P18191514885092701413

`A103638(n+1)+A103440(n+1)`
-/

namespace A103637.P18191514885092701413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103638 (n + 1) + A103440 (n + 1)

end

end A103637.P18191514885092701413

namespace A103637

/-- `A103638(n+1)+A103440(n+1)` -/
def P18191514885092701413.Spec : Prop :=
  ∀ n, P18191514885092701413.a n = A103637 (n + 1)

theorem P18191514885092701413.correct : P18191514885092701413.Spec := by
  intro n
  simp only [A103637, Nat.add_sub_cancel, A103637.P18191514885092701413.a, A103637.P8644165102707501571.f1, A103637.P8644165102707501571.a, A103440, A103440.P2264346228062661877.f1, A103440.P2264346228062661877.a, A103638, A103638.P17610773162151623303.a, A162397, A162397.P17892200127642729839.a, A102283, A102283.P18218274576938374007.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A103637

/-! ## A103637.P6053926635874585282

`A103638(n+1)+floor(-(A109041(n+1)/9))`
-/

namespace A103637.P6053926635874585282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103638 (n + 1) + ⌊-((A109041 (n + 1) : ℚ) / 9)⌋

end

end A103637.P6053926635874585282

namespace A103637

/-- `A103638(n+1)+floor(-(A109041(n+1)/9))` -/
def P6053926635874585282.Spec : Prop :=
  ∀ n, P6053926635874585282.a n = A103637 (n + 1)

end A103637

/-! ## A103637.P7562920479332715119

`A103638(n+1)+∑{d}[n+1, #*A162397(#)]`
-/

namespace A103637.P7562920479332715119
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103638 (n + 1) + ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A162397 d

end

end A103637.P7562920479332715119

namespace A103637

/-- `A103638(n+1)+∑{d}[n+1, #*A162397(#)]` -/
def P7562920479332715119.Spec : Prop :=
  ∀ n, P7562920479332715119.a n = A103637 (n + 1)

theorem P7562920479332715119.correct : P7562920479332715119.Spec := by
  intro n
  simp only [A103637, Nat.add_sub_cancel, A103637.P7562920479332715119.f1, A103637.P7562920479332715119.a, A103637.P8644165102707501571.f1, A103637.P8644165102707501571.a, A103638, A103638.P17610773162151623303.a, A162397, A162397.P17892200127642729839.a, A102283, A102283.P18218274576938374007.a, A103440, A103440.P2264346228062661877.f1, A103440.P2264346228062661877.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A103637

/-! ## A103637.P17669038081365929079

`∑{d}[n+1, (#%A078689(#))²]`
-/

namespace A103637.P17669038081365929079
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), Int.tmod (d : ℤ) (A078689 d) ^ 2

end

end A103637.P17669038081365929079

namespace A103637

/-- `∑{d}[n+1, (#%A078689(#))²]` -/
def P17669038081365929079.Spec : Prop :=
  ∀ n, P17669038081365929079.a n = A103637 (n + 1)

end A103637

/-! ## A103637.P6415825100963787024

`A103440(n+1)+∑{d}[n+1, (#*A022003(#))²]`
-/

namespace A103637.P6415825100963787024
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103440 (n + 1) + ∑ d ∈ Nat.divisors (f1 n), ((d : ℤ) * A022003 d) ^ 2

end

end A103637.P6415825100963787024

namespace A103637

/-- `A103440(n+1)+∑{d}[n+1, (#*A022003(#))²]` -/
def P6415825100963787024.Spec : Prop :=
  ∀ n, P6415825100963787024.a n = A103637 (n + 1)

end A103637

/-! ## A103637.P11230883028609189753

`A103638(n+1)+∑{d}[n+1, #²*A102283(#)]`
-/

namespace A103637.P11230883028609189753
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103638 (n + 1) + ∑ d ∈ Nat.divisors (f1 n), (d ^ 2 : ℤ) * A102283 d

end

end A103637.P11230883028609189753

namespace A103637

/-- `A103638(n+1)+∑{d}[n+1, #²*A102283(#)]` -/
def P11230883028609189753.Spec : Prop :=
  ∀ n, P11230883028609189753.a n = A103637 (n + 1)

end A103637

/-! ## A103637.P3708071306351121638

`A103440(n+1)+∑{d}[n+1, #²-A110665(#)²]`
-/

namespace A103637.P3708071306351121638
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103440 (n + 1) + ∑ d ∈ Nat.divisors (f1 n), ((d ^ 2 : ℤ) - A110665 d ^ 2)

end

end A103637.P3708071306351121638

namespace A103637

/-- `A103440(n+1)+∑{d}[n+1, #²-A110665(#)²]` -/
def P3708071306351121638.Spec : Prop :=
  ∀ n, P3708071306351121638.a n = A103637 (n + 1)

end A103637

/-! ## A103637.P3529811185096794961

`A181905(A038502(n+1))+A103638(n+1)`
-/

namespace A103637.P3529811185096794961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181905 (A038502 (n + 1)).toNat + A103638 (n + 1)

end

end A103637.P3529811185096794961

namespace A103637

/-- `A181905(A038502(n+1))+A103638(n+1)` -/
def P3529811185096794961.Spec : Prop :=
  ∀ n, P3529811185096794961.a n = A103637 (n + 1)

end A103637

/-!
# A103638: a(n) = Sum_{d|n, d==2 mod 3} d^2.

The programs for A103638, the canonical program `A103638.P17610773162151623303` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A103638 has offset 1).

The definition of A103638 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A103638.P17610773162151623303

`A103637(n+1)-A103440(n+1)`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A103638

/-- `A103637(n+1)-A103440(n+1)` -/
def P17610773162151623303.Spec : Prop :=
  ∀ n, P17610773162151623303.a n = A103638 (n + 1)

theorem P17610773162151623303.correct : P17610773162151623303.Spec := by
  intro n
  simp only [A103638, Nat.add_sub_cancel]

end A103638

/-! ## A103638.P1436106929211711244

`∑{d}[n+1, (#*A022003(#))²]`
-/

namespace A103638.P1436106929211711244
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), ((d : ℤ) * A022003 d) ^ 2

end

end A103638.P1436106929211711244

namespace A103638

/-- `∑{d}[n+1, (#*A022003(#))²]` -/
def P1436106929211711244.Spec : Prop :=
  ∀ n, P1436106929211711244.a n = A103638 (n + 1)

end A103638

/-! ## A103638.P12078232293817484718

`∑{d}[n+1, (#%A130481(#))²]`
-/

namespace A103638.P12078232293817484718
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), Int.tmod (d : ℤ) (A130481 d) ^ 2

end

end A103638.P12078232293817484718

namespace A103638

/-- `∑{d}[n+1, (#%A130481(#))²]` -/
def P12078232293817484718.Spec : Prop :=
  ∀ n, P12078232293817484718.a n = A103638 (n + 1)

end A103638

/-! ## A103638.P4272000209031007080

`∑{d}[n+1, #²-A110665(#)²]`
-/

namespace A103638.P4272000209031007080
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), ((d ^ 2 : ℤ) - A110665 d ^ 2)

end

end A103638.P4272000209031007080

namespace A103638

/-- `∑{d}[n+1, #²-A110665(#)²]` -/
def P4272000209031007080.Spec : Prop :=
  ∀ n, P4272000209031007080.a n = A103638 (n + 1)

end A103638

/-! ## A103638.P7325222341549901417

`∑{d}[n+1, (#*A131380(#)%2)²]`
-/

namespace A103638.P7325222341549901417
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), ((d : ℤ) * Int.tmod (A131380 d) 2) ^ 2

end

end A103638.P7325222341549901417

namespace A103638

/-- `∑{d}[n+1, (#*A131380(#)%2)²]` -/
def P7325222341549901417.Spec : Prop :=
  ∀ n, P7325222341549901417.a n = A103638 (n + 1)

end A103638

/-! ## A103638.P17092608801749374909

`∑{d}[n+1, A000290(#*A022003(#))]`
-/

namespace A103638.P17092608801749374909
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000290 ((d : ℤ) * A022003 d).toNat

end

end A103638.P17092608801749374909

namespace A103638

/-- `∑{d}[n+1, A000290(#*A022003(#))]` -/
def P17092608801749374909.Spec : Prop :=
  ∀ n, P17092608801749374909.a n = A103638 (n + 1)

end A103638

/-! ## A103638.P5336248899069214127

`A103637(n+1)-A181905(A038502(n+1))`
-/

namespace A103638.P5336248899069214127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103637 (n + 1) - A181905 (A038502 (n + 1)).toNat

end

end A103638.P5336248899069214127

namespace A103638

/-- `A103637(n+1)-A181905(A038502(n+1))` -/
def P5336248899069214127.Spec : Prop :=
  ∀ n, P5336248899069214127.a n = A103638 (n + 1)

end A103638

/-! ## A103638.P518570194264090667

`∑{d}[xor(n, -1), A018796(#²-A110665(#)²)]`
-/

namespace A103638.P518570194264090667
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) (-1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A018796 ((d ^ 2 : ℤ) - A110665 d ^ 2).toNat

end

end A103638.P518570194264090667

namespace A103638

/-- `∑{d}[xor(n, -1), A018796(#²-A110665(#)²)]` -/
def P518570194264090667.Spec : Prop :=
  ∀ n, P518570194264090667.a n = A103638 (n + 1)

end A103638

/-!
# A103639: a(n) = Product_{i=1..2*n} (2*i+1).

The programs for A103639, the canonical program `A103639.P16113915976067613618` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A103639 has offset 0).

The definition of A103639 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A103639.P16113915976067613618

`(4*n-1)*(4*n+1)*a(n-1)` with `a(0)=1`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A103639

/-- `(4*n-1)*(4*n+1)*a(n-1)` -/
def P16113915976067613618.Spec : Prop :=
  ∀ n, P16113915976067613618.a n = A103639 n

theorem P16113915976067613618.correct : P16113915976067613618.Spec := by
  intro n
  simp only [A103639]

end A103639

/-! ## A103639.P10571393646888472877

`(n+1)*(2*n+1)!*A000108(2*n+1)/4^n`
-/

namespace A103639.P10571393646888472877
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((n + 1) * Nat.factorial (2 * n + 1) : ℤ) * A000108 (2 * n + 1) : ℚ) / (4 ^ n : ℚ)

end

end A103639.P10571393646888472877

namespace A103639

/-- `(n+1)*(2*n+1)!*A000108(2*n+1)/4^n` -/
def P10571393646888472877.Spec : Prop :=
  ∀ n, P10571393646888472877.a n = (A103639 n : ℚ)

end A103639

/-! ## A103639.P14586283614088515715

`(4*n+2)!/(2*4^n*(2*n+1)!)`
-/

namespace A103639.P14586283614088515715
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (4 * n + 2) : ℚ) / (2 * 4 ^ n * Nat.factorial (2 * n + 1) : ℚ)

end

end A103639.P14586283614088515715

namespace A103639

/-- `(4*n+2)!/(2*4^n*(2*n+1)!)` -/
def P14586283614088515715.Spec : Prop :=
  ∀ n, P14586283614088515715.a n = (A103639 n : ℚ)

end A103639

/-! ## A103639.P17353381314490481438

`∏[abs(1-(4*n)²)]`
-/

namespace A103639.P17353381314490481438
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - ((4 * n) ^ 2 : ℤ)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A103639.P17353381314490481438

namespace A103639

/-- `∏[abs(1-(4*n)²)]` -/
def P17353381314490481438.Spec : Prop :=
  ∀ n, P17353381314490481438.a n = A103639 n

end A103639

/-! ## A103639.P7012646653596414046

`abs(record[-∏[-(2*n+1)]])`
-/

namespace A103639.P7012646653596414046
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(2 * n + 1 : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(∏ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)|

end

end A103639.P7012646653596414046

namespace A103639

/-- `abs(record[-∏[-(2*n+1)]])` -/
def P7012646653596414046.Spec : Prop :=
  ∀ n, P7012646653596414046.a n = A103639 n

end A103639

/-!
# A103640: Expansion of theta_4(q)^4 - theta_2(q)^4, where theta_2 and theta_4 are the Jacobi theta series.

The programs for A103640, there is no canonical definition to state claims against.
-/

/-! ## A103640.P6167854063966511879

`(-1)^n*A004011(n)`
-/

namespace A103640.P6167854063966511879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A004011 n

end

end A103640.P6167854063966511879

/-! ## A103640.P3131641026800598909

`(-1)^n*A000118(2*n)`
-/

namespace A103640.P3131641026800598909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A000118 (2 * n)

end

end A103640.P3131641026800598909

/-! ## A103640.P10435804856440608388

`A004011(n)*A033999(n)`
-/

namespace A103640.P10435804856440608388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004011 n * A033999 n

end

end A103640.P10435804856440608388

/-! ## A103640.P11343539613226563335

`A010684(n)*A096727(n)`
-/

namespace A103640.P11343539613226563335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010684 n * A096727 n

end

end A103640.P11343539613226563335

/-! ## A103640.P10621176104265110538

`2*A096727(n)-A000118(n)`
-/

namespace A103640.P10621176104265110538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A096727 n - A000118 n

end

end A103640.P10621176104265110538

/-! ## A103640.P11038879981744730770

`(2-A033999(n))*A096727(n)`
-/

namespace A103640.P11038879981744730770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - A033999 n) * A096727 n

end

end A103640.P11038879981744730770

/-! ## A103640.P6344516469871727022

`A000118(2*n)*A033999(n)`
-/

namespace A103640.P6344516469871727022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000118 (2 * n) * A033999 n

end

end A103640.P6344516469871727022

/-! ## A103640.P10213861515821278149

`A000118(2*n)*A062157(n+1)`
-/

namespace A103640.P10213861515821278149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000118 (2 * n) * A062157 (n + 1)

end

end A103640.P10213861515821278149

/-! ## A103640.P5364198395859826540

`A000118(n)+A096727(n)-A004011(n)`
-/

namespace A103640.P5364198395859826540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000118 n + (A096727 n - A004011 n)

end

end A103640.P5364198395859826540

/-! ## A103640.P14576476288134602311

`A004011(n)*A097057(n)/A133690(n)`
-/

namespace A103640.P14576476288134602311
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A004011 n * A097057 n : ℚ) / (A133690 n : ℚ)

end

end A103640.P14576476288134602311

/-! ## A103640.P2890583515063695228

`A285895(n+1)/A327095(n+1)*A096727(n)`
-/

namespace A103640.P2890583515063695228
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A285895 (n + 1) : ℚ) / (A327095 (n + 1) : ℚ) * (A096727 n : ℚ)

end

end A103640.P2890583515063695228

/-! ## A103640.P14715765083000423633

`A033999(n)*A096727(2*n)`
-/

namespace A103640.P14715765083000423633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A096727 (2 * n)

end

end A103640.P14715765083000423633

/-! ## A103640.P5487515163839632836

`(A000035(n+1)-A000035(n))*A096727(2*n)`
-/

namespace A103640.P5487515163839632836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000035 (n + 1) - A000035 n) * A096727 (2 * n)

end

end A103640.P5487515163839632836

/-! ## A103640.P8320442702771462186

`A004011(n)*A056594(2*n)`
-/

namespace A103640.P8320442702771462186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004011 n * A056594 (2 * n)

end

end A103640.P8320442702771462186

/-! ## A103640.P4784157919196776475

`A068073(2*n)*A096727(n)`
-/

namespace A103640.P4784157919196776475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068073 (2 * n) * A096727 n

end

end A103640.P4784157919196776475

/-! ## A103640.P11857945794689057896

`A000118(2*n)*A000118(3*n)/A096727(3*n)`
-/

namespace A103640.P11857945794689057896
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000118 (2 * n) * A000118 (3 * n) : ℚ) / (A096727 (3 * n) : ℚ)

end

end A103640.P11857945794689057896

/-! ## A103640.P12686695710999167091

`A096727(2*n)/A000152(3*n)*A319307(3*n)`
-/

namespace A103640.P12686695710999167091
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A096727 (2 * n) : ℚ) / (A000152 (3 * n) : ℚ) * (A319307 (3 * n) : ℚ)

end

end A103640.P12686695710999167091

/-! ## A103640.P16963464032940380593

`A000118(2*n)*A008457(3*n+1)/A138503(3*n+1)`
-/

namespace A103640.P16963464032940380593
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000118 (2 * n) * A008457 (3 * n + 1) : ℚ) / (A138503 (3 * n + 1) : ℚ)

end

end A103640.P16963464032940380593

/-! ## A103640.P4590613683442702412

`A010685(n)*A228745(n)`
-/

namespace A103640.P4590613683442702412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010685 n * A228745 n

end

end A103640.P4590613683442702412

/-!
# A103641: Number of tilings of the Aztec dungeon D_n.

The programs for A103641, there is no canonical definition to state claims against.
-/

/-! ## A103641.P16124080439957116570

`A195945(A014217(n))*A238189(n+2)`
-/

namespace A103641.P16124080439957116570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195945 (A014217 n).toNat * A238189 (n + 2)

end

end A103641.P16124080439957116570

/-!
# A103643: Number of tilings of a special lattice of order n.

The programs for A103643, there is no canonical definition to state claims against.
-/

/-! ## A103643.P15923841684045900906

`A323641(A141200(n+2))`
-/

namespace A103643.P15923841684045900906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323641 (A141200 (n + 2)).toNat

end

end A103643.P15923841684045900906

/-!
# A103644: Expansion of g.f. (3x+1)/((1-3*x)*(1+5*x+9*x^2)).

The programs for A103644, the canonical program `A103644.P795254091413452852` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A103644 has offset 0).

The definition of A103644 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1+3x)/(1+2x-6x^2-27x^3))` (program `A103644.P795254091413452852`, by `A103644.P795254091413452852.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A103644.P795254091413452852

`ogf((1+3x)/(1+2x-6x^2-27x^3))`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A103644

/-- `ogf((1+3x)/(1+2x-6x^2-27x^3))` -/
def P795254091413452852.Spec : Prop :=
  ∀ n, P795254091413452852.a n = A103644 n

theorem P795254091413452852.correct : P795254091413452852.Spec := by
  intro n
  simp only [A103644]

end A103644

/-! ## A103644.P7375428082952899700

`∏[1-3/a(n-1)]²` with `a(0)=1, a(1)=1`
-/

namespace A103644.P7375428082952899700
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [1, 1] fun n f1 =>
  1 - 3 / f1 (n - 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (∏ j ∈ Finset.range (n + 1), f1 j) ^ 2

end

end A103644.P7375428082952899700

namespace A103644

/-- `∏[1-3/a(n-1)]²` -/
def P7375428082952899700.Spec : Prop :=
  ∀ n, P7375428082952899700.a n = (A103644 n : ℚ)

end A103644

/-! ## A103644.P7543751061838394693

`∑[a(n-1)-3*a(n-2)]²` with `a(0)=1, a(1)=0`
-/

namespace A103644.P7543751061838394693
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n f1 =>
  f1 (n - 1) - 3 * f1 (n - 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2

end

end A103644.P7543751061838394693

namespace A103644

/-- `∑[a(n-1)-3*a(n-2)]²` -/
def P7543751061838394693.Spec : Prop :=
  ∀ n, P7543751061838394693.a n = A103644 n

end A103644

/-! ## A103644.P10723078193881028942

`A106852(n)²`
-/

namespace A103644.P10723078193881028942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106852 n ^ 2

end

end A103644.P10723078193881028942

namespace A103644

/-- `A106852(n)²` -/
def P10723078193881028942.Spec : Prop :=
  ∀ n, P10723078193881028942.a n = A103644 n

end A103644

/-! ## A103644.P11281837839140032794

`A214733(n+1)²`
-/

namespace A103644.P11281837839140032794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214733 (n + 1) ^ 2

end

end A103644.P11281837839140032794

namespace A103644

/-- `A214733(n+1)²` -/
def P11281837839140032794.Spec : Prop :=
  ∀ n, P11281837839140032794.a n = A103644 n

end A103644

/-! ## A103644.P9187579850872282297

`(A110523(n+2)/3)²`
-/

namespace A103644.P9187579850872282297
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A110523 (n + 2) : ℚ) / 3) ^ 2

end

end A103644.P9187579850872282297

namespace A103644

/-- `(A110523(n+2)/3)²` -/
def P9187579850872282297.Spec : Prop :=
  ∀ n, P9187579850872282297.a n = (A103644 n : ℚ)

end A103644

/-! ## A103644.P12762168682178270285

`(A110523(n)-A214733(n))²`
-/

namespace A103644.P12762168682178270285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A110523 n - A214733 n) ^ 2

end

end A103644.P12762168682178270285

namespace A103644

/-- `(A110523(n)-A214733(n))²` -/
def P12762168682178270285.Spec : Prop :=
  ∀ n, P12762168682178270285.a n = A103644 n

end A103644

/-! ## A103644.P9499776431109513280

`A106852(n)^A020639(2*(n+1))`
-/

namespace A103644.P9499776431109513280
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A106852 n : ℚ) ^ (A020639 (2 * (n + 1)) : ℤ)

end

end A103644.P9499776431109513280

namespace A103644

/-- `A106852(n)^A020639(2*(n+1))` -/
def P9499776431109513280.Spec : Prop :=
  ∀ n, P9499776431109513280.a n = (A103644 n : ℚ)

end A103644

/-! ## A103644.P9155371158633578851

`A106852(A005843(n)/2)*A106852(n)`
-/

namespace A103644.P9155371158633578851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106852 (SequenceMachineLib.roundAway ((A005843 n : ℚ) / 2)).toNat * A106852 n

end

end A103644.P9155371158633578851

namespace A103644

/-- `A106852(A005843(n)/2)*A106852(n)` -/
def P9155371158633578851.Spec : Prop :=
  ∀ n, P9155371158633578851.a n = A103644 n

end A103644

/-! ## A103644.P5971573480993150611

`A106852(n)^A000005(A030431(n+1))`
-/

namespace A103644.P5971573480993150611
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A106852 n : ℚ) ^ (A000005 (A030431 (n + 1)).toNat : ℤ)

end

end A103644.P5971573480993150611

namespace A103644

/-- `A106852(n)^A000005(A030431(n+1))` -/
def P5971573480993150611.Spec : Prop :=
  ∀ n, P5971573480993150611.a n = (A103644 n : ℚ)

end A103644

/-! ## A103644.P7946181023217971158

`A106852(A005843(n)-n)*A106852(n)`
-/

namespace A103644.P7946181023217971158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106852 (A005843 n - (n : ℤ)).toNat * A106852 n

end

end A103644.P7946181023217971158

namespace A103644

/-- `A106852(A005843(n)-n)*A106852(n)` -/
def P7946181023217971158.Spec : Prop :=
  ∀ n, P7946181023217971158.a n = A103644 n

end A103644

/-! ## A103644.P7170337357602880563

`or(A000007(n), A106852(n))*A106852(n)`
-/

namespace A103644.P7170337357602880563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A106852 n) * A106852 n

end

end A103644.P7170337357602880563

namespace A103644

/-- `or(A000007(n), A106852(n))*A106852(n)` -/
def P7170337357602880563.Spec : Prop :=
  ∀ n, P7170337357602880563.a n = A103644 n

end A103644

/-! ## A103644.P3991291821206410391

`(A110523(n)-A214733(n))*A214733(n+1)`
-/

namespace A103644.P3991291821206410391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A110523 n - A214733 n) * A214733 (n + 1)

end

end A103644.P3991291821206410391

namespace A103644

/-- `(A110523(n)-A214733(n))*A214733(n+1)` -/
def P3991291821206410391.Spec : Prop :=
  ∀ n, P3991291821206410391.a n = A103644 n

end A103644

/-! ## A103644.P1050778403521966571

`A033999(2*n)*A214733(n+1)*A214733(n+1)`
-/

namespace A103644.P1050778403521966571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (2 * n) * A214733 (n + 1) * A214733 (n + 1)

end

end A103644.P1050778403521966571

namespace A103644

/-- `A033999(2*n)*A214733(n+1)*A214733(n+1)` -/
def P1050778403521966571.Spec : Prop :=
  ∀ n, P1050778403521966571.a n = A103644 n

end A103644

/-! ## A103644.P18360624565710922196

`A103646(n)/9`
-/

namespace A103644.P18360624565710922196
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A103646 n : ℚ) / 9

end

end A103644.P18360624565710922196

namespace A103644

/-- `A103646(n)/9` -/
def P18360624565710922196.Spec : Prop :=
  ∀ n, P18360624565710922196.a n = (A103644 n : ℚ)

theorem P18360624565710922196.correct : P18360624565710922196.Spec := by
  intro n
  simp only [A103644, Nat.add_sub_cancel, A103644.P18360624565710922196.a, A103644.P795254091413452852.a, A103646, A103646.P12039972778156622063.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A103644

/-! ## A103644.P11029037196031403175

`A190970(n+1)/A103645(n)*A190970(n+1)`
-/

namespace A103644.P11029037196031403175
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A190970 (n + 1) : ℚ) / (A103645 n : ℚ) * (A190970 (n + 1) : ℚ)

end

end A103644.P11029037196031403175

namespace A103644

/-- `A190970(n+1)/A103645(n)*A190970(n+1)` -/
def P11029037196031403175.Spec : Prop :=
  ∀ n, P11029037196031403175.a n = (A103644 n : ℚ)

end A103644

/-!
# A103645: G.f.: (108*x^2+27*x+1)/(1+2*x-6*x^2-27*x^3).

The programs for A103645, the canonical program `A103645.P12884807089351849703` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A103645 has offset 0).

The definition of A103645 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 208 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A103645.P12884807089351849703

`A131040(n)²`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A103645

/-- `A131040(n)²` -/
def P12884807089351849703.Spec : Prop :=
  ∀ n, P12884807089351849703.a n = A103645 n

theorem P12884807089351849703.correct : P12884807089351849703.Spec := by
  intro n
  simp only [A103645]

end A103645

/-! ## A103645.P11922075081659206270

`A131040(n)^(A000007(n)+2)`
-/

namespace A103645.P11922075081659206270
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A131040 n : ℚ) ^ (A000007 n + 2 : ℤ)

end

end A103645.P11922075081659206270

namespace A103645

/-- `A131040(n)^(A000007(n)+2)` -/
def P11922075081659206270.Spec : Prop :=
  ∀ n, P11922075081659206270.a n = (A103645 n : ℚ)

end A103645

/-! ## A103645.P7155127808688112849

`A131040(n)^A000034(2*n+1)`
-/

namespace A103645.P7155127808688112849
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A131040 n : ℚ) ^ (A000034 (2 * n + 1) : ℤ)

end

end A103645.P7155127808688112849

namespace A103645

/-- `A131040(n)^A000034(2*n+1)` -/
def P7155127808688112849.Spec : Prop :=
  ∀ n, P7155127808688112849.a n = (A103645 n : ℚ)

end A103645

/-! ## A103645.P4689075535971123860

`A131040(n)^A000043(gcd(n, n+1))`
-/

namespace A103645.P4689075535971123860
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A131040 n : ℚ) ^ (A000043 (Nat.gcd n (n + 1)) : ℤ)

end

end A103645.P4689075535971123860

namespace A103645

/-- `A131040(n)^A000043(gcd(n, n+1))` -/
def P4689075535971123860.Spec : Prop :=
  ∀ n, P4689075535971123860.a n = (A103645 n : ℚ)

end A103645

/-! ## A103645.P5506202037130939734

`(A106852(n+1)+Δ[A106852(n)])²`
-/

namespace A103645.P5506202037130939734
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106852 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A106852 (n + 1) + (f1 (n + 1) - f1 n)) ^ 2

end

end A103645.P5506202037130939734

namespace A103645

/-- `(A106852(n+1)+Δ[A106852(n)])²` -/
def P5506202037130939734.Spec : Prop :=
  ∀ n, P5506202037130939734.a n = A103645 n

end A103645

/-! ## A103645.P16648979197262849155

`(A190970(n+1)/A214733(n+1))²`
-/

namespace A103645.P16648979197262849155
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A190970 (n + 1) : ℚ) / (A214733 (n + 1) : ℚ)) ^ 2

end

end A103645.P16648979197262849155

namespace A103645

/-- `(A190970(n+1)/A214733(n+1))²` -/
def P16648979197262849155.Spec : Prop :=
  ∀ n, P16648979197262849155.a n = (A103645 n : ℚ)

end A103645

/-! ## A103645.P4881503095095111816

`(A106852(2*n+1)/A106852(n))²`
-/

namespace A103645.P4881503095095111816
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A106852 (2 * n + 1) : ℚ) / (A106852 n : ℚ)) ^ 2

end

end A103645.P4881503095095111816

namespace A103645

/-- `(A106852(2*n+1)/A106852(n))²` -/
def P4881503095095111816.Spec : Prop :=
  ∀ n, P4881503095095111816.a n = (A103645 n : ℚ)

end A103645

/-! ## A103645.P5488787721240185452

`A131040(n)^(A212126(A212160(n))+1)`
-/

namespace A103645.P5488787721240185452
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A131040 n : ℚ) ^ (A212126 (A212160 n).toNat + 1 : ℤ)

end

end A103645.P5488787721240185452

namespace A103645

/-- `A131040(n)^(A212126(A212160(n))+1)` -/
def P5488787721240185452.Spec : Prop :=
  ∀ n, P5488787721240185452.a n = (A103645 n : ℚ)

end A103645

/-! ## A103645.P13544318611399806811

`A190970(n+1)/A103644(n)*A190970(n+1)`
-/

namespace A103645.P13544318611399806811
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A190970 (n + 1) : ℚ) / (A103644 n : ℚ) * (A190970 (n + 1) : ℚ)

end

end A103645.P13544318611399806811

namespace A103645

/-- `A190970(n+1)/A103644(n)*A190970(n+1)` -/
def P13544318611399806811.Spec : Prop :=
  ∀ n, P13544318611399806811.a n = (A103645 n : ℚ)

end A103645

/-! ## A103645.P10947426230931791405

`A103644(2*n+1)/A103644(n)`
-/

namespace A103645.P10947426230931791405
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A103644 (2 * n + 1) : ℚ) / (A103644 n : ℚ)

end

end A103645.P10947426230931791405

namespace A103645

/-- `A103644(2*n+1)/A103644(n)` -/
def P10947426230931791405.Spec : Prop :=
  ∀ n, P10947426230931791405.a n = (A103645 n : ℚ)

end A103645

/-! ## A103645.P4295978294336039322

`A103646(2*n+1)/A103646(n)`
-/

namespace A103645.P4295978294336039322
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A103646 (2 * n + 1) : ℚ) / (A103646 n : ℚ)

end

end A103645.P4295978294336039322

namespace A103645

/-- `A103646(2*n+1)/A103646(n)` -/
def P4295978294336039322.Spec : Prop :=
  ∀ n, P4295978294336039322.a n = (A103645 n : ℚ)

end A103645

/-!
# A103646: G.f.: 9*(3x+1)/(1+2x-6x^2-27x^3).

The programs for A103646, the canonical program `A103646.P12039972778156622063` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A103646 has offset 0).

The definition of A103646 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A103646.P12039972778156622063

`9*A103644(n)`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A103646

/-- `9*A103644(n)` -/
def P12039972778156622063.Spec : Prop :=
  ∀ n, P12039972778156622063.a n = A103646 n

theorem P12039972778156622063.correct : P12039972778156622063.Spec := by
  intro n
  simp only [A103646]

end A103646

/-! ## A103646.P9563809211111181727

`A110523(n+2)²`
-/

namespace A103646.P9563809211111181727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110523 (n + 2) ^ 2

end

end A103646.P9563809211111181727

namespace A103646

/-- `A110523(n+2)²` -/
def P9563809211111181727.Spec : Prop :=
  ∀ n, P9563809211111181727.a n = A103646 n

end A103646

/-! ## A103646.P8868137563526919172

`∏[1-3/a(n-1)]²` with `a(0)=3, a(1)=1`
-/

namespace A103646.P8868137563526919172
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [3, 1] fun n f1 =>
  1 - 3 / f1 (n - 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (∏ j ∈ Finset.range (n + 1), f1 j) ^ 2

end

end A103646.P8868137563526919172

namespace A103646

/-- `∏[1-3/a(n-1)]²` -/
def P8868137563526919172.Spec : Prop :=
  ∀ n, P8868137563526919172.a n = (A103646 n : ℚ)

end A103646

/-! ## A103646.P15483647428193180677

`∑[a(n-1)-3*a(n-2)]²` with `a(0)=3, a(1)=0`
-/

namespace A103646.P15483647428193180677
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [3, 0] fun n f1 =>
  f1 (n - 1) - 3 * f1 (n - 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2

end

end A103646.P15483647428193180677

namespace A103646

/-- `∑[a(n-1)-3*a(n-2)]²` -/
def P15483647428193180677.Spec : Prop :=
  ∀ n, P15483647428193180677.a n = A103646 n

end A103646

/-! ## A103646.P9763481954213674098

`(3*A106852(n))²`
-/

namespace A103646.P9763481954213674098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 * A106852 n) ^ 2

end

end A103646.P9763481954213674098

namespace A103646

/-- `(3*A106852(n))²` -/
def P9763481954213674098.Spec : Prop :=
  ∀ n, P9763481954213674098.a n = A103646 n

end A103646

/-! ## A103646.P5091008447824972995

`Δ[A106852(n+1)]²`
-/

namespace A103646.P5091008447824972995
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106852 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) ^ 2

end

end A103646.P5091008447824972995

namespace A103646

/-- `Δ[A106852(n+1)]²` -/
def P5091008447824972995.Spec : Prop :=
  ∀ n, P5091008447824972995.a n = A103646 n

end A103646

/-! ## A103646.P2956874943776348088

`(3*A214733(n+1))²`
-/

namespace A103646.P2956874943776348088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 * A214733 (n + 1)) ^ 2

end

end A103646.P2956874943776348088

namespace A103646

/-- `(3*A214733(n+1))²` -/
def P2956874943776348088.Spec : Prop :=
  ∀ n, P2956874943776348088.a n = A103646 n

end A103646

/-! ## A103646.P8425964988748075968

`(A106852(n+1)-A106852(n+2))²`
-/

namespace A103646.P8425964988748075968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A106852 (n + 1) - A106852 (n + 2)) ^ 2

end

end A103646.P8425964988748075968

namespace A103646

/-- `(A106852(n+1)-A106852(n+2))²` -/
def P8425964988748075968.Spec : Prop :=
  ∀ n, P8425964988748075968.a n = A103646 n

end A103646

/-! ## A103646.P17339253693776726212

`(A214733(n+2)+A214733(n+3))²`
-/

namespace A103646.P17339253693776726212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A214733 (n + 2) + A214733 (n + 3)) ^ 2

end

end A103646.P17339253693776726212

namespace A103646

/-- `(A214733(n+2)+A214733(n+3))²` -/
def P17339253693776726212.Spec : Prop :=
  ∀ n, P17339253693776726212.a n = A103646 n

end A103646

/-! ## A103646.P13072005796532024466

`(3*A106852(n))^A000034(2*n+1)`
-/

namespace A103646.P13072005796532024466
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 * A106852 n : ℚ) ^ (A000034 (2 * n + 1) : ℤ)

end

end A103646.P13072005796532024466

namespace A103646

/-- `(3*A106852(n))^A000034(2*n+1)` -/
def P13072005796532024466.Spec : Prop :=
  ∀ n, P13072005796532024466.a n = (A103646 n : ℚ)

end A103646

/-!
# A103648: Expansion of -x*(2*x^11-2*x^9+3*x^7-2*x^6-x^5+x^3-x^2-1) / ((x-1)*(2*x^12+x^8-1)).

The programs for A103648, the canonical program `A103648.P1819558966130567441` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A103648 has offset 0).

The definition of A103648 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((x+x^3-x^4+x^6+2x^7-3x^8+2x^10-2x^12)/(1-x-x^8+x^9-2x^12+2x^13))` (program `A103648.P1819558966130567441`, by `A103648.P1819558966130567441.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A103648.P1819558966130567441

`ogf((x+x^3-x^4+x^6+2x^7-3x^8+2x^10-2x^12)/(1-x-x^8+x^9-2x^12+2x^13))`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A103648

/-- `ogf((x+x^3-x^4+x^6+2x^7-3x^8+2x^10-2x^12)/(1-x-x^8+x^9-2x^12+2x^13))` -/
def P1819558966130567441.Spec : Prop :=
  ∀ n, P1819558966130567441.a n = A103648 n

theorem P1819558966130567441.correct : P1819558966130567441.Spec := by
  intro n
  simp only [A103648]

end A103648

/-! ## A103648.P12450677410154399019

`∑{e}[A288974(A053737(n)), #]`
-/

namespace A103648.P12450677410154399019
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288974 (A053737 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A103648.P12450677410154399019

namespace A103648

/-- `∑{e}[A288974(A053737(n)), #]` -/
def P12450677410154399019.Spec : Prop :=
  ∀ n, (P12450677410154399019.a n : ℤ) = A103648 n

end A103648

/-! ## A103648.P5349473758360060326

`∑{e}[A288974(A276328(n)), #]`
-/

namespace A103648.P5349473758360060326
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288974 (A276328 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A103648.P5349473758360060326

namespace A103648

/-- `∑{e}[A288974(A276328(n)), #]` -/
def P5349473758360060326.Spec : Prop :=
  ∀ n, (P5349473758360060326.a n : ℤ) = A103648 n

end A103648

/-! ## A103648.P632383799017492311

`A029265(A187829(n+1)+4)`
-/

namespace A103648.P632383799017492311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029265 (A187829 (n + 1) + 4).toNat

end

end A103648.P632383799017492311

namespace A103648

/-- `A029265(A187829(n+1)+4)` -/
def P632383799017492311.Spec : Prop :=
  ∀ n, P632383799017492311.a n = A103648 n

end A103648

/-! ## A103648.P12991338286790954882

`A008742(A052938(n)^A069293(n+1))`
-/

namespace A103648.P12991338286790954882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008742 (SequenceMachineLib.roundAway ((A052938 n : ℚ) ^ (A069293 (n + 1) : ℤ))).toNat

end

end A103648.P12991338286790954882

namespace A103648

/-- `A008742(A052938(n)^A069293(n+1))` -/
def P12991338286790954882.Spec : Prop :=
  ∀ n, P12991338286790954882.a n = A103648 n

end A103648

/-!
# A103649: Number of primes less than 10^n using the x-th root approximation formula 1/(x^(1/x) - 1/x - 1) where x = 10^n.

The programs for A103649, there is no canonical definition to state claims against.
-/

/-! ## A103649.P8612945632640447318

`A226744(n+1)-gcd(2, A039649(n+1))`
-/

namespace A103649.P8612945632640447318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226744 (n + 1) - (Int.gcd 2 (A039649 (n + 1)) : ℤ)

end

end A103649.P8612945632640447318

/-! ## A103649.P11285214233384332288

`A226744(n+1)-A125103(A212342(n))`
-/

namespace A103649.P11285214233384332288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226744 (n + 1) - A125103 (A212342 n).toNat

end

end A103649.P11285214233384332288

/-! ## A103649.P4881418498663073095

`A226744(n+1)-A072078(A077359(n+1))`
-/

namespace A103649.P4881418498663073095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226744 (n + 1) - A072078 (A077359 (n + 1)).toNat

end

end A103649.P4881418498663073095

/-! ## A103649.P5284663586564816039

`A226744(n+1)-A072078(A100724(n+1))`
-/

namespace A103649.P5284663586564816039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226744 (n + 1) - A072078 (A100724 (n + 1)).toNat

end

end A103649.P5284663586564816039

/-! ## A103649.P9416304883299124334

`A226744(n+1)-A000034(A322321(n+1))`
-/

namespace A103649.P9416304883299124334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226744 (n + 1) - A000034 (A322321 (n + 1)).toNat

end

end A103649.P9416304883299124334

/-!
# A103650: G.f.: x^2/((1-x^2)^2*Product_{i>0}(1-x^i)).

The programs for A103650, there is no canonical definition to state claims against.
-/

/-! ## A103650.P8688968842872452825

`∑[∑[A270143(n)]]`
-/

namespace A103650.P8688968842872452825
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270143 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A103650.P8688968842872452825

/-! ## A103650.P5443906703061387999

`∑[∑[A182712(n+1)-a(n-1)]]` with `a(0)=0`
-/

namespace A103650.P5443906703061387999
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f2 =>
  A182712 (n + 1) - f2 (n - 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A103650.P5443906703061387999

/-! ## A103650.P14572621179191758964

`∑[a(n-2)+A000041(n-1)]-a(n-1)` with `a(0)=0, a(1)=1`
-/

namespace A103650.P14572621179191758964
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n f1 =>
  f1 (n - 2) + A000041 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  ∑ j ∈ Finset.range (n + 1), f1 j - a (n - 1)

end

end A103650.P14572621179191758964

/-! ## A103650.P12203449516216520093

`A000070(n)+A103628(n)-A000097(n)`
-/

namespace A103650.P12203449516216520093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000070 n + (A103628 n - A000097 n)

end

end A103650.P12203449516216520093

/-! ## A103650.P4682815349737792145

`A103628(n+2)-A000097(n+1)`
-/

namespace A103650.P4682815349737792145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103628 (n + 2) - A000097 (n + 1)

end

end A103650.P4682815349737792145

/-! ## A103650.P9306638771757487555

`A014153(n)-A103628(n+1)`
-/

namespace A103650.P9306638771757487555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014153 n - A103628 (n + 1)

end

end A103650.P9306638771757487555

/-! ## A103650.P626340596579670474

`A302347(n+1)+A024788(n+1)`
-/

namespace A103650.P626340596579670474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302347 (n + 1) + A024788 (n + 1)

end

end A103650.P626340596579670474

/-! ## A103650.P6614189144338458332

`A014153(n)-(A276425(n+1)+A276423(n+1))`
-/

namespace A103650.P6614189144338458332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014153 n - (A276425 (n + 1) + A276423 (n + 1))

end

end A103650.P6614189144338458332

/-! ## A103650.P4805605804817516082

`A024786(n+1)+A302348(n+1)-A302347(n+1)`
-/

namespace A103650.P4805605804817516082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024786 (n + 1) + (A302348 (n + 1) - A302347 (n + 1))

end

end A103650.P4805605804817516082

/-! ## A103650.P10430070612395578102

`A302348(n+3)-A302347(n+3)`
-/

namespace A103650.P10430070612395578102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302348 (n + 3) - A302347 (n + 3)

end

end A103650.P10430070612395578102

/-! ## A103650.P14006398024921051913

`A014153(n)-A222730(A000124(n+1))`
-/

namespace A103650.P14006398024921051913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014153 n - A222730 (A000124 (n + 1)).toNat

end

end A103650.P14006398024921051913

/-!
# A103651: The set N of numbers such that each positive integer can be written in the form p + n, where p is 0 or a prime and n in N, in an even number of ways.

The programs for A103651, there is no canonical definition to state claims against.
-/

/-! ## A103651.P16088539270259510911

`eq[1, A023360(n)%2]`
-/

namespace A103651.P16088539270259510911
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A023360 n) 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A103651.P16088539270259510911

/-! ## A103651.P11098502433265595236

`lt[0, A276420(n)%2]`
-/

namespace A103651.P11098502433265595236
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A276420 n) 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A103651.P11098502433265595236

/-! ## A103651.P2371931130490080882

`eq[1, gcd(2, A002121(n))]`
-/

namespace A103651.P2371931130490080882
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 2 (A002121 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A103651.P2371931130490080882

/-! ## A103651.P8774692637764251912

`record[(n+1)*A023360(n+1)%2]`
-/

namespace A103651.P8774692637764251912
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * Int.tmod (A023360 (n + 1)) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A103651.P8774692637764251912

/-! ## A103651.P12466262479075360889

`record[(n+1)*A276420(n+1)%2]`
-/

namespace A103651.P12466262479075360889
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * Int.tmod (A276420 (n + 1)) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A103651.P12466262479075360889

/-! ## A103651.P11724000259739532497

`eq[1, gcd(A001749(n+1), A276420(n))]`
-/

namespace A103651.P11724000259739532497
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A001749 (n + 1)) (A276420 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A103651.P11724000259739532497

/-!
# A103652: Three-digit numbers with nonincreasing decimal digits such that the first digit modulo the second digit equals the third digit.

The programs for A103652, there is no canonical definition to state claims against.
-/

/-! ## A103652.P11425660624383474617

`∩[A009996(n+1), A277622(n+1)]`
-/

namespace A103652.P11425660624383474617
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009996 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277622 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A103652.P11425660624383474617

/-! ## A103652.P4377760693753294070

`∩[A071590(n+1), A277622(n+1)]`
-/

namespace A103652.P4377760693753294070
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071590 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277622 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A103652.P4377760693753294070

/-! ## A103652.P13207597121864283019

`∩[A072543(n+1), A277622(n+1)]`
-/

namespace A103652.P13207597121864283019
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072543 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277622 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A103652.P13207597121864283019

/-! ## A103652.P781256934959086661

`∩[A277622(n+1), A296714(n+1)]`
-/

namespace A103652.P781256934959086661
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277622 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296714 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A103652.P781256934959086661

/-! ## A103652.P2927007872440034604

`∩[A277622(n+1), A296882(n+1)]`
-/

namespace A103652.P2927007872440034604
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277622 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296882 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A103652.P2927007872440034604

/-!
# A103653: Members of A085924 that are not members of A072774.

The programs for A103653, there is no canonical definition to state claims against.
-/

/-! ## A103653.P5722583965161306733

`∩[A059404(n+1), A085924(n)]`
-/

namespace A103653.P5722583965161306733
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059404 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085924 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A103653.P5722583965161306733

/-! ## A103653.P4193250013425900142

`∩[A071365(n+1), A085924(n)]`
-/

namespace A103653.P4193250013425900142
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071365 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085924 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A103653.P4193250013425900142

/-! ## A103653.P17671445973020478158

`∩[A112769(n+1), A085924(n)]`
-/

namespace A103653.P17671445973020478158
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112769 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085924 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A103653.P17671445973020478158

/-! ## A103653.P415415480104135507

`∩[A182855(n+1), A085924(n)]`
-/

namespace A103653.P415415480104135507
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182855 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085924 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A103653.P415415480104135507

/-! ## A103653.P1194378505481338597

`∩[A303946(n+1), A085924(n)]`
-/

namespace A103653.P1194378505481338597
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303946 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085924 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A103653.P1194378505481338597

/-!
# A103654: Primes which are the average of two successive semiprimes.

The programs for A103654, there is no canonical definition to state claims against.
-/

/-! ## A103654.P7944305671356335922

`p?[A109403(n+1)]`
-/

namespace A103654.P7944305671356335922
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109403 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A103654.P7944305671356335922

/-! ## A103654.P17569533937186942841

`∩[A109403(n+1), A167915(n+1)]`
-/

namespace A103654.P17569533937186942841
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109403 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167915 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A103654.P17569533937186942841

/-! ## A103654.P3525932732782757285

`A000040(A103655(n+1))`
-/

namespace A103654.P3525932732782757285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A103655 (n + 1)).toNat

end

end A103654.P3525932732782757285

/-! ## A103654.P14197537493862825595

`∩[A000040(n+1), A109403(n+1)]`
-/

namespace A103654.P14197537493862825595
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109403 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A103654.P14197537493862825595

/-! ## A103654.P9923921519269990649

`∩[A006005(n+1), A109403(n+1)]`
-/

namespace A103654.P9923921519269990649
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006005 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109403 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A103654.P9923921519269990649

/-! ## A103654.P7384098213234936735

`∩[A008578(n+1), A109403(n+1)]`
-/

namespace A103654.P7384098213234936735
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109403 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A103654.P7384098213234936735

/-! ## A103654.P1850555610557037

`∩[A033946(n+1), A109403(n+1)]`
-/

namespace A103654.P1850555610557037
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033946 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109403 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A103654.P1850555610557037

/-! ## A103654.P8860310989601211681

`∩[A045344(n+1), A109403(n+1)]`
-/

namespace A103654.P8860310989601211681
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045344 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109403 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A103654.P8860310989601211681

/-! ## A103654.P6363422603190424591

`∩[A046022(n+1), A109403(n+1)]`
-/

namespace A103654.P6363422603190424591
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046022 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109403 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A103654.P6363422603190424591

/-! ## A103654.P5808867990653260642

`∩[A051948(n+1), A109403(n+1)]`
-/

namespace A103654.P5808867990653260642
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051948 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109403 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A103654.P5808867990653260642

/-! ## A103654.P17487881285799682604

`∩[A053813(n+1), A109403(n+1)]`
-/

namespace A103654.P17487881285799682604
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053813 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109403 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A103654.P17487881285799682604

/-! ## A103654.P6317524139586286987

`∩[A065091(n+1), A109403(n+1)]`
-/

namespace A103654.P6317524139586286987
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109403 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A103654.P6317524139586286987

/-! ## A103654.P10564307366414484017

`∩[A066050(n+1), A109403(n+1)]`
-/

namespace A103654.P10564307366414484017
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066050 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109403 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A103654.P10564307366414484017

/-! ## A103654.P18061190434268739247

`∩[A067126(n+1), A109403(n+1)]`
-/

namespace A103654.P18061190434268739247
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067126 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109403 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A103654.P18061190434268739247

/-! ## A103654.P13555073363375097066

`∩[A083249(n+1), A109403(n+1)]`
-/

namespace A103654.P13555073363375097066
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083249 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109403 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A103654.P13555073363375097066

/-! ## A103654.P2032772135328506126

`∩[A108719(n+1), A109403(n+1)]`
-/

namespace A103654.P2032772135328506126
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108719 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109403 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A103654.P2032772135328506126

/-! ## A103654.P10503276007111210378

`∩[A109403(n+1), A116974(n+1)]`
-/

namespace A103654.P10503276007111210378
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109403 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116974 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A103654.P10503276007111210378

/-! ## A103654.P3906376590814451891

`∩[A109403(n+1), A140475(n+1)]`
-/

namespace A103654.P3906376590814451891
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109403 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140475 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A103654.P3906376590814451891

/-! ## A103654.P8676644130843780433

`∩[A109403(n+1), A161839(n+1)]`
-/

namespace A103654.P8676644130843780433
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109403 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161839 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A103654.P8676644130843780433

/-! ## A103654.P12689800350174308270

`∩[A109403(n+1), A284696(n+1)]`
-/

namespace A103654.P12689800350174308270
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109403 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284696 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A103654.P12689800350174308270

/-!
# A103655: Indices of primes which are the average of two successive semiprimes.

The programs for A103655, there is no canonical definition to state claims against.
-/

/-! ## A103655.P16094975202725231383

`A000720(A103654(n+1))`
-/

namespace A103655.P16094975202725231383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A103654 (n + 1)).toNat

end

end A103655.P16094975202725231383

/-! ## A103655.P14794903872021512194

`∑{d}[A103654(n+1), A061395(#)]`
-/

namespace A103655.P14794903872021512194
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103654 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A061395 d

end

end A103655.P14794903872021512194

/-! ## A103655.P5403469135110625296

`A061395(A103654(n+1)%A158693(n+1))`
-/

namespace A103655.P5403469135110625296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (Int.tmod (A103654 (n + 1)) (A158693 (n + 1))).toNat

end

end A103655.P5403469135110625296

/-! ## A103655.P4279173943399311203

`A061395(A103654(n+1))%A295770(n+1)`
-/

namespace A103655.P4279173943399311203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A061395 (A103654 (n + 1)).toNat) (A295770 (n + 1))

end

end A103655.P4279173943399311203

/-! ## A103655.P17275169665459002084

`A061395(2*A103654(n+1))`
-/

namespace A103655.P17275169665459002084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (2 * A103654 (n + 1)).toNat

end

end A103655.P17275169665459002084

/-! ## A103655.P1483484382318324363

`A156061(p?[A109403(n+1)])`
-/

namespace A103655.P1483484382318324363
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109403 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156061 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A103655.P1483484382318324363

/-!
# A103657: Number of different volumes assumed by triangular pyramids with their 4 vertices chosen from distinct points of an (n+1)X(n+1)X(n+1) lattice cube, including degenerate objects with volume=0.

The programs for A103657, there is no canonical definition to state claims against.
-/

/-! ## A103657.P3121083415179407560

`A002024(n+3)+A001462(A000584(n+1))`
-/

namespace A103657.P3121083415179407560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 (n + 3) + A001462 (A000584 (n + 1)).toNat

end

end A103657.P3121083415179407560

/-!
# A103658: Number of configurations of 4 distinct points chosen from an (n+1) X (n+1) X (n+1) lattice cube resulting in objects with volume=0.

The programs for A103658, there is no canonical definition to state claims against.
-/

/-! ## A103658.P2148508538505477877

`A103157(n+1)%A103656(A105119(n+1))`
-/

namespace A103658.P2148508538505477877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A103157 (n + 1)) (A103656 (A105119 (n + 1)).toNat)

end

end A103658.P2148508538505477877

/-! ## A103658.P792739919417350341

`A103157(n+1)-A000005(A057185(n+1))*A103656(n+1)`
-/

namespace A103658.P792739919417350341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103157 (n + 1) - A000005 (A057185 (n + 1)).toNat * A103656 (n + 1)

end

end A103658.P792739919417350341

/-! ## A103658.P17114690321199555676

`C((n+2)^3, 4)%A103656(A207954(n+1))`
-/

namespace A103658.P17114690321199555676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (Nat.choose ((n + 2) ^ 3) 4 : ℤ) (A103656 (A207954 (n + 1)).toNat)

end

end A103658.P17114690321199555676

/-! ## A103658.P17871439371734796354

`A000332((n+2)^3)%A103656(A207954(n+1))`
-/

namespace A103658.P17871439371734796354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000332 ((n + 2) ^ 3)) (A103656 (A207954 (n + 1)).toNat)

end

end A103658.P17871439371734796354

/-! ## A103658.P4562495249788285845

`A103157(n+1)-(A103656(n+1)+A103656(A207954(n+1)))`
-/

namespace A103658.P4562495249788285845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103157 (n + 1) - (A103656 (n + 1) + A103656 (A207954 (n + 1)).toNat)

end

end A103658.P4562495249788285845

/-!
# A103661: Smallest value of 6*V not occurring in the list of 4-point object volumes assumed by triangular pyramids with their 4 vertices chosen from distinct points of an (n+1)X(n+1)X(n+1) lattice cube.

The programs for A103661, there is no canonical definition to state claims against.
-/

/-! ## A103661.P14133632286550857811

`∑[A039669(n+3)]-A236185(n+1)`
-/

namespace A103661.P14133632286550857811
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039669 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A236185 (n + 1)

end

end A103661.P14133632286550857811

/-!
# A103662: Smallest power with base>1 and exponent n whose decimal representation doesn't contain the digit 0.

The programs for A103662, there is no canonical definition to state claims against.
-/

/-! ## A103662.P13371587561747213079

`A103663(n)^n`
-/

namespace A103662.P13371587561747213079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103663 n ^ n

end

end A103662.P13371587561747213079

/-! ## A103662.P16566739171948303220

`(A161849(A096958(n))%A087172(A018252(n+2)+1)+1)^n`
-/

namespace A103662.P16566739171948303220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.tmod (A161849 (A096958 n).toNat) (A087172 (A018252 (n + 2) + 1).toNat) + 1) ^ n

end

end A103662.P16566739171948303220

/-! ## A103662.P8498574272725644718

`(A103293(A238707(n))+1)^n`
-/

namespace A103662.P8498574272725644718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A103293 (A238707 n).toNat + 1) ^ n

end

end A103662.P8498574272725644718

/-! ## A103662.P10495437754432717642

`A056608(A356751(n+1)+xor(1, n))^n`
-/

namespace A103662.P10495437754432717642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056608 (A356751 (n + 1) + (Nat.xor 1 n : ℤ)).toNat ^ n

end

end A103662.P10495437754432717642

/-! ## A103662.P1631207189792603153

`A138143(A336782(n+1))^n`
-/

namespace A103662.P1631207189792603153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138143 (A336782 (n + 1)).toNat ^ n

end

end A103662.P1631207189792603153

/-!
# A103664: Primes p such that the number of divisors of p-1 is less than the number of divisors of p+1.

The programs for A103664, the canonical program `A103664.P16967067740305570785` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A103664 has offset 1).

The definition of A103664 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 554 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A103664.P16967067740305570785

`p?[lt[A274010(n), A274010(n+1)]]`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A103664

/-- `p?[lt[A274010(n), A274010(n+1)]]` -/
def P16967067740305570785.Spec : Prop :=
  ∀ n, (P16967067740305570785.a n : ℤ) = A103664 (n + 1)

theorem P16967067740305570785.correct : P16967067740305570785.Spec := by
  intro n
  simp only [A103664, Nat.add_sub_cancel]

end A103664

/-! ## A103664.P15638670763267638138

`p?[lt[A129680(2*(n+1)), A129679(n+5)]]`
-/

namespace A103664.P15638670763267638138
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129680 (2 * (n + 1))

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129679 (n + 5)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A103664.P15638670763267638138

namespace A103664

/-- `p?[lt[A129680(2*(n+1)), A129679(n+5)]]` -/
def P15638670763267638138.Spec : Prop :=
  ∀ n, (P15638670763267638138.a n : ℤ) = A103664 (n + 1)

end A103664

/-! ## A103664.P301412107222472691

`p?[A001651(n+1)+A000045(A348037(n+1))]`
-/

namespace A103664.P301412107222472691
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001651 (n + 1) + A000045 (A348037 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A103664.P301412107222472691

namespace A103664

/-- `p?[A001651(n+1)+A000045(A348037(n+1))]` -/
def P301412107222472691.Spec : Prop :=
  ∀ n, P301412107222472691.a n = A103664 (n + 1)

end A103664

/-! ## A103664.P11583631509643940601

`∩[A040054(n+1), A203076(n)]`
-/

namespace A103664.P11583631509643940601
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040054 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203076 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A103664.P11583631509643940601

namespace A103664

/-- `∩[A040054(n+1), A203076(n)]` -/
def P11583631509643940601.Spec : Prop :=
  ∀ n, (P11583631509643940601.a n : ℤ) = A103664 (n + 1)

end A103664

/-! ## A103664.P7660527405515253118

`∩[A040078(n+1), A203076(n)]`
-/

namespace A103664.P7660527405515253118
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040078 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203076 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A103664.P7660527405515253118

namespace A103664

/-- `∩[A040078(n+1), A203076(n)]` -/
def P7660527405515253118.Spec : Prop :=
  ∀ n, (P7660527405515253118.a n : ℤ) = A103664 (n + 1)

end A103664

/-!
# A103665: Primes p such that the number of divisors of p-1 is greater than the number of divisors of p+1.

The programs for A103665, the canonical program `A103665.P17680637823505638001` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A103665 has offset 1).

The definition of A103665 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4662 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A103665.P13441197389834599485

`A045319(lt[A145337(n), 0])`
-/

namespace A103665.P13441197389834599485
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145337 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A103665.P13441197389834599485

namespace A103665

/-- `A045319(lt[A145337(n), 0])` -/
def P13441197389834599485.Spec : Prop :=
  ∀ n, P13441197389834599485.a n = A103665 (n + 1)

end A103665

/-! ## A103665.P9913780530652049952

`A045344(lt[A145337(n), 0])`
-/

namespace A103665.P9913780530652049952
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145337 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045344 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A103665.P9913780530652049952

namespace A103665

/-- `A045344(lt[A145337(n), 0])` -/
def P9913780530652049952.Spec : Prop :=
  ∀ n, P9913780530652049952.a n = A103665 (n + 1)

end A103665

/-! ## A103665.P1958747976307454149

`A065091(lt[A145337(n), 0])`
-/

namespace A103665.P1958747976307454149
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145337 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A103665.P1958747976307454149

namespace A103665

/-- `A065091(lt[A145337(n), 0])` -/
def P1958747976307454149.Spec : Prop :=
  ∀ n, P1958747976307454149.a n = A103665 (n + 1)

end A103665

/-! ## A103665.P17680637823505638001

`A045319(lt[A008329(n+1), A008328(n+1)])`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A103665

/-- `A045319(lt[A008329(n+1), A008328(n+1)])` -/
def P17680637823505638001.Spec : Prop :=
  ∀ n, P17680637823505638001.a n = A103665 (n + 1)

theorem P17680637823505638001.correct : P17680637823505638001.Spec := by
  intro n
  simp only [A103665, Nat.add_sub_cancel]

end A103665

/-! ## A103665.P234611750752638249

`A045344(lt[A008329(n+1), A008328(n+1)])`
-/

namespace A103665.P234611750752638249
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008329 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008328 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045344 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A103665.P234611750752638249

namespace A103665

/-- `A045344(lt[A008329(n+1), A008328(n+1)])` -/
def P234611750752638249.Spec : Prop :=
  ∀ n, P234611750752638249.a n = A103665 (n + 1)

end A103665

/-! ## A103665.P15718596775554509445

`p?[lt[A274010(n+1), A274010(n)]]`
-/

namespace A103665.P15718596775554509445
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274010 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274010 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A103665.P15718596775554509445

namespace A103665

/-- `p?[lt[A274010(n+1), A274010(n)]]` -/
def P15718596775554509445.Spec : Prop :=
  ∀ n, (P15718596775554509445.a n : ℤ) = A103665 (n + 1)

end A103665

/-!
# A103666: Primes p such that the largest prime divisor of p-1 is less than the largest prime divisor of p+1.

The programs for A103666, the canonical program `A103666.P4115928620230331236` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A103666 has offset 1).

The definition of A103666 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2101 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A103666.P4113508490900972235

`p?[A082420(n+1)+1]`
-/

namespace A103666.P4113508490900972235
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082420 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A103666.P4113508490900972235

namespace A103666

/-- `p?[A082420(n+1)+1]` -/
def P4113508490900972235.Spec : Prop :=
  ∀ n, P4113508490900972235.a n = A103666 (n + 1)

end A103666

/-! ## A103666.P14745551857377539233

`record[A006530(A082420(n+1)+1)]`
-/

namespace A103666.P14745551857377539233
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A082420 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A103666.P14745551857377539233

namespace A103666

/-- `record[A006530(A082420(n+1)+1)]` -/
def P14745551857377539233.Spec : Prop :=
  ∀ n, P14745551857377539233.a n = A103666 (n + 1)

end A103666

/-! ## A103666.P8865067180642714318

`record[A020639(A082420(n+1)+1)]`
-/

namespace A103666.P8865067180642714318
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A082420 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A103666.P8865067180642714318

namespace A103666

/-- `record[A020639(A082420(n+1)+1)]` -/
def P8865067180642714318.Spec : Prop :=
  ∀ n, P8865067180642714318.a n = A103666 (n + 1)

end A103666

/-! ## A103666.P4115928620230331236

`record[A006530(2*A070089(n+2)+1)]`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A103666

/-- `record[A006530(2*A070089(n+2)+1)]` -/
def P4115928620230331236.Spec : Prop :=
  ∀ n, P4115928620230331236.a n = A103666 (n + 1)

theorem P4115928620230331236.correct : P4115928620230331236.Spec := by
  intro n
  simp only [A103666, Nat.add_sub_cancel]

end A103666

/-! ## A103666.P18321408942365769899

`record[A014963(A082420(n+1)+1)]`
-/

namespace A103666.P18321408942365769899
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A082420 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A103666.P18321408942365769899

namespace A103666

/-- `record[A014963(A082420(n+1)+1)]` -/
def P18321408942365769899.Spec : Prop :=
  ∀ n, P18321408942365769899.a n = A103666 (n + 1)

end A103666

/-!
# A103667: Primes p such that the largest prime divisor of p-1 is greater than the largest prime divisor of p+1.

The programs for A103667, the canonical program `A103667.P16193118299786317801` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A103667 has offset 1).

The definition of A103667 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2101 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A103667.P5263982038817378561

`p?[A082419(n+1)+1]`
-/

namespace A103667.P5263982038817378561
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082419 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A103667.P5263982038817378561

namespace A103667

/-- `p?[A082419(n+1)+1]` -/
def P5263982038817378561.Spec : Prop :=
  ∀ n, P5263982038817378561.a n = A103667 (n + 1)

end A103667

/-! ## A103667.P15711534741395904940

`record[A006530(A082419(n+1)+1)]`
-/

namespace A103667.P15711534741395904940
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A082419 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A103667.P15711534741395904940

namespace A103667

/-- `record[A006530(A082419(n+1)+1)]` -/
def P15711534741395904940.Spec : Prop :=
  ∀ n, P15711534741395904940.a n = A103667 (n + 1)

end A103667

/-! ## A103667.P16193118299786317801

`record[A006530(2*A070087(n+1)+1)]`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A103667

/-- `record[A006530(2*A070087(n+1)+1)]` -/
def P16193118299786317801.Spec : Prop :=
  ∀ n, P16193118299786317801.a n = A103667 (n + 1)

theorem P16193118299786317801.correct : P16193118299786317801.Spec := by
  intro n
  simp only [A103667, Nat.add_sub_cancel]

end A103667

/-! ## A103667.P17923920145992533050

`record[A006530(A070087(n+1)+A070087(n+1)+1)]`
-/

namespace A103667.P17923920145992533050
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A070087 (n + 1) + A070087 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A103667.P17923920145992533050

namespace A103667

/-- `record[A006530(A070087(n+1)+A070087(n+1)+1)]` -/
def P17923920145992533050.Spec : Prop :=
  ∀ n, P17923920145992533050.a n = A103667 (n + 1)

theorem P17923920145992533050.correct : P17923920145992533050.Spec := by
  intro n
  simp only [A103667, Nat.add_sub_cancel, A103667.P17923920145992533050.f1, A103667.P17923920145992533050.a, A103667.P16193118299786317801.f1, A103667.P16193118299786317801.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A103667

/-! ## A103667.P10329261934034227293

`p?[eq[2, A174869(n+1)]+2]`
-/

namespace A103667.P10329261934034227293
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174869 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n + 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A103667.P10329261934034227293

namespace A103667

/-- `p?[eq[2, A174869(n+1)]+2]` -/
def P10329261934034227293.Spec : Prop :=
  ∀ n, (P10329261934034227293.a n : ℤ) = A103667 (n + 1)

end A103667

/-! ## A103667.P933868257678639300

`record[A006530(eq[2, A174869(n+1)]+2)]`
-/

namespace A103667.P933868257678639300
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174869 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A103667.P933868257678639300

namespace A103667

/-- `record[A006530(eq[2, A174869(n+1)]+2)]` -/
def P933868257678639300.Spec : Prop :=
  ∀ n, P933868257678639300.a n = A103667 (n + 1)

end A103667

/-!
# A103668: Number of semiprimes between prime(n) and prime(n+1).

The programs for A103668, the canonical program `A103668.P24326992763357563` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A103668 has offset 1).

The definition of A103668 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A103668.P2963271772337736898

`Δ[A111457(n+1)]`
-/

namespace A103668.P2963271772337736898
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111457 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A103668.P2963271772337736898

namespace A103668

/-- `Δ[A111457(n+1)]` -/
def P2963271772337736898.Spec : Prop :=
  ∀ n, P2963271772337736898.a n = A103668 (n + 1)

end A103668

/-! ## A103668.P24326992763357563

`Δ[A072000(A000040(n+1))]`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A103668

/-- `Δ[A072000(A000040(n+1))]` -/
def P24326992763357563.Spec : Prop :=
  ∀ n, P24326992763357563.a n = A103668 (n + 1)

theorem P24326992763357563.correct : P24326992763357563.Spec := by
  intro n
  simp only [A103668, Nat.add_sub_cancel]

end A103668

/-! ## A103668.P9103341614729461897

`Δ[A072000(A006093(n+1))]`
-/

namespace A103668.P9103341614729461897
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072000 (A006093 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A103668.P9103341614729461897

namespace A103668

/-- `Δ[A072000(A006093(n+1))]` -/
def P9103341614729461897.Spec : Prop :=
  ∀ n, P9103341614729461897.a n = A103668 (n + 1)

end A103668

/-! ## A103668.P13634529264770886170

`Δ[A072000(A039915(n+1))]`
-/

namespace A103668.P13634529264770886170
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072000 (A039915 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A103668.P13634529264770886170

namespace A103668

/-- `Δ[A072000(A039915(n+1))]` -/
def P13634529264770886170.Spec : Prop :=
  ∀ n, P13634529264770886170.a n = A103668 (n + 1)

end A103668

/-! ## A103668.P2050631022168416262

`Δ[A072000(A156037(n+1))]`
-/

namespace A103668.P2050631022168416262
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072000 (A156037 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A103668.P2050631022168416262

namespace A103668

/-- `Δ[A072000(A156037(n+1))]` -/
def P2050631022168416262.Spec : Prop :=
  ∀ n, P2050631022168416262.a n = A103668 (n + 1)

end A103668

/-! ## A103668.P3693371145678922319

`Δ[A072000(A008578(n+2))]`
-/

namespace A103668.P3693371145678922319
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072000 (A008578 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A103668.P3693371145678922319

namespace A103668

/-- `Δ[A072000(A008578(n+2))]` -/
def P3693371145678922319.Spec : Prop :=
  ∀ n, P3693371145678922319.a n = A103668 (n + 1)

end A103668

/-! ## A103668.P11947693002963257303

`Δ[A072000(A068499(n+2))]`
-/

namespace A103668.P11947693002963257303
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072000 (A068499 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A103668.P11947693002963257303

namespace A103668

/-- `Δ[A072000(A068499(n+2))]` -/
def P11947693002963257303.Spec : Prop :=
  ∀ n, P11947693002963257303.a n = A103668 (n + 1)

end A103668

/-! ## A103668.P4393061415407857682

`Δ[A072000(record[A000010(n+1)])]`
-/

namespace A103668.P4393061415407857682
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072000 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A103668.P4393061415407857682

namespace A103668

/-- `Δ[A072000(record[A000010(n+1)])]` -/
def P4393061415407857682.Spec : Prop :=
  ∀ n, P4393061415407857682.a n = A103668 (n + 1)

end A103668

/-! ## A103668.P2925047536773327951

`A111457(n+2)-A111457(n+1)`
-/

namespace A103668.P2925047536773327951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111457 (n + 2) - A111457 (n + 1)

end

end A103668.P2925047536773327951

namespace A103668

/-- `A111457(n+2)-A111457(n+1)` -/
def P2925047536773327951.Spec : Prop :=
  ∀ n, P2925047536773327951.a n = A103668 (n + 1)

end A103668

/-!
# A103669: First occurrence of just n semiprimes occurs between the a(n)-th prime and the next prime.

The programs for A103669, there is no canonical definition to state claims against.
-/

/-! ## A103669.P9464454112754665902

`A000720(A228171(n))`
-/

namespace A103669.P9464454112754665902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A228171 n).toNat

end

end A103669.P9464454112754665902

/-! ## A103669.P9341867654117302939

`A061395(2*A228171(n))`
-/

namespace A103669.P9341867654117302939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (2 * A228171 n).toNat

end

end A103669.P9341867654117302939

/-! ## A103669.P11012788921390386144

`A061395(lcm(2, A228171(n)))`
-/

namespace A103669.P11012788921390386144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (Int.lcm 2 (A228171 n))

end

end A103669.P11012788921390386144

/-!
# A103670: Smallest m such that A102730(m) = n.

The programs for A103670, there is no canonical definition to state claims against.
-/

/-! ## A103670.P9952415653525278555

`A034327(A025248(n+1))-1+n`
-/

namespace A103670.P9952415653525278555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034327 (A025248 (n + 1)).toNat - 1 + (n : ℤ)

end

end A103670.P9952415653525278555

/-! ## A103670.P6778591825002699525

`eq[A008287(n), A173740(A085543(n))]`
-/

namespace A103670.P6778591825002699525
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008287 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173740 (A085543 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A103670.P6778591825002699525

/-! ## A103670.P1538759844735258687

`A034327(A025248(n+1))+A023443(n)`
-/

namespace A103670.P1538759844735258687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034327 (A025248 (n + 1)).toNat + A023443 n

end

end A103670.P1538759844735258687

/-!
# A103673: If in binary representation n! contains 5! then 1 else 0.

The programs for A103673, there is no canonical definition to state claims against.
-/

/-! ## A103673.P11596141497975846589

`1-char[A103677(n+1)]`
-/

namespace A103673.P11596141497975846589
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103677 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A103673.P11596141497975846589

/-!
# A103674: If in binary representation n! contains 6! then 1 else 0.

The programs for A103674, there is no canonical definition to state claims against.
-/

/-! ## A103674.P8888103774261324699

`char[A103678(n-Δ[or(2, -n)])]`
-/

namespace A103674.P8888103774261324699
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 2 (-(n : ℤ))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103678 ((n : ℤ) - (f2 (n + 1) - f2 n)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A103674.P8888103774261324699

/-!
# A103675: a(n) = 1 if the binary representation of n! contains 7! (bit string "1001110110000"), otherwise a(n) = 0.

The programs for A103675, there is no canonical definition to state claims against.
-/

/-! ## A103675.P9419198124895193833

`char[A103680(n+1)]`
-/

namespace A103675.P9419198124895193833
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103680 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A103675.P9419198124895193833

/-! ## A103675.P1189572807744262252

`1-char[A103681(n+1)]`
-/

namespace A103675.P1189572807744262252
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103681 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A103675.P1189572807744262252

/-! ## A103675.P2472380134376678616

`A253903(xor(2, A331443(n)))`
-/

namespace A103675.P2472380134376678616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253903 (Int.xor 2 (A331443 n)).toNat

end

end A103675.P2472380134376678616

/-! ## A103675.P3589003803188686512

`A178333(A268810(n)+A246388(n))`
-/

namespace A103675.P3589003803188686512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178333 (A268810 n + A246388 n).toNat

end

end A103675.P3589003803188686512

/-! ## A103675.P14696769331576368357

`A014081(gcd(A007318(n), A122699(n)))`
-/

namespace A103675.P14696769331576368357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014081 (Int.gcd (A007318 n) (A122699 n))

end

end A103675.P14696769331576368357

/-! ## A103675.P3975517387535290981

`val(A022166(n), A000196(A215417(n+1)))`
-/

namespace A103675.P3975517387535290981
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A022166 n).toNat (A000196 (A215417 (n + 1)).toNat).toNat

end

end A103675.P3975517387535290981

/-! ## A103675.P15631448407800383053

`val(A204039(n+1), A017377(A347470(n)))`
-/

namespace A103675.P15631448407800383053
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A204039 (n + 1)).toNat (A017377 (A347470 n).toNat).toNat

end

end A103675.P15631448407800383053

/-! ## A103675.P10837580287055439051

`val(A241108(n+1), A247384(A180138(n+1)))`
-/

namespace A103675.P10837580287055439051
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A241108 (n + 1)).toNat (A247384 (A180138 (n + 1)).toNat).toNat

end

end A103675.P10837580287055439051

/-! ## A103675.P2752905483516789059

`val(A300838(A302781(n+1)), A163252(n+4))`
-/

namespace A103675.P2752905483516789059
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A300838 (A302781 (n + 1)).toNat).toNat (A163252 (n + 4)).toNat

end

end A103675.P2752905483516789059

/-! ## A103675.P4332250461395695644

`A156659(A098294(n)^A178401(n))`
-/

namespace A103675.P4332250461395695644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156659 (SequenceMachineLib.roundAway ((A098294 n : ℚ) ^ (A178401 n : ℤ))).toNat

end

end A103675.P4332250461395695644

/-! ## A103675.P3714372552746985341

`A073424(A190033(n+1)-A123895(n))`
-/

namespace A103675.P3714372552746985341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073424 (A190033 (n + 1) - A123895 n).toNat

end

end A103675.P3714372552746985341

/-! ## A103675.P13095319216076964935

`val(A000217(A001156(2*n+3)), A000217(n+2))`
-/

namespace A103675.P13095319216076964935
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A000217 (A001156 (2 * n + 3)).toNat).toNat (A000217 (n + 2)).toNat

end

end A103675.P13095319216076964935

/-! ## A103675.P13398844734269304947

`val(p?[A106580(n)], 7)`
-/

namespace A103675.P13398844734269304947
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106580 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat 7

end

end A103675.P13398844734269304947

/-! ## A103675.P18020085830447180479

`A010054(or(24, A048058(n)))`
-/

namespace A103675.P18020085830447180479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 (Int.lor 24 (A048058 n)).toNat

end

end A103675.P18020085830447180479

/-! ## A103675.P17477180847052291657

`val(A222711(A016885(n)), 39)`
-/

namespace A103675.P17477180847052291657
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A222711 (A016885 n).toNat).toNat 39

end

end A103675.P17477180847052291657

/-!
# A103676: Numbers m such that in binary representation m! contains 5!.

The programs for A103676, there is no canonical definition to state claims against.
-/

/-! ## A103676.P13016678982153041863

`lt[A000122(A358425(n+1)), A103673(n)]`
-/

namespace A103676.P13016678982153041863
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000122 (A358425 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103673 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A103676.P13016678982153041863

/-!
# A103677: Numbers m such that in binary representation m! doesn't contain 5!.

The programs for A103677, there is no canonical definition to state claims against.
-/

/-! ## A103677.P9705521138825498816

`comp[A103676(A271518(n))]`
-/

namespace A103677.P9705521138825498816
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103676 (A271518 n).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A103677.P9705521138825498816

/-! ## A103677.P15571479718701408101

`eq[A103673(n), A243835(n)]`
-/

namespace A103677.P15571479718701408101
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103673 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243835 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A103677.P15571479718701408101

/-! ## A103677.P5082026223618430492

`eq[A103673(n), A264668(n)]`
-/

namespace A103677.P5082026223618430492
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103673 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264668 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A103677.P5082026223618430492

/-! ## A103677.P2904635125089570837

`comp[A103676(A017666(n+1))]`
-/

namespace A103677.P2904635125089570837
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103676 (A017666 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A103677.P2904635125089570837

/-! ## A103677.P6680296198057275347

`eq[A103673(n), A112802(n+1)]`
-/

namespace A103677.P6680296198057275347
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103673 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112802 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A103677.P6680296198057275347

/-!
# A103678: Numbers m such that in binary representation m! contains 6!.

The programs for A103678, there is no canonical definition to state claims against.
-/

/-! ## A103678.P9872869693412137084

`lt[1, A103674(n)*A233583(n+1)]`
-/

namespace A103678.P9872869693412137084
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103674 n * A233583 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A103678.P9872869693412137084

/-!
# A103679: Numbers m such that the binary representation of m! does not contain 6!.

The programs for A103679, there is no canonical definition to state claims against.
-/

/-! ## A103679.P1876212693563696196

`lt[A103674(A233583(n+1)), 1]`
-/

namespace A103679.P1876212693563696196
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103674 (A233583 (n + 1)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A103679.P1876212693563696196

/-! ## A103679.P4633286905505895787

`eq[A103674(n), A320647(A033922(n))]`
-/

namespace A103679.P4633286905505895787
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103674 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320647 (A033922 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A103679.P4633286905505895787

/-! ## A103679.P16120286616033857720

`eq[A103674(n), A144553(A096825(n+1))]`
-/

namespace A103679.P16120286616033857720
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103674 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144553 (A096825 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A103679.P16120286616033857720

/-! ## A103679.P1487357537791883697

`lt[A103674(n), A178334(A237593(n+1))]`
-/

namespace A103679.P1487357537791883697
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103674 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178334 (A237593 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A103679.P1487357537791883697

/-! ## A103679.P11515602908308258732

`eq[A017908(A001222(2*(n+2))), A103674(n)]`
-/

namespace A103679.P11515602908308258732
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017908 (A001222 (2 * (n + 2))).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103674 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A103679.P11515602908308258732

/-! ## A103679.P16189012534544893955

`lt[A103674(n), A165022(A004214(3*(n+1)))]`
-/

namespace A103679.P16189012534544893955
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103674 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165022 (A004214 (3 * (n + 1))).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A103679.P16189012534544893955

/-! ## A103679.P16817968324367238684

`lt[A103674(n), A165022(A383098(n))]`
-/

namespace A103679.P16817968324367238684
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103674 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165022 (A383098 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A103679.P16817968324367238684

/-!
# A103680: Numbers m such that the binary representation of m! contains 7!.

The programs for A103680, there is no canonical definition to state claims against.
-/

/-! ## A103680.P13736046075799903421

`lt[0, A103675(n)]`
-/

namespace A103680.P13736046075799903421
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103675 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A103680.P13736046075799903421

/-! ## A103680.P10642870262145431326

`A000027(eq[1, A103675(n)])`
-/

namespace A103680.P10642870262145431326
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103675 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A103680.P10642870262145431326

/-! ## A103680.P13163954632267592933

`eq[1, A103675(A028310(n))]`
-/

namespace A103680.P13163954632267592933
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103675 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A103680.P13163954632267592933

/-! ## A103680.P7243121605546599690

`eq[abs(A033999(n)), A103675(n)]`
-/

namespace A103680.P7243121605546599690
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A033999 n|

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103675 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A103680.P7243121605546599690

/-! ## A103680.P16690865480470925672

`eq[A054977(n), A103675(n)]`
-/

namespace A103680.P16690865480470925672
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054977 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103675 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A103680.P16690865480470925672

/-! ## A103680.P12617178637051194183

`eq[A103675(n), A141044(n)]`
-/

namespace A103680.P12617178637051194183
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103675 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141044 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A103680.P12617178637051194183

/-! ## A103680.P10601511225605968683

`eq[A103675(n), A158388(n)]`
-/

namespace A103680.P10601511225605968683
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103675 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158388 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A103680.P10601511225605968683

/-! ## A103680.P4778556188797573828

`eq[A103675(n), A261143(n)]`
-/

namespace A103680.P4778556188797573828
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103675 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261143 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A103680.P4778556188797573828

/-! ## A103680.P14340743569926644392

`eq[A103675(n), A329684(n)]`
-/

namespace A103680.P14340743569926644392
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103675 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329684 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A103680.P14340743569926644392

/-! ## A103680.P16112497112464507541

`eq[A103675(n), A373565(n)]`
-/

namespace A103680.P16112497112464507541
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103675 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373565 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A103680.P16112497112464507541

/-! ## A103680.P2290251814374161324

`eq[A008461(n+1), A103675(n)]`
-/

namespace A103680.P2290251814374161324
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008461 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103675 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A103680.P2290251814374161324

/-! ## A103680.P7624547756145976224

`comp[A103681(n+1)]`
-/

namespace A103680.P7624547756145976224
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103681 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A103680.P7624547756145976224

/-! ## A103680.P3146791138113280384

`eq[A103675(n), A124779(n)]`
-/

namespace A103680.P3146791138113280384
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103675 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124779 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A103680.P3146791138113280384

/-!
# A103681: Numbers m such that in binary representation m! does not contain 7!.

The programs for A103681, there is no canonical definition to state claims against.
-/

/-! ## A103681.P9726297017320659630

`A329860(A139337(n+3))+n`
-/

namespace A103681.P9726297017320659630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329860 (A139337 (n + 3)).toNat + (n : ℤ)

end

end A103681.P9726297017320659630

/-! ## A103681.P3325949313002037375

`A206483(A358497(n+3))+n`
-/

namespace A103681.P3325949313002037375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206483 (A358497 (n + 3)).toNat + (n : ℤ)

end

end A103681.P3325949313002037375

/-! ## A103681.P3610724027450856840

`A262682(A030096(2*(n+1)))+n`
-/

namespace A103681.P3610724027450856840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262682 (A030096 (2 * (n + 1))).toNat + (n : ℤ)

end

end A103681.P3610724027450856840

/-! ## A103681.P9534653280798214194

`val(A055642(A033218(n+5)), 2)+n`
-/

namespace A103681.P9534653280798214194
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A055642 (A033218 (n + 5)).toNat).toNat 2 + n

end

end A103681.P9534653280798214194

/-! ## A103681.P10569698685172881461

`2%A001400(A003105(n))+n`
-/

namespace A103681.P10569698685172881461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod 2 (A001400 (A003105 n).toNat) + (n : ℤ)

end

end A103681.P10569698685172881461

/-! ## A103681.P15685072703334308031

`n+1-A153881(A103374(n+1))`
-/

namespace A103681.P15685072703334308031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A153881 (A103374 (n + 1)).toNat

end

end A103681.P15685072703334308031

/-! ## A103681.P15461671277378470756

`A262682(A187263(2*(n+1)))+n`
-/

namespace A103681.P15461671277378470756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262682 (A187263 (2 * (n + 1))).toNat + (n : ℤ)

end

end A103681.P15461671277378470756

/-! ## A103681.P16389315802219174745

`A158388(A238221(n))+n+1`
-/

namespace A103681.P16389315802219174745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158388 (A238221 n).toNat + (n + 1 : ℤ)

end

end A103681.P16389315802219174745

/-! ## A103681.P2518417627758372617

`A262680(A001359(3*(n+1)))+n-1`
-/

namespace A103681.P2518417627758372617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262680 (A001359 (3 * (n + 1))).toNat + ((n : ℤ) - 1)

end

end A103681.P2518417627758372617

/-! ## A103681.P8747589932943484645

`A262682(A160118(n))+n`
-/

namespace A103681.P8747589932943484645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262682 (A160118 n).toNat + (n : ℤ)

end

end A103681.P8747589932943484645

/-!
# A103682: Trajectory of 1 under repeated applications of the morphism 1-> {1,2}, 2->{1,2,3}, 3->{1,1,3}.

The programs for A103682, there is no canonical definition to state claims against.
-/

/-! ## A103682.P7034294294527372507

`Δ[lt[A087731(n), A087768(2*n+3)]]`
-/

namespace A103682.P7034294294527372507
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087731 n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087768 (2 * n + 3)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < f3 j) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A103682.P7034294294527372507

/-! ## A103682.P6954251538722445406

`Δ[lt[A087721(n+1), A087768(2*n+3)]]`
-/

namespace A103682.P6954251538722445406
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087721 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087768 (2 * n + 3)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < f3 j) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A103682.P6954251538722445406

/-! ## A103682.P13218276192321132253

`Δ[lt[A087758(n+1), A087768(2*n+3)]]`
-/

namespace A103682.P13218276192321132253
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087758 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087768 (2 * n + 3)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < f3 j) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A103682.P13218276192321132253

/-! ## A103682.P4672358256967248606

`A001221(A008619(p?[A234748(n)]²))`
-/

namespace A103682.P4672358256967248606
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234748 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A008619 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) ^ 2).toNat).toNat

end

end A103682.P4672358256967248606

/-! ## A103682.P16226987935259470317

`A348042(A333630(n+1))`
-/

namespace A103682.P16226987935259470317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348042 (A333630 (n + 1)).toNat

end

end A103682.P16226987935259470317

/-!
# A103684: Triangle read by rows, based on the morphism f: 1->{1,2}, 2->{1,3}, 3->{1}. First row is 1. If current row is a,b,c,..., then the next row is a,b,c,...,f(a),f(b),f(c),...

The programs for A103684, there is no canonical definition to state claims against.
-/

/-! ## A103684.P4902072551096733548

`A103956(A190482(n+1))`
-/

namespace A103684.P4902072551096733548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103956 (A190482 (n + 1)).toNat

end

end A103684.P4902072551096733548

/-! ## A103684.P2681463943298627101

`A105103(n)%A359952(n+1)`
-/

namespace A103684.P2681463943298627101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A105103 n) (A359952 (n + 1))

end

end A103684.P2681463943298627101

/-! ## A103684.P16496412718801100853

`A105103(gcd(n, A186747(n)))`
-/

namespace A103684.P16496412718801100853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105103 (Int.gcd (n : ℤ) (A186747 n))

end

end A103684.P16496412718801100853

/-! ## A103684.P13478765365019758958

`gcd(A006792(n), A105103(n))`
-/

namespace A103684.P13478765365019758958
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A006792 (n + 10)) (A105103 n)

end

end A103684.P13478765365019758958

/-! ## A103684.P17632533700953746503

`and(A105103(n), A222291(n))`
-/

namespace A103684.P17632533700953746503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A105103 n) (A222291 n)

end

end A103684.P17632533700953746503

/-!
# A103685: Consider the morphism 1->{1,2}, 2->{1,3}, 3->{1}; a(n) is the total number of '3' after n substitutions.

The programs for A103685, the canonical program `A103685.P17220388730437743114` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A103685 has offset 0).

The definition of A103685 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A103685.P17220388730437743114

`5*a(n-1)-8*a(n-2)+6*a(n-3)-2*a(n-4)` with `a(0)=0, a(1)=0, a(2)=1, a(3)=5`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A103685

/-- `5*a(n-1)-8*a(n-2)+6*a(n-3)-2*a(n-4)` -/
def P17220388730437743114.Spec : Prop :=
  ∀ n, P17220388730437743114.a n = A103685 n

theorem P17220388730437743114.correct : P17220388730437743114.Spec := by
  intro n
  simp only [A103685]

end A103685

/-! ## A103685.P6625620022731141144

`a(n-1)+A115390(n)` with `a(0)=0`
-/

namespace A103685.P6625620022731141144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) + A115390 n

end

end A103685.P6625620022731141144

namespace A103685

/-- `a(n-1)+A115390(n)` -/
def P6625620022731141144.Spec : Prop :=
  ∀ n, P6625620022731141144.a n = A103685 n

end A103685

/-! ## A103685.P5568950581448717447

`∑[ogf(x^2/(1-4x+4x^2-2x^3))]`
-/

namespace A103685.P5568950581448717447
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 0, 1] [1, -4, 4, -2] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A103685.P5568950581448717447

namespace A103685

/-- `∑[ogf(x^2/(1-4x+4x^2-2x^3))]` -/
def P5568950581448717447.Spec : Prop :=
  ∀ n, P5568950581448717447.a n = A103685 n

end A103685

/-! ## A103685.P1821559612182226695

`∑[A115390(n)]`
-/

namespace A103685.P1821559612182226695
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115390 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A103685.P1821559612182226695

namespace A103685

/-- `∑[A115390(n)]` -/
def P1821559612182226695.Spec : Prop :=
  ∀ n, P1821559612182226695.a n = A103685 n

end A103685

/-! ## A103685.P582932165772638568

`∑[∑[A073357(abs(1-n))]-1]`
-/

namespace A103685.P582932165772638568
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073357 |1 - (n : ℤ)|.toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A103685.P582932165772638568

namespace A103685

/-- `∑[∑[A073357(abs(1-n))]-1]` -/
def P582932165772638568.Spec : Prop :=
  ∀ n, P582932165772638568.a n = A103685 n

end A103685

/-! ## A103685.P726766997081310489

`A078484(A028310(n))-1`
-/

namespace A103685.P726766997081310489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078484 (A028310 n).toNat - 1

end

end A103685.P726766997081310489

namespace A103685

/-- `A078484(A028310(n))-1` -/
def P726766997081310489.Spec : Prop :=
  ∀ n, P726766997081310489.a n = A103685 n

end A103685

/-! ## A103685.P4471794951373312664

`A078484(n)+A057428(n)`
-/

namespace A103685.P4471794951373312664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078484 n + A057428 n

end

end A103685.P4471794951373312664

namespace A103685

/-- `A078484(n)+A057428(n)` -/
def P4471794951373312664.Spec : Prop :=
  ∀ n, P4471794951373312664.a n = A103685 n

end A103685

/-! ## A103685.P11706458601185041750

`A078484(n)-A057427(n)`
-/

namespace A103685.P11706458601185041750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078484 n - A057427 n

end

end A103685.P11706458601185041750

namespace A103685

/-- `A078484(n)-A057427(n)` -/
def P11706458601185041750.Spec : Prop :=
  ∀ n, P11706458601185041750.a n = A103685 n

end A103685

/-! ## A103685.P14820795264514125570

`∑[A117189(n)-A099216(n)]`
-/

namespace A103685.P14820795264514125570
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117189 n - A099216 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A103685.P14820795264514125570

namespace A103685

/-- `∑[A117189(n)-A099216(n)]` -/
def P14820795264514125570.Spec : Prop :=
  ∀ n, P14820795264514125570.a n = A103685 n

end A103685

/-! ## A103685.P6750254315190185827

`A117189(n)-∑[A159035(n)]`
-/

namespace A103685.P6750254315190185827
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159035 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117189 n - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A103685.P6750254315190185827

namespace A103685

/-- `A117189(n)-∑[A159035(n)]` -/
def P6750254315190185827.Spec : Prop :=
  ∀ n, P6750254315190185827.a n = A103685 n

end A103685

/-! ## A103685.P7381345700954906196

`A000007(n)+A078484(n)-1`
-/

namespace A103685.P7381345700954906196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n + (A078484 n - 1)

end

end A103685.P7381345700954906196

namespace A103685

/-- `A000007(n)+A078484(n)-1` -/
def P7381345700954906196.Spec : Prop :=
  ∀ n, P7381345700954906196.a n = A103685 n

end A103685

/-! ## A103685.P15594045881809756287

`A117189(n)-(A073357(n)+1)`
-/

namespace A103685.P15594045881809756287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117189 n - (A073357 n + 1)

end

end A103685.P15594045881809756287

namespace A103685

/-- `A117189(n)-(A073357(n)+1)` -/
def P15594045881809756287.Spec : Prop :=
  ∀ n, P15594045881809756287.a n = A103685 n

end A103685

/-! ## A103685.P16963372943612488055

`A054977(n)+A078484(n)-2`
-/

namespace A103685.P16963372943612488055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054977 n + (A078484 n - 2)

end

end A103685.P16963372943612488055

namespace A103685

/-- `A054977(n)+A078484(n)-2` -/
def P16963372943612488055.Spec : Prop :=
  ∀ n, P16963372943612488055.a n = A103685 n

end A103685

/-! ## A103685.P16237133592263107527

`∑[∑[A073357(n)%A159035(n)]]`
-/

namespace A103685.P16237133592263107527
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A073357 n) (A159035 n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A103685.P16237133592263107527

namespace A103685

/-- `∑[∑[A073357(n)%A159035(n)]]` -/
def P16237133592263107527.Spec : Prop :=
  ∀ n, P16237133592263107527.a n = A103685 n

end A103685

/-! ## A103685.P12377844328913991764

`∑[A159035(n+1)-A099216(n)]`
-/

namespace A103685.P12377844328913991764
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159035 (n + 1) - A099216 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A103685.P12377844328913991764

namespace A103685

/-- `∑[A159035(n+1)-A099216(n)]` -/
def P12377844328913991764.Spec : Prop :=
  ∀ n, P12377844328913991764.a n = A103685 n

end A103685

/-! ## A103685.P2416186303380996008

`A159035(n+1)-∑[A159035(n)]`
-/

namespace A103685.P2416186303380996008
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159035 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159035 (n + 1) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A103685.P2416186303380996008

namespace A103685

/-- `A159035(n+1)-∑[A159035(n)]` -/
def P2416186303380996008.Spec : Prop :=
  ∀ n, P2416186303380996008.a n = A103685 n

end A103685

/-! ## A103685.P12029665031577449548

`∑[A291000(n)-∑[A117189(n)]]`
-/

namespace A103685.P12029665031577449548
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117189 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291000 n - ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A103685.P12029665031577449548

namespace A103685

/-- `∑[A291000(n)-∑[A117189(n)]]` -/
def P12029665031577449548.Spec : Prop :=
  ∀ n, P12029665031577449548.a n = A103685 n

end A103685

/-! ## A103685.P18386063260325487215

`∑[A291000(n)-A073357(n+1)]`
-/

namespace A103685.P18386063260325487215
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291000 n - A073357 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A103685.P18386063260325487215

namespace A103685

/-- `∑[A291000(n)-A073357(n+1)]` -/
def P18386063260325487215.Spec : Prop :=
  ∀ n, P18386063260325487215.a n = A103685 n

end A103685

/-! ## A103685.P13762460104342488993

`Δ[A073357(n)-A115390(n)]-1`
-/

namespace A103685.P13762460104342488993
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073357 n - A115390 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - 1

end

end A103685.P13762460104342488993

namespace A103685

/-- `Δ[A073357(n)-A115390(n)]-1` -/
def P13762460104342488993.Spec : Prop :=
  ∀ n, P13762460104342488993.a n = A103685 n

end A103685

/-! ## A103685.P8630023948000310088

`∑[(A117189(n)%A159035(n))%A141583(n+2)]`
-/

namespace A103685.P8630023948000310088
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (Int.tmod (A117189 n) (A159035 n)) (A141583 (n + 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A103685.P8630023948000310088

namespace A103685

/-- `∑[(A117189(n)%A159035(n))%A141583(n+2)]` -/
def P8630023948000310088.Spec : Prop :=
  ∀ n, P8630023948000310088.a n = A103685 n

end A103685

/-!
# A103686: Even semiprimes of the form p^2 + q^2, where p and q are primes.

The programs for A103686, there is no canonical definition to state claims against.
-/

/-! ## A103686.P11445304162059012302

`2*A103739(n+1)`
-/

namespace A103686.P11445304162059012302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A103739 (n + 1)

end

end A103686.P11445304162059012302

/-! ## A103686.P7359805856704772920

`2*p?[A143850(n+1)]`
-/

namespace A103686.P7359805856704772920
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143850 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A103686.P7359805856704772920

/-! ## A103686.P9970474537161961960

`∩[2*n, A103558(n+1)]`
-/

namespace A103686.P9970474537161961960
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103558 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A103686.P9970474537161961960

/-! ## A103686.P12788139856091859943

`2*p?[floor(A045636(n+1)/2)]`
-/

namespace A103686.P12788139856091859943
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A045636 (n + 1) : ℚ) / 2⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A103686.P12788139856091859943

/-! ## A103686.P7034042775683766620

`2*p?[floor(A214723(n+1)/2)]`
-/

namespace A103686.P7034042775683766620
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A214723 (n + 1) : ℚ) / 2⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A103686.P7034042775683766620

/-!
# A103687: Number of permutations p of (1,2,...,n) such that 1+k+p(k) is prime for all k=1,2,...,n.

The programs for A103687, there is no canonical definition to state claims against.
-/

/-! ## A103687.P2712088920094059918

`sqrt(A073364(n+1)*A073364(n+2))`
-/

namespace A103687.P2712088920094059918
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A073364 (n + 1) * A073364 (n + 2) : ℝ)

end

end A103687.P2712088920094059918

/-! ## A103687.P3136177344464152374

`A126090(∑[A271439(n)!])`
-/

namespace A103687.P3136177344464152374
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A271439 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126090 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A103687.P3136177344464152374

/-! ## A103687.P10860683365884853377

`A018731(A018756(n+1)-n)`
-/

namespace A103687.P10860683365884853377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018731 (A018756 (n + 1) - (n : ℤ)).toNat

end

end A103687.P10860683365884853377

/-! ## A103687.P5690860992537992336

`A352130(A034297(n))+A186085(n)`
-/

namespace A103687.P5690860992537992336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352130 (A034297 n).toNat + A186085 n

end

end A103687.P5690860992537992336

/-! ## A103687.P8780560848426681968

`A070939(n)*A290821(A328222(n+1))`
-/

namespace A103687.P8780560848426681968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070939 n * A290821 (A328222 (n + 1)).toNat

end

end A103687.P8780560848426681968

/-!
# A103688: a(n) = n if A103689(n)*n +/ - 1 are twin primes; a(n) = 0 otherwise.

The programs for A103688, there is no canonical definition to state claims against.
-/

/-! ## A103688.P11265512070699677202

`lcm(n+1, A090824(A046777(n+1))^A211452(n+1))`
-/

namespace A103688.P11265512070699677202
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (n + 1 : ℤ) (SequenceMachineLib.roundAway ((A090824 (A046777 (n + 1)).toNat : ℚ) ^ (A211452 (n + 1) : ℤ)))

end

end A103688.P11265512070699677202

/-! ## A103688.P16456777485133270467

`(n+1)*A051105(A007956(n+1))`
-/

namespace A103688.P16456777485133270467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A051105 (A007956 (n + 1)).toNat

end

end A103688.P16456777485133270467

/-! ## A103688.P11532180761109960945

`(n+1)*A281082(A329456(3*n+4))`
-/

namespace A103688.P11532180761109960945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A281082 (A329456 (3 * n + 4)).toNat

end

end A103688.P11532180761109960945

/-! ## A103688.P7341654632367448082

`(n+1)%A005131(A154328(n+4))`
-/

namespace A103688.P7341654632367448082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n + 1 : ℤ) (A005131 (A154328 (n + 4)).toNat)

end

end A103688.P7341654632367448082

/-! ## A103688.P12839116737187470985

`A122895(A301686(3*n+4)+A008277(2*n+5))*A191558(n+1)`
-/

namespace A103688.P12839116737187470985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122895 (A301686 (3 * n + 4) + A008277 (2 * n + 5)).toNat * A191558 (n + 1)

end

end A103688.P12839116737187470985

/-!
# A103689: a(n) is the least k such that either k*n - 1 or k*n + 1 (or both) is prime.

The programs for A103689, there is no canonical definition to state claims against.
-/

/-! ## A103689.P120303567747960679

`ceil(A093868(n+1)/(n+2))`
-/

namespace A103689.P120303567747960679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A093868 (n + 1) : ℚ) / (n + 2 : ℚ)⌉

end

end A103689.P120303567747960679

/-! ## A103689.P10387157652094708204

`A065033(floor(A093868(n+1)/A080513(n)))`
-/

namespace A103689.P10387157652094708204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 ⌊(A093868 (n + 1) : ℚ) / (A080513 n : ℚ)⌋.toNat

end

end A103689.P10387157652094708204

/-! ## A103689.P16080437369476416047

`A034693(n+1)+A053989(n+1)-A200996(n+1)`
-/

namespace A103689.P16080437369476416047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034693 (n + 1) + (A053989 (n + 1) - A200996 (n + 1))

end

end A103689.P16080437369476416047

/-! ## A103689.P11700281127028761972

`floor(A093868(n+1)/A233583(n+1))`
-/

namespace A103689.P11700281127028761972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A093868 (n + 1) : ℚ) / (A233583 (n + 1) : ℚ)⌋

end

end A103689.P11700281127028761972

/-! ## A103689.P10390744880597466815

`A002326(A194591(n+1)%A343436(n+3))`
-/

namespace A103689.P10390744880597466815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002326 (Int.tmod (A194591 (n + 1)) (A343436 (n + 3))).toNat

end

end A103689.P10390744880597466815

/-! ## A103689.P3539485215908154091

`A153152(A194591(n+1))+A014963(A316597(n+1))`
-/

namespace A103689.P3539485215908154091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153152 (A194591 (n + 1)).toNat + A014963 (A316597 (n + 1)).toNat

end

end A103689.P3539485215908154091

/-!
# A103690: Triangle read by rows: T(n,k)=binomial(n,k-1)*k^(k-1)*(n+1-k)^(n-k) (1<=k<=n).

The programs for A103690, there is no canonical definition to state claims against.
-/

/-! ## A103690.P4954403148544445961

`A185390(comp[∑[n]])`
-/

namespace A103690.P4954403148544445961
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185390 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A103690.P4954403148544445961

/-! ## A103690.P15119112667249238657

`or(char[3], A185390(A014132(n+1)))`
-/

namespace A103690.P15119112667249238657
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A185390 (A014132 (n + 1)).toNat)

end

end A103690.P15119112667249238657

/-! ## A103690.P10430701842130746988

`A002260(n+1)*A298597(n+1)`
-/

namespace A103690.P10430701842130746988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1) * A298597 (n + 1)

end

end A103690.P10430701842130746988

/-! ## A103690.P17465864065082401295

`(A002262(n)+1)*A298597(n+1)`
-/

namespace A103690.P17465864065082401295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A002262 n + 1) * A298597 (n + 1)

end

end A103690.P17465864065082401295

/-! ## A103690.P17016903990434475829

`A075362(n+1)*A298594(n+1)`
-/

namespace A103690.P17016903990434475829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075362 (n + 1) * A298594 (n + 1)

end

end A103690.P17016903990434475829

/-!
# A103691: Triangle read by rows: T(n,k) = number of bracelets of n beads (necklaces that can be flipped over) with exactly two colors and k white beads, for which the length (or abs value) of sum of the position vectors of the white beads are different.

The programs for A103691, there is no canonical definition to state claims against.
-/

/-! ## A103691.P3311827230593611704

`A050252(A334218(n)+A008292(n+1))`
-/

namespace A103691.P3311827230593611704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050252 (A334218 n + A008292 (n + 1)).toNat

end

end A103691.P3311827230593611704

/-! ## A103691.P13776173405992689718

`A110591(3^A180980(n+1))-A024362(A245013(n))`
-/

namespace A103691.P13776173405992689718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110591 (SequenceMachineLib.roundAway ((3 : ℚ) ^ (A180980 (n + 1) : ℤ))).toNat - A024362 (A245013 n).toNat

end

end A103691.P13776173405992689718

/-! ## A103691.P16114865932726296788

`A020639(A297102(n+1))+A034852(n)-A008327(n)`
-/

namespace A103691.P16114865932726296788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A297102 (n + 1)).toNat + (A034852 n - A008327 n)

end

end A103691.P16114865932726296788

/-! ## A103691.P16072233905624210791

`A110591(3^A180980(n+1))-A181004(A055086(2*(n+2)))`
-/

namespace A103691.P16072233905624210791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110591 (SequenceMachineLib.roundAway ((3 : ℚ) ^ (A180980 (n + 1) : ℤ))).toNat - A181004 (A055086 (2 * (n + 2))).toNat

end

end A103691.P16072233905624210791

/-! ## A103691.P1745314088851049246

`A357186(A292193(n+1))`
-/

namespace A103691.P1745314088851049246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357186 (A292193 (n + 1)).toNat

end

end A103691.P1745314088851049246

/-!
# A103692: Row sums of A103691.

The programs for A103692, there is no canonical definition to state claims against.
-/

/-! ## A103692.P5859478899975717039

`∑[A303934(record[A138728(n+1)])]`
-/

namespace A103692.P5859478899975717039
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138728 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303934 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A103692.P5859478899975717039

/-!
# A103696: Add 4 to each of the preceding digits, beginning with 0.

The programs for A103696, there is no canonical definition to state claims against.
-/

/-! ## A103696.P5958328107378515920

`A103703(n+1)-A049084(A202742(2*n+1))`
-/

namespace A103696.P5958328107378515920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103703 (n + 1) - A049084 (A202742 (2 * n + 1)).toNat

end

end A103696.P5958328107378515920

/-!
# A103697: Add 5 to each of the preceding digits, beginning with 0.

The programs for A103697, the canonical program `A103697.P1410882151425409104` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A103697 has offset 0).

The definition of A103697 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2184 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A103697.P1410882151425409104

`A103704(n+1)-abs(A187036(n))`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A103697

/-- `A103704(n+1)-abs(A187036(n))` -/
def P1410882151425409104.Spec : Prop :=
  ∀ n, P1410882151425409104.a n = A103697 n

theorem P1410882151425409104.correct : P1410882151425409104.Spec := by
  intro n
  simp only [A103697]

end A103697

/-! ## A103697.P7158173422898818043

`A103704(char[16]+1+n)-A187036(n)²`
-/

namespace A103697.P7158173422898818043
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  16

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103704 ((if ∃ j, f1 j = n then 1 else 0) + 1 + n) - A187036 n ^ 2

end

end A103697.P7158173422898818043

namespace A103697

/-- `A103704(char[16]+1+n)-A187036(n)²` -/
def P7158173422898818043.Spec : Prop :=
  ∀ n, P7158173422898818043.a n = A103697 n

end A103697

/-! ## A103697.P9195920434617752722

`A103704(abs(xor(n, -1)))-A187036(n)^n`
-/

namespace A103697.P9195920434617752722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103704 |Int.xor (n : ℤ) (-1)|.toNat - A187036 n ^ n

end

end A103697.P9195920434617752722

namespace A103697

/-- `A103704(abs(xor(n, -1)))-A187036(n)^n` -/
def P9195920434617752722.Spec : Prop :=
  ∀ n, P9195920434617752722.a n = A103697 n

end A103697

/-! ## A103697.P13345710242140897264

`A103704(-xor(n, -1))-A187036(n)^n`
-/

namespace A103697.P13345710242140897264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103704 (-Int.xor (n : ℤ) (-1)).toNat - A187036 n ^ n

end

end A103697.P13345710242140897264

namespace A103697

/-- `A103704(-xor(n, -1))-A187036(n)^n` -/
def P13345710242140897264.Spec : Prop :=
  ∀ n, P13345710242140897264.a n = A103697 n

end A103697

/-! ## A103697.P12979582191519082140

`A103704(C(2, n+2)!+n)-A187036(n)^n`
-/

namespace A103697.P12979582191519082140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103704 (Nat.factorial (Nat.choose 2 (n + 2)) + n) - A187036 n ^ n

end

end A103697.P12979582191519082140

namespace A103697

/-- `A103704(C(2, n+2)!+n)-A187036(n)^n` -/
def P12979582191519082140.Spec : Prop :=
  ∀ n, P12979582191519082140.a n = A103697 n

end A103697

/-! ## A103697.P6839002125186952189

`A004177(A103704(n+1)-A187036(n)²)`
-/

namespace A103697.P6839002125186952189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004177 (A103704 (n + 1) - A187036 n ^ 2).toNat

end

end A103697.P6839002125186952189

namespace A103697

/-- `A004177(A103704(n+1)-A187036(n)²)` -/
def P6839002125186952189.Spec : Prop :=
  ∀ n, P6839002125186952189.a n = A103697 n

end A103697

/-! ## A103697.P387497459306253025

`A004186(A103704(n+1)-A187036(n)²)`
-/

namespace A103697.P387497459306253025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004186 (A103704 (n + 1) - A187036 n ^ 2).toNat

end

end A103697.P387497459306253025

namespace A103697

/-- `A004186(A103704(n+1)-A187036(n)²)` -/
def P387497459306253025.Spec : Prop :=
  ∀ n, P387497459306253025.a n = A103697 n

end A103697

/-! ## A103697.P10509001546299201913

`A057846(A103704(n+1)-A187036(n)²)`
-/

namespace A103697.P10509001546299201913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057846 (A103704 (n + 1) - A187036 n ^ 2).toNat

end

end A103697.P10509001546299201913

namespace A103697

/-- `A057846(A103704(n+1)-A187036(n)²)` -/
def P10509001546299201913.Spec : Prop :=
  ∀ n, P10509001546299201913.a n = A103697 n

end A103697

/-! ## A103697.P2402921432687732862

`A103704(n+1)-A000045(A187036(n)^n)`
-/

namespace A103697.P2402921432687732862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103704 (n + 1) - A000045 (A187036 n ^ n).toNat

end

end A103697.P2402921432687732862

namespace A103697

/-- `A103704(n+1)-A000045(A187036(n)^n)` -/
def P2402921432687732862.Spec : Prop :=
  ∀ n, P2402921432687732862.a n = A103697 n

end A103697

/-! ## A103697.P11021442698488145335

`A103704(n+1)-(A187036(n)^A001222(n+1))^n`
-/

namespace A103697.P11021442698488145335
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A103704 (n + 1) : ℚ) - ((A187036 n : ℚ) ^ (A001222 (n + 1) : ℤ)) ^ n

end

end A103697.P11021442698488145335

namespace A103697

/-- `A103704(n+1)-(A187036(n)^A001222(n+1))^n` -/
def P11021442698488145335.Spec : Prop :=
  ∀ n, P11021442698488145335.a n = (A103697 n : ℚ)

end A103697

/-!
# A103699: Add 8 to each of the preceding digits, beginning with 0.

The programs for A103699, there is no canonical definition to state claims against.
-/

/-! ## A103699.P1170236867850705314

`A103707(n+1)-A010056(A187829(n+1))`
-/

namespace A103699.P1170236867850705314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103707 (n + 1) - A010056 (A187829 (n + 1)).toNat

end

end A103699.P1170236867850705314

/-! ## A103699.P13111617525009973911

`xor(A010056(n+1), A103707(A187829(n+1)))`
-/

namespace A103699.P13111617525009973911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A010056 (n + 1)) (A103707 (A187829 (n + 1)).toNat)

end

end A103699.P13111617525009973911

