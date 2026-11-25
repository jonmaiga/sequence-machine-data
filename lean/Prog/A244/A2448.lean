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
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C037
import Seq.B000.C038
import Seq.B000.C040
import Seq.B000.C041
import Seq.B000.C043
import Seq.B000.C044
import Seq.B000.C045
import Seq.B000.C046
import Seq.B000.C049
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C004
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C009
import Seq.B001.C010
import Seq.B001.C011
import Seq.B001.C012
import Seq.B001.C013
import Seq.B001.C014
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
import Seq.B003.C003
import Seq.B003.C005
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C000
import Seq.B006.C001
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
# A244800: Number of moduli m such that (prime(n) mod m) is even, where 1 <= m < prime(n).

The programs for A244800, there is no canonical definition to state claims against.
-/

/-! ## A244800.P6157860222348156115

`Δ[A007504(n)]-A244799(n+1)`
-/

namespace A244800.P6157860222348156115
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A244799 (n + 1)

end

end A244800.P6157860222348156115

/-! ## A244800.P5080287978388428248

`p?[A014681(n)]-A244799(n+1)`
-/

namespace A244800.P5080287978388428248
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014681 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - A244799 (n + 1)

end

end A244800.P5080287978388428248

/-! ## A244800.P14127483339511710791

`A000040(1+n)-A244799(n+1)`
-/

namespace A244800.P14127483339511710791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (1 + n) - A244799 (n + 1)

end

end A244800.P14127483339511710791

/-! ## A244800.P4361980087167565330

`A008578(n+2)-A244799(n+1)`
-/

namespace A244800.P4361980087167565330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 2) - A244799 (n + 1)

end

end A244800.P4361980087167565330

/-! ## A244800.P9620750195430989902

`p?[A000961(n+1)]-A244799(n+1)`
-/

namespace A244800.P9620750195430989902
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000961 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - A244799 (n + 1)

end

end A244800.P9620750195430989902

/-! ## A244800.P808774847780177414

`p?[A210882(n+1)]-A244799(n+1)`
-/

namespace A244800.P808774847780177414
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210882 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - A244799 (n + 1)

end

end A244800.P808774847780177414

/-! ## A244800.P7514200585518208193

`p?[(n+1)*A001222(n+1)]-A244799(n+1)`
-/

namespace A244800.P7514200585518208193
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A001222 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - A244799 (n + 1)

end

end A244800.P7514200585518208193

/-! ## A244800.P15390324014130892099

`record[A052369(n+1)]-A244799(n+1)`
-/

namespace A244800.P15390324014130892099
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052369 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A244799 (n + 1)

end

end A244800.P15390324014130892099

/-! ## A244800.P16115540859262979580

`p?[A302026(n+1)]-A244799(n+1)`
-/

namespace A244800.P16115540859262979580
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302026 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - A244799 (n + 1)

end

end A244800.P16115540859262979580

/-! ## A244800.P9507516325817931047

`A332801(A000040(n+1))+2`
-/

namespace A244800.P9507516325817931047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332801 (A000040 (n + 1)).toNat + 2

end

end A244800.P9507516325817931047

/-! ## A244800.P1432043435012678558

`A332801(record[A020639(n+2)])+2`
-/

namespace A244800.P1432043435012678558
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332801 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat + 2

end

end A244800.P1432043435012678558

/-!
# A244801: Smallest m such that for the prime p = prime(n) the congruence F_(p-(p/5)) == mp (mod p^2) holds (i.e., smallest m such that prime(n) is a near-Wall-Sun-Sun prime), where F_k is the k-th Fibonacci number and (p/5) is the Legendre symbol.

The programs for A244801, there is no canonical definition to state claims against.
-/

/-! ## A244801.P18097736218086142453

`A113650(n+1)/A000040(n+1)`
-/

namespace A244801.P18097736218086142453
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A113650 (n + 1) : ℚ) / (A000040 (n + 1) : ℚ)

end

end A244801.P18097736218086142453

/-! ## A244801.P17156204350616521438

`(n+1)/A033286(n+1)*A113650(n+1)`
-/

namespace A244801.P17156204350616521438
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A033286 (n + 1) : ℚ) * (A113650 (n + 1) : ℚ)

end

end A244801.P17156204350616521438

/-! ## A244801.P7207568645476602924

`A113650(1+n)/A008578(n+2)`
-/

namespace A244801.P7207568645476602924
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A113650 (1 + n) : ℚ) / (A008578 (n + 2) : ℚ)

end

end A244801.P7207568645476602924

/-! ## A244801.P8099206478013947753

`A113650(n+1)/p?[A000961(n+1)]`
-/

namespace A244801.P8099206478013947753
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000961 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A113650 (n + 1) : ℚ) / (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) : ℚ)

end

end A244801.P8099206478013947753

/-! ## A244801.P5468312879359699946

`A113650(1+n)/record[A006530(n+2)]`
-/

namespace A244801.P5468312879359699946
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A113650 (1 + n) : ℚ) / (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℚ)

end

end A244801.P5468312879359699946

/-! ## A244801.P6691591257822268129

`A113650(n+1)/record[A020639(n+2)]`
-/

namespace A244801.P6691591257822268129
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A113650 (n + 1) : ℚ) / (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℚ)

end

end A244801.P6691591257822268129

/-! ## A244801.P6456061538039267989

`A113650(n+1)/p?[(n+1)*A001222(n+1)]`
-/

namespace A244801.P6456061538039267989
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A001222 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A113650 (n + 1) : ℚ) / (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) : ℚ)

end

end A244801.P6456061538039267989

/-! ## A244801.P2544323059352613106

`A113650(n+1)/p?[A326066(n+1)]`
-/

namespace A244801.P2544323059352613106
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326066 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A113650 (n + 1) : ℚ) / (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) : ℚ)

end

end A244801.P2544323059352613106

/-! ## A244801.P9555096438753618771

`A113649(A182986(n+2))/A182986(n+2)`
-/

namespace A244801.P9555096438753618771
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A113649 (A182986 (n + 2)).toNat : ℚ) / (A182986 (n + 2) : ℚ)

end

end A244801.P9555096438753618771

/-! ## A244801.P9189510401435265183

`A113650(n+1)/p?[A117909(n)]`
-/

namespace A244801.P9189510401435265183
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117909 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A113650 (n + 1) : ℚ) / (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) : ℚ)

end

end A244801.P9189510401435265183

/-! ## A244801.P14156000169265088868

`A113650(n+1)/p?[A000463(n+1)]`
-/

namespace A244801.P14156000169265088868
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000463 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A113650 (n + 1) : ℚ) / (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) : ℚ)

end

end A244801.P14156000169265088868

/-!
# A244802: The 60-degree spoke (or ray) of a hexagonal spiral of Ulam.

The programs for A244802, the canonical program `A244802.P1468068994303542896` is in `Seq.B000.C037`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A244802 has offset 1).

The definition of A244802 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A244802.P18092166190275764112

`ogf((1+7x+16x^2)/(1-3x+3x^2-x^3))`
-/

namespace A244802.P18092166190275764112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 7, 16] [1, -3, 3, -1] n

end

end A244802.P18092166190275764112

namespace A244802

/-- `ogf((1+7x+16x^2)/(1-3x+3x^2-x^3))` -/
def P18092166190275764112.Spec : Prop :=
  ∀ n, P18092166190275764112.a n = A244802 (n + 1)

end A244802

/-! ## A244802.P1468068994303542896

`12*(n+1)²-27*(n+1)+16`

The canonical program, it is in `Seq.B000.C037`.
-/

namespace A244802

/-- `12*(n+1)²-27*(n+1)+16` -/
def P1468068994303542896.Spec : Prop :=
  ∀ n, P1468068994303542896.a n = A244802 (n + 1)

theorem P1468068994303542896.correct : P1468068994303542896.Spec := by
  intro n
  simp only [A244802, Nat.add_sub_cancel]

end A244802

/-! ## A244802.P10804238914518395384

`3*a(n-1)-3*a(n-2)+a(n-3)` with `a(0)=1, a(1)=10, a(2)=43`
-/

namespace A244802.P10804238914518395384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 10, 43] fun n a =>
  3 * a (n - 1) - 3 * a (n - 2) + a (n - 3)

end

end A244802.P10804238914518395384

namespace A244802

/-- `3*a(n-1)-3*a(n-2)+a(n-3)` -/
def P10804238914518395384.Spec : Prop :=
  ∀ n, P10804238914518395384.a n = A244802 (n + 1)

theorem P10804238914518395384.correct : P10804238914518395384.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 =>
      simp [A244802, Nat.add_sub_cancel, A244802.P10804238914518395384.a, A244802.P1468068994303542896.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 3 =>
      have h1 := ih (m + 2) (by omega)
      have h2 := ih (m + 1) (by omega)
      have h3 := ih m (by omega)
      simp only [A244802, Nat.add_sub_cancel, A244802.P10804238914518395384.a, A244802.P1468068994303542896.a, SequenceMachineLib.memo_apply] at h1 h2 h3 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 3 - 1 = m + 2 by omega, show m + 3 - 2 = m + 1 by omega, show m + 3 - 3 = m by omega, show m + 2 < m + 3 by omega, show m + 1 < m + 3 by omega, show m < m + 3 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 ⊢
      rw [h1, h2, h3]
      first | ring1 | ring_nf | (field_simp; (first | ring1 | ring_nf)) | omega | (push_cast; ring_nf) | nlinarith

end A244802

/-! ## A244802.P16492313393362048056

`∑[24+a(n-1)]` with `a(0)=1, a(1)=9`
-/

namespace A244802.P16492313393362048056
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 9] fun n f1 =>
  24 + f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A244802.P16492313393362048056

namespace A244802

/-- `∑[24+a(n-1)]` -/
def P16492313393362048056.Spec : Prop :=
  ∀ n, (P16492313393362048056.a n : ℤ) = A244802 (n + 1)

end A244802

/-! ## A244802.P16904502277417368972

`C(5*n, 2)+1-∑[n]`
-/

namespace A244802.P16904502277417368972
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (5 * n) 2 + 1 : ℤ) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A244802.P16904502277417368972

namespace A244802

/-- `C(5*n, 2)+1-∑[n]` -/
def P16904502277417368972.Spec : Prop :=
  ∀ n, P16904502277417368972.a n = A244802 (n + 1)

end A244802

/-! ## A244802.P6239292747433855166

`C(5*n, 2)-(∑[n]-1)`
-/

namespace A244802.P6239292747433855166
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (5 * n) 2 : ℤ) - (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 1)

end

end A244802.P6239292747433855166

namespace A244802

/-- `C(5*n, 2)-(∑[n]-1)` -/
def P6239292747433855166.Spec : Prop :=
  ∀ n, P6239292747433855166.a n = A244802 (n + 1)

end A244802

/-! ## A244802.P5283466526998057618

`-xor(n*(12*n-3), -1)`
-/

namespace A244802.P5283466526998057618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -Int.xor ((n : ℤ) * ((12 * n : ℤ) - 3)) (-1)

end

end A244802.P5283466526998057618

namespace A244802

/-- `-xor(n*(12*n-3), -1)` -/
def P5283466526998057618.Spec : Prop :=
  ∀ n, P5283466526998057618.a n = A244802 (n + 1)

end A244802

/-! ## A244802.P17192115436122672207

`3/2*C(4*n, 2)+1`
-/

namespace A244802.P17192115436122672207
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 : ℚ) / 2 * (Nat.choose (4 * n) 2 : ℚ) + 1

end

end A244802.P17192115436122672207

namespace A244802

/-- `3/2*C(4*n, 2)+1` -/
def P17192115436122672207.Spec : Prop :=
  ∀ n, P17192115436122672207.a n = (A244802 (n + 1) : ℚ)

theorem P17192115436122672207.correct : P17192115436122672207.Spec := by
  intro n
  simp only [A244802, Nat.add_sub_cancel, A244802.P17192115436122672207.a, A244802.P1468068994303542896.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A244802

/-! ## A244802.P5419309394792328688

`(xor(1, 12*n)-4)*n+1`
-/

namespace A244802.P5419309394792328688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((Nat.xor 1 (12 * n) : ℤ) - 4) * (n : ℤ) + 1

end

end A244802.P5419309394792328688

namespace A244802

/-- `(xor(1, 12*n)-4)*n+1` -/
def P5419309394792328688.Spec : Prop :=
  ∀ n, P5419309394792328688.a n = A244802 (n + 1)

end A244802

/-! ## A244802.P8918475124257029513

`∑{#}[1, C((12*n-3)*n, #)]`
-/

namespace A244802.P8918475124257029513
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), Nat.choose (((12 * n : ℤ) - 3) * (n : ℤ)).toNat k

end

end A244802.P8918475124257029513

namespace A244802

/-- `∑{#}[1, C((12*n-3)*n, #)]` -/
def P8918475124257029513.Spec : Prop :=
  ∀ n, (P8918475124257029513.a n : ℤ) = A244802 (n + 1)

end A244802

/-! ## A244802.P15000427017984082181

`8*(C(n, 2)+n²)+n+1`
-/

namespace A244802.P15000427017984082181
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8 * (Nat.choose n 2 + n ^ 2) + (n + 1)

end

end A244802.P15000427017984082181

namespace A244802

/-- `8*(C(n, 2)+n²)+n+1` -/
def P15000427017984082181.Spec : Prop :=
  ∀ n, (P15000427017984082181.a n : ℤ) = A244802 (n + 1)

theorem P15000427017984082181.correct : P15000427017984082181.Spec := by
  intro n
  simp only [A244802, Nat.add_sub_cancel, A244802.P15000427017984082181.a, A244802.P1468068994303542896.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A244802

/-! ## A244802.P10927257934469015971

`3*(3*n+8*C(n, 2))+1`
-/

namespace A244802.P10927257934469015971
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * (3 * n + 8 * Nat.choose n 2) + 1

end

end A244802.P10927257934469015971

namespace A244802

/-- `3*(3*n+8*C(n, 2))+1` -/
def P10927257934469015971.Spec : Prop :=
  ∀ n, (P10927257934469015971.a n : ℤ) = A244802 (n + 1)

theorem P10927257934469015971.correct : P10927257934469015971.Spec := by
  intro n
  simp only [A244802, Nat.add_sub_cancel, A244802.P10927257934469015971.a, A244802.P1468068994303542896.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A244802

/-! ## A244802.P15505676689104298325

`a(n-1)+3*(8*n-5)` with `a(0)=1`
-/

namespace A244802.P15505676689104298325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + 3 * ((8 * n : ℤ) - 5)

end

end A244802.P15505676689104298325

namespace A244802

/-- `a(n-1)+3*(8*n-5)` -/
def P15505676689104298325.Spec : Prop :=
  ∀ n, P15505676689104298325.a n = A244802 (n + 1)

theorem P15505676689104298325.correct : P15505676689104298325.Spec := by
  intro n
  induction n with
  | zero => simp [A244802, A244802.P15505676689104298325.a, A244802.P1468068994303542896.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
  | succ m ih =>
    simp only [A244802, Nat.add_sub_cancel, A244802.P15505676689104298325.a, A244802.P1468068994303542896.a, SequenceMachineLib.memo_apply] at ih ⊢
    rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
    try simp only [Nat.add_sub_cancel, Nat.lt_add_one, ↓reduceIte]
    try push_cast at ih ⊢
    try linarith

end A244802

/-! ## A244802.P14509147245381817585

`abs(∑[n]-A081587(n))`
-/

namespace A244802.P14509147245381817585
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - A081587 n|

end

end A244802.P14509147245381817585

namespace A244802

/-- `abs(∑[n]-A081587(n))` -/
def P14509147245381817585.Spec : Prop :=
  ∀ n, P14509147245381817585.a n = A244802 (n + 1)

end A244802

/-! ## A244802.P17429319887952497598

`abs(n-(A185918(n)+2))`
-/

namespace A244802.P17429319887952497598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(n : ℤ) - (A185918 n + 2)|

end

end A244802.P17429319887952497598

namespace A244802

/-- `abs(n-(A185918(n)+2))` -/
def P17429319887952497598.Spec : Prop :=
  ∀ n, P17429319887952497598.a n = A244802 (n + 1)

end A244802

/-! ## A244802.P1407813603934582507

`abs(11*n-A014641(n))`
-/

namespace A244802.P1407813603934582507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(11 * n : ℤ) - A014641 n|

end

end A244802.P1407813603934582507

namespace A244802

/-- `abs(11*n-A014641(n))` -/
def P1407813603934582507.Spec : Prop :=
  ∀ n, P1407813603934582507.a n = A244802 (n + 1)

end A244802

/-! ## A244802.P14835940284807448882

`ceil(A174371(n)/3+n)`
-/

namespace A244802.P14835940284807448882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A174371 n : ℚ) / 3 + (n : ℚ)⌉

end

end A244802.P14835940284807448882

namespace A244802

/-- `ceil(A174371(n)/3+n)` -/
def P14835940284807448882.Spec : Prop :=
  ∀ n, P14835940284807448882.a n = A244802 (n + 1)

end A244802

/-!
# A244803: The 360 degree spoke (or ray) of a hexagonal spiral of Ulam.

The programs for A244803, the canonical program `A244803.P8350523515693649205` is in `Seq.B000.C037`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A244803 has offset 1).

The definition of A244803 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A244803.P10046806196662666727

`ogf((1+9x+14x^2)/(1-3x+3x^2-x^3))`
-/

namespace A244803.P10046806196662666727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 9, 14] [1, -3, 3, -1] n

end

end A244803.P10046806196662666727

namespace A244803

/-- `ogf((1+9x+14x^2)/(1-3x+3x^2-x^3))` -/
def P10046806196662666727.Spec : Prop :=
  ∀ n, P10046806196662666727.a n = A244803 (n + 1)

end A244803

/-! ## A244803.P8350523515693649205

`12*(n+1)²-25*(n+1)+14`

The canonical program, it is in `Seq.B000.C037`.
-/

namespace A244803

/-- `12*(n+1)²-25*(n+1)+14` -/
def P8350523515693649205.Spec : Prop :=
  ∀ n, P8350523515693649205.a n = A244803 (n + 1)

theorem P8350523515693649205.correct : P8350523515693649205.Spec := by
  intro n
  simp only [A244803, Nat.add_sub_cancel]

end A244803

/-! ## A244803.P8110428379346793079

`3*a(n-1)-3*a(n-2)+a(n-3)` with `a(0)=1, a(1)=12, a(2)=47`
-/

namespace A244803.P8110428379346793079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 12, 47] fun n a =>
  3 * a (n - 1) - 3 * a (n - 2) + a (n - 3)

end

end A244803.P8110428379346793079

namespace A244803

/-- `3*a(n-1)-3*a(n-2)+a(n-3)` -/
def P8110428379346793079.Spec : Prop :=
  ∀ n, P8110428379346793079.a n = A244803 (n + 1)

theorem P8110428379346793079.correct : P8110428379346793079.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 =>
      simp [A244803, Nat.add_sub_cancel, A244803.P8110428379346793079.a, A244803.P8350523515693649205.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 3 =>
      have h1 := ih (m + 2) (by omega)
      have h2 := ih (m + 1) (by omega)
      have h3 := ih m (by omega)
      simp only [A244803, Nat.add_sub_cancel, A244803.P8110428379346793079.a, A244803.P8350523515693649205.a, SequenceMachineLib.memo_apply] at h1 h2 h3 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 3 - 1 = m + 2 by omega, show m + 3 - 2 = m + 1 by omega, show m + 3 - 3 = m by omega, show m + 2 < m + 3 by omega, show m + 1 < m + 3 by omega, show m < m + 3 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 ⊢
      rw [h1, h2, h3]
      first | ring1 | ring_nf | (field_simp; (first | ring1 | ring_nf)) | omega | (push_cast; ring_nf) | nlinarith

end A244803

/-! ## A244803.P9758637360510102373

`or(1, 12*n²)-n`
-/

namespace A244803.P9758637360510102373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.lor 1 (12 * n ^ 2) : ℤ) - (n : ℤ)

end

end A244803.P9758637360510102373

namespace A244803

/-- `or(1, 12*n²)-n` -/
def P9758637360510102373.Spec : Prop :=
  ∀ n, P9758637360510102373.a n = A244803 (n + 1)

end A244803

/-! ## A244803.P9350685664854524857

`xor(1, 12*n²)-n`
-/

namespace A244803.P9350685664854524857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.xor 1 (12 * n ^ 2) : ℤ) - (n : ℤ)

end

end A244803.P9350685664854524857

namespace A244803

/-- `xor(1, 12*n²)-n` -/
def P9350685664854524857.Spec : Prop :=
  ∀ n, P9350685664854524857.a n = A244803 (n + 1)

end A244803

/-! ## A244803.P4799127607872121731

`C(12*n, 2)/6+1`
-/

namespace A244803.P4799127607872121731
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.choose (12 * n) 2 : ℚ) / 6 + 1

end

end A244803.P4799127607872121731

namespace A244803

/-- `C(12*n, 2)/6+1` -/
def P4799127607872121731.Spec : Prop :=
  ∀ n, P4799127607872121731.a n = (A244803 (n + 1) : ℚ)

theorem P4799127607872121731.correct : P4799127607872121731.Spec := by
  intro n
  simp only [A244803, Nat.add_sub_cancel, A244803.P4799127607872121731.a, A244803.P8350523515693649205.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A244803

/-! ## A244803.P1776567726362216084

`∑[24+a(n-1)]` with `a(0)=1, a(1)=11`
-/

namespace A244803.P1776567726362216084
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 11] fun n f1 =>
  24 + f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A244803.P1776567726362216084

namespace A244803

/-- `∑[24+a(n-1)]` -/
def P1776567726362216084.Spec : Prop :=
  ∀ n, (P1776567726362216084.a n : ℤ) = A244803 (n + 1)

end A244803

/-! ## A244803.P12144570127664525385

`lcm(1-12*n, n)+1`
-/

namespace A244803.P12144570127664525385
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (1 - (12 * n : ℤ)) (n : ℤ) + 1

end

end A244803.P12144570127664525385

namespace A244803

/-- `lcm(1-12*n, n)+1` -/
def P12144570127664525385.Spec : Prop :=
  ∀ n, (P12144570127664525385.a n : ℤ) = A244803 (n + 1)

end A244803

/-! ## A244803.P6806190603393246464

`floor(3/acot(2*n)²-n)`
-/

namespace A244803.P6806190603393246464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊3 / SequenceMachineLib.acot (2 * n : ℝ) ^ 2 - (n : ℝ)⌋

end

end A244803.P6806190603393246464

namespace A244803

/-- `floor(3/acot(2*n)²-n)` -/
def P6806190603393246464.Spec : Prop :=
  ∀ n, P6806190603393246464.a n = A244803 (n + 1)

end A244803

/-! ## A244803.P573198710618600858

`Δ[Δ[(1-n)²²]-C(n+1, 2)]`
-/

namespace A244803.P573198710618600858
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((1 - (n : ℤ)) ^ 2) ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n - (Nat.choose (n + 1) 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A244803.P573198710618600858

namespace A244803

/-- `Δ[Δ[(1-n)²²]-C(n+1, 2)]` -/
def P573198710618600858.Spec : Prop :=
  ∀ n, P573198710618600858.a n = A244803 (n + 1)

theorem P573198710618600858.correct : P573198710618600858.Spec := by
  intro n
  simp only [A244803, Nat.add_sub_cancel, A244803.P573198710618600858.f2, A244803.P573198710618600858.f1, A244803.P573198710618600858.a, A244803.P8350523515693649205.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A244803

/-! ## A244803.P10938722274531043567

`abs(n-A158480(n))`
-/

namespace A244803.P10938722274531043567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(n : ℤ) - A158480 n|

end

end A244803.P10938722274531043567

namespace A244803

/-- `abs(n-A158480(n))` -/
def P10938722274531043567.Spec : Prop :=
  ∀ n, P10938722274531043567.a n = A244803 (n + 1)

end A244803

/-! ## A244803.P4065334927989214171

`abs(n-(A135453(n)+1))`
-/

namespace A244803.P4065334927989214171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(n : ℤ) - (A135453 n + 1)|

end

end A244803.P4065334927989214171

namespace A244803

/-- `abs(n-(A135453(n)+1))` -/
def P4065334927989214171.Spec : Prop :=
  ∀ n, P4065334927989214171.a n = A244803 (n + 1)

end A244803

/-! ## A244803.P9510041424290840292

`abs(n-(A158463(n)+2))`
-/

namespace A244803.P9510041424290840292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(n : ℤ) - (A158463 n + 2)|

end

end A244803.P9510041424290840292

namespace A244803

/-- `abs(n-(A158463(n)+2))` -/
def P9510041424290840292.Spec : Prop :=
  ∀ n, P9510041424290840292.a n = A244803 (n + 1)

end A244803

/-! ## A244803.P11942654290848833083

`ceil(A010014(n)/2-n)`
-/

namespace A244803.P11942654290848833083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A010014 n : ℚ) / 2 - (n : ℚ)⌉

end

end A244803.P11942654290848833083

namespace A244803

/-- `ceil(A010014(n)/2-n)` -/
def P11942654290848833083.Spec : Prop :=
  ∀ n, P11942654290848833083.a n = A244803 (n + 1)

end A244803

/-! ## A244803.P3799833966175408032

`ceil(A158547(n)/2-n)`
-/

namespace A244803.P3799833966175408032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A158547 n : ℚ) / 2 - (n : ℚ)⌉

end

end A244803.P3799833966175408032

namespace A244803

/-- `ceil(A158547(n)/2-n)` -/
def P3799833966175408032.Spec : Prop :=
  ∀ n, P3799833966175408032.a n = A244803 (n + 1)

