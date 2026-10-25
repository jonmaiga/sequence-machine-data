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
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C037
import Seq.B000.C038
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C005
import Seq.B001.C007
import Seq.B001.C009
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
import Seq.Opaque.C011
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
# A064900: Semiprimes p1*p2 such that p2 > p1 and p2 mod p1 = 2.

The programs for A064900, there is no canonical definition to state claims against.
-/

/-! ## A064900.P11683691046071496792

`record[A062953(A089967(n+2))]`
-/

namespace A064900.P11683691046071496792
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062953 (A089967 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A064900.P11683691046071496792

/-! ## A064900.P5953664182596273006

`filter[A089967(n+1), A064911(#)]`
-/

namespace A064900.P5953664182596273006
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089967 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A064911 (f1 j).toNat = 1) n)

end

end A064900.P5953664182596273006

/-! ## A064900.P8893786687017396821

`filter[A089967(n+1), A101040(#)]`
-/

namespace A064900.P8893786687017396821
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089967 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A101040 (f1 j).toNat = 1) n)

end

end A064900.P8893786687017396821

/-! ## A064900.P17640195744269722077

`filter[A089967(n+1), A262684(#)]`
-/

namespace A064900.P17640195744269722077
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089967 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A262684 (f1 j).toNat = 1) n)

end

end A064900.P17640195744269722077

/-! ## A064900.P7700913125763724664

`filter[A089967(n+1), A280710(#)]`
-/

namespace A064900.P7700913125763724664
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089967 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A280710 (f1 j).toNat = 1) n)

end

end A064900.P7700913125763724664

/-!
# A064901: Semiprimes p1*p2 such that p2 > p1 and p2 mod p1 = 3.

The programs for A064901, there is no canonical definition to state claims against.
-/

/-! ## A064901.P11383885477870690432

`eq[3, A069859(A181861(n))]`
-/

namespace A064901.P11383885477870690432
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069859 (A181861 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A064901.P11383885477870690432

/-!
# A064902: Semiprimes p1*p2 such that p2 mod p1 = 4, with p2 > p1.

The programs for A064902, there is no canonical definition to state claims against.
-/

/-! ## A064902.P6231625213000853511

`filter[A111356(n+3), A360120(#)]`
-/

namespace A064902.P6231625213000853511
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111356 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A360120 (f1 j).toNat = 1) n)

end

end A064902.P6231625213000853511

/-!
# A064904: Semiprimes p1*p2 such that p2 mod p1 = 6, with p2 > p1.

The programs for A064904, there is no canonical definition to state claims against.
-/

/-! ## A064904.P6644840987930608357

`or(p?[A143194(2*n+1)], A143205(n+2))`
-/

namespace A064904.P6644840987930608357
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143194 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) (A143205 (n + 2))

end

end A064904.P6644840987930608357

/-!
# A064906: Semiprimes p1*p2 such that p2 > p1 and p2 mod p1 = 8.

The programs for A064906, there is no canonical definition to state claims against.
-/

/-! ## A064906.P2328189955717278895

`A113484(eq[8, A069859(n+1)])`
-/

namespace A064906.P2328189955717278895
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069859 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113484 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A064906.P2328189955717278895

/-!
# A064907: Semiprimes p1*p2 such that p2 mod p1 = 9, with p2 > p1.

The programs for A064907, there is no canonical definition to state claims against.
-/

/-! ## A064907.P13428086381304657328

`A113484(eq[9, A069859(n+1)])`
-/

namespace A064907.P13428086381304657328
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069859 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113484 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A064907.P13428086381304657328

/-!
# A064910: Smallest semiprime p*q such that q >= p and q mod p = n.

The programs for A064910, there is no canonical definition to state claims against.
-/

/-! ## A064910.P984579633545727934

`A115654(A061556(n)*A270516(n))`
-/

namespace A064910.P984579633545727934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115654 (A061556 n * A270516 n).toNat

end

end A064910.P984579633545727934

/-!
# A064911: If n is semiprime (or 2-almost prime) then 1 else 0.

The programs for A064911, the canonical program `A064911.P14478375241243671053` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A064911 has offset 1).

The definition of A064911 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A174956, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A064911.P2167668198483743961

`A010051(A032742(n+1))`
-/

namespace A064911.P2167668198483743961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (A032742 (n + 1)).toNat

end

end A064911.P2167668198483743961

namespace A064911

/-- `A010051(A032742(n+1))` -/
def P2167668198483743961.Spec : Prop :=
  ∀ n, P2167668198483743961.a n = A064911 (n + 1)

end A064911

/-! ## A064911.P14478375241243671053

`A057427(A174956(n+1))`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A064911

/-- `A057427(A174956(n+1))` -/
def P14478375241243671053.Spec : Prop :=
  ∀ n, P14478375241243671053.a n = A064911 (n + 1)

theorem P14478375241243671053.correct : P14478375241243671053.Spec := by
  intro n
  simp only [A064911, Nat.add_sub_cancel]

end A064911

/-! ## A064911.P1188931623741171816

`A280710(n+1)+A302048(n+1)`
-/

namespace A064911.P1188931623741171816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280710 (n + 1) + A302048 (n + 1)

end

end A064911.P1188931623741171816

namespace A064911

/-- `A280710(n+1)+A302048(n+1)` -/
def P1188931623741171816.Spec : Prop :=
  ∀ n, P1188931623741171816.a n = A064911 (n + 1)

end A064911

/-! ## A064911.P6608616311637998142

`A353475(n+1)+A353476(n+1)`
-/

namespace A064911.P6608616311637998142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353475 (n + 1) + A353476 (n + 1)

end

end A064911.P6608616311637998142

namespace A064911

/-- `A353475(n+1)+A353476(n+1)` -/
def P6608616311637998142.Spec : Prop :=
  ∀ n, P6608616311637998142.a n = A064911 (n + 1)

end A064911

/-! ## A064911.P1448119196277073961

`A353478(n+1)+A353480(n+1)`
-/

namespace A064911.P1448119196277073961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353478 (n + 1) + A353480 (n + 1)

end

end A064911.P1448119196277073961

namespace A064911

/-- `A353478(n+1)+A353480(n+1)` -/
def P1448119196277073961.Spec : Prop :=
  ∀ n, P1448119196277073961.a n = A064911 (n + 1)

theorem P1448119196277073961.correct : P1448119196277073961.Spec := by
  intro n
  simp only [A064911, Nat.add_sub_cancel, A064911.P1448119196277073961.a, A064911.P14478375241243671053.a, A057427, A057427.P3058147525557661423.a, A174956, A174956.P4901462298165488404.a, A353478, A353478.P1008730481002663857.a, A353480, A353480.P8605486788337762980.a, A000007, A000007.P6599383543502402472.a, A000035, A000035.P2023072528413494694.a, A028310, A028310.P18130301328277559831.a, A072000, A072000.P3706059858088101648.a, A056811, A056811.P3378557342044572151.a, A072613, A072613.P13158909735510187267.f1, A072613.P13158909735510187267.a, A000196, A000196.P15434771586934192083.a, A000720, A000720.P1755771944745605250.f2, A000720.P1755771944745605250.f1, A000720.P1755771944745605250.a, A230595, A230595.P9035268919760195541.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A064911

/-! ## A064911.P7264873943856754144

`A101040(n+1)-A010051(n+1)`
-/

namespace A064911.P7264873943856754144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101040 (n + 1) - A010051 (n + 1)

end

end A064911.P7264873943856754144

namespace A064911

/-- `A101040(n+1)-A010051(n+1)` -/
def P7264873943856754144.Spec : Prop :=
  ∀ n, P7264873943856754144.a n = A064911 (n + 1)

theorem P7264873943856754144.correct : P7264873943856754144.Spec := by
  intro n
  simp only [A064911, Nat.add_sub_cancel, A064911.P7264873943856754144.a, A064911.P14478375241243671053.a, A010051, A010051.P15078252821583414300.a, A057427, A057427.P3058147525557661423.a, A101040, A101040.P6430529822999703701.a, A174956, A174956.P4901462298165488404.a, A000007, A000007.P6599383543502402472.a, A028310, A028310.P18130301328277559831.a, A072000, A072000.P3706059858088101648.a, A100995, A100995.P9596901243079307024.f1, A100995.P9596901243079307024.a, A193056, A193056.P6449544040074946363.a, A056811, A056811.P3378557342044572151.a, A072613, A072613.P13158909735510187267.f1, A072613.P13158909735510187267.a, A157658, A157658.P9261385800012601708.f1, A157658.P9261385800012601708.a, A000196, A000196.P15434771586934192083.a, A000720, A000720.P1755771944745605250.f2, A000720.P1755771944745605250.f1, A000720.P1755771944745605250.a, A230595, A230595.P9035268919760195541.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A064911

/-! ## A064911.P7478078004483557463

`A353477(n+1)+A353478(n+1)+A353479(n+1)`
-/

namespace A064911.P7478078004483557463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353477 (n + 1) + A353478 (n + 1) + A353479 (n + 1)

end

end A064911.P7478078004483557463

namespace A064911

/-- `A353477(n+1)+A353478(n+1)+A353479(n+1)` -/
def P7478078004483557463.Spec : Prop :=
  ∀ n, P7478078004483557463.a n = A064911 (n + 1)

theorem P7478078004483557463.correct : P7478078004483557463.Spec := by
  intro n
  simp only [A064911, Nat.add_sub_cancel, A064911.P7478078004483557463.a, A064911.P14478375241243671053.a, A057427, A057427.P3058147525557661423.a, A174956, A174956.P4901462298165488404.a, A353477, A353477.P2258751349755491853.a, A353478, A353478.P1008730481002663857.a, A353479, A353479.P12835136818281320905.a, A000007, A000007.P6599383543502402472.a, A028310, A028310.P18130301328277559831.a, A072000, A072000.P3706059858088101648.a, A280710, A280710.P16719408310245931755.a, A342025, A342025.P9862321101140846268.a, A353480, A353480.P8605486788337762980.a, A000035, A000035.P2023072528413494694.a, A008966, A008966.P884693903657889754.a, A056811, A056811.P3378557342044572151.a, A072613, A072613.P13158909735510187267.f1, A072613.P13158909735510187267.a, A079635, A079635.P16766627809967727170.a, A214264, A214264.P7340386951159269035.a, A000196, A000196.P15434771586934192083.a, A000720, A000720.P1755771944745605250.f2, A000720.P1755771944745605250.f1, A000720.P1755771944745605250.a, A010054, A010054.P18347828677204923252.a, A013928, A013928.P12891540521727461604.f2, A013928.P12891540521727461604.f1, A013928.P12891540521727461604.a, A065339, A065339.P2810771096728781745.a, A083025, A083025.P6816948614237307391.a, A230595, A230595.P9035268919760195541.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A064911

/-! ## A064911.P10048745298306012950

`char[A186621(n+1)]`
-/

namespace A064911.P10048745298306012950
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186621 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A064911.P10048745298306012950

namespace A064911

/-- `char[A186621(n+1)]` -/
def P10048745298306012950.Spec : Prop :=
  ∀ n, (P10048745298306012950.a n : ℤ) = A064911 (n + 1)

end A064911

/-! ## A064911.P7120955361627629330

`A101637(4*(n+1))`
-/

namespace A064911.P7120955361627629330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101637 (4 * (n + 1))

end

end A064911.P7120955361627629330

namespace A064911

/-- `A101637(4*(n+1))` -/
def P7120955361627629330.Spec : Prop :=
  ∀ n, P7120955361627629330.a n = A064911 (n + 1)

end A064911

/-! ## A064911.P11274487835980228496

`val(A105560(n+1), 3)`
-/

namespace A064911.P11274487835980228496
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A105560 (n + 1)).toNat 3

end

end A064911.P11274487835980228496

namespace A064911

/-- `val(A105560(n+1), 3)` -/
def P11274487835980228496.Spec : Prop :=
  ∀ n, (P11274487835980228496.a n : ℤ) = A064911 (n + 1)

end A064911

/-! ## A064911.P4082283630001468200

`C(A105700(n+1), 2)`
-/

namespace A064911.P4082283630001468200
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A105700 (n + 1)).toNat 2

end

end A064911.P4082283630001468200

namespace A064911

/-- `C(A105700(n+1), 2)` -/
def P4082283630001468200.Spec : Prop :=
  ∀ n, (P4082283630001468200.a n : ℤ) = A064911 (n + 1)

end A064911

/-! ## A064911.P7372381385529881036

`floor(sqrt(A230595(n+1)))`
-/

namespace A064911.P7372381385529881036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A230595 (n + 1))

end

end A064911.P7372381385529881036

namespace A064911

/-- `floor(sqrt(A230595(n+1)))` -/
def P7372381385529881036.Spec : Prop :=
  ∀ n, P7372381385529881036.a n = A064911 (n + 1)

end A064911

/-! ## A064911.P16771844217595363550

`char[A001358(n+1)-1]`
-/

namespace A064911.P16771844217595363550
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001358 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A064911.P16771844217595363550

namespace A064911

/-- `char[A001358(n+1)-1]` -/
def P16771844217595363550.Spec : Prop :=
  ∀ n, (P16771844217595363550.a n : ℤ) = A064911 (n + 1)

end A064911

/-! ## A064911.P10905494157795198878

`char[A088707(n+1)-2]`
-/

namespace A064911.P10905494157795198878
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088707 (n + 1) - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A064911.P10905494157795198878

namespace A064911

/-- `char[A088707(n+1)-2]` -/
def P10905494157795198878.Spec : Prop :=
  ∀ n, (P10905494157795198878.a n : ℤ) = A064911 (n + 1)

end A064911

/-! ## A064911.P1941536021363154371

`val(n+1, A374899(n+1))`
-/

namespace A064911.P1941536021363154371
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (n + 1) (A374899 (n + 1)).toNat

end

end A064911.P1941536021363154371

namespace A064911

/-- `val(n+1, A374899(n+1))` -/
def P1941536021363154371.Spec : Prop :=
  ∀ n, (P1941536021363154371.a n : ℤ) = A064911 (n + 1)

end A064911

/-! ## A064911.P2730448630876049820

`val(A354432(n+1), n+2)`
-/

namespace A064911.P2730448630876049820
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A354432 (n + 1)).toNat (n + 2)

end

end A064911.P2730448630876049820

namespace A064911

/-- `val(A354432(n+1), n+2)` -/
def P2730448630876049820.Spec : Prop :=
  ∀ n, (P2730448630876049820.a n : ℤ) = A064911 (n + 1)

end A064911

/-! ## A064911.P16818450985920203786

`val(A378542(n+1), n+2)`
-/

namespace A064911.P16818450985920203786
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A378542 (n + 1)).toNat (n + 2)

end

end A064911.P16818450985920203786

namespace A064911

/-- `val(A378542(n+1), n+2)` -/
def P16818450985920203786.Spec : Prop :=
  ∀ n, (P16818450985920203786.a n : ℤ) = A064911 (n + 1)

end A064911

/-! ## A064911.P4411289333758770759

`val(A064800(n+1), n+3)`
-/

namespace A064911.P4411289333758770759
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A064800 (n + 1)).toNat (n + 3)

end

end A064911.P4411289333758770759

namespace A064911

/-- `val(A064800(n+1), n+3)` -/
def P4411289333758770759.Spec : Prop :=
  ∀ n, (P4411289333758770759.a n : ℤ) = A064911 (n + 1)

end A064911

/-! ## A064911.P14568460481093320759

`C(A179312(n+1), n+1)`
-/

namespace A064911.P14568460481093320759
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A179312 (n + 1)).toNat (n + 1)

end

end A064911.P14568460481093320759

namespace A064911

/-- `C(A179312(n+1), n+1)` -/
def P14568460481093320759.Spec : Prop :=
  ∀ n, (P14568460481093320759.a n : ℤ) = A064911 (n + 1)

end A064911

/-! ## A064911.P4210334316966576473

`A010051(A052126(n+1))`
-/

namespace A064911.P4210334316966576473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (A052126 (n + 1)).toNat

end

end A064911.P4210334316966576473

namespace A064911

/-- `A010051(A052126(n+1))` -/
def P4210334316966576473.Spec : Prop :=
  ∀ n, P4210334316966576473.a n = A064911 (n + 1)

end A064911

/-!
# A064912: Period of continued fraction for sqrt(17)*n.

The programs for A064912, there is no canonical definition to state claims against.
-/

/-! ## A064912.P2316545618210428110

`A003285(17*(n+1)²)`
-/

namespace A064912.P2316545618210428110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003285 (17 * (n + 1) ^ 2)

end

end A064912.P2316545618210428110

/-! ## A064912.P16565359135814773192

`A097853(17*(n+1)²)`
-/

namespace A064912.P16565359135814773192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097853 (17 * (n + 1) ^ 2)

end

end A064912.P16565359135814773192

/-! ## A064912.P829285223691586659

`A003285(A244630(n+1))%A061184(n)`
-/

namespace A064912.P829285223691586659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A003285 (A244630 (n + 1)).toNat) (A061184 n)

end

end A064912.P829285223691586659

/-!
# A064913: Period of continued fraction for sqrt(19)*n.

The programs for A064913, there is no canonical definition to state claims against.
-/

/-! ## A064913.P17328687487357789204

`A003285(19*(n+1)²)`
-/

namespace A064913.P17328687487357789204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003285 (19 * (n + 1) ^ 2)

end

end A064913.P17328687487357789204

/-! ## A064913.P6040821464271925194

`A097853(19*(n+1)²)`
-/

namespace A064913.P6040821464271925194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097853 (19 * (n + 1) ^ 2)

end

end A064913.P6040821464271925194

/-!
# A064914: Number of ordered biquanimous partitions of 2n.

The programs for A064914, there is no canonical definition to state claims against.
-/

/-! ## A064914.P16982813961780449079

`A081294(n)-A371956(n)`
-/

namespace A064914.P16982813961780449079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081294 n - A371956 n

end

end A064914.P16982813961780449079

/-! ## A064914.P3617340718507588997

`record[A084633(n)]-A371956(n)`
-/

namespace A064914.P3617340718507588997
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084633 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A371956 n

end

end A064914.P3617340718507588997

/-! ## A064914.P7280978378003358847

`A084633(A005843(n))-A371956(n)`
-/

namespace A064914.P7280978378003358847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084633 (A005843 n).toNat - A371956 n

end

end A064914.P7280978378003358847

/-!
# A064915: Positive integers n that are not of the form p + q * a^2, where p and q are primes and a is the smallest prime not dividing n.

The programs for A064915, there is no canonical definition to state claims against.
-/

/-! ## A064915.P785058523579627247

`lt[A000203(A236203(2*n+5)), A106856(3*n+1)]`
-/

namespace A064915.P785058523579627247
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A236203 (2 * n + 5)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106856 (3 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A064915.P785058523579627247

/-! ## A064915.P6756818951848636950

`A008728(lt[A077168(n), 21])`
-/

namespace A064915.P6756818951848636950
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077168 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  21

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008728 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A064915.P6756818951848636950

/-! ## A064915.P10586925210475772745

`record[A179051(A242640(n+1))]`
-/

namespace A064915.P10586925210475772745
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179051 (A242640 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A064915.P10586925210475772745

/-! ## A064915.P17982597895671073220

`lt[exp(A051953(n+1)), A163365(n)]`
-/

namespace A064915.P17982597895671073220
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.exp (A051953 (n + 1) : ℝ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163365 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℝ)) n

end

end A064915.P17982597895671073220

/-! ## A064915.P2305542888991072982

`lt[A297168(n+1)!, A316532(n)]`
-/

namespace A064915.P2305542888991072982
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A297168 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316532 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A064915.P2305542888991072982

/-!
# A064916: a(n) = n/lpf(n) + lpf(n) - 1, where lpf = A020639 = least prime factor.

The programs for A064916, there is no canonical definition to state claims against.
-/

/-! ## A064916.P17420462414545100294

`A089196(n+1)+A020639(n+2)`
-/

namespace A064916.P17420462414545100294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089196 (n + 1) + A020639 (n + 2)

end

end A064916.P17420462414545100294

/-! ## A064916.P3283440074267502145

`A166250(n+2)-A046666(n+2)`
-/

namespace A064916.P3283440074267502145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166250 (n + 2) - A046666 (n + 2)

end

end A064916.P3283440074267502145

/-! ## A064916.P10151742545250365403

`A070935(n+2)%A087349(n+1)`
-/

namespace A064916.P10151742545250365403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A070935 (n + 2)) (A087349 (n + 1))

end

end A064916.P10151742545250365403

/-! ## A064916.P2919686976767429023

`gcd(A089389(n+2), A169901(n+2))-1`
-/

namespace A064916.P2919686976767429023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.gcd (A089389 (n + 2)) (A169901 (n + 2)) : ℤ) - 1

end

end A064916.P2919686976767429023

/-! ## A064916.P3690491791832253020

`A020639(n+2)+A046666(n+2)/A020639(n+2)`
-/

namespace A064916.P3690491791832253020
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A020639 (n + 2) : ℚ) + (A046666 (n + 2) : ℚ) / (A020639 (n + 2) : ℚ)

end

end A064916.P3690491791832253020

/-! ## A064916.P17896725131965783693

`A111234(n+2)-1`
-/

namespace A064916.P17896725131965783693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111234 (n + 2) - 1

end

end A064916.P17896725131965783693

/-! ## A064916.P12729610346792353155

`A023443(A111234(n+2))`
-/

namespace A064916.P12729610346792353155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A111234 (n + 2)).toNat

end

end A064916.P12729610346792353155

/-! ## A064916.P590232144419426250

`A057237(n+2)+A032742(n+2)`
-/

namespace A064916.P590232144419426250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057237 (n + 2) + A032742 (n + 2)

end

end A064916.P590232144419426250

/-! ## A064916.P7458546024874242644

`A020639(n+2)+A032742(n+2)-1`
-/

namespace A064916.P7458546024874242644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2) + (A032742 (n + 2) - 1)

end

end A064916.P7458546024874242644

/-! ## A064916.P3231412385919895368

`A061228(n+2)-(A060681(n+2)+1)`
-/

namespace A064916.P3231412385919895368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061228 (n + 2) - (A060681 (n + 2) + 1)

end

end A064916.P3231412385919895368

/-! ## A064916.P10061070879466629002

`n+1+A020639(n+2)-A060681(n+2)`
-/

namespace A064916.P10061070879466629002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) + (A020639 (n + 2) - A060681 (n + 2))

end

end A064916.P10061070879466629002

/-! ## A064916.P14773204856585838905

`A060681(A020639(n+2))+A032742(n+2)`
-/

namespace A064916.P14773204856585838905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060681 (A020639 (n + 2)).toNat + A032742 (n + 2)

end

end A064916.P14773204856585838905

/-! ## A064916.P10162170498190579202

`A032742(n+2)+A060681(n+2)/A032742(n+2)`
-/

namespace A064916.P10162170498190579202
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A032742 (n + 2) : ℚ) + (A060681 (n + 2) : ℚ) / (A032742 (n + 2) : ℚ)

end

end A064916.P10162170498190579202

/-! ## A064916.P14640643808809311066

`A057237(n+2)+A060681(n+2)/A057237(n+2)`
-/

namespace A064916.P14640643808809311066
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A057237 (n + 2) : ℚ) + (A060681 (n + 2) : ℚ) / (A057237 (n + 2) : ℚ)

end

end A064916.P14640643808809311066

/-! ## A064916.P13047162679595619896

`n+3-Δ[A101505(n+2)]`
-/

namespace A064916.P13047162679595619896
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101505 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 3 : ℤ) - (f1 (n + 1) - f1 n)

end

end A064916.P13047162679595619896

/-! ## A064916.P9978961540075899202

`2-A330492(n+2)+n`
-/

namespace A064916.P9978961540075899202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A330492 (n + 2) + (n : ℤ)

end

end A064916.P9978961540075899202

/-! ## A064916.P14684381160274928413

`A249738(2*A111234(n+2))`
-/

namespace A064916.P14684381160274928413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249738 (2 * A111234 (n + 2)).toNat

end

end A064916.P14684381160274928413

/-!
# A064917: a(n) is the result of beginning with n and iterating k -> A064916(k) until a prime is reached.

The programs for A064917, there is no canonical definition to state claims against.
-/

/-! ## A064917.P11153683025256922146

`A064921(A064916(n+2))%A067786(n+1)`
-/

namespace A064917.P11153683025256922146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A064921 (A064916 (n + 2)).toNat) (A067786 (n + 1))

end

end A064917.P11153683025256922146

/-! ## A064917.P3187429921220427420

`A064921(A111234(n+2)-1)%A067786(n+1)`
-/

namespace A064917.P3187429921220427420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A064921 (A111234 (n + 2) - 1).toNat) (A067786 (n + 1))

end

end A064917.P3187429921220427420

/-! ## A064917.P9354987894722389694

`A064921(A064916(n+2))+A000038(A000045(n+1))`
-/

namespace A064917.P9354987894722389694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064921 (A064916 (n + 2)).toNat + A000038 (A000045 (n + 1)).toNat

end

end A064917.P9354987894722389694

/-! ## A064917.P7298353062692634931

`A386468(A245392(n+2))`
-/

namespace A064917.P7298353062692634931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386468 (A245392 (n + 2)).toNat

end

end A064917.P7298353062692634931

/-! ## A064917.P14326396828556148474

`A006530(A059975(2*(n+2))*A090884(n+1))`
-/

namespace A064917.P14326396828556148474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A059975 (2 * (n + 2)) * A090884 (n + 1)).toNat

end

end A064917.P14326396828556148474

/-!
# A064918: a(n) is the number of iterations of k -> A064916(k) to reach a prime, starting at n.

The programs for A064918, there is no canonical definition to state claims against.
-/

/-! ## A064918.P6097918490720769394

`A323076(A285698(n+2)+A060681(2*(n+2)))`
-/

namespace A064918.P6097918490720769394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323076 (A285698 (n + 2) + A060681 (2 * (n + 2))).toNat

end

end A064918.P6097918490720769394

/-! ## A064918.P842983344100122886

`A323076(n+2)%A101476(n)`
-/

namespace A064918.P842983344100122886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A323076 (n + 2)) (A101476 n)

end

end A064918.P842983344100122886

/-! ## A064918.P4408274911665186532

`A323076(n+2)^A010048(A010048(n))`
-/

namespace A064918.P4408274911665186532
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A323076 (n + 2) : ℚ) ^ (A010048 (A010048 n).toNat : ℤ)

end

end A064918.P4408274911665186532

/-! ## A064918.P3590412564590977586

`A323076(n+2)+A000007(A219078(n+1))`
-/

namespace A064918.P3590412564590977586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323076 (n + 2) + A000007 (A219078 (n + 1)).toNat

end

end A064918.P3590412564590977586

/-! ## A064918.P15591337321957374678

`A323076(n+2)+A323069(A323067(n+2))`
-/

namespace A064918.P15591337321957374678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323076 (n + 2) + A323069 (A323067 (n + 2)).toNat

end

end A064918.P15591337321957374678

/-!
# A064919: a(n) = Min { k | A064916(k) = n }.

The programs for A064919, the canonical program `A064919.P171974603176685664` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A064919 has offset 2).

The definition of A064919 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A064919.P15438326654424435863

`n*A005171(n+2)+n+2`
-/

namespace A064919.P15438326654424435863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A005171 (n + 2) + (n + 2 : ℤ)

end

end A064919.P15438326654424435863

namespace A064919

/-- `n*A005171(n+2)+n+2` -/
def P15438326654424435863.Spec : Prop :=
  ∀ n, P15438326654424435863.a n = A064919 (n + 2)

end A064919

/-! ## A064919.P171974603176685664

`n*A066247(n+2)+n+2`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A064919

/-- `n*A066247(n+2)+n+2` -/
def P171974603176685664.Spec : Prop :=
  ∀ n, P171974603176685664.a n = A064919 (n + 2)

