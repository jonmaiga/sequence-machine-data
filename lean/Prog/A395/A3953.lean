import SequenceMachineLib
import Mathlib.Tactic
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C005
import Seq.B000.C006
import Seq.B000.C008
import Seq.B000.C009
import Seq.B000.C010
import Seq.B000.C011
import Seq.B000.C013
import Seq.B000.C014
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C027
import Seq.B000.C029
import Seq.B000.C032
import Seq.B000.C037
import Seq.B000.C038
import Seq.B000.C040
import Seq.B000.C041
import Seq.B000.C045
import Seq.B000.C046
import Seq.B000.C050
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C009
import Seq.B001.C010
import Seq.B001.C011
import Seq.B001.C013
import Seq.B001.C014
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C004
import Seq.B002.C005
import Seq.B003.C000
import Seq.B003.C002
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C003
import Seq.B004.C004
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
import Seq.B006.C000
import Seq.B008.C000
import Seq.B009.C000
import Seq.B010.C000
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
# A395300: Sum of numbers k < n such that rad(k) | n but k does not divide n, where rad = A007947.

The programs for A395300, the canonical program `A395300.P12127772645771921970` is in `Seq.B001.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A395300 has offset 1).

The definition of A395300 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A395300.P12127772645771921970

`A244974(n+1)-A000203(n+1)`

The canonical program, it is in `Seq.B001.C014`.
-/

namespace A395300

/-- `A244974(n+1)-A000203(n+1)` -/
def P12127772645771921970.Spec : Prop :=
  ∀ n, P12127772645771921970.a n = A395300 (n + 1)

theorem P12127772645771921970.correct : P12127772645771921970.Spec := by
  intro n
  simp only [A395300, Nat.add_sub_cancel]

end A395300

/-! ## A395300.P1503244951730417310

`A244974(n+1)-∑{d}[n+1, #]`
-/

namespace A395300.P1503244951730417310
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244974 (n + 1) - ((∑ d ∈ Nat.divisors (f1 n), d : ℕ) : ℤ)

end

end A395300.P1503244951730417310

namespace A395300

/-- `A244974(n+1)-∑{d}[n+1, #]` -/
def P1503244951730417310.Spec : Prop :=
  ∀ n, P1503244951730417310.a n = A395300 (n + 1)

end A395300

/-! ## A395300.P5032422501172867796

`A244974(n+1)-Δ[A160664(n)]`
-/

namespace A395300.P5032422501172867796
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160664 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244974 (n + 1) - (f1 (n + 1) - f1 n)

end

end A395300.P5032422501172867796

namespace A395300

/-- `A244974(n+1)-Δ[A160664(n)]` -/
def P5032422501172867796.Spec : Prop :=
  ∀ n, P5032422501172867796.a n = A395300 (n + 1)

end A395300

/-! ## A395300.P7772855914299179649

`A066760(n+1)-A381499(n+1)`
-/

namespace A395300.P7772855914299179649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066760 (n + 1) - A381499 (n + 1)

end

end A395300.P7772855914299179649

namespace A395300

/-- `A066760(n+1)-A381499(n+1)` -/
def P7772855914299179649.Spec : Prop :=
  ∀ n, P7772855914299179649.a n = A395300 (n + 1)

theorem P7772855914299179649.correct : P7772855914299179649.Spec := by
  intro n
  simp only [A395300, Nat.add_sub_cancel, A395300.P7772855914299179649.a, A395300.P12127772645771921970.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A066760, A066760.P15906391362368166906.a, A244974, A244974.P1357491586200495620.f1, A244974.P1357491586200495620.a, A381499, A381499.P13132613445248222318.a, A000217, A000217.P10269402890581615239.a, A023896, A023896.P10594219463258781009.f1, A023896.P10594219463258781009.f2, A023896.P10594219463258781009.a, A067392, A067392.P7533820900183805373.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A395300

/-! ## A395300.P994884779476586454

`A244974(n+1)-A245092(Δ[n²])`
-/

namespace A395300.P994884779476586454
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244974 (n + 1) - A245092 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A395300.P994884779476586454

namespace A395300

/-- `A244974(n+1)-A245092(Δ[n²])` -/
def P994884779476586454.Spec : Prop :=
  ∀ n, P994884779476586454.a n = A395300 (n + 1)

end A395300

/-! ## A395300.P11265694272190633404

`A244974(n+1)-∑[A340793(n+1)]`
-/

namespace A395300.P11265694272190633404
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340793 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244974 (n + 1) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A395300.P11265694272190633404

namespace A395300

/-- `A244974(n+1)-∑[A340793(n+1)]` -/
def P11265694272190633404.Spec : Prop :=
  ∀ n, P11265694272190633404.a n = A395300 (n + 1)

end A395300

/-! ## A395300.P16503218827052812258

`A066760(n+1)-(A000217(n+1)-A023896(n+1)-A244974(n+1)+1)`
-/

namespace A395300.P16503218827052812258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066760 (n + 1) - (A000217 (n + 1) - A023896 (n + 1) - A244974 (n + 1) + 1)

end

end A395300.P16503218827052812258

namespace A395300

/-- `A066760(n+1)-(A000217(n+1)-A023896(n+1)-A244974(n+1)+1)` -/
def P16503218827052812258.Spec : Prop :=
  ∀ n, P16503218827052812258.a n = A395300 (n + 1)

theorem P16503218827052812258.correct : P16503218827052812258.Spec := by
  intro n
  simp only [A395300, Nat.add_sub_cancel, A395300.P16503218827052812258.a, A395300.P12127772645771921970.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A000217, A000217.P10269402890581615239.a, A023896, A023896.P10594219463258781009.f1, A023896.P10594219463258781009.f2, A023896.P10594219463258781009.a, A066760, A066760.P15906391362368166906.a, A244974, A244974.P1357491586200495620.f1, A244974.P1357491586200495620.a, A067392, A067392.P7533820900183805373.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A395300

/-! ## A395300.P2640631869248598010

`A244974(n+1)-(A006128(n+1)-A220477(n+1))`
-/

namespace A395300.P2640631869248598010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244974 (n + 1) - (A006128 (n + 1) - A220477 (n + 1))

end

end A395300.P2640631869248598010

namespace A395300

/-- `A244974(n+1)-(A006128(n+1)-A220477(n+1))` -/
def P2640631869248598010.Spec : Prop :=
  ∀ n, P2640631869248598010.a n = A395300 (n + 1)

theorem P2640631869248598010.correct : P2640631869248598010.Spec := by
  intro n
  simp only [A395300, Nat.add_sub_cancel, A395300.P2640631869248598010.a, A395300.P12127772645771921970.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A006128, A006128.P752518303130217585.f1, A006128.P752518303130217585.a, A220477, A220477.P12886516549978802589.a, A244974, A244974.P1357491586200495620.f1, A244974.P1357491586200495620.a, A008284, A008284.P13080708486953753476.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A395300

/-!
# A395301: a(n) = tau(n) - omega(n) + Sum_{p|n, p prime} gcd(p,n/p).

The programs for A395301, the canonical program `A395301.P11832353311031738574` is in `Seq.B005.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A395301 has offset 1).

The definition of A395301 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A395301.P11832353311031738574

`A033273(n+1)+A345266(n+1)`

The canonical program, it is in `Seq.B005.C002`.
-/

namespace A395301

/-- `A033273(n+1)+A345266(n+1)` -/
def P11832353311031738574.Spec : Prop :=
  ∀ n, P11832353311031738574.a n = A395301 (n + 1)

theorem P11832353311031738574.correct : P11832353311031738574.Spec := by
  intro n
  simp only [A395301, Nat.add_sub_cancel]

end A395301

/-! ## A395301.P16671413116576525053

`A055631(A003557(1+n))+A000005(n+1)`
-/

namespace A395301.P16671413116576525053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055631 (A003557 (1 + n)).toNat + A000005 (n + 1)

end

end A395301.P16671413116576525053

namespace A395301

/-- `A055631(A003557(1+n))+A000005(n+1)` -/
def P16671413116576525053.Spec : Prop :=
  ∀ n, P16671413116576525053.a n = A395301 (n + 1)

end A395301

/-! ## A395301.P9417106222731668270

`A055631(A085731(1+n))+A000005(n+1)`
-/

namespace A395301.P9417106222731668270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055631 (A085731 (1 + n)).toNat + A000005 (n + 1)

end

end A395301.P9417106222731668270

namespace A395301

/-- `A055631(A085731(1+n))+A000005(n+1)` -/
def P9417106222731668270.Spec : Prop :=
  ∀ n, P9417106222731668270.a n = A395301 (n + 1)

end A395301

/-! ## A395301.P13526377194841282050

`A000005(n+1)+A345266(n+1)-A001221(n+1)`
-/

namespace A395301.P13526377194841282050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) + (A345266 (n + 1) - A001221 (n + 1))

end

end A395301.P13526377194841282050

namespace A395301

/-- `A000005(n+1)+A345266(n+1)-A001221(n+1)` -/
def P13526377194841282050.Spec : Prop :=
  ∀ n, P13526377194841282050.a n = A395301 (n + 1)

theorem P13526377194841282050.correct : P13526377194841282050.Spec := by
  intro n
  simp only [A395301, Nat.add_sub_cancel, A395301.P13526377194841282050.a, A395301.P11832353311031738574.a, A000005, A000005.P16091521709108585461.a, A001221, A001221.P14816172234621668833.f1, A001221.P14816172234621668833.a, A033273, A033273.P18420659424697249895.a, A345266, A345266.P10002656146987510819.a, A032741, A032741.P7902726259890016945.f1, A032741.P7902726259890016945.a, A056169, A056169.P17430176249366647977.a, A063958, A063958.P11394189410281115173.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A008472, A008472.P6567490011312877583.f1, A008472.P6567490011312877583.a, A051731, A051731.P11318043630102858095.a, A055231, A055231.P8962300905713718501.a, A000007, A000007.P6599383543502402472.a, A048158, A048158.P1757030368331788429.a, A071773, A071773.P10551485978970375506.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A395301

/-! ## A395301.P2778771742460725207

`A367860(A011264(n+1))+A000005(n+1)`
-/

namespace A395301.P2778771742460725207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367860 (A011264 (n + 1)).toNat + A000005 (n + 1)

end

end A395301.P2778771742460725207

namespace A395301

/-- `A367860(A011264(n+1))+A000005(n+1)` -/
def P2778771742460725207.Spec : Prop :=
  ∀ n, P2778771742460725207.a n = A395301 (n + 1)

end A395301

/-!
# A395303: a(n) is the least k > 0 such that A162439(k) = n; a(0) = 0.

The programs for A395303, there is no canonical definition to state claims against.
-/

/-! ## A395303.P14167115755404779574

`A233249(A019565(n))`
-/

namespace A395303.P14167115755404779574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233249 (A019565 n).toNat

end

end A395303.P14167115755404779574

/-! ## A395303.P16389612390071730765

`A333256(A395308(n)+1)`
-/

namespace A395303.P16389612390071730765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333256 (A395308 n + 1).toNat

end

end A395303.P16389612390071730765

/-! ## A395303.P17160271035826604111

`A358522(A019565(n))-A271949(n)`
-/

namespace A395303.P17160271035826604111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358522 (A019565 n).toNat - A271949 n

end

end A395303.P17160271035826604111

/-! ## A395303.P15839428204099022042

`A358522(A019565(n))-A003417(3*n+4)`
-/

namespace A395303.P15839428204099022042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358522 (A019565 n).toNat - A003417 (3 * n + 4)

end

end A395303.P15839428204099022042

/-!
# A395304: Triangle read by rows: T(n,k) is the number of ordered rooted trees with total edge weight n and k edges such that all groups of sibling edges have weights in standard order.

The programs for A395304, there is no canonical definition to state claims against.
-/

/-! ## A395304.P16551241885705260766

`A122890(n)/A059268(A324674(n))`
-/

namespace A395304.P16551241885705260766
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A122890 n : ℚ) / (A059268 (A324674 n).toNat : ℚ)

end

end A395304.P16551241885705260766

/-! ## A395304.P5597966094352128224

`A395262(n)+A373588(A395266(n+4))`
-/

namespace A395304.P5597966094352128224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A395262 n + A373588 (A395266 (n + 4)).toNat

end

end A395304.P5597966094352128224

/-! ## A395304.P9875433188035253116

`A122890(n)/A219347(A113381(n))`
-/

namespace A395304.P9875433188035253116
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A122890 n : ℚ) / (A219347 (A113381 n).toNat : ℚ)

end

end A395304.P9875433188035253116

/-! ## A395304.P10273883861962601459

`A122890(n)/A389807(A297733(n+1))`
-/

namespace A395304.P10273883861962601459
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A122890 n : ℚ) / (A389807 (A297733 (n + 1)).toNat : ℚ)

end

end A395304.P10273883861962601459

/-! ## A395304.P17283577867848442791

`A122890(n)/A141021(A073429(2*n))`
-/

namespace A395304.P17283577867848442791
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A122890 n : ℚ) / (A141021 (A073429 (2 * n)).toNat : ℚ)

end

end A395304.P17283577867848442791

/-!
# A395306: Distinct values of A162439, in order of appearance, preceded by 0 and with offset 0.

The programs for A395306, there is no canonical definition to state claims against.
-/

/-! ## A395306.P13049396627490482174

`fo[A395308(n)]`
-/

namespace A395306.P13049396627490482174
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A395308 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (n : ℤ)) 0

end

end A395306.P13049396627490482174

/-! ## A395306.P12450590665698663970

`A334032(A068382(n+1))`
-/

namespace A395306.P12450590665698663970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334032 (A068382 (n + 1)).toNat

end

end A395306.P12450590665698663970

/-! ## A395306.P13935989455326658448

`A334032(A356232(n+1))`
-/

namespace A395306.P13935989455326658448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334032 (A356232 (n + 1)).toNat

end

end A395306.P13935989455326658448

/-! ## A395306.P2939734483714831822

`A356230(A356232(n+1)+A063524(n))`
-/

namespace A395306.P2939734483714831822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356230 (A356232 (n + 1) + A063524 n).toNat

end

end A395306.P2939734483714831822

/-! ## A395306.P16768991511182844953

`A356230(A356232(n+1))%A002110(n)`
-/

namespace A395306.P16768991511182844953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A356230 (A356232 (n + 1)).toNat) (A002110 n)

end

end A395306.P16768991511182844953

/-!
# A395307: Let p1 and p2 be two consecutive primes. Take the sums p1*10^j+p2, with 0<=j<=(number of digits of p2), and p2*10^j+p1, with 1<=j<=(number of digits of p1). Sequence lists the least prime p1 that together with its successor p2 generates exactly n distinct primes through the described process.

The programs for A395307, there is no canonical definition to state claims against.
-/

/-! ## A395307.P14038677223503382356

`A006530((3*A139534(n+1)+A143217(n))*(n+2)+1)`
-/

namespace A395307.P14038677223503382356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 ((3 * A139534 (n + 1) + A143217 n) * (n + 2 : ℤ) + 1).toNat

end

end A395307.P14038677223503382356

/-!
# A395308: Inverse permutation to A395306.

The programs for A395308, there is no canonical definition to state claims against.
-/

/-! ## A395308.P3745528330210207925

`fo[A395306(n)]`
-/

namespace A395308.P3745528330210207925
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A395306 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (n : ℤ)) 0

end

end A395308.P3745528330210207925

/-!
# A395314: Triangle read by rows: T(n,k) = denominator(CF(n,k)), where CF(n,k) = (1/k!) * Sum_{j=0..k} (-1)^j * binomial(k,j) * (2+k/2-j)^n.

The programs for A395314, there is no canonical definition to state claims against.
-/

/-! ## A395314.P14591855387005796361

`floor((A395861(n)+A370703(n))/2)`
-/

namespace A395314.P14591855387005796361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A395861 n + A370703 n : ℚ) / 2⌋

end

end A395314.P14591855387005796361

/-! ## A395314.P5084543751284005420

`gcd(A028391(2*n+1)*A370705(n+1), A395861(n))`
-/

namespace A395314.P5084543751284005420
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A028391 (2 * n + 1) * A370705 (n + 1)) (A395861 n)

end

end A395314.P5084543751284005420

/-! ## A395314.P9728205117193531973

`A262611(A395861(n))²*A370703(n)`
-/

namespace A395314.P9728205117193531973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262611 (A395861 n).toNat ^ 2 * A370703 n

end

end A395314.P9728205117193531973

/-! ## A395314.P6000782148302922995

`gcd(A103240(n+1), A395861(n))`
-/

namespace A395314.P6000782148302922995
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A103240 (n + 1)) (A395861 n)

end

end A395314.P6000782148302922995

/-! ## A395314.P12911467428931143403

`gcd(A350712(n), A395861(n))`
-/

namespace A395314.P12911467428931143403
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A350712 n) (A395861 n)

end

end A395314.P12911467428931143403

/-!
# A395318: Numbers k such that prime(m) / m < prime(k) / k for any m < k (where prime(k) denotes the k-th prime number).

The programs for A395318, there is no canonical definition to state claims against.
-/

/-! ## A395318.P13909030444981893191

`A000720(A395319(1+n))`
-/

namespace A395318.P13909030444981893191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A395319 (1 + n)).toNat

end

end A395318.P13909030444981893191

/-! ## A395318.P717563971172222729

`A344616(A395319(n+1))%A023201(n+1)`
-/

namespace A395318.P717563971172222729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A344616 (A395319 (n + 1)).toNat) (A023201 (n + 1))

end

end A395318.P717563971172222729

/-! ## A395318.P6863739617432550329

`A344616(A395319(n+1)%A141925(n+1))`
-/

namespace A395318.P6863739617432550329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344616 (Int.tmod (A395319 (n + 1)) (A141925 (n + 1))).toNat

end

end A395318.P6863739617432550329

/-! ## A395318.P4874962743932759921

`∏{p}[A395319(n+1), A346697(#)]`
-/

namespace A395318.P4874962743932759921
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A395319 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A346697 p

end

end A395318.P4874962743932759921

/-! ## A395318.P13126077898621031219

`A056239(or(A057427(n), A395319(n+1)))`
-/

namespace A395318.P13126077898621031219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056239 (Int.lor (A057427 n) (A395319 (n + 1))).toNat

end

end A395318.P13126077898621031219

/-! ## A395318.P8030770399593680919

`A056239(A395319(n+1))*A057427(n+4)`
-/

namespace A395318.P8030770399593680919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056239 (A395319 (n + 1)).toNat * A057427 (n + 4)

end

end A395318.P8030770399593680919

/-! ## A395318.P2799320142231850558

`or(A056239(A395319(n+1)), A231772(2*n+1))`
-/

namespace A395318.P2799320142231850558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A056239 (A395319 (n + 1)).toNat) (A231772 (2 * n + 1))

end

end A395318.P2799320142231850558

/-! ## A395318.P8858266940795138642

`∏{p}[A395319(n+1), A324105(#)]`
-/

namespace A395318.P8858266940795138642
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A395319 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A324105 p

end

end A395318.P8858266940795138642

/-! ## A395318.P9782669013484107904

`A318283(A395319(n+1))%A266471(n+1)`
-/

namespace A395318.P9782669013484107904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A318283 (A395319 (n + 1)).toNat) (A266471 (n + 1))

end

end A395318.P9782669013484107904

/-! ## A395318.P13967257714785198456

`A318283(C(A395319(n+1), A053589(2*n+3)))`
-/

namespace A395318.P13967257714785198456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318283 (Nat.choose (A395319 (n + 1)).toNat (A053589 (2 * n + 3)).toNat)

end

end A395318.P13967257714785198456

/-!
# A395319: a(n) is the A395318(n)-th prime number.

The programs for A395319, there is no canonical definition to state claims against.
-/

/-! ## A395319.P16763799982404824271

`A000040(A395318(n+1))`
-/

namespace A395319.P16763799982404824271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A395318 (n + 1)).toNat

end

end A395319.P16763799982404824271

/-! ## A395319.P7797136558328664668

`A008578(A395318(n+1)+1)`
-/

namespace A395319.P7797136558328664668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (A395318 (n + 1) + 1).toNat

end

end A395319.P7797136558328664668

/-! ## A395319.P10600510521422955646

`A158611(A395318(n+1)+2)`
-/

namespace A395319.P10600510521422955646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158611 (A395318 (n + 1) + 2).toNat

end

end A395319.P10600510521422955646

/-! ## A395319.P8547006757855502922

`A028815(A395318(n+1))-A320410(2*(n+1))`
-/

namespace A395319.P8547006757855502922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028815 (A395318 (n + 1)).toNat - A320410 (2 * (n + 1))

end

end A395319.P8547006757855502922

/-! ## A395319.P15321672440198134110

`∩[A049555(n+1), A168498(n+1)]`
-/

namespace A395319.P15321672440198134110
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049555 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168498 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A395319.P15321672440198134110

/-!
# A395328: Bipartite dimension of the n-barbell graph.

The programs for A395328, the canonical program `A395328.P11782026124961658442` is in `Seq.B000.C050`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A395328 has offset 3).

The definition of A395328 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A395328.P11782026124961658442

`1+ceil(log2(n+2))+ceil(log2(n+3))`

The canonical program, it is in `Seq.B000.C050`.
-/

namespace A395328

/-- `1+ceil(log2(n+2))+ceil(log2(n+3))` -/
def P11782026124961658442.Spec : Prop :=
  ∀ n, P11782026124961658442.a n = A395328 (n + 3)

theorem P11782026124961658442.correct : P11782026124961658442.Spec := by
  intro n
  simp only [A395328, Nat.add_sub_cancel]

end A395328

/-! ## A395328.P15244761871138441796

`∑[floor((and(2*n+1, n-1)+n+3)/(2*n+1))]`
-/

namespace A395328.P15244761871138441796
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Int.land (2 * n + 1 : ℤ) ((n : ℤ) - 1) + (n + 3 : ℤ) : ℚ) / (2 * n + 1 : ℚ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A395328.P15244761871138441796

namespace A395328

/-- `∑[floor((and(2*n+1, n-1)+n+3)/(2*n+1))]` -/
def P15244761871138441796.Spec : Prop :=
  ∀ n, P15244761871138441796.a n = A395328 (n + 3)

end A395328

/-! ## A395328.P4310367269465752869

`∑[Δ[A154269(n+1)]²]`
-/

namespace A395328.P4310367269465752869
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154269 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) - f2 n) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A395328.P4310367269465752869