end A244803

/-! ## A244803.P8694226284286752081

`abs(2*n-A244804(n+1))`
-/

namespace A244803.P8694226284286752081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(2 * n : ℤ) - A244804 (n + 1)|

end

end A244803.P8694226284286752081

namespace A244803

/-- `abs(2*n-A244804(n+1))` -/
def P8694226284286752081.Spec : Prop :=
  ∀ n, P8694226284286752081.a n = A244803 (n + 1)

end A244803

/-! ## A244803.P695642895006937974

`3*∩[2*n, n²]-(n-1)`
-/

namespace A244803.P695642895006937974
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 * SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = x) n : ℤ) - ((n : ℤ) - 1)

end

end A244803.P695642895006937974

namespace A244803

/-- `3*∩[2*n, n²]-(n-1)` -/
def P695642895006937974.Spec : Prop :=
  ∀ n, P695642895006937974.a n = A244803 (n + 1)

end A244803

/-!
# A244804: The 300-degree spoke (or ray) of a hexagonal spiral of Ulam.

The programs for A244804, the canonical program `A244804.P18087651801228786928` is in `Seq.B000.C037`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A244804 has offset 1).

The definition of A244804 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A244804.P3101456009722004147

`ogf((1+11x+12x^2)/(1-3x+3x^2-x^3))`
-/

namespace A244804.P3101456009722004147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 11, 12] [1, -3, 3, -1] n

end

end A244804.P3101456009722004147

namespace A244804

/-- `ogf((1+11x+12x^2)/(1-3x+3x^2-x^3))` -/
def P3101456009722004147.Spec : Prop :=
  ∀ n, P3101456009722004147.a n = A244804 (n + 1)

end A244804

/-! ## A244804.P18087651801228786928

`12*(n+1)²-23*(n+1)+12`

The canonical program, it is in `Seq.B000.C037`.
-/

namespace A244804

/-- `12*(n+1)²-23*(n+1)+12` -/
def P18087651801228786928.Spec : Prop :=
  ∀ n, P18087651801228786928.a n = A244804 (n + 1)

theorem P18087651801228786928.correct : P18087651801228786928.Spec := by
  intro n
  simp only [A244804, Nat.add_sub_cancel]

end A244804

/-! ## A244804.P14740852821281162805

`3*a(n-1)-3*a(n-2)+a(n-3)` with `a(0)=1, a(1)=14, a(2)=51`
-/

namespace A244804.P14740852821281162805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 14, 51] fun n a =>
  3 * a (n - 1) - 3 * a (n - 2) + a (n - 3)

end

end A244804.P14740852821281162805

namespace A244804

/-- `3*a(n-1)-3*a(n-2)+a(n-3)` -/
def P14740852821281162805.Spec : Prop :=
  ∀ n, P14740852821281162805.a n = A244804 (n + 1)

theorem P14740852821281162805.correct : P14740852821281162805.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 =>
      simp [A244804, Nat.add_sub_cancel, A244804.P14740852821281162805.a, A244804.P18087651801228786928.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 3 =>
      have h1 := ih (m + 2) (by omega)
      have h2 := ih (m + 1) (by omega)
      have h3 := ih m (by omega)
      simp only [A244804, Nat.add_sub_cancel, A244804.P14740852821281162805.a, A244804.P18087651801228786928.a, SequenceMachineLib.memo_apply] at h1 h2 h3 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 3 - 1 = m + 2 by omega, show m + 3 - 2 = m + 1 by omega, show m + 3 - 3 = m by omega, show m + 2 < m + 3 by omega, show m + 1 < m + 3 by omega, show m < m + 3 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 ⊢
      rw [h1, h2, h3]
      first | ring1 | ring_nf | (field_simp; (first | ring1 | ring_nf)) | omega | (push_cast; ring_nf) | nlinarith

end A244804

/-! ## A244804.P1407385373528842369

`or(1, 12*n²)+n`
-/

namespace A244804.P1407385373528842369
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (12 * n ^ 2) + n

end

end A244804.P1407385373528842369

namespace A244804

/-- `or(1, 12*n²)+n` -/
def P1407385373528842369.Spec : Prop :=
  ∀ n, (P1407385373528842369.a n : ℤ) = A244804 (n + 1)

end A244804

/-! ## A244804.P14656344977417916309

`xor(1, 12*n²)+n`
-/

namespace A244804.P14656344977417916309
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 (12 * n ^ 2) + n

end

end A244804.P14656344977417916309

namespace A244804

/-- `xor(1, 12*n²)+n` -/
def P14656344977417916309.Spec : Prop :=
  ∀ n, (P14656344977417916309.a n : ℤ) = A244804 (n + 1)

end A244804

/-! ## A244804.P4013801068086456857

`∑[a(n-1)+24]` with `a(0)=1, a(1)=13`
-/

namespace A244804.P4013801068086456857
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 13] fun n f1 =>
  f1 (n - 1) + 24

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A244804.P4013801068086456857

namespace A244804

/-- `∑[a(n-1)+24]` -/
def P4013801068086456857.Spec : Prop :=
  ∀ n, (P4013801068086456857.a n : ℤ) = A244804 (n + 1)

end A244804

/-! ## A244804.P2202282471013614295

`lcm(12*n+1, n)+1`
-/

namespace A244804.P2202282471013614295
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm (12 * n + 1) n + 1

end

end A244804.P2202282471013614295

namespace A244804

/-- `lcm(12*n+1, n)+1` -/
def P2202282471013614295.Spec : Prop :=
  ∀ n, (P2202282471013614295.a n : ℤ) = A244804 (n + 1)

end A244804

/-! ## A244804.P16950284648154566792

`or(1, 12*n)*n+1`
-/

namespace A244804.P16950284648154566792
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (12 * n) * n + 1

end

end A244804.P16950284648154566792

namespace A244804

/-- `or(1, 12*n)*n+1` -/
def P16950284648154566792.Spec : Prop :=
  ∀ n, (P16950284648154566792.a n : ℤ) = A244804 (n + 1)

end A244804

/-! ## A244804.P7104317324963904276

`24*n+a(n-1)-11` with `a(0)=1`
-/

namespace A244804.P7104317324963904276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (24 * n : ℤ) + a (n - 1) - 11

end

end A244804.P7104317324963904276

namespace A244804

/-- `24*n+a(n-1)-11` -/
def P7104317324963904276.Spec : Prop :=
  ∀ n, P7104317324963904276.a n = A244804 (n + 1)

theorem P7104317324963904276.correct : P7104317324963904276.Spec := by
  intro n
  induction n with
  | zero => simp [A244804, A244804.P7104317324963904276.a, A244804.P18087651801228786928.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
  | succ m ih =>
    simp only [A244804, Nat.add_sub_cancel, A244804.P7104317324963904276.a, A244804.P18087651801228786928.a, SequenceMachineLib.memo_apply] at ih ⊢
    rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
    try simp only [Nat.add_sub_cancel, Nat.lt_add_one, ↓reduceIte]
    try push_cast at ih ⊢
    try linarith

end A244804

/-! ## A244804.P9193987540855542184

`abs(n-A194454(n))`
-/

namespace A244804.P9193987540855542184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(n : ℤ) - A194454 n|

end

end A244804.P9193987540855542184

namespace A244804

/-- `abs(n-A194454(n))` -/
def P9193987540855542184.Spec : Prop :=
  ∀ n, P9193987540855542184.a n = A244804 (n + 1)

end A244804

/-! ## A244804.P496290869777200782

`∑[or(1, A101103(n+1))]`
-/

namespace A244804.P496290869777200782
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A101103 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A244804.P496290869777200782

namespace A244804

/-- `∑[or(1, A101103(n+1))]` -/
def P496290869777200782.Spec : Prop :=
  ∀ n, P496290869777200782.a n = A244804 (n + 1)

end A244804

/-! ## A244804.P6695945312254093070

`ceil(A010014(n)/2+n)`
-/

namespace A244804.P6695945312254093070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A010014 n : ℚ) / 2 + (n : ℚ)⌉

end

end A244804.P6695945312254093070

namespace A244804

/-- `ceil(A010014(n)/2+n)` -/
def P6695945312254093070.Spec : Prop :=
  ∀ n, P6695945312254093070.a n = A244804 (n + 1)

end A244804

/-! ## A244804.P13992759887010118117

`ceil(A158547(n)/2+n)`
-/

namespace A244804.P13992759887010118117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A158547 n : ℚ) / 2 + (n : ℚ)⌉

end

end A244804.P13992759887010118117

namespace A244804

/-- `ceil(A158547(n)/2+n)` -/
def P13992759887010118117.Spec : Prop :=
  ∀ n, P13992759887010118117.a n = A244804 (n + 1)

end A244804

/-! ## A244804.P4354579909549246382

`∑[3*record[4*A006257(n)]+1]`
-/

namespace A244804.P4354579909549246382
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A006257 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A244804.P4354579909549246382

namespace A244804

/-- `∑[3*record[4*A006257(n)]+1]` -/
def P4354579909549246382.Spec : Prop :=
  ∀ n, P4354579909549246382.a n = A244804 (n + 1)

end A244804

/-! ## A244804.P9382975287984493729

`Δ[A007531(n)+A005945(n)]`
-/

namespace A244804.P9382975287984493729
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007531 n + A005945 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A244804.P9382975287984493729

namespace A244804

/-- `Δ[A007531(n)+A005945(n)]` -/
def P9382975287984493729.Spec : Prop :=
  ∀ n, P9382975287984493729.a n = A244804 (n + 1)

end A244804

/-! ## A244804.P12523608975593919937

`∑[A017533(A004273(n))]`
-/

namespace A244804.P12523608975593919937
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017533 (A004273 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A244804.P12523608975593919937

namespace A244804

/-- `∑[A017533(A004273(n))]` -/
def P12523608975593919937.Spec : Prop :=
  ∀ n, P12523608975593919937.a n = A244804 (n + 1)

end A244804

/-! ## A244804.P7200510616275014589

`∑[A017533(record[A026741(n)])]`
-/

namespace A244804.P7200510616275014589
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017533 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A244804.P7200510616275014589

namespace A244804

/-- `∑[A017533(record[A026741(n)])]` -/
def P7200510616275014589.Spec : Prop :=
  ∀ n, P7200510616275014589.a n = A244804 (n + 1)

end A244804

/-! ## A244804.P7948872179285048067

`∑[A016921(record[A064680(n)])]`
-/

namespace A244804.P7948872179285048067
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064680 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016921 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A244804.P7948872179285048067

namespace A244804

/-- `∑[A016921(record[A064680(n)])]` -/
def P7948872179285048067.Spec : Prop :=
  ∀ n, P7948872179285048067.a n = A244804 (n + 1)

end A244804

/-! ## A244804.P4730815547077192132

`∑[A016921(2*A004273(n))]`
-/

namespace A244804.P4730815547077192132
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016921 (2 * A004273 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A244804.P4730815547077192132

namespace A244804

/-- `∑[A016921(2*A004273(n))]` -/
def P4730815547077192132.Spec : Prop :=
  ∀ n, P4730815547077192132.a n = A244804 (n + 1)

end A244804

/-! ## A244804.P9377212758812626418

`∑[A272564(4*n)]`
-/

namespace A244804.P9377212758812626418
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272564 (4 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A244804.P9377212758812626418

namespace A244804

/-- `∑[A272564(4*n)]` -/
def P9377212758812626418.Spec : Prop :=
  ∀ n, P9377212758812626418.a n = A244804 (n + 1)

end A244804

/-!
# A244805: The 240-degree spoke (or ray) of a hexagonal spiral of Ulam.

The programs for A244805, the canonical program `A244805.P654540247455590507` is in `Seq.B000.C037`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A244805 has offset 1).

The definition of A244805 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A244805.P16628808362647808920

`ogf((1+13x+10x^2)/(1-3x+3x^2-x^3))`
-/

namespace A244805.P16628808362647808920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 13, 10] [1, -3, 3, -1] n

end

end A244805.P16628808362647808920

namespace A244805

/-- `ogf((1+13x+10x^2)/(1-3x+3x^2-x^3))` -/
def P16628808362647808920.Spec : Prop :=
  ∀ n, P16628808362647808920.a n = A244805 (n + 1)

end A244805

/-! ## A244805.P654540247455590507

`12*(n+1)²-21*(n+1)+10`

The canonical program, it is in `Seq.B000.C037`.
-/

namespace A244805

/-- `12*(n+1)²-21*(n+1)+10` -/
def P654540247455590507.Spec : Prop :=
  ∀ n, P654540247455590507.a n = A244805 (n + 1)

theorem P654540247455590507.correct : P654540247455590507.Spec := by
  intro n
  simp only [A244805, Nat.add_sub_cancel]

end A244805

/-! ## A244805.P14707629525827105264

`3*a(n-1)-3*a(n-2)+a(n-3)` with `a(0)=1, a(1)=16, a(2)=55`
-/

namespace A244805.P14707629525827105264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 16, 55] fun n a =>
  3 * a (n - 1) - 3 * a (n - 2) + a (n - 3)

end

end A244805.P14707629525827105264

namespace A244805

/-- `3*a(n-1)-3*a(n-2)+a(n-3)` -/
def P14707629525827105264.Spec : Prop :=
  ∀ n, P14707629525827105264.a n = A244805 (n + 1)

theorem P14707629525827105264.correct : P14707629525827105264.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 =>
      simp [A244805, Nat.add_sub_cancel, A244805.P14707629525827105264.a, A244805.P654540247455590507.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 3 =>
      have h1 := ih (m + 2) (by omega)
      have h2 := ih (m + 1) (by omega)
      have h3 := ih m (by omega)
      simp only [A244805, Nat.add_sub_cancel, A244805.P14707629525827105264.a, A244805.P654540247455590507.a, SequenceMachineLib.memo_apply] at h1 h2 h3 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 3 - 1 = m + 2 by omega, show m + 3 - 2 = m + 1 by omega, show m + 3 - 3 = m by omega, show m + 2 < m + 3 by omega, show m + 1 < m + 3 by omega, show m < m + 3 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 ⊢
      rw [h1, h2, h3]
      first | ring1 | ring_nf | (field_simp; (first | ring1 | ring_nf)) | omega | (push_cast; ring_nf) | nlinarith

end A244805

/-! ## A244805.P17120868366227357255

`∑[24+a(n-1)]` with `a(0)=1, a(1)=15`
-/

namespace A244805.P17120868366227357255
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 15] fun n f1 =>
  24 + f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A244805.P17120868366227357255

namespace A244805

/-- `∑[24+a(n-1)]` -/
def P17120868366227357255.Spec : Prop :=
  ∀ n, (P17120868366227357255.a n : ℤ) = A244805 (n + 1)

end A244805

/-! ## A244805.P1142555228090035766

`or(3, 12*n)*n+1`
-/

namespace A244805.P1142555228090035766
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 3 (12 * n) * n + 1

end

end A244805.P1142555228090035766

namespace A244805

/-- `or(3, 12*n)*n+1` -/
def P1142555228090035766.Spec : Prop :=
  ∀ n, (P1142555228090035766.a n : ℤ) = A244805 (n + 1)

end A244805

/-! ## A244805.P8654109868954968680

`xor(3, 12*n)*n+1`
-/

namespace A244805.P8654109868954968680
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 3 (12 * n) * n + 1

end

end A244805.P8654109868954968680

namespace A244805

/-- `xor(3, 12*n)*n+1` -/
def P8654109868954968680.Spec : Prop :=
  ∀ n, (P8654109868954968680.a n : ℤ) = A244805 (n + 1)

end A244805

/-! ## A244805.P13020283609396330964

`24*n+a(n-1)-9` with `a(0)=1`
-/

namespace A244805.P13020283609396330964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (24 * n : ℤ) + a (n - 1) - 9

end

end A244805.P13020283609396330964

namespace A244805

/-- `24*n+a(n-1)-9` -/
def P13020283609396330964.Spec : Prop :=
  ∀ n, P13020283609396330964.a n = A244805 (n + 1)

theorem P13020283609396330964.correct : P13020283609396330964.Spec := by
  intro n
  induction n with
  | zero => simp [A244805, A244805.P13020283609396330964.a, A244805.P654540247455590507.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
  | succ m ih =>
    simp only [A244805, Nat.add_sub_cancel, A244805.P13020283609396330964.a, A244805.P654540247455590507.a, SequenceMachineLib.memo_apply] at ih ⊢
    rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
    try simp only [Nat.add_sub_cancel, Nat.lt_add_one, ↓reduceIte]
    try push_cast at ih ⊢
    try linarith

end A244805

/-! ## A244805.P16053641168664912734

`(A381424(n)+1)/2`
-/

namespace A244805.P16053641168664912734
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A381424 n + 1 : ℚ) / 2

end

end A244805.P16053641168664912734

namespace A244805

/-- `(A381424(n)+1)/2` -/
def P16053641168664912734.Spec : Prop :=
  ∀ n, P16053641168664912734.a n = (A244805 (n + 1) : ℚ)

theorem P16053641168664912734.correct : P16053641168664912734.Spec := by
  intro n
  simp only [A244805, Nat.add_sub_cancel, A244805.P16053641168664912734.a, A244805.P654540247455590507.a, A381424, A381424.P8520062412915218701.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A244805

/-! ## A244805.P15457432647211158801

`Δ[A006566(n)-A135503(n)]`
-/

namespace A244805.P15457432647211158801
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006566 n - A135503 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A244805.P15457432647211158801

namespace A244805

/-- `Δ[A006566(n)-A135503(n)]` -/
def P15457432647211158801.Spec : Prop :=
  ∀ n, P15457432647211158801.a n = A244805 (n + 1)

end A244805

/-! ## A244805.P4893442634613438096

`∑[A316320(2*n)]`
-/

namespace A244805.P4893442634613438096
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316320 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A244805.P4893442634613438096

namespace A244805

/-- `∑[A316320(2*n)]` -/
def P4893442634613438096.Spec : Prop :=
  ∀ n, P4893442634613438096.a n = A244805 (n + 1)

end A244805

/-! ## A244805.P8844592934306283078

`(A085473(2*n)+1)/2`
-/

namespace A244805.P8844592934306283078
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A085473 (2 * n) + 1 : ℚ) / 2

end

end A244805.P8844592934306283078

namespace A244805

/-- `(A085473(2*n)+1)/2` -/
def P8844592934306283078.Spec : Prop :=
  ∀ n, P8844592934306283078.a n = (A244805 (n + 1) : ℚ)

theorem P8844592934306283078.correct : P8844592934306283078.Spec := by
  intro n
  simp only [A244805, Nat.add_sub_cancel, A244805.P8844592934306283078.a, A244805.P654540247455590507.a, A085473, A085473.P10681717492594671342.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A244805

/-! ## A244805.P11701801061923743237

`ceil(sqrt(A027628(2*n))/2)`
-/

namespace A244805.P11701801061923743237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (A027628 (2 * n) : ℝ) / 2⌉

end

end A244805.P11701801061923743237

namespace A244805

/-- `ceil(sqrt(A027628(2*n))/2)` -/
def P11701801061923743237.Spec : Prop :=
  ∀ n, P11701801061923743237.a n = A244805 (n + 1)

end A244805

/-! ## A244805.P5531972157977796460

`∑[A133655(A004273(n)+n)]`
-/

namespace A244805.P5531972157977796460
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133655 (A004273 n + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A244805.P5531972157977796460

namespace A244805

/-- `∑[A133655(A004273(n)+n)]` -/
def P5531972157977796460.Spec : Prop :=
  ∀ n, P5531972157977796460.a n = A244805 (n + 1)

end A244805

/-! ## A244805.P4840063197669223194

`A213484(4*n)`
-/

namespace A244805.P4840063197669223194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213484 (4 * n)

end

end A244805.P4840063197669223194

namespace A244805

/-- `A213484(4*n)` -/
def P4840063197669223194.Spec : Prop :=
  ∀ n, P4840063197669223194.a n = A244805 (n + 1)

end A244805

/-! ## A244805.P14240436092492741480

`A281333(6*n)`
-/

namespace A244805.P14240436092492741480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281333 (6 * n)

end

end A244805.P14240436092492741480

namespace A244805

/-- `A281333(6*n)` -/
def P14240436092492741480.Spec : Prop :=
  ∀ n, P14240436092492741480.a n = A244805 (n + 1)

end A244805

/-! ## A244805.P9353952425257129497

`A014679(12*n)`
-/

namespace A244805.P9353952425257129497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014679 (12 * n)

end

end A244805.P9353952425257129497

namespace A244805

/-- `A014679(12*n)` -/
def P9353952425257129497.Spec : Prop :=
  ∀ n, P9353952425257129497.a n = A244805 (n + 1)

end A244805

/-! ## A244805.P13668009331909939537

`A253012(12*n)`
-/

namespace A244805.P13668009331909939537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253012 (12 * n)

end

end A244805.P13668009331909939537

namespace A244805

/-- `A253012(12*n)` -/
def P13668009331909939537.Spec : Prop :=
  ∀ n, P13668009331909939537.a n = A244805 (n + 1)

end A244805

/-! ## A244805.P13322449098768926098

`A000933(A017581(n))`
-/

namespace A244805.P13322449098768926098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000933 (A017581 n).toNat

end

end A244805.P13322449098768926098

namespace A244805

/-- `A000933(A017581(n))` -/
def P13322449098768926098.Spec : Prop :=
  ∀ n, P13322449098768926098.a n = A244805 (n + 1)

end A244805

/-!
# A244806: The 180-degree spoke (or ray) of a hexagonal spiral of Ulam.

The programs for A244806, the canonical program `A244806.P12540561993492766238` is in `Seq.B000.C037`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A244806 has offset 1).

The definition of A244806 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A244806.P16414047128394402883

`ogf((1+15x+8x^2)/(1-3x+3x^2-x^3))`
-/

namespace A244806.P16414047128394402883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 15, 8] [1, -3, 3, -1] n

end

end A244806.P16414047128394402883

namespace A244806

/-- `ogf((1+15x+8x^2)/(1-3x+3x^2-x^3))` -/
def P16414047128394402883.Spec : Prop :=
  ∀ n, P16414047128394402883.a n = A244806 (n + 1)

end A244806

/-! ## A244806.P12540561993492766238

`12*(n+1)²-19*(n+1)+8`

The canonical program, it is in `Seq.B000.C037`.
-/

namespace A244806

/-- `12*(n+1)²-19*(n+1)+8` -/
def P12540561993492766238.Spec : Prop :=
  ∀ n, P12540561993492766238.a n = A244806 (n + 1)

theorem P12540561993492766238.correct : P12540561993492766238.Spec := by
  intro n
  simp only [A244806, Nat.add_sub_cancel]

end A244806

/-! ## A244806.P4168579056537582765

`3*a(n-1)-3*a(n-2)+a(n-3)` with `a(0)=1, a(1)=18, a(2)=59`
-/

namespace A244806.P4168579056537582765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 18, 59] fun n a =>
  3 * a (n - 1) - 3 * a (n - 2) + a (n - 3)

end

end A244806.P4168579056537582765

namespace A244806

/-- `3*a(n-1)-3*a(n-2)+a(n-3)` -/
def P4168579056537582765.Spec : Prop :=
  ∀ n, P4168579056537582765.a n = A244806 (n + 1)

theorem P4168579056537582765.correct : P4168579056537582765.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 =>
      simp [A244806, Nat.add_sub_cancel, A244806.P4168579056537582765.a, A244806.P12540561993492766238.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 3 =>
      have h1 := ih (m + 2) (by omega)
      have h2 := ih (m + 1) (by omega)
      have h3 := ih m (by omega)
      simp only [A244806, Nat.add_sub_cancel, A244806.P4168579056537582765.a, A244806.P12540561993492766238.a, SequenceMachineLib.memo_apply] at h1 h2 h3 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 3 - 1 = m + 2 by omega, show m + 3 - 2 = m + 1 by omega, show m + 3 - 3 = m by omega, show m + 2 < m + 3 by omega, show m + 1 < m + 3 by omega, show m < m + 3 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 ⊢
      rw [h1, h2, h3]
      first | ring1 | ring_nf | (field_simp; (first | ring1 | ring_nf)) | omega | (push_cast; ring_nf) | nlinarith

end A244806

/-! ## A244806.P3469606047794288457

`∑[a(n-1)+24]` with `a(0)=1, a(1)=17`
-/

namespace A244806.P3469606047794288457
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 17] fun n f1 =>
  f1 (n - 1) + 24

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A244806.P3469606047794288457

namespace A244806

/-- `∑[a(n-1)+24]` -/
def P3469606047794288457.Spec : Prop :=
  ∀ n, (P3469606047794288457.a n : ℤ) = A244806 (n + 1)

end A244806

/-! ## A244806.P1468595678902762882

`∑[ogf((1+15x+8x^2)/(1-2x+x^2))]`
-/

namespace A244806.P1468595678902762882
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 15, 8] [1, -2, 1] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A244806.P1468595678902762882

namespace A244806

/-- `∑[ogf((1+15x+8x^2)/(1-2x+x^2))]` -/
def P1468595678902762882.Spec : Prop :=
  ∀ n, P1468595678902762882.a n = A244806 (n + 1)

end A244806

/-! ## A244806.P17170285072108055886

`or(1, 12*n+4)*n+1`
-/

namespace A244806.P17170285072108055886
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (12 * n + 4) * n + 1

end

end A244806.P17170285072108055886

namespace A244806

/-- `or(1, 12*n+4)*n+1` -/
def P17170285072108055886.Spec : Prop :=
  ∀ n, (P17170285072108055886.a n : ℤ) = A244806 (n + 1)

end A244806

/-! ## A244806.P10039684182679974636

`(xor(2, 12*n)+3)*n+1`
-/