theorem P171974603176685664.correct : P171974603176685664.Spec := by
  intro n
  simp only [A064919, Nat.add_sub_cancel]

end A064919

/-! ## A064919.P5340410205038255065

`2*(n+1)-n*A010051(n+2)`
-/

namespace A064919.P5340410205038255065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * (n + 1) : ℤ) - (n : ℤ) * A010051 (n + 2)

end

end A064919.P5340410205038255065

namespace A064919

/-- `2*(n+1)-n*A010051(n+2)` -/
def P5340410205038255065.Spec : Prop :=
  ∀ n, P5340410205038255065.a n = A064919 (n + 2)

end A064919

/-! ## A064919.P650526053552406522

`2*(n/(char[A040976(n+1)]+1)+1)`
-/

namespace A064919.P650526053552406522
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040976 (n + 1)

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 * ((n : ℚ) / (((if ∃ j, f1 j = (n : ℤ) then 1 else 0) + 1 : ℕ) : ℚ) + 1)

end

end A064919.P650526053552406522

namespace A064919

/-- `2*(n/(char[A040976(n+1)]+1)+1)` -/
def P650526053552406522.Spec : Prop :=
  ∀ n, P650526053552406522.a n = (A064919 (n + 2) : ℚ)

end A064919

/-! ## A064919.P12657047848788018865

`n*A130196(A271353(n+1))+2`
-/

namespace A064919.P12657047848788018865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A130196 (A271353 (n + 1)).toNat + 2

end

end A064919.P12657047848788018865

namespace A064919

/-- `n*A130196(A271353(n+1))+2` -/
def P12657047848788018865.Spec : Prop :=
  ∀ n, P12657047848788018865.a n = A064919 (n + 2)

end A064919

/-! ## A064919.P12874494102527311572

`n*A129088(A065151(n+2))+2`
-/

namespace A064919.P12874494102527311572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A129088 (A065151 (n + 2)).toNat + 2

end

end A064919.P12874494102527311572

namespace A064919

/-- `n*A129088(A065151(n+2))+2` -/
def P12874494102527311572.Spec : Prop :=
  ∀ n, P12874494102527311572.a n = A064919 (n + 2)

end A064919

/-! ## A064919.P7823223666613886424

`n*A000032(C(2, A000005(n+2)))+2`
-/

namespace A064919.P7823223666613886424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A000032 (Nat.choose 2 (A000005 (n + 2)).toNat) + 2

end

end A064919.P7823223666613886424

namespace A064919

/-- `n*A000032(C(2, A000005(n+2)))+2` -/
def P7823223666613886424.Spec : Prop :=
  ∀ n, P7823223666613886424.a n = A064919 (n + 2)

end A064919

/-! ## A064919.P3373159849872893623

`2*n/A000041(C(2, A001222(n+2)))+2`
-/

namespace A064919.P3373159849872893623
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 * n : ℚ) / (A000041 (Nat.choose 2 (A001222 (n + 2)).toNat) : ℚ) + 2

end

end A064919.P3373159849872893623

namespace A064919

/-- `2*n/A000041(C(2, A001222(n+2)))+2` -/
def P3373159849872893623.Spec : Prop :=
  ∀ n, P3373159849872893623.a n = (A064919 (n + 2) : ℚ)

end A064919

/-! ## A064919.P7966634320710286022

`n*A000032(C(A000010(n+2), n+1))+2`
-/

namespace A064919.P7966634320710286022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A000032 (Nat.choose (A000010 (n + 2)).toNat (n + 1)) + 2

end

end A064919.P7966634320710286022

namespace A064919

/-- `n*A000032(C(A000010(n+2), n+1))+2` -/
def P7966634320710286022.Spec : Prop :=
  ∀ n, P7966634320710286022.a n = A064919 (n + 2)

end A064919

/-! ## A064919.P3928716131144293626

`n*A000032(C(A006530(n+2), n+2))+2`
-/

namespace A064919.P3928716131144293626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A000032 (Nat.choose (A006530 (n + 2)).toNat (n + 2)) + 2

end

end A064919.P3928716131144293626

namespace A064919

/-- `n*A000032(C(A006530(n+2), n+2))+2` -/
def P3928716131144293626.Spec : Prop :=
  ∀ n, P3928716131144293626.a n = A064919 (n + 2)

end A064919

/-! ## A064919.P3712871092219197605

`n*A000032(C(n+3, A000203(n+2)))+2`
-/

namespace A064919.P3712871092219197605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A000032 (Nat.choose (n + 3) (A000203 (n + 2)).toNat) + 2

end

end A064919.P3712871092219197605

namespace A064919

/-- `n*A000032(C(n+3, A000203(n+2)))+2` -/
def P3712871092219197605.Spec : Prop :=
  ∀ n, P3712871092219197605.a n = A064919 (n + 2)

end A064919

/-! ## A064919.P12430616826688586824

`2*(n+1)-n*A080339(n+2)`
-/

namespace A064919.P12430616826688586824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * (n + 1) : ℤ) - (n : ℤ) * A080339 (n + 2)

end

end A064919.P12430616826688586824

namespace A064919

/-- `2*(n+1)-n*A080339(n+2)` -/
def P12430616826688586824.Spec : Prop :=
  ∀ n, P12430616826688586824.a n = A064919 (n + 2)

end A064919

/-! ## A064919.P16757069013341378970

`abs(A061397(n+2)-(n+1))+1+n`
-/

namespace A064919.P16757069013341378970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A061397 (n + 2) - (n + 1 : ℤ)| + 1 + (n : ℤ)

end

end A064919.P16757069013341378970

namespace A064919

/-- `abs(A061397(n+2)-(n+1))+1+n` -/
def P16757069013341378970.Spec : Prop :=
  ∀ n, P16757069013341378970.a n = A064919 (n + 2)

end A064919

/-! ## A064919.P15887407836290697504

`∑[2-Δ[A000010(A089026(n+1))]]`
-/

namespace A064919.P15887407836290697504
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A089026 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A064919.P15887407836290697504

namespace A064919

/-- `∑[2-Δ[A000010(A089026(n+1))]]` -/
def P15887407836290697504.Spec : Prop :=
  ∀ n, P15887407836290697504.a n = A064919 (n + 2)

end A064919

/-! ## A064919.P3033031680527402214

`2*n+3-A063994(A014973(n+2))`
-/

namespace A064919.P3033031680527402214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n + 3 : ℤ) - A063994 (A014973 (n + 2)).toNat

end

end A064919.P3033031680527402214

namespace A064919

/-- `2*n+3-A063994(A014973(n+2))` -/
def P3033031680527402214.Spec : Prop :=
  ∀ n, P3033031680527402214.a n = A064919 (n + 2)

end A064919

/-! ## A064919.P7857579065863832692

`2*n+3-A000010(A089026(n+2))`
-/

namespace A064919.P7857579065863832692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) + (3 - A000010 (A089026 (n + 2)).toNat)

end

end A064919.P7857579065863832692

namespace A064919

/-- `2*n+3-A000010(A089026(n+2))` -/
def P7857579065863832692.Spec : Prop :=
  ∀ n, P7857579065863832692.a n = A064919 (n + 2)

end A064919

/-! ## A064919.P6974394134370389421

`n*A000032(C(A014963(n+2), n+2))+2`
-/

namespace A064919.P6974394134370389421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A000032 (Nat.choose (A014963 (n + 2)).toNat (n + 2)) + 2

end

end A064919.P6974394134370389421

namespace A064919

/-- `n*A000032(C(A014963(n+2), n+2))+2` -/
def P6974394134370389421.Spec : Prop :=
  ∀ n, P6974394134370389421.a n = A064919 (n + 2)

end A064919

/-! ## A064919.P12335658935086950706

`A020725(2*(n+1))-A063994(A089026(n+2))`
-/

namespace A064919.P12335658935086950706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (2 * (n + 1)) - A063994 (A089026 (n + 2)).toNat

end

end A064919.P12335658935086950706

namespace A064919

/-- `A020725(2*(n+1))-A063994(A089026(n+2))` -/
def P12335658935086950706.Spec : Prop :=
  ∀ n, P12335658935086950706.a n = A064919 (n + 2)

end A064919

/-! ## A064919.P3504361423884861932

`gcd(n+1, A008683((n+2)*A000005(n+2)))+n+1`
-/

namespace A064919.P3504361423884861932
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A008683 ((n + 2 : ℤ) * A000005 (n + 2)).toNat) + (n + 1)

end

end A064919.P3504361423884861932

namespace A064919

/-- `gcd(n+1, A008683((n+2)*A000005(n+2)))+n+1` -/
def P3504361423884861932.Spec : Prop :=
  ∀ n, (P3504361423884861932.a n : ℤ) = A064919 (n + 2)

end A064919

/-!
# A064920: a(n) = n/gpf(n) + gpf(n) - 1, where gpf = A006530 = greatest prime factor.

The programs for A064920, the canonical program `A064920.P1804435076395315185` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A064920 has offset 2).

The definition of A064920 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A064920.P1804435076395315185

`A006530(n+2)+A076563(n+2)/A006530(n+2)`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A064920

/-- `A006530(n+2)+A076563(n+2)/A006530(n+2)` -/
def P1804435076395315185.Spec : Prop :=
  ∀ n, P1804435076395315185.a n = (A064920 (n + 2) : ℚ)

end A064920

/-! ## A064920.P18087526601800191430

`A006530(n+2)+A052126(n+2)-1`
-/

namespace A064920.P18087526601800191430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2) + (A052126 (n + 2) - 1)

end

end A064920.P18087526601800191430

namespace A064920

/-- `A006530(n+2)+A052126(n+2)-1` -/
def P18087526601800191430.Spec : Prop :=
  ∀ n, P18087526601800191430.a n = A064920 (n + 2)

end A064920

/-! ## A064920.P5990670659569450866

`A052126(n+2)+A111089(n+2)-1`
-/

namespace A064920.P5990670659569450866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052126 (n + 2) + (A111089 (n + 2) - 1)

end

end A064920.P5990670659569450866

namespace A064920

/-- `A052126(n+2)+A111089(n+2)-1` -/
def P5990670659569450866.Spec : Prop :=
  ∀ n, P5990670659569450866.a n = A064920 (n + 2)

end A064920

/-! ## A064920.P13040830554043669441

`n+1+A006530(n+2)-A171462(n+2)`
-/

namespace A064920.P13040830554043669441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) + (A006530 (n + 2) - A171462 (n + 2))

end

end A064920.P13040830554043669441

namespace A064920

/-- `n+1+A006530(n+2)-A171462(n+2)` -/
def P13040830554043669441.Spec : Prop :=
  ∀ n, P13040830554043669441.a n = A064920 (n + 2)

end A064920

/-! ## A064920.P11234621554832255708

`A342768(n+2)%(A006530(n+2)+n+1)`
-/

namespace A064920.P11234621554832255708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A342768 (n + 2)) (A006530 (n + 2) + (n + 1 : ℤ))

end

end A064920.P11234621554832255708

namespace A064920

/-- `A342768(n+2)%(A006530(n+2)+n+1)` -/
def P11234621554832255708.Spec : Prop :=
  ∀ n, P11234621554832255708.a n = A064920 (n + 2)

end A064920

/-! ## A064920.P1308998849856947576

`A060681(A006530(n+2))+A052126(n+2)`
-/

namespace A064920.P1308998849856947576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060681 (A006530 (n + 2)).toNat + A052126 (n + 2)

end

end A064920.P1308998849856947576

namespace A064920

/-- `A060681(A006530(n+2))+A052126(n+2)` -/
def P1308998849856947576.Spec : Prop :=
  ∀ n, P1308998849856947576.a n = A064920 (n + 2)

end A064920

/-! ## A064920.P14080348541626328000

`A052126(n+2)+A008578(A061395(n+2)+1)-1`
-/

namespace A064920.P14080348541626328000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052126 (n + 2) + (A008578 (A061395 (n + 2) + 1).toNat - 1)

end

end A064920.P14080348541626328000

namespace A064920

/-- `A052126(n+2)+A008578(A061395(n+2)+1)-1` -/
def P14080348541626328000.Spec : Prop :=
  ∀ n, P14080348541626328000.a n = A064920 (n + 2)

end A064920

/-! ## A064920.P17984913380526636852

`A052126(n+2)+A171462(n+2)/A052126(n+2)`
-/

namespace A064920.P17984913380526636852
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A052126 (n + 2) : ℚ) + (A171462 (n + 2) : ℚ) / (A052126 (n + 2) : ℚ)

end

end A064920.P17984913380526636852

namespace A064920

/-- `A052126(n+2)+A171462(n+2)/A052126(n+2)` -/
def P17984913380526636852.Spec : Prop :=
  ∀ n, P17984913380526636852.a n = (A064920 (n + 2) : ℚ)

end A064920

/-! ## A064920.P13346842224879524677

`(A000010(A006530(n+2)²)+n+2)/A006530(n+2)`
-/

namespace A064920.P13346842224879524677
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000010 (A006530 (n + 2) ^ 2).toNat + (n + 2 : ℤ) : ℚ) / (A006530 (n + 2) : ℚ)

end

end A064920.P13346842224879524677

namespace A064920

/-- `(A000010(A006530(n+2)²)+n+2)/A006530(n+2)` -/
def P13346842224879524677.Spec : Prop :=
  ∀ n, P13346842224879524677.a n = (A064920 (n + 2) : ℚ)

end A064920

/-!
# A064921: Iterate A064920 until a prime is reached.

The programs for A064921, there is no canonical definition to state claims against.
-/

/-! ## A064921.P16270963478455631680

`A064917(A064920(n+2))%p?[A005919(n)]`
-/

namespace A064921.P16270963478455631680
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005919 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A064917 (A064920 (n + 2)).toNat) (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A064921.P16270963478455631680

/-! ## A064921.P7324223475048741707

`A064917(A064920(n+2))+A000038(A000045(n+1))`
-/

namespace A064921.P7324223475048741707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064917 (A064920 (n + 2)).toNat + A000038 (A000045 (n + 1)).toNat

end

end A064921.P7324223475048741707

/-! ## A064921.P10279150804822026143

`A064917(A006530(n+2)+A052126(n+2)-1)%A067786(n+1)`
-/

namespace A064921.P10279150804822026143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A064917 (A006530 (n + 2) + (A052126 (n + 2) - 1)).toNat) (A067786 (n + 1))

end

end A064921.P10279150804822026143

/-! ## A064921.P1331808809225540083

`A064917(A064920(n+2)%A183545(3*(n+1)))`
-/

namespace A064921.P1331808809225540083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064917 (Int.tmod (A064920 (n + 2)) (A183545 (3 * (n + 1)))).toNat

end

end A064921.P1331808809225540083

/-!
# A064922: Number of iterations in A064920 to reach a prime.

The programs for A064922, there is no canonical definition to state claims against.
-/

/-! ## A064922.P5854598732123451576

`A007814(C(A324562(n+2), A082881(2*n+1)))`
-/

namespace A064922.P5854598732123451576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (Nat.choose (A324562 (n + 2)).toNat (A082881 (2 * n + 1)).toNat)

end

end A064922.P5854598732123451576

/-! ## A064922.P17469536213755646574

`A001222(A154117(n))*A099362(n+1)`
-/

namespace A064922.P17469536213755646574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A154117 n).toNat * A099362 (n + 1)

end

end A064922.P17469536213755646574

/-! ## A064922.P8159159319816306230

`A001221(gcd(A266437(n), A356695(n+1)))`
-/

namespace A064922.P8159159319816306230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (Int.gcd (A266437 n) (A356695 (n + 1)))

end

end A064922.P8159159319816306230

/-! ## A064922.P574894972994942529

`A124768(lcm(A008302(n+1), A339436(n+2)))`
-/

namespace A064922.P574894972994942529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124768 (Int.lcm (A008302 (n + 1)) (A339436 (n + 2)))

end

end A064922.P574894972994942529

/-! ## A064922.P7709443819535199053

`A333750(A286410(n)+n)`
-/

namespace A064922.P7709443819535199053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333750 (A286410 n + (n : ℤ)).toNat

end

end A064922.P7709443819535199053

/-!
# A064923: a(n) = Min { k | A064920(k) = n }.

The programs for A064923, there is no canonical definition to state claims against.
-/

/-! ## A064923.P2679848811146755562

`A000005(A000079(n)*A016006(3*n+4))`
-/

namespace A064923.P2679848811146755562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A000079 n * A016006 (3 * n + 4)).toNat

end

end A064923.P2679848811146755562

/-!
# A064924: If n is prime then a(n) = n; for the subsequent nonprime positions a(n + k) = (k+1)*n; then at the next prime position a new subsequence begins.

The programs for A064924, the canonical program `A064924.P16188674607000745231` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A064924 has offset 2).

The definition of A064924 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A064722, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A064924.P16188674607000745231

`A007917(n+2)*(A064722(n+2)+1)`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A064924

/-- `A007917(n+2)*(A064722(n+2)+1)` -/
def P16188674607000745231.Spec : Prop :=
  ∀ n, P16188674607000745231.a n = A064924 (n + 2)

theorem P16188674607000745231.correct : P16188674607000745231.Spec := by
  intro n
  simp only [A064924, Nat.add_sub_cancel]

end A064924

/-! ## A064924.P8868015607657857306

`A007917(n+2)*A049711(n+3)`
-/

namespace A064924.P8868015607657857306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007917 (n + 2) * A049711 (n + 3)

end

end A064924.P8868015607657857306

namespace A064924

/-- `A007917(n+2)*A049711(n+3)` -/
def P8868015607657857306.Spec : Prop :=
  ∀ n, P8868015607657857306.a n = A064924 (n + 2)

end A064924

/-! ## A064924.P8054294100775415222

`A008578(A000720(n+2)+1)*A175851(n+2)`
-/

namespace A064924.P8054294100775415222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (A000720 (n + 2) + 1).toNat * A175851 (n + 2)

end

end A064924.P8054294100775415222

namespace A064924

/-- `A008578(A000720(n+2)+1)*A175851(n+2)` -/
def P8054294100775415222.Spec : Prop :=
  ∀ n, P8054294100775415222.a n = A064924 (n + 2)

end A064924

/-! ## A064924.P849363469882872024

`(A009056(n+1)-A007917(n+2))*A007917(n+2)`
-/

namespace A064924.P849363469882872024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A009056 (n + 1) - A007917 (n + 2)) * A007917 (n + 2)

end

end A064924.P849363469882872024

namespace A064924

/-- `(A009056(n+1)-A007917(n+2))*A007917(n+2)` -/
def P849363469882872024.Spec : Prop :=
  ∀ n, P849363469882872024.a n = A064924 (n + 2)

end A064924

/-! ## A064924.P14762652714519455541

`(A345668(n+3)+A049711(n+3))*A049711(n+3)`
-/

namespace A064924.P14762652714519455541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A345668 (n + 3) + A049711 (n + 3)) * A049711 (n + 3)

end

end A064924.P14762652714519455541

namespace A064924

/-- `(A345668(n+3)+A049711(n+3))*A049711(n+3)` -/
def P14762652714519455541.Spec : Prop :=
  ∀ n, P14762652714519455541.a n = A064924 (n + 2)

end A064924

/-! ## A064924.P14388599527680548392

`(A020725(n+2)-A175851(n+2))*A175851(n+2)`
-/

namespace A064924.P14388599527680548392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A020725 (n + 2) - A175851 (n + 2)) * A175851 (n + 2)

end

end A064924.P14388599527680548392

namespace A064924

/-- `(A020725(n+2)-A175851(n+2))*A175851(n+2)` -/
def P14388599527680548392.Spec : Prop :=
  ∀ n, P14388599527680548392.a n = A064924 (n + 2)

end A064924

/-! ## A064924.P1084793108013143553

`(A065475(n+2)-A175851(n+2))*A175851(n+2)`
-/

namespace A064924.P1084793108013143553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A065475 (n + 2) - A175851 (n + 2)) * A175851 (n + 2)

end

end A064924.P1084793108013143553

namespace A064924

/-- `(A065475(n+2)-A175851(n+2))*A175851(n+2)` -/
def P1084793108013143553.Spec : Prop :=
  ∀ n, P1084793108013143553.a n = A064924 (n + 2)

end A064924

/-! ## A064924.P12343638922422331321

`A136548(n+3)*A175851(n+2)`
-/

namespace A064924.P12343638922422331321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136548 (n + 3) * A175851 (n + 2)

end

end A064924.P12343638922422331321

namespace A064924

/-- `A136548(n+3)*A175851(n+2)` -/
def P12343638922422331321.Spec : Prop :=
  ∀ n, P12343638922422331321.a n = A064924 (n + 2)

end A064924

/-!
# A064925: Period of continued fraction for sqrt(21)*n.

The programs for A064925, there is no canonical definition to state claims against.
-/

/-! ## A064925.P12039409170706513159

`A003285(21*(n+1)²)`
-/

namespace A064925.P12039409170706513159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003285 (21 * (n + 1) ^ 2)

end

end A064925.P12039409170706513159

/-! ## A064925.P17974810971376165394

`A097853(21*(n+1)²)`
-/

namespace A064925.P17974810971376165394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097853 (21 * (n + 1) ^ 2)

end

end A064925.P17974810971376165394

/-! ## A064925.P504621194238743326

`A067280(21*(n+1)²)-1`
-/

namespace A064925.P504621194238743326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067280 (21 * (n + 1) ^ 2) - 1

end

end A064925.P504621194238743326

/-!
# A064926: Period of continued fraction for sqrt(22)*n.

The programs for A064926, there is no canonical definition to state claims against.
-/

/-! ## A064926.P6231185274629199805

`A003285(22*(n+1)²)`
-/

namespace A064926.P6231185274629199805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003285 (22 * (n + 1) ^ 2)

end

end A064926.P6231185274629199805

/-! ## A064926.P11493718829606042232

`A097853(11*A001105(n+1))`
-/

namespace A064926.P11493718829606042232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097853 (11 * A001105 (n + 1)).toNat

end

end A064926.P11493718829606042232

/-! ## A064926.P1173905918142983423

`A065423(A067280(∑[11*(4*n+2)]))`
-/

namespace A064926.P1173905918142983423
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11 * (4 * n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065423 (A067280 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A064926.P1173905918142983423

/-! ## A064926.P16477103905568244761

`A097853(∑[A053742(n)-A017017(n)+n])`
-/

namespace A064926.P16477103905568244761
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053742 n - A017017 n + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097853 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A064926.P16477103905568244761

/-!
# A064927: Period of continued fraction for sqrt(23)*n.

The programs for A064927, there is no canonical definition to state claims against.
-/

/-! ## A064927.P12458387278724069096

`A003285(23*(n+1)²)`
-/

namespace A064927.P12458387278724069096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003285 (23 * (n + 1) ^ 2)

end

end A064927.P12458387278724069096

/-! ## A064927.P16697387800292808898

`A067280(23*(n+1)²)-1`
-/

namespace A064927.P16697387800292808898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067280 (23 * (n + 1) ^ 2) - 1

end

end A064927.P16697387800292808898

/-!
# A064928: Inverse of A034175 considered as a permutation of the nonnegative integers (which it is conjectured to be).

The programs for A064928, there is no canonical definition to state claims against.
-/

/-! ## A064928.P12307413113203911277

`A064930(A034175(n))`
-/

namespace A064928.P12307413113203911277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064930 (A034175 n).toNat

end

end A064928.P12307413113203911277

/-!
# A064929: Square of A034175 considered as a permutation of the nonnegative integers (which it is conjectured to be).

The programs for A064929, there is no canonical definition to state claims against.
-/

/-! ## A064929.P17200732460514453299

`A034175(A034175(n))`
-/

namespace A064929.P17200732460514453299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034175 (A034175 n).toNat

end

end A064929.P17200732460514453299

/-!
# A064930: Inverse square of A034175 considered as a permutation of the nonnegative integers (which it is conjectured to be).

The programs for A064930, there is no canonical definition to state claims against.
-/

/-! ## A064930.P106318552670741989

`A064928(A064928(n))`
-/

namespace A064930.P106318552670741989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064928 (A064928 n).toNat

end

end A064930.P106318552670741989

/-!
# A064931: Numbers m such that the digits of m are also digits of m^3.

The programs for A064931, there is no canonical definition to state claims against.
-/

/-! ## A064931.P728759270159667006

`A029776(n+2)%A004434(A036378(n))`
-/

namespace A064931.P728759270159667006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A029776 (n + 2)) (A004434 (A036378 n).toNat)

end

end A064931.P728759270159667006

/-! ## A064931.P14099666954526124611

`C(A029776(n+2), A051904(A003945(n)))`
-/

namespace A064931.P14099666954526124611
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A029776 (n + 2)).toNat (A051904 (A003945 n).toNat).toNat

end

end A064931.P14099666954526124611

/-! ## A064931.P17761156116205851598

`A056594(A234346(n+3))+A029776(n+2)`
-/

namespace A064931.P17761156116205851598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056594 (A234346 (n + 3)).toNat + A029776 (n + 2)

end

end A064931.P17761156116205851598

/-! ## A064931.P1448692560974396426

`A029776(n+2)*A038712(A131304(3*n+5))`
-/

namespace A064931.P1448692560974396426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029776 (n + 2) * A038712 (A131304 (3 * n + 5)).toNat

end

end A064931.P1448692560974396426

/-! ## A064931.P10394541379746632415

`A029776(A291769(n+1))%A357058(3*n+1)`
-/

namespace A064931.P10394541379746632415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A029776 (A291769 (n + 1)).toNat) (A357058 (3 * n + 1))

end

end A064931.P10394541379746632415

/-!
# A064932: Period of the continued fraction for sqrt(3^(2n+1)).

The programs for A064932, there is no canonical definition to state claims against.
-/

/-! ## A064932.P6304670884441555727

`A064849(3^(n+1))`
-/

namespace A064932.P6304670884441555727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064849 (3 ^ (n + 1))

end

end A064932.P6304670884441555727

/-! ## A064932.P16951014547031580361

`record[A064849(A048883(n))]`
-/

namespace A064932.P16951014547031580361
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064849 (A048883 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A064932.P16951014547031580361

/-! ## A064932.P9276567120525891544

`record[A064849(A098293(n))]`
-/

namespace A064932.P9276567120525891544
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064849 (A098293 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A064932.P9276567120525891544

/-! ## A064932.P17795349283323260388

`record[A064849(A112626(n))]`
-/

namespace A064932.P17795349283323260388
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064849 (A112626 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A064932.P17795349283323260388

/-!
# A064933: Numbers k such that the period of the continued fraction for sqrt(3)*k is 2.

The programs for A064933, there is no canonical definition to state claims against.
-/

/-! ## A064933.P8794467495762136779

`eq[2, A064849(n+1)]+1`
-/

namespace A064933.P8794467495762136779
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064849 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A064933.P8794467495762136779

/-! ## A064933.P14726987570886834567

`record[gcd(n+1, A024547(n+1))]`
-/

namespace A064933.P14726987570886834567
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A024547 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A064933.P14726987570886834567

/-! ## A064933.P2998722859192750309

`record[A005843(n+1)/A064849(n+1)]`
-/

namespace A064933.P2998722859192750309
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005843 (n + 1) : ℚ) / (A064849 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A064933.P2998722859192750309

/-!
# A064934: Smallest prime (or noncomposite) strictly greater than sum of previous terms (with a(0)=1).

The programs for A064934, there is no canonical definition to state claims against.
-/

/-! ## A064934.P9118319947188882495

`A112527(n+1)-floor(acot(n))`
-/

namespace A064934.P9118319947188882495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112527 (n + 1) - ⌊SequenceMachineLib.acot (n : ℝ)⌋

end

end A064934.P9118319947188882495

/-! ## A064934.P14058809806965402944

`A112527(n+1)-A000007(n)`
-/

namespace A064934.P14058809806965402944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112527 (n + 1) - A000007 n

end

end A064934.P14058809806965402944

/-! ## A064934.P18420861133256078442

`A112527(n+1)/A054977(n)`
-/

namespace A064934.P18420861133256078442
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A112527 (n + 1) : ℚ) / (A054977 n : ℚ)

end

end A064934.P18420861133256078442

/-! ## A064934.P7365730207533133438

`A112527(n+1)-A163805(2*n)`
-/

namespace A064934.P7365730207533133438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112527 (n + 1) - A163805 (2 * n)

end

end A064934.P7365730207533133438

/-! ## A064934.P7534128641294034305

`A112527(n+1)-A257170(2*n)`
-/

namespace A064934.P7534128641294034305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112527 (n + 1) - A257170 (2 * n)

end

end A064934.P7534128641294034305

/-! ## A064934.P4316308897453672197

`A112527(n+1)/A040056(n)%3`
-/

namespace A064934.P4316308897453672197
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A112527 (n + 1) : ℚ) / (Int.tmod (A040056 n) 3 : ℚ)

end

end A064934.P4316308897453672197

/-! ## A064934.P2441198216684982470

`A112527(n+1)-A029833(2*(n+1))`
-/

namespace A064934.P2441198216684982470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112527 (n + 1) - A029833 (2 * (n + 1))

end

end A064934.P2441198216684982470

/-! ## A064934.P7027757479659550564

`A112527(n+1)/gcd(2, A000040(n+1))`
-/

namespace A064934.P7027757479659550564
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A112527 (n + 1) : ℚ) / (Int.gcd 2 (A000040 (n + 1)) : ℚ)