namespace A395328

/-- `∑[Δ[A154269(n+1)]²]` -/
def P4310367269465752869.Spec : Prop :=
  ∀ n, P4310367269465752869.a n = A395328 (n + 3)

end A395328

/-! ## A395328.P13007427155908609183

`A349481(A304108(n+1))`
-/

namespace A395328.P13007427155908609183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349481 (A304108 (n + 1)).toNat

end

end A395328.P13007427155908609183

namespace A395328

/-- `A349481(A304108(n+1))` -/
def P13007427155908609183.Spec : Prop :=
  ∀ n, P13007427155908609183.a n = A395328 (n + 3)

end A395328

/-! ## A395328.P17293656956047907717

`Δ[A097383(2*(1+n))]`
-/

namespace A395328.P17293656956047907717
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097383 (2 * (1 + n))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A395328.P17293656956047907717

namespace A395328

/-- `Δ[A097383(2*(1+n))]` -/
def P17293656956047907717.Spec : Prop :=
  ∀ n, P17293656956047907717.a n = A395328 (n + 3)

end A395328

/-! ## A395328.P16731381107692299120

`A349481(A026491(n+1))`
-/

namespace A395328.P16731381107692299120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349481 (A026491 (n + 1)).toNat

end

end A395328.P16731381107692299120