namespace A244806.P10039684182679974636
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (Nat.xor 2 (12 * n) + 3) * n + 1

end

end A244806.P10039684182679974636

namespace A244806

/-- `(xor(2, 12*n)+3)*n+1` -/
def P10039684182679974636.Spec : Prop :=
  ∀ n, (P10039684182679974636.a n : ℤ) = A244806 (n + 1)

end A244806

/-! ## A244806.P18368778053548252610

`24*n+a(n-1)-7` with `a(0)=1`
-/

namespace A244806.P18368778053548252610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (24 * n : ℤ) + a (n - 1) - 7

end

end A244806.P18368778053548252610

namespace A244806

/-- `24*n+a(n-1)-7` -/
def P18368778053548252610.Spec : Prop :=
  ∀ n, P18368778053548252610.a n = A244806 (n + 1)

theorem P18368778053548252610.correct : P18368778053548252610.Spec := by
  intro n
  induction n with
  | zero => simp [A244806, A244806.P18368778053548252610.a, A244806.P12540561993492766238.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
  | succ m ih =>
    simp only [A244806, Nat.add_sub_cancel, A244806.P18368778053548252610.a, A244806.P12540561993492766238.a, SequenceMachineLib.memo_apply] at ih ⊢
    rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
    try simp only [Nat.add_sub_cancel, Nat.lt_add_one, ↓reduceIte]
    try push_cast at ih ⊢
    try linarith

end A244806

/-! ## A244806.P10898709362071048498

`6*C(Δ[n²], 2)-(n-1)`
-/

namespace A244806.P10898709362071048498
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (6 * Nat.choose ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat 2 : ℤ) - ((n : ℤ) - 1)

end

end A244806.P10898709362071048498

namespace A244806

/-- `6*C(Δ[n²], 2)-(n-1)` -/
def P10898709362071048498.Spec : Prop :=
  ∀ n, P10898709362071048498.a n = A244806 (n + 1)

end A244806

/-! ## A244806.P14405128656383391095

`abs(A000326(n)-A093485(n))`
-/

namespace A244806.P14405128656383391095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A000326 n - A093485 n|

end

end A244806.P14405128656383391095

namespace A244806

/-- `abs(A000326(n)-A093485(n))` -/
def P14405128656383391095.Spec : Prop :=
  ∀ n, P14405128656383391095.a n = A244806 (n + 1)

end A244806

/-! ## A244806.P12715907583040588427

`ceil(A033570(2*n)/2)`
-/

namespace A244806.P12715907583040588427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A033570 (2 * n) : ℚ) / 2⌉

end

end A244806.P12715907583040588427

namespace A244806

/-- `ceil(A033570(2*n)/2)` -/
def P12715907583040588427.Spec : Prop :=
  ∀ n, P12715907583040588427.a n = A244806 (n + 1)

end A244806

/-! ## A244806.P5423079728478396997

`(A014632(2*n)+1)/2`
-/

namespace A244806.P5423079728478396997
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A014632 (2 * n) + 1 : ℚ) / 2

end

end A244806.P5423079728478396997

namespace A244806

/-- `(A014632(2*n)+1)/2` -/
def P5423079728478396997.Spec : Prop :=
  ∀ n, P5423079728478396997.a n = (A244806 (n + 1) : ℚ)

end A244806

/-! ## A244806.P18124002663513480941

`∑[A087445(A004275(2*n+1))]`
-/

namespace A244806.P18124002663513480941
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087445 (A004275 (2 * n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A244806.P18124002663513480941

namespace A244806

/-- `∑[A087445(A004275(2*n+1))]` -/
def P18124002663513480941.Spec : Prop :=
  ∀ n, P18124002663513480941.a n = A244806 (n + 1)

end A244806

/-! ## A244806.P3799023342010170577

`A129863(4*n)/6`
-/

namespace A244806.P3799023342010170577
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A129863 (4 * n) : ℚ) / 6

end

end A244806.P3799023342010170577

namespace A244806

/-- `A129863(4*n)/6` -/
def P3799023342010170577.Spec : Prop :=
  ∀ n, P3799023342010170577.a n = (A244806 (n + 1) : ℚ)

end A244806

/-! ## A244806.P14524763857666947050

`A340648(3*n+n+1)`
-/

namespace A244806.P14524763857666947050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340648 (3 * n + (n + 1))

end

end A244806.P14524763857666947050

namespace A244806

/-- `A340648(3*n+n+1)` -/
def P14524763857666947050.Spec : Prop :=
  ∀ n, P14524763857666947050.a n = A244806 (n + 1)

end A244806

/-! ## A244806.P16537371473608633426

`A143689(A016813(n))/2`
-/

namespace A244806.P16537371473608633426
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A143689 (A016813 n).toNat : ℚ) / 2

end

end A244806.P16537371473608633426

namespace A244806

/-- `A143689(A016813(n))/2` -/
def P16537371473608633426.Spec : Prop :=
  ∀ n, P16537371473608633426.a n = (A244806 (n + 1) : ℚ)

end A244806

/-! ## A244806.P282990334357899312

`A143689(Δ[A130883(n)])/2`
-/

namespace A244806.P282990334357899312
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130883 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A143689 (f1 (n + 1) - f1 n).toNat : ℚ) / 2

end

end A244806.P282990334357899312

namespace A244806

/-- `A143689(Δ[A130883(n)])/2` -/
def P282990334357899312.Spec : Prop :=
  ∀ n, P282990334357899312.a n = (A244806 (n + 1) : ℚ)

end A244806

/-! ## A244806.P9290855636092875540

`∑[A178414(record[A075677(n+1)])]`
-/

namespace A244806.P9290855636092875540
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075677 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178414 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A244806.P9290855636092875540

namespace A244806

/-- `∑[A178414(record[A075677(n+1)])]` -/
def P9290855636092875540.Spec : Prop :=
  ∀ n, P9290855636092875540.a n = A244806 (n + 1)

end A244806

/-! ## A244806.P11506130340626706506

`A253012(A017533(n))`
-/

namespace A244806.P11506130340626706506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253012 (A017533 n).toNat

end

end A244806.P11506130340626706506

namespace A244806

/-- `A253012(A017533(n))` -/
def P11506130340626706506.Spec : Prop :=
  ∀ n, P11506130340626706506.a n = A244806 (n + 1)

end A244806

/-! ## A244806.P12395103920418941508

`A000933(6*(2*n+1))`
-/

namespace A244806.P12395103920418941508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000933 (6 * (2 * n + 1))

end

end A244806.P12395103920418941508

namespace A244806

/-- `A000933(6*(2*n+1))` -/
def P12395103920418941508.Spec : Prop :=
  ∀ n, P12395103920418941508.a n = A244806 (n + 1)

end A244806

/-!
# A244807: The hexagonal spiral of Champernowne, read along the East (or 90-degree) ray.

The programs for A244807, there is no canonical definition to state claims against.
-/

/-! ## A244807.P5635797418590157485

`A007376(∑[6*n-5]+6)`
-/

namespace A244807.P5635797418590157485
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (6 * n : ℤ) - 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007376 (∑ j ∈ Finset.range (n + 1), f1 j + 6).toNat

end

end A244807.P5635797418590157485

/-! ## A244807.P14708410625471960751

`A007376(∑[a(n-1)+6]+1)%15` with `a(0)=0, a(1)=1`
-/

namespace A244807.P14708410625471960751
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n f1 =>
  f1 (n - 1) + 6

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A007376 (∑ j ∈ Finset.range (n + 1), f1 j + 1)) 15

end

end A244807.P14708410625471960751

/-!
# A244808: The hexagonal spiral of Champernowne, read along the 60-degree ray.

The programs for A244808, there is no canonical definition to state claims against.
-/

/-! ## A244808.P14146447784079763426

`A007376(∑[a(n-1)+24])` with `a(0)=1, a(1)=9`
-/

namespace A244808.P14146447784079763426
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 9] fun n f1 =>
  f1 (n - 1) + 24

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007376 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A244808.P14146447784079763426

/-!
# A244809: The hexagonal spiral of Champernowne, read along the 30-degree ray.

The programs for A244809, there is no canonical definition to state claims against.
-/

/-! ## A244809.P750078432973523087

`A007376(∑[6*n-4]+5)`
-/

namespace A244809.P750078432973523087
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (6 * n : ℤ) - 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007376 (∑ j ∈ Finset.range (n + 1), f1 j + 5).toNat

end

end A244809.P750078432973523087

/-! ## A244809.P7223258556503991900

`A127050(A000326(n))`
-/

namespace A244809.P7223258556503991900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127050 (A000326 n).toNat

end

end A244809.P7223258556503991900

/-!
# A244810: The hexagonal spiral of Champernowne, read along the North (or 360-degree) ray.

The programs for A244810, there is no canonical definition to state claims against.
-/

/-! ## A244810.P10679763378322996895

`A007376(12*n²+1-n)`
-/

namespace A244810.P10679763378322996895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007376 ((12 * n ^ 2 : ℤ) + (1 - (n : ℤ))).toNat

end

end A244810.P10679763378322996895

/-! ## A244810.P12672148299401237913

`dr(A007376(∑[a(n-1)+24]))` with `a(0)=1, a(1)=11`
-/

namespace A244810.P12672148299401237913
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 11] fun n f1 =>
  f1 (n - 1) + 24

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A007376 (∑ j ∈ Finset.range (n + 1), f1 j))

end

end A244810.P12672148299401237913

/-!
# A244811: The hexagonal spiral of Champernowne, read along the 330-degree ray.

The programs for A244811, there is no canonical definition to state claims against.
-/

/-! ## A244811.P1107470304214576148

`A007376(1+3*n²)`
-/

namespace A244811.P1107470304214576148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007376 (1 + 3 * n ^ 2)

end

end A244811.P1107470304214576148

/-! ## A244811.P833692333399810420

`A033307(3*n²)`
-/

namespace A244811.P833692333399810420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033307 (3 * n ^ 2)

end

end A244811.P833692333399810420

/-! ## A244811.P6516810093685154187

`A108712(A227776(n))`
-/

namespace A244811.P6516810093685154187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108712 (A227776 n).toNat

end

end A244811.P6516810093685154187

/-! ## A244811.P13727633698987053311

`A108712(A005914(n))`
-/

namespace A244811.P13727633698987053311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108712 (A005914 n).toNat

end

end A244811.P13727633698987053311

/-!
# A244812: The hexagonal spiral of Champernowne, read along the 300-degree ray.

The programs for A244812, there is no canonical definition to state claims against.
-/

/-! ## A244812.P2667996117514796619

`A007376(12*n²+1+n)`
-/

namespace A244812.P2667996117514796619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007376 (12 * n ^ 2 + 1 + n)

end

end A244812.P2667996117514796619

/-!
# A244813: The hexagonal spiral of Champernowne, read along the West (or 270-degree) ray.

The programs for A244813, there is no canonical definition to state claims against.
-/

/-! ## A244813.P416745337114259595

`A007376(∑[6*n-2]+3)`
-/

namespace A244813.P416745337114259595
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (6 * n : ℤ) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007376 (∑ j ∈ Finset.range (n + 1), f1 j + 3).toNat

end

end A244813.P416745337114259595

/-! ## A244813.P13497710573987276613

`A127050(∑[n]+n²)`
-/

namespace A244813.P13497710573987276613
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127050 (∑ j ∈ Finset.range (n + 1), f1 j + n ^ 2)

end

end A244813.P13497710573987276613

/-! ## A244813.P14777562113126376021

`A033307(A003215(n)-(2*n+1))`
-/

namespace A244813.P14777562113126376021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033307 (A003215 n - (2 * n + 1 : ℤ)).toNat

end

end A244813.P14777562113126376021

/-! ## A244813.P3601215122069963924

`A108712(A136392(n+1))`
-/

namespace A244813.P3601215122069963924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108712 (A136392 (n + 1)).toNat

end

end A244813.P3601215122069963924

/-!
# A244814: The hexagonal spiral of Champernowne, read along the 240-degree ray.

The programs for A244814, there is no canonical definition to state claims against.
-/

/-! ## A244814.P8121536674957384827

`A007376(∑[a(n-1)+24])` with `a(0)=1, a(1)=15`
-/

namespace A244814.P8121536674957384827
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 15] fun n f1 =>
  f1 (n - 1) + 24

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007376 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A244814.P8121536674957384827

/-! ## A244814.P9429705263275398230

`A108712(A381424(n))`
-/

namespace A244814.P9429705263275398230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108712 (A381424 n).toNat

end

end A244814.P9429705263275398230

/-!
# A244815: The hexagonal spiral of Champernowne, read along the 210-degree ray.

The programs for A244815, there is no canonical definition to state claims against.
-/

/-! ## A244815.P16602755909449385643

`A007376(Δ[n^3]-n)`
-/

namespace A244815.P16602755909449385643
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007376 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) - (n : ℤ)).toNat

end

end A244815.P16602755909449385643

/-! ## A244815.P14307090906870698439

`A033307(A003215(n)-(n+1))`
-/

namespace A244815.P14307090906870698439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033307 (A003215 n - (n + 1 : ℤ)).toNat

end

end A244815.P14307090906870698439

/-! ## A244815.P1547211563646740799

`A108712(A080859(n))`
-/

namespace A244815.P1547211563646740799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108712 (A080859 n).toNat

end

end A244815.P1547211563646740799

/-!
# A244816: The hexagonal spiral of Champernowne, read along the South (or 180-degree) ray.

The programs for A244816, there is no canonical definition to state claims against.
-/

/-! ## A244816.P15176246074746683597

`A007376(∑[a(n-1)+24])` with `a(0)=1, a(1)=17`
-/

namespace A244816.P15176246074746683597
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 17] fun n f1 =>
  f1 (n - 1) + 24

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007376 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A244816.P15176246074746683597

/-! ## A244816.P17490379248260357036

`A033307(A003215(2*n)-(n+1))`
-/

namespace A244816.P17490379248260357036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033307 (A003215 (2 * n) - (n + 1 : ℤ)).toNat

end

end A244816.P17490379248260357036

/-!
# A244817: The hexagonal spiral of Champernowne, read along the 150-degree ray.

The programs for A244817, there is no canonical definition to state claims against.
-/

/-! ## A244817.P14307115164436007597

`A007376(Δ[n^3])`
-/

namespace A244817.P14307115164436007597
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007376 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A244817.P14307115164436007597

/-! ## A244817.P13419304523363563166

`A127050(3*∑[n])`
-/

namespace A244817.P13419304523363563166
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127050 (3 * (∑ j ∈ Finset.range (n + 1), f1 j))

end

end A244817.P13419304523363563166

/-! ## A244817.P10068030445875449591

`A033307(A003215(n)-1)`
-/

namespace A244817.P10068030445875449591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033307 (A003215 n - 1).toNat

end

end A244817.P10068030445875449591

/-! ## A244817.P8048569597573206077

`A108712(A003154(n+1))`
-/

namespace A244817.P8048569597573206077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108712 (A003154 (n + 1)).toNat

end

end A244817.P8048569597573206077

/-! ## A244817.P15193557855190401303

`A108202(A173732((2*n+1)²))`
-/

namespace A244817.P15193557855190401303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108202 (A173732 ((2 * n + 1) ^ 2)).toNat

end

end A244817.P15193557855190401303

/-!
# A244818: The hexagonal spiral of Champernowne, read along the 120-degree ray.

The programs for A244818, there is no canonical definition to state claims against.
-/

/-! ## A244818.P3235758822365165220

`A007376(∑[a(n-1)+24])` with `a(0)=1, a(1)=19`
-/

namespace A244818.P3235758822365165220
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 19] fun n f1 =>
  f1 (n - 1) + 24

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007376 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A244818.P3235758822365165220

/-! ## A244818.P13334124010167701308

`A108712(A033576(n))`
-/

namespace A244818.P13334124010167701308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108712 (A033576 n).toNat

end

end A244818.P13334124010167701308

/-!
# A244819: Positive numbers primitively represented by the binary quadratic form (1, 0, 3).

The programs for A244819, there is no canonical definition to state claims against.
-/

/-! ## A244819.P9323014384729763136

`∩[round(4/3*n), A057128(n+1)]`
-/

namespace A244819.P9323014384729763136
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((4 : ℚ) / 3 * (n : ℚ))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057128 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A244819.P9323014384729763136

/-! ## A244819.P474026077899650798

`∪[1+∑[2*n], A092574(n+1)]`
-/

namespace A244819.P474026077899650798
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1 + ∑ j ∈ Finset.range (n + 1), f2 j

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092574 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∨ ∃ j, f3 j = (x : ℤ)) n

end

end A244819.P474026077899650798

/-! ## A244819.P5995931731819582544

`filter[A057128(1+n), A035263(#)]`
-/

namespace A244819.P5995931731819582544
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057128 (1 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A035263 (f1 j).toNat = 1) n)

end

end A244819.P5995931731819582544

/-! ## A244819.P11930163797883994732

`filter[A057128(n+1), A104106(#)]`
-/

namespace A244819.P11930163797883994732
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057128 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A104106 (f1 j).toNat = 1) n)

end

end A244819.P11930163797883994732

/-! ## A244819.P15297785761165596059

`filter[A057128(n+1), A137893(#)]`
-/

namespace A244819.P15297785761165596059
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057128 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A137893 (f1 j).toNat = 1) n)

end

end A244819.P15297785761165596059

/-! ## A244819.P2420331071427840450

`filter[A057128(n+1), A141260(#)]`
-/

namespace A244819.P2420331071427840450
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057128 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A141260 (f1 j).toNat = 1) n)

end

end A244819.P2420331071427840450

/-! ## A244819.P18238201367180260644

`filter[A057128(n+1), A152822(#)]`
-/

namespace A244819.P18238201367180260644
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057128 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A152822 (f1 j).toNat = 1) n)

end

end A244819.P18238201367180260644

/-! ## A244819.P3750757337726898521

`filter[A057128(n+1), A259044(#)]`
-/

namespace A244819.P3750757337726898521
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057128 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A259044 (f1 j).toNat = 1) n)

end

end A244819.P3750757337726898521

/-! ## A244819.P11721796401426215891

`filter[A057128(n+1), A259599(#)]`
-/

namespace A244819.P11721796401426215891
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057128 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A259599 (f1 j).toNat = 1) n)

end

end A244819.P11721796401426215891

/-! ## A244819.P18233423830674779695

`filter[A057128(n+1), A353816(#)]`
-/

namespace A244819.P18233423830674779695
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057128 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353816 (f1 j).toNat = 1) n)

end

end A244819.P18233423830674779695

/-!
# A244820: E.g.f.: Sum_{n>=0} exp(n*2^n*x) * x^n/n!.

The programs for A244820, the canonical program `A244820.P907063322262214379` is in `Seq.B000.C037`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A244820 has offset 0).

The definition of A244820 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A244820.P907063322262214379

`∑{#}[n, C(n, #)*#^(n-#)*2^(#*(n-#))]`

The canonical program, it is in `Seq.B000.C037`.
-/

namespace A244820

/-- `∑{#}[n, C(n, #)*#^(n-#)*2^(#*(n-#))]` -/
def P907063322262214379.Spec : Prop :=
  ∀ n, P907063322262214379.a n = (A244820 n : ℚ)

end A244820

/-! ## A244820.P3785752049446793661

`and(A302596(A302617(n+1)), A302616(n))`
-/

namespace A244820.P3785752049446793661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A302596 (A302617 (n + 1)).toNat) (A302616 n)

end

end A244820.P3785752049446793661

namespace A244820

/-- `and(A302596(A302617(n+1)), A302616(n))` -/
def P3785752049446793661.Spec : Prop :=
  ∀ n, P3785752049446793661.a n = A244820 n

end A244820

/-!
# A244821: E.g.f.: Sum_{n>=0} exp(n*3^n*x) * x^n/n!.

The programs for A244821, the canonical program `A244821.P10077923012580178940` is in `Seq.B000.C037`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A244821 has offset 0).

The definition of A244821 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A244821.P10077923012580178940

`∑{#}[n, C(n, #)*#^(n-#)*3^(#*(n-#))]`

The canonical program, it is in `Seq.B000.C037`.
-/

namespace A244821

/-- `∑{#}[n, C(n, #)*#^(n-#)*3^(#*(n-#))]` -/
def P10077923012580178940.Spec : Prop :=
  ∀ n, P10077923012580178940.a n = (A244821 n : ℚ)

end A244821

/-!
# A244822: E.g.f.: Sum_{n>=0} exp(n*4^n*x) * x^n/n!.

The programs for A244822, the canonical program `A244822.P9717293699319234330` is in `Seq.B000.C037`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A244822 has offset 0).

The definition of A244822 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A244822.P9717293699319234330

`∑{#}[n, C(n, #)*#^(n-#)*4^(#*(n-#))]`

The canonical program, it is in `Seq.B000.C037`.
-/

namespace A244822

/-- `∑{#}[n, C(n, #)*#^(n-#)*4^(#*(n-#))]` -/
def P9717293699319234330.Spec : Prop :=
  ∀ n, P9717293699319234330.a n = (A244822 n : ℚ)

end A244822

/-!
# A244824: Sum of all divisors of all positive integers <= 2^n.