end

end A064934.P7027757479659550564

/-! ## A064934.P10224013589907047046

`A112527(n+1)-A000035(A004016(n))`
-/

namespace A064934.P10224013589907047046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112527 (n + 1) - A000035 (A004016 n).toNat

end

end A064934.P10224013589907047046

/-! ## A064934.P18199725035073556267

`A112527(n+1)-A008683(A008574(n))`
-/

namespace A064934.P18199725035073556267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112527 (n + 1) - A008683 (A008574 n).toNat

end

end A064934.P18199725035073556267

/-! ## A064934.P12513932758572992759

`A112527(n+1)-A091400(A008486(n))`
-/

namespace A064934.P12513932758572992759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112527 (n + 1) - A091400 (A008486 n).toNat

end

end A064934.P12513932758572992759

/-! ## A064934.P11841961010609006620

`A112527(n+1)-A209229(A005408(n))`
-/

namespace A064934.P11841961010609006620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112527 (n + 1) - A209229 (A005408 n).toNat

end

end A064934.P11841961010609006620

/-! ## A064934.P6776594453121775435

`A112527(n+1)-A000035(A278222(n))`
-/

namespace A064934.P6776594453121775435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112527 (n + 1) - A000035 (A278222 n).toNat

end

end A064934.P6776594453121775435

/-! ## A064934.P16191158553043992155

`A112527(n+1)/A014963(A017545(n))`
-/

namespace A064934.P16191158553043992155
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A112527 (n + 1) : ℚ) / (A014963 (A017545 n).toNat : ℚ)

end

end A064934.P16191158553043992155

/-! ## A064934.P515428253436847261

`A112527(n+1)^A001221(A001316(n))`
-/

namespace A064934.P515428253436847261
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A112527 (n + 1) : ℚ) ^ (A001221 (A001316 n).toNat : ℤ)

end

end A064934.P515428253436847261

/-! ## A064934.P1001278711931272273

`A112527(n+1)-A163805(A005843(n))²`
-/

namespace A064934.P1001278711931272273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112527 (n + 1) - A163805 (A005843 n).toNat ^ 2

end

end A064934.P1001278711931272273

/-! ## A064934.P13813172396572125217

`A112527(n+1)+A008683(2*A008574(n))`
-/

namespace A064934.P13813172396572125217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112527 (n + 1) + A008683 (2 * A008574 n).toNat

end

end A064934.P13813172396572125217

/-! ## A064934.P18317949201561096245

`A112527(n+1)-A297328(A000096(n))`
-/

namespace A064934.P18317949201561096245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112527 (n + 1) - A297328 (A000096 n).toNat

end

end A064934.P18317949201561096245

/-! ## A064934.P15671504003043755748

`A112527(n+1)-A008683(A016754(n))`
-/

namespace A064934.P15671504003043755748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112527 (n + 1) - A008683 (A016754 n).toNat

end

end A064934.P15671504003043755748

/-!
# A064935: Numbers k such that (k+3)^(k+2) mod (k+1) = k.

The programs for A064935, there is no canonical definition to state claims against.
-/

/-! ## A064935.P13047179752423571056

`A296369(n+2)-1`
-/

namespace A064935.P13047179752423571056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296369 (n + 2) - 1

end

end A064935.P13047179752423571056

/-! ## A064935.P18124884999696450563

`A055685(n+2)-2`
-/

namespace A064935.P18124884999696450563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055685 (n + 2) - 2

end

end A064935.P18124884999696450563

/-! ## A064935.P9288655112982689464

`∑[abs(Δ[A055685(n+1)])]`
-/

namespace A064935.P9288655112982689464
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055685 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f2 (n + 1) - f2 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A064935.P9288655112982689464

/-! ## A064935.P7034296400437424970

`∑[abs(Δ[A296369(n+1)])]`
-/

namespace A064935.P7034296400437424970
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296369 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f2 (n + 1) - f2 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A064935.P7034296400437424970

/-! ## A064935.P5356680169685879066

`xor(1, A296369(A020725(n+1)))`
-/

namespace A064935.P5356680169685879066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A296369 (A020725 (n + 1)).toNat)

end

end A064935.P5356680169685879066

/-!
# A064936: Primes p such that gcd(p, prime(p)^2 - 1) does not equal 1.

The programs for A064936, there is no canonical definition to state claims against.
-/

/-! ## A064936.P12307000822274538683

`p?[A078931(n+1)]`
-/

namespace A064936.P12307000822274538683
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078931 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A064936.P12307000822274538683

/-!
# A064937: Nonprimes k such that gcd(k, prime(k)^2 - 1) is 1.

The programs for A064937, the canonical program `A064937.P11756979799408697284` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A064937 has offset 1).

The definition of A064937 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1425 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A064937.P11756979799408697284

`record[A191558((n+1)/A064830(n+1))]`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A064937

/-- `record[A191558((n+1)/A064830(n+1))]` -/
def P11756979799408697284.Spec : Prop :=
  ∀ n, P11756979799408697284.a n = A064937 (n + 1)

theorem P11756979799408697284.correct : P11756979799408697284.Spec := by
  intro n
  simp only [A064937, Nat.add_sub_cancel]

end A064937

/-! ## A064937.P2405207581197028062

`eq[A005171(n+1), A064830(n+1)]+1`
-/

namespace A064937.P2405207581197028062
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005171 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064830 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A064937.P2405207581197028062

namespace A064937

/-- `eq[A005171(n+1), A064830(n+1)]+1` -/
def P2405207581197028062.Spec : Prop :=
  ∀ n, (P2405207581197028062.a n : ℤ) = A064937 (n + 1)

end A064937

/-! ## A064937.P8492649774795927486

`record[(2-A064830(n+1))*A191558(n+1)]`
-/

namespace A064937.P8492649774795927486
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - A064830 (n + 1)) * A191558 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A064937.P8492649774795927486

namespace A064937

/-- `record[(2-A064830(n+1))*A191558(n+1)]` -/
def P8492649774795927486.Spec : Prop :=
  ∀ n, P8492649774795927486.a n = A064937 (n + 1)

end A064937

/-!
# A064938: Nonprimes k such that k divides prime(k)^2 - 1.

The programs for A064938, there is no canonical definition to state claims against.
-/

/-! ## A064938.P7896662877623905759

`record[A064830(A018252(n+1))]`
-/

namespace A064938.P7896662877623905759
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064830 (A018252 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A064938.P7896662877623905759

/-! ## A064938.P6128569683997926550

`record[A191558(A064830(n+1))]`
-/

namespace A064938.P6128569683997926550
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191558 (A064830 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A064938.P6128569683997926550

/-! ## A064938.P11453766681358347014

`record[gcd(A084920(n+1), A288469(n+1))]`
-/

namespace A064938.P11453766681358347014
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A084920 (n + 1)) (A288469 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A064938.P11453766681358347014

/-! ## A064938.P2467025041239476057

`record[A064830(A014683(A014683(n+1)))]`
-/

namespace A064938.P2467025041239476057
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064830 (A014683 (A014683 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A064938.P2467025041239476057

/-! ## A064938.P18078488284308396913

`record[A064830(n+1)%A007821(A032742(n+1))]`
-/

namespace A064938.P18078488284308396913
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A064830 (n + 1)) (A007821 (A032742 (n + 1)).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A064938.P18078488284308396913

/-!
# A064939: a(n) = Sum_{i=1..omega(n)} i*p_i, where {p_i}, i=1..omega(n) is the increasing sequence of prime divisors of n, where omega is the number of distinct prime factors of n (A001221).

The programs for A064939, there is no canonical definition to state claims against.
-/

/-! ## A064939.P3911141205951246606

`A304818(A328878(n+1))`
-/

namespace A064939.P3911141205951246606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304818 (A328878 (n + 1)).toNat

end

end A064939.P3911141205951246606

/-! ## A064939.P15789907446809892056

`A304818(∏{p}[A007947(n+1), A000040(#)])`
-/

namespace A064939.P15789907446809892056
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304818 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, A000040 p).toNat

end

end A064939.P15789907446809892056

/-! ## A064939.P3148241560462320491

`A304818(∏{p}[A133900(n+1), A000040(#)])`
-/

namespace A064939.P3148241560462320491
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133900 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304818 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, A000040 p).toNat

end

end A064939.P3148241560462320491

/-!
# A064940: Values of k for which A065358(k) is 0.

The programs for A064940, there is no canonical definition to state claims against.
-/

/-! ## A064940.P1988056922701221119

`A299300(n+1)-1`
-/

namespace A064940.P1988056922701221119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299300 (n + 1) - 1

end

end A064940.P1988056922701221119

/-! ## A064940.P14697631995284002607

`xor(A055231(A008834(n+1)), A299300(n+1))`
-/

namespace A064940.P14697631995284002607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A055231 (A008834 (n + 1)).toNat) (A299300 (n + 1))

end

end A064940.P14697631995284002607

/-! ## A064940.P18087856196877281821

`xor(A299300(n+1), A305936(A094603(n+1)))`
-/

namespace A064940.P18087856196877281821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A299300 (n + 1)) (A305936 (A094603 (n + 1)).toNat)

end

end A064940.P18087856196877281821

/-! ## A064940.P8801784508018293212

`xor(A094603(A008576(3*n+2)), A299300(n+1))`
-/

namespace A064940.P8801784508018293212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A094603 (A008576 (3 * n + 2)).toNat) (A299300 (n + 1))

end

end A064940.P8801784508018293212

/-! ## A064940.P5298891785766984464

`xor(A006519(A008864(2*n+3)+1), A299300(n+1))`
-/

namespace A064940.P5298891785766984464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A006519 (A008864 (2 * n + 3) + 1).toNat) (A299300 (n + 1))

end

end A064940.P5298891785766984464

/-! ## A064940.P9973195481225654613

`xor(A123110(A007519(n+1)), A299300(n+1))`
-/

namespace A064940.P9973195481225654613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A123110 (A007519 (n + 1)).toNat) (A299300 (n + 1))

end

end A064940.P9973195481225654613

/-! ## A064940.P17033672628506016355

`and(A002446(n), A299300(n+1))`
-/

namespace A064940.P17033672628506016355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A002446 n) (A299300 (n + 1))

end

end A064940.P17033672628506016355

/-! ## A064940.P16623964654998632613

`eq[0, A065358(n)]`
-/

namespace A064940.P16623964654998632613
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065358 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A064940.P16623964654998632613

/-! ## A064940.P5270449412770604225

`eq[1, A278603(n+1)]`
-/

namespace A064940.P5270449412770604225
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278603 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A064940.P5270449412770604225

/-! ## A064940.P2604120730472409052

`eq[1, A278603(n)]-1`
-/

namespace A064940.P2604120730472409052
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278603 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n : ℤ) - 1

end

end A064940.P2604120730472409052

/-!
# A064942: Decimal numbers n such that after possibly prefixing leading 0's to n, the resulting number n' can be broken into 2 numbers of equal length, n' = xy, such that x^2+y^2 = n (y may also have leading zeros).

The programs for A064942, there is no canonical definition to state claims against.
-/

/-! ## A064942.P11610275450267734446

`A101311(lcm(n+1, or(1, xor(1, n)-1)))`
-/

namespace A064942.P11610275450267734446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101311 (Int.lcm (n + 1 : ℤ) (Int.lor 1 ((Nat.xor 1 n : ℤ) - 1)))

end

end A064942.P11610275450267734446

/-! ## A064942.P1531312614329411765

`A101311(∑[A102423(n)])`
-/

namespace A064942.P1531312614329411765
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102423 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101311 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A064942.P1531312614329411765

/-! ## A064942.P2748858599755012251

`A101311(∑[A241601(n)])`
-/

namespace A064942.P2748858599755012251
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241601 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101311 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A064942.P2748858599755012251

/-!
# A064943: Number of integers with 2*n digits that are the sum of the squares of their halves (leading zeros count; 1 does not, to avoid the ambiguity 1 = 0^2 + 1^2 = 00^2 + 01^2 = 000^2 + 001^2 = ...).

The programs for A064943, there is no canonical definition to state claims against.
-/

/-! ## A064943.P7297991836502665812

`A344897(2*(n+1))-2`
-/

namespace A064943.P7297991836502665812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344897 (2 * (n + 1)) - 2

end

end A064943.P7297991836502665812

/-! ## A064943.P873007817946132415

`xor(-A344897(2*n+2), -2)`
-/

namespace A064943.P873007817946132415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (-A344897 (2 * n + 2)) (-2)

end

end A064943.P873007817946132415

/-! ## A064943.P13058967531969177870

`abs(2-A344897(2*(n-log2(1/2))))`
-/

namespace A064943.P13058967531969177870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |2 - A344897 (SequenceMachineLib.roundAway (2 * ((n : ℝ) - Real.logb 2 ((1 : ℚ) / 2 : ℝ)))).toNat|

end

end A064943.P13058967531969177870

/-!
# A064944: a(n) = Sum_{i|n, j|n, j >= i} j.

The programs for A064944, there is no canonical definition to state claims against.
-/

/-! ## A064944.P16431485105773511028

`A064946(n+1)+A000203(n+1)`
-/

namespace A064944.P16431485105773511028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064946 (n + 1) + A000203 (n + 1)

end

end A064944.P16431485105773511028

/-! ## A064944.P1131093570025672684

`A064840(n+1)-A064947(n+1)`
-/

namespace A064944.P1131093570025672684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064840 (n + 1) - A064947 (n + 1)

end

end A064944.P1131093570025672684

/-! ## A064944.P9087805670957655119

`A064948(n+1)-A064946(n+1)`
-/

namespace A064944.P9087805670957655119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064948 (n + 1) - A064946 (n + 1)

end

end A064944.P9087805670957655119

/-! ## A064944.P6318989854401949155

`A337360(n+1)-A064945(n+1)`
-/

namespace A064944.P6318989854401949155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337360 (n + 1) - A064945 (n + 1)

end

end A064944.P6318989854401949155

/-! ## A064944.P11551017780443205889

`(A064948(n+1)+A000203(n+1))/2`
-/

namespace A064944.P11551017780443205889
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A064948 (n + 1) + A000203 (n + 1) : ℚ) / 2

end

end A064944.P11551017780443205889

/-! ## A064944.P17072807234235782727

`∑{d}[n+1, A034448(#)*A070038((n+1)/#)]`
-/

namespace A064944.P17072807234235782727
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A034448 d * A070038 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A064944.P17072807234235782727

/-! ## A064944.P17603141904740920249

`A000203(n+1)+A064840(n+1)-A064945(n+1)`
-/

namespace A064944.P17603141904740920249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) + (A064840 (n + 1) - A064945 (n + 1))

end

end A064944.P17603141904740920249

/-! ## A064944.P2802626802238908097

`A064840(n+1)+A064945(n+1)-A064949(n+1)`
-/

namespace A064944.P2802626802238908097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064840 (n + 1) + (A064945 (n + 1) - A064949 (n + 1))

end

end A064944.P2802626802238908097

/-! ## A064944.P12357087179234116834

`A064945(n+1)+A064948(n+1)-A064840(n+1)`
-/

namespace A064944.P12357087179234116834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064945 (n + 1) + (A064948 (n + 1) - A064840 (n + 1))

end

end A064944.P12357087179234116834

/-! ## A064944.P12750538045907155287

`A064945(n+1)+A064946(n+1)-A064947(n+1)`
-/

namespace A064944.P12750538045907155287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064945 (n + 1) + (A064946 (n + 1) - A064947 (n + 1))

end

end A064944.P12750538045907155287

/-! ## A064944.P18154345743202916642

`A000203(n+1)+A337297(n+1)-A064947(n+1)`
-/

namespace A064944.P18154345743202916642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) + (A337297 (n + 1) - A064947 (n + 1))

end

end A064944.P18154345743202916642

/-! ## A064944.P17686308480020556014

`A000005(n+1)*A000203(n+1)-A064947(n+1)`
-/

namespace A064944.P17686308480020556014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) * A000203 (n + 1) - A064947 (n + 1)

end

end A064944.P17686308480020556014

/-! ## A064944.P955821750110225715

`A064946(n+1)+A064840(n+1)/A000005(n+1)`
-/

namespace A064944.P955821750110225715
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A064946 (n + 1) : ℚ) + (A064840 (n + 1) : ℚ) / (A000005 (n + 1) : ℚ)

end

end A064944.P955821750110225715

/-! ## A064944.P9100758297271302238

`A000203(n+1)*A334954(n+1)-A064945(n+1)`
-/

namespace A064944.P9100758297271302238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) * A334954 (n + 1) - A064945 (n + 1)

end

end A064944.P9100758297271302238

/-!
# A064945: a(n) = Sum_{i|n, j|n, j >= i} i.

The programs for A064945, there is no canonical definition to state claims against.
-/

/-! ## A064945.P14088158296463246833

`A064947(n+1)+A000203(n+1)`
-/

namespace A064945.P14088158296463246833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064947 (n + 1) + A000203 (n + 1)

end

end A064945.P14088158296463246833

/-! ## A064945.P863351686702990484

`A064840(n+1)-A064946(n+1)`
-/

namespace A064945.P863351686702990484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064840 (n + 1) - A064946 (n + 1)

end

end A064945.P863351686702990484

/-! ## A064945.P8363211412567807247

`A064949(n+1)-A064947(n+1)`
-/

namespace A064945.P8363211412567807247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064949 (n + 1) - A064947 (n + 1)

end

end A064945.P8363211412567807247

/-! ## A064945.P3931464389855015179

`A337360(n+1)-A064944(n+1)`
-/

namespace A064945.P3931464389855015179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337360 (n + 1) - A064944 (n + 1)

end

end A064945.P3931464389855015179

/-! ## A064945.P8139323470621316525

`(A064949(n+1)+A000203(n+1))/2`
-/

namespace A064945.P8139323470621316525
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A064949 (n + 1) + A000203 (n + 1) : ℚ) / 2

end

end A064945.P8139323470621316525

/-! ## A064945.P11732135536973328178

`A064947(n+1)+Δ[A160664(n)]`
-/

namespace A064945.P11732135536973328178
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160664 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064947 (n + 1) + (f1 (n + 1) - f1 n)

end

end A064945.P11732135536973328178

/-! ## A064945.P9176294952157579559

`∑{d}[n+1, A034448(#)*A066839((n+1)/#)]`
-/

namespace A064945.P9176294952157579559
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A034448 d * A066839 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A064945.P9176294952157579559

/-! ## A064945.P17995417317741825136

`A000203(n+1)+A064840(n+1)-A064944(n+1)`
-/

namespace A064945.P17995417317741825136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) + (A064840 (n + 1) - A064944 (n + 1))

end

end A064945.P17995417317741825136

/-! ## A064945.P14276166044479910814

`A064840(n+1)+A064944(n+1)-A064948(n+1)`
-/

namespace A064945.P14276166044479910814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064840 (n + 1) + (A064944 (n + 1) - A064948 (n + 1))

end

end A064945.P14276166044479910814

/-! ## A064945.P17662022664092607750

`A064944(n+1)+A064949(n+1)-A064840(n+1)`
-/

namespace A064945.P17662022664092607750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064944 (n + 1) + (A064949 (n + 1) - A064840 (n + 1))

end

end A064945.P17662022664092607750

/-! ## A064945.P7164883125546328889

`A064944(n+1)+A064947(n+1)-A064946(n+1)`
-/

namespace A064945.P7164883125546328889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064944 (n + 1) + (A064947 (n + 1) - A064946 (n + 1))

end

end A064945.P7164883125546328889

/-! ## A064945.P15451642336072560081

`A064840(n+1)+A064947(n+1)-A337297(n+1)`
-/

namespace A064945.P15451642336072560081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064840 (n + 1) + (A064947 (n + 1) - A337297 (n + 1))

end

end A064945.P15451642336072560081

/-! ## A064945.P205666148568000740

`A000005(n+1)*A000203(n+1)-A064946(n+1)`
-/

namespace A064945.P205666148568000740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) * A000203 (n + 1) - A064946 (n + 1)

end

end A064945.P205666148568000740

/-! ## A064945.P13727005650375005793

`A064947(n+1)+A064840(n+1)/A000005(n+1)`
-/

namespace A064945.P13727005650375005793
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A064947 (n + 1) : ℚ) + (A064840 (n + 1) : ℚ) / (A000005 (n + 1) : ℚ)

end

end A064945.P13727005650375005793

/-! ## A064945.P12833805869759320011

`A000203(n+1)*A334954(n+1)-A064944(n+1)`
-/

namespace A064945.P12833805869759320011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) * A334954 (n + 1) - A064944 (n + 1)

end

end A064945.P12833805869759320011

/-!
# A064946: a(n) = Sum_{i|n, j|n, j>i} j.

The programs for A064946, there is no canonical definition to state claims against.
-/

/-! ## A064946.P6730609456285070881

`A064944(n+1)-A000203(n+1)`
-/

namespace A064946.P6730609456285070881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064944 (n + 1) - A000203 (n + 1)

end

end A064946.P6730609456285070881

/-! ## A064946.P17057802681508916151

`A064840(n+1)-A064945(n+1)`
-/

namespace A064946.P17057802681508916151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064840 (n + 1) - A064945 (n + 1)

end

end A064946.P17057802681508916151

/-! ## A064946.P123771759871158470

`A064948(n+1)-A064944(n+1)`
-/

namespace A064946.P123771759871158470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064948 (n + 1) - A064944 (n + 1)

end

end A064946.P123771759871158470

/-! ## A064946.P16400001169178622915

`A337297(n+1)-A064947(n+1)`
-/

namespace A064946.P16400001169178622915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337297 (n + 1) - A064947 (n + 1)

end

end A064946.P16400001169178622915

/-! ## A064946.P18002962672940935009

`(A064948(n+1)-A000203(n+1))/2`
-/

namespace A064946.P18002962672940935009
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A064948 (n + 1) - A000203 (n + 1) : ℚ) / 2

end

end A064946.P18002962672940935009

/-! ## A064946.P11181562919873288502

`∑{d}[n+1, A034448(#)*A238535((n+1)/#)]`
-/

namespace A064946.P11181562919873288502
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A034448 d * A238535 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A064946.P11181562919873288502

/-! ## A064946.P11233632703729838770

`∑{d}[n+1, A000203(#)*A334023((n+1)/#)]`
-/

namespace A064946.P11233632703729838770
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000203 d * A334023 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A064946.P11233632703729838770

/-! ## A064946.P10204505277627739426

`A064840(n+1)-(A064947(n+1)+A000203(n+1))`
-/

namespace A064946.P10204505277627739426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064840 (n + 1) - (A064947 (n + 1) + A000203 (n + 1))

end

end A064946.P10204505277627739426

/-! ## A064946.P5649242929772171431

`A064840(n+1)+A064947(n+1)-A064949(n+1)`
-/

namespace A064946.P5649242929772171431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064840 (n + 1) + (A064947 (n + 1) - A064949 (n + 1))

end

end A064946.P5649242929772171431

/-! ## A064946.P11291177968798196115

`A064947(n+1)+A064948(n+1)-A064840(n+1)`
-/

namespace A064946.P11291177968798196115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064947 (n + 1) + (A064948 (n + 1) - A064840 (n + 1))

end

end A064946.P11291177968798196115

/-! ## A064946.P12600359026302539721

`A064944(n+1)+A064947(n+1)-A064945(n+1)`
-/

namespace A064946.P12600359026302539721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064944 (n + 1) + (A064947 (n + 1) - A064945 (n + 1))

end

end A064946.P12600359026302539721

/-! ## A064946.P2458823647187701673

`A000203(n+1)+A337297(n+1)-A064945(n+1)`
-/

namespace A064946.P2458823647187701673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) + (A337297 (n + 1) - A064945 (n + 1))

end

end A064946.P2458823647187701673

/-! ## A064946.P12522064934557627733

`A337360(n+1)-(A064945(n+1)+A000203(n+1))`
-/

namespace A064946.P12522064934557627733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337360 (n + 1) - (A064945 (n + 1) + A000203 (n + 1))

end

end A064946.P12522064934557627733

/-! ## A064946.P7356666732658783422

`A064945(n+1)+A337297(n+1)-A064949(n+1)`
-/

namespace A064946.P7356666732658783422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064945 (n + 1) + (A337297 (n + 1) - A064949 (n + 1))

end

end A064946.P7356666732658783422

/-! ## A064946.P17562424419658171796

`A000005(n+1)*A000203(n+1)-A064945(n+1)`
-/

namespace A064946.P17562424419658171796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) * A000203 (n + 1) - A064945 (n + 1)

end

end A064946.P17562424419658171796

/-! ## A064946.P16264150533026921145

`A064944(n+1)-A064840(n+1)/A000005(n+1)`
-/

namespace A064946.P16264150533026921145
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A064944 (n + 1) : ℚ) - (A064840 (n + 1) : ℚ) / (A000005 (n + 1) : ℚ)

end

end A064946.P16264150533026921145

/-! ## A064946.P15596210791820382194

`A064944(n+1)-A337360(n+1)/A334954(n+1)`
-/

namespace A064946.P15596210791820382194
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A064944 (n + 1) : ℚ) - (A337360 (n + 1) : ℚ) / (A334954 (n + 1) : ℚ)

end

end A064946.P15596210791820382194

/-!
# A064947: a(n) = Sum_{i|n, j|n, j>i} i.

The programs for A064947, there is no canonical definition to state claims against.
-/

/-! ## A064947.P10567240674612465485

`A064945(n+1)-A000203(n+1)`
-/

namespace A064947.P10567240674612465485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064945 (n + 1) - A000203 (n + 1)

end

end A064947.P10567240674612465485

/-! ## A064947.P3107902799104353418

`A064840(n+1)-A064944(n+1)`
-/

namespace A064947.P3107902799104353418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064840 (n + 1) - A064944 (n + 1)

end

end A064947.P3107902799104353418

/-! ## A064947.P1538562823349350913

`A064949(n+1)-A064945(n+1)`
-/

namespace A064947.P1538562823349350913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064949 (n + 1) - A064945 (n + 1)

end

end A064947.P1538562823349350913

/-! ## A064947.P3544493459759680727

`A337297(n+1)-A064946(n+1)`
-/

namespace A064947.P3544493459759680727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337297 (n + 1) - A064946 (n + 1)

end

end A064947.P3544493459759680727

/-! ## A064947.P13237603067023739181

`(A064949(n+1)-A000203(n+1))/2`
-/

namespace A064947.P13237603067023739181
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A064949 (n + 1) - A000203 (n + 1) : ℚ) / 2

end