namespace A395328

/-- `A349481(A026491(n+1))` -/
def P16731381107692299120.Spec : Prop :=
  ∀ n, P16731381107692299120.a n = A395328 (n + 3)

end A395328

/-! ## A395328.P5475144358063251060

`A349481(A103517(n+1))`
-/

namespace A395328.P5475144358063251060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349481 (A103517 (n + 1)).toNat

end

end A395328.P5475144358063251060

namespace A395328

/-- `A349481(A103517(n+1))` -/
def P5475144358063251060.Spec : Prop :=
  ∀ n, P5475144358063251060.a n = A395328 (n + 3)

end A395328

/-! ## A395328.P3752539609059993171

`A349481(A346302(n+1))`
-/

namespace A395328.P3752539609059993171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349481 (A346302 (n + 1)).toNat

end

end A395328.P3752539609059993171

namespace A395328

/-- `A349481(A346302(n+1))` -/
def P3752539609059993171.Spec : Prop :=
  ∀ n, P3752539609059993171.a n = A395328 (n + 3)

end A395328

/-! ## A395328.P2898883570989917575

`ceil(log2(A000695(2*(n+2))))`
-/

namespace A395328.P2898883570989917575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.logb 2 (A000695 (2 * (n + 2)) : ℝ)⌉

end

end A395328.P2898883570989917575

namespace A395328

/-- `ceil(log2(A000695(2*(n+2))))` -/
def P2898883570989917575.Spec : Prop :=
  ∀ n, P2898883570989917575.a n = A395328 (n + 3)

end A395328

/-! ## A395328.P12629257197725829816

`A349481(A233273(n+1))`
-/

namespace A395328.P12629257197725829816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349481 (A233273 (n + 1)).toNat

end

end A395328.P12629257197725829816

namespace A395328

/-- `A349481(A233273(n+1))` -/
def P12629257197725829816.Spec : Prop :=
  ∀ n, P12629257197725829816.a n = A395328 (n + 3)

end A395328

/-! ## A395328.P7099629880315875955

`floor(log2(A277699(2*(n+2))))`
-/

namespace A395328.P7099629880315875955
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.log 2 (A277699 (2 * (n + 2))).toNat

end

end A395328.P7099629880315875955

namespace A395328

/-- `floor(log2(A277699(2*(n+2))))` -/
def P7099629880315875955.Spec : Prop :=
  ∀ n, (P7099629880315875955.a n : ℤ) = A395328 (n + 3)

end A395328

/-! ## A395328.P7375828065624611081

`A130245(A171070(n+2))`
-/

namespace A395328.P7375828065624611081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130245 (A171070 (n + 2)).toNat

end

end A395328.P7375828065624611081

namespace A395328

/-- `A130245(A171070(n+2))` -/
def P7375828065624611081.Spec : Prop :=
  ∀ n, P7375828065624611081.a n = A395328 (n + 3)

end A395328

/-! ## A395328.P2981175682996824273

`A108852(A036795(n+1))`
-/

namespace A395328.P2981175682996824273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108852 (A036795 (n + 1)).toNat

end

end A395328.P2981175682996824273

namespace A395328

/-- `A108852(A036795(n+1))` -/
def P2981175682996824273.Spec : Prop :=
  ∀ n, P2981175682996824273.a n = A395328 (n + 3)

end A395328

/-! ## A395328.P575889133255680523

`A130234(A054204(n+2))`
-/

namespace A395328.P575889133255680523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130234 (A054204 (n + 2)).toNat

end

end A395328.P575889133255680523

namespace A395328

/-- `A130234(A054204(n+2))` -/
def P575889133255680523.Spec : Prop :=
  ∀ n, P575889133255680523.a n = A395328 (n + 3)

end A395328

/-! ## A395328.P8819099782638082993

`A130242(A171071(n+2))`
-/

namespace A395328.P8819099782638082993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130242 (A171071 (n + 2)).toNat

end

end A395328.P8819099782638082993

namespace A395328

/-- `A130242(A171071(n+2))` -/
def P8819099782638082993.Spec : Prop :=
  ∀ n, P8819099782638082993.a n = A395328 (n + 3)

end A395328

/-! ## A395328.P4944109812389030014

`A080800(A048700(n+1))`
-/

namespace A395328.P4944109812389030014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080800 (A048700 (n + 1)).toNat

end

end A395328.P4944109812389030014

namespace A395328

/-- `A080800(A048700(n+1))` -/
def P4944109812389030014.Spec : Prop :=
  ∀ n, P4944109812389030014.a n = A395328 (n + 3)

end A395328

/-! ## A395328.P934912272540514364

`A130253(A020991(n+2))`
-/

namespace A395328.P934912272540514364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130253 (A020991 (n + 2)).toNat

end

end A395328.P934912272540514364

namespace A395328

/-- `A130253(A020991(n+2))` -/
def P934912272540514364.Spec : Prop :=
  ∀ n, P934912272540514364.a n = A395328 (n + 3)

end A395328

/-!
# A395329: Number of one-sided polynars with n cells that are not the 2 X enlargement of a one-sided n-omino.

The programs for A395329, there is no canonical definition to state claims against.
-/

/-! ## A395329.P17039584450948025610

`A390621(n+1)-A000988(n+1)`
-/

namespace A395329.P17039584450948025610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390621 (n + 1) - A000988 (n + 1)

end

end A395329.P17039584450948025610

/-!
# A395330: Symmetric array read by antidiagonals: A(n,k) = tau(n*k), where tau = A000005.