The programs for A244824, the canonical program `A244824.P13510409849128085719` is in `Seq.B001.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A244824 has offset 0).

The definition of A244824 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A244824.P13510409849128085719

`A024916(A000079(n))`

The canonical program, it is in `Seq.B001.C010`.
-/

namespace A244824

/-- `A024916(A000079(n))` -/
def P13510409849128085719.Spec : Prop :=
  ∀ n, P13510409849128085719.a n = A244824 n

theorem P13510409849128085719.correct : P13510409849128085719.Spec := by
  intro n
  simp only [A244824]

end A244824

/-! ## A244824.P5339275416155845961

`A024916(2^n)`
-/

namespace A244824.P5339275416155845961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024916 (2 ^ n)

end

end A244824.P5339275416155845961

namespace A244824

/-- `A024916(2^n)` -/
def P5339275416155845961.Spec : Prop :=
  ∀ n, P5339275416155845961.a n = A244824 n

end A244824

/-! ## A244824.P5210468037117945569

`∑[A350146(2^n)]`
-/

namespace A244824.P5210468037117945569
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350146 (2 ^ n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A244824.P5210468037117945569

namespace A244824

/-- `∑[A350146(2^n)]` -/
def P5210468037117945569.Spec : Prop :=
  ∀ n, P5210468037117945569.a n = A244824 n

end A244824

/-! ## A244824.P14505355322075810182

`A160664(2^n)-1`
-/

namespace A244824.P14505355322075810182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160664 (2 ^ n) - 1

end

end A244824.P14505355322075810182

namespace A244824

/-- `A160664(2^n)-1` -/
def P14505355322075810182.Spec : Prop :=
  ∀ n, P14505355322075810182.a n = A244824 n

end A244824

/-! ## A244824.P15227653735923626954

`A327329(2^n)/2`
-/

namespace A244824.P15227653735923626954
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A327329 (2 ^ n) : ℚ) / 2

end

end A244824.P15227653735923626954

namespace A244824

/-- `A327329(2^n)/2` -/
def P15227653735923626954.Spec : Prop :=
  ∀ n, P15227653735923626954.a n = (A244824 n : ℚ)

end A244824

/-!
# A244825: Number of length n 0..1 arrays with each partial sum starting from the beginning no more than two standard deviations from its mean.

The programs for A244825, there is no canonical definition to state claims against.
-/

/-! ## A244825.P13884197010721735920

`A244832(∑[n+1])`
-/

namespace A244825.P13884197010721735920
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244832 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A244825.P13884197010721735920

/-! ## A244825.P6273888743186247989

`record[gcd(A244832(n+1), A245842(n+1))]`
-/

namespace A244825.P6273888743186247989
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A244832 (n + 1)) (A245842 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A244825.P6273888743186247989

/-! ## A244825.P12527149348643080110

`record[A244832(A000217(A344180(n)))]`
-/

namespace A244825.P12527149348643080110
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244832 (A000217 (A344180 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A244825.P12527149348643080110

/-! ## A244825.P5823159273143895841

`record[A244832(A000217(A002260(n+1)))]`
-/

namespace A244825.P5823159273143895841
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244832 (A000217 (A002260 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A244825.P5823159273143895841

/-! ## A244825.P16474877398745788487

`record[A244832(A000217(A027750(n+1)))]`
-/

namespace A244825.P16474877398745788487
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244832 (A000217 (A027750 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A244825.P16474877398745788487

/-! ## A244825.P8724488673190883650

`record[A244832(A000217(A302032(n+1)))]`
-/

namespace A244825.P8724488673190883650
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244832 (A000217 (A302032 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A244825.P8724488673190883650

/-!
# A244826: Number of length n 0..2 arrays with each partial sum starting from the beginning no more than two standard deviations from its mean.

The programs for A244826, there is no canonical definition to state claims against.
-/

/-! ## A244826.P18112954373642205812

`A244832(∑[n+2])`
-/

namespace A244826.P18112954373642205812
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244832 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A244826.P18112954373642205812

/-! ## A244826.P7528400950975931878

`record[A244832(A000096(A274640(n)))]`
-/

namespace A244826.P7528400950975931878
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244832 (A000096 (A274640 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A244826.P7528400950975931878

/-! ## A244826.P10442327744285622842

`record[A244832(A000096(A286614(n)))]`
-/

namespace A244826.P10442327744285622842
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244832 (A000096 (A286614 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A244826.P10442327744285622842

/-! ## A244826.P829586240396149065

`record[A244832(A000096(A003602(n+1)))]`
-/

namespace A244826.P829586240396149065
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244832 (A000096 (A003602 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A244826.P829586240396149065

/-! ## A244826.P3652188798935914970

`record[A244832(A000096(A003963(n+1)))]`
-/

namespace A244826.P3652188798935914970
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244832 (A000096 (A003963 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A244826.P3652188798935914970

/-! ## A244826.P16595472253860726129

`record[A244832(A000096(A010783(n+1)))]`
-/

namespace A244826.P16595472253860726129
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244832 (A000096 (A010783 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A244826.P16595472253860726129

/-! ## A244826.P2067923800831324445

`record[A244832(A000096(A097285(n+1)))]`
-/

namespace A244826.P2067923800831324445
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244832 (A000096 (A097285 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A244826.P2067923800831324445

/-! ## A244826.P14357422151894064398

`record[A244832(A000096(A198789(n+1)))]`
-/

namespace A244826.P14357422151894064398
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244832 (A000096 (A198789 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A244826.P14357422151894064398

/-! ## A244826.P8459949877662452545

`record[A244832(A000096(A265110(n+1)))]`
-/

namespace A244826.P8459949877662452545
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244832 (A000096 (A265110 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A244826.P8459949877662452545

/-!
# A244827: Number of length n 0..3 arrays with each partial sum starting from the beginning no more than two standard deviations from its mean.

The programs for A244827, there is no canonical definition to state claims against.
-/

/-! ## A244827.P4388085361611471149

`A244832(∑[n+3]+1)`
-/

namespace A244827.P4388085361611471149
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244832 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A244827.P4388085361611471149

/-! ## A244827.P13056193289726045146

`A287155(A324568(n+1))`
-/

namespace A244827.P13056193289726045146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287155 (A324568 (n + 1)).toNat

end

end A244827.P13056193289726045146

/-!
# A244828: Number of length n 0..4 arrays with each partial sum starting from the beginning no more than two standard deviations from its mean.

The programs for A244828, there is no canonical definition to state claims against.
-/

/-! ## A244828.P8695099005165174471

`A244832(A027379(n+2))`
-/

namespace A244828.P8695099005165174471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244832 (A027379 (n + 2)).toNat

end

end A244828.P8695099005165174471

/-!
# A244829: Number of length n 0..5 arrays with each partial sum starting from the beginning no more than two standard deviations from its mean.

The programs for A244829, there is no canonical definition to state claims against.
-/

/-! ## A244829.P1258784192758535644

`A244832(A046691(n+3))`
-/

namespace A244829.P1258784192758535644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244832 (A046691 (n + 3)).toNat

end

end A244829.P1258784192758535644

/-!
# A244830: Number of length n 0..6 arrays with each partial sum starting from the beginning no more than two standard deviations from its mean.

The programs for A244830, there is no canonical definition to state claims against.
-/

/-! ## A244830.P12239472339808809343

`A244832(A052905(n+3))`
-/

namespace A244830.P12239472339808809343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244832 (A052905 (n + 3)).toNat

end

end A244830.P12239472339808809343

/-!
# A244831: Number of length n 0..7 arrays with each partial sum starting from the beginning no more than two standard deviations from its mean.

The programs for A244831, there is no canonical definition to state claims against.
-/

/-! ## A244831.P2709792379877670743

`A244832(A055999(n+4))`
-/

namespace A244831.P2709792379877670743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244832 (A055999 (n + 4)).toNat

end

end A244831.P2709792379877670743

/-!
# A244832: T(n,k) = Number of length n 0..k arrays with each partial sum starting from the beginning no more than two standard deviations from its mean.

The programs for A244832, there is no canonical definition to state claims against.
-/

/-! ## A244832.P18077238387310648643

`A347249(n+1)+A250351(A077168(n))`
-/

namespace A244832.P18077238387310648643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347249 (n + 1) + A250351 (A077168 n).toNat

end

end A244832.P18077238387310648643

/-! ## A244832.P15829554856824766520

`A250351(n+1)-A025465(A077168(n))`
-/

namespace A244832.P15829554856824766520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250351 (n + 1) - A025465 (A077168 n).toNat

end

end A244832.P15829554856824766520

/-! ## A244832.P15397775628247368511

`A250351(n+1)-A025465(A099962(n))`
-/

namespace A244832.P15397775628247368511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250351 (n + 1) - A025465 (A099962 n).toNat

end

end A244832.P15397775628247368511

/-! ## A244832.P14173691507636264510

`A250351(A077168(n))-A083919(n+1)`
-/

namespace A244832.P14173691507636264510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250351 (A077168 n).toNat - A083919 (n + 1)

end

end A244832.P14173691507636264510

/-! ## A244832.P13292477275230952594

`A250351(n+1)-A189632(A036618(n))`
-/

namespace A244832.P13292477275230952594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250351 (n + 1) - A189632 (A036618 n).toNat

end

end A244832.P13292477275230952594

/-!
# A244833: Number of length 2 0..n arrays with each partial sum starting from the beginning no more than two standard deviations from its mean.

The programs for A244833, there is no canonical definition to state claims against.
-/

/-! ## A244833.P11939937202986166282

`A244832(∑[n+1]+2)`
-/

namespace A244833.P11939937202986166282
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244832 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A244833.P11939937202986166282

/-!
# A244834: Number of length 3 0..n arrays with each partial sum starting from the beginning no more than two standard deviations from its mean.

The programs for A244834, there is no canonical definition to state claims against.
-/

/-! ## A244834.P8962302434719092373

`A244832(∑[n+2]+4)`
-/

namespace A244834.P8962302434719092373
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244832 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A244834.P8962302434719092373

/-!
# A244835: Number of length 4 0..n arrays with each partial sum starting from the beginning no more than two standard deviations from its mean.

The programs for A244835, there is no canonical definition to state claims against.
-/

/-! ## A244835.P14641555070648329542

`A244832(A052905(n)+9)`
-/

namespace A244835.P14641555070648329542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244832 (A052905 n + 9).toNat

end

end A244835.P14641555070648329542

/-!
# A244836: Number of length 5 0..n arrays with each partial sum starting from the beginning no more than two standard deviations from its mean.

The programs for A244836, there is no canonical definition to state claims against.
-/

/-! ## A244836.P8918415090884827143

`A244832(A167499(n+3))`
-/

namespace A244836.P8918415090884827143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244832 (A167499 (n + 3)).toNat

end

end A244836.P8918415090884827143

/-!
# A244837: Number of length 6 0..n arrays with each partial sum starting from the beginning no more than two standard deviations from its mean.

The programs for A244837, there is no canonical definition to state claims against.
-/

/-! ## A244837.P7045448719435933984

`A244832(A000124(n+5)+5)`
-/

namespace A244837.P7045448719435933984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244832 (A000124 (n + 5) + 5).toNat

end

end A244837.P7045448719435933984

/-!
# A244838: Number of length 7 0..n arrays with each partial sum starting from the beginning no more than two standard deviations from its mean.

The programs for A244838, there is no canonical definition to state claims against.
-/

/-! ## A244838.P6614714032647892841

`A244832(A167499(n+5)+2)`
-/

namespace A244838.P6614714032647892841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244832 (A167499 (n + 5) + 2).toNat

end

end A244838.P6614714032647892841

/-!
# A244840: Denominators of the triangle T(n,k) = (n*(n+1)/2+k+1)/(k+1) for n >= k >= 0.

The programs for A244840, the canonical program `A244840.P3836001841454585434` is in `Seq.B000.C037`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A244840 has offset 0).

The definition of A244840 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A244840.P3836001841454585434

`lcm(1+n, col(n)+1)/(n+1)`

The canonical program, it is in `Seq.B000.C037`.
-/

namespace A244840

/-- `lcm(1+n, col(n)+1)/(n+1)` -/
def P3836001841454585434.Spec : Prop :=
  ∀ n, P3836001841454585434.a n = (A244840 n : ℚ)

end A244840

/-! ## A244840.P182382880147714493

`(col(n)+1)/gcd(col(n)+1, n+1)`
-/

namespace A244840.P182382880147714493
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.triCol n + 1 : ℚ) / (Nat.gcd (SequenceMachineLib.triCol n + 1) (n + 1) : ℚ)

end

end A244840.P182382880147714493

namespace A244840

/-- `(col(n)+1)/gcd(col(n)+1, n+1)` -/
def P182382880147714493.Spec : Prop :=
  ∀ n, P182382880147714493.a n = (A244840 n : ℚ)

end A244840

/-! ## A244840.P8759654480892561535

`lcm(n+1, A002260(n+1))/(n+1)`
-/

namespace A244840.P8759654480892561535
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm (n + 1 : ℤ) (A002260 (n + 1)) : ℚ) / (n + 1 : ℚ)

end

end A244840.P8759654480892561535

namespace A244840

/-- `lcm(n+1, A002260(n+1))/(n+1)` -/
def P8759654480892561535.Spec : Prop :=
  ∀ n, P8759654480892561535.a n = (A244840 n : ℚ)

end A244840

/-! ## A244840.P14020433447713461916

`lcm(A002262(n)+1, C(n+1, n))/(n+1)`
-/

namespace A244840.P14020433447713461916
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm (A002262 n + 1) (Nat.choose (n + 1) n : ℤ) : ℚ) / (n + 1 : ℚ)

end

end A244840.P14020433447713461916

namespace A244840

/-- `lcm(A002262(n)+1, C(n+1, n))/(n+1)` -/
def P14020433447713461916.Spec : Prop :=
  ∀ n, P14020433447713461916.a n = (A244840 n : ℚ)

end A244840

/-! ## A244840.P5759177277046417444

`A002260(n+1)/gcd(n+1, A057944(n))`
-/

namespace A244840.P5759177277046417444
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002260 (n + 1) : ℚ) / (Int.gcd (n + 1 : ℤ) (A057944 n) : ℚ)

end

end A244840.P5759177277046417444

namespace A244840

/-- `A002260(n+1)/gcd(n+1, A057944(n))` -/
def P5759177277046417444.Spec : Prop :=
  ∀ n, P5759177277046417444.a n = (A244840 n : ℚ)

end A244840

/-! ## A244840.P12521609274511422329

`A002260(n+1)/gcd(A002260(n+1), A131738(n))`
-/

namespace A244840.P12521609274511422329
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002260 (n + 1) : ℚ) / (Int.gcd (A002260 (n + 1)) (A131738 n) : ℚ)

end

end A244840.P12521609274511422329

namespace A244840

/-- `A002260(n+1)/gcd(A002260(n+1), A131738(n))` -/
def P12521609274511422329.Spec : Prop :=
  ∀ n, P12521609274511422329.a n = (A244840 n : ℚ)

end A244840

/-! ## A244840.P4820346176987578366

`lcm(n+1, A000005(A059268(n)))/(n+1)`
-/

namespace A244840.P4820346176987578366
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm (n + 1 : ℤ) (A000005 (A059268 n).toNat) : ℚ) / (n + 1 : ℚ)

end

end A244840.P4820346176987578366

namespace A244840

/-- `lcm(n+1, A000005(A059268(n)))/(n+1)` -/
def P4820346176987578366.Spec : Prop :=
  ∀ n, P4820346176987578366.a n = (A244840 n : ℚ)

end A244840

/-! ## A244840.P11000466144904514414

`A164306(∑[n]+1-C(∑[char[∑[n]]], 2)+n)`
-/

namespace A244840.P11000466144904514414
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164306 (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) + (1 - (Nat.choose (∑ j ∈ Finset.range (n + 1), f2 j) 2 : ℤ) + (n : ℤ))).toNat

end

end A244840.P11000466144904514414

namespace A244840

/-- `A164306(∑[n]+1-C(∑[char[∑[n]]], 2)+n)` -/
def P11000466144904514414.Spec : Prop :=
  ∀ n, P11000466144904514414.a n = A244840 n

end A244840

/-!
# A244841: 4^p - 3^p - 1, where p is prime.

The programs for A244841, the canonical program `A244841.P10511516995300593721` is in `Seq.B001.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A244841 has offset 1).

The definition of A244841 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A244841.P10511516995300593721

`4^A000040(n+1)-3^A000040(n+1)-1`

The canonical program, it is in `Seq.B001.C010`.
-/

namespace A244841

/-- `4^A000040(n+1)-3^A000040(n+1)-1` -/
def P10511516995300593721.Spec : Prop :=
  ∀ n, P10511516995300593721.a n = (A244841 (n + 1) : ℚ)

end A244841

/-! ## A244841.P5705522214586404588

`A005061(record[A051698(n)])-1`
-/

namespace A244841.P5705522214586404588
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051698 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005061 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat - 1

end

end A244841.P5705522214586404588

namespace A244841

/-- `A005061(record[A051698(n)])-1` -/
def P5705522214586404588.Spec : Prop :=
  ∀ n, P5705522214586404588.a n = A244841 (n + 1)

end A244841

/-! ## A244841.P7207991267859991053

`A005061(p?[A007989(n)])-1`
-/

namespace A244841.P7207991267859991053
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007989 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005061 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat - 1

end

end A244841.P7207991267859991053

namespace A244841

/-- `A005061(p?[A007989(n)])-1` -/
def P7207991267859991053.Spec : Prop :=
  ∀ n, P7207991267859991053.a n = A244841 (n + 1)

end A244841

/-! ## A244841.P10229133069835701125

`A005061(p?[A091203(n)])-1`
-/

namespace A244841.P10229133069835701125
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091203 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005061 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat - 1

end

end A244841.P10229133069835701125

namespace A244841

/-- `A005061(p?[A091203(n)])-1` -/
def P10229133069835701125.Spec : Prop :=
  ∀ n, P10229133069835701125.a n = A244841 (n + 1)

end A244841

/-! ## A244841.P4668526649365190672

`A155609(record[A051698(n)])-2`
-/

namespace A244841.P4668526649365190672
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051698 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155609 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat - 2

end

end A244841.P4668526649365190672

namespace A244841

/-- `A155609(record[A051698(n)])-2` -/
def P4668526649365190672.Spec : Prop :=
  ∀ n, P4668526649365190672.a n = A244841 (n + 1)

end A244841

/-!
# A244842: a(n) = (10^n - 1)*(10^n - 10)/90.

The programs for A244842, the canonical program `A244842.P11551185186741496577` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A244842 has offset 1).

The definition of A244842 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A244842.P15463560824316821809

`(10^(n+1)-1)*(10^(n+1)-10)/90`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A244842.P15463560824316821809
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((10 ^ (n + 1) : ℤ) - 1) * ((10 ^ (n + 1) : ℤ) - 10) : ℚ) / 90

end

end A244842.P15463560824316821809

namespace A244842

/-- `(10^(n+1)-1)*(10^(n+1)-10)/90` -/
def P15463560824316821809.Spec : Prop :=
  ∀ n, P15463560824316821809.a n = (A244842 (n + 1) : ℚ)

end A244842

/-! ## A244842.P11551185186741496577

`9*A274766(n)`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A244842

/-- `9*A274766(n)` -/
def P11551185186741496577.Spec : Prop :=
  ∀ n, P11551185186741496577.a n = A244842 (n + 1)

theorem P11551185186741496577.correct : P11551185186741496577.Spec := by
  intro n
  simp only [A244842, Nat.add_sub_cancel]

end A244842

/-! ## A244842.P11460642828145973966

`(10^n-1)*∑[10*a(n-1)]` with `a(0)=1`
-/

namespace A244842.P11460642828145973966
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f1 =>
  10 * f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((10 ^ n : ℤ) - 1) * ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A244842.P11460642828145973966

namespace A244842

/-- `(10^n-1)*∑[10*a(n-1)]` -/
def P11460642828145973966.Spec : Prop :=
  ∀ n, P11460642828145973966.a n = A244842 (n + 1)

end A244842

/-! ## A244842.P10012548213529022324

`record[Δ[A288662(n)]]`
-/

namespace A244842.P10012548213529022324
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288662 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A244842.P10012548213529022324

namespace A244842

/-- `record[Δ[A288662(n)]]` -/
def P10012548213529022324.Spec : Prop :=
  ∀ n, P10012548213529022324.a n = A244842 (n + 1)

end A244842

/-! ## A244842.P4076228402302725174

`record[Δ[-A282416(n)]]`
-/

namespace A244842.P4076228402302725174
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A282416 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A244842.P4076228402302725174

namespace A244842

/-- `record[Δ[-A282416(n)]]` -/
def P4076228402302725174.Spec : Prop :=
  ∀ n, P4076228402302725174.a n = A244842 (n + 1)

end A244842

/-! ## A244842.P1042833014230492727

`A138148(n)-∑[floor(10^n/5)]`
-/

namespace A244842.P1042833014230492727
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(10 ^ n : ℚ) / 5⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138148 n - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A244842.P1042833014230492727

namespace A244842

/-- `A138148(n)-∑[floor(10^n/5)]` -/
def P1042833014230492727.Spec : Prop :=
  ∀ n, P1042833014230492727.a n = A244842 (n + 1)

end A244842

/-! ## A244842.P3019137719786452345

`A332112(n)-∑[10*a(n-1)]` with `a(0)=2`
-/

namespace A244842.P3019137719786452345
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [2] fun n f1 =>
  10 * f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332112 n - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A244842.P3019137719786452345

namespace A244842

/-- `A332112(n)-∑[10*a(n-1)]` -/
def P3019137719786452345.Spec : Prop :=
  ∀ n, P3019137719786452345.a n = A244842 (n + 1)

end A244842

/-! ## A244842.P15082795851376001799

`lcm(∑[10*a(n-1)], A002283(n))` with `a(0)=9`
-/

namespace A244842.P15082795851376001799
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [9] fun n f1 =>
  10 * f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) (A002283 n)

end

end A244842.P15082795851376001799

namespace A244842

/-- `lcm(∑[10*a(n-1)], A002283(n))` -/
def P15082795851376001799.Spec : Prop :=
  ∀ n, (P15082795851376001799.a n : ℤ) = A244842 (n + 1)

end A244842

/-! ## A244842.P8121318360635596473

`A163663(n)-A002275(n)`
-/

namespace A244842.P8121318360635596473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163663 n - A002275 n

end

end A244842.P8121318360635596473

namespace A244842

/-- `A163663(n)-A002275(n)` -/
def P8121318360635596473.Spec : Prop :=
  ∀ n, P8121318360635596473.a n = A244842 (n + 1)

end A244842

/-! ## A244842.P8574150926904085847

`record[A282416(n)-A282415(n)]`
-/

namespace A244842.P8574150926904085847
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282416 n - A282415 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A244842.P8574150926904085847

namespace A244842

/-- `record[A282416(n)-A282415(n)]` -/
def P8574150926904085847.Spec : Prop :=
  ∀ n, P8574150926904085847.a n = A244842 (n + 1)

end A244842

/-!
# A244845: Binary representation of 4^n - 2^(n+1) - 1.

The programs for A244845, there is no canonical definition to state claims against.
-/

/-! ## A244845.P9243854818463007822

`A099814(n+2)-A011557(n+3)`
-/

namespace A244845.P9243854818463007822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099814 (n + 2) - A011557 (n + 3)

end

end A244845.P9243854818463007822

/-! ## A244845.P16164754155459878305

`A099814(n+2)-Δ[A002275(n+3)]`
-/

namespace A244845.P16164754155459878305
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002275 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099814 (n + 2) - (f1 (n + 1) - f1 n)

end

end A244845.P16164754155459878305

/-! ## A244845.P15199077118852856476

`A000042(2*(n+2))-A011557(n+3)`
-/

namespace A244845.P15199077118852856476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000042 (2 * (n + 2)) - A011557 (n + 3)

end

end A244845.P15199077118852856476

/-! ## A244845.P17182760564178379229

`A002275(2*(n+2))-Δ[A105279(n+2)]`
-/

namespace A244845.P17182760564178379229
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105279 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002275 (2 * (n + 2)) - (f1 (n + 1) - f1 n)

end

end A244845.P17182760564178379229

/-! ## A244845.P18089560859519802680

`A002275(2*(n+2))-Δ[A098406(n+3)]`
-/

namespace A244845.P18089560859519802680
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098406 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002275 (2 * (n + 2)) - (f1 (n + 1) - f1 n)

end

end A244845.P18089560859519802680

/-!
# A244847: Decimal expansion of rho_c = (5-sqrt(5))/10, the asymptotic critical density for the hard hexagon model.

The programs for A244847, there is no canonical definition to state claims against.
-/

/-! ## A244847.P13892089553153465582

`9-A242671(n)`
-/

namespace A244847.P13892089553153465582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 - A242671 n

end

end A244847.P13892089553153465582

/-! ## A244847.P4258881582173318604

`A040020(n)-(A002163(n)+1)`
-/

namespace A244847.P4258881582173318604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040020 n - (A002163 (n + 1) + 1)

end

end A244847.P4258881582173318604

/-! ## A244847.P16632922778045662569

`A040006(n)+3-A098317(n)`
-/

namespace A244847.P16632922778045662569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040006 n + (3 - A098317 (n + 1))

end

end A244847.P16632922778045662569

/-! ## A244847.P3109632383228190698

`xor(3, A040020(n))-A098317(n)`
-/

namespace A244847.P3109632383228190698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 3 (A040020 n) - A098317 (n + 1)

end

end A244847.P3109632383228190698

/-! ## A244847.P10242166301149970717

`dr(A040012(n)!)-A098317(n)`
-/

namespace A244847.P10242166301149970717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.digitalRoot (Nat.factorial (A040012 n).toNat : ℤ) : ℤ) - A098317 (n + 1)

end

end A244847.P10242166301149970717

/-! ## A244847.P7540509918319984677

`dr(A040020(n)!)-A134972(n)`
-/

namespace A244847.P7540509918319984677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.digitalRoot (Nat.factorial (A040020 n).toNat : ℤ) : ℤ) - A134972 (n + 1)

end

end A244847.P7540509918319984677

/-! ## A244847.P4721160354525139175

`(A040000(n)+1)²-A002163(n)`
-/

namespace A244847.P4721160354525139175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A040000 n + 1) ^ 2 - A002163 (n + 1)

end

end A244847.P4721160354525139175

/-! ## A244847.P17507371406181255943

`A001622(n+1)+A225667(n)-A229780(n)`
-/

namespace A244847.P17507371406181255943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001622 (n + 1 + 1) + (A225667 (n + 1) - A229780 n)

end

end A244847.P17507371406181255943

/-!
# A244853: Let d(1)d(2)... d(q) denote the decimal expansion of a prime number n > 9. The sequence lists the primes such that replacing each digit d(i) with d(i+1) copies for i = 1..q-1 and d(q) with d(1) copies produces a prime. Zeros are not allowed.

The programs for A244853, there is no canonical definition to state claims against.
-/

/-! ## A244853.P9465910836805999464

`∩[A075824(n+1), A117835(n+1)]`
-/

namespace A244853.P9465910836805999464
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075824 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117835 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A244853.P9465910836805999464

/-!
# A244855: a(n) = Fibonacci(n)^4-1.