end A064947.P13237603067023739181

/-! ## A064947.P15736050425353786285

`A064945(n+1)+1-A088580(n+1)`
-/

namespace A064947.P15736050425353786285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064945 (n + 1) + (1 - A088580 (n + 1))

end

end A064947.P15736050425353786285

/-! ## A064947.P3372320690241194777

`∑{d}[n+1, A034448(#)*A070039((n+1)/#)]`
-/

namespace A064947.P3372320690241194777
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A034448 d * A070039 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A064947.P3372320690241194777

/-! ## A064947.P1580572950403437064

`∑{d}[n+1, A000203(#)*A334019((n+1)/#)]`
-/

namespace A064947.P1580572950403437064
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000203 d * A334019 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A064947.P1580572950403437064

/-! ## A064947.P13816192569864076240

`A064840(n+1)-(A064946(n+1)+A000203(n+1))`
-/

namespace A064947.P13816192569864076240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064840 (n + 1) - (A064946 (n + 1) + A000203 (n + 1))

end

end A064947.P13816192569864076240

/-! ## A064947.P11464096473942875732

`A064840(n+1)+A064946(n+1)-A064948(n+1)`
-/

namespace A064947.P11464096473942875732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064840 (n + 1) + (A064946 (n + 1) - A064948 (n + 1))

end

end A064947.P11464096473942875732

/-! ## A064947.P12817490226773489912

`A064946(n+1)+A064949(n+1)-A064840(n+1)`
-/

namespace A064947.P12817490226773489912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064946 (n + 1) + (A064949 (n + 1) - A064840 (n + 1))

end

end A064947.P12817490226773489912

/-! ## A064947.P18110344068294568675

`A064945(n+1)+A064946(n+1)-A064944(n+1)`
-/

namespace A064947.P18110344068294568675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064945 (n + 1) + (A064946 (n + 1) - A064944 (n + 1))

end

end A064947.P18110344068294568675

/-! ## A064947.P16866609872424869526

`A000203(n+1)+A337297(n+1)-A064944(n+1)`
-/

namespace A064947.P16866609872424869526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) + (A337297 (n + 1) - A064944 (n + 1))

end

end A064947.P16866609872424869526

/-! ## A064947.P16084258912745146940

`A337360(n+1)-(A064944(n+1)+A000203(n+1))`
-/

namespace A064947.P16084258912745146940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337360 (n + 1) - (A064944 (n + 1) + A000203 (n + 1))

end

end A064947.P16084258912745146940

/-! ## A064947.P945702586054647232

`A064945(n+1)+A337297(n+1)-A064840(n+1)`
-/

namespace A064947.P945702586054647232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064945 (n + 1) + (A337297 (n + 1) - A064840 (n + 1))

end

end A064947.P945702586054647232

/-! ## A064947.P6630341067459811829

`A064840(n+1)+A064945(n+1)-A337360(n+1)`
-/

namespace A064947.P6630341067459811829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064840 (n + 1) + (A064945 (n + 1) - A337360 (n + 1))

end

end A064947.P6630341067459811829

/-! ## A064947.P1357874528900342132

`A000005(n+1)*A000203(n+1)-A064944(n+1)`
-/

namespace A064947.P1357874528900342132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) * A000203 (n + 1) - A064944 (n + 1)

end

end A064947.P1357874528900342132

/-! ## A064947.P4543754270697213900

`A064945(n+1)-A064840(n+1)/A000005(n+1)`
-/

namespace A064947.P4543754270697213900
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A064945 (n + 1) : ℚ) - (A064840 (n + 1) : ℚ) / (A000005 (n + 1) : ℚ)

end

end A064947.P4543754270697213900

/-! ## A064947.P14150437385286035031

`A064945(n+1)-A337360(n+1)/A334954(n+1)`
-/

namespace A064947.P14150437385286035031
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A064945 (n + 1) : ℚ) - (A337360 (n + 1) : ℚ) / (A334954 (n + 1) : ℚ)

end

end A064947.P14150437385286035031

/-!
# A064948: a(n) = Sum_{i|n, j|n} max(i,j).

The programs for A064948, there is no canonical definition to state claims against.
-/

/-! ## A064948.P12403356120774483674

`A064944(n+1)+A064946(n+1)`
-/

namespace A064948.P12403356120774483674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064944 (n + 1) + A064946 (n + 1)

end

end A064948.P12403356120774483674

/-! ## A064948.P6108500565481578428

`2*A064946(n+1)+A000203(n+1)`
-/

namespace A064948.P6108500565481578428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A064946 (n + 1) + A000203 (n + 1)

end

end A064948.P6108500565481578428

/-! ## A064948.P12376195547406026144

`2*A064944(n+1)-A000203(n+1)`
-/

namespace A064948.P12376195547406026144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A064944 (n + 1) - A000203 (n + 1)

end

end A064948.P12376195547406026144

/-! ## A064948.P13174317161380591817

`2*A064840(n+1)-A064949(n+1)`
-/

namespace A064948.P13174317161380591817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A064840 (n + 1) - A064949 (n + 1)

end

end A064948.P13174317161380591817

/-! ## A064948.P5908302656310067070

`∑{d}[n+1, A034448(#)*A117003((n+1)/#)]`
-/

namespace A064948.P5908302656310067070
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A034448 d * A117003 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A064948.P5908302656310067070

/-! ## A064948.P10906354375700614452

`A064840(n+1)+A064944(n+1)-A064945(n+1)`
-/

namespace A064948.P10906354375700614452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064840 (n + 1) + (A064944 (n + 1) - A064945 (n + 1))

end

end A064948.P10906354375700614452

/-! ## A064948.P6386349010070372309

`A064840(n+1)+A064946(n+1)-A064947(n+1)`
-/

namespace A064948.P6386349010070372309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064840 (n + 1) + (A064946 (n + 1) - A064947 (n + 1))

end

end A064948.P6386349010070372309

/-! ## A064948.P7113737978668550389

`A064944(n+1)+A337297(n+1)-A064947(n+1)`
-/

namespace A064948.P7113737978668550389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064944 (n + 1) + (A337297 (n + 1) - A064947 (n + 1))

end

end A064948.P7113737978668550389

/-! ## A064948.P4976017941673755621

`∑{d}[n+1, A118778(#)*A332619((n+1)/#)]`
-/

namespace A064948.P4976017941673755621
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A118778 d * A332619 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A064948.P4976017941673755621

/-!
# A064949: a(n) = Sum_{i|n, j|n} min(i,j).

The programs for A064949, there is no canonical definition to state claims against.
-/

/-! ## A064949.P3570742047906157906

`A064945(n+1)+A064947(n+1)`
-/

namespace A064949.P3570742047906157906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064945 (n + 1) + A064947 (n + 1)

end

end A064949.P3570742047906157906

/-! ## A064949.P10014227545992920322

`2*A064947(n+1)+A000203(n+1)`
-/

namespace A064949.P10014227545992920322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A064947 (n + 1) + A000203 (n + 1)

end

end A064949.P10014227545992920322

/-! ## A064949.P12307714293089046408

`2*A064945(n+1)-A000203(n+1)`
-/

namespace A064949.P12307714293089046408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A064945 (n + 1) - A000203 (n + 1)

end

end A064949.P12307714293089046408

/-! ## A064949.P10733514076588846083

`2*A064840(n+1)-A064948(n+1)`
-/

namespace A064949.P10733514076588846083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A064840 (n + 1) - A064948 (n + 1)

end

end A064949.P10733514076588846083

/-! ## A064949.P707518711903255658

`A000203(n+1)*(2*A000005(n+1)+1)-2*A064944(n+1)`
-/

namespace A064949.P707518711903255658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) * (2 * A000005 (n + 1) + 1) - 2 * A064944 (n + 1)

end

end A064949.P707518711903255658

/-! ## A064949.P5359045192964348815

`Δ[A160664(n)]+2*A064947(n+1)`
-/

namespace A064949.P5359045192964348815
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160664 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + 2 * A064947 (n + 1)

end

end A064949.P5359045192964348815

/-! ## A064949.P15310428451449874423

`∑{d}[n+1, A034448(#)*A117004((n+1)/#)]`
-/

namespace A064949.P15310428451449874423
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A034448 d * A117004 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A064949.P15310428451449874423

/-! ## A064949.P11224824145973177304

`A064840(n+1)+A064945(n+1)-A064944(n+1)`
-/

namespace A064949.P11224824145973177304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064840 (n + 1) + (A064945 (n + 1) - A064944 (n + 1))

end

end A064949.P11224824145973177304

/-! ## A064949.P322323245561033995

`A064840(n+1)+A064947(n+1)-A064946(n+1)`
-/

namespace A064949.P322323245561033995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064840 (n + 1) + (A064947 (n + 1) - A064946 (n + 1))

end

end A064949.P322323245561033995

/-! ## A064949.P9639096733199989007

`A005843(A064947(n+1))+Δ[A160664(n)]`
-/

namespace A064949.P9639096733199989007
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160664 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A064947 (n + 1)).toNat + (f1 (n + 1) - f1 n)

end

end A064949.P9639096733199989007

/-! ## A064949.P14933414823573772933

`A039653(n+1)+A005408(A064947(n+1))`
-/

namespace A064949.P14933414823573772933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039653 (n + 1) + A005408 (A064947 (n + 1)).toNat

end

end A064949.P14933414823573772933

/-! ## A064949.P6594099042560166736

`A005408(A064945(n+1))-A088580(n+1)`
-/

namespace A064949.P6594099042560166736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (A064945 (n + 1)).toNat - A088580 (n + 1)

end

end A064949.P6594099042560166736

/-!
# A064950: a(n) = Sum_{i|n, j|n} lcm(i,j).

The programs for A064950, the canonical program `A064950.P4902822540981006057` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A064950 has offset 1).

The definition of A064950 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A064950.P12367810430286606976

`∑{d}[n+1, #*A048691(#)]`
-/

namespace A064950.P12367810430286606976
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A048691 d

end

end A064950.P12367810430286606976

namespace A064950

/-- `∑{d}[n+1, #*A048691(#)]` -/
def P12367810430286606976.Spec : Prop :=
  ∀ n, P12367810430286606976.a n = A064950 (n + 1)

end A064950

/-! ## A064950.P4902822540981006057

`∑{d}[n+1, #*A357938((n+1)/#)]`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A064950

/-- `∑{d}[n+1, #*A357938((n+1)/#)]` -/
def P4902822540981006057.Spec : Prop :=
  ∀ n, P4902822540981006057.a n = A064950 (n + 1)

theorem P4902822540981006057.correct : P4902822540981006057.Spec := by
  intro n
  simp only [A064950, Nat.add_sub_cancel]

end A064950

/-! ## A064950.P2509469087729708572

`∑{d}[n+1, A007429(#)*A078439((n+1)/#)]`
-/

namespace A064950.P2509469087729708572
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007429 d * A078439 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A064950.P2509469087729708572

namespace A064950

/-- `∑{d}[n+1, A007429(#)*A078439((n+1)/#)]` -/
def P2509469087729708572.Spec : Prop :=
  ∀ n, P2509469087729708572.a n = A064950 (n + 1)

end A064950

/-! ## A064950.P663737762413297121

`∑{d}[n+1, A038040(#)*A048250((n+1)/#)]`
-/

namespace A064950.P663737762413297121
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A038040 d * A048250 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A064950.P663737762413297121

namespace A064950

/-- `∑{d}[n+1, A038040(#)*A048250((n+1)/#)]` -/
def P663737762413297121.Spec : Prop :=
  ∀ n, P663737762413297121.a n = A064950 (n + 1)

end A064950

/-! ## A064950.P13361514734955178078

`∑{d}[n+1, A034448(#)*A057670((n+1)/#)]`
-/

namespace A064950.P13361514734955178078
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A034448 d * A057670 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A064950.P13361514734955178078

namespace A064950

/-- `∑{d}[n+1, A034448(#)*A057670((n+1)/#)]` -/
def P13361514734955178078.Spec : Prop :=
  ∀ n, P13361514734955178078.a n = A064950 (n + 1)

end A064950

/-! ## A064950.P15219084329414879125

`∑{d}[n+1, A055615(#)*A068984((n+1)/#)]`
-/

namespace A064950.P15219084329414879125
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A055615 d * A068984 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A064950.P15219084329414879125

namespace A064950

/-- `∑{d}[n+1, A055615(#)*A068984((n+1)/#)]` -/
def P15219084329414879125.Spec : Prop :=
  ∀ n, P15219084329414879125.a n = A064950 (n + 1)

end A064950

/-! ## A064950.P1476368152077747321

`∑{d}[n+1, A001615(#)*A332618((n+1)/#)]`
-/

namespace A064950.P1476368152077747321
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A001615 d * A332618 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A064950.P1476368152077747321

namespace A064950

/-- `∑{d}[n+1, A001615(#)*A332618((n+1)/#)]` -/
def P1476368152077747321.Spec : Prop :=
  ∀ n, P1476368152077747321.a n = A064950 (n + 1)

end A064950

/-! ## A064950.P14217221146550843995

`∑{d}[n+1, A007913(#)*A327251((n+1)/#)]`
-/

namespace A064950.P14217221146550843995
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007913 d * A327251 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A064950.P14217221146550843995

namespace A064950

/-- `∑{d}[n+1, A007913(#)*A327251((n+1)/#)]` -/
def P14217221146550843995.Spec : Prop :=
  ∀ n, P14217221146550843995.a n = A064950 (n + 1)

end A064950

/-! ## A064950.P9363584180962648082

`∑{d}[n+1, A018804(#)*A319132((n+1)/#)]`
-/

namespace A064950.P9363584180962648082
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A018804 d * A319132 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A064950.P9363584180962648082

namespace A064950

/-- `∑{d}[n+1, A018804(#)*A319132((n+1)/#)]` -/
def P9363584180962648082.Spec : Prop :=
  ∀ n, P9363584180962648082.a n = A064950 (n + 1)

end A064950

/-! ## A064950.P1268968151391260817

`∑{d}[n+1, A069088(#)*A322577((n+1)/#)]`
-/

namespace A064950.P1268968151391260817
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A069088 d * A322577 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A064950.P1268968151391260817

namespace A064950

/-- `∑{d}[n+1, A069088(#)*A322577((n+1)/#)]` -/
def P1268968151391260817.Spec : Prop :=
  ∀ n, P1268968151391260817.a n = A064950 (n + 1)

end A064950

/-! ## A064950.P9805527202001388369

`∑{d}[n+1, A065018(#)*A328502((n+1)/#)]`
-/

namespace A064950.P9805527202001388369
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A065018 d * A328502 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A064950.P9805527202001388369

namespace A064950

/-- `∑{d}[n+1, A065018(#)*A328502((n+1)/#)]` -/
def P9805527202001388369.Spec : Prop :=
  ∀ n, P9805527202001388369.a n = A064950 (n + 1)

end A064950

/-! ## A064950.P6777810985735387

`∑{d}[n+1, A064840(#)*A346612((n+1)/#)]`
-/

namespace A064950.P6777810985735387
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A064840 d * A346612 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A064950.P6777810985735387

namespace A064950

/-- `∑{d}[n+1, A064840(#)*A346612((n+1)/#)]` -/
def P6777810985735387.Spec : Prop :=
  ∀ n, P6777810985735387.a n = A064950 (n + 1)

end A064950

/-! ## A064950.P7120932295640253152

`∑{d}[n+1, A334657(#)*A344042((n+1)/#)]`
-/

namespace A064950.P7120932295640253152
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A334657 d * A344042 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A064950.P7120932295640253152

namespace A064950

/-- `∑{d}[n+1, A334657(#)*A344042((n+1)/#)]` -/
def P7120932295640253152.Spec : Prop :=
  ∀ n, P7120932295640253152.a n = A064950 (n + 1)

end A064950

/-! ## A064950.P2151914887466212463

`∑{d}[n+1, #*A000005(#²)]`
-/

namespace A064950.P2151914887466212463
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A000005 (d ^ 2)

end

end A064950.P2151914887466212463

namespace A064950

/-- `∑{d}[n+1, #*A000005(#²)]` -/
def P2151914887466212463.Spec : Prop :=
  ∀ n, P2151914887466212463.a n = A064950 (n + 1)

end A064950

/-! ## A064950.P7693738626298008613

`A216627(∑[n+1])`
-/

namespace A064950.P7693738626298008613
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216627 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A064950.P7693738626298008613

namespace A064950

/-- `A216627(∑[n+1])` -/
def P7693738626298008613.Spec : Prop :=
  ∀ n, P7693738626298008613.a n = A064950 (n + 1)

end A064950

/-!
# A064951: a(n) = Sum_{1 <= x, y <= n} lcm(x, y).

The programs for A064951, the canonical program `A064951.P12585674823330249368` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A064951 has offset 1).

The definition of A064951 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A057660, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A064951.P12585674823330249368

`a(n-1)+(n+1)*A057660(n+1)` with `a(0)=1`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A064951

/-- `a(n-1)+(n+1)*A057660(n+1)` -/
def P12585674823330249368.Spec : Prop :=
  ∀ n, P12585674823330249368.a n = A064951 (n + 1)

theorem P12585674823330249368.correct : P12585674823330249368.Spec := by
  intro n
  simp only [A064951, Nat.add_sub_cancel]

end A064951

/-! ## A064951.P6265825284822262507

`a(n-1)+2*A051193(n+1)-(n+1)` with `a(0)=1`
-/

namespace A064951.P6265825284822262507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + 2 * A051193 (n + 1) - (n + 1 : ℤ)

end

end A064951.P6265825284822262507

namespace A064951

/-- `a(n-1)+2*A051193(n+1)-(n+1)` -/
def P6265825284822262507.Spec : Prop :=
  ∀ n, P6265825284822262507.a n = A064951 (n + 1)

end A064951

/-! ## A064951.P14630358034355679233

`∑[(n+1)*A057660(n+1)]`
-/

namespace A064951.P14630358034355679233
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A057660 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A064951.P14630358034355679233

namespace A064951

/-- `∑[(n+1)*A057660(n+1)]` -/
def P14630358034355679233.Spec : Prop :=
  ∀ n, P14630358034355679233.a n = A064951 (n + 1)

end A064951

/-! ## A064951.P5553788372007482017

`∑[(n+1)*∑[A292302(n+1)]]`
-/

namespace A064951.P5553788372007482017
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292302 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A064951.P5553788372007482017

namespace A064951

/-- `∑[(n+1)*∑[A292302(n+1)]]` -/
def P5553788372007482017.Spec : Prop :=
  ∀ n, P5553788372007482017.a n = A064951 (n + 1)

end A064951

/-! ## A064951.P6490280095572117886

`∑[2*A051193(n+1)-(n+1)]`
-/

namespace A064951.P6490280095572117886
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A051193 (n + 1) - (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A064951.P6490280095572117886

namespace A064951

/-- `∑[2*A051193(n+1)-(n+1)]` -/
def P6490280095572117886.Spec : Prop :=
  ∀ n, P6490280095572117886.a n = A064951 (n + 1)

end A064951

/-! ## A064951.P2265267122182946405

`∑[∑{d}[n+1, (n+1)*A002618(#)]]`
-/

namespace A064951.P2265267122182946405
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n), (n + 1 : ℤ) * A002618 d

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A064951.P2265267122182946405

namespace A064951

/-- `∑[∑{d}[n+1, (n+1)*A002618(#)]]` -/
def P2265267122182946405.Spec : Prop :=
  ∀ n, P2265267122182946405.a n = A064951 (n + 1)

end A064951

/-! ## A064951.P14975134355188545879

`∑[∑{d}[n+1, (n+1)*A000010(#²)]]`
-/