The programs for A395330, the canonical program `A395330.P17136906903227382088` is in `Seq.B004.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A395330 has offset 1).

The definition of A395330 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000005((col(n)+1)*(row(n)-col(n)+1))` (program `A395330.P17136906903227382088`, by `A395330.P17136906903227382088.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A395330.P17136906903227382088

`A000005((col(n)+1)*(row(n)-col(n)+1))`

The canonical program, it is in `Seq.B004.C004`.
-/

namespace A395330

/-- `A000005((col(n)+1)*(row(n)-col(n)+1))` -/
def P17136906903227382088.Spec : Prop :=
  ∀ n, P17136906903227382088.a n = A395330 (n + 1)

theorem P17136906903227382088.correct : P17136906903227382088.Spec := by
  intro n
  simp only [A395330, Nat.add_sub_cancel]

end A395330

/-! ## A395330.P4885563683912588539

`A000005((row(n)-col(n)+1)*(col(n)+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A395330.P4885563683912588539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (((SequenceMachineLib.triRow n : ℤ) - (SequenceMachineLib.triCol n : ℤ) + 1) * (SequenceMachineLib.triCol n + 1 : ℤ)).toNat

end

end A395330.P4885563683912588539

namespace A395330

/-- `A000005((row(n)-col(n)+1)*(col(n)+1))` -/
def P4885563683912588539.Spec : Prop :=
  ∀ n, P4885563683912588539.a n = A395330 (n + 1)

theorem P4885563683912588539.correct : P4885563683912588539.Spec := by
  intro n
  simp only [A395330, Nat.add_sub_cancel, A395330.P4885563683912588539.a, A395330.P17136906903227382088.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A395330

/-! ## A395330.P2180464961006508243

`∏{e}[T(n-1,k)+col(n)+1, #+1]` with `a(0)=1`
-/

namespace A395330.P2180464961006508243
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f1 =>
  SequenceMachineLib.triUp f1 n + SequenceMachineLib.triCol n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + 1)

end

end A395330.P2180464961006508243

namespace A395330

/-- `∏{e}[T(n-1,k)+col(n)+1, #+1]` -/
def P2180464961006508243.Spec : Prop :=
  ∀ n, (P2180464961006508243.a n : ℤ) = A395330 (n + 1)

end A395330

/-! ## A395330.P10953206824641204491

`∏{e}[T(n-2,k-1)+row(n)+1, #+1]` with `a(0)=1`
-/

namespace A395330.P10953206824641204491
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f1 =>
  SequenceMachineLib.triUp2Left f1 n + SequenceMachineLib.triRow n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + 1)

end

end A395330.P10953206824641204491

namespace A395330

/-- `∏{e}[T(n-2,k-1)+row(n)+1, #+1]` -/
def P10953206824641204491.Spec : Prop :=
  ∀ n, (P10953206824641204491.a n : ℤ) = A395330 (n + 1)

end A395330

/-! ## A395330.P12770027578272332044

`∏{e}[T(n-1,k-1)+T(n-1,k)-T(n-2,k-1)+1, #+1]` with `a(0)=1`
-/

namespace A395330.P12770027578272332044
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  SequenceMachineLib.triUpLeft f1 n + SequenceMachineLib.triUp f1 n - SequenceMachineLib.triUp2Left f1 n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, (Nat.factorization (f1 n).natAbs p + 1)

end

end A395330.P12770027578272332044

namespace A395330

/-- `∏{e}[T(n-1,k-1)+T(n-1,k)-T(n-2,k-1)+1, #+1]` -/
def P12770027578272332044.Spec : Prop :=
  ∀ n, (P12770027578272332044.a n : ℤ) = A395330 (n + 1)

end A395330

/-! ## A395330.P10224117014523225790

`∏{e}[row(n)-col(n)+T(n-1,k-1)+1, #+1]` with `a(0)=1`
-/

namespace A395330.P10224117014523225790
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  (SequenceMachineLib.triRow n : ℤ) - (SequenceMachineLib.triCol n : ℤ) + SequenceMachineLib.triUpLeft f1 n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, (Nat.factorization (f1 n).natAbs p + 1)

end

end A395330.P10224117014523225790

namespace A395330

/-- `∏{e}[row(n)-col(n)+T(n-1,k-1)+1, #+1]` -/
def P10224117014523225790.Spec : Prop :=
  ∀ n, (P10224117014523225790.a n : ℤ) = A395330 (n + 1)

end A395330

/-! ## A395330.P16628209692396805289

`∏{e}[A003991(1+n), #+1]`
-/

namespace A395330.P16628209692396805289
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003991 (1 + n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, (Nat.factorization (f1 n).natAbs p + 1)

end

end A395330.P16628209692396805289

namespace A395330

/-- `∏{e}[A003991(1+n), #+1]` -/
def P16628209692396805289.Spec : Prop :=
  ∀ n, (P16628209692396805289.a n : ℤ) = A395330 (n + 1)

end A395330

/-! ## A395330.P4574039533577610478

`∏{e}[A059036(n)+1, #+1]`
-/

namespace A395330.P4574039533577610478
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059036 n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, (Nat.factorization (f1 n).natAbs p + 1)

end

end A395330.P4574039533577610478

namespace A395330

/-- `∏{e}[A059036(n)+1, #+1]` -/
def P4574039533577610478.Spec : Prop :=
  ∀ n, (P4574039533577610478.a n : ℤ) = A395330 (n + 1)

end A395330

/-! ## A395330.P399357628110457366

`A000005((1+col(n))*(1-col(n)+row(n)))`
-/

namespace A395330.P399357628110457366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 ((1 + SequenceMachineLib.triCol n : ℤ) * (1 - (SequenceMachineLib.triCol n : ℤ) + (SequenceMachineLib.triRow n : ℤ))).toNat

end

end A395330.P399357628110457366

namespace A395330

/-- `A000005((1+col(n))*(1-col(n)+row(n)))` -/
def P399357628110457366.Spec : Prop :=
  ∀ n, P399357628110457366.a n = A395330 (n + 1)

theorem P399357628110457366.correct : P399357628110457366.Spec := by
  intro n
  simp only [A395330, Nat.add_sub_cancel, A395330.P399357628110457366.a, A395330.P17136906903227382088.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A395330

/-! ## A395330.P14093352241623635001

`A032741((col(n)+1)*(row(n)-col(n)+1))+1`
-/

namespace A395330.P14093352241623635001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 ((SequenceMachineLib.triCol n + 1 : ℤ) * ((SequenceMachineLib.triRow n : ℤ) - (SequenceMachineLib.triCol n : ℤ) + 1)).toNat + 1

end

end A395330.P14093352241623635001

namespace A395330

/-- `A032741((col(n)+1)*(row(n)-col(n)+1))+1` -/
def P14093352241623635001.Spec : Prop :=
  ∀ n, P14093352241623635001.a n = A395330 (n + 1)

end A395330

/-! ## A395330.P8611050713736168004

`A000005(A003991(n+1))`
-/

namespace A395330.P8611050713736168004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A003991 (n + 1)).toNat

end

end A395330.P8611050713736168004

namespace A395330

/-- `A000005(A003991(n+1))` -/
def P8611050713736168004.Spec : Prop :=
  ∀ n, P8611050713736168004.a n = A395330 (n + 1)

end A395330

/-! ## A395330.P4185162369959227853

`A000005(A059036(n)+1)`
-/

namespace A395330.P4185162369959227853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A059036 n + 1).toNat

end

end A395330.P4185162369959227853

namespace A395330

/-- `A000005(A059036(n)+1)` -/
def P4185162369959227853.Spec : Prop :=
  ∀ n, P4185162369959227853.a n = A395330 (n + 1)

theorem P4185162369959227853.correct : P4185162369959227853.Spec := by
  intro n
  simp only [A395330, Nat.add_sub_cancel, A395330.P4185162369959227853.a, A395330.P17136906903227382088.a, A000005, A000005.P16091521709108585461.a, A059036, A059036.P14090632459187506294.a, A032741, A032741.P7902726259890016945.f1, A032741.P7902726259890016945.a, A051731, A051731.P11318043630102858095.a, A000007, A000007.P6599383543502402472.a, A048158, A048158.P1757030368331788429.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A395330

/-! ## A395330.P17502849923115761270

`A000005(sqrt(A098359(n+1)))`
-/

namespace A395330.P17502849923115761270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (SequenceMachineLib.roundAway (Real.sqrt (A098359 (n + 1) : ℝ))).toNat

end

end A395330.P17502849923115761270

namespace A395330

/-- `A000005(sqrt(A098359(n+1)))` -/
def P17502849923115761270.Spec : Prop :=
  ∀ n, P17502849923115761270.a n = A395330 (n + 1)

end A395330

/-! ## A395330.P5885661382925993596

`A000005((A025581(n)+1)*(A002262(n)+1))`
-/

namespace A395330.P5885661382925993596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 ((A025581 n + 1) * (A002262 n + 1)).toNat

end

end A395330.P5885661382925993596

namespace A395330

/-- `A000005((A025581(n)+1)*(A002262(n)+1))` -/
def P5885661382925993596.Spec : Prop :=
  ∀ n, P5885661382925993596.a n = A395330 (n + 1)

theorem P5885661382925993596.correct : P5885661382925993596.Spec := by
  intro n
  simp only [A395330, Nat.add_sub_cancel, A395330.P5885661382925993596.a, A395330.P17136906903227382088.a, A000005, A000005.P16091521709108585461.a, A002262, A002262.P17823619022233514403.a, A025581, A025581.P16112744757063613497.a, A032741, A032741.P7902726259890016945.f1, A032741.P7902726259890016945.a, A051731, A051731.P11318043630102858095.a, A000007, A000007.P6599383543502402472.a, A048158, A048158.P1757030368331788429.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A395330

/-! ## A395330.P14444694070182848771

`A183063(2*A003991(n+1))`
-/

namespace A395330.P14444694070182848771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183063 (2 * A003991 (n + 1)).toNat

end

end A395330.P14444694070182848771

namespace A395330

/-- `A183063(2*A003991(n+1))` -/
def P14444694070182848771.Spec : Prop :=
  ∀ n, P14444694070182848771.a n = A395330 (n + 1)

end A395330

/-! ## A395330.P15993742424840197068

`A112329(A098352(n+1))`
-/

namespace A395330.P15993742424840197068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112329 (A098352 (n + 1)).toNat

end

end A395330.P15993742424840197068

namespace A395330

/-- `A112329(A098352(n+1))` -/
def P15993742424840197068.Spec : Prop :=
  ∀ n, P15993742424840197068.a n = A395330 (n + 1)

end A395330

/-! ## A395330.P5497471315789937944

`A000005(A061017(A374818(n+1)))`
-/

namespace A395330.P5497471315789937944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A061017 (A374818 (n + 1)).toNat).toNat

end

end A395330.P5497471315789937944

namespace A395330

/-- `A000005(A061017(A374818(n+1)))` -/
def P5497471315789937944.Spec : Prop :=
  ∀ n, P5497471315789937944.a n = A395330 (n + 1)

end A395330

/-! ## A395330.P8881974855583055219

`A046951(A098359(n+1))`
-/

namespace A395330.P8881974855583055219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046951 (A098359 (n + 1)).toNat

end

end A395330.P8881974855583055219

namespace A395330

/-- `A046951(A098359(n+1))` -/
def P8881974855583055219.Spec : Prop :=
  ∀ n, P8881974855583055219.a n = A395330 (n + 1)

end A395330

/-! ## A395330.P7877625540119669031

`A046951(A003991(n+1)²)`
-/

namespace A395330.P7877625540119669031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046951 (A003991 (n + 1) ^ 2).toNat

end

end A395330.P7877625540119669031

namespace A395330

/-- `A046951(A003991(n+1)²)` -/
def P7877625540119669031.Spec : Prop :=
  ∀ n, P7877625540119669031.a n = A395330 (n + 1)

end A395330

/-!
# A395333: Largest n-digit base-3 deletable prime.

The programs for A395333, there is no canonical definition to state claims against.
-/

/-! ## A395333.P3705617737698608644

`A319596(∑[A096236(n+1)])`
-/

namespace A395333.P3705617737698608644
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096236 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319596 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A395333.P3705617737698608644

/-! ## A395333.P16197221834040773367

`A159477(A116758(n+2))`
-/

namespace A395333.P16197221834040773367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159477 (A116758 (n + 2)).toNat

end

end A395333.P16197221834040773367

/-!
# A395334: Number of free polyominoes with n cells (up to the symmetries of the square) that contain a saturated cell (a cell all four of whose edge-neighbors are present).

The programs for A395334, there is no canonical definition to state claims against.
-/

/-! ## A395334.P15853368082984759456

`floor(A121828(A275605(n)+n)/9)`
-/

namespace A395334.P15853368082984759456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A121828 (A275605 n + (n : ℤ)).toNat : ℚ) / 9⌋

end

end A395334.P15853368082984759456

/-! ## A395334.P9345742948637663044

`A065718(A033321(n)-A243282(n+1))`
-/

namespace A395334.P9345742948637663044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065718 (A033321 n - A243282 (n + 1)).toNat

end

end A395334.P9345742948637663044

/-!
# A395335: Number of permutations p of [n] such that |p(i+1) - p(i)| <> 2 for all 1 <= i < n.

The programs for A395335, there is no canonical definition to state claims against.
-/

/-! ## A395335.P4381608084937905043

`A398634(∑[3+n])`
-/

namespace A395335.P4381608084937905043
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A398634 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A395335.P4381608084937905043

/-! ## A395335.P3749388007308106249

`A257993(2*n+1)*A398634(A055998(n+1))`
-/

namespace A395335.P3749388007308106249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257993 (2 * n + 1) * A398634 (A055998 (n + 1)).toNat

end

end A395335.P3749388007308106249

/-! ## A395335.P8326100532834521332

`A162798(A275282(n))`
-/

namespace A395335.P8326100532834521332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162798 (A275282 n).toNat

end

end A395335.P8326100532834521332

/-!
# A395336: a(n) = n! * [x^n] exp(x)/(2 - x - exp(x)).

The programs for A395336, there is no canonical definition to state claims against.
-/

/-! ## A395336.P10758639524547253022

`A131141(A004123(n+1))+n`
-/

namespace A395336.P10758639524547253022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131141 (A004123 (n + 1)).toNat + (n : ℤ)

end

end A395336.P10758639524547253022

/-!
# A395338: Primes whose square is a concatenation of exactly 2 distinct nonzero squares.

The programs for A395338, there is no canonical definition to state claims against.
-/

/-! ## A395338.P10100272846553948473

`∩[A048375(n+1), A048646(n+1)]`
-/

namespace A395338.P10100272846553948473
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048375 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048646 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A395338.P10100272846553948473

/-! ## A395338.P4045552148635804037

`p?[A048375(n+1)]`
-/

namespace A395338.P4045552148635804037
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048375 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A395338.P4045552148635804037

/-!
# A395339: a(n) = (2*n)! * [x^(2*n)] cosh(x) * cos(x)^2.

The programs for A395339, the canonical program `A395339.P5668913182773683691` is in `Seq.B000.C050`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A395339 has offset 0).

The definition of A395339 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A395339.P5668913182773683691

`ogf((1+4x+11x^2)/(1+5x+19x^2-25x^3))`

The canonical program, it is in `Seq.B000.C050`.
-/

namespace A395339

/-- `ogf((1+4x+11x^2)/(1+5x+19x^2-25x^3))` -/
def P5668913182773683691.Spec : Prop :=
  ∀ n, P5668913182773683691.a n = A395339 n

theorem P5668913182773683691.correct : P5668913182773683691.Spec := by
  intro n
  simp only [A395339]

end A395339

/-! ## A395339.P1215769343704163618

`ceil(A006495(2*n)/2)`
-/

namespace A395339.P1215769343704163618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A006495 (2 * n) : ℚ) / 2⌉