The programs for A244855, the canonical program `A244855.P1263947256466839678` is in `Seq.B001.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A244855 has offset 1).

The definition of A244855 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000045(n+1)^4-1` (program `A244855.P1263947256466839678`, by `A244855.P1263947256466839678.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A244855.P16421463321067911123

`ogf((15x^2+5x^3-x^4)/(1-5x-15x^2+15x^3+5x^4-x^5))`
-/

namespace A244855.P16421463321067911123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 0, 15, 5, -1] [1, -5, -15, 15, 5, -1] n

end

end A244855.P16421463321067911123

namespace A244855

/-- `ogf((15x^2+5x^3-x^4)/(1-5x-15x^2+15x^3+5x^4-x^5))` -/
def P16421463321067911123.Spec : Prop :=
  ∀ n, P16421463321067911123.a n = A244855 (n + 1)

end A244855

/-! ## A244855.P16069968218495320223

`A056571(n+1)-1`
-/

namespace A244855.P16069968218495320223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056571 (n + 1) - 1

end

end A244855.P16069968218495320223

namespace A244855

/-- `A056571(n+1)-1` -/
def P16069968218495320223.Spec : Prop :=
  ∀ n, P16069968218495320223.a n = A244855 (n + 1)

theorem P16069968218495320223.correct : P16069968218495320223.Spec := by
  intro n
  simp only [A244855, Nat.add_sub_cancel, A244855.P16069968218495320223.a, A244855.P1263947256466839678.a, A000045, A000045.P11838749114346432762.a, A056571, A056571.P16308411225797373877.a, A007598, A007598.P12226372241189459830.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A244855

/-! ## A244855.P1263947256466839678

`A000045(n+1)^4-1`

The canonical program, it is in `Seq.B001.C010`.
-/

namespace A244855

/-- `A000045(n+1)^4-1` -/
def P1263947256466839678.Spec : Prop :=
  ∀ n, P1263947256466839678.a n = A244855 (n + 1)

theorem P1263947256466839678.correct : P1263947256466839678.Spec := by
  intro n
  simp only [A244855, Nat.add_sub_cancel]

end A244855

/-! ## A244855.P16636846394923297520

`∑[a(n-1)+a(n-2)]^4-1` with `a(0)=1, a(1)=0`
-/

namespace A244855.P16636846394923297520
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 0] fun n f1 =>
  f1 (n - 1) + f1 (n - 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((∑ j ∈ Finset.range (n + 1), f1 j) ^ 4 : ℕ) : ℤ) - 1

end

end A244855.P16636846394923297520

namespace A244855

/-- `∑[a(n-1)+a(n-2)]^4-1` -/
def P16636846394923297520.Spec : Prop :=
  ∀ n, P16636846394923297520.a n = A244855 (n + 1)

end A244855

/-! ## A244855.P7346097493583469251

`∑[a(n-1)+a(n-2)]²²-1` with `a(0)=1, a(1)=0`
-/

namespace A244855.P7346097493583469251
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 0] fun n f1 =>
  f1 (n - 1) + f1 (n - 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2) ^ 2 : ℕ) : ℤ) - 1

end

end A244855.P7346097493583469251

namespace A244855

/-- `∑[a(n-1)+a(n-2)]²²-1` -/
def P7346097493583469251.Spec : Prop :=
  ∀ n, P7346097493583469251.a n = A244855 (n + 1)

end A244855

/-! ## A244855.P8303791992702343687

`abs(Δ[A119285(n)])-1`
-/

namespace A244855.P8303791992702343687
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119285 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n| - 1

end

end A244855.P8303791992702343687

namespace A244855

/-- `abs(Δ[A119285(n)])-1` -/
def P8303791992702343687.Spec : Prop :=
  ∀ n, P8303791992702343687.a n = A244855 (n + 1)

end A244855

/-! ## A244855.P15248296519974320714

`∑[A099496(n)]²-1`
-/

namespace A244855.P15248296519974320714
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099496 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 - 1

end

end A244855.P15248296519974320714

namespace A244855

/-- `∑[A099496(n)]²-1` -/
def P15248296519974320714.Spec : Prop :=
  ∀ n, P15248296519974320714.a n = A244855 (n + 1)

end A244855

/-! ## A244855.P12943195283605666529

`Δ[A001654(n)]²-1`
-/

namespace A244855.P12943195283605666529
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001654 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) ^ 2 - 1

end

end A244855.P12943195283605666529

namespace A244855

/-- `Δ[A001654(n)]²-1` -/
def P12943195283605666529.Spec : Prop :=
  ∀ n, P12943195283605666529.a n = A244855 (n + 1)

end A244855

/-! ## A244855.P7475540718933569336

`Δ[A119283(n)]²-1`
-/

namespace A244855.P7475540718933569336
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119283 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) ^ 2 - 1

end

end A244855.P7475540718933569336

namespace A244855

/-- `Δ[A119283(n)]²-1` -/
def P7475540718933569336.Spec : Prop :=
  ∀ n, P7475540718933569336.a n = A244855 (n + 1)

end A244855

/-! ## A244855.P5908405925957164978

`A007598(n+1)²-1`
-/

namespace A244855.P5908405925957164978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007598 (n + 1) ^ 2 - 1

end

end A244855.P5908405925957164978

namespace A244855

/-- `A007598(n+1)²-1` -/
def P5908405925957164978.Spec : Prop :=
  ∀ n, P5908405925957164978.a n = A244855 (n + 1)

theorem P5908405925957164978.correct : P5908405925957164978.Spec := by
  intro n
  simp only [A244855, Nat.add_sub_cancel, A244855.P5908405925957164978.a, A244855.P1263947256466839678.a, A000045, A000045.P11838749114346432762.a, A007598, A007598.P12226372241189459830.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A244855

/-! ## A244855.P12447951304706917680

`A006498(2*n)²-1`
-/

namespace A244855.P12447951304706917680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006498 (2 * n) ^ 2 - 1

end

end A244855.P12447951304706917680

namespace A244855

/-- `A006498(2*n)²-1` -/
def P12447951304706917680.Spec : Prop :=
  ∀ n, P12447951304706917680.a n = A244855 (n + 1)

end A244855

/-! ## A244855.P16216473390744024421

`∑[A212804(n)]²²-1`
-/

namespace A244855.P16216473390744024421
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212804 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2) ^ 2 - 1

end

end A244855.P16216473390744024421

namespace A244855

/-- `∑[A212804(n)]²²-1` -/
def P16216473390744024421.Spec : Prop :=
  ∀ n, P16216473390744024421.a n = A244855 (n + 1)

end A244855

/-! ## A244855.P1756933865161012951

`Δ[A119282(n)]²²-1`
-/

namespace A244855.P1756933865161012951
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119282 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((f1 (n + 1) - f1 n) ^ 2) ^ 2 - 1

end

end A244855.P1756933865161012951

namespace A244855

/-- `Δ[A119282(n)]²²-1` -/
def P1756933865161012951.Spec : Prop :=
  ∀ n, P1756933865161012951.a n = A244855 (n + 1)

end A244855

/-! ## A244855.P11431591730766138852

`∑[∑[A219233(n)]]²-1`
-/

namespace A244855.P11431591730766138852
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219233 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 - 1

end

end A244855.P11431591730766138852

namespace A244855

/-- `∑[∑[A219233(n)]]²-1` -/
def P11431591730766138852.Spec : Prop :=
  ∀ n, P11431591730766138852.a n = A244855 (n + 1)

end A244855

/-! ## A244855.P14289760519748888456

`Δ[Δ[A166516(n)]]²-1`
-/

namespace A244855.P14289760519748888456
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166516 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) ^ 2 - 1

end

end A244855.P14289760519748888456

namespace A244855

/-- `Δ[Δ[A166516(n)]]²-1` -/
def P14289760519748888456.Spec : Prop :=
  ∀ n, P14289760519748888456.a n = A244855 (n + 1)

end A244855

/-! ## A244855.P14861855438516286952

`A236191(n+1)²²-1`
-/

namespace A244855.P14861855438516286952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A236191 (n + 1) ^ 2) ^ 2 - 1

end

end A244855.P14861855438516286952

namespace A244855

/-- `A236191(n+1)²²-1` -/
def P14861855438516286952.Spec : Prop :=
  ∀ n, P14861855438516286952.a n = A244855 (n + 1)

end A244855

/-! ## A244855.P5141308114731980193

`A333378(n+1)²²-1`
-/

namespace A244855.P5141308114731980193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A333378 (n + 1) ^ 2) ^ 2 - 1

end

end A244855.P5141308114731980193

namespace A244855

/-- `A333378(n+1)²²-1` -/
def P5141308114731980193.Spec : Prop :=
  ∀ n, P5141308114731980193.a n = A244855 (n + 1)

end A244855

/-!
# A244856: G.f. satisfies: A(x) = (4 + A(x)^4) / (5-x).

The programs for A244856, there is no canonical definition to state claims against.
-/

/-! ## A244856.P17240436165429216232

`A265711(A332578(n²))`
-/

namespace A244856.P17240436165429216232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265711 (A332578 (n ^ 2)).toNat

end

end A244856.P17240436165429216232

/-!
# A244857: Numbers divisible by both the sum of the squares of their digits and the product of their digits.

The programs for A244857, there is no canonical definition to state claims against.
-/

/-! ## A244857.P13058908613447339237

`∩[A007602(n+1), A034087(n+1)]`
-/

namespace A244857.P13058908613447339237
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007602 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034087 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A244857.P13058908613447339237

/-! ## A244857.P10681904663227826817

`∩[A007602(n+1), A117562(n+1)]`
-/

namespace A244857.P10681904663227826817
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007602 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117562 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A244857.P10681904663227826817

/-! ## A244857.P3529498100243554776

`∩[A034087(n+1), A288069(n+1)*A360075(n+1)]`
-/

namespace A244857.P3529498100243554776
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034087 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288069 (n + 1) * A360075 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A244857.P3529498100243554776

/-!
# A244859: Least positive multiple of n which when written in base 10 is either a repunit or of the form 111...000.

The programs for A244859, there is no canonical definition to state claims against.
-/

/-! ## A244859.P12057706428589681614

`A244927(abs(1-n)+1)*n`
-/

namespace A244859.P12057706428589681614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244927 (|1 - (n : ℤ)| + 1).toNat * (n : ℤ)

end

end A244859.P12057706428589681614

/-! ## A244859.P3706327591680536808

`lcm(A001222(2^n), A244927(abs(1-n)+1))`
-/

namespace A244859.P3706327591680536808
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A001222 (2 ^ n)) (A244927 (|1 - (n : ℤ)| + 1).toNat)

end

end A244859.P3706327591680536808

/-!
# A244860: Number of Fibonacci numbers in generation n of the tree at A232559.

The programs for A244860, there is no canonical definition to state claims against.
-/

/-! ## A244860.P6317063548670838517

`A125514(A103000(n+1))%3`
-/

namespace A244860.P6317063548670838517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A125514 (A103000 (n + 1)).toNat) 3

end

end A244860.P6317063548670838517

/-! ## A244860.P14978502516291591637

`A188040(A268092(n+1))%3`
-/

namespace A244860.P14978502516291591637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A188040 (A268092 (n + 1)).toNat) 3

end

end A244860.P14978502516291591637

/-! ## A244860.P734970874018119531

`A317637(A194633(n+1))%7`
-/

namespace A244860.P734970874018119531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A317637 (A194633 (n + 1)).toNat) 7

end

end A244860.P734970874018119531

/-! ## A244860.P6030941799499017246

`A308009(∑[A214829(A326636(n))])`
-/

namespace A244860.P6030941799499017246
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214829 (A326636 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308009 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A244860.P6030941799499017246

/-! ## A244860.P4426284831122268427

`A328248(A257624(n)+A115361(n))`
-/

namespace A244860.P4426284831122268427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328248 (A257624 n + A115361 n).toNat

end

end A244860.P4426284831122268427

/-!
# A244862: List of pairs of prime numbers (p,q) starting with (2, 3) such that p || q (where || denotes concatenation) is a prime number and the sequence is always extended with the smallest prime not yet present in the sequence.

The programs for A244862, there is no canonical definition to state claims against.
-/

/-! ## A244862.P836566995743453455

`A373794(1+n)`
-/

namespace A244862.P836566995743453455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373794 (1 + n)

end

end A244862.P836566995743453455

/-!
# A244863: Semiprimes whose digit sum is a perfect square.

The programs for A244863, the canonical program `A244863.P1603054009884730602` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A244863 has offset 1).

The definition of A244863 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2499 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A244863.P1603054009884730602

`∩[A001358(n+1), A028839(n+1)]`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A244863

/-- `∩[A001358(n+1), A028839(n+1)]` -/
def P1603054009884730602.Spec : Prop :=
  ∀ n, (P1603054009884730602.a n : ℤ) = A244863 (n + 1)

theorem P1603054009884730602.correct : P1603054009884730602.Spec := by
  intro n
  simp only [A244863, Nat.add_sub_cancel]

end A244863

/-! ## A244863.P1095001509280994500

`filter[A028839(1+n), A064911(#)]`
-/

namespace A244863.P1095001509280994500
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028839 (1 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A064911 (f1 j).toNat = 1) n)

end

end A244863.P1095001509280994500

namespace A244863

/-- `filter[A028839(1+n), A064911(#)]` -/
def P1095001509280994500.Spec : Prop :=
  ∀ n, P1095001509280994500.a n = A244863 (n + 1)

end A244863

/-! ## A244863.P15428055394881221870

`∩[A028839(n+1), A077135(n+1)]`
-/

namespace A244863.P15428055394881221870
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028839 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077135 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A244863.P15428055394881221870

namespace A244863

/-- `∩[A028839(n+1), A077135(n+1)]` -/
def P15428055394881221870.Spec : Prop :=
  ∀ n, (P15428055394881221870.a n : ℤ) = A244863 (n + 1)

end A244863

/-! ## A244863.P13054106701330248348

`lt[A002828(A007953(n)), A105700(n)]`
-/

namespace A244863.P13054106701330248348
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002828 (A007953 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105700 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A244863.P13054106701330248348

namespace A244863

/-- `lt[A002828(A007953(n)), A105700(n)]` -/
def P13054106701330248348.Spec : Prop :=
  ∀ n, (P13054106701330248348.a n : ℤ) = A244863 (n + 1)

end A244863

/-! ## A244863.P5421211129807633210

`lt[A002828(2*A169805(n)), A105700(n)]`
-/

namespace A244863.P5421211129807633210
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002828 (2 * A169805 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105700 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A244863.P5421211129807633210

namespace A244863

/-- `lt[A002828(2*A169805(n)), A105700(n)]` -/
def P5421211129807633210.Spec : Prop :=
  ∀ n, (P5421211129807633210.a n : ℤ) = A244863 (n + 1)

end A244863

/-! ## A244863.P17677233109247788701

`lt[A249111(2*A169805(n)), A105700(n)]`
-/

namespace A244863.P17677233109247788701
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249111 (2 * A169805 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105700 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A244863.P17677233109247788701

namespace A244863

/-- `lt[A249111(2*A169805(n)), A105700(n)]` -/
def P17677233109247788701.Spec : Prop :=
  ∀ n, (P17677233109247788701.a n : ℤ) = A244863 (n + 1)

end A244863

/-! ## A244863.P15551668572260512913

`lt[A002828(A169805(n)/2), A105700(n)]`
-/

namespace A244863.P15551668572260512913
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002828 (SequenceMachineLib.roundAway ((A169805 n : ℚ) / 2)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105700 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A244863.P15551668572260512913

namespace A244863

/-- `lt[A002828(A169805(n)/2), A105700(n)]` -/
def P15551668572260512913.Spec : Prop :=
  ∀ n, (P15551668572260512913.a n : ℤ) = A244863 (n + 1)

end A244863

/-! ## A244863.P15559019340677288724

`lt[A249111(A169805(n)/2), A105700(n)]`
-/

namespace A244863.P15559019340677288724
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249111 (SequenceMachineLib.roundAway ((A169805 n : ℚ) / 2)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105700 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A244863.P15559019340677288724

namespace A244863

/-- `lt[A249111(A169805(n)/2), A105700(n)]` -/
def P15559019340677288724.Spec : Prop :=
  ∀ n, (P15559019340677288724.a n : ℤ) = A244863 (n + 1)

end A244863

/-! ## A244863.P15351212035994924323

`lt[A002828(A118880(n)), A105700(n)]`
-/

namespace A244863.P15351212035994924323
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002828 (A118880 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105700 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A244863.P15351212035994924323

namespace A244863

/-- `lt[A002828(A118880(n)), A105700(n)]` -/
def P15351212035994924323.Spec : Prop :=
  ∀ n, (P15351212035994924323.a n : ℤ) = A244863 (n + 1)

end A244863

/-!
# A244864: a(n) = binomial(n+5,5) + 4*binomial(n+4,5) + 4*binomial(n+3,5) + binomial(n+2,5).

The programs for A244864, the canonical program `A244864.P2839936141787549621` is in `Seq.B000.C037`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A244864 has offset 0).

The definition of A244864 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `C(n+5, 5)+4*C(n+4, 5)+4*C(n+3, 5)+C(n+2, 5)` (program `A244864.P2839936141787549621`, by `A244864.P2839936141787549621.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A244864.P3734884661236063650

`ogf((1+4x+4x^2+x^3)/(1-6x+15x^2-20x^3+15x^4-6x^5+x^6))`
-/

namespace A244864.P3734884661236063650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 4, 4, 1] [1, -6, 15, -20, 15, -6, 1] n

end

end A244864.P3734884661236063650

namespace A244864

/-- `ogf((1+4x+4x^2+x^3)/(1-6x+15x^2-20x^3+15x^4-6x^5+x^6))` -/
def P3734884661236063650.Spec : Prop :=
  ∀ n, P3734884661236063650.a n = A244864 n

end A244864

/-! ## A244864.P2360955736908097608

`(2*n+3)*(n+2)*(n+1)*(n²+3*n+4)/24`
-/

namespace A244864.P2360955736908097608
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((2 * n + 3) * (n + 2) * (n + 1) * (n ^ 2 + 3 * n + 4) : ℚ) / 24

end

end A244864.P2360955736908097608

namespace A244864

/-- `(2*n+3)*(n+2)*(n+1)*(n²+3*n+4)/24` -/
def P2360955736908097608.Spec : Prop :=
  ∀ n, P2360955736908097608.a n = (A244864 n : ℚ)

theorem P2360955736908097608.correct : P2360955736908097608.Spec := by
  intro n
  simp only [A244864, Nat.add_sub_cancel, A244864.P2360955736908097608.a, A244864.P2839936141787549621.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A244864

/-! ## A244864.P2839936141787549621

`C(n+5, 5)+4*C(n+4, 5)+4*C(n+3, 5)+C(n+2, 5)`

The canonical program, it is in `Seq.B000.C037`.
-/

namespace A244864

/-- `C(n+5, 5)+4*C(n+4, 5)+4*C(n+3, 5)+C(n+2, 5)` -/
def P2839936141787549621.Spec : Prop :=
  ∀ n, (P2839936141787549621.a n : ℤ) = A244864 n

theorem P2839936141787549621.correct : P2839936141787549621.Spec := by
  intro n
  simp only [A244864]

end A244864

/-! ## A244864.P6232312505879442210

`∑{#}[A000292(n+1)-A000292(n), #+A000292(n)]`
-/

namespace A244864.P6232312505879442210
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000292 (n + 1) - A000292 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1).toNat, ((k : ℤ) + A000292 n)

end

end A244864.P6232312505879442210

namespace A244864

/-- `∑{#}[A000292(n+1)-A000292(n), #+A000292(n)]` -/
def P6232312505879442210.Spec : Prop :=
  ∀ n, P6232312505879442210.a n = A244864 n

end A244864

/-! ## A244864.P8467582789350047956

`∑[∑[5*n²+2+a(n-1)]]` with `a(0)=1`
-/

namespace A244864.P8467582789350047956
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f2 =>
  5 * n ^ 2 + 2 + f2 (n - 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A244864.P8467582789350047956

namespace A244864

/-- `∑[∑[5*n²+2+a(n-1)]]` -/
def P8467582789350047956.Spec : Prop :=
  ∀ n, (P8467582789350047956.a n : ℤ) = A244864 n

end A244864

/-! ## A244864.P6356655544683609429

`∑[∑[A063489(n+1)]]`
-/

namespace A244864.P6356655544683609429
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063489 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A244864.P6356655544683609429

namespace A244864

/-- `∑[∑[A063489(n+1)]]` -/
def P6356655544683609429.Spec : Prop :=
  ∀ n, P6356655544683609429.a n = A244864 n

end A244864

/-! ## A244864.P4323983664014738025

`A034263(n)+∑[∑[n]²]`
-/

namespace A244864.P4323983664014738025
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f2 j) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034263 n + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A244864.P4323983664014738025

namespace A244864

/-- `A034263(n)+∑[∑[n]²]` -/
def P4323983664014738025.Spec : Prop :=
  ∀ n, P4323983664014738025.a n = A244864 n

end A244864

/-! ## A244864.P2063459137118330314

`A095166(n+1)+∑[∑[n]]`
-/

namespace A244864.P2063459137118330314
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095166 (n + 1) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A244864.P2063459137118330314

namespace A244864

/-- `A095166(n+1)+∑[∑[n]]` -/
def P2063459137118330314.Spec : Prop :=
  ∀ n, P2063459137118330314.a n = A244864 n

end A244864

/-! ## A244864.P6688285989676861858

`A244869(n)+A011888(n)`
-/

namespace A244864.P6688285989676861858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244869 n + A011888 n

end

end A244864.P6688285989676861858

namespace A244864

/-- `A244869(n)+A011888(n)` -/
def P6688285989676861858.Spec : Prop :=
  ∀ n, P6688285989676861858.a n = A244864 n

end A244864

/-! ## A244864.P565806312789766685

`A373733(n+1)-A054563(n)`
-/

namespace A244864.P565806312789766685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373733 (n + 1) - A054563 n

end

end A244864.P565806312789766685

namespace A244864

/-- `A373733(n+1)-A054563(n)` -/
def P565806312789766685.Spec : Prop :=
  ∀ n, P565806312789766685.a n = A244864 n

end A244864

/-! ## A244864.P1240224605866054260

`A244870(n)+2*A011888(n)`
-/

namespace A244864.P1240224605866054260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244870 n + 2 * A011888 n

end

end A244864.P1240224605866054260

namespace A244864

/-- `A244870(n)+2*A011888(n)` -/
def P1240224605866054260.Spec : Prop :=
  ∀ n, P1240224605866054260.a n = A244864 n

end A244864

/-! ## A244864.P5564951281856527059

`2*A244869(n)-A244870(n)`
-/

namespace A244864.P5564951281856527059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A244869 n - A244870 n

end

end A244864.P5564951281856527059

namespace A244864

/-- `2*A244869(n)-A244870(n)` -/
def P5564951281856527059.Spec : Prop :=
  ∀ n, P5564951281856527059.a n = A244864 n

end A244864

/-! ## A244864.P6764739842259438981

`A244869(n)+∑[∑[A019298(n)]]`
-/

namespace A244864.P6764739842259438981
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019298 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244869 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A244864.P6764739842259438981

namespace A244864

/-- `A244869(n)+∑[∑[A019298(n)]]` -/
def P6764739842259438981.Spec : Prop :=
  ∀ n, P6764739842259438981.a n = A244864 n

end A244864

/-! ## A244864.P10943351330445285553

`2*A006414(n)-A006322(n+1)`
-/

namespace A244864.P10943351330445285553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A006414 n - A006322 (n + 1)

end

end A244864.P10943351330445285553

namespace A244864

/-- `2*A006414(n)-A006322(n+1)` -/
def P10943351330445285553.Spec : Prop :=
  ∀ n, P10943351330445285553.a n = A244864 n

end A244864

/-! ## A244864.P15928053813535339598

`2*A085463(n+1)-A085462(n+1)`
-/

namespace A244864.P15928053813535339598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A085463 (n + 1) - A085462 (n + 1)

end

end A244864.P15928053813535339598

namespace A244864

/-- `2*A085463(n+1)-A085462(n+1)` -/
def P15928053813535339598.Spec : Prop :=
  ∀ n, P15928053813535339598.a n = A244864 n

theorem P15928053813535339598.correct : P15928053813535339598.Spec := by
  intro n
  simp only [A244864, Nat.add_sub_cancel, A244864.P15928053813535339598.a, A244864.P2839936141787549621.a, A085462, A085462.P2347339117137320716.a, A085463, A085463.P12822451270084158499.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A244864

/-! ## A244864.P8671036013733800500

`A244882(n)+A244882(n)-A002817(n+1)`
-/

namespace A244864.P8671036013733800500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244882 n + (A244882 n - A002817 (n + 1))

end

end A244864.P8671036013733800500

namespace A244864

/-- `A244882(n)+A244882(n)-A002817(n+1)` -/
def P8671036013733800500.Spec : Prop :=
  ∀ n, P8671036013733800500.a n = A244864 n

end A244864

/-! ## A244864.P8111680684503950398

`A373733(n+1)+A000292(n)-A373733(n)`
-/

namespace A244864.P8111680684503950398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373733 (n + 1) + (A000292 n - A373733 n)

end

end A244864.P8111680684503950398

namespace A244864

/-- `A373733(n+1)+A000292(n)-A373733(n)` -/
def P8111680684503950398.Spec : Prop :=
  ∀ n, P8111680684503950398.a n = A244864 n

end A244864

/-! ## A244864.P15194176023060510479

`A000292(n+1)+A054563(n+1)-A054563(n)`
-/

namespace A244864.P15194176023060510479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000292 (n + 1) + (A054563 (n + 1) - A054563 n)

end

end A244864.P15194176023060510479

namespace A244864

/-- `A000292(n+1)+A054563(n+1)-A054563(n)` -/
def P15194176023060510479.Spec : Prop :=
  ∀ n, P15194176023060510479.a n = A244864 n

end A244864

/-! ## A244864.P10779064677039843033

`∑[A139594(1+n)]`
-/

namespace A244864.P10779064677039843033
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139594 (1 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A244864.P10779064677039843033

namespace A244864

/-- `∑[A139594(1+n)]` -/
def P10779064677039843033.Spec : Prop :=
  ∀ n, P10779064677039843033.a n = A244864 n

end A244864

/-! ## A244864.P16793811782737371356

`A001296(n+1)+A000217(n+1)*A000292(n)`
-/

namespace A244864.P16793811782737371356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001296 (n + 1) + A000217 (n + 1) * A000292 n

end

end A244864.P16793811782737371356

namespace A244864

/-- `A001296(n+1)+A000217(n+1)*A000292(n)` -/
def P16793811782737371356.Spec : Prop :=
  ∀ n, P16793811782737371356.a n = A244864 n

end A244864

/-!
# A244865: Number of 3 X 3 symmetric matrices with row and column sums <= n.

The programs for A244865, the canonical program `A244865.P15084844053269528337` is in `Seq.B000.C037`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A244865 has offset 0).

The definition of A244865 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A244865.P15084844053269528337

`ogf((1+8x+15x^2+8x^3+x^4)/(1-6x+14x^2-14x^3+14x^5-14x^6+6x^7-x^8))`

The canonical program, it is in `Seq.B000.C037`.
-/

namespace A244865

/-- `ogf((1+8x+15x^2+8x^3+x^4)/(1-6x+14x^2-14x^3+14x^5-14x^6+6x^7-x^8))` -/
def P15084844053269528337.Spec : Prop :=
  ∀ n, P15084844053269528337.a n = A244865 n

theorem P15084844053269528337.correct : P15084844053269528337.Spec := by
  intro n
  simp only [A244865]

end A244865

/-! ## A244865.P10352670384836654121

`∑[∑[∑[∑[(3*n)²+2]-1]]-∑[floor(((n+1)/2)^4)]]`
-/

namespace A244865.P10352670384836654121
noncomputable section

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (3 * n) ^ 2 + 2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f4 j : ℕ) : ℤ) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f5 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((n + 1 : ℚ) / 2) ^ 4⌋

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - ∑ j ∈ Finset.range (n + 1), f5 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A244865.P10352670384836654121

namespace A244865

/-- `∑[∑[∑[∑[(3*n)²+2]-1]]-∑[floor(((n+1)/2)^4)]]` -/
def P10352670384836654121.Spec : Prop :=
  ∀ n, P10352670384836654121.a n = A244865 n

end A244865

/-! ## A244865.P12917293072910054428

`A398069(A167614(n+2))`
-/

namespace A244865.P12917293072910054428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A398069 (A167614 (n + 2)).toNat

end

end A244865.P12917293072910054428

namespace A244865

/-- `A398069(A167614(n+2))` -/
def P12917293072910054428.Spec : Prop :=
  ∀ n, P12917293072910054428.a n = A244865 n

end A244865

/-!
# A244866: Let G denote the 7-node, 12-edge graph formed from a hexagon with main diagonals drawn and a node at the center; a(n) = number of magic labelings of G with magic sum 2n.

The programs for A244866, the canonical program `A244866.P17205147889275404006` is in `Seq.B000.C037`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A244866 has offset 0).

The definition of A244866 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A244866.P18442657947971678176

`ogf((1+12x+21x^2+4x^3)/(1-6x+15x^2-20x^3+15x^4-6x^5+x^6))`
-/

namespace A244866.P18442657947971678176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 12, 21, 4] [1, -6, 15, -20, 15, -6, 1] n

end

end A244866.P18442657947971678176

namespace A244866

/-- `ogf((1+12x+21x^2+4x^3)/(1-6x+15x^2-20x^3+15x^4-6x^5+x^6))` -/
def P18442657947971678176.Spec : Prop :=
  ∀ n, P18442657947971678176.a n = A244866 n

end A244866

/-! ## A244866.P17205147889275404006

`(n+1)*(n+2)*(19*n^3+63*n²+68*n+30)/60`

The canonical program, it is in `Seq.B000.C037`.
-/

namespace A244866

/-- `(n+1)*(n+2)*(19*n^3+63*n²+68*n+30)/60` -/
def P17205147889275404006.Spec : Prop :=
  ∀ n, P17205147889275404006.a n = (A244866 n : ℚ)

end A244866

/-! ## A244866.P3286868727186192905

`∑[∑[n+1]²+(n+1)*A002492(n)]`
-/

namespace A244866.P3286868727186192905
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((∑ j ∈ Finset.range (n + 1), f2 j) ^ 2 : ℕ) : ℤ) + (n + 1 : ℤ) * A002492 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A244866.P3286868727186192905

namespace A244866

/-- `∑[∑[n+1]²+(n+1)*A002492(n)]` -/
def P3286868727186192905.Spec : Prop :=
  ∀ n, P3286868727186192905.a n = A244866 n

end A244866

/-! ## A244866.P13658755847107530197

`∑[∑[A085490(n)+A085474(n)]]`
-/

namespace A244866.P13658755847107530197
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085490 n + A085474 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A244866.P13658755847107530197

namespace A244866

/-- `∑[∑[A085490(n)+A085474(n)]]` -/
def P13658755847107530197.Spec : Prop :=
  ∀ n, P13658755847107530197.a n = A244866 n

end A244866

/-! ## A244866.P14485911348562107874

`∑[∑[A005902(n)+3*A000578(n)]]`
-/

namespace A244866.P14485911348562107874
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005902 n + 3 * A000578 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A244866.P14485911348562107874

namespace A244866

/-- `∑[∑[A005902(n)+3*A000578(n)]]` -/
def P14485911348562107874.Spec : Prop :=
  ∀ n, P14485911348562107874.a n = A244866 n

end A244866

/-! ## A244866.P8951596093295467482

`A061927(n+1)+n*∑[n+1]²`
-/

namespace A244866.P8951596093295467482
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061927 (n + 1) + ((n * (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 : ℕ) : ℤ)

end

end A244866.P8951596093295467482

namespace A244866

/-- `A061927(n+1)+n*∑[n+1]²` -/
def P8951596093295467482.Spec : Prop :=
  ∀ n, P8951596093295467482.a n = A244866 n

end A244866

/-!
# A244867: Let G denote the 9-node, 16-edge graph formed from an octagon with main diagonals drawn and a node at the center; a(n) = number of magic labelings of G with magic sum 2n.

The programs for A244867, the canonical program `A244867.P17863554910863202150` is in `Seq.B000.C037`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A244867 has offset 0).

The definition of A244867 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A244867.P17863554910863202150

`ogf((1+24x+92x^2+64x^3+6x^4)/(1-8x+28x^2-56x^3+70x^4-56x^5+28x^6-8x^7+x^8))`

The canonical program, it is in `Seq.B000.C037`.
-/

namespace A244867

/-- `ogf((1+24x+92x^2+64x^3+6x^4)/(1-8x+28x^2-56x^3+70x^4-56x^5+28x^6-8x^7+x^8))` -/
def P17863554910863202150.Spec : Prop :=
  ∀ n, P17863554910863202150.a n = A244867 n

theorem P17863554910863202150.correct : P17863554910863202150.Spec := by
  intro n
  simp only [A244867]

end A244867

/-!
# A244868: Number of symmetric 5 X 5 matrices of nonnegative integers with zeros on the main diagonal and every row and column adding to n.

The programs for A244868, the canonical program `A244868.P13149409410096620812` is in `Seq.B000.C037`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A244868 has offset 0).

The definition of A244868 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A244868.P7713431468174113200

`ogf((1+16x+41x^2+16x^3+x^4)/(1-6x+15x^2-20x^3+15x^4-6x^5+x^6))`
-/

namespace A244868.P7713431468174113200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 16, 41, 16, 1] [1, -6, 15, -20, 15, -6, 1] n

end

end A244868.P7713431468174113200

namespace A244868

/-- `ogf((1+16x+41x^2+16x^3+x^4)/(1-6x+15x^2-20x^3+15x^4-6x^5+x^6))` -/
def P7713431468174113200.Spec : Prop :=
  ∀ n, P7713431468174113200.a n = A244868 n

end A244868

/-! ## A244868.P13149409410096620812

`(24+94*n+165*n²+155*n^3+75*n^4+15*n^5)/24`

The canonical program, it is in `Seq.B000.C037`.
-/

namespace A244868

/-- `(24+94*n+165*n²+155*n^3+75*n^4+15*n^5)/24` -/
def P13149409410096620812.Spec : Prop :=
  ∀ n, P13149409410096620812.a n = (A244868 n : ℚ)

end A244868

/-! ## A244868.P10441500145648983569

`∑[C(2+∑[5*n], 2)]`
-/

namespace A244868.P10441500145648983569
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5 * n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (2 + ∑ j ∈ Finset.range (n + 1), f2 j) 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A244868.P10441500145648983569

namespace A244868

/-- `∑[C(2+∑[5*n], 2)]` -/
def P10441500145648983569.Spec : Prop :=
  ∀ n, (P10441500145648983569.a n : ℤ) = A244868 n

end A244868

/-! ## A244868.P1917314415206071223

`∑[A160767(n)+A152041(n)]`
-/

namespace A244868.P1917314415206071223
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160767 n + A152041 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A244868.P1917314415206071223

namespace A244868

/-- `∑[A160767(n)+A152041(n)]` -/
def P1917314415206071223.Spec : Prop :=
  ∀ n, P1917314415206071223.a n = A244868 n

end A244868

/-! ## A244868.P7855408991385515911

`∑[A007204(n)-A152041(n)]`
-/

namespace A244868.P7855408991385515911
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007204 n - A152041 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A244868.P7855408991385515911

namespace A244868

/-- `∑[A007204(n)-A152041(n)]` -/
def P7855408991385515911.Spec : Prop :=
  ∀ n, P7855408991385515911.a n = A244868 n

end A244868

/-! ## A244868.P3963011775877426817

`∑[A001844(n)²-A152041(n)]`
-/

namespace A244868.P3963011775877426817
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001844 n ^ 2 - A152041 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A244868.P3963011775877426817

namespace A244868

/-- `∑[A001844(n)²-A152041(n)]` -/
def P3963011775877426817.Spec : Prop :=
  ∀ n, P3963011775877426817.a n = A244868 n

end A244868

/-! ## A244868.P1424454867260878279

`∑[A007204(n)-A008893(n)/2]`
-/

namespace A244868.P1424454867260878279
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007204 n : ℚ) - (A008893 n : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A244868.P1424454867260878279

namespace A244868

/-- `∑[A007204(n)-A008893(n)/2]` -/
def P1424454867260878279.Spec : Prop :=
  ∀ n, P1424454867260878279.a n = (A244868 n : ℚ)

end A244868

/-! ## A244868.P2075911502397048981

`∑[A007204(n)-((n²+n)²-A050534(n+1))]`
-/

namespace A244868.P2075911502397048981
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007204 n - (((n ^ 2 + n) ^ 2 : ℤ) - A050534 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A244868.P2075911502397048981

namespace A244868

/-- `∑[A007204(n)-((n²+n)²-A050534(n+1))]` -/
def P2075911502397048981.Spec : Prop :=
  ∀ n, P2075911502397048981.a n = A244868 n

end A244868

/-! ## A244868.P17463789666330748719

`∑[A243201(n)+A161680(∑[n])]`
-/

namespace A244868.P17463789666330748719
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243201 n + A161680 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A244868.P17463789666330748719

namespace A244868

/-- `∑[A243201(n)+A161680(∑[n])]` -/
def P17463789666330748719.Spec : Prop :=
  ∀ n, P17463789666330748719.a n = A244868 n

end A244868

/-! ## A244868.P11143008144684791235

`Δ[A004068(∑[n])]`
-/

namespace A244868.P11143008144684791235
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004068 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A244868.P11143008144684791235

namespace A244868

/-- `Δ[A004068(∑[n])]` -/
def P11143008144684791235.Spec : Prop :=
  ∀ n, P11143008144684791235.a n = A244868 n

end A244868

/-! ## A244868.P1824753970705349705

`Δ[A004068(A000217(n))%A017560(n)]`
-/

namespace A244868.P1824753970705349705
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A004068 (A000217 n).toNat) (A017560 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A244868.P1824753970705349705

namespace A244868

/-- `Δ[A004068(A000217(n))%A017560(n)]` -/
def P1824753970705349705.Spec : Prop :=
  ∀ n, P1824753970705349705.a n = A244868 n

end A244868

/-! ## A244868.P12873471275007994997

`∑[A000217(∑[5*n]+1)]`
-/

namespace A244868.P12873471275007994997
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5 * n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (∑ j ∈ Finset.range (n + 1), f2 j + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A244868.P12873471275007994997

namespace A244868

/-- `∑[A000217(∑[5*n]+1)]` -/
def P12873471275007994997.Spec : Prop :=
  ∀ n, P12873471275007994997.a n = A244868 n

end A244868

/-!
# A244869: Number of magic labelings with magic sum n of first graph shown in link.

The programs for A244869, the canonical program `A244869.P5114602564496139221` is in `Seq.B000.C037`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A244869 has offset 0).

The definition of A244869 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A244869.P5114602564496139221

`ogf((1+4x+7x^2+4x^3+x^4)/(1-5x+9x^2-5x^3-5x^4+9x^5-5x^6+x^7))`

The canonical program, it is in `Seq.B000.C037`.
-/

namespace A244869

/-- `ogf((1+4x+7x^2+4x^3+x^4)/(1-5x+9x^2-5x^3-5x^4+9x^5-5x^6+x^7))` -/
def P5114602564496139221.Spec : Prop :=
  ∀ n, P5114602564496139221.a n = A244869 n

theorem P5114602564496139221.correct : P5114602564496139221.Spec := by
  intro n
  simp only [A244869]

end A244869

/-! ## A244869.P7523519351666205595

`A244870(n)+∑[floor(((n+1)/2)^4)]`
-/

namespace A244869.P7523519351666205595
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((n + 1 : ℚ) / 2) ^ 4⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244870 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A244869.P7523519351666205595

namespace A244869

/-- `A244870(n)+∑[floor(((n+1)/2)^4)]` -/
def P7523519351666205595.Spec : Prop :=
  ∀ n, P7523519351666205595.a n = A244869 n

end A244869

/-! ## A244869.P6429433672219191574

`A244864(n)-A011888(n)`
-/

namespace A244869.P6429433672219191574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244864 n - A011888 n

end

end A244869.P6429433672219191574

namespace A244869

/-- `A244864(n)-A011888(n)` -/
def P6429433672219191574.Spec : Prop :=
  ∀ n, P6429433672219191574.a n = A244869 n

end A244869

/-! ## A244869.P8307139151691156544

`∑[∑[A173196(n)+A001845(n)]]`
-/

namespace A244869.P8307139151691156544
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173196 n + A001845 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A244869.P8307139151691156544

namespace A244869

/-- `∑[∑[A173196(n)+A001845(n)]]` -/
def P8307139151691156544.Spec : Prop :=
  ∀ n, P8307139151691156544.a n = A244869 n

end A244869

/-! ## A244869.P5319760974319344361

`∑[A014820(n)+∑[A173196(n)]]`
-/

namespace A244869.P5319760974319344361
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173196 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014820 n + ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A244869.P5319760974319344361

namespace A244869

/-- `∑[A014820(n)+∑[A173196(n)]]` -/
def P5319760974319344361.Spec : Prop :=
  ∀ n, P5319760974319344361.a n = A244869 n

end A244869

/-! ## A244869.P5524026847095340486

`A244864(n)-∑[∑[A019298(n)]]`
-/

namespace A244869.P5524026847095340486
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019298 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244864 n - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A244869.P5524026847095340486

namespace A244869

/-- `A244864(n)-∑[∑[A019298(n)]]` -/
def P5524026847095340486.Spec : Prop :=
  ∀ n, P5524026847095340486.a n = A244869 n

end A244869

/-! ## A244869.P7510183277534399038

`∑[∑[A173196(n)+A004006(2*n+1)]]`
-/

namespace A244869.P7510183277534399038
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173196 n + A004006 (2 * n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A244869.P7510183277534399038

namespace A244869

/-- `∑[∑[A173196(n)+A004006(2*n+1)]]` -/
def P7510183277534399038.Spec : Prop :=
  ∀ n, P7510183277534399038.a n = A244869 n

end A244869

/-!
# A244870: Number of magic labelings with magic sum n of 2nd graph shown in link.

The programs for A244870, the canonical program `A244870.P17993620186167285945` is in `Seq.B000.C037`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A244870 has offset 0).

The definition of A244870 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A244870.P17993620186167285945

`ogf((1+3x+6x^2+3x^3+x^4)/(1-5x+9x^2-5x^3-5x^4+9x^5-5x^6+x^7))`

The canonical program, it is in `Seq.B000.C037`.
-/

namespace A244870

/-- `ogf((1+3x+6x^2+3x^3+x^4)/(1-5x+9x^2-5x^3-5x^4+9x^5-5x^6+x^7))` -/
def P17993620186167285945.Spec : Prop :=
  ∀ n, P17993620186167285945.a n = A244870 n

theorem P17993620186167285945.correct : P17993620186167285945.Spec := by
  intro n
  simp only [A244870]

end A244870

/-! ## A244870.P12300476770002142081

`∑[∑[∑[A008253(n)+n²]]]`
-/

namespace A244870.P12300476770002142081
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008253 n + (n ^ 2 : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A244870.P12300476770002142081

namespace A244870

/-- `∑[∑[∑[A008253(n)+n²]]]` -/
def P12300476770002142081.Spec : Prop :=
  ∀ n, P12300476770002142081.a n = A244870 n

end A244870

/-! ## A244870.P10482560346779482285

`A244869(n)-A011888(n)`
-/

namespace A244870.P10482560346779482285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244869 n - A011888 n

end

end A244870.P10482560346779482285

namespace A244870

/-- `A244869(n)-A011888(n)` -/
def P10482560346779482285.Spec : Prop :=
  ∀ n, P10482560346779482285.a n = A244870 n

end A244870

/-! ## A244870.P14258211103562361741

`∑[A132366(n)+A105636(n)]`
-/

namespace A244870.P14258211103562361741
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132366 n + A105636 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A244870.P14258211103562361741

namespace A244870

/-- `∑[A132366(n)+A105636(n)]` -/
def P14258211103562361741.Spec : Prop :=
  ∀ n, P14258211103562361741.a n = A244870 n

end A244870

/-! ## A244870.P11234641846948439954

`A244864(n)-2*A011888(n)`
-/

namespace A244870.P11234641846948439954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244864 n - 2 * A011888 n

end

end A244870.P11234641846948439954

namespace A244870

/-- `A244864(n)-2*A011888(n)` -/
def P11234641846948439954.Spec : Prop :=
  ∀ n, P11234641846948439954.a n = A244870 n

end A244870

/-! ## A244870.P7221109914688898996

`2*A244869(n)-A244864(n)`
-/

namespace A244870.P7221109914688898996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A244869 n - A244864 n

end

end A244870.P7221109914688898996

namespace A244870

/-- `2*A244869(n)-A244864(n)` -/
def P7221109914688898996.Spec : Prop :=
  ∀ n, P7221109914688898996.a n = A244870 n

end A244870

/-! ## A244870.P9733556310342762475

`∑[∑[A007904(n)+A000330(n)]]`
-/

namespace A244870.P9733556310342762475
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007904 n + A000330 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A244870.P9733556310342762475

namespace A244870

/-- `∑[∑[A007904(n)+A000330(n)]]` -/
def P9733556310342762475.Spec : Prop :=
  ∀ n, P9733556310342762475.a n = A244870 n

end A244870

/-! ## A244870.P5607318270123051019

`∑[∑[A055232(n)+A005900(n)]]`
-/

namespace A244870.P5607318270123051019
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055232 n + A005900 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A244870.P5607318270123051019

namespace A244870

/-- `∑[∑[A055232(n)+A005900(n)]]` -/
def P5607318270123051019.Spec : Prop :=
  ∀ n, P5607318270123051019.a n = A244870 n

end A244870

/-! ## A244870.P12366660724880079272

`∑[A105636(n)+∑[A005894(n)]]`
-/

namespace A244870.P12366660724880079272
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005894 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105636 n + ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A244870.P12366660724880079272

namespace A244870

/-- `∑[A105636(n)+∑[A005894(n)]]` -/
def P12366660724880079272.Spec : Prop :=
  ∀ n, P12366660724880079272.a n = A244870 n

end A244870

/-! ## A244870.P15772307554106786062

`∑[∑[A001845(n)-A131941(n)]]`
-/

namespace A244870.P15772307554106786062
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001845 n - A131941 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A244870.P15772307554106786062

namespace A244870

/-- `∑[∑[A001845(n)-A131941(n)]]` -/
def P15772307554106786062.Spec : Prop :=
  ∀ n, P15772307554106786062.a n = A244870 n

end A244870

/-! ## A244870.P14980498249773163197

`A244869(n)-∑[∑[A019298(n)]]`
-/

namespace A244870.P14980498249773163197
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019298 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244869 n - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A244870.P14980498249773163197

namespace A244870

/-- `A244869(n)-∑[∑[A019298(n)]]` -/
def P14980498249773163197.Spec : Prop :=
  ∀ n, P14980498249773163197.a n = A244870 n

end A244870

/-!
# A244871: Number of magic labelings with magic sum n of 3rd graph shown in link.

The programs for A244871, the canonical program `A244871.P13208600643412090423` is in `Seq.B000.C037`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A244871 has offset 0).

The definition of A244871 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A244871.P13208600643412090423

`ogf((1+5x+13x^2+22x^3+13x^4+5x^5+x^6)/(1-5x+8x^2-14x^4+14x^5-8x^7+5x^8-x^9))`

The canonical program, it is in `Seq.B000.C037`.
-/

namespace A244871

/-- `ogf((1+5x+13x^2+22x^3+13x^4+5x^5+x^6)/(1-5x+8x^2-14x^4+14x^5-8x^7+5x^8-x^9))` -/
def P13208600643412090423.Spec : Prop :=
  ∀ n, P13208600643412090423.a n = A244871 n

theorem P13208600643412090423.correct : P13208600643412090423.Spec := by
  intro n
  simp only [A244871]

end A244871

/-! ## A244871.P11119992760380195827

`∑[A080827(1+n)*A246695(n)]`
-/

namespace A244871.P11119992760380195827
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080827 (1 + n) * A246695 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A244871.P11119992760380195827

namespace A244871

/-- `∑[A080827(1+n)*A246695(n)]` -/
def P11119992760380195827.Spec : Prop :=
  ∀ n, P11119992760380195827.a n = A244871 n

end A244871

/-! ## A244871.P16413024186607100180

`∑[A099392(2+n)*A246695(n)]`
-/

namespace A244871.P16413024186607100180
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099392 (2 + n) * A246695 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A244871.P16413024186607100180

namespace A244871

/-- `∑[A099392(2+n)*A246695(n)]` -/
def P16413024186607100180.Spec : Prop :=
  ∀ n, P16413024186607100180.a n = A244871 n

end A244871

/-! ## A244871.P5369827986432335250

`a(n-1)+A099392(A028310(n)+2)*A246695(n)` with `a(0)=1`
-/

namespace A244871.P5369827986432335250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + A099392 (A028310 n + 2).toNat * A246695 n

end

end A244871.P5369827986432335250

namespace A244871

/-- `a(n-1)+A099392(A028310(n)+2)*A246695(n)` -/
def P5369827986432335250.Spec : Prop :=
  ∀ n, P5369827986432335250.a n = A244871 n

end A244871

/-! ## A244871.P6683779312224720462

`A002817(n+1)+∑[(n+1)*A212714(n+1)]`
-/

namespace A244871.P6683779312224720462
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A212714 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002817 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A244871.P6683779312224720462

namespace A244871

/-- `A002817(n+1)+∑[(n+1)*A212714(n+1)]` -/
def P6683779312224720462.Spec : Prop :=
  ∀ n, P6683779312224720462.a n = A244871 n

end A244871

/-! ## A244871.P14858665215409423503

`a(n-1)+A099392(A181440(n+2))*A246695(n)` with `a(0)=1`
-/

namespace A244871.P14858665215409423503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + A099392 (A181440 (n + 2)).toNat * A246695 n

end

end A244871.P14858665215409423503

namespace A244871

/-- `a(n-1)+A099392(A181440(n+2))*A246695(n)` -/
def P14858665215409423503.Spec : Prop :=
  ∀ n, P14858665215409423503.a n = A244871 n

end A244871

/-! ## A244871.P14933194633677162644

`∑[A111384((n+1)²+2)/(n+1)]`
-/

namespace A244871.P14933194633677162644
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A111384 ((n + 1) ^ 2 + 2) : ℚ) / (n + 1 : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A244871.P14933194633677162644

namespace A244871

/-- `∑[A111384((n+1)²+2)/(n+1)]` -/
def P14933194633677162644.Spec : Prop :=
  ∀ n, P14933194633677162644.a n = (A244871 n : ℚ)

end A244871

/-!
# A244872: Number of magic labelings with magic sum n of 4th graph shown in link.

The programs for A244872, the canonical program `A244872.P17279129123442557393` is in `Seq.B000.C037`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A244872 has offset 0).

The definition of A244872 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A244872.P17279129123442557393

`ogf((1+8x+29x^2+43x^3+29x^4+8x^5+x^6)/(1-7x+20x^2-28x^3+14x^4+14x^5-28x^6+20x^7-7x^8+x^9))`

The canonical program, it is in `Seq.B000.C037`.
-/

namespace A244872

/-- `ogf((1+8x+29x^2+43x^3+29x^4+8x^5+x^6)/(1-7x+20x^2-28x^3+14x^4+14x^5-28x^6+20x^7-7x^8+x^9))` -/
def P17279129123442557393.Spec : Prop :=
  ∀ n, P17279129123442557393.a n = A244872 n

theorem P17279129123442557393.correct : P17279129123442557393.Spec := by
  intro n
  simp only [A244872]

end A244872

/-!
# A244873: Number of magic labelings of the prism graph I X C_7 with magic sum n.

The programs for A244873, the canonical program `A244873.P9485851238926384557` is in `Seq.B000.C037`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A244873 has offset 0).

The definition of A244873 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A244873.P9485851238926384557

`ogf((1+22x+106x^2+169x^3+106x^4+22x^5+x^6)/(1-7x+20x^2-28x^3+14x^4+14x^5-28x^6+20x^7-7x^8+x^9))`

The canonical program, it is in `Seq.B000.C037`.
-/

namespace A244873

/-- `ogf((1+22x+106x^2+169x^3+106x^4+22x^5+x^6)/(1-7x+20x^2-28x^3+14x^4+14x^5-28x^6+20x^7-7x^8+x^9))` -/
def P9485851238926384557.Spec : Prop :=
  ∀ n, P9485851238926384557.a n = A244873 n

theorem P9485851238926384557.correct : P9485851238926384557.Spec := by
  intro n
  simp only [A244873]

end A244873

/-!
# A244874: Number of magic labelings with magic sum n of 6th graph shown in link.

The programs for A244874, the canonical program `A244874.P4256857953698507777` is in `Seq.B000.C037`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A244874 has offset 0).