namespace A064951.P14975134355188545879
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n), (n + 1 : ℤ) * A000010 (d ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A064951.P14975134355188545879

namespace A064951

/-- `∑[∑{d}[n+1, (n+1)*A000010(#²)]]` -/
def P14975134355188545879.Spec : Prop :=
  ∀ n, P14975134355188545879.a n = A064951 (n + 1)

end A064951

/-! ## A064951.P2153971370273985524

`∑[(n+1)*A004273(A057661(n+1))]`
-/

namespace A064951.P2153971370273985524
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A004273 (A057661 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A064951.P2153971370273985524

namespace A064951

/-- `∑[(n+1)*A004273(A057661(n+1))]` -/
def P2153971370273985524.Spec : Prop :=
  ∀ n, P2153971370273985524.a n = A064951 (n + 1)

end A064951

/-! ## A064951.P6856747192539335255

`∑[(n+1)*A055210((n+1)²)]`
-/

namespace A064951.P6856747192539335255
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A055210 ((n + 1) ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A064951.P6856747192539335255

namespace A064951

/-- `∑[(n+1)*A055210((n+1)²)]` -/
def P6856747192539335255.Spec : Prop :=
  ∀ n, P6856747192539335255.a n = A064951 (n + 1)

end A064951

/-! ## A064951.P7624671078073506517

`∑[(n+1)*A061020((n+1)²)]`
-/

namespace A064951.P7624671078073506517
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A061020 ((n + 1) ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A064951.P7624671078073506517

namespace A064951

/-- `∑[(n+1)*A061020((n+1)²)]` -/
def P7624671078073506517.Spec : Prop :=
  ∀ n, P7624671078073506517.a n = A064951 (n + 1)

end A064951

/-! ## A064951.P9486478276432983213

`∑[(n+1)*A158274((n+1)²)]`
-/

namespace A064951.P9486478276432983213
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A158274 ((n + 1) ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A064951.P9486478276432983213

namespace A064951

/-- `∑[(n+1)*A158274((n+1)²)]` -/
def P9486478276432983213.Spec : Prop :=
  ∀ n, P9486478276432983213.a n = A064951 (n + 1)

end A064951

/-! ## A064951.P2707778174915181053

`∑[(n+1)*A206369((n+1)²)]`
-/

namespace A064951.P2707778174915181053
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A206369 ((n + 1) ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A064951.P2707778174915181053

namespace A064951

/-- `∑[(n+1)*A206369((n+1)²)]` -/
def P2707778174915181053.Spec : Prop :=
  ∀ n, P2707778174915181053.a n = A064951 (n + 1)

end A064951

/-!
# A064952: Number of odd terms among first n terms of A064413.

The programs for A064952, there is no canonical definition to state claims against.
-/

/-! ## A064952.P7591501395780335512

`∑[A195376(n+1)]`
-/

namespace A064952.P7591501395780335512
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195376 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A064952.P7591501395780335512

/-! ## A064952.P12485735422546717354

`∑[A064413(n+1)%2]`
-/

namespace A064952.P12485735422546717354
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A064413 (n + 1)) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A064952.P12485735422546717354

/-! ## A064952.P7373527882652607393

`∑[A104125(n+1)%2]`
-/

namespace A064952.P7373527882652607393
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A104125 (n + 1)) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A064952.P7373527882652607393

/-! ## A064952.P7232723002077097759

`∑[A348470(n+1)%2]`
-/

namespace A064952.P7232723002077097759
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A348470 (n + 1)) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A064952.P7232723002077097759

/-! ## A064952.P4148019573662663812

`∑[floor(acot(A064301(n+1)))]`
-/

namespace A064952.P4148019573662663812
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊SequenceMachineLib.acot (A064301 (n + 1) : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A064952.P4148019573662663812

/-! ## A064952.P7490980063032381906

`1-A064474(n+1)+n`
-/

namespace A064952.P7490980063032381906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A064474 (n + 1) + (n : ℤ)

end

end A064952.P7490980063032381906

/-! ## A064952.P2169665382756214445

`∑[1-char[A064472(n+1)]]`
-/

namespace A064952.P2169665382756214445
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064472 (n + 1)

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ((if ∃ j, f2 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A064952.P2169665382756214445

/-! ## A064952.P4480814932933376144

`∑[char[A064957(n+1)-1]]`
-/

namespace A064952.P4480814932933376144
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064957 (n + 1) - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A064952.P4480814932933376144

/-! ## A064952.P13268165005108029087

`∑[char[A064421(2*n+1)]]`
-/

namespace A064952.P13268165005108029087
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064421 (2 * n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A064952.P13268165005108029087

/-! ## A064952.P4058375014305919443

`∑[and(1, A064413(C(n+1, n)))]`
-/

namespace A064952.P4058375014305919443
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A064413 (Nat.choose (n + 1) n))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A064952.P4058375014305919443

/-! ## A064952.P9764012144133068858

`∑[and(1, A064413(Δ[n²]-n))]`
-/

namespace A064952.P9764012144133068858
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A064413 ((f2 (n + 1) : ℤ) - (f2 n : ℤ) - (n : ℤ)).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A064952.P9764012144133068858

/-! ## A064952.P6623462986737678144

`∑[1-char[A064953(n+1)-1]]`
-/

namespace A064952.P6623462986737678144
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064953 (n + 1) - 1

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ((if ∃ j, f2 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A064952.P6623462986737678144

/-!
# A064953: Where the even terms appear in A064413.

The programs for A064953, there is no canonical definition to state claims against.
-/

/-! ## A064953.P4297192421799620345

`A064472(n+1)+1`
-/

namespace A064953.P4297192421799620345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064472 (n + 1) + 1

end

end A064953.P4297192421799620345

/-! ## A064953.P16961723053216798901

`eq[2, A348470(n+1)]+1`
-/

namespace A064953.P16961723053216798901
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348470 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A064953.P16961723053216798901

/-! ## A064953.P4767362294838540071

`comp[A064957(n+1)-1]+1`
-/

namespace A064953.P4767362294838540071
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064957 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A064953.P4767362294838540071

/-! ## A064953.P18342796392637088730

`eq[1, A086645(a(A064301(n))²)]` with `a(0)=2`
-/

namespace A064953.P18342796392637088730
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.rec [2] fun n f2 =>
  A086645 (f2 (A064301 n).toNat ^ 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A064953.P18342796392637088730

/-! ## A064953.P7911448165691258764

`eq[0, A195376(n+1)]+1`
-/

namespace A064953.P7911448165691258764
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195376 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A064953.P7911448165691258764

/-! ## A064953.P13917019629837921815

`eq[2, gcd(2, A064413(n+1))]+1`
-/

namespace A064953.P13917019629837921815
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 2 (A064413 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A064953.P13917019629837921815

/-! ## A064953.P17906474433006502163

`A020725(A064472(n+1))`
-/

namespace A064953.P17906474433006502163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (A064472 (n + 1)).toNat

end

end A064953.P17906474433006502163

/-! ## A064953.P5141125261075248285

`eq[2, A020639(A064413(n+1))]+1`
-/

namespace A064953.P5141125261075248285
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A064413 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A064953.P5141125261075248285

/-! ## A064953.P11696720143686161895

`record[A005843(n+1)/A348470(n+1)]`
-/

namespace A064953.P11696720143686161895
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005843 (n + 1) : ℚ) / (A348470 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A064953.P11696720143686161895

/-! ## A064953.P375322673853651359

`A064664(A064469(n+1))`
-/

namespace A064953.P375322673853651359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064664 (A064469 (n + 1)).toNat

end

end A064953.P375322673853651359

/-! ## A064953.P5011434014419780412

`A064664(2*A064470(n+1))`
-/

namespace A064953.P5011434014419780412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064664 (2 * A064470 (n + 1)).toNat

end

end A064953.P5011434014419780412

/-! ## A064953.P6906378178835792487

`A064664(A064470(n+1)+A064470(n+1))`
-/

namespace A064953.P6906378178835792487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064664 (A064470 (n + 1) + A064470 (n + 1)).toNat

end

end A064953.P6906378178835792487

/-! ## A064953.P12833579274878816416

`eq[2, A020639(A104125(n+1))]+1`
-/

namespace A064953.P12833579274878816416
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A104125 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A064953.P12833579274878816416

/-!
# A064954: Positions of powers of 2 in A064413.

The programs for A064954, there is no canonical definition to state claims against.
-/

/-! ## A064954.P2854612808268087444

`A064468(A028310(n))+A057427(n)`
-/

namespace A064954.P2854612808268087444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064468 (A028310 n).toNat + A057427 n

end

end A064954.P2854612808268087444

/-! ## A064954.P11376393618046344261

`A178334(n)+A064468(A028310(n))`
-/

namespace A064954.P11376393618046344261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178334 n + A064468 (A028310 n).toNat

end

end A064954.P11376393618046344261

/-! ## A064954.P10039134554662080212

`A178489(n)+A064468(A028310(n))`
-/

namespace A064954.P10039134554662080212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178489 n + A064468 (A028310 n).toNat

end

end A064954.P10039134554662080212

/-! ## A064954.P2095185587161918824

`A064468(A028310(n))+char[A007318(n)]`
-/

namespace A064954.P2095185587161918824
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064468 (A028310 n).toNat + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A064954.P2095185587161918824

/-! ## A064954.P3019877012388246180

`A064468(A028310(n))+A000045(floor(n^(3/14)))`
-/

namespace A064954.P3019877012388246180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064468 (A028310 n).toNat + A000045 ⌊(n : ℝ) ^ ((3 : ℚ) / 14 : ℝ)⌋.toNat

end

end A064954.P3019877012388246180

/-!
# A064955: Position of n-th prime in A064413.

The programs for A064955, there is no canonical definition to state claims against.
-/

/-! ## A064955.P12824972398418789036

`A064664(A000040(n+1))`
-/

namespace A064955.P12824972398418789036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064664 (A000040 (n + 1)).toNat

end

end A064955.P12824972398418789036

/-! ## A064955.P13053225208505734156

`A064423(n+1)+1`
-/

namespace A064955.P13053225208505734156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064423 (n + 1) + 1

end

end A064955.P13053225208505734156

/-! ## A064955.P17218310577240670902

`A064425(n)+a(n-1)` with `a(0)=2`
-/

namespace A064955.P17218310577240670902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A064425 n + a (n - 1)

end

end A064955.P17218310577240670902

/-! ## A064955.P918843058471175570

`record[A064421(n+2)+1]`
-/

namespace A064955.P918843058471175570
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064421 (n + 2) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A064955.P918843058471175570

/-! ## A064955.P15993395837575786746

`record[A304526(n+1)+1]`
-/

namespace A064955.P15993395837575786746
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304526 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A064955.P15993395837575786746

/-! ## A064955.P853671431980916186

`A304526(A006005(n+1))+1`
-/

namespace A064955.P853671431980916186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304526 (A006005 (n + 1)).toNat + 1

end

end A064955.P853671431980916186

/-! ## A064955.P2707707302031696549

`A304526(A008578(n+2))+1`
-/

namespace A064955.P2707707302031696549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304526 (A008578 (n + 2)).toNat + 1

end

end A064955.P2707707302031696549

/-! ## A064955.P10418627888296884958

`A304526(A075643(n+2))+1`
-/

namespace A064955.P10418627888296884958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304526 (A075643 (n + 2)).toNat + 1

end

end A064955.P10418627888296884958

/-! ## A064955.P3396999131054460632

`A304526(A182986(n+2))+1`
-/

namespace A064955.P3396999131054460632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304526 (A182986 (n + 2)).toNat + 1

end

end A064955.P3396999131054460632

/-! ## A064955.P2240955381473453947

`eq[2, A304112(n+1)]+1`
-/

namespace A064955.P2240955381473453947
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304112 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A064955.P2240955381473453947

/-! ## A064955.P5780983523366200433

`eq[2, A304113(n+1)]+1`
-/

namespace A064955.P5780983523366200433
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304113 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A064955.P5780983523366200433

/-! ## A064955.P15630035544232409463

`record[A064664(n+2)]`
-/

namespace A064955.P15630035544232409463
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064664 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A064955.P15630035544232409463

/-! ## A064955.P5415500994137733866

`A064664(A008578(n+2))`
-/

namespace A064955.P5415500994137733866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064664 (A008578 (n + 2)).toNat

end

end A064955.P5415500994137733866

/-! ## A064955.P6166907292176664915

`A064664(A182986(n+2))`
-/

namespace A064955.P6166907292176664915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064664 (A182986 (n + 2)).toNat

end

end A064955.P6166907292176664915

/-! ## A064955.P14333534898605809034

`A064664(eq[1, A105700(n)])`
-/

namespace A064955.P14333534898605809034
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105700 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064664 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A064955.P14333534898605809034

/-! ## A064955.P10244904127063388999

`A064664(A006093(n+1)+1)`
-/

namespace A064955.P10244904127063388999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064664 (A006093 (n + 1) + 1).toNat

end

end A064955.P10244904127063388999

/-! ## A064955.P5312178991198214771

`A064664(A100484(n+1)/2)`
-/

namespace A064955.P5312178991198214771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064664 (SequenceMachineLib.roundAway ((A100484 (n + 1) : ℚ) / 2)).toNat

end

end A064955.P5312178991198214771

/-! ## A064955.P4742575446494076875

`A064664(A001747(n+2)/2)`
-/

namespace A064955.P4742575446494076875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064664 (SequenceMachineLib.roundAway ((A001747 (n + 2) : ℚ) / 2)).toNat

end

end A064955.P4742575446494076875

/-! ## A064955.P11249163394834379183

`A064664(eq[1, A001222(n+1)]+1)`
-/

namespace A064955.P11249163394834379183
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064664 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A064955.P11249163394834379183

/-! ## A064955.P13966423979507759821

`A305294(A064423(n+2))`
-/

namespace A064955.P13966423979507759821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305294 (A064423 (n + 2)).toNat

end

end A064955.P13966423979507759821

/-!
# A064957: Where the odd terms appear in A064413.

The programs for A064957, there is no canonical definition to state claims against.
-/

/-! ## A064957.P1791780250464795683

`lt[A064301(n+1), 1]+1`
-/

namespace A064957.P1791780250464795683
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064301 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A064957.P1791780250464795683

/-! ## A064957.P17985488256571348024

`eq[2, A092391(a(A064301(n)))]` with `a(0)=1`
-/

namespace A064957.P17985488256571348024
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f2 =>
  A092391 (f2 (A064301 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A064957.P17985488256571348024

/-! ## A064957.P15602047785664725814

`record[A305293(A305294(n+1))]`
-/

namespace A064957.P15602047785664725814
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305293 (A305294 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A064957.P15602047785664725814

/-! ## A064957.P13550448736751201437

`filter[n+1, A195376(#)]`
-/

namespace A064957.P13550448736751201437
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A195376 (f1 j) = 1) n)

end

end A064957.P13550448736751201437

/-! ## A064957.P7137914035191531888

`eq[1, A195376(n+1)]+1`
-/

namespace A064957.P7137914035191531888
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195376 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A064957.P7137914035191531888

/-! ## A064957.P13051640880036534331

`eq[1, A064413(n+1)%2]+1`
-/

namespace A064957.P13051640880036534331
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A064413 (n + 1)) 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A064957.P13051640880036534331

/-! ## A064957.P6299597647454738034

`record[n+1-lcm(A005940(n+1), A064301(n+1))]`
-/

namespace A064957.P6299597647454738034
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - (Int.lcm (A005940 (n + 1)) (A064301 (n + 1)) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A064957.P6299597647454738034

/-! ## A064957.P13713411520453862672

`record[A195376(A328399(n))*A328399(n)]`
-/

namespace A064957.P13713411520453862672
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195376 (A328399 n).toNat * A328399 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A064957.P13713411520453862672

/-! ## A064957.P3993988492306063183

`eq[A000038(n), A064301(A000038(n)+n)]`
-/

namespace A064957.P3993988492306063183
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064301 (A000038 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A064957.P3993988492306063183

/-! ## A064957.P18110537208206918018

`eq[A000007(n), A064301(A000007(n)+n)]`
-/

namespace A064957.P18110537208206918018
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064301 (A000007 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A064957.P18110537208206918018

/-! ## A064957.P8181050864901348838

`eq[A064301(A130706(n)+n), A130706(n)]`
-/

namespace A064957.P8181050864901348838
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064301 (A130706 n + (n : ℤ)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130706 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A064957.P8181050864901348838

/-! ## A064957.P10679529160467574461

`eq[A064301(A130713(n)+n), A130713(n)]`
-/

namespace A064957.P10679529160467574461
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064301 (A130713 n + (n : ℤ)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130713 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A064957.P10679529160467574461

/-! ## A064957.P4790455299299191494

`eq[A064301(A166926(n)+n), A166926(n)]`
-/

namespace A064957.P4790455299299191494
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064301 (A166926 n + (n : ℤ)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166926 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A064957.P4790455299299191494

/-! ## A064957.P13893108087838068604

`record[A133310(n)*A195376(A133310(n))]`
-/

namespace A064957.P13893108087838068604
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133310 n * A195376 (A133310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A064957.P13893108087838068604

/-! ## A064957.P4123887556108170826

`A064664(A064471(n+1))`
-/

namespace A064957.P4123887556108170826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064664 (A064471 (n + 1)).toNat

end

end A064957.P4123887556108170826

/-! ## A064957.P5467501476274656453

`eq[2, A000034(A064413(n+1))]+1`
-/

namespace A064957.P5467501476274656453
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (A064413 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A064957.P5467501476274656453

/-! ## A064957.P3474953982485648195

`record[A028242(2*n)*A195376(A028242(2*n))]`
-/

namespace A064957.P3474953982485648195
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028242 (2 * n) * A195376 (A028242 (2 * n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A064957.P3474953982485648195

/-! ## A064957.P9674124845139151900

`record[A123108(2*n)*A195376(A123108(2*n))]`
-/

namespace A064957.P9674124845139151900
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123108 (2 * n) * A195376 (A123108 (2 * n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A064957.P9674124845139151900

/-! ## A064957.P4277760928208340893

`record[A195376(A262519(n))*A262519(n)]`
-/

namespace A064957.P4277760928208340893
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195376 (A262519 n).toNat * A262519 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A064957.P4277760928208340893

/-!
# A064960: The prime then composite recurrence; a(2n) = a(2n-1)-th prime and a(2n+1) = a(2n)-th composite and a(1) = 1.

The programs for A064960, there is no canonical definition to state claims against.
-/

/-! ## A064960.P6323813518955099762

`A246378(A081254(n+1))`
-/

namespace A064960.P6323813518955099762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246378 (A081254 (n + 1)).toNat

end

end A064960.P6323813518955099762

/-! ## A064960.P6862806651503202272

`A246378(A153893(n)-A279751(n))`
-/

namespace A064960.P6862806651503202272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246378 (A153893 n - A279751 n).toNat

end

end A064960.P6862806651503202272

/-! ## A064960.P6308981542673697160

`A246378(A153893(n)-A280148(n))`
-/

namespace A064960.P6308981542673697160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246378 (A153893 n - A280148 n).toNat

end

end A064960.P6308981542673697160

/-! ## A064960.P2678687530258691595

`A246378(xor(A000225(n), A279751(n)))`
-/

namespace A064960.P2678687530258691595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246378 (Int.xor (A000225 n) (A279751 n)).toNat

end

end A064960.P2678687530258691595

/-! ## A064960.P15610950448101029375

`A246378(xor(A000225(n), A280148(n)))`
-/

namespace A064960.P15610950448101029375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246378 (Int.xor (A000225 n) (A280148 n)).toNat

end

end A064960.P15610950448101029375

/-!
# A064961: Composite-then-prime recurrence; a(2n) = a(2n-1)-th composite and a(2n+1) = a(2n)-th prime and a(1) = 1.

The programs for A064961, there is no canonical definition to state claims against.
-/

/-! ## A064961.P15258802455679801793

`A246378(∑[a(n-1)+2*a(n-2)])` with `a(0)=1, a(1)=1`
-/

namespace A064961.P15258802455679801793
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 1] fun n f1 =>
  f1 (n - 1) + 2 * f1 (n - 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246378 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A064961.P15258802455679801793

/-! ## A064961.P3596462590895812468

`A246378(A279751(n))`
-/

namespace A064961.P3596462590895812468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246378 (A279751 n).toNat

end

end A064961.P3596462590895812468

/-! ## A064961.P8878859686246972489

`A246378(A280148(n))`
-/

namespace A064961.P8878859686246972489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246378 (A280148 n).toNat

end

end A064961.P8878859686246972489

/-! ## A064961.P15881298155833705361

`A246378(Δ[A084172(n)])`
-/

namespace A064961.P15881298155833705361
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084172 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246378 (f1 (n + 1) - f1 n).toNat

end

end A064961.P15881298155833705361

/-! ## A064961.P11041944302371015229

`A246378(A000975(n+1))`
-/

namespace A064961.P11041944302371015229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246378 (A000975 (n + 1)).toNat

end

end A064961.P11041944302371015229

/-!
# A064969: Number of cyclic subgroups of the group C_n X C_n X C_n (where C_n is the cyclic group of order n).

The programs for A064969, the canonical program `A064969.P2829125855322094774` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A064969 has offset 1).

The definition of A064969 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A064969.P2829125855322094774

`∑{d}[n+1, A160889(#)]`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A064969

/-- `∑{d}[n+1, A160889(#)]` -/
def P2829125855322094774.Spec : Prop :=
  ∀ n, P2829125855322094774.a n = A064969 (n + 1)

theorem P2829125855322094774.correct : P2829125855322094774.Spec := by
  intro n
  simp only [A064969, Nat.add_sub_cancel]

end A064969

/-! ## A064969.P7168753951192721963

`∑{d}[n+1, A065958(#)*A367991((n+1)/#)]`
-/

namespace A064969.P7168753951192721963
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A065958 d * A367991 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A064969.P7168753951192721963

namespace A064969

/-- `∑{d}[n+1, A065958(#)*A367991((n+1)/#)]` -/
def P7168753951192721963.Spec : Prop :=
  ∀ n, P7168753951192721963.a n = A064969 (n + 1)

end A064969

/-! ## A064969.P8300875779164910645

`∑{d}[n+1, A254981(#²)]`
-/

namespace A064969.P8300875779164910645
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A254981 (d ^ 2)

end

end A064969.P8300875779164910645

namespace A064969

/-- `∑{d}[n+1, A254981(#²)]` -/
def P8300875779164910645.Spec : Prop :=
  ∀ n, P8300875779164910645.a n = A064969 (n + 1)

end A064969

/-! ## A064969.P14203539193628040714

`∑{d}[(n+1)^3, A000189(#)]`
-/

namespace A064969.P14203539193628040714
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000189 d

end

end A064969.P14203539193628040714

namespace A064969

/-- `∑{d}[(n+1)^3, A000189(#)]` -/
def P14203539193628040714.Spec : Prop :=
  ∀ n, P14203539193628040714.a n = A064969 (n + 1)

end A064969

/-!
# A064970: a(1)=1; thereafter, values of n for which r(n)-r(n-1) and r(n-1)-r(n-2) have the same sign, where r(n) = A005132(n).

The programs for A064970, there is no canonical definition to state claims against.
-/

/-! ## A064970.P7492784160183199657

`∑[A119632(gcd(n, C(2, n)))]`
-/

namespace A064970.P7492784160183199657
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119632 (Nat.gcd n (Nat.choose 2 n))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A064970.P7492784160183199657

/-! ## A064970.P1466368846985404064

`∑[A119632(round(acot(n)+n))]`
-/

namespace A064970.P1466368846985404064
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119632 (SequenceMachineLib.roundAway (SequenceMachineLib.acot (n : ℝ) + (n : ℝ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A064970.P1466368846985404064

/-! ## A064970.P16264855062432565250

`A119632(n)+a(n-1)` with `a(0)=1`
-/

namespace A064970.P16264855062432565250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A119632 n + a (n - 1)

end

end A064970.P16264855062432565250

/-! ## A064970.P18418698425717919914

`∑[A119632(abs(1-n)+1)]`
-/

namespace A064970.P18418698425717919914
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119632 (|1 - (n : ℤ)| + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A064970.P18418698425717919914

/-! ## A064970.P11508991417489080928

`∑[A119632(n+1)]+1-A119632(n+1)`
-/

namespace A064970.P11508991417489080928
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119632 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (1 - A119632 (n + 1))

end

end A064970.P11508991417489080928

/-! ## A064970.P5154674034064914939

`record[A160356(n+1)*A160357(n)]`
-/

namespace A064970.P5154674034064914939
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160356 (n + 1) * A160357 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A064970.P5154674034064914939

/-! ## A064970.P3037295344781905743

`eq[A160357(n+1), A160357(n)]+1`
-/

namespace A064970.P3037295344781905743
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160357 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160357 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A064970.P3037295344781905743

/-! ## A064970.P9185462643484380546

`record[A160356(n+1)/A160357(A028310(n))]`
-/

namespace A064970.P9185462643484380546
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A160356 (n + 1) : ℚ) / (A160357 (A028310 n).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A064970.P9185462643484380546

/-!
# A064971: a(n) = n*usigma(n), where usigma(n) is the sum of unitary divisors of n (A034448).

The programs for A064971, the canonical program `A064971.P12456317125098901049` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A064971 has offset 1).

The definition of A064971 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A064971.P17900775204614924634

`(n+1)*A034448(n+1)`
-/

namespace A064971.P17900775204614924634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A034448 (n + 1)

end

end A064971.P17900775204614924634

namespace A064971

/-- `(n+1)*A034448(n+1)` -/
def P17900775204614924634.Spec : Prop :=
  ∀ n, P17900775204614924634.a n = A064971 (n + 1)

end A064971

/-! ## A064971.P15795641935951693381

`(n+1)*(A345451(n+1)+1)`
-/

namespace A064971.P15795641935951693381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A345451 (n + 1) + 1)

end

end A064971.P15795641935951693381

namespace A064971

/-- `(n+1)*(A345451(n+1)+1)` -/
def P15795641935951693381.Spec : Prop :=
  ∀ n, P15795641935951693381.a n = A064971 (n + 1)

end A064971

/-! ## A064971.P11775973690448793825

`(n+1)*∑{d}[n+1, A254503(#)]`
-/

namespace A064971.P11775973690448793825
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (∑ d ∈ Nat.divisors (f1 n), A254503 d)

end

end A064971.P11775973690448793825

namespace A064971

/-- `(n+1)*∑{d}[n+1, A254503(#)]` -/
def P11775973690448793825.Spec : Prop :=
  ∀ n, P11775973690448793825.a n = A064971 (n + 1)

end A064971

/-! ## A064971.P4854081246923766727

`(n+1)*(A034460(n+1)+1+n)`
-/

namespace A064971.P4854081246923766727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A034460 (n + 1) + 1 + (n : ℤ))

end

end A064971.P4854081246923766727

namespace A064971

/-- `(n+1)*(A034460(n+1)+1+n)` -/
def P4854081246923766727.Spec : Prop :=
  ∀ n, P4854081246923766727.a n = A064971 (n + 1)

end A064971

/-! ## A064971.P4770335696909579108

`(n+1)*(A129468(n+1)+2*(n+1))`
-/

namespace A064971.P4770335696909579108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A129468 (n + 1) + (2 * (n + 1) : ℤ))

end

end A064971.P4770335696909579108

namespace A064971

/-- `(n+1)*(A129468(n+1)+2*(n+1))` -/
def P4770335696909579108.Spec : Prop :=
  ∀ n, P4770335696909579108.a n = A064971 (n + 1)

end A064971

/-! ## A064971.P14797815585892885286

`(n+1)*(A098189(n+1)+A000010(n+1))`
-/

namespace A064971.P14797815585892885286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A098189 (n + 1) + A000010 (n + 1))

end

end A064971.P14797815585892885286

namespace A064971

/-- `(n+1)*(A098189(n+1)+A000010(n+1))` -/
def P14797815585892885286.Spec : Prop :=
  ∀ n, P14797815585892885286.a n = A064971 (n + 1)

end A064971

/-! ## A064971.P3292882272265345097

`(n+1)*(A000203(n+1)-A048146(n+1))`
-/

namespace A064971.P3292882272265345097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A000203 (n + 1) - A048146 (n + 1))

end

end A064971.P3292882272265345097

namespace A064971

/-- `(n+1)*(A000203(n+1)-A048146(n+1))` -/
def P3292882272265345097.Spec : Prop :=
  ∀ n, P3292882272265345097.a n = A064971 (n + 1)

end A064971

/-! ## A064971.P18404365184609420195

`(A003959(n+1)-A348732(n+1))*(n+1)`
-/

namespace A064971.P18404365184609420195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A003959 (n + 1) - A348732 (n + 1)) * (n + 1 : ℤ)

end

end A064971.P18404365184609420195

namespace A064971

/-- `(A003959(n+1)-A348732(n+1))*(n+1)` -/
def P18404365184609420195.Spec : Prop :=
  ∀ n, P18404365184609420195.a n = A064971 (n + 1)

end A064971

/-! ## A064971.P1587908126102028621

`(n+1)*A348503(n+1)*A348505(n+1)`
-/

namespace A064971.P1587908126102028621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A348503 (n + 1) * A348505 (n + 1))

end

end A064971.P1587908126102028621

namespace A064971

/-- `(n+1)*A348503(n+1)*A348505(n+1)` -/
def P1587908126102028621.Spec : Prop :=
  ∀ n, P1587908126102028621.a n = A064971 (n + 1)

end A064971

/-! ## A064971.P12456317125098901049

`∑{d}[n+1, A053825(#)*A379812((n+1)/#)]`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A064971

/-- `∑{d}[n+1, A053825(#)*A379812((n+1)/#)]` -/
def P12456317125098901049.Spec : Prop :=
  ∀ n, P12456317125098901049.a n = A064971 (n + 1)

theorem P12456317125098901049.correct : P12456317125098901049.Spec := by
  intro n
  simp only [A064971, Nat.add_sub_cancel]

end A064971

/-! ## A064971.P12174055764830113765

`abs(A048146(n+1)-A245092(2*n+1))*(n+1)`
-/

namespace A064971.P12174055764830113765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A048146 (n + 1) - A245092 (2 * n + 1)| * (n + 1 : ℤ)

end

end A064971.P12174055764830113765

namespace A064971

/-- `abs(A048146(n+1)-A245092(2*n+1))*(n+1)` -/
def P12174055764830113765.Spec : Prop :=
  ∀ n, P12174055764830113765.a n = A064971 (n + 1)

end A064971

/-! ## A064971.P16553835099494330941

`(A001065(n+1)+1+n-A048146(n+1))*(n+1)`
-/

namespace A064971.P16553835099494330941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A001065 (n + 1) + 1 + (n : ℤ) - A048146 (n + 1)) * (n + 1 : ℤ)

end

end A064971.P16553835099494330941

namespace A064971

/-- `(A001065(n+1)+1+n-A048146(n+1))*(n+1)` -/
def P16553835099494330941.Spec : Prop :=
  ∀ n, P16553835099494330941.a n = A064971 (n + 1)

end A064971

/-! ## A064971.P5812231274522312383

`(n+1)*A000027(2*(n+1)-A033879(n+1)-A048146(n+1))`
-/

namespace A064971.P5812231274522312383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A000027 ((2 * (n + 1) : ℤ) - A033879 (n + 1) - A048146 (n + 1)).toNat

end

end A064971.P5812231274522312383

namespace A064971

/-- `(n+1)*A000027(2*(n+1)-A033879(n+1)-A048146(n+1))` -/
def P5812231274522312383.Spec : Prop :=
  ∀ n, P5812231274522312383.a n = A064971 (n + 1)

end A064971

/-! ## A064971.P83105162583689251

`A034448(A242112(2*n))*A242112(2*n)`
-/

namespace A064971.P83105162583689251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034448 (A242112 (2 * n)).toNat * A242112 (2 * n)

end

end A064971.P83105162583689251

namespace A064971

/-- `A034448(A242112(2*n))*A242112(2*n)` -/
def P83105162583689251.Spec : Prop :=
  ∀ n, P83105162583689251.a n = A064971 (n + 1)

end A064971

/-! ## A064971.P8022817064867834780

`(n+1)*A305461((n+1)²)`
-/

namespace A064971.P8022817064867834780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A305461 ((n + 1) ^ 2)

end

end A064971.P8022817064867834780

namespace A064971

/-- `(n+1)*A305461((n+1)²)` -/
def P8022817064867834780.Spec : Prop :=
  ∀ n, P8022817064867834780.a n = A064971 (n + 1)

end A064971

/-! ## A064971.P17264716164998344114

`(n+1)*A360162((n+1)²)`
-/

namespace A064971.P17264716164998344114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A360162 ((n + 1) ^ 2)

end

end A064971.P17264716164998344114

namespace A064971

/-- `(n+1)*A360162((n+1)²)` -/
def P17264716164998344114.Spec : Prop :=
  ∀ n, P17264716164998344114.a n = A064971 (n + 1)

end A064971

/-! ## A064971.P17786535129426432287

`(n+1)*A365404((n+1)²)`
-/

namespace A064971.P17786535129426432287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A365404 ((n + 1) ^ 2)

end

end A064971.P17786535129426432287

namespace A064971

/-- `(n+1)*A365404((n+1)²)` -/
def P17786535129426432287.Spec : Prop :=
  ∀ n, P17786535129426432287.a n = A064971 (n + 1)

end A064971

/-! ## A064971.P15267411791696251500

`(n+1)*A365481((n+1)²)`
-/

namespace A064971.P15267411791696251500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A365481 ((n + 1) ^ 2)

end

end A064971.P15267411791696251500

namespace A064971

/-- `(n+1)*A365481((n+1)²)` -/
def P15267411791696251500.Spec : Prop :=
  ∀ n, P15267411791696251500.a n = A064971 (n + 1)

end A064971

/-! ## A064971.P20308830115652651

`(n+1)*A117658(A064549(n+1))`
-/

namespace A064971.P20308830115652651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A117658 (A064549 (n + 1)).toNat

end

end A064971.P20308830115652651

namespace A064971

/-- `(n+1)*A117658(A064549(n+1))` -/
def P20308830115652651.Spec : Prop :=
  ∀ n, P20308830115652651.a n = A064971 (n + 1)

end A064971

/-! ## A064971.P7953154159493282811

`A333576((n+1)²)/A333576(n+1)`
-/

namespace A064971.P7953154159493282811
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A333576 ((n + 1) ^ 2) : ℚ) / (A333576 (n + 1) : ℚ)

end

end A064971.P7953154159493282811

namespace A064971

/-- `A333576((n+1)²)/A333576(n+1)` -/
def P7953154159493282811.Spec : Prop :=
  ∀ n, P7953154159493282811.a n = (A064971 (n + 1) : ℚ)

end A064971

/-!
# A064974: Numbers k such that k-1, k-3, k-7 and k-9 are all prime.

The programs for A064974, there is no canonical definition to state claims against.
-/

/-! ## A064974.P15291049645153005975

`A090258(n+1)+1`
-/

namespace A064974.P15291049645153005975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090258 (n + 1) + 1

end

end A064974.P15291049645153005975

/-! ## A064974.P2615101032014964407

`A136721(n+1)+3`
-/

namespace A064974.P2615101032014964407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136721 (n + 1) + 3

end

end A064974.P2615101032014964407

/-! ## A064974.P11769042407070190921

`A173037(n+1)+5`
-/

namespace A064974.P11769042407070190921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173037 (n + 1) + 5

end

end A064974.P11769042407070190921

/-! ## A064974.P10439942490974541378

`A136720(n+1)+7`
-/

namespace A064974.P10439942490974541378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136720 (n + 1) + 7

end

end A064974.P10439942490974541378

/-! ## A064974.P6642798945643277643

`A007530(n+1)+9`
-/

namespace A064974.P6642798945643277643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007530 (n + 1) + 9

end

end A064974.P6642798945643277643

/-! ## A064974.P6045682208027088553

`3*A173092(n+1)+5`
-/

namespace A064974.P6045682208027088553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A173092 (n + 1) + 5

end

end A064974.P6045682208027088553

/-! ## A064974.P12637546663227803996

`A125855(n+1)+A125855(n+2)/A007811(n+1)`
-/

namespace A064974.P12637546663227803996
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A125855 (n + 1) : ℚ) + (A125855 (n + 2) : ℚ) / (A007811 (n + 1) : ℚ)

end

end A064974.P12637546663227803996

/-! ## A064974.P6552431080753870709

`A136162(A004767(n))+3`
-/

namespace A064974.P6552431080753870709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136162 (A004767 n).toNat + 3

end

end A064974.P6552431080753870709

/-! ## A064974.P877498071135698283

`A136162(A016825(n))+7`
-/

namespace A064974.P877498071135698283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136162 (A016825 n).toNat + 7

end

end A064974.P877498071135698283

/-! ## A064974.P2235055395299713479

`A136162(A016813(n))+9`
-/

namespace A064974.P2235055395299713479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136162 (A016813 n).toNat + 9

end

end A064974.P2235055395299713479

/-! ## A064974.P18201682154566276566

`A136162(A008574(n+1))+1`
-/

namespace A064974.P18201682154566276566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136162 (A008574 (n + 1)).toNat + 1

end

end A064974.P18201682154566276566

/-! ## A064974.P8159829079780362207

`A136162(A008586(n+1))+1`
-/

namespace A064974.P8159829079780362207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136162 (A008586 (n + 1)).toNat + 1

end

end A064974.P8159829079780362207

/-! ## A064974.P17040280565840504401

`3*(2*A178145(n+1)+1)+5`
-/

namespace A064974.P17040280565840504401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * (2 * A178145 (n + 1) + 1) + 5

end

end A064974.P17040280565840504401

/-! ## A064974.P3624579804407757935

`A125855(n+1)+A245304(n+2)/A178084(n+1)`
-/

namespace A064974.P3624579804407757935
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A125855 (n + 1) : ℚ) + (A245304 (n + 2) : ℚ) / (A178084 (n + 1) : ℚ)

end

end A064974.P3624579804407757935

/-! ## A064974.P4893901643772519595

`A174839(4*(n+2))+1`
-/

namespace A064974.P4893901643772519595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174839 (4 * (n + 2)) + 1

end

end A064974.P4893901643772519595

/-! ## A064974.P13318530836065112565

`p?[A098412(n+1)+2]+1`
-/

namespace A064974.P13318530836065112565
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098412 (n + 1) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) + 1

end

end A064974.P13318530836065112565

/-! ## A064974.P12355831690266387565

`p?[A098415(n+1)+2]+1`
-/

namespace A064974.P12355831690266387565
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098415 (n + 1) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) + 1

end

end A064974.P12355831690266387565

/-! ## A064974.P12504096089794164661

`p?[A022004(n+1)+8]+1`
-/

namespace A064974.P12504096089794164661
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022004 (n + 1) + 8

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) + 1

end

end A064974.P12504096089794164661

/-!
# A064975: Numbers k such that 10*k-1, 10*k-3, 10*k-7 and 10*k-9 are all prime.

The programs for A064975, there is no canonical definition to state claims against.
-/

/-! ## A064975.P8375197466278846103

`A007811(n+1)+1`
-/

namespace A064975.P8375197466278846103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007811 (n + 1) + 1

end

end A064975.P8375197466278846103

/-! ## A064975.P4812512623898580018

`ceil(A178082(n+1)/2)`
-/

namespace A064975.P4812512623898580018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A178082 (n + 1) : ℚ) / 2⌉

end

end A064975.P4812512623898580018

/-! ## A064975.P11564552649337681963

`3*A014561(n+1)+2`
-/

namespace A064975.P11564552649337681963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A014561 (n + 1) + 2

end

end A064975.P11564552649337681963

/-! ## A064975.P8909642792767047555

`3*A061668(n+1)-1`
-/

namespace A064975.P8909642792767047555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A061668 (n + 1) - 1

end

end A064975.P8909642792767047555

/-! ## A064975.P188379074561544434

`A112540(n+1)+A061668(n+1)`
-/

namespace A064975.P188379074561544434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112540 (n + 1) + A061668 (n + 1)

end

end A064975.P188379074561544434

/-! ## A064975.P17164822520777779325

`A014561(n+1)+A112540(n+1)+1`
-/

namespace A064975.P17164822520777779325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014561 (n + 1) + (A112540 (n + 1) + 1)

end

end A064975.P17164822520777779325

/-! ## A064975.P2810019421295097204

`A061668(n+1)+A061668(n+1)+A014561(n+1)`
-/

namespace A064975.P2810019421295097204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061668 (n + 1) + (A061668 (n + 1) + A014561 (n + 1))

end

end A064975.P2810019421295097204

/-! ## A064975.P4490286436825635612

`A115095(n+2)`
-/

namespace A064975.P4490286436825635612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115095 (n + 2)

end

end A064975.P4490286436825635612

/-! ## A064975.P13765373030945853785

`A064974(n+2)/10`
-/

namespace A064975.P13765373030945853785
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A064974 (n + 2) : ℚ) / 10

end

end A064975.P13765373030945853785

/-! ## A064975.P5332391780887044289

`ceil(A007530(n+2)/10)`
-/

namespace A064975.P5332391780887044289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A007530 (n + 2) : ℚ) / 10⌉

end

end A064975.P5332391780887044289

/-! ## A064975.P4539689047262449696

`A014682(A112540(n+1))`
-/

namespace A064975.P4539689047262449696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A112540 (n + 1)).toNat

end

end A064975.P4539689047262449696

/-!
# A064984: Triangle of coefficients T[n,m] of polynomials n, n^2, (n+2n^3)/3, n^2(2+n^2)/3, n(3+10n^2+2n^4)/15, etc. after multiplication by the denominators (A049606).

The programs for A064984, there is no canonical definition to state claims against.
-/

/-! ## A064984.P8495713331173296423

`A102669(A225750(n))*A131268(n)`
-/

namespace A064984.P8495713331173296423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102669 (A225750 n).toNat * A131268 n

end

end A064984.P8495713331173296423

/-! ## A064984.P12495205088897224145

`A059841(A225750(n))*A322046(n)`
-/

namespace A064984.P12495205088897224145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059841 (A225750 n).toNat * A322046 n

end

end A064984.P12495205088897224145

/-! ## A064984.P6591804732923980385

`A033788(A119507(n+1))`
-/

namespace A064984.P6591804732923980385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033788 (A119507 (n + 1)).toNat

end

end A064984.P6591804732923980385

/-! ## A064984.P4948879154554756730

`A362370(A283485(n+1))`
-/

namespace A064984.P4948879154554756730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362370 (A283485 (n + 1)).toNat

end

end A064984.P4948879154554756730

/-! ## A064984.P5554145889224987885

`and(A027907(n), A065840(n+1))`
-/

namespace A064984.P5554145889224987885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A027907 n) (A065840 (n + 1))

end

end A064984.P5554145889224987885

/-!
# A064985: Number of partitions of n into factorial parts ( 0! allowed ).

The programs for A064985, there is no canonical definition to state claims against.
-/

/-! ## A064985.P15968532208087400334

`∑[A064986(n)]`
-/

namespace A064985.P15968532208087400334
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064986 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A064985.P15968532208087400334

/-! ## A064985.P10790164459937021397

`∑[A117930(floor(n/2))]`
-/

namespace A064985.P10790164459937021397
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117930 ⌊(n : ℚ) / 2⌋.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A064985.P10790164459937021397

/-! ## A064985.P7676814122358273271

`A064986(root(n, 2)²)+a(n-1)` with `a(0)=1`
-/

namespace A064985.P7676814122358273271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A064986 (SequenceMachineLib.roundAway (((n : ℝ) ^ (1 / (2 : ℝ))) ^ 2)).toNat + a (n - 1)

end

end A064985.P7676814122358273271

/-! ## A064985.P4404368924480060509

`∑[A117930(A123108(n))]-1`
-/

namespace A064985.P4404368924480060509
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117930 (A123108 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A064985.P4404368924480060509

/-! ## A064985.P14778859696870488487

`A007814(2*n+1)+∑[A117930(A004526(n))]`
-/

namespace A064985.P14778859696870488487
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117930 (A004526 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (2 * n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A064985.P14778859696870488487

/-!
# A064986: Number of partitions of n into factorial parts (0! not allowed).

The programs for A064986, there is no canonical definition to state claims against.
-/

/-! ## A064986.P16940115710511357751

`A117930(floor(n/2))`
-/

namespace A064986.P16940115710511357751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117930 ⌊(n : ℚ) / 2⌋.toNat

end

end A064986.P16940115710511357751

/-! ## A064986.P6154791217149618428

`or(char[1], A117930(A004526(n)))`
-/

namespace A064986.P6154791217149618428
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A117930 (A004526 n).toNat)

end

end A064986.P6154791217149618428

/-! ## A064986.P10479849215740006476

`A117930(A123108(n))-A000007(n)`
-/

namespace A064986.P10479849215740006476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117930 (A123108 n).toNat - A000007 n

end

end A064986.P10479849215740006476

/-! ## A064986.P18227711534968294494

`A057077(A025581(n))²*A117930(A004526(n))`
-/

namespace A064986.P18227711534968294494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057077 (A025581 n).toNat ^ 2 * A117930 (A004526 n).toNat

end

end A064986.P18227711534968294494

/-! ## A064986.P6965980746749010664

`∑{d}[A117930(A004526(n)), A000010(#)]`
-/

namespace A064986.P6965980746749010664
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117930 (A004526 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d

end

end A064986.P6965980746749010664

/-! ## A064986.P3776257686077017317

`A000188(A107145(n+1))*A117930(A004526(n))`
-/

namespace A064986.P3776257686077017317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000188 (A107145 (n + 1)).toNat * A117930 (A004526 n).toNat

end

end A064986.P3776257686077017317

/-! ## A064986.P7158775584035949399

`A117930(A004526(n))%A000040(∑[n+1]+2)`
-/

namespace A064986.P7158775584035949399
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A117930 (A004526 n).toNat) (A000040 (∑ j ∈ Finset.range (n + 1), f1 j + 2))

end

end A064986.P7158775584035949399

/-! ## A064986.P1214875051819764609

`A057077(n²)*A117930(A004526(n))`
-/

namespace A064986.P1214875051819764609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057077 (n ^ 2) * A117930 (A004526 n).toNat

end

end A064986.P1214875051819764609

/-! ## A064986.P16415481558611753999

`A090632(A004526(n)%A178197(n))`
-/

namespace A064986.P16415481558611753999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090632 (Int.tmod (A004526 n) (A178197 n)).toNat

end

end A064986.P16415481558611753999

/-!
# A064987: a(n) = n*sigma(n).

The programs for A064987, the canonical program `A064987.P15308919020374608347` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A064987 has offset 1).

The definition of A064987 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A009194, A009242, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A064987.P15308919020374608347

`A009194(n+1)*A009242(n+1)`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A064987

/-- `A009194(n+1)*A009242(n+1)` -/
def P15308919020374608347.Spec : Prop :=
  ∀ n, P15308919020374608347.a n = A064987 (n + 1)

theorem P15308919020374608347.correct : P15308919020374608347.Spec := by
  intro n
  simp only [A064987, Nat.add_sub_cancel]

end A064987

/-! ## A064987.P3505463512258697412

`(n+1)*∑{d}[n+1, #]`
-/

namespace A064987.P3505463512258697412
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) * (∑ d ∈ Nat.divisors (f1 n), d)

end

end A064987.P3505463512258697412

namespace A064987

/-- `(n+1)*∑{d}[n+1, #]` -/
def P3505463512258697412.Spec : Prop :=
  ∀ n, (P3505463512258697412.a n : ℤ) = A064987 (n + 1)

end A064987

/-! ## A064987.P3197455227389135888

`∑{d}[n+1, lcm(n, #)+#]`
-/

namespace A064987.P3197455227389135888
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (Nat.lcm n d + d)

end

end A064987.P3197455227389135888

namespace A064987

/-- `∑{d}[n+1, lcm(n, #)+#]` -/
def P3197455227389135888.Spec : Prop :=
  ∀ n, (P3197455227389135888.a n : ℤ) = A064987 (n + 1)

end A064987

/-! ## A064987.P7625506869574500687

`∑{d}[n+1, (n+1)²/#]`
-/

namespace A064987.P7625506869574500687
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), ((n + 1) ^ 2 : ℚ) / (d : ℚ)

end

end A064987.P7625506869574500687

namespace A064987

/-- `∑{d}[n+1, (n+1)²/#]` -/
def P7625506869574500687.Spec : Prop :=
  ∀ n, P7625506869574500687.a n = (A064987 (n + 1) : ℚ)

end A064987

/-! ## A064987.P10767017106641476775

`(n+1)/∑{d}[n+1, #]^-1`
-/

namespace A064987.P10767017106641476775
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / ((∑ d ∈ Nat.divisors (f1 n), d : ℕ) : ℚ) ^ (-1 : ℤ)

end

end A064987.P10767017106641476775

namespace A064987

/-- `(n+1)/∑{d}[n+1, #]^-1` -/
def P10767017106641476775.Spec : Prop :=
  ∀ n, P10767017106641476775.a n = (A064987 (n + 1) : ℚ)

end A064987

/-! ## A064987.P13364109242083596939

`∑{d}[n+1, #]/(ratio[n+1]-1)`
-/

namespace A064987.P13364109242083596939
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ d ∈ Nat.divisors (f1 n), d : ℕ) : ℚ) / ((f2 (n + 1) : ℚ) / (f2 n : ℚ) - 1)

end

end A064987.P13364109242083596939

namespace A064987

/-- `∑{d}[n+1, #]/(ratio[n+1]-1)` -/
def P13364109242083596939.Spec : Prop :=
  ∀ n, P13364109242083596939.a n = (A064987 (n + 1) : ℚ)

end A064987

/-! ## A064987.P9867912571726504350

`(n+1)*Δ[A160664(n)]`
-/

namespace A064987.P9867912571726504350
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160664 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (f1 (n + 1) - f1 n)

end

end A064987.P9867912571726504350

namespace A064987

/-- `(n+1)*Δ[A160664(n)]` -/
def P9867912571726504350.Spec : Prop :=
  ∀ n, P9867912571726504350.a n = A064987 (n + 1)

end A064987

/-! ## A064987.P14181610018234257040

`(n+1)*A000203(n+1)`
-/

namespace A064987.P14181610018234257040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A000203 (n + 1)

end

end A064987.P14181610018234257040

namespace A064987

/-- `(n+1)*A000203(n+1)` -/
def P14181610018234257040.Spec : Prop :=
  ∀ n, P14181610018234257040.a n = A064987 (n + 1)

end A064987

/-! ## A064987.P10508495762001831305

`(n+1)*A245092(Δ[n²])`
-/

namespace A064987.P10508495762001831305
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A245092 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A064987.P10508495762001831305

namespace A064987

/-- `(n+1)*A245092(Δ[n²])` -/
def P10508495762001831305.Spec : Prop :=
  ∀ n, P10508495762001831305.a n = A064987 (n + 1)

end A064987

/-! ## A064987.P16656946358437091502

`abs((n+1)*A143348(n+1))`
-/

namespace A064987.P16656946358437091502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(n + 1 : ℤ) * A143348 (n + 1)|

end

end A064987.P16656946358437091502

namespace A064987

/-- `abs((n+1)*A143348(n+1))` -/
def P16656946358437091502.Spec : Prop :=
  ∀ n, P16656946358437091502.a n = A064987 (n + 1)

end A064987

/-! ## A064987.P2838248654267039494

`(n+1)*sqrt(A072861(n+1))`
-/

namespace A064987.P2838248654267039494
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℝ) * Real.sqrt (A072861 (n + 1) : ℝ)

end

end A064987.P2838248654267039494

namespace A064987

/-- `(n+1)*sqrt(A072861(n+1))` -/
def P2838248654267039494.Spec : Prop :=
  ∀ n, P2838248654267039494.a n = (A064987 (n + 1) : ℝ)

end A064987

/-! ## A064987.P9596793565309708491

`(n+1)*∑[A340793(n+1)]`
-/

namespace A064987.P9596793565309708491
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340793 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A064987.P9596793565309708491

namespace A064987

/-- `(n+1)*∑[A340793(n+1)]` -/
def P9596793565309708491.Spec : Prop :=
  ∀ n, P9596793565309708491.a n = A064987 (n + 1)

end A064987

/-! ## A064987.P18388147226876931403

`(n+1)*(A039653(n+1)+1)`
-/

namespace A064987.P18388147226876931403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A039653 (n + 1) + 1)