end

end A395339.P1215769343704163618

namespace A395339

/-- `ceil(A006495(2*n)/2)` -/
def P1215769343704163618.Spec : Prop :=
  ∀ n, P1215769343704163618.a n = A395339 n

end A395339

/-!
# A395340: a(n) = (2*n)! * [x^(2*n)] cosh(x) / cos(x)^2.

The programs for A395340, there is no canonical definition to state claims against.
-/

/-! ## A395340.P1828625144014868984

`∑{#}[n, C(2*n, 2*#)*A000182(#+1)]`
-/

namespace A395340.P1828625144014868984
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), (Nat.choose (2 * n) (2 * k) : ℤ) * A000182 (k + 1)

end

end A395340.P1828625144014868984

/-! ## A395340.P9665984247307950950

`A003719(n)-A009747(n)`
-/

namespace A395340.P9665984247307950950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003719 n - A009747 n

end

end A395340.P9665984247307950950

/-! ## A395340.P3577454207355540635

`A003719(n)-A009739(2*n)`
-/

namespace A395340.P3577454207355540635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003719 n - A009739 (2 * n)

end

end A395340.P3577454207355540635

/-! ## A395340.P11707975713341728808

`A003719(n)-A062161(2*n)`
-/

namespace A395340.P11707975713341728808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003719 n - A062161 (2 * n)

end

end A395340.P11707975713341728808

/-! ## A395340.P7263840048121126566

`A009739(2*n+1)-A009747(n)`
-/

namespace A395340.P7263840048121126566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009739 (2 * n + 1) - A009747 n

end

end A395340.P7263840048121126566

/-!
# A395341: a(n) = (2*n)! * [x^(2*n)] cosh(x)^3 / cos(x)^2.

The programs for A395341, there is no canonical definition to state claims against.
-/

/-! ## A395341.P14920180210201879388

`1/4*∑{#}[n, (3+9^(n-#))*C(2*n, 2*#)*A000182(#+1)]`
-/

namespace A395341.P14920180210201879388
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 : ℚ) / 4 * (∑ k ∈ Finset.range (f1 n + 1), (3 + (9 : ℚ) ^ ((n : ℤ) - (k : ℤ) : ℤ)) * (Nat.choose (2 * n) (2 * k) : ℚ) * (A000182 (k + 1) : ℚ))

end

end A395341.P14920180210201879388

/-!
# A395342: a(n) = (2*n)! * [x^(2*n)] cosh(x)^5 / cos(x)^2.

The programs for A395342, there is no canonical definition to state claims against.
-/

/-! ## A395342.P14503360903931311334

`1/16*∑{#}[n, (10+5*9^(n-#)+25^(n-#))*C(2*n, 2*#)*A000182(#+1)]`
-/

namespace A395342.P14503360903931311334
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 : ℚ) / 16 * (∑ k ∈ Finset.range (f1 n + 1), (10 + 5 * (9 : ℚ) ^ ((n : ℤ) - (k : ℤ) : ℤ) + (25 : ℚ) ^ ((n : ℤ) - (k : ℤ) : ℤ)) * (Nat.choose (2 * n) (2 * k) : ℚ) * (A000182 (k + 1) : ℚ))

end

end A395342.P14503360903931311334

/-!
# A395343: a(n) = (2*n)! * [x^(2*n)] (cosh(x/2) / cos(x/2))^2.

The programs for A395343, there is no canonical definition to state claims against.
-/

/-! ## A395343.P5349339524928942058

`A020663(A107878(n))+1`
-/

namespace A395343.P5349339524928942058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020663 (A107878 n).toNat + 1

end

end A395343.P5349339524928942058

/-! ## A395343.P5627461538771680202

`A079241(n)+A007953(A001147(n))`
-/

namespace A395343.P5627461538771680202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079241 n + A007953 (A001147 n).toNat

end

end A395343.P5627461538771680202

/-!
# A395344: a(n) is the integer obtained by inserting the sum (modulo 10) of adjacent digits of n between them.

The programs for A395344, there is no canonical definition to state claims against.
-/

/-! ## A395344.P15941879408148358868

`∩[A028431(n+1), A240237(n)]`
-/

namespace A395344.P15941879408148358868
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028431 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240237 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A395344.P15941879408148358868

/-! ## A395344.P10538989763194550095

`∩[A295020(n+1), A240237(n)]`
-/

namespace A395344.P10538989763194550095
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295020 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240237 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A395344.P10538989763194550095

/-! ## A395344.P9143815384783895256

`(n+1)*A139337(A020753(n+1))`
-/

namespace A395344.P9143815384783895256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A139337 (A020753 (n + 1)).toNat

end

end A395344.P9143815384783895256

/-! ## A395344.P11773901423644897469

`A395615(n+1)+A070565(A020753(n+1))`
-/

namespace A395344.P11773901423644897469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A395615 (n + 1) + A070565 (A020753 (n + 1)).toNat

end

end A395344.P11773901423644897469

/-! ## A395344.P6656050848975613690

`(n+1)*A027828(A027828(A027828(n+1)))`
-/

namespace A395344.P6656050848975613690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A027828 (A027828 (A027828 (n + 1)).toNat).toNat

end

end A395344.P6656050848975613690

/-!
# A395345: Triangle read by rows: T(n, k) = k * T(n, k+1) + T(n-1, k-1) - (n-k-1) * T(n-1, k) with T(n, 0) = 0^n, T(n, k) = 0 for k < 0 or k > n.

The programs for A395345, there is no canonical definition to state claims against.
-/

/-! ## A395345.P12272422460656218906

`A186747(A094816(n))+A132393(n)`
-/

namespace A395345.P12272422460656218906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186747 (A094816 n).toNat + A132393 n

end

end A395345.P12272422460656218906

/-! ## A395345.P14148587228194911348

`or(A056626(A022367(n)), A264428(n))`
-/

namespace A395345.P14148587228194911348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A056626 (A022367 n).toNat) (A264428 n)

end

end A395345.P14148587228194911348

/-! ## A395345.P16174891256194426386

`or(A124768(A361587(n)), A264428(n))`
-/

namespace A395345.P16174891256194426386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A124768 (A361587 n).toNat) (A264428 n)

end

end A395345.P16174891256194426386

/-! ## A395345.P3090518528319774236

`A132393(n)+A033909(A045912(n+1))`
-/

namespace A395345.P3090518528319774236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132393 n + A033909 (A045912 (n + 1)).toNat

end

end A395345.P3090518528319774236

/-! ## A395345.P16725092272430709078

`A132393(n)+A007814(A157151(n+1))`
-/

namespace A395345.P16725092272430709078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132393 n + A007814 (A157151 (n + 1)).toNat

end

end A395345.P16725092272430709078

/-!
# A395350: RUNS transform of A393452.

The programs for A395350, there is no canonical definition to state claims against.
-/

/-! ## A395350.P5300570134700707212

`runs[A393452(n)]`
-/

namespace A395350.P5300570134700707212
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A393452 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => j = 0 ∨ f1 j ≠ f1 (j - 1)) (n + 1) - SequenceMachineLib.nth (fun j => j = 0 ∨ f1 j ≠ f1 (j - 1)) n

end

end A395350.P5300570134700707212

/-! ## A395350.P4815269726368626487

`runs[A392177(n+2)-A392177(n+1)]`
-/

namespace A395350.P4815269726368626487
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392177 (n + 2) - A392177 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => j = 0 ∨ f1 j ≠ f1 (j - 1)) (n + 1) - SequenceMachineLib.nth (fun j => j = 0 ∨ f1 j ≠ f1 (j - 1)) n

end

end A395350.P4815269726368626487

/-! ## A395350.P18009510421116416392

`runs[Δ[record[A395355(n)]]]`
-/

namespace A395350.P18009510421116416392
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A395355 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (SequenceMachineLib.nth (fun j => ∀ l < j, f3 l < f3 j) n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => j = 0 ∨ f1 j ≠ f1 (j - 1)) (n + 1) - SequenceMachineLib.nth (fun j => j = 0 ∨ f1 j ≠ f1 (j - 1)) n

end

end A395350.P18009510421116416392