The definition of A244874 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A244874.P4256857953698507777

`ogf((1+10x+38x^2+60x^3+38x^4+10x^5+x^6)/(1-7x+20x^2-28x^3+14x^4+14x^5-28x^6+20x^7-7x^8+x^9))`

The canonical program, it is in `Seq.B000.C037`.
-/

namespace A244874

/-- `ogf((1+10x+38x^2+60x^3+38x^4+10x^5+x^6)/(1-7x+20x^2-28x^3+14x^4+14x^5-28x^6+20x^7-7x^8+x^9))` -/
def P4256857953698507777.Spec : Prop :=
  ∀ n, P4256857953698507777.a n = A244874 n

theorem P4256857953698507777.correct : P4256857953698507777.Spec := by
  intro n
  simp only [A244874]

end A244874

/-!
# A244875: Number of magic labelings with magic sum n of 7th graph shown in link.

The programs for A244875, the canonical program `A244875.P1708827190383304858` is in `Seq.B000.C037`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A244875 has offset 0).

The definition of A244875 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A244875.P1708827190383304858

`ogf((1+14x+52x^2+77x^3+52x^4+14x^5+x^6)/(1-7x+20x^2-28x^3+14x^4+14x^5-28x^6+20x^7-7x^8+x^9))`

The canonical program, it is in `Seq.B000.C037`.
-/