end

end A064987.P18388147226876931403

namespace A064987

/-- `(n+1)*(A039653(n+1)+1)` -/
def P18388147226876931403.Spec : Prop :=
  ∀ n, P18388147226876931403.a n = A064987 (n + 1)

end A064987

/-! ## A064987.P17348550886946938711

`(n+1)*(A088580(n+1)-1)`
-/

namespace A064987.P17348550886946938711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A088580 (n + 1) - 1)

end

end A064987.P17348550886946938711

namespace A064987

/-- `(n+1)*(A088580(n+1)-1)` -/
def P17348550886946938711.Spec : Prop :=
  ∀ n, P17348550886946938711.a n = A064987 (n + 1)

end A064987

/-! ## A064987.P13559516181508297067

`(n+1)/2*A074400(n+1)`
-/

namespace A064987.P13559516181508297067
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / 2 * (A074400 (n + 1) : ℚ)

end

end A064987.P13559516181508297067

namespace A064987

/-- `(n+1)/2*A074400(n+1)` -/
def P13559516181508297067.Spec : Prop :=
  ∀ n, P13559516181508297067.a n = (A064987 (n + 1) : ℚ)

end A064987

/-! ## A064987.P7900731703106663010

`(n+1)/3*A272027(n+1)`
-/

namespace A064987.P7900731703106663010
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / 3 * (A272027 (n + 1) : ℚ)

end

end A064987.P7900731703106663010

namespace A064987

/-- `(n+1)/3*A272027(n+1)` -/
def P7900731703106663010.Spec : Prop :=
  ∀ n, P7900731703106663010.a n = (A064987 (n + 1) : ℚ)

end A064987

/-! ## A064987.P15765953171138692612

`(n+1)/4*A239050(n+1)`
-/

namespace A064987.P15765953171138692612
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / 4 * (A239050 (n + 1) : ℚ)

end

end A064987.P15765953171138692612

namespace A064987

/-- `(n+1)/4*A239050(n+1)` -/
def P15765953171138692612.Spec : Prop :=
  ∀ n, P15765953171138692612.a n = (A064987 (n + 1) : ℚ)

end A064987

/-! ## A064987.P693683986810009536

`(n+1)/5*A274535(n+1)`
-/

namespace A064987.P693683986810009536
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / 5 * (A274535 (n + 1) : ℚ)

end

end A064987.P693683986810009536

namespace A064987

/-- `(n+1)/5*A274535(n+1)` -/
def P693683986810009536.Spec : Prop :=
  ∀ n, P693683986810009536.a n = (A064987 (n + 1) : ℚ)

end A064987

/-! ## A064987.P3672263176594799398

`(n+1)*(A001065(n+1)+1+n)`
-/

namespace A064987.P3672263176594799398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A001065 (n + 1) + 1 + (n : ℤ))

end

end A064987.P3672263176594799398

namespace A064987

/-- `(n+1)*(A001065(n+1)+1+n)` -/
def P3672263176594799398.Spec : Prop :=
  ∀ n, P3672263176594799398.a n = A064987 (n + 1)

end A064987

/-! ## A064987.P7317672080661746035

`(n+1)*(A155085(n+1)-(n+1))`
-/

namespace A064987.P7317672080661746035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A155085 (n + 1) - (n + 1 : ℤ))

end

end A064987.P7317672080661746035

namespace A064987

/-- `(n+1)*(A155085(n+1)-(n+1))` -/
def P7317672080661746035.Spec : Prop :=
  ∀ n, P7317672080661746035.a n = A064987 (n + 1)

end A064987

/-!
# A064988: Multiplicative with a(p^e) = prime(p)^e.

The programs for A064988, the canonical program `A064988.P936164228496250104` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A064988 has offset 1).

The definition of A064988 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A064988.P1273866410331218309

`A003961(A290641(n+1))`
-/

namespace A064988.P1273866410331218309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003961 (A290641 (n + 1)).toNat

end

end A064988.P1273866410331218309

namespace A064988

/-- `A003961(A290641(n+1))` -/
def P1273866410331218309.Spec : Prop :=
  ∀ n, P1273866410331218309.a n = A064988 (n + 1)

end A064988

/-! ## A064988.P936164228496250104

`∏{p}[n+1, A000040(#)^val(n+1, #)]`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A064988

/-- `∏{p}[n+1, A000040(#)^val(n+1, #)]` -/
def P936164228496250104.Spec : Prop :=
  ∀ n, P936164228496250104.a n = A064988 (n + 1)

theorem P936164228496250104.correct : P936164228496250104.Spec := by
  intro n
  simp only [A064988, Nat.add_sub_cancel]

end A064988

/-! ## A064988.P6029778811621367920

`A378175(A096276(n+1))`
-/

namespace A064988.P6029778811621367920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378175 (A096276 (n + 1)).toNat

end

end A064988.P6029778811621367920

namespace A064988

/-- `A378175(A096276(n+1))` -/
def P6029778811621367920.Spec : Prop :=
  ∀ n, P6029778811621367920.a n = A064988 (n + 1)

end A064988

/-! ## A064988.P6927092928934245706

`∑{d}[A290641(n+1), A003972(#)]`
-/

namespace A064988.P6927092928934245706
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290641 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A003972 d

end

end A064988.P6927092928934245706

namespace A064988

/-- `∑{d}[A290641(n+1), A003972(#)]` -/
def P6927092928934245706.Spec : Prop :=
  ∀ n, P6927092928934245706.a n = A064988 (n + 1)

end A064988

/-! ## A064988.P3028948591295056278

`A336845(A290641(n+1))/A000005(n+1)`
-/

namespace A064988.P3028948591295056278
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A336845 (A290641 (n + 1)).toNat : ℚ) / (A000005 (n + 1) : ℚ)

end

end A064988.P3028948591295056278

namespace A064988

/-- `A336845(A290641(n+1))/A000005(n+1)` -/
def P3028948591295056278.Spec : Prop :=
  ∀ n, P3028948591295056278.a n = (A064988 (n + 1) : ℚ)

end A064988

/-! ## A064988.P16587057197413035236

`A045965(A290641(n+1))/A054977(n)`
-/

namespace A064988.P16587057197413035236
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A045965 (A290641 (n + 1)).toNat : ℚ) / (A054977 n : ℚ)

end

end A064988.P16587057197413035236

namespace A064988

/-- `A045965(A290641(n+1))/A054977(n)` -/
def P16587057197413035236.Spec : Prop :=
  ∀ n, P16587057197413035236.a n = (A064988 (n + 1) : ℚ)

end A064988

/-! ## A064988.P3950694794075874180

`A003961(A064554(n+1)%A345809(n+1))`
-/

namespace A064988.P3950694794075874180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003961 (Int.tmod (A064554 (n + 1)) (A345809 (n + 1))).toNat

end

end A064988.P3950694794075874180

namespace A064988

/-- `A003961(A064554(n+1)%A345809(n+1))` -/
def P3950694794075874180.Spec : Prop :=
  ∀ n, P3950694794075874180.a n = A064988 (n + 1)

end A064988

/-! ## A064988.P3458690390271006094

`∏{e}[A181821(n+1), A000040(A000040(#))]`
-/

namespace A064988.P3458690390271006094
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181821 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A000040 (A000040 (Nat.factorization (f1 n).natAbs p)).toNat

end

end A064988.P3458690390271006094

namespace A064988

/-- `∏{e}[A181821(n+1), A000040(A000040(#))]` -/
def P3458690390271006094.Spec : Prop :=
  ∀ n, P3458690390271006094.a n = A064988 (n + 1)

end A064988

/-!
# A064989: Multiplicative with a(2^e) = 1 and a(p^e) = prevprime(p)^e for odd primes p.

The programs for A064989, the canonical program `A064989.P13349672914146769936` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A064989 has offset 1).

The definition of A064989 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A008578, A052126, A061395, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A064989.P12736979531938273507

`A200746(n+1)/(n+1)`
-/

namespace A064989.P12736979531938273507
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A200746 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A064989.P12736979531938273507

namespace A064989

/-- `A200746(n+1)/(n+1)` -/
def P12736979531938273507.Spec : Prop :=
  ∀ n, P12736979531938273507.a n = (A064989 (n + 1) : ℚ)

end A064989

/-! ## A064989.P17355371549374872756

`A008578(A055396(n+1))*a(A032742(n+1)-1)` with `a(0)=1, a(1)=1`
-/

namespace A064989.P17355371549374872756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A008578 (A055396 (n + 1)).toNat * a (A032742 (n + 1) - 1).toNat

end

end A064989.P17355371549374872756

namespace A064989

/-- `A008578(A055396(n+1))*a(A032742(n+1)-1)` -/
def P17355371549374872756.Spec : Prop :=
  ∀ n, P17355371549374872756.a n = A064989 (n + 1)

end A064989

/-! ## A064989.P13349672914146769936

`A008578(A061395(n+1))*a(A052126(n+1)-1)` with `a(0)=1, a(1)=1`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A064989

/-- `A008578(A061395(n+1))*a(A052126(n+1)-1)` -/
def P13349672914146769936.Spec : Prop :=
  ∀ n, P13349672914146769936.a n = A064989 (n + 1)

theorem P13349672914146769936.correct : P13349672914146769936.Spec := by
  intro n
  simp only [A064989, Nat.add_sub_cancel]

end A064989

/-! ## A064989.P14099071881710365528

`A242424(n+1)/A105560(n+1)`
-/

namespace A064989.P14099071881710365528
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A242424 (n + 1) : ℚ) / (A105560 (n + 1) : ℚ)

end

end A064989.P14099071881710365528

namespace A064989

/-- `A242424(n+1)/A105560(n+1)` -/
def P14099071881710365528.Spec : Prop :=
  ∀ n, P14099071881710365528.a n = (A064989 (n + 1) : ℚ)

end A064989

/-! ## A064989.P18207677999895971350

`A249818(A250470(A249817(n+1)))`
-/

namespace A064989.P18207677999895971350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249818 (A250470 (A249817 (n + 1)).toNat).toNat

end

end A064989.P18207677999895971350

namespace A064989

/-- `A249818(A250470(A249817(n+1)))` -/
def P18207677999895971350.Spec : Prop :=
  ∀ n, P18207677999895971350.a n = A064989 (n + 1)

end A064989

/-! ## A064989.P5332655428922654357

`abs(A290099(n+1))`
-/

namespace A064989.P5332655428922654357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A290099 (n + 1)|

end

end A064989.P5332655428922654357

namespace A064989

/-- `abs(A290099(n+1))` -/
def P5332655428922654357.Spec : Prop :=
  ∀ n, P5332655428922654357.a n = A064989 (n + 1)

end A064989

/-! ## A064989.P609490963533167278

`∑{d}[n+1, A349127(#)]`
-/

namespace A064989.P609490963533167278
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A349127 d

end

end A064989.P609490963533167278

namespace A064989

/-- `∑{d}[n+1, A349127(#)]` -/
def P609490963533167278.Spec : Prop :=
  ∀ n, P609490963533167278.a n = A064989 (n + 1)

end A064989

/-! ## A064989.P14501335997081470432

`A064216(A003602(n+1))`
-/

namespace A064989.P14501335997081470432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064216 (A003602 (n + 1)).toNat

end

end A064989.P14501335997081470432

namespace A064989

/-- `A064216(A003602(n+1))` -/
def P14501335997081470432.Spec : Prop :=
  ∀ n, P14501335997081470432.a n = A064989 (n + 1)

end A064989

/-! ## A064989.P4155889986419840200

`A079707(A000265(n+1))`
-/

namespace A064989.P4155889986419840200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079707 (A000265 (n + 1)).toNat