/-! ## A395350.P3567158532003514370

`runs[Δ[A392177(n+1)]]`
-/

namespace A395350.P3567158532003514370
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392177 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => j = 0 ∨ f1 j ≠ f1 (j - 1)) (n + 1) - SequenceMachineLib.nth (fun j => j = 0 ∨ f1 j ≠ f1 (j - 1)) n

end

end A395350.P3567158532003514370

/-! ## A395350.P17827987310724932780

`runs[Δ[A395355(2*n)]]`
-/

namespace A395350.P17827987310724932780
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A395355 (2 * n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => j = 0 ∨ f1 j ≠ f1 (j - 1)) (n + 1) - SequenceMachineLib.nth (fun j => j = 0 ∨ f1 j ≠ f1 (j - 1)) n

end

end A395350.P17827987310724932780

/-!
# A395351: First differences of A392178.

The programs for A395351, there is no canonical definition to state claims against.
-/

/-! ## A395351.P3053515147465456594

`Δ[A392178(1+n)]`
-/

namespace A395351.P3053515147465456594
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392178 (1 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A395351.P3053515147465456594

/-! ## A395351.P9203203709719616191

`Δ[record[A392178(A305296(n))]]`
-/

namespace A395351.P9203203709719616191
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392178 (A305296 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A395351.P9203203709719616191

/-! ## A395351.P8614451554027032405

`A393452(n)+Δ[A393449(n)]`
-/

namespace A395351.P8614451554027032405
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A393449 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A393452 n + (f1 (n + 1) - f1 n)

end

end A395351.P8614451554027032405

/-! ## A395351.P17816254653925582738

`Δ[A393449(n)+A392177(n+1)]`
-/

namespace A395351.P17816254653925582738
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A393449 n + A392177 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A395351.P17816254653925582738

/-! ## A395351.P1026462170536702139

`A392178(n+2)-A392178(n+1)`
-/

namespace A395351.P1026462170536702139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392178 (n + 2) - A392178 (n + 1)

end

end A395351.P1026462170536702139

/-! ## A395351.P6234947493874588900

`A395355(2*n+1)+A392178(n+2)`
-/

namespace A395351.P6234947493874588900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A395355 (2 * n + 1) + A392178 (n + 2)

end

end A395351.P6234947493874588900

/-! ## A395351.P13465065104146212932

`Δ[record[-A395355(1+n)]]`
-/

namespace A395351.P13465065104146212932
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A395355 (1 + n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A395351.P13465065104146212932

/-! ## A395351.P3021263069962926254

`Δ[abs(A395355(2*n+1))]`
-/

namespace A395351.P3021263069962926254
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A395355 (2 * n + 1)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A395351.P3021263069962926254

/-! ## A395351.P6458338823020956249

`Δ[-A395355(1+2*n)]`
-/

namespace A395351.P6458338823020956249
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A395355 (1 + 2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A395351.P6458338823020956249

/-! ## A395351.P17548527536227379409

`Δ[A395355(2*n)+A393449(n)]`
-/

namespace A395351.P17548527536227379409
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A395355 (2 * n) + A393449 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A395351.P17548527536227379409

/-! ## A395351.P17993970238562831705

`Δ[A097031(2*n+3)-A395355(2*n+1)]`
-/

namespace A395351.P17993970238562831705
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097031 (2 * n + 3) - A395355 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A395351.P17993970238562831705

/-! ## A395351.P580447625597549977

`Δ[lt[A395357(n), 0]]`
-/

namespace A395351.P580447625597549977
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A395357 n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < (f3 j : ℤ)) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A395351.P580447625597549977

/-! ## A395351.P13416053470911097570

`Δ[record[-A395357(n+1)]]`
-/

namespace A395351.P13416053470911097570
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A395357 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A395351.P13416053470911097570

/-! ## A395351.P9916602807297762492

`Δ[lt[0, A395355(A395364(n))]]`
-/

namespace A395351.P9916602807297762492
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A395355 (A395364 n).toNat

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) < f3 j) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A395351.P9916602807297762492

/-! ## A395351.P16245199908668438154

`abs(Δ[A395355(A109613(2*n))])`
-/

namespace A395351.P16245199908668438154
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A395355 (A109613 (2 * n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A395351.P16245199908668438154

/-! ## A395351.P15927244255961471340

`Δ[lt[A395486(n), 0]]`
-/

namespace A395351.P15927244255961471340
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A395486 n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < (f3 j : ℤ)) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A395351.P15927244255961471340

/-! ## A395351.P18083360760528446837

`Δ[record[A392178(A117910(n))]]`
-/

namespace A395351.P18083360760528446837
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392178 (A117910 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A395351.P18083360760528446837

/-!
# A395352: RUNS transform of A395351.

The programs for A395352, there is no canonical definition to state claims against.
-/

/-! ## A395352.P467482958879453210

`runs[A395351(n)]`
-/

namespace A395352.P467482958879453210
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A395351 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => j = 0 ∨ f1 j ≠ f1 (j - 1)) (n + 1) - SequenceMachineLib.nth (fun j => j = 0 ∨ f1 j ≠ f1 (j - 1)) n

end

end A395352.P467482958879453210

/-! ## A395352.P16563698418838039962

`runs[A392178(n+2)-A392178(n+1)]`
-/

namespace A395352.P16563698418838039962
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392178 (n + 2) - A392178 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => j = 0 ∨ f1 j ≠ f1 (j - 1)) (n + 1) - SequenceMachineLib.nth (fun j => j = 0 ∨ f1 j ≠ f1 (j - 1)) n

end

end A395352.P16563698418838039962

/-! ## A395352.P6832133891878845786

`runs[Δ[A392178(n+1)]]`
-/

namespace A395352.P6832133891878845786
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392178 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => j = 0 ∨ f1 j ≠ f1 (j - 1)) (n + 1) - SequenceMachineLib.nth (fun j => j = 0 ∨ f1 j ≠ f1 (j - 1)) n

end

end A395352.P6832133891878845786

/-! ## A395352.P16216376551325866279

`runs[Δ[record[-A395355(n+1)]]]`
-/

namespace A395352.P16216376551325866279
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A395355 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (SequenceMachineLib.nth (fun j => ∀ l < j, f3 l < f3 j) n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => j = 0 ∨ f1 j ≠ f1 (j - 1)) (n + 1) - SequenceMachineLib.nth (fun j => j = 0 ∨ f1 j ≠ f1 (j - 1)) n

end

end A395352.P16216376551325866279

/-! ## A395352.P8421513260565272811

`runs[Δ[abs(A395355(2*n+1))]]`
-/

namespace A395352.P8421513260565272811
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A395355 (2 * n + 1)|

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => j = 0 ∨ f1 j ≠ f1 (j - 1)) (n + 1) - SequenceMachineLib.nth (fun j => j = 0 ∨ f1 j ≠ f1 (j - 1)) n

end

end A395352.P8421513260565272811

/-! ## A395352.P15921033204765994655

`runs[Δ[A393449(n)+A392177(n+1)]]`
-/

namespace A395352.P15921033204765994655
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A393449 n + A392177 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => j = 0 ∨ f1 j ≠ f1 (j - 1)) (n + 1) - SequenceMachineLib.nth (fun j => j = 0 ∨ f1 j ≠ f1 (j - 1)) n

end

end A395352.P15921033204765994655

/-! ## A395352.P3798928595175171839

`runs[Δ[A395356(2*n+1)+A395355(2*n)]]`
-/

namespace A395352.P3798928595175171839
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A395356 (2 * n + 1) + A395355 (2 * n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => j = 0 ∨ f1 j ≠ f1 (j - 1)) (n + 1) - SequenceMachineLib.nth (fun j => j = 0 ∨ f1 j ≠ f1 (j - 1)) n

end

end A395352.P3798928595175171839

/-! ## A395352.P1485111871938728452

`runs[Δ[lt[A395357(n), 0]]]`
-/

namespace A395352.P1485111871938728452
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A395357 n

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f3 j < (f4 j : ℤ)) n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℤ) - (f2 n : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => j = 0 ∨ f1 j ≠ f1 (j - 1)) (n + 1) - SequenceMachineLib.nth (fun j => j = 0 ∨ f1 j ≠ f1 (j - 1)) n

end

end A395352.P1485111871938728452

/-! ## A395352.P7942591962664387560

`runs[Δ[record[-A395357(n+1)]]]`
-/

namespace A395352.P7942591962664387560
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A395357 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (SequenceMachineLib.nth (fun j => ∀ l < j, f3 l < f3 j) n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => j = 0 ∨ f1 j ≠ f1 (j - 1)) (n + 1) - SequenceMachineLib.nth (fun j => j = 0 ∨ f1 j ≠ f1 (j - 1)) n

end

end A395352.P7942591962664387560

/-! ## A395352.P16189325039207907499

`runs[Δ[lt[A395486(n), 0]]]`
-/

namespace A395352.P16189325039207907499
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A395486 n

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f3 j < (f4 j : ℤ)) n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℤ) - (f2 n : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => j = 0 ∨ f1 j ≠ f1 (j - 1)) (n + 1) - SequenceMachineLib.nth (fun j => j = 0 ∨ f1 j ≠ f1 (j - 1)) n

end

end A395352.P16189325039207907499

/-!
# A395353: a(0) = 0. For n>0, consider the spiral of red and black knights shown in A392177 and A392178. If the n-th square along the negative x-axis contains a black knight then a(n) = n, if it contains a red knight then a(n) = -n, otherwise a(n) = 0.

The programs for A395353, there is no canonical definition to state claims against.
-/

/-! ## A395353.P5600317870267213956

`A395357((2*n)²+n)`
-/

namespace A395353.P5600317870267213956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A395357 ((2 * n) ^ 2 + n)

end

end A395353.P5600317870267213956

/-!
# A395354: Consider the spiral of red and black knights shown in A392177 and A392178. If the n-th square along the non-negative x-axis contains a black knight then a(n) = n, if it contains a red knight then a(n) = -n, otherwise a(n) = 0.

The programs for A395354, there is no canonical definition to state claims against.
-/

/-! ## A395354.P830942919700928715

`A395357(A001107(n))`
-/

namespace A395354.P830942919700928715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A395357 (A001107 n).toNat

end

end A395354.P830942919700928715

/-! ## A395354.P9089067632737737169

`A395357(A002939(n)-n)`
-/

namespace A395354.P9089067632737737169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A395357 (A002939 n - (n : ℤ)).toNat

end

end A395354.P9089067632737737169

/-!
# A395356: a(n) = |A395355(n)| - |A395355(n-1)|.

The programs for A395356, there is no canonical definition to state claims against.
-/