namespace A244875

/-- `ogf((1+14x+52x^2+77x^3+52x^4+14x^5+x^6)/(1-7x+20x^2-28x^3+14x^4+14x^5-28x^6+20x^7-7x^8+x^9))` -/
def P1708827190383304858.Spec : Prop :=
  ∀ n, P1708827190383304858.a n = A244875 n

theorem P1708827190383304858.correct : P1708827190383304858.Spec := by
  intro n
  simp only [A244875]

end A244875

/-!
# A244876: Number of magic labelings with magic sum n of 8th graph shown in link.

The programs for A244876, the canonical program `A244876.P7835508147591068` is in `Seq.B000.C037`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A244876 has offset 0).

The definition of A244876 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A244876.P7835508147591068

`ogf((1+13x+71x^2+174x^3+238x^4+174x^5+71x^6+13x^7+x^8)/(1-5x+7x^2+5x^3-22x^4+14x^5+14x^6-22x^7+5x^8+7x^9-5x^10+x^11))`

The canonical program, it is in `Seq.B000.C037`.
-/

namespace A244876

/-- `ogf((1+13x+71x^2+174x^3+238x^4+174x^5+71x^6+13x^7+x^8)/(1-5x+7x^2+5x^3-22x^4+14x^5+14x^6-22x^7+5x^8+7x^9-5x^10+x^11))` -/
def P7835508147591068.Spec : Prop :=
  ∀ n, P7835508147591068.a n = A244876 n

theorem P7835508147591068.correct : P7835508147591068.Spec := by
  intro n
  simp only [A244876]

end A244876

/-!
# A244878: Number of 6 X 6 traceless symmetric magic squares with magic sum n.

The programs for A244878, the canonical program `A244878.P18398514697816260821` is in `Seq.B000.C037`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A244878 has offset 0).

The definition of A244878 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A244878.P18398514697816260821

`ogf((1+6x+30x^2+40x^3+30x^4+6x^5+x^6)/(1-9x+35x^2-75x^3+90x^4-42x^5-42x^6+90x^7-75x^8+35x^9-9x^10+x^11))`

The canonical program, it is in `Seq.B000.C037`.
-/

namespace A244878

/-- `ogf((1+6x+30x^2+40x^3+30x^4+6x^5+x^6)/(1-9x+35x^2-75x^3+90x^4-42x^5-42x^6+90x^7-75x^8+35x^9-9x^10+x^11))` -/
def P18398514697816260821.Spec : Prop :=
  ∀ n, P18398514697816260821.a n = A244878 n

theorem P18398514697816260821.correct : P18398514697816260821.Spec := by
  intro n
  simp only [A244878]

end A244878

/-! ## A244878.P1148268821550193018

`A333351(eq[6, A002262(n)])`
-/

namespace A244878.P1148268821550193018
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333351 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A244878.P1148268821550193018

namespace A244878

/-- `A333351(eq[6, A002262(n)])` -/
def P1148268821550193018.Spec : Prop :=
  ∀ n, P1148268821550193018.a n = A244878 n

end A244878

/-! ## A244878.P4362677174684969222

`record[A333351(A000217(n)+6)]`
-/

namespace A244878.P4362677174684969222
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333351 (A000217 n + 6).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A244878.P4362677174684969222

namespace A244878

/-- `record[A333351(A000217(n)+6)]` -/
def P4362677174684969222.Spec : Prop :=
  ∀ n, P4362677174684969222.a n = A244878 n

end A244878

/-!
# A244879: Number of magic labelings of the cycle-of-loops graph LOOP X C_6 having magic sum n, where LOOP is the 1-vertex, 1-loop-edge graph.

The programs for A244879, the canonical program `A244879.P9750952529557066746` is in `Seq.B000.C037`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A244879 has offset 0).

The definition of A244879 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A244879.P9750952529557066746

`ogf((1+11x+24x^2+11x^3+x^4)/(1-7x+21x^2-35x^3+35x^4-21x^5+7x^6-x^7))`

The canonical program, it is in `Seq.B000.C037`.
-/

namespace A244879

/-- `ogf((1+11x+24x^2+11x^3+x^4)/(1-7x+21x^2-35x^3+35x^4-21x^5+7x^6-x^7))` -/
def P9750952529557066746.Spec : Prop :=
  ∀ n, P9750952529557066746.a n = A244879 n

theorem P9750952529557066746.correct : P9750952529557066746.Spec := by
  intro n
  simp only [A244879]

end A244879

/-! ## A244879.P3443032164947851934

`∑[∑[(n+1)^4+n^4-∑[n]]]`
-/

namespace A244879.P3443032164947851934
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 4 : ℤ) + ((n ^ 4 : ℤ) - ((∑ j ∈ Finset.range (n + 1), f3 j : ℕ) : ℤ))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A244879.P3443032164947851934

namespace A244879

/-- `∑[∑[(n+1)^4+n^4-∑[n]]]` -/
def P3443032164947851934.Spec : Prop :=
  ∀ n, P3443032164947851934.a n = A244879 n

end A244879

/-! ## A244879.P11017196708650335877

`∑[∑[A339483(n)]]+∑[n+1]²`
-/

namespace A244879.P11017196708650335877
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339483 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (((∑ j ∈ Finset.range (n + 1), f3 j) ^ 2 : ℕ) : ℤ)

end

end A244879.P11017196708650335877

namespace A244879

/-- `∑[∑[A339483(n)]]+∑[n+1]²` -/
def P11017196708650335877.Spec : Prop :=
  ∀ n, P11017196708650335877.a n = A244879 n

end A244879

/-! ## A244879.P15061515014747297078

`A085464(n+1)-∑[A000292(n)]`
-/

namespace A244879.P15061515014747297078
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000292 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085464 (n + 1) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A244879.P15061515014747297078

namespace A244879

/-- `A085464(n+1)-∑[A000292(n)]` -/
def P15061515014747297078.Spec : Prop :=
  ∀ n, P15061515014747297078.a n = A244879 n

end A244879

/-! ## A244879.P17331418842059024088

`A085465(n+1)+∑[A164938(n+1)]`
-/

namespace A244879.P17331418842059024088
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164938 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085465 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A244879.P17331418842059024088

namespace A244879

/-- `A085465(n+1)+∑[A164938(n+1)]` -/
def P17331418842059024088.Spec : Prop :=
  ∀ n, P17331418842059024088.a n = A244879 n

end A244879

/-! ## A244879.P11124018609439257454

`A000537(n+1)+∑[∑[A339483(n)]]`
-/

namespace A244879.P11124018609439257454
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339483 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000537 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A244879.P11124018609439257454

namespace A244879

/-- `A000537(n+1)+∑[∑[A339483(n)]]` -/
def P11124018609439257454.Spec : Prop :=
  ∀ n, P11124018609439257454.a n = A244879 n

end A244879

/-! ## A244879.P1521052682711069976

`A085464(n+1)-A000332(n+3)`
-/

namespace A244879.P1521052682711069976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085464 (n + 1) - A000332 (n + 3)

end

end A244879.P1521052682711069976

namespace A244879

/-- `A085464(n+1)-A000332(n+3)` -/
def P1521052682711069976.Spec : Prop :=
  ∀ n, P1521052682711069976.a n = A244879 n

end A244879

/-! ## A244879.P3517806850918340126

`A125198(2*n+1)/8`
-/

namespace A244879.P3517806850918340126
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A125198 (2 * n + 1) : ℚ) / 8

end

end A244879.P3517806850918340126

namespace A244879

/-- `A125198(2*n+1)/8` -/
def P3517806850918340126.Spec : Prop :=
  ∀ n, P3517806850918340126.a n = (A244879 n : ℚ)

end A244879

/-! ## A244879.P17259004863153797454

`record[ratio[A179838(n)]]`
-/

namespace A244879.P17259004863153797454
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179838 n

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℚ) / (f2 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A244879.P17259004863153797454

namespace A244879

/-- `record[ratio[A179838(n)]]` -/
def P17259004863153797454.Spec : Prop :=
  ∀ n, P17259004863153797454.a n = (A244879 n : ℚ)

end A244879

/-! ## A244879.P10827280439635801716

`A179838(∑[n+1]+1)`
-/

namespace A244879.P10827280439635801716
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179838 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A244879.P10827280439635801716

namespace A244879

/-- `A179838(∑[n+1]+1)` -/
def P10827280439635801716.Spec : Prop :=
  ∀ n, P10827280439635801716.a n = A244879 n

end A244879

/-!
# A244880: Number of magic labelings of the cycle-of-loops graph LOOP X C_8 having magic sum n, where LOOP is the 1-vertex, 1-loop-edge graph.

The programs for A244880, the canonical program `A244880.P11603938914214109691` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A244880 has offset 0).

The definition of A244880 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A244880.P11603938914214109691

`∑[∑[A160838(n)]]`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A244880

/-- `∑[∑[A160838(n)]]` -/
def P11603938914214109691.Spec : Prop :=
  ∀ n, P11603938914214109691.a n = A244880 n

theorem P11603938914214109691.correct : P11603938914214109691.Spec := by
  intro n
  simp only [A244880]

end A244880

/-! ## A244880.P165082140995739873

`∑[∑[A160815(n)+A160837(n)-A160788(n)]]`
-/

namespace A244880.P165082140995739873
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160815 n + (A160837 n - A160788 n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A244880.P165082140995739873

namespace A244880

/-- `∑[∑[A160815(n)+A160837(n)-A160788(n)]]` -/
def P165082140995739873.Spec : Prop :=
  ∀ n, P165082140995739873.a n = A244880 n

theorem P165082140995739873.correct : P165082140995739873.Spec := by
  intro n
  simp only [A244880, Nat.add_sub_cancel, A244880.P165082140995739873.f2, A244880.P165082140995739873.f1, A244880.P165082140995739873.a, A244880.P11603938914214109691.f2, A244880.P11603938914214109691.f1, A244880.P11603938914214109691.a, A160788, A160788.P1866869141177683774.a, A160815, A160815.P12678141719750607569.a, A160837, A160837.P6506458256857455061.a, A160838, A160838.P6006200299465319187.a, A008911, A008911.P13273812959186450040.a, A132411, A132411.P4426835114870435905.a, A160817, A160817.P13598031876587468841.a, A160834, A160834.P7621129472229904078.a, A160836, A160836.P13397477465687703204.a, A002415, A002415.P7373830119072566170.a, A160833, A160833.P15780145902120907609.f1, A160833.P15780145902120907609.a, A160831, A160831.P13544186760015330901.a, A161680, A161680.P17206074215489759881.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A244880

/-!
# A244881: Expansion of (1 + 26*x + 109*x^2 + 109*x^3 + 26*x^4 + x^5) / (1 - x)^8.

The programs for A244881, the canonical program `A244881.P8420001218753322156` is in `Seq.B000.C037`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A244881 has offset 0).

The definition of A244881 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1+26x+109x^2+109x^3+26x^4+x^5)/(1-8x+28x^2-56x^3+70x^4-56x^5+28x^6-8x^7+x^8))` (program `A244881.P8420001218753322156`, by `A244881.P8420001218753322156.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A244881.P8420001218753322156

`ogf((1+26x+109x^2+109x^3+26x^4+x^5)/(1-8x+28x^2-56x^3+70x^4-56x^5+28x^6-8x^7+x^8))`

The canonical program, it is in `Seq.B000.C037`.
-/

namespace A244881

/-- `ogf((1+26x+109x^2+109x^3+26x^4+x^5)/(1-8x+28x^2-56x^3+70x^4-56x^5+28x^6-8x^7+x^8))` -/
def P8420001218753322156.Spec : Prop :=
  ∀ n, P8420001218753322156.a n = A244881 n

theorem P8420001218753322156.correct : P8420001218753322156.Spec := by
  intro n
  simp only [A244881]

end A244881

/-! ## A244881.P14803487919652643981

`A050447(A167487(n+6))`
-/

namespace A244881.P14803487919652643981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050447 (A167487 (n + 6)).toNat

end

end A244881.P14803487919652643981

namespace A244881

/-- `A050447(A167487(n+6))` -/
def P14803487919652643981.Spec : Prop :=
  ∀ n, P14803487919652643981.a n = A244881 n

end A244881

/-!
# A244882: Expansion of (1 + 2*x + 2*x^2) / (1 - x)^6.

The programs for A244882, the canonical program `A244882.P10256267262517379482` is in `Seq.B000.C037`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A244882 has offset 0).

The definition of A244882 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1+2x+2x^2)/(1-6x+15x^2-20x^3+15x^4-6x^5+x^6))` (program `A244882.P10256267262517379482`, by `A244882.P10256267262517379482.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A244882.P10256267262517379482

`ogf((1+2x+2x^2)/(1-6x+15x^2-20x^3+15x^4-6x^5+x^6))`

The canonical program, it is in `Seq.B000.C037`.
-/

namespace A244882

/-- `ogf((1+2x+2x^2)/(1-6x+15x^2-20x^3+15x^4-6x^5+x^6))` -/
def P10256267262517379482.Spec : Prop :=
  ∀ n, P10256267262517379482.a n = A244882 n

theorem P10256267262517379482.correct : P10256267262517379482.Spec := by
  intro n
  simp only [A244882]

end A244882

/-! ## A244882.P8807361781366515019

`(24+62*n+63*n²+33*n^3+9*n^4+n^5)/24`
-/

namespace A244882.P8807361781366515019
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (24 + 62 * n + 63 * n ^ 2 + 33 * n ^ 3 + 9 * n ^ 4 + n ^ 5 : ℚ) / 24

end

end A244882.P8807361781366515019

namespace A244882

/-- `(24+62*n+63*n²+33*n^3+9*n^4+n^5)/24` -/
def P8807361781366515019.Spec : Prop :=
  ∀ n, P8807361781366515019.a n = (A244882 n : ℚ)

end A244882

/-! ## A244882.P6418577145073408071

`∑[∑[∑[∑[a(n-1)+5]]]]` with `a(0)=1, a(1)=4`
-/

namespace A244882.P6418577145073408071
noncomputable section

def f4 : ℕ → ℕ := SequenceMachineLib.rec [1, 4] fun n f4 =>
  f4 (n - 1) + 5

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A244882.P6418577145073408071

namespace A244882

/-- `∑[∑[∑[∑[a(n-1)+5]]]]` -/
def P6418577145073408071.Spec : Prop :=
  ∀ n, (P6418577145073408071.a n : ℤ) = A244882 n

end A244882

/-! ## A244882.P18025924318684596448

`∑[∑[∑[2-∑[a(n-1)-5]]]]` with `a(0)=1`
-/

namespace A244882.P18025924318684596448
noncomputable section

def f4 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f4 =>
  f4 (n - 1) - 5

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - ∑ j ∈ Finset.range (n + 1), f4 j

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A244882.P18025924318684596448

namespace A244882

/-- `∑[∑[∑[2-∑[a(n-1)-5]]]]` -/
def P18025924318684596448.Spec : Prop :=
  ∀ n, P18025924318684596448.a n = A244882 n

end A244882

/-! ## A244882.P5677065122587871747

`C(1+∑[n+1], 2)*(n+3)/3`
-/

namespace A244882.P5677065122587871747
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.choose (1 + ∑ j ∈ Finset.range (n + 1), f1 j) 2 * (n + 3) : ℚ) / 3

end

end A244882.P5677065122587871747

namespace A244882

/-- `C(1+∑[n+1], 2)*(n+3)/3` -/
def P5677065122587871747.Spec : Prop :=
  ∀ n, P5677065122587871747.a n = (A244882 n : ℚ)

end A244882

/-! ## A244882.P13412369851409061175

`∑[A007715(n+1)]`
-/

namespace A244882.P13412369851409061175
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007715 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A244882.P13412369851409061175

namespace A244882

/-- `∑[A007715(n+1)]` -/
def P13412369851409061175.Spec : Prop :=
  ∀ n, P13412369851409061175.a n = A244882 n

end A244882

/-! ## A244882.P12227447935914114882

`∑[∑[A203552(n+1)]]`
-/

namespace A244882.P12227447935914114882
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203552 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A244882.P12227447935914114882

namespace A244882

/-- `∑[∑[A203552(n+1)]]` -/
def P12227447935914114882.Spec : Prop :=
  ∀ n, P12227447935914114882.a n = A244882 n

end A244882

/-! ## A244882.P2030501274010370835

`A006414(n)-∑[∑[∑[n]]]`
-/

namespace A244882.P2030501274010370835
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006414 n - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A244882.P2030501274010370835

namespace A244882

/-- `A006414(n)-∑[∑[∑[n]]]` -/
def P2030501274010370835.Spec : Prop :=
  ∀ n, P2030501274010370835.a n = A244882 n

end A244882

/-! ## A244882.P15099952361853762752

`(n+3)/3*A002817(n+1)`
-/

namespace A244882.P15099952361853762752
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 3 : ℚ) / 3 * (A002817 (n + 1) : ℚ)

end

end A244882.P15099952361853762752

namespace A244882

/-- `(n+3)/3*A002817(n+1)` -/
def P15099952361853762752.Spec : Prop :=
  ∀ n, P15099952361853762752.a n = (A244882 n : ℚ)

end A244882

/-! ## A244882.P17800426742737191317

`A086755(n)-A051877(n)`
-/

namespace A244882.P17800426742737191317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086755 n - A051877 n

end

end A244882.P17800426742737191317

namespace A244882

/-- `A086755(n)-A051877(n)` -/
def P17800426742737191317.Spec : Prop :=
  ∀ n, P17800426742737191317.a n = A244882 n

end A244882

/-! ## A244882.P13390839737873148567

`A272103(n)-A356251(n)`
-/

namespace A244882.P13390839737873148567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272103 n - A356251 n

end

end A244882.P13390839737873148567

namespace A244882

/-- `A272103(n)-A356251(n)` -/
def P13390839737873148567.Spec : Prop :=
  ∀ n, P13390839737873148567.a n = A244882 n

end A244882

/-! ## A244882.P10747784742549799084

`A051836(n)+A005585(n+1)`
-/

namespace A244882.P10747784742549799084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051836 n + A005585 (n + 1)

end

end A244882.P10747784742549799084

namespace A244882

/-- `A051836(n)+A005585(n+1)` -/
def P10747784742549799084.Spec : Prop :=
  ∀ n, P10747784742549799084.a n = A244882 n

end A244882

/-! ## A244882.P12410803794145874643

`A027800(n)-A033488(n)/2`
-/

namespace A244882.P12410803794145874643
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A027800 n : ℚ) - (A033488 n : ℚ) / 2

end

end A244882.P12410803794145874643

namespace A244882

/-- `A027800(n)-A033488(n)/2` -/
def P12410803794145874643.Spec : Prop :=
  ∀ n, P12410803794145874643.a n = (A244882 n : ℚ)

end A244882

/-! ## A244882.P375721306805845210

`A256859(n+1)+A033488(n)/2`
-/

namespace A244882.P375721306805845210
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A256859 (n + 1) : ℚ) + (A033488 n : ℚ) / 2

end

end A244882.P375721306805845210

namespace A244882

/-- `A256859(n+1)+A033488(n)/2` -/
def P375721306805845210.Spec : Prop :=
  ∀ n, P375721306805845210.a n = (A244882 n : ℚ)

end A244882

/-! ## A244882.P6986275680769449589

`A256859(n+1)+∑[2*A000292(n)]`
-/

namespace A244882.P6986275680769449589
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000292 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256859 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A244882.P6986275680769449589

namespace A244882

/-- `A256859(n+1)+∑[2*A000292(n)]` -/
def P6986275680769449589.Spec : Prop :=
  ∀ n, P6986275680769449589.a n = A244882 n

end A244882

/-! ## A244882.P2677452207112813826

`A002419(n+1)+A256859(n+1)-A002417(n+1)`
-/

namespace A244882.P2677452207112813826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002419 (n + 1) + (A256859 (n + 1) - A002417 (n + 1))

end

end A244882.P2677452207112813826

namespace A244882

/-- `A002419(n+1)+A256859(n+1)-A002417(n+1)` -/
def P2677452207112813826.Spec : Prop :=
  ∀ n, P2677452207112813826.a n = A244882 n

end A244882

/-! ## A244882.P18156968405779702997

`A256859(n+2)-A133252(n+1)`
-/

namespace A244882.P18156968405779702997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256859 (n + 2) - A133252 (n + 1)

end

end A244882.P18156968405779702997

namespace A244882

/-- `A256859(n+2)-A133252(n+1)` -/
def P18156968405779702997.Spec : Prop :=
  ∀ n, P18156968405779702997.a n = A244882 n

end A244882

/-! ## A244882.P2903085478719051259

`A000124(n+1)/2*A000292(n+1)`
-/

namespace A244882.P2903085478719051259
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000124 (n + 1) : ℚ) / 2 * (A000292 (n + 1) : ℚ)

end

end A244882.P2903085478719051259

namespace A244882

/-- `A000124(n+1)/2*A000292(n+1)` -/
def P2903085478719051259.Spec : Prop :=
  ∀ n, P2903085478719051259.a n = (A244882 n : ℚ)

end A244882

/-! ## A244882.P14726419622326962446

`A301973(n+1)+n*A000292(n+1)`
-/

namespace A244882.P14726419622326962446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301973 (n + 1) + (n : ℤ) * A000292 (n + 1)

end

end A244882.P14726419622326962446

namespace A244882

/-- `A301973(n+1)+n*A000292(n+1)` -/
def P14726419622326962446.Spec : Prop :=
  ∀ n, P14726419622326962446.a n = A244882 n

end A244882

/-! ## A244882.P8485073178060288857

`A002415(n+1)+A256859(n+1)+A000292(n)`
-/

namespace A244882.P8485073178060288857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002415 (n + 1) + (A256859 (n + 1) + A000292 n)

end

end A244882.P8485073178060288857

namespace A244882

/-- `A002415(n+1)+A256859(n+1)+A000292(n)` -/
def P8485073178060288857.Spec : Prop :=
  ∀ n, P8485073178060288857.a n = A244882 n

end A244882

/-!
# A244883: Expansion of (1+6*x+16*x^2+8*x^3+x^4)/(1-x)^8.

The programs for A244883, the canonical program `A244883.P13909553192450282364` is in `Seq.B000.C037`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A244883 has offset 0).

The definition of A244883 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1+6x+16x^2+8x^3+x^4)/(1-8x+28x^2-56x^3+70x^4-56x^5+28x^6-8x^7+x^8))` (program `A244883.P13909553192450282364`, by `A244883.P13909553192450282364.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A244883.P13909553192450282364

`ogf((1+6x+16x^2+8x^3+x^4)/(1-8x+28x^2-56x^3+70x^4-56x^5+28x^6-8x^7+x^8))`

The canonical program, it is in `Seq.B000.C037`.
-/

namespace A244883

/-- `ogf((1+6x+16x^2+8x^3+x^4)/(1-8x+28x^2-56x^3+70x^4-56x^5+28x^6-8x^7+x^8))` -/
def P13909553192450282364.Spec : Prop :=
  ∀ n, P13909553192450282364.a n = A244883 n

theorem P13909553192450282364.correct : P13909553192450282364.Spec := by
  intro n
  simp only [A244883]

end A244883

/-!
# A244884: Expansion of (-2 +x^2 +x -x*sqrt(1-2*x-3*x^2))/(-1 +x -sqrt(1-2*x-3*x^2)).

The programs for A244884, the canonical program `A244884.P1376533462208018478` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A244884 has offset 0).

The definition of A244884 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 217 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A244884.P12674271865432873901

`A002026(n-(ceil(atan(n))-1))`
-/

namespace A244884.P12674271865432873901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002026 ((n : ℤ) - (⌈Real.arctan (n : ℝ)⌉ - 1)).toNat

end

end A244884.P12674271865432873901

namespace A244884

/-- `A002026(n-(ceil(atan(n))-1))` -/
def P12674271865432873901.Spec : Prop :=
  ∀ n, P12674271865432873901.a n = A244884 n

end A244884

/-! ## A244884.P3849545540872668658

`A105695(C(2, 1+n)+n+1)`
-/

namespace A244884.P3849545540872668658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105695 (Nat.choose 2 (1 + n) + n + 1)

end

end A244884.P3849545540872668658

namespace A244884

/-- `A105695(C(2, 1+n)+n+1)` -/
def P3849545540872668658.Spec : Prop :=
  ∀ n, P3849545540872668658.a n = A244884 n

end A244884

/-! ## A244884.P17091608954673707445

`A105695(n+1)+char[1-n²]`
-/

namespace A244884.P17091608954673707445
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (n ^ 2 : ℤ)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105695 (n + 1) + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A244884.P17091608954673707445

namespace A244884

/-- `A105695(n+1)+char[1-n²]` -/
def P17091608954673707445.Spec : Prop :=
  ∀ n, P17091608954673707445.a n = A244884 n

end A244884

/-! ## A244884.P15739782406700206205

`A130716(n+1)+A105695(n+1)`
-/

namespace A244884.P15739782406700206205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130716 (n + 1) + A105695 (n + 1)

end

end A244884.P15739782406700206205

namespace A244884

/-- `A130716(n+1)+A105695(n+1)` -/
def P15739782406700206205.Spec : Prop :=
  ∀ n, P15739782406700206205.a n = A244884 n

end A244884

/-! ## A244884.P8049265333092869345

`A004526(C(2, n))+Δ[A168049(n+1)]`
-/

namespace A244884.P8049265333092869345
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168049 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (Nat.choose 2 n) + (f1 (n + 1) - f1 n)