end

end A064989.P4155889986419840200

namespace A064989

/-- `A079707(A000265(n+1))` -/
def P4155889986419840200.Spec : Prop :=
  ∀ n, P4155889986419840200.a n = A064989 (n + 1)

end A064989

/-! ## A064989.P13732371411572083879

`A266645(A268674(n+1))`
-/

namespace A064989.P13732371411572083879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266645 (A268674 (n + 1)).toNat

end

end A064989.P13732371411572083879

namespace A064989

/-- `A266645(A268674(n+1))` -/
def P13732371411572083879.Spec : Prop :=
  ∀ n, P13732371411572083879.a n = A064989 (n + 1)

end A064989

/-! ## A064989.P10052829598290254082

`A341516(A000265(2*(n+1)))`
-/

namespace A064989.P10052829598290254082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341516 (A000265 (2 * (n + 1))).toNat

end

end A064989.P10052829598290254082

namespace A064989

/-- `A341516(A000265(2*(n+1)))` -/
def P10052829598290254082.Spec : Prop :=
  ∀ n, P10052829598290254082.a n = A064989 (n + 1)

end A064989

/-! ## A064989.P12813035114900314907

`A349122(A000265(2*n+2))`
-/

namespace A064989.P12813035114900314907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349122 (A000265 (2 * n + 2)).toNat

end

end A064989.P12813035114900314907

namespace A064989

/-- `A349122(A000265(2*n+2))` -/
def P12813035114900314907.Spec : Prop :=
  ∀ n, P12813035114900314907.a n = A064989 (n + 1)

end A064989

/-! ## A064989.P17395009538431352829

`lcm(A033999(n), A290099(n+1))`
-/

namespace A064989.P17395009538431352829
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A290099 (n + 1))

end

end A064989.P17395009538431352829

namespace A064989

/-- `lcm(A033999(n), A290099(n+1))` -/
def P17395009538431352829.Spec : Prop :=
  ∀ n, (P17395009538431352829.a n : ℤ) = A064989 (n + 1)

end A064989

/-! ## A064989.P3649835379542228403

`A000010(n+1)-A353748(n+1)`
-/

namespace A064989.P3649835379542228403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1) - A353748 (n + 1)

end

end A064989.P3649835379542228403

namespace A064989

/-- `A000010(n+1)-A353748(n+1)` -/
def P3649835379542228403.Spec : Prop :=
  ∀ n, P3649835379542228403.a n = A064989 (n + 1)

theorem P3649835379542228403.correct : P3649835379542228403.Spec := by
  intro n
  simp only [A064989, Nat.add_sub_cancel, A064989.P3649835379542228403.a, A064989.P13349672914146769936.a, A000010, A000010.P4673923239450215316.a, A008578, A008578.P3639467937083264764.a, A052126, A052126.P1944428405920482243.a, A061395, A061395.P8431317036300486107.a, A353748, A353748.P1336225986400836670.a, A003557, A003557.P6364735403900941810.a, A006530, A006530.P13372528560459906635.a, A029837, A029837.P1050578713049589.a, A087207, A087207.P12536008426233777954.a, A158611, A158611.P9275629407611603775.a, A173557, A173557.P15666735857375843373.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A001221, A001221.P10258181745752134128.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A023900, A023900.P6802385856234332486.f1, A023900.P6802385856234332486.a, A048675, A048675.P15792214674053257917.f1, A048675.P15792214674053257917.a, A070229, A070229.P5792893597916963980.a, A005089, A005089.P4329807401814625450.f1, A005089.P4329807401814625450.a, A005091, A005091.P2802037195389751204.f1, A005091.P2802037195389751204.a, A028815, A028815.P810525423351225743.a, A059841, A059841.P2666504972441551157.a, A297108, A297108.P15990807296291497671.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A064989

/-! ## A064989.P11511565473436125842

`A353747(n+1)-A000010(n+1)`
-/

namespace A064989.P11511565473436125842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353747 (n + 1) - A000010 (n + 1)

end

end A064989.P11511565473436125842

namespace A064989

/-- `A353747(n+1)-A000010(n+1)` -/
def P11511565473436125842.Spec : Prop :=
  ∀ n, P11511565473436125842.a n = A064989 (n + 1)

theorem P11511565473436125842.correct : P11511565473436125842.Spec := by
  intro n
  simp only [A064989, Nat.add_sub_cancel, A064989.P11511565473436125842.a, A064989.P13349672914146769936.a, A000010, A000010.P4673923239450215316.a, A008578, A008578.P3639467937083264764.a, A052126, A052126.P1944428405920482243.a, A061395, A061395.P8431317036300486107.a, A353747, A353747.P3016860989461656940.a, A003557, A003557.P6364735403900941810.a, A006530, A006530.P13372528560459906635.a, A029837, A029837.P1050578713049589.a, A087207, A087207.P12536008426233777954.a, A158611, A158611.P9275629407611603775.a, A173557, A173557.P15666735857375843373.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A001221, A001221.P10258181745752134128.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A023900, A023900.P6802385856234332486.f1, A023900.P6802385856234332486.a, A048675, A048675.P15792214674053257917.f1, A048675.P15792214674053257917.a, A070229, A070229.P5792893597916963980.a, A005089, A005089.P4329807401814625450.f1, A005089.P4329807401814625450.a, A005091, A005091.P2802037195389751204.f1, A005091.P2802037195389751204.a, A028815, A028815.P810525423351225743.a, A059841, A059841.P2666504972441551157.a, A297108, A297108.P15990807296291497671.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A064989

/-! ## A064989.P17972722962265878118

`A349126(n+1)-A349125(n+1)`
-/

namespace A064989.P17972722962265878118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349126 (n + 1) - A349125 (n + 1)

end

end A064989.P17972722962265878118

namespace A064989

/-- `A349126(n+1)-A349125(n+1)` -/
def P17972722962265878118.Spec : Prop :=
  ∀ n, P17972722962265878118.a n = A064989 (n + 1)

theorem P17972722962265878118.correct : P17972722962265878118.Spec := by
  intro n
  simp only [A064989, Nat.add_sub_cancel, A064989.P17972722962265878118.a, A064989.P13349672914146769936.a, A008578, A008578.P3639467937083264764.a, A052126, A052126.P1944428405920482243.a, A061395, A061395.P8431317036300486107.a, A349125, A349125.P4936637679341869880.a, A349126, A349126.P8045301494363547831.a, A006530, A006530.P13372528560459906635.a, A008683, A008683.P18254306604665478110.a, A029837, A029837.P1050578713049589.a, A087207, A087207.P12536008426233777954.a, A158611, A158611.P9275629407611603775.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A048675, A048675.P15792214674053257917.f1, A048675.P15792214674053257917.a, A070229, A070229.P5792893597916963980.a, A132971, A132971.P9197609016375066540.a, A156552, A156552.P4268073137713085227.a, A005941, A005941.P9595689460679922607.f1, A005941.P9595689460679922607.a, A028815, A028815.P810525423351225743.a, A085357, A085357.P3258697467278337073.a, A106400, A106400.P11201390576172776043.a, A297108, A297108.P15990807296291497671.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A064989

/-! ## A064989.P3389873294436386892

`A117364(n+1)*A325133(n+1)`
-/

namespace A064989.P3389873294436386892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117364 (n + 1) * A325133 (n + 1)

end

end A064989.P3389873294436386892

namespace A064989

/-- `A117364(n+1)*A325133(n+1)` -/
def P3389873294436386892.Spec : Prop :=
  ∀ n, P3389873294436386892.a n = A064989 (n + 1)

end A064989

/-! ## A064989.P2854555257392653743

`A290099(n+1)*A309873(n+1)`
-/

namespace A064989.P2854555257392653743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290099 (n + 1) * A309873 (n + 1)

end

end A064989.P2854555257392653743

namespace A064989

/-- `A290099(n+1)*A309873(n+1)` -/
def P2854555257392653743.Spec : Prop :=
  ∀ n, P2854555257392653743.a n = A064989 (n + 1)

end A064989

/-! ## A064989.P5315031465617289262

`A319627(n+1)*A330749(n+1)`
-/

namespace A064989.P5315031465617289262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319627 (n + 1) * A330749 (n + 1)

end

end A064989.P5315031465617289262

namespace A064989

/-- `A319627(n+1)*A330749(n+1)` -/
def P5315031465617289262.Spec : Prop :=
  ∀ n, P5315031465617289262.a n = A064989 (n + 1)

end A064989

/-! ## A064989.P16483110992037699380

`A079707(n+1)/A006519(n+1)`
-/

namespace A064989.P16483110992037699380
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A079707 (n + 1) : ℚ) / (A006519 (n + 1) : ℚ)

end

end A064989.P16483110992037699380

namespace A064989

/-- `A079707(n+1)/A006519(n+1)` -/
def P16483110992037699380.Spec : Prop :=
  ∀ n, P16483110992037699380.a n = (A064989 (n + 1) : ℚ)

end A064989

/-!
# A064990: If A_k denotes the first 3^k terms, then A_0 = 0, A_{k+1} = A_k A_k B_k, where B_k is obtained from A_k by interchanging 0's and 1's.

The programs for A064990, the canonical program `A064990.P15716924184883463782` is in `Seq.B000.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A064990 has offset 0).

The definition of A064990 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A064990.P15716924184883463782

`(a(floor(n/3))-(1-n)%3)%2` with `a(0)=0, a(1)=0`

The canonical program, it is in `Seq.B000.C010`.
-/

namespace A064990

/-- `(a(floor(n/3))-(1-n)%3)%2` -/
def P15716924184883463782.Spec : Prop :=
  ∀ n, P15716924184883463782.a n = A064990 n

theorem P15716924184883463782.correct : P15716924184883463782.Spec := by
  intro n
  simp only [A064990]

end A064990

/-! ## A064990.P14987421578680359767

`A004488(n)%2`
-/

namespace A064990.P14987421578680359767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A004488 n) 2

end

end A064990.P14987421578680359767

namespace A064990

/-- `A004488(n)%2` -/
def P14987421578680359767.Spec : Prop :=
  ∀ n, P14987421578680359767.a n = A064990 n

end A064990

/-! ## A064990.P17375653579549473005

`A081603(n)%2`
-/

namespace A064990.P17375653579549473005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A081603 n) 2

end

end A064990.P17375653579549473005

namespace A064990

/-- `A081603(n)%2` -/
def P17375653579549473005.Spec : Prop :=
  ∀ n, P17375653579549473005.a n = A064990 n

end A064990

/-! ## A064990.P14753165037283207672

`A120855(n)%2`
-/

namespace A064990.P14753165037283207672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A120855 n) 2

end

end A064990.P14753165037283207672

namespace A064990

/-- `A120855(n)%2` -/
def P14753165037283207672.Spec : Prop :=
  ∀ n, P14753165037283207672.a n = A064990 n

end A064990

/-! ## A064990.P5106170109112906523

`A300956(n)%2`
-/

namespace A064990.P5106170109112906523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A300956 n) 2

end

end A064990.P5106170109112906523

namespace A064990

/-- `A300956(n)%2` -/
def P5106170109112906523.Spec : Prop :=
  ∀ n, P5106170109112906523.a n = A064990 n

end A064990

/-! ## A064990.P13396573987856019695

`and(1, A256184(n))`
-/

namespace A064990.P13396573987856019695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A256184 n)

end

end A064990.P13396573987856019695

namespace A064990

/-- `and(1, A256184(n))` -/
def P13396573987856019695.Spec : Prop :=
  ∀ n, P13396573987856019695.a n = A064990 n

end A064990

/-! ## A064990.P17306968691765012697

`and(1, A274107(n))`
-/

namespace A064990.P17306968691765012697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A274107 n)

end

end A064990.P17306968691765012697

namespace A064990

/-- `and(1, A274107(n))` -/
def P17306968691765012697.Spec : Prop :=
  ∀ n, P17306968691765012697.a n = A064990 n

end A064990

/-! ## A064990.P16350557451463897035

`char[A004488(or(1, n))]`
-/

namespace A064990.P16350557451463897035
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004488 (Nat.lor 1 n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A064990.P16350557451463897035

namespace A064990

/-- `char[A004488(or(1, n))]` -/
def P16350557451463897035.Spec : Prop :=
  ∀ n, (P16350557451463897035.a n : ℤ) = A064990 n

end A064990

/-! ## A064990.P4277016268497172362

`A061436(n+1)%2`
-/

namespace A064990.P4277016268497172362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A061436 (n + 1)) 2

end

end A064990.P4277016268497172362

namespace A064990

/-- `A061436(n+1)%2` -/
def P4277016268497172362.Spec : Prop :=
  ∀ n, P4277016268497172362.a n = A064990 n

end A064990

/-! ## A064990.P836840285814146094

`and(1, A004488(3*n))`
-/

namespace A064990.P836840285814146094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A004488 (3 * n))

end

end A064990.P836840285814146094

namespace A064990

/-- `and(1, A004488(3*n))` -/
def P836840285814146094.Spec : Prop :=
  ∀ n, P836840285814146094.a n = A064990 n

end A064990

/-! ## A064990.P14141196635461860394

`and(2, A128173(n))/2`
-/

namespace A064990.P14141196635461860394
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.land 2 (A128173 n) : ℚ) / 2

end

end A064990.P14141196635461860394

namespace A064990

/-- `and(2, A128173(n))/2` -/
def P14141196635461860394.Spec : Prop :=
  ∀ n, P14141196635461860394.a n = (A064990 n : ℚ)

end A064990

/-! ## A064990.P10930809349182472950

`val(A006047(n), 3)%2`
-/

namespace A064990.P10930809349182472950
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A006047 n).toNat 3 % 2

end

end A064990.P10930809349182472950

namespace A064990

/-- `val(A006047(n), 3)%2` -/
def P10930809349182472950.Spec : Prop :=
  ∀ n, (P10930809349182472950.a n : ℤ) = A064990 n

end A064990

/-! ## A064990.P8474805816149417733

`and(1, A117966(n)+n)`
-/

namespace A064990.P8474805816149417733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A117966 n + (n : ℤ))

end

end A064990.P8474805816149417733

namespace A064990

/-- `and(1, A117966(n)+n)` -/
def P8474805816149417733.Spec : Prop :=
  ∀ n, P8474805816149417733.a n = A064990 n

end A064990

/-! ## A064990.P3597916914611760007

`and(1, A160384(n)+n)`
-/

namespace A064990.P3597916914611760007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A160384 n + (n : ℤ))

end

end A064990.P3597916914611760007

namespace A064990

/-- `and(1, A160384(n)+n)` -/
def P3597916914611760007.Spec : Prop :=
  ∀ n, P3597916914611760007.a n = A064990 n

end A064990

/-! ## A064990.P4656722088657506412

`and(1, A327252(n)+n)`
-/

namespace A064990.P4656722088657506412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A327252 n + (n : ℤ))

end

end A064990.P4656722088657506412

namespace A064990

/-- `and(1, A327252(n)+n)` -/
def P4656722088657506412.Spec : Prop :=
  ∀ n, P4656722088657506412.a n = A064990 n

end A064990

/-! ## A064990.P7214475482569045956

`char[A004488(2*n+1)]`
-/

namespace A064990.P7214475482569045956
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004488 (2 * n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A064990.P7214475482569045956

namespace A064990

/-- `char[A004488(2*n+1)]` -/
def P7214475482569045956.Spec : Prop :=
  ∀ n, (P7214475482569045956.a n : ℤ) = A064990 n

end A064990

/-! ## A064990.P17251063057025139700

`1-char[A004488(2*n)]`
-/

namespace A064990.P17251063057025139700
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004488 (2 * n)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A064990.P17251063057025139700

namespace A064990

/-- `1-char[A004488(2*n)]` -/
def P17251063057025139700.Spec : Prop :=
  ∀ n, P17251063057025139700.a n = A064990 n

end A064990

/-! ## A064990.P2240228578750188714

`A000035(A120855(n))`
-/

namespace A064990.P2240228578750188714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A120855 n).toNat

end

end A064990.P2240228578750188714

namespace A064990

/-- `A000035(A120855(n))` -/
def P2240228578750188714.Spec : Prop :=
  ∀ n, P2240228578750188714.a n = A064990 n

end A064990

/-! ## A064990.P658448116235314306

`A010060(A289814(n))`
-/

namespace A064990.P658448116235314306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010060 (A289814 n).toNat

end

end A064990.P658448116235314306

namespace A064990

/-- `A010060(A289814(n))` -/
def P658448116235314306.Spec : Prop :=
  ∀ n, P658448116235314306.a n = A064990 n

end A064990

/-!
# A064992: a(n) = usigma(n+1) - usigma(n), where usigma(n) is the sum of unitary divisors of n (A034448).

The programs for A064992, the canonical program `A064992.P11019565311280809988` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A064992 has offset 1).

The definition of A064992 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A034448, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A064992.P11019565311280809988

`A034448(n+2)-A034448(n+1)`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A064992

/-- `A034448(n+2)-A034448(n+1)` -/
def P11019565311280809988.Spec : Prop :=
  ∀ n, P11019565311280809988.a n = A064992 (n + 1)

theorem P11019565311280809988.correct : P11019565311280809988.Spec := by
  intro n
  simp only [A064992, Nat.add_sub_cancel]

end A064992

/-! ## A064992.P5118198578799819051

`Δ[A034460(n+1)]+1`
-/

namespace A064992.P5118198578799819051
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034460 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + 1

end

end A064992.P5118198578799819051

namespace A064992

/-- `Δ[A034460(n+1)]+1` -/
def P5118198578799819051.Spec : Prop :=
  ∀ n, P5118198578799819051.a n = A064992 (n + 1)

theorem P5118198578799819051.correct : P5118198578799819051.Spec := by
  intro n
  simp only [A064992, Nat.add_sub_cancel, A064992.P5118198578799819051.f1, A064992.P5118198578799819051.a, A064992.P11019565311280809988.a, A034448, A034448.P17017727775393200719.a, A034460, A034460.P1958235575820581513.a, A064971, A064971.P12456317125098901049.f1, A064971.P12456317125098901049.a, A053825, A053825.P3529766841853861707.f1, A053825.P3529766841853861707.a, A379812, A379812.P10955070158037639960.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A001157, A001157.P6892814788348726787.a, A007427, A007427.P16346481250890679101.f1, A007427.P16346481250890679101.a, A063453, A063453.P7272092198875575783.f1, A063453.P7272092198875575783.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A064992

/-! ## A064992.P10831403513184863773

`Δ[A000203(n+1)-A048146(n+1)]`
-/

namespace A064992.P10831403513184863773
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) - A048146 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A064992.P10831403513184863773

namespace A064992

/-- `Δ[A000203(n+1)-A048146(n+1)]` -/
def P10831403513184863773.Spec : Prop :=
  ∀ n, P10831403513184863773.a n = A064992 (n + 1)

theorem P10831403513184863773.correct : P10831403513184863773.Spec := by
  intro n
  simp only [A064992, Nat.add_sub_cancel, A064992.P10831403513184863773.f1, A064992.P10831403513184863773.a, A064992.P11019565311280809988.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A034448, A034448.P17017727775393200719.a, A048146, A048146.P9985884013456677192.a, A064971, A064971.P12456317125098901049.f1, A064971.P12456317125098901049.a, A053825, A053825.P3529766841853861707.f1, A053825.P3529766841853861707.a, A379812, A379812.P10955070158037639960.a, A001157, A001157.P6892814788348726787.a, A007427, A007427.P16346481250890679101.f1, A007427.P16346481250890679101.a, A063453, A063453.P7272092198875575783.f1, A063453.P7272092198875575783.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A064992

/-! ## A064992.P557640128848520019

`Δ[A348503(n+1)*A348505(n+1)]`
-/

namespace A064992.P557640128848520019
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348503 (n + 1) * A348505 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A064992.P557640128848520019

namespace A064992

/-- `Δ[A348503(n+1)*A348505(n+1)]` -/
def P557640128848520019.Spec : Prop :=
  ∀ n, P557640128848520019.a n = A064992 (n + 1)

end A064992

/-! ## A064992.P8128052542992412925

`Δ[A348733(n+1)*A348735(n+1)]`
-/

namespace A064992.P8128052542992412925
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348733 (n + 1) * A348735 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A064992.P8128052542992412925

namespace A064992

/-- `Δ[A348733(n+1)*A348735(n+1)]` -/
def P8128052542992412925.Spec : Prop :=
  ∀ n, P8128052542992412925.a n = A064992 (n + 1)

end A064992

/-! ## A064992.P9289725389132112252

`A034460(n+2)+1-A034460(n+1)`
-/

namespace A064992.P9289725389132112252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034460 (n + 2) + (1 - A034460 (n + 1))

end

end A064992.P9289725389132112252

namespace A064992

/-- `A034460(n+2)+1-A034460(n+1)` -/
def P9289725389132112252.Spec : Prop :=
  ∀ n, P9289725389132112252.a n = A064992 (n + 1)

theorem P9289725389132112252.correct : P9289725389132112252.Spec := by
  intro n
  simp only [A064992, Nat.add_sub_cancel, A064992.P9289725389132112252.a, A064992.P11019565311280809988.a, A034448, A034448.P17017727775393200719.a, A034460, A034460.P1958235575820581513.a, A064971, A064971.P12456317125098901049.f1, A064971.P12456317125098901049.a, A053825, A053825.P3529766841853861707.f1, A053825.P3529766841853861707.a, A379812, A379812.P10955070158037639960.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A001157, A001157.P6892814788348726787.a, A007427, A007427.P16346481250890679101.f1, A007427.P16346481250890679101.a, A063453, A063453.P7272092198875575783.f1, A063453.P7272092198875575783.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A064992

/-! ## A064992.P7039864616933052925

`2-Δ[A048146(n+1)+A033879(n+1)]`
-/

namespace A064992.P7039864616933052925
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048146 (n + 1) + A033879 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - (f1 (n + 1) - f1 n)

end

end A064992.P7039864616933052925

namespace A064992

/-- `2-Δ[A048146(n+1)+A033879(n+1)]` -/
def P7039864616933052925.Spec : Prop :=
  ∀ n, P7039864616933052925.a n = A064992 (n + 1)

theorem P7039864616933052925.correct : P7039864616933052925.Spec := by
  intro n
  simp only [A064992, Nat.add_sub_cancel, A064992.P7039864616933052925.f1, A064992.P7039864616933052925.a, A064992.P11019565311280809988.a, A033879, A033879.P11735613842914743111.a, A034448, A034448.P17017727775393200719.a, A048146, A048146.P9985884013456677192.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A033880, A033880.P6005875780263802708.a, A064971, A064971.P12456317125098901049.f1, A064971.P12456317125098901049.a, A001065, A001065.P4097147489331274860.a, A053825, A053825.P3529766841853861707.f1, A053825.P3529766841853861707.a, A379812, A379812.P10955070158037639960.a, A001157, A001157.P6892814788348726787.a, A007427, A007427.P16346481250890679101.f1, A007427.P16346481250890679101.a, A063453, A063453.P7272092198875575783.f1, A063453.P7272092198875575783.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A064992

/-! ## A064992.P2036937025054037626

`Δ[A155085(n+1)-A048146(n+1)]-1`
-/

namespace A064992.P2036937025054037626
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155085 (n + 1) - A048146 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - 1

end

end A064992.P2036937025054037626

namespace A064992

/-- `Δ[A155085(n+1)-A048146(n+1)]-1` -/
def P2036937025054037626.Spec : Prop :=
  ∀ n, P2036937025054037626.a n = A064992 (n + 1)

theorem P2036937025054037626.correct : P2036937025054037626.Spec := by
  intro n
  simp only [A064992, Nat.add_sub_cancel, A064992.P2036937025054037626.f1, A064992.P2036937025054037626.a, A064992.P11019565311280809988.a, A034448, A034448.P17017727775393200719.a, A048146, A048146.P9985884013456677192.a, A155085, A155085.P3282672389110014595.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A064971, A064971.P12456317125098901049.f1, A064971.P12456317125098901049.a, A053825, A053825.P3529766841853861707.f1, A053825.P3529766841853861707.a, A379812, A379812.P10955070158037639960.a, A001157, A001157.P6892814788348726787.a, A007427, A007427.P16346481250890679101.f1, A007427.P16346481250890679101.a, A063453, A063453.P7272092198875575783.f1, A063453.P7272092198875575783.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A064992

/-! ## A064992.P3655464465775613256

`Δ[A074400(n+1)/2-A048146(n+1)]`
-/

namespace A064992.P3655464465775613256
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A074400 (n + 1) : ℚ) / 2 - (A048146 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A064992.P3655464465775613256

namespace A064992

/-- `Δ[A074400(n+1)/2-A048146(n+1)]` -/
def P3655464465775613256.Spec : Prop :=
  ∀ n, P3655464465775613256.a n = (A064992 (n + 1) : ℚ)

theorem P3655464465775613256.correct : P3655464465775613256.Spec := by
  intro n
  simp only [A064992, Nat.add_sub_cancel, A064992.P3655464465775613256.f1, A064992.P3655464465775613256.a, A064992.P11019565311280809988.a, A034448, A034448.P17017727775393200719.a, A048146, A048146.P9985884013456677192.a, A074400, A074400.P16312391460013478761.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A064971, A064971.P12456317125098901049.f1, A064971.P12456317125098901049.a, A053825, A053825.P3529766841853861707.f1, A053825.P3529766841853861707.a, A379812, A379812.P10955070158037639960.a, A001157, A001157.P6892814788348726787.a, A007427, A007427.P16346481250890679101.f1, A007427.P16346481250890679101.a, A063453, A063453.P7272092198875575783.f1, A063453.P7272092198875575783.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A064992

/-! ## A064992.P2961376403806627237

`Δ[A034448(n+1)]`
-/

namespace A064992.P2961376403806627237
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034448 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A064992.P2961376403806627237

namespace A064992

/-- `Δ[A034448(n+1)]` -/
def P2961376403806627237.Spec : Prop :=
  ∀ n, P2961376403806627237.a n = A064992 (n + 1)

theorem P2961376403806627237.correct : P2961376403806627237.Spec := by
  intro n
  simp only [A064992, Nat.add_sub_cancel, A064992.P2961376403806627237.f1, A064992.P2961376403806627237.a, A064992.P11019565311280809988.a, SequenceMachineLib.memo_apply]

end A064992

/-! ## A064992.P9584589248366010178

`Δ[A345451(n+1)]`
-/

namespace A064992.P9584589248366010178
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345451 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A064992.P9584589248366010178

namespace A064992

/-- `Δ[A345451(n+1)]` -/
def P9584589248366010178.Spec : Prop :=
  ∀ n, P9584589248366010178.a n = A064992 (n + 1)

theorem P9584589248366010178.correct : P9584589248366010178.Spec := by
  intro n
  simp only [A064992, Nat.add_sub_cancel, A064992.P9584589248366010178.f1, A064992.P9584589248366010178.a, A064992.P11019565311280809988.a, A034448, A034448.P17017727775393200719.a, A345451, A345451.P7254326500789221208.a, A064971, A064971.P12456317125098901049.f1, A064971.P12456317125098901049.a, A053825, A053825.P3529766841853861707.f1, A053825.P3529766841853861707.a, A379812, A379812.P10955070158037639960.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A001157, A001157.P6892814788348726787.a, A007427, A007427.P16346481250890679101.f1, A007427.P16346481250890679101.a, A063453, A063453.P7272092198875575783.f1, A063453.P7272092198875575783.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A064992

/-! ## A064992.P1923097144448022944

`Δ[A129468(n+1)]+2`
-/

namespace A064992.P1923097144448022944
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129468 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + 2

end

end A064992.P1923097144448022944

namespace A064992

/-- `Δ[A129468(n+1)]+2` -/
def P1923097144448022944.Spec : Prop :=
  ∀ n, P1923097144448022944.a n = A064992 (n + 1)

theorem P1923097144448022944.correct : P1923097144448022944.Spec := by
  intro n
  simp only [A064992, Nat.add_sub_cancel, A064992.P1923097144448022944.f1, A064992.P1923097144448022944.a, A064992.P11019565311280809988.a, A034448, A034448.P17017727775393200719.a, A129468, A129468.P11362039589036067826.a, A034460, A034460.P1958235575820581513.a, A064971, A064971.P12456317125098901049.f1, A064971.P12456317125098901049.a, A053825, A053825.P3529766841853861707.f1, A053825.P3529766841853861707.a, A379812, A379812.P10955070158037639960.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A001157, A001157.P6892814788348726787.a, A007427, A007427.P16346481250890679101.f1, A007427.P16346481250890679101.a, A063453, A063453.P7272092198875575783.f1, A063453.P7272092198875575783.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A064992

/-! ## A064992.P9807041105561486996

`Δ[A064971(n+1)/(n+1)]`
-/

namespace A064992.P9807041105561486996
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A064971 (n + 1) : ℚ) / (n + 1 : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A064992.P9807041105561486996

namespace A064992

/-- `Δ[A064971(n+1)/(n+1)]` -/
def P9807041105561486996.Spec : Prop :=
  ∀ n, P9807041105561486996.a n = (A064992 (n + 1) : ℚ)

end A064992

/-! ## A064992.P6399843058164668173

`A345451(n+2)-A345451(n+1)`
-/

namespace A064992.P6399843058164668173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345451 (n + 2) - A345451 (n + 1)

end

end A064992.P6399843058164668173

namespace A064992

/-- `A345451(n+2)-A345451(n+1)` -/
def P6399843058164668173.Spec : Prop :=
  ∀ n, P6399843058164668173.a n = A064992 (n + 1)

theorem P6399843058164668173.correct : P6399843058164668173.Spec := by
  intro n
  simp only [A064992, Nat.add_sub_cancel, A064992.P6399843058164668173.a, A064992.P11019565311280809988.a, A034448, A034448.P17017727775393200719.a, A345451, A345451.P7254326500789221208.a, A064971, A064971.P12456317125098901049.f1, A064971.P12456317125098901049.a, A053825, A053825.P3529766841853861707.f1, A053825.P3529766841853861707.a, A379812, A379812.P10955070158037639960.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A001157, A001157.P6892814788348726787.a, A007427, A007427.P16346481250890679101.f1, A007427.P16346481250890679101.a, A063453, A063453.P7272092198875575783.f1, A063453.P7272092198875575783.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A064992

/-! ## A064992.P2718256651223454807

`Δ[A098189(n+1)+Δ[A002088(n)]]`
-/

namespace A064992.P2718256651223454807
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002088 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098189 (n + 1) + (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A064992.P2718256651223454807

namespace A064992

/-- `Δ[A098189(n+1)+Δ[A002088(n)]]` -/
def P2718256651223454807.Spec : Prop :=
  ∀ n, P2718256651223454807.a n = A064992 (n + 1)

end A064992

/-! ## A064992.P6570166730781203240

`Δ[A088580(n+1)-A048146(n+1)]`
-/

namespace A064992.P6570166730781203240
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088580 (n + 1) - A048146 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A064992.P6570166730781203240

namespace A064992

/-- `Δ[A088580(n+1)-A048146(n+1)]` -/
def P6570166730781203240.Spec : Prop :=
  ∀ n, P6570166730781203240.a n = A064992 (n + 1)

theorem P6570166730781203240.correct : P6570166730781203240.Spec := by
  intro n
  simp only [A064992, Nat.add_sub_cancel, A064992.P6570166730781203240.f1, A064992.P6570166730781203240.a, A064992.P11019565311280809988.a, A034448, A034448.P17017727775393200719.a, A048146, A048146.P9985884013456677192.a, A088580, A088580.P3089093194242277422.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A064971, A064971.P12456317125098901049.f1, A064971.P12456317125098901049.a, A053825, A053825.P3529766841853861707.f1, A053825.P3529766841853861707.a, A379812, A379812.P10955070158037639960.a, A001157, A001157.P6892814788348726787.a, A007427, A007427.P16346481250890679101.f1, A007427.P16346481250890679101.a, A063453, A063453.P7272092198875575783.f1, A063453.P7272092198875575783.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A064992

/-! ## A064992.P2940694215146862169

`Δ[A001065(n+1)-A048146(n+1)]+1`
-/

namespace A064992.P2940694215146862169
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001065 (n + 1) - A048146 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + 1

end

end A064992.P2940694215146862169

namespace A064992

/-- `Δ[A001065(n+1)-A048146(n+1)]+1` -/
def P2940694215146862169.Spec : Prop :=
  ∀ n, P2940694215146862169.a n = A064992 (n + 1)

theorem P2940694215146862169.correct : P2940694215146862169.Spec := by
  intro n
  simp only [A064992, Nat.add_sub_cancel, A064992.P2940694215146862169.f1, A064992.P2940694215146862169.a, A064992.P11019565311280809988.a, A001065, A001065.P4097147489331274860.a, A034448, A034448.P17017727775393200719.a, A048146, A048146.P9985884013456677192.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A064971, A064971.P12456317125098901049.f1, A064971.P12456317125098901049.a, A053825, A053825.P3529766841853861707.f1, A053825.P3529766841853861707.a, A379812, A379812.P10955070158037639960.a, A001157, A001157.P6892814788348726787.a, A007427, A007427.P16346481250890679101.f1, A007427.P16346481250890679101.a, A063453, A063453.P7272092198875575783.f1, A063453.P7272092198875575783.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A064992

/-! ## A064992.P9757586491615631293

`Δ[A237588(n+1)-A048146(n+1)]+2`
-/

namespace A064992.P9757586491615631293
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237588 (n + 1) - A048146 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + 2

end

end A064992.P9757586491615631293

namespace A064992

/-- `Δ[A237588(n+1)-A048146(n+1)]+2` -/
def P9757586491615631293.Spec : Prop :=
  ∀ n, P9757586491615631293.a n = A064992 (n + 1)

theorem P9757586491615631293.correct : P9757586491615631293.Spec := by
  intro n
  simp only [A064992, Nat.add_sub_cancel, A064992.P9757586491615631293.f1, A064992.P9757586491615631293.a, A064992.P11019565311280809988.a, A034448, A034448.P17017727775393200719.a, A048146, A048146.P9985884013456677192.a, A237588, A237588.P7919289499905681947.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A033880, A033880.P6005875780263802708.a, A064971, A064971.P12456317125098901049.f1, A064971.P12456317125098901049.a, A001065, A001065.P4097147489331274860.a, A053825, A053825.P3529766841853861707.f1, A053825.P3529766841853861707.a, A379812, A379812.P10955070158037639960.a, A001157, A001157.P6892814788348726787.a, A007427, A007427.P16346481250890679101.f1, A007427.P16346481250890679101.a, A063453, A063453.P7272092198875575783.f1, A063453.P7272092198875575783.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A064992

/-! ## A064992.P18231113917376597381

`Δ[A064987(n+1)/(n+1)-A048146(n+1)]`
-/

namespace A064992.P18231113917376597381
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A064987 (n + 1) : ℚ) / (n + 1 : ℚ) - (A048146 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A064992.P18231113917376597381

namespace A064992

/-- `Δ[A064987(n+1)/(n+1)-A048146(n+1)]` -/
def P18231113917376597381.Spec : Prop :=
  ∀ n, P18231113917376597381.a n = (A064992 (n + 1) : ℚ)

end A064992

/-! ## A064992.P5861654651450412688

`Δ[A000010(n+1)+A051612(n+1)-A048146(n+1)]`
-/

namespace A064992.P5861654651450412688
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1) + (A051612 (n + 1) - A048146 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A064992.P5861654651450412688

namespace A064992

/-- `Δ[A000010(n+1)+A051612(n+1)-A048146(n+1)]` -/
def P5861654651450412688.Spec : Prop :=
  ∀ n, P5861654651450412688.a n = A064992 (n + 1)

theorem P5861654651450412688.correct : P5861654651450412688.Spec := by
  intro n
  simp only [A064992, Nat.add_sub_cancel, A064992.P5861654651450412688.f1, A064992.P5861654651450412688.a, A064992.P11019565311280809988.a, A000010, A000010.P4673923239450215316.a, A034448, A034448.P17017727775393200719.a, A048146, A048146.P9985884013456677192.a, A051612, A051612.P4135239823752248514.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A003557, A003557.P6364735403900941810.a, A064971, A064971.P12456317125098901049.f1, A064971.P12456317125098901049.a, A173557, A173557.P15666735857375843373.a, A001221, A001221.P10258181745752134128.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A023900, A023900.P6802385856234332486.f1, A023900.P6802385856234332486.a, A053825, A053825.P3529766841853861707.f1, A053825.P3529766841853861707.a, A379812, A379812.P10955070158037639960.a, A001157, A001157.P6892814788348726787.a, A005089, A005089.P4329807401814625450.f1, A005089.P4329807401814625450.a, A005091, A005091.P2802037195389751204.f1, A005091.P2802037195389751204.a, A007427, A007427.P16346481250890679101.f1, A007427.P16346481250890679101.a, A059841, A059841.P2666504972441551157.a, A063453, A063453.P7272092198875575783.f1, A063453.P7272092198875575783.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A064992

/-!
# A064994: A Beatty sequence from Khinchin's constant (A002210).

The programs for A064994, there is no canonical definition to state claims against.
-/

/-! ## A064994.P4896213513993737623

`A082375(A074378(3*(n+1)))-A109237(n+1)`
-/

namespace A064994.P4896213513993737623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082375 (A074378 (3 * (n + 1))).toNat - A109237 (n + 1)

end

end A064994.P4896213513993737623

/-! ## A064994.P3441047905521842623

`floor(∑[A292050(2*n+1)/A341169(3*(n+1))+5]/3)`
-/

namespace A064994.P3441047905521842623
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A292050 (2 * n + 1) : ℚ) / (A341169 (3 * (n + 1)) : ℚ) + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(∑ j ∈ Finset.range (n + 1), f1 j) / 3⌋

end

end A064994.P3441047905521842623

/-! ## A064994.P2300863620137583210

`lt[A246943(A246977(n)), A246977(n)]`
-/

namespace A064994.P2300863620137583210
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246943 (A246977 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246977 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A064994.P2300863620137583210

/-! ## A064994.P16622152343656618837

`A105209(∑[(n+1)²+1])+n`
-/

namespace A064994.P16622152343656618837
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2 + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105209 (∑ j ∈ Finset.range (n + 1), f1 j) + (n : ℤ)

end

end A064994.P16622152343656618837

/-! ## A064994.P17002719884764858241

`round(sqrt(A088804(2*n+1)))`
-/

namespace A064994.P17002719884764858241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (A088804 (2 * n + 1) : ℝ))

end

end A064994.P17002719884764858241

/-!
# A064995: A Beatty sequence from Khintchin's constant (A002210).

The programs for A064995, there is no canonical definition to state claims against.
-/

/-! ## A064995.P2676228611760591567

`comp[A064994(n+1)-1]+1`
-/

namespace A064995.P2676228611760591567
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064994 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A064995.P2676228611760591567

/-!
# A064996: A Beatty sequence: a(n) = floor(Pi^2 - 8).

The programs for A064996, the canonical program `A064996.P17668339033509216266` is in `Seq.B000.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A064996 has offset 1).

The definition of A064996 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A064996.P17668339033509216266

`∑[gcd(2, Δ[floor(n*π²)])]`

The canonical program, it is in `Seq.B000.C010`.
-/

namespace A064996

/-- `∑[gcd(2, Δ[floor(n*π²)])]` -/
def P17668339033509216266.Spec : Prop :=
  ∀ n, (P17668339033509216266.a n : ℤ) = A064996 (n + 1)

theorem P17668339033509216266.correct : P17668339033509216266.Spec := by
  intro n
  simp only [A064996, Nat.add_sub_cancel]

end A064996

/-! ## A064996.P3662141994031663487

`∑[Δ[floor(n*π²)]%4]`
-/

namespace A064996.P3662141994031663487
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℝ) * Real.pi ^ 2⌋

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f2 (n + 1) - f2 n) 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A064996.P3662141994031663487