/-! ## A395356.P2950682840511051705

`Δ[abs(A395355(n))]`
-/

namespace A395356.P2950682840511051705
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A395355 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A395356.P2950682840511051705

/-! ## A395356.P16998923141670000698

`Δ[gcd(A000038(n+2), A395355(n))]`
-/

namespace A395356.P16998923141670000698
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 (n + 2)) (A395355 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A395356.P16998923141670000698

/-! ## A395356.P7590123408845598278

`Δ[A000194(A395355(n)²)]`
-/

namespace A395356.P7590123408845598278
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000194 (A395355 n ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A395356.P7590123408845598278

/-! ## A395356.P8519389102228117862

`Δ[A000196(A395355(n)²)]`
-/

namespace A395356.P8519389102228117862
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A395355 n ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A395356.P8519389102228117862

/-!
# A395357: The completed spiral of black and red knights (as in A392177, A392178, A395355) read in order, with +n indicating a black knight, -n indicating a red knight, and 0 (except for the initial 0, which is special) indicating an unoccupied square.

The programs for A395357, there is no canonical definition to state claims against.
-/

/-! ## A395357.P881838353137969129

`n*A137867(A195441(n))`
-/

namespace A395357.P881838353137969129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A137867 (A195441 n).toNat

end

end A395357.P881838353137969129

/-!
# A395360: Lexicographically earliest infinite sequence of distinct squarefree semiprimes (A006881) with the properties that (a) for all k >= 1, the k-th prime divides exactly k terms, and (b) a semiprime j*k is excluded if both j and k already divide existing terms.

The programs for A395360, there is no canonical definition to state claims against.
-/

/-! ## A395360.P3586793295058867642

`record[A020639(2*n+3)]*A006530(A060735(3*(n+1)))`
-/

namespace A395360.P3586793295058867642
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (2 * n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) * A006530 (A060735 (3 * (n + 1))).toNat

end

end A395360.P3586793295058867642

/-! ## A395360.P1574660811266797131

`A006530(A002182(3*n+4))*A151800(3*n)`
-/

namespace A395360.P1574660811266797131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A002182 (3 * n + 4)).toNat * A151800 (3 * n)

end

end A395360.P1574660811266797131

/-! ## A395360.P10909906311962898337

`record[A094928(n+1)]*A006530(A060735(3*(n+1)))`
-/

namespace A395360.P10909906311962898337
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094928 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) * A006530 (A060735 (3 * (n + 1))).toNat

end

end A395360.P10909906311962898337

/-! ## A395360.P4864949476153967765

`A053735(A076972(3*n+4))*A177512(n+2)`
-/

namespace A395360.P4864949476153967765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053735 (A076972 (3 * n + 4)).toNat * A177512 (n + 2)

end

end A395360.P4864949476153967765

/-!
# A395361: For n <= 6, a(n) = Fibonacci(n); for n >= 7, delete all except the leftmost two digits of Fibonacci(n).

The programs for A395361, there is no canonical definition to state claims against.
-/

/-! ## A395361.P4718929133925740350

`A000045(n)%A072622(A330976(3*n+2))`
-/

namespace A395361.P4718929133925740350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000045 n) (A072622 (A330976 (3 * n + 2)).toNat)

end

end A395361.P4718929133925740350

/-! ## A395361.P13181963397647776390

`A000045(n)%A007527(n+1)`
-/

namespace A395361.P13181963397647776390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000045 n) (A007527 (n + 1))

end

end A395361.P13181963397647776390

/-! ## A395361.P9883362217173897104

`abs(A236191(n))%A007527(n+1)`
-/

namespace A395361.P9883362217173897104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod |A236191 n| (A007527 (n + 1))

end

end A395361.P9883362217173897104

/-! ## A395361.P1531502114634129834

`(A157725(n)-2)%A007527(n+1)`
-/

namespace A395361.P1531502114634129834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A157725 n - 2) (A007527 (n + 1))

end

end A395361.P1531502114634129834

/-! ## A395361.P9407374991353061942

`A000045(n)%A006063(A019565(n))`
-/

namespace A395361.P9407374991353061942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000045 n) (A006063 (A019565 n).toNat)

end

end A395361.P9407374991353061942

/-!
# A395362: Walk along the hexagonal spiral, with its cells numbered starting at 0. Begin with no knights. If the square you are at is not attacked by an existing knight, place a knight there, otherwise leave it empty. The sequence lists the squares occupied by the knights.

The programs for A395362, there is no canonical definition to state claims against.
-/

/-! ## A395362.P1414506606118726420

`lt[A039090(n+1), A285509(2*n+5)-1]`
-/

namespace A395362.P1414506606118726420
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039090 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285509 (2 * n + 5) - 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A395362.P1414506606118726420

/-! ## A395362.P7202742701402345353

`A112437(A006720(n))+n`
-/

namespace A395362.P7202742701402345353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112437 (A006720 n).toNat + (n : ℤ)

end

end A395362.P7202742701402345353

/-! ## A395362.P16568802784440145576

`eq[A045999(n), A323647(n+1)]`
-/

namespace A395362.P16568802784440145576
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045999 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323647 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A395362.P16568802784440145576

/-! ## A395362.P11696613250742653022

`eq[A079050(n), A338458(n+1)]`
-/

namespace A395362.P11696613250742653022
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079050 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338458 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A395362.P11696613250742653022

/-! ## A395362.P11379463041705187342

`eq[A105472(n), A342720(n+1)]`
-/

namespace A395362.P11379463041705187342
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105472 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342720 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A395362.P11379463041705187342

/-!
# A395366: Walk along the hexagonal spiral, with its cells numbered starting at 0, as in A395362. Two players, Black and Red, take turns. When it is Black's turn, he places a knight at the smallest unoccupied cell not attacked by an existing Red knight, and when it is Red's turn, she places a knight at the smallest unoccupied cell not attacked by an existing Black knight. Sequence lists cells occupied by Red knights.

The programs for A395366, there is no canonical definition to state claims against.
-/

/-! ## A395366.P9858867338414458832

`A328389(A189176(n+1))`
-/

namespace A395366.P9858867338414458832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328389 (A189176 (n + 1)).toNat

end

end A395366.P9858867338414458832

/-! ## A395366.P4002575635756033400

`A377209(Δ[A023052(n+1)²])`
-/

namespace A395366.P4002575635756033400
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023052 (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377209 (f1 (n + 1) - f1 n).toNat

end

end A395366.P4002575635756033400

/-! ## A395366.P620779252088113382

`A030050(n+1)+∑[A299966(2*(n+1))]`
-/

namespace A395366.P620779252088113382
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299966 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030050 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A395366.P620779252088113382

/-! ## A395366.P5760924428281062485

`A377209(A000005(A000079(n)²))`
-/

namespace A395366.P5760924428281062485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377209 (A000005 (A000079 n ^ 2).toNat).toNat

end

end A395366.P5760924428281062485

/-! ## A395366.P2300872883642728768

`A377209(A000005(A000079(2*n)))`
-/

namespace A395366.P2300872883642728768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377209 (A000005 (A000079 (2 * n)).toNat).toNat

end

end A395366.P2300872883642728768

/-!
# A395370: a(n) is the number of pairs (B->A, C->A) of non-intersecting paths in a triangular grid ABC of side n units, such that the distance from the starting point to each point of a path is always increasing.

The programs for A395370, there is no canonical definition to state claims against.
-/

/-! ## A395370.P257894002231350293

`A062490(A105871(n))`
-/

namespace A395370.P257894002231350293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062490 (A105871 n).toNat

end

end A395370.P257894002231350293

/-!
# A395371: a(n) is the number of triples (A->B, B->C, C->A) of pairwise disjoint paths on a triangular grid ABC of side length n, such that the distance from the starting point to each point of a path is always increasing.

The programs for A395371, there is no canonical definition to state claims against.
-/

/-! ## A395371.P17737720370504730738

`A336285(n!²)`
-/

namespace A395371.P17737720370504730738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336285 (Nat.factorial n ^ 2)

end

end A395371.P17737720370504730738

/-!
# A395373: Triangle read by rows: T(n, k) is the number of ordered pairs (x,y) with 1 <= x,y <= n such that x*y = k, for 1 <= k <= n^2.

The programs for A395373, there is no canonical definition to state claims against.
-/

/-! ## A395373.P4075947116442855338

`A175358(A242231(n+1))`
-/

namespace A395373.P4075947116442855338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175358 (A242231 (n + 1)).toNat

end

end A395373.P4075947116442855338

/-! ## A395373.P17491344455064747372

`A248639(A030549(n+2))`
-/

namespace A395373.P17491344455064747372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248639 (A030549 (n + 2)).toNat

end

end A395373.P17491344455064747372

/-! ## A395373.P3797549047337814907

`A393041(n+2)+A200246(A045648(n+1))`
-/

namespace A395373.P3797549047337814907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A393041 (n + 2) + A200246 (A045648 (n + 1)).toNat

end

end A395373.P3797549047337814907

/-! ## A395373.P6604838588130739650

`A033687(gcd(A000740(n+2), A033687(n+4)))`
-/

namespace A395373.P6604838588130739650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033687 (Int.gcd (A000740 (n + 2)) (A033687 (n + 4)))

end

end A395373.P6604838588130739650

/-! ## A395373.P16392261405162376692

`C(A049705(A078745(n+3)), A297420(2*n+3))`
-/

namespace A395373.P16392261405162376692
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A049705 (A078745 (n + 3)).toNat).toNat (A297420 (2 * n + 3)).toNat

end

end A395373.P16392261405162376692

/-!
# A395377: Number of ordered set partitions of {1..n} having pairwise distinct block sums.

The programs for A395377, there is no canonical definition to state claims against.
-/

/-! ## A395377.P13295668771805467352

`∑{#}[n, #!*A395416(C(n+1, 2)+#)]`
-/

namespace A395377.P13295668771805467352
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), (Nat.factorial k : ℤ) * A395416 (Nat.choose (n + 1) 2 + k)

end

end A395377.P13295668771805467352

/-! ## A395377.P14073138766662650982

`or(n, A330624(A034296(n)))`
-/

namespace A395377.P14073138766662650982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (n : ℤ) (A330624 (A034296 n).toNat)

end

end A395377.P14073138766662650982

/-!
# A395382: a(n) = (2*n)! * [x^(2*n)] 1 / cos(x)^4.

The programs for A395382, there is no canonical definition to state claims against.
-/

/-! ## A395382.P128484537620018704

`1/6*(4*A000182(n+1)+A000182(n+2))`
-/

namespace A395382.P128484537620018704
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 : ℚ) / 6 * (4 * A000182 (n + 1) + A000182 (n + 2) : ℚ)

end