end

end A244884.P8049265333092869345

namespace A244884

/-- `A004526(C(2, n))+Δ[A168049(n+1)]` -/
def P8049265333092869345.Spec : Prop :=
  ∀ n, P8049265333092869345.a n = A244884 n

end A244884

/-! ## A244884.P12852673104154318101

`A187321(C(2, n))+Δ[A168049(n+1)]`
-/

namespace A244884.P12852673104154318101
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168049 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187321 (Nat.choose 2 n) + (f1 (n + 1) - f1 n)

end

end A244884.P12852673104154318101

namespace A244884

/-- `A187321(C(2, n))+Δ[A168049(n+1)]` -/
def P12852673104154318101.Spec : Prop :=
  ∀ n, P12852673104154318101.a n = A244884 n

end A244884

/-! ## A244884.P2580816269829458439

`A168051(n+1)+A001006(A254667(n))`
-/

namespace A244884.P2580816269829458439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168051 (n + 1) + A001006 (A254667 n).toNat

end

end A244884.P2580816269829458439

namespace A244884

/-- `A168051(n+1)+A001006(A254667(n))` -/
def P2580816269829458439.Spec : Prop :=
  ∀ n, P2580816269829458439.a n = A244884 n

end A244884

/-! ## A244884.P12892698147156174219

`A001006(n)+A168051(n)-A105695(n)`
-/

namespace A244884.P12892698147156174219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001006 n + (A168051 n - A105695 n)

end

end A244884.P12892698147156174219

namespace A244884

/-- `A001006(n)+A168051(n)-A105695(n)` -/
def P12892698147156174219.Spec : Prop :=
  ∀ n, P12892698147156174219.a n = A244884 n

end A244884

/-! ## A244884.P1376533462208018478

`A001006(n)-A005554(n+1)%A001006(n)`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A244884

/-- `A001006(n)-A005554(n+1)%A001006(n)` -/
def P1376533462208018478.Spec : Prop :=
  ∀ n, P1376533462208018478.a n = A244884 n

theorem P1376533462208018478.correct : P1376533462208018478.Spec := by
  intro n
  simp only [A244884]

end A244884

/-! ## A244884.P15807160917146239560

`A019590(n+1)+A001006(n)-A086246(n+1)`
-/

namespace A244884.P15807160917146239560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019590 (n + 1) + (A001006 n - A086246 (n + 1))

end

end A244884.P15807160917146239560

namespace A244884

/-- `A019590(n+1)+A001006(n)-A086246(n+1)` -/
def P15807160917146239560.Spec : Prop :=
  ∀ n, P15807160917146239560.a n = A244884 n

end A244884

/-! ## A244884.P16508196500979547063

`A064189(1+C(n, 2))`
-/

namespace A244884.P16508196500979547063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064189 (1 + Nat.choose n 2)

end

end A244884.P16508196500979547063

namespace A244884

/-- `A064189(1+C(n, 2))` -/
def P16508196500979547063.Spec : Prop :=
  ∀ n, P16508196500979547063.a n = A244884 n

end A244884

/-! ## A244884.P1781808674761271799

`A026300(A054254(n))`
-/

namespace A244884.P1781808674761271799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026300 (A054254 n).toNat

end

end A244884.P1781808674761271799

namespace A244884

/-- `A026300(A054254(n))` -/
def P1781808674761271799.Spec : Prop :=
  ∀ n, P1781808674761271799.a n = A244884 n

end A244884

/-! ## A244884.P10999197521854768172

`A026105(∑[n]+n)`
-/

namespace A244884.P10999197521854768172
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026105 (∑ j ∈ Finset.range (n + 1), f1 j + n)

end

end A244884.P10999197521854768172

namespace A244884

/-- `A026105(∑[n]+n)` -/
def P10999197521854768172.Spec : Prop :=
  ∀ n, P10999197521854768172.a n = A244884 n

end A244884

/-!
# A244885: Expansion of (1-6*x+12*x^2-8*x^3+x^4)/((1-2*x)^2*(1-3*x+x^2)).

The programs for A244885, the canonical program `A244885.P25653695534897666` is in `Seq.B000.C037`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A244885 has offset 0).

The definition of A244885 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1-6x+12x^2-8x^3+x^4)/(1-7x+17x^2-16x^3+4x^4))` (program `A244885.P25653695534897666`, by `A244885.P25653695534897666.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A244885.P25653695534897666

`ogf((1-6x+12x^2-8x^3+x^4)/(1-7x+17x^2-16x^3+4x^4))`

The canonical program, it is in `Seq.B000.C037`.
-/

namespace A244885

/-- `ogf((1-6x+12x^2-8x^3+x^4)/(1-7x+17x^2-16x^3+4x^4))` -/
def P25653695534897666.Spec : Prop :=
  ∀ n, P25653695534897666.a n = A244885 n

theorem P25653695534897666.correct : P25653695534897666.Spec := by
  intro n
  simp only [A244885]

end A244885

/-! ## A244885.P7747251361161609340

`7*a(n-1)-17*a(n-2)+16*a(n-3)-4*a(n-4)` with `a(0)=1, a(1)=1, a(2)=2, a(3)=5, a(4)=14`
-/

namespace A244885.P7747251361161609340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 2, 5, 14] fun n a =>
  7 * a (n - 1) - 17 * a (n - 2) + 16 * a (n - 3) - 4 * a (n - 4)

end

end A244885.P7747251361161609340

namespace A244885

/-- `7*a(n-1)-17*a(n-2)+16*a(n-3)-4*a(n-4)` -/
def P7747251361161609340.Spec : Prop :=
  ∀ n, P7747251361161609340.a n = A244885 n

end A244885

/-! ## A244885.P15768119106640577761

`Δ[A001906(n)-A139756(n)]`
-/

namespace A244885.P15768119106640577761
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001906 n - A139756 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A244885.P15768119106640577761

namespace A244885

/-- `Δ[A001906(n)-A139756(n)]` -/
def P15768119106640577761.Spec : Prop :=
  ∀ n, P15768119106640577761.a n = A244885 n

end A244885

/-! ## A244885.P3144572038626474921

`A122367(n)-Δ[A139756(n)]`
-/

namespace A244885.P3144572038626474921
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139756 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122367 n - (f1 (n + 1) - f1 n)

end

end A244885.P3144572038626474921

namespace A244885

/-- `A122367(n)-Δ[A139756(n)]` -/
def P3144572038626474921.Spec : Prop :=
  ∀ n, P3144572038626474921.a n = A244885 n

end A244885

/-! ## A244885.P15197259771123432100

`A122367(n)-A049610(n+1)`
-/

namespace A244885.P15197259771123432100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122367 n - A049610 (n + 1)

end

end A244885.P15197259771123432100

namespace A244885

/-- `A122367(n)-A049610(n+1)` -/
def P15197259771123432100.Spec : Prop :=
  ∀ n, P15197259771123432100.a n = A244885 n

end A244885

/-! ## A244885.P7060051240532772012

`Δ[A001906(n)]-A049610(n+1)`
-/

namespace A244885.P7060051240532772012
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001906 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A049610 (n + 1)

end

end A244885.P7060051240532772012

namespace A244885

/-- `Δ[A001906(n)]-A049610(n+1)` -/
def P7060051240532772012.Spec : Prop :=
  ∀ n, P7060051240532772012.a n = A244885 n

end A244885

/-! ## A244885.P9597246491395820188

`Δ[A000045(2*n)-A139756(n)]`
-/

namespace A244885.P9597246491395820188
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (2 * n) - A139756 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A244885.P9597246491395820188

namespace A244885

/-- `Δ[A000045(2*n)-A139756(n)]` -/
def P9597246491395820188.Spec : Prop :=
  ∀ n, P9597246491395820188.a n = A244885 n

end A244885

/-! ## A244885.P8682793831654164985

`A000045(Δ[n²])-A336102(2*n)`
-/

namespace A244885.P8682793831654164985
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat - A336102 (2 * n)

end

end A244885.P8682793831654164985

namespace A244885

/-- `A000045(Δ[n²])-A336102(2*n)` -/
def P8682793831654164985.Spec : Prop :=
  ∀ n, P8682793831654164985.a n = A244885 n

end A244885

/-! ## A244885.P3216056957266718811

`Δ[A000045(2*n)]-A336102(2*n)`
-/

namespace A244885.P3216056957266718811
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A336102 (2 * n)

end

end A244885.P3216056957266718811

namespace A244885

/-- `Δ[A000045(2*n)]-A336102(2*n)` -/
def P3216056957266718811.Spec : Prop :=
  ∀ n, P3216056957266718811.a n = A244885 n

end A244885

/-! ## A244885.P12377051936363158727

`A000045(2*n+1)-A049610(n+1)`
-/

namespace A244885.P12377051936363158727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (2 * n + 1) - A049610 (n + 1)

end

end A244885.P12377051936363158727

namespace A244885

/-- `A000045(2*n+1)-A049610(n+1)` -/
def P12377051936363158727.Spec : Prop :=
  ∀ n, P12377051936363158727.a n = A244885 n

end A244885

/-! ## A244885.P6475639149179601944

`Δ[A001906(n)-A049610(n)]-A049610(n)`
-/

namespace A244885.P6475639149179601944
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001906 n - A049610 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A049610 n

end

end A244885.P6475639149179601944

namespace A244885

/-- `Δ[A001906(n)-A049610(n)]-A049610(n)` -/
def P6475639149179601944.Spec : Prop :=
  ∀ n, P6475639149179601944.a n = A244885 n

end A244885

/-! ## A244885.P759557673074523131

`A001519(n+1)+A011782(n)-A045623(n)`
-/

namespace A244885.P759557673074523131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001519 (n + 1) + (A011782 n - A045623 n)

end

end A244885.P759557673074523131

namespace A244885

/-- `A001519(n+1)+A011782(n)-A045623(n)` -/
def P759557673074523131.Spec : Prop :=
  ∀ n, P759557673074523131.a n = A244885 n

end A244885

/-! ## A244885.P14221557041816276579

`A000045(2*n+1)-(A001792(n)-A045623(n))`
-/

namespace A244885.P14221557041816276579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (2 * n + 1) - (A001792 n - A045623 n)

end

end A244885.P14221557041816276579

namespace A244885

/-- `A000045(2*n+1)-(A001792(n)-A045623(n))` -/
def P14221557041816276579.Spec : Prop :=
  ∀ n, P14221557041816276579.a n = A244885 n

end A244885

/-! ## A244885.P3378774041224117540

`A087123(A317108(n+1))-Δ[A139756(n)]`
-/

namespace A244885.P3378774041224117540
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139756 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087123 (A317108 (n + 1)).toNat - (f1 (n + 1) - f1 n)

end

end A244885.P3378774041224117540

namespace A244885

/-- `A087123(A317108(n+1))-Δ[A139756(n)]` -/
def P3378774041224117540.Spec : Prop :=
  ∀ n, P3378774041224117540.a n = A244885 n

end A244885

/-!
# A244886: G.f.: (1-x+sqrt(1-2*x-3*x^2))/(1-3*x+x^2+x^3+(1-x^2)*sqrt(1-2*x-3*x^2)).

The programs for A244886, there is no canonical definition to state claims against.
-/

/-! ## A244886.P15136107566198021833

`A162344(A036422(n))+A088456(n)`
-/

namespace A244886.P15136107566198021833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162344 (A036422 n).toNat + A088456 n

end

end A244886.P15136107566198021833

/-! ## A244886.P532260984457398328

`A152225(n)+A123580(A036422(n))`
-/

namespace A244886.P532260984457398328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152225 n + A123580 (A036422 n).toNat

end

end A244886.P532260984457398328

/-! ## A244886.P12374918363675648017

`A077767(∑[n]%5+3^n+1)`
-/

namespace A244886.P12374918363675648017
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077767 ((∑ j ∈ Finset.range (n + 1), f1 j) % 5 + 3 ^ n + 1)

end

end A244886.P12374918363675648017

/-! ## A244886.P348805465939767264

`A054846(A307413(n))`
-/

namespace A244886.P348805465939767264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054846 (A307413 n).toNat

end

end A244886.P348805465939767264

/-!
# A244887: Third column of triangle in A234950.

The programs for A244887, the canonical program `A244887.P18085806586146032579` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A244887 has offset 2).

The definition of A244887 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A234950, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A244887.P18085806586146032579

`A234950(C(n+3, 2)+2)`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A244887

/-- `A234950(C(n+3, 2)+2)` -/
def P18085806586146032579.Spec : Prop :=
  ∀ n, P18085806586146032579.a n = A244887 (n + 2)

theorem P18085806586146032579.correct : P18085806586146032579.Spec := by
  intro n
  simp only [A244887, Nat.add_sub_cancel]

end A244887

/-! ## A244887.P250871663464356382

`(2+n/2)*A002696(n+3)`
-/

namespace A244887.P250871663464356382
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 + (n : ℚ) / 2) * (A002696 (n + 3) : ℚ)

end

end A244887.P250871663464356382

namespace A244887

/-- `(2+n/2)*A002696(n+3)` -/
def P250871663464356382.Spec : Prop :=
  ∀ n, P250871663464356382.a n = (A244887 (n + 2) : ℚ)

end A244887

/-! ## A244887.P12664554155899934444

`(∑[n+3]+3)/3*A003517(n+2)`
-/

namespace A244887.P12664554155899934444
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j + 3 : ℕ) : ℚ) / 3 * (A003517 (n + 2) : ℚ)

end

end A244887.P12664554155899934444

namespace A244887

/-- `(∑[n+3]+3)/3*A003517(n+2)` -/
def P12664554155899934444.Spec : Prop :=
  ∀ n, P12664554155899934444.a n = (A244887 (n + 2) : ℚ)

end A244887

/-! ## A244887.P16582301542853436473

`A002457(n+2)-A002694(n+4)`
-/

namespace A244887.P16582301542853436473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002457 (n + 2) - A002694 (n + 4)

end

end A244887.P16582301542853436473

namespace A244887

/-- `A002457(n+2)-A002694(n+4)` -/
def P16582301542853436473.Spec : Prop :=
  ∀ n, P16582301542853436473.a n = A244887 (n + 2)

end A244887

/-! ## A244887.P11317635538038396711

`A034269(n+2)-A002055(n+6)`
-/

namespace A244887.P11317635538038396711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034269 (n + 2) - A002055 (n + 6)

end

end A244887.P11317635538038396711

namespace A244887

/-- `A034269(n+2)-A002055(n+6)` -/
def P11317635538038396711.Spec : Prop :=
  ∀ n, P11317635538038396711.a n = A244887 (n + 2)

end A244887

/-! ## A244887.P14654792560512999440

`(n+4)*C(2*(n+1)+4, n)/2`
-/

namespace A244887.P14654792560512999440
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 4) * Nat.choose (2 * (n + 1) + 4) n : ℚ) / 2

end

end A244887.P14654792560512999440

namespace A244887

/-- `(n+4)*C(2*(n+1)+4, n)/2` -/
def P14654792560512999440.Spec : Prop :=
  ∀ n, P14654792560512999440.a n = (A244887 (n + 2) : ℚ)

end A244887

/-! ## A244887.P16260976363438798969

`A234950(∑[n+2]+3)`
-/

namespace A244887.P16260976363438798969
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234950 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A244887.P16260976363438798969

namespace A244887

/-- `A234950(∑[n+2]+3)` -/
def P16260976363438798969.Spec : Prop :=
  ∀ n, P16260976363438798969.a n = A244887 (n + 2)

end A244887

/-!
# A244889: Second column of triangle in A244888.

The programs for A244889, there is no canonical definition to state claims against.
-/

/-! ## A244889.P14577058470429464996

`A244888(∑[n+1]+2)`
-/

namespace A244889.P14577058470429464996
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244888 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A244889.P14577058470429464996

/-!
# A244890: "Stringed numbers": see Comments for definition.

The programs for A244890, there is no canonical definition to state claims against.
-/

/-! ## A244890.P4038776084041862816

`lt[A171765(n), A118914(A195159(3*n+4))]`
-/

namespace A244890.P4038776084041862816
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171765 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118914 (A195159 (3 * n + 4)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A244890.P4038776084041862816

/-! ## A244890.P14941582715851253231

`A059995(A343452(n+1)+A063050(3*n+1))`
-/

namespace A244890.P14941582715851253231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059995 (A343452 (n + 1) + A063050 (3 * n + 1)).toNat

end

end A244890.P14941582715851253231

/-! ## A244890.P10778041789328037571

`eq[A171765(n)*A212216(n), A171765(n)]`
-/

namespace A244890.P10778041789328037571
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171765 n * A212216 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171765 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A244890.P10778041789328037571

/-!
# A244892: a(n) = a(n-a(n-1)) with initial values 5,2,5,2.

The programs for A244892, the canonical program `A244892.P9673838035700945392` is in `Seq.B000.C037`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A244892 has offset 0).

The definition of A244892 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-a(n-1))` (program `A244892.P9673838035700945392`, by `A244892.P9673838035700945392.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A244892.P9673838035700945392

`a(n-a(n-1))` with `a(0)=5, a(1)=2, a(2)=5, a(3)=2`

The canonical program, it is in `Seq.B000.C037`.
-/

namespace A244892

/-- `a(n-a(n-1))` -/
def P9673838035700945392.Spec : Prop :=
  ∀ n, (P9673838035700945392.a n : ℤ) = A244892 n

theorem P9673838035700945392.correct : P9673838035700945392.Spec := by
  intro n
  simp only [A244892]

end A244892

/-!
# A244893: a(n) = a(n-a(n-1)) with initial values 2,3,2.

The programs for A244893, the canonical program `A244893.P3866079690777160842` is in `Seq.B000.C037`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A244893 has offset 1).

The definition of A244893 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-a(n-1))` (program `A244893.P3866079690777160842`, by `A244893.P3866079690777160842.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A244893.P3866079690777160842

`a(n-a(n-1))` with `a(0)=2, a(1)=3, a(2)=2`

The canonical program, it is in `Seq.B000.C037`.
-/

namespace A244893

/-- `a(n-a(n-1))` -/
def P3866079690777160842.Spec : Prop :=
  ∀ n, (P3866079690777160842.a n : ℤ) = A244893 (n + 1)

theorem P3866079690777160842.correct : P3866079690777160842.Spec := by
  intro n
  simp only [A244893, Nat.add_sub_cancel]

end A244893

/-!
# A244894: Composite numbers n with the property that the symmetric representation of sigma(n) has two parts.

The programs for A244894, there is no canonical definition to state claims against.
-/

/-! ## A244894.P15593256145571146155

`filter[2*(1+n), A379969(#)]`
-/

namespace A244894.P15593256145571146155
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (1 + n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A379969 (f1 j) = 1) n)

end

end A244894.P15593256145571146155

/-! ## A244894.P8832221622032669404

`2*eq[2, A237271(A028310(2*n))]`
-/

namespace A244894.P8832221622032669404
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237271 (A028310 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A244894.P8832221622032669404

/-! ## A244894.P7171831874271800851

`A014681(eq[A014963(n+1), A379969(n+1)])`
-/

namespace A244894.P7171831874271800851
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379969 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014681 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A244894.P7171831874271800851

/-! ## A244894.P13675847768451121872

`eq[A142150(1+n)+2, A237271(A028310(n))]`
-/

namespace A244894.P13675847768451121872
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142150 (1 + n) + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237271 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A244894.P13675847768451121872

/-! ## A244894.P17088336851048898403

`2*A320048(1+n)`
-/

namespace A244894.P17088336851048898403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A320048 (1 + n)

end

end A244894.P17088336851048898403

/-! ## A244894.P4434284327167008286

`A004277(A320048(n+1))`
-/

namespace A244894.P4434284327167008286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A320048 (n + 1)).toNat

end

end A244894.P4434284327167008286

/-! ## A244894.P5229222932673525633

`A103517(A320048(n+1)-1)`
-/

namespace A244894.P5229222932673525633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103517 (A320048 (n + 1) - 1).toNat

end

end A244894.P5229222932673525633

/-! ## A244894.P7325869597337612896

`A320048(A000027(n+1))+A320048(n+1)`
-/

namespace A244894.P7325869597337612896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320048 (A000027 (n + 1)).toNat + A320048 (n + 1)

end

end A244894.P7325869597337612896

/-!
# A244895: Period 5: repeat [0, 1, 1, -1, -1].

The programs for A244895, the canonical program `A244895.P3287071687313047282` is in `Seq.B000.C037`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A244895 has offset 0).

The definition of A244895 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A244895.P3287071687313047282

`ogf((x+x^2-x^3-x^4)/(1-x^5))`

The canonical program, it is in `Seq.B000.C037`.
-/

namespace A244895

/-- `ogf((x+x^2-x^3-x^4)/(1-x^5))` -/
def P3287071687313047282.Spec : Prop :=
  ∀ n, P3287071687313047282.a n = A244895 n

theorem P3287071687313047282.correct : P3287071687313047282.Spec := by
  intro n
  simp only [A244895]

end A244895

/-!
# A244896: Number of length n 0..1 arrays with each partial sum starting from the beginning no more than sqrt(2) standard deviations from its mean.

The programs for A244896, there is no canonical definition to state claims against.
-/

/-! ## A244896.P9809596800564115859

`A244903(∑[n+1])`
-/

namespace A244896.P9809596800564115859
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244903 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A244896.P9809596800564115859

/-! ## A244896.P15814370092194497000

`record[A244903(A000217(A134478(n)))]`
-/

namespace A244896.P15814370092194497000
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244903 (A000217 (A134478 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A244896.P15814370092194497000

/-! ## A244896.P9519438170197035748

`record[A244903(A000217(A141256(n)))]`
-/

namespace A244896.P9519438170197035748
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244903 (A000217 (A141256 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A244896.P9519438170197035748

/-! ## A244896.P7929457523830415635

`record[A244903(A000217(A344180(n)))]`
-/

namespace A244896.P7929457523830415635
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244903 (A000217 (A344180 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A244896.P7929457523830415635

/-! ## A244896.P1016278275094761567

`record[A244903(A000217(A002260(n+1)))]`
-/

namespace A244896.P1016278275094761567
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244903 (A000217 (A002260 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A244896.P1016278275094761567

/-! ## A244896.P6953645566646239844

`record[A244903(A000217(A003963(n+1)))]`
-/

namespace A244896.P6953645566646239844
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244903 (A000217 (A003963 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A244896.P6953645566646239844

/-! ## A244896.P12819127174068654527

`record[A244903(A000217(A032742(n+1)))]`
-/

namespace A244896.P12819127174068654527
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244903 (A000217 (A032742 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A244896.P12819127174068654527

/-! ## A244896.P10718629169931619779

`record[A244903(A000217(A331270(n+1)))]`
-/

namespace A244896.P10718629169931619779
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244903 (A000217 (A331270 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A244896.P10718629169931619779

/-!
# A244897: Number of length n 0..2 arrays with each partial sum starting from the beginning no more than sqrt(2) standard deviations from its mean.

The programs for A244897, there is no canonical definition to state claims against.
-/

/-! ## A244897.P15568112674529054821

`A244903(∑[n+2])`
-/

namespace A244897.P15568112674529054821
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244903 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A244897.P15568112674529054821

/-! ## A244897.P1978487005475707604

`record[A244903(A000096(A126759(n)))]`
-/

namespace A244897.P1978487005475707604
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244903 (A000096 (A126759 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A244897.P1978487005475707604

/-! ## A244897.P1905620556427238772

`record[A244903(A000096(A286622(n)))]`
-/

namespace A244897.P1905620556427238772
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244903 (A000096 (A286622 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A244897.P1905620556427238772

/-! ## A244897.P13225118448323673752

`record[A244903(A000096(A002260(n+1)))]`
-/

namespace A244897.P13225118448323673752
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244903 (A000096 (A002260 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A244897.P13225118448323673752

/-! ## A244897.P7316062924385367083

`record[A244903(A000096(A003602(n+1)))]`
-/

namespace A244897.P7316062924385367083
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244903 (A000096 (A003602 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A244897.P7316062924385367083

/-! ## A244897.P3308193268393928697

`record[A244903(A000096(A003963(n+1)))]`
-/

namespace A244897.P3308193268393928697
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244903 (A000096 (A003963 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A244897.P3308193268393928697

/-! ## A244897.P7441645501898675888

`record[A244903(A000096(A032742(n+1)))]`
-/

namespace A244897.P7441645501898675888
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244903 (A000096 (A032742 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A244897.P7441645501898675888

/-! ## A244897.P16800706477485163967

`record[A244903(A000096(A209302(n+1)))]`
-/

namespace A244897.P16800706477485163967
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244903 (A000096 (A209302 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A244897.P16800706477485163967

/-!
# A244898: Number of length n 0..3 arrays with each partial sum starting from the beginning no more than sqrt(2) standard deviations from its mean.

The programs for A244898, there is no canonical definition to state claims against.
-/

/-! ## A244898.P17036798710266818571

`A244903(∑[n+3]+1)`
-/

namespace A244898.P17036798710266818571
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244903 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A244898.P17036798710266818571

/-! ## A244898.P1452636287741897555

`record[A244903(A198464(n+1))]`
-/

namespace A244898.P1452636287741897555
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244903 (A198464 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A244898.P1452636287741897555

/-!
# A244899: Number of length n 0..4 arrays with each partial sum starting from the beginning no more than sqrt(2) standard deviations from its mean.

The programs for A244899, there is no canonical definition to state claims against.
-/

/-! ## A244899.P6603538770052751768

`A244903(A055998(n+2))`
-/

namespace A244899.P6603538770052751768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244903 (A055998 (n + 2)).toNat

end

end A244899.P6603538770052751768