namespace A064996

/-- `∑[Δ[floor(n*π²)]%4]` -/
def P3662141994031663487.Spec : Prop :=
  ∀ n, P3662141994031663487.a n = A064996 (n + 1)

end A064996

/-! ## A064996.P13271122659686494836

`∑[and(3, Δ[floor(n*π²)])]`
-/

namespace A064996.P13271122659686494836
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℝ) * Real.pi ^ 2⌋

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 3 (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A064996.P13271122659686494836

namespace A064996

/-- `∑[and(3, Δ[floor(n*π²)])]` -/
def P13271122659686494836.Spec : Prop :=
  ∀ n, P13271122659686494836.a n = A064996 (n + 1)

end A064996

/-! ## A064996.P6685728950061471229

`∑[xor(8, Δ[floor(n*π²)])]`
-/

namespace A064996.P6685728950061471229
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℝ) * Real.pi ^ 2⌋

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 8 (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A064996.P6685728950061471229

namespace A064996

/-- `∑[xor(8, Δ[floor(n*π²)])]` -/
def P6685728950061471229.Spec : Prop :=
  ∀ n, P6685728950061471229.a n = A064996 (n + 1)

end A064996

/-! ## A064996.P10020151341684728192

`∑[A001221(Δ[floor(n*π²)])]`
-/

namespace A064996.P10020151341684728192
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℝ) * Real.pi ^ 2⌋

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A064996.P10020151341684728192

namespace A064996

/-- `∑[A001221(Δ[floor(n*π²)])]` -/
def P10020151341684728192.Spec : Prop :=
  ∀ n, P10020151341684728192.a n = A064996 (n + 1)

end A064996

/-! ## A064996.P11325941610504563914

`A000196(A032525(n+1))`
-/

namespace A064996.P11325941610504563914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A032525 (n + 1)).toNat

end

end A064996.P11325941610504563914

namespace A064996

/-- `A000196(A032525(n+1))` -/
def P11325941610504563914.Spec : Prop :=
  ∀ n, P11325941610504563914.a n = A064996 (n + 1)

end A064996

/-! ## A064996.P15503436726487962029

`A000196(A195145(n+1))`
-/

namespace A064996.P15503436726487962029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A195145 (n + 1)).toNat

end

end A064996.P15503436726487962029

namespace A064996

/-- `A000196(A195145(n+1))` -/
def P15503436726487962029.Spec : Prop :=
  ∀ n, P15503436726487962029.a n = A064996 (n + 1)

end A064996

/-! ## A064996.P14188615894992603359

`A000196(2*A195041(n+1))`
-/

namespace A064996.P14188615894992603359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (2 * A195041 (n + 1)).toNat

end

end A064996.P14188615894992603359

namespace A064996

/-- `A000196(2*A195041(n+1))` -/
def P14188615894992603359.Spec : Prop :=
  ∀ n, P14188615894992603359.a n = A064996 (n + 1)

end A064996

/-! ## A064996.P17120332958099086391

`A000196(A054386(n+1)+∑[A017005(n)])`
-/

namespace A064996.P17120332958099086391
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017005 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A054386 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A064996.P17120332958099086391

namespace A064996

/-- `A000196(A054386(n+1)+∑[A017005(n)])` -/
def P17120332958099086391.Spec : Prop :=
  ∀ n, P17120332958099086391.a n = A064996 (n + 1)

end A064996

/-!
# A064997: A Beatty sequence: [Pi^2 -8].

The programs for A064997, the canonical program `A064997.P7944663439960374129` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A064997 has offset 1).

The definition of A064997 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 930 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A064997.P7944663439960374129

`A002266(A008587(2*(n+1))+A002265(3*n+2))`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A064997

/-- `A002266(A008587(2*(n+1))+A002265(3*n+2))` -/
def P7944663439960374129.Spec : Prop :=
  ∀ n, P7944663439960374129.a n = A064997 (n + 1)

theorem P7944663439960374129.correct : P7944663439960374129.Spec := by
  intro n
  simp only [A064997, Nat.add_sub_cancel]

end A064997

/-! ## A064997.P7121704515716177969

`A002024(A102214(n)+floor((floor(n/2)/2+1)²))`
-/

namespace A064997.P7121704515716177969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 (A102214 n + ⌊((⌊(n : ℚ) / 2⌋ : ℚ) / 2 + 1) ^ 2⌋).toNat

end

end A064997.P7121704515716177969

namespace A064997

/-- `A002024(A102214(n)+floor((floor(n/2)/2+1)²))` -/
def P7121704515716177969.Spec : Prop :=
  ∀ n, P7121704515716177969.a n = A064997 (n + 1)

end A064997

/-! ## A064997.P7445259339334482955

`A227568(A071396(n+1))`
-/

namespace A064997.P7445259339334482955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227568 (A071396 (n + 1)).toNat

end

end A064997.P7445259339334482955

namespace A064997

/-- `A227568(A071396(n+1))` -/
def P7445259339334482955.Spec : Prop :=
  ∀ n, P7445259339334482955.a n = A064997 (n + 1)

end A064997

/-! ## A064997.P6814661971849777541

`A172471(A373732(n+1))`
-/

namespace A064997.P6814661971849777541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172471 (A373732 (n + 1)).toNat

end

end A064997.P6814661971849777541

namespace A064997

/-- `A172471(A373732(n+1))` -/
def P6814661971849777541.Spec : Prop :=
  ∀ n, P6814661971849777541.a n = A064997 (n + 1)

end A064997

/-! ## A064997.P8580976044881326660

`A000196(A313054((n+1)²))`
-/

namespace A064997.P8580976044881326660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A313054 ((n + 1) ^ 2)).toNat

end

end A064997.P8580976044881326660

namespace A064997

/-- `A000196(A313054((n+1)²))` -/
def P8580976044881326660.Spec : Prop :=
  ∀ n, P8580976044881326660.a n = A064997 (n + 1)

end A064997

/-!
# A064999: Partial sums of sequence (essentially A002378): 1, 2, 6, 12, 20, 30, 42, 56, 72, 90, ...

The programs for A064999, the canonical program `A064999.P8874839216037770762` is in `Seq.B000.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A064999 has offset 0).

The definition of A064999 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A064999.P8874839216037770762

`n*(n+1)+a(n-1)` with `a(0)=1`

The canonical program, it is in `Seq.B000.C010`.
-/

namespace A064999

/-- `n*(n+1)+a(n-1)` -/
def P8874839216037770762.Spec : Prop :=
  ∀ n, (P8874839216037770762.a n : ℤ) = A064999 n

theorem P8874839216037770762.correct : P8874839216037770762.Spec := by
  intro n
  simp only [A064999]

end A064999

/-! ## A064999.P5874300997582405135

`(n^3+3*n²+2*n+3)/3`
-/

namespace A064999.P5874300997582405135
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n ^ 3 + 3 * n ^ 2 + 2 * n + 3 : ℚ) / 3

end

end A064999.P5874300997582405135

namespace A064999

/-- `(n^3+3*n²+2*n+3)/3` -/
def P5874300997582405135.Spec : Prop :=
  ∀ n, P5874300997582405135.a n = (A064999 n : ℚ)

theorem P5874300997582405135.correct : P5874300997582405135.Spec := by
  intro n
  induction n with
  | zero => simp [A064999, A064999.P5874300997582405135.a, A064999.P8874839216037770762.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
  | succ m ih =>
    simp only [A064999, Nat.add_sub_cancel, A064999.P5874300997582405135.a, A064999.P8874839216037770762.a, SequenceMachineLib.memo_apply] at ih ⊢
    rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
    try simp only [Nat.add_sub_cancel, Nat.lt_add_one, ↓reduceIte]
    try push_cast at ih ⊢
    try linarith

end A064999

/-! ## A064999.P18269869788183346700

`A007290(n+2)+1`
-/

namespace A064999.P18269869788183346700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007290 (n + 2) + 1

end

end A064999.P18269869788183346700

namespace A064999

/-- `A007290(n+2)+1` -/
def P18269869788183346700.Spec : Prop :=
  ∀ n, P18269869788183346700.a n = A064999 n

end A064999

/-! ## A064999.P9721944932325421205

`or(1, ∑[∑[2*n]])`
-/

namespace A064999.P9721944932325421205
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A064999.P9721944932325421205

namespace A064999

/-- `or(1, ∑[∑[2*n]])` -/
def P9721944932325421205.Spec : Prop :=
  ∀ n, (P9721944932325421205.a n : ℤ) = A064999 n

end A064999

/-! ## A064999.P11424975752080716731

`xor(1, ∑[∑[2*n]])`
-/

namespace A064999.P11424975752080716731
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A064999.P11424975752080716731

namespace A064999

/-- `xor(1, ∑[∑[2*n]])` -/
def P11424975752080716731.Spec : Prop :=
  ∀ n, (P11424975752080716731.a n : ℤ) = A064999 n

end A064999

/-! ## A064999.P12449440614513503732

`∑[floor(2/acot(∑[n]))]`
-/

namespace A064999.P12449440614513503732
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊2 / SequenceMachineLib.acot ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A064999.P12449440614513503732

namespace A064999

/-- `∑[floor(2/acot(∑[n]))]` -/
def P12449440614513503732.Spec : Prop :=
  ∀ n, P12449440614513503732.a n = A064999 n

end A064999

/-! ## A064999.P9496044607988697735

`∑[n^ceil(atan(n))+n]`
-/

namespace A064999.P9496044607988697735
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) ^ (⌈Real.arctan (n : ℝ)⌉ : ℤ) + (n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A064999.P9496044607988697735

namespace A064999

/-- `∑[n^ceil(atan(n))+n]` -/
def P9496044607988697735.Spec : Prop :=
  ∀ n, P9496044607988697735.a n = (A064999 n : ℚ)

end A064999

/-! ## A064999.P9097267680604783258

`Δ[2*C(n+2, 4)+n]`
-/

namespace A064999.P9097267680604783258
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * Nat.choose (n + 2) 4 + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A064999.P9097267680604783258

namespace A064999

/-- `Δ[2*C(n+2, 4)+n]` -/
def P9097267680604783258.Spec : Prop :=
  ∀ n, P9097267680604783258.a n = A064999 n

end A064999

/-! ## A064999.P13805648872223808477

`a(n-1)+n²+n` with `a(0)=1`
-/

namespace A064999.P13805648872223808477
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (n ^ 2 + n)

end

end A064999.P13805648872223808477

namespace A064999

/-- `a(n-1)+n²+n` -/
def P13805648872223808477.Spec : Prop :=
  ∀ n, (P13805648872223808477.a n : ℤ) = A064999 n

end A064999

/-! ## A064999.P13355725490860426738

`∑[n^(2%(n+1))+n]`
-/

namespace A064999.P13355725490860426738
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ (2 % (n + 1)) + n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A064999.P13355725490860426738

namespace A064999

/-- `∑[n^(2%(n+1))+n]` -/
def P13355725490860426738.Spec : Prop :=
  ∀ n, (P13355725490860426738.a n : ℤ) = A064999 n

end A064999

/-! ## A064999.P1804538856700044935

`∑[∑[a(n-1)+2]]` with `a(0)=1, a(1)=1, a(2)=4`
-/

namespace A064999.P1804538856700044935
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 4] fun n f2 =>
  f2 (n - 1) + 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A064999.P1804538856700044935

namespace A064999

/-- `∑[∑[a(n-1)+2]]` -/
def P1804538856700044935.Spec : Prop :=
  ∀ n, (P1804538856700044935.a n : ℤ) = A064999 n

end A064999

/-! ## A064999.P12618829410814573150

`∑[(C(2, n+2)+n)²+n]`
-/

namespace A064999.P12618829410814573150
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (Nat.choose 2 (n + 2) + n) ^ 2 + n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A064999.P12618829410814573150

namespace A064999

/-- `∑[(C(2, n+2)+n)²+n]` -/
def P12618829410814573150.Spec : Prop :=
  ∀ n, (P12618829410814573150.a n : ℤ) = A064999 n

end A064999

/-! ## A064999.P640273618569730046

`∑[2*n²-a(n-1)]` with `a(0)=1, a(1)=2`
-/

namespace A064999.P640273618569730046
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n f1 =>
  (2 * n ^ 2 : ℤ) - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A064999.P640273618569730046

namespace A064999

/-- `∑[2*n²-a(n-1)]` -/
def P640273618569730046.Spec : Prop :=
  ∀ n, P640273618569730046.a n = A064999 n

end A064999

/-! ## A064999.P11679201444902179311

`abs(or(1, ∑[(n+1)²-(n+1)]))`
-/

namespace A064999.P11679201444902179311
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℤ) - (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.lor 1 (∑ j ∈ Finset.range (n + 1), f1 j)|

end

end A064999.P11679201444902179311

namespace A064999

/-- `abs(or(1, ∑[(n+1)²-(n+1)]))` -/
def P11679201444902179311.Spec : Prop :=
  ∀ n, P11679201444902179311.a n = A064999 n

end A064999

/-! ## A064999.P11023757892374660869

`abs(xor(1, ∑[(n+1)²-(n+1)]))`
-/

namespace A064999.P11023757892374660869
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℤ) - (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.xor 1 (∑ j ∈ Finset.range (n + 1), f1 j)|

end

end A064999.P11023757892374660869

namespace A064999

/-- `abs(xor(1, ∑[(n+1)²-(n+1)]))` -/
def P11023757892374660869.Spec : Prop :=
  ∀ n, P11023757892374660869.a n = A064999 n

end A064999

/-! ## A064999.P16529157490156461151

`∑[C(2, n+2)+lcm(n, n+1)]`
-/

namespace A064999.P16529157490156461151
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 2 (n + 2) + Nat.lcm n (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A064999.P16529157490156461151

namespace A064999

/-- `∑[C(2, n+2)+lcm(n, n+1)]` -/
def P16529157490156461151.Spec : Prop :=
  ∀ n, (P16529157490156461151.a n : ℤ) = A064999 n

end A064999

/-! ## A064999.P17976561619834777440

`∑[2-∑[C(n, n²)-2*n]]`
-/

namespace A064999.P17976561619834777440
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose n (n ^ 2) : ℤ) - (2 * n : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A064999.P17976561619834777440

namespace A064999

/-- `∑[2-∑[C(n, n²)-2*n]]` -/
def P17976561619834777440.Spec : Prop :=
  ∀ n, P17976561619834777440.a n = A064999 n

end A064999

/-! ## A064999.P13670700052825526819

`∑[3*n-(n-a(n-1))]` with `a(0)=1, a(1)=2`
-/

namespace A064999.P13670700052825526819
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n f1 =>
  (3 * n : ℤ) - ((n : ℤ) - f1 (n - 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A064999.P13670700052825526819

namespace A064999

/-- `∑[3*n-(n-a(n-1))]` -/
def P13670700052825526819.Spec : Prop :=
  ∀ n, P13670700052825526819.a n = A064999 n

end A064999

/-! ## A064999.P16965829786254017720

`∑[n²-(a(n-1)-n²)]` with `a(0)=1, a(1)=2`
-/

namespace A064999.P16965829786254017720
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n f1 =>
  (n ^ 2 : ℤ) - (f1 (n - 1) - (n ^ 2 : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A064999.P16965829786254017720

namespace A064999

/-- `∑[n²-(a(n-1)-n²)]` -/
def P16965829786254017720.Spec : Prop :=
  ∀ n, P16965829786254017720.a n = A064999 n

end A064999

/-! ## A064999.P18381338760967086147

`∑[(n+1)²-(n+1)%(n+1)²]`
-/

namespace A064999.P18381338760967086147
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℤ) - (((n + 1) % (n + 1) ^ 2 : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A064999.P18381338760967086147

namespace A064999

/-- `∑[(n+1)²-(n+1)%(n+1)²]` -/
def P18381338760967086147.Spec : Prop :=
  ∀ n, P18381338760967086147.a n = A064999 n

end A064999