end A395382.P128484537620018704

/-! ## A395382.P15033855834822202325

`A350971(2*n)+A000111(2*n+1)`
-/

namespace A395382.P15033855834822202325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350971 (2 * n) + A000111 (2 * n + 1)

end

end A395382.P15033855834822202325

/-!
# A395383: a(n) = (2*n)! * [x^(2*n)] 1 / cos(x)^5.

The programs for A395383, there is no canonical definition to state claims against.
-/

/-! ## A395383.P7385357476515023218

`1/24*(9*A000364(n)+10*A000364(n+1)+A000364(n+2))`
-/

namespace A395383.P7385357476515023218
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 : ℚ) / 24 * (9 * A000364 n + 10 * A000364 (n + 1) + A000364 (n + 2) : ℚ)

end

end A395383.P7385357476515023218

/-!
# A395384: a(n) = (2*n)! * [x^(2*n)] 1 / cos(x)^6.

The programs for A395384, there is no canonical definition to state claims against.
-/

/-! ## A395384.P5008454448701114813

`1/120*(64*A000182(n+1)+20*A000182(n+2)+A000182(n+3))`
-/

namespace A395384.P5008454448701114813
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 : ℚ) / 120 * (64 * A000182 (n + 1) + 20 * A000182 (n + 2) + A000182 (n + 3) : ℚ)

end

end A395384.P5008454448701114813

/-!
# A395385: a(n) = (2*n)! * [x^(2*n)] 1 / cos(x)^7.

The programs for A395385, there is no canonical definition to state claims against.
-/

/-! ## A395385.P4372313835097847592

`1/720*(225*A000364(n)+259*A000364(n+1)+35*A000364(n+2)+A000364(n+3))`
-/

namespace A395385.P4372313835097847592
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 : ℚ) / 720 * (225 * A000364 n + 259 * A000364 (n + 1) + 35 * A000364 (n + 2) + A000364 (n + 3) : ℚ)

end

end A395385.P4372313835097847592

/-!
# A395386: a(n) = (2*n)! * [x^(2*n)] cosh(x) / cos(x)^3.

The programs for A395386, there is no canonical definition to state claims against.
-/

/-! ## A395386.P14419084809563554603

`1/2*∑{#}[n, C(2*n, 2*#)*(A000364(#)+A000364(#+1))]`
-/

namespace A395386.P14419084809563554603
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 : ℚ) / 2 * ((∑ k ∈ Finset.range (f1 n + 1), (Nat.choose (2 * n) (2 * k) : ℤ) * (A000364 k + A000364 (k + 1)) : ℤ) : ℚ)

end

end A395386.P14419084809563554603

/-!
# A395387: a(n) = (2*n)! * [x^(2*n)] cosh(x) / cos(x)^4.

The programs for A395387, there is no canonical definition to state claims against.
-/

/-! ## A395387.P12456431615645886968

`1/6*∑{#}[n, C(2*n, 2*#)*(4*A000182(#+1)+A000182(#+2))]`
-/

namespace A395387.P12456431615645886968
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 : ℚ) / 6 * ((∑ k ∈ Finset.range (f1 n + 1), (Nat.choose (2 * n) (2 * k) : ℤ) * (4 * A000182 (k + 1) + A000182 (k + 2)) : ℤ) : ℚ)

end

end A395387.P12456431615645886968

/-!
# A395388: a(n) = (2*n)! * [x^(2*n)] cosh(x) / cos(x)^5.

The programs for A395388, there is no canonical definition to state claims against.
-/

/-! ## A395388.P14805640423496161918

`1/24*∑{#}[n, C(2*n, 2*#)*(9*A000364(#)+10*A000364(#+1)+A000364(#+2))]`
-/

namespace A395388.P14805640423496161918
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 : ℚ) / 24 * ((∑ k ∈ Finset.range (f1 n + 1), (Nat.choose (2 * n) (2 * k) : ℤ) * (9 * A000364 k + 10 * A000364 (k + 1) + A000364 (k + 2)) : ℤ) : ℚ)

end

end A395388.P14805640423496161918

/-!
# A395389: a(n) = (2*n)! * [x^(2*n)] cosh(x) / cos(x)^6.

The programs for A395389, there is no canonical definition to state claims against.
-/

/-! ## A395389.P9592563872750307476

`1/120*∑{#}[n, C(2*n, 2*#)*(64*A000182(#+1)+20*A000182(#+2)+A000182(#+3))]`
-/

namespace A395389.P9592563872750307476
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 : ℚ) / 120 * ((∑ k ∈ Finset.range (f1 n + 1), (Nat.choose (2 * n) (2 * k) : ℤ) * (64 * A000182 (k + 1) + 20 * A000182 (k + 2) + A000182 (k + 3)) : ℤ) : ℚ)

end

end A395389.P9592563872750307476

/-!
# A395396: a(n) = binomial(n,floor(n/2)) + (n mod 2) - 2.

The programs for A395396, the canonical program `A395396.P11751672268797446085` is in `Seq.B000.C050`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A395396 has offset 0).

The definition of A395396 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `C(n, floor(n/2))+n%2-2` (program `A395396.P11751672268797446085`, by `A395396.P11751672268797446085.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A395396.P11751672268797446085

`C(n, floor(n/2))+n%2-2`

The canonical program, it is in `Seq.B000.C050`.
-/

namespace A395396

/-- `C(n, floor(n/2))+n%2-2` -/
def P11751672268797446085.Spec : Prop :=
  ∀ n, P11751672268797446085.a n = A395396 n

theorem P11751672268797446085.correct : P11751672268797446085.Spec := by
  intro n
  simp only [A395396]

end A395396

/-! ## A395396.P14309506312431747490

`A201686(n)+n%2`
-/

namespace A395396.P14309506312431747490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201686 n + ((n % 2 : ℕ) : ℤ)

end

end A395396.P14309506312431747490

namespace A395396

/-- `A201686(n)+n%2` -/
def P14309506312431747490.Spec : Prop :=
  ∀ n, P14309506312431747490.a n = A395396 n

theorem P14309506312431747490.correct : P14309506312431747490.Spec := by
  intro n
  simp only [A395396, Nat.add_sub_cancel, A395396.P14309506312431747490.a, A395396.P11751672268797446085.a, A201686, A201686.P5560453005708353295.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A395396

/-! ## A395396.P17105734878403644738

`A001405(n)-gcd(2, n)`
-/

namespace A395396.P17105734878403644738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001405 n - (Nat.gcd 2 n : ℤ)

end

end A395396.P17105734878403644738

namespace A395396

/-- `A001405(n)-gcd(2, n)` -/
def P17105734878403644738.Spec : Prop :=
  ∀ n, P17105734878403644738.a n = A395396 n

end A395396

/-! ## A395396.P11555624362759798362

`A014495(n)-char[2*n]`
-/

namespace A395396.P11555624362759798362
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014495 n - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A395396.P11555624362759798362

namespace A395396

/-- `A014495(n)-char[2*n]` -/
def P11555624362759798362.Spec : Prop :=
  ∀ n, P11555624362759798362.a n = A395396 n

end A395396

/-! ## A395396.P14136737779320781077

`and(1, n)+A210736(n+1)-2`
-/

namespace A395396.P14136737779320781077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.land 1 n : ℤ) + (A210736 (n + 1) - 2)

end

end A395396.P14136737779320781077

namespace A395396

/-- `and(1, n)+A210736(n+1)-2` -/
def P14136737779320781077.Spec : Prop :=
  ∀ n, P14136737779320781077.a n = A395396 n

end A395396

/-! ## A395396.P5963499201413584339

`A201686(n)+A000035(n)`
-/

namespace A395396.P5963499201413584339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201686 n + A000035 n

end

end A395396.P5963499201413584339

namespace A395396

/-- `A201686(n)+A000035(n)` -/
def P5963499201413584339.Spec : Prop :=
  ∀ n, P5963499201413584339.a n = A395396 n

theorem P5963499201413584339.correct : P5963499201413584339.Spec := by
  intro n
  simp only [A395396, Nat.add_sub_cancel, A395396.P5963499201413584339.a, A395396.P11751672268797446085.a, A000035, A000035.P2023072528413494694.a, A201686, A201686.P5560453005708353295.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A395396

/-! ## A395396.P4761424403776155548

`A051920(n)-A176059(n)`
-/

namespace A395396.P4761424403776155548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051920 n - A176059 n

end

end A395396.P4761424403776155548

namespace A395396

/-- `A051920(n)-A176059(n)` -/
def P4761424403776155548.Spec : Prop :=
  ∀ n, P4761424403776155548.a n = A395396 n

theorem P4761424403776155548.correct : P4761424403776155548.Spec := by
  intro n
  simp only [A395396, Nat.add_sub_cancel, A395396.P4761424403776155548.a, A395396.P11751672268797446085.a, A051920, A051920.P2707849764288868979.a, A176059, A176059.P3242393250982034900.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A395396

/-! ## A395396.P7957509550757876350

`A210736(n+1)-A133186(A047431(n+1))`
-/

namespace A395396.P7957509550757876350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210736 (n + 1) - A133186 (A047431 (n + 1)).toNat

end

end A395396.P7957509550757876350

namespace A395396

/-- `A210736(n+1)-A133186(A047431(n+1))` -/
def P7957509550757876350.Spec : Prop :=
  ∀ n, P7957509550757876350.a n = A395396 n

end A395396

/-! ## A395396.P819149034328865742

`A140253(n)-A045621(n)`
-/

namespace A395396.P819149034328865742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140253 n - A045621 n

end

end A395396.P819149034328865742

namespace A395396

/-- `A140253(n)-A045621(n)` -/
def P819149034328865742.Spec : Prop :=
  ∀ n, P819149034328865742.a n = A395396 n

end A395396

/-! ## A395396.P14883405597299393554

`A261681(n)-A052531(n)`
-/

namespace A395396.P14883405597299393554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261681 n - A052531 n

end

end A395396.P14883405597299393554

namespace A395396

/-- `A261681(n)-A052531(n)` -/
def P14883405597299393554.Spec : Prop :=
  ∀ n, P14883405597299393554.a n = A395396 n

end A395396

/-!
# A395399: Number of unsatisfiable 3-SAT formulas with 3 variables and n clauses in the multiset clause model.

The programs for A395399, there is no canonical definition to state claims against.
-/

/-! ## A395399.P17174478722852576206

`A396351(∑[n+2]+4)`
-/

namespace A395399.P17174478722852576206
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A396351 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A395399.P17174478722852576206

/-! ## A395399.P16318574235021254641

`record[A396351(A183234(n+1)+1)]`
-/

namespace A395399.P16318574235021254641
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A396351 (A183234 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A395399.P16318574235021254641

